<?php
session_start();
class LoginView
{
  private $Smarty;
  private $basehref;

  function __construct()
  {
    $this->Smarty = new Smarty();

    $this->basehref = '//'.$_SERVER['SERVER_NAME']
        .dirname($_SERVER['PHP_SELF']).'/';


  }



  function mostrarLogin($message = ''){

    $this->Smarty->assign('Titulo',"Login");
    $this->Smarty->assign('Message',$message);
    $this->Smarty->display('templates/login.tpl');
    $this->Smarty->assign("basehref", $this->basehref);
  }


  function mostrarRegistro($message = 'Registro de Nuevo Usuario'){

    $this->Smarty->assign('Titulo',"Registro");
    $this->Smarty->assign('Message',$message);
    $this->Smarty->display('templates/register.tpl');
    $this->Smarty->assign("basehref", $this->basehref);
  }


}

 ?>
