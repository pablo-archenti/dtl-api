CREATE DATABASE  IF NOT EXISTS `desdetul_bd` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `desdetul_bd`;
-- MySQL dump 10.13  Distrib 5.5.46, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: desdetul_bd
-- ------------------------------------------------------
-- Server version	5.5.45

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `AccessToken`
--

DROP TABLE IF EXISTS `AccessToken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AccessToken` (
  `id` varchar(255) NOT NULL,
  `ttl` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AccessToken`
--

LOCK TABLES `AccessToken` WRITE;
/*!40000 ALTER TABLE `AccessToken` DISABLE KEYS */;
INSERT INTO `AccessToken` VALUES ('03g26kXG3kutJJR5ZZdarrccPvvyEzMBj27uPEghbvVufJfzTO2NGa62kAWYUcEf',31536000,'2015-11-28 00:25:07',770),('1zC6CwWeoAOOu5t1fIxCK9u19tVqP1oahk6WyFtIpZWK7I3fXmrYe05zyr3gbnGI',31536000,'2015-11-21 22:22:06',770),('6bdXGT7hiafW5AE4CdQCEHTshEaLgHejkGAm69bXLEZC5zCARooIIf3VDexulwg8',31536000,'2015-12-07 02:58:18',803),('6pwSPwR6o01kj1xzEeZnFX1FpL5jGAFApBdANmFcv6PeBgVN3F3TdgKwCvOJIv9Q',31536000,'2015-12-06 18:48:58',770),('bbXaWJQT9PC6ugsRR978TvkxeqIPW3SzrMrLq3pOWdIfwe10ZiqcBUAR6pDxF672',31536000,'2015-12-07 00:52:41',795),('gBZq9XzrtT7D6tkoYy8OuBNBgJDCKsC50BDuzuMd5DqrgoRuHHKMAAMpqTLIyvw8',31536000,'2015-12-06 18:49:26',770),('hsyIupDeuiReprp5GuYhEW6AIVlKUNlDWHar9BNPusGXRdQqfJaQKi2Kd96iDJ8k',31536000,'2015-12-07 00:49:18',793),('hytaAaPiUxIEpJlJiVIv3lnTDMbdNUKu8ATF6lQ1CCE6diCZNMKKm6Vlo4fIFf4L',31536000,'2015-12-07 00:50:23',794),('iesqowdLleox8FrOksrMT8xScl4lWIFDQf46lZX8B4n28mWdBG90sUHA0jbX7SOp',31536000,'2015-12-07 00:57:46',797),('IfoSK2wtCHJcdpBLfYpQx0heHgDPJUjydCtNnnHLs0ONsl8PrQhH1A9s9iYaKLqq',31536000,'2015-12-07 01:02:48',801),('LxAa0NHD310Ff0orC6IyOV6eUROqtDwHAhvM8Eg9XMjaqDlRj0KFf0FHc4bzYv4W',31536000,'2015-12-07 01:00:42',799),('mEGHPR77AbWIHxOwqNyb79uKSpN4fVYwsMV7HepHxFUo5p7dswQduevmqWG23cXE',31536000,'2015-12-07 01:03:05',802),('NRcsZCQHtDhgy3iFX5W58agS8BBeL1uoHcujjSzvE9dAAKRRAexMDLsjTQy2npkE',31536000,'2015-12-07 01:00:00',798),('rDp3Hcafsmr6F17BA9XAzYvwGDU2zC6kbXpl8HndelOGlW5KseqRO5RvLep9Hyoe',31536000,'2015-12-07 01:02:13',800),('rIWHNFSVcYV2UW17PjjJm8Fsv4dUXN5GCGloqQTzAn7cyIoK7jKH9nKpmH7h3mmL',31536000,'2015-12-07 00:57:00',796),('VggH6ukY4eY6rtvpZ3sV4kHpf5dUM59RCQDB5eHyOfFDNLoMDibgmpTctIks1KFt',31536000,'2015-12-07 00:20:40',770),('w4tgIXC04ne8JSuvABwbAZjYPV1OeZrJwBuYIqz44zawYjlPVS12Ig6kuryRZDoJ',31536000,'2015-12-06 18:50:23',770),('x6EJPCpdBMWWkfcFFpCtJHg2JIwL2kyAHdmhErAsUNbFWO3NLH5HgFOAvF2hkM6M',31536000,'2015-12-07 00:47:52',792),('zWxddBsqUUo7yNZyulDESeMd99iKGVCba80DWBerOcG5Ewaenn9WPToca6mSD8o0',31536000,'2015-12-06 18:49:56',770);
/*!40000 ALTER TABLE `AccessToken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LoginCode`
--

DROP TABLE IF EXISTS `LoginCode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LoginCode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` int(11) DEFAULT NULL,
  `ttl` int(11) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `volunteerId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LoginCode`
--

LOCK TABLES `LoginCode` WRITE;
/*!40000 ALTER TABLE `LoginCode` DISABLE KEYS */;
INSERT INTO `LoginCode` VALUES (1,8047,43200,'2015-12-07 00:20:36',770),(23,6358,43200,'2015-12-07 00:47:52',792),(24,5640,43200,'2015-12-07 00:49:18',793),(25,8038,43200,'2015-12-07 00:50:23',794),(26,2896,43200,'2015-12-07 00:52:41',795),(27,3624,43200,'2015-12-07 00:57:00',796),(28,7288,43200,'2015-12-07 00:57:46',797),(29,5191,43200,'2015-12-07 00:59:33',798),(30,2631,43200,'2015-12-07 01:00:42',799),(31,1504,43200,'2015-12-07 01:02:13',800),(32,3481,43200,'2015-12-07 01:02:48',801),(33,1772,43200,'2015-12-07 01:03:05',802),(34,3952,43200,'2015-12-07 02:57:56',803),(35,2736,43200,'2015-12-08 02:53:40',804),(36,2705,43200,'2015-12-08 02:56:29',805),(37,2355,43200,'2015-12-08 03:09:10',806),(38,1986,43200,'2015-12-08 03:09:46',807),(39,9202,43200,'2015-12-08 03:17:55',808);
/*!40000 ALTER TABLE `LoginCode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `famosos`
--

DROP TABLE IF EXISTS `famosos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `famosos` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `foto_listador` varchar(150) NOT NULL,
  `foto_grande` varchar(150) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `famosos`
--

LOCK TABLES `famosos` WRITE;
/*!40000 ALTER TABLE `famosos` DISABLE KEYS */;
INSERT INTO `famosos` VALUES (22,'09_58_0612_19_46AlacranOK.jpeg','09_58_0612_19_46AlacranOK.jpeg','2014-03-27'),(65,'14_51_5510_19_03Bertotti_Amador.jpeg','14_51_5510_19_03Bertotti_Amador.jpeg','2014-04-01');
/*!40000 ALTER TABLE `famosos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fotos`
--

DROP TABLE IF EXISTS `fotos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fotos` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `id_galeria` int(4) NOT NULL,
  `foto` varchar(300) NOT NULL,
  `alta` date NOT NULL,
  `ancho` int(20) NOT NULL,
  `alto` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=448 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fotos`
--

LOCK TABLES `fotos` WRITE;
/*!40000 ALTER TABLE `fotos` DISABLE KEYS */;
INSERT INTO `fotos` VALUES (10,5,'13_49_58Hydrangeas.jpeg','2013-12-12',1024,768),(447,99,'12_31_32afabetizacion_dia.jpeg','2015-09-08',577,515);
/*!40000 ALTER TABLE `fotos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fotos_jovenes`
--

DROP TABLE IF EXISTS `fotos_jovenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fotos_jovenes` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `id_galeria` int(4) NOT NULL,
  `foto` varchar(300) NOT NULL,
  `alta` date NOT NULL,
  `ancho` int(20) NOT NULL,
  `alto` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fotos_jovenes`
--

LOCK TABLES `fotos_jovenes` WRITE;
/*!40000 ALTER TABLE `fotos_jovenes` DISABLE KEYS */;
INSERT INTO `fotos_jovenes` VALUES (5,3,'11_42_34Penguins.jpeg','2014-01-07',1024,768),(26,5,'14_12_2412.jpeg','2014-03-20',500,500);
/*!40000 ALTER TABLE `fotos_jovenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jovenes`
--

DROP TABLE IF EXISTS `jovenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jovenes` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `texto` varchar(500) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `texto_largo` varchar(3000) NOT NULL,
  `foto` varchar(150) NOT NULL,
  `estado` varchar(900) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jovenes`
--

LOCK TABLES `jovenes` WRITE;
/*!40000 ALTER TABLE `jovenes` DISABLE KEYS */;
INSERT INTO `jovenes` VALUES (4,'Jornada de capacitación Capilla San Ramón','Alumnos de la secundaria del colegio San Gregory\'s armaron set de higiene personal.','Entregaron un kit a cada chico que asiste a la capilla San Ram Virreyes, compartieron el desayuno con un montÃ³n de cosas ricas que llevaron, una odontÃ³loga dio una charla explicando cÃ³mo debemos lavarnos los dientes.<br /><br />Â¡Gracias Colegio San Gregory \'s por cumplir el primer proyecto de jÃ³venes!','13_07_211422614_178749655650329_556819203_n.jpeg','finalizado','2014-02-10'),(5,'Jornada de armado de cuadernos','JÃ³venes voluntarios participaron del armado de 156 cuadernos!','Movimiento Darte, ONG creada por Ma. Elena Cruz, que se dedica a la producciÃ³n de cuadernos con material de descarte para donar a chicos que lo necesitan, se comprometiÃ³ con la donaciÃ³n de 156 cuadernos para sumar al proyecto mochilas que hemos entregado en escuelitas de Salta, TucumÃ¡n y delta de Campana.<br /><br />Para el armado, organizamos una jornada junto a LIDER.AR, y Movimiento Darte, logrando en un dia armar todos los cuadernos!<br />Gracias al Club CASI, Agustina Faustin, Ma. Elena y a todos los jÃ³venes que colaboraron!!','12_49_55Caratula cuadernos.jpeg','finalizado','2014-03-20'),(6,'Kit de limpieza para la Fundación CREI ','Los alumnos de cuarto aÃ±o del Colegio San Ignacio se comprometieron a armar kits personalizados de higiene para los jÃ³venes y adultos a los que ayuda la FundaciÃ³n.','c.r.e.i. es una organizaciÃ³n destinada a mejorar la calidad de vida de niÃ±os, jÃ³venes y adultos con discapacidad intelectual a travÃ©s de la implementaciÃ³n de saberes y buenas prÃ¡cticas en:<br />EducaciÃ³n Primaria<br />Centro de FormaciÃ³n Integral<br />IntegraciÃ³n Escolar<br />Centro de DÃ­a Ocupacional<br /><br />AcompaÃ±an y orientan a las familias y su contexto social en su transcurso por las distintas etapas vitales.<br /><br />Los alumnos de cuarto aÃ±o del Colegio San Ignacio se estÃ¡n encargando de armar kits personalizados de higiene para los jÃ³venes y adultos a los que ayuda la FundaciÃ³n. El problema es que estos jÃ³venes y adultos muchas veces no se dan cuenta que estÃ¡n sucios y no recuerdan con quÃ© ni cÃ³mo deben higienizarse. <br />Es por esto que los chicos tuvieron la GRAN IDEA de hacerles un LIBRITO INSTRUCTIVO con dibujos y nÃºmeros que asocien el dibujo con el elemento de higiene correspondiente, y tambiÃ©n consiguieron cada uno de los elementos que necesitarÃ­an usar. <br />GRACIAS CHICOS!!!','11_23_29crei.jpeg','finalizado','2014-07-24');
/*!40000 ALTER TABLE `jovenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personas`
--

DROP TABLE IF EXISTS `personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personas` (
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
  `actualizado` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=809 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personas`
--

LOCK TABLES `personas` WRITE;
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
INSERT INTO `personas` VALUES (411,'','Sol Lisdero','5/11/1979','1559940471','sol.lisdero@gmail.com','','compra_chica, tiempo, auto, voluntario_eventos','artista, otro, astrologa','Soy editora de fotografia free lance, trabajo para el grupo de revistas de La Nacion. \r\nMas adelante, me gustaria tener algun proyecto a cargo pero por el momento estoy embarazada y prefiero sumarme a cosas que ya esten funcionando.','no','si','','2015-02-03',NULL),(592,'','michael lapidoth','2/9/1968','01149719324','mikelapidoth@hotmail.com','maschwitz','tiempo, camioneta, otro, camioneta cerrada (duster)','otro, ventas envases','tengo acceso a las industrias que visito por veta de envases y envasadoras, algunas alimenticias grandes . ambiente de rugby veteranos.\r\nme llaman para darme donaciones de electrodomesticos, ropa y alimentos que envio a santa fe norte, el arco (benavidez) y dique lujan (comedor)\r\ntambien estoy como voluntario en alegraÃ±atas\r\npuedo sumarme o aportar a proyectos, pero no hacerme cargo, ya tengo algunos propios ya . En su momento me ofrecieron bicis si necesitan de nuevo. ','no','si','si','2015-04-15',NULL),(804,'','sss','02/08/1979','9898','sss@sss.com','','','','','no','no','no','2015-12-08','2015-12-08 02:53:40'),(805,'','sss','','9898','sssw@sss.com','','','','','no','no','no','2015-12-08','2015-12-08 02:56:29'),(806,'','sss','02/08/1979','9898','sssws@sss.com','','','','','no','no','no','2015-12-08','2015-12-08 03:09:09'),(807,'','sss','02/08/1979','9898','sssws2@sss.com','','','','','no','no','no','2015-12-08','2015-12-08 03:09:46'),(808,'','Pablo Archenti','','+541147918685','pabloarchenti@gmail.com','Vicente Lopez','','','','no','no','no','2015-12-08','2015-12-08 03:14:54');
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyectos`
--

DROP TABLE IF EXISTS `proyectos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proyectos` (
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
  `actualizado` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyectos`
--

LOCK TABLES `proyectos` WRITE;
/*!40000 ALTER TABLE `proyectos` DISABLE KEYS */;
INSERT INTO `proyectos` VALUES (28,'Proyecto Fuerte Apache y Cava','21/10/2013','21/10/2013','','100 chicos de fuerte apache y la cava fueron invitados por RGB, a disfrutar del show de Disney Live','12_18_28fuerte apache.jpeg','finalizado','OTROS','','OTROS','','OTROS','','OTROS','','OTROS','','OTROS','','2014-02-10',NULL),(29,'FundaciÃ³n Umbrales','20/09/2013','20/10/2013','','UMBRALES es una asociaciÃ³n civil sin fines de lucro dedicada a la promociÃ³n de los derechos sociales, el trabajo por la paz y el fortalecimiento de capacidades y habilidades de niÃ±os, niÃ±as y adolescentes.<br /><br />Entre las actividades que desarrollan con los niÃ±os, hay talleres de arte, y de mÃºsica, en este caso \"Desde tu lugar\" fue puente en la recolecciÃ³n de donaciones de instrumentos.','12_12_56instru.jpeg','finalizado','OTROS','','OTROS','','OTROS','','OTROS','','OTROS','','OTROS','','2014-02-10',NULL),(75,'Inundaciones Córdoba 2015','20-02-2015','11-03-2015','','Luego de las terribles lluvias e inundaciones que pasÃ³ la poblaciÃ³n de CÃ³rdoba, Desde tu Lugar junto con un montÃ³n de voluntarios estuvieron recolectando donaciones para enviar a \"El pueblito\", Salsipuedes, CÃ³rdoba, lugar donde viven aproximadamente 4.000 habitantes y que mÃ¡s de 100 familias perdieron todo.<br />Gracias a la empresa de logÃ­stica DADA que colaborÃ³ con el traslado de las cosas!! y gracias a cada uno de los voluntarios que participÃ³ en la jornada de clasificaciÃ³n de donaciones, a los que donaron un montÃ³n de cosas, y a los que ayudaron a llevar las cosas hasta el depÃ³sito!!','09_06_45Inundaciones CÃ³rdoba.jpeg','finalizado','OTROS','','OTROS','','OTROS','','OTROS','','OTROS','','OTROS','','2015-04-06',NULL);
/*!40000 ALTER TABLE `proyectos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-08  2:12:07
