    <?php include 'contact-form.php';?>
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-12 d-flex align-items-center justify-content-between mb-5">
                    <a class="logoFooter" href="/">
                        <img src="<?php echo (get_custom_logo()) ? get_custom_logo() :  bloginfo('template_directory'); ?>/images/logo_black.svg" />
                    </a>
                    <div class="social d-flex align-items-center justify-content-end">
                        <a class="socialIcon" href="/">
                            <svg id="fb" xmlns="http://www.w3.org/2000/svg" width="56.095" height="55.754" viewBox="0 0 33.329 33.127">
                                <path id="fbPath" data-name="Path 1377" d="M33.329,16.665A16.665,16.665,0,1,0,14.061,33.127V21.482H9.83V16.665h4.231V12.993c0-4.177,2.488-6.484,6.294-6.484a25.625,25.625,0,0,1,3.73.325v4.1h-2.1a2.409,2.409,0,0,0-2.716,2.6v3.126H23.89l-.739,4.817H19.268V33.127A16.669,16.669,0,0,0,33.329,16.665Z" transform="translate(0)" fill="#fff"/>
                            </svg>
                        </a>
                        <a class="socialIcon" href="/">
                            <svg id="ig" xmlns="http://www.w3.org/2000/svg" width="52.34" height="52.35" viewBox="0 0 31.101 31.101">
                                <path id="igPath" d="M11.609,2.612a11.342,11.342,0,0,0-3.772.73,7.61,7.61,0,0,0-2.751,1.8A7.617,7.617,0,0,0,3.3,7.9a11.426,11.426,0,0,0-.715,3.776c-.073,1.656-.089,2.188-.081,6.411s.027,4.752.107,6.411a11.367,11.367,0,0,0,.73,3.772A7.949,7.949,0,0,0,7.9,32.806a11.416,11.416,0,0,0,3.775.715c1.655.072,2.188.089,6.41.081s4.753-.027,6.412-.105a11.378,11.378,0,0,0,3.771-.73A7.947,7.947,0,0,0,32.8,28.21a11.375,11.375,0,0,0,.715-3.774c.072-1.66.09-2.19.081-6.412s-.027-4.752-.106-6.41a11.358,11.358,0,0,0-.73-3.773,7.634,7.634,0,0,0-1.8-2.751A7.589,7.589,0,0,0,28.207,3.3a11.38,11.38,0,0,0-3.775-.715c-1.655-.072-2.188-.09-6.411-.082s-4.752.026-6.411.107m.182,28.112A8.63,8.63,0,0,1,8.9,30.2a4.842,4.842,0,0,1-1.791-1.16,4.79,4.79,0,0,1-1.166-1.786,8.612,8.612,0,0,1-.541-2.887c-.077-1.639-.093-2.131-.1-6.282s.007-4.643.079-6.282A8.606,8.606,0,0,1,5.91,8.91,4.815,4.815,0,0,1,7.07,7.119,4.8,4.8,0,0,1,8.856,5.953a8.611,8.611,0,0,1,2.886-.541c1.64-.078,2.131-.093,6.282-.1s4.644.007,6.284.079a8.6,8.6,0,0,1,2.887.529,5.148,5.148,0,0,1,2.957,2.947,8.567,8.567,0,0,1,.54,2.885c.078,1.64.1,2.132.1,6.282s-.007,4.644-.079,6.282a8.64,8.64,0,0,1-.529,2.889,5.15,5.15,0,0,1-2.947,2.956,8.614,8.614,0,0,1-2.885.541c-1.64.077-2.131.093-6.284.1s-4.643-.008-6.282-.079M24.468,9.742a1.866,1.866,0,1,0,1.862-1.869,1.866,1.866,0,0,0-1.862,1.869m-14.4,8.327a7.985,7.985,0,1,0,7.969-8,7.984,7.984,0,0,0-7.969,8m2.8-.006a5.184,5.184,0,1,1,5.194,5.173,5.184,5.184,0,0,1-5.194-5.173" transform="translate(-2.499 -2.503)" fill="#fff"/>
                            </svg>    
                        </a>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-md-6 d-flex flex-column align-items-md-start text-md-start text-center align-items-center justify-content-end">
                    <div class="companyAddress">
                    <?php dynamic_sidebar('footer1') ; ?>
                    </div>
                </div>
                <div class="col-12 col-md-6 d-flex flex-column text-md-end text-center justify-content-end">
                    <p class="smallText footerTextColour">&copy; <?php echo get_bloginfo( 'name' ); ?> <?php echo date("Y"); ?></p>
                    <div class="footerLinks d-flex align-items-center justify-content-center justify-content-md-end mb-3">
                        <?php wp_nav_menu(
                            array(
                                'theme_location' => 'footer-menu',
                                'menu_class' => 'footerMenu'
                            )
                        ); ?>
                        <svg id="circle" xmlns="http://www.w3.org/2000/svg" width="10" height="10" viewBox="0 0 10 10">
                            <circle id="Ellipse_6" data-name="Ellipse 6" cx="5" cy="5" r="5"/>
                        </svg>
                        <a target="_blank" href="https://core-marketing.co.uk">Crafted by Core</a>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    </main>
    <?php wp_footer(); ?>
    </body>
</html>