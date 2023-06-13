<?php get_header(); ?>
<section id="hero" class="d-flex align-items-center justify-content-center">
    <div class="container">
        <div class="row">
            <div class="heroText col-12 col-lg-6 d-flex align-items-left flex-column justify-content-center order-2 order-lg-1">
                <h1 class="mb-3"><?php echo get_field('hero_title_line_1'); ?><br><span><?php echo get_field('hero_title_line_2'); ?></span></h1>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>
                <a class="btn btn-primary" href="#about"><?php echo get_field('hero_button_text'); ?>
                    <svg class="btnArrow" xmlns="http://www.w3.org/2000/svg" width="39.336" height="39.336" viewBox="0 0 39.336 39.336">
                        <path class="arrow" data-name="Path 1463" d="M19.668,0A19.668,19.668,0,1,0,39.336,19.668,19.668,19.668,0,0,0,19.668,0ZM15.722,13.78a1.788,1.788,0,1,1,2.528-2.528L25.4,18.4a1.788,1.788,0,0,1,0,2.528L18.25,28.084a1.788,1.788,0,1,1-2.528-2.528l5.888-5.888Z" fill-rule="evenodd"/>
                    </svg>
                </a>
            </div>
            <div class="col-10 offset-1 offset-lg-0 col-lg-6 order-1 order-lg-2 text-center">
                <img class="img-fluid mb-3" src="<?php echo get_field('hero_image'); ?>" />
            </div>
        </div>
    </div>
</section>
<section id="about" class="d-flex align-items-center justify-content-center">
    <div class="container">
        <div class="d-flex justify-content-between align-items-start">
            <h2 class="headerScale"><?php echo get_field('about_title'); ?></h2>
        </div>
        <div class="row">
            <div class="col-12 col-md-5">
                <p class="largeCopy"><?php echo get_field('about_text_1'); ?></p>
            </div>
            <div class="col-12 col-md-6 offset-0 offset-md-1">
                <p><?php echo get_field('about_text_2'); ?></p>
            </div>
        </div>
        <div id="services">
            <div class="carousel">
                <div class="service">
                    <svg class="serviceSVG mb-5" xmlns="http://www.w3.org/2000/svg" width="89.9" height="89.9" viewBox="0 0 89.9 89.9">
                        <g id="Group_309" data-name="Group 309" transform="translate(4.95 4.95)">
                            <g id="Group_282" data-name="Group 282">
                            <path id="Path_1465" data-name="Path 1465" d="M74.655,22.675A37.968,37.968,0,0,1,37.774,79.681M9.252,61.235A37.967,37.967,0,0,1,46.133,4.229" transform="translate(-1.954 -1.955)" fill="none" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="7"/>
                            <circle id="Ellipse_1" data-name="Ellipse 1" cx="8.432" cy="8.432" r="8.432" transform="translate(68.076 0) rotate(45)" fill="none" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="7"/>
                            <circle id="Ellipse_2" data-name="Ellipse 2" cx="8.432" cy="8.432" r="8.432" transform="translate(11.924 56.152) rotate(45)" fill="none" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="7"/>
                            <circle id="Ellipse_3" data-name="Ellipse 3" cx="8.432" cy="8.432" r="8.432" transform="translate(40 28.076) rotate(45)" fill="none" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="7"/>
                            </g>
                        </g>
                    </svg>
                    <h3>Digital</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.</p>
                </div>

                <div class="service">
                    <svg class="serviceSVG mb-5" xmlns="http://www.w3.org/2000/svg" width="87.265" height="87" viewBox="0 0 87.265 87">
                        <g id="Group_310" data-name="Group 310" transform="translate(3.5 3.5)">
                            <g id="Group_243" data-name="Group 243">
                            <path id="Path_1471" data-name="Path 1471" d="M26.036,72.867C19.382,79.151,13.3,83,2,83c4.006-4.444,9.094-10.444,11.221-19.764A33.484,33.484,0,0,1,2,38.556C2,18.92,19.935,3,42.06,3,62.491,3,79.348,16.573,81.812,34.111" transform="translate(-2 -3)" fill="none" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="7"/>
                            <path id="Path_1472" data-name="Path 1472" d="M24.644,32.695C16.556,32.695,10,27.838,10,21.846S16.556,11,24.644,11s14.644,4.857,14.644,10.846a9.585,9.585,0,0,1-4.1,7.529,12.774,12.774,0,0,0,4.1,6.031,12.836,12.836,0,0,1-9.255-3.471,19.218,19.218,0,0,1-5.389.757Z" transform="translate(40.713 44.594)" fill="none" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="7"/>
                            </g>
                        </g>
                    </svg>
                    <h3>Creative</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.</p>
                </div>

                <div class="service">
                    <svg class="serviceSVG mb-5" xmlns="http://www.w3.org/2000/svg" width="87" height="87" viewBox="0 0 87 87">
                        <g id="Group_311" data-name="Group 311" transform="translate(3.5 3.5)">
                            <path id="Path_1476" data-name="Path 1476" d="M83,20.778C83,30.6,65.089,38.556,43,38.556S3,30.6,3,20.778m80,0C83,10.956,65.089,3,43,3S3,10.956,3,20.778m80,0V43M3,20.778V43m80,0c0,9.822-17.911,17.778-40,17.778S3,52.822,3,43m80,0V65.222C83,75.044,65.089,83,43,83S3,75.044,3,65.222V43" transform="translate(-3 -3)" fill="none" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="7"/>
                        </g>
                    </svg>
                    <h3>Placemaking</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.</p>
                </div>

                <div class="service">
                    <svg class="serviceSVG mb-5" xmlns="http://www.w3.org/2000/svg" width="87" height="78.111" viewBox="0 0 87 78.111">
                        <g id="Group_313" data-name="Group 313" transform="translate(3.5 3.5)">
                            <path id="Path_1480" data-name="Path 1480" d="M20.778,21.778H43m13.333,0h8.889m0,17.778H38.556m-13.333,0H20.778m0,17.778H43m13.333,0h8.889M3,21.778V12.889A8.889,8.889,0,0,1,11.889,4H74.111A8.889,8.889,0,0,1,83,12.889V66.222a8.889,8.889,0,0,1-8.889,8.889H11.889A8.889,8.889,0,0,1,3,66.222Z" transform="translate(-3 -4)" fill="none" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="7"/>
                        </g>
                    </svg>
                    <h3>Brand</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.</p>
                </div>

            </div>
            <div id="servicesNav" class="d-flex justify-content-end"></div>
        </div>
    </div>
</section>

<section id="work">
    <div class="workHead darkBg">
        <div class="container">
            <div class="d-flex justify-content-between align-items-start">
                <h2 class="headerScale"><?php echo get_field('work_title'); ?></h2>
                <div id="filter">
                    <button class="btn filterBtn" id="filterBtn"><?php echo get_field('filter_button_text'); ?>
                        <svg class="btnArrow" xmlns="http://www.w3.org/2000/svg" width="39.336" height="39.336" viewBox="0 0 39.336 39.336">
                            <path class="arrow" data-name="Path 1463" d="M19.668,0A19.668,19.668,0,1,0,39.336,19.668,19.668,19.668,0,0,0,19.668,0ZM15.722,13.78a1.788,1.788,0,1,1,2.528-2.528L25.4,18.4a1.788,1.788,0,0,1,0,2.528L18.25,28.084a1.788,1.788,0,1,1-2.528-2.528l5.888-5.888Z" fill-rule="evenodd"/>
                        </svg>
                    </button>
                    <?php 
                        $taxonomy = 'categories';
                        $categories = get_terms($taxonomy); // Get all terms of a taxonomy
                    ?>
                    <ul id="categoriesList">
                        <li><a data-category="all">All</a></li>
                        <?php
                        if ($categories && !is_wp_error($categories)) {
                            foreach ($categories as $category) {
                            $categoryName = $category->name;
                            echo "<li><a data-category=\"$categoryName\">$categoryName</a></li>";
                            }
                        }
                        ?>
                    </ul>

                </div>
            </div>
            <div class="row">
                <div class="col-xs-12 col-lg-7">
                    <p><?php echo get_field('work_text'); ?></p>
                </div>
            </div>
        </div>
    </div>
    <div id="works">
        <div class="container">
            <div class="row">
                <?php
                    $args = array(
                        'post_type' => 'projects',
                        //'posts_per_page' => -1, // Display all projects
                        'posts_per_page' => 9,                       
                        'orderby' => 'menu_order',
                        'order' => 'ASC',
                        'post_parent' => 0,
                    );

                    $projects_query = new WP_Query($args);
                    ?>

                    <?php if ($projects_query->have_posts()) : ?>
                            <?php while ($projects_query->have_posts()) : $projects_query->the_post(); ?>
                                    <?php
                                    // Retrieve the ACF fields for each project
                                    $preview_image = get_field('preview_image');
                                    $preview_text = get_field('preview_text');
                                    $categories = get_the_terms(get_the_ID(), 'categories');
                                    ?>
                                    <div class="work fadeUp mb-4 col-12 col-sm-6 col-lg-4 flex-column align-items-center justify-content-center">
                                        <div class="workInner" data-category="<?php echo get_the_terms(get_the_ID(), 'categories')[0]->slug; ?>">
                                            <div class="projectImage mb-3">
                                                <img class="img-fluid" src="<?php echo $preview_image; ?>" alt="<?php the_title(); ?>">
                                                <?php if ($categories && !is_wp_error($categories)) : ?>
                                                    <div class="projectCategory"><?php echo wp_list_pluck($categories, 'name')[0]; ?></div>
                                                <?php endif; ?>
                                            </div>
                                            <h5><?php the_title(); ?></h5>
                                            <p><?php echo $preview_text; ?></p>
                                        </div>
                                    </div>
                            <?php endwhile; ?>
                    <?php endif; ?>

                <?php wp_reset_postdata(); ?>



            </div>
        </div>
    </div>
</section>

<section id="team" class="greyBg">
    <div class="container">
        <div class="d-flex justify-content-between align-items-start">
            <h2 class="headerScale"><?php echo get_field('team_title'); ?></h2>
        </div>
        <div class="row">
            <div class="col-lg-6 col-md-8 col-12">
                <p><?php echo get_field('team_text'); ?></p>
            </div>
        </div>
        <div id="profiles">
            <div class="row">
                <div class="col-lg-4 col-md-6 col-12 profile flex-column text-center mb-5">
                    <img class="img-fluid mb-4" src="<?php echo bloginfo('template_directory'); ?>/images/Nick Jones Profile.png" />
                    <h6>Nick Jones</h6>
                    <p class="medium">Job Role</p>
                    <button class="btn btn-white">Email Nick
                        <svg class="btnArrow" xmlns="http://www.w3.org/2000/svg" width="39.336" height="39.336" viewBox="0 0 39.336 39.336">
                            <path class="arrow" data-name="Path 1463" d="M19.668,0A19.668,19.668,0,1,0,39.336,19.668,19.668,19.668,0,0,0,19.668,0ZM15.722,13.78a1.788,1.788,0,1,1,2.528-2.528L25.4,18.4a1.788,1.788,0,0,1,0,2.528L18.25,28.084a1.788,1.788,0,1,1-2.528-2.528l5.888-5.888Z" fill-rule="evenodd"/>
                        </svg>
                    </button>
                </div>
                <div class="col-lg-4 col-md-6 col-12 profile flex-column text-center mb-5">
                    <img class="img-fluid mb-4" src="<?php echo bloginfo('template_directory'); ?>/images/Anna Smith Profile.png" />
                    <h6>Anna Smith</h6>
                    <p class="medium">Job Role</p>
                    <button class="btn btn-white">Email Anna
                        <svg class="btnArrow" xmlns="http://www.w3.org/2000/svg" width="39.336" height="39.336" viewBox="0 0 39.336 39.336">
                            <path class="arrow" data-name="Path 1463" d="M19.668,0A19.668,19.668,0,1,0,39.336,19.668,19.668,19.668,0,0,0,19.668,0ZM15.722,13.78a1.788,1.788,0,1,1,2.528-2.528L25.4,18.4a1.788,1.788,0,0,1,0,2.528L18.25,28.084a1.788,1.788,0,1,1-2.528-2.528l5.888-5.888Z" fill-rule="evenodd"/>
                        </svg>
                    </button>
                </div>
                <div class="col-lg-4 col-md-6 col-12 profile flex-column text-center mb-5">
                    <img class="img-fluid mb-4" src="<?php echo bloginfo('template_directory'); ?>/images/Tim Austin Profile.png" />
                    <h6>Anna Smith</h6>
                    <p class="medium">Job Role</p>
                    <button class="btn btn-white">Email Tim
                        <svg class="btnArrow" xmlns="http://www.w3.org/2000/svg" width="39.336" height="39.336" viewBox="0 0 39.336 39.336">
                            <path class="arrow" data-name="Path 1463" d="M19.668,0A19.668,19.668,0,1,0,39.336,19.668,19.668,19.668,0,0,0,19.668,0ZM15.722,13.78a1.788,1.788,0,1,1,2.528-2.528L25.4,18.4a1.788,1.788,0,0,1,0,2.528L18.25,28.084a1.788,1.788,0,1,1-2.528-2.528l5.888-5.888Z" fill-rule="evenodd"/>
                        </svg>
                    </button>
                </div>
                <div class="col-lg-4 col-md-6 col-12 profile flex-column text-center mb-5">
                    <img class="img-fluid mb-4" src="<?php echo bloginfo('template_directory'); ?>/images/Nick Jones Profile.png" />
                    <h6>Nick Jones</h6>
                    <p class="medium">Job Role</p>
                    <button class="btn btn-white">Email Nick
                        <svg class="btnArrow" xmlns="http://www.w3.org/2000/svg" width="39.336" height="39.336" viewBox="0 0 39.336 39.336">
                            <path class="arrow" data-name="Path 1463" d="M19.668,0A19.668,19.668,0,1,0,39.336,19.668,19.668,19.668,0,0,0,19.668,0ZM15.722,13.78a1.788,1.788,0,1,1,2.528-2.528L25.4,18.4a1.788,1.788,0,0,1,0,2.528L18.25,28.084a1.788,1.788,0,1,1-2.528-2.528l5.888-5.888Z" fill-rule="evenodd"/>
                        </svg>
                    </button>
                </div>
                <div class="col-lg-4 col-md-6 col-12 profile flex-column text-center mb-5">
                    <img class="img-fluid mb-4" src="<?php echo bloginfo('template_directory'); ?>/images/Anna Smith Profile.png" />
                    <h6>Anna Smith</h6>
                    <p class="medium">Job Role</p>
                    <button class="btn btn-white">Email Anna
                        <svg class="btnArrow" xmlns="http://www.w3.org/2000/svg" width="39.336" height="39.336" viewBox="0 0 39.336 39.336">
                            <path class="arrow" data-name="Path 1463" d="M19.668,0A19.668,19.668,0,1,0,39.336,19.668,19.668,19.668,0,0,0,19.668,0ZM15.722,13.78a1.788,1.788,0,1,1,2.528-2.528L25.4,18.4a1.788,1.788,0,0,1,0,2.528L18.25,28.084a1.788,1.788,0,1,1-2.528-2.528l5.888-5.888Z" fill-rule="evenodd"/>
                        </svg>
                    </button>
                </div>
                <div class="col-lg-4 col-md-6 col-12 profile flex-column text-center mb-5">
                    <img class="img-fluid mb-4" src="<?php echo bloginfo('template_directory'); ?>/images/Tim Austin Profile.png" />
                    <h6>Anna Smith</h6>
                    <p class="medium">Job Role</p>
                    <button class="btn btn-white">Email Tim
                        <svg class="btnArrow" xmlns="http://www.w3.org/2000/svg" width="39.336" height="39.336" viewBox="0 0 39.336 39.336">
                            <path class="arrow" data-name="Path 1463" d="M19.668,0A19.668,19.668,0,1,0,39.336,19.668,19.668,19.668,0,0,0,19.668,0ZM15.722,13.78a1.788,1.788,0,1,1,2.528-2.528L25.4,18.4a1.788,1.788,0,0,1,0,2.528L18.25,28.084a1.788,1.788,0,1,1-2.528-2.528l5.888-5.888Z" fill-rule="evenodd"/>
                        </svg>
                    </button>
                </div> 
            </div>        
        </div>
    </div>
</section>

<?php get_footer(); ?>