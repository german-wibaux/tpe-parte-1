<?php
session_start();
class VisitanteView 
{
  private $Smarty;

  function __construct()
  {
    $this->Smarty = new Smarty();
    $this->username = $_SESSION['User'];
  }

  function MostrarMaterias($Titulo, $Materias){

    $this->Smarty->assign('Lista de materias',$Titulo); 
    $this->Smarty->assign('Materias',$Materias);
    
    $this->Smarty->display('templates/materiasVisitante.tpl');
  }

  function mostrarHome($message = ''){
  
    $this->Smarty->assign('Titulo',"Home"); 
    $this->Smarty->assign('Message',$message); 
    $this->Smarty->assign('username',$this->username);
    $this->Smarty->display('templates/home.tpl');
  }

  

}

 ?>
