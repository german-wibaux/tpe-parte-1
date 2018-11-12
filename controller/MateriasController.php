<?php

require_once "./view/MateriasView.php";
require_once "./model/MateriasModel.php";
require_once "./model/ModalidadModel.php";
include_once 'controller/Controller.php';
require_once "controller/SecuredController.php";

class MateriasController extends SecuredController
{

  private $Titulo;

  function __construct()
  {

    parent::__construct();

    $this->view = new MateriasView();
    $this->model = new MateriasModel();
    $this->modelModalidades = new ModalidadModel();
    $this->Titulo = "Lista de Materias";
  }

  function Home()
  {

    $Materias = $this->model->GetMaterias();
    $Modalidades = $this->modelModalidades->GetModalidades();
    $this->view->Home($this->Titulo, $Modalidades);

  }

  function Materias()
  {
    $Materias = $this->model->GetMaterias();
    $Modalidades = $this->modelModalidades->GetModalidades();
    $this->view->MostrarMaterias($this->Titulo, $Materias, $Modalidades);
  }
/*
  function Modalidades()
  {
    $Modalidades = $this->modelModalidades->GetModalidades();
    $this->view->Mostrar($this->Titulo, $Modalidades);

  }
*/

  function InsertMateria()
  {
    $nombre = $_POST["nombreForm"];
    $modalidad = $_POST["modalidadForm"];
    $descripcion = $_POST["descripcionForm"];
    $anio = $_POST["anioForm"];
    $division = $_POST["divisionForm"];

//    $this->model->InsertarMateria($nombre,$modalidad,$descripcion,$anio,$division);

    $this->model->InsertarMateria($nombre, $modalidad, $descripcion, $anio, $division);

    header('Location: ' . HOME);
  }

  function BorrarMateria($param)
  {
    $this->model->BorrarMateria($param[0]);
    header("Location: http://" . $_SERVER["SERVER_NAME"] . dirname($_SERVER["PHP_SELF"]));
  }

  function EditarMateria($param)
  {
    $id_materia = $param[0];

    $Materia = $this->model->GetMateria($id_materia);
    $Modalidades = $this->modelModalidades->GetModalidades();
    $this->view->MostrarEditarMateria("Editar Materia", $Materia, $Modalidades);
  }

  function GuardarEditarMateria()
  {
    $id_materia = $_POST["idForm"];

    $titulo = $_POST["tituloForm"];
    $modalidad = $_POST["modalidadForm"];
    $descripcion = $_POST["descripcionForm"];
    $anio = $_POST["anioForm"];
    $division = $_POST["divisionForm"];

    $this->model->GuardarEditarMateria($titulo, $modalidad, $descripcion, $anio, $division, $id_materia);

    header("Location: " . HOME);
  }

  function InsertModalidad()
  {
    $nombre = $_POST["nombreModalidadForm"];
    $this->modelModalidades->InsertarModalidad($nombre);
    header('Location: ' . HOME);
  }

  function BorrarModalidad($param)
  {
    $this->modelModalidades->BorrarModalidad($param[0]);
    header("Location: //" . $_SERVER["SERVER_NAME"] . dirname($_SERVER["PHP_SELF"]));
  }

  function EditarModalidad($param)
  {
    $id_modalidad = $param[0];

    $Modalidad = $this->modelModalidades->GetModalidad($id_modalidad);
    $this->view->MostrarEditarModalidad("Editar Modalidad", $Modalidad);
  }

  function GuardarEditarModalidad()
  {
    $id_modalidad = $_POST["idForm"];

    $modalidad = $_POST["tituloForm"];

    $this->modelModalidades->GuardarEditarModalidad($modalidad, $id_modalidad);

    header("Location: " . HOME);
  }




}

?>
