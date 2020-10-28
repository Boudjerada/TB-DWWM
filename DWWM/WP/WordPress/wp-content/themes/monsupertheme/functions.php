<?php
add_theme_support('post-thumbnails'); // gestion des images mit en avant

// Pour menu
function enregistre_mon_menu(){
    register_nav_menu('menu_principal',__('Menu principal'));
} 
add_action('init','enregistre_mon_menu');      //add action permet d'effectuer une fonction dans un certain contexte ici init

//logo

add_theme_support('custom-logo');


//texte en gras
function excerpt_display_strong($texte) 
{
    return "<strong>".$texte."</strong>";
} 

add_filter('get_the_excerpt', 'excerpt_display_strong');