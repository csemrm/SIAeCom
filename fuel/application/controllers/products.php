<?php

require_once(FUEL_PATH . '/libraries/Fuel_base_controller.php');

class products extends Fuel_base_controller {

    function __construct() {

        parent::__construct();
    }

    function index() {
        $data = array();
        $this->load->view('SIATEX/products', $data);
    }

}
