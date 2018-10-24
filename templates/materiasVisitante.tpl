{include file="header.tpl"}


    <div class="container">

    <h1>{$Titulo}</h1>

    <div class="container">
              {$vModalidad = ''}
              {$vAnio = ''}
              {$vDivision = ''}
              <div class="caja">

                <div class="panel-group" id="accordion">
                  {$vModalidad = ''}
                  {$vAnio = ''}
                  {$vDivision = ''}

                  {foreach from=$Materias item=materia}

                    {if $materia['nombreModalidad'] != $vModalidad}
                      <div class="panel panel-default">
                        <div class="panel-heading">
                          <h4 class="panel-title">
                            <a class="accordion" data-toggle="collapse" data-parent="#accordion" href="#accMod{$materia['idModalidad']}">{$materia['nombreModalidad']}</a>
                          </h4>
                        </div>
                    {/if}

                        <div id="accMod{$materia['idModalidad']}" class="panel-collapse collapse in">

                          <div class="panel-body">
                            {if $materia['anio'] != $vAnio || $materia['division'] != $vDivision}
                                <p class="mod">Año: {$materia['anio']}°
                                Division: {$materia['division']}°</p>
                            {/if}

                            <p>{$materia['nombreMateria']}</p>

                          </div>
                        </div>
                    {if $materia['nombreModalidad'] != $vModalidad}

                      </div>
                    {/if}

                    {$vModalidad = $materia['nombreModalidad']}
                    {$vAnio = $materia['anio']}
                    {$vDivision = $materia['division']}

                  {/foreach}
                </div>
            </div>





</div>




{include file="footer.tpl"}
