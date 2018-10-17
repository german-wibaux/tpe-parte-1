<?php

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

  function Mostrar($Titulo, $Materias){

    $this->Smarty->assign('Titulo',$Titulo); // El 'Titulo' del assign puede ser cualquier valor
    $this->Smarty->assign('Materias',$Materias);
    //$smarty->debugging = true;
    $this->Smarty->display('templates/materias.tpl');
    
  }
/*
  function MostrarEditarTarea($Titulo, $Tarea){

    $this->Smarty->assign('Titulo',$Titulo); // El 'Titulo' del assign puede ser cualquier valor
    $this->Smarty->assign('Tarea',$Tarea);
    $this->Smarty->assign('home',"http://".$_SERVER["SERVER_NAME"] . dirname($_SERVER["PHP_SELF"]));

    //$smarty->debugging = true;
    $this->Smarty->display('templates/MostrarEditarTarea.tpl');
  }
*/
}

 ?>
