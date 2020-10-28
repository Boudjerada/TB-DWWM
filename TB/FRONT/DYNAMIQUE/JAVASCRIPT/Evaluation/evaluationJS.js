// Utiliser document.queryseclector(#idbouton).onclick=function(){} 

// Exercice 1 
// Mettre les ages dans tableau et affiché 

var exercice1 = document.getElementById("exo1");
exercice1.addEventListener("click", function(){
    var age;
    var moins20 = 0;
    var entre2040 = 0;
    var plus40 = 0;    
    
    do{
         age = parseInt(window.prompt("Entrer un âge :"));
         if (age < 20){
             moins20++;
         }
         else if ((age >= 20) && (age <= 40)){
             entre2040++;
         }
         else if (age > 40){
             plus40++;
         }
    }
    while (age < 100)
    document.getElementById("moins20").innerHTML = moins20;
    document.getElementById("20-40").innerHTML = entre2040; 
    document.getElementById("plus40").innerHTML = plus40;   
//document.getElementById("exer1").innerHTML = "Vous avez tapé "+moins20+" personnes de moins 20 ans, "+entre2040+" personnes dont l'âge est compris entre 20 et 40 ans et "+plus40+" personnes qui ont plus de 40 ans"; 
//window.alert("Vous avez tapé "+moins20+" personnes de moins 20 ans, "+entre2040+" personnes dont l'âge est compris entre 20 et 40 ans et "+plus40+" personnes qui ont plus de 40 ans");
});


//Exercice 2

var exercice2 = document.getElementById("exo2");
exercice2.addEventListener("click", function(){

function table (x){


    var rep ="";
    var rep2 ="";


    for(i=1; i<=10;i++){
        rep = rep + i+" * "+x+" = "+i*x+"<br>";
        rep2 = rep2 + i+" * "+x+" = "+i*x+"\n";
        }

    alert(rep2);

    document.getElementById("exer2").innerHTML = rep;    //le inner prend les balises html ici pour saut de ligne contairement au textcontent
}

var nb = window.prompt("Entrer un nombre"); 

table(nb);

});

//Exercice 3

function GetInteger(){
    nb = window.prompt("Entrer la taille du tableau");
    return parseInt(nb);
}

function InitTab(taille){
    var monTableau = new Array(taille);
    return monTableau;
}

function SaisieTab(tableau){
    for(i=0; i < nb ; i++){
        var prenom = window.prompt("Entrer le prénom numéro "+(i + 1));
        tableau[i]= [prenom];
    }
    return tableau;
}

var exercice3 = document.getElementById("exo3");
exercice3.addEventListener("click", function(){ 

var tab = SaisieTab(InitTab(GetInteger()));
var pren = window.prompt("Entrer un prenom a supprimer");
var boul = false;

document.getElementById("exer3.1").innerHTML  = tab;

for (i=0; i<tab.length ;i++){            // possibilité de se servir de stringindexof() qui évite cet algorithme
    if(tab[i]== pren){          
        boul = true;
        for(j=i; j<tab.length-1;j++){
            console.log(j);
            tab[j]=tab[j+1];
        }
        tab[tab.length-1]="";
        break;
    }
   
}

if (boul){ 
    document.getElementById("exer3.2").innerHTML  = "Le tableau sans le prenom "+pren+" est :"+"<br>"+tab;
    }

else{
    document.getElementById("exer3.2").innerHTML  = "Le prénom "+pren+" ne figure pas dans le tableau";
    }
});



// Exercice 4

var exercice4 = document.getElementById("exo4");
exercice4.addEventListener("click", function(){

var PU = parseInt(window.prompt("Entrer prix unitaire"));
var QTECOM = parseInt(window.prompt("Entrer quantité voulu"));
var TOT = PU * QTECOM;
var REM = 0;
var port = 0;
var PAP = TOT;

if ((TOT >= 100) && (TOT <= 200)){
    REM = (5 * TOT) / 100;
    }
else if (TOT > 200){
    REM = (10 * TOT) / 100;
}

PAP = TOT - REM;

if (PAP <= 500){
    port = (PAP * 2) / 100;
    if (port <= 6){
        PAP = PAP + 6;
    }
    else {
        PAP = PAP + port;
    }
}

document.getElementById("remise").innerHTML = REM;
document.getElementById("fraisport").innerHTML = port; 
document.getElementById("prixfinal").innerHTML = PAP; 
});

//exo5

var exercice5 = document.getElementById("exo5");
exercice5.addEventListener("click", function(){

fenetre = window.open('file:///C:/Users/80010-92-07/Desktop/Nadir%20Boudjerada/FRONT/DYNAMIQUE/JAVASCRIPT/Evaluation/contact.html',"formul", weight=50);
});


    
    






