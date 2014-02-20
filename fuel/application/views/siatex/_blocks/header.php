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
                if (!empty($page_title)) {
                    echo $page_title;
                }
                ?>">
                          <?php
                          echo css('siatex/style,no-theme/jquery-ui-1.10.4.custom,siatex/screen,siatex/menu') . css($css);
                          ?>


                    <link href='http://fonts.googleapis.com/css?family=News+Cycle|Anaheim|Open+Sans+Condensed:300' rel='stylesheet' type='text/css'/>
                    <script type="text/javascript" src="/fuel/modules/fuel/assets/js/jquery/jquery.js"></script>	
                    <?php echo js('jquery-ui-1.10.4.custom,siatex/front/accordion'); ?>
                    </head>

                    <body>

                        <div id="conten">

                            <!--Top Bar-->

                            <div id="top_two_pix"></div>
                            <div id="top_menu">
                                <div class="top_menu_tex">
                                    <div class="left_contact_icon">
                                        <ul>
                                            <li class="email_icon email_icon2"><a href="<?php echo site_url(); ?>">Home</a></li>
                                            <li class="phone_icon email_icon1">+ 123 456 1789</li>
                                              <!--<li class="phone_icon2">Language <select>
                                              <option>English </option> 
                                              <option>Italian</option>
                                               </select></li>-->
                                        </ul>
                                    </div>
                                    <div class="left_social_icon">
                                        <ul>
                                            <li><a title="facebook" href="#"><img src="<?php echo $assets_path; ?>images/facebook.png" alt="facebook" width="7" height="14" border="0" /></a></li>
                                            <li><a title="twitter" href="#"><img src="<?php echo $assets_path; ?>images/twitter.png" alt="twitter" width="19" height="13" border="0" /></a></li>
                                            <li><a title="linkedin" href="#"><img src="<?php echo $assets_path; ?>images/linkedin.png" alt="linkedin" width="13" height="13" border="0" /></a></li>
                                            <li><a title="rss" href="#"><img src="<?php echo $assets_path; ?>images/rss.png" alt="rss" width="13" height="12" border="0" /></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                            <!--Top Bar-->


                            <!--Hader-->

                            <div id="header_1">
                                <div id="logo"><a title="Dutta Fashion" href="<?php echo site_url(); ?>"><img src="<?php echo $assets_path; ?>images/logo.png" alt="Dutta Fashion" width="192" height="126" border="0" /></a></div>
                                <div id="right_menu">
                                    <ul>
                                        <li class="home_icon" ><a href="<?php echo site_url(); ?>"><span>Home</span></a></li>
                                        <li class="products"><a href="<?php echo site_url('products'); ?>">Products</a></li>
                                        <li class="services"><a href="<?php echo site_url('services'); ?>">services</a></li>
                                        <li class="contact"><a href="<?php echo site_url('contact'); ?>">contact</a></li>
                                    </ul>

                                </div>
                            </div>
                            <div id="body">