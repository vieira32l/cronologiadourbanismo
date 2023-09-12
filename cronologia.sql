CREATE DATABASE  IF NOT EXISTS `cronologia` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `cronologia`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: cronologia
-- ------------------------------------------------------
-- Server version	5.6.16

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
-- Table structure for table `auditoria`
--

DROP TABLE IF EXISTS `auditoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditoria` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FK_idNivel` int(10) unsigned NOT NULL,
  `FK_idUsuario` int(10) unsigned NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `ip` varchar(25) NOT NULL,
  `DataHora` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria`
--

LOCK TABLES `auditoria` WRITE;
/*!40000 ALTER TABLE `auditoria` DISABLE KEYS */;
INSERT INTO `auditoria` VALUES (1,1,1,'instituicoes->deletar->1->abc cef','','2017-08-17 17:21:34'),(2,1,1,'instituicoes->deletar->2->Tes32','','2017-08-17 17:21:44'),(3,1,1,'gruposdepesquisa->deletar->3->123','','2017-08-17 17:24:32');
/*!40000 ALTER TABLE `auditoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autores`
--

DROP TABLE IF EXISTS `autores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autores` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `sobrenome` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autores`
--

LOCK TABLES `autores` WRITE;
/*!40000 ALTER TABLE `autores` DISABLE KEYS */;
INSERT INTO `autores` VALUES (1,'Lucas','Costa'),(2,'Victor','Gomes'),(3,'Geisiany ','Lelis'),(4,'Tadeu ','Costa'),(5,'Thiago','Ufba'),(6,'111','Ufba'),(7,'222','Ufba'),(8,'333','Ufba'),(9,'444','Ufba'),(10,'555','Ufba'),(11,'666','Ufba');
/*!40000 ALTER TABLE `autores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bibliografias`
--

DROP TABLE IF EXISTS `bibliografias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bibliografias` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `chave` int(11) NOT NULL,
  `DataPublicacao` int(11) NOT NULL,
  `edicao` varchar(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `complemento` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `idioma` int(11) NOT NULL,
  `DataHora` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bibliografias`
--

LOCK TABLES `bibliografias` WRITE;
/*!40000 ALTER TABLE `bibliografias` DISABLE KEYS */;
INSERT INTO `bibliografias` VALUES (1,0,2017,'Edicao teste','Titulo novo','Complemento Lucas',0,0,'2017-08-19 16:15:45'),(25,2,2015,'4','titulo teste','Abc',0,0,'2017-08-19 19:22:10'),(26,3,2015,'4','titulo teste','Abc',0,0,'2017-08-19 19:22:20'),(27,4,2015,'4','titulo teste','Abc',1,0,'2017-08-19 19:23:33'),(28,5,2015,'4','titulo teste','Abc',1,0,'2017-08-19 20:00:44'),(29,6,2015,'4','titulo teste','Abc',1,0,'2017-08-19 20:02:22'),(30,7,2015,'4','titulo teste','Abc',1,0,'2017-08-19 20:02:28'),(31,8,2015,'4','titulo teste','Abc',1,0,'2017-08-19 20:05:08'),(32,9,2015,'4','titulo teste','Abc',1,0,'2017-08-19 20:05:15'),(33,10,2015,'4','titulo teste','Abc',1,0,'2017-08-19 20:06:00'),(34,11,2015,'4','titulo teste','Abc',1,0,'2017-08-19 20:06:43'),(35,12,2015,'4','titulo teste','Abc',1,0,'2017-08-19 20:06:51'),(36,13,2015,'4','titulo teste','Abc',1,0,'2017-08-19 20:07:57'),(37,14,2015,'4','titulo teste','Abc',1,0,'2017-08-19 20:13:51'),(38,15,2015,'4','titulo teste','Abc',1,0,'2017-08-19 20:13:59'),(39,16,2015,'4','titulo teste','Abc',1,0,'2017-08-19 20:14:14'),(40,17,2015,'4','titulo teste','Abc',1,0,'2017-08-19 22:10:47'),(41,18,2015,'4','titulo teste','Abc',1,0,'2017-08-19 22:13:48'),(42,19,2015,'4','titulo teste','Abc',1,0,'2017-08-20 17:14:46'),(43,20,2015,'4','titulo teste','Abc',1,0,'2017-08-20 17:14:48'),(44,21,2015,'4','titulo teste','Abc',1,0,'2017-08-20 17:19:31'),(45,22,2015,'4','titulo teste','Abc',1,0,'2017-08-20 17:19:36'),(46,23,2015,'4','titulo teste','Abc',1,0,'2017-08-20 17:23:12'),(47,24,2015,'4','titulo teste','Abc',1,0,'2017-08-20 17:23:18'),(48,25,2015,'4','titulo teste','Abc',1,0,'2017-08-20 17:23:42'),(49,26,2015,'4','titulo teste','Abc',1,0,'2017-08-20 17:24:31'),(50,27,2015,'4','titulo teste','Abc',1,0,'2017-08-20 17:25:06'),(51,28,2015,'4','titulo teste','Abc',1,0,'2017-08-20 17:25:43'),(52,29,2015,'4','titulo teste','Abc',1,0,'2017-08-20 17:28:29'),(53,30,2015,'4','titulo teste','Abc',1,0,'2017-08-20 17:28:53'),(54,31,2015,'4','titulo teste','Abc',1,0,'2017-08-20 17:28:59'),(55,32,2015,'4','titulo teste','Abc',1,0,'2017-08-20 17:29:13'),(56,33,2015,'4','titulo teste','Abc',1,0,'2017-08-20 17:29:18'),(57,34,2015,'4','titulo teste','Abc',1,0,'2017-08-20 20:02:45'),(58,35,2015,'4','titulo teste','Abc',1,0,'2017-08-20 20:03:05'),(59,36,2015,'4','titulo teste','Abc',1,0,'2017-08-20 20:03:10'),(60,37,2015,'4','titulo teste','Abc',1,0,'2017-08-20 20:17:54');
/*!40000 ALTER TABLE `bibliografias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bibliografiasautores`
--

DROP TABLE IF EXISTS `bibliografiasautores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bibliografiasautores` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FK_idBibliografia` int(11) NOT NULL,
  `FK_idAutor` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bibliografiasautores`
--

LOCK TABLES `bibliografiasautores` WRITE;
/*!40000 ALTER TABLE `bibliografiasautores` DISABLE KEYS */;
INSERT INTO `bibliografiasautores` VALUES (1,38,2),(2,38,5),(3,39,2),(4,39,5),(5,39,4),(6,40,2),(7,40,5),(8,41,2),(9,41,5),(10,42,5),(11,42,5),(12,43,5),(13,43,5),(14,45,5),(15,45,2),(16,45,2),(17,45,5),(18,47,4),(19,47,5),(20,47,5),(21,47,4),(22,48,4),(23,48,5),(24,48,5),(25,48,4),(26,49,5),(27,49,2),(28,49,2),(29,49,5),(30,52,5),(31,52,2),(32,54,2),(33,54,5),(34,55,2),(35,55,5),(36,56,2),(37,56,1),(38,60,5),(39,60,4);
/*!40000 ALTER TABLE `bibliografiasautores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bibliografiascomentarios`
--

DROP TABLE IF EXISTS `bibliografiascomentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bibliografiascomentarios` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FK_chaveBibliografia` int(11) NOT NULL,
  `FK_idComentario` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bibliografiascomentarios`
--

LOCK TABLES `bibliografiascomentarios` WRITE;
/*!40000 ALTER TABLE `bibliografiascomentarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `bibliografiascomentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bibliografiaseditores`
--

DROP TABLE IF EXISTS `bibliografiaseditores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bibliografiaseditores` (
  `id` int(11) NOT NULL,
  `chaveBibliografia` int(11) NOT NULL,
  `FK_idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bibliografiaseditores`
--

LOCK TABLES `bibliografiaseditores` WRITE;
/*!40000 ALTER TABLE `bibliografiaseditores` DISABLE KEYS */;
/*!40000 ALTER TABLE `bibliografiaseditores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bibliografiasimagens`
--

DROP TABLE IF EXISTS `bibliografiasimagens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bibliografiasimagens` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FK_chaveBibliografia` int(11) NOT NULL,
  `FK_idMidia` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bibliografiasimagens`
--

LOCK TABLES `bibliografiasimagens` WRITE;
/*!40000 ALTER TABLE `bibliografiasimagens` DISABLE KEYS */;
/*!40000 ALTER TABLE `bibliografiasimagens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bibliografiasverbetes`
--

DROP TABLE IF EXISTS `bibliografiasverbetes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bibliografiasverbetes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FK_chaveBibliografia` int(11) NOT NULL,
  `FK_idVerbete` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bibliografiasverbetes`
--

LOCK TABLES `bibliografiasverbetes` WRITE;
/*!40000 ALTER TABLE `bibliografiasverbetes` DISABLE KEYS */;
/*!40000 ALTER TABLE `bibliografiasverbetes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bibliografiasx`
--

DROP TABLE IF EXISTS `bibliografiasx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bibliografiasx` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `chave1` int(11) NOT NULL,
  `chave2` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bibliografiasx`
--

LOCK TABLES `bibliografiasx` WRITE;
/*!40000 ALTER TABLE `bibliografiasx` DISABLE KEYS */;
INSERT INTO `bibliografiasx` VALUES (1,59,25),(2,59,27),(3,60,25);
/*!40000 ALTER TABLE `bibliografiasx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comentarios` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FK_idUsuario` int(11) NOT NULL,
  `comentario` varchar(255) NOT NULL,
  `DataHora` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentarios`
--

LOCK TABLES `comentarios` WRITE;
/*!40000 ALTER TABLE `comentarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `comentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direitos`
--

DROP TABLE IF EXISTS `direitos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `direitos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FK_idNivel` int(10) unsigned NOT NULL,
  `descricao` varchar(25) DEFAULT NULL,
  `inclusao` tinyint(1) DEFAULT NULL,
  `alteracao` tinyint(1) DEFAULT NULL,
  `consulta` tinyint(1) DEFAULT NULL,
  `exclusao` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direitos`
--

LOCK TABLES `direitos` WRITE;
/*!40000 ALTER TABLE `direitos` DISABLE KEYS */;
/*!40000 ALTER TABLE `direitos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gruposdepesquisa`
--

DROP TABLE IF EXISTS `gruposdepesquisa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gruposdepesquisa` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FK_idInstituicao` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gruposdepesquisa`
--

LOCK TABLES `gruposdepesquisa` WRITE;
/*!40000 ALTER TABLE `gruposdepesquisa` DISABLE KEYS */;
/*!40000 ALTER TABLE `gruposdepesquisa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instituicoes`
--

DROP TABLE IF EXISTS `instituicoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instituicoes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instituicoes`
--

LOCK TABLES `instituicoes` WRITE;
/*!40000 ALTER TABLE `instituicoes` DISABLE KEYS */;
INSERT INTO `instituicoes` VALUES (3,'abc');
/*!40000 ALTER TABLE `instituicoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `midias`
--

DROP TABLE IF EXISTS `midias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `midias` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FK_idUsuario` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `DataHora` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `midias`
--

LOCK TABLES `midias` WRITE;
/*!40000 ALTER TABLE `midias` DISABLE KEYS */;
/*!40000 ALTER TABLE `midias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `niveis`
--

DROP TABLE IF EXISTS `niveis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `niveis` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nivel` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `niveis`
--

LOCK TABLES `niveis` WRITE;
/*!40000 ALTER TABLE `niveis` DISABLE KEYS */;
INSERT INTO `niveis` VALUES (1,'Master'),(2,'Administrador'),(3,'Moderador '),(4,'Usuário');
/*!40000 ALTER TABLE `niveis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_nivel` int(11) DEFAULT NULL,
  `nome` varchar(250) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `ultimoAcesso` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ativado` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,1,'admin','admin','5c4e793f898ef13dc7976da4921732753b31c0e3c15f8361f187b3dc50f34d19a2ed1395c53b084e5111445debc37754fb8fc11515f4b2ea7ae68aedc2c90817','8085ad37ce10ee96d193c6a55a14798ca200f1fdeab91f2de126600ad2ad950c4b51d06678053bbcb3f7c9f6dd438f397fe06495d8517561b3d246a0621ac077','2017-08-15 16:01:21',1);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-20 20:47:08
