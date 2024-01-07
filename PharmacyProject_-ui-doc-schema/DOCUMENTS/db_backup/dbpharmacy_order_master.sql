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
-- Table structure for table `order_master`
--

DROP TABLE IF EXISTS `order_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_master` (
  `order_id` int NOT NULL,
  `discount` float NOT NULL,
  `net_amount` float NOT NULL,
  `order_amount` float NOT NULL,
  `order_date` varchar(255) NOT NULL,
  `paytment_type` varchar(255) DEFAULT NULL,
  `shiping_date` varchar(255) NOT NULL,
  `seller_seller_id` int DEFAULT NULL,
  `status_status_id` int DEFAULT NULL,
  `user_user_id` int DEFAULT NULL,
  `user_address_user_address_id` int DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `FKogwpu3bjp3bpdatlosfsdhh6a` (`seller_seller_id`),
  KEY `FK4uc82vtonsoka9tvjf7btt1p2` (`status_status_id`),
  KEY `FKjqmfcrhvo3nhikn8t0wibr6xc` (`user_user_id`),
  KEY `FKkec6f3y0rlg0ip79k7k9tyxfj` (`user_address_user_address_id`),
  CONSTRAINT `FK4uc82vtonsoka9tvjf7btt1p2` FOREIGN KEY (`status_status_id`) REFERENCES `order_status` (`status_id`),
  CONSTRAINT `FKjqmfcrhvo3nhikn8t0wibr6xc` FOREIGN KEY (`user_user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKkec6f3y0rlg0ip79k7k9tyxfj` FOREIGN KEY (`user_address_user_address_id`) REFERENCES `user_address` (`user_address_id`),
  CONSTRAINT `FKogwpu3bjp3bpdatlosfsdhh6a` FOREIGN KEY (`seller_seller_id`) REFERENCES `seller` (`seller_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_master`
--

LOCK TABLES `order_master` WRITE;
/*!40000 ALTER TABLE `order_master` DISABLE KEYS */;
INSERT INTO `order_master` VALUES (11,5.4,48.6,54,'11-Mar-2023, 7:17:20 pm','Cash on delivery','12-Mar-2023, 7:17:20 pm',6,10,1,2),(15,138.78,-84.78,54,'14-Jun-2023, 11:54:18 pm','Cash on delivery','15-Jun-2023, 11:54:18 pm',6,14,1,2);
/*!40000 ALTER TABLE `order_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-06 17:48:09
