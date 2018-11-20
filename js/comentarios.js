'use strict'
let templateMateriasVisitante;
fetch('js/templates/comentarios.handlebars')
    .then(response => response.text())
    .then(template => {
        templateMateriasVisitante = Handlebars.compile(template); // compila y prepara el template
        getComentarios();
    });
function getComentarios() {
    fetch("api/comentario")
        .then(response => response.json())
        .then(jsonTareas => {
            mostrarComentarios(jsonTareas);
        })
}
function mostrarComentarios(jsonTareas) {
    let context = { // como el assign de smarty
        comentarios: jsonTareas,
        otra: "Comentarios"
    }
    let html = templateMateriasVisitante(context);
    document.querySelector("#comentarios-container").innerHTML = html;
}