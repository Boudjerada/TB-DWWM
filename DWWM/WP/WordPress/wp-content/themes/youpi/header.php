<!DOCTYPE html>
<html <?php language_attributes(); ?>> <!--valeur est basée sur le réglage WordPress dans Réglages  Général  Langue du site -->
<head>
    <meta charset="<?php bloginfo('charset'); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

    
    <?php wp_head(); ?> <!-- c’est par cette fonction que WordPress, votre thème et les extensions vont pouvoir venir déclarer le chargement des scripts et des styles. On verra un peu plus tard comment en tirer parti -->
</head>

<body <?php body_class(); ?>> <!--nous permet d’obtenir des noms de classe CSS en fonction de la page visitée, ce qui pourra nous faciliter la création de nos styles-->
  <header class="header">
        <a href="<?php echo home_url( '/' ); ?>">
            <img src="<?php echo get_template_directory_uri(); ?>/img/screenshot.png" alt="Logo"> <!--get_temple_directory = adresse absolue de l'image -->
        </a>  
  </header>

        <?php wp_body_open(); ?> <!--permettre à des extensions d’écrire du code au début du body. C’est utile notamment pour Yoast qui vient y placer le Google Tag Manager et autres codes de scripts -->