<?php

class ConfigApi
{
    public static $RESOURCE = 'resource';
    public static $PARAMS = 'params';
    public static $RESOURCES = [
      'materia#GET'=> 'MateriasApiController#GetMaterias',
      'materia#DELETE'=> 'MateriasApiController#DeleteMateria',
      'materia#POST'=> 'MateriasApiController#InsertMateria',
      'materia#PUT'=> 'MateriasApiController#UpdateMateria'
    ];

}

 ?>
