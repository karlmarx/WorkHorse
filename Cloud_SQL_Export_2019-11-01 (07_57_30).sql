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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Meeting','Professional conference to discuss upcoming business decisions'),(2,'Team Building','Exercises in teamwork, motivation, and companionship'),(3,'Llama Piñata Party','Informal parties to celebrate recent efforts or to relieve stress'),(4,'Planning','General stragetery.');
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
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (41,'War','Carnage',1,1,'carnage.war@warhorse.com','bodycount9353','contact name','-1555','address','1000-01-01',NULL,100,'SSN',43,0,0,0,'unknown','unknown',0),(42,'Scarlet','Schmitt',2,2,'schmitt.scarlet@warhorse.com','colorR3d','contact name','-1555','address','2016-03-25',NULL,21,'SSN',44,0,0,0,'unknown','unknown',0),(43,'Hunter','Schuler',2,5,'schuler.hunter@srmsolutions.com','pasword123','contact name','-1555','address','2019-10-21',NULL,0,'SSN',45,0,1,1,'unknown','unknown',0),(44,'Karl','Marx',2,4,'marx.karl@srmsolutions.com','pasword123','contact name','-1555','address','2019-10-21',NULL,0,'SSN',43,0,1,1,'unknown','unknown',0),(45,'Eric','Riddle',4,5,'riddle.eric@srmsolutions.com','pasword123','contact name','-1555','address','2019-10-21',NULL,0,'123123123',43,0,0,0,'unknown','unknown',0),(47,'Jane','Doe',4,5,'doe.jane@warhorse.com','deerHunter!','contact name','-1555','address','2004-06-02',NULL,60,'',43,0,0,0,'unknown','unknown',0),(48,'John','Smith',4,5,'smith.john@sdf.com','456Secret','contact name','-1555','233 West Broadway, Louisville, KY, USA','2019-10-03',NULL,0,'123456789',43,0,0,0,'unknown','unknown',0),(49,'War','Carnage',1,1,'asdf@asdkfl.com','bodycount9353','contact name','-1555','address','1000-01-01',NULL,100,'SSN',44,1,0,0,'unknown','unknown',0),(50,'Scarlet','Schmitt',2,2,'schmitt.scarlet@asdf.com','colorR3d','contact name','-1555','address','2016-03-25',NULL,21,'SSN',45,1,0,0,'unknown','unknown',0),(51,'Hunter','Schuler',2,4,'asda@asdjfkl.com','pasword123','contact name','-1555','address','2019-10-21',NULL,0,'SSN',45,1,1,1,'unknown','unknown',0),(52,'Karl','Marx',2,5,'marx.karl@asdf.com','pasword123','contact name','-1555','address','2019-10-21',NULL,0,'SSN',43,1,1,1,'unknown','unknown',0),(53,'Eric','Riddle',4,5,'riddle.eric@asdf.com','pasword123','contact name','-1555','address','2019-10-21',NULL,0,'',43,0,0,0,'unknown','unknown',1),(56,'John','Smith',4,3,'smith.john@warhorse.com','456Secret','contact name','-1555','address','2019-10-03',NULL,0,'SSN',43,0,1,1,'unknown','unknown',0),(58,'Eric','Riddle',4,3,'riddle.e.w@gmail.com','pasword123','contact name',NULL,'212 W Collins Ct, Louisville, KY, USA','2019-10-26','2019-10-26',0,'2',43,0,1,1,'6064349996',',',0),(60,'Karl','Marx-levi',4,5,'5042021062karlmarx@gmail.com','pasword123','contact name','','2304 Woodbourne Avenue, Apt 3','2019-10-26','2019-10-26',0,'',43,0,0,0,'5028886195',',',0),(63,'Bobby','w',4,5,'a213@fjasdkf.com','pasword123','contact name','sgdf','123 West Main Street, Louisville, KY, USA','2019-10-26','2019-10-26',0,'111111111',43,0,0,0,'',',0',1),(64,'Leon','Trotsky',1,1,'asdjkfl@asdfjk.com','asdf','contact name',NULL,'Avenida Callao 1234, Buenos Aires, Argentina','2019-10-26','2020-01-03',0,'',43,0,0,0,'',',0',0),(65,'sgsdg','',1,1,'sfs@skdfl.com','1','contact name',NULL,'123 Nassau Street, New York, NY, USA','2019-10-26','2019-10-26',0,'',43,0,0,0,'',',0',0),(66,'Gary','Hill',4,4,'FirstLast@FirstLast.com','Password','contact name',NULL,'231 East Witherspoon Street, Louisville, KY, USA','2019-10-26','2019-10-30',0,'555438178',43,0,0,0,'5554349995','',0),(67,'kevin','flener',4,3,'kevinflener1@gmail.com','password',NULL,NULL,NULL,'2019-01-01',NULL,10,'1313123',43,0,0,0,'2342342','unknown',0),(68,'tesa3','Riddle',4,5,'eo@gmail.com','eo','eo','eo','212 W Collins Ct., Apt 1','2019-10-26','2019-10-31',92,'123456789',43,0,0,0,'6064349996','6064349996',0),(69,'Good','Admin',1,5,'goodadmin@srm.com','issdieReichen','a','5042021062','123 Nassau Street, New York, NY, USA','2019-10-24',NULL,22,'123456789',43,0,0,0,'6064349996','5554349995',0),(70,'Bad','Admin',1,5,'badadmin@srm.com','issdieReichen','a','5042021062','123 Nassau Street, New York, NY, USA','2019-10-24',NULL,22,'123456789',43,0,0,0,'6064349996','5554349995',0),(71,'Good','HR',2,1,'goodhr@srm.com','issdieReichen','a','5042021062','123 Nassau Street, New York, NY, USA','2019-10-24',NULL,22,'123456789',43,1,1,0,'6064349996','5554349995',0),(72,'Bad','HR',2,1,'badhr@srm.com','issdieReichen','a','5042021062','123 Nassau Street, New York, NY, USA','2019-10-24',NULL,22,'123456789',43,0,1,0,'6064349996','5554349995',0),(73,'Good','EO',3,2,'goodeo@srm.com','issdieReichen','a','5042021062','123 Nassau Street, New York, NY, USA','2019-10-24',NULL,22,'123456789',43,1,0,0,'6064349996','5554349995',0),(74,'Bad','EO',3,2,'badeo@srm.com','issdieReichen','a','5042021062','123 Nassau Street, New York, NY, USA','2019-10-24',NULL,22,'123456789',43,0,0,0,'6064349996','5554349995',0),(75,'Good','User',4,3,'gooduser@srm.com','issdieReichen','a','5042021062','123 Nassau Street, New York, NY, USA','2019-10-24',NULL,22,'123456789',43,1,0,0,'6064349996','5554349995',0),(76,'Bad','HR',4,3,'baduser@srm.com','issdieReichen','a','5042021062','123 Nassau Street, New York, NY, USA','2019-10-24',NULL,22,'123456789',43,0,0,0,'6064349996','5554349995',0),(77,'Harding\r','Davenport\r',4,5,'magna.Ut@quis.com\r','Duis\r','Sawyer Battle\r','5042021062','123 Nassau Street, New York, NY, USA','2019-10-26',NULL,36,'555121223',43,1,0,0,'5781468004','9477326858',0),(78,'Scarlet\r','Britt\r',4,5,'Donec.consectetuer.mauris@pharetra.com\r','est.\r','Hu Woods\r','5042021062','123 Nassau Street, New York, NY, USA','2019-10-26',NULL,36,'555121223',43,1,0,0,'1396897923','9464457387',0),(79,'Beatrice\r','Glenn\r',4,5,'nunc@egestas.com\r','dolor\r','Alec Morales\r','5042021062','123 Nassau Street, New York, NY, USA','2019-01-01',NULL,36,'555121223',43,1,0,0,'3334227890','5372882948',0),(80,'Jermaine\r','Castro\r',4,5,'tempor.lorem@Aeneanegestas.edu\r','non\r','Cedric Lowery\r','5042021062','123 Nassau Street, New York, NY, USA','2019-10-26',NULL,36,'555121223',43,1,0,0,'8822807122','5753583458',0),(81,'Zephania\r','Gibbs\r',4,5,'fringilla@mollis.co.uk\r','ante\r','Amaya Sexton\r','4453540355','123 Nassau Street, New York, NY, USA','2019-10-24',NULL,36,'555121223',43,1,0,0,'6082230931','7182163934',0),(82,'Bell\r','Parsons\r',4,5,'arcu@interdum.ca\r','congue.\r','Sade Clay\r','9702382615','123 Nassau Street, New York, NY, USA','2019-10-24','2019-10-26',36,'555121223',43,1,0,0,'5947718626','9034031780',0),(83,'Linda\r','Moody\r',4,5,'ac.mattis@litora.net\r','Sed\r','William Erickson\r','1168628129','123 Nassau Street, New York, NY, USA','2019-10-24','2019-10-26',36,'555121223',43,1,0,0,'2218469190','2565207146',0),(84,'Vanna\r','Pace\r',4,5,'vestibulum.neque@disparturient.org\r','nisi.\r','Avye Rasmussen\r','4847971497','123 Nassau Street, New York, NY, USA','2019-10-24',NULL,36,'555121223',43,1,0,0,'3632295564','3311093361',0),(85,'Arsenio\r','Bowman\r',4,5,'Suspendisse.eleifend@dui.edu\r','mauris\r','Glenna Stein\r','2643841105','123 Nassau Street, New York, NY, USA','2019-10-24',NULL,36,'555121223',43,1,0,0,'8041336362','7845617561',0),(86,'Alma\r','Fitzpatrick\r',4,5,'sed@feugiatmetus.net\r','sed\r','Iliana Porter\r','1326404377','123 Nassau Street, New York, NY, USA','2019-10-24',NULL,36,'555121223',43,1,0,0,'6159240128','4964790394',0),(87,'Ali\r','Burgess\r',4,5,'Nunc.mauris.elit@vitae.org\r','molestie\r','Raya Guy\r','3508192376','123 Nassau Street, New York, NY, USA','2019-10-24',NULL,36,'555121223',43,1,0,0,'7792826430','5781468004',0),(88,'Robert\r','Saunders\r',4,5,'eget.magna.Suspendisse@quam.net\r','est.\r','Zenaida Bass\r','5514590718','123 Nassau Street, New York, NY, USA','2019-10-24',NULL,36,'555121223',43,1,0,0,'8087893706','1396897923',0),(89,'Kitra\r','Floyd\r',4,5,'pellentesque@eget.ca\r','in,\r','Candace Fernandez\r','2109905720','123 Nassau Street, New York, NY, USA','2019-10-26',NULL,36,'555121223',43,1,0,0,'3933996317','3334227890',0),(90,'Keely\r','Decker\r',4,5,'semper@eget.net\r','ac\r','Jolene Joyce\r','9587945491','123 Nassau Street, New York, NY, USA','2019-10-26',NULL,36,'555121223',43,0,0,0,'4367494606','8822807122',0),(91,'Tasha\r','Mccray\r',4,5,'nec.eleifend@enim.net\r','Cum\r','Cody Prince\r','8705338246','123 Nassau Street, New York, NY, USA','2019-01-01','2019-10-26',36,'555121223',43,0,0,0,'5967740731','6082230931',0),(92,'Keith\r','Rivera\r',4,5,'neque.Sed@urnaconvallis.co.uk\r','orci,\r','Odessa Chavez\r','4162680565','123 Nassau Street, New York, NY, USA','2019-10-26','2019-10-26',36,'555121223',43,0,0,0,'2124678101','5947718626',0),(93,'Upton\r','Dillon\r',4,5,'tempor@cubiliaCuraeDonec.co.uk\r','eget,\r','Wing Fleming\r','2513599960','123 Nassau Street, New York, NY, USA','2019-10-26',NULL,36,'555121223',43,0,0,0,'2452003816','2218469190',0),(94,'Audrey\r','Gates\r',4,5,'ultrices.posuere.cubilia@conguea.co.uk\r','Cras\r','Noel Garrison\r','5041799108','123 Nassau Street, New York, NY, USA','2019-10-26',NULL,36,'555121223',43,0,0,0,'3523587944','3632295564',0),(95,'Amery\r','Richards\r',4,5,'suscipit.nonummy@ante.net\r','nunc\r','Kirby Landry\r','9863658613','123 Nassau Street, New York, NY, USA','2019-01-01',NULL,36,'555121223',43,0,0,0,'1746993670','8041336362',0),(96,'Nevada\r','Dotson\r',4,5,'sem.ut@Loremipsumdolor.com\r','ipsum.\r','Cooper Melton\r','3795927083','123 Nassau Street, New York, NY, USA','2019-10-26',NULL,36,'555121223',43,0,0,0,'6663297574','6159240128',0),(97,'Rylee\r','Floyd\r',4,5,'Cras.dictum.ultricies@sempercursusInteger.org\r','Quisque\r','Zachery William\r','7158522036','123 Nassau Street, New York, NY, USA','2019-10-24',NULL,36,'555121223',43,0,0,0,'4453540355','7792826430',0),(98,'Stacey\r','Burris\r',4,5,'volutpat.Nulla.facilisis@enimCurabitur.com\r','turpis.\r','MacKensie Walker\r','2393763481','123 Nassau Street, New York, NY, USA','2019-10-24',NULL,36,'555121223',43,0,0,0,'9702382615','8087893706',0),(99,'Edward\r','Rich\r',4,5,'nec@quispedePraesent.co.uk\r','ipsum\r','Ali Ball\r','5042021062','123 Nassau Street, New York, NY, USA','2019-10-24',NULL,36,'555121223',43,0,0,0,'1168628129','3933996317',0),(100,'Whoopi\r','Clay\r',4,5,'amet.risus.Donec@enim.ca\r','diam.\r','Jennifer Pennington\r','5042021062',NULL,'2019-10-24',NULL,36,'555121223',43,0,0,0,'4847971497','4367494606',0),(101,'Berk\r','Parrish\r',4,5,'augue.scelerisque@ametmassa.net\r','magna\r','Kiayada Schroeder\r','5042021062',NULL,'2019-10-24',NULL,36,'555121223',43,0,0,0,'2643841105','5967740731',0),(102,'Xaviera\r','Johns\r',4,5,'fringilla.est.Mauris@convallisligulaDonec.net\r','Vestibulum\r','Aladdin Hess\r','5042021062',NULL,'2019-10-24',NULL,36,'555121223',43,0,0,0,'1326404377','2124678101',0);
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
  KEY `employee_id` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_of_week`
--

LOCK TABLES `employee_of_week` WRITE;
/*!40000 ALTER TABLE `employee_of_week` DISABLE KEYS */;
INSERT INTO `employee_of_week` VALUES (5,45,'2019-10-28','Meh'),(8,44,'2019-11-11','Smited 30 beings. In a row!'),(9,63,'2019-11-25','He\'s a good boy, ya dig?'),(10,41,'2019-12-02','Led a great raid at Stonehenge');
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
  `org_group_id` int(11) NOT NULL,
  PRIMARY KEY (`employee_id`,`org_group_id`),
  KEY `org_group` (`org_group_id`),
  CONSTRAINT `employee_org_group_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`),
  CONSTRAINT `employee_org_group_ibfk_2` FOREIGN KEY (`org_group_id`) REFERENCES `org_group` (`org_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_org_group`
--

LOCK TABLES `employee_org_group` WRITE;
/*!40000 ALTER TABLE `employee_org_group` DISABLE KEYS */;
INSERT INTO `employee_org_group` VALUES (41,1),(44,1),(47,1),(48,1),(51,1),(56,1),(42,2),(45,2),(49,2),(52,2),(43,3),(50,3),(53,3),(41,5),(42,5),(43,5);
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
  `start_time` date DEFAULT NULL,
  `end_time` date DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `location` varchar(140) DEFAULT NULL,
  `latitude` decimal(9,6) NOT NULL DEFAULT '42.434718',
  `longitude` decimal(9,6) NOT NULL DEFAULT '-84.002509',
  `is_required` tinyint(4) NOT NULL DEFAULT '0',
  `organizer_id` int(11) DEFAULT NULL,
  `organizing_group_id` int(11) DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`event_id`),
  KEY `organizer_fk` (`organizer_id`),
  KEY `organizing_group_fk` (`organizing_group_id`),
  CONSTRAINT `organizer_fk` FOREIGN KEY (`organizer_id`) REFERENCES `employee` (`employee_id`) ON DELETE SET NULL,
  CONSTRAINT `organizing_group_fk` FOREIGN KEY (`organizing_group_id`) REFERENCES `org_group` (`org_group_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (5,'Quarterly Budget Review','2019-11-20','2019-11-20','no Qui animated corpse, cricket bat max brucks terribilem incessu zomby. The voodoo sacerdos flesh eater, suscitat mortuos comedere carnem virus. Zonbi tattered for solum oculi eorum defunctis go lum cerebro. Nescio brains an Undead zombies. Sicut ma','Conference Room 103',35.620540,103.221010,0,48,NULL,0),(6,'Were all in this Together','2019-10-25','2019-10-25','Lets work together to create a better office space','Conference Room 302',12.997140,-101.003470,1,51,NULL,0),(7,'Llama Party!','2019-10-31','2019-10-31','Relax and enjoy some candy with your coworkers! Be sure to dress up for the holiday!','Conference Room 302',75.351030,-160.016280,1,56,NULL,0),(8,'something','2019-10-16','2019-10-25','Zombie ipsum reversus ab viral inferno, nam rick grimes malum cerebro. De carne lumbering animata corpora quaeritis. Summus brains sit​​, morbo vel maleficia? De apocalypsi gorger omero undead survivor dictum mauris. Hi mindless mortuis soulless crea','Rijksmuseum',-80.593150,41.584270,0,42,NULL,0),(9,'something','2019-10-16','2019-10-25','The voodoo sacerdos flesh eater, suscitat mortuos comedere carnem virus. Zonbi tattered for solum oculi eorum defunctis go lum cerebro. Nescio brains an Undead','Bloemenmarkt',-41.967840,-31.598190,0,45,NULL,0),(12,'Test Name','2019-10-05','2019-10-05','Test Qui tardius moveri, brid eof reanimator sed in magna copia sint terribiles undeath legionis. Alii missing oculis aliorum sicut serpere crabs nostram. Putridi braindead odores kill and infect, aere implent left four dead.','Bloemenmarkt',-63.599780,37.394240,1,49,NULL,0),(15,'Graduation','2019-11-01','2019-11-01','description','Bloemenmarkt',38.255221,-85.758734,0,76,5,1),(16,'Halloween','2019-10-31','2019-10-31','description','Bloemenmarkt',52.373932,4.880876,0,76,5,1),(17,'Pre-Halloween','2019-10-30','2019-10-30','The unleashed virus est, et iam zombie mortui ambulabunt super terram. Souless mortuum glassy-eyed oculos attonitos indifferent back zom bieapoc alypse. ','Rijksmuseum',26.162050,-151.922020,1,NULL,3,1),(19,'wqd','2019-10-04','2019-10-12','Fit de decay nostra carne undead. Poenitentiam violent zom biehig hway agite RE:dead pœnitentiam!','Bloemenmarkt',-81.032940,100.244360,0,NULL,3,1),(20,'Are you here?','2019-10-12','2019-10-18','Vivens mortua sunt apud nos night of the living dead.\n\n','Bloemenmarkt',-40.587890,98.268970,1,NULL,1,1),(24,'asdf','2019-11-01','2019-10-28','','Rijksmuseum',59.821370,-72.918090,0,42,1,1),(25,'Skirmish','2019-11-02','2019-11-03','Taking over TSG. Reclaiming for our side.','Rijksmuseum',11.127320,169.737410,1,43,3,0),(26,'Veterans Day','2019-11-11','2019-11-11','Free food for vets.','Bloemenmarkt',-32.652620,170.609140,0,44,2,0),(27,'Eric\'s Birthday','2019-11-01','2019-11-01','Happy Birthday. ','Bloemenmarkt',-43.804420,83.883890,1,43,5,0);
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
  CONSTRAINT `event_category_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `event` (`event_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `event_category_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_category`
--

LOCK TABLES `event_category` WRITE;
/*!40000 ALTER TABLE `event_category` DISABLE KEYS */;
INSERT INTO `event_category` VALUES (5,3),(6,1),(7,1),(8,2),(9,2),(12,1),(15,2),(15,3),(16,3),(17,2),(19,3),(20,3),(24,2),(25,2),(26,3),(27,3);
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
  CONSTRAINT `event_employee_attending_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `event_employee_attending_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `event` (`event_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_employee_attending`
--

LOCK TABLES `event_employee_attending` WRITE;
/*!40000 ALTER TABLE `event_employee_attending` DISABLE KEYS */;
INSERT INTO `event_employee_attending` VALUES (42,5),(47,5),(48,6),(41,7),(42,7),(43,8),(44,8),(45,9),(47,9),(48,9),(43,15),(44,15),(45,15),(49,15),(44,16);
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
  CONSTRAINT `event_employee_invited_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `event_employee_invited_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `event` (`event_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_employee_invited`
--

LOCK TABLES `event_employee_invited` WRITE;
/*!40000 ALTER TABLE `event_employee_invited` DISABLE KEYS */;
INSERT INTO `event_employee_invited` VALUES (42,5),(44,5),(47,5),(48,6),(41,7),(42,7),(43,7),(43,8),(44,8),(44,9),(45,9),(47,9),(48,9),(43,12),(43,15),(44,15),(45,15),(49,15),(41,16),(42,16),(43,16),(44,16),(45,16),(47,16),(48,16),(49,16),(50,16),(51,16),(52,16),(53,16),(56,16),(58,16),(60,16),(41,17),(42,17),(43,17),(44,17),(45,17),(47,17),(48,17),(49,17),(50,17),(51,17),(52,17),(53,17),(56,17),(58,17),(60,17),(43,19),(41,20),(41,24),(43,25),(44,25),(45,25),(49,25),(41,26),(49,26),(64,26),(41,27),(42,27),(43,27),(44,27),(45,27),(47,27),(48,27),(49,27),(50,27),(51,27),(52,27),(53,27),(56,27),(58,27),(60,27),(63,27),(64,27),(65,27),(66,27),(67,27),(68,27),(69,27),(70,27),(71,27),(72,27),(73,27),(74,27),(75,27),(76,27);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_group`
--

LOCK TABLES `org_group` WRITE;
/*!40000 ALTER TABLE `org_group` DISABLE KEYS */;
INSERT INTO `org_group` VALUES (1,'sales'),(2,'marketing'),(3,'pr'),(5,'Group A'),(6,'Compliance'),(7,'Accounting');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
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

-- Dump completed on 2019-11-01 12:02:08
