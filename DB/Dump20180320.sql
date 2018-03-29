-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: 192.168.0.35    Database: iot_smartbuilding
-- ------------------------------------------------------
-- Server version	5.6.25-enterprise-commercial-advanced-log

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
-- Table structure for table `tb_action`
--

DROP TABLE IF EXISTS `tb_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_action` (
  `action_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` varchar(4) NOT NULL,
  `url` varchar(50) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_action`
--

LOCK TABLES `tb_action` WRITE;
/*!40000 ALTER TABLE `tb_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_event`
--

DROP TABLE IF EXISTS `tb_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` varchar(4) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `temp` float NOT NULL,
  `smoke` float NOT NULL,
  `gyro` float NOT NULL,
  `fire` float NOT NULL,
  `issue` varchar(1) NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_event`
--

LOCK TABLES `tb_event` WRITE;
/*!40000 ALTER TABLE `tb_event` DISABLE KEYS */;
INSERT INTO `tb_event` VALUES (1,'1','2018-03-19 14:12:02',0,0,0,0,'0'),(2,'1','2018-03-19 14:12:21',0,0,0,0,'0'),(3,'1','2018-03-19 15:03:00',-1.17,0,0,0,'0'),(4,'1','2018-03-19 15:03:11',0,0,0,0,'0'),(5,'1','2018-03-19 15:03:13',0,0,0,0,'0'),(6,'1','2018-03-19 15:14:16',39.84,0,0,0,'0'),(7,'1','2018-03-19 15:15:00',40.82,0,0,0,'0'),(8,'1','2018-03-19 15:15:12',40.33,0,0,0,'0'),(9,'1','2018-03-19 15:15:23',40.82,0,0,0,'0'),(10,'1','2018-03-19 15:15:35',41.31,0,0,0,'0'),(11,'1','2018-03-19 15:15:46',40.82,0,0,0,'0'),(12,'1','2018-03-19 15:15:58',41.8,0,0,0,'0'),(13,'1','2018-03-19 15:16:09',40.82,0,0,0,'0'),(14,'1','2018-03-19 16:11:17',0,0,0,0,'0'),(15,'1','2018-03-19 16:11:27',0,0,0,0,'0'),(16,'1','2018-03-20 17:52:22',26.17,501,998,1002,''),(17,'1','2018-03-20 17:52:34',26.17,495,997,1005,''),(18,'1','2018-03-20 17:52:45',26.17,489,1001,1000,''),(19,'1','2018-03-20 17:52:57',26.21,483,1001,998,''),(20,'1','2018-03-20 17:53:28',26.29,504,1004,1002,'0'),(21,'1','2018-03-20 17:53:35',26.21,494,1000,1000,'0'),(22,'1','2018-03-20 17:53:47',26.29,488,994,975,'0'),(23,'1','2018-03-20 17:53:57',26.29,494,1000,85,'1'),(24,'1','2018-03-20 17:54:09',26.31,488,998,987,'1'),(25,'1','2018-03-20 17:54:21',26.21,487,999,984,'1'),(26,'1','2018-03-20 17:54:32',26.21,490,1001,973,'1'),(27,'1','2018-03-20 17:54:44',26.27,489,1002,974,'1'),(28,'1','2018-03-20 17:54:56',26.29,488,999,976,'1'),(29,'1','2018-03-20 17:55:07',26.21,489,999,974,'1'),(30,'1','2018-03-20 17:55:19',26.29,490,1003,975,'1'),(31,'1','2018-03-20 17:55:31',26.37,487,1000,973,'1'),(32,'1','2018-03-20 17:55:42',26.29,491,1008,972,'1'),(33,'1','2018-03-20 17:55:54',26.23,486,1001,971,'1'),(34,'1','2018-03-20 17:56:06',26.21,488,999,973,'1'),(35,'1','2018-03-20 17:56:17',26.31,487,1003,977,'1'),(36,'1','2018-03-20 17:56:29',26.27,486,994,979,'1'),(37,'1','2018-03-20 17:56:41',26.31,486,1000,991,'1'),(38,'1','2018-03-20 17:56:52',26.21,484,1004,981,'1'),(39,'1','2018-03-20 17:57:18',26.31,480,1000,984,'0'),(40,'1','2018-03-20 17:57:30',26.29,482,66,989,'2'),(41,'1','2018-03-20 17:57:42',26.29,487,1005,988,'2'),(42,'1','2018-03-20 17:57:54',26.35,488,1003,990,'2'),(43,'1','2018-03-20 17:58:05',26.29,493,1004,987,'2'),(44,'1','2018-03-20 17:58:17',26.31,488,1000,987,'2'),(45,'1','2018-03-20 17:58:29',26.29,490,996,984,'2'),(46,'1','2018-03-20 17:58:40',26.31,487,1000,983,'2'),(47,'1','2018-03-20 17:58:52',26.31,489,998,985,'2'),(48,'1','2018-03-20 17:59:04',26.35,493,998,983,'2'),(49,'1','2018-03-20 17:59:15',26.27,493,998,976,'2'),(50,'1','2018-03-20 17:59:27',26.27,502,999,979,'2'),(51,'1','2018-03-20 17:59:51',26.29,486,1000,974,'0'),(52,'1','2018-03-20 18:00:01',26.29,481,160,987,'2'),(53,'1','2018-03-20 18:00:13',26.27,491,1003,987,'0'),(54,'1','2018-03-20 18:13:52',26.37,487,1004,1002,'0'),(55,'1','2018-03-20 18:13:56',26.35,489,1000,996,'0'),(56,'1','2018-03-20 18:14:07',26.41,487,1000,998,'0'),(57,'1','2018-03-20 18:14:18',26.37,488,1006,998,'0'),(58,'1','2018-03-20 18:14:29',26.41,489,997,998,'0'),(59,'1','2018-03-20 18:14:41',26.35,491,1000,998,'0'),(60,'1','2018-03-20 18:14:53',26.37,485,999,996,'0'),(61,'1','2018-03-20 18:15:04',26.37,485,999,998,'0'),(62,'1','2018-03-20 18:15:16',26.37,488,1000,1006,'0'),(63,'1','2018-03-20 18:15:28',26.35,487,995,1002,'0'),(64,'1','2018-03-20 18:15:39',26.41,485,1002,999,'0'),(65,'1','2018-03-20 18:15:51',26.41,483,1002,999,'0'),(66,'1','2018-03-20 18:16:03',26.35,486,1003,1000,'0'),(67,'1','2018-03-20 18:16:13',26.31,490,60,999,'2'),(68,'1','2018-03-20 18:16:25',26.35,490,999,998,'0'),(69,'1','2018-03-20 18:16:36',26.37,489,998,997,'0'),(70,'1','2018-03-20 18:16:48',26.37,496,998,997,'0'),(71,'1','2018-03-20 18:17:00',26.43,490,995,998,'0'),(72,'1','2018-03-20 18:17:11',26.37,489,997,997,'0'),(73,'1','2018-03-20 18:17:23',26.37,496,1002,998,'0'),(74,'1','2018-03-20 18:17:35',26.35,492,999,995,'0'),(75,'1','2018-03-20 18:17:46',26.41,490,999,999,'0'),(76,'1','2018-03-20 18:18:09',26.31,491,209,995,'2'),(77,'1','2018-03-20 18:18:20',26.35,494,1002,999,'0'),(78,'1','2018-03-20 18:18:30',26.35,499,997,997,'0'),(79,'1','2018-03-20 18:18:40',26.37,497,1002,998,'0'),(80,'1','2018-03-20 18:18:50',26.35,503,1000,994,'0'),(81,'1','2018-03-20 18:19:01',26.35,504,994,985,'0'),(82,'1','2018-03-20 18:19:11',26.35,504,999,998,'0'),(83,'1','2018-03-20 18:19:21',26.35,503,1003,1001,'0'),(84,'1','2018-03-20 18:19:31',26.37,506,1000,996,'0'),(85,'1','2018-03-20 18:19:42',26.37,508,997,994,'0'),(86,'1','2018-03-20 18:19:52',26.41,510,999,992,'0'),(87,'1','2018-03-20 18:20:02',26.37,510,999,996,'0'),(88,'1','2018-03-20 18:20:12',26.31,504,1000,1001,'0'),(89,'1','2018-03-20 18:20:23',26.41,508,997,998,'0'),(90,'1','2018-03-20 18:20:33',26.37,506,1000,999,'0'),(91,'1','2018-03-20 18:20:43',26.35,508,1001,998,'0'),(92,'1','2018-03-20 18:20:53',26.35,512,1003,995,'0'),(93,'1','2018-03-20 18:21:04',26.37,507,996,1000,'0'),(94,'1','2018-03-20 18:21:14',26.41,504,997,993,'0'),(95,'1','2018-03-20 18:21:24',26.29,505,1000,997,'0'),(96,'1','2018-03-20 18:21:34',26.35,506,998,998,'0'),(97,'1','2018-03-20 18:21:45',26.31,502,1001,993,'0'),(98,'1','2018-03-20 18:21:55',26.41,503,998,1001,'0'),(99,'1','2018-03-20 18:22:05',26.37,500,1000,996,'0'),(100,'1','2018-03-20 18:22:15',26.41,503,1000,999,'0'),(101,'1','2018-03-20 18:22:28',26.35,504,72,996,'2'),(102,'1','2018-03-20 18:22:39',26.35,505,998,933,'0'),(103,'1','2018-03-20 18:22:49',26.41,503,1002,95,'1'),(104,'1','2018-03-20 18:22:59',26.31,504,1001,978,'0'),(105,'1','2018-03-20 18:23:09',26.31,502,998,1001,'0'),(106,'1','2018-03-20 18:23:20',26.35,504,1000,998,'0'),(107,'1','2018-03-20 18:23:30',26.35,503,997,1000,'0'),(108,'1','2018-03-20 18:23:40',26.37,501,1001,1000,'0'),(109,'1','2018-03-20 18:23:50',26.37,502,1002,1005,'0'),(110,'1','2018-03-20 18:24:01',26.37,503,993,1002,'0'),(111,'1','2018-03-20 18:24:11',26.31,501,998,1001,'0'),(112,'1','2018-03-20 18:24:21',26.37,498,1000,997,'0'),(113,'1','2018-03-20 18:24:31',26.37,499,1003,997,'0'),(114,'1','2018-03-20 18:24:42',26.35,498,998,1000,'0'),(115,'1','2018-03-20 18:24:52',26.37,497,999,1000,'0'),(116,'1','2018-03-20 18:25:02',26.35,498,1000,1001,'0'),(117,'1','2018-03-20 18:25:12',26.31,497,999,999,'0'),(118,'1','2018-03-20 18:25:23',26.41,499,999,1002,'0'),(119,'1','2018-03-20 18:25:33',26.35,499,999,994,'0'),(120,'1','2018-03-20 18:25:43',26.37,498,1005,998,'0'),(121,'1','2018-03-20 18:25:54',26.37,499,1004,1000,'0'),(122,'1','2018-03-20 18:26:04',26.31,503,999,1000,'0'),(123,'1','2018-03-20 18:28:14',26.37,502,1000,1000,'0'),(124,'1','2018-03-20 18:28:17',26.37,500,1000,999,'0'),(125,'1','2018-03-20 18:28:28',26.31,515,999,998,'0'),(126,'1','2018-03-20 18:28:39',26.31,512,998,1002,'0'),(127,'1','2018-03-20 18:28:50',26.37,505,1004,997,'0'),(128,'1','2018-03-20 18:29:00',26.31,504,1004,1000,'0'),(129,'1','2018-03-20 18:29:10',26.29,506,1001,1004,'0'),(130,'1','2018-03-20 18:29:21',26.29,506,1002,1003,'0'),(131,'1','2018-03-20 18:29:31',26.37,506,999,1002,'0'),(132,'1','2018-03-20 18:29:42',26.35,504,999,1002,'0'),(133,'1','2018-03-20 18:29:52',26.31,508,1004,999,'0'),(134,'1','2018-03-20 18:30:03',26.31,506,1002,999,'0'),(135,'1','2018-03-20 18:30:13',26.35,503,999,1002,'0'),(136,'1','2018-03-20 18:30:24',26.37,501,999,997,'0'),(137,'1','2018-03-20 18:30:34',26.27,546,1003,1002,'0'),(138,'1','2018-03-20 18:30:45',26.31,694,1005,1003,'0'),(139,'1','2018-03-20 18:30:58',26.29,722,1004,998,'1'),(140,'1','2018-03-20 18:31:09',26.49,672,997,1000,'0'),(141,'1','2018-03-20 18:31:20',22.99,627,1001,986,'0'),(142,'1','2018-03-20 18:31:30',27.53,596,997,989,'0'),(143,'1','2018-03-20 18:31:40',27.69,566,999,990,'0'),(144,'1','2018-03-20 18:31:51',27.63,554,999,992,'0'),(145,'1','2018-03-20 18:32:01',27.53,553,993,992,'0'),(146,'1','2018-03-20 18:32:12',27.53,544,996,988,'0'),(147,'1','2018-03-20 18:32:22',27.87,536,1000,990,'0'),(148,'1','2018-03-20 18:32:33',27.85,531,1002,988,'0'),(149,'1','2018-03-20 18:32:43',27.73,525,1000,990,'0'),(150,'1','2018-03-20 18:32:54',27.81,519,1002,990,'0'),(151,'1','2018-03-20 18:33:04',27.81,517,998,989,'0'),(152,'1','2018-03-20 18:33:14',27.95,515,1005,987,'0'),(153,'1','2018-03-20 18:33:25',27.85,513,999,986,'0'),(154,'1','2018-03-20 18:33:35',28.11,511,1003,991,'0'),(155,'1','2018-03-20 18:34:02',27.11,506,999,987,'0'),(156,'1','2018-03-20 18:34:12',27.03,508,999,988,'0'),(157,'1','2018-03-20 18:34:23',27.29,507,1000,990,'0'),(158,'1','2018-03-20 18:34:34',27.25,502,999,986,'0'),(159,'1','2018-03-20 18:35:05',56.75,500,996,993,'1'),(160,'1','2018-03-20 18:35:18',54.03,503,1002,991,'1'),(161,'1','2018-03-20 18:35:29',26.73,505,1004,990,'0'),(162,'1','2018-03-20 18:35:39',26.59,507,997,986,'0'),(163,'1','2018-03-20 18:35:50',26.73,515,1006,999,'0'),(164,'1','2018-03-20 18:36:00',26.85,510,1009,1009,'0'),(165,'1','2018-03-20 18:36:11',27.09,507,1009,999,'0'),(166,'1','2018-03-20 18:36:21',26.73,510,1012,1002,'0'),(167,'1','2018-03-20 18:36:32',27.05,505,1007,999,'0'),(168,'1','2018-03-20 18:36:42',27.55,503,1010,1002,'0'),(169,'1','2018-03-20 18:36:53',27.37,500,1005,1009,'0'),(170,'1','2018-03-20 18:37:03',27.09,504,1009,1003,'0'),(171,'1','2018-03-20 18:37:14',27.17,504,1009,1001,'0'),(172,'1','2018-03-20 18:37:24',26.93,507,1011,1004,'0'),(173,'1','2018-03-20 18:37:34',27.25,505,1014,1004,'0'),(174,'1','2018-03-20 18:37:45',27.31,504,1008,999,'0'),(175,'1','2018-03-20 18:37:56',27.25,511,1006,998,'0'),(176,'1','2018-03-20 18:38:06',27.59,509,1014,997,'0'),(177,'1','2018-03-20 18:38:16',27.15,505,1002,1000,'0'),(178,'1','2018-03-20 18:38:27',27.55,510,1008,995,'0'),(179,'1','2018-03-20 18:38:37',27.47,504,1008,1001,'0'),(180,'1','2018-03-20 18:38:48',27.43,505,1008,1000,'0'),(181,'1','2018-03-20 18:38:58',27.49,510,1008,1004,'0'),(182,'1','2018-03-20 18:39:09',27.43,512,1012,998,'0'),(183,'1','2018-03-20 18:39:19',27.25,508,1008,1000,'0'),(184,'1','2018-03-20 18:39:29',27.25,508,1013,998,'0'),(185,'1','2018-03-20 18:39:40',27.37,508,1008,1004,'0'),(186,'1','2018-03-20 18:39:50',27.49,511,1008,1000,'0'),(187,'1','2018-03-20 18:40:01',27.25,511,1013,1000,'0'),(188,'1','2018-03-20 18:40:11',27.41,515,1013,1003,'0'),(189,'1','2018-03-20 18:40:22',27.31,510,1005,1001,'0'),(190,'1','2018-03-20 18:40:32',27.69,514,1010,1002,'0'),(191,'1','2018-03-20 18:40:43',26.91,515,1007,996,'0'),(192,'1','2018-03-20 18:40:53',27.09,514,1014,1001,'0'),(193,'1','2018-03-20 18:41:04',27.81,516,1011,1003,'0'),(194,'1','2018-03-20 18:41:15',27.53,514,1014,1001,'0'),(195,'1','2018-03-20 18:41:24',27.81,514,1018,1002,'0'),(196,'1','2018-03-20 18:41:35',27.75,514,1008,999,'0'),(197,'1','2018-03-20 18:41:45',26.91,514,1006,998,'0'),(198,'1','2018-03-20 18:41:56',26.85,516,1014,1003,'0'),(199,'1','2018-03-20 18:42:06',26.87,516,1012,1002,'0'),(200,'1','2018-03-20 18:42:17',26.87,514,1010,1007,'0'),(201,'1','2018-03-20 18:42:27',26.79,520,1008,999,'0'),(202,'1','2018-03-20 18:42:38',26.77,521,1010,999,'0'),(203,'1','2018-03-20 18:42:48',26.77,517,1009,999,'0'),(204,'1','2018-03-20 18:42:59',26.87,522,1009,1009,'0'),(205,'1','2018-03-20 18:43:09',26.83,517,1013,1004,'0'),(206,'1','2018-03-20 18:43:19',26.83,519,1011,1002,'0'),(207,'1','2018-03-20 18:43:30',26.83,522,1010,996,'0'),(208,'1','2018-03-20 18:43:40',26.85,521,1012,999,'0'),(209,'1','2018-03-20 18:43:51',26.79,524,1015,1006,'0'),(210,'1','2018-03-20 18:44:01',26.79,523,1008,1006,'0'),(211,'1','2018-03-20 18:44:12',26.79,521,1010,1001,'0'),(212,'1','2018-03-20 18:44:22',26.79,517,1013,1004,'0'),(213,'1','2018-03-20 18:44:33',26.79,519,1006,1004,'0'),(214,'1','2018-03-20 18:44:43',26.77,521,1009,1002,'0'),(215,'1','2018-03-20 18:44:54',26.79,519,1007,997,'0'),(216,'1','2018-03-20 18:45:04',26.83,520,1008,998,'0'),(217,'1','2018-03-20 18:45:14',26.79,521,1011,1000,'0'),(218,'1','2018-03-20 18:45:25',26.83,520,1015,1001,'0'),(219,'1','2018-03-20 18:45:35',26.77,519,1012,1001,'0'),(220,'1','2018-03-20 18:45:46',26.77,520,1009,1004,'0'),(221,'1','2018-03-20 18:45:56',26.73,522,1007,1002,'0'),(222,'1','2018-03-20 18:46:07',26.77,520,1007,1002,'0'),(223,'1','2018-03-20 18:46:17',26.77,521,1008,998,'0'),(224,'1','2018-03-20 18:46:28',26.79,519,1014,1002,'0'),(225,'1','2018-03-20 18:46:38',26.73,521,1010,1002,'0');
/*!40000 ALTER TABLE `tb_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_fire_ex`
--

DROP TABLE IF EXISTS `tb_fire_ex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_fire_ex` (
  `fire_ex_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `ex_date` date NOT NULL,
  `check_date` datetime NOT NULL,
  PRIMARY KEY (`fire_ex_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_fire_ex`
--

LOCK TABLES `tb_fire_ex` WRITE;
/*!40000 ALTER TABLE `tb_fire_ex` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_fire_ex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_hr`
--

DROP TABLE IF EXISTS `tb_hr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_hr` (
  `hr_id` int(11) NOT NULL,
  `id` varchar(16) NOT NULL,
  `pw` varchar(16) NOT NULL,
  `name` varchar(10) NOT NULL,
  `location_id` int(11) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `sex` varchar(1) NOT NULL,
  `birthday` varchar(8) NOT NULL,
  `level` varchar(1) NOT NULL,
  `FCM` text,
  `profile` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_hr`
--

LOCK TABLES `tb_hr` WRITE;
/*!40000 ALTER TABLE `tb_hr` DISABLE KEYS */;
INSERT INTO `tb_hr` VALUES (1,'0000000000','password','관리자',610,'010-0000-0000','administrator@HSB.com','F','20180317','0','dpLbZuQqfWI:APA91bGk_AXJK3q6Kx4_k9sil7hJQ1CzfqFvTPzonsQpl3OwOpCYVeHrcJdcBpvgY6XaazHcQLkSfHtho2cVdv6G9hkMZUELAPruewDjlffQ5sNCPyIQL71PNtQPVfPlPHOusLBnN6pJ','http://192.168.0.35:8088/SafeForYou/img/HR_profile/0000000000.png');
/*!40000 ALTER TABLE `tb_hr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_location`
--

DROP TABLE IF EXISTS `tb_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_location` (
  `location_id` int(11) NOT NULL,
  `location` varchar(4) NOT NULL,
  `dept_name` varchar(20) NOT NULL,
  `manager` varchar(20) DEFAULT NULL,
  `dept_tel` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_location`
--

LOCK TABLES `tb_location` WRITE;
/*!40000 ALTER TABLE `tb_location` DISABLE KEYS */;
INSERT INTO `tb_location` VALUES (1,'600','hallway',NULL,'070-0000-0001'),(2,'601','President',NULL,'070-0000-0002'),(3,'602','Planning Dept',NULL,'070-0000-0003'),(4,'603','Management',NULL,'070-0000-0004'),(5,'604','Marketing',NULL,'070-0000-0005'),(6,'605','Design',NULL,'070-0000-0006'),(7,'606','Production',NULL,'070-0000-0007'),(8,'607','RNDTeam',NULL,'070-0000-0008'),(9,'608','Quality Control',NULL,'070-0000-0009'),(10,'609','Sales',NULL,'070-0000-0010'),(11,'610','Administration',NULL,'070-0000-0011');
/*!40000 ALTER TABLE `tb_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_module`
--

DROP TABLE IF EXISTS `tb_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_module` (
  `module_id` varchar(4) NOT NULL,
  `type` varchar(10) NOT NULL,
  `ip` varchar(16) NOT NULL,
  `location_id` int(11) NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_module`
--

LOCK TABLES `tb_module` WRITE;
/*!40000 ALTER TABLE `tb_module` DISABLE KEYS */;
INSERT INTO `tb_module` VALUES ('1','arduino','192.168.0.46',603),('2','raspberry','192.168.0.13',603);
/*!40000 ALTER TABLE `tb_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'iot_smartbuilding'
--

--
-- Dumping routines for database 'iot_smartbuilding'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-20 19:07:36
