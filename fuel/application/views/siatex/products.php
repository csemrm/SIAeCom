<?php $this->load->view('siatex/_blocks/header') ?>
<?php if (empty($assets_path)) $assets_path = '/assets/'; ?>

<section id="main_inner">

    <div id="services">



        <div class="products_left_icon categories">
            <h3 class="title">categories</h3>
            <ul id="theMenu">
                <?php foreach ($products_categories as $key => $products_category) { ?>
                    <li class="parent_li">
                        <h3 class="head"><?php echo $products_category['name']; ?></h3>
                        <ul id="xtraMenu1">    <?php
                            if (!empty($products_category['products'])) {
                                getProducts($products_category['products']);
                            }
                            //getChild($products_category['children'], 2);
                            ?>
                        </ul>
                    </li>

                <?php } ?>


            </ul>


        </div>

        <div class="products_center">

            <div class="products_images">
                <ul>
                    <li><a href="<?php echo site_url(); ?>">Home</a></li>
                    <li> > </li>
                    <li ><a href="<?php echo site_url('products'); ?>">Products</a></li>
                </ul>

                <div class="products_images_here">
                    <p>
                        <?php $products_images = is_array($products_data['products_images']) && count($products_data['products_images']) ? $assets_path . 'images/' . $products_data['products_images'][0]['item_image'] : $assets_path . 'images/products_pic_4.png'; ?>

                        <img src="<?= $products_images ?>" height="400" width="364" alt="img"></p>
                    <input type="hidden" id="products_id"   value="<?= $products_data['id']; ?>"/>
                    <input type="image" src="<?= $assets_path ?>images/add_to_cart.png" class="add_cart" value="Add to Cart" />
                    <div id="cart_error" > </div>
                </div>

            </div>
            <div class="products_details">
                <h2> <?php echo $products_data['item_name']; ?></h2>
                <ul class="products_details_list">
                    <li> <?php echo $products_data['fabrics']; ?></li>
                    <li>  <?php echo $products_data['weight']; ?></li>
                    <li>   <?php echo $products_data['quality']; ?></li>
                    <li>    <?php echo $products_data['standard']; ?></li>
                    <li>    <?php echo $products_data['style']; ?></li>
                    <li>Minimum Qty. 10 Pcs Per Color.</li>
                </ul>
                <div >
                    <?php echo $products_data['descriptions']; ?>
                </div>
                <div class="products_details_text">
                    <div class=""><h2>Price </h2></div>
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
                </div>

                <div class="products_details_text">
                    <div class="price_name"><h2>Quantity </h2></div>
                    <div class="price">  <input type="text" placeholder="Quantity" maxlength="3" min="10"  name="quantity" id="quantity"> </div>
                </div>
                <div class="products_details_text">
                    <div class="price_name"><h2>Color </h2></div>
                    <div class="price">  <select name="color_type" id="color_type">
                            <option>Select Color </option>
                            <option value="color" label="color">Color</option>
                            <option value="black_white" label="black_white">Black/White</option>
                        </select>
                    </div>
                </div>
                <div class="products_details_text">
                    <div class="price_name"><h2>Type </h2></div>
                    <div class="price">
                        <select name="select_type" id="select_type">
                            <?php
                            $key = 0;
                            foreach ($type as $value) {
                                ?>
                                <option label="<?= $value['name'] ?>" value="<?php echo $key++ ?>"><?php echo $value['name'] ?></option>
                            <?php }
                            ?>
                        </select>
                    </div>
                </div>

                <div class="clearfix"><h2>Measurement </h2></div>
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
                            <table cellpadding="0" cellspacing="0"  class="measurement_box">
                                <tr height="22" bgcolor="#dfdfdf">
                                    <td width="65" align="left">Size</td>
                                    <?php foreach ($size as $size_value) {
                                        ?>
                                        <td ><?php echo $size_value ?></td>
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
                <?php if ($products_data['products_color']) { ?>
                    <div class="products_details_text">
                        <div class=""><h2>Color </h2></div>

                        <?php
                        //print_r($products_data['products_color']);
                        foreach ($products_data['products_color'] as $key => $color) {
                            ?>
                            <div style="background: <?= $color['color_code'] ?>; width: 50px; height: 20px; float: left; margin-right: 10px" > <img src="<?= $assets_path ?>images/<?= $color['color_image'] ?>" height="20" width="50" alt="" /></div>
                        <?php } ?>

                    </div>
                <?php } ?>
            </div>
        </div>

    </div>



</section>

<?php
$this->load->view('siatex/_blocks/footer');
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
?><?php echo js('siatex/front/menu') . js($js); ?>