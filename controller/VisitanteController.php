<?php


require_once "./view/VisitanteView.php";
require_once "./model/UsuarioModel.php";
require_once "./model/ModalidadModel.php";
include_once 'controller/Controller.php';


class VisitanteController extends Controller
{

    private $Titulo;

    function __construct()
    {
        session_start();
        parent::__construct();
        $this->view = new VisitanteView();
        $this->model = new MateriasModel();
        $this->modelModalidades = new  ModalidadModel();
        $this->Titulo = "Visitante";
    }

    function HomeMaterias()
    {
        $user = $_SESSION['User'];
        $Materias = $this->model->GetMaterias();
        $this->view->mostrarMaterias($this->Titulo, $Materias, $user);
    }

    function Home()
    {
        $user = $_SESSION['User'];
        $Modalidades = $this->modelModalidades->GetModalidades();
        $this->view->mostrarHome($this->Titulo, $Modalidades, $user);
    }

    function VerModalidad($param)
    {
        $id_modalidad = $param[0];

        $ModalidadxMateria = $this->modelModalidades->GetMateriaPorModalidad($id_modalidad);

        $this->view->MostrarModalidad("Mostrar Modalidad", $ModalidadxMateria);
    }

    function VerMateria($param)
    {
        $id_Materia = $param[0];

        $rol = $_SESSION['Rol'];

        $user = $_SESSION['User'];

        $materia = $this->model->GetMateria($id_Materia);

        $modalidad = $this->model->GetModalidad($materia['idModalidad']);

        $this->view->MostrarMateria("Mostrar Materia", $materia, $modalidad, $rol, $user);
    }
}

?>
