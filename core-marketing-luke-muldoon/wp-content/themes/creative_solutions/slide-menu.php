<div id="toggleBurger" class="d-lg-none" onclick="toggleBurger();">
    <div class="toggleBurgerInner">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
    </div>
</div>
<div id="toggleMenu">
    <?php wp_nav_menu(
        array(
            'theme_location' => 'main-menu',
            'menu_class' => 'menu'
        )
    ); ?>
</div>