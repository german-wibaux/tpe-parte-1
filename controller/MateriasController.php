<?php

require_once  "./view/MateriasView.php";
require_once  "./model/MateriasModel.php";
include_once 'controller/Controller.php';
// require_once  "SecuredController.php";

class MateriasController extends Controller
{

  private $Titulo;

  function __construct()
  {

    //parent::__construct();

    $this->view = new MateriasView();
    $this->model = new MateriasModel();
    $this->Titulo = "Lista de Materias";
  }

  function Home(){
      $Materias = $this->model->GetMaterias();
      $this->view->Mostrar($this->Titulo, $Materias);
  }

  // function estaLogueado () {
  //   echo $_SESSION["User"];
  // }

}

 ?>
