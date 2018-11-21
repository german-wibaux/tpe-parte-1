'use strict'
let templateMateriasVisitante;
fetch('js/templates/comentarios.handlebars')
    .then(response => response.text())
    .then(template => {
        templateMateriasVisitante = Handlebars.compile(template); // compila y prepara el template
        getComentarios();
    });
function getComentarios() {
  
    let loc = window.location;
    let idM = (loc.pathname.substr((loc.pathname.lastIndexOf('/') + 1)-loc.pathname.length));//Obtiene el idMateria de la URL

    fetch("api/comentario/" + idM)
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
    //document.querySelector("#comentarios-container").innerHTML = html;

//    let loc = window.location;
//    let idM = (loc.pathname.substr((loc.pathname.lastIndexOf('/') + 1)-loc.pathname.length));//Obtiene el idMateria de la URL
//    console.log(idM);

//    let baseUrl = "api/comentario"
//    let searchParams = new URLSearchParams(context);
//    let url = `${baseUrl}?${searchParams}`;
//    console.log(url)

//    for (let data of jsonTareas) {
//      if (idM == data.idMateria){
        //document.querySelector("#comentarios-container").innerHTML += "<p>Materia:" + data.nombreMateria + "</p><p>comentario:" + data.comentario + "</p>";
        document.querySelector("#comentarios-container").innerHTML += html;
//  }
//}

}
