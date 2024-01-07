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
-- Table structure for table `chemical_class`
--

DROP TABLE IF EXISTS `chemical_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chemical_class` (
  `chemical_id` int NOT NULL,
  `chemical_name` varchar(255) NOT NULL,
  PRIMARY KEY (`chemical_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chemical_class`
--

LOCK TABLES `chemical_class` WRITE;
/*!40000 ALTER TABLE `chemical_class` DISABLE KEYS */;
INSERT INTO `chemical_class` VALUES (1,'Tetracyclines'),(2,'4-hydroxycoumarin Derivative'),(3,'5\'-deoxy-5\'-thionucleosides Derivative'),(4,'Not Listed'),(5,'ynhgft'),(6,'Macrolides'),(7,'Anilide Derivative'),(8,'Dibenzoxepin Derivative'),(9,'Gluco/Mineralocorticoids, Progestogins Derivatives'),(10,'Estradiol Congeners'),(11,'Thiazole Derivative'),(12,'Propionic acid Derivatives'),(13,'Vaccines'),(14,'Nitrates'),(15,'Phenylpropane Derivative'),(16,'Benzamide Derivative'),(17,'Synthetic Disaccharide'),(18,'P-Methoxybenzoic Acids and Derivatives'),(19,'Nitroimidazole'),(20,'Nitrates {Short acting}'),(21,'Barbituric Acid Derivative'),(22,'Hydantoin Derivative'),(23,'Glucocorticoids'),(24,'Phenothiazine Derivative'),(25,'Naphthalenes derivatives'),(26,'Diphenylmethane Derivative'),(27,'Vitamin D Derivative [cholecalciferol]'),(28,'Benzylethers Derivative'),(29,'Prostaglandin analogue'),(30,'Macrocyclic Lactone Derivative'),(31,'Benzenesulfonamide Derivative'),(32,'Synthetic dihydropyridine derivative'),(33,'Polysaccharide derivatives'),(34,'Progesterone Congeners'),(35,'Semi-synthetic macrolide'),(36,'Denzamide Derivative'),(37,'Aminopenicillins {Penicillins}'),(38,'Phenolic Glycosides Derivative'),(39,'Carbamate Derivative'),(40,'Fluoroquinolone'),(41,'Timoprazole Derivative'),(42,'Carbazole Derivative'),(43,'Sulfinylbenzimidazole Derivative'),(44,'Phenylpyrimidine derivatives'),(45,'Cellulose Derivative'),(46,'Amino acids'),(47,'Triphenyl Ethylene Stilbene Derivative'),(48,'Phenylmethylamine Derivative'),(49,'Broad Spectrum (Third & fourth generation cephalosporins)'),(50,'Organic phosphonic acids'),(51,'Biguanides Derivative'),(52,'Alcohol & phenols'),(53,'Triazolopyrimidines'),(54,'Aminocyclitol glycosides'),(55,'Phenylmethyl Piperazinyl Derivative'),(56,'Luteinizing Hormone {LH}Analog'),(57,'Insulin analogue'),(58,'Monoclonal Antibody'),(59,'Pyrazinecarboxamide derivative'),(60,'Aminobenzoic Acids Derivative'),(61,'Ethanolamine derivative'),(62,'Dipeptides'),(63,'Trifluoromethylbenzenes Derivative'),(64,'Aralkylamines Derivative'),(65,'Peroxide Derivative'),(66,'N-Acylated Alpha Amino Acids'),(67,'Nucleoside analog'),(68,'2-Benzimidazolylcarbamic acid esters'),(69,'Dihydropyridinecarboxylic acids derivatives'),(70,'Sulfonamide and Pyrimidine Derivative'),(71,'Inhalational Corticosteriods'),(72,'Broad spectrum (Third & fourth generation cephalosporins}'),(73,'Alpha Amino acids derivatives'),(74,'PPAR alpha'),(75,'Androgen Derivative'),(76,'Azole derivatives {Imidazoles}'),(77,'Retinoid'),(78,'Azoles {Triazoles}'),(79,'Diphenylethers Derivative'),(80,'Gamma amino acids derivatives {Acetamido cyclohexene}'),(81,'Pyridones Derivative'),(82,'Polyether Compound'),(83,'Iodinated polyvinyl polymer'),(84,'Benzyl Alcohols Derivatives'),(85,'Sulphamoyl derivatives'),(86,'Quinazoline Derivative'),(87,'Levetiracetam Derivative'),(88,'Imidazole derivative'),(89,'Piperazine Derivative'),(90,'Acetic acid Derivatives'),(91,'Dialkylarylamines'),(92,'N-Acyl-Alpha Amino Acids Derivatives'),(93,'Quinuclidine Tetrahydroisoquinoline Derivative'),(94,'8-Hydroxyquinolines'),(95,'Iron Carbohydrate Complex'),(96,'Second-generation sulfonylurea derivative'),(97,'Morpholine & thiophene derivative'),(98,'Amino Acids, Peptides Analogues'),(99,'Amide derivative'),(100,'Benzimidazole derivative'),(101,'Sulfonamides Derivative'),(102,'Diphenylmethanes Derivative'),(103,'Propanolamine Derivative'),(104,'Protease Digestive Enzymes'),(105,'Benzoic Acids Derivative'),(106,'Piperidine Derivative'),(107,'Retinoids'),(108,'Lincomycin'),(109,'Sulfur-Rich Glycosaminoglycan'),(110,'Intermediate spectrum {Second generation cephalosporins}'),(111,'Gluco/mineralocorticoids, progestogins and derivatives'),(112,'Piperazine carboxamides'),(113,'Cardiac glycosides'),(114,'Benzofurans derivatives'),(115,'P-Aminophenol Derivative'),(116,'Iodinated amino acid derivative'),(117,'Methyl Analog of Dextrorphan'),(118,'Methylxanthine Derivative'),(119,'Potassium sparing diuretics'),(120,'Azoles derivatives'),(121,'Imidazole Derivatives'),(122,'Steroid esters'),(123,'Piperazine Derivatives'),(124,'Pyrethroid Derivative'),(125,'Biguanide'),(126,'Carboxylic acid derivative'),(127,'Monocarboxylic Acid'),(128,'Alkaloid'),(129,'Dichlorobenzenes Derivative'),(130,'Dibenzocycloheptenes Derivative'),(131,'Gamma Amino Acids Derivative'),(132,'Aliphatic Carboxylic acid Derivatives'),(133,'Gamma Amino Acids Derivatives'),(134,'Pyrrolidinone & Acetamide Derivative'),(135,'Nitrofurans derivatives'),(136,'Dibenzothiazepine Derivatives'),(137,'Pyrrolidine-carbonitrile derivative'),(138,'Oxazolidinone derivative'),(139,'4-Aminoquinoline derivative'),(140,'Thiazide (Related heterocyclics)'),(141,'Indolyl Carboxylic Acids Derivatives'),(142,'4-Aminoquinoline Derivative'),(143,'Benzo pyran derivative'),(144,'Glutamic Acid Derivative'),(145,'Para-Aminobenzoic Acid (PABA) Derivative'),(146,'Sulfonamides'),(147,'Dihydropyridinecarboxylic derivatives'),(148,'Indazole Derivatives'),(149,'Phenylpiperidine Derivative'),(150,'Alpha amino acid amides'),(151,'Alkali Metal Chlorides'),(152,'19-Nortestosterone Derivatives'),(153,'Xanthinic Derivatives'),(154,'Salicylamide Derivative'),(155,'Benzylethers derivative'),(156,'Alpha amino acid esters'),(157,'Azetidinone derivative'),(158,'Benzazepine derivative'),(159,'Purine and quinazoline derivative'),(160,'Indolecarboxylic Acids'),(161,'Thienodiazepines Derivative'),(162,'Phenylpiperazine Derivative'),(163,'Nicotinamides Derivatives'),(164,'Quinolinone Derivative'),(165,'Carboline Derivative'),(166,'Sulfone and Pyridine Derivative'),(167,'Bile Acids and Salts'),(168,'Dimeric Sugar Alcohol'),(169,'Tocopherol Derivative'),(170,'Amino Sugar'),(171,'Medium-Chain Fatty Acids'),(172,'Diphenylmethanes Derivatives'),(173,'Phenanthrenes Derivatives'),(174,'Estrogens Derivatives'),(175,'Pyrazine-derivative'),(176,'Pyrrolo Pyrimidine Derivative'),(177,'Nonsulfated Glycosaminoglycan'),(178,'Phenylacetic acid Derivative'),(179,'Pyrrolo[2,3-d]pyrimidines Derivative'),(180,'Phenylpropanes derivatives'),(181,'Homogeneous Transition Metal Compounds'),(182,'Anabolic steroid'),(183,'Phenylpiperidines'),(184,'Glutamic Acid Derivatives'),(185,'Enolic acid Derivatives'),(186,'Cyclic GABA Analogues'),(187,'Tametraline Derivative'),(188,'Monoclonal antibody (mAb)'),(189,'Nucleoside Analog, and Purines'),(190,'Phytomenadione Derivative'),(191,'Homogeneous other Non-Metal Compound'),(192,'Benzofuran derivative'),(193,'Low molecular weight heparin (LMWH)'),(194,'Third-generation Sulfonylurea Derivative'),(195,'Scopolamine Alkaloid'),(196,'Pyridines Derivatives'),(197,'Dipeptides (Carboxylic acids derivatives)'),(198,'Disaccharide Derivative'),(199,'Phenylmethylamines'),(200,'Organic Carbonic Acids'),(201,'Pyrrole & heptanoic acid derivative'),(202,'Histamine Analog'),(203,'Tetraalkylammonium Salts Derivative'),(204,'Propiophenone Derivetive'),(205,'Ergolines'),(206,'Benzenesulfonic acid Derivative'),(207,'Carbazole & propanol derivative'),(208,'Naphthalene Derivative'),(209,'Piperidine Derivate'),(210,'Cyclohexanols Derivative'),(211,'Alpha Amino Acid Derivative'),(212,'Phenylbutylamine Derivative'),(213,'Thiazoles Derivative'),(214,'Benzothiadiazines (Thiazides)'),(215,'Bisphosphonate Derivative'),(216,'Cycloheptathiophene Derivative'),(217,'Amantadine Derivative'),(218,'Thienobenzodiazepine Derivative'),(219,'Iminostilbene Derivative'),(220,'Benzomorphan Derivatives'),(221,'Rifamycin derivatives'),(222,'Parathyroid Hormone Analogs'),(223,'Cinchona alkaloid'),(224,'Benzothiazepine derivative'),(225,'Benzimidazole Derivative'),(226,'Spasmolytic Flavone Derivative'),(227,'Biphenyls derivatives'),(228,'Acylsalicylic Acid Derivative'),(229,'Retinoid Derivative'),(230,'Hydroquinone Derivative'),(231,'Natural crotonic acid derivative {Medium-chain fatty acids}'),(232,'Papaverine Derivatives'),(233,'Cobalamin Derivative'),(234,'Synthetic isopropylamino propanol derivative'),(235,'Polystyrene sulphonic acid derivative'),(236,'Nitrogen Mustard Compounds'),(237,'Herbals'),(238,'Indoles Derivatives'),(239,'Phenylpyrrole Derivative'),(240,'Benzazepine Derivative');
/*!40000 ALTER TABLE `chemical_class` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-06 17:48:10
