<?php get_header(); ?>
 	<h1>Le blog Capitaine WP</h1>

	<?php if( have_posts() ) : while( have_posts() ) : the_post(); ?>
  
		<article class="post">
			<h2><?php the_title(); ?></h2>
      
        	<?php the_post_thumbnail(); ?> <!--permet d’afficher l’image mise en avant (anciennement image à la Une)-->
            
            <p class="post__meta">
                Publié le <?php the_time( get_option( 'date_format' ) ); ?> <!--Affichée pour chaque article avec le format défini dans WordPress-->
                par <?php the_author(); ?> • <?php comments_number(); ?> <!-- the autor permet d’afficher le nom de l’auteur, tel qu’il l’a défini dans Utilisateurs  Votre profil  Nom à afficher publiquement-->
            </p> <!-- comment number affiche le nombre de commentaires publiés dans cet article-->
            
      		<?php the_excerpt(); ?> <!-- on utilise la fonction the_excerpt() à la place de the_content() afin de n’afficher qu’un extrait de l’article, et pas l’article en entier. Le but reste que la personne clique sur l’article de son choix pour l’afficher-->
              
      		<p>
                <a href="<?php the_permalink(); ?>" class="post__link">Lire la suite</a> <!--La fonction the_permalink() permet d’afficher le lien vers l’article. il faut placer cette fonction dans l’attribut href de la balise a -->
            </p>
		</article>

	<?php endwhile; endif; ?>
<?php get_footer(); ?>