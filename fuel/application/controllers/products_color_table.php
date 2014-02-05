<?php

require_once(FUEL_PATH . '/libraries/Fuel_base_controller.php');

class products_color_table extends Fuel_base_controller {

    function __construct() {

        parent::__construct();
        $this->load->model('products_color_table_model');
        $this->load->module_model(FUEL_FOLDER, 'fuel_users_model');
    }

    function get_products_color_table($products_id = null) {
        if (empty($products_id)) {
            show_404();
        }

        $where['products_id'] = $products_id;
        $products_color_table = $this->products_color_table_model->find_all_array($where);

        if (is_array($products_color_table)) {
            echo json_encode($products_color_table);
        } else {
            echo json_encode(array());
        }
    }

}
