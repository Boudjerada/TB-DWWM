<?php
$nomcat = $_POST['cat_nom'];

$bool = 1; // Pour une bonne redirection 


if ( empty($_POST['pro_ref']) || empty($_POST['pro_libelle']) || empty($_POST['pro_prix']) || empty($_POST['pro_stock']) ) {
    header("Location: produits_ajout.php?erreur_ref=1");
    $bool = 0;
    exit;
}


else if   (!is_numeric($_POST['pro_prix']))   {
        header("Location: produits_ajout.php?erreur_ref=3");
        $bool = 0;
        exit;
    }

else if (!empty($_POST['pro_photo'])){
     if (!preg_match('/(jpg|png|gif)/',$_POST['pro_photo'])){
         header("Location: ajout.php?erreur_ref=2");
         $bool = 0;
         exit;
         }
    }
require "connexion_bdd.php"; // Inclusion de notre bibliothèque de fonctions
$db = connexionBase(); // Appel de la fonction de connexion

    

//dans ce fichier, nous récupérons les informations nécessaires,
//pour réaliser la requête pour un nouvel enregistrement : INSERT
//récupération des informations passées en POST, nécessaires à la modification

$pro_cat_id=$_POST['cat_nom'];
$pro_ref=$_POST['pro_ref'];
$pro_libelle=$_POST['pro_libelle'];
$pro_description=$_POST['pro_description'];
$pro_prix=$_POST['pro_prix'];
$pro_stock=$_POST['pro_stock'];
$pro_couleur=$_POST['pro_couleur'];
$pro_photo=$_POST['pro_photo'];
$pro_date = date("y-m-d");
var_dump("$pro_cat_id");


if($bool == 1){
 if (isset($_POST["pro_bloque"])){

    $pro_bloque=$_POST['pro_bloque']; 
    $requete = $db->prepare("INSERT INTO produits (pro_cat_id,pro_ref,pro_libelle,pro_description,pro_prix,pro_stock,pro_couleur,pro_photo,pro_d_ajout,pro_bloque) 
                        values(:pro_cat_id,:pro_ref,:pro_libelle,:pro_description,:pro_prix,:pro_stock,:pro_couleur,:pro_photo,:pro_d_ajout,:pro_bloque)");
    $requete->bindValue(':pro_cat_id', $pro_cat_id);
    $requete->bindValue(':pro_ref', $pro_ref);
    $requete->bindValue(':pro_libelle', $pro_libelle);
    $requete->bindValue(':pro_description', $pro_description);
    $requete->bindValue(':pro_prix', $pro_prix);
    $requete->bindValue(':pro_stock', $pro_stock);
    $requete->bindValue(':pro_couleur', $pro_couleur);
    $requete->bindValue(':pro_photo', $pro_photo);
    $requete->bindValue(':pro_d_ajout', $pro_date);
    $requete->bindValue(':pro_bloque', $pro_bloque);
    }
else{
    $requete = $db->prepare("INSERT INTO produits (pro_cat_id,pro_ref,pro_libelle,pro_description,pro_prix,pro_stock,pro_couleur,pro_photo,pro_d_ajout) 
                        values(:pro_cat_id,:pro_ref,:pro_libelle,:pro_description,:pro_prix,:pro_stock,:pro_couleur,:pro_photo,:pro_d_ajout)");
    $requete->bindValue(':pro_cat_id', $pro_cat_id);
    $requete->bindValue(':pro_ref', $pro_ref);
    $requete->bindValue(':pro_libelle', $pro_libelle);
    $requete->bindValue(':pro_description', $pro_description);
    $requete->bindValue(':pro_prix', $pro_prix);
    $requete->bindValue(':pro_stock', $pro_stock);
    $requete->bindValue(':pro_couleur', $pro_couleur);
    $requete->bindValue(':pro_photo', $pro_photo);
    $requete->bindValue(':pro_d_ajout', $pro_date);

    }

    $requete->execute();

    //libère la connection au serveur de BDD
    $requete->closeCursor();

    //redirection vers la page index.php
    header("Location: liste.php");
    exit;
}


?>