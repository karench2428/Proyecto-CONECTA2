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
-- Table structure for table `c2_progreso_usuario`
--

DROP TABLE IF EXISTS `c2_progreso_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `c2_progreso_usuario` (
  `id_usuario` int(11) NOT NULL,
  `payload` longtext NOT NULL,
  `actualizado_en` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_usuario`),
  CONSTRAINT `fk_c2_progreso_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `c2_progreso_usuario`
--

LOCK TABLES `c2_progreso_usuario` WRITE;
/*!40000 ALTER TABLE `c2_progreso_usuario` DISABLE KEYS */;
INSERT INTO `c2_progreso_usuario` VALUES (6,'{\"leccionesCompletadas\": [\"l1\", \"l2\", \"l3\", \"l4\", \"l5\", \"l6\", \"l7\", \"l8\", \"b2-l1\", \"b2-l2\", \"b2-l3\", \"b2-l4\", \"b2-l5\"], \"moduloCompletado\": {\"basic-1\": {\"fecha\": \"2026-10-21T05:55:39.589Z\", \"nota\": 90}}, \"ultimaLeccion\": {\"modulo\": \"basic-2\", \"leccion\": \"b2-l4\"}, \"ultimoAcceso\": \"2026-10-21T07:45:40.468Z\", \"usuario\": \"karen1517@gmail.com\"}','2026-10-21 02:45:40'),(7,'{\"leccionesCompletadas\": [\"l1\", \"l3\", \"b2-l2\"], \"moduloCompletado\": {}, \"ultimaLeccion\": {\"modulo\": \"basic-1\", \"leccion\": \"l3\"}, \"ultimoAcceso\": \"2026-10-21T21:25:43.676Z\", \"usuario\": \"estefaf@gmail.com\"}','2026-10-21 16:25:43');
/*!40000 ALTER TABLE `c2_progreso_usuario` ENABLE KEYS */;
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
