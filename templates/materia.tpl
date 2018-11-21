{include file="header.tpl"}


<div class="container">

  <h1>{$Materia['nombreMateria'] }</h1>

  <div class="container">
    <div class="caja">
      <div id="contenido" class="container">
        <p>Descripcion: {$Materia['descripcionMateria'] }</p>
        <p>Año: {$Materia['anio'] }°
         {$Materia['division'] }°</p>

      </div>
      <div id="comentarios-container" class="container">

      </div>

      <div id="agregar-comentario" class="container">
        Agregue sus comentarios
        <div class="row">
            <div class="col-6">
              <textarea class="form-control" rows="3" id="txtComentarios"></textarea>
            </div>
            <div class="col-4">
              <label for="selPuntaje">Indique Valoracion</label>
              <select class="form-control" id="selPuntaje">
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
              </select>
          </div>
        </div>

        <button type="button" class="btn btn-default" id="btnAgregar">Enviar</button>
        <!-- Final fila -->


      </div>

    </div>
  </div>

</div>




{include file="footer.tpl"}
