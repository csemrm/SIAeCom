<?php

require_once(FUEL_PATH . '/libraries/Fuel_base_controller.php');

class products_images extends Fuel_base_controller {

    function __construct() {

        parent::__construct();
        $this->load->model('products_images_model');
        $this->load->module_model(FUEL_FOLDER, 'fuel_users_model');
    }

    function get_products_images($products_id = null) {
        if (empty($products_id)) {
            show_404();
        }

        $where['products_id'] = $products_id;
        $products_images = $this->products_images_model->find_all_array($where);

        if (is_array($products_images)) {
            echo json_encode($products_images);
        } else {
            echo json_encode(array());
        }
    }

}
