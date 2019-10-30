-- MySQL dump 10.13  Distrib 5.7.14, for Linux (x86_64)
--
-- Host: localhost    Database: WorkHorseDB
-- ------------------------------------------------------
-- Server version	5.7.14-google-log

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
-- Current Database: `WorkHorseDB`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `WorkHorseDB` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `WorkHorseDB`;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `description` varchar(140) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Meeting','Professional conference to discuss upcoming business decisions'),(2,'Team Building','Exercises in teamwork, motivation, and companionship'),(3,'Llama Piñata Party','Informal parties to celebrate recent efforts or to relieve stress');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `user_role_id` int(11) NOT NULL,
  `job_role_id` int(11) NOT NULL,
  `email` varchar(320) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `emergency_contact_name` varchar(100) DEFAULT NULL,
  `emergency_contact_number` char(10) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `hire_date` date DEFAULT NULL,
  `termination_date` date DEFAULT NULL,
  `hours_of_pto` tinyint(4) DEFAULT NULL,
  `SSN` char(9) DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `is_good` tinyint(4) NOT NULL DEFAULT '0',
  `is_hr` tinyint(4) NOT NULL DEFAULT '0',
  `is_admin` tinyint(4) NOT NULL DEFAULT '0',
  `home_phone` char(10) DEFAULT 'unknown',
  `mobile_phone` char(10) DEFAULT 'unknown',
  `has_image` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`employee_id`),
  KEY `job_role_id` (`job_role_id`),
  KEY `user_role_id` (`user_role_id`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`job_role_id`) REFERENCES `job_role` (`job_role_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`user_role_id`) REFERENCES `user_role` (`user_role_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (41,'War','Carnage',1,1,'carnage.war@warhorse.com','bodycount9353','contact name','-1555','address','1000-01-01',NULL,100,'SSN',43,0,0,0,'unknown','unknown',0),(42,'Scarlet','Schmitt',2,2,'schmitt.scarlet@warhorse.com','colorR3d','contact name','-1555','address','2016-03-25',NULL,21,'SSN',44,0,0,0,'unknown','unknown',0),(43,'Hunter','Schuler',2,5,'schuler.hunter@srmsolutions.com','pasword123','contact name','-1555','address','2019-10-21',NULL,0,'SSN',45,0,1,1,'unknown','unknown',0),(44,'Karl','Marx',2,4,'marx.karl@srmsolutions.com','pasword123','contact name','-1555','address','2019-10-21',NULL,0,'SSN',43,0,1,1,'unknown','unknown',0),(45,'Eric','Riddle',4,5,'riddle.eric@srmsolutions.com','pasword123','contact name','-1555','address','2019-10-21',NULL,0,'',43,0,0,0,'unknown','unknown',0),(47,'Jane','Doe',4,5,'doe.jane@warhorse.com','deerHunter!','contact name','-1555','address','2004-06-02',NULL,60,'',43,0,0,0,'unknown','unknown',0),(48,'John','Smith',4,3,'smith.john@warhorse.com','456Secret','contact name','-1555','address','2019-10-03',NULL,0,'SSN',44,1,1,1,'unknown','unknown',0),(49,'War','Carnage',1,1,'carnage.war@warhorse.com','bodycount9353','contact name','-1555','address','1000-01-01',NULL,100,'SSN',44,1,0,0,'unknown','unknown',0),(50,'Scarlet','Schmitt',2,2,'schmitt.scarlet@warhorse.com','colorR3d','contact name','-1555','address','2016-03-25',NULL,21,'SSN',45,1,0,0,'unknown','unknown',0),(51,'Hunter','Schuler',2,4,'schuler.hunter@srmsolutions.com','pasword123','contact name','-1555','address','2019-10-21',NULL,0,'SSN',45,1,1,1,'unknown','unknown',0),(52,'Karl','Marx',2,5,'marx.karl@srmsolutions.com','pasword123','contact name','-1555','address','2019-10-21',NULL,0,'SSN',43,1,1,1,'unknown','unknown',0),(53,'Eric','Riddle',4,5,'riddle.eric@srmsolutions.com','pasword123','contact name','-1555','address','2019-10-21',NULL,0,'',43,0,0,0,'unknown','unknown',1),(56,'John','Smith',4,3,'smith.john@warhorse.com','456Secret','contact name','-1555','address','2019-10-03',NULL,0,'SSN',43,0,1,1,'unknown','unknown',0),(57,'gfs','',1,1,'',NULL,NULL,NULL,'Calle del Poeta Joan Maragall, 23, Madrid, Spain','2019-10-26','2019-10-26',0,'',43,0,1,1,'',',',0),(58,'Eric','Riddle',4,3,'riddle.e.w@gmail.com',NULL,NULL,NULL,'212 W Collins Ct, Louisville, KY, USA','2019-10-26','2019-10-26',0,'2',43,0,1,1,'6064349996',',',0),(60,'Karl','Marx-levi',4,5,'5042021062karlmarx@gmail.com',NULL,'','','2304 Woodbourne Avenue, Apt 3','2019-10-26','2019-10-26',0,'',43,0,0,0,'5028886195',',',0);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_of_week`
--

DROP TABLE IF EXISTS `employee_of_week`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_of_week` (
  `employee_of_week_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `week_of_date` date NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`employee_of_week_id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `employee_of_week_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_of_week`
--

LOCK TABLES `employee_of_week` WRITE;
/*!40000 ALTER TABLE `employee_of_week` DISABLE KEYS */;
INSERT INTO `employee_of_week` VALUES (4,45,'2019-10-21','Im the best'),(5,45,'2019-10-28','Still the best'),(7,43,'2019-10-21','Better than Eric');
/*!40000 ALTER TABLE `employee_of_week` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_org_group`
--

DROP TABLE IF EXISTS `employee_org_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_org_group` (
  `employee_id` int(11) NOT NULL,
  `org_group` int(11) NOT NULL,
  PRIMARY KEY (`employee_id`,`org_group`),
  KEY `org_group` (`org_group`),
  CONSTRAINT `employee_org_group_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`),
  CONSTRAINT `employee_org_group_ibfk_2` FOREIGN KEY (`org_group`) REFERENCES `org_group` (`org_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_org_group`
--

LOCK TABLES `employee_org_group` WRITE;
/*!40000 ALTER TABLE `employee_org_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_org_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `start_time` date DEFAULT NULL,
  `end_time` date DEFAULT NULL,
  `description` varchar(140) DEFAULT NULL,
  `location` varchar(140) DEFAULT NULL,
  `latitude` decimal(9,6) NOT NULL DEFAULT '42.434718',
  `longitude` decimal(9,6) NOT NULL DEFAULT '-84.002509',
  `is_required` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1,'adlsfkj',1,'2019-10-24','2019-10-24','zsdklj','asdjfl',20.000000,20.000000,0),(5,'Quarterly Budget Review',1,'2019-11-20','2019-11-20','no comment','Conference Room 103',0.000000,0.000000,0),(6,'Were all in this Together',2,'2019-10-25','2019-10-25','Lets work together to create a better office space','Conference Room 302',20.000000,20.000000,1),(7,'Llama Party!',3,'2019-10-31','2019-10-31','Relax and enjoy some candy with your coworkers! Be sure to dress up for the holiday!','Conference Room 302',5.000000,5.000000,1),(8,'something',1,'2019-10-16','2019-10-25','asdfjalksj','ajfkls',0.000000,10.000000,0),(9,'something',1,'2019-10-16','2019-10-25','asdfjalksj','ajfkls',0.000000,10.000000,0),(10,NULL,NULL,'2019-10-05','2019-10-19','Test Description',NULL,0.000000,0.000000,1),(11,NULL,NULL,'2019-10-19','2019-10-26','Test Description',NULL,0.000000,0.000000,1),(12,'Test Name',NULL,'2019-10-05','2019-10-05','Test Description',NULL,0.000000,0.000000,1),(13,'rgedga',NULL,'2019-10-05','2019-10-12','dfgra',NULL,0.000000,0.000000,1);
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_category`
--

DROP TABLE IF EXISTS `event_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_category` (
  `event_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`event_id`),
  KEY `event_id` (`event_id`),
  CONSTRAINT `event_category_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `event` (`event_id`),
  CONSTRAINT `event_category_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_category`
--

LOCK TABLES `event_category` WRITE;
/*!40000 ALTER TABLE `event_category` DISABLE KEYS */;
INSERT INTO `event_category` VALUES (1,1),(1,2),(5,3),(6,1),(7,1),(8,2),(9,2),(10,2),(11,1),(12,1),(13,1),(13,2),(13,3);
/*!40000 ALTER TABLE `event_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_employee_attending`
--

DROP TABLE IF EXISTS `event_employee_attending`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_employee_attending` (
  `employee_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  PRIMARY KEY (`employee_id`,`event_id`),
  KEY `event_id` (`event_id`),
  CONSTRAINT `event_employee_attending_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`),
  CONSTRAINT `event_employee_attending_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `event` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_employee_attending`
--

LOCK TABLES `event_employee_attending` WRITE;
/*!40000 ALTER TABLE `event_employee_attending` DISABLE KEYS */;
INSERT INTO `event_employee_attending` VALUES (41,1),(42,1),(42,5),(47,5),(48,6),(41,7),(42,7),(43,8),(44,8),(45,9),(47,9),(48,9);
/*!40000 ALTER TABLE `event_employee_attending` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_employee_invited`
--

DROP TABLE IF EXISTS `event_employee_invited`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_employee_invited` (
  `employee_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  PRIMARY KEY (`employee_id`,`event_id`),
  KEY `event_id` (`event_id`),
  CONSTRAINT `event_employee_invited_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`),
  CONSTRAINT `event_employee_invited_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `event` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_employee_invited`
--

LOCK TABLES `event_employee_invited` WRITE;
/*!40000 ALTER TABLE `event_employee_invited` DISABLE KEYS */;
INSERT INTO `event_employee_invited` VALUES (41,1),(42,1),(43,1),(42,5),(44,5),(47,5),(48,6),(41,7),(42,7),(43,7),(43,8),(44,8),(44,9),(45,9),(47,9),(48,9),(41,10),(43,10),(41,11),(43,12),(42,13);
/*!40000 ALTER TABLE `event_employee_invited` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_role`
--

DROP TABLE IF EXISTS `job_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_role` (
  `job_role_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `description` varchar(140) DEFAULT NULL,
  `department_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`job_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_role`
--

LOCK TABLES `job_role` WRITE;
/*!40000 ALTER TABLE `job_role` DISABLE KEYS */;
INSERT INTO `job_role` VALUES (1,'CEO','The Chief Executive Officer, the highest-ranking person in the company and is ultimately responsible for making managerial decisions','Executive'),(2,'HR Representative','Responsible for recruiting, vetting, selecting, hiring,','Human Resources'),(3,'Soldier','Basic infantry of the WarHorse Army','Army'),(4,'Developer','Code monkey','IT Development'),(5,'Manager','manager','');
/*!40000 ALTER TABLE `job_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_group`
--

DROP TABLE IF EXISTS `org_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `org_group` (
  `org_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`org_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_group`
--

LOCK TABLES `org_group` WRITE;
/*!40000 ALTER TABLE `org_group` DISABLE KEYS */;
INSERT INTO `org_group` VALUES (1,'sales'),(2,'marketing'),(3,'pr');
/*!40000 ALTER TABLE `org_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `user_role_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `description` varchar(140) NOT NULL,
  PRIMARY KEY (`user_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,'Admin','Has all access privileges'),(2,'HR','Manages employee data. Has Event Organizer access privileges in addition to adding/modifying employee data'),(3,'EO','Has User access privileges and is able to add, edit, and delete events'),(4,'User','Able to view employees, events, and employee of the week data');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-28  1:15:04
