{include file="header.tpl"}

    
    <div class="container">
      
      <h2>Alta de Materias</h2>
      <form method="post" action="agregar">
        <div class="form-group">
          <label for="nombreForm">Nombre</label>
          <input type="text" class="form-control" id="nombreForm" name="nombreForm">
        </div>
        
        <div class="form-group">
          <label for="modalidadForm">Modalidad</label>
            <select class="form-control" id="modalidadForm" name="modalidadForm">              
              {foreach from=$Modalidades item=modalidad}
                <option value="{$modalidad['idModalidad']}">{$modalidad['nombreModalidad']}</option>
              {/foreach}
          </select>
        </div>
        <div class="form-group">
          <label for="descripcionForm">Descripcion</label>
          <input type="text" class="form-control" id="descripcionForm" name="descripcionForm">
        </div>
        <div class="form-group">
          <label for="anioForm">Año</label>
            <select class="form-control" id="anioForm" name="anioForm">
              <option value="1">Primer Año</option>
              <option value="2">Segundo Año</option>
              <option value="3">Tercer Año</option>
          </select>
        </div>
        <div class="form-group">
          <label for="divisionForm">Division</label>
            <select class="form-control" id="divisionForm" name="divisionForm">
              <option value="1">Primera</option>
              <option value="2">Segunda</option>
              <option value="3">Tercera</option>
          </select>
        </div>

        <button type="submit" class="btn btn-primary">Crear Tarea</button>
      </form>
    
    
    
    <h1>{$Titulo}</h1>

    <div class="container">
      <ul class="list-group">
            {foreach from=$Materias item=materia}
              {* {if $materia['anio'] == 1 && $materia['division'] == 1} *}
                <li class="list-group-item">{$materia['nombreMateria']} ----- {$materia['descripcionMateria']}<a href="editar/{$materia['idMateria']}">EDITAR</a><a href="borrar/{$materia['idMateria']}">BORRAR</a></li>
              {* {/if} *}
            {/foreach}
      </ul>
    
</div>
    


    
{include file="footer.tpl"}
