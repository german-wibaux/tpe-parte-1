<?php


require_once  "./view/LoginView.php";
require_once  "./model/UsuarioModel.php";
include_once 'controller/Controller.php';


class LoginController extends Controller
{
  // private $view;
  // private $model;
  private $Titulo;

  function __construct()
  {
    parent::__construct();
    $this->view = new LoginView();
    $this->model = new UsuarioModel();
    $this->Titulo = "Login";
  }

  function login(){

    $this->view->mostrarLogin();

  }

  function logout(){
    session_start();
    session_destroy();
    header('Location: '.LOGIN);
  }

  function verificarLogin(){
  
      $user = $_POST["usuarioId"];
      $pass = $_POST["passwordId"];
      $dbUser = $this->model->getUser($user);
      //echo 'entra';
      // $hash = ;
      // $hash = substr( $hash , 0, 60 );
      //echo $hash;
      if(isset($dbUser)){
      //   $options = $options = [
      //     'memory_cost' => PASSWORD_ARGON2_DEFAULT_MEMORY_COST,
      //     'time_cost'   => PASSWORD_ARGON2_DEFAULT_TIME_COST,
      //     'threads'     => PASSWORD_ARGON2_DEFAULT_THREADS,
      // ];
      // $password2 = password_hash(, PASSWORD_ARGON2I, $options);
        // echo $pass;
        // echo " ";
        // echo $dbUser[0]["pass"];
       // echo 'entrooooo';
        //   $password = '123456';
        //   $hash = password_hash($password, PASSWORD_DEFAULT);
        //  echo $hash;
         //echo $dbUser[0]["pass"];
          if (password_verify($pass, $dbUser[0]['pass'])){
              //mostrar lista de tareas
             echo 'entro pass valida';
              session_start();
              $_SESSION["User"] = $user;
              header("Location: ".HOME);
          }else{
            $this->view->mostrarLogin("Contraseña incorrecta");

          }
      }else{
        //No existe el usario
        $this->view->mostrarLogin("No existe el usario");
      }

  }

}

 ?>
