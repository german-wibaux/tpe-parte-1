<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <base href="{$basehref}">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/style.css" type="text/css"/>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <title>{$Titulo}</title>
</head>
<body>
<div class="container">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="{HOME}"><img src="img/logoico.jpg" alt="Home"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="{HOME}">Home </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{HOMEMATERIAS}">Bachilleratos</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="{ADMINISTRACION}">Administración</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="{LOGIN}">Login</a>
                </li>


                <li class="nav-item">
                    <a class="nav-link disabled" href="{LOGOUT}">Logout </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="{REGISTER}">Registro</a>
                </li>


            </ul>
        </div>
    </nav>
</div>
