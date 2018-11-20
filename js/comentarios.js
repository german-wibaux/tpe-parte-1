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
  let pathName = loc.pathname.substring(0, loc.pathname.lastIndexOf('/') + 1);
  console.log(loc.href.substring(0, loc.href.length - ((loc.pathname + loc.search + loc.hash).length - pathName.length)));

  console.log(loc.pathname.substring(0, loc.pathname.lastIndexOf('/') + 1));
  console.log("-----");

  console.log(loc.pathname);
  console.log(loc.pathname.lastIndexOf('/') + 1);
  console.log(loc.pathname.length);
  console.log(loc.pathname.substr((loc.pathname.lastIndexOf('/') + 1)-loc.pathname.length));
  let idM = (loc.pathname.substr((loc.pathname.lastIndexOf('/') + 1)-loc.pathname.length));

    fetch("api/comentario")
    .then(response => response.json())
    .then(jsonTareas => {
        mostrarTareas(jsonTareas);
        getData();
    })
    .catch(function(e){
      console.log(e)
    })

}

function mostrarTareas(jsonTareas) {
    let context = { // como el assign de smarty
        comentarios: jsonTareas,
        otra: "Comentarios"
    }
//    let idM=context.comentarios;
//    console.log(idM);
    console.log("idM");
    console.log(jsonTareas.idMateria);

    let html = templateMateriasVisitante(context);
    //document.querySelector("#comentarios-container_"+idM).innerHTML = html;
    document.querySelector("#comentarios-container").innerHTML = html;

//    for (let dat of jsonTareas) {
//      document.querySelector("#comentarios-container").innerHTML = "<p>" + dat.nombreMateria + "</p>";
//      console.log(dat.idMateria);
//    }

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

    let loc = window.location;
    let idM = (loc.pathname.substr((loc.pathname.lastIndexOf('/') + 1)-loc.pathname.length));

    for (let data of json) {
      if (idM == data.idMateria){
        contenedor2.innerHTML += "<p>Materia:" + data.nombreMateria + "</p><p>comentario:" + data.comentario + "</p>";

      }
    }


  })
  .catch(function(e){
    console.log(e)
  })
}
