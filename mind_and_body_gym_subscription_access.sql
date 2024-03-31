-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: mind_and_body_gym
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `subscription_access`
--

DROP TABLE IF EXISTS `subscription_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscription_access` (
  `subscription_id` varchar(20) NOT NULL,
  `access_level` varchar(50) NOT NULL,
  `access_price` float NOT NULL,
  `access_type` varchar(10) NOT NULL,
  KEY `subscription_id` (`subscription_id`),
  CONSTRAINT `subscription_access_ibfk_1` FOREIGN KEY (`subscription_id`) REFERENCES `subscription` (`subscription_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription_access`
--

LOCK TABLES `subscription_access` WRITE;
/*!40000 ALTER TABLE `subscription_access` DISABLE KEYS */;
INSERT INTO `subscription_access` VALUES ('S01','allday',25.29,'coporate'),('S02','allday',30.99,'individual'),('S03','allday',30.99,'individual'),('S04','allday',30.99,'individual'),('S05','allday',30.99,'individual'),('S06','offpeak',18,'individual'),('S07','allday',30.99,'individual'),('S08','offpeak',30.99,'individual'),('S09','allday',25.29,'coporate'),('S10','allday',30.99,'individual'),('S11','allday',23,'family'),('S12','offpeak',18.99,'family'),('S13','allday',25.29,'coporate'),('S14','allday',30.99,'individual'),('S15','offpeak',20.29,'coporate'),('S16','offpeak',20.29,'coporate'),('S17','allday',25.29,'coporate'),('S18','offpeak',20.59,'coporate'),('S19','allday',23,'family'),('S20','allday',30.99,'individual');
/*!40000 ALTER TABLE `subscription_access` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-25 11:54:02
