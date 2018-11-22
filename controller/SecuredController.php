<?php
//session_start();
require_once "controller/Controller.php";

class SecuredController extends Controller
{

    public function __construct()
    {
        session_start();

        // verifica que este logueado
        //echo $_SESSION['Rol'];
        if (isset($_SESSION['User']) && $_SESSION['Rol'] == "admin" ) { // si esta logueado
            if (time() - $_SESSION['LAST_ACTIVITY'] > 1800) { // expiro el timeout
                header('Location: ' . LOGOUT);
                die();
            }

            $_SESSION['LAST_ACTIVITY'] = time();
        } else {
            header('Location: ' . LOGIN);
            die();
        }
    }

}

?>
