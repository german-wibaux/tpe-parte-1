<?php
session_start();
error_reporting(E_ALL ^ E_NOTICE);

require('libs/Smarty.class.php');
/**
 *
 */
class MateriasView
{
  private $Smarty;
  private $basehref;

  function __construct()
  {

    $this->Smarty = new Smarty();

    $this->basehref = '//'.$_SERVER['SERVER_NAME']
        .dirname($_SERVER['PHP_SELF']).'/';

  }


  function MostrarMaterias($Titulo, $Materias, $Modalidades){

    $this->Smarty->assign('Titulo',$Titulo);
    $this->Smarty->assign('Materias',$Materias);
    $this->Smarty->assign('Modalidades',$Modalidades);
    $this->Smarty->assign("basehref", $this->basehref);
    //$smarty->debugging = true;
    $this->Smarty->display('templates/materias.tpl');
  }

  function Home($Titulo, $Modalidades){

    $this->Smarty->assign('Home',$Titulo);
    $this->Smarty->assign('Modalidades',$Modalidades);
    $this->Smarty->assign("basehref", $this->basehref);
    $this->Smarty->display('templates/home.tpl');

  }

  function MostrarEditarMateria($Titulo, $Materia, $Modalidades){
    $arrAnios = array("1ro","2do","3ro");
    $this->Smarty->assign('arregloAnios', $arrAnios);

    $arrDivision = array("1ra","2da","3ra", "4ta", "5ta", "6ta", "7ma");
    $this->Smarty->assign('arregloDivision', $arrDivision);
    $this->Smarty->assign("basehref", $this->basehref);
    $this->Smarty->assign('Editar materia',$Titulo);
    $this->Smarty->assign('Materia',$Materia);
    $this->Smarty->assign('Modalidades',$Modalidades);


    $this->Smarty->display('templates/MostrarEditarMateria.tpl');
  }

  function MostrarEditarModalidad($Titulo, $Modalidad){

    $this->Smarty->assign('Editar modalidad',$Titulo);
    $this->Smarty->assign('Modalidad',$Modalidad);
    $this->Smarty->assign("basehref", $this->basehref);

    $this->Smarty->display('templates/MostrarEditarModalidad.tpl');
  }

  function MostrarModalidad($Titulo, $ModalidadxMateria){

    $this->Smarty->assign('Ver modalidad',$Titulo);
    $this->Smarty->assign('Modalidad',$ModalidadxMateria);
    $this->Smarty->assign("basehref", $this->basehref);

    $this->Smarty->display('templates/MostrarModalidad.tpl');
  }

}

 ?>
