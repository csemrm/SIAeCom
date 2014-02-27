<?php $this->load->view('SIATEX/_blocks/header') ?>
<?php if (empty($assets_path)) $assets_path = '/assets/'; ?>
<?php
//echo '<pre>';
//print_r($products_data);
//echo '</pre>';
?>
<section id="main_inner">

    <div id="services">



        <div class="products_left_icon">
            <h3>our Products</h3>
            <ul id="theMenu">
                <?php foreach ($products_categories as $key => $products_category) { ?>
                    <li class="parent_li">
                        <ul id="xtraMenu1">
                            <?php
                            if (!empty($products_category['children'])) {
                                ?>
                                <h3 class="head"><a><?php echo $products_category['name']; ?></a></h3>
                                <?php
                                if (!empty($products_category['products'])) {
                                    getProducts($products_category['products']);
                                }
                                getChild($products_category['children'], 2);
                            } else {
                                ?>
                                <a><?php echo $products_category['name']; ?></a>
                                <?php
                                if (!empty($products_category['products'])) {
                                    getProducts($products_category['products']);
                                }
                            }
                            ?>
                        </ul>
                    </li>

                <?php } ?>


            </ul>


        </div>

        <div class="products_center">
            <div class="products_left_conten">
                <ul class="products_left_conten_two">
                    <li><a href="<?php echo base_url(); ?>"> Home</a></li>
                    <li> > </li>
                    <li>T-shirt</li>
                    <li> > </li>
                    <li><span>Tees</span></li>
                </ul>
                <p><img src="<?php echo $assets_path; ?>/images/t-shirt_img_1.jpg" height="370" width="398" alt="img" /></p>
                <div class="all_colour">
                    <ul>
                        <?php
                        foreach ($products_data['products_images'] as $images_key => $images) {
                            ?>
                            <li><img src="<?php echo $assets_path; ?>images/<?= $images['item_image']; ?>" height="20" width="35" alt="img" /></li>
                        <?php } ?> 
                    </ul>

                </div>


                <div class="add_to_cart">
                    <ul>
                        <li><input type="text" placeholder="Quantity" maxlength="3" min="10"  name="quantity" id="quantity"></li>
                        <li>
                            <input type="button" class="add_cart" value="Add to Cart" >
                            <input type="hidden" id="products_id"   value="<?= $products_data['id']; ?>">
                        </li>
                    </ul>
                    <div id="cart_error" > </div>
                </div>

<!--   <input class="add_to_cart_button" value="Add to Cart" type="submit">-->

            </div>
            <div class="products_right_conten">
                <h3> <?php echo $products_data['item_name']; ?></h3>
                <ul class="products_right_conten_list">
                    <li> <?php echo $products_data['fabrics']; ?></li>
                    <li>  <?php echo $products_data['weight']; ?></li>
                    <li>   <?php echo $products_data['quality']; ?></li>
                    <li>    <?php echo $products_data['standard']; ?></li>
                    <li>    <?php echo $products_data['style']; ?></li>
                    <li>Minimum Qty. 10 Pcs Per Color.</li>
                    <li>
                        <select name="color_type" id="color_type">
                            <option>Select Color </option>
                            <option value="color" label="color">Color</option>
                            <option value="black_white" label="black_white">Black/White</option>
                        </select>

                    </li>

                    <li>
                        <br><select name="select_type" id="select_type">
                            <?php
                            $key = 0;
                            foreach ($type as $value) {
                                ?>
                                <option label="<?= $value['name'] ?>" value="<?php echo $key++ ?>"><?php echo $value['name'] ?></option>
                            <?php }
                            ?>
                        </select>

                    </li>
                </ul>
                <br>
                <h3 class="price">Price  </h3>
                <?php
                $i = 0;
                foreach ($products_price as $key => $price) :
                    ?>
                    <div class="<?php echo 'hide' ?>" id="products_price<?= $i ?>">
                        <p class="measurement2">Color : <span id="color_price<?= $i ?>"> <?php echo $price['price'] ?> </span>  </p>
                        <p class="measurement2">Black/White : <span id="black_white<?= $i ?>"><?php echo $price['black_price'] ?></span>  </p>
                    </div>
                    <?php
                    $i++;
                endforeach;
                ?>
                <p class="measurement2"><strong>Measurement</strong></p>
                <div id="tabs" class="measurement_tab">

                    <ul>
                        <?php
                        $key = 0;
                        foreach ($type as $value) {
                            $key++;
                            ?>
                            <li><a href="#tabs-<?php echo $key ?>" ><?php echo $value['name'] ?></a></li>
                        <?php }
                        ?>

                    </ul>
                    <?php
                    $type_key = 0;
                    foreach ($type as $value) {
                        $type_key++;
                        ?>
                        <div id="tabs-<?php echo $type_key ?>" class="measurement" >
                            <table cellpadding="0" cellspacing="0" width="340" class="measurement_box">
                                <tr height="22" bgcolor="#dfdfdf">
                                    <td width="65" align="left">Size</td>
                                    <?php foreach ($size as $size_value) {
                                        ?>
                                        <td width="50"><?php echo $size_value ?></td>
                                    <?php }
                                    ?>
                                </tr>

                                <?php foreach ($value['measurement_table'] as $key => $value) { ?>
                                    <tr height="22" bgcolor="#fff">
                                        <td style="border-bottom:solid 1px #CCC;" width="65" align="center"><?php echo $value['name'] ?> </td>
                                        <?php foreach ($value[$value['name']] as $size_value) { ?>
                                            <td style="border-bottom:solid 1px #CCC;" width="65" align="center"><?php echo $size_value ?></td>
                                        <?php } ?>
                                    </tr>


                                <?php } ?>
                            </table>
                        </div>
                    <?php }
                    ?>


                </div> 


            </div>
        </div>

        <div >
            <?php echo $products_data['descriptions']; ?>
        </div>

    </div>
</section>

<?php
$this->load->view('SIATEX/_blocks/footer');
echo js('siatex/front/products,siatex/front/addtocart');

function getChild($root, $lavel) {
    ?>


    <?php foreach ($root as $key => $products_category) { ?>
        <li>
            <ul id="xtraMenu<?php echo $lavel ?>">
                <?php
                if (!empty($products_category['children'])) {
                    ?>
                    <h4 class="head"><a><?php echo $products_category['name']; ?></a></h4>
                            <?php
                            if (!empty($products_category['products'])) {
                                getProducts($products_category['products']);
                            }
                            getChild($products_category['children'], $lavel++);
                        } else {
                            ?>
                    <a><?php echo $products_category['name']; ?></a> 
                    <?php
                    if (!empty($products_category['products'])) {
                        getProducts($products_category['products']);
                    }
                }
                ?>
            </ul>
        </li>


    <?php } ?>



    <?php
}

function getProducts($products) {
    foreach ($products as $key => $product) {
        ?>
        <li><a  href="<?php echo site_url('products/' . $product['slug']); ?>"><?php echo $product['item_name']; ?></a></li>

        <?php
    }
}
?>