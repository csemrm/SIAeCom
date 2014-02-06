<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');
require_once(FUEL_PATH . 'models/base_module_model.php');

class products_model extends Base_module_model {

    public $auto_validate = false;
    public $required = array('item_name');
    public $unique_fields = array('item_name', 'slug');
    public $foreign_keys = array('product_categories_id' => array('products_categories_model', 'where' => array('is_active' => '1')));

    function __construct() {
        parent::__construct('products');
        $this->load->model(array('products_images_model', 'products_color_table_model', 'products_measurement_table_model'));
    }

    function list_items($limit = NULL, $offset = NULL, $col = 'item_name', $order = 'asc') {

        $this->db->select('id, item_name , is_active as Active ', FALSE);
        $data = parent::list_items($limit, $offset, $col, $order);
        foreach ($data as $key => $value) {

            if ($value['Active'] == 1)
                $data[$key]['Active'] = "Yes";
            else if ($value['Active'] == 0)
                $data[$key]['Active'] = "No";
        }
        return $data;
    }

    function form_fields($values = null) {
        $CI = & get_instance();
        $fields = parent::form_fields();
        $user = $CI->fuel_auth->user_data();



        $yes = lang('form_enum_option_yes');
        $no = lang('form_enum_option_no');
        $fields['slug'] = array('type' => 'slug', 'linked_to' => 'item_name');

        if (!empty($values['id'])) {
            $where['products_id'] = $values['id'];
            $products_images_min = ( $this->products_images_model->record_count($where));
            $products_color_table_min = ( $this->products_color_table_model->record_count($where));
            $products_measurement_table_min = ( $this->products_measurement_table_model->record_count($where));
        } else {
            $products_images_min = 1;
            $products_color_table_min = 1;
            $products_measurement_table_min = 1;
        }


        $fields['products_images_fieldset'] = array('label' => 'Products Images', 'type' => 'fieldset', 'class' => 'tab');

        $fields['products_images'] = array('display_label' => FALSE,
            'row_class' => 'products_images',
            'add_extra' => false,
            'init_display' => 'first',
            'repeatable' => TRUE,
            'type' => 'template',
            'min' => $products_images_min,
            'label' => 'Products Images',
            'title_field' => 'image',
            'non_sortable' => true,
            'fields' => array(
                'id' => array('type' => 'hidden'),
                'item_image' => array(),
            ),
        );
        $fields['products_color_table_fieldset'] = array('label' => 'Products Color Table', 'type' => 'fieldset', 'class' => 'tab');
        $fields['products_color_table'] = array('display_label' => FALSE,
            'row_class' => 'products_color_table',
            'add_extra' => false,
            'init_display' => 'first',
            'repeatable' => TRUE,
            'type' => 'template',
            'min' => $products_color_table_min,
            'label' => 'Products Color Table',
            'title_field' => 'color',
            'non_sortable' => true,
            'fields' => array(
                'id' => array('type' => 'hidden'),
                'color_code' => array(),
                'color_image' => array('label' => 'Color Image'),
            ),
        );
        $fields['products_measurement_table_fieldset'] = array('label' => 'Products Measurement Table', 'type' => 'fieldset', 'class' => 'tab');
        $fields['products_measurement_table'] = array('display_label' => FALSE,
            'row_class' => 'products_measurement_table',
            'add_extra' => false,
            'init_display' => 'first',
            'repeatable' => TRUE,
            'type' => 'template',
            'min' => $products_measurement_table_min,
            'label' => 'Products Measurement Table',
            'title_field' => 'color',
            'non_sortable' => true,
            'fields' => array(
                'id' => array('type' => 'hidden'),
                'type' => array('type' => 'enum', 'row_class' => 'products_measurement_table_type', 'mode' => 'select', 'options' => array('Asian', 'Europe', 'American B', 'American R')),
                'size' => array('type' => 'enum', 'row_class' => 'products_measurement_table_size', 'mode' => 'select', 'options' => array('S', 'L', 'M', 'XL', 'XXL', '3XL')),
                'length' => array('type' => 'number', 'row_class' => 'products_measurement_table_length', 'negative' => TRUE, 'decimal' => TRUE),
                'chest' => array('type' => 'number', 'row_class' => 'products_measurement_table_chest', 'negative' => TRUE, 'decimal' => TRUE),
                'sleeve' => array('type' => 'number', 'row_class' => 'products_measurement_table_sleeve', 'negative' => TRUE, 'decimal' => TRUE),
                'price' => array('type' => 'number', 'row_class' => 'products_measurement_table_price'),
            ),
            'form_builder_params' => array('render_format' => 'divs')
        );

        $fields['created_at']['type'] = 'hidden';
        $fields['updated_at']['type'] = 'hidden';
        $fields['created_by']['type'] = 'hidden';
        $fields['updated_by']['type'] = 'hidden';
        $fields['is_active']['type'] = 'enum';
        $fields['is_active']['label'] = 'Active';
        $fields['is_active']['options'] = array('1' => $yes, '0' => $no);


        return $fields;
    }

    public function save($record = NULL, $validate = TRUE, $ignore_on_insert = TRUE, $clear_related = NULL) {
        $this->_check_readonly();
        $CI = & get_instance();

        if (!isset($record))
            $record = $CI->input->post();


        if ($this->_is_nested_array($record)) {
            $saved = TRUE;
            foreach ($record as $rec) {
                if (!$this->save($rec, $validate, $ignore_on_insert, $clear_related)) {
                    $saved = FALSE;
                }
            }
            return $saved;
        } else {
            $fields = array();

            $old_clear_related_on_save = $this->clear_related_on_save;

            if (isset($clear_related)) {
                $this->clear_related_on_save = $clear_related;
            }


            $values = $this->normalize_save_values($record);

            // reset validator here so that all validation set with hooks will not be lost
            $this->validator->reset();

            // clean the data before saving. on_before_clean hook now runs in the clean() method
            $values = $this->on_before_clean($values);
            $products_images = $values['products_images'];
            $products_color_table = $values['products_color_table'];
            $products_measurement_table = $values['products_measurement_table'];

            $values = $this->clean($values);

            $values = $this->on_before_validate($values);

            // now validate. on_before_validate hook now runs inside validate() method
            $validated = ($validate) ? $this->validate($values) : TRUE;


            if ($validated AND !empty($values)) {
                // now clean the data to be ready for database saving
                $this->db->set($values);

                if ($ignore_on_insert) {
                    // execute on_before_insert/update hook methods
                    $values = $this->on_before_save($values);

                    // process serialized values
                    $values = $this->serialize_field_values($values);

                    if (!$this->_has_key_field_value($values)) {
                        $values = $this->on_before_insert($values);
                    } else {
                        $values = $this->on_before_update($values);
                    }
                    $insert_key = ($this->has_auto_increment) ? $this->key_field : NULL;

                    $this->db->insert_ignore($this->table_name, $values, $insert_key);

                    // execute on_insert/update hook methods
                    $no_key = FALSE;
                    $insert_id = $this->db->insert_id();
                    if (!$this->_has_key_field_value($values) AND $insert_id) {
                        $no_key = TRUE;
                        if (is_string($this->key_field)) {
                            $values[$this->key_field] = $insert_id;
                        }
                        $this->on_after_insert($values);
                    } else {
                        $this->on_after_update($values);
                    }

                    // execute on_insert/update hook methods on the Date_record model if exists
                    if (is_object($record) AND ($record instanceof Data_record)) {
                        if ($no_key) {
                            $record->on_after_insert($values);
                        } else {
                            $record->on_after_update($values);
                        }
                    }
                } else if (!$this->_has_key_field_value($values)) {
                    // execute on_before_insert/update hook methods
                    $values = $this->on_before_save($values);
                    $values = $this->on_before_insert($values);

                    // process serialized values
                    $values = $this->serialize_field_values($values);

                    $this->db->insert($this->table_name, $values);
                    $insert_id = $this->db->insert_id();
                    if (is_string($this->key_field)) {
                        $values[$this->key_field] = $insert_id;
                    }
                    $this->on_after_insert($values);
                    if ($record instanceof Data_record) {
                        $record->on_after_insert($values);
                    }
                } else {
                    $key_field = (array) $this->key_field;
                    foreach ($key_field as $key) {
                        $this->db->where($key, $values[$key]);
                    }

                    $values = $this->on_before_save($values);
                    $values = $this->on_before_update($values);

                    // process serialized values
                    $values = $this->serialize_field_values($values);

                    $this->db->update($this->table_name, $values);
                    $this->on_after_update($values);
                    if ($record instanceof Data_record) {
                        $record->on_after_update();
                    }
                }
            } else {
                return FALSE;
            }

            // returns the key value of the record upon save
            if (isset($insert_id) AND !empty($insert_id)) {
                $return = $insert_id;
            } else {
                if ($record instanceof Data_record) {
                    $key_field = $this->key_field;
                    if (is_string($this->key_field)) {
                        $return = $record->$key_field;
                    } else {
                        $return = array();
                        foreach ($key_field as $key) {
                            $return[$key] = $record->$key;
                        }
                    }
                } else if (is_string($this->key_field) AND !empty($values[$this->key_field])) {
                    $return = $values[$this->key_field];
                } else if (is_array($this->key_field)) {
                    $return = array();
                    foreach ($key_field as $key) {
                        $return[$key] = $values[$key_field];
                    }
                } else {
                    $return = TRUE;
                    // not valid test because a save could happen and no data is changed
                    //return (bool)($this->db->affected_rows()) ? TRUE : FALSE;
                }
            }

            $this->on_after_save($values);

            // set this back to the old value
            $this->clear_related_on_save = $old_clear_related_on_save;

            // check for errors here in case some are thrown in the hooks
            if ($this->has_error()) {
                return FALSE;
            }
            $this->update_related_data(array('product' => $values, 'products_images' => $products_images, 'products_color_table' => $products_color_table, 'products_measurement_table' => $products_measurement_table));

            return $return;
        }
    }

    function update_related_data($values) {

        $products_images = ($values['products_images']);
        $products_color_table = ($values['products_color_table']);
        $products_measurement_table = ($values['products_measurement_table']);
        $where['products_id'] = $values['product']['id'];
        if ($this->products_images_model->delete($where)) {
            if (is_array($products_images) && !empty($products_images[0]['item_image'])) {

                foreach ($products_images as $key => $value) {
//                    if (empty($value['id'])) {
                    unset($products_images[$key]['id']);
//                    }
                    $products_images[$key]['products_id'] = $values['product']['id'];
                }


                $products_images_saved = ($this->products_images_model->save($products_images));
                $return = false;
                if (!$products_images_saved) {
                    return false;
                }
            }
        } else {
            return false;
        } if ($this->products_color_table_model->delete($where)) {
            if (is_array($products_color_table) && !empty($products_color_table[0]['color_code']) && !empty($products_color_table[0]['color_image'])) {

                foreach ($products_color_table as $key => $value) {
//                    if (empty($value['id'])) {
                    unset($products_color_table[$key]['id']);
//                    }
                    $products_color_table[$key]['products_id'] = $values['product']['id'];
                }

                $products_color_table_saved = ($this->products_color_table_model->save($products_color_table));

                if (!$products_color_table_saved) {
                    return false;
                }
            }
        } else {
            return false;
        }
        if ($this->products_measurement_table_model->delete($where)) {
            if (is_array($products_measurement_table) && !empty($products_measurement_table[0]['chest']) && !empty($products_measurement_table[0]['length'])) {

                foreach ($products_measurement_table as $key => $value) {
//                    if (empty($value['id'])) {
                    unset($products_measurement_table[$key]['id']);
//                    }
                    $products_measurement_table[$key]['products_id'] = $values['product']['id'];
                }

                $products_measurement_table_saved = ($this->products_measurement_table_model->save($products_measurement_table));

                if (!$products_measurement_table_saved) {
                    return false;
                }
            }
        } else {
            return false;
        }

        return true;
    }

    function on_before_clean($values) {
        $CI = & get_instance();
        $user = $CI->fuel_auth->user_data();

        if ($values['id']) {
            $values['updated_at'] = datetime_now(true);
            $values['updated_by'] = $user['id'];
        } else {
            $values['created_at'] = datetime_now(true);
            $values['created_by'] = $user['id'];
            $values['updated_at'] = datetime_now(true);
            $values['updated_by'] = $user['id'];
        }
        return $values;
    }

    function options_list($key = 'id', $val = 'item_name', $where = array(), $order = 'item_name') {
        $CI = & get_instance();
        if ($key == 'item_name') {
            $key = $this->table_name . '.item_name';
        }


        $return = parent::options_list($key, $val, $where, $order);
        return $return;
    }

}

class product_model extends Data_record {
    
}
