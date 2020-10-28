/* avec get element et addlistener*/
var element = document.getElementById("button1");
element.addEventListener("click", function(){
    alert("OK");
});

/* avec querryselector */
document.querySelector('#button2').onclick = function(){
    alert('Vous avez cliqué !');
} 

/* fonction pour survol du lien */
function message(){
      alert("Coucou");
}

/*fonction exercice fin 1*/
const input = document.getElementById('input');
const btn = document.getElementById('btn');

btn.addEventListener("click", function(){
    let valeur =input.value;
    window.alert("Vous avez saisi : "+valeur);
});  

/*fonction exercice fin 2*/

let input1 = document.getElementById('textBox1');
let input2 = document.getElementById('button3');

input2.addEventListener("click", function(){
    let valeur1 = parseFloat(input1.value);
    valeur2 = Math.random();
    if (valeur1 > valeur2){
       window.alert("Trop Grand");
       label1.innerText = ("Trop Grand");
    }
    else{
        window.alert("Trop Petit");
        label1.innerText = ("Trop Petit");
    }
});

