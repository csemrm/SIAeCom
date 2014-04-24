<?php if (empty($assets_path)) $assets_path = '/assets/'; ?>
</div>

<!--Body-->

<!--Footer-->


<div class="footer">


    <div class="footer_tex">
        <div class="footer_left_tex quick_links">
            <div class="Our_menu">quick links</div>
            <ul>
                <li><a href="<?php echo site_url() ?>">Home</a></li>
                <li><a href="<?php echo site_url('about_us'); ?>">About Us</a></li>
                <li><a href="<?php echo site_url('products'); ?>">Products</a></li>
                <li><a href="<?php echo site_url('contact'); ?>">Contact Us</a></li>
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
            <a href="#"><img src="<?php echo $assets_path; ?>images/facebook_icon_2.png" height="21" width="22" alt="facebook" /></a>
            <a href="#"><img src="<?php echo $assets_path; ?>images/twitter_icon_2.png" height="21" width="22" alt="twitter" /></a> 
            <a href="#"><img src="<?php echo $assets_path; ?>images/link_in.png" height="21" width="22" alt="linkedin" /></a>
        </div>
    </div>
</div>
<!--Footer-->
</div>
<?php echo js('main') . js($js); ?>
</body>
</html>



