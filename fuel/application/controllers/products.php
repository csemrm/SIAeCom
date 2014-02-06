<?php

class products extends CI_Controller {

    function __construct() {

        parent::__construct();
        $this->load->model(array('products_categories_model', 'products_model'));
    }

    function index() {
        $data = array();
        $data['css'] = '';
        $data['js'] = '';
        $data['products_categories'] =  $this->products_categories_model->categories_list();

        $this->load->view('SIATEX/products', $data);
    }

}
