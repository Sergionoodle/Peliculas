<?php
//Con esto comprobamos que se loguea con exito
include_once "sql.php";

$dbs = new sql();

//Se inicia la sesion
session_start();

//Recogemos los parametros
if(isset($_POST['passwd'])&& isset($_POST['email'])) {

    //Llamamos a la funcion que nos muestra el usuario logueado segun el email
    $datos_usuario = $dbs->usuario_logeado($_POST['email']);

    //Metodo para verificar si la contraseña esta bien, aqui le pasamos la que probamos y nos la compara con la base de datos
    $pass_verificada = password_verify($_POST['passwd'], $datos_usuario->getPassword());

    //Si es true nos salta al main, y metemos en dos variables de sesion el id de usuario (del momento) y si esta logeado
    if($pass_verificada == true){
       echo "Logeado con exito";
        $_SESSION['logeado'] = true;
        $_SESSION['id_usuario'] = $datos_usuario->getId();
        header("Location:main.php ");
    }else{//Si no suelta todo esto
        echo "Tienes un error en el login, te has equivocado de contraseña o usuario";
        echo "<br><a href='formulario_loggin.php'>Vuelve a intentarlo</a>";
        echo "<br><a href='formulario_register.php'>Registrate Aqui</a>";
        echo "<br><a href='main.php'>Vuelve a IMDBB a disfrutar</a>";
    }

}
else {

    echo $_POST["passwd"];
    echo $_POST["email"];
}

?>