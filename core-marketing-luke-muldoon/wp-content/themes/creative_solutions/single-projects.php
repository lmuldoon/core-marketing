<?php the_title();?>




<a href="<?php $to_send = projects_categories_terms($post->ID, 'categories'); 
echo $to_send['cat_url']; ?>">
    <?php
        $to_send = projects_categories_terms($post->ID, 'categories');
        echo $to_send['output'];; 
    ?>
</a>