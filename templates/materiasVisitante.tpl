{include file="header.tpl"}


    <div class="container">




    <h1>{$Titulo}</h1>

    <div class="container">
        <ul class="list-group">
              {$vModalidad = ''}
              {$vAnio = ''}
              {$vDivision = ''}
              <div class="caja">

              {foreach from=$Materias item=materia}
                {* {if $materia['anio'] == 1 && $materia['division'] == 1} *}


                  {if $materia['nombreModalidad'] != $vModalidad}
                    {if $vModalidad != ''}
                      </div>
                      <div class="caja">

                    {/if}

                      <p class="mod">{$materia['nombreModalidad']}</p>
                  {/if}

                  {if $materia['anio'] != $vAnio || $materia['division'] != $vDivision}
                      <p class="mod">Año: {$materia['anio']}°
                      Division: {$materia['division']}°</p>
                  {/if}

                  <p>{$materia['nombreMateria']}</p>
                  <p>{$materia['descripcionMateria']}</p>

                {* {/if} *}
                {$vModalidad = $materia['nombreModalidad']}
                {$vAnio = $materia['anio']}
                {$vDivision = $materia['division']}

              {/foreach}
            </div>

        </ul>


</div>




{include file="footer.tpl"}
