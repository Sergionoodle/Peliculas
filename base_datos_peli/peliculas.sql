-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-12-2021 a las 22:51:46
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `peliculas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(255) NOT NULL,
  `idUsuario` int(255) NOT NULL,
  `idPelicula` int(255) NOT NULL,
  `comentario` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `idUsuario`, `idPelicula`, `comentario`) VALUES
(37, 42, 1, 'Sale the rock y solo por eso ya tiene un 5'),
(38, 42, 2, 'No estaba mal\r\n'),
(39, 42, 4, 'No me gusta el juego'),
(40, 42, 5, 'Me dormi'),
(41, 42, 6, 'Muy wow'),
(42, 42, 8, 'Intrigante'),
(43, 42, 9, 'Crees en el bitcoin, quieres hacer ingresos pasivos? contactame'),
(44, 42, 11, 'No esta nada mal'),
(45, 42, 20, 'Llore cual cochinillo'),
(46, 42, 17, 'Quiero ser mi propio jefe'),
(47, 42, 24, 'No esta nada mal'),
(48, 43, 1, 'que grande es el papi the rock'),
(49, 43, 2, 'Me dijeron que es basura'),
(50, 43, 3, 'El trailer impresiona'),
(51, 43, 4, 'No me gusta la serie'),
(52, 43, 6, 'mucho pium pium'),
(53, 43, 7, 'No esta mal'),
(54, 43, 8, '007'),
(55, 43, 9, 'admin_god, quiero ser mi propio jefe'),
(56, 43, 10, 'No lo entendí '),
(57, 43, 11, 'Nada mal'),
(58, 43, 12, 'ص ش س ز ر ذ د خ ح ج ث ت ب ا ي و ه ن م ل ك ق ف غ ع ظ ط ض'),
(59, 43, 13, 'Ñe'),
(60, 43, 14, 'The rock cuenta buenos chistes'),
(61, 43, 15, 'tu ajaja buen nombre'),
(62, 43, 16, 'Me recuerda a the django'),
(63, 43, 22, 'gran pelicula mejor persona'),
(64, 43, 17, 'muy interesante '),
(65, 43, 19, 'Demasiado sadica para mi gusto'),
(66, 43, 20, 'Brutal'),
(67, 43, 21, 'TREMENDA BASURA'),
(68, 43, 23, 'Mas director makoto '),
(69, 43, 25, 'La mejor parte es cuando se acaba'),
(70, 45, 1, 'QUIERES CONOCERME? Llama al 666 897 554'),
(71, 45, 2, 'Estoy cerca tuya'),
(72, 45, 24, 'Yo y 5 chicas mas quieren conocerte -> llama al 666 789 987'),
(73, 45, 3, 'da miedo esta peli'),
(74, 45, 6, '#NOSOYUNBOTPARACONSEGUIRTUSDATOS'),
(75, 44, 1, 'Este the rock'),
(76, 44, 2, 'TREMENDA MIERDA...'),
(77, 44, 25, 'Quiero llorar'),
(78, 44, 21, 'La parte del titulo es como wow que podemos esperar'),
(79, 44, 4, 'que'),
(80, 44, 4, 'es'),
(81, 44, 4, 'esto'),
(82, 44, 11, 'No la llegue a entender'),
(83, 46, 1, 'Quien fuera el deltoides de the rock, es mas grande que mi cabeza'),
(84, 46, 21, 'Que gran trama si ves medio ido'),
(85, 46, 22, 'Brutal'),
(86, 46, 23, 'Me encanto'),
(87, 46, 23, 'con acento en la o'),
(88, 46, 24, 'Tenia muy buen ambiente a los videojuegos'),
(89, 46, 25, 'Nada, infumable'),
(90, 46, 14, 'Quien estuviese en esos brazos de the rock'),
(91, 47, 1, 'NADA, THE ROCK ES EL MEJOR'),
(92, 47, 3, 'Muy interesante pese a que no este the rock\r\n'),
(93, 47, 4, 'No sale the rock pero esta bien'),
(94, 47, 5, 'entretenida'),
(95, 47, 7, 'esta guay, pero le falta a the rock'),
(96, 47, 8, 'buah si meten a the rock de villano triunfan 00roca'),
(97, 47, 9, 'un clasico'),
(98, 47, 10, 'esta bien pero no tanto'),
(99, 47, 11, 'Esta guay no lo negare'),
(100, 47, 12, 'a alguien le pasa que no le va el trailer?'),
(101, 47, 12, 'ah es que no estaba dandole al play'),
(102, 47, 13, 'Wow que loco'),
(103, 47, 14, 'The rock es religion'),
(104, 47, 19, 'Que miedo'),
(105, 47, 21, 'Pues a mi me ha gustado'),
(106, 47, 25, ':|'),
(107, 48, 1, 'Esta facherita, siganme en twitter (panchitopancrasio)'),
(108, 49, 14, 'esta guay'),
(109, 49, 15, 'WOW');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `multimedia`
--

CREATE TABLE `multimedia` (
  `id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `yt` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `multimedia`
--

INSERT INTO `multimedia` (`id`, `url`, `yt`) VALUES
(1, 'img/AlertaRoja.jpg', '<iframe src=\"https://www.youtube.com/embed/_L0DMAFBEjs\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(2, 'img/sangchi.jpg', '<iframe src=\"https://www.youtube.com/embed/JuE_axN7wXI\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(3, 'img/ruedaTiempo.jpeg', '<iframe  src=\"https://www.youtube.com/embed/oPABHsgT_4w\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(4, 'img/arcane.jpg', '<iframe  src=\"https://www.youtube.com/embed/0qSarZpylxs\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(5, 'img/eternals.jpg', '<iframe src=\"https://www.youtube.com/embed/f7aFqw3eYSs\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(6, 'img/yellowstone.jpg', '<iframe  src=\"https://www.youtube.com/embed/opYyuupyWmA\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(7, 'img/dune.jpg', '<iframe src=\"https://www.youtube.com/embed/1looWByWgW0\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(8, 'img/sintiempo.jpg', '<iframe  src=\"https://www.youtube.com/embed/Yq4KfMa4_9s\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(9, 'img/fantasmas.jpg', '<iframe src=\"https://www.youtube.com/embed/1I1JrPgoM8U\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(10, 'img/sucession.jpg', '<iframe src=\"https://www.youtube.com/embed/OzYxJV_rmE8\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(11, 'img/cowboy.jpg', '<iframe  src=\"https://www.youtube.com/embed/OhNwckCLzis\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(12, 'img/jaim.jpg', '<iframe  src=\"https://www.youtube.com/embed/PI5m7TcIrTg\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(13, 'img/soho.jpg', '<iframe  src=\"https://www.youtube.com/embed/CB2AOk1qJj4\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(14, 'img/jungle.jpg', '<iframe  src=\"https://www.youtube.com/embed/hIJUnZnvAzA\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(15, 'img/you.jpeg', '<iframe src=\"https://www.youtube.com/embed/_oBO0GxMtac\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(16, 'img/duracaida.jpg', '<iframe  src=\"https://www.youtube.com/embed/9vmJTnPxNWM\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(17, 'img/gucci.jpg', '<iframe  src=\"https://www.youtube.com/embed/DTdxse1MP90\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(18, 'img/mayor.jpg', '<iframe  src=\"https://www.youtube.com/embed/zhmIVF2dTbI\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(19, 'img/dexter.jpg', '<iframe  src=\"https://www.youtube.com/embed/l9H1uSS_zkk\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(20, 'img/finch.jpg', '<iframe src=\"https://www.youtube.com/embed/HjNpvOFqb54\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(21, 'img/shark.jpg', '<iframe src=\"https://www.youtube.com/embed/M-pXDoe5a0E\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(22, 'img/Venom.jpg', '<iframe src=\"https://www.youtube.com/embed/nZ8FXOpcXSs\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(23, 'img/mejorPeli.jpg', '<iframe src=\"https://www.youtube.com/embed/N0nvoAv5q8M\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(24, 'img/rv.jpg', '<iframe  src=\"https://www.youtube.com/embed/k4RHN2ks5VI\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(25, 'img/db.jpg', '<iframe src=\"https://www.youtube.com/embed/nGxEKM3JDDU\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `principal`
--

CREATE TABLE `principal` (
  `id` int(11) NOT NULL,
  `idMultimedia` int(11) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `genero` varchar(255) DEFAULT NULL,
  `puntuacion` int(11) DEFAULT NULL,
  `idStaff` int(11) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `principal`
--

INSERT INTO `principal` (`id`, `idMultimedia`, `titulo`, `genero`, `puntuacion`, `idStaff`, `descripcion`) VALUES
(1, 1, 'Alerta roja', 'Acción', 5, 1, 'En el mundo del crimen internacional, un agente de la Interpol intenta capturar al ladrón de arte más buscado del mundo.'),
(2, 2, 'Shang-Chi', 'Acción', 7, 2, 'Shang-Chi, el maestro del Kung Fu basado en armas, se ve obligado a confrontar su pasado después de ser atraído a la organización de los Diez Anillos.'),
(3, 3, 'La rueda del tiempo', 'Fantasia', 7, 3, 'Las vidas de cuatro jóvenes cambian para siempre cuando una desconocida llega a su aldea afirmando que uno de ellos es la encarnación de una antigua profecía y tiene el poder de inclinar la balanza entre la Luz y la Oscuridad.'),
(4, 4, 'Arcane', 'Animación', 8, 4, 'Arcane da vida a las relaciones que moldean a algunos de los famosos campeones de ‘League of Legends’, como Vi, Jinx, Caitlyn, Jayce y Viktor.'),
(5, 5, 'Eternals', 'Aventura', 6, 5, 'Los Eternos son una raza de seres inmortales con poderes sobrehumanos que han vivido en secreto en la Tierra durante miles de años. Aunque nunca han intervenido, ahora una amenaza se cierne sobre la humanidad.'),
(6, 6, 'Yellowstone', 'Drama', 9, 6, 'Una familia de rancheros en Montana se enfrenta a los invasores de su tierra.'),
(7, 7, 'Dune', 'Drama', 8, 7, 'Arrakis, también denominado \"Dune\", se ha convertido en el planeta más importante del universo. A su alrededor comienza una gigantesca lucha por el poder que culmina en una guerra interestelar.'),
(8, 8, 'Sin tiempo para morir', 'Acción', 6, 8, 'EL legendario espía James Bond ha dejado el servicio activo. Su paz dura poco ya que su viejo amigo Felix Leiter de la CIA aparece pidiendo ayuda, lo que lleva a Bond al rastro de un misterioso villano armado con nueva tecnología peligrosa.'),
(9, 9, 'Ghostbusters: Afterlife', 'Fantasía', 6, 9, 'Cuando una madre soltera y sus dos hijos se mudan a una nueva ciudad, pronto descubren que tienen una conexión con los Cazafantasmas originales y el legado secreto de su abuelo.'),
(10, 10, 'Sucession', 'Fantasía', 7, 10, 'Succession es una serie de televisión de drama estadounidense sobre una familia disfuncional, dueña de un imperio de medios audiovisuales y de empresas de entretenimiento. Se estrenó el 3 de junio de 2018 en HBO.'),
(11, 11, 'cowboy bebop', 'Acción', 7, 11, 'Wéstern espacial rebosante de acción sobre tres cazarrecompensas —los «vaqueros»— que quieren olvidar su pasado.'),
(12, 12, 'Jaim Bhim', 'Crimen', 10, 12, 'Un abogado lucha por los derechos territoriales de los pueblos tribales.'),
(13, 13, 'Última noche en el Soho', 'Misterio', 7, 13, 'Una niña se remonta en el tiempo a la década de 1960 en Londres.'),
(14, 14, 'Jungle Cuise', 'Aventura', 7, 14, 'Basada en la atracción del parque temático Disneyland, en la que una pequeña embarcación fluvial lleva a un grupo de viajeros a través de una selva llena de animales y reptiles peligrosos, pero con un elemento sobrenatural.'),
(15, 15, 'You', 'Drama', 7, 15, 'Un ingenioso administrador de librerías confía en su conocimiento de Internet para hacer que la mujer de sus sueños se enamore de él.'),
(16, 16, 'Más dura será la caída', 'Del oeste', 7, 16, 'Cuando un forajido descubre que su enemigo va a salir de la cárcel, reúne a su banda para buscar venganza.'),
(17, 17, 'La casa de gucci', 'Drama', 7, 17, 'Cuando Patrizia Reggiani, una forastera de origen humilde, se casa con un miembro de la familia Gucci, su ambición comienza a desentrañar su legado y desencadena una temeraria espiral de traición, decadencia, venganza y asesinato.'),
(18, 18, 'Mayor of Kingstown', 'Suspense', 8, 18, 'The McLusky family are power brokers tackling themes of systemic racism, corruption and inequality in Kingstown, Michigan--where the business of incarceration is the only thriving industry.'),
(19, 19, 'Dexter New Blood', 'Crimen', 9, 19, 'Diez años después del final de la serie, Dexter Morgan vive con un nombre falso en la pequeña ciudad de Iron Lake, Nueva York. A raíz de eventos inesperados resurge su necesidad de dar rienda suelta a sus oscuros instintos.'),
(20, 20, 'Finch', 'Drama', 7, 20, 'En una Tierra postapocalíptica, un robot, construido para proteger la vida del querido perro de su creador, aprende sobre la vida, el amor, la amistad y lo que significa ser humano.'),
(21, 21, 'Sharknado', 'Terror', 3, 21, 'Un gran huracán golpea Los Ángeles, causando inundaciones por toda la ciudad y tornados que escupen tiburones antropófagos. Fin (Ian Ziering), un surfista y propietario de un bar en el muelle de Santa Mónica, acude con su amigo Baz (Jaason Simmons) y su c'),
(22, 22, 'Venom', 'superheroes', 7, 22, 'Venom es una película de superhéroes estadounidense de 2018 que presenta al personaje del mismo nombre, producida por Columbia Pictures en asociación con Marvel Comics y Tencent Pictures. Distribuida por Sony Pictures, es la primera película del Universo '),
(23, 23, 'Your Name', 'Animacion', 10, 23, 'El joven Taki vive en Tokio: la joven Mitsuha, en un pequeño pueblo en las montañas. Durante el sueño, los cuerpos de ambos se intercambian. Recluidos en un cuerpo que les resulta extraño, comienzan a comunicarse..'),
(24, 24, 'Resident Evil Welcome to raccoon city', 'Terror', 6, 24, 'Los supervivientes intentan descubrir la verdad detrás de la malvada Umbrella Corporation. Mientras, luchan contra zombis sedientos de sangre en los páramos de Raccoon City.'),
(25, 25, 'Dragon Ball Evolution', 'Accion', 1, 25, 'Un joven guerrero debe proteger la tierra del vengativo Lord Piccollo, evitando que las siete esferas místicas caigan en sus manos.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntuacion`
--

CREATE TABLE `puntuacion` (
  `id` int(255) NOT NULL,
  `id_peliculas` int(255) NOT NULL,
  `id_usuario` int(255) NOT NULL,
  `puntos` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `puntuacion`
--

INSERT INTO `puntuacion` (`id`, `id_peliculas`, `id_usuario`, `puntos`) VALUES
(9, 1, 42, 5),
(34, 1, 43, 10),
(60, 1, 44, 8),
(55, 1, 45, 6),
(66, 1, 46, 8),
(73, 1, 47, 10),
(89, 1, 48, 9),
(10, 2, 42, 7),
(35, 2, 43, 2),
(61, 2, 44, 2),
(56, 2, 45, 6),
(74, 2, 47, 9),
(91, 2, 48, 1),
(11, 3, 42, 7),
(36, 3, 43, 7),
(58, 3, 45, 5),
(75, 3, 47, 7),
(12, 4, 42, 8),
(37, 4, 43, 4),
(64, 4, 44, 1),
(76, 4, 47, 8),
(13, 5, 42, 6),
(77, 5, 47, 6),
(14, 6, 42, 8),
(38, 6, 43, 5),
(59, 6, 45, 6),
(15, 7, 42, 8),
(39, 7, 43, 7),
(78, 7, 47, 8),
(16, 8, 42, 6),
(40, 8, 43, 8),
(79, 8, 47, 5),
(17, 9, 42, 6),
(41, 9, 43, 5),
(80, 9, 47, 7),
(18, 10, 42, 7),
(42, 10, 43, 8),
(81, 10, 47, 5),
(19, 11, 42, 9),
(43, 11, 43, 8),
(65, 11, 44, 7),
(82, 11, 47, 7),
(20, 12, 42, 2),
(44, 12, 43, 5),
(83, 12, 47, 7),
(90, 12, 48, 10),
(21, 13, 42, 7),
(45, 13, 43, 5),
(84, 13, 47, 5),
(22, 14, 42, 9),
(46, 14, 43, 9),
(72, 14, 46, 10),
(85, 14, 47, 10),
(92, 14, 49, 5),
(23, 15, 42, 7),
(47, 15, 43, 6),
(93, 15, 49, 10),
(24, 16, 42, 8),
(48, 16, 43, 8),
(25, 17, 42, 7),
(49, 17, 43, 8),
(26, 18, 42, 8),
(27, 19, 42, 9),
(50, 19, 43, 4),
(28, 20, 42, 10),
(51, 20, 43, 9),
(29, 21, 42, 1),
(52, 21, 43, 1),
(63, 21, 44, 2),
(67, 21, 46, 7),
(86, 21, 47, 5),
(30, 22, 42, 10),
(68, 22, 46, 9),
(31, 23, 42, 10),
(53, 23, 43, 10),
(69, 23, 46, 9),
(32, 24, 42, 10),
(70, 24, 46, 9),
(33, 25, 42, 0),
(54, 25, 43, 1),
(62, 25, 44, 1),
(57, 25, 45, 3),
(71, 25, 46, 8),
(87, 25, 47, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `director` varchar(255) DEFAULT NULL,
  `prota` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `staff`
--

INSERT INTO `staff` (`id`, `director`, `prota`) VALUES
(1, 'Rawson Marshall Thurber', 'The rock'),
(2, 'Destin Daniel Cretton', 'Simu Liu'),
(3, 'Rafe Judkins', 'Daniel Henney'),
(4, 'Arcane', 'Jinx'),
(5, 'Chloé Zaho', 'Gemma Chann'),
(6, 'John Linson', 'Kevin Costner'),
(7, 'Dennis Villenueve', 'Timothée Chalamet'),
(8, 'Cary Joji', 'Daniel Craig'),
(9, 'Jason Reitman', 'Carrie Conn'),
(10, 'Jesse Armstrong', 'Nicholas Braun'),
(11, 'Christopher L. Yost', 'John Cho'),
(12, 'Gananvel', 'Suriya'),
(13, 'Edgar Wright', 'Thomasin McKenzie'),
(14, 'Jaume Collet-Serra', 'The rock'),
(15, 'Sera Ganle', 'Penn Bad'),
(16, 'Jeymes Samuel', 'Jonathan Majors'),
(17, 'Ridley Scott', 'Lady Gaga'),
(18, 'Hugh Dillon', 'Dianne Wiest'),
(19, 'James Manos', 'Dexter'),
(20, 'Miguel Sapochnik', 'Tom Hanks'),
(21, 'Anthoni C. Ferrante', 'Tara Reid'),
(22, 'Ruben Fleischer', 'Tom Hardy'),
(23, 'Makoto Shinkai', 'Taki y Mitsuha'),
(24, 'Johannes Roberts', 'Kaya Scodelario'),
(25, 'James Wong', 'Justin Chatwin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `usuario` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `email`, `password`, `usuario`) VALUES
(42, 'admin@gmail.com', '$2y$10$vE.xz/6kYxG3gCRowQ0yOu9EtXOmkFj1tajF7W1UVqvpEAsJ8Tb1e', 'admin_god'),
(43, 'srrex60@gmail.com', '$2y$10$UVdUvzGPGtFhuRb1ZjX4uOwWlS1ZYp4zSKZ9ME1S1IT1ZHInBTDcK', 'sergio'),
(44, 'juma@gmail.com', '$2y$10$HwxCidf7FZFUdspamDlH0uKloMXgDVTjWSFqlUNNJ26e1ReCv83Ui', 'juma'),
(45, 'marta@spam.com', '$2y$10$ruBJTGR7KQAC8ylZJDlxbuK0.Z0JDfXkJ8XBitQdfiJlb5sbpTRNC', 'Marta_tu_vecina'),
(46, 'prueba@gmail.com', '$2y$10$H6nRRrEMuB6gaCL7V164Ee1ms9rt37qxbv235Rip2b6zoUA3HwpAS', 'Azucar_Veloz'),
(47, 'fetiRock@gmail.com', '$2y$10$HRrkvtQiOr6DdzolpSVtQu5rrcF8dAviYKQp7S4o0RHRg2C0hPBGe', 'fetichista_therock'),
(48, 'panchito@pancrasio.com', '$2y$10$sFS0O0uFCSpOPhJ9ojYbHOlFyUmsS5dEZrpkZ30W4xnvl/MIPAHGe', 'panchito_pancrasio'),
(49, 'manuela@gmail.com', '$2y$10$ZLLwSqn7PeO7liXrTjI1T.owwlqh3TD3oJS7RS50J6TM9nQnqgTmi', 'yoquese');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUsuario` (`idUsuario`),
  ADD KEY `idPelicula` (`idPelicula`);

--
-- Indices de la tabla `multimedia`
--
ALTER TABLE `multimedia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `principal`
--
ALTER TABLE `principal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idMultimedia` (`idMultimedia`),
  ADD KEY `idStaff` (`idStaff`);

--
-- Indices de la tabla `puntuacion`
--
ALTER TABLE `puntuacion`
  ADD PRIMARY KEY (`id_peliculas`,`id_usuario`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT de la tabla `multimedia`
--
ALTER TABLE `multimedia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `principal`
--
ALTER TABLE `principal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `puntuacion`
--
ALTER TABLE `puntuacion`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT de la tabla `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`idPelicula`) REFERENCES `principal` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `principal`
--
ALTER TABLE `principal`
  ADD CONSTRAINT `principal_ibfk_1` FOREIGN KEY (`idMultimedia`) REFERENCES `multimedia` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `principal_ibfk_2` FOREIGN KEY (`idStaff`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `puntuacion`
--
ALTER TABLE `puntuacion`
  ADD CONSTRAINT `puntuacion_ibfk_1` FOREIGN KEY (`id_peliculas`) REFERENCES `principal` (`id`),
  ADD CONSTRAINT `puntuacion_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
