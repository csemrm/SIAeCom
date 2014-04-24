<?php $this->load->view('siatex/_blocks/header') ?>

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
                            <?php echo $items['name']; ?>

                            <?php if ($this->cart->has_options($items['rowid']) == TRUE): ?>

                                <p>
                                    <?php
                                    foreach ($this->cart->product_options($items['rowid']) as $option_name => $option_value):
                                        if (is_string($option_value)) {
                                            ?>

                                            <strong><?php echo $option_name; ?>:</strong> <?php echo $option_value; ?><br />

                                        <?php }endforeach; ?>
                                </p>

                            <?php endif; ?>

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


        <div class=" ">
            <div ><h2> Customer Information Review</h2></div>
            <table class="order_review">
                <tbody>
                    <tr>
                        <td class="label"><label id="label_first_name" for="first_name">First name</label></td>
                        <td class="value"> <?= $userdata['first_name']; ?></td>
                    </tr>
                    <tr>
                        <td class="label"><label id="label_last_name" for="last_name">Last name</label></td>
                        <td class="value"> <?= $userdata['last_name']; ?></td>    </tr>
                    <tr>
                        <td class="label"><label id="label_company" for="company">Company</label></td>
                        <td class="value"> <?= $userdata['company']; ?></td> </tr>
                    <tr>
                        <td class="label"><label id="label_street1" for="street1">Address</label></td>
                        <td class="value"> <?= $userdata['street1']; ?></td> </tr>
                    <tr>
                        <td class="label"><label id="label_street2" for="street2">Address 2</label></td>
                        <td class="value"> <?= $userdata['street2']; ?></td>  </tr>
                    <tr>
                        <td class="label"><label id="label_city" for="city">City</label></td>
                        <td class="value"> <?= $userdata['city']; ?></td>   </tr>
                    <tr>
                        <td class="label"><label id="label_state" for="state">State</label></td>
                        <td class="value"> <?= $userdata['state']; ?></td> </tr>
                    <tr>
                        <td class="label"><label id="label_postalcode" for="postalcode">Zip/Post Code</label></td>
                        <td class="value"> <?= $userdata['postalcode']; ?></td>  </tr>
                    <tr>
                        <td class="label"><label id="label_phone" for="phone">Phone Number</label></td>
                        <td class="value"> <?= $userdata['phone']; ?></td>   </tr>
                    <tr>
                        <td class="label"><label id="label_email" for="email">Email Address</label></td>
                        <td class="value"> <?= $userdata['email']; ?></td>   </tr>

                </tbody>
            </table> 
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