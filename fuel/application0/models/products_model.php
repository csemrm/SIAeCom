<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');
require_once(FUEL_PATH . 'models/base_module_model.php');

class products_model extends Base_module_model {

    public $required = array('item_name');
    public $unique_fields = array('item_name', 'slug');
    public $foreign_keys = array('product_categories_id' => array('products_categories_model', 'where' => array('is_active' => '1')));

    function __construct() {
        parent::__construct('products');
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
        $fields['created_at']['type'] = 'hidden';
        $fields['updated_at']['type'] = 'hidden';
        $fields['created_by']['type'] = 'hidden';
        $fields['updated_by']['type'] = 'hidden';
        $fields['is_active']['type'] = 'enum';
        $fields['is_active']['label'] = 'Active';
        $fields['is_active']['options'] = array('1' => $yes, '0' => $no);

        $fields['products_images'] = array('display_label' => true,
            'add_extra' => true,
            'init_display' => 'first',
            'dblclick' => 'toggle',
            'repeatable' => TRUE,
            'type' => 'template',
            'label' => 'Products Images',
            'title_field' => 'title',
            'fields' => array(
                'title' => array('style' => 'width: 800px'),
                'image' => array('style' => 'width: 800px;'),
            )
        );

        return $fields;
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
