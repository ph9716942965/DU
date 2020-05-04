-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: DU
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

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
-- Current Database: `DU`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `DU` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `DU`;

--
-- Table structure for table `UserActivityLog`
--

DROP TABLE IF EXISTS `UserActivityLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserActivityLog` (
  `audit_entry_id` int(11) NOT NULL AUTO_INCREMENT,
  `audit_entry_timestamp` varchar(100) NOT NULL,
  `audit_entry_model_name` varchar(100) NOT NULL,
  `audit_entry_operation` varchar(100) NOT NULL,
  `audit_entry_field_name` varchar(100) NOT NULL,
  `audit_entry_old_value` text,
  `audit_entry_new_value` text,
  `audit_entry_user_id` varchar(100) NOT NULL,
  `audit_entry_ip` varchar(100) NOT NULL,
  PRIMARY KEY (`audit_entry_id`),
  KEY `audit_entry_operation` (`audit_entry_operation`),
  KEY `audit_entry_user_id` (`audit_entry_user_id`),
  KEY `audit_entry_ip` (`audit_entry_ip`),
  KEY `audit_entry_model_name` (`audit_entry_model_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserActivityLog`
--

LOCK TABLES `UserActivityLog` WRITE;
/*!40000 ALTER TABLE `UserActivityLog` DISABLE KEYS */;
INSERT INTO `UserActivityLog` VALUES (1,'1588611159','ResearchProposal','UPDATE','Designation','test','test2','1','127.0.0.1');
/*!40000 ALTER TABLE `UserActivityLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserAuthLog`
--

DROP TABLE IF EXISTS `UserAuthLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserAuthLog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password_log` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cookieBased` tinyint(1) DEFAULT NULL,
  `duration` varchar(11) DEFAULT NULL,
  `error` tinytext,
  `ip` varchar(255) NOT NULL,
  `host` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `userAgent` varchar(255) NOT NULL,
  `login` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserAuthLog`
--

LOCK TABLES `UserAuthLog` WRITE;
/*!40000 ALTER TABLE `UserAuthLog` DISABLE KEYS */;
INSERT INTO `UserAuthLog` VALUES (1,NULL,'customer.care@thriwe.com','','2020-04-24 18:24:14',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.golflan.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(2,NULL,'customer.care@thriwe.com2','','2020-04-24 18:36:13',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.golflan.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(3,NULL,'customer.care@thriwe.com2','','2020-04-24 18:36:41',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.golflan.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(4,NULL,'customer.care@thriwe.com2','','2020-04-24 18:40:19',NULL,NULL,'no error','127.0.0.1','localhost','http://adminteepassindia.golflan.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',1),(5,NULL,'customer.care@thriwe.com2','','2020-04-24 18:40:22',NULL,NULL,'no error','127.0.0.1','localhost','http://adminteepassindia.golflan.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',1),(6,NULL,'customer.care@thriwe.com2','','2020-04-24 18:42:35',NULL,NULL,'UnAuthrize Login Attampted','127.0.0.1','localhost','http://adminteepassindia.golflan.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(7,NULL,'customer.care@thriwe.com2','','2020-04-24 18:42:45',NULL,NULL,'UnAuthrize Login Attampted','127.0.0.1','localhost','http://adminteepassindia.golflan.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(8,NULL,'customer.care@thriwe.com','','2020-04-24 18:42:56',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.golflan.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',1),(9,NULL,'customer.care@thriwe.com','','2020-04-24 18:45:02',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.golflan.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',1),(10,NULL,'customer.care@thriwe.com','','2020-04-24 18:45:13',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.golflan.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',1),(11,NULL,'customer.care@thriwe.com','','2020-04-25 05:22:48',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.golflan.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',1),(12,NULL,'customer.care@thriwe.com','','2020-04-25 15:36:05',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',1),(13,NULL,'customer.care@thriwe.com','','2020-04-25 16:07:31',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',1),(14,NULL,'customer.care@thriwe.com','','2020-04-26 09:38:14',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',1),(15,NULL,'customer.care@thriwe.com','','2020-04-26 09:46:09',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',1),(16,NULL,'customer.care@thriwe.com','','2020-04-26 09:47:26',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',1),(17,NULL,'customer.care@thriwe.com','','2020-04-26 09:49:43',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',1),(18,NULL,'customer.care@thriwe.com','15a2f421923a35276f4b7f0f52abd5e26a8691e4','2020-04-26 09:58:02',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',1),(19,NULL,'customer.care@thriwe.com','15a2f421923a35276f4b7f0f52abd5e26a8691e4','2020-04-26 09:58:32',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',1),(20,NULL,'customer.care@thriwe.com','15a2f421923a35276f4b7f0f52abd5e26a8691e4','2020-04-26 10:04:42',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',1),(21,NULL,'customer.care@thriwe.com','15a2f421923a35276f4b7f0f52abd5e26a8691e4','2020-04-26 12:18:02',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(22,NULL,'customer.care@thriwe.com','15a2f421923a35276f4b7f0f52abd5e26a8691e4','2020-04-26 12:18:14',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(23,NULL,'customer.care@thriwe.com','15a2f421923a35276f4b7f0f52abd5e26a8691e4','2020-04-26 12:24:28',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(24,NULL,'customer.care@thriwe.com','761c9cf521e0f078e1a3600427d5d28800e7f003','2020-04-26 12:24:36',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',1),(25,NULL,'customer.care@thriwe.com','1e3dcdae74ec11ff532690e5b768f0cb715c47d7','2020-04-26 12:50:52',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',1),(26,NULL,'customer.care@thriwe.com','15a2f421923a35276f4b7f0f52abd5e26a8691e4','2020-04-26 12:50:58',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(27,NULL,'customer.care@thriwe.com','1e3dcdae74ec11ff532690e5b768f0cb715c47d7','2020-04-26 12:51:05',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',1),(28,NULL,'customer.care@thriwe.com','15a2f421923a35276f4b7f0f52abd5e26a8691e4','2020-04-26 12:54:15',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(29,NULL,'customer.care@thriwe.com','1e3dcdae74ec11ff532690e5b768f0cb715c47d7','2020-04-26 12:54:24',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(30,NULL,'customer.care@thriwe.com','15a2f421923a35276f4b7f0f52abd5e26a8691e4','2020-04-26 12:55:05',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(31,NULL,'customer.care@thriwe.com','1e3dcdae74ec11ff532690e5b768f0cb715c47d7','2020-04-26 12:55:13',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(32,NULL,'customer.care@thriwe.com','15a2f421923a35276f4b7f0f52abd5e26a8691e4','2020-04-26 12:55:33',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(33,NULL,'customer.care@thriwe.com','1e3dcdae74ec11ff532690e5b768f0cb715c47d7','2020-04-26 12:55:41',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(34,NULL,'customer.care@thriwe.com','1e3dcdae74ec11ff532690e5b768f0cb715c47d7','2020-04-26 12:55:54',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(35,NULL,'customer.care@thriwe.com','15a2f421923a35276f4b7f0f52abd5e26a8691e4','2020-04-26 12:57:02',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(36,NULL,'customer.care@thriwe.com','1e3dcdae74ec11ff532690e5b768f0cb715c47d7','2020-04-26 12:57:11',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(37,NULL,'customer.care@thriwe.com','15a2f421923a35276f4b7f0f52abd5e26a8691e4','2020-04-26 12:58:25',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(38,NULL,'customer.care@thriwe.com','1e3dcdae74ec11ff532690e5b768f0cb715c47d7','2020-04-26 12:58:33',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(39,NULL,'customer.care@thriwe.com','1e3dcdae74ec11ff532690e5b768f0cb715c47d7','2020-04-26 12:59:53',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(40,NULL,'customer.care@thriwe.com','15a2f421923a35276f4b7f0f52abd5e26a8691e4','2020-04-27 06:02:38',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(41,NULL,'customer.care@thriwe.com','2c428d5b0680733bd0ca56cb523d015b5b6d3edb','2020-04-27 06:17:24',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(42,NULL,'customer.care@thriwe.com','14fa582a22db8ef115341574a299c2cfd0a7fedb','2020-04-27 06:17:36',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(43,NULL,'customer.care@thriwe.com','2c96b13b11477b8065c5beb0a751fbede165870b','2020-04-27 06:17:59',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',1),(44,NULL,'customer.care@thriwe.com','15a2f421923a35276f4b7f0f52abd5e26a8691e4','2020-04-27 06:59:05',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(45,NULL,'customer.care@thriwe.com','2c96b13b11477b8065c5beb0a751fbede165870b','2020-04-27 06:59:20',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(46,NULL,'customer.care@thriwe.com','2c96b13b11477b8065c5beb0a751fbede165870b','2020-04-27 06:59:49',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(47,NULL,'customer.care@thriwe.com','15a2f421923a35276f4b7f0f52abd5e26a8691e4','2020-04-27 07:03:32',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(48,NULL,'customer.care@thriwe.com','15a2f421923a35276f4b7f0f52abd5e26a8691e4','2020-04-27 07:04:04',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(49,NULL,'customer.care@thriwe.com','15a2f421923a35276f4b7f0f52abd5e26a8691e4','2020-04-27 07:05:49',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(50,NULL,'customer.care@thriwe.com','15a2f421923a35276f4b7f0f52abd5e26a8691e4','2020-04-27 07:06:19',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(51,NULL,'customer.care@thriwe.com','15a2f421923a35276f4b7f0f52abd5e26a8691e4','2020-04-27 07:08:16',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(52,NULL,'customer.care@thriwe.com','15a2f421923a35276f4b7f0f52abd5e26a8691e4','2020-04-27 07:08:52',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(53,NULL,'customer.care@thriwe.com','15a2f421923a35276f4b7f0f52abd5e26a8691e4','2020-04-27 07:09:47',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(54,NULL,'customer.care@thriwe.com','15a2f421923a35276f4b7f0f52abd5e26a8691e4','2020-04-27 07:10:43',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(55,NULL,'customer.care@thriwe.com','15a2f421923a35276f4b7f0f52abd5e26a8691e4','2020-04-27 07:13:54',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(56,NULL,'customer.care@thriwe.com','15a2f421923a35276f4b7f0f52abd5e26a8691e4','2020-04-27 07:17:16',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(57,NULL,'customer.care@thriwe.com','15a2f421923a35276f4b7f0f52abd5e26a8691e4','2020-04-27 07:17:31',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(58,NULL,'customer.care@thriwe.com','15a2f421923a35276f4b7f0f52abd5e26a8691e4','2020-04-27 07:20:25',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(59,NULL,'customer.care@thriwe.com','15a2f421923a35276f4b7f0f52abd5e26a8691e4','2020-04-27 07:20:49',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(60,NULL,'customer.care@thriwe.com','68ea3cbbf97ac98c2711d255ae759fa29a01bb93','2020-04-27 08:38:16',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',1),(61,NULL,'customer.care@thriwe.com','68ea3cbbf97ac98c2711d255ae759fa29a01bb93','2020-04-27 08:41:08',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',1),(62,NULL,'customer.care@thriwe.com','15a2f421923a35276f4b7f0f52abd5e26a8691e4','2020-04-27 08:44:50',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(63,NULL,'customer.care@thriwe.com','68ea3cbbf97ac98c2711d255ae759fa29a01bb93','2020-04-27 08:44:59',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',1),(64,NULL,'customer.care@thriwe.com','15a2f421923a35276f4b7f0f52abd5e26a8691e4','2020-04-27 09:49:15',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(65,NULL,'customer.care@thriwe.com','68ea3cbbf97ac98c2711d255ae759fa29a01bb93','2020-04-27 09:49:35',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',1),(66,NULL,'customer.care@thriwe.com','15a2f421923a35276f4b7f0f52abd5e26a8691e4','2020-04-27 09:51:18',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(67,NULL,'customer.care@thriwe.com','68ea3cbbf97ac98c2711d255ae759fa29a01bb93','2020-04-27 09:51:46',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',1),(68,NULL,'customer.care@thriwe.com','15a2f421923a35276f4b7f0f52abd5e26a8691e4','2020-04-27 13:47:52',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(69,NULL,'customer.care@thriwe.com','68ea3cbbf97ac98c2711d255ae759fa29a01bb93','2020-04-27 13:48:03',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',1),(70,NULL,'customer.care@thriwe.com','15a2f421923a35276f4b7f0f52abd5e26a8691e4','2020-04-27 14:54:04',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(71,NULL,'customer.care@thriwe.com','68ea3cbbf97ac98c2711d255ae759fa29a01bb93','2020-04-27 14:54:15',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',1),(72,NULL,'customer.care@thriwe.com','15a2f421923a35276f4b7f0f52abd5e26a8691e4','2020-04-27 15:29:16',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(73,NULL,'customer.care@thriwe.com','68ea3cbbf97ac98c2711d255ae759fa29a01bb93','2020-04-27 15:29:27',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',1),(74,NULL,'customer.care@thriwe.com','68ea3cbbf97ac98c2711d255ae759fa29a01bb93','2020-04-27 16:12:06',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',1),(75,NULL,'customer.care@thriwe.com','68ea3cbbf97ac98c2711d255ae759fa29a01bb93','2020-04-27 17:15:59',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',1),(76,NULL,'customer.care@thriwe.com','15a2f421923a35276f4b7f0f52abd5e26a8691e4','2020-04-28 05:16:57',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(77,NULL,'customer.care@thriwe.com','68ea3cbbf97ac98c2711d255ae759fa29a01bb93','2020-04-28 05:17:08',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',1),(78,NULL,'customer.care@thriwe.com','15a2f421923a35276f4b7f0f52abd5e26a8691e4','2020-04-28 08:40:30',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(79,NULL,'customer.care@thriwe.com','68ea3cbbf97ac98c2711d255ae759fa29a01bb93','2020-04-28 08:40:36',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',1),(80,NULL,'customer.care@thriwe.com','15a2f421923a35276f4b7f0f52abd5e26a8691e4','2020-04-28 13:56:39',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(81,NULL,'customer.care@thriwe.com','68ea3cbbf97ac98c2711d255ae759fa29a01bb93','2020-04-28 13:56:46',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',1),(82,NULL,'customer.care@thriwe.com','68ea3cbbf97ac98c2711d255ae759fa29a01bb93','2020-04-28 16:43:03',NULL,NULL,NULL,'127.0.0.1','localhost','http://adminteepassindia.thriwe.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',1),(83,NULL,'cusromer.care@thriwe.com','68ea3cbbf97ac98c2711d255ae759fa29a01bb93','2020-05-04 14:48:31',NULL,NULL,NULL,'127.0.0.1','localhost','http://admindu.hoststudioz.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(84,NULL,'cusromer.care@thriwe.com','68ea3cbbf97ac98c2711d255ae759fa29a01bb93','2020-05-04 14:48:40',NULL,NULL,NULL,'127.0.0.1','localhost','http://admindu.hoststudioz.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(85,NULL,'cusromer.care@thriwe.com','15a2f421923a35276f4b7f0f52abd5e26a8691e4','2020-05-04 14:48:49',NULL,NULL,NULL,'127.0.0.1','localhost','http://admindu.hoststudioz.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',0),(86,NULL,'customer.care@thriwe.com','68ea3cbbf97ac98c2711d255ae759fa29a01bb93','2020-05-04 14:49:06',NULL,NULL,NULL,'127.0.0.1','localhost','http://admindu.hoststudioz.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',1),(87,NULL,'customer.care@thriwe.com','68ea3cbbf97ac98c2711d255ae759fa29a01bb93','2020-05-04 16:43:25',NULL,NULL,NULL,'127.0.0.1','localhost','http://admindu.hoststudioz.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',1),(88,NULL,'admin','68ea3cbbf97ac98c2711d255ae759fa29a01bb93','2020-05-04 16:54:31',NULL,NULL,NULL,'127.0.0.1','localhost','http://admindu.hoststudioz.com/site/login','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36',1);
/*!40000 ALTER TABLE `UserAuthLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_attempt`
--

DROP TABLE IF EXISTS `login_attempt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_attempt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `amount` int(2) NOT NULL DEFAULT '1',
  `reset_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_attempt`
--

LOCK TABLES `login_attempt` WRITE;
/*!40000 ALTER TABLE `login_attempt` DISABLE KEYS */;
INSERT INTO `login_attempt` VALUES (1,'ca0d4b2244846321efee285f2feba3a94e080f2d',3,'2020-04-23 19:22:16','2020-04-23 19:07:14','2020-04-23 19:07:16'),(2,'0da837f9b162169222a713533e8bf52b6f34c4d2',1,'2020-04-23 19:42:58','2020-04-23 19:37:58','2020-04-23 19:37:58'),(3,'a0218246575301ef888e7a53579a972333f0caee',4,'2020-04-23 19:56:10','2020-04-23 19:38:09','2020-04-23 19:41:10'),(4,'a0218246575301ef888e7a53579a972333f0caee',2,'2020-04-24 04:40:37','2020-04-24 04:34:15','2020-04-24 04:35:37'),(5,'a0218246575301ef888e7a53579a972333f0caee',1,'2020-04-24 14:12:42','2020-04-24 14:07:42','2020-04-24 14:07:42'),(6,'a0218246575301ef888e7a53579a972333f0caee',1,'2020-04-24 17:42:11','2020-04-24 17:37:11','2020-04-24 17:37:11'),(7,'15a720a917db9d7f30812d391902a53e0ffe2b61',1,'2020-04-24 17:57:56','2020-04-24 17:52:56','2020-04-24 17:52:56'),(8,'d33ba6899626a222ddecb3e6f20965f7dc4f4c78',5,'2020-04-24 18:57:45','2020-04-24 18:36:42','2020-04-24 18:42:45'),(9,'a0218246575301ef888e7a53579a972333f0caee',3,'2020-04-25 14:51:07','2020-04-25 14:36:02','2020-04-25 14:36:07'),(10,'0da837f9b162169222a713533e8bf52b6f34c4d2',2,'2020-04-26 12:23:15','2020-04-26 12:18:03','2020-04-26 12:18:15'),(11,'0da837f9b162169222a713533e8bf52b6f34c4d2',1,'2020-04-26 12:29:29','2020-04-26 12:24:29','2020-04-26 12:24:29'),(12,'0da837f9b162169222a713533e8bf52b6f34c4d2',13,'2020-04-26 13:04:53','2020-04-26 12:50:59','2020-04-26 12:59:53'),(13,'0da837f9b162169222a713533e8bf52b6f34c4d2',1,'2020-04-27 06:07:39','2020-04-27 06:02:39','2020-04-27 06:02:39'),(14,'0da837f9b162169222a713533e8bf52b6f34c4d2',2,'2020-04-27 06:22:37','2020-04-27 06:17:25','2020-04-27 06:17:37'),(15,'0da837f9b162169222a713533e8bf52b6f34c4d2',12,'2020-04-27 07:32:16','2020-04-27 06:59:07','2020-04-27 07:17:16'),(16,'0da837f9b162169222a713533e8bf52b6f34c4d2',1,'2020-04-27 08:49:51','2020-04-27 08:44:51','2020-04-27 08:44:51'),(17,'0da837f9b162169222a713533e8bf52b6f34c4d2',2,'2020-04-27 09:56:19','2020-04-27 09:49:15','2020-04-27 09:51:19'),(18,'0da837f9b162169222a713533e8bf52b6f34c4d2',1,'2020-04-27 13:52:53','2020-04-27 13:47:53','2020-04-27 13:47:53'),(19,'0da837f9b162169222a713533e8bf52b6f34c4d2',1,'2020-04-27 14:59:05','2020-04-27 14:54:05','2020-04-27 14:54:05'),(20,'0da837f9b162169222a713533e8bf52b6f34c4d2',1,'2020-04-27 15:34:17','2020-04-27 15:29:17','2020-04-27 15:29:17'),(21,'0da837f9b162169222a713533e8bf52b6f34c4d2',1,'2020-04-28 05:21:58','2020-04-28 05:16:58','2020-04-28 05:16:58'),(22,'0da837f9b162169222a713533e8bf52b6f34c4d2',1,'2020-04-28 08:45:30','2020-04-28 08:40:30','2020-04-28 08:40:30'),(23,'0da837f9b162169222a713533e8bf52b6f34c4d2',1,'2020-04-28 14:01:39','2020-04-28 13:56:39','2020-04-28 13:56:39'),(24,'e042edfe5f903563e4afb8f4b589b76f2098d5d4',3,'2020-05-04 15:03:49','2020-05-04 14:48:31','2020-05-04 14:48:49');
/*!40000 ALTER TABLE `login_attempt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migration`
--

DROP TABLE IF EXISTS `migration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration`
--

LOCK TABLES `migration` WRITE;
/*!40000 ALTER TABLE `migration` DISABLE KEYS */;
INSERT INTO `migration` VALUES ('m000000_000000_base',1587667162),('m130524_201442_init',1587667165),('m181116_113502_country',1587667165);
/*!40000 ALTER TABLE `migration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `research_proposal`
--

DROP TABLE IF EXISTS `research_proposal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `research_proposal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `Designation` varchar(100) NOT NULL,
  `College` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Mobile` varchar(11) NOT NULL,
  `ResearchProjectTitle` varchar(100) NOT NULL,
  `BroadSubjectArea` varchar(100) NOT NULL,
  `ProjectDescription` varchar(400) NOT NULL,
  `Innovative` varchar(100) NOT NULL,
  `cat1Name_1` varchar(100) NOT NULL,
  `cat1Email_1` varchar(100) DEFAULT NULL,
  `cat1Department_1` varchar(100) NOT NULL,
  `cat1Name_2` varchar(100) NOT NULL,
  `cat1Email_2` varchar(100) DEFAULT NULL,
  `cat1Department_2` varchar(100) NOT NULL,
  `cat2Name_1` varchar(100) NOT NULL,
  `cat2Email_1` varchar(100) DEFAULT NULL,
  `cat2Department_1` varchar(100) NOT NULL,
  `cat2Name_2` varchar(100) NOT NULL,
  `cat2Email_2` varchar(100) DEFAULT NULL,
  `cat2Department_2` varchar(100) NOT NULL,
  `cat3Name_1` varchar(100) NOT NULL,
  `cat3Email_1` varchar(100) DEFAULT NULL,
  `cat3Department_1` varchar(100) NOT NULL,
  `cat3Name_2` varchar(100) NOT NULL,
  `cat3Email_2` varchar(100) DEFAULT NULL,
  `cat3Department_2` varchar(100) NOT NULL,
  `Duration` int(11) NOT NULL,
  `Methodology` varchar(400) NOT NULL,
  `Milestones` varchar(400) NOT NULL,
  `Materials` varchar(500) NOT NULL,
  `Infrastructure` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `research_proposal`
--

LOCK TABLES `research_proposal` WRITE;
/*!40000 ALTER TABLE `research_proposal` DISABLE KEYS */;
INSERT INTO `research_proposal` VALUES (1,'nasir','test','test','abc@thriwe.com','76767867676','abc','dj','jhjh','ty','na','','nn','nn','n','n','mm','mm','mm','nn','n','nn','nn','','nn','nnn','','nnn',3,'d','as','as','as'),(2,'nasir','test2','test','abc@thriwe.com','76767867676','kk','fff','ddd','mklkm','na','','nn','nn','','n','mm','','mm','nn','','nn','nn','','nn','nnn','','nnn',3,'rr','gg','44','4');
/*!40000 ALTER TABLE `research_proposal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `password_hash_updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','I1RNkGjH61p7dewRGRNiRdWq34rWZgBC','$2y$13$UrrdI6WMNvn0bntOFz1DAu2aPxEmnz4OAPP73Rk29HFEgZpc6qYVS','PwmTcCfid8VXaO1aHm4wXV-9gzus2s_-_1587976766','nasiruddin@thriwe.com',10,'2020-04-27 14:07:33',NULL,1587976766);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-04 23:05:33
