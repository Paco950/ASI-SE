-- MySQL dump 10.16  Distrib 10.1.38-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: asise
-- ------------------------------------------------------
-- Server version	10.1.38-MariaDB

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
-- Table structure for table `almacen_materia_prima`
--

DROP TABLE IF EXISTS `almacen_materia_prima`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `almacen_materia_prima` (
  `id_amp` int(5) NOT NULL AUTO_INCREMENT,
  `descripcion` text NOT NULL,
  `lugar` varchar(45) NOT NULL,
  `cantidad` int(5) NOT NULL,
  `foto_img` varchar(50) NOT NULL,
  PRIMARY KEY (`id_amp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `almacen_materia_prima`
--

LOCK TABLES `almacen_materia_prima` WRITE;
/*!40000 ALTER TABLE `almacen_materia_prima` DISABLE KEYS */;
/*!40000 ALTER TABLE `almacen_materia_prima` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `almacen_mp_producto`
--

DROP TABLE IF EXISTS `almacen_mp_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `almacen_mp_producto` (
  `id_almacen_mp_prod` int(5) NOT NULL AUTO_INCREMENT,
  `id_amp` int(5) NOT NULL,
  `id_producto` int(5) NOT NULL,
  PRIMARY KEY (`id_almacen_mp_prod`),
  KEY `id_amp` (`id_amp`),
  KEY `id_producto` (`id_producto`),
  CONSTRAINT `almacen_mp_producto_ibfk_1` FOREIGN KEY (`id_amp`) REFERENCES `almacen_materia_prima` (`id_amp`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `almacen_mp_producto_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `almacen_mp_producto`
--

LOCK TABLES `almacen_mp_producto` WRITE;
/*!40000 ALTER TABLE `almacen_mp_producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `almacen_mp_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `almacen_producto_terminado`
--

DROP TABLE IF EXISTS `almacen_producto_terminado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `almacen_producto_terminado` (
  `id_apt` int(5) NOT NULL AUTO_INCREMENT,
  `nombre_pro` varchar(45) NOT NULL,
  `cantidad` int(5) NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`id_apt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `almacen_producto_terminado`
--

LOCK TABLES `almacen_producto_terminado` WRITE;
/*!40000 ALTER TABLE `almacen_producto_terminado` DISABLE KEYS */;
/*!40000 ALTER TABLE `almacen_producto_terminado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `id_cliente` int(5) NOT NULL AUTO_INCREMENT,
  `nombre_cliente` varchar(45) NOT NULL,
  `ap_cliente` varchar(45) NOT NULL,
  `am_cliente` varchar(45) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente_pedido`
--

DROP TABLE IF EXISTS `cliente_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente_pedido` (
  `id_cli_ped` int(5) NOT NULL AUTO_INCREMENT,
  `id_pedido` int(5) NOT NULL,
  `id_cliente` int(5) NOT NULL,
  PRIMARY KEY (`id_cli_ped`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_pedido`
--

LOCK TABLES `cliente_pedido` WRITE;
/*!40000 ALTER TABLE `cliente_pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra_materia_prima`
--

DROP TABLE IF EXISTS `compra_materia_prima`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compra_materia_prima` (
  `id_compra_mp` int(5) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `estatus` varchar(30) NOT NULL,
  `id_mp` int(5) NOT NULL,
  PRIMARY KEY (`id_compra_mp`),
  KEY `id_mp` (`id_mp`),
  CONSTRAINT `compra_materia_prima_ibfk_1` FOREIGN KEY (`id_mp`) REFERENCES `materia_prima` (`id_mp`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra_materia_prima`
--

LOCK TABLES `compra_materia_prima` WRITE;
/*!40000 ALTER TABLE `compra_materia_prima` DISABLE KEYS */;
/*!40000 ALTER TABLE `compra_materia_prima` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contabilidad_finanzas`
--

DROP TABLE IF EXISTS `contabilidad_finanzas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contabilidad_finanzas` (
  `id_conta_fin` int(5) NOT NULL AUTO_INCREMENT,
  `id_empleado` int(5) NOT NULL,
  `id_compra_mp` int(5) NOT NULL,
  PRIMARY KEY (`id_conta_fin`),
  KEY `id_empleado` (`id_empleado`),
  KEY `id_compra_mp` (`id_compra_mp`),
  CONSTRAINT `contabilidad_finanzas_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `contabilidad_finanzas_ibfk_2` FOREIGN KEY (`id_compra_mp`) REFERENCES `compra_materia_prima` (`id_compra_mp`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contabilidad_finanzas`
--

LOCK TABLES `contabilidad_finanzas` WRITE;
/*!40000 ALTER TABLE `contabilidad_finanzas` DISABLE KEYS */;
/*!40000 ALTER TABLE `contabilidad_finanzas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleado` (
  `id_empleado` int(5) NOT NULL AUTO_INCREMENT,
  `nombre_empleado` varchar(45) NOT NULL,
  `ap_empleado` varchar(45) NOT NULL,
  `am_empleado` varchar(45) NOT NULL,
  `calle` varchar(50) NOT NULL,
  `numero` varchar(15) NOT NULL,
  `CP` int(5) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `hrs_trabajadas` time DEFAULT NULL,
  PRIMARY KEY (`id_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado_producto`
--

DROP TABLE IF EXISTS `empleado_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleado_producto` (
  `id_emp_prod` int(5) NOT NULL AUTO_INCREMENT,
  `id_empleado` int(5) NOT NULL,
  `id_producto` int(5) NOT NULL,
  `tipo_tarea` varchar(30) NOT NULL,
  `estatus` varchar(25) NOT NULL,
  PRIMARY KEY (`id_emp_prod`),
  KEY `id_empleado` (`id_empleado`),
  KEY `id_producto` (`id_producto`),
  CONSTRAINT `empleado_producto_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `empleado_producto_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado_producto`
--

LOCK TABLES `empleado_producto` WRITE;
/*!40000 ALTER TABLE `empleado_producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `empleado_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materia_prima`
--

DROP TABLE IF EXISTS `materia_prima`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materia_prima` (
  `id_mp` int(5) NOT NULL AUTO_INCREMENT,
  `nombre_mp` varchar(45) NOT NULL,
  `color` varchar(20) DEFAULT NULL,
  `tipo_mp` varchar(45) DEFAULT NULL,
  `precio_bruto` decimal(10,2) NOT NULL,
  `foto_img` varchar(50) NOT NULL,
  `id_proveedor` int(5) NOT NULL,
  `id_amp` int(5) NOT NULL,
  PRIMARY KEY (`id_mp`),
  KEY `id_proveedor` (`id_proveedor`),
  KEY `id_amp` (`id_amp`),
  CONSTRAINT `materia_prima_ibfk_1` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `materia_prima_ibfk_2` FOREIGN KEY (`id_amp`) REFERENCES `almacen_materia_prima` (`id_amp`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materia_prima`
--

LOCK TABLES `materia_prima` WRITE;
/*!40000 ALTER TABLE `materia_prima` DISABLE KEYS */;
/*!40000 ALTER TABLE `materia_prima` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido` (
  `id_pedido` int(5) NOT NULL AUTO_INCREMENT,
  `tipo_pedido` varchar(35) NOT NULL,
  `estilo_producto` varchar(40) NOT NULL,
  `descripcion` text NOT NULL,
  `cantidad` int(5) NOT NULL,
  `pago_adelanto` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id_pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producto` (
  `id_producto` int(5) NOT NULL AUTO_INCREMENT,
  `cantidad_realizar` int(5) DEFAULT NULL,
  `id_apt` int(5) NOT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `id_apt` (`id_apt`),
  CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id_apt`) REFERENCES `almacen_producto_terminado` (`id_apt`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto_pedido`
--

DROP TABLE IF EXISTS `producto_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producto_pedido` (
  `id_prod_ped` int(5) NOT NULL AUTO_INCREMENT,
  `id_producto` int(5) NOT NULL,
  `id_pedido` int(5) NOT NULL,
  `fecha_pedido` date NOT NULL,
  `fecha_entrega` date NOT NULL,
  `pago_total` decimal(10,2) NOT NULL,
  `id_conta_fin` int(5) NOT NULL,
  PRIMARY KEY (`id_prod_ped`),
  KEY `id_producto` (`id_producto`),
  KEY `id_pedido` (`id_pedido`),
  KEY `id_conta_fin` (`id_conta_fin`),
  CONSTRAINT `producto_pedido_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `producto_pedido_ibfk_2` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id_pedido`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `producto_pedido_ibfk_3` FOREIGN KEY (`id_conta_fin`) REFERENCES `contabilidad_finanzas` (`id_conta_fin`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto_pedido`
--

LOCK TABLES `producto_pedido` WRITE;
/*!40000 ALTER TABLE `producto_pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `producto_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedor` (
  `id_proveedor` int(5) NOT NULL AUTO_INCREMENT,
  `nombre_prov` varchar(45) NOT NULL,
  `ap_prov` varchar(45) NOT NULL,
  `am_prov` varchar(45) NOT NULL,
  `calle` varchar(50) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `CP` int(5) NOT NULL,
  `tipo_prov` varchar(35) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  PRIMARY KEY (`id_proveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id_usuario` int(10) NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar(100) NOT NULL,
  `ap_usuario` varchar(100) NOT NULL,
  `am_usuario` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(64) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Juan Pablo','Romero','Flores','romef@asise.com','5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5'),(2,'Christian','Cante','Morales','chris@asise.com','5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5');
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

-- Dump completed on 2019-03-27 22:51:11
