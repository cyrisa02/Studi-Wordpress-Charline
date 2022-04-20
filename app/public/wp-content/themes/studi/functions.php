<?php

/*
Création de mon Custom Post Type: Courses
*/
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

/*
Création de la taxonomie /catégorie à mon CPT : Années
*/

function create_taxonomy_races()
{
    // Fonction WP
    register_taxonomy(
        'tax_races_championschip',
        'races',
        [
            'labels' => ['name' => 'Championnats',
                            'singular_name' => 'Championnat', ],
            'despcription' => 'Saison',
            'public' => false,
            'show_ui' => true,
            'hierarchical' => true,
        ]
    );
}

add_action('init', 'create_taxonomy_races');
