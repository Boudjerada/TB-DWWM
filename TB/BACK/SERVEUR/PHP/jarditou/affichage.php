<?php

echo "<h1>Affichage des informations saisie dans le formulaire</h1><br>";

// NOM
if (!(empty($_POST["Nom"]))){
    echo "<h4>Nom saisie : ".$_POST['Nom']."</h4>";
    }
else{
    echo "<h4>Nom saisie : Aucun</h4>";
} 
//Prenom
if (!(empty($_POST["Prenom"]))){
    echo "<h4>Prénom saisie : ".$_POST['Prenom']."</h4>";
    }
else{
    echo "<h4>Prénom saisie : Aucun</h4>";
} 

//Sexe
if(isset($_POST['sexe1'])){
    echo "<h4>Sexe : Féminin</h4>";
    }
else if (isset($_POST['sexe2'])){
    echo "<h4>Sexe : Masculin</h4>";
    }
else {
    echo "<h4>Sexe : Non renseigné</h4>";
}  

//Date de naisance
if (!(empty($_POST["date"]))){
    echo "<h4>Date de naissance : ".$_POST['date']."</h4>";
    }
else{
    echo "<h4>Date de naissance : Aucune</h4>";
} 

//Code postal
if (!(empty($_POST["CodePostal"]))){
    echo "<h4>Code Postal : ".$_POST['CodePostal']."</h4>";
    }
else{
    echo "<h4>Code Postal : Aucun";
} 

//Adresse
if (!(empty($_POST["Adresse"]))){
    echo "<h4>Adresse : ".$_POST['Adresse']."</h4>";
    }
else{
    echo "<h4>Adresse : Aucune";
} 

//Mail
if (!(empty($_POST["courriel"]))){
    echo "<h4>Email : ".$_POST['courriel']."</h4>";
    }
else{
    echo "<h4>Email : Aucun";
}

//Sujet
if (!(empty($_POST["Sujet"]))){
    echo "<h4>Sujet : ".$_POST['Sujet']."</h4>";
    }
else{
    echo "<h4>Sujet : Aucun";
} 

//Commentaire
if (!(empty($_POST["question"]))){
    echo "<h4>Commentaire : ".$_POST['question']."</h4>";
    }
else{
    echo "<h4>Commentaire : Aucun";
} 


header("Location:contact.php");

 


?>