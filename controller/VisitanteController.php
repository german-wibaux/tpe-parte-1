<?php


require_once "./view/VisitanteView.php";
require_once "./model/UsuarioModel.php";
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

}

?>
