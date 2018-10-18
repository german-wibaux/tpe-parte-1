{include file="header.tpl"}

    <h1>{$Titulo}</h1>


    <div class="container">
      <div class="caja">
        <h2>Formulario</h2>
        <form method="post" action="{$home}/guardarEditar">
          <input type="hidden" class="form-control" id="idForm" name="idForm" value="{$Materia["idMateria"]}">
          <div class="form-group">
            <label for="tituloForm">Nombre materia</label>
            <input type="text" class="form-control" id="tituloForm" name="tituloForm" value="{$Materia["nombreMateria"]}">
          </div>

          <div class="form-group">
            <label for="modalidadForm">Modalidad</label>
              <select class="form-control" id="{$modalidad['idModalidad']}" name="modalidadForm" value="{$Materia["idModalidad"]}" >
                {* <option value="1">Modalidad 1</option>
                  <option value="2">Modalidad 2</option>
                  <option value="3">Modalidad 3</option> *}
                {foreach from=$Modalidades item=modalidad}
                  <option value="{$modalidad['idModalidad']}">{$modalidad['nombreModalidad']}</option>
                {/foreach}

            </select>
  <!--          <input type="text" class="form-control" id="descripcionForm" name="descripcionForm"> -->
          </div>

          <div class="form-group">
            <label for="descripcionForm">Descripcion</label>
            <input type="text" class="form-control" id="descripcionForm" name="descripcionForm" value="{$Materia["descripcionMateria"]}">
          </div>

          <div class="form-group">
            <label for="anioForm">Año</label>
              <select class="form-control" id="anioForm" name="anioForm" value="{$Materia["anio"]}" >
                <option value="1">Primer Año</option>
                <option value="2">Segundo Año</option>
                <option value="3">Tercer Año</option>
            </select>
          </div>

          <div class="form-group">
            <label for="divisionForm">Division</label>
              <select class="form-control" id="divisionForm" name="divisionForm" value="{$Materia["division"]}" >
                <option value="1">Primera</option>
                <option value="2">Segunda</option>
                <option value="3">Tercera</option>
            </select>
          </div>

          <button type="submit" class="btn btn-primary">Editar Materia</button>
        </form>
      </div>
    </div>
{include file="footer.tpl"}
