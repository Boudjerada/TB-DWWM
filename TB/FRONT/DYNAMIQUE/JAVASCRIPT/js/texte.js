var nom = window.prompt("Saisissez votre nom");
var prenom = window.prompt("Saisissez votre prenom");
var sexe = window.confirm("Etes vous un homme ?");
if (sexe == true)
{
        window.alert("Bonjour Monsieur "+nom+" "+prenom+"\nBienvenue sur notre site web!");
}
else
{
        window.alert("Bonjour Madame "+nom+" "+prenom);
}
