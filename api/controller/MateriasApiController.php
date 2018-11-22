<?php

require_once "Api.php";
require_once "./../model/MateriasModel.php";

class MateriasApiController extends Api{

    private $model;
    function __construct(){
        session_start();
        parent::__construct();
        $this->model = new MateriasModel();
    }

    function GetComentarios($param = null){
        if(isset($param)){
            if(isset($param[1])){
                $id_comentario = $param[1];
                $arreglo = $this->model->GetComentarioSolo($id_comentario);
                $data = $arreglo;
            }else{

                $id_materia = $param[0];
                $arreglo = $this->model->GetComentario($id_materia);
                $data = $arreglo;
            }
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

    function GetMateria($param = null){
        if(isset($param)){
            $id_materia = $param[0];
            $arreglo = $this->model->GetMateria($id_materia);
            $data = $arreglo;

        }
        if(isset($data)){
            return $this->json_response($data, 200);
        }else{
            return $this->json_response(null, 404);
        }
    }

    function DeleteMateria($param = null)
    {
        if (isset($_SESSION['User']) && $_SESSION['Rol'] == "admin" ) {
            if (count($param) == 1) {
                $id_materia = $param[0];
                $r = $this->model->BorrarMateria($id_materia);
                if ($r == false) {
                    return $this->json_response($r, 300);
                }
            }
        }

    }

    function InsertComentario($param = null){

        if (isset($_SESSION['User']) && $_SESSION['Rol'] == "guest" || $_SESSION['Rol'] == "admin" ) {
            $objetoJson = $this->getJSONData();
            $r = $this->model->InsertarComentario($objetoJson->comentario, $objetoJson->puntaje, $objetoJson->idUsuario, $objetoJson->idMateria);
            return $this->json_response($r, 200);
        }

    }

    function DeleteComentario($param = null){

        if (isset($_SESSION['User']) && $_SESSION['Rol'] == "admin" ) {
            if(count($param) == 1){
                $id_comentario = $param[0];
                $r =  $this->model->BorrarComentario($id_comentario);
                if($r == false){
                    return $this->json_response($r, 300);
                }

                return $this->json_response($r, 200);
            }else{
                return  $this->json_response("No task specified", 300);
            }
        }

    }

    function UpdateMateria($param = null){
        if (isset($_SESSION['User']) && $_SESSION['Rol'] == "admin" ) {
            if (count($param) == 1) {
                $idMateria = $param[0];
                $objetoJson = $this->getJSONData();
                $r = $this->model->GuardarEditarMateria($objetoJson->nombre, $objetoJson->modalidad, $objetoJson->descripcion, $objetoJson->anio, $objetoJson->division, $idMateria);
                return $this->json_response($r, 200);

            } else {
                return $this->json_response("No task specified", 300);
            }
        }

    }
}


?>
