<?php
error_reporting(E_ALL ^ E_NOTICE);
require('libs/Smarty.class.php');
/**
 *
 */
class MateriasView
{
  private $Smarty;
  private $username;

  function __construct()
  {
    session_start();
    $this->Smarty = new Smarty();
    $this->username = $_SESSION['User'];
  }

  function Mostrar($Titulo, $Tareas){

    $this->Smarty->assign('Titulo',$Titulo); // El 'Titulo' del assign puede ser cualquier valor
    $this->Smarty->assign('Tareas',$Tareas);
    $this->Smarty->assign('username',$this->username);
    //$smarty->debugging = true;
    $this->Smarty->display('templates/home.tpl');
  }

  // function MostrarEditarTarea($Titulo, $Tarea){

  //   $this->Smarty->assign('Titulo',$Titulo); // El 'Titulo' del assign puede ser cualquier valor
  //   $this->Smarty->assign('Tarea',$Tarea);
  //   $this->Smarty->assign('home',"http://".$_SERVER["SERVER_NAME"] . dirname($_SERVER["PHP_SELF"]));

  //   //$smarty->debugging = true;
  //   $this->Smarty->display('templates/MostrarEditarTarea.tpl');
  // }

}

 ?>
