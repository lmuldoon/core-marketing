<?php get_header(); ?>
<section id="pageHead" class="darkBg">
    <div class="left container">
        <h1 class="mb-5"><?php the_title(); ?></h1>
        <div class="row">
            <div class="col-12 col-md-10 col-lg-7">
                <p><?php echo get_field('header_text'); ?></p>
            </div>
        </div>
    </div>
</section>

<section id="mainBody">
    <div class="container">
        <div class="row">
            <div class="fadeUp col-12 col-lg-8 offset-0 offset-lg-2 mb-5">
                <h3><?php echo get_field('privacy_title_1'); ?></h3>
                <p><?php echo get_field('privacy_text_1_line_1'); ?></p>
                <p><?php echo get_field('privacy_text_1_line_2'); ?></p>
            </div>
            <div class="fadeUp col-12 col-lg-8 offset-0 offset-lg-2 mb-5">
                <h3><?php echo get_field('privacy_title_2'); ?></h3>
                <p><?php echo get_field('privacy_text_2_line_1'); ?></p>
                <p><?php echo get_field('privacy_text_2_line_2'); ?></p>
            </div>
        </div>
    </div>
</section>

<?php get_footer(); ?>