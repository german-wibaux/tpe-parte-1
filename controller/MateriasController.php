<?php

require_once "./view/MateriasView.php";
require_once "./model/MateriasModel.php";
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
    $this->Titulo = "Lista de Materias";
  }

  function Home()
  {

    $Materias = $this->model->GetMaterias();
    $Modalidades = $this->model->GetModalidades();
    $this->view->Home($this->Titulo, $Modalidades);

  }

  function Materias()
  {
    $Materias = $this->model->GetMaterias();
    $Modalidades = $this->model->GetModalidades();
    $this->view->MostrarMaterias($this->Titulo, $Materias, $Modalidades);
  }

  function Modalidades()
  {
    $Modalidades = $this->model->GetModalidades();
    $this->view->Mostrar($this->Titulo, $Modalidades);

  }


  function InsertMateria()
  {
    $nombre = $_POST["nombreForm"];
    $modalidad = $_POST["modalidadForm"];
    $descripcion = $_POST["descripcionForm"];
    $anio = $_POST["anioForm"];
    $division = $_POST["divisionForm"];

    $this->model->InsertarMateria($nombre,$modalidad,$descripcion,$anio,$division);

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
    $Modalidades = $this->model->GetModalidades();
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
    $this->model->InsertarModalidad($nombre);
    header('Location: ' . HOME);
  }

  function BorrarModalidad($param)
  {
    $this->model->BorrarModalidad($param[0]);
    header("Location: //" . $_SERVER["SERVER_NAME"] . dirname($_SERVER["PHP_SELF"]));
  }

  function EditarModalidad($param)
  {
    $id_modalidad = $param[0];

    $Modalidad = $this->model->GetModalidad($id_modalidad);
    $this->view->MostrarEditarModalidad("Editar Modalidad", $Modalidad);
  }

  function GuardarEditarModalidad()
  {
    $id_modalidad = $_POST["idForm"];

    $modalidad = $_POST["tituloForm"];

    $this->model->GuardarEditarModalidad($modalidad, $id_modalidad);

    header("Location: " . HOME);
  }


}

?>
