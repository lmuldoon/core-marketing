<?php the_title();?>

<?php 
$tags = get_the_tags();
if($tags):
    foreach($tags as $tag):?>
        <a href="<?php echo get_tag_link($tag->term_id);?>" class="category">
            <?php echo $tag->name;?>
        </a>
<?php endforeach; endif; ?>