<?php

function create_custom_posttype()
{
    // Fonction proposée par WP pour créer des Custom Post Type
    register_post_type('races', [
        'label' => 'Courses',
        'description' => 'Grand Prix de Formule 1',
        'pubic' => true,
        'show_ui' => true,
    ]);
}

add_action('init', 'create_custom_posttype');
