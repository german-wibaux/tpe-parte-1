<?php

class ConfigApi
{
    public static $RESOURCE = 'resource';
    public static $PARAMS = 'params';
    public static $RESOURCES = [
      'comentario#GET'=> 'MateriasApiController#GetComentarios',
      'comentario#DELETE'=> 'MateriasApiController#DeleteComentario',
      'comentario#POST'=> 'MateriasApiController#InsertComentario',
      'materia#PUT'=> 'MateriasApiController#UpdateMateria'
    ];

}

 ?>
