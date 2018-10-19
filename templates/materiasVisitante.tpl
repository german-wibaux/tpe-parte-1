{include file="header.tpl"}


<div class="container">


    <h1>{$Titulo}</h1>

    <div class="container">
        <ul class="list-group">
            {foreach from=$Materias item=materia}

                <li class="list-group-item">{$materia['nombreMateria']} ----- {$materia['descripcionMateria']}

            {/foreach}
        </ul>

</div>


{include file="footer.tpl"}
