<?php
session_start();
class VisitanteView
{
    private $Smarty;
    private $basehref;

    function __construct()
    {
        $this->Smarty = new Smarty();

        $this->basehref = '//'.$_SERVER['SERVER_NAME']
            .dirname($_SERVER['PHP_SELF']).'/';
    }

    function MostrarMaterias($Titulo, $Materias, $user){

        $this->Smarty->assign('Estos son nuestros bachilleratos',$Titulo);
        $this->Smarty->assign('Materias',$Materias);
        $this->Smarty->assign('User',$user);
        $this->Smarty->assign("basehref", $this->basehref);
        $this->Smarty->display('templates/materiasVisitante.tpl');
    }

    function mostrarHome($message = '', $Modalidades, $user){

        $this->Smarty->assign('Titulo',"Bienvenidos");
        $this->Smarty->assign('User',$user);
        $this->Smarty->assign('Modalidades',$Modalidades);
        $this->Smarty->assign('Message',$message);
        $this->Smarty->assign("basehref", $this->basehref);
        $this->Smarty->display('templates/home.tpl');
    }

    function MostrarModalidad($Titulo, $ModalidadxMateria){

        $this->Smarty->assign('Ver modalidad',$Titulo);
        $this->Smarty->assign('ModalidadxMateria',$ModalidadxMateria);
        $this->Smarty->assign("basehref", $this->basehref);

        $this->Smarty->display('templates/MostrarModalidad.tpl');
    }


    function MostrarMateria($Titulo, $Materia, $Modalidad, $rol, $user){

        $this->Smarty->assign('Titulo',$Titulo);
        $this->Smarty->assign('Materia',$Materia);
        $this->Smarty->assign('Modalidad',$Modalidad);
        $this->Smarty->assign('Rol',$rol);
        $this->Smarty->assign('User',$user);
        $this->Smarty->assign("basehref", $this->basehref);
        $this->Smarty->display('templates/materia.tpl');
    }


}

?>
