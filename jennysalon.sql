-- MariaDB dump 10.19  Distrib 10.4.19-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: jennysalon
-- ------------------------------------------------------
-- Server version	10.4.19-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `assigned`
--

DROP TABLE IF EXISTS `assigned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assigned` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CLIENT_ID` int(11) NOT NULL,
  `EMPLOYEE_ID` int(11) NOT NULL,
  `DATE` date NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `EMPLOYEE_ID` (`EMPLOYEE_ID`),
  KEY `CLIENT_ID` (`CLIENT_ID`),
  CONSTRAINT `assigned_ibfk_1` FOREIGN KEY (`EMPLOYEE_ID`) REFERENCES `employee` (`ID`),
  CONSTRAINT `assigned_ibfk_2` FOREIGN KEY (`CLIENT_ID`) REFERENCES `client` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assigned`
--

LOCK TABLES `assigned` WRITE;
/*!40000 ALTER TABLE `assigned` DISABLE KEYS */;
INSERT INTO `assigned` VALUES (1,1,3,'2022-01-21'),(2,2,4,'2022-01-22'),(3,3,5,'2022-01-24'),(4,4,1,'2022-01-24');
/*!40000 ALTER TABLE `assigned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FIRST_NAME` varchar(256) NOT NULL,
  `LAST_NAME` varchar(256) NOT NULL,
  `MOBILE` varchar(10) NOT NULL,
  `EMAIL` varchar(256) NOT NULL,
  `PREFERRED_DAY` date NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `MOBILE` (`MOBILE`),
  UNIQUE KEY `EMAIL` (`EMAIL`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'CHARLIE','SCHMIDT','9835198341','charlie@gmail.com','2022-01-21'),(2,'REYNARD','KEIN','9835198343','reynard@gmail.com','2022-01-22'),(3,'CARY','BROOKS','9835198344','cary@gmail.com','2022-01-24'),(4,'TYNE','PEARSON','9835198345','tyne@gmail.com','2022-01-24');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FIRST_NAME` varchar(256) NOT NULL,
  `LAST_NAME` varchar(256) NOT NULL,
  `SSN` varchar(11) NOT NULL,
  `MOBILE` varchar(10) NOT NULL,
  `EMAIL` varchar(256) NOT NULL,
  `SALARY` double NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `EMAIL` (`EMAIL`),
  UNIQUE KEY `MOBILE` (`MOBILE`),
  UNIQUE KEY `SSN` (`SSN`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'BRAVO','DEAN','247-28-2628','9835198351','bravodean@gmail.com',10000),(2,'BRAD','SHEA','247-28-2629','9835198352','bradshea@gmail.com',10000),(3,'BAILEY','MEDINA','247-28-2630','9835198353','baileymedina@gmail.com',10000),(4,'ELIOSE','MAY','247-28-2631','9835198354','eliosemay@gmail.com',10000),(5,'DORAN','NEEL','247-28-2632','9835198355','doranneel@gmail.com',10000),(6,'JACKSON','BOURN','247-28-2633','9835198356','jacksonbourn@gmail.com',10000);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-20 17:23:23
