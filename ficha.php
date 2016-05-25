<?php

if(!isset($_GET['id']) || empty($_GET['id'])) {

    echo "No se ha pasado ningún valor ID";
    exit;

}

// Valor de ID
$id = $_GET['id'];

// Abro conexión
include_once("conexion.php");

// Busco miembro por su ID
if (!$result = $mysqli->query('SELECT * FROM personajes WHERE id = '.$id)) {
    printf("Error: %s\n", $mysqli->error);
}

// Cargo los datos de la fila como un objeto
$miembro = $result->fetch_object();

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Listado familia Simpsons</title>
    <style>
        table, th, td {
            border: 1px solid black;
        }
    </style>
</head>
<body>

<!-- page content -->
<?php if(!empty($miembro)) {?>
    <h3>Ficha personal de <?=$miembro->nombre?></h3>
    <hr/>
    <table>
        <tr>
            <td>Fotografía: </td>
            <td><img src="pictures/<?=$miembro->id?>.png" height="100" width="100"></td>
        </tr>
        <tr>
            <td>Nombre: </td>
            <td><?=$miembro->nombre?></td>
        </tr>
        <tr>
            <td>Edad: </td>
            <td><?=$miembro->edad?></td>
        </tr>
        <tr>
            <td>Ocupación: </td>
            <td><?=$miembro->ocupacion?></td>
        </tr>
        <tr>
            <td>Cabello: </td>
            <td><?=$miembro->cabello?></td>
        </tr>
        <tr>
            <td>Rol: </td>
            <td><?=$miembro->role?></td>
        </tr>
        <tr>
            <td>Episodios:</td>
            <td>
                <?php
                if (!$result = $mysqli->query('
                        SELECT * FROM personajes A, reparto B, episodios C
                        WHERE (A.id = B.personaje_id AND B.episodio_id = C.id ) AND A.id = '.$id
                        )) {
                    printf("Error: %s\n", $mysqli->error);
                }

               if($result->num_rows) {
                while ($episodio = $result->fetch_object()) {
                ?>
                    <ul>
                        <li>Nombre: <b><?=$episodio->nombre?></b></li>
                        <li>Estreno: <?=$episodio->estreno?></li>
                        <li>web: <a href="<?=$episodio->web?>" target="_blank"><?=$episodio->web?></a></li>
                        <li>Sinopsis: <?=$episodio->sinopsis?></li>
                    </ul>
                <?php
                }
               }
                ?>
            </td>
        </tr>
    </table>
<?php } else { ?>
    <h3>No hay resultados</h3>
<?php } ?>

<p>[<a href="listado.php">Volver al listado</a>]</p>

</body>
</html>
