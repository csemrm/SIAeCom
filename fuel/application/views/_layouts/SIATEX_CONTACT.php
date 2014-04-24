<?php $this->load->view('siatex/_blocks/header') ?>

<section class="body_contener">

    <div class="products_box_contener">



        <div class="login">

            <div class="contact_us_page"> 

                <div class="contact_form">
                    <div class="login_box">
                        <h2>Contact Us</h2>
                        <form method="post" action="home/contact">
                            <ul>
                                <li>Name </li>
                                <li><input type="text"></li>
                                <li>Email Address </li>
                                <li><input type="text"></li>
                                <li>Message  </li>
                                <li><textarea></textarea></li>
                                     <li><input type="submit" name="submit" value="SUBMIT" id="form_submit"/></li>
                                </ul>
                            </form>
                            </div>
                            		 </div>
                           
                                    <div class="contact_text">
                    <?php echo fuel_var('body'); ?>
                                    </div>
                                </div>
                          
                    </div>
					
				</div>
</section>

<?php $this->load->view('siatex/_blocks/footer') ?>