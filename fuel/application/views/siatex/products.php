<?php $this->load->view('SIATEX/_blocks/header') ?>
<?php if (empty($assets_path)) $assets_path = '/assets/'; ?>
<section id="main_inner">

    <div id="services">



        <div class="products_left_icon">
            <h3>our Products</h3>
            <ul>
                <?php
                foreach ($products_categories as $key => $products_category) {
                    ?>
                    <li><a href="<?php echo site_url('categories/' . $products_category['slug']); ?>"><?php echo $products_category['name']; ?></a></li>
                    <?php
                }
                ?>


            </ul>

        </div>

        <div class="products_center">
            <div class="products_left_conten">
                <ul class="products_left_conten_two">
                    <li>Home</li>
                    <li> > </li>
                    <li>T-shirt</li>
                    <li> > </li>
                    <li><span>Tees</span></li>
                </ul>
                <p><img src="<?php echo $assets_path; ?>/images/t-shirt_img_1.jpg" height="370" width="398" alt="img" /></p>
                <div class="all_colour">
                    <ul>
                        <li><img src="<?php echo $assets_path; ?>/images/color_1.jpg" height="20" width="35" alt="img" /></li>
                        <li><img src="<?php echo $assets_path; ?>/images/color_2.jpg" height="20" width="35" alt="img" /></li>
                        <li><img src="<?php echo $assets_path; ?>/images/color_3.jpg" height="20" width="35" alt="img" /></li>
                        <li><img src="<?php echo $assets_path; ?>/images/color_4.jpg" height="20" width="35" alt="img" /></li>
                        <li><img src="<?php echo $assets_path; ?>/images/color_5.jpg" height="20" width="35" alt="img" /></li>
                        <li><img src="<?php echo $assets_path; ?>/images/color_6.jpg" height="20" width="35" alt="img" /></li>
                        <li><img src="<?php echo $assets_path; ?>/images/color_7.jpg" height="20" width="35" alt="img" /></li>
                    </ul>

                </div>


                <div class="add_to_cart">
                    <ul>
                        <li><input type="text" placeholder="Quantity" name="quantity" id="item_qty-46"></li>
                        <li>
                            <input type="button" onclick="return add_cart('46');" value="Add to Cart">
                        </li>
                    </ul>
                </div>

<!--   <input class="add_to_cart_button" value="Add to Cart" type="submit">-->

            </div>
            <div class="products_right_conten">
                <h3> basic t-shirt</h3>
                <ul class="products_right_conten_list">
                    <li> 100% Cotton Single Jersey</li>
                    <li>120-130 gm/m²</li>
                    <li>Tubular   Body</li>
                    <li>Special Treatment for Stretch like effect</li>
                    <li>AZO Free Reactive dyeing & pre shrunk.</li>
                    <li>Minimum Qty. 10 Pcs Per Colour.</li>
                    <li>
                        <select>
                            <option>Select Size </option>
                            <option>S </option>
                            <option>M </option>
                            <option>XL </option>
                            <option>2XL </option>
                            <option>3XL </option>
                        </select>

                    </li>

                    <li>
                        <br><select>
                            <option>Asian</option>
                            <option>Europe </option>
                        </select>

                    </li>
                </ul>
                <br><h3 class="price">Price : $25.00</h3>
                <p class="measurement2"><strong>Measurement</strong></p>


                <div class="measurement_tab">
                    <ul>
                        <li class="active"><a href="#">Asian</a></li>
                        <li><a href="#">Europe</a></li>
                        <li><a href="#">Text</a></li>
                        <li><a href="#">Text</a></li>
                    </ul>
                </div>                                                               
                <div class="measurement">

                    <table cellpadding="0" cellspacing="0" width="340" class="measurement_box">
                        <tr height="22" bgcolor="#dfdfdf">
                            <td width="65" align="left">Size</td>
                            <td width="50">S</td>
                            <td width="50">l</td>
                            <td width="50">m</td>
                            <td width="50">xl</td>
                            <td width="50">xxl</td>
                            <td width="50">3xl</td>
                        </tr>
                        <tr height="22" bgcolor="#fff">
                            <td style="border-bottom:solid 1px #CCC;" width="65" align="center">Length </td>
                            <td style="border-bottom:solid 1px #CCC;" width="65" align="center">70</td>
                            <td style="border-bottom:solid 1px #CCC;" width="65" align="center">72</td>
                            <td style="border-bottom:solid 1px #CCC;" width="65" align="center">74</td>
                            <td style="border-bottom:solid 1px #CCC;" width="65" align="center">76</td>
                            <td style="border-bottom:solid 1px #CCC;" width="65" align="center">78</td>
                            <td style="border-bottom:solid 1px #CCC;" width="65" align="center">80</td>
                        </tr>
                        <tr height="22" bgcolor="#fff">
                            <td style="border-bottom:solid 1px #CCC;" width="65" align="left">Chest </td>
                            <td style="border-bottom:solid 1px #CCC;" width="65" align="center">49</td>
                            <td style="border-bottom:solid 1px #CCC;" width="65" align="center">52</td>
                            <td style="border-bottom:solid 1px #CCC;" width="65" align="center">55</td>
                            <td style="border-bottom:solid 1px #CCC;" width="65" align="center">58</td>
                            <td style="border-bottom:solid 1px #CCC;" width="65" align="center">60</td>
                            <td style="border-bottom:solid 1px #CCC;" width="65" align="center">62</td>
                        </tr>  
                        <tr height="22" bgcolor="#fff">
                            <td width="65" align="left">Sleeve </td>
                            <td width="50">20</td>
                            <td width="50">21</td>
                            <td width="50">22</td>
                            <td width="50">23</td>
                            <td width="50">24</td>
                            <td width="50">25</td>
                        </tr>                                                                        
                    </table>



                </div>
            </div>
        </div>



    </div>
</section>

<?php $this->load->view('SIATEX/_blocks/footer') ?>