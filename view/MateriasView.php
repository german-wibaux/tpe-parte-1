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

  function Mostrar($Titulo, $Materias){

    $this->Smarty->assign('Titulo',$Titulo); 
    $this->Smarty->assign('Materias',$Materias);
    $this->Smarty->assign('username',$this->username);
    //$smarty->debugging = true;
    $this->Smarty->display('templates/materias.tpl');
  }

  function Home($Titulo){

    $this->Smarty->assign('Home',$Titulo);
    $this->Smarty->assign('username',$this->username);
    $this->Smarty->display('templates/home.tpl');
  }

  function MostrarEditarMateria($Titulo, $Materia){

    $this->Smarty->assign('Editar materia',$Titulo); 
    $this->Smarty->assign('Materia',$Materia);
    $this->Smarty->assign('home',"http://".$_SERVER["SERVER_NAME"] . dirname($_SERVER["PHP_SELF"]));

    $this->Smarty->display('templates/MostrarEditarMateria.tpl');
  }
}

 ?>
