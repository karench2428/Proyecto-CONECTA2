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
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `id_rol` int(11) NOT NULL,
  `nombres` varchar(80) NOT NULL,
  `apellidos` varchar(80) NOT NULL,
  `correo` varchar(120) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `ciudad` varchar(80) DEFAULT NULL,
  `fecha_registro` datetime DEFAULT current_timestamp(),
  `estado` enum('Activo','Inactivo','Bloqueado') DEFAULT 'Activo',
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `correo` (`correo`),
  KEY `id_rol` (`id_rol`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,1,'Laura','Gómez','laura.gomez@lscaprende.com','HashDemo001','1995-04-12','Bogotá','2026-10-01 21:28:32','Activo'),(2,2,'Andrés','Martínez','andres.martinez@gmail.com','HashDemo002','2002-08-21','Medellín','2026-10-01 21:28:32','Activo'),(3,2,'Valentina','Rodríguez','valentina.rodriguez@gmail.com','HashDemo003','2001-02-15','Cali','2026-10-01 21:28:32','Activo'),(4,3,'Camilo','Torres','camilo.torres@lscaprende.com','HashDemo004','1990-11-09','Bogotá','2026-10-01 21:28:32','Activo'),(5,2,'Karen','Gonzalez','kareng1517@gmail.com','scrypt:32768:8:1$zCJJYrLWc9Gl2sD1$e14b9ab7596e51fe543330fad24e830cc67c07f342a61d44e75aa9dce7afd9998273326706652c2f8ced24971f37d46de7b9e62c432196d9013cf022f2e9f1fc',NULL,NULL,'2026-10-20 20:06:58','Activo'),(6,2,'Karen','Gonzalez','karen1517@gmail.com','scrypt:32768:8:1$F3vMvglSKJgUVv9e$b4280d5f696011af18e5c6b324e2aa2807ef5de8c3d22dc662cb2660f9e860504e88aff3ae4af939323ee999c84fda6a0ac4e81177bfbad09c6d9825793e6554',NULL,NULL,'2026-10-20 20:21:30','Activo'),(7,2,'Estefania','Feria','estefaf@gmail.com','scrypt:32768:8:1$Q3GvKqcoskpAJQ6x$2b12524ef00d014fe92ec671521eaa1b834f61660536448bf22034fa2c2e12ef343e9fd422aba95b19cdbff24b1f848c89d746dd356f2f151b2173c8bfa88503',NULL,NULL,'2026-10-21 07:06:04','Activo'),(8,2,'Alejandro','Perez','alejp@gmail.com','scrypt:32768:8:1$QPMyRYUIyNsVK7yp$6ab87e36478f72da3a62198d736e9c13c07c4f133c3a91195a3dad1b5de1e71ee3b11653b5919e0a9a4292220c6873191cca1fa84476c9c308ff4263d9ce2d61',NULL,NULL,'2026-10-22 10:25:51','Activo');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
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
