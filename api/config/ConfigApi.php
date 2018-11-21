<?php

class ConfigApi
{
    public static $RESOURCE = 'resource';
    public static $PARAMS = 'params';
    public static $RESOURCES = [
      'comentario#GET'=> 'MateriasApiController#GetComentarios',
      'materia#DELETE'=> 'MateriasApiController#DeleteMateria',
      'materia#POST'=> 'MateriasApiController#InsertComentario',
      'materia#PUT'=> 'MateriasApiController#UpdateMateria',
      'materia#GET'=> 'MateriasApiController#GetComentarios'

    ];

}

 ?>
