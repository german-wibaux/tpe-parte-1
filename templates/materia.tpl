{include file="header.tpl"}


<div class="container">

  <h1>{$Materia['nombreMateria'] }</h1>

  <div class="container">
    <div class="caja">
      <div id="contenido" class="container">
        <p>Descripcion: {$Materia['descripcionMateria'] }</p>
          <p>Año: {$Materia['anio'] }</p>
        <p>Division: {$Materia['division'] }</p>
      </div>
      <div id="comentarios-container" class="container">

    </div>

    </div>
  </div>

</div>




{include file="footer.tpl"}
