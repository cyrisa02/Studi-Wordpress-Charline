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

/*
Exemple Portfolio
*/

function create_custom_posttype_project()
{
    register_post_type(
        'project',
        [
            'label' => 'Projets POrtfolio',
            'public' => true,
        ]
    );
}

add_action('init', 'create_custom_posttype_project');

function create_taxo_project()
{
    register_taxonomy(
        'tax_project_type',
        'project',
        [
            'hierarchical' => true,
            'labels' => [
                'name' => 'Types',
                'singular_name' => 'Type',
            ],
        ],
    );

    register_taxonomy(
        'tax_project_clients',
        'project',
        [
            'hierarchical' => true,
            'labels' => [
                'name' => 'Clients',
                'singular_name' => 'Client',
            ],
        ]
    );
}

add_action('init', 'create_taxo_project');

function load_styles()
{
    wp_enqueue_style(
        'main',
       get_template_directory_uri().'/css/style.css',
       [],
       '',
       false
    );
}

add_action('wp_enqueue_scripts', 'load_styles');
