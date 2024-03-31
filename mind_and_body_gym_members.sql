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
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `member_id` varchar(20) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varbinary(255) DEFAULT NULL,
  `trainer_id` varchar(10) NOT NULL,
  `join_date` date DEFAULT NULL,
  `gender` enum('Male','Female','Other') NOT NULL,
  `height_cm` decimal(5,2) DEFAULT NULL,
  `weight_kg` decimal(5,2) DEFAULT NULL,
  `body_fat_percentage` decimal(5,2) DEFAULT NULL,
  `date_of_birth` varbinary(255) DEFAULT NULL,
  `fitness_goal` varchar(255) NOT NULL,
  `emergency_contact` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`member_id`),
  UNIQUE KEY `member_id` (`member_id`),
  KEY `trainer_id` (`trainer_id`),
  CONSTRAINT `members_ibfk_1` FOREIGN KEY (`trainer_id`) REFERENCES `trainer` (`trainer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES ('M01','Helenka','Redwing',_binary 'hredwing0@si.com','T01','2024-01-22','Male',188.97,87.09,19.28,_binary '1960-04-22','weight loss',NULL),('M02','Violet','Vigietti',_binary 'vvigietti1@blogger.com','T01','2024-01-22','Female',164.52,80.98,16.73,_binary '1965-04-22','overall fitness',NULL),('M03','Ilario','Allsupp',_binary 'iallsupp2@oakley.com','T03','2024-01-22','Female',192.02,82.20,22.13,_binary '1998-04-22','overall fitness',NULL),('M04','Joannes','Pacitti',_binary 'jpacitti3@pagesperso-orange.com','T02','2024-01-28','Male',198.12,117.67,26.65,_binary '1968-04-28','weight loss',NULL),('M05','Linn','Merriman',_binary 'lmerriman4@uiuc.com','T02','2024-01-30','Female',173.73,86.30,11.61,_binary '1940-04-30','overall fitness',NULL),('M06','Nahum','Mathys',_binary 'nmathys5@irs.com','T01','2024-01-30','Male',158.96,123.65,28.97,_binary '1956-04-30','weight loss',NULL),('M07','Cori','Tsar',_binary 'ctsar6@usnews.com','T03','2024-01-30','Male',155.48,120.70,16.09,_binary '1945-04-30','weight loss',NULL),('M08','Berny','Kinchley',_binary 'bkinchley7@geocities.com','T03','2024-02-01','Female',155.78,125.94,29.44,_binary '1958-05-01','weight loss',NULL),('M09','Dukey','Paddingdon',_binary 'dpaddingdon8@ibm.com','T02','2024-02-01','Female',152.40,89.30,23.41,_binary '1975-05-01','overall fitness',NULL),('M10','Stirling','Edelston',_binary 'sedelston9@theguardian.com','T02','2024-02-01','Male',192.40,100.27,5.94,_binary '1977-05-01','muscle gain',NULL),('M11','Harlie','Abbati',_binary 'habbatia@phpbb.com','T01','2024-02-01','Male',182.88,92.27,25.64,_binary '1952-05-01','overall fitness',NULL),('M12','Corrinne','Cottesford',_binary 'ccottesfordb@photobucket.com','T01','2024-02-01','Female',164.92,65.46,9.67,_binary '1938-05-01','muscle gain',NULL),('M13','Antonio','Halfhead',_binary 'ahalfheadc@devhub.com','T02','2024-02-07','Female',155.78,90.79,5.78,_binary '1956-05-07','overall fitness',NULL),('M14','Ronald','McFadden',_binary 'rmcfaddend@acquirethisname.com','T01','2024-02-07','Male',158.60,95.42,19.88,_binary '1963-05-15','muscle gain',NULL),('M15','Charles','Phipard-Shears',_binary 'cphipardshearse@dagondesign.com','T02','2024-02-07','Male',158.40,150.32,35.52,_binary '1963-05-07','weight loss',NULL),('M16','Errick','Celler',_binary 'ecellerf@last.com','T01','2024-02-08','Male',198.12,79.78,16.67,_binary '1964-05-08','muscle gain',NULL),('M17','Virge','Fright',_binary 'vfrightg@com.com','T01','2024-02-09','Male',198.12,85.90,14.91,_binary '1930-05-09','muscle gain',NULL),('M18','Agretha','Clough',_binary 'acloughh@redcross.com','T02','2024-02-10','Male',210.20,96.58,5.52,_binary '1988-05-01','muscle gain',NULL),('M19','Brose','Abramovicz',_binary 'babramoviczi@hao123.com','T01','2024-02-10','Male',213.36,131.07,22.49,_binary '1947-05-10','weight loss',NULL),('M20','Ava','Metzig',_binary 'ametzigj@statcounter.com','T03','2024-02-10','Male',164.50,160.03,27.82,_binary '1973-05-10','weight loss',NULL),('M21','John','Doe',_binary 'johndoe@example.com','T01','2024-03-01','Male',180.00,80.00,20.00,_binary '1990-01-01','muscle gain',NULL),('M22','Jane','Smith',_binary 'janesmith@example.com','T02','2024-03-01','Female',165.00,60.00,25.00,_binary '1992-02-01','weight loss',NULL);
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `audit_member_insert` AFTER INSERT ON `members` FOR EACH ROW BEGIN
    INSERT INTO member_audit (member_id, action, action_date)
    VALUES (NEW.member_id, 'INSERT', NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-25 11:54:03
