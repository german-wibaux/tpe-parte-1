{include file="header.tpl"}

<h1>{$Titulo}</h1>


    <div class="container">
      <div class="caja">
        <h2>Editar Materias</h2>
        <form method="post" action="{HOME}/guardarEditar">
          <input type="hidden" class="form-control" id="idForm" name="idForm" value="{$Materia["idMateria"]}">
          <div class="form-group">
            <label for="tituloForm">Nombre materia</label>
            <input type="text" class="form-control" id="tituloForm" name="tituloForm" value="{$Materia["nombreMateria"]}">
          </div>

          <div class="form-group">
            <label for="modalidadForm">Modalidad</label>
              <select class="form-control" id="modalidadForm" name="modalidadForm">
                {foreach from=$Modalidades item=modalidad}

                 {if  $modalidad['idModalidad'] == {$Materia['idModalidad']} }
                   <option  selected value="{$modalidad['idModalidad']}">{$modalidad['nombreModalidad']}</option>
                 {/if}

                  <option value="{$modalidad['idModalidad']}">{$modalidad['nombreModalidad']}</option>
                {/foreach}

            </select>
          </div>

          <div class="form-group">
            <label for="descripcionForm">Descripcion</label>
            <input type="text" class="form-control" id="descripcionForm" name="descripcionForm" value="{$Materia["descripcionMateria"]}">
          </div>

          <div class="form-group">
            <label for="anioForm">Año</label>
              <select class="form-control" id="anioForm" name="anioForm"  >
                <option  selected disabled hidden>{$Materia["anio"]}</option>
                {$index=1}
                {foreach from=$arregloAnios item=curr_id}
                  {if  $index == {$Materia['anio']} }
                    <option selected value="{$index}">{$curr_id}</option>
                  {/if}

                    <option value="{$index}">{$curr_id}</option>
                    {$index++}

                {/foreach}

            </select>
          </div>

          <div class="form-group">
            <label for="divisionForm">Division</label>
              <select class="form-control" id="divisionForm" name="divisionForm" value="{$Materia["division"]}" >
                
                {$index=1}
                {foreach from=$arregloDivision item=curr_id}
                  {if  $index == {$Materia['division']} }
                    <option selected value="{$index}">{$curr_id}</option>
                  {/if}
                    <option value="{$index}">{$curr_id}</option>
                    {$index++}

                {/foreach}

            </select>
          </div>

          <button type="submit" class="btn btn-primary">Editar Materia</button>
        </form>
    </div>
</div>
{include file="footer.tpl"}
