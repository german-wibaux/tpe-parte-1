<?php
session_start();
class VisitanteView 
{
  private $Smarty;
    private $basehref;

  function __construct()
  {
    $this->Smarty = new Smarty();

    $this->basehref = '//'.$_SERVER['SERVER_NAME']
        .dirname($_SERVER['PHP_SELF']).'/';
  }

  function MostrarMaterias($Titulo, $Materias){

    $this->Smarty->assign('Lista de materias',$Titulo); 
    $this->Smarty->assign('Materias',$Materias);
      $this->Smarty->assign("basehref", $this->basehref);
    $this->Smarty->display('templates/materiasVisitante.tpl');
  }

  function mostrarHome($message = ''){
  
    $this->Smarty->assign('Titulo',"Home"); 
    $this->Smarty->assign('Message',$message);
    $this->Smarty->assign("basehref", $this->basehref);
    $this->Smarty->display('templates/home.tpl');
  }

  

}

 ?>
