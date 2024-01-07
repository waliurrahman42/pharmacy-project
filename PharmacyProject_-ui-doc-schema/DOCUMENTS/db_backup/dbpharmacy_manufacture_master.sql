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
-- Table structure for table `manufacture_master`
--

DROP TABLE IF EXISTS `manufacture_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manufacture_master` (
  `manufacture_id` int NOT NULL,
  `is_active` int DEFAULT '1',
  `m_description` varchar(1000) DEFAULT NULL,
  `manufacture_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`manufacture_id`),
  UNIQUE KEY `UK_q0vm5rwq6o66lollda251awcr` (`manufacture_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacture_master`
--

LOCK TABLES `manufacture_master` WRITE;
/*!40000 ALTER TABLE `manufacture_master` DISABLE KEYS */;
INSERT INTO `manufacture_master` VALUES (1,1,'','A N Pharmacia'),(2,1,'','Abbott'),(3,0,'medi','cipla'),(4,1,'','Ajanta Pharma Ltd'),(5,1,'','Aksigen Hospital Care'),(6,1,'','Akumentis Healthcare Ltd'),(7,1,'','Albert David Ltd'),(8,1,'','Alcon Laboratories'),(9,1,'','Alembic Pharmaceuticals Ltd'),(10,1,'','Alkem Laboratories Ltd'),(11,1,'','Allergan India Pvt Ltd'),(12,1,'','Alniche Life Sciences Pvt Ltd'),(13,1,'','Ar-Ex Laboratories Pvt Ltd'),(14,1,'','Aristo Pharmaceuticals Pvt Ltd'),(15,1,'','AstraZeneca'),(16,1,'','Auspi Medicaments'),(17,1,'','Bayer Pharmaceuticals Pvt Ltd'),(18,1,'','Bharat Biotech'),(19,1,'','Bharat Serums & Vaccines Ltd'),(20,1,'','Biochem Pharmaceutical Industries'),(21,1,'','Biocon'),(22,1,'','Blue Cross Laboratories Ltd'),(23,1,'','Bluemed Pharma Pvt Ltd'),(24,1,'','Boehringer Ingelheim'),(25,1,'','Brinton Pharmaceuticals Pvt Ltd'),(26,1,'','Cadila Pharmaceuticals Ltd'),(27,1,'','Canixa Life Sciences Pvt'),(28,1,'','Centaur Pharmaceuticals Pvt Ltd'),(29,1,'','Cipla Ltd'),(30,1,'','Corona Remedies Pvt Ltd'),(31,1,'','Dollar'),(32,1,'','Domagk Smith Labs Pvt Ltd'),(33,1,'','Dr Reddy\'s Laboratories Ltd'),(34,1,'','DWD Pharmaceuticals Ltd'),(35,1,'','East India Pharmaceutical Works Ltd'),(36,1,'','Elder Pharmaceuticals Ltd'),(37,1,'','Eli Lilly and Company India Pvt Ltd'),(38,1,'','Emcure Pharmaceuticals Ltd'),(39,1,'','Eris Lifesciences Ltd'),(40,1,'','FDC Ltd'),(41,1,'','Fourrts India Laboratories Pvt Ltd'),(42,1,'','Franco-Indian Pharmaceuticals Pvt Ltd'),(43,1,'','Fresenius Kabi India Pvt Ltd'),(44,1,'','Fulford India Ltd'),(45,1,'','Galderma India Pvt Ltd'),(46,1,'','Geno Pharmaceuticals Ltd'),(47,1,'','Gland Pharma Limited'),(48,1,'','Glaxo SmithKline Pharmaceuticals Ltd'),(49,1,'','GlaxoSmithKline Consumer Healthcare'),(50,1,'','Glenmark Pharmaceuticals Ltd'),(51,1,'','Glowderma Labs Pvt Ltd'),(52,1,'','GLS Pharma Ltd.'),(53,1,'','Hegde and Hegde Pharmaceutical LLP'),(54,1,'','Heramb Healthcare'),(55,1,'','Hetero Drugs Ltd'),(56,1,'','Hetero Healthcare Limited'),(57,1,'','Icpa Health Products Ltd'),(58,1,'','Indchemie Health Specialities Pvt Ltd'),(59,1,'','Indoco Remedies Ltd'),(60,1,'','Inga Laboratories Pvt Ltd'),(61,1,'','Intas Pharmaceuticals Ltd'),(62,1,'','Integrace Pvt Ltd'),(63,1,'','Ipca Laboratories Ltd'),(64,1,'','J B Chemicals and Pharmaceuticals Ltd'),(65,1,'','Jagsonpal Pharmaceuticals Ltd'),(66,1,'','Janssen Pharmaceuticals'),(67,1,'','Jarun Pharmaceuticals'),(68,1,'','Jawa Pharmaceuticals Pvt Ltd'),(69,1,'','Johnson & Johnson Ltd'),(70,1,'','Jolly Healthcare'),(71,1,'','Jubilant Life Sciences'),(72,1,'','Juggat Pharma'),(73,1,'','Karnataka Antibiotics & Pharmaceuticals Ltd'),(74,1,'','Kivi Labs Ltd'),(75,1,'','KLM Laboratories Pvt Ltd'),(76,1,'','Knoll Pharmaceuticals Ltd'),(77,1,'','Koye Pharmaceuticals Pvt ltd'),(78,1,'','La Renon Healthcare Pvt Ltd'),(79,1,'','Laborate Pharmaceuticals India Ltd'),(80,1,'','Leeford Healthcare Ltd'),(81,1,'','Lifestar Pharma Pvt Ltd'),(82,1,'','Lupin Ltd'),(83,1,'','Macleods Pharmaceuticals Pvt Ltd'),(84,1,'','Maneesh Pharmaceuticals Ltd'),(85,1,'','Mankind Pharma Ltd'),(86,1,'','Med Manor Organics Pvt Ltd'),(87,1,'','Medley Pharmaceuticals'),(88,1,'','Menarini India Pvt Ltd'),(89,1,'','Merck Ltd'),(90,1,'','Meyer Organics Pvt Ltd'),(91,1,'','Micro Labs Ltd'),(92,1,'','Modi Mundi Pharma Pvt Ltd'),(93,1,'','MSD Pharmaceuticals Pvt Ltd'),(94,1,'','MSN Laboratories'),(95,1,'','Natco Pharma Ltd'),(96,1,'','Neomedix Healthcare India Private Limited'),(97,1,'','Neon Laboratories Ltd'),(98,1,'','Nexgen Pharma'),(99,1,'','Nouveau Medicament Pvt Ltd'),(100,1,'','Novartis India Ltd'),(101,1,'','Novo Nordisk India Pvt Ltd'),(102,1,'','NuLife Pharmaceuticals'),(103,1,'','Oaknet Healthcare Pvt Ltd'),(104,1,'','Omega Remedies Pvt Ltd'),(105,1,'','Organon (India) Ltd'),(106,1,'','Ozone Pharmaceuticals Ltd'),(107,1,'','Panacea Biotec Ltd'),(108,1,'','Panzer Pharmaceuticals Pvt Ltd'),(109,1,'','Paras Pharmaceuticals Ltd'),(110,1,'','Pfizer Ltd'),(111,1,'','Que Pharma Pvt Ltd'),(112,1,'','Roche Products India Pvt Ltd'),(113,1,'','RPG Life Sciences Ltd'),(114,1,'','Salve Pharmaceuticals Pvt Ltd'),(115,1,'','Samarth Life Sciences Pvt Ltd'),(116,1,'','Sandika Pharmaceuticals Pvt Ltd'),(117,1,'','Sanofi India Ltd'),(118,1,'','Sanzyme Ltd'),(119,1,'','Sentiss Pharma'),(120,1,'','Serdia Pharmaceuticals India Pvt Ltd'),(121,1,'','Serum Institute Of India Ltd'),(122,1,'','Shreya Life Sciences Pvt Ltd'),(123,1,'','Smart Laboratories Pvt Ltd'),(124,1,'','Stadmed Pvt Ltd'),(125,1,'','Steadfast Medishield Pvt Ltd'),(126,1,'','Sun Pharmaceutical Industries Ltd'),(127,1,'','SunGlow Lifescience Pvt Ltd'),(128,1,'','Sunways India Pvt Ltd'),(129,1,'','Systopic Laboratories Pvt Ltd'),(130,1,'','Talent Healthcare'),(131,1,'','Torque Pharmaceuticals Pvt Ltd'),(132,1,'','Torrent Pharmaceuticals Ltd'),(133,1,'','Troikaa Pharmaceuticals Ltd'),(134,1,'','TTK Healthcare Ltd'),(135,1,'','UCB India Pvt Ltd'),(136,1,'','Unison Pharmaceuticals Pvt Ltd'),(137,1,'','Universal Twin Labs'),(138,1,'','USV Ltd'),(139,1,'','Wallace Pharmaceuticals Pvt Ltd'),(140,1,'','Walter Bushnell'),(141,1,'','Wings Biotech Ltd'),(142,1,'','Win-Medicare Pvt Ltd'),(143,1,'','Wockhardt Ltd'),(144,1,'','Zuventus Healthcare Ltd'),(145,1,'','Zydus Cadila');
/*!40000 ALTER TABLE `manufacture_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-06 17:48:05
