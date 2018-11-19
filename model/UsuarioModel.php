<?php

/**
 *
 */
class UsuarioModel
{
    private $db;

    function __construct()
    {
        $this->db = $this->Connect();
    }

    function Connect()
    {
        return new PDO('mysql:host=localhost;'
            . 'dbname=tp-especial;charset=utf8'
            , 'root', '');
    }

    function GetUsuario()
    {
        $sentencia = $this->db->prepare("select * from usuario");
        $sentencia->execute();
        return $sentencia->fetchAll(PDO::FETCH_ASSOC);
    }

    function GetUser($user)
    {
        $sentencia = $this->db->prepare("select * from usuario where nombre=? limit 1");
        $sentencia->execute(array($user));
        return $sentencia->fetchAll(PDO::FETCH_ASSOC);
    }

    function AltaUser($user, $pass, $rol)
    {
        $hash = password_hash($pass, PASSWORD_DEFAULT);
        $sentencia = $this->db->prepare("INSERT INTO usuario(nombre, pass, rol) VALUES(?,?,?)");
        $sentencia->execute(array($user, $hash, $rol));

    }


}


?>
