CREATE DATABASE  IF NOT EXISTS `final_project` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 */;
USE `final_project`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: final_project
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `admin_name` varchar(45) DEFAULT NULL,
  `admin_email` varchar(60) DEFAULT NULL,
  `admin_tp` int DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('A00001','1234',NULL,NULL,NULL);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment` (
  `appointment_id` varchar(10) NOT NULL,
  `appointment_date` date DEFAULT NULL,
  `appointment_time` time DEFAULT NULL,
  PRIMARY KEY (`appointment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clinicmanager`
--

DROP TABLE IF EXISTS `clinicmanager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinicmanager` (
  `username` varchar(50) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `clinicmanager_name` varchar(45) DEFAULT NULL,
  `clinicmanager_tp` int DEFAULT NULL,
  `clinicmanager_email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinicmanager`
--

LOCK TABLES `clinicmanager` WRITE;
/*!40000 ALTER TABLE `clinicmanager` DISABLE KEYS */;
INSERT INTO `clinicmanager` VALUES ('CM0001','1234',NULL,NULL,NULL);
/*!40000 ALTER TABLE `clinicmanager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_us`
--

DROP TABLE IF EXISTS `contact_us`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_us` (
  `patient_username` varchar(50) NOT NULL,
  `patient_name` varchar(45) DEFAULT NULL,
  `contact` int DEFAULT NULL,
  PRIMARY KEY (`patient_username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_us`
--

LOCK TABLES `contact_us` WRITE;
/*!40000 ALTER TABLE `contact_us` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_us` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eye_m_report`
--

DROP TABLE IF EXISTS `eye_m_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eye_m_report` (
  `optition_username` varchar(50) NOT NULL,
  `optition_name` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `patient_username` varchar(45) DEFAULT NULL,
  `patient_name` varchar(45) DEFAULT NULL,
  `eye_measurement_id` varchar(45) DEFAULT NULL,
  `left_eye` varchar(45) DEFAULT NULL,
  `right_eye` varchar(45) DEFAULT NULL,
  `fram size` int DEFAULT NULL,
  PRIMARY KEY (`optition_username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eye_m_report`
--

LOCK TABLES `eye_m_report` WRITE;
/*!40000 ALTER TABLE `eye_m_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `eye_m_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eye_measurement`
--

DROP TABLE IF EXISTS `eye_measurement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eye_measurement` (
  `eye_measurement_id` varchar(50) NOT NULL,
  `patient_username` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`eye_measurement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eye_measurement`
--

LOCK TABLES `eye_measurement` WRITE;
/*!40000 ALTER TABLE `eye_measurement` DISABLE KEYS */;
/*!40000 ALTER TABLE `eye_measurement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nurse`
--

DROP TABLE IF EXISTS `nurse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nurse` (
  `username` varchar(50) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nurse`
--

LOCK TABLES `nurse` WRITE;
/*!40000 ALTER TABLE `nurse` DISABLE KEYS */;
INSERT INTO `nurse` VALUES ('N0001','1234'),('N0002','2345');
/*!40000 ALTER TABLE `nurse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ophthalmologist`
--

DROP TABLE IF EXISTS `ophthalmologist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ophthalmologist` (
  `username` varchar(50) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ophthalmologist`
--

LOCK TABLES `ophthalmologist` WRITE;
/*!40000 ALTER TABLE `ophthalmologist` DISABLE KEYS */;
INSERT INTO `ophthalmologist` VALUES ('D0001','1234'),('D0002','2345');
/*!40000 ALTER TABLE `ophthalmologist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `optical_technician`
--

DROP TABLE IF EXISTS `optical_technician`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `optical_technician` (
  `username` varchar(50) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `optical_technician`
--

LOCK TABLES `optical_technician` WRITE;
/*!40000 ALTER TABLE `optical_technician` DISABLE KEYS */;
INSERT INTO `optical_technician` VALUES ('OPTIC0001','1234'),('OPTIC0002','2345');
/*!40000 ALTER TABLE `optical_technician` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `optition`
--

DROP TABLE IF EXISTS `optition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `optition` (
  `username` varchar(50) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `optition`
--

LOCK TABLES `optition` WRITE;
/*!40000 ALTER TABLE `optition` DISABLE KEYS */;
INSERT INTO `optition` VALUES ('OPTI0001','1234'),('OPTI0002','2345');
/*!40000 ALTER TABLE `optition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `optometrist`
--

DROP TABLE IF EXISTS `optometrist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `optometrist` (
  `username` varchar(50) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `optometrist_name` varchar(45) DEFAULT NULL,
  `optometrist_email` varchar(45) DEFAULT NULL,
  `optometrist_tp` int DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `optometrist`
--

LOCK TABLES `optometrist` WRITE;
/*!40000 ALTER TABLE `optometrist` DISABLE KEYS */;
INSERT INTO `optometrist` VALUES ('OPTO0001','1234',NULL,NULL,NULL),('OPTO0002','2345',NULL,NULL,NULL);
/*!40000 ALTER TABLE `optometrist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_report`
--

DROP TABLE IF EXISTS `order_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_report` (
  `optical_technician_username` varchar(50) NOT NULL,
  `optical_technician_name` varchar(45) DEFAULT NULL,
  `supplier_username` varchar(45) DEFAULT NULL,
  `supplier_name` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `order_id` varchar(45) DEFAULT NULL,
  `item` varchar(45) DEFAULT NULL,
  `qty` int DEFAULT NULL,
  PRIMARY KEY (`optical_technician_username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_report`
--

LOCK TABLES `order_report` WRITE;
/*!40000 ALTER TABLE `order_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `card_number` varchar(10) NOT NULL,
  `verification_code` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`card_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reciption`
--

DROP TABLE IF EXISTS `reciption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reciption` (
  `username` varchar(50) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reciption`
--

LOCK TABLES `reciption` WRITE;
/*!40000 ALTER TABLE `reciption` DISABLE KEYS */;
/*!40000 ALTER TABLE `reciption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spectacle_report`
--

DROP TABLE IF EXISTS `spectacle_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spectacle_report` (
  `optical_technician_username` varchar(50) NOT NULL,
  `optical_technician_name` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `patient_username` varchar(45) DEFAULT NULL,
  `patient_name` varchar(45) DEFAULT NULL,
  `spectacle_id` varchar(45) DEFAULT NULL,
  `brand` varchar(45) DEFAULT NULL,
  `design_id` varchar(45) DEFAULT NULL,
  `size` int DEFAULT NULL,
  PRIMARY KEY (`optical_technician_username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spectacle_report`
--

LOCK TABLES `spectacle_report` WRITE;
/*!40000 ALTER TABLE `spectacle_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `spectacle_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `username` varchar(50) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES ('SUP0001','1234'),('SUP0002','2345');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_results`
--

DROP TABLE IF EXISTS `test_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_results` (
  `optometrist_username` varchar(50) NOT NULL,
  `optometrist_name` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `patient_username` varchar(45) DEFAULT NULL,
  `patient_name` varchar(45) DEFAULT NULL,
  `lefteye` varchar(45) DEFAULT NULL,
  `righteye` varchar(45) DEFAULT NULL,
  `test_id` varchar(45) DEFAULT NULL,
  `digosis` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`optometrist_username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_results`
--

LOCK TABLES `test_results` WRITE;
/*!40000 ALTER TABLE `test_results` DISABLE KEYS */;
/*!40000 ALTER TABLE `test_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treatment_plan`
--

DROP TABLE IF EXISTS `treatment_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `treatment_plan` (
  `nurse_username` varchar(50) NOT NULL,
  `nurse_name` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `patient_username` varchar(45) DEFAULT NULL,
  `patient_name` varchar(45) DEFAULT NULL,
  `medical_problem` varchar(45) DEFAULT NULL,
  `medicine1` varchar(45) DEFAULT NULL,
  `medicine2` varchar(45) DEFAULT NULL,
  `medicine3` varchar(45) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`nurse_username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treatment_plan`
--

LOCK TABLES `treatment_plan` WRITE;
/*!40000 ALTER TABLE `treatment_plan` DISABLE KEYS */;
/*!40000 ALTER TABLE `treatment_plan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-20 15:32:03
