CREATE DATABASE  IF NOT EXISTS `java-training-11-07` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `java-training-11-07`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: java-training-11-07
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Table structure for table `tblaccount`
--

DROP TABLE IF EXISTS `tblaccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblaccount` (
  `idAccount` int(11) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idAccount`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblaccount`
--

LOCK TABLES `tblaccount` WRITE;
/*!40000 ALTER TABLE `tblaccount` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblaccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcomment`
--

DROP TABLE IF EXISTS `tblcomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcomment` (
  `idComment` int(11) NOT NULL,
  `time` datetime DEFAULT NULL,
  `content` varchar(45) DEFAULT NULL,
  `idPost` int(11) DEFAULT NULL,
  `idUser` int(11) DEFAULT NULL,
  PRIMARY KEY (`idComment`),
  KEY `idPost_idx` (`idPost`),
  KEY `idUser_idx` (`idUser`),
  KEY `idUser2_idx` (`idUser`),
  CONSTRAINT `idPost` FOREIGN KEY (`idPost`) REFERENCES `tblpost` (`idPost`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `idUser2` FOREIGN KEY (`idUser`) REFERENCES `tbluser` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcomment`
--

LOCK TABLES `tblcomment` WRITE;
/*!40000 ALTER TABLE `tblcomment` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcomment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblpost`
--

DROP TABLE IF EXISTS `tblpost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblpost` (
  `idPost` int(11) NOT NULL,
  `time` datetime DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `content` varchar(45) DEFAULT NULL,
  `idUser` int(11) DEFAULT NULL,
  PRIMARY KEY (`idPost`),
  KEY `idUser_idx` (`idUser`),
  CONSTRAINT `idUser` FOREIGN KEY (`idUser`) REFERENCES `tbluser` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblpost`
--

LOCK TABLES `tblpost` WRITE;
/*!40000 ALTER TABLE `tblpost` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbluser`
--

DROP TABLE IF EXISTS `tbluser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbluser` (
  `idUser` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `idAccount` int(11) DEFAULT NULL,
  PRIMARY KEY (`idUser`),
  KEY `idAccount_idx` (`idAccount`),
  CONSTRAINT `idAccount` FOREIGN KEY (`idAccount`) REFERENCES `tblaccount` (`idAccount`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbluser`
--

LOCK TABLES `tbluser` WRITE;
/*!40000 ALTER TABLE `tbluser` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbluser` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-11 17:36:17
