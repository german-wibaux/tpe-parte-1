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
        //mostrarTareas(jsonTareas);
        getData(jsonTareas);
    })



}

function mostrarTareas(jsonTareas) {
    let context = { // como el assign de smarty
        comentarios: jsonTareas,
        otra: "Comentarios"
    }
//    let idM=context.comentarios;
//    console.log(idM);
    console.log(context.comentarios);

    let html = templateMateriasVisitante(context);
    //document.querySelector("#comentarios-container_"+idM).innerHTML = html;
    document.querySelector("#comentarios-container").innerHTML = html;
}


function getData(){
  console.log("trayendo");
  fetch("api/comentario", {
    method: "GET",
    mode: 'cors',
  }).then(function(r){
    if(!r.ok){
      console.log("error")
    }
    return r.json()
  })
  .then(function(json) {
    console.log(json);
    let contenedor2 = document.querySelector("#contenido");
    console.log("json.comentarios");
    console.log(json);
    for (let data of json) {
      
      contenedor2.innerHTML += "<p>Materia:" + data.nombreMateria + "</p><p>comentario:" + data.comentario + "</p>";
    }


  })
  .catch(function(e){
    console.log(e)
  })
}
