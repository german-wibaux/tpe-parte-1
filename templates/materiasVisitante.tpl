{include file="header.tpl"}

    
    <div class="container">
      
    
    
    
    <h1>{$Titulo}</h1>

    <div class="container">
      <ul class="list-group">
            {foreach from=$Materias item=materia}
              {* {if $materia['anio'] == 1 && $materia['division'] == 1} *}
                <li class="list-group-item">{$materia['nombreMateria']} ----- {$materia['descripcionMateria']}
              {* {/if} *}
            {/foreach}
      </ul>
    
</div>
    


    
{include file="footer.tpl"}
