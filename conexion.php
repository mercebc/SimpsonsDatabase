<?php

# TEST (1 y 2) Connexión al servidor MySQL y selección de la base de datos
$mysqli = new mysqli('localhost', 'usuario', 'password', 'database');

if ($mysqli->connect_errno) {
    echo "Error al connectar a MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
}

?>