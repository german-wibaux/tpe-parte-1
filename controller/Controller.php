<?php 

define('HOME', '//'.$_SERVER['SERVER_NAME'] . dirname($_SERVER['PHP_SELF']).'/');
define('HOMEMATERIAS', '//'.$_SERVER['SERVER_NAME'] . dirname($_SERVER['PHP_SELF']).'/home-materias');
define('LOGIN', '//'.$_SERVER['SERVER_NAME'] . dirname($_SERVER['PHP_SELF']).'/login');
define('LOGOUT', '//'.$_SERVER['SERVER_NAME'] . dirname($_SERVER['PHP_SELF']).'/logout');

class Controller {

  protected $view;
  protected $model;

  public function __construct() {
      
  }

}
