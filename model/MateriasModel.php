<?php
/**
 *
 */
class MateriasModel
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

  function GetMaterias(){

      $sentencia = $this->db->prepare( "select * from materias");
      $sentencia->execute();
      return $sentencia->fetchAll(PDO::FETCH_ASSOC);
  }

  function GetModalidades(){

      $sentencia = $this->db->prepare( "select * from modalidad");
      $sentencia->execute();
      return $sentencia->fetchAll(PDO::FETCH_ASSOC);
  }

  function GetMateria($idMateria){

      $sentencia = $this->db->prepare( "select * from materias where idMateria=?");
      $sentencia->execute(array($idMateria));
      return $sentencia->fetch(PDO::FETCH_ASSOC);
  }

  function InsertarMateria($nombre,$modalidad,$descripcion,$anio,$division){

    $sentencia = $this->db->prepare("INSERT INTO materias(nombreMateria, idModalidad, descripcionMateria, anio, division) VALUES(?,?,?,?,?)");
    $sentencia->execute(array($nombre,$modalidad,$descripcion,$anio,$division));
  }

  function BorrarMateria($idMateria){
    $sentencia = $this->db->prepare( "delete from materias where idMateria=?");
    $sentencia->execute(array($idMateria));
  }
/*
  function CompletarTarea($id_tarea){

    $sentencia = $this->db->prepare( "update tarea set completada=1 where id=?");
    $sentencia->execute(array($id_tarea));
  }

  function GuardarEditarTarea($titulo,$descripcion,$completada,$id){
    $sentencia = $this->db->prepare( "update tarea set titulo = ?, descripcion = ?, completada = ? where id=?");
    $sentencia->execute(array($titulo,$descripcion,$completada,$id));
  }
  */
}


 ?>
