{include file="header.tpl"}


<div class="container">
    <h1>{$Titulo}</h1>


    <div class="caja">


        El área de Educación de Adultos y Adolescentes ofrece una variada oferta educativa para personas mayores de 18
        años. Nunca es tarde para terminar tus estudios,disponemos de las siguientes modalidades a las que podes
        inscribirte de manera online:</br>

        {foreach from=$Modalidades item=modalidad}
            <li>{$modalidad['nombreModalidad']}</li>
        {/foreach}
        Finaliza la secundaria en el Centro Educativo de Nivel Secundario más cercano a tu domicilio.

    </div>


</div>


{include file="footer.tpl"}
