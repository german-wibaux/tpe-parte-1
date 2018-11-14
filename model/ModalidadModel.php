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
    , 'root', 'toor');
  }


  function GetModalidades(){

      $sentencia = $this->db->prepare( "select * from modalidad");
      $sentencia->execute();
      return $sentencia->fetchAll(PDO::FETCH_ASSOC);
  }

  function GetModalidad($idModalidad){

      $sentencia = $this->db->prepare( "select * from modalidad where idModalidad=?");
      $sentencia->execute(array($idModalidad));
      return $sentencia->fetch(PDO::FETCH_ASSOC);
  }

  function GetMateriaPorModalidad($idModalidad){

      $sentencia = $this->db->prepare( "select a.*, o.nombreModalidad from materias a inner JOIN modalidad o on a.idModalidad = o.idModalidad where a.idModalidad=? order by o.idModalidad, a.anio, a.division");
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
