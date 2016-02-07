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

use desdetul_bd;

--
-- Dumping data for table `personas`
--
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
INSERT INTO `personas` VALUES (411,'','Sol Lisdero','5/11/1979','1559940471','sol.lisdero@gmail.com','','compra_chica, tiempo, auto, voluntario_eventos','artista, otro, astrologa','Soy editora de fotografia free lance, trabajo para el grupo de revistas de La Nacion. \r\nMas adelante, me gustaria tener algun proyecto a cargo pero por el momento estoy embarazada y prefiero sumarme a cosas que ya esten funcionando.','no','si','','2015-02-03',NULL),(592,'','michael lapidoth','2/9/1968','01149719324','mikelapidoth@hotmail.com','maschwitz','tiempo, camioneta, otro, camioneta cerrada (duster)','otro, ventas envases','tengo acceso a las industrias que visito por venta de envases y envasadoras, algunas alimenticias grandes . ambiente de rugby veteranos.\r\nme llaman para darme donaciones de electrodomesticos, ropa y alimentos que envio a santa fe norte, el arco (benavidez) y dique lujan (comedor)\r\ntambien estoy como voluntario en alegraÃ±atas\r\npuedo sumarme o aportar a proyectos, pero no hacerme cargo, ya tengo algunos propios ya . En su momento me ofrecieron bicis si necesitan de nuevo. ','no','si','si','2015-04-15',NULL),(600,'','Pablo Archenti','02/08/1979','47918685','pabloarchenti@gmail.com','Florida','tiempo, camioneta, otro','otro','Todo bien','no','si','si','2015-04-15',NULL);
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;


--
-- Dumping data for table `proyectos`
--
/*!40000 ALTER TABLE `proyectos` DISABLE KEYS */;
INSERT INTO `proyectos` VALUES (28,'Proyecto Fuerte Apache y Cava','21/10/2013','21/10/2013','','100 chicos de fuerte apache y la cava fueron invitados por RGB, a disfrutar del show de Disney Live','12_18_28fuerte apache.jpeg','finalizado','OTROS','','OTROS','','OTROS','','OTROS','','OTROS','','OTROS','','2014-02-10'),(29,'Fundación Umbrales','20/09/2013','','','UMBRALES es una asociación civil sin fines de lucro dedicada a la promoción de los derechos sociales, el trabajo por la paz y el fortalecimiento de capacidades y habilidades de niños, niñas y adolescentes.<br /><br />Entre las actividades que desarrollan con los niños, hay talleres de arte, y de música, en este caso \"Desde tu lugar\" fue puente en la recolección de donaciones de instrumentos.','12_12_56instru.jpeg','actual','OTROS','160 chicos de Misiones están esperando empezar las clases con una mochila COMPLETA. Contamos con VOS!!!','DINERO','Para la compra de la misma. La mochila completa cuesta $500 (Se puede hacer transferencia!).','VEHICULOS','Para ayudarnos con la logística. Hay gente que se le complica muchísimo entregar la mochila. De ser asi, vos nos podes ayudar.','TIEMPO','El 22, 23 y 24 de Febrero, vamos a estar recibiendo las mochilas en Primera Junta 946 (Bajo de San Isidro) de 9:30 a 18hs. Te sumas?','OTROS','DIFUSIÓN: entre amigos y familiares, así llegamos a las 160 mochilas!','OTROS','Para la compra de la misma. La mochila completa cuesta $500 (Se puede hacer transferencia!).','2014-02-10'),(75,'Inundaciones Córdoba 2015','20-02-2015','11-03-2015','','Luego de las terribles lluvias e inundaciones que pasó la población de Córdoba, Desde tu Lugar junto con un montón de voluntarios estuvieron recolectando donaciones para enviar a \"El pueblito\", Salsipuedes, Córdoba, lugar donde viven aproximadamente 4.000 habitantes y que más de 100 familias perdieron todo.<br />Gracias a la empresa de logística DADA que colaboró con el traslado de las cosas!! y gracias a cada uno de los voluntarios que participó en la jornada de clasificación de donaciones, a los que donaron un montón de cosas, y a los que ayudaron a llevar las cosas hasta el depósito!!','09_06_45Inundaciones Córdoba.jpeg','finalizado','OTROS','aadaasd','OTROS','','OTROS','','OTROS','','OTROS','','OTROS','','2015-04-06'),(76,'TVS PARA MANOS MISIONERAS','13/1/2016','','','Una vez mas empieza el año, y los chicos en Marzo empiezan su año escolar. Hay muchos de ellos, que necesitan los útiles, la mochila y el amor para que la tarea de ESTUDIAR y APRENDER se les haga un poquitito mas fácil. Este año, elegimos a las 160 chicos que asisten al apoyo escolar \"Fortalecer Misiones\" Que Hacen? Son un grupo de jóvenes que apuesta a la participación y al compromiso ciudadano como herramienta principal para generar los cambios que anhelan en la sociedad. Ellos desarrollaron un apoyo escolar en Misiones, para promover el desarrollo de la comunidad de Posadas y Garupa, a través de la educación y el trabajo. ','11_26_11Flyer Mochilas 2016 - DTL.png','actual','OTROS','160 chicos de Misiones están esperando empezar las clases con una mochila COMPLETA. Contamos con VOS!!!','DINERO','Para la compra de la misma. La mochila completa cuesta $500 (Se puede hacer transferencia!).','VEHICULOS','Para ayudarnos con la logística. Hay gente que se le complica muchísimo entregar la mochila. De ser asi, vos nos podes ayudar.','','','','','','','0000-00-00');
/*!40000 ALTER TABLE `proyectos` ENABLE KEYS */;

--
-- Dumping data for table `fotos`
--

/*!40000 ALTER TABLE `fotos` DISABLE KEYS */;
INSERT INTO `fotos` VALUES (1,28,'17_58_11fuerteapacheycava1.jpeg','0000-00-00',0,0),(2,28,'17_58_17fuerteapacheycava2.jpeg','0000-00-00',0,0),(3,28,'17_58_21fuerteapacheycava3.jpeg','0000-00-00',0,0),(4,28,'17_58_24fuerteapacheycava4.jpeg','0000-00-00',0,0),(5,28,'17_58_29fuerteapacheycava5.jpeg','0000-00-00',0,0),(6,29,'12_06_46umbrales1.jpeg','0000-00-00',0,0),(7,29,'12_06_49umbrales2.jpeg','0000-00-00',0,0),(8,29,'12_06_52umbrales3.jpeg','0000-00-00',0,0),(9,75,'09_41_25Cordoba 1.jpeg','0000-00-00',0,0),(10,75,'09_41_31Cordoba 2.jpeg','0000-00-00',0,0),(11,75,'09_41_40Cordoba 3.jpeg','0000-00-00',0,0),(12,75,'09_41_48Cordoba 4.jpeg','0000-00-00',0,0),(13,75,'09_41_54Cordoba 5.jpeg','0000-00-00',0,0),(14,75,'09_42_04Cordoba 6.jpeg','0000-00-00',0,0),(15,75,'09_42_12Cordoba 7.jpeg','0000-00-00',0,0),(16,76,'13_55_09SAM_5550.jpeg','0000-00-00',0,0);
/*!40000 ALTER TABLE `fotos` ENABLE KEYS */;

--
-- Dumping data for table `Suscription`
--
INSERT INTO `Subscription` (`volunteerId`,`projectId`) VALUES (600,75),(600,76);
