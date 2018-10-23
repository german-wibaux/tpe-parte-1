{include file="header.tpl"}


    <div class="container">




    <h1>{$Titulo}</h1>

    <div class="container">
        <ul class="list-group">
              {$vModalidad = ''}
              {$vAnio = ''}
              {$vDivision = ''}

              {foreach from=$Materias item=materia}
                {* {if $materia['anio'] == 1 && $materia['division'] == 1} *}

                <div class="caja">

                  {if $materia['nombreModalidad'] != $vModalidad}
                      <p class="mod">{$materia['nombreModalidad']}</p>
                  {/if}

                  {if $materia['anio'] != $vAnio || $materia['division'] != $vDivision}
                      <p class="mod">Año: {$materia['anio']}°
                      Division: {$materia['division']}°</p>
                  {/if}

                  <p>{$materia['nombreMateria']}</p>
                  <p>{$materia['descripcionMateria']}</p>
                </div>

                {* {/if} *}
                {$vModalidad = $materia['nombreModalidad']}
                {$vAnio = $materia['anio']}
                {$vDivision = $materia['division']}

              {/foreach}

        </ul>


</div>




{include file="footer.tpl"}
