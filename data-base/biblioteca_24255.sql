-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: biblioteca_24255
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
-- Table structure for table `autores`
--

DROP TABLE IF EXISTS `autores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `nacionalidad` varchar(50) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autores`
--

LOCK TABLES `autores` WRITE;
/*!40000 ALTER TABLE `autores` DISABLE KEYS */;
INSERT INTO `autores` VALUES (1,'Gabriel','García Márquez','Colombiano','1927-03-06','2024-07-11 03:09:50','2024-07-11 03:09:50'),(2,'George','Orwell','Británico','1903-06-25','2024-07-11 03:09:50','2024-07-11 03:09:50'),(3,'Jane','Austen','Británica','1775-12-16','2024-07-11 03:09:50','2024-07-11 03:09:50'),(4,'Antoine de','Saint-Exupéry','Francés','1900-06-29','2024-07-11 03:09:50','2024-07-11 03:09:50'),(5,'J.K.','Rowling','Británica','1965-07-31','2024-07-11 03:09:50','2024-07-11 03:09:50'),(6,'Miguel de','Cervantes','Español','1547-09-29','2024-07-11 03:09:50','2024-07-11 03:09:50'),(7,'Harper','Lee','Estadounidense','1926-04-28','2024-07-11 03:09:50','2024-07-11 03:09:50'),(8,'J.R.R.','Tolkien','Británico','1892-01-03','2024-07-11 03:09:50','2024-07-11 03:09:50'),(9,'Carlos','Ruiz Zafón','Español','1964-09-25','2024-07-11 03:09:50','2024-07-11 03:09:50');
/*!40000 ALTER TABLE `autores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Ana','García','Calle Mayor 123, Madrid','+34 91 234 5678','ana.garcia@example.com','2024-07-11 03:11:05','2024-07-11 03:11:05'),(2,'Juan','Martínez','Av. Libertador 456, Buenos Aires','+54 11 5555-1234','juan.martinez@example.com','2024-07-11 03:11:05','2024-07-11 03:11:05'),(3,'María','López','Rua das Flores 789, Lisboa','+351 21 987 6543','maria.lopez@example.com','2024-07-11 03:11:05','2024-07-11 03:11:05'),(4,'Carlos','Rodríguez','Broadway St. 789, New York','+1 212 555 6789','carlos.rodriguez@example.com','2024-07-11 03:11:05','2024-07-11 03:11:05'),(5,'Laura','Sánchez','Gran Vía 456, Barcelona','+34 93 333 2222','laura.sanchez@example.com','2024-07-11 03:11:05','2024-07-11 03:11:05');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `editoriales`
--

DROP TABLE IF EXISTS `editoriales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `editoriales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editoriales`
--

LOCK TABLES `editoriales` WRITE;
/*!40000 ALTER TABLE `editoriales` DISABLE KEYS */;
INSERT INTO `editoriales` VALUES (1,'Editorial Sudamericana','Av. Rivadavia 576, Buenos Aires, Argentina','+54 11 4348-3600','info@sudamericana.com.ar','2024-07-11 03:10:07','2024-07-11 03:10:07'),(2,'Penguin Books','80 Strand, London, WC2R 0RL, United Kingdom','+44 20 7139 3000','info@penguin.co.uk','2024-07-11 03:10:07','2024-07-11 03:10:07'),(3,'Ediciones SM','Calle Vereda de Enmedio 11, Madrid, Spain','+34 91 422 50 50','atencion.cliente@ediciones-sm.com','2024-07-11 03:10:07','2024-07-11 03:10:07');
/*!40000 ALTER TABLE `editoriales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libros`
--

DROP TABLE IF EXISTS `libros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `autor_id` int(11) DEFAULT NULL,
  `editorial_id` int(11) DEFAULT NULL,
  `isbn` varchar(13) DEFAULT NULL,
  `anio_publicacion` int(11) DEFAULT NULL,
  `genero` varchar(50) DEFAULT NULL,
  `disponible` tinyint(1) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `autor_id` (`autor_id`),
  KEY `editorial_id` (`editorial_id`),
  CONSTRAINT `libros_ibfk_1` FOREIGN KEY (`autor_id`) REFERENCES `autores` (`id`),
  CONSTRAINT `libros_ibfk_2` FOREIGN KEY (`editorial_id`) REFERENCES `editoriales` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros`
--

LOCK TABLES `libros` WRITE;
/*!40000 ALTER TABLE `libros` DISABLE KEYS */;
INSERT INTO `libros` VALUES (1,'Cien años de soledad',1,1,'9780307350723',1967,'Realismo mágico',1,'2024-07-11 03:13:32','2024-07-11 03:13:32'),(2,'1984',2,2,'9780451524935',1949,'Ciencia ficción',1,'2024-07-11 03:13:32','2024-07-11 03:13:32'),(3,'Orgullo y prejuicio',3,1,'9780141439518',1813,'Novela romántica',1,'2024-07-11 03:13:32','2024-07-11 03:13:32'),(4,'El principito',4,3,'9780156013925',1943,'Literatura infantil',1,'2024-07-11 03:13:32','2024-07-11 03:13:32'),(5,'Harry Potter y la piedra filosofal',5,2,'9788478884457',1997,'Fantasía',1,'2024-07-11 03:13:32','2024-07-11 03:13:32'),(6,'Don Quijote de la Mancha',6,1,'9788420487026',1605,'Novela',1,'2024-07-11 03:13:32','2024-07-11 03:13:32'),(7,'Matar a un ruiseñor',7,2,'9788490325070',1960,'Ficción legal',1,'2024-07-11 03:13:32','2024-07-11 03:13:32'),(8,'El señor de los anillos',8,3,'9788445000366',1954,'Fantasía épica',1,'2024-07-11 03:13:32','2024-07-11 03:13:32'),(9,'La sombra del viento',9,1,'9788408055307',2001,'Novela gótica',1,'2024-07-11 03:13:32','2024-07-11 03:13:32'),(10,'Crónica de una muerte anunciada',1,2,'9781400034956',1981,'Ficción literaria',1,'2024-07-11 03:13:32','2024-07-11 03:13:32');
/*!40000 ALTER TABLE `libros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_pedido` date DEFAULT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `libro_id` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cliente_id` (`cliente_id`),
  KEY `libro_id` (`libro_id`),
  CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`),
  CONSTRAINT `pedidos_ibfk_2` FOREIGN KEY (`libro_id`) REFERENCES `libros` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,'2024-07-10',1,1,2,'2024-07-11 03:16:33','2024-07-11 03:16:33'),(2,'2024-07-09',2,5,1,'2024-07-11 03:16:33','2024-07-11 03:16:33'),(3,'2024-07-08',3,7,3,'2024-07-11 03:16:33','2024-07-11 03:16:33');
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-11  3:25:58
