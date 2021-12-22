<?php

//Aqui es donde nos aseguramos que el insert del register ha sido exitoso
include_once "sql.php";
include_once "usuarios.php";


$dbs = new sql();

//Recogemos los parametros del email, usuario y su contraseña
if(isset($_POST['email'])&&isset($_POST['user'])&&isset($_POST['passwd'])) {

    //Lo metemos dentro de unas variables
    $user = $_POST['user'];

    //Encriptamos/hasheamos la contraseña
    $password = password_hash($_POST['passwd'], PASSWORD_BCRYPT);
    $email = $_POST['email'];
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/estilos.css">
    <link rel="stylesheet" href="css/animations.css">
    <link rel="stylesheet" href="css/paypal.css">
    <title>Exito</title>
    <style>
        body{
            background:linear-gradient(211deg, rgba(131,58,180,1) 42%, rgba(29,92,253,1) 78%);
        }
        a:hover, a:after, a:active, a{
            color: white;
            font-size: x-large;
        }
        .usuario{
            color: white;
            font-size: large;
            text-align: center;
        }
    </style>
</head>
<body>
<p>&nbsp;</p>
<h1 style="text-align: center; color: black;">GRACIAS POR REGISTRARTE</h1>
<p class="usuario"><?php echo "El usuario ".$user." a sido creado con exito"//Mensaje del usuario?></p>
<!-- Este comentario es visible solo en el editor fuente -->
<p><img class="imageLeft" src="https://htmled.it/ed.png" alt="Ed" width="166" height="166" /><strong>Ahora disfruta de comentar, puntuar y compartir IMDBB.</strong><strong></strong></p>
<p><strong></strong></p>
<p><strong><a href="main.php">Vuelve y comenta!!</a></strong></p>
<p></p>
<p></p>

</body>
</html>

<?php }
//Insertamos el usuario con esta llamada a la funcion donde le pasamos los parametros de email, pasword y usuario
$insert = $dbs->insertar_usuarios($email, $password, $user);

?>