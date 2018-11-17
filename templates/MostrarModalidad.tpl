{include file="header.tpl"}


    <div class="container">

    <h1>{$Titulo}</h1>

    <div class="container">
              <div class="caja">

                <div class="panel-group" id="accordion">
                  {$vAnio = ''}
                  {$vDivision = ''}

                  {foreach from=$ModalidadxMateria item=materia}

                    {if $materia['anio'] != $vAnio}
                      {if $materia['anio'] == 1}
                        {$nAnio = 'Primer Año'}
                      {/if}
                      {if $materia['anio'] == 2}
                        {$nAnio = 'Segundo Año'}
                      {/if}
                      {if $materia['anio'] == 3}
                        {$nAnio = 'Tercer Año'}
                      {/if}

                      <div class="panel panel-default">
                        <div class="panel-heading">
                          <h4 class="panel-title">
                            <a class="accordion" data-toggle="collapse" data-parent="#accordion" href="#accMod{$materia['anio']}">{$nAnio}</a>
                          </h4>
                        </div>
                    {/if}

                        <div id="accMod{$materia['anio']}" class="panel-collapse collapse in">

                          <div class="panel-body">
                            {if $materia['anio'] != $vAnio || $materia['division'] != $vDivision}
                                <p class="mod">Año: {$materia['anio']}°
                                Division: {$materia['division']}°</p>
                            {/if}

                            <p>{$materia['nombreMateria']}</p>

                          </div>
                        </div>
                    {if $materia['anio'] != $vAnio}

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
