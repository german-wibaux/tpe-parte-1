<?php

class ConfigApp
{
    public static $ACTION = 'action';
    public static $PARAMS = 'params';
    public static $ACTIONS = [
      ''=> 'VisitanteController#Home',
      'home'=> 'VisitanteController#Home',
      'materias' => 'VisitanteController#HomeMaterias',
      'administracion' => 'MateriasController#Materias',
      'crear' => 'MateriasController#Modalidades',
      'agregar'=> 'MateriasController#InsertMateria',
      'agregarModalidad'=> 'MateriasController#InsertModalidad',
      'borrar'=> 'MateriasController#BorrarMateria',
      'borrarModalidad'=> 'MateriasController#BorrarModalidad',
      'editar'=> 'MateriasController#EditarMateria',
      'guardarEditar'=> 'MateriasController#GuardarEditarMateria',
      'editarModalidad'=> 'MateriasController#EditarModalidad',
      'MostrarModalidad'=> 'MateriasController#VerModalidad',
      'GuardarEditarModalidad'=> 'MateriasController#GuardarEditarModalidad',
      'login'=> 'LoginController#login',
      'logout'=> 'LoginController#logout',
      'verificarLogin' => 'LoginController#verificarLogin'
    ];

}

 ?>
