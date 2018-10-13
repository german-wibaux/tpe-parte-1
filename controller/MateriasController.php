<?php

require_once  "./view/MateriasView.php";
require_once  "./model/UsuarioModel.php";
include_once 'controller/Controller.php';
// require_once  "SecuredController.php";

class MateriasController extends Controller
{
  
  private $Titulo;

  function __construct()
  {
  
    //parent::__construct();
    
    $this->view = new MateriasView();
    $this->model = new UsuarioModel();
    $this->Titulo = "Lista de Cursos";
  }

  function Home(){       
      $Tareas = $this->model->GetUsuario();
      $this->view->Mostrar($this->Titulo, $Tareas);
  }

  // function estaLogueado () {
  //   echo $_SESSION["User"];
  // }
  
}

 ?>
