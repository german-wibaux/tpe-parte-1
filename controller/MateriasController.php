<?php

require_once  "./view/TareasView.php";
require_once  "./model/UsuarioModel.php";
// require_once  "SecuredController.php";

class MateriasController 
{
  private $view;
  private $model;
  private $Titulo;

  function __construct()
  {
  
    //parent::__construct();
    
    $this->view = new TareasView();
    $this->model = new UsuarioModel();
    $this->Titulo = "Lista de Cursos";
  }

  function Home(){       
      $Tareas = $this->model->GetUsuario();
      $this->view->Mostrar($this->Titulo, $Tareas);
  }
  
}

 ?>
