{include file="header.tpl"}

    <h1>{$Titulo}</h1>

    <div class="container">
      <ul class="list-group">
            {foreach from=$Materias item=materia}
              {if $materia['anio'] == 1 && $materia['division'] == 1}
                <li class="list-group-item">{$materia['nombreMateria']} ----- {$materia['descripcionMateria']}<a href="borrar/{$materia['idMateria']}">BORRAR</a></li>
              {/if}
            {/foreach}
      </ul>
    </div>

    <div class="container">
      <h2>Formulario</h2>
      <form method="post" action="agregar">
        <div class="form-group">
          <label for="tituloForm">Titulo</label>
          <input type="text" class="form-control" id="tituloForm" name="tituloForm">
        </div>
        <div class="form-group">
          <label for="descripcionForm">Descripcion</label>
          <input type="text" class="form-control" id="descripcionForm" name="descripcionForm">
        </div>
        <div class="form-group form-check">
          <input type="checkbox" class="form-check-input" id="completadaForm" name="completadaForm">
          <label class="form-check-label" for="completadaForm">Completada?</label>
        </div>
        <button type="submit" class="btn btn-primary">Crear Tarea</button>
      </form>
    </div>
{include file="footer.tpl"}
