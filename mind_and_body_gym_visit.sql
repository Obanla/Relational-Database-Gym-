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
-- Table structure for table `visit`
--

DROP TABLE IF EXISTS `visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visit` (
  `visit_id` varchar(20) NOT NULL,
  `member_id` varchar(20) NOT NULL,
  `checkin_time` time DEFAULT NULL,
  `checkout_time` time DEFAULT NULL,
  `visit_date` date DEFAULT NULL,
  PRIMARY KEY (`visit_id`),
  UNIQUE KEY `visit_id` (`visit_id`),
  KEY `member_id` (`member_id`),
  CONSTRAINT `visit_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visit`
--

LOCK TABLES `visit` WRITE;
/*!40000 ALTER TABLE `visit` DISABLE KEYS */;
INSERT INTO `visit` VALUES ('V01','M01','15:00:00','15:45:00','2024-01-22'),('V02','M02','18:22:00','21:45:00','2024-01-22'),('V03','M03','22:47:00','12:45:00','2024-01-22'),('V04','M04','10:00:00','11:45:00','2024-01-28'),('V05','M05','18:54:00','20:45:00','2024-01-30'),('V06','M06','13:00:00','16:45:00','2024-01-30'),('V07','M07','20:00:00','21:45:00','2024-01-30'),('V08','M08','17:00:00','19:45:00','2024-02-01'),('V09','M09','18:00:00','20:45:00','2024-02-01'),('V10','M10','22:00:00','23:45:00','2024-02-01'),('V11','M11','20:00:00','22:45:00','2024-02-01'),('V12','M12','17:00:00','19:45:00','2024-02-01'),('V13','M13','11:20:00','13:45:00','2024-02-07'),('V14','M14','13:02:00','14:45:00','2024-02-07'),('V15','M15','10:04:00','12:09:00','2024-02-07'),('V16','M16','08:00:00','10:45:00','2024-02-08'),('V17','M17','14:40:00','15:45:00','2024-02-09'),('V18','M18','18:50:00','21:45:00','2024-02-10'),('V19','M19','13:30:00','14:45:00','2024-02-10'),('V20','M20','18:58:00','20:45:00','2024-02-10'),('V21','M01','17:23:00','18:45:00','2024-01-23'),('V22','M02','20:40:00','21:45:00','2024-01-25'),('V23','M03','21:00:00','23:45:00','2024-01-24'),('V24','M04','19:40:00','20:45:00','2024-01-29'),('V25','M05','19:23:00','21:22:00','2024-01-01'),('V26','M06','04:10:00','10:45:00','2024-01-02'),('V27','M07','19:23:00','21:22:00','2024-02-01'),('V28','M08','12:14:00','15:45:00','2024-02-11'),('V29','M09','15:00:00','15:45:00','2024-02-16'),('V30','M10','11:23:00','12:45:00','2024-02-06'),('V31','M15','13:23:00','16:45:00','2024-02-09'),('V32','M20','16:23:00','21:45:00','2024-02-12'),('V33','M15','16:23:00','17:09:00','2024-02-10'),('V34','M03','16:03:00','21:20:00','2024-02-12'),('V35','M15','11:23:00','12:45:00','2024-02-29'),('V36','M09','03:33:00','05:25:00','2024-02-16'),('V37','M05','09:23:00','12:45:00','2024-02-18'),('V38','M12','07:33:00','10:37:00','2024-02-19'),('V39','M10','03:23:00','03:58:00','2024-02-27'),('V40','M15','16:30:00','18:19:00','2024-02-18');
/*!40000 ALTER TABLE `visit` ENABLE KEYS */;
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
