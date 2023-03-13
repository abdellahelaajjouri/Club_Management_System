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
-- Table structure for table `clubs`
--

DROP TABLE IF EXISTS `clubs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clubs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `categories` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `country` varchar(255) NOT NULL,
  `sexe` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `competitions` varchar(255) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `trashed_id` int DEFAULT NULL,
  `country_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `country_id` (`country_id`),
  CONSTRAINT `clubs_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16458 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clubs`
--

LOCK TABLES `clubs` WRITE;
/*!40000 ALTER TABLE `clubs` DISABLE KEYS */;
INSERT INTO `clubs` VALUES (1815,'Morocco','MOR','seniors','https://interface.myteambyfrmf.ma/uploads/afrique/morocco/Morocco31.png','Morocco','m','National Team','12','2023-03-10 14:54:20',1,NULL),(1816,'Renaissance Berkane','RSB','seniors','https://interface.myteambyfrmf.ma/uploads/afrique/morocco/Renaissance Berkane962.png','Morocco','m','Club','12',NULL,NULL,NULL),(1817,'Chabab RIF Hoceima','CRA','seniors','https://interface.myteambyfrmf.ma/uploads/afrique/morocco/Chabab RIF Hoceima963.png','Morocco','m','Club','12',NULL,NULL,NULL),(1818,'Difaa EL Jadida','DHJ','seniors','https://interface.myteambyfrmf.ma/uploads/afrique/morocco/Difaa EL Jadida964.png','Morocco','m','Club',NULL,NULL,NULL,NULL),(1819,'Moghreb Tetouan','MAT','seniors','https://interface.myteambyfrmf.ma/uploads/afrique/morocco/Moghreb Tetouan965.png','Morocco','m','Club',NULL,NULL,NULL,NULL),(1820,'Racing de Casablanca','RAC','seniors','https://interface.myteambyfrmf.ma/uploads/afrique/morocco/Racing de Casablanca966.png','Morocco','m','Club',NULL,NULL,NULL,NULL),(1821,'Rapide Oued ZEM','RCOZ','seniors','https://interface.myteambyfrmf.ma/uploads/image-1657299471595.png','Morocco','m','Club',NULL,NULL,NULL,NULL),(1822,'Wydad AC','WAC','seniors','https://interface.myteambyfrmf.ma/uploads/afrique/morocco/Wydad AC968.png','Morocco','m','Club',NULL,NULL,NULL,NULL),(1823,'FAR Rabat','ASFAR','seniors','https://interface.myteambyfrmf.ma/uploads/afrique/morocco/FAR Rabat969.png','Morocco','m','Club',NULL,NULL,NULL,NULL),(1824,'Chabab Atl. Khenifra','CAK','seniors','https://interface.myteambyfrmf.ma/uploads/afrique/morocco/Chabab Atl. Khenifra970.png','Morocco','m','Club',NULL,NULL,NULL,NULL),(1825,'Kawkab Marrakech','KACM','seniors','https://interface.myteambyfrmf.ma/uploads/afrique/morocco/Kawkab Marrakech971.png','Morocco','m','Club',NULL,NULL,NULL,NULL),(1826,'Olympique Khouribga','OCK','seniors','https://interface.myteambyfrmf.ma/uploads/afrique/morocco/Olympique Khouribga972.png','Morocco','m','Club',NULL,NULL,NULL,NULL),(1827,'Hassania Agadir','HUSA','seniors','https://interface.myteambyfrmf.ma/uploads/afrique/morocco/Hassania Agadir973.png','Morocco','m','Club',NULL,NULL,NULL,NULL),(1828,'Ittihad Tanger','IRT','seniors','https://interface.myteambyfrmf.ma/uploads/afrique/morocco/Ittihad Tanger974.png','Morocco','m','Club',NULL,NULL,NULL,NULL),(1829,'Olympique Safi','OCS','seniors','https://interface.myteambyfrmf.ma/uploads/afrique/morocco/Olympique Safi975.png','Morocco','m','Club',NULL,NULL,NULL,NULL),(1830,'L9roda of Casablanca','RCA','seniors','https://interface.myteambyfrmf.ma/uploads/afrique/morocco/Raja Casablanca976.png','Morocco','m','Club',NULL,NULL,NULL,NULL),(1831,'FUS Rabat','FUS','seniors','https://interface.myteambyfrmf.ma/uploads/afrique/morocco/FUS Rabat977.png','Morocco','m','Club',NULL,NULL,NULL,NULL),(1832,'Kasba Tadla','JSKT','seniors','https://interface.myteambyfrmf.ma/uploads/afrique/morocco/Kasba Tadla978.png','Morocco','m','Club',NULL,NULL,NULL,NULL),(1833,'KAC Kenitra','KAC','seniors','https://interface.myteambyfrmf.ma/uploads/afrique/morocco/KAC Kenitra979.png','Morocco','m','Club',NULL,NULL,NULL,NULL),(1834,'Youssoufia Berrechid','CAYB','seniors','https://interface.myteambyfrmf.ma/uploads/afrique/morocco/Youssoufia Berrechid1074.png','Morocco','m','Club',NULL,NULL,NULL,NULL),(1835,'Mouloudia Oujda','MCO','seniors','https://interface.myteambyfrmf.ma/uploads/afrique/morocco/Mouloudia Oujda1075.png','Morocco','m','Club',NULL,NULL,NULL,NULL),(1836,'AS Salé','ASS','seniors','https://interface.myteambyfrmf.ma/uploads/image-1657293549050.png','Morocco','m','Club',NULL,NULL,NULL,NULL),(1837,'CR Khemis Zemamra','RCAZ','seniors','https://interface.myteambyfrmf.ma/uploads/afrique/morocco/CR Khemis Zemamra3449.png','Morocco','m','Club',NULL,NULL,NULL,NULL),(1838,'Chabab Ben Guerir','CB','seniors','https://interface.myteambyfrmf.ma/uploads/afrique/morocco/Chabab Ben Guerir3450.png','Morocco','m','Club',NULL,NULL,NULL,NULL),(1839,'El Massira','JSM','seniors','https://interface.myteambyfrmf.ma/uploads/afrique/morocco/El Massira3451.png','Morocco','m','Club',NULL,NULL,NULL,NULL),(1840,'Ittihad Khemisset','IZK','seniors','https://interface.myteambyfrmf.ma/uploads/afrique/morocco/Ittihad Khemisset3452.png','Morocco','m','Club',NULL,NULL,NULL,NULL),(1841,'Maghreb Fès','MAS','seniors','https://interface.myteambyfrmf.ma/uploads/image-1657293568715.png','Morocco','m','Club',NULL,NULL,NULL,NULL),(1842,'Olympique Dcheïra','OD','seniors','https://interface.myteambyfrmf.ma/uploads/image-1657293589689.png','Morocco','m','Club',NULL,NULL,NULL,NULL),(1843,'Raja Beni Mellal','RBM','seniors','https://interface.myteambyfrmf.ma/uploads/afrique/morocco/Raja Beni Mellal3455.png','Morocco','m','Club',NULL,NULL,NULL,NULL),(1844,'Riadi Salmi','RS','seniors','https://interface.myteambyfrmf.ma/uploads/afrique/morocco/Riadi Salmi3456.png','Morocco','m','Club',NULL,NULL,NULL,NULL),(1845,'Sidi Kacem','SK','seniors','https://interface.myteambyfrmf.ma/uploads/afrique/morocco/Sidi Kacem3457.png','Morocco','m','Club',NULL,NULL,NULL,NULL),(1846,'Widad Témara','WT','seniors','https://interface.myteambyfrmf.ma/uploads/image-1657293614149.png','Morocco','m','Club',NULL,NULL,NULL,NULL),(1847,'Wydad Fès','WAF','seniors','https://interface.myteambyfrmf.ma/uploads/image-1657293636603.png','Morocco','m','Club',NULL,NULL,NULL,NULL),(1848,'Chabab Mohammédia','SCCM','seniors','https://interface.myteambyfrmf.ma/uploads/image-1657293684938.png','Morocco','m','Club',NULL,NULL,NULL,NULL),(1849,'Tihad Casablanca','TAS','seniors','https://interface.myteambyfrmf.ma/uploads/image-1657293656948.png','Morocco','m','Club',NULL,NULL,NULL,NULL),(1850,'Morocco U23','MOR','seniors','https://interface.myteambyfrmf.ma/uploads/image-1657299377730.png','Morocco','m','National Team',NULL,NULL,NULL,NULL),(1851,'Morocco U20','MOR','seniors','https://interface.myteambyfrmf.ma/uploads/image-1657299394791.png','Morocco','m','National Team',NULL,NULL,NULL,NULL),(1852,'Morocco Women','MOR W','seniors','https://interface.myteambyfrmf.ma/uploads/image-1657299354574.png','Morocco','f','National Team','12',NULL,NULL,NULL),(1853,'UTS Rabat','UTS','seniors','https://interface.myteambyfrmf.ma/uploads/image-1657298080954.png','Morocco','m','Club',NULL,NULL,NULL,NULL),(1854,'Stade Marocain','SM','seniors','https://interface.myteambyfrmf.ma/uploads/image-1657298109059.png','Morocco','m','Club',NULL,NULL,NULL,NULL),(1855,'Difâa Hamrya Khénifra','DHK','seniors','https://interface.myteambyfrmf.ma/uploads/image-1657297712395.png','Morocco','m','Club',NULL,NULL,NULL,NULL),(1856,'Ittifaq Marrakech','IK','seniors','https://interface.myteambyfrmf.ma/uploads/image-1657297992064.png','Morocco','m','Club',NULL,NULL,NULL,NULL),(1857,'Mouloudia Dakhla','CMD','seniors','https://interface.myteambyfrmf.ma/uploads/image-1657297448950.png','Morocco','m','Club',NULL,NULL,NULL,NULL),(1858,'Olympique Youssoufia','OY','seniors','https://interface.myteambyfrmf.ma/uploads/image-1657298166597.png','Morocco','m','Club',NULL,NULL,NULL,NULL),(1859,'Rachad Bernoussi','RB','seniors','https://interface.myteambyfrmf.ma/uploads/image-1657298237602.png','Morocco','m','Club',NULL,NULL,NULL,NULL),(1860,'Wydad Serghini','WS','U9','https://interface.myteambyfrmf.ma/uploads/image-1657298259536.png','Morocco','m','club',NULL,NULL,NULL,NULL),(1861,'USM Oujda','USM','seniors','https://interface.myteambyfrmf.ma/uploads/image-1657298328974.png','Morocco','m','Club',NULL,NULL,NULL,NULL),(1862,'AS Mansouria','ASM','seniors','https://interface.myteambyfrmf.ma/uploads/image-1657298365908.png','Morocco','m','Club',NULL,NULL,NULL,NULL),(1863,'Amal Tiznit','AT','seniors','https://interface.myteambyfrmf.ma/uploads/image-1657298574159.jpeg','Morocco','m','Club',NULL,NULL,NULL,NULL),(1864,'Fath Casablanca','FC','seniors','https://interface.myteambyfrmf.ma/uploads/image-1657298483024.png','Morocco','m','Club',NULL,NULL,NULL,NULL),(16436,'Chabab M\'rirt','CM',NULL,'https://interface.myteambyfrmf.ma/uploads/image-1657299620641.png','Morocco','m','Club',NULL,NULL,NULL,NULL),(16437,'Fath Nador','FN',NULL,'https://interface.myteambyfrmf.ma/uploads/image-1657299669002.png','Morocco','m','Club',NULL,NULL,NULL,NULL),(16438,'Union Temara','UST',NULL,'https://interface.myteambyfrmf.ma/uploads/image-1657299724660.png','Morocco','m','Club',NULL,NULL,NULL,NULL),(16440,'Association sportive de Salé','ASS','seniors','https://interface.myteambyfrmf.ma/uploads/ASS-Logo.JPG','Morocco','m',NULL,NULL,NULL,NULL,NULL),(16441,'Académie Mohammed VI de football','AMF','seniors',NULL,'Morocco','m','National Team',NULL,NULL,NULL,NULL),(16447,'real madrid','RMA','ex','ex','ex','m','ex','Hello world','2023-03-08 11:03:19',1,NULL),(16448,'test','RMA','16','ex','ex','f','club',NULL,'2023-03-08 13:35:00',1,NULL),(16449,'','','U21','','','','',NULL,'2023-03-08 13:22:52',1,NULL),(16450,'','','','','','','',NULL,'2023-03-08 13:34:55',1,NULL),(16451,'SLUG FC','SLG','U15','ex.png','','m','club',NULL,'2023-03-08 14:07:48',1,NULL),(16452,'test','test','U13','ex.png','','m','club',NULL,'2023-03-08 14:07:50',1,NULL),(16453,'sssssss','test','U14','ex.png','Anguilla','f','',NULL,'2023-03-08 14:07:48',1,NULL),(16454,'Chabab RIF Hoceima','','','','','','',NULL,'2023-03-09 14:40:50',1,NULL),(16455,'Ab ab doloremque vol','Tempora et officia i','U18','A tempor incidunt u','American Samoa','f','national-team',NULL,'2023-03-09 15:29:53',1,NULL),(16456,'In qui quaerat commo','Vel fuga Exercitati','U9','Aliquid qui consequa','Afghanistan','f','national-team',NULL,'2023-03-09 15:29:49',1,NULL),(16457,'yhtii','','','','','','',NULL,'2023-03-09 17:22:02',1,NULL);
/*!40000 ALTER TABLE `clubs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-10 20:28:45
