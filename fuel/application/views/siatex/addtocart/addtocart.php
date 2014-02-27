<?php $this->load->view('SIATEX/_blocks/header') ?>

<section id="main_inner">

    <?php
    
     
    if (count($this->cart->contents())) {
        echo form_open('AddToCart');
        ?>

        <table cellpadding="6" cellspacing="1" style="width:100%" border="0">

            <tr>
                <th>QTY</th>
                <th>Item Description</th>
                <th style="text-align:right">Item Price</th>
                <th style="text-align:right">Sub-Total</th>
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
                    <td><?php echo form_input(array('name' => 'items[' . $i . '][qty]', 'value' => $items['qty'], 'maxlength' => '3', 'size' => '5')); ?></td>
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
        <p>
            <?php
            echo form_submit('empty', 'Empty your Cart');
            echo form_submit('update', 'Update your Cart');
            echo form_reset('form_reset', 'Reset your Cart');
            ?>
            <a href="<?= site_url('AddToCart/checkout') ?>"> Checkout</a>
        </p>
        <?php
        echo form_close();
    } else {
        ?>
        <p>  your Cart Empty</p>
    <?php }
    ?>
</section>

<?php $this->load->view('SIATEX/_blocks/footer') ?>