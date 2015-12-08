-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 09-09-2015 a las 10:41:03
-- Versión del servidor: 5.6.23
-- Versión de PHP: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `desdetul_bd`
--

-- --------------------------------------------------------

CREATE SCHEMA IF NOT EXISTS desdetul_bd;

use desdetul_bd;

--
-- Estructura de tabla para la tabla `famosos`
--

CREATE TABLE IF NOT EXISTS `famosos` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `foto_listador` varchar(150) NOT NULL,
  `foto_grande` varchar(150) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=66 ;

--
-- Volcado de datos para la tabla `famosos`
--

INSERT INTO `famosos` (`id`, `foto_listador`, `foto_grande`, `fecha`) VALUES
(22, '09_58_0612_19_46AlacranOK.jpeg', '09_58_0612_19_46AlacranOK.jpeg', '2014-03-27'),
(65, '14_51_5510_19_03Bertotti_Amador.jpeg', '14_51_5510_19_03Bertotti_Amador.jpeg', '2014-04-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotos`
--

CREATE TABLE IF NOT EXISTS `fotos` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `id_galeria` int(4) NOT NULL,
  `foto` varchar(300) NOT NULL,
  `alta` date NOT NULL,
  `ancho` int(20) NOT NULL,
  `alto` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=448 ;

--
-- Volcado de datos para la tabla `fotos`
--

INSERT INTO `fotos` (`id`, `id_galeria`, `foto`, `alta`, `ancho`, `alto`) VALUES
(10, 5, '13_49_58Hydrangeas.jpeg', '2013-12-12', 1024, 768),
(447, 99, '12_31_32afabetizacion_dia.jpeg', '2015-09-08', 577, 515);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotos_jovenes`
--

CREATE TABLE IF NOT EXISTS `fotos_jovenes` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `id_galeria` int(4) NOT NULL,
  `foto` varchar(300) NOT NULL,
  `alta` date NOT NULL,
  `ancho` int(20) NOT NULL,
  `alto` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Volcado de datos para la tabla `fotos_jovenes`
--

INSERT INTO `fotos_jovenes` (`id`, `id_galeria`, `foto`, `alta`, `ancho`, `alto`) VALUES
(5, 3, '11_42_34Penguins.jpeg', '2014-01-07', 1024, 768),
(26, 5, '14_12_2412.jpeg', '2014-03-20', 500, 500);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jovenes`
--

CREATE TABLE IF NOT EXISTS `jovenes` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `texto` varchar(500) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `texto_largo` varchar(3000) NOT NULL,
  `foto` varchar(150) NOT NULL,
  `estado` varchar(900) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `jovenes`
--

INSERT INTO `jovenes` (`id`, `titulo`, `texto`, `texto_largo`, `foto`, `estado`, `fecha`) VALUES
(4, 'Jornada de capacitación Capilla San Ramón', 'Alumnos de la secundaria del colegio San Gregory''s armaron set de higiene personal.', 'Entregaron un kit a cada chico que asiste a la capilla San Ram Virreyes, compartieron el desayuno con un montÃ³n de cosas ricas que llevaron, una odontÃ³loga dio una charla explicando cÃ³mo debemos lavarnos los dientes.<br /><br />Â¡Gracias Colegio San Gregory ''s por cumplir el primer proyecto de jÃ³venes!', '13_07_211422614_178749655650329_556819203_n.jpeg', 'finalizado', '2014-02-10'),
(5, 'Jornada de armado de cuadernos', 'JÃ³venes voluntarios participaron del armado de 156 cuadernos!', 'Movimiento Darte, ONG creada por Ma. Elena Cruz, que se dedica a la producciÃ³n de cuadernos con material de descarte para donar a chicos que lo necesitan, se comprometiÃ³ con la donaciÃ³n de 156 cuadernos para sumar al proyecto mochilas que hemos entregado en escuelitas de Salta, TucumÃ¡n y delta de Campana.<br /><br />Para el armado, organizamos una jornada junto a LIDER.AR, y Movimiento Darte, logrando en un dia armar todos los cuadernos!<br />Gracias al Club CASI, Agustina Faustin, Ma. Elena y a todos los jÃ³venes que colaboraron!!', '12_49_55Caratula cuadernos.jpeg', 'finalizado', '2014-03-20'),
(6, 'Kit de limpieza para la Fundación CREI ', 'Los alumnos de cuarto aÃ±o del Colegio San Ignacio se comprometieron a armar kits personalizados de higiene para los jÃ³venes y adultos a los que ayuda la FundaciÃ³n.', 'c.r.e.i. es una organizaciÃ³n destinada a mejorar la calidad de vida de niÃ±os, jÃ³venes y adultos con discapacidad intelectual a travÃ©s de la implementaciÃ³n de saberes y buenas prÃ¡cticas en:<br />EducaciÃ³n Primaria<br />Centro de FormaciÃ³n Integral<br />IntegraciÃ³n Escolar<br />Centro de DÃ­a Ocupacional<br /><br />AcompaÃ±an y orientan a las familias y su contexto social en su transcurso por las distintas etapas vitales.<br /><br />Los alumnos de cuarto aÃ±o del Colegio San Ignacio se estÃ¡n encargando de armar kits personalizados de higiene para los jÃ³venes y adultos a los que ayuda la FundaciÃ³n. El problema es que estos jÃ³venes y adultos muchas veces no se dan cuenta que estÃ¡n sucios y no recuerdan con quÃ© ni cÃ³mo deben higienizarse. <br />Es por esto que los chicos tuvieron la GRAN IDEA de hacerles un LIBRITO INSTRUCTIVO con dibujos y nÃºmeros que asocien el dibujo con el elemento de higiene correspondiente, y tambiÃ©n consiguieron cada uno de los elementos que necesitarÃ­an usar. <br />GRACIAS CHICOS!!!', '11_23_29crei.jpeg', 'finalizado', '2014-07-24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE IF NOT EXISTS `personas` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `mesayuda` varchar(200) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `fecha_nacimiento` varchar(20) NOT NULL,
  `celular` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `localidad` varchar(300) NOT NULL,
  `colaborar` varchar(200) NOT NULL,
  `profesion` varchar(200) NOT NULL,
  `comentarios` varchar(700) NOT NULL,
  `proyectos` varchar(10) NOT NULL,
  `juntar_cosas` varchar(10) NOT NULL,
  `recibir_info` varchar(10) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=770 ;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id`, `mesayuda`, `nombre`, `fecha_nacimiento`, `celular`, `email`, `localidad`, `colaborar`, `profesion`, `comentarios`, `proyectos`, `juntar_cosas`, `recibir_info`, `fecha`) VALUES
(411, '', 'Sol Lisdero', '5/11/1979', '1559940471', 'sol.lisdero@gmail.com', '', 'compra_chica, tiempo, auto, voluntario_eventos', 'artista, otro, astrologa', 'Soy editora de fotografia free lance, trabajo para el grupo de revistas de La Nacion. \r\nMas adelante, me gustaria tener algun proyecto a cargo pero por el momento estoy embarazada y prefiero sumarme a cosas que ya esten funcionando.', 'no', 'si', '', '2015-02-03'),
(592, '', 'michael lapidoth', '2/9/1968', '01149719324', 'mikelapidoth@hotmail.com', 'maschwitz', 'tiempo, camioneta, otro, camioneta cerrada (duster)', 'otro, ventas envases', 'tengo acceso a las industrias que visito por veta de envases y envasadoras, algunas alimenticias grandes . ambiente de rugby veteranos.\r\nme llaman para darme donaciones de electrodomesticos, ropa y alimentos que envio a santa fe norte, el arco (benavidez) y dique lujan (comedor)\r\ntambien estoy como voluntario en alegraÃ±atas\r\npuedo sumarme o aportar a proyectos, pero no hacerme cargo, ya tengo algunos propios ya . En su momento me ofrecieron bicis si necesitan de nuevo. ', 'no', 'si', 'si', '2015-04-15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE IF NOT EXISTS `proyectos` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(900) CHARACTER SET utf8 NOT NULL,
  `fecha_apertura` varchar(2000) NOT NULL,
  `fecha_cierre` varchar(2000) NOT NULL,
  `link_youtube` varchar(400) NOT NULL,
  `descripcion` varchar(9000) CHARACTER SET utf8 NOT NULL,
  `foto` varchar(150) NOT NULL,
  `estado` varchar(900) NOT NULL,
  `iconosenecesita1` varchar(100) NOT NULL,
  `senecesita1` varchar(300) NOT NULL,
  `iconosenecesita2` varchar(100) NOT NULL,
  `senecesita2` varchar(300) NOT NULL,
  `iconosenecesita3` varchar(100) NOT NULL,
  `senecesita3` varchar(300) NOT NULL,
  `iconosenecesita4` varchar(100) NOT NULL,
  `senecesita4` varchar(300) NOT NULL,
  `iconosenecesita5` varchar(100) NOT NULL,
  `senecesita5` varchar(300) NOT NULL,
  `iconosenecesita6` varchar(100) NOT NULL,
  `senecesita6` varchar(300) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=100 ;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`id`, `titulo`, `fecha_apertura`, `fecha_cierre`, `link_youtube`, `descripcion`, `foto`, `estado`, `iconosenecesita1`, `senecesita1`, `iconosenecesita2`, `senecesita2`, `iconosenecesita3`, `senecesita3`, `iconosenecesita4`, `senecesita4`, `iconosenecesita5`, `senecesita5`, `iconosenecesita6`, `senecesita6`, `fecha`) VALUES
(28, 'Proyecto Fuerte Apache y Cava', '21/10/2013', '21/10/2013', '', '100 chicos de fuerte apache y la cava fueron invitados por RGB, a disfrutar del show de Disney Live', '12_18_28fuerte apache.jpeg', 'finalizado', 'OTROS', '', 'OTROS', '', 'OTROS', '', 'OTROS', '', 'OTROS', '', 'OTROS', '', '2014-02-10'),
(29, 'FundaciÃ³n Umbrales', '20/09/2013', '20/10/2013', '', 'UMBRALES es una asociaciÃ³n civil sin fines de lucro dedicada a la promociÃ³n de los derechos sociales, el trabajo por la paz y el fortalecimiento de capacidades y habilidades de niÃ±os, niÃ±as y adolescentes.<br /><br />Entre las actividades que desarrollan con los niÃ±os, hay talleres de arte, y de mÃºsica, en este caso "Desde tu lugar" fue puente en la recolecciÃ³n de donaciones de instrumentos.', '12_12_56instru.jpeg', 'finalizado', 'OTROS', '', 'OTROS', '', 'OTROS', '', 'OTROS', '', 'OTROS', '', 'OTROS', '', '2014-02-10'),
(75, 'Inundaciones Córdoba 2015', '20-02-2015', '11-03-2015', '', 'Luego de las terribles lluvias e inundaciones que pasÃ³ la poblaciÃ³n de CÃ³rdoba, Desde tu Lugar junto con un montÃ³n de voluntarios estuvieron recolectando donaciones para enviar a "El pueblito", Salsipuedes, CÃ³rdoba, lugar donde viven aproximadamente 4.000 habitantes y que mÃ¡s de 100 familias perdieron todo.<br />Gracias a la empresa de logÃ­stica DADA que colaborÃ³ con el traslado de las cosas!! y gracias a cada uno de los voluntarios que participÃ³ en la jornada de clasificaciÃ³n de donaciones, a los que donaron un montÃ³n de cosas, y a los que ayudaron a llevar las cosas hasta el depÃ³sito!!', '09_06_45Inundaciones CÃ³rdoba.jpeg', 'finalizado', 'OTROS', '', 'OTROS', '', 'OTROS', '', 'OTROS', '', 'OTROS', '', 'OTROS', '', '2015-04-06');


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
