//exercice 1
var nb = window.prompt("Entrer un nombre");

if (nb%2 == 0){
    window.alert("Ce nombre est pair");
}
else{
    window.alert("Ce nombre est impair");
}

//exercice 2
var anneeNaissance = window.prompt("Entrer vôtre année de naissance");
var age = 2020 - anneeNaissance;

if (age>=18){
    window.alert("Votre âge est de : "+age+" Vous êtes majeur");
}
else{
    window.alert("Votre âge est de : "+age+" Vous êtes mineur");
}

//exercice 3

var nb1 = parseInt(window.prompt("Entrer un nombre entier1"));
var nb2 = parseInt(window.prompt("Entrer un nombre entier2"));
var op = window.prompt("Entrer un opérateur");
var resulat;

if ((op!= "/") && (op!="*") && (op!="-") && (op!="+")){
    window.alert("Opérateur incorrect");
}
else if(op == "/"){
    resultat = nb1 / nb2;
    window.alert("Le résultat est : "+resultat);
}
else if(op == "+"){
    resultat = nb1 + nb2;
    window.alert("Le résultat est : "+resultat);
}
else if(op == "-"){
    resultat = nb1 - nb2;
    window.alert("Le résultat est : "+resultat);
}
else if(op== "*"){
    resultat = nb1 * nb2;
    window.alert("Le résultat est : "+resultat);
}

   



 







