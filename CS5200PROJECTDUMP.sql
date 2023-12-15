CREATE DATABASE  IF NOT EXISTS `financialadvisordb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `financialadvisordb`;
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: localhost    Database: financialadvisordb
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `budget`
--

DROP TABLE IF EXISTS `budget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `budget` (
  `BudgetID` int NOT NULL AUTO_INCREMENT,
  `UserID` int DEFAULT NULL,
  `Amount` decimal(10,2) NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  PRIMARY KEY (`BudgetID`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `budget_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budget`
--

LOCK TABLES `budget` WRITE;
/*!40000 ALTER TABLE `budget` DISABLE KEYS */;
INSERT INTO `budget` VALUES (2,11,500.20,'2023-12-01','2023-12-30'),(3,11,65000.00,'2023-12-01','2023-12-09'),(4,11,2666.00,'2023-12-02','2024-01-06'),(5,11,263.00,'2023-12-01','2023-12-09'),(6,11,6500.00,'2023-12-01','2023-12-22'),(7,14,6500000.00,'2023-12-01','2023-12-07'),(9,14,65000.00,'2023-12-09','2023-12-16'),(10,14,6500.00,'2023-12-09','2023-12-16'),(11,14,500.00,'2023-12-14','2023-12-29'),(12,14,6523.00,'2023-12-10','2023-12-20'),(13,14,62.00,'2023-12-19','2023-12-11'),(14,15,1232.00,'2023-12-15','2023-12-31'),(15,17,1000.00,'2023-12-08','2024-01-08'),(16,17,2000.00,'2023-12-15','2023-12-27'),(17,17,4300.00,'2023-12-23','2024-01-07'),(18,18,5000.00,'2023-12-08','2023-12-31');
/*!40000 ALTER TABLE `budget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expense`
--

DROP TABLE IF EXISTS `expense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expense` (
  `ExpenseID` int NOT NULL AUTO_INCREMENT,
  `UserID` int DEFAULT NULL,
  `Amount` decimal(10,2) NOT NULL,
  `DateOccurred` date NOT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `CategoryID` int DEFAULT NULL,
  PRIMARY KEY (`ExpenseID`),
  KEY `UserID` (`UserID`),
  KEY `CategoryID` (`CategoryID`),
  CONSTRAINT `expense_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `expense_ibfk_2` FOREIGN KEY (`CategoryID`) REFERENCES `expensecategory` (`CategoryID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense`
--

LOCK TABLES `expense` WRITE;
/*!40000 ALTER TABLE `expense` DISABLE KEYS */;
INSERT INTO `expense` VALUES (2,11,5.00,'2023-11-11','tHIS ',3),(4,11,52.00,'2023-11-11','hil;l',2),(5,11,5.00,'2023-11-10','kml',1),(7,11,98633.00,'2023-12-15','ll;,',1),(8,11,526.00,'2023-12-24','This is ',1),(9,11,25.00,'2023-12-26','k',1),(11,11,26.00,'2023-12-07','th',1),(12,11,26.00,'2023-12-02','h',1),(14,11,152.00,'2023-12-08','jh',1),(15,14,500.00,'2023-12-04','gggggggggggggg',1),(16,14,100.00,'2023-12-06','j',1),(17,14,26.00,'2023-12-22','lkl',1),(19,14,6223.00,'2023-12-20','jk',1),(20,14,6362.00,'2023-12-10','s',1),(21,16,1232.00,'2023-12-08','wholefoods',1),(22,17,200.00,'2023-12-08','Wholefood',3),(27,18,100.00,'2023-12-08','first expense',1),(28,18,200.00,'2023-12-08','second expense',1);
/*!40000 ALTER TABLE `expense` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_insert_expense` AFTER INSERT ON `expense` FOR EACH ROW BEGIN
    CALL InsertTransaction(NEW.UserID, 'Expense', NEW.DateOccurred);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `expensecategory`
--

DROP TABLE IF EXISTS `expensecategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expensecategory` (
  `CategoryID` int NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(255) NOT NULL,
  PRIMARY KEY (`CategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expensecategory`
--

LOCK TABLES `expensecategory` WRITE;
/*!40000 ALTER TABLE `expensecategory` DISABLE KEYS */;
INSERT INTO `expensecategory` VALUES (1,'Food'),(2,'Rent'),(3,'Groceries'),(4,'Laundry'),(5,'Something else');
/*!40000 ALTER TABLE `expensecategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goal`
--

DROP TABLE IF EXISTS `goal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goal` (
  `GoalID` int NOT NULL AUTO_INCREMENT,
  `UserID` int DEFAULT NULL,
  `TargetAmount` decimal(10,2) NOT NULL,
  `CurrentAmount` decimal(10,2) NOT NULL,
  `Deadline` date NOT NULL,
  `Description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`GoalID`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `goal_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goal`
--

LOCK TABLES `goal` WRITE;
/*!40000 ALTER TABLE `goal` DISABLE KEYS */;
INSERT INTO `goal` VALUES (3,11,5260.00,52.00,'2023-11-11','2023-11-11'),(4,11,25.00,5.00,'2023-11-04','tHI'),(5,11,25.00,25.00,'2023-12-16','j'),(6,11,5.00,-577099.00,'2023-12-16','k'),(7,11,65332.00,-577099.00,'2023-12-09','k'),(9,11,556.00,349942.00,'2023-12-12','l'),(10,11,26.00,349942.00,'2023-12-14','kk'),(11,11,45.00,324290.00,'2023-12-13','l'),(12,11,26.00,-675732.00,'2023-12-13',';;'),(13,11,56.00,14586465.00,'2023-12-20','h'),(14,11,263.00,14642216.64,'2023-11-28','s'),(16,11,26.00,15170904.64,'2023-12-22','j'),(17,14,6555555.00,-6600.00,'2023-12-16','2023-12-16'),(18,14,6.00,59400.00,'2023-12-27','c'),(19,14,3300.00,53224.00,'2023-12-13','s'),(20,14,623.00,111861.00,'2023-12-18','j'),(22,17,14000.00,-5900.00,'2024-12-08','2024 resolution'),(23,17,12341.00,-5900.00,'2023-12-22','ewt'),(24,18,10000.00,2700.00,'2023-12-30','first goal');
/*!40000 ALTER TABLE `goal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `income`
--

DROP TABLE IF EXISTS `income`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `income` (
  `IncomeID` int NOT NULL AUTO_INCREMENT,
  `UserID` int DEFAULT NULL,
  `Amount` decimal(10,2) NOT NULL,
  `DateOccurred` date NOT NULL,
  `Description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`IncomeID`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `income_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `income`
--

LOCK TABLES `income` WRITE;
/*!40000 ALTER TABLE `income` DISABLE KEYS */;
INSERT INTO `income` VALUES (1,2,15002.00,'2023-11-22','First income'),(2,2,6500.00,'2023-11-09','This is the second income '),(5,11,5864.00,'2023-11-04','l,'),(8,11,500.00,'2023-12-21','This '),(9,11,12.00,'2023-12-20','j'),(10,11,256200.00,'2023-12-22','This is'),(11,11,15006023.00,'2023-11-27','This is '),(12,11,500.00,'2023-12-16','ho'),(17,11,5005.00,'2023-12-14','hl'),(18,11,26.00,'2023-12-15','k'),(19,11,26.00,'2023-12-10','l'),(21,11,6.00,'2023-12-18','l'),(22,11,6.00,'2023-11-07','j'),(23,11,26.00,'2024-01-18','k'),(24,11,2.00,'2023-12-05','k'),(26,11,26.00,'2023-11-26','k'),(27,11,25.00,'2023-11-06','x'),(29,11,12.00,'2023-12-03','j'),(30,11,26.00,'2023-09-04','k'),(31,11,96.00,'2023-12-11','sx'),(33,11,25.00,'2024-02-06','k'),(36,11,36.00,'2023-12-13','eeeeeeeeeeeeeeeee'),(38,11,5.00,'2023-12-09','yh'),(39,11,2666.00,'2023-12-23','j'),(40,14,66000.00,'2023-11-29','eeeeeeeeeeeeeee'),(41,14,65000.00,'2023-12-17','sss'),(42,14,625.00,'2023-12-11','ss'),(43,16,150.00,'2023-12-08','This is first Income Added\r\n'),(47,16,150.00,'2023-12-07','reimburesement\r\n'),(48,17,4300.00,'2023-12-08','Income for December'),(50,18,1000.00,'2023-12-08','First income'),(51,18,2000.00,'2023-12-08','second income');
/*!40000 ALTER TABLE `income` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_insert_income` AFTER INSERT ON `income` FOR EACH ROW BEGIN
    CALL InsertTransaction(NEW.UserID, 'Income', NEW.DateOccurred);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `investment`
--

DROP TABLE IF EXISTS `investment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `investment` (
  `InvestmentID` int NOT NULL AUTO_INCREMENT,
  `UserID` int DEFAULT NULL,
  `Amount` decimal(10,2) NOT NULL,
  `DateOccurred` date NOT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `TypeID` int DEFAULT NULL,
  PRIMARY KEY (`InvestmentID`),
  KEY `UserID` (`UserID`),
  KEY `TypeID` (`TypeID`),
  CONSTRAINT `investment_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `investment_ibfk_2` FOREIGN KEY (`TypeID`) REFERENCES `investmenttype` (`TypeID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investment`
--

LOCK TABLES `investment` WRITE;
/*!40000 ALTER TABLE `investment` DISABLE KEYS */;
INSERT INTO `investment` VALUES (6,11,55.00,'2023-11-18','This ',3),(7,11,1253.00,'2023-11-17','gjnm',1),(8,11,5262.00,'2023-11-01','This',1),(9,11,12.36,'2023-12-21','This',1),(11,11,125.00,'2023-11-08','uh',1),(12,11,25.00,'2023-12-09','th',1),(13,11,26.00,'2023-12-23','g',1),(14,11,26.00,'2023-12-24','jk',1),(16,14,500.00,'2023-12-02','h',1),(17,14,5500.00,'2023-12-06','hhhhhhhhhhhhhhhhhhhhhhhhhh',1),(18,14,5500.00,'2023-12-12','k',1),(20,14,650.00,'2023-12-11','hm',1),(21,14,26.00,'2023-12-16','s',1),(22,14,26.00,'2023-12-15','j',1),(23,14,62.00,'2023-12-20','mn',1),(25,14,26.00,'2023-12-13','m',1),(26,17,10000.00,'2023-12-08','Schwab',2),(27,17,134123.00,'2023-12-15','gfw',1),(28,18,500.00,'2023-12-08','first investment',1),(29,18,600.00,'2023-12-08','second investment',2);
/*!40000 ALTER TABLE `investment` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_insert_investment` AFTER INSERT ON `investment` FOR EACH ROW BEGIN
    CALL InsertTransaction(NEW.UserID, 'Investment', NEW.DateOccurred);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `investmenttype`
--

DROP TABLE IF EXISTS `investmenttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `investmenttype` (
  `TypeID` int NOT NULL AUTO_INCREMENT,
  `TypeName` varchar(255) NOT NULL,
  PRIMARY KEY (`TypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investmenttype`
--

LOCK TABLES `investmenttype` WRITE;
/*!40000 ALTER TABLE `investmenttype` DISABLE KEYS */;
INSERT INTO `investmenttype` VALUES (1,'Stocks'),(2,'Bonds'),(3,'Real Estate'),(4,'Mutual Funds'),(5,'Cryptocurrency'),(6,'Savings Account'),(7,'401(k)'),(8,'Gold'),(9,'Government Bonds'),(10,'ETFs');
/*!40000 ALTER TABLE `investmenttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loginlog`
--

DROP TABLE IF EXISTS `loginlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loginlog` (
  `LogID` int NOT NULL AUTO_INCREMENT,
  `UserID` int DEFAULT NULL,
  `LoginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`LogID`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `loginlog_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loginlog`
--

LOCK TABLES `loginlog` WRITE;
/*!40000 ALTER TABLE `loginlog` DISABLE KEYS */;
INSERT INTO `loginlog` VALUES (1,1,'2023-11-30 15:09:25'),(2,1,'2023-11-30 15:09:33'),(3,2,'2023-11-30 15:10:03'),(13,11,'2023-11-30 15:29:12'),(14,11,'2023-11-30 15:30:06'),(15,11,'2023-11-30 15:30:23'),(16,11,'2023-12-01 02:46:28'),(17,11,'2023-12-01 02:46:38'),(18,11,'2023-12-01 13:01:58'),(19,11,'2023-12-01 14:20:43'),(20,11,'2023-12-01 14:50:44'),(21,11,'2023-12-01 14:50:48'),(22,11,'2023-12-01 15:09:28'),(23,11,'2023-12-01 15:11:27'),(24,11,'2023-12-01 15:12:05'),(25,11,'2023-12-01 16:10:32'),(26,11,'2023-12-01 16:34:14'),(27,11,'2023-12-01 17:03:32'),(28,14,'2023-12-01 17:22:16'),(29,14,'2023-12-01 17:45:53'),(30,14,'2023-12-01 18:02:03'),(31,14,'2023-12-01 18:05:00'),(32,15,'2023-12-04 04:53:38'),(33,15,'2023-12-06 23:06:07'),(34,15,'2023-12-07 18:56:22'),(35,15,'2023-12-07 19:13:14'),(36,15,'2023-12-07 19:13:20'),(37,16,'2023-12-08 16:19:00'),(38,16,'2023-12-08 16:43:12'),(39,16,'2023-12-08 16:46:17'),(40,16,'2023-12-08 16:48:10'),(41,17,'2023-12-08 18:21:08'),(42,18,'2023-12-09 03:11:37');
/*!40000 ALTER TABLE `loginlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report` (
  `ReportID` int NOT NULL AUTO_INCREMENT,
  `UserID` int DEFAULT NULL,
  `Content` text,
  `DateOccurred` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ReportID`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `report_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
INSERT INTO `report` VALUES (1,11,'So far you have made 13 transactions including 5 investments and 4 expenses. Your current balance now is $4056.00','2023-12-01 17:54:56'),(2,14,'So far you have made 14 transactions including 7 investments and 5 expenses. Your current balance now is $156616.00','2023-12-01 18:08:56'),(3,14,'So far you have made 14 transactions including 7 investments and 5 expenses. Your current balance now is $156616.00','2023-12-01 18:13:02'),(4,14,'So far you have made 14 transactions including 7 investments and 5 expenses. Your current balance now is $156616.00','2023-12-01 18:13:03'),(5,14,'So far you have made 14 transactions including 7 investments and 5 expenses. Your current balance now is $156616.00','2023-12-01 18:13:03'),(6,14,'So far you have made 14 transactions including 7 investments and 5 expenses. Your current balance now is $156616.00','2023-12-01 18:13:04'),(7,14,'So far you have made 14 transactions including 7 investments and 5 expenses. Your current balance now is $156616.00','2023-12-01 18:13:04'),(8,14,'So far you have made 14 transactions including 7 investments and 5 expenses. Your current balance now is $156616.00','2023-12-01 18:13:04'),(9,14,'So far you have made 14 transactions including 7 investments and 5 expenses. Your current balance now is $156616.00','2023-12-01 18:14:24'),(10,14,'So far you have made 14 transactions including 7 investments and 5 expenses. Your current balance now is $156616.00','2023-12-01 18:14:26'),(11,14,'So far you have made 17 transactions including 8 investments and 6 expenses. Your current balance now is $163629.00','2023-12-01 18:15:08'),(12,14,'So far you have made 17 transactions including 8 investments and 6 expenses. Your current balance now is $163629.00','2023-12-01 18:15:20'),(13,14,'So far you have made 17 transactions including 8 investments and 6 expenses. Your current balance now is $163629.00','2023-12-01 18:16:14'),(14,15,'So far you have made 0 transactions including 0 investments and 0 expenses. Your current balance now is $0.00','2023-12-04 04:53:55'),(15,15,'So far you have made 0 transactions including 0 investments and 0 expenses. Your current balance now is $0.00','2023-12-04 04:54:13'),(16,15,'So far you have made 0 transactions including 0 investments and 0 expenses. Your current balance now is $0.00','2023-12-06 23:07:22'),(17,15,'So far you have made 0 transactions including 0 investments and 0 expenses. Your current balance now is $0.00','2023-12-07 20:51:46'),(18,15,'So far you have made 0 transactions including 0 investments and 0 expenses. Your current balance now is $0.00','2023-12-07 20:51:47'),(19,15,'So far you have made 0 transactions including 0 investments and 0 expenses. Your current balance now is $0.00','2023-12-07 20:51:49'),(20,15,'So far you have made 0 transactions including 0 investments and 0 expenses. Your current balance now is $0.00','2023-12-07 20:51:50'),(21,15,'So far you have made 0 transactions including 0 investments and 0 expenses. Your current balance now is $0.00','2023-12-07 20:51:51'),(22,15,'So far you have made 0 transactions including 0 investments and 0 expenses. Your current balance now is $0.00','2023-12-07 20:53:59'),(23,15,'So far you have made 0 transactions including 0 investments and 0 expenses. Your current balance now is $0.00','2023-12-07 20:54:03'),(24,15,'So far you have made 0 transactions including 0 investments and 0 expenses. Your current balance now is $0.00','2023-12-08 16:17:04'),(25,15,'So far you have made 0 transactions including 0 investments and 0 expenses. Your current balance now is $0.00','2023-12-08 16:17:20'),(26,15,'So far you have made 0 transactions including 0 investments and 0 expenses. Your current balance now is $0.00','2023-12-08 16:17:22'),(27,15,'So far you have made 0 transactions including 0 investments and 0 expenses. Your current balance now is $0.00','2023-12-08 16:17:36'),(28,15,'So far you have made 0 transactions including 0 investments and 0 expenses. Your current balance now is $0.00','2023-12-08 16:17:38'),(29,15,'So far you have made 0 transactions including 0 investments and 0 expenses. Your current balance now is $0.00','2023-12-08 16:18:07'),(30,16,'So far you have made 1 transactions including 0 investments and 0 expenses. Your current balance now is $150.00','2023-12-08 16:19:36'),(31,16,'So far you have made 1 transactions including 0 investments and 0 expenses. Your current balance now is $150.00','2023-12-08 16:24:58'),(32,16,'So far you have made 1 transactions including 0 investments and 0 expenses. Your current balance now is $150.00','2023-12-08 16:42:55'),(33,16,'So far you have made 1 transactions including 0 investments and 0 expenses. Your current balance now is $150.00','2023-12-08 16:42:58'),(34,16,'So far you have made 1 transactions including 0 investments and 0 expenses. Your current balance now is $150.00','2023-12-08 16:42:59'),(35,16,'So far you have made 1 transactions including 0 investments and 0 expenses. Your current balance now is $150.00','2023-12-08 16:42:59'),(36,16,'So far you have made 1 transactions including 0 investments and 0 expenses. Your current balance now is $150.00','2023-12-08 16:43:00'),(37,16,'So far you have made 1 transactions including 0 investments and 0 expenses. Your current balance now is $150.00','2023-12-08 16:43:00'),(38,16,'So far you have made 1 transactions including 0 investments and 0 expenses. Your current balance now is $150.00','2023-12-08 16:43:00'),(39,16,'So far you have made 1 transactions including 0 investments and 0 expenses. Your current balance now is $150.00','2023-12-08 16:43:04'),(40,16,'So far you have made 3 transactions including 0 investments and 1 expenses. Your current balance now is $1532.00','2023-12-08 16:47:09'),(41,16,'So far you have made 3 transactions including 0 investments and 1 expenses. Your current balance now is $1532.00','2023-12-08 16:47:12'),(42,16,'So far you have made 3 transactions including 0 investments and 1 expenses. Your current balance now is $1532.00','2023-12-08 16:47:13'),(43,16,'So far you have made 3 transactions including 0 investments and 1 expenses. Your current balance now is $1532.00','2023-12-08 16:54:07'),(44,16,'So far you have made 3 transactions including 0 investments and 1 expenses. Your current balance now is $1532.00','2023-12-08 17:13:22'),(45,16,'So far you have made 3 transactions including 0 investments and 1 expenses. Your current balance now is $1532.00','2023-12-08 17:20:13'),(46,16,'So far you have made 3 transactions including 0 investments and 1 expenses. Your current balance now is $1532.00','2023-12-08 17:35:18'),(47,16,'So far you have made 3 transactions including 0 investments and 1 expenses. Your current balance now is $1532.00','2023-12-08 17:39:06'),(48,16,'So far you have made 3 transactions including 0 investments and 1 expenses. Your current balance now is $1532.00','2023-12-08 17:39:13'),(49,16,'So far you have made 3 transactions including 0 investments and 1 expenses. Your current balance now is $1532.00','2023-12-08 17:39:15'),(50,17,'So far you have made 3 transactions including 1 investments and 1 expenses. Your current balance now is $14400.00','2023-12-08 18:24:50'),(51,17,'So far you have made 3 transactions including 1 investments and 1 expenses. Your current balance now is $14400.00','2023-12-08 18:26:20'),(52,17,'So far you have made 4 transactions including 2 investments and 1 expenses. Your current balance now is $148523.00','2023-12-08 18:27:26'),(53,17,'So far you have made 4 transactions including 2 investments and 1 expenses. Your current balance now is $148523.00','2023-12-09 00:23:11'),(54,18,'Your total incomes are $3000.00, total investments are $1100.00, and total expenses are $300.00. Your current balance now is $3800.00','2023-12-09 03:13:25'),(55,18,'Your total incomes are $3000.00, total investments are $1100.00, and total expenses are $300.00. Your current balance now is $3800.00','2023-12-09 03:13:27'),(56,18,'Your total incomes are $3000.00, total investments are $1100.00, and total expenses are $300.00. Your current balance now is $3800.00','2023-12-09 03:13:41'),(57,18,'Your total incomes are $3000.00, total investments are $1100.00, and total expenses are $300.00. Your current balance now is $3800.00','2023-12-09 03:13:43'),(58,18,'Your total incomes are $3000.00, total investments are $1100.00, and total expenses are $300.00. Your current balance now is $3800.00','2023-12-09 03:27:02'),(59,18,'Your total incomes are $3000.00, total investments are $1100.00, and total expenses are $300.00. Your current balance now is $3800.00','2023-12-09 03:27:03'),(60,18,'Your total incomes are $3000.00, total investments are $1100.00, and total expenses are $300.00. Your current balance now is $3800.00','2023-12-09 03:27:22');
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction` (
  `TransactionID` int NOT NULL AUTO_INCREMENT,
  `UserID` int DEFAULT NULL,
  `Amount` decimal(10,2) NOT NULL,
  `Type` enum('Income','Expense','Investment') NOT NULL,
  `DateOccurred` date NOT NULL,
  `Description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`TransactionID`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (1,11,52.00,'Investment','2023-08-08','i'),(2,11,36.00,'Expense','2023-12-09','eee'),(3,11,36.00,'Income','2023-12-13','e'),(4,11,855.00,'Income','2023-11-29','w'),(5,11,125.00,'Investment','2023-11-08','uh'),(6,11,5.00,'Income','2023-12-09','yh'),(7,11,25.00,'Investment','2023-12-09','th'),(8,11,26.00,'Expense','2023-12-07','th'),(9,11,26.00,'Investment','2023-12-23','g'),(10,11,26.00,'Expense','2023-12-02','h'),(11,11,152.00,'Expense','2023-12-08','jh'),(12,11,2666.00,'Income','2023-12-23','j'),(13,11,26.00,'Investment','2023-12-24','jk'),(14,14,500.00,'Investment','2023-12-02','h'),(15,14,500.00,'Expense','2023-12-04','g'),(16,14,5500.00,'Investment','2023-12-06','h'),(17,14,100.00,'Expense','2023-12-06','j'),(18,14,66000.00,'Income','2023-11-29','e'),(19,14,5500.00,'Investment','2023-12-12','k'),(20,14,26.00,'Expense','2023-12-22','lkl'),(21,14,650.00,'Investment','2023-12-11','hm'),(22,14,6503.00,'Expense','2023-12-20','sss'),(23,14,65000.00,'Income','2023-12-17','sss'),(24,14,26.00,'Investment','2023-12-16','s'),(25,14,26.00,'Investment','2023-12-15','j'),(26,14,62.00,'Investment','2023-12-20','mn'),(27,14,6223.00,'Expense','2023-12-20','jk'),(28,14,26.00,'Investment','2023-12-13','m'),(29,14,6362.00,'Expense','2023-12-10','s'),(30,14,625.00,'Income','2023-12-11','ss'),(31,16,150.00,'Income','2023-12-08','This is first Income Added\r\n'),(32,16,1232.00,'Expense','2023-12-08','wholefoods'),(33,16,150.00,'Income','2023-12-07','reimburesement\r\n'),(34,17,4200.00,'Income','2023-12-08','Income for December'),(35,17,200.00,'Expense','2023-12-08','Wholefood'),(36,17,10000.00,'Investment','2023-12-08','Schwab'),(37,17,134123.00,'Investment','2023-12-15','gfw'),(38,18,1000.00,'Income','2023-12-08','First income'),(39,18,1000.00,'Income','2023-12-08','First income'),(40,18,100.00,'Expense','2023-12-08','first expense'),(41,18,100.00,'Expense','2023-12-08','first expense'),(42,18,500.00,'Investment','2023-12-08','first investment'),(43,18,500.00,'Investment','2023-12-08','first investment');
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `UserID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Date Of Birth` date NOT NULL,
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'sidi','sidi@sidi.com','123','2023-11-01'),(2,'amiri','amiri@amiri.com','123','2023-11-04'),(11,'ollll','ol@ol.com','123','2023-11-18'),(12,'kylie','kylie@kylie.com','1232','2023-11-01'),(13,'rishap','rishap@rishap.com','125','2023-11-29'),(14,'am6363666','am@am.com','123','2023-12-18'),(15,'Nadi','nader@gmail.com','agndsofjgdan;dfga','1998-06-10'),(16,'Nader1196','nader1@gmail.com','12345','1996-12-12'),(17,'Victoria Soule','victoria@gmail.com','mussy','1999-12-03'),(18,'testuser','test@gmail.com','testuser','2023-12-08');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'financialadvisordb'
--

--
-- Dumping routines for database 'financialadvisordb'
--
/*!50003 DROP PROCEDURE IF EXISTS `CurrentAmount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CurrentAmount`(
    IN p_user_id INT,
    IN p_target_amount DECIMAL(10, 2),
    IN p_deadline DATE,
    IN p_description VARCHAR(255)
)
BEGIN
    DECLARE total_income DECIMAL(10, 2);
    DECLARE total_expenses DECIMAL(10, 2);
    DECLARE total_investment DECIMAL(10, 2);
    DECLARE p_current_amount DECIMAL(10, 2);

    -- Calculate total income
    SELECT COALESCE(SUM(Amount), 0) INTO total_income
    FROM Income
    WHERE UserID = p_user_id;

    -- Calculate total expenses
    SELECT COALESCE(SUM(Amount), 0) INTO total_expenses
    FROM Expense
    WHERE UserID = p_user_id;

    -- Calculate total investment
    SELECT COALESCE(SUM(Amount), 0) INTO total_investment
    FROM Investment
    WHERE UserID = p_user_id;

    -- Calculate user current amount
    SET p_current_amount = total_income - (total_investment + total_expenses);

    -- Insert the goal record
    INSERT INTO Goal (UserID, TargetAmount, CurrentAmount, Deadline, Description)
    VALUES (p_user_id, p_target_amount, p_current_amount, p_deadline, p_description);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeleteUserById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteUserById`(IN p_user_id INT)
BEGIN
    DELETE FROM User WHERE UserID = p_user_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GenerateReport` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GenerateReport`(IN p_user_id INT)
BEGIN
    DECLARE total_incomes DECIMAL(10, 2);
    DECLARE total_investments DECIMAL(10, 2);
    DECLARE total_expenses DECIMAL(10, 2);
    DECLARE current_balance DECIMAL(10, 2);

    -- Calculate total incomes from the Income table
    SELECT COALESCE(SUM(Amount), 0) INTO total_incomes
    FROM `Income`
    WHERE UserID = p_user_id;

    -- Calculate total investments from the Investment table
    SELECT COALESCE(SUM(Amount), 0) INTO total_investments
    FROM `Investment`
    WHERE UserID = p_user_id;

    -- Calculate total expenses from the Expense table
    SELECT COALESCE(SUM(Amount), 0) INTO total_expenses
    FROM `Expense`
    WHERE UserID = p_user_id;

    -- Calculate current balance
    SET current_balance = (total_incomes + total_investments) - total_expenses;

    -- Generate the report content
    SET @report_content = CONCAT(
        'Your total incomes are $', total_incomes,
        ', total investments are $', total_investments,
        ', and total expenses are $', total_expenses,
        '. Your current balance now is $', current_balance
    );

    -- Insert the report into the Report table
    INSERT INTO `Report` (`UserID`, `Content`, `DateOccurred`)
    VALUES (p_user_id, @report_content, NOW());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetIncomeByUserID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetIncomeByUserID`(IN p_user_id INT)
BEGIN
    SELECT IncomeID, UserID, Amount, DateOccurred, Description FROM Income WHERE UserID = p_user_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetUserByCredentials` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetUserByCredentials`(IN p_email VARCHAR(255), IN p_password VARCHAR(255))
BEGIN
    SELECT * FROM `User` WHERE `Email` = p_email AND `Password` = p_password;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertBudget` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertBudget`(
    IN p_UserID INT,
    IN p_Amount DECIMAL(10, 2),
    IN p_StartDate DATE,
    IN p_EndDate DATE
   
)
BEGIN
    INSERT INTO `Budget` (`UserID`, `Amount`, `StartDate`, `EndDate`)
    VALUES (p_UserID, p_Amount, p_StartDate, p_EndDate);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertCurrentBalanceTransaction` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertCurrentBalanceTransaction`(
    IN p_user_id INT,
    IN p_date_occurred DATE
)
BEGIN
    DECLARE p_current_balance DECIMAL(10, 2);

    -- Calculate current balance
    CALL CalculateCurrentBalance(p_user_id, p_current_balance);

    -- Insert into Transaction table
    INSERT INTO `Transaction` (`UserID`, `Amount`, `Type`, `DateOccurred`, `Description`, `CurrentBalance`)
    VALUES (p_user_id, p_current_balance, 'CurrentBalance', p_date_occurred, 'Current Balance Update', p_current_balance);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertIncome` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertIncome`(
    IN p_user_id INT,
    IN p_amount DECIMAL(10, 2),
    IN p_date_occurred DATE,
    IN p_description VARCHAR(255)
)
BEGIN
    INSERT INTO `Income` (`UserID`, `Amount`, `DateOccurred`, `Description`)
    VALUES (p_user_id, p_amount, p_date_occurred, p_description);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertInvestment` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertInvestment`(
    IN p_user_id INT,
    IN p_amount DECIMAL(10, 2),
    IN p_date_occurred DATE,
    IN p_description VARCHAR(255),
    IN p_type_id INT
)
BEGIN
    INSERT INTO Investment (UserID, Amount, DateOccurred, Description, TypeID)
    VALUES (p_user_id, p_amount, p_date_occurred, p_description, p_type_id);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertLoginLog` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertLoginLog`(IN p_user_id INT)
BEGIN
    INSERT INTO LoginLog (UserID, LoginTime) VALUES (p_user_id, NOW());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertTransaction` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertTransaction`(
    IN p_user_id INT,
    IN p_type ENUM('Income', 'Expense', 'Investment'),
    IN p_date_occurred DATE
)
BEGIN
    DECLARE p_amount DECIMAL(10, 2);
    DECLARE p_description VARCHAR(255);

    -- Fetch details of the latest record based on type
    IF p_type = 'Income' THEN
        SELECT Amount, Description INTO p_amount, p_description
        FROM Income
        WHERE UserID = p_user_id
        ORDER BY DateOccurred DESC, IncomeID DESC -- Assuming there is an ID or timestamp column to order by
        LIMIT 1;
    ELSEIF p_type = 'Expense' THEN
        SELECT Amount, Description INTO p_amount, p_description
        FROM Expense
        WHERE UserID = p_user_id
        ORDER BY DateOccurred DESC, ExpenseID DESC -- Assuming there is an ID or timestamp column to order by
        LIMIT 1;
    ELSEIF p_type = 'Investment' THEN
        SELECT Amount, Description INTO p_amount, p_description
        FROM Investment
        WHERE UserID = p_user_id
        ORDER BY DateOccurred DESC, InvestmentID DESC -- Assuming there is an ID or timestamp column to order by
        LIMIT 1;
    ELSE
        -- Handle other cases if needed
        SET p_amount = 0;
        SET p_description = 'Other';
    END IF;

    -- Insert into Transaction table
    INSERT INTO `Transaction` (`UserID`, `Amount`, `Type`, `DateOccurred`, `Description`)
    VALUES (p_user_id, p_amount, p_type, p_date_occurred, p_description);
END ;;
DELIMITER ;

/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertUser`(IN p_name VARCHAR(255), IN p_email VARCHAR(255), IN p_password VARCHAR(255), IN p_dob DATE)
BEGIN
    INSERT INTO `User` (`Name`, `Email`, `Password`, `Date Of Birth`) VALUES (p_name, p_email, p_password, p_dob);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateIncome` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateIncome`(IN p_amount DECIMAL, IN p_date_occurred DATE, IN p_description VARCHAR(255), IN p_income_id INT)
BEGIN
    UPDATE Income
    SET Amount = p_amount, DateOccurred = p_date_occurred, Description = p_description
    WHERE IncomeID = p_income_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateUser`(IN p_name VARCHAR(255), IN p_email VARCHAR(255), IN p_password VARCHAR(255), IN p_date_of_birth DATE, IN p_user_id INT)
BEGIN
    UPDATE User
    SET Name = p_name, Email = p_email, Password = p_password, `Date Of Birth` = p_date_of_birth
    WHERE UserID = p_user_id;
END ;;
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

-- Dump completed on 2023-12-08 22:35:08
