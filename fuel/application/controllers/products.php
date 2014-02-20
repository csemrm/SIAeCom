<?php

class products extends CI_Controller {

    function __construct() {

        parent::__construct();
        $this->load->model(array('products_categories_model', 'products_color_table_model', 'products_images_model', 'products_measurement_table_model', 'products_model'));
    }

    function index($slug = null) {
        $data = array();
        $data['css'] = '';
        $data['js'] = '';
        $products = array();
        if ($slug) {
            $products = $this->products_model->find_one_array(array('slug' => $slug));
            if (empty($products)) {
                show_404();
            }
        } else {
            $products = $this->products_model->find_one_array(array('slug' => $slug), 'DESC');
        }

        $products['products_images'] = $this->products_images_model->find_all_array(array('products_id' => $products['id']));
        $products['products_color'] = $this->products_color_table_model->find_all_array(array('products_id' => $products['id']));
        $products_measurement = $this->products_measurement_table_model->find_all_array(array('products_id' => $products['id']));
        echo '<pre>';
        print_r($products_measurement);
        echo '</pre>';
        $data['page_title'] = $products['item_name'];
        $data['products_data'] = $products;

        $type = array('Asian', 'Europe', 'American B', 'American R');
        $param = array('Length', 'Chest', 'Sleeve');
        $type1 = array();
        foreach ($type as $key => $value) {
            $type1[$key]['name'] = $value;
            $pval = array();
            foreach ($param as $param_key => $param_value) {
                $pval[$param_key][$param_value] = array('S', 'L', 'M', 'XL', 'XXL', '3XL');
                $pval[$param_key]['name'] = $param_value;
                $type1[$key]['measurement_table'] = $pval;
            }
        }

        $data['type'] = $type1;
        $data['size'] = $size = array('S', 'L', 'M', 'XL', 'XXL', '3XL');

        $data['products_categories'] = $this->products_categories_model->categories_list();

        $this->load->view('SIATEX/products', $data);
    }

}
