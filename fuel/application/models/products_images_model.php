<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');
require_once(FUEL_PATH . 'models/base_module_model.php');

class products_images_model extends Base_module_model {

    public $required = array('item_image');
    public $foreign_keys = array('products_id' => array('products_model', 'where' => array('is_active' => '1')));

    function __construct() {
        parent::__construct('products_images');
    }

    function list_items($limit = NULL, $offset = NULL, $col = 'item_image', $order = 'asc') {

        $this->db->select('id, item_image', FALSE);
        $data = parent::list_items($limit, $offset, $col, $order);

        return $data;
    }

    function form_fields($values = null) {
        $CI = & get_instance();
        $fields = parent::form_fields();
        $user = $CI->fuel_auth->user_data();

        $fields['created_at']['type'] = 'hidden';
        $fields['updated_at']['type'] = 'hidden';
        $fields['created_by']['type'] = 'hidden';
        $fields['updated_by']['type'] = 'hidden';


        return $fields;
    }

    function on_before_clean($values) {
        $CI = & get_instance();
        $user = $CI->fuel_auth->user_data();
        if (isset($values['item_image_upload'])) {
            $values['item_image'] = 'products_images/' . $values['item_image'];
        }
        if (isset($values['id'])) {
            $values['updated_at'] = datetime_now(true);
            $values['updated_by'] = $user['id'];
        } else {
            $values['created_at'] = datetime_now(true);
            $values['created_by'] = $user['id'];
            $values['updated_at'] = datetime_now(true);
            $values['updated_by'] = $user['id'];
        }
        
        print_obj($values);
        return $values;
    }

    function options_list($key = 'id', $val = 'name', $where = array(), $order = 'name') {
        $CI = & get_instance();
        if ($key == 'name') {
            $key = $this->table_name . '.name';
        }


        $return = parent::options_list($key, $val, $where, $order);
        return $return;
    }

}

class products_image_model extends Data_record {
    
}
