<?php

require_once "Api.php";
require_once "../model/MateriasModel.php";

class MateriasApiController extends Api{

  private $model;
  function __construct(){
    parent::__construct();
    $this->model = new MateriasModel();
  }

  function GetMaterias($param = null){

    if(isset($param)){
        $id_materia = $param[0];
        $arreglo = $this->model->GetMateria($id_materia);
        $data = $arreglo;

    }else{
      $data = $this->model->GetMaterias();
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
    $r = $this->model->InsertarMateria($objetoJson->Titulo, $objetoJson->Descripcion, $objetoJson->Completada);

    return $this->json_response($r, 200);
  }

  function UpdateMateria($param = null){
    if(count($param) == 1){
      $idTarea = $param[0];
      $objetoJson = $this->getJSONData();
      $r = $this->model->GuardarEditarMateria($objetoJson->Titulo, $objetoJson->Descripcion, $objetoJson->Completada, $idTarea);
      return $this->json_response($r, 200);

    }else{
      return  $this->json_response("No task specified", 300);
    }

  }
}
 ?>
