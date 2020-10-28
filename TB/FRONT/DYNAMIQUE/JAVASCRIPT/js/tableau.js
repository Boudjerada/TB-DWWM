// Exercice 1
 /*
var taille = window.prompt("Entrer la taille du tableau");
var tableau = new Array(taille);

for (i=0; i<taille; i++){
    var valeur = window.prompt("Entrer la valeur de l'élement "+(i+1));
    tableau[i]= [valeur];
    }
window.alert(tableau);
*/

// Exercice 2

function GetInteger(){
    nb = window.prompt("Entrer un nombre");
    return parseInt(nb);
}

function InitTab(taille){
    var monTableau = new Array(taille);
    return monTableau;
}

function SaisieTab(tableau){
    for(i=0; i < nb ; i++){
        var valeur = window.prompt("Entrer la valeur de l'élement "+(i+1));
        tableau[i]= [valeur];
    }
    return tableau;
}

function AfficheTab(tableau){
    window.alert(tableau);
}

function RechercheTab(tableau){
    var rang = window.prompt("Entrer un rang du tableau à afficher");
    window.alert("L'élement d'indice "+rang+" est "+tableau[rang]);
}

function InfoTab(tableau){
    var max = tableau[0];
    var somme = 0;
    var i = 0;
    var moyenne = parseInt(tableau[0]); 
   
    do {
        somme = somme + parseInt(tableau[i]);
        if (max < tableau[i]){
            max = tableau [i];
            }
        i++;
    }
    while(i < nb)
    
    moyenne = somme / nb;
    window.alert("La moyenne des élements du tableau est : "+moyenne+"\nL'élement maximum est "+max);
}


var bouton1= document.getElementById("Id_btn1");
bouton1.addEventListener("click",clickbtn1);
function clickbtn1(){
   AfficheTab(SaisieTab(InitTab(GetInteger())));
}

var bouton2= document.getElementById("Id_btn2");
bouton2.addEventListener("click",clickbtn2);
function clickbtn2(){
    RechercheTab(SaisieTab(InitTab(GetInteger())));
}

var bouton3= document.getElementById("Id_btn3");
bouton3.addEventListener("click",clickbtn3);
function clickbtn3(){
    InfoTab(SaisieTab(InitTab(GetInteger())));
}

// Exercice 3

function tribulles(tableau){
    
    var longueur = tableau.length;  // Pour ne pas parcourir tout le tableau au fur et a mesure des boucles
    var boul = new Boolean ("True");   // Pour sortir du tableau si aucun changement
    var x = tableau[0]; //pour retenir le changement
    var tableauModifie = new Array(tableau.length);
    tableauModifie = tableau;
    
    while (boul != "False"){
        for(i=1; i <= tableau.length; i++){
            for(j=0; j < longueur - 1; j++){
                 if (parseInt(tableauModifie[j]) > parseInt(tableauModifie[j+1])){
                    x = tableauModifie[j+1];
                    tableauModifie[j+1] = tableauModifie[j];
                    tableauModifie[j] = x;
                 }
            }
            if (tableau === tableauModifie){
                boul = "False";
            }
            else{ 
                tableau = tableauModifie;
                longueur--;
            }
        }
    return tableauModifie;
    }
}

var bouton4= document.getElementById("Id_btn4");
bouton4.addEventListener("click",clickbtn4);

function clickbtn4(){
   AfficheTab(tribulles(SaisieTab(InitTab(GetInteger()))));
}











    