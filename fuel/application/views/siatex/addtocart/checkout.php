<?php $this->load->view('siatex/_blocks/header') ?>
<?php if (empty($assets_path)) $assets_path = '/assets/'; ?>
<section id="main_inner">
    <div class="products_box_contener">
        <?php
        if (count($this->cart->contents())) {
            ?>

            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <th scope="col">Item</th>
                    <th scope="col">Price</th>
                    <th scope="col">QTY</th> 
                    <th scope="col">Total</th>
                </tr>
                <?php $i = 1; ?>

                <?php
                foreach ($this->cart->contents() as $items):

//            echo '<pre>';
//            print_r($items);
//            echo '</pre>';
                    echo form_hidden('items[' . $i . '][rowid]', $items['rowid']);
                    ?>

                    <tr>
                        <td>

                            <p style="float: right; text-align: left">
                                <?php echo $items['name']; ?><br/>
                                <?php if ($this->cart->has_options($items['rowid']) == TRUE): ?>


                                    <?php
                                    $products = array();
                                    foreach ($this->cart->product_options($items['rowid']) as $option_name => $option_value):
                                        if (is_string($option_value)) {
                                            ?>

                                            <strong><?php echo $option_name; ?>:</strong> <?php echo $option_value; ?><br />

                                            <?php
                                        } elseif (is_array($option_value)) {
                                            $products = $option_value;
                                        }endforeach;
                                    ?>
                                </p>

                            <?php endif; ?>
                            <div style="width: 85px; float: left">
                                <img src="<?= is_array($products['products_images']) && count($products['products_images']) ? $assets_path . 'images/' . $products['products_images'][0]['item_image'] : $assets_path . 'images/products_pic_4.png' ?>" height="100" width="80" alt="img">
                            </div>
                        </td>
                        <td style="text-align:right"><?php echo $this->cart->format_number($items['price']); ?></td>
                        <td><?php echo $items['qty'] ?></td>

                        <td style="text-align:right">$<?php echo $this->cart->format_number($items['subtotal']); ?></td>
                    </tr>

                    <?php $i++; ?>

                <?php endforeach; ?>

                <tr>
                    <td colspan="2"> </td>
                    <td style="text-align:right"><strong>Total</strong></td>
                    <td style="text-align:right">$<?php echo $this->cart->format_number($this->cart->total()); ?></td>
                </tr>


            </table>
        </div>
        <div class="contact_us_page"> 

            <div class="checkout_page">
                <div class="login_box">
                    <div style="font-size: 24px; font-weight: bold; color: #F05247"> Add Your information for checkout</div>
                    <div class="login"> 
                        <?php echo $form; ?> 
                    </div>
                </div>
            </div>
        </div>
        <?php
    }
    ?>
</section>

<?php $this->load->view('siatex/_blocks/footer') ?>