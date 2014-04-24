<?php $this->load->view('siatex/_blocks/header') ?>

<section id="main_inner">

    <?php
    if (count($this->cart->contents())) {
        echo form_open('addtocart');
        ?>
        <div class="products_box_contener">

            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <th scope="col">Item</th>
                    <th scope="col">Price</th>
                    <th scope="col">QTY</th>
                    <th scope="col">remove </th>
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
                        <td><?php echo form_input(array('name' => 'items[' . $i . '][qty]', 'value' => $items['qty'], 'maxlength' => '3', 'size' => '5')); ?></td>
                        <td >remove </td>
                        <td style="text-align:right">$<?php echo $this->cart->format_number($items['subtotal']); ?></td>
                    </tr>

                    <?php $i++; ?>

                <?php endforeach; ?>

                <tr>
                    <td colspan="3"> </td>
                    <td style="text-align:right"><strong>Total</strong></td>
                    <td style="text-align:right">$<?php echo $this->cart->format_number($this->cart->total()); ?></td>
                </tr>

                <tr>
                    <td colspan="5">
                        <p> <a class="update buy_more" href="<?= site_url('products') ?>"> Buy More</a>
                            <?php
                            echo form_submit('empty', 'Clear', 'class="update"');
                            echo form_submit('update', 'Update', 'class="update buy_more"');
                            echo form_reset('form_reset', 'Reset', 'class="update"');
                            ?>
                            <a class="update" href="<?= site_url('addtocart/checkout') ?>"> Checkout</a>
                        </p> 
                        
                    </td>
                </tr>
            </table>

        </div>


        <?php
        echo form_close();
    } else {
        ?>
        <p>  your Cart Empty</p>
    <?php }
    ?>
</section>

<?php $this->load->view('siatex/_blocks/footer') ?>