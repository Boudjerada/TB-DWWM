//Exercice 1

function produit(x,y){
    var resultat = x * y;
    return resultat;
}

function cube(x){
    var resultat = x * x * x;
    return resultat;
}

var nb1, nb2;

nb1 = window.prompt("Entrer un nombre1");
nb2 = window.prompt("Entrer un nombre2");


function afficheImg(adresse){
    var img = document.getElementById('img1');
    img.src = adresse;
  
}
afficheImg('images/papillon.jpg');

document.getElementById('cubeproduit');
cubeproduit.innerText = ("Le cube de "+nb1+" est "+cube(nb1)+"\nLe produit de "+nb1+" * "+nb2+" = "+produit(nb1,nb2));


// Exercice 2

/*
MyVar.substring(x,y); retourne une sous chaine entre x et y
myVar.length : retourne le nombre de lettres de la chaîne myVar.
myVar.indexOf(chaine) : retourne le rang de la première occurrence de chaîne dans la variable myVar donnée (si non trouvé : -1)
myVar.substr(p,n) : extrait d'une chaîne donnée une sous-chaîne de n - 1 caractères à partir de la position p (attention, en Javascript, le 1er caractère se trouve à la position 0)

*/
/*
function strtok (str,cara,position){
    var nbcara = str.length;
    while (position!=1){
        str = str.substr((str.indexOf(cara)) + 1,nbcara - str.indexOf(cara));
        position--;
        nbcara = nbcara - str.indexOf(cara);
    }
    if (str.indexOf(cara) == -1){
        str = str.substring(0,str.length);
        }
    else {
        str = str.substring(0,str.indexOf(cara));  
    }
    return str;
}

var chaine = window.prompt("Entrer une chaine de caractere");
var carSeparation = window.prompt("Entrer un caractère de séparation");
var indice = window.prompt("Entrer un indice");
console.log(strtok(chaine, carSeparation, indice));
*/