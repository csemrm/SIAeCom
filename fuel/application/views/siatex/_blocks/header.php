<?php if (empty($assets_path)) $assets_path = '/assets/'; ?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta charset="utf-8">
            <title>
                <?php
                if (!empty($page_title)) {
                    echo $page_title;
                }
                ?>
            </title>

            <meta name="keywords" content="<?php
            if (!empty($page_title)) {
                echo $page_title;
            }
            ?>">
                <meta name="description" content="<?php
                if (!empty($description)) {
                    echo $description;
                }
                ?>">
                          <?php
                          echo css('siatex/style,no-theme/jquery-ui-1.10.4.custom,siatex/screen,siatex/menu') . css($css);
                          ?>


                    <script type="text/javascript" src="/fuel/modules/fuel/assets/js/jquery/jquery.js"></script>	
                    <?php echo js('jquery-ui-1.10.4.custom,siatex/front/accordion'); ?>
                    </head>

                    <body>

                        <div id="conten" class="contener">

                            <!--Top Bar-->

                            <div class="header">
                                <div class="header_conten">

                                    <div class="logo">
                                        <a title="Siatex" href="<?php echo site_url(); ?>"><img src="<?php echo $assets_path; ?>images/logo.png" height="139" width="213" alt="Siatex" border="0" /></a>
                                       </div>
                                    <div class="right_menu">
                                        <div class="cart_menu">
                                            <ul>
                                                <!--li><a href="#">Login</a></li>
                                                <li><a href="#">Sign Up</a></li-->
                                                <li class="cart_bg"><span style="padding-left:18px;">Shopping Cart :</span><a href="<?= site_url('addtocart'); ?>"> ( <?= count($this->cart->contents()) ? count($this->cart->contents()) : 0 ?> items )</a></li>
                                            </ul>
                                            <div class="search_box"><input placeholder="Search" type="text"/> <input type="submit" value=""/></div>
                                        </div>

                                        <div class="home_menu">
                                            <ul class="home_menu_list">
                                                <li class="active"><a href="<?php echo site_url(); ?>">Home</a></li>
                                                <li><a href="<?php echo site_url('products'); ?>">Products</a> </li>
                                                <li><a href="<?php echo site_url('services'); ?>">services </a>  </li>
                                                <li><a href="<?php echo site_url('contact'); ?>">Contact us</a> </li>
                                                <li><a href="<?php echo site_url('about_us'); ?>">About Us</a></li>
                                                <li>
                                                    <img src="<?php echo $assets_path; ?>images/facebook.png" height="17" width="17" alt="facebook"/> 
                                                    <img src="<?php echo $assets_path; ?>images/twitter.png" height="17" width="17" alt="facebook"/> 
                                                </li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div id="body" class="body_contener">
                                
                                