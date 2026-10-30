-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: lsc_conecta2
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `sena`
--

DROP TABLE IF EXISTS `sena`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sena` (
  `id_sena` int(11) NOT NULL AUTO_INCREMENT,
  `id_categoria` int(11) NOT NULL,
  `palabra` varchar(100) NOT NULL,
  `definicion` varchar(300) DEFAULT NULL,
  `descripcion_movimiento` text DEFAULT NULL,
  `ejemplo_uso` varchar(300) DEFAULT NULL,
  `nivel` enum('Basico','Intermedio','Avanzado') DEFAULT 'Basico',
  `fecha_creacion` datetime DEFAULT current_timestamp(),
  `url_imagen` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id_sena`),
  KEY `id_categoria` (`id_categoria`),
  CONSTRAINT `sena_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sena`
--

LOCK TABLES `sena` WRITE;
/*!40000 ALTER TABLE `sena` DISABLE KEYS */;
INSERT INTO `sena` VALUES (1,1,'HOLA','Expresión utilizada para saludar a otra persona','Se realiza el movimiento correspondiente a la seña de saludo.','Hola, ¿cómo estás?','Basico','2026-10-01 21:29:19','https://i.pinimg.com/736x/6e/6b/0e/6e6b0e1dfdad42dc17e3b508f2d75dbd.jpg'),(2,1,'GRACIAS','Expresión utilizada para agradecer','Movimiento utilizado convencionalmente para expresar agradecimiento.','Gracias por ayudarme.','Basico','2026-10-01 21:29:19','https://examtimeassets.s3.amazonaws.com/uploads/media/image/20432191/desktop_28f47b8c-6322-49a3-9f45-f48f648b915c.JPG'),(3,2,'MADRE','Persona que tiene hijos','Seña correspondiente al concepto de madre.','Mi madre vive en Bogotá.','Basico','2026-10-01 21:29:19','https://i.pinimg.com/736x/ff/34/15/ff3415052d08a8cdbb2f5fd2e7a61e98.jpg'),(4,2,'PADRE','Persona que tiene hijos','Seña correspondiente al concepto de padre.','Mi padre trabaja en Bogotá.','Basico','2026-10-01 21:29:19','https://i.pinimg.com/736x/06/de/be/06debee137ef1748b24eb206612d8196.jpg'),(5,3,'ROJO','Color asociado con diferentes objetos y elementos.','Seña correspondiente al concepto del color rojo.','El carro es rojo.','Basico','2026-10-01 21:29:19','https://i.pinimg.com/1200x/57/d7/d4/57d7d492d9509a271cd967ba5f9c0acb.jpg');
/*!40000 ALTER TABLE `sena` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-29 21:19:19
