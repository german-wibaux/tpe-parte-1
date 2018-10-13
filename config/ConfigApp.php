<?php

// define('HOME', 'Location: //'.$_SERVER["SERVER_NAME"] . dirname($_SERVER["PHP_SELF"]));
// define('LOGIN', 'Location: //'.$_SERVER["SERVER_NAME"] . dirname($_SERVER["PHP_SELF"]). '/login');
// define('LOGOUT', 'Location: //'.$_SERVER["SERVER_NAME"] . dirname($_SERVER["PHP_SELF"]). '/logout');


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
