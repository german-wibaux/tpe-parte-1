{include file="header.tpl"}


<div class="container">


    <h1>{$Titulo}</h1>

    <div class="container">
        <ul class="list-group">
              {foreach from=$Materias item=materia}
                {* {if $materia['anio'] == 1 && $materia['division'] == 1} *}
                <div class="caja">

                  <p>{$materia['nombreMateria']}</p>
                  <p>{$materia['descripcionMateria']}</p>
                  <p>Año: {$materia['anio']}°
                  Division: {$materia['division']}°</p>
                </div>

                {* {/if} *}
              {/foreach}

        </ul>


</div>




{include file="footer.tpl"}
