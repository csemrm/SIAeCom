<?php
/* template head */
/* end template head */ ob_start(); /* template body */ ?><!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta charset="utf-8">
            <title>
                About SiATEX            </title>

            <meta name="keywords" content="About SiATEX">
                <meta name="description" content="">
                          <link href="/assets/css/siatex/style.css?c=" media="all" rel="stylesheet"/>
	<link href="/assets/css/no-theme/jquery-ui-1.10.4.custom.css?c=" media="all" rel="stylesheet"/>
	<link href="/assets/css/siatex/screen.css?c=" media="all" rel="stylesheet"/>
	<link href="/assets/css/siatex/menu.css?c=" media="all" rel="stylesheet"/>
	

                    <script type="text/javascript" src="/fuel/modules/fuel/assets/js/jquery/jquery.js"></script>	
                    <script src="/assets/js/jquery-ui-1.10.4.custom.js?c=" type="text/javascript" charset="utf-8"></script>
	<script src="/assets/js/siatex/front/accordion.js?c=" type="text/javascript" charset="utf-8"></script>
	                    </head>

                    <body>

                        <div id="conten" class="contener">

                            <!--Top Bar-->

                            <div class="header">
                                <div class="header_conten">

                                    <div class="logo">
                                        <a title="Siatex" href="http://localhost:8081/index.php"><img src="/assets/images/logo.png" height="139" width="213" alt="Siatex" border="0" /></a>
                                       </div>
                                    <div class="right_menu">
                                        <div class="cart_menu">
                                            <ul>
                                                <!--li><a href="#">Login</a></li>
                                                <li><a href="#">Sign Up</a></li-->
                                                <li class="cart_bg"><span style="padding-left:18px;">Shopping Cart :</span><a href="http://localhost:8081/index.php/addtocart"> ( 1 items )</a></li>
                                            </ul>
                                            <div class="search_box"><input placeholder="Search" type="text"/> <input type="submit" value=""/></div>
                                        </div>

                                        <div class="home_menu">
                                            <ul class="home_menu_list">
                                                <li class="active"><a href="http://localhost:8081/index.php">Home</a></li>
                                                <li><a href="http://localhost:8081/index.php/products">Products</a> </li>
                                                <li><a href="http://localhost:8081/index.php/services">services </a>  </li>
                                                <li><a href="http://localhost:8081/index.php/contact">Contact us</a> </li>
                                                <li><a href="http://localhost:8081/index.php/about_us">About Us</a></li>
                                                <li>
                                                    <img src="/assets/images/facebook.png" height="17" width="17" alt="facebook"/> 
                                                    <img src="/assets/images/twitter.png" height="17" width="17" alt="facebook"/> 
                                                </li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div id="body" class="body_contener">
                                
                                
<section id="main_inner" class="body_contener">
    <div class="products_box_contener">


        <div class="contact_us_page about_us"> 
            <h2><!--__FUEL_MARKER__0-->About SiATEX</h2><br>
            <!--__FUEL_MARKER__1--><p>Siatex Bangladesh Limited was started in 1994 as the exclusive sourcing and manufacturing arm of a highly successful direct marketing retailer. From inception our mission has been to develop and produce upper end, medium quantity product that is very competitively priced that has a high degree of "make". We particularly excel at sourcing and working in products made of better piece goods. And, because of our core experience servicing "just-in-time" retail direct demand, we have an unmatched reputation in the industry for our prompt delivery and flexible sourcing. In 1998 the company was spun off as a separate entity and began supplying products to the general wholesale and retail marketplace. Today Siatex quietly produces apparel, accessories, home products, activewear and other general merchandise in Hong Kong, China, and Vietnam.</p>        </div>
    </div>
</section>

</div>

<!--Body-->

<!--Footer-->


<div class="footer">


    <div class="footer_tex">
        <div class="footer_left_tex quick_links">
            <div class="Our_menu">quick links</div>
            <ul>
                <li><a href="http://localhost:8081/index.php">Home</a></li>
                <li><a href="http://localhost:8081/index.php/about_us">About Us</a></li>
                <li><a href="http://localhost:8081/index.php/products">Products</a></li>
                <li><a href="http://localhost:8081/index.php/contact">Contact Us</a></li>
            </ul>
        </div>
        <div class="footer_left_tex head_office">
            <div class="Our_menu">Head Office </div>
            <div class="home_icon">House # 8, Road # 6, BLK "E"  <p>Niketon,Gulshan - 1,Dhaka 1213 </p></div>
            <div class="home_icon email_icon">info@siatex.com   <p>admin@siatex.com</p></div>
            <div class="home_icon bottom_phone_icon">info@siatex.com   <p>admin@siatex.com</p></div>
        </div>
        <div class="footer_left_tex">
            <div class="Our_menu">Canada Sales Office</div>
            <ul>
                <li>22 Hagley Road</li>
                <li>Toronto, M1M 1S9</li>
                <li>ON Canada</li>
                <li>Phone: (+1) 647-984-7040</li>
            </ul>
        </div>
        <div class="footer_left_tex follow_us_bg">
            <a href="#"><img src="/assets/images/facebook_icon_2.png" height="21" width="22" alt="facebook" /></a>
            <a href="#"><img src="/assets/images/twitter_icon_2.png" height="21" width="22" alt="twitter" /></a> 
            <a href="#"><img src="/assets/images/link_in.png" height="21" width="22" alt="linkedin" /></a>
        </div>
    </div>
</div>
<!--Footer-->
</div>
<script src="/assets/js/main.js?c=" type="text/javascript" charset="utf-8"></script>
	</body>
</html>



<?php  /* end template body */
return $this->buffer . ob_get_clean();
?>