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
-- Dumping data for table `personas`
--
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
INSERT INTO `personas` VALUES (1,'','Pablo Perez','5/11/1979','1559940471','pablo.perez@desdetulugar.com.ar',
'Florida','tiempo, camioneta, otro','Contador','','no','si','','2016-01-01','2016-05-08 20:51:37'),
(2,'','Federico Gomez','5/11/1979','1559940471','federico.gomez@desdetulugar.com.ar',
'Florida','tiempo, camioneta, otro','Contador','','no','si','','2016-01-01','2016-05-08 20:51:37');
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;


--
-- Dumping data for table `proyectos`
--
/*!40000 ALTER TABLE `proyectos` DISABLE KEYS */;
INSERT INTO `proyectos` VALUES (28,'Proyecto Fuerte Apache y Cava','21/10/2013','21/10/2013','','100 chicos de fuerte apache y la cava fueron invitados por RGB, a disfrutar del show de Disney Live','12_18_28fuerte apache.jpeg','finalizado','OTROS','','OTROS','','OTROS','','OTROS','','OTROS','','OTROS','','2014-02-10'),(29,'Fundación Umbrales','20/09/2013','','','UMBRALES es una asociación civil sin fines de lucro dedicada a la promoción de los derechos sociales, el trabajo por la paz y el fortalecimiento de capacidades y habilidades de niños, niñas y adolescentes.<br /><br />Entre las actividades que desarrollan con los niños, hay talleres de arte, y de música, en este caso \"Desde tu lugar\" fue puente en la recolección de donaciones de instrumentos.','12_12_56instru.jpeg','actual','OTROS','160 chicos de Misiones están esperando empezar las clases con una mochila COMPLETA. Contamos con VOS!!!','DINERO','Para la compra de la misma. La mochila completa cuesta $500 (Se puede hacer transferencia!).','VEHICULOS','Para ayudarnos con la logística. Hay gente que se le complica muchísimo entregar la mochila. De ser asi, vos nos podes ayudar.','TIEMPO','El 22, 23 y 24 de Febrero, vamos a estar recibiendo las mochilas en Primera Junta 946 (Bajo de San Isidro) de 9:30 a 18hs. Te sumas?','OTROS','DIFUSIÓN: entre amigos y familiares, así llegamos a las 160 mochilas!','OTROS','Para la compra de la misma. La mochila completa cuesta $500 (Se puede hacer transferencia!).','2014-02-10'),(75,'Inundaciones Córdoba 2015','20-02-2015','11-03-2015','','Luego de las terribles lluvias e inundaciones que pasó la población de Córdoba, Desde tu Lugar junto con un montón de voluntarios estuvieron recolectando donaciones para enviar a \"El pueblito\", Salsipuedes, Córdoba, lugar donde viven aproximadamente 4.000 habitantes y que más de 100 familias perdieron todo.<br />Gracias a la empresa de logística DADA que colaboró con el traslado de las cosas!! y gracias a cada uno de los voluntarios que participó en la jornada de clasificación de donaciones, a los que donaron un montón de cosas, y a los que ayudaron a llevar las cosas hasta el depósito!!','09_06_45Inundaciones Córdoba.jpeg','finalizado','OTROS','aadaasd','OTROS','','OTROS','','OTROS','','OTROS','','OTROS','','2015-04-06'),(76,'TVS PARA MANOS MISIONERAS','13/1/2016','','','Una vez mas empieza el año, y los chicos en Marzo empiezan su año escolar. Hay muchos de ellos, que necesitan los útiles, la mochila y el amor para que la tarea de ESTUDIAR y APRENDER se les haga un poquitito mas fácil. Este año, elegimos a las 160 chicos que asisten al apoyo escolar \"Fortalecer Misiones\" Que Hacen? Son un grupo de jóvenes que apuesta a la participación y al compromiso ciudadano como herramienta principal para generar los cambios que anhelan en la sociedad. Ellos desarrollaron un apoyo escolar en Misiones, para promover el desarrollo de la comunidad de Posadas y Garupa, a través de la educación y el trabajo. ','11_26_11Flyer Mochilas 2016 - DTL.png','actual','OTROS','160 chicos de Misiones están esperando empezar las clases con una mochila COMPLETA. Contamos con VOS!!!','DINERO','Para la compra de la misma. La mochila completa cuesta $500 (Se puede hacer transferencia!).','VEHICULOS','Para ayudarnos con la logística. Hay gente que se le complica muchísimo entregar la mochila. De ser asi, vos nos podes ayudar.','','','','','','','0000-00-00'),(100,'VISITA DE ALUMNOS DEL COLEGIO SAN IGNACIO AL GERIÁTRICO VICENTE LÓPEZ','01/12/2015','','','Los alumnos del colegio secundario San Ignacio visitaron el geriátrico Vicente López y compartieron una jornada con juegos y charlas.\n\nHicieron un trabajo previo de investigación y armado de los juegos acordes para compartir con los ancianos.\n\nFue una jornada en la que se aprendieron muchas cosas!! Gracias por al Geriátrico Vicente López por abrir sus puertas! Gracias Colegio San Ignacio por sumarse con un nuevo proyecto.	\n','13_12_48IMG_2989.jpeg','actual','','','','','','','','','','','','','0000-00-00'),(101,'NOCHES MAGICAS SOLIDARIAS','02/01/2015','','','La empresa DIRECTV junto a sus empleados que decidan sumarse, armarán cajas navideñas el 15 y 16 de diciembre para las familias de los niños y adolescentes que asisten al Apoyo Escolar, Las Dos Palmeras en Las Tunas.\n\nYa que esos chicos ya van a vivir una navidad diferente gracias a la empresa, los invitamos a sumarse a una acción solidaria para que junto con los empleados de Direct TV, elaboren todos los adornos para que 3 hogares puedan vivir también una Navidad Especial. A esa noche la llamamos Noche Mágica Solidaria. \n\nEn este proyecto conjunto entre los chicos del apoyo y los empleados, se sumó también el artista plástico Miguel Brea quien participó activamente en la jornada de elaboración de los adornos y pintó un mural junto a los niños y los empleados en el que cada uno ilustraba su deseo para esta navidad.\n\nPor su parte, la empresa se comprometió a donar, cada 250 adornos realizados, la comida y los regalos para la Noche Mágica de los 3 hogares. Y cumplimos el objetivo entre todos!!!\n\nLos hogares que recibirán los adornos, a comida y los regalos navideños son: Hogar Casa de la Fe + Las Trinitarias + Santa Rafaela Maria.','08_07_14Navidad Santa Rafaela Maria - Muchas gracias.jpeg','actual','ROPA','120 camisetas de rugby negras','','','','','','','','','','','0000-00-00'),(102,'CAJAS NAVIDEÑAS PARA FLIAS DE COMEDOR VILLA HIDALGO','01/07/2015','','','\nLlegaron las fotos de este proyectoooo!!!!! 50 familias pudieron compartir una mesa de navidad juntos!!!! Gracias a tooodooos!!!! Que lindo que cada uno de ustedes haya podido compartir la navidad con estas familiaaaaas!!!!	','12_45_08Josefina Borghi.jpeg','actual','OTROS','KIT de bebe: pañales 00 y 0 + ropita de bebe + Oleo Calcareo + Toallitas húmedas + shampoo neutro + sabanas + mantas.','','','','','','','','','','','0000-00-00');
/*!40000 ALTER TABLE `proyectos` ENABLE KEYS */;

--
-- Dumping data for table `fotos`
--
/*!40000 ALTER TABLE `fotos` DISABLE KEYS */;
INSERT INTO `fotos` VALUES (1,28,'17_58_11fuerteapacheycava1.jpeg','0000-00-00',0,0),(2,28,'17_58_17fuerteapacheycava2.jpeg','0000-00-00',0,0),(3,28,'17_58_21fuerteapacheycava3.jpeg','0000-00-00',0,0),(4,28,'17_58_24fuerteapacheycava4.jpeg','0000-00-00',0,0),(5,28,'17_58_29fuerteapacheycava5.jpeg','0000-00-00',0,0),(6,29,'12_06_46umbrales1.jpeg','0000-00-00',0,0),(7,29,'12_06_49umbrales2.jpeg','0000-00-00',0,0),(8,29,'12_06_52umbrales3.jpeg','0000-00-00',0,0),(9,75,'09_41_25Cordoba 1.jpeg','0000-00-00',0,0),(10,75,'09_41_31Cordoba 2.jpeg','0000-00-00',0,0),(11,75,'09_41_40Cordoba 3.jpeg','0000-00-00',0,0),(12,75,'09_41_48Cordoba 4.jpeg','0000-00-00',0,0),(13,75,'09_41_54Cordoba 5.jpeg','0000-00-00',0,0),(14,75,'09_42_04Cordoba 6.jpeg','0000-00-00',0,0),(15,75,'09_42_12Cordoba 7.jpeg','0000-00-00',0,0),(16,76,'13_55_09SAM_5550.jpeg','0000-00-00',0,0),(448,100,'13_13_52IMG_2980.jpeg','0000-00-00',0,0),(449,100,'13_14_08IMG_2981.jpeg','0000-00-00',0,0),(450,100,'13_14_25IMG_2982.jpeg','0000-00-00',0,0),(451,101,'13_00_2912802_343656142493012_4770277262610782096_n.jpeg','0000-00-00',0,0),(452,101,'13_00_3010958216_343656042493022_6781847213955704838_n.jpeg','0000-00-00',0,0),(453,102,'12_46_27IMG_0712.jpeg','0000-00-00',0,0),(454,102,'12_46_51IMG_0724.jpeg','0000-00-00',0,0),(455,102,'12_47_20Rosario Giavedoni.jpeg','0000-00-00',0,0);
/*!40000 ALTER TABLE `fotos` ENABLE KEYS */;

--
-- Dumping data for table `Suscription`
--
INSERT INTO `Subscription` (`volunteerId`,`projectId`) VALUES (600,75),(600,76);
