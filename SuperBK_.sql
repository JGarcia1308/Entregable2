-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: supermercado
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bitacora`
--

DROP TABLE IF EXISTS `bitacora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bitacora` (
  `idEvento` int NOT NULL AUTO_INCREMENT,
  `evento` varchar(45) NOT NULL,
  `nombre_t` varchar(45) NOT NULL,
  `valorNue` varchar(45) DEFAULT NULL,
  `valorAnt` varchar(45) DEFAULT NULL,
  `usuario` varchar(45) NOT NULL,
  `fechaHora` datetime NOT NULL,
  PRIMARY KEY (`idEvento`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora`
--

LOCK TABLES `bitacora` WRITE;
/*!40000 ALTER TABLE `bitacora` DISABLE KEYS */;
INSERT INTO `bitacora` VALUES (1,'INSERT','clientes','101',NULL,'root@localhost','2023-03-29 22:34:13'),(2,'INSERT','clientes','102',NULL,'root@localhost','2023-03-29 22:34:19'),(3,'INSERT','clientes','103',NULL,'root@localhost','2023-03-29 22:34:19'),(4,'INSERT','clientes','104',NULL,'root@localhost','2023-03-29 22:34:19'),(5,'INSERT','clientes','105',NULL,'root@localhost','2023-03-29 22:34:20'),(6,'INSERT','Marcas','101',NULL,'root@localhost','2023-03-29 22:34:24'),(7,'INSERT','Marcas','102',NULL,'root@localhost','2023-03-29 22:34:25'),(8,'INSERT','Marcas','103',NULL,'root@localhost','2023-03-29 22:34:25'),(9,'INSERT','Marcas','104',NULL,'root@localhost','2023-03-29 22:34:25'),(10,'INSERT','Marcas','105',NULL,'root@localhost','2023-03-29 22:34:25'),(11,'INSERT','Marcas','106',NULL,'root@localhost','2023-03-29 22:34:25'),(12,'INSERT','Proveedores','101',NULL,'root@localhost','2023-03-29 22:34:29'),(13,'INSERT','Proveedores','102',NULL,'root@localhost','2023-03-29 22:34:29'),(14,'INSERT','Proveedores','103',NULL,'root@localhost','2023-03-29 22:34:29'),(15,'INSERT','Proveedores','104',NULL,'root@localhost','2023-03-29 22:34:29'),(16,'INSERT','Proveedores','105',NULL,'root@localhost','2023-03-29 22:34:29'),(17,'INSERT','Productos','101',NULL,'root@localhost','2023-03-29 22:34:33'),(18,'INSERT','Productos','102',NULL,'root@localhost','2023-03-29 22:34:33'),(19,'INSERT','Productos','103',NULL,'root@localhost','2023-03-29 22:34:34'),(20,'INSERT','Productos','104',NULL,'root@localhost','2023-03-29 22:34:34'),(21,'INSERT','Productos','105',NULL,'root@localhost','2023-03-29 22:34:34'),(22,'INSERT','Facturas','2004',NULL,'root@localhost','2023-03-29 22:37:39'),(23,'INSERT','Facturas','2005',NULL,'root@localhost','2023-03-29 22:37:39'),(24,'INSERT','Facturas','2011',NULL,'root@localhost','2023-03-29 22:37:39'),(25,'INSERT','Facturas','2043',NULL,'root@localhost','2023-03-29 22:37:39'),(26,'INSERT','Facturas','2044',NULL,'root@localhost','2023-03-29 22:37:40'),(27,'DELETE','Facturas',NULL,'2004','root@localhost','2023-03-29 22:38:29'),(28,'DELETE','Marcas',NULL,'106','root@localhost','2023-03-29 22:38:33'),(29,'DELETE','Productos',NULL,'101','root@localhost','2023-03-29 22:38:39'),(30,'DELETE','Clientes',NULL,'101','root@localhost','2023-03-29 22:38:43'),(31,'UPDATE','Facturas','103','103','root@localhost','2023-03-29 22:38:47'),(32,'UPDATE','Marcas','101','101','root@localhost','2023-03-29 22:38:51'),(33,'UPDATE','Proveedores','101','101','root@localhost','2023-03-29 22:38:54'),(34,'UPDATE','Facturas','102','102','root@localhost','2023-03-29 22:48:50'),(35,'UPDATE','Facturas','104','104','root@localhost','2023-03-29 22:48:50'),(36,'UPDATE','Facturas','105','105','root@localhost','2023-03-29 22:48:50'),(37,'INSERT','ganancias','1',NULL,'root@localhost','2023-03-29 22:49:20'),(38,'INSERT','ganancias','2',NULL,'root@localhost','2023-03-29 22:50:26'),(39,'INSERT','ganancias','3',NULL,'root@localhost','2023-03-29 22:50:36'),(40,'INSERT','clientes','106',NULL,'root@localhost','2023-04-02 10:53:06'),(41,'INSERT','Facturas','2045',NULL,'root@localhost','2023-04-02 20:34:56'),(42,'INSERT','Facturas','2046',NULL,'root@localhost','2023-04-02 20:40:57'),(43,'INSERT','Facturas','2047',NULL,'root@localhost','2023-04-02 20:43:30'),(44,'INSERT','Facturas','2048',NULL,'root@localhost','2023-04-02 20:44:54'),(45,'INSERT','Facturas','2049',NULL,'root@localhost','2023-04-02 20:47:36');
/*!40000 ALTER TABLE `bitacora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `Cod_Cliente` int NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `nit/dpi` int DEFAULT NULL,
  `idUsuario` int DEFAULT NULL,
  PRIMARY KEY (`Cod_Cliente`),
  UNIQUE KEY `Cod_Clientes_UNIQUE` (`Cod_Cliente`),
  KEY `usuario_idx` (`idUsuario`),
  CONSTRAINT `usr` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (102,'Dolore vero molestiae voluptatem.','07655 Flossie Knolls Apt. 028\nNew Allan, MS 5',1322454254,NULL),(103,'Aut magnam et sapiente in quidem eum.','01750 Erik Pines\nEmelychester, NV 56919',1354876521,NULL),(104,'Totam explicabo enim quos inventore necessita','879 Bartholome Union\nKaleymouth, AK 93197',135847698,NULL),(105,'Ullam perspiciatis non harum omnis.','07003 Grant Meadows Apt. 891\nWuckertborough, ',13362142,NULL),(106,'Prueba','Prueba',12452361,1);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `crearClientes` AFTER INSERT ON `clientes` FOR EACH ROW begin  	 
	insert into bitacora 
		Values(null, 
				"INSERT",
                'clientes',
                new.Cod_Cliente,
				null,							
                current_user(),
				now());				
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `upClientes` AFTER UPDATE ON `clientes` FOR EACH ROW begin  
	insert into bitacora 
		Values(null, 
				"UPDATE",
                'Clientes',                
                new.Cod_Cliente,
				old.Cod_Cliente,							
                current_user(),
				now());				
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `borrarClientes` AFTER DELETE ON `clientes` FOR EACH ROW begin  
	insert into bitacora 
		Values(null, 
				"DELETE",
                'Clientes',
                null,
				old.Cod_Cliente,							
                current_user(),
				now());				
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `detalle_fac`
--

DROP TABLE IF EXISTS `detalle_fac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_fac` (
  `idFacturas` int NOT NULL,
  `Cod_Prod` int NOT NULL,
  `cantidad` int DEFAULT NULL,
  `total_linea` decimal(8,2) DEFAULT NULL,
  `precio` decimal(8,2) DEFAULT '0.00',
  PRIMARY KEY (`idFacturas`,`Cod_Prod`),
  KEY `factura_detalle_idx` (`idFacturas`),
  KEY `Detalle_Prod_idx` (`Cod_Prod`),
  CONSTRAINT `Detalle_Prod` FOREIGN KEY (`Cod_Prod`) REFERENCES `productos` (`Cod_Prod`),
  CONSTRAINT `factura_detalle` FOREIGN KEY (`idFacturas`) REFERENCES `facturas` (`idFacturas`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_fac`
--

LOCK TABLES `detalle_fac` WRITE;
/*!40000 ALTER TABLE `detalle_fac` DISABLE KEYS */;
INSERT INTO `detalle_fac` VALUES (2005,102,8,800.00,100.00),(2011,103,3,300.00,100.00),(2043,104,5,500.00,100.00),(2044,105,8,800.00,100.00),(2045,102,1,10.00,10.00),(2046,103,2,20.00,10.00),(2047,103,2,20.00,10.00),(2048,104,2,20.00,10.00),(2049,104,3,21.00,7.00);
/*!40000 ALTER TABLE `detalle_fac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturas`
--

DROP TABLE IF EXISTS `facturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facturas` (
  `idFacturas` int NOT NULL,
  `Cod_Cliente` int NOT NULL,
  `FechaHora` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idFacturas`),
  UNIQUE KEY `idFacturas_UNIQUE` (`idFacturas`),
  KEY `Factura_Cliente_idx` (`Cod_Cliente`),
  CONSTRAINT `Factura_Cliente` FOREIGN KEY (`Cod_Cliente`) REFERENCES `clientes` (`Cod_Cliente`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturas`
--

LOCK TABLES `facturas` WRITE;
/*!40000 ALTER TABLE `facturas` DISABLE KEYS */;
INSERT INTO `facturas` VALUES (2005,102,'2023-03-30 22:37:39'),(2011,103,'2023-03-29 22:37:39'),(2043,104,'2023-03-28 22:37:39'),(2044,105,'2023-03-27 22:37:40'),(2045,106,'2023-04-02 20:34:56'),(2046,106,'2023-04-02 20:40:57'),(2047,106,'2023-04-02 20:43:30'),(2048,106,'2023-04-02 20:44:54'),(2049,106,'2023-04-02 20:47:36');
/*!40000 ALTER TABLE `facturas` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `crearFacturas` AFTER INSERT ON `facturas` FOR EACH ROW begin      
	insert into bitacora 
		Values(null, 
				"INSERT",
                'Facturas',
                new.idFacturas,
				null,							
                current_user(),
				now());				
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `upFacturas` AFTER UPDATE ON `facturas` FOR EACH ROW begin  
	insert into bitacora 
		Values(null, 
				"UPDATE",
                'Facturas',
                new.Cod_Cliente,
				old.Cod_Cliente,							
                current_user(),
				now());				
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `borrarFacturas` AFTER DELETE ON `facturas` FOR EACH ROW begin  
	insert into bitacora 
		Values(null, 
				"DELETE",
                'Facturas',                
                null,
				old.idFacturas,							
                current_user(),
				now());				
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ganancias`
--

DROP TABLE IF EXISTS `ganancias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ganancias` (
  `idGanancia` int NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL,
  `ganancia` decimal(8,2) NOT NULL,
  PRIMARY KEY (`idGanancia`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ganancias`
--

LOCK TABLES `ganancias` WRITE;
/*!40000 ALTER TABLE `ganancias` DISABLE KEYS */;
INSERT INTO `ganancias` VALUES (1,'2023-03-30 00:00:00',75.00),(2,'2023-03-29 00:00:00',93.00),(3,'2023-03-29 00:00:00',93.00);
/*!40000 ALTER TABLE `ganancias` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `crearGanancias` AFTER INSERT ON `ganancias` FOR EACH ROW begin  
	insert into bitacora 
		Values(null, 
				"INSERT",
                'ganancias',                
                new.idGanancia,
				null,							
                current_user(),
				now());				
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `upGanancias` AFTER UPDATE ON `ganancias` FOR EACH ROW begin  
	insert into bitacora 
		Values(null, 
				"UPDATE",
                'Ganancias',
                new.idGanancia,
				old.idGanancia,							
                current_user(),
				now());				
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `borrarGanancia` AFTER DELETE ON `ganancias` FOR EACH ROW begin  
	insert into bitacora 
		Values(null, 
				"DELETE",
               'Ganancias',
                null,
				old.idGanancia,							
                current_user(),
				now());				
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `marcas`
--

DROP TABLE IF EXISTS `marcas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marcas` (
  `Cod_Marca` int NOT NULL,
  `Desc_Marca` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Cod_Marca`),
  UNIQUE KEY `Cod_Marca_UNIQUE` (`Cod_Marca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marcas`
--

LOCK TABLES `marcas` WRITE;
/*!40000 ALTER TABLE `marcas` DISABLE KEYS */;
INSERT INTO `marcas` VALUES (101,'Hola Mundo'),(102,'Earum illo tenetur quae aut velit.'),(103,'Pariatur neque officia illo aut natus officii'),(104,'Quam adipisci repellat necessitatibus hic et '),(105,'Eveniet expedita est aut voluptas est incidun');
/*!40000 ALTER TABLE `marcas` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `crearMarca` AFTER INSERT ON `marcas` FOR EACH ROW begin  
	insert into bitacora     
		Values(null, 
				"INSERT",
                'Marcas',
                new.Cod_Marca,
				null,							
                current_user(),
				now());				
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `upMarcas` AFTER UPDATE ON `marcas` FOR EACH ROW begin  
	insert into bitacora 
		Values(null, 
				"UPDATE",
                'Marcas',
                new.Cod_Marca,
				old.Cod_Marca,							
                current_user(),
				now());				
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `borrarMarcas` AFTER DELETE ON `marcas` FOR EACH ROW begin  
	insert into bitacora 
		Values(null, 
				"DELETE",
                'Marcas',
                null,
				old.Cod_Marca,							
                current_user(),
				now());				
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `Cod_Prod` int NOT NULL,
  `Cod_Marca` int NOT NULL,
  `Cod_Prov` int NOT NULL,
  `Descripcion` varchar(45) DEFAULT NULL,
  `Precio` decimal(8,2) NOT NULL,
  PRIMARY KEY (`Cod_Prod`),
  KEY `Producto_Marca_idx` (`Cod_Marca`),
  KEY `Producto_Prov_idx` (`Cod_Prov`),
  CONSTRAINT `Producto_Marca` FOREIGN KEY (`Cod_Marca`) REFERENCES `marcas` (`Cod_Marca`),
  CONSTRAINT `Producto_Prov` FOREIGN KEY (`Cod_Prov`) REFERENCES `proveedores` (`Cod_Prov`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (102,104,104,'Sed similique dolores reprehenderit dolorem u',68.00),(103,103,101,'Sequi provident eos enim deserunt est itaque.',25.00),(104,102,105,'Laborum aspernatur quo tenetur maxime possimu',7.00),(105,101,102,'Dignissimos tempora vitae incidunt nesciunt.',1.00);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `crearProductos` AFTER INSERT ON `productos` FOR EACH ROW begin  
	insert into bitacora 
		Values(null, 
				"INSERT",
                'Productos',
                new.Cod_Prod,
				null,							
                current_user(),
				now());				
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `upProductos` AFTER UPDATE ON `productos` FOR EACH ROW begin  
	insert into bitacora 
		Values(null, 
				"UPDATE",
                'Productos',
                new.Cod_Prod,
				old.Cod_Prod,							
                current_user(),
				now());				
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `borrarProductos` AFTER DELETE ON `productos` FOR EACH ROW begin  
	insert into bitacora 
		Values(null, 
				"DELETE",
                'Productos',
                null,
				old.Cod_Prod,							
                current_user(),
				now());				
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `Cod_Prov` int NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  `Telefono` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Cod_Prov`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (101,'Hola Mundo','0042 Garth Expressway\nEugeneland, WV 67892-50','1-837-087-3654'),(102,'Bernhard, Treutel and Smitham','3728 Abshire Route\nJazmynefurt, RI 40191','377-030-6153x98618'),(103,'Weissnat Group','693 Emmie Valleys Apt. 910\nNew Nathanfort, ID','03385521428'),(104,'Rolfson, Armstrong and Hayes','90726 Ubaldo Squares\nWest Paulineville, MI 24','(103)191-0179x5691'),(105,'Connelly-Koss','4305 Braun Place Suite 985\nGottliebland, WI 5','1-279-091-6597x019');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `crearProveedores` AFTER INSERT ON `proveedores` FOR EACH ROW begin  
DECLARE comando_select TEXT;	
	insert into bitacora 
		Values(null, 
				"INSERT",
                'Proveedores',
                new.Cod_Prov,
				null,							
                current_user(),
				now());				
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `upProveedores` AFTER UPDATE ON `proveedores` FOR EACH ROW begin  
	insert into bitacora 
		Values(null, 
				"UPDATE",
                'Proveedores',                
                new.Cod_Prov,
				old.Cod_Prov,							
                current_user(),
				now());				
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `borrarProveedores` AFTER DELETE ON `proveedores` FOR EACH ROW begin  
	insert into bitacora 
		Values(null, 
				"DELETE",
                'Proveedores',
                null,
				old.Cod_Prov,							
                current_user(),
				now());				
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `idUsuario` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  `Pass` char(255) NOT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'admin','$2b$10$YH0gXZf.GDlvdhWuxvZ8vOyZ.1PbZEoVLDHAqJvlmDwld4isKa.nu');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `ver_clientes`
--

DROP TABLE IF EXISTS `ver_clientes`;
/*!50001 DROP VIEW IF EXISTS `ver_clientes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ver_clientes` AS SELECT 
 1 AS `Cod_Cliente`,
 1 AS `Nombre`,
 1 AS `direccion`,
 1 AS `nit/dpi`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ver_facturas`
--

DROP TABLE IF EXISTS `ver_facturas`;
/*!50001 DROP VIEW IF EXISTS `ver_facturas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ver_facturas` AS SELECT 
 1 AS `idFacturas`,
 1 AS `Cod_Prod`,
 1 AS `cantidad`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ver_productos`
--

DROP TABLE IF EXISTS `ver_productos`;
/*!50001 DROP VIEW IF EXISTS `ver_productos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ver_productos` AS SELECT 
 1 AS `Cod_Prod`,
 1 AS `nombre`,
 1 AS `Producto`,
 1 AS `precio`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `ver_clientes`
--

/*!50001 DROP VIEW IF EXISTS `ver_clientes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ver_clientes` AS select `clientes`.`Cod_Cliente` AS `Cod_Cliente`,`clientes`.`Nombre` AS `Nombre`,`clientes`.`direccion` AS `direccion`,`clientes`.`nit/dpi` AS `nit/dpi` from `clientes` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ver_facturas`
--

/*!50001 DROP VIEW IF EXISTS `ver_facturas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ver_facturas` AS select `fac`.`idFacturas` AS `idFacturas`,`deta`.`Cod_Prod` AS `Cod_Prod`,`deta`.`cantidad` AS `cantidad` from (`facturas` `fac` join `detalle_fac` `deta` on((`fac`.`idFacturas` = `deta`.`idFacturas`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ver_productos`
--

/*!50001 DROP VIEW IF EXISTS `ver_productos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ver_productos` AS select `productos`.`Cod_Prod` AS `Cod_Prod`,`proveedores`.`Nombre` AS `nombre`,`productos`.`Descripcion` AS `Producto`,`productos`.`Precio` AS `precio` from (`productos` join `proveedores` on((`productos`.`Cod_Prov` = `proveedores`.`Cod_Prov`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-02 16:07:56
