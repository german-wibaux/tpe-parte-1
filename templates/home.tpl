{include file="header.tpl"}


<div class="container">
    <h1>{$Titulo}</h1>


    <div class="caja">


        El área de Educación de Adultos y Adolescentes ofrece una variada oferta educativa para personas mayores de 18
        años. Nunca es tarde para terminar tus estudios,disponemos de los siguientes bachilleratos a los que podes
        inscribirte de manera online:</br>

        {foreach from=$Modalidades item=modalidad}
            <li><a class="mod" href="MostrarModalidad/{$modalidad['idModalidad']}">{$modalidad['nombreModalidad']}</a></li>
        {/foreach}
        Finaliza la secundaria en el Centro Educativo de Nivel Secundario más cercano a tu domicilio.

    </div>


</div>


{include file="footer.tpl"}
