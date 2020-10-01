// Affiche le texte automatiquement
let i = 0;
let txt = 'Bienvenue sur votre interface de gestion' ;
let  speed = 50;

window.onload = function typeWriter() {
    if (i < txt.length) {
        document.getElementById("mon-texte").innerHTML += txt.charAt(i);
        i++;
        setTimeout(typeWriter, speed);
    }
}
// change la couleur des sous items de la sidebar en passant dessus
$(".hover-color").hover(function(){
    $(this).css("background-color", "#8f58ad");
}, function(){
    $(this).css("background-color", "#563d7c");
});