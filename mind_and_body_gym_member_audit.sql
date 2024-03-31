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
-- Table structure for table `member_audit`
--

DROP TABLE IF EXISTS `member_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_audit` (
  `member_id` varchar(20) NOT NULL,
  `action` varchar(20) NOT NULL,
  `action_date` date DEFAULT NULL,
  KEY `member_id` (`member_id`),
  CONSTRAINT `member_audit_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_audit`
--

LOCK TABLES `member_audit` WRITE;
/*!40000 ALTER TABLE `member_audit` DISABLE KEYS */;
INSERT INTO `member_audit` VALUES ('M01','INSERT','2024-03-25'),('M02','INSERT','2024-03-25'),('M03','INSERT','2024-03-25'),('M04','INSERT','2024-03-25'),('M05','INSERT','2024-03-25'),('M06','INSERT','2024-03-25'),('M07','INSERT','2024-03-25'),('M08','INSERT','2024-03-25'),('M09','INSERT','2024-03-25'),('M10','INSERT','2024-03-25'),('M11','INSERT','2024-03-25'),('M12','INSERT','2024-03-25'),('M13','INSERT','2024-03-25'),('M14','INSERT','2024-03-25'),('M15','INSERT','2024-03-25'),('M16','INSERT','2024-03-25'),('M17','INSERT','2024-03-25'),('M18','INSERT','2024-03-25'),('M19','INSERT','2024-03-25'),('M20','INSERT','2024-03-25'),('M21','INSERT','2024-03-25'),('M22','INSERT','2024-03-25');
/*!40000 ALTER TABLE `member_audit` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-25 11:54:01
