<?php

/**
 * A custom ACF widget.
 */
class Company_Details extends WP_Widget {

    /**
    * Register widget with WordPress.
    */
    function __construct() {
        parent::__construct(
            'Company_Details', // Base ID
            __('Company Details', 'text_domain'), // Name
            array( 'description' => __( 'A custom ACF widget for Company Details', 'text_domain' ), 'classname' => 'company_details' ) // Args
        );
    }

    /**
    * Front-end display of widget.
    *
    * @see WP_Widget::widget()
    *
    * @param array $args     Widget arguments.
    * @param array $instance Saved values from database.
    */
    public function widget( $args, $instance ) {
        echo $args['before_widget'];
        if ( !empty($instance['title']) ) {
            //echo $args['before_title'] . apply_filters( 'widget_title', $instance['title'] ). $args['after_title'];
        }

        //echo get_field('title', 'widget_' . $args['widget_id']);
        echo '<h4>'.get_bloginfo( 'name' ).'</h4>'; 

        // Place your ACF code here
        echo '<div class="footerAddress">';
        echo '<p class="smallText footerTextColour">'.get_field('address_line_1', 'widget_' . 'company_details-1').'</p>'; 
        echo '<p class="smallText footerTextColour">'.get_field('town_city', 'widget_' . 'company_details-1').'</p>'; 
        echo '<p class="smallText footerTextColour">'.get_field('postcode', 'widget_' . 'company_details-1').'</p>';
        echo '<p class="smallText footerTextColour">'.get_field('country', 'widget_' . 'company_details-1').'</p>';
        echo '</div>';
        echo $args['after_widget'];
    }

    /**
    * Back-end widget form.
    *
    * @see WP_Widget::form()
    *
    * @param array $instance Previously saved values from database.
    */
    public function form( $instance ) {
        if ( isset($instance['title']) ) {
            $title = $instance['title'];
        }
    ?>
    <p>
      <label for="<?php echo $this->get_field_id( 'title' ); ?>"><?php _e( 'Title' ); ?></label>
      <input class="widefat" id="<?php echo $this->get_field_id( 'title' ); ?>" name="<?php echo $this->get_field_name( 'title' ); ?>" type="text" value="<?php echo esc_attr( $title ); ?>">
    </p>
    <?php
    }

    /**
    * Sanitize widget form values as they are saved.
    *
    * @see WP_Widget::update()
    *
    * @param array $new_instance Values just sent to be saved.
    * @param array $old_instance Previously saved values from database.
    *
    * @return array Updated safe values to be saved.
    */
    public function update( $new_instance, $old_instance ) {
        $instance = array();
        $instance['title'] = ( ! empty( $new_instance['title'] ) ) ? strip_tags( $new_instance['title'] ) : '';

        return $instance;
    }

} // class Company_Details

// register Company_Details widget
add_action( 'widgets_init', function(){
  register_widget( 'Company_Details' );
});