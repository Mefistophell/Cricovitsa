<footer>
    <div class="container">
        <div class="row hidden-xs">

            <div class="col-md-2 hidden-sm">
                <img src="http://placehold.it/200x100" alt="">
                <p>Designed by stydio "In Create"</p>

            </div>
            <div class="col-md-4 hidden-sm">
                <form>
                    <input type="text" name="subscribe" class="form-subscribe" value="" placeholder="Email Address">
                    <input class="email_subscr" type="submit" value="SUBSCRIBE">
                </form>
                <div class="row">
                    <a href="#">
                        <img src="img/facebook.png" alt="facebook">
                    </a>
                    <a href="#">
                        <img src="img/twitter_logo.png" alt="twitter">
                    </a>
                    <a href="#">
                        <img src="img/Linkedin.png" alt="linkedin">
                    </a>
                </div>
            </div>
            <!-- часть футерa для планшета (фотография, форма, кнопки соц сетей) -->
            <div class="col-sm-6 visible-sm">
                <div class="row">
                    <form>
                        <input type="text" name="subscribe" class="form-subscribe" value="" placeholder="Email Address">
                        <input class="email_subscr" type="submit" value="SUBSCRIBE">
                    </form>
                </div>
                <div class="row">
                    <a class="social" href="#">
                        <img src="img/facebook.png" alt="facebook">
                    </a>
                    <a class="social" href="#">
                        <img src="img/twitter_logo.png" alt="twitter">
                    </a>
                    <a class="social" href="#">
                        <img src="img/Linkedin.png" alt="linkedin">
                    </a>
                    <img class="img_increate" src="http://placehold.it/200x100" alt="">
                    <p>Designed by stydio "In Create"</p>

                </div>
            </div>
            <!-- // конец части футера для планшета -->
            <div class="col-md-6 col-sm-6">
                <div class="col-md-4 col-sm-4">
                    <?php if ($informations) { ?>
                    <h4><?php echo $text_information; ?></h4>
                    <?php foreach ($informations as $information) { ?>
                    <a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a>
                    <?php } ?>
                    <?php } ?>
                </div>
                <div class="col-md-4 col-sm-4"> 
                    <h4><?php echo $text_service; ?></h4>
                    <a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a>
                    <a href="<?php echo $return; ?>"><?php echo $text_return; ?></a>
                    <a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a>
                </div>
                <div class="col-md-4 col-sm-4">
                    <h4><?php echo $text_extra; ?></h4>
                    <a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a>
                    <a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a>
                    <a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a>
                    <a href="<?php echo $special; ?>"><?php echo $text_special; ?></a>
                </div>
            </div>
        </div>
    </div>

    <!-- мобильное меню -->

    <div class="menu-mobile visible-xs visible-sm">
        <div class="menu-list">
            <ul>
                <div class="accordion">
                    <div class="accordion-item"><a href="#"><h4>Paintings<img src="img/expand-button_light.svg" alt=""></h4></a></div>
                    <div class="data row">
                        <div class="container">
                            <div class="col-xs-4">
                                <h5>Style</h5>
                                <a href="">Fine Art</a>
                                <a href="">Abstract</a>
                                <a href="">Modern</a>
                                <a href="">Street Art</a>
                                <a href="">Pop Art</a>
                            </div>
                            <div class="col-xs-4">
                                <h5>Subject</h5>
                                <a href="">Landscape</a>
                                <a href="">Portrait</a>
                                <a href="">Nature</a>
                                <a href="">Still life</a>
                                <a href="">Beach</a>
                            </div>
                            <div class="col-xs-4">
                                <h5>Medium</h5>
                                <a href="">Oil</a>
                                <a href="">Watercolor</a>
                                <a href="">Acrylic</a>
                                <a href="">AirBrush</a>
                                <a href="">Digital</a>
                            </div>
                        </div>
                    </div>
                </div>
                <li><a href="#"><h4>Sculptures</h4></a></li>
                <li><a href="#"><h4>Photography</h4></a></li>
                <li><a href="#"><h4>Prints</h4></a></li>
                <li><a href="#"><h4>News</h4></a></li>
                <li><a href="#"><h4>Art Consulting</h4></a></li>
            </ul>
        </div>
        <div class="menu-button">
            <i class="fa fa-bars fa-2x button-menu" aria-hidden="true"></i>
        </div>
    </div>
    <!-- // конец моб меню // --Ю

    <!-- Футер для мобильных телефонов -->
    <div class="container visible-xs mobile_footer">
        <div class="col-xs-12">
            <form>
                <input type="text" name="subscribe" class="form-subscribe" value="" placeholder="Email Address">
                <input class="email_subscr" type="submit" value="SUBSCRIBE">
            </form>
            <div class="row">
                <a href="#">
                    <img class="social" src="img/facebook.png" alt="facebook">
                </a>
                <a href="#">
                    <img class="social" src="img/twitter_logo.png" alt="twitter">
                </a>
                <a href="#">
                    <img class="social" src="img/Linkedin.png" alt="linkedin">
                </a>
            </div>
            <div class="col-xs-4">
                <h4>For Buyers</h4>
                <a href="#">Art Advisoty Services</a>
                <a href="#">Buyers FAQ | Support</a>
                <a href="#">Testimonials</a>
                <a href="#">Curator's Circle</a>
                <a href="#">Catalog</a>
            </div>
            <div class="col-xs-4">
                <h4>About us</h4>
                <a href="#">Press</a>
                <a href="#">Careers</a>
                <a href="#">Testimonials</a>
                <a href="#">Contact us</a>
                <a href="#">Blog</a>
            </div>
            <div class="col-xs-4">
                <h4>Art</h4>
                <a href="#">Terms of Service</a>
                <a href="#">Privacy Policy</a>
                <a href="#">Copyriting Policy</a>
                <a href="#">Affiliate Program</a>
            </div>
        </div>
    </div>
    <!-- // конец футера для моб телефонов -->
</footer>

</body></html>