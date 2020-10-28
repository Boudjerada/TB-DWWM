/* test des expression régulière */

var soc = document.getElementById("Societe");
var filtreSoc = new RegExp("^[a-z A-Z 0-9]+$");

var pers = document.getElementById("PersonneContact");
var filtrePers = new RegExp("^[A-Z]{1}[a-z]* [A-Z]{1}[a-z]*$");

var cp = document.getElementById("codep");
var filtreCp = new RegExp("^[0-9]{5}$");

var ville = document.getElementById("ville");
var filtreVille = new RegExp("^[A-Z]{1}[a-z]*$");

var mail = document.getElementById("courriel"); 
var filtreMail = new RegExp("^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z]+.[a-z]{2,3}$");

addEventListener("submit",function(evenement){


    if(filtreSoc.test(soc.value) == false){
        evenement.preventDefault();
        document.getElementById("alerte-soc").textContent = "Veuillez entrer un nom de société avec au moins 1 caractère !";
        //window.alert("Veuillez entrer un nom de société avec au moins 1 caractère !");
        soc.focus();
        }

    if(filtrePers.test(pers.value) == false){
        evenement.preventDefault();
        document.getElementById("alerte-pers").textContent = "Veuillez entrer une personne a contacter sous le format Nom Prenom !";
        //window.alert("Veuillez entrer une personne a contacter sous le format Nom Prenom !");
        pers.focus();
        }
    

    if (filtreCp.test(cp.value) == false){
        evenement.preventDefault();  // La méthode preventDefault() de l 'interface Event indique à l'agent utilisateur que si l'événement n'est pas traité explicitement, son action par défaut ne doit pas être prise en compte comme elle le serait normalement 
        document.getElementById("alerte-cp").textContent = "Veuillez entrer un code postal valide à 5 chiffres !";  //ici inscrit sur la page à l'endroit de la balise span
        //window.alert("Veuillez entrer un code postal valide à 5 chiffres!");
        cp.focus();
    }

    if(filtreVille.test(ville.value) == false){
        evenement.preventDefault();
        document.getElementById("alerte-ville").textContent = "Veuillez entrer une ville sous le format Ville !";
        //window.alert("Veuillez entrer une ville sous le format Ville !");
        ville.focus();
    }
    if(filtreMail.test(mail.value) == false){
        evenement.preventDefault();
        document.getElementById("alerte-mail").textContent = "Entrer un mail valide !";
        // window.alert("Entrer un mail valide !");
        mail.focus();
    }
});

//confirmation pour effacement

document.querySelector("#efface").onclick= function(){

    if(confirm("êtes-vous sur(e)?")){
    document.getElementById("formulaire").reset();
    }
}
    
