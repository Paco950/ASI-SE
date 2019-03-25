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
-- Table structure for table `almacen_mp`
--

DROP TABLE IF EXISTS `almacen_mp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `almacen_mp` (
  `id_almacenmp` int(5) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_almacenmp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `almacen_mp`
--

LOCK TABLES `almacen_mp` WRITE;
/*!40000 ALTER TABLE `almacen_mp` DISABLE KEYS */;
/*!40000 ALTER TABLE `almacen_mp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `almacen_pt`
--

DROP TABLE IF EXISTS `almacen_pt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `almacen_pt` (
  `id_almacen` int(5) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_almacen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `almacen_pt`
--

LOCK TABLES `almacen_pt` WRITE;
/*!40000 ALTER TABLE `almacen_pt` DISABLE KEYS */;
/*!40000 ALTER TABLE `almacen_pt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `almacenmp_produccion`
--

DROP TABLE IF EXISTS `almacenmp_produccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `almacenmp_produccion` (
  `id_almacenmp_prod` int(5) NOT NULL AUTO_INCREMENT,
  `id_produccion` int(5) NOT NULL,
  `id_almacenmp` int(5) NOT NULL,
  PRIMARY KEY (`id_almacenmp_prod`),
  KEY `id_almacenmp` (`id_almacenmp`),
  KEY `id_produccion` (`id_produccion`),
  CONSTRAINT `almacenmp_produccion_ibfk_1` FOREIGN KEY (`id_almacenmp`) REFERENCES `almacen_mp` (`id_almacenmp`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `almacenmp_produccion_ibfk_2` FOREIGN KEY (`id_produccion`) REFERENCES `produccion` (`id_produccion`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `almacenmp_produccion`
--

LOCK TABLES `almacenmp_produccion` WRITE;
/*!40000 ALTER TABLE `almacenmp_produccion` DISABLE KEYS */;
/*!40000 ALTER TABLE `almacenmp_produccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `almacenpt_venta`
--

DROP TABLE IF EXISTS `almacenpt_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `almacenpt_venta` (
  `id_almacen_venta` int(5) NOT NULL AUTO_INCREMENT,
  `id_venta` int(5) NOT NULL,
  `id_almacen` int(5) NOT NULL,
  PRIMARY KEY (`id_almacen_venta`),
  KEY `id_almacen` (`id_almacen`),
  KEY `id_venta` (`id_venta`),
  CONSTRAINT `almacenpt_venta_ibfk_1` FOREIGN KEY (`id_almacen`) REFERENCES `almacen_pt` (`id_almacen`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `almacenpt_venta_ibfk_2` FOREIGN KEY (`id_venta`) REFERENCES `venta` (`id_venta`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `almacenpt_venta`
--

LOCK TABLES `almacenpt_venta` WRITE;
/*!40000 ALTER TABLE `almacenpt_venta` DISABLE KEYS */;
/*!40000 ALTER TABLE `almacenpt_venta` ENABLE KEYS */;
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
-- Table structure for table `contabilidad_finanzas_rh`
--

DROP TABLE IF EXISTS `contabilidad_finanzas_rh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contabilidad_finanzas_rh` (
  `id_cfr` int(5) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_cfr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contabilidad_finanzas_rh`
--

LOCK TABLES `contabilidad_finanzas_rh` WRITE;
/*!40000 ALTER TABLE `contabilidad_finanzas_rh` DISABLE KEYS */;
/*!40000 ALTER TABLE `contabilidad_finanzas_rh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maquilador`
--

DROP TABLE IF EXISTS `maquilador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maquilador` (
  `id_maquilador` int(5) NOT NULL AUTO_INCREMENT,
  `nombre_maquilador` varchar(45) NOT NULL,
  `ap_maquilador` varchar(45) NOT NULL,
  `am_maquilador` varchar(45) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `id_tipo_maquila` int(5) NOT NULL,
  `id_cfr` int(5) NOT NULL,
  PRIMARY KEY (`id_maquilador`),
  KEY `id_tipo_maquila` (`id_tipo_maquila`),
  KEY `id_cfr` (`id_cfr`),
  CONSTRAINT `maquilador_ibfk_1` FOREIGN KEY (`id_tipo_maquila`) REFERENCES `tipo_maquila` (`id_tipo_maquila`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `maquilador_ibfk_2` FOREIGN KEY (`id_cfr`) REFERENCES `contabilidad_finanzas_rh` (`id_cfr`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maquilador`
--

LOCK TABLES `maquilador` WRITE;
/*!40000 ALTER TABLE `maquilador` DISABLE KEYS */;
/*!40000 ALTER TABLE `maquilador` ENABLE KEYS */;
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
  `color` varchar(15) NOT NULL,
  `id_almacenmp` int(5) NOT NULL,
  PRIMARY KEY (`id_mp`),
  KEY `id_almacenmp` (`id_almacenmp`),
  CONSTRAINT `materia_prima_ibfk_1` FOREIGN KEY (`id_almacenmp`) REFERENCES `almacen_mp` (`id_almacenmp`) ON DELETE CASCADE ON UPDATE CASCADE
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
-- Table structure for table `materiaprima_proveedor`
--

DROP TABLE IF EXISTS `materiaprima_proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materiaprima_proveedor` (
  `id_mp_proveedor` int(5) NOT NULL AUTO_INCREMENT,
  `id_mp` int(5) NOT NULL,
  `id_proveedor` int(5) NOT NULL,
  PRIMARY KEY (`id_mp_proveedor`),
  KEY `id_mp` (`id_mp`),
  KEY `id_proveedor` (`id_proveedor`),
  CONSTRAINT `materiaprima_proveedor_ibfk_1` FOREIGN KEY (`id_mp`) REFERENCES `materia_prima` (`id_mp`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `materiaprima_proveedor_ibfk_2` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materiaprima_proveedor`
--

LOCK TABLES `materiaprima_proveedor` WRITE;
/*!40000 ALTER TABLE `materiaprima_proveedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `materiaprima_proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produccion`
--

DROP TABLE IF EXISTS `produccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produccion` (
  `id_produccion` int(5) NOT NULL AUTO_INCREMENT,
  `tipo_producto` varchar(45) NOT NULL,
  `categoria` varchar(435) NOT NULL,
  `id_almacen` int(5) NOT NULL,
  PRIMARY KEY (`id_produccion`),
  KEY `id_almacen` (`id_almacen`),
  CONSTRAINT `produccion_ibfk_1` FOREIGN KEY (`id_almacen`) REFERENCES `almacen_pt` (`id_almacen`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produccion`
--

LOCK TABLES `produccion` WRITE;
/*!40000 ALTER TABLE `produccion` DISABLE KEYS */;
/*!40000 ALTER TABLE `produccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produccion_maquilador`
--

DROP TABLE IF EXISTS `produccion_maquilador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produccion_maquilador` (
  `id_prod_maq` int(5) NOT NULL AUTO_INCREMENT,
  `id_produccion` int(5) NOT NULL,
  `id_maquilador` int(5) NOT NULL,
  PRIMARY KEY (`id_prod_maq`),
  KEY `id_produccion` (`id_produccion`),
  KEY `id_maquilador` (`id_maquilador`),
  CONSTRAINT `produccion_maquilador_ibfk_1` FOREIGN KEY (`id_produccion`) REFERENCES `produccion` (`id_produccion`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `produccion_maquilador_ibfk_2` FOREIGN KEY (`id_maquilador`) REFERENCES `maquilador` (`id_maquilador`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produccion_maquilador`
--

LOCK TABLES `produccion_maquilador` WRITE;
/*!40000 ALTER TABLE `produccion_maquilador` DISABLE KEYS */;
/*!40000 ALTER TABLE `produccion_maquilador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedor` (
  `id_proveedor` int(5) NOT NULL AUTO_INCREMENT,
  `nombre_proveedor` varchar(45) NOT NULL,
  `ap_proveedor` varchar(45) NOT NULL,
  `am_proveedor` varchar(45) NOT NULL,
  `calle` varchar(50) NOT NULL,
  `numero` varchar(15) NOT NULL,
  `CP` int(5) NOT NULL,
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
-- Table structure for table `tipo_maquila`
--

DROP TABLE IF EXISTS `tipo_maquila`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_maquila` (
  `id_tipo_maquila` int(5) NOT NULL AUTO_INCREMENT,
  `nombre_maquila` varchar(45) NOT NULL,
  PRIMARY KEY (`id_tipo_maquila`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_maquila`
--

LOCK TABLES `tipo_maquila` WRITE;
/*!40000 ALTER TABLE `tipo_maquila` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_maquila` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Juan Pablo','Romero','Flores','romef@asise.com','5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta`
--

DROP TABLE IF EXISTS `venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venta` (
  `id_venta` int(5) NOT NULL AUTO_INCREMENT,
  `id_cfr` int(5) NOT NULL,
  PRIMARY KEY (`id_venta`),
  KEY `id_cfr` (`id_cfr`),
  CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`id_cfr`) REFERENCES `contabilidad_finanzas_rh` (`id_cfr`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta`
--

LOCK TABLES `venta` WRITE;
/*!40000 ALTER TABLE `venta` DISABLE KEYS */;
/*!40000 ALTER TABLE `venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta_cliente`
--

DROP TABLE IF EXISTS `venta_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venta_cliente` (
  `id_ven_cli` int(5) NOT NULL AUTO_INCREMENT,
  `id_venta` int(5) NOT NULL,
  `id_cliente` int(5) NOT NULL,
  PRIMARY KEY (`id_ven_cli`),
  KEY `id_venta` (`id_venta`),
  KEY `id_cliente` (`id_cliente`),
  CONSTRAINT `venta_cliente_ibfk_1` FOREIGN KEY (`id_venta`) REFERENCES `venta` (`id_venta`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `venta_cliente_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta_cliente`
--

LOCK TABLES `venta_cliente` WRITE;
/*!40000 ALTER TABLE `venta_cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `venta_cliente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-24 20:36:28
