<?php

require_once  "./view/MateriasView.php";
require_once  "./model/MateriasModel.php";
include_once 'controller/Controller.php';
 require_once  "controller/SecuredController.php";

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

 
 


  function Materias(){
      $Materias = $this->model->GetMaterias();
      $Modalidades = $this->model->GetModalidades();
      $this->view->MostrarMaterias($this->Titulo, $Materias, $Modalidades);     
  }
  

  function InsertMateria(){
    $nombre = $_POST["nombreForm"];
    $modalidad = $_POST["modalidadForm"];
    $descripcion = $_POST["descripcionForm"];
    $anio = $_POST["anioForm"];
    $division = $_POST["divisionForm"];
    
    $this->model->InsertarMateria($nombre,$modalidad,$descripcion,$anio,$division);

    header('Location: '.HOME);
  }

  function BorrarMateria($param){
    $this->model->BorrarMateria($param[0]);
    header("Location: http://".$_SERVER["SERVER_NAME"] . dirname($_SERVER["PHP_SELF"]));
  }

  function EditarMateria($param){
    $id_materia = $param[0];

    $Materia = $this->model->GetMateria($id_materia);
    $this->view->MostrarEditarMateria("Editar Materia", $Materia);
  }

  function GuardarEditarMateria(){    
    $id_materia = $_POST["idForm"];
    
    $titulo = $_POST["tituloForm"];
    $modalidad = $_POST["modalidadForm"];
    $descripcion = $_POST["descripcionForm"];
    $anio = $_POST["anioForm"];
    $division = $_POST["divisionForm"];


    

    $this->model->GuardarEditarMateria($titulo,$modalidad,$descripcion,$anio,$division,$id_materia);

    header("Location: ".HOME);
  }

}

 ?>
