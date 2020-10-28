/*changement image*/
var img1 = new Image();  
img1.src = "images/8.jpg";

/* date exemple manipulation */
var myDate1 = new Date() ;  // Date du jour
var myDate2 = new Date(3600*24*365*40) ;    // Date depuis le 1er janvier 1970
var myDate3 = new Date(2012, 9, 19) ;
var myDate4 = new Date(2012, 9, 19, 10, 33, 12);
var myDate5 = new Date("Jan 1, 2000 00:00:00");

console.log('new Date() : ' + myDate1.toLocaleString()); 
console.log('new Date(3600*24*365*40) : ' + myDate2.toLocaleString());
console.log('new Date(2012, 9, 19) : ' + myDate3.toLocaleString());
console.log('new Date(2012, 9, 19, 10, 33, 12) : ' + myDate4.toLocaleString());
console.log('new Date("Jan 1, 2000 00:00:00") : ' + myDate5.toLocaleString());
console.log("");
var annee = 1900 + myDate1.getYear();
var mois  = myDate1.getMonth() + 1;
var jour  = myDate1.getDate();
console.log('date du jour : ' + jour + "/" + mois + "/" + annee);

/*agissement sur élement d'un petit formulaire */
console.log("La 2nde zone de texte a pour nom : ");
console.log(document.forms['form1'].elements[1].name);
console.log("La 1ère zone de texte a pour valeur : '");
console.log(document.forms['form1'].elements['nom'].value);
console.log("Le bouton Submit a pour identifiant unique : ");
console.log(document.getElementById('idSubForm1').id);
console.log("Le bouton Submit a pour valeur : ");
console.log(document.getElementsByName('subForm1')[0].value);

/* exercice objet natif*/
var tableau = new Array();
var i = 0;
var bool = new (Boolean);
var valeur;
var somme = 0;
var moyenne;

do{
    valeur = window.prompt("Entrer valeur pour le tableau");
    if (valeur!=0){
        tableau[i] = valeur;
        somme = somme + parseInt(tableau[i]);
        i++;
    }
    else {
        bool = 'false';
    }
}
while (bool != 'false')
if(i != 0){
    moyenne = somme / i;
    window.alert("Le nombre d'élement saisie est de "+(i)+"\nLa somme des élement du tableau est de "+somme+"\nLa moyenne des élements du tableau est de "+moyenne);
}


