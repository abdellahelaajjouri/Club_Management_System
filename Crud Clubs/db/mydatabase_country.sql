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
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(6) NOT NULL,
  `name` varchar(44) NOT NULL,
  `alpha2` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'+7 840','Abkhazia','AB'),(2,'+93','Afghanistan','AF'),(3,'+355','Albania','AL'),(4,'+213','Algeria','DZ'),(5,'+1 684','American Samoa','AS'),(6,'+376','Andorra','AD'),(7,'+244','Angola','AO'),(8,'+1 264','Anguilla','AI'),(9,'+1 268','Antigua and Barbuda','AG'),(10,'+54','Argentina','AR'),(11,'+374','Armenia','AM'),(12,'+297','Aruba','AW'),(13,'+247','Ascension','AC'),(14,'+61','Australia','AU'),(15,'+672','Australian External Territories',NULL),(16,'+43','Austria','AT'),(17,'+994','Azerbaijan','AZ'),(18,'+1 242','Bahamas','BS'),(19,'+973','Bahrain','BH'),(20,'+880','Bangladesh','BD'),(21,'+1 246','Barbados','BB'),(22,'+1 268','Barbuda','AG'),(23,'+375','Belarus','BY'),(24,'+32','Belgium','BE'),(25,'+501','Belize','BZ'),(26,'+229','Benin','BJ'),(27,'+1 441','Bermuda','BM'),(28,'+975','Bhutan','BT'),(29,'+591','Bolivia','BO'),(30,'+387','Bosnia and Herzegovina','BA'),(31,'+267','Botswana','BW'),(32,'+55','Brazil','BR'),(33,'+246','British Indian Ocean Territory','IO'),(34,'+1 284','British Virgin Islands',NULL),(35,'+673','Brunei','BN'),(36,'+359','Bulgaria','BG'),(37,'+226','Burkina Faso','BF'),(38,'+257','Burundi','BI'),(39,'+855','Cambodia','KH'),(40,'+237','Cameroon','CM'),(41,'+1','Canada','CA'),(42,'+238','Cape Verde',NULL),(43,'+ 345','Cayman Islands',NULL),(44,'+236','Central African Republic','CF'),(45,'+235','Chad','TD'),(46,'+56','Chile','CL'),(47,'+86','China','CN'),(48,'+61','Christmas Island',NULL),(49,'+61','Cocos-Keeling Islands','CC'),(50,'+57','Colombia','CO'),(51,'+269','Comoros','KM'),(52,'+242','Congo','CG'),(53,'+243','Congo, Dem. Rep. of (Zaire)','CD'),(54,'+682','Cook Islands','CK'),(55,'+506','Costa Rica','CR'),(56,'+385','Croatia','HR'),(57,'+53','Cuba','CU'),(58,'+599','Curacao','CW'),(59,'+537','Cyprus','CY'),(60,'+420','Czech Republic','CZ'),(61,'+45','Denmark','DK'),(62,'+246','Diego Garcia','DG'),(63,'+253','Djibouti','DJ'),(64,'+1 767','Dominica','DM'),(65,'+1 809','Dominican Republic','DO'),(66,'+670','East Timor','TL'),(67,'+56','Easter Island','CL-IL'),(68,'+593','Ecuador','EC'),(69,'+20','Egypt','EG'),(70,'+503','El Salvador','SV'),(71,'+240','Equatorial Guinea','GQ'),(72,'+291','Eritrea','ER'),(73,'+372','Estonia','EE'),(74,'+251','Ethiopia','ET'),(75,'+500','Falkland Islands','FK'),(76,'+298','Faroe Islands','FO'),(77,'+679','Fiji','FJ'),(78,'+358','Finland','FI'),(79,'+33','France','FR'),(80,'+596','French Antilles','TF'),(81,'+594','French Guiana','GF'),(82,'+689','French Polynesia','PF'),(83,'+241','Gabon','GA'),(84,'+220','Gambia','GM'),(85,'+995','Georgia','GE'),(86,'+49','Germany','DE'),(87,'+233','Ghana','GH'),(88,'+350','Gibraltar','GI'),(89,'+30','Greece','GR'),(90,'+299','Greenland',NULL),(91,'+1 473','Grenada','GD'),(92,'+590','Guadeloupe','GP'),(93,'+1 671','Guam','GU'),(94,'+502','Guatemala','GT'),(95,'+224','Guinea','GN'),(96,'+245','Guinea-Bissau','GW'),(97,'+595','Guyana','GY'),(98,'+509','Haiti','HT'),(99,'+504','Honduras','HN'),(100,'+852','Hong Kong SAR China',NULL),(101,'+36','Hungary','HU'),(102,'+354','Iceland','IS'),(103,'+91','India','IN'),(104,'+62','Indonesia','ID'),(105,'+98','Iran',NULL),(106,'+964','Iraq','IQ'),(107,'+353','Ireland','IE'),(108,'+972','Israel','IL'),(109,'+39','Italy','IT'),(110,'+225','Ivory Coast',NULL),(111,'+1 876','Jamaica','JM'),(112,'+81','Japan','JP'),(113,'+962','Jordan','JO'),(114,'+7 7','Kazakhstan','KZ'),(115,'+254','Kenya','KE'),(116,'+686','Kiribati','KI'),(117,'+965','Kuwait','KW'),(118,'+996','Kyrgyzstan','KG'),(119,'+856','Laos','LA'),(120,'+371','Latvia','LV'),(121,'+961','Lebanon','LB'),(122,'+266','Lesotho','LS'),(123,'+231','Liberia','LR'),(124,'+218','Libya','LY'),(125,'+423','Liechtenstein','LI'),(126,'+370','Lithuania','LT'),(127,'+352','Luxembourg','LU'),(128,'+853','Macau SAR China',NULL),(129,'+389','Macedonia',NULL),(130,'+261','Madagascar','MG'),(131,'+265','Malawi','MW'),(132,'+60','Malaysia','MY'),(133,'+960','Maldives','MV'),(134,'+223','Mali','ML'),(135,'+356','Malta','MT'),(136,'+692','Marshall Islands','MH'),(137,'+596','Martinique','MQ'),(138,'+222','Mauritania','MR'),(139,'+230','Mauritius','MU'),(140,'+262','Mayotte','YT'),(141,'+52','Mexico','MX'),(142,'+691','Micronesia',NULL),(143,'+1 808','Midway Island',NULL),(144,'+373','Moldova',NULL),(145,'+377','Monaco','MC'),(146,'+976','Mongolia','MN'),(147,'+382','Montenegro','ME'),(148,'+1664','Montserrat','MS'),(149,'+212','Morocco','MA'),(150,'+95','Myanmar','MM'),(151,'+264','Namibia','NA'),(152,'+674','Nauru','NR'),(153,'+977','Nepal','NP'),(154,'+31','Netherlands','NL'),(155,'+599','Netherlands Antilles',NULL),(156,'+1 869','Nevis',NULL),(157,'+687','New Caledonia','NC'),(158,'+64','New Zealand','NZ'),(159,'+505','Nicaragua','NI'),(160,'+227','Niger','NE'),(161,'+234','Nigeria','NG'),(162,'+683','Niue','NU'),(163,'+672','Norfolk Island','NF'),(164,'+850','North Korea',NULL),(165,'+1 670','Northern Mariana Islands','MP'),(166,'+47','Norway','NO'),(167,'+968','Oman','OM'),(168,'+92','Pakistan','PK'),(169,'+680','Palau','PW'),(170,'+970','Palestinian Territory',NULL),(171,'+507','Panama','PA'),(172,'+675','Papua New Guinea','PG'),(173,'+595','Paraguay','PY'),(174,'+51','Peru','PE'),(175,'+63','Philippines','PH'),(176,'+48','Poland','PL'),(177,'+351','Portugal','PT'),(178,'+1 787','Puerto Rico','PR'),(179,'+974','Qatar','QA'),(180,'+262','Reunion',NULL),(181,'+40','Romania','RO'),(182,'+7','Russia',NULL),(183,'+250','Rwanda','RW'),(184,'+685','Samoa','WS'),(185,'+378','San Marino','SM'),(186,'+966','Saudi Arabia','SA'),(187,'+221','Senegal','SN'),(188,'+381','Serbia','RS'),(189,'+248','Seychelles','SC'),(190,'+232','Sierra Leone','SL'),(191,'+65','Singapore','SG'),(192,'+421','Slovakia','SK'),(193,'+386','Slovenia','SI'),(194,'+677','Solomon Islands','SB'),(195,'+27','South Africa','ZA'),(196,'+500','South Georgia and the South Sandwich Islands','GS'),(197,'+82','South Korea',NULL),(198,'+34','Spain','ES'),(199,'+94','Sri Lanka','LK'),(200,'+249','Sudan','SD'),(201,'+597','Suriname','SR'),(202,'+268','Swaziland',NULL),(203,'+46','Sweden','SE'),(204,'+41','Switzerland','CH'),(205,'+963','Syria',NULL),(206,'+886','Taiwan',NULL),(207,'+992','Tajikistan','TJ'),(208,'+255','Tanzania',NULL),(209,'+66','Thailand','TH'),(210,'+670','Timor Leste',NULL),(211,'+228','Togo','TG'),(212,'+690','Tokelau','TK'),(213,'+676','Tonga','TO'),(214,'+1 868','Trinidad and Tobago','TT'),(215,'+216','Tunisia','TN'),(216,'+90','Turkey','TR'),(217,'+993','Turkmenistan','TM'),(218,'+1 649','Turks and Caicos Islands','TC'),(219,'+688','Tuvalu','TV'),(220,'+1 340','U.S. Virgin Islands',NULL),(221,'+256','Uganda','UG'),(222,'+380','Ukraine','UA'),(223,'+971','United Arab Emirates','AE'),(224,'+44','United Kingdom','GB'),(225,'+1','United States','US'),(226,'+598','Uruguay','UY'),(227,'+998','Uzbekistan','UZ'),(228,'+678','Vanuatu','VU'),(229,'+58','Venezuela',NULL),(230,'+84','Vietnam',NULL),(231,'+1 808','Wake Island',NULL),(232,'+681','Wallis and Futuna','WF'),(233,'+967','Yemen','YE'),(234,'+260','Zambia','ZM'),(235,'+255','Zanzibar',NULL),(236,'+263','Zimbabwe','ZW');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
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
