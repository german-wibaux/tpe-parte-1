<?php


require_once "./view/VisitanteView.php";
require_once "./model/UsuarioModel.php";
require_once "./model/ModalidadModel.php";
include_once 'controller/Controller.php';


class VisitanteController extends Controller
{
  // private $view;
  // private $model;
  private $Titulo;

  function __construct()
  {
    parent::__construct();
    $this->view = new VisitanteView();
    $this->model = new MateriasModel();
    $this->modelModalidades = new  ModalidadModel();
    $this->Titulo = "Visitante";
  }

  function HomeMaterias()
  {
    $Materias = $this->model->GetMaterias();
    $this->view->mostrarMaterias($this->Titulo, $Materias);
  }

  function Home()
  {

    $Modalidades = $this->modelModalidades->GetModalidades();
    $this->view->mostrarHome($this->Titulo, $Modalidades);
  }

  function VerModalidad($param)
  {
    $id_modalidad = $param[0];

    $ModalidadxMateria = $this->modelModalidades->GetMateriaPorModalidad($id_modalidad);
//var_dump($ModalidadxMateria); die();

    $this->view->MostrarModalidad("Mostrar Modalidad", $ModalidadxMateria);
  }

  function VerComentarios($param)
  {
    $id_Materia = $param[0];

    $ComentariosxMateria = $this->model->GetComentario($id_Materia);
//var_dump($ModalidadxMateria); die();

    $this->view->MostrarComentario("Mostrar Comentarios", $ComentariosxMateria);
  }
}

?>
