<?php


require_once "config/ConfigApp.php";
require_once "controller\MateriasController.php";
// require_once "controller\UsuarioController.php";
require_once "controller\LoginController.php";
// require_once "controller\SecuredController.php";

function parseURL($url)
{
  $urlExploded = explode('/', $url);
  $arrayReturn[ConfigApp::$ACTION] = $urlExploded[0];

  #borrar/1/2/3/4
  $arrayReturn[ConfigApp::$PARAMS] = isset($urlExploded[1]) ? array_slice($urlExploded,1) : null;
  return $arrayReturn;
}

if(isset($_GET['action'])){
   #$urlData[ACTION] = borrar
   #$urlData[PARAMS] = [1,2,3,4]
   //echo 'controller';

    $urlData = parseURL($_GET['action']);
    //echo $urlData[ConfigApp::$ACTION];
    $action = $urlData[ConfigApp::$ACTION]; //home

    $controller = new MateriasController();
    $partesURL = explode('/', $_GET['action']); //La utilizo para traer valor de id


    if(array_key_exists($action,ConfigApp::$ACTIONS)){
        $params = $urlData[ConfigApp::$PARAMS];
        $action = explode('#',ConfigApp::$ACTIONS[$action]); //Array[0] -> TareasController [1] -> BorrarTarea
        //echo $action[0];
        $controller =  new $action[0]();
        $metodo = $action[1];
        if(isset($params) &&  $params != null){
            $controller->$metodo($params);
        }
        else{
            $controller->$metodo();
        }
    }else{
      //$controller =  new TareasController();
//      echo 'false';
      //$controller->Home();
      if ($action == 'agregar') {
  $controller->InsertMateria();
}elseif ($action == 'borrar') {
    echo 'entro aca' . $partesURL[1] . $action;
//  $controller->BorrarMateria($partesURL[1]);
}elseif ($action == 'completada') {
    $controller->CompletarTarea($partesURL[1]);
}

    }
}
 ?>
