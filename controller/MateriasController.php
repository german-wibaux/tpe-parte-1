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

  function Materias(){
      $Materias = $this->model->GetMaterias();
      $this->view->Mostrar($this->Titulo, $Materias);
  }
  function Modalidades(){
    $Modalidades = $this->model->GetModalidades();
    $this->view->Mostrar($this->Titulo, $Modalidades);
  }

  function InsertMateria(){
    $nombre = $_POST["nombreForm"];
    $modalidad = $_POST["modalidadForm"];
    $descripcion = $_POST["descripcionForm"];
    $anio = $_POST["anioForm"];
    $division = $_POST["divisionForm"];

    $this->model->InsertarMateria($nombre,$modalidad,$descripcion,$anio,$division);

    header("Location: http://".$_SERVER["SERVER_NAME"] . dirname($_SERVER["PHP_SELF"]));
  }

  function BorrarMateria($param){
    $this->model->BorrarMateria($param[0]);
    header("Location: http://".$_SERVER["SERVER_NAME"] . dirname($_SERVER["PHP_SELF"]));
  }

  // function estaLogueado () {
  //   echo $_SESSION["User"];
  // }

}

 ?>
