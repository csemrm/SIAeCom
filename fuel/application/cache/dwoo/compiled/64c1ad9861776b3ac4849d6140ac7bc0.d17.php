<?php
/* template head */
/* end template head */ ob_start(); /* template body */ ?><!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta charset="utf-8">
            <title>
                Home            </title>

            <meta name="keywords" content="Home">
                <meta name="description" content="Home">
                          <link href="/assets/css/siatex/style.css?c=" media="all" rel="stylesheet"/>
	<link href="/assets/css/siatex/screen.css?c=" media="all" rel="stylesheet"/>
	

                    <link href='http://fonts.googleapis.com/css?family=News+Cycle|Anaheim|Open+Sans+Condensed:300' rel='stylesheet' type='text/css'/>
                    <script type="text/javascript" src="fuel/modules/fuel/assets/js/jquery/jquery.js"></script>	

                    </head>

                    <body>

                        <div id="conten">

                            <!--Top Bar-->

                            <div id="top_two_pix"></div>
                            <div id="top_menu">
                                <div class="top_menu_tex">
                                    <div class="left_contact_icon">
                                        <ul>
                                            <li class="email_icon email_icon2"><a href="http://localhost:8081/index.php">Home</a></li>
                                            <li class="phone_icon email_icon1">+ 123 456 1789</li>
                                              <!--<li class="phone_icon2">Language <select>
                                              <option>English </option> 
                                              <option>Italian</option>
                                               </select></li>-->
                                        </ul>
                                    </div>
                                    <div class="left_social_icon">
                                        <ul>
                                            <li><a title="facebook" href="#"><img src="assets/images/facebook.png" alt="facebook" width="7" height="14" border="0" /></a></li>
                                            <li><a title="twitter" href="#"><img src="assets/images/twitter.png" alt="twitter" width="19" height="13" border="0" /></a></li>
                                            <li><a title="linkedin" href="#"><img src="assets/images/linkedin.png" alt="linkedin" width="13" height="13" border="0" /></a></li>
                                            <li><a title="rss" href="#"><img src="assets/images/rss.png" alt="rss" width="13" height="12" border="0" /></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                            <!--Top Bar-->


                            <!--Hader-->

                            <div id="header_1">
                                <div id="logo"><a title="Dutta Fashion" href="#"><img src="assets/images/logo.png" alt="Dutta Fashion" width="192" height="126" border="0" /></a></div>
                                <div id="right_menu">
                                    <ul>
                                        <li class="home_icon" ><a href="http://localhost:8081/index.php"><span>Home</span></a></li>
                                        <li class="products"><a href="http://localhost:8081/index.php/products">Products</a></li>
                                        <li class="services"><a href="services">services</a></li>
                                        <li class="contact"><a href="contact">contact</a></li>
                                    </ul>

                                </div>
                            </div>
                            <div id="body">	
	<section id="main_inner">
		<!--__FUEL_MARKER__0-->This is a default layout. To change this layout go to the ........ file.	</section>
	
</div>
 
<!--Body-->

<!--Footer-->
<div class="footer_bg">
    <div class="footer_tex">
        <div class="fore_box">
            <h5>Our menu</h5>
            <ol class="footnotes">
                <li>&raquo;  <span><a href="http://localhost:8081/index.php">Home</a></span></li>
                <li>&raquo;  <span><a href="products">Products</a></span></li>
                <li>&raquo; <span><a href="services">Services</a></span></li>
                <li>&raquo; <span><a href="contact">Contact us</a></span></li>
            </ol>                                       
        </div>
        <div class="fore_box">
            <h5>Head Office</h5>
            <ol class="footnotes">
                <li><span>Siatex Bangladesh Limited</span></li>
                <li> <span>House # 8, Road # 6, BLK "E"</span></li>
                <li><span>Niketon,Gulshan -1,Dhaka</span></li>
                <li> <span>Phone: (+880-2) 985-9720</span></li>
            </ol>     
        </div>
        <div class="fore_box">
            <h5>Sales Office </h5>
            <ol class="footnotes">
                <li><span>Siatex Bangladesh Limited</span></li>
                <li> <span>House # 8, Road # 6, BLK "E"</span></li>
                <li><span>Niketon,Gulshan -1,Dhaka</span></li>
                <li> <span>Phone: (+880-2) 985-9720</span></li>
            </ol>     
        </div>
        <div class="fore_box">
            <h5>Canada Sales Office </h5>
            <ol class="footnotes">
                <li> <span>APTEX Canada Limited</span></li>
                <li> <span>22 Hagley Road</span></li>
                <li> <span>Toronto, M1M 1S9</span></li>
                <li> <span>ON Canada</span></li>
            </ol>     
        </div>



    </div>
    <div class="copy_right">Copyright © 2013  Dutta Fashion. All rights reserved. 

        <span class="bottom_menu"><a href="contact">Contact Us </a> |     <a href="about">About Us</a></span>

    </div>

</div>
<!--Footer-->

</div>
<script src="/assets/js/jquery.js?c=" type="text/javascript" charset="utf-8"></script>
	<script src="/assets/js/main.js?c=" type="text/javascript" charset="utf-8"></script>
	</body>
</html>



<?php  /* end template body */
return $this->buffer . ob_get_clean();
?>