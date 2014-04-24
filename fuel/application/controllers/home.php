<?php

//require_once(FUEL_PATH . '/libraries/Fuel_base_controller.php');

class home extends CI_controller {

    function __construct() {

        parent::__construct();
        $this->load->model('products_model');
    }

    function index() {
        $data = array();
        $data['css'] = '';
        $data['js'] = '';
        $data['page_title'] = 'SiaTex E-com';
        $data['description'] = '';
        $data['js'] = '';
        $data['js'] = '';

        $data['products'] = $products = $this->products_model->find_all_array($where = array(), 'rand()', 3);
        $this->load->view('siatex/home', $data);
    }

    function contact() {
        $data = array();
        redirect('contact');
    }

}
