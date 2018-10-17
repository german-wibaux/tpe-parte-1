<?php
session_start();
class VisitanteView 
{
  private $Smarty;
  private $username;

  function __construct()
  {
    $this->Smarty = new Smarty();
    $this->username = $_SESSION['User'];
  }

  function MostrarMaterias($Titulo, $Materias){

    $this->Smarty->assign('Lista de materias',$Titulo); 
    $this->Smarty->assign('Materias',$Materias);
    //$this->Smarty->assign('Modalidades',$Modalidades);
    $this->Smarty->assign('username',$this->username);
    
    //$smarty->debugging = true;
    $this->Smarty->display('templates/materiasVisitante.tpl');
  }

  function mostrarHome($message = ''){
  
    $this->Smarty->assign('Titulo',"Home"); // El 'Titulo' del assign puede ser cualquier valor
    $this->Smarty->assign('Message',$message); // El 'Titulo' del assign puede ser cualquier valor
    $this->Smarty->assign('username',$this->username);
    $this->Smarty->display('templates/home.tpl');
  }

  

}

 ?>
