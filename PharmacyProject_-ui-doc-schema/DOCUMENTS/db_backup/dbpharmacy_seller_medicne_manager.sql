-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: dbpharmacy
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `seller_medicne_manager`
--

DROP TABLE IF EXISTS `seller_medicne_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller_medicne_manager` (
  `seller_medi_manager_id` int NOT NULL,
  `qunatity` int NOT NULL,
  `seller_discount` float NOT NULL,
  `medicine_master_medicine_id` int DEFAULT NULL,
  `seller_seller_id` int DEFAULT NULL,
  PRIMARY KEY (`seller_medi_manager_id`),
  KEY `FKdyxf8c6n8w38mo2y19towynag` (`medicine_master_medicine_id`),
  KEY `FK4v6fs30ihw9uqtc26d0udv2ls` (`seller_seller_id`),
  CONSTRAINT `FK4v6fs30ihw9uqtc26d0udv2ls` FOREIGN KEY (`seller_seller_id`) REFERENCES `seller` (`seller_id`),
  CONSTRAINT `FKdyxf8c6n8w38mo2y19towynag` FOREIGN KEY (`medicine_master_medicine_id`) REFERENCES `medicine_master` (`medicine_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller_medicne_manager`
--

LOCK TABLES `seller_medicne_manager` WRITE;
/*!40000 ALTER TABLE `seller_medicne_manager` DISABLE KEYS */;
INSERT INTO `seller_medicne_manager` VALUES (9,95353,252,8,6);
/*!40000 ALTER TABLE `seller_medicne_manager` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-06 17:48:07
