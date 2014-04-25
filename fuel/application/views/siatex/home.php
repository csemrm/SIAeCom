<?php $this->load->view('siatex/_blocks/header') ?>
<?php if (empty($assets_path)) $assets_path = '/assets/'; ?>
<section id="main_inner">

    <div class="banner">
        <img src="<?php echo $assets_path; ?>images/banner.png" height="435" width="980" alt="banner"/>
    </div>

    <div class="products_box_contener">
        <?php foreach ($products as $key => $product) { ?>
            <div class="products_box <?= $key % 3 === 2 ? 'last' : '' ?>">
                <p><img src="<?php echo $assets_path; ?>images/products_pic_1.png" height="264" width="264" alt="img"/></p>
                <h3><?= $product['item_name'] ?></h3>
                <!--p><?= $product['descriptions'] ?></p-->
                <h1>$50.00</h1>
                <ul>
                    <li> <a href="<?php echo site_url('products/' . $product['slug']); ?>">View Details</a></li>
                </ul>

            </div>
        <?php } ?>


    </div>

</section>

<?php $this->load->view('siatex/_blocks/footer') ?>