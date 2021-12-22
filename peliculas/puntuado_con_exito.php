<?php
//Aqui nos aseguramos que se insertan los puntos
include_once "sql.php";

$dbo = new sql();
session_start();
//Si se puntua recojemos el valor y hacemos el insert, nos iremos automaticamente al main
if(isset($_POST['puntuar'])){
    header("Location:main.php");
   $insert = $dbo->insertar_puntuacion($_SESSION['id_pelicula'],$_SESSION['id_usuario'], $_POST['numeros']);

}

?>
