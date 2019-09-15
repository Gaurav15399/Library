-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: library
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `admin` (
  `aid` int(11) DEFAULT NULL,
  `ausr` varchar(20) DEFAULT NULL,
  `apass` varchar(20) DEFAULT NULL,
  `rpass` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (101,'admin','admin1','12345'),(102,'admin02','admin2','12345');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ibooks`
--

DROP TABLE IF EXISTS `ibooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ibooks` (
  `bid` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `doi` date DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  KEY `bid` (`bid`),
  KEY `sid` (`sid`),
  CONSTRAINT `Ibooks_ibfk_1` FOREIGN KEY (`bid`) REFERENCES `tbooks` (`bid`) ON DELETE CASCADE,
  CONSTRAINT `Ibooks_ibfk_2` FOREIGN KEY (`sid`) REFERENCES `student` (`sid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ibooks`
--

LOCK TABLES `ibooks` WRITE;
/*!40000 ALTER TABLE `ibooks` DISABLE KEYS */;
INSERT INTO `ibooks` VALUES (1004,'DBMS','2018-10-23',5),(1008,'TOC','2019-07-03',132),(1004,'DBMS','2019-07-03',132),(1011,'Mechanics','2019-07-03',132),(1005,'Jungle Book','2019-01-01',132);
/*!40000 ALTER TABLE `ibooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `payment` (
  `sid` int(11) NOT NULL,
  `sname` varchar(50) DEFAULT NULL,
  `charges` int(11) DEFAULT NULL,
  `doi` date DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,NULL,20190223,NULL),(2,NULL,200,NULL),(3,NULL,200,NULL);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security`
--

DROP TABLE IF EXISTS `security`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `security` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `que` varchar(500) DEFAULT NULL,
  `ans` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security`
--

LOCK TABLES `security` WRITE;
/*!40000 ALTER TABLE `security` DISABLE KEYS */;
INSERT INTO `security` VALUES (101,'admin','what is you favourite color','blue'),(102,'admin02','what is you favourite animal','dog'),(1,'s136','what is you favourite animal','dog'),(2,'g133','what is your nickname','dada'),(3,'s139','what is you favourite color','red'),(4,'student1','what is you favourite animal','dog'),(5,'veena1','what is your nickname','chabu'),(132,'sk98','what is your nickname','ram'),(11,'s','what is your favorite color','blue'),(123,'adm','what is you favourite color','b'),(1,'123','what is you favourite color','b');
/*!40000 ALTER TABLE `security` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `student` (
  `sid` int(11) NOT NULL,
  `sname` varchar(30) DEFAULT NULL,
  `susr` varchar(20) DEFAULT NULL,
  `spass` varchar(20) DEFAULT NULL,
  `syear` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'shreeram','s136','shree','T.E'),(2,'gaurav','g133','gau','T.E'),(3,'sanu','s139','san','T.E'),(4,'student','student1','stud1','T.E'),(5,'veena','veena1','vk','T.E'),(11,'shreeram','s','ss','B.E'),(132,'shreeram','sk98','ram','B.E');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbooks`
--

DROP TABLE IF EXISTS `tbooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbooks` (
  `bid` int(11) NOT NULL,
  `bname` varchar(100) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbooks`
--

LOCK TABLES `tbooks` WRITE;
/*!40000 ALTER TABLE `tbooks` DISABLE KEYS */;
INSERT INTO `tbooks` VALUES (199,'stqa',3),(1001,'C',10),(1002,'C++',15),(1003,'Java',10),(1004,'DBMS',13),(1005,'Jungle Book',19),(1006,'Fairy tale',21),(1007,'harry potter',10),(1008,'TOC',15),(1009,'Dying detective',20),(1011,'Mechanics',17),(1013,'Veena ',5);
/*!40000 ALTER TABLE `tbooks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-15 22:45:06
