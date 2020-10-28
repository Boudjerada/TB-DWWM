// exercice 1
/*var prenom;
var i = 1;



do{
prenom = window.prompt("Saissisez le prénom N° "+i+"\nou Clic sur annuler pour arrêter la saisie");
i++;
if (prenom == '')
    break;
}
while (prenom != null)  

//exercice 2
var N = parseInt(window.prompt("Saissisez un nombre"));

for(i = N - 1; i>=0; i--){
    console.log(i);
}
*/
//exercice 3

var somme = 0;
var moyenne = 0;
var i = 1;
var nombre;


while (nombre != 0){
    nombre = parseInt(window.prompt("Saissisez un nombre"));
    somme = somme + nombre;
    moyenne = somme / (i - 1); // i -1 car le 0 de la dernière boucle compte un tour
    i++;
}

window.alert("La somme est de : "+somme+"\nLa moyenne est de : "+moyenne);

/*
// Exercice 4

var nb = parseInt(window.prompt("Saissisez un nombre"));
var nbMultiples = parseInt(window.prompt("Saissisez un nombre de multiples"));

for (i = 1; i <= nbMultiples; i++){
    console.log(i+" * "+nb+" = "+i*nb);
}

// Exercice 5

var mot = window.prompt("entrer un mot");
var nbCaractere= mot.length;
var cpVoyelle = 0;


while (nbCaractere != 0){
    if (mot.indexOf("a") != -1){
        cpVoyelle++;
        mot = mot.substr(mot.indexOf("a") + 1,nbCaractere);
        nbCaractere = nbCaractere - (mot.indexOf("a")) - 1;
    }

    else if (mot.indexOf("e") != -1){
        cpVoyelle++;
        mot = mot.substr(mot.indexOf("e") + 1,nbCaractere);
        nbCaractere = nbCaractere - (mot.indexOf("e")) - 1;
    }
    else if (mot.indexOf("i") != -1){
        cpVoyelle++;
        mot = mot.substr(mot.indexOf("i") + 1,nbCaractere);
        nbCaractere = nbCaractere - (mot.indexOf("i")) - 1;
    }
    else if (mot.indexOf("o") != -1){
        cpVoyelle++;
        mot = mot.substr(mot.indexOf("o") + 1,nbCaractere);
        nbCaractere = nbCaractere - (mot.indexOf("o")) - 1;
    }
    else if (mot.indexOf("u") != -1){
        cpVoyelle++;
        mot = mot.substr(mot.indexOf("u") + 1,nbCaractere);
        nbCaractere = nbCaractere - (mot.indexOf("u")) - 1;
    }
    else if (mot.indexOf("y") != -1){
        cpVoyelle++;
        mot = mot.substr(mot.indexOf("y") + 1,nbCaractere);
        nbCaractere = nbCaractere - (mot.indexOf("y")) - 1;
    }
    else{
        nbCaractere = 0;
    }
}
 
window.alert("Le nombre de voyelle est : "+cpVoyelle);

*/

   
