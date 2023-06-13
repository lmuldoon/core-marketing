<?php
function load_stylesheets() {
    wp_register_style('stylesheet', get_template_directory_uri() . '/style.css', '', 1, 'all');
    wp_enqueue_style('stylesheet');

    wp_register_style('slick', get_template_directory_uri() . '/src/js/slick/slick.css', '', 1, 'all');
    wp_enqueue_style('slick');

    wp_register_style('custom', get_template_directory_uri() . '/app.css', '', 1, 'all');
    wp_enqueue_style('custom');
}
add_action('wp_enqueue_scripts','load_stylesheets');

function load_javascript() {
    wp_enqueue_script("jquery");
    wp_register_script('gsap', get_template_directory_uri() . '/src/js/gsap/gsap.min.js', '', 1, true);
    wp_enqueue_script('gsap');
    wp_register_script('scrollTrigger', get_template_directory_uri() . '/src/js/gsap/scrollTrigger.min.js', '', 1, true);
    wp_enqueue_script('scrollTrigger');
    wp_register_script('slick', get_template_directory_uri() . '/src/js/slick/slick.min.js', '', 1, true);
    wp_enqueue_script('slick');
    wp_register_script('custom', get_template_directory_uri() . '/src/app.js', array( 'jquery', 'jquery-ui-accordion' ), 1, true);
    wp_enqueue_script('custom');
}
add_action('wp_enqueue_scripts','load_javascript');


//Add theme support
add_theme_support('menus');
add_theme_support('post-thumbnails');

//Register Menus
register_nav_menus(
    array(
        'main-menu' => 'Main Menu',
    )
);

register_nav_menus(
    array(
        'footer-menu' => 'Footer Menu',
    )
);

//Allow widgets
if(function_exists('register_sidebar')) {


    register_sidebar(array(
        'name' => 'Footer1',
        'id' => 'footer1',
        'description' => 'Appears in the footer area',
        'before_widget' => '<div id="%1$s" class="widget %2$s">',
        'after_widget' => '</div>',
        'before_title' => '<h4 class="widget-title">',
        'after_title' => '</h4>',
                    )
    );


}

include_once( get_stylesheet_directory() . '/includes/company-details-widget.php');

//Create Post Type for Projects

function projects_post_type() {
    $args = array(
        'labels' => array(
            'name' => 'Projects',
            'singular_name' => 'Project',
        ),
        'hierarchical' => true,
        'menu_icon' => 'dashicons-laptop',
        'public' => true,
        'has_archive' => true,
        'supports' => array('title'),
        //'rewrite' => array('slug' => 'projects'),
    );
    register_post_type('projects', $args);
}
add_action('init', 'projects_post_type');

//Create Taxonomy for Projects

function projects_taxonomy() {
    $args = array(
        'labels' => array(
            'name' => 'Categories',
            'singular_name' => 'Category',
        ),
        'public' => true,
        'hierarchical' => true,
    );
    register_taxonomy('categories', array('projects'), $args);
}
add_action('init','projects_taxonomy');

// Get taxonomy

function projects_categories_terms($postID, $term){
    $terms_list = wp_get_post_terms($postID, $term);
    $output = '';
    foreach ($terms_list as $term) {
                $cat_url = get_term_link( $term );
                $output .=  $term->name.' ';
    }
    $category_detils = array('cat_url' => $cat_url, 'output' => $output );
    return $category_detils;
}