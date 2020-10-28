<?php get_header();?>



<div class="container-fluid">
    <div class="row">
	    <div class="col-8">
		    <h1><a href="https://fr.wikipedia.org/wiki/Histoire_du_cin%C3%A9ma" title="histoire du cinéma">Histoire du cinéma</a></h1>	
		    <p>Ce site retrace les grandes étapes qui jalonnent l'histoire technique du cinéma</p>
        <div>
    </div>
		<hr>
	<h1><a href="https://www.cinemaspathegaumont.com/" title="cinéma">Cinéma Gaumont</a></h1>	
	<p>Nos horaires s'adaptent pour vous accueillir dans les meilleures conditions</p>
         <hr>				   
    <h1><a href="https://www.festival-cannes.com/fr/" title="cannes">Festival de Cannes</a></h1>	
	<p>Le festival de Cannes entend accompagner les films sélectionnés dans leurs sorties, leurs avant-premières et leur carrière dans les festivals de cinéma du monde entier</p>
        <hr>				   
    <h1><a href="https://www.cinetrafic.fr/film-a-voir" title="cinetrafic">Les films à voir</a></h1>	
	<p>Les films à voir sont les films Cinéma qu’il faut absolument avoir vu selon les membres de Cinetrafic</p>
        <hr>	    
 


<main id="accueil">
    
    <?php if (have_posts()) :
        while(have_posts()) : the_post();?>
            <article>
            <a href="<?php the_permalink(); ?>"> <!-- adresse d'un article avec permalink-->
                <?php the_post_thumbnail('medium');?>  <!--mise en avant des images-->
                <h2><?php the_title(); ?></h2> <!-- titre chaque article-->
            </a>
            <?php the_excerpt();?>     <!--affiche résumé article-->
            
            <a href="<?php the_permalink(); ?>"> <!-- adresse d'un article avec permalink-->Lire... </a>
            </article>
            <?php endwhile; ?>
          
   <?php endif ?>
</main>

<?php get_footer();?>
