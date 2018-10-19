{include file="header.tpl"}

<h1>{$Titulo}</h1>

    <div class="container">
      <div class="caja">
        <h2>Edicion de Modalidad</h2>
        <form method="post" action="{$home}/GuardarEditarModalidad">
            <input type="hidden" class="form-control" id="idForm" name="idForm" value="{$Modalidad["idModalidad"]}">
            <div class="form-group">
                <label for="tituloForm">Nombre modalidad</label>
                <input type="text" class="form-control" id="tituloForm" name="tituloForm"
                       value="{$Modalidad["nombreModalidad"]}">
            </div>


            <button type="submit" class="btn btn-primary">Editar Modalidad</button>
        </form>
    </div>
</div>
{include file="footer.tpl"}
