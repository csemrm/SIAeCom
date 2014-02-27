<?php

class products extends CI_Controller {

    function __construct() {

        parent::__construct();
        $this->load->model(array('products_categories_model', 'products_color_table_model', 'products_images_model', 'products_measurement_table_model', 'products_model'));

       
    }

    function index($slug = null) {
        $data = array();
        $data['css'] = 'siatex/addtocart/addtocart';
        $data['js'] = 'addtocart';
        $products = array();
        if ($slug) {
            $products = $this->products_model->find_one_array(array('slug' => $slug));
            if (empty($products)) {
                show_404();
            }
        } else {
            $products = $this->products_model->find_one_array(array('is_active' => true), 'id DESC');
        }

        $products['products_images'] = $this->products_images_model->find_all_array(array('products_id' => $products['id']));
        $products['products_color'] = $this->products_color_table_model->find_all_array(array('products_id' => $products['id']));
        $products_measurement = $this->products_measurement_table_model->find_all_array(array('products_id' => $products['id']));

        $param = array('Length', 'Chest', 'Sleeve');
        $type = array();
        $size = array();


        foreach ($products_measurement as $key => $measurement) {
            if (!in_array($measurement['type'], $type)) {
                $type[$key] = $measurement['type'];
            }
            if (!in_array($measurement['size'], $size)) {
                $size[$key] = $measurement['size'];
            }
        }

        $type1 = array();
        $products_price = array();
        foreach ($type as $key => $value) {
            $type1[$key]['name'] = $value;
            $pval = array();
            foreach ($param as $param_key => $param_value) {
                $chest = array();
                $measurement_key = 0;
                foreach ($products_measurement as $measurement) {
//                   !in_array($measurement[lcfirst($param_value)], $chest) &&
                    if ($value === $measurement['type']) {
                        $chest[$measurement_key++] = $measurement[lcfirst($param_value)];
                        $products_price[$value] = array(
                            'price' => $measurement['price'],
                            'black_price' => $measurement['black_price'],
                        );
                    }
                }
                $pval[$param_key][$param_value] = $chest; //array('S', 'L', 'M', 'XL', 'XXL', '3XL');



                $pval[$param_key]['name'] = $param_value;
                $type1[$key]['measurement_table'] = $pval;
            }
        }

        $data['type'] = $type1;
        $data['size'] = $size;
        $data['page_title'] = $products['item_name'];

        $data['products_price'] = $products_price;
        $data['products_data'] = $products;
        $data['products_categories'] = $this->products_categories_model->categories_list();

        $this->load->view('SIATEX/products', $data);
    }

}
