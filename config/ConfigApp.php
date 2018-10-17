<?php

class ConfigApp
{
    public static $ACTION = 'action';
    public static $PARAMS = 'params';
    public static $ACTIONS = [
      ''=> 'MateriasController#Home',
      'home'=> 'MateriasController#Home',
      'materias' => 'MateriasController#Materias',
      'crear' => 'MateriasController#Modalidades',
      'agregar'=> 'MateriasController#InsertMateria',
      'agregarModalidad'=> 'MateriasController#InsertModalidad',
      'borrar'=> 'MateriasController#BorrarMateria',
      'borrarModalidad'=> 'MateriasController#BorrarModalidad',
      // 'completada'=> 'TareasController#CompletarTarea',
      // 'editar'=> 'TareasController#EditarTarea',
      'editarModalidad'=> 'MateriasController#EditarModalidad',
      'GuardarEditarModalidad'=> 'MateriasController#GuardarEditarModalidad',
      // 'mostrarUsuarios'=> 'UsuarioController#MostrarUsuario',
      'login'=> 'LoginController#login',
      'logout'=> 'LoginController#logout',
      'verificarLogin' => 'LoginController#verificarLogin'
    ];

}

 ?>
