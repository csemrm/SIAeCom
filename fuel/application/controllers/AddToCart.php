<?php

class AddToCart extends CI_controller {

    function __construct() {

        parent::__construct();
    }

    function index() {
        $data = array();
        $data['css'] = '';
        $data['js'] = '';
        $products = array(); 
        $this->load->view('SIATEX/addtocart/addtocart', $data);
    }



}
