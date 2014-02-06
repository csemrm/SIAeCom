<?php $this->load->view('SIATEX/_blocks/header') ?>

<section id="services">
    <aside id="services_left_box"> 
        <div class="contact_box">
            <form method="post" action="home/contact">
                <ul>
                    <li><input class="contact_name" placeholder="NAME*" type="text" /></li>
                    <li><input class="contact_name" placeholder="EMAIL*" type="text" /></li>
                    <li><input class="contact_name" placeholder="SUBJECT *" type="text" /></li>
                    <li><textarea name="comments" rows="8" col="50" placeholder="MESSAGE*" class="contact_box2"></textarea></li>
                    <li><input type="submit" name="submit" value="SUBMIT" id="form_submit"></li>
                </ul>
            </form>
            <p class="contact_map"><?php echo fuel_var('google_map','<img src="/assets/images/map.jpg" height="180" width="573" alt="map" />'); ?></p>
        </div>
    </aside>
    <aside id="services_right_box" class=""> 
        <?php echo fuel_var('body'); ?>
    </aside>
</section>

<?php $this->load->view('SIATEX/_blocks/footer') ?>