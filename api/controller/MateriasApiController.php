<?php

require_once "Api.php";
require_once "./../model/MateriasModel.php";

class MateriasApiController extends Api{

  private $model;
  function __construct(){
    parent::__construct();
    $this->model = new MateriasModel();
  }

  function GetComentarios($param = null){
    if(isset($param)){
        $id_materia = $param[0];
        $arreglo = $this->model->GetComentario($id_materia);
        $data = $arreglo;

    }else{
      $data = $this->model->GetComentarios();
      //var_dump($data); die();

    }
      if(isset($data)){
        return $this->json_response($data, 200);
      }else{
        return $this->json_response(null, 404);
      }
  }

  function DeleteMateria($param = null){
    if(count($param) == 1){
        $id_materia = $param[0];
        $r =  $this->model->BorrarMateria($id_materia);
        if($r == false){
          return $this->json_response($r, 300);
        }

        return $this->json_response($r, 200);
    }else{
      return  $this->json_response("No task specified", 300);
    }
  }

  function InsertMateria($param = null){

    $objetoJson = $this->getJSONData();
    $r = $this->model->InsertarMateria($objetoJson->nombre, $objetoJson->modalidad, $objetoJson->descripcion, $objetoJson->anio, $objetoJson->division);

    return $this->json_response($r, 200);
  }

  function UpdateMateria($param = null){
    if(count($param) == 1){
      $idMateria = $param[0];
      $objetoJson = $this->getJSONData();
      $r = $this->model->GuardarEditarMateria($objetoJson->nombre, $objetoJson->modalidad, $objetoJson->descripcion, $objetoJson->anio, $objetoJson->division, $idMateria);
      return $this->json_response($r, 200);

    }else{
      return  $this->json_response("No task specified", 300);
    }

  }
}
 ?>
