-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: feedbackSystem
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'alliance'),(2,'modular'),(3,'fresh-thinking'),(4,'Ameliorated'),(5,'customer loyalty'),(6,'hybrid'),(7,'4th generation'),(8,'emulation'),(9,'ability'),(10,'heuristic');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_lecturer`
--

DROP TABLE IF EXISTS `course_lecturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_lecturer` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `CourseId` bigint DEFAULT NULL,
  `LecturerId` bigint DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `CourseId` (`CourseId`),
  KEY `LecturerId` (`LecturerId`),
  CONSTRAINT `course_lecturer_ibfk_1` FOREIGN KEY (`CourseId`) REFERENCES `course` (`Id`),
  CONSTRAINT `course_lecturer_ibfk_2` FOREIGN KEY (`LecturerId`) REFERENCES `lecturer` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_lecturer`
--

LOCK TABLES `course_lecturer` WRITE;
/*!40000 ALTER TABLE `course_lecturer` DISABLE KEYS */;
INSERT INTO `course_lecturer` VALUES (1,3,2),(2,5,12),(3,1,4),(4,2,5),(5,2,2),(6,3,1),(7,8,8),(8,5,8),(9,9,11),(10,10,11),(11,3,4),(12,6,3),(13,6,9),(14,7,6),(15,7,1),(16,8,10),(17,8,2),(18,3,5),(19,2,10),(20,1,2);
/*!40000 ALTER TABLE `course_lecturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `Content` varchar(100) NOT NULL,
  `StudentId` bigint DEFAULT NULL,
  `LectureId` bigint DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `StudentId` (`StudentId`),
  KEY `LectureId` (`LectureId`),
  CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`StudentId`) REFERENCES `student` (`Id`),
  CONSTRAINT `feedback_ibfk_2` FOREIGN KEY (`LectureId`) REFERENCES `lecture` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,'Versatile',30,1),(2,'3rd generation',42,10),(3,'Compatible',29,11),(4,'analyzing',39,8),(5,'hierarchy',36,5),(6,'heuristic',76,6),(7,'open architecture',78,6),(8,'Fully-configurable',79,1),(9,'Optional',84,2),(10,'portal',39,3),(11,'Centralized',53,6),(12,'content-based',77,9),(13,'eco-centric',34,12),(14,'fresh-thinking',85,10),(15,'forecast',21,14),(16,'24/7',10,4),(17,'human-resource',88,1),(18,'web-enabled',49,12),(19,'superstructure',34,2),(20,'Synchronised',54,13),(21,'Distributed',11,1),(22,'benchmark',49,2),(23,'matrix',37,9),(24,'clear-thinking',52,11),(25,'Phased',35,7),(26,'model',73,8),(27,'Extended',51,12),(28,'function',59,5),(29,'Open-source',99,4),(30,'leading edge',26,6),(31,'database',88,3),(32,'Right-sized',79,9),(33,'Team-oriented',22,11),(34,'client-driven',51,14),(35,'Sharable',10,7),(36,'next generation',68,10),(37,'capacity',40,5),(38,'utilisation',99,11),(39,'Versatile',74,9),(40,'customer loyalty',24,14),(41,'secondary',48,12),(42,'strategy',40,3),(43,'homogeneous',9,12),(44,'tertiary',20,12),(45,'secondary',10,5),(46,'fault-tolerant',94,12),(47,'tangible',54,4),(48,'Front-line',7,12),(49,'scalable',45,5),(50,'function',27,6),(51,'6th generation',72,5),(52,'Robust',31,8),(53,'eco-centric',100,4),(54,'implementation',95,3),(55,'Pre-emptive',76,2),(56,'Customer-focused',85,7),(57,'bi-directional',55,1),(58,'Programmable',73,5),(59,'matrices',97,9),(60,'analyzer',96,5),(61,'Cross-group',47,9),(62,'object-oriented',68,12),(63,'Graphical User Interface',57,4),(64,'Managed',98,9),(65,'Robust',94,13),(66,'Vision-oriented',93,6),(67,'matrix',100,2),(68,'local',51,2),(69,'exuding',50,8),(70,'background',13,14),(71,'Total',31,4),(72,'Enhanced',63,8),(73,'Universal',32,8),(74,'methodology',90,12),(75,'secured line',12,11),(76,'next generation',51,9),(77,'user-facing',9,6),(78,'encoding',89,4),(79,'secondary',82,14),(80,'moratorium',11,1),(81,'global',79,6),(82,'neural-net',3,14),(83,'standardization',91,10),(84,'internet solution',11,10),(85,'local area network',25,6),(86,'encryption',34,11);
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lecture`
--

DROP TABLE IF EXISTS `lecture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lecture` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `Title` varchar(60) NOT NULL,
  `DateCreated` date NOT NULL,
  `LecturerId` bigint DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `LecturerId` (`LecturerId`),
  CONSTRAINT `lecture_ibfk_1` FOREIGN KEY (`LecturerId`) REFERENCES `lecturer` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lecture`
--

LOCK TABLES `lecture` WRITE;
/*!40000 ALTER TABLE `lecture` DISABLE KEYS */;
INSERT INTO `lecture` VALUES (1,'Adaptive','2026-09-09',4),(2,'motivating','2026-04-06',1),(3,'initiative','2026-02-03',7),(4,'database','2026-06-21',11),(5,'Future-proofed','2025-10-11',9),(6,'encoding','2026-09-11',5),(7,'value-added','2026-04-08',3),(8,'Synergistic','2026-02-07',4),(9,'encompassing','2026-06-11',10),(10,'dynamic','2025-10-17',5),(11,'Extended','2026-03-12',5),(12,'intermediate','2026-05-06',2),(13,'utilisation','2026-01-08',11),(14,'intranet','2026-04-02',11);
/*!40000 ALTER TABLE `lecture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lecturer`
--

DROP TABLE IF EXISTS `lecturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lecturer` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) NOT NULL,
  `Surname` varchar(30) NOT NULL,
  `Email` varchar(100) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lecturer`
--

LOCK TABLES `lecturer` WRITE;
/*!40000 ALTER TABLE `lecturer` DISABLE KEYS */;
INSERT INTO `lecturer` VALUES (1,'Monica','Jacobe','m.jacobe@university.com'),(2,'Victor','Fresco','v.fresco@university.com'),(3,'Christina','Keppie','c.keppie@university.com'),(4,'Elizabeth','Purnell','e.purnell@university.com'),(5,'Stacia','Nelson','s.nelson@university.com'),(6,'Lori','Garcia','l.garcia@university.com'),(7,'Robert','Olshansky','r.olshansky@university.com'),(8,'Pierre','Hadaya','p.hadaya@university.com'),(9,'Sue','Casper','s.casper@university.com'),(10,'Richard','Shiring','r.shiring@university.com'),(11,'Tom','Clavin','t.clavin@university.com'),(12,'A','Connelly','a.connelly@university.com'),(13,'Sally','Parker','s.parker@university.com'),(14,'Rochelle','Garson','r.garson@university.com'),(15,'Basil','Maduka','b.maduka@university.com'),(16,'Kathy','Niebur','k.niebur@university.com'),(17,'Sean','Pollock','s.pollock@university.com'),(18,'Saundra','Welter-Bacon','s.welter-bacon@university.com'),(19,'Susan','Schlievert','s.schlievert@university.com'),(20,'Gayle','Larson','g.larson@university.com'),(21,'Frank','Padilla','f.padilla@university.com'),(22,'Larry','Stone','l.stone@university.com'),(23,'Deb','Kaye','d.kaye@university.com'),(24,'Jean','Carson','j.carson@university.com'),(25,'Carol','Buttz','c.buttz@university.com'),(26,'Heden','Presendieu','h.presendieu@university.com'),(27,'Brenda','Arneson','b.arneson@university.com'),(28,'Diana','Finn','d.finn@university.com'),(29,'Rita','Sullivan','r.sullivan@university.com'),(30,'Travis','Lovejoy','t.lovejoy@university.com'),(31,'Chris L.','Schmidt','c.schmidt@university.com'),(32,'Deborah','Myles','d.myles@university.com'),(33,'Nancy','Dalios','n.dalios@university.com'),(34,'Jean','Acken','j.acken@university.com'),(35,'Arthur','Woll','a.woll@university.com'),(36,'Qiang','Qiang','q.qiang@university.com'),(37,'Edward','Chichester','e.chichester@university.com'),(38,'Claire','Yan','c.yan@university.com'),(39,'Joann','Stein','j.stein@university.com'),(40,'Kristen','Gladish','k.gladish@university.com'),(41,'Megan','Monteverde','m.monteverde@university.com'),(42,'Anna','James','a.james@university.com'),(43,'Jaime','Alvayay','j.alvayay@university.com'),(44,'Joseph','Priester','j.priester@university.com'),(45,'Sally','Green','s.green@university.com'),(46,'George','Gross','g.gross@university.com'),(47,'Akalita','Ross','a.ross@university.com'),(48,'G','Mora','g.mora@university.com'),(49,'Bernice','Fisher','b.fisher@university.com'),(50,'Sarah','Pepper','s.pepper@university.com'),(51,'Steven','Antler','s.antler@university.com');
/*!40000 ALTER TABLE `lecturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) NOT NULL,
  `Surname` varchar(30) NOT NULL,
  `DateBirth` date NOT NULL,
  `Nationality` varchar(60) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `UniversityId` bigint NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `UniversityId` (`UniversityId`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`UniversityId`) REFERENCES `university` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'Rand','Syce','1998-04-09','Russia','rsyce0@pbs.org',1),(2,'Max','Jellings','2004-06-25','Russia','mjellings1@gravatar.com',1),(3,'Agneta','Le Estut','2000-12-23','Morocco','aleestut2@drupal.org',4),(4,'Drusilla','Towhey','1998-05-01','Indonesia','dtowhey3@moonfruit.com',2),(5,'Hartwell','Clues','1996-06-04','China','hclues4@chicagotribune.com',4),(6,'Scotti','Masurel','2005-09-26','Albania','smasurel5@wordpress.com',4),(7,'Jessamine','Stayte','2005-07-05','China','jstayte6@123-reg.co.uk',2),(8,'Edgard','Edleston','2005-08-05','Philippines','eedleston7@unicef.org',1),(9,'Saidee','Popley','1995-12-16','Indonesia','spopley8@aboutads.info',1),(10,'Glynda','O\'Shirine','1997-12-31','China','goshirine9@businessinsider.com',1),(11,'Fenelia','Langfitt','2002-10-08','China','flangfitta@jigsy.com',3),(12,'Currey','Yakubov','2002-11-16','Indonesia','cyakubovb@spotify.com',2),(13,'Violetta','Dyott','2004-08-15','Philippines','vdyottc@newyorker.com',1),(14,'Joshua','Breitling','1998-05-30','Burkina Faso','jbreitlingd@tripod.com',3),(15,'Cris','Keaves','2007-05-17','Poland','ckeavese@taobao.com',1),(16,'Burt','Vazquez','2007-09-18','Indonesia','bvazquezf@hugedomains.com',3),(17,'Tuck','Geeves','2002-12-12','China','tgeevesg@latimes.com',2),(18,'Clara','Musto','2008-03-16','Malaysia','cmustoh@craigslist.org',3),(19,'Bertine','Scapelhorn','2005-08-27','Democratic Republic of the Congo','bscapelhorni@businesswire.com',1),(20,'Keefer','Pavelin','2005-08-20','Vietnam','kpavelinj@miitbeian.gov.cn',4),(21,'Randolf','Fuentez','1998-08-26','Norway','rfuentezk@mtv.com',1),(22,'Ardis','Tugman','1999-06-05','Brazil','atugmanl@gizmodo.com',3),(23,'Jemmy','Elam','1996-05-14','United States','jelamm@mozilla.org',1),(24,'Zoe','Southey','2001-11-15','Myanmar','zsoutheyn@wisc.edu',1),(25,'Ina','MacRonald','2002-12-21','Indonesia','imacronaldo@technorati.com',3),(26,'Hilary','Grimsey','2003-03-08','United Arab Emirates','hgrimseyp@macromedia.com',1),(27,'Gill','Malicki','2006-08-07','China','gmalickiq@goodreads.com',4),(28,'Ansell','Grigoriev','2001-12-14','Indonesia','agrigorievr@posterous.com',3),(29,'Maxwell','Simkins','1996-10-02','United Kingdom','msimkinss@zimbio.com',2),(30,'Marylinda','Shardlow','2000-12-09','China','mshardlowt@marketwatch.com',1),(31,'Giacomo','Ludlam','2005-08-12','Czech Republic','gludlamu@state.tx.us',1),(32,'Cherida','Lehrmann','2005-04-16','Indonesia','clehrmannv@prlog.org',3),(33,'Carroll','Clouter','1998-01-06','China','cclouterw@so-net.ne.jp',1),(34,'Ronny','Haycox','2002-09-21','Canada','rhaycoxx@taobao.com',2),(35,'Carola','Oleksiak','2003-07-06','China','coleksiaky@ning.com',4),(36,'Vasilis','Courtman','1996-12-18','Indonesia','vcourtmanz@oaic.gov.au',1),(37,'Tracy','Ingreda','1996-10-16','China','tingreda10@sciencedirect.com',2),(38,'Vikki','Titcom','2000-08-08','Nigeria','vtitcom11@blog.com',1),(39,'Garfield','Feild','1997-05-05','China','gfeild12@xinhuanet.com',2),(40,'Jennette','Woolsey','2000-04-11','China','jwoolsey13@bizjournals.com',4),(41,'Goran','Dooler','1999-11-24','South Africa','gdooler14@blogger.com',3),(42,'Dudley','Allone','1996-08-28','Russia','dallone15@irs.gov',3),(43,'Flinn','Rayer','2003-02-03','China','frayer16@reverbnation.com',4),(44,'Wilek','Ferandez','2004-03-24','Armenia','wferandez17@upenn.edu',4),(45,'Peyton','Giovanni','2004-07-16','China','pgiovanni18@bbb.org',4),(46,'Rick','Flipsen','2006-11-25','Portugal','rflipsen19@multiply.com',2),(47,'Jabez','Chick','2005-03-12','Sweden','jchick1a@utexas.edu',4),(48,'Elora','Bisco','2005-06-04','Philippines','ebisco1b@guardian.co.uk',3),(49,'Paulie','Medler','2000-04-22','France','pmedler1c@scientificamerican.com',4),(50,'Hamid','Gotts','1997-06-13','Mexico','hgotts1d@ocn.ne.jp',2),(51,'Terrill','Landes','2000-06-29','Russia','tlandes1e@youtu.be',1),(52,'Josefa','Broderick','1998-02-06','Poland','jbroderick1f@discuz.net',4),(53,'Ottilie','Gong','2002-07-06','Italy','ogong1g@jiathis.com',2),(54,'Giselle','Dodwell','2006-03-31','China','gdodwell1h@wikispaces.com',3),(55,'Dodie','Darker','2006-04-20','Sweden','ddarker1i@ebay.co.uk',1),(56,'Odo','Tiltman','1999-05-10','Malaysia','otiltman1j@themeforest.net',1),(57,'Gertrude','Van den Bosch','1997-11-08','Hungary','gvandenbosch1k@flickr.com',2),(58,'Pryce','Tritton','2000-01-01','Thailand','ptritton1l@list-manage.com',4),(59,'Ladonna','Guntrip','1999-02-06','Indonesia','lguntrip1m@yahoo.co.jp',3),(60,'Dell','Duley','2007-02-26','Benin','dduley1n@cdc.gov',3),(61,'Gerti','Rosa','1999-01-19','Poland','grosa1o@economist.com',2),(62,'Dmitri','Gibbard','2006-08-27','Philippines','dgibbard1p@squarespace.com',4),(63,'Sela','Bugdale','1997-04-24','Gambia','sbugdale1q@shareasale.com',1),(64,'Maitilde','Mapston','1998-11-03','Brazil','mmapston1r@cafepress.com',3),(65,'Carlynne','Phipson','2001-09-15','Russia','cphipson1s@arstechnica.com',3),(66,'Kip','Nafziger','1999-05-23','Indonesia','knafziger1t@mashable.com',4),(67,'Laureen','Djuricic','2006-08-02','Panama','ldjuricic1u@goodreads.com',2),(68,'Marieann','Beevis','2005-08-08','China','mbeevis1v@gnu.org',4),(69,'Neille','Dugue','2008-07-14','Brazil','ndugue1w@fc2.com',2),(70,'Carroll','Phripp','2003-05-27','Japan','cphripp1x@sohu.com',4),(71,'Igor','Marcam','2004-08-18','Uganda','imarcam1y@simplemachines.org',4),(72,'Wood','Khosa','1996-11-26','Russia','wkhosa1z@yelp.com',3),(73,'Lorene','Schulkins','1997-08-20','Albania','lschulkins20@instagram.com',3),(74,'Darbee','Cuerdale','2005-05-07','Sweden','dcuerdale21@com.com',4),(75,'Filmer','Deller','2000-01-20','Philippines','fdeller22@ycombinator.com',1),(76,'Sorcha','Heasley','2001-11-19','Brazil','sheasley23@icio.us',1),(77,'Florry','Gulliford','2003-03-22','Portugal','fgulliford24@feedburner.com',3),(78,'Viviyan','Stillmann','2003-10-23','Thailand','vstillmann25@imgur.com',4),(79,'Bendicty','Deyes','2002-03-05','Jamaica','bdeyes26@seesaa.net',2),(80,'Matthaeus','Atrill','2008-08-10','Indonesia','matrill27@nasa.gov',3),(81,'Maggy','Pike','2001-11-27','Sweden','mpike28@omniture.com',2),(82,'Garner','Vallentin','2002-04-20','Saudi Arabia','gvallentin29@t.co',3),(83,'Chrissy','Delos','2004-12-05','Peru','cdelos2a@behance.net',3),(84,'Auberon','Ventam','2000-09-17','China','aventam2b@adobe.com',3),(85,'Alfons','Eusden','1998-11-01','Indonesia','aeusden2c@shinystat.com',2),(86,'Emanuel','Bruck','1996-09-21','Panama','ebruck2d@technorati.com',1),(87,'Nonie','Sutliff','2008-07-16','Indonesia','nsutliff2e@i2i.jp',1),(88,'Geordie','Soutter','1996-04-01','Germany','gsoutter2f@dailymotion.com',4),(89,'Trudie','Tivers','2003-07-18','Albania','ttivers2g@rediff.com',1),(90,'Heidi','Gwynn','2004-08-17','China','hgwynn2h@moonfruit.com',2),(91,'Rosalynd','Colqueran','1997-11-04','Indonesia','rcolqueran2i@umich.edu',3),(92,'Ranique','Leake','2005-09-02','Kazakhstan','rleake2j@acquirethisname.com',2),(93,'Bernadina','Dincke','2003-08-30','Luxembourg','bdincke2k@sogou.com',1),(94,'Frankie','Hadgraft','2000-01-02','China','fhadgraft2l@baidu.com',1),(95,'Karon','Sandwith','1996-01-21','Peru','ksandwith2m@jimdo.com',1),(96,'Joela','Corbishley','1999-05-21','Russia','jcorbishley2n@who.int',2),(97,'Johan','Holsey','2008-08-10','Japan','jholsey2o@list-manage.com',4),(98,'Hestia','Bengle','1998-07-16','Russia','hbengle2p@hao123.com',3),(99,'Granthem','Mott','2004-07-31','Czech Republic','gmott2q@businessweek.com',1),(100,'Desirae','Insley','1998-10-22','South Korea','dinsley2r@ucoz.com',2);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `university`
--

DROP TABLE IF EXISTS `university`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `university` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `Name` varchar(120) NOT NULL,
  `Location` char(2) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `university`
--

LOCK TABLES `university` WRITE;
/*!40000 ALTER TABLE `university` DISABLE KEYS */;
INSERT INTO `university` VALUES (1,'University of Andorra','AD'),(2,'Abu Dhabi University','AE'),(3,'Afghan University','AF'),(4,'American University of Antigua','AG'),(5,'Academy of Arts','AL'),(6,'American University of Armenia','AM'),(7,'American University of the Caribbean, Sint Maarten','AN'),(8,'Universidade Cat├│lica de Angola','AO'),(9,'Instituto de Ense├▒anza Superior del Ej├®rcito','AR'),(10,'Akademie der bildenden K├╝nste Wien','AT'),(11,'Australian Catholic University','AU'),(12,'Academy of Public Administration','AZ'),(13,'American University','BA'),(14,'University of the West Indies, Cave Hill','BB'),(15,'Ahsanullah University of Science & Technology','BD'),(16,'Brexgata University Academy','BE'),(17,'Universit├® de Ouagadougou','BF'),(18,'Academy of Economics \"Dimitur A. Tscenov\"','BG'),(19,'Al Ahlia University','BH'),(20,'Hope Africa University','BI'),(21,'Espam Formation University','BJ'),(22,'Bermuda College','BM'),(23,'Institut Teknologi Brunei','BN'),(24,'Escuela Militar de Ingenier├¡a','BO'),(25,'Centro Regional Universit├írio de Espir├¡to Santo do Pinhal','BR'),(26,'The College of The Bahamas','BS'),(27,'Royal University of Bhutan','BT'),(28,'ABM University College','BW'),(29,'Academy of Public Administration of Belarus','BY'),(30,'American University of the Caribbean, School of Medicine','BZ'),(31,'Acadia University','CA'),(32,'Universit├® Catholique de Bukavu','CD'),(33,'Universit├® de Bangui','CF'),(34,'University Marien Ngouabi Brazzaville','CG'),(35,'Business and Hotel Management School','CH'),(36,'Universit├® d\'Abobo-Adjam├®','CI'),(37,'Escuela de Arquitectura y Dise├▒o','CL'),(38,'Bamenda University of Science & Technology','CM'),(39,'2nd Military Medical University','CN'),(40,'Centro de Estudios Investigaci├│n y Tecnolog├¡a (CEIT)','CO'),(41,'Instituto Tecnol├│gico de Costa Rica','CR'),(42,'Instituto Superior Minero Metal├║rgico \"Dr. Antonio N├║├▒ez Jim├®nez\"','CU'),(43,'Universidade Jean Piaget de Cabo Verde','CV'),(44,'Americanos College','CY'),(45,'Academy of Performing Arts, Film and TV Fakulty','CZ'),(46,'AKAD Hochschulen f├╝r Berufst├ñtige, Fachhochschule Leipzig','DE'),(47,'Universit├® de Djibouti','DJ'),(48,'Aalborg Business College','DK'),(49,'Ballsbridge University','DM'),(50,'Instituto Tecnol├│gico de Santo Domingo','DO'),(51,'Centre Universitaire de Jijel','DZ'),(52,'Brookdale Community College','EC'),(53,'Estonian Academy of Arts','EE'),(54,'Ain Shams University','EG'),(55,'Eritrea Institute of Technology','ER'),(56,'Barcelona Graduate School of Economics','ES'),(57,'Adama Science and Technology University','ET'),(58,'Abo Akademi University','FI'),(59,'Fiji National University','FJ'),(60,'University of the Faroe Islands','FO'),(61,'AgroParisTech','FR'),(62,'Universit├® Omar Bongo','GA'),(63,'Aga Khan University','GB'),(64,'St. George\'s University','GD'),(65,'Agricultural University of Georgia','GE'),(66,'Universit├® des Antilles et de la Guyane','GF'),(67,'Accra Polytechnic','GH'),(68,'University of Greenland','GL'),(69,'American International University West Africa','GM'),(70,'Universit├® Gamal Abdel Nasser de Conakry','GN'),(71,'Universit├® des Antilles et de la Guyane','GP'),(72,'Universidad Nacional de Guinea Ecuatorial','GQ'),(73,'Aegean University','GR'),(74,'Centro Universitario Ciudad Vieja','GT'),(75,'University of Guam','GU'),(76,'Gemsville Technical University','GY'),(77,'Chinese University of Hong Kong','HK'),(78,'Escuela Agricola Panamericana Zamorano','HN'),(79,'University of Dubrovnik','HR'),(80,'American University of the Caribbean','HT');
/*!40000 ALTER TABLE `university` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `university_course`
--

DROP TABLE IF EXISTS `university_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `university_course` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `UniversityId` bigint DEFAULT NULL,
  `CourseId` bigint DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `UniversityId` (`UniversityId`),
  KEY `CourseId` (`CourseId`),
  CONSTRAINT `university_course_ibfk_1` FOREIGN KEY (`UniversityId`) REFERENCES `university` (`Id`),
  CONSTRAINT `university_course_ibfk_2` FOREIGN KEY (`CourseId`) REFERENCES `course` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `university_course`
--

LOCK TABLES `university_course` WRITE;
/*!40000 ALTER TABLE `university_course` DISABLE KEYS */;
INSERT INTO `university_course` VALUES (1,2,5),(2,2,6),(3,2,4),(4,1,8),(5,1,8),(6,3,5),(7,3,7),(8,4,4),(9,1,9),(10,4,5),(11,2,10),(12,1,8),(13,4,6),(14,1,2),(15,1,6),(16,4,4),(17,3,2),(18,4,6),(19,3,3),(20,3,10);
/*!40000 ALTER TABLE `university_course` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-09 23:32:44
