<?php
//session_start();
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
    $this->Smarty = new Smarty();
    $this->username = $_SESSION['User'];
  }

  function MostrarMaterias($Titulo, $Materias, $Modalidades){

    $this->Smarty->assign('Titulo',$Titulo);
    $this->Smarty->assign('Materias',$Materias);
    $this->Smarty->assign('Modalidades',$Modalidades);
    $this->Smarty->assign('username',$this->username);
    //$smarty->debugging = true;
    $this->Smarty->display('templates/materias.tpl');
  }

  function Home($Titulo, $Modalidades){

    $this->Smarty->assign('Home',$Titulo);
    $this->Smarty->assign('Modalidades',$Modalidades);
    $this->Smarty->assign('username',$this->username);
    $this->Smarty->display('templates/home.tpl');

  }

  function MostrarEditarMateria($Titulo, $Materia, $Modalidades){

    $this->Smarty->assign('Editar materia',$Titulo);
    $this->Smarty->assign('Materia',$Materia);
    $this->Smarty->assign('Modalidades',$Modalidades);
    $this->Smarty->assign('home',"http://".$_SERVER["SERVER_NAME"] . dirname($_SERVER["PHP_SELF"]));

    $this->Smarty->display('templates/MostrarEditarMateria.tpl');
  }

  function MostrarEditarModalidad($Titulo, $Modalidad){

    $this->Smarty->assign('Editar modalidad',$Titulo);
    $this->Smarty->assign('Modalidad',$Modalidad);
    $this->Smarty->assign('home',"http://".$_SERVER["SERVER_NAME"] . dirname($_SERVER["PHP_SELF"]));

    $this->Smarty->display('templates/MostrarEditarModalidad.tpl');
  }

}

 ?>
