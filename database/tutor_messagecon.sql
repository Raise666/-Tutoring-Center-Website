CREATE DATABASE  IF NOT EXISTS `tutor` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `tutor`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: tutor
-- ------------------------------------------------------
-- Server version	5.6.14

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
-- Table structure for table `messagecon`
--

DROP TABLE IF EXISTS `messagecon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messagecon` (
  `idmessagecon` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(45) NOT NULL,
  `zhuti` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `reply` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`idmessagecon`,`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messagecon`
--

LOCK TABLES `messagecon` WRITE;
/*!40000 ALTER TABLE `messagecon` DISABLE KEYS */;
INSERT INTO `messagecon` VALUES (25,'null','null','null','答辩拉','好的'),(26,'null','null','null','null',NULL),(27,'null','null','null','null',NULL),(28,'null','null','null','null',NULL),(29,'null','null','null','null',NULL),(30,'null','null','null','null',NULL),(31,'null','null','null','null',NULL),(32,'null','null','null','null',NULL),(33,'null','null','null','null',NULL),(34,'null','null','null','null',NULL),(35,'null','null','null','null',NULL),(36,'null','null','null','null',NULL),(37,'null','null','null','null',NULL),(38,'null','null','null','null',NULL),(39,'null','null','null','null',NULL),(40,'null','null','null','null',NULL),(41,'null','null','null','null',NULL),(42,'null','null','null','null',NULL),(43,'null','null','null','null',NULL),(44,'null','null','null','null',NULL),(45,'null','null','null','null',NULL),(46,'null','null','null','null',NULL),(47,'null','null','null','null',NULL),(48,'null','null','null','null',NULL),(49,'null','null','null','null',NULL),(50,'null','null','null','null',NULL),(51,'Alice','edr','447639117@qq.com','woxiangyaoxuexigaoshu',NULL),(52,'Alice','wode','33','2233',NULL),(53,'xyq','2017.6.9','447639117@qq.com','阿感冒鼻塞喉咙痛头晕到炸裂',NULL);
/*!40000 ALTER TABLE `messagecon` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-09  7:54:03
