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

    


    <section>
    <h2>A propos de moi // Pas conseillé de mettre du texte en dur comme cela</h2>
    <pre> <?php var_dump(get_field('text_about')); ?> </pre>


    <p><?php the_field('text_about'); ?> </p>


    <pre> <?php var_dump(get_field('link')); ?> </pre>
    <p><?php the_field('link'); ?> </p>

    <?php $link = get_field('link'); ?> 
    <?php $url = $link['url']; ?>

    <?php $title = $link['title']; ?>
    <?php $target = $link['target']; ?>



    <a href="<?php echo $url; ?>" target= "<?php echo $target; ?>"><?php echo $title; ?></a>

    </section>

    <section>
        <h2>Mes projets</h2>

        <p><?php the_field('text_projects'); ?> </p>


        <pre> <?php var_dump(get_field('projects')); ?> </pre>

        <?php $projects = get_field('projects'); ?> 
        

        <ul>
            <li>
                <?php $idFirstProject = $projects[0]; ?>
                <img src="<?php echo get_field('cover', $idFirstProject); ?> " alt="">
                <h3><?php echo get_the_title($idFirstProject); ?></h3>
            </li>
            <li>
                <?php $idFirstProject = $projects[1]; ?>
                <img src="<?php echo get_field('cover', $idFirstProject); ?> " alt="">
                <h3><?php echo get_the_title($idFirstProject); ?></h3>
            </li>
        </ul>
<br>

        <p>Meilleures méthodes</p>

        <ul>
            <?php for ($i = 0; $i < count($projects); ++$i) : ?>

                <p><?php echo $i; ?></p>

                <li>
                <?php $idProject = $projects[$i]; ?>
                <img src="<?php echo get_field('cover', $idProject); ?> " alt="">
                <h3><?php echo get_the_title($idProject); ?></h3>
            </li>
                <?php endfor; ?>


        </ul>

    </section>

</main>

<?php get_footer(); ?>
