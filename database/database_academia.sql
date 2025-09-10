-- MySQL dump 10.13  Distrib 8.0.42, for macos15 (x86_64)
--
-- Host: localhost    Database: academia
-- ------------------------------------------------------
-- Server version	9.3.0

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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email_id` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'Garry','Harris','g.harris@randomemail.com','admin'),(2,'Joyce','Wells','j.wells@randomemail.com','admin');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `availablecourses`
--

DROP TABLE IF EXISTS `availablecourses`;
/*!50001 DROP VIEW IF EXISTS `availablecourses`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `availablecourses` AS SELECT 
 1 AS `course_id`,
 1 AS `course_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `course_id` int NOT NULL AUTO_INCREMENT,
  `course_name` varchar(45) DEFAULT NULL,
  `availability` varchar(45) DEFAULT NULL,
  `teacher_id` int DEFAULT NULL,
  PRIMARY KEY (`course_id`),
  KEY `FK_tid` (`teacher_id`),
  CONSTRAINT `FK_tid` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'Mathematics','Y',6),(2,'Physics','Y',2),(3,'Biology','Y',3),(4,'History','N',NULL),(5,'Literature','Y',4),(6,'Chemistry','Y',1),(7,'English','N',NULL),(8,'Engineering','Y',7),(9,'Telecommunication','N',NULL),(10,'Software','Y',5);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `results`
--

DROP TABLE IF EXISTS `results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `results` (
  `result_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  `result` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`result_id`),
  KEY `FK_cid_results` (`course_id`),
  KEY `FK_sid_results` (`student_id`),
  CONSTRAINT `FK_cid_results` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`),
  CONSTRAINT `FK_sid_results` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `results`
--

LOCK TABLES `results` WRITE;
/*!40000 ALTER TABLE `results` DISABLE KEYS */;
INSERT INTO `results` VALUES (1,1,3,'Pass'),(2,2,6,'Pass'),(3,3,10,'Pass'),(4,4,2,'Pass'),(5,5,6,'Fail'),(6,6,1,'Pass'),(7,7,5,'Pass'),(8,8,8,'Pass'),(9,9,5,'Pass'),(10,10,3,'Fail'),(11,11,10,'Pass'),(12,12,2,'Pass'),(13,13,6,'Pass'),(14,14,6,'Pass'),(15,15,5,'Pass'),(16,16,1,'Pass'),(17,17,5,'Fail'),(18,18,3,'Pass'),(19,19,5,'Pass'),(20,20,8,'Pass');
/*!40000 ALTER TABLE `results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email_id` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Kate','Sullivan','k.sullivan@randomemail.com','student'),(2,'Adison','Harris','a.harris@randomemail.com','student'),(3,'John','Harris','j.harris@randomemail.com','student'),(4,'Antony','Spencer','a.spencer@randomemail.com','student'),(5,'Cadie','Casey','c.casey@randomemail.com','student'),(6,'Ada','Payne','a.payne@randomemail.com','student'),(7,'Michael','Gray','m.gray@randomemail.com','student'),(8,'Evelyn','Morrison','e.morrison@randomemail.com','student'),(9,'Brad','Thomas','b.thomas@randomemail.com','student'),(10,'Dale','Phillips','d.phillips@randomemail.com','student'),(11,'Nicholas','Dixon','n.dixon@randomemail.com','student'),(12,'Ryan','Cole','r.cole@randomemail.com','student'),(13,'Rosie','Hill','r.hill@randomemail.com','student'),(14,'Alen','Higgins','a.higgins@randomemail.com','student'),(15,'John','Clark','j.clark@randomemail.com','student'),(16,'Isabella','Walker','i.walker@randomemail.com','student'),(17,'Tony','Wilson','t.wilson@randomemail.com','student'),(18,'Adelaide','Robinson','a.robinson@randomemail.com','student'),(19,'Sam','Alderman','s.alderman@randomemail.com','student'),(20,'Zoe','Schnitz','z.schnitz@randomemail.com','student');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teachers` (
  `teacher_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email_id` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES (1,'Lyndon','Davis','l.davis@randomemail.com','teacher'),(2,'Kelvin','Nelson','k.nelson@randomemail.com','teacher'),(3,'Hailey','Mason','h.mason@randomemail.com','teacher'),(4,'Heather','Hawkins','h.hawkins@randomemail.com','teacher'),(5,'Ashton','Kelley','a.kelley@randomemail.com','teacher'),(6,'Thomas','Wilson','t.wilson@randomemail.com','teacher'),(7,'Darcy','Walker','d.walker@randomemail.com','teacher');
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `viewresult`
--

DROP TABLE IF EXISTS `viewresult`;
/*!50001 DROP VIEW IF EXISTS `viewresult`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `viewresult` AS SELECT 
 1 AS `student_id`,
 1 AS `result`,
 1 AS `course_name`,
 1 AS `teacher_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `availablecourses`
--

/*!50001 DROP VIEW IF EXISTS `availablecourses`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `availablecourses` AS select `courses`.`course_id` AS `course_id`,`courses`.`course_name` AS `course_name` from `courses` where (`courses`.`availability` = 'Y') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewresult`
--

/*!50001 DROP VIEW IF EXISTS `viewresult`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewresult` AS select `g`.`student_id` AS `student_id`,`g`.`result` AS `result`,`c`.`course_name` AS `course_name`,`t`.`last_name` AS `teacher_name` from ((`results` `g` join `courses` `c` on((`g`.`course_id` = `c`.`course_id`))) join `teachers` `t` on((`c`.`teacher_id` = `t`.`teacher_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-14  7:39:53
