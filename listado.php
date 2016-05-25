<?php

include_once("conexion.php");

# TEST (3) Ejecución de la sentencia SQL para capturar losdatos de la tabla 'personajes'
if (!$result = $mysqli->query('SELECT * FROM personajes ORDER BY edad DESC')) {
    printf("Error: %s\n", $mysqli->error);
}
echo "Mysql: pasados todos los tests";

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
<h3>Listado de la familia Simpsons<hr/></h3>

<table style="width:100%">
    <tr>
        <th>Imagen</th>
        <th>#ID</th>
        <th>Nombre</th>
        <th>Edad</th>
        <th>Ocupación</th>
        <th>Cabello</th>
        <th>Rol</th>
    </tr>
<?php
while ($fila = $result->fetch_object()) { ?>
    <tr>
        <td><a href="ficha.php?id=<?=$fila->id?>"><img src="pictures/<?=$fila->id?>.png" alt="<?=$fila->nombre?>" height="100" width="100"></a></td>
        <td><?=$fila->id?></td>
        <td><a href="<?=$fila->web?>" target="_blank"><?=$fila->nombre?></a></td>
        <td><?=$fila->edad?></td>
        <td><?=$fila->ocupacion?></td>
        <td><?=$fila->cabello?></td>
        <td><?=$fila->role?></td>
    </tr>
<?php } ?>
</table>

</body>
</html>