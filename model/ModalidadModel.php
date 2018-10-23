<?php

/**
 *
 */
class ModalidadModel
{
  private $db;

  function __construct()
  {
    $this->db = $this->Connect();

  }

  function Connect(){
    return new PDO('mysql:host=localhost;'
    .'dbname=tp-especial;charset=utf8'
    , 'root', '');
  }


  function GetModalidades(){

      $sentencia = $this->db->prepare( "select * from modalidad");
      $sentencia = $this->db->prepare( "select * from modalidad");
      $sentencia->execute();
      return $sentencia->fetchAll(PDO::FETCH_ASSOC);
  }


  function GetModalidad($idModalidad){

      $sentencia = $this->db->prepare( "select * from modalidad where idModalidad=?");
      $sentencia->execute(array($idModalidad));
      return $sentencia->fetch(PDO::FETCH_ASSOC);
  }

  function InsertarModalidad($nombre){

    $sentencia = $this->db->prepare("INSERT INTO modalidad(nombreModalidad) VALUES(?)");
    $sentencia->execute(array($nombre));
  }

  function BorrarModalidad($idModalidad){
    $sentencia = $this->db->prepare( "delete from modalidad where idModalidad=?");
    $sentencia->execute(array($idModalidad));
  }

  function GuardarEditarModalidad($modalidad,$id){
    $sentencia = $this->db->prepare( "update modalidad set nombreModalidad = ? where idModalidad=?");
    $sentencia->execute(array($modalidad,$id));
  }


}


?>
