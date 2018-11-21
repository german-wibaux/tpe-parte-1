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

//      $sentencia = $this->db->prepare( "select * from materias");
//      $sentencia = $this->db->prepare( "select a.*, o.nombreModalidad from materias a inner JOIN modalidad o on a.idModalidad = o.idModalidad order by o.idModalidad, a.anio, a.division");
      $sentencia = $this->db->prepare( "select a.*, o.nombreModalidad, CASE WHEN i.URL is NULL then 'materias/000.jpg' ELSE i.URL END as RUTA from materias a inner JOIN modalidad o on a.idModalidad = o.idModalidad LEFT JOIN imagenes i on a.idMateria=i.idMateria order by o.idModalidad, a.anio, a.division");

      $sentencia->execute();
      return $sentencia->fetchAll(PDO::FETCH_ASSOC);
  }


/*
  function GetModalidades(){

      $sentencia = $this->db->prepare( "select * from modalidad");
      $sentencia = $this->db->prepare( "select * from modalidad");
      $sentencia->execute();
      return $sentencia->fetchAll(PDO::FETCH_ASSOC);
  }
*/

  function GetMateria($idMateria){

      $sentencia = $this->db->prepare( "select * from materias where idMateria=?");
      $sentencia->execute(array($idMateria));
      return $sentencia->fetch(PDO::FETCH_ASSOC);
  }

  function GetComentarios(){

  //      $sentencia = $this->db->prepare( "select * from materias");
      $sentencia = $this->db->prepare( "select c.*, m.nombreMateria from comentarios c inner join materias m on c.idMateria=m.idMateria");
      $sentencia->execute();
      return $sentencia->fetchAll(PDO::FETCH_ASSOC);
  }

  function GetComentario($idMateria){

//      $sentencia = $this->db->prepare( "select * from comentarios where idMateria=?");
      $sentencia = $this->db->prepare( "select c.*, m.nombreMateria from comentarios c inner join materias m on c.idMateria=m.idMateria where c.idMateria=?");
      //var_dump($sentencia); die();
      $sentencia->execute(array($idMateria));
      return $sentencia->fetchAll(PDO::FETCH_ASSOC);
  }

  function BorrarComentario($idComentario){

      $sentencia = $this->db->prepare( "delete from comentarios where id=?");
      //var_dump($sentencia); die();
      $sentencia->execute(array($idComentario));
  }

  function InsertarComentario($Comentario, $Puntaje, $idUsuario, $idMateria){

      $sentencia = $this->db->prepare( "INSERT INTO comentarios (comentario, puntaje, idUsuario, idMateria) VALUES(?,?,?,?)");
      //var_dump($sentencia); die();
      $sentencia->execute(array($Comentario, $Puntaje, $idUsuario, $idMateria));
  }

/*
  function GetModalidad($idModalidad){

      $sentencia = $this->db->prepare( "select * from modalidad where idModalidad=?");
      $sentencia->execute(array($idModalidad));
      return $sentencia->fetch(PDO::FETCH_ASSOC);
  }
*/
  function InsertarMateria($nombre,$modalidad,$descripcion,$anio,$division){

    $sentencia = $this->db->prepare("INSERT INTO materias(nombreMateria, idModalidad, descripcionMateria, anio, division) VALUES(?,?,?,?,?)");
    $sentencia->execute(array($nombre,$modalidad,$descripcion,$anio,$division));
  }

  function BorrarMateria($idMateria){
    $sentencia = $this->db->prepare( "delete from materias where idMateria=?");
    $sentencia->execute(array($idMateria));
  }

  function GuardarEditarMateria($titulo,$modalidad,$descripcion,$anio,$division,$id){
    $sentencia = $this->db->prepare( "update materias set nombreMateria = ?, idModalidad = ?,  descripcionMateria = ?, anio = ?, division = ? where idMateria=?");
    $sentencia->execute(array($titulo,$modalidad,$descripcion,$anio,$division,$id));
  }
/*
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
*/

}


?>
