<?php
//Con esto hacemos la insercion de los datos en los comentarios
include_once "sql.php";

//Abrimos sesion
$dbo = new sql();

//Iniciamos la sesion
session_start();

//recogemos el comentar
if(isset($_POST['comentar'])){

    //Con esto reconducimos a la pagina main.php
    header("Location:main.php");

    //Hacemos el insert de los comentarios pasando los parametros de la pelicula el usuario y el propio comentario
    $insert = $dbo->insertar_comentario($_SESSION['id_pelicula'], $_SESSION['id_usuario'], $_POST['comentario']);


}

?>
