<?php
session_start();
class LoginView
{
  private $Smarty;
  private $username;
  function __construct()
  {
    $this->Smarty = new Smarty();
    // $this->basehref = '//'.$_SERVER['SERVER_NAME'] 
    //         .dirname($_SERVER['PHP_SELF']).'/';
    $this->username = $_SESSION['User'];   
  }

  

  function mostrarLogin($message = ''){
  
    $this->Smarty->assign('Titulo',"Login"); // El 'Titulo' del assign puede ser cualquier valor
    $this->Smarty->assign('Message',$message); // El 'Titulo' del assign puede ser cualquier valor
    $this->Smarty->assign('username',$this->username);
    $this->Smarty->display('templates/login.tpl');
  }

  

}

 ?>
