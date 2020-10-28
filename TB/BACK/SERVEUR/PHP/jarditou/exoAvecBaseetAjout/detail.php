<!DOCTYPE html>
     <html lang="fr">
     <head>
        <meta charset="UTF-8">
        <title>Détail d'un produit</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <?php    
        require "connexion_bdd.php"; // Inclusion de notrebibliothèque de fonctions

        $db = connexionBase(); // Appel de la fonction deconnexion
        $pro_id = $_GET["pro_id"];
        $requete = "SELECT * FROM produits WHERE pro_id=".$pro_id;

        $result = $db->query($requete);

        // Renvoi de l'enregistrement sous forme d'un objet
        $produit = $result->fetch(PDO::FETCH_OBJ);
       ?>
       </head>
       <body> 
       <div class="table-responsive">
          <table class="table table-hover table-bordered w-100 w-sm-50">
       
            <?php
              echo "<tr>";
              echo "<th>"."Libellé du produit"."</th>";  
              echo "<th>"."Réference du produit"."</th>"; 
              echo "<th>"."Description du produit"."</th>"; 
              echo "<th>"."Prix du produit"."</th>";
              echo "</tr>";

              echo "<tr>";
              echo "<td>".$produit->pro_libelle."</td>";  
              echo "<td>".$produit->pro_ref."</td>"; 
              echo "<td>".$produit->pro_description."</td>"; 
              echo "<td>".$produit->pro_prix."</td>";
              echo "</tr>";
            ?> 
          </table>
        </div> 

        <div class="d-flex justify-content-center" name = actionProduit>
            <a  class="btn" href="produits_modif.php?pro_id=<?=$pro_id;?>"><button class="btn-success">Modifier</button></a>
            <br>
            <a  class="btn" href="supprimeScript.php?pro_id=<?=$pro_id;?>"><button class="btn-primary" onclick="verif();">Supprimer</button></a>
            <br>
            <a  class="btn" href="liste.php"><button class="btn-secondary">Retour</button></a>
        </div>

        <script>

    //vérifie si on envoit ou non le formulaire à "script_modif.php"
    function verif(){ 

    //Rappel : confirm() -> Bouton OK et Annuler, renvoit true ou false
    var resultat = confirm("Etes-vous certain de vouloir modifier cet enregistrement ?");

    //alert("retour :"+ resultat);

    if (resultat==false){

    alert("Vous avez annulé la suppression du produit \nAucune modification ne sera apportée à la base produit !");

    //annule l'évènement par défaut ... SUBMIT vers "script_modif.php"
    event.preventDefault();    

    }
  }
 </script>
      
      <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
       </body>
     </html>