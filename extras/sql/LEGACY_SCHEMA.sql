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
