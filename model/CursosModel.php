<?php
/**
 *
 */
class TareasModel
{
  private $db;

  function __construct()
  {
    //$this->db = $this->Connect();
    echo 'entro en get tareas';
  }

  function Connect(){
    return new PDO('mysql:host=localhost;'
    .'dbname=tareas;charset=utf8'
    , 'root', '');
  }

  function GetTareas(){
    echo 'entro en get tareas';
    //   $sentencia = $this->db->prepare( "select * from tarea");
    //   $sentencia->execute();
    //   return $sentencia->fetchAll(PDO::FETCH_ASSOC);
  }

}


 ?>
