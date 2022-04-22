<?php
/* Template Name: Modèle page d'accueil */
?>

<?php get_header(); ?>



<p>Je suis la nouvelle page avec un template</p>
<nav>
<a href="http://localhost:10013/contact/"> Contact</a>

<a href="http://localhost:10013/page-a/"> Page A</a>



<a href="http://localhost:10013/project/projet-1/"> Page Projet 1</a>
</nav>

<main>
    <section>

    <?php var_dump(get_field('intro')); ?>

    <p><?php the_field('intro'); ?> </p>

    <pre> <?php var_dump(get_field('cover')); ?> </pre>

    <img src="<?php the_field('cover'); ?>" alt="">

    <img src="<?php echo get_field('cover'); ?>" alt="">


    
<!-- si on travaille avec le tableau -->
   <!-- <?php $urlImage = get_field('cover')['url']; ?>
    <?php $altImage = get_field('cover')['alt']; ?> -->
    <!-- <img src="<?php echo $urlImage; ?>" alt="<?php echo $altImage; ?>"> -->



    <h1>
    <?php the_title(); ?>
</h1>
<p>essai</p>

    </section>

</main>

<?php get_footer(); ?>
