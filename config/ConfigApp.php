<?php

class ConfigApp
{
    public static $ACTION = 'action';
    public static $PARAMS = 'params';
    public static $ACTIONS = [
      ''=> 'MateriasController#Home',
      'home'=> 'MateriasController#Home',
      // 'javito'=> 'TareasController#Home',
      // 'borrar'=> 'TareasController#BorrarTarea',
      // 'completada'=> 'TareasController#CompletarTarea',
      // 'editar'=> 'TareasController#EditarTarea',
      // 'guardarEditar'=> 'TareasController#GuardarEditarTarea',
      // 'mostrarUsuarios'=> 'UsuarioController#MostrarUsuario',
      'login'=> 'LoginController#login',
      'logout'=> 'LoginController#logout',
      'verificarLogin' => 'LoginController#verificarLogin'
    ];

}

 ?>
