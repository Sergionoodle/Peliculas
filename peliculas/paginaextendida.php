<?php
//Incluimos las clases
include_once "multimedia.php";
include_once "sql.php";
include_once "staff.php";
include_once "principal.php";
include_once "comentarios.php";

$sql = new sql();

if(isset($_GET['id'])){
    $resultado = $sql->getMultimedia($_GET['id']);
    $resultadoStaff = $sql->getStaff($_GET['id']);
    $resultadoPrincipal = $sql->getIdPrincipal($_GET['id']);
    $fotos = $sql->getprincipal();

}



?>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>IMDBM</title>
    <style>
        a:link, a:visited, a:active {
            text-decoration:none;
            color: white;
        }
        body{
            background:linear-gradient(211deg, rgba(131,58,180,1) 42%, rgba(29,92,253,1) 78%);
            height: 100%;
            margin: auto;
        }
        iframe{
            margin-top: 10px;
            width: 800px;
            height: 550px;
            margin-left: -50px;

        }
        .container{
            background-color: rgba(40, 10, 75, 0.96);
            height: 50px;
            text-align: center;

        }

        .texto{
            padding-top: 5px;
        }
        .cuerpo{
            text-align: center;
            margin-top: 320px;
        }
        img{
            margin-top: 10px;
            margin-left: 30px;
            height: 300px;
            width: 250px;
            position: absolute;
        }
        .informacion{
            border: 2px solid black;
            width: 1000px;
            height: 300px;
            background-color:rgba(18, 47, 234, 0.18)!important;
            margin-top: 10px;
            position: absolute;
            margin-left: 315px;
            border-radius: 20px;
        }
        .titulo{
            font-size:xx-large;
            margin-left: 20px;
            margin-top: 5px;
            text-transform:uppercase ;
        }
        .genero{
            margin-left: 20px;
            margin-top: -20px;
            color: rgba(0, 0, 0, 0.54);
            font-weight: bold;
        }
        span{
            color: black;
        }
        .genero{
            margin-left: 20px;
            margin-top: -20px;
            color: rgba(0, 0, 0, 0.54);
            font-weight: bold;
        }
        .director{
            margin-left: 20px;
            margin-top: -15px;
            color: rgba(0, 0, 0, 0.54);
            font-weight: bold;
        }
        .estrellita{
            height: 20px;
            width: 20px;
            margin-left: 2px;
            position: relative !important;
        }
        .puntuacion{
            margin-left: 20px;
            margin-top: -18px ;
        }
        .descripcion{
            margin-left: 20px;
            color: rgba(0, 0, 0, 0.54);
            font-weight: bold;
        }

        .flecha{
            width: 50px;
            height: 50px;
            position: absolute;
            margin-top:-6px ;



        }

        .slider-controler {
            position: fixed;
            top: 100px;
            left: 70%;
            text-decoration: none;
            background-color: rgba(0, 0, 0, 0);
            z-index: 100;
            margin:4px;
            padding:4px;

            width: 400px;
            height: 80%;
            overflow-x: hidden;
            overflow-y: auto;
            text-align:justify;
        }



        .slider-controler a {
            display: inline-block;
            vertical-align: top;
            text-decoration: none;
            color: rgba(255, 255, 255, 0);
            font-size: 1.5rem;

        }
        .decision{
            margin: 50px;
        }
        li{
            list-style-type: none;
            margin: 60px;
            margin-top: 100px;


        }
        .div_comentarios{
            width: 600px;
            height: 500px;
            background-color: #793e98;
            margin-top: 20px;
            margin-left: 20px;
            margin-bottom: 20px;
            border: black 2px solid;
        }

        .h1_comentario{
            text-align: center;
        }
        .comentario_txt{
            margin-left: 14px;
            resize: none;
            width: 500px;
        }
        .comentarios{
            margin-top: -15px;
            margin-left: 2px;

        }
        ul.com{
            border: black solid 1px;
        }



    </style>
</head>
<body>
<div class="container">
    <h1 class="texto"><a href="main.php"><?php
            session_start();//Entramos en la sesion
            if($_SESSION['logeado']){
                echo "Estas Logeado//";
            }else{
                echo "NO estas Logeado//";
            }
            //Conseguimos el id
            $_SESSION['id_pelicula'] = $resultado->getId();//Metemos el id de pelicula en una variable de sesion
            ?>Ifinity Movies Dont Be Moved<img class="flecha" src="https://img.icons8.com/office/100/000000/u-turn-to-left.png"/></a></h1>
</div>
<div class="foto">
    <img class="card-img-top" src="<?php echo $resultado->getUrl() ?>">
</div>
<div class="informacion">
    <h2 class="titulo"><?php echo $resultadoPrincipal->getTitulo() ?></h2>
    <p class="genero"><span>Genero :</span><?php echo $resultadoPrincipal->getGenero() ?></p>
    <p class="director"><span>Director: </span><?php echo $resultadoStaff->getDirector()?><span> &nbsp; &nbsp;&nbsp; Actor Principal: </span><?php echo $resultadoStaff->getProta() ?></p>
    <div class="puntuacion"><?php for($i = 0; $i < $resultadoPrincipal->getPuntuacion(); $i++){
            if($resultadoPrincipal->getPuntuacion() <= 5){
                echo '<img class="estrellita" src="img/rojo.png">';
            }else {
                echo '<img class="estrellita" src="img/pngegg.png">';
            }
        }?></div>
    <p class="descripcion"><span>Descripcion: </span><br><br><?php echo $resultadoPrincipal->getDescripcion()?></p>
</div>
<div class="cuerpo">
    <?php echo $resultado->getYt()?>
</div>

<div class="wrapper">
    <div class="slider" id="slider">
        <ul class="slider-controler">
            <?php foreach ($fotos as $foto){ ?>
                <li><a href="paginaextendida.php?id=<?php echo $foto->getId()?>"><img class="decision" src="<?php echo $foto->getIdMultimedia()->getUrl(); ?>">'</a></li>
            <?php } ?>
        </ul>
    </div>
</div>
<?php if($_SESSION['logeado']){
    //Si esta logeado sacara la parte de los comentarios
    ?>
    <div class="div_comentarios">
        <h1 class="h1_comentario">COMENTARIOS</h1>
        <form name="nota" action="puntuado_con_exito.php" method="post">
            <input type="number" id="numeros" name="numeros" min="0" max="10">
            <input type="submit" name="puntuar" value="Puntua">
        </form>
        <form name="formulario_texto" action="comentario_exitoso.php" method="post">
            <textarea class="comentario_txt" name="comentario" id="comentario" cols="77" rows="1"></textarea>
            <input type="submit" name="comentar" value="Comenta">
        </form>

        <li class="comentarios">
            <?php //Mediante el formulario se mostrara la puntuacion aqui segun en la pelicula que nos encontremos
            $puntos_medios = $sql->media_puntuacion($_SESSION['id_pelicula']);//Nos saca la media
            foreach ($puntos_medios as $punto){//Recorremos
                echo "<h2 class='puntos'>PUNTUACION POR USUARIOS-(".$punto->getPuntos().")</h2>";
                //Imprimimos
            } ?>
            <?php

            //Aqui sacamos el comentario segun la pelicula en la cual nos encontremos
            $imprimirComentario = $sql->imprimir_comentarios($_SESSION['id_pelicula']);

            //recorremos
            foreach ($imprimirComentario as $coment){
                ?>
                <ul class="com">
                    <?php
                    //Sacamos el nombre de usuario y el comentario
                    echo $coment->getNombreUsuario();
                    echo ": &nbsp&nbsp ";
                    echo $coment->getComentario();
                    ?>
                </ul>
                <?php
            }

            ?>
        </li>
    </div>
    <?php

} ?>
</body>
</html>