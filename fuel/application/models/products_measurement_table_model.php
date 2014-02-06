<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');
require_once(FUEL_PATH . 'models/base_module_model.php');

class Products_measurement_table_model extends Base_module_model {

    public $required = array('length','chest','sleeve','price');
    public $foreign_keys = array('products_id' => array('products_model', 'where' => array('is_active' => '1')));

    function __construct() {
        parent::__construct('products_measurement_table');
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

class Product_measurement_table_model extends Data_record {
    
}
