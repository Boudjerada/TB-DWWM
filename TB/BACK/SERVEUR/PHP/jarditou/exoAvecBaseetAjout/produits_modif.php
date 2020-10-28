<!DOCTYPE html>
<html lang="fr"> <!--indique la langue dans laquelle la page web est rédigéé aux robots de référencement ou aux logiciels de synthése vocale-->
<!--les balises de la partie head ne sont pas affichées à l'exeption de title-->
<head>
    <!--meta permet de fourni des indications différentes du contenu de la page web -->
    <meta charset="UTF-8"><!--permet de spécifier aux navigateurs l'encodage de la page web, il s'agit là de la valeur standard qui évite les pbs d'affichages des caractères spéciaux-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0",shrink-to-fit=no>
    <title>Produit Modification</title>
    <!--on importe Bootstrap via une URL pointant sur un CDN (un serveur externe hébergeant des fichiers) -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>
<?php
    require "connexion_bdd.php"; // Inclusion de notre bibliothèque de fonctions
    $db = connexionBase(); // Appel de la fonction de connexion
    $pro_id = $_GET["pro_id"];
   
    $requete1 = "SELECT cat_id, cat_nom, cat_parent FROM categories order by cat_nom";
    $result1 = $db->query($requete1);
    
    $requete = "SELECT * FROM produits where pro_id=".$pro_id;
    $result = $db->query($requete);
    $row = $result->fetch(PDO::FETCH_OBJ); 

 
?>
<div class="container">
    <h1><b>Modification d'un produit</b></h1>  
    <form name="modif produit" id="modif produit" method="post" action="produit_modif_script.php" enctype="multipart/form-data">
        <div class="form-group">
            <label for="pro_id"><b>Identifiant</b></label><input type="text" class="form-control" name="pro_id" id="pro_id" value="<?php echo $row->pro_id?>" Readonly>
        </div>
        <label for="cat_id"><b>Nom catégorie<b></label>
        <select class="form-control" name="cat_nom" id="cat_nom">
             <?php
            
            while ($row2= $result1->fetch(PDO::FETCH_OBJ))
                {   
                if($row2->cat_parent != NULL){
                    echo"<option value=".$row2->cat_id."";
                
                    // row1 : requête sur le produit                   
                    // row2 : requête sur la catégorie
                                    
                    if ($row2->cat_id == $row->pro_cat_id) 
                    {
                        echo" selected";}
                    
                    echo">".$row2->cat_nom."</option>\n"; //separation ligne SUR CODE SOURCE
                    }
                }
            ?>
        </select>
        <div class="form-group">
            <label for="pro_ref"><b>Réference produit</b></label><input type="text" class="form-control" name="pro_ref" id="pro_ref" value="<?php echo $row->pro_ref ?>">
            <label for="pro_libelle"><b>Libéllé produit</b></label><input type="text" class="form-control" name="pro_libelle" id="pro_libelle" value="<?php echo $row->pro_libelle ?>">
            <label for="pro_description"><b>Description produit</b></label><input type="text" class="form-control" name="pro_description" id="pro_description" value="<?php echo $row->pro_description?>">
            <label for="pro_prix"><b>Prix</b></label><input type="text" class="form-control" name="pro_prix" id="pro_prix" value="<?php echo $row->pro_prix ?>">
            <label for="pro_stock"><b>Quantité en stock</b></label><input type="number" class="form-control" name="pro_stock" id="pro_stock" value="<?php echo $row->pro_stock ?>">
            <label for="pro_couleur"><b>Couleur Produit</b></label><input type="text" class="form-control" name="pro_couleur" id="pro_couleur" value="<?php echo $row->pro_couleur ?>">
            <label for="pro_photo"><b>Photo produit</b></label><input type="text" class="form-control" name="pro_photo" id="pro_photo" value="<?php echo $row->pro_photo?>">
        </div>      
        <b>Produit bloqué&nbsp&nbsp<b>  
        <div class="form-check form-check-inline">
             <label class="form-check-label" for="pro_bloque"><input class="form-check-input" type="radio" name="pro_bloque" id="pro_bloque1" value=1>bloque</label>
        </div>
        <div class="form-check form-check-inline">
            <label class="form-check-label" for="pro_bloque"><input class="form-check-input" type="radio" name="pro_bloque" id="pro_bloque2" value=0>Non bloque</label>
        </div>
        <br>
        <br>
        <button class="btn btn-dark" type="submit" name="submit" value="1" onclick="verif();">Envoyer</button>
        <a href="detail.php?pro_id=<?php echo $pro_id ?>" class="btn btn-dark" type="button" id="efface" >Annuler</a>
    </form>


<?php 
    if (isset ($_GET["erreur_ref"])){
        if (($_GET["erreur_ref"]) == 1){
            echo "Insertion qui comporte un champs qui ne doit pas etre non null";
        }
        if  (($_GET["erreur_ref"]) == 2){
            echo "Format photo non géré";
        }
        if (($_GET["erreur_ref"]) == 3){
            echo "Valeur Numérique pour le prix du produit";
        }
    }
?> 

<script>

//vérifie si on envoit ou non le formulaire à "script_modif.php"
function verif(){ 

    //Rappel : confirm() -> Bouton OK et Annuler, renvoit true ou false
    var resultat = confirm("Etes-vous certain de vouloir modifier cet enregistrement ?");

    //alert("retour :"+ resultat);

    if (resultat==false){

    alert("Vous avez annulé les modifications \nAucune modification ne sera apportée à cet enregistrement !");

    //annule l'évènement par défaut ... SUBMIT vers "script_modif.php"
    event.preventDefault();    

    }
}
 </script>

</div>
   

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>


