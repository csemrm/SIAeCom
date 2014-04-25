<?php $this->load->view('siatex/_blocks/header') ?>
<?php if (empty($assets_path)) $assets_path = '/assets/'; ?>
<section id="main_inner">

    <?php
    if (count($this->cart->contents())) {
        echo form_open('addtocart/order_submit');
        ?>

        <div class="products_box_contener">


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


        <div class="login_box ">
            <div ><h2> Customer Information Review</h2></div>

            <div class="contact_form checkout_page">
                <div class="login_box">
                    <ul>
                        <li>First name: <?= $userdata['first_name']; ?></li>
                        <li>Last name: <?= $userdata['last_name']; ?></li>
                        <li>Company: <?= $userdata['company']; ?> </li>
                        <li>Address: <?= $userdata['street1']; ?> </li>
                        <li>Address 2 : <?= $userdata['street2']; ?> </li>
                        <li>Email Address: <?= $userdata['email']; ?></li>
                    </ul>
                </div>
            </div>



            <div class="contact_form">
                <div class="login_box">
                    <ul>
                        <li>City : <?= $userdata['city']; ?></li>
                        <li>State: <?= $userdata['state']; ?></li>

                        <li>Zip/Post Code: <?= $userdata['postalcode']; ?></li>
                        <li>Phone Number: <?= $userdata['first_name']; ?></li>
                        <li>Country: <?= $userdata['country']; ?></li>
                    </ul>
                </div>
            </div>


        </div>
        <p>
            <?php
            echo form_submit('', 'Submit');
            ?>

        </p>
        <?php
        echo form_close();
    }
    ?>
</section>

<?php $this->load->view('siatex/_blocks/footer') ?>