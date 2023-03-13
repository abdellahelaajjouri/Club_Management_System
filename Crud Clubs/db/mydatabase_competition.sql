-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: mydatabase
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `competition`
--

DROP TABLE IF EXISTS `competition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `competition` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `saison_id` int DEFAULT NULL,
  `yellow_card` int DEFAULT NULL,
  `logo` varchar(145) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competition`
--

LOCK TABLES `competition` WRITE;
/*!40000 ALTER TABLE `competition` DISABLE KEYS */;
INSERT INTO `competition` VALUES (11,'Match Amical',41,2,4,NULL),(21,'Coupe du Trône',41,2,2,NULL),(41,'Botola Pro',41,2,4,NULL),(51,'Coupe d\'arabe',41,2,4,NULL),(61,'BOTOLA PRO 1',61,2,3,NULL),(71,'LIGUE 1',181,2,4,NULL),(81,'UEFA Champions League',181,2,0,NULL),(91,'COUPE DE FRANCE',181,2,0,NULL),(101,'BOTOLA PRO',191,2,4,NULL),(111,'CAFCC',191,2,2,NULL),(121,'COUPE DU TRONE',191,2,2,NULL),(124,'Cup du monde',201,2,2,NULL),(131,'BOTOLA PRO 1',131,2,4,NULL),(141,'COUPE DU TRONE',131,2,2,NULL),(151,'QCAN2021',221,2,2,NULL),(161,'Qualifications CAN U20 2021',231,2,2,NULL),(162,'Match Amical',231,2,2,NULL),(163,'CAF LEAGUE',41,2,3,NULL),(164,'Match Amical',131,2,2,NULL),(165,'CAN U20',231,2,2,NULL),(166,'Match Amical',232,2,0,NULL),(167,'Ligue du grand Casablanca',131,2,4,NULL),(168,'Championnat National',233,2,3,NULL),(169,'Botola pro',234,2,3,NULL),(170,'Championnat National',235,2,4,NULL),(171,'Coupe du trone',235,2,4,NULL),(172,'Match amical',235,2,4,NULL),(173,'Botola PRO 1',236,2,4,NULL),(174,'Botola PRO 1',237,2,4,NULL),(175,'Match Amical',237,2,4,NULL),(176,'Botola PRO 1',238,2,4,NULL),(177,'Match Amical',238,2,4,NULL),(178,'Coupe du trône',238,2,2,NULL),(179,'Ligue 1',233,2,2,NULL),(180,'LA COUPE NATIONAL',233,2,3,NULL),(182,'Botola PRO 1',41,21,4,NULL),(183,'ARAB CUP',41,21,2,NULL),(184,'THRONE CUP',41,21,2,NULL),(185,'Match Amical',41,21,0,NULL),(186,'CAF LEAGUE (CL,CC)',41,21,2,NULL),(188,'Botola PRO 1',61,21,4,NULL),(189,'AMATEURS LIGUE 2',41,21,4,NULL),(190,'Match AMICAL',239,21,0,NULL),(191,'BOTOLA PRO 1',239,21,4,NULL),(192,'Coupe du trone',239,21,2,NULL),(193,'BOTOLA PRO 1',241,21,4,NULL),(194,'Coupe du Trône',241,21,2,NULL),(195,'Match Amical',241,21,0,NULL),(196,'U11',242,21,12,NULL),(197,'Tounoir ASPIRE',233,2,2,NULL),(198,'Botola PRO D1',244,21,4,NULL),(199,'Match Amical',244,21,0,NULL),(200,'Coupe du Trône ',244,21,2,NULL),(201,'Match Amical',233,2,1,NULL),(202,'Botola PRO 1',247,21,4,NULL),(203,'Coupe de la Confédération',247,21,4,NULL),(204,'Match Amical',247,21,0,NULL),(205,'Coupe du Trône ',247,21,2,NULL),(206,'BOTOLA PRO 1',131,21,4,NULL),(207,'Match Amical',131,21,0,NULL),(208,'Championnat National',131,21,4,NULL),(209,'Match Amical',231,21,0,NULL),(210,'Championnat Regional ',231,21,3,NULL),(211,'UNAF',231,21,2,NULL),(212,'Jeux Méditerranéens ',231,21,0,NULL),(213,'Coupe d\'Afrique ',231,21,2,NULL),(214,'Coupe Arabe',231,21,2,NULL),(215,'Match Amical',248,21,0,NULL),(216,'Coupe Arabe',248,21,0,NULL),(217,'CAN ',248,21,0,NULL),(218,'Coupe du Monde',248,21,0,NULL),(219,'Continental Futsal Championship',248,21,0,NULL),(220,'Championnat National',231,21,4,NULL);
/*!40000 ALTER TABLE `competition` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-10 20:28:46
