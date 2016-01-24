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
(592, '', 'michael lapidoth', '2/9/1968', '01149719324', 'mikelapidoth@hotmail.com', 'maschwitz', 'tiempo, camioneta, otro, camioneta cerrada (duster)', 'otro, ventas envases', 'tengo acceso a las industrias que visito por venta de envases y envasadoras, algunas alimenticias grandes . ambiente de rugby veteranos.\r\nme llaman para darme donaciones de electrodomesticos, ropa y alimentos que envio a santa fe norte, el arco (benavidez) y dique lujan (comedor)\r\ntambien estoy como voluntario en alegraÃ±atas\r\npuedo sumarme o aportar a proyectos, pero no hacerme cargo, ya tengo algunos propios ya . En su momento me ofrecieron bicis si necesitan de nuevo. ', 'no', 'si', 'si', '2015-04-15'),
(600, '', 'Pablo Archenti', '02/08/1979', '47918685', 'pabloarchenti@gmail.com', 'Florida', 'tiempo, camioneta, otro', 'otro', 'Todo bien', 'no', 'si', 'si', '2015-04-15');

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
(29, 'Fundación Umbrales', '20/09/2013', '20/10/2013', '', 'UMBRALES es una asociación civil sin fines de lucro dedicada a la promoción de los derechos sociales, el trabajo por la paz y el fortalecimiento de capacidades y habilidades de niños, niñas y adolescentes.<br /><br />Entre las actividades que desarrollan con los niños, hay talleres de arte, y de música, en este caso "Desde tu lugar" fue puente en la recolección de donaciones de instrumentos.', '12_12_56instru.jpeg', 'finalizado', 'OTROS', '', 'OTROS', '', 'OTROS', '', 'OTROS', '', 'OTROS', '', 'OTROS', '', '2014-02-10'),
(75, 'Inundaciones Córdoba 2015', '20-02-2015', '11-03-2015', '', 'Luego de las terribles lluvias e inundaciones que pasó la población de Córdoba, Desde tu Lugar junto con un montón de voluntarios estuvieron recolectando donaciones para enviar a "El pueblito", Salsipuedes, Córdoba, lugar donde viven aproximadamente 4.000 habitantes y que más de 100 familias perdieron todo.<br />Gracias a la empresa de logística DADA que colaboró con el traslado de las cosas!! y gracias a cada uno de los voluntarios que participó en la jornada de clasificación de donaciones, a los que donaron un montón de cosas, y a los que ayudaron a llevar las cosas hasta el depósito!!', '09_06_45Inundaciones Córdoba.jpeg', 'finalizado', 'OTROS', '', 'OTROS', '', 'OTROS', '', 'OTROS', '', 'OTROS', '', 'OTROS', '', '2015-04-06');


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
