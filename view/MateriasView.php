<?php
session_start();
error_reporting(E_ALL ^ E_NOTICE);

require('libs/Smarty.class.php');
/**
 *
 */
class MateriasView
{
  private $Smarty;

  function __construct()
  {
    
    $this->Smarty = new Smarty();
  }

  function MostrarMaterias($Titulo, $Materias, $Modalidades){

    $this->Smarty->assign('Titulo',$Titulo); 
    $this->Smarty->assign('Materias',$Materias);
    $this->Smarty->assign('Modalidades',$Modalidades);
    
    //$smarty->debugging = true;
    $this->Smarty->display('templates/materias.tpl');
  }

  function Home($Titulo){

    $this->Smarty->assign('Home',$Titulo);
    $this->Smarty->display('templates/home.tpl');
  }

  function MostrarEditarMateria($Titulo, $Materia){

    $this->Smarty->assign('Editar materia',$Titulo); 
    $this->Smarty->assign('Materia',$Materia);
    $this->Smarty->assign('home',"//".$_SERVER["SERVER_NAME"] . dirname($_SERVER["PHP_SELF"]));

    $this->Smarty->display('templates/MostrarEditarMateria.tpl');
  }
}

 ?>
