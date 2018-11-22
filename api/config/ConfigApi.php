<?php

class ConfigApi
{
    public static $RESOURCE = 'resource';
    public static $PARAMS = 'params';
    public static $RESOURCES = [
      'comentario#GET'=> 'MateriasApiController#GetComentarios',
      'materia#DELETE'=> 'MateriasApiController#DeleteMateria',
      'comentario#POST'=> 'MateriasApiController#InsertComentario',
      'materia#PUT'=> 'MateriasApiController#UpdateMateria'
    ];

}

 ?>
