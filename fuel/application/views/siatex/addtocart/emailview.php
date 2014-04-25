
<div style="overflow: hidden">
    <?php if (empty($assets_path)) $assets_path = '/assets/'; ?>
    <div class="contact_form checkout_page">
        <div style="width:350px;margin:auto;padding-top:30px;" >
            <ul>
                <li style="color: #686D75;  display: inherit;  font-size: 14px;  padding: 2px 0;">First name: <?= $userdata['first_name']; ?></li>
                <li style="color: #686D75;  display: inherit;  font-size: 14px;  padding: 2px 0;">Last name: <?= $userdata['last_name']; ?></li>
                <li style="color: #686D75;  display: inherit;  font-size: 14px;  padding: 2px 0;">Company: <?= $userdata['company']; ?> </li>
                <li style="color: #686D75;  display: inherit;  font-size: 14px;  padding: 2px 0;">Address: <?= $userdata['street1']; ?> </li>
                <li style="color: #686D75;  display: inherit;  font-size: 14px;  padding: 2px 0;">Address 2 : <?= $userdata['street2']; ?> </li>
                <li style="color: #686D75;  display: inherit;  font-size: 14px;  padding: 2px 0;">Email Address: <?= $userdata['email']; ?></li>
            </ul>
        </div>
    </div>



    <div class="contact_form">
        <div style="width:350px;margin:auto;padding-top:30px;">
            <ul>
                <li style="color: #686D75;  display: inherit;  font-size: 14px;  padding: 2px 0;">City : <?= $userdata['city']; ?></li>
                <li style="color: #686D75;  display: inherit;  font-size: 14px;  padding: 2px 0;">State: <?= $userdata['state']; ?></li>

                <li style="color: #686D75;  display: inherit;  font-size: 14px;  padding: 2px 0;">Zip/Post Code: <?= $userdata['postalcode']; ?></li>
                <li style="color: #686D75;  display: inherit;  font-size: 14px;  padding: 2px 0;">Phone Number: <?= $userdata['first_name']; ?></li>
                <li style="color: #686D75;  display: inherit;  font-size: 14px;  padding: 2px 0;">Country: <?= $userdata['country']; ?></li>
            </ul>
        </div>
    </div>

</div>
<?php
if (count($this->cart->contents())) {
    ?>
    <div class="products_box_contener">
        <table cellpadding="6" cellspacing="1" style="width:100%" border="0">
            <tr>

                <th style="text-align:left">Item Description</th>
                <th style="text-align:right">Item Price</th>
                <th style="text-align:right">QTY</th>
                <th style="text-align:right">Sub-Total</th>
            </tr>

            <?php $i = 1; ?>

            <?php
            foreach ($this->cart->contents() as $items):

//            echo '<pre>';
//            print_r($items);
//            echo '</pre>'; 
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
                            <img src="<?= base_url() ?>/<?= is_array($products['products_images']) && count($products['products_images']) ? $assets_path . 'images/' . $products['products_images'][0]['item_image'] : $assets_path . 'images/products_pic_4.png' ?>" height="100" width="80" alt="img">
                        </div>
                    </td>
                    <td style="text-align:right"><?php echo $this->cart->format_number($items['price']); ?></td>
                    <td style="text-align:right"><?= $items['qty']; ?></td>
                    <td style="text-align:right">$<?php echo $this->cart->format_number($items['subtotal']); ?></td>
                </tr>

                <?php $i++; ?>

            <?php endforeach; ?>

            <tr>
                <td colspan="2" > </td>
                <td style="text-align:right"><strong>Total</strong></td>
                <td style="text-align:right">$<?php echo $this->cart->format_number($this->cart->total()); ?></td>
            </tr>

        </table> 
    </div>
    <?php
}
?>
 