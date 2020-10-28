<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
<meta charset="<?php bloginfo('charset'); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<?php echo get_stylesheet_uri()?>"> <!--adresse de la feuille de style css-->
    <title><?php bloginfo('name'); ?> - <?php bloginfo('description');?></title> <!--fait référence au titre et slogan renseigné dans réglages titre du site-->
<meta name='robots' content='noindex,follow' />
<?php wp_head(); ?>

</head>
<body <?php body_class(); ?>>

<div class="titrelogo">
    <h1><?php bloginfo('name'); ?></h1> <!--Titre du site-->

    <!--affichage logo-->
    
        <a href="<?php echo home_url( '/' ); ?>">

          <?php if(has_custom_logo()) : ?>
                <?php the_custom_logo(); ?>
            <?php endif; ?>
        </a>
   
</div>
<?php wp_nav_menu(); ?> <!--fait apparaitre le menu signalé-->




