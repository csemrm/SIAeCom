<?php

class AddToCart extends CI_controller {

    var $CI;

    function __construct() {

        parent::__construct();
        $this->CI = & get_instance();
        $this->load->model(array('products_model', 'countries_model'));
    }

    function index() {
        $data = array();
        $data['css'] = '';
        $data['js'] = '';

        $update = $this->input->post('update');
        $item_empty = $this->input->post('empty');
//        echo $update;
//        echo $item_empty;
        if (!empty($_POST)):
            if (!empty($item_empty)) {

                $cart_insert = $this->cart->destroy();
            } else if (!empty($update)) {

                $items = $this->input->post('items');

                $cart_insert = $this->cart->update($items);
            }
        endif;
        $this->load->view('siatex/addtocart/addtocart', $data);
    }

    function update($rowid, $qty) {
        $data = array(
            'rowid' => $rowid,
            'qty' => $qty
        );
        $this->cart->update($data);
        return $this->cart->update($data);
    }

    function insert() {

        $products_id = intval($this->input->post('products_id'));
        $quantity = intval($this->input->post('quantity'));
        $color_type = trim($this->input->post('color_type'));
        $select_type = trim($this->input->post('select_type'));
        $price = intval($this->input->post('price'));

        $products = $this->products_model->get_products($products_id);
        $cart_insert = FALSE;
        $is_new = true;
//        if (count($this->cart->contents())) {
//            foreach ($this->cart->contents() as $items):
//
//                $options = $this->cart->product_options($items['rowid']);
//                $Type = $options['Type'];
//                $Color = $options['Color'];
//
//                if ($items['id'] === $products_id && $Type === $select_type && $Color === $color_type) {
//                    $data112 = array(
//                        'rowid' => $items['rowid'],
//                        'qty' => $quantity
//                    );
//                    $is_new = FALSE;
//                    $cart_insert = $this->cart->update($data112);
//
//                    continue;
//                } else {
//                    $is_new = TRUE;
//                }
//
//            endforeach;
//        } else {
//            $is_new = TRUE;
//        }
        if ($is_new) {
            $data112 = array(
                'id' => $products_id,
                'qty' => intval($quantity),
                'price' => intval($price),
                'name' => $products['item_name'],
                'options' => array('Type' => $select_type, 'Color' => $color_type, 'products' => $products)
            );

            $cart_insert = $this->cart->insert($data112);
        }
        return $cart_insert;
    }

    function checkout() {
        $vars = array();
        $vars['css'] = '';
        $vars['js'] = '';
        if (!count($this->cart->contents())) {
            redirect('products');
        }

        $this->load->library('form_builder');



        $this->session->set_flashdata('success', false);
        if (!empty($_POST)) {
//            $captcha = $this->_render_captcha();
            if ($this->_process($_POST)) {
                $this->session->set_flashdata('success', TRUE);
                redirect('addtocart/order_review');
            }
        }


        $fields = array();
        $fields['first_name'] = array('required' => TRUE, 'row_class' => 'row');
        $fields['last_name'] = array('required' => TRUE, 'row_class' => 'row');

        $fields['company'] = array('required' => false, 'row_class' => 'row');
        $fields['street1'] = array('required' => TRUE, 'label' => 'Address', 'row_class' => 'row');
        $fields['street2'] = array('required' => false, 'label' => 'Address 2', 'row_class' => 'row');
        $fields['city'] = array('required' => TRUE, 'row_class' => 'row');
        $fields['state'] = array('required' => TRUE, 'row_class' => 'row');
        $fields['postalcode'] = array('required' => TRUE, 'label' => 'Zip/Post Code', 'row_class' => 'row');
        $fields['country'] = array('required' => TRUE, 'row_class' => 'row', 'value' => 'United States', 'type' => 'select',
            'options' => $this->countries_model->options_list()
        );
        $fields['phone'] = array('required' => TRUE, 'label' => 'Phone Number', 'row_class' => 'row');

        $fields['email'] = array('required' => TRUE, 'label' => 'Email Address', 'row_class' => 'row');
        $fields['email']['after_html'] = '<span id="email_check"></span>';
        $captcha = $this->_render_captcha();
        $fields['captcha'] = array('required' => TRUE, 'row_class' => 'captcha_row', 'placeholder' => 'Type the code shown', 'label' => 'Enter the 5 characters', 'class' => 'small', 'before_html' => ' <span class="captcha">' . $captcha['image'] . '</span><span class="captcha_text"></span>');


        $this->form_builder->set_fields($fields);
        $this->form_builder->css_class = 'login_box';
        // will set the values of the fields if there is an error... must be after set_fields
        $this->form_builder->set_validator($this->validator);
        if (!empty($_POST)) {
            $val = $_POST;
        } else {
            $val = array();
        }
        $this->form_builder->set_field_values($val);
        $this->form_builder->display_errors = TRUE;
        $this->form_builder->form_attrs = 'method="post"';
        $this->form_builder->show_required = true;
        $this->form_builder->submit_name = 'submit';
        $vars['form'] = $this->form_builder->render(null, 'divs');



        $this->load->view('siatex/addtocart/checkout', $vars);
    }

    function _render_captcha() {
        $this->load->library('captcha');

        $blog_config = $this->config->item('resetpass');
        $assets_folders = $this->config->item('assets_folders');

        $captcha_path = '/assets/captchas/';
        $word = strtoupper(random_string('alnum', 5));

        $captcha_options = array(
            'word' => $word,
            'img_path' => FCPATH . $captcha_path, // system path to the image
            'img_url' => base_url() . $captcha_path, // web path to the image
            'font_path' => FCPATH . '/assets/fonts/',
        );
        //  $captcha_options = array_merge($captcha_options);

        if (!empty($_POST['captcha']) AND $this->session->userdata('comment_captcha') == $this->input->post('captcha')) {
            $captcha_options['word'] = $this->input->post('captcha');
        }

        $captcha = $this->captcha->get_captcha_image($captcha_options);

        $this->session->set_userdata('comment_captcha', $captcha['word']);

        return $captcha;
    }

    function _process($data) {

        $this->load->library('validator');
        $userdata_contents = array();
        if (!empty($_POST['captcha']) AND strtolower($this->session->userdata('comment_captcha')) === strtolower($this->input->post('captcha'))) {

            if ($this->validator->validate()) {
                unset($data['submit']);
                $userdata_contents = $data;
                $this->CI->session->set_userdata(array('userdata_contents' => $userdata_contents));
                return TRUE;
            }
        }
        $this->CI->session->set_userdata(array('userdata_contents' => $userdata_contents));
        return FALSE;
    }

    function order_review() {
        $data = array();
        $data['css'] = '';
        $data['js'] = '';
        $data['userdata'] = $this->CI->session->userdata('userdata_contents');
        $this->load->view('siatex/addtocart/order_review', $data);
    }

    function remove($rowid) {
        $data = array(
            'rowid' => $rowid,
            'qty' => 0
        );
        $this->cart->update($data);
        if (!count($this->cart->contents())) {
            redirect('products');
        }


        redirect('addtocart');
    }

    function order_submit() {
        $data = array();
        $data['css'] = '';
        $data['js'] = '';
        $data['userdata'] = $userdata = $this->CI->session->userdata('userdata_contents');
        if (!count($this->cart->contents())) {
            redirect('products');
        }
        $viewhtml1 = $this->load->view('siatex/addtocart/emailview', $data, true);
        $data['viewhtml1'] = $viewhtml1;

        $data['message'] = '';
        if (!empty($_POST)) {
            $data['message'] = 'Your information has been submitted successfully';
            $this->_sent_email_process($viewhtml1, $userdata);
        }

        $this->load->view('siatex/addtocart/submit', $data);
    }

    protected function _sent_email_process($viewhtml1, $userdata) {
        $name = APPPATH . 'cache/order_' . time() . '.pdf';

        $this->printview($name, $viewhtml1);
        $this->load->helper('file');

        $config = Array(
            'protocol' => 'mail',
            'smtp_host' => 'smtp.gmail.com',
            'validation' => TRUE,
            'smtp_timeout' => 30,
            'smtp_port' => 465,
            'smtp_user' => 'siatex786@gmail.com', // change it to yours
            'smtp_pass' => '1qazxsw2@2014', // change it to yours
            'mailtype' => 'html',
            'charset' => 'iso-8859-1',
            'wordwrap' => TRUE
        );
        $this->load->library('email', $config);


        $this->load->library('email');
        // print_r($userdata);
        $this->email->from(EMAILFROM, SENDERNAME);
        $this->email->to($userdata['email']);
        $this->email->cc(EMAILCC);

        $this->email->subject('Order received from SiaTex');
        $this->email->message($viewhtml1);

        if (file_exists($name)) {
            $this->email->attach($name);
        } else {
            $this->printview($name, $viewhtml1);
            $this->email->attach($name);
        }

        if ($this->email->send()) {
//            echo $this->email->print_debugger();
            $this->cart->destroy();
            unlink($name);
            return true;
        }
        echo $this->email->print_debugger();


        return false;
    }

    public function printview($name, $viewhtml1 = null) {

        $this->load->library('Pdf');
        // create new PDF document
        $pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
        $pdf->SetHeaderData('', 0, '', '', array(255, 255, 255), array(255, 255, 255));
        $pdf->setFooterData(array(0, 64, 0), array(0, 64, 128));
        $pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
        $pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));
        // set margins
        $pdf->SetMargins(10, 10, 10);
        $pdf->SetHeaderMargin(5);
        $pdf->SetFooterMargin(0);
        // set auto page breaks
        $pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);
        // set image scale factor
        $pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);
        // set some language-dependent strings (optional)
        if (@file_exists(dirname(__FILE__) . '/lang/eng.php')) {
            require_once(dirname(__FILE__) . '/lang/eng.php');
            $pdf->setLanguageArray($l);
        }
        // ---------------------------------------------------------   
        // set default font subsetting mode
        $pdf->setFontSubsetting(FALSE);
        // Set font
        // dejavusans is a UTF-8 Unicode font, if you only need to
        // print standard ASCII chars, you can use core fonts like
        // helvetica or times to reduce file size.
        $pdf->SetFont('dejavusans', '', 14, '', true);

        // Add a page
        // This method has several options, check the source code documentation for more information.
        $pdf->AddPage();

        // set text shadow effect
        $pdf->setTextShadow(array('enabled' => false, 'depth_w' => 0.2, 'depth_h' => 0.2, 'color' => array(196, 196, 196), 'opacity' => 1, 'blend_mode' => 'Normal'));
        $data = array();
        $data['viewhtml1'] = $viewhtml1;
        $body = $this->load->view('siatex/addtocart/printview', $data, true);

        $pdf->writeHTMLCell(0, 0, '', '', $body, 0, 1, 0, true, '', true);
        // Close and output PDF document
        // This method has several options, check the source code documentation for more information.
//        $pdf->Output('example_001.pdf', 'I');


        $pdf->Output($name, 'F');
    }

}
