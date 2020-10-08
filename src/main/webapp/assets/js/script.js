// Affiche le texte automatiquement
let i = 0;
let txt = 'Bienvenue sur Media+' ;
let  speed = 50;

window.onload = function typeWriter() {
    if (i < txt.length) {
        document.getElementById("mon-texte").innerHTML += txt.charAt(i);
        i++;
        setTimeout(typeWriter, speed);
    }
};

$( document ).ready(function() {
    // change la couleur des sous items de la sidebar en passant dessus
    $(".hover-color").hover(function(){
       // $(this).css("background-color", "#99ac63");
        $(this).css("background-color", "#3f1d5f");
    }, function(){
        $(this).css("background-color", "#563d7c");
    });
});
