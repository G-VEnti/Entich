<?php

    if (!isset($_POST["username"]) || !isset($_POST["password"])) {
        echo "Error 1: Formulario no enviado";
        exit();
    }

    if (empty($_POST["username"])) {
        echo "Error 2: Nombre de usuario no introducido";
        exit();
    }

    echo $_POST["username"]." ".$_POST["password"];

?>