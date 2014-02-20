<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');
require_once(FUEL_PATH . 'models/base_module_model.php');

class products_categories_model extends Base_module_model {

    public $required = array('name');
    public $unique_fields = array('name');
    public $foreign_keys = array('parent_id' => array('products_categories_model'));
    protected $_parent_model = 'products_categories_model'; // the name of the parent model

    function __construct() {
        parent::__construct('products_categories');

        $this->load_model(array('products_model'));
    }

    function list_items($limit = NULL, $offset = NULL, $col = 'name', $order = 'asc') {
        $this->db->join('products_categories as p', 'p.id = products_categories.parent_id', 'left');
        $this->db->select('products_categories.id, products_categories.name ,p.name as p_name , products_categories.is_active as Active ', FALSE);
        $data = parent::list_items($limit, $offset, $col, $order);
        foreach ($data as $key => $value) {

            if ($value['Active'] == 1)
                $data[$key]['Active'] = "Yes";
            else if ($value['Active'] == 0)
                $data[$key]['Active'] = "No";
        }
        return $data;
    }

    public function tree($just_published = FALSE) {
        $return = array();
        $where = ($just_published) ? array('is_active' => '1') : array();
        $categories = $this->find_all_array($where);
        foreach ($categories as $category) {
            $attributes = ((isset($category['is_active']) AND $category['is_active'] == 'no')) ? array('class' => 'unpublished', 'title' => 'unpublished') : NULL;
            $return[] = array('id' => $category['id'], 'label' => $category['name'], 'parent_id' => $category['parent_id'], 'location' => fuel_url('products_categories/edit/' . $category['id']), 'attributes' => $attributes);
        }
        return $return;
    }

    function categories_list($where = array(), $order = NULL, $limit = NULL, $offset = NULL) {
        $where['parent_id'] = 0;
        $data = $this->get_children($where, $order, $limit, $offset);



        return $data;
    }

    public function context_options_list() {
        $this->db->group_by('context');
        return parent::options_list('context', 'context');
    }

    public function get_children($where = array(), $order = NULL, $limit = NULL, $offset = NULL) {

        $children = $this->products_categories_model->find_all_array($where, $order, $limit, $offset);

        foreach ($children as $key => $value) {

            $getchild = $this->get_children(array('parent_id' => $value['id']));
            if (!empty($getchild)) {
                $children[$key]['children'] = $getchild;
            }
            $children[$key]['products'] = $this->products_model->find_all_array(array('product_categories_id' => $value['id']));
        }
        return $children;
    }

    function form_fields($values = null) {
        $CI = & get_instance();
        $fields = parent::form_fields();
        $user = $CI->fuel_auth->user_data();
        $yes = lang('form_enum_option_yes');
        $no = lang('form_enum_option_no');
        $fields['name']['order'] = 1;
        $fields['slug']['order'] = 2;
        $fields['parent_id']['order'] = 3;
        $fields['precedence']['order'] = 4;
        $fields['is_active']['order'] = 5;

        $fields['created_at']['type'] = 'hidden';
        $fields['updated_at']['type'] = 'hidden';
        $fields['created_by']['type'] = 'hidden';
        $fields['updated_by']['type'] = 'hidden';
        $fields['is_active']['type'] = 'enum';
        $fields['is_active']['label'] = 'Active';
        $fields['is_active']['options'] = array('1' => $yes, '0' => $no);



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

    function options_list($key = 'id', $val = 'name', $where = array(), $order = 'name') {
        $CI = & get_instance();
        if ($key == 'name') {
            $key = $this->table_name . '.name';
        }


        $return = parent::options_list($key, $val, $where, $order);
        return $return;
    }

}

class products_category_model extends Data_record {
    
}
