<?php get_header(); ?>

<p>Custom Post-Type : Projet </p>
<h1><?php the_title(); ?></h1>
<p>Je travaille sur ma page dédiée</p>

<h2>Introduction:</h2>

<p class= "intro"><?php the_field('introduction'); ?></p>

<img class="image" src="<?php the_field('cover'); ?>" alt="">

<?php var_dump(get_field('cover')); ?>
<br>
<br>
<br>
<?php
$checkbox = get_field('show_button');
var_dump($checkbox);

if (($checkbox)) {
    echo '<a href="http://localhost:10013/">Retour à la page d\'accueil</a>';
    echo 'bien penser à cacher la case dans le backoffice!!!!';
}
?>
<br>
<br>
<?php if ($checkbox) : ?>
    <a href="http://localhost:10013/">Retour à la page d\'accueil</a>
    
        
    <?php endif; ?>

    <br>
    <br>
    <h2>Afficher le contenu d'une autre page</h2>

    <?php $projectOneID = 26; ?>
    <?php $projectTwoID = 27; ?>

    <?php the_field('introduction', $projectOneID); ?>
    <br>
    <br>
    <?php the_field('introduction', $projectTwoID); ?>


<?php get_footer(); ?>