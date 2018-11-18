<?php


require_once "./view/LoginView.php";
require_once "./model/UsuarioModel.php";
include_once 'controller/Controller.php';


class LoginController extends Controller
{

  private $Titulo;

  function __construct()
  {

    $this->view = new LoginView();
    $this->model = new UsuarioModel();
    $this->Titulo = "Login";
  }

  function login()
  {

    $this->view->mostrarLogin();

  }

  function Home()
  {

    $this->view->Home($this->Titulo);
  }

  function logout()
  {
    session_start();
    session_destroy();
    header('Location: ' . LOGIN);
    die(); // buena practica hacer logout
  }

  function verificarLogin()
  {

    $user = $_POST["usuarioId"];
    $pass = $_POST["passwordId"];
    $dbUser = $this->model->getUser($user);

    if (isset($dbUser)) {
      if (password_verify($pass, $dbUser[0]['pass'])) {
        session_start();
        $_SESSION["User"] = $user;
        $_SESSION['LAST_ACTIVITY'] = time();
        header("Location: " . HOME);
        die();
      } else {
        $this->view->mostrarLogin("Contraseña incorrecta");
      }
    } else {
        //No existe el usario
      $this->view->mostrarLogin("No existe el usario");
    }

  }

  function registrarUsuario()
  {
    $user = $_POST["usuarioId"];
    $pass = $_POST["passwordId"];
    $dbUser = $this->model->getUser($user);
    $this->view->mostrarRegistro("Carga de Nuevo Usuario");

//    $user = $_POST["usuarioId"];
//    $pass = $_POST["passwordId"];
//    $dbUser = $this->model->getUser($user, $pass, 'guest');
//    $this->view->mostrarRegistro("No existe el usuario");
  }

  function InsertUsuario()
  {
    $nombre = $_POST["usuarioId"];
    $pass = $_POST["passwordId"];
    $rol = "guest";

//    $this->model->InsertarMateria($nombre,$modalidad,$descripcion,$anio,$division);

    $this->model->AltaUser($nombre, $pass, $rol);

    header('Location: ' . HOME);
  }

}

?>
