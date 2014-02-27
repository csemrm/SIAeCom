<?php $this->load->view('SIATEX/_blocks/header') ?>

<section id="main_inner">

    <?php
    if (count($this->cart->contents())) { 
        ?>

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

        <div class=""> 
            <?php echo $form; ?> 
        </div>
        <?php
    }
    ?>
</section>

<?php $this->load->view('SIATEX/_blocks/footer') ?>