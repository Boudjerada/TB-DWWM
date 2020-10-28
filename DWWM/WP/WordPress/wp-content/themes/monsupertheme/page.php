<?php get_header();?>

<main>
   
    <?php if (have_posts()) :
        while(have_posts()) : the_post();?>
        
            <?php the_post_thumbnail('medium');?>  <!--mise en avant des images-->
            <h1><?php the_title(); ?></h1> <!-- titre chaque article-->
            <?php the_content();?>     <!--affiche tout l'article-->
         <?php endwhile; ?>
       
   <?php endif ?>
</main>

<?php get_footer();?>
