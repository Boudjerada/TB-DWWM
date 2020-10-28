<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<title>Atelier PHP N°4 - Affichage de la liste</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>

<body> 
    <div class="container">

    <?php
    require "connexion_bdd.php"; // Inclusion de notre bibliothèque de fonctions
    $db = connexionBase(); // Appel de la fonction de connexion
    $requete = 
    "SELECT pro_id, pro_cat_id, pro_ref, pro_libelle, pro_prix , cat_nom
    FROM produits join categories on cat_id = pro_cat_id";
    /*WHERE ISNULL(pro_bloque) ORDER BY pro_id DESC";*/

    $result = $db->query($requete);

    if (!$result) 
    {
        $tableauErreurs = $db->errorInfo();
        echo $tableauErreur[2]; 
        die("Erreur dans la requête");
    }

    if ($result->rowCount() == 0) 
    {
       // Pas d'enregistrement
       die("La table est vide");
    }
    ?>
    <div class="table-responsive">
        <table class="table table-hover table-bordered w-100 w-sm-50">
    
    <?php

    echo"<tr>";
    echo"<th>"."Idendifiant Produit"."</th>";
    echo"<th>"."Idendifiant Catégorie"."</th>";
    echo"<th>"."Reference Produit"."</th>";
    echo"<th>"."Libellé Produit"."</th>";
    echo"<th>"."Prix Produit"."</th>";
    echo"<th>"."Nom de catégorie"."</th>";
    echo"</tr>";



    while ($row = $result->fetch(PDO::FETCH_OBJ))
    {
        echo"<tr>";
        echo"<td>".$row->pro_id."</td>";
        echo"<td>".$row->pro_cat_id."</td>";
        echo"<td>".$row->pro_ref."</td>";
        echo '<td><a href="detail.php?pro_id='.$row->pro_id.'" title='.$row->pro_libelle.'>'.$row->pro_libelle.'</a></td>';
        echo"<td>".$row->pro_prix."</td>";
        echo"<td>".$row->cat_nom."</td>";
        echo"</tr>";
        
    }
    ?>
        </table>

    <div>
        <a href="produits_ajout.php"><button>Créer un nouvel enregistrement</button></a>
    </div>
    
    <div>
    

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html> 