-- MariaDB dump 10.19  Distrib 10.4.21-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: d22111284
-- ------------------------------------------------------
-- Server version	10.4.21-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `businessname`
--

DROP TABLE IF EXISTS `businessname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `businessname` (
  `businessnameid` int(11) NOT NULL AUTO_INCREMENT,
  `businessname` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`businessnameid`),
  UNIQUE KEY `businessname` (`businessname`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `businessname`
--

LOCK TABLES `businessname` WRITE;
/*!40000 ALTER TABLE `businessname` DISABLE KEYS */;
/*!40000 ALTER TABLE `businessname` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `countyryid` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`countyryid`),
  UNIQUE KEY `country` (`country`)
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'Afghanistan'),(2,'Albania'),(3,'Algeria'),(4,'Andorra'),(5,'Angola'),(6,'Antigua and Barbuda'),(7,'Argentina'),(8,'Armenia'),(9,'Australia'),(10,'Austria'),(11,'Azerbaijan'),(12,'Bahamas'),(13,'Bahrain'),(14,'Bangladesh'),(15,'Barbados'),(16,'Belarus'),(17,'Belgium'),(18,'Belize'),(19,'Benin'),(20,'Bhutan'),(21,'Bolivia'),(22,'Bosnia and Herzegovina'),(23,'Botswana'),(24,'Brazil'),(25,'Brunei'),(26,'Bulgaria'),(27,'Burkina Faso'),(28,'Burundi'),(29,'Cabo Verde'),(30,'Cambodia'),(31,'Cameroon'),(32,'Canada'),(33,'Central African Republic'),(34,'Chad'),(35,'Chile'),(36,'China'),(37,'Colombia'),(38,'Comoros'),(39,'Congo, Democratic Republic of the'),(40,'Congo, Republic of the'),(41,'Costa Rica'),(42,'Croatia'),(43,'Cuba'),(44,'Cyprus'),(45,'Czechia'),(46,'Denmark'),(47,'Djibouti'),(48,'Dominica'),(49,'Dominican Republic'),(50,'Ecuador'),(51,'Egypt'),(52,'El Salvador'),(53,'Equatorial Guinea'),(54,'Eritrea'),(55,'Estonia'),(56,'Eswatini'),(57,'Ethiopia'),(58,'Fiji'),(59,'Finland'),(60,'France'),(61,'Gabon'),(62,'Gambia'),(63,'Georgia'),(64,'Germany'),(65,'Ghana'),(66,'Greece'),(67,'Grenada'),(68,'Guatemala'),(69,'Guinea'),(70,'Guinea-Bissau'),(71,'Guyana'),(72,'Haiti'),(73,'Honduras'),(74,'Hungary'),(75,'Iceland'),(76,'India'),(77,'Indonesia'),(78,'Iran'),(79,'Iraq'),(80,'Ireland'),(81,'Israel'),(82,'Italy'),(83,'Jamaica'),(84,'Japan'),(85,'Jordan'),(86,'Kazakhstan'),(87,'Kenya'),(88,'Kiribati'),(89,'Korea, North'),(90,'Korea, South'),(91,'Kosovo'),(92,'Kuwait'),(93,'Kyrgyzstan'),(94,'Laos'),(95,'Latvia'),(96,'Lebanon'),(97,'Lesotho'),(98,'Liberia'),(99,'Libya'),(100,'Liechtenstein'),(101,'Lithuania'),(102,'Luxembourg'),(103,'Madagascar'),(104,'Malawi'),(105,'Malaysia'),(106,'Maldives'),(107,'Mali'),(108,'Malta'),(109,'Marshall Islands'),(110,'Mauritania'),(111,'Mauritius'),(112,'Mexico'),(113,'Micronesia'),(114,'Moldova'),(115,'Monaco'),(116,'Mongolia'),(117,'Montenegro'),(118,'Morocco'),(119,'Mozambique'),(120,'Myanmar'),(121,'Namibia'),(122,'Nauru'),(123,'Nepal'),(124,'Netherlands'),(125,'New Zealand'),(126,'Nicaragua'),(127,'Niger'),(128,'Nigeria'),(129,'North Macedonia'),(130,'Norway'),(131,'Oman'),(132,'Pakistan'),(133,'Palau'),(134,'Panama'),(135,'Papua New Guinea'),(136,'Paraguay'),(137,'Peru'),(138,'Philippines'),(139,'Poland'),(140,'Portugal'),(141,'Qatar'),(142,'Romania'),(143,'Russia'),(144,'Rwanda'),(145,'Saint Kitts and Nevis'),(146,'Saint Lucia'),(147,'Saint Vincent and the Grenadines'),(148,'Samoa'),(149,'San Marino'),(150,'Sao Tome and Principe'),(151,'Saudi Arabia'),(152,'Senegal'),(153,'Serbia'),(154,'Seychelles'),(155,'Sierra Leone'),(156,'Singapore'),(157,'Slovakia'),(158,'Slovenia'),(159,'Solomon Islands'),(160,'Somalia'),(161,'South Africa'),(162,'South Sudan'),(163,'Spain'),(164,'Sri Lanka'),(165,'Sudan'),(166,'Suriname'),(167,'Sweden'),(168,'Switzerland'),(169,'Syria'),(170,'Taiwan'),(171,'Tajikistan'),(172,'Tanzania'),(173,'Thailand'),(174,'Timor-Leste'),(175,'Turkey'),(176,'Turkmenistan'),(177,'Tuvalu'),(178,'Uganda'),(179,'Ukraine'),(180,'United Arab Emirates'),(181,'United Kingdom'),(182,'United States'),(183,'Uruguay'),(184,'Uzbekistan'),(185,'Vanuatu'),(186,'Vatican City'),(187,'Venezuela'),(188,'Vietnam'),(189,'Yemen'),(190,'Zambia'),(191,'Zimbabwe');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `customerid` int(11) NOT NULL AUTO_INCREMENT,
  `customercode` varchar(10) DEFAULT NULL,
  `customername` varchar(60) DEFAULT NULL,
  `customeraddress` varchar(50) DEFAULT NULL,
  `customercity` varchar(30) DEFAULT NULL,
  `customerstate` varchar(30) DEFAULT NULL,
  `customeremail` varchar(30) DEFAULT NULL,
  `customermobile` varchar(16) DEFAULT NULL,
  `purchases` varchar(60) DEFAULT NULL,
  `customercategory` varchar(30) DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`customerid`),
  UNIQUE KEY `customername` (`customername`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'A','Ria Malhotra','Sisona, Rajput Nagar, Bareilly','Nagpur','Uttarakhand','uilote@birlavidyamandir.com','+91-9365453385','9 * Saridon, 4 * Heat Bag','REGULAR','F'),(2,'B','Shyam Guldastewala','Bilona, Gamjam Nagar, Rai bareilly','Sitarpur','Jaipur','lweigm@gmail.com','+91-9369997345','2 * Surgucal Mask, 2 * Corex','REGULAR','M'),(3,'C','Girpade Gudarphate','Gajona, Gadarpham Nagar, Hai bareilly','Gajiapur','Telangana','shflque@gmail.com','+91-7834643753','1 * Torex, 2 * Corex','REGULAR','M'),(4,'D','Madhuri Dixit','Gadarphona, Gamjam Nagar, Rai bareilly','Sitarpur','Uttar Pradesh','lweikm@gmail.com','+91-8984357845','5 * Chloroform, 2 * Zhandu Balm Red','REGULAR','F'),(5,'E','Customer Special','Gadarpur, Rajput Nagar, Kanpur','Shahjahanpur','Uttar Pradesh','ldfsjhjm@yahoo.com','+91-2984677845','1 * Paracetamol, 3 * Cofsils','REGULAR','M'),(6,'F','Malhotra Sahab','Malaipur, Anaconda Nagar, Gai bareilly','Hamjampur','Uttar Pradesh','fij@gmail.com','+91-8952678845','1 * Paracetamol, 2 * Tofsils','REGULAR','M'),(7,'G','Sahib-E-Alam','Doodhnagar, Malai Nagar, Zai Shillong','Sitarpur','Rajasthan','qphfjm@yahoo.com','+91-1234357845','6 * Contact lens solution, 5 * Cleaning Cloth','REGULAR','M'),(8,'H','Alfahad Malik','Manipur, Rohit Nagar, Pilibhit','Sitarganj','Madhya Pradesh','tgrfwjm@gmail.com','+91-5678357845','1 * Opium, 1 * Drug','OTHERS...','F'),(9,'I','Pulkit Pokhral','Patnapur, Mithu Nagar, Satellite','Meenapur','Arunachal Pradesh','hnytrijm@hotmail.com','+91-9101357845','10 * Indigo, 22 * Opium','INTERDICTED','M'),(10,'J','Ankit Tiwari','Rajapur, Gethiya Nagar, Space Station','Mainpur','Andhra Pradesh','aeaaaaaaijm@gmail.com','+91-1314357845','1 * N-95 Mask, 6 * Surgical Masks','EMPLOYEE','F'),(11,'L','Prajjwal Rathore','Gajapur, Banyan Nagar, Turka Tisor','Gajapur','Telangana','jjjjweijm@hotmail.com','+91-4465357845','4 * Saridon, 2 * Chloroform','REGULAR','M'),(12,'M','Saina Rathore','Hodapur, Baliyan Nagar, Mantriscity','Hodapur','Telangana','yujo@gmail.com','+91-1258795684','4 * Abc, 1 * Diclophenac','REGULAR','M'),(13,'N','Merry Jilli','Pointpur, Galiyan, Hellomyf','Pointpur','Rajasthan','etyhnjuny@gmail.com','+91-3598757848','1 * Xyz, 3 * Iodoform','REGULAR','M'),(14,'O','Terry Lilli','Seduntant, Helios Nagar, Turka Tisor','Koinpur','Uttarakhand','ewrtgrg@gmail.com','+91-1654584654','2 * Pqr, 2 * Norepinephrine','REGULAR','F'),(15,'P','Cannot Reveal Name','Polypur, Kondapur, Joint Furram','Ploypur','Uttarakhand','tgrfjy7j56@gmail.com','+XX-XXXXXXXXXX','3 * Stu, 2 * Acetylcholine','VIP','M'),(16,'Q','Private XQZ','Mantispur, Lava Nagar, Mallitalpur','Mantispur','JnK','6657h6@gmail.com','+XX-XXXXXXXXXX','4 * Vwx, 2 * Stamina Pills','VIP','M'),(17,'R','Dolly Chai Wala','Lofapur, Urmila Nagar, Logdgdugfepur','Lofapur','Uttarakhand','7htyh6@gmail.com','+91-6969696969','6 * Yza, 2 * Nashe ki Dawa','REGULAR','M'),(18,'S','Pav Bhaji Wali','Urfipur, Konda Pur, Place Nagar','Urfipur','Bihar','gsdg5t5@gmail.com','+91-6966996666','4 * Saridon, 2 * Jkl','INTERDICTED','F'),(19,'T','IIT Momo Wala','Anacondapur, Handersky Nagar, GG','Anacondapur','Uttarakhand','ytj76u5@gmail.com','+91-7544464466','3 * Mno, 2 * Neend ki goli','REGULAR','F'),(20,'U','MIT Vada Pav Wala','Dkpur, Kasperskyy Nagar, BpColony','Dkpur','Uttarakhand','gtrgaek677@gmail.com','+91-6589745821','2 * Fgo, 2 * Khasi ki dawa','REGULAR','M'),(21,'V','UPSC Chai Wala','Henrypur, HolyCow Nagar, Android Fallam','Henrypur','Madhya Pradesh','gnhjjuyjh@hotmail.com','+91-3852496274','1 * Yfe, 2 * Positive Feedback Loop','REGULAR','M'),(22,'W','MBBS International Bhikhari','Follyupur, Crap Nagar, Bareilly','Follypur','Andhra Pradesh','esgtytjuyb@hotmail.com','+23-5784962105','5 * Dawai, 2 * Chloroform','INTERDICTED','M'),(23,'X','AIIMS Malai Chaap Wala','Jhutpur, HolyCrap Nagar, Pbt.','Jhutpur','Arunachal Pradesh','ertyhbgv@gmail.com','+91-6236549875','4 * Hellew, 2 * Xenon Poison','REGULAR','M'),(24,'Y','Yusuf Dadar Haveli','Sachpur, Dorm Nagar, Stg.','Sachpur','Uttarakhand','565555534yg@gmail.com','+91-7539516482','4 * Medicine, 6 * Bromoform','REGULAR','F'),(25,'Z','Melantina Getasdrool','Kalapur, Room Nagar, Jaipur','Kalapur','Uttar Pradesh','uuyjgye4@gmail.com','+91-4563218972','4 * Drug, 2 * Iodoform','REGULAR','F'),(26,'AA','Hon. Kirti Kamal Bhardwaj','Leelapur, House Nagar, Leelapur','Subsidiarypur','Uttarakhand','54rtvbh78@hotmail.com','+91-6498810023','4 * Jailop, 2 * Hentyop','VIP','M'),(27,'AB','Yadhirubhai Yambani','Neelapur, Country Nagar, Neelapur','Subsidiarypur','Uttarakhand','45trgreg@yahoo.com','+91-6929012345','3 * Saridon, 2 * Chloroform','VIP','M');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customercategory`
--

DROP TABLE IF EXISTS `customercategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customercategory` (
  `customercategoryid` int(11) NOT NULL AUTO_INCREMENT,
  `customercategory` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`customercategoryid`),
  UNIQUE KEY `customercategory` (`customercategory`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customercategory`
--

LOCK TABLES `customercategory` WRITE;
/*!40000 ALTER TABLE `customercategory` DISABLE KEYS */;
INSERT INTO `customercategory` VALUES (4,'EMPLOYEE'),(3,'INTERDICTED'),(5,'OTHERS...'),(2,'REGULAR'),(1,'VIP');
/*!40000 ALTER TABLE `customercategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drug`
--

DROP TABLE IF EXISTS `drug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drug` (
  `drugcode` int(11) NOT NULL AUTO_INCREMENT,
  `drugname` varchar(30) NOT NULL,
  `drugcategory` varchar(30) DEFAULT NULL,
  `unit` varchar(10) DEFAULT NULL,
  `gstrate` decimal(10,2) DEFAULT 18.00,
  `drugtotalstock` int(5) DEFAULT 0,
  `drugaverageprice` decimal(12,2) DEFAULT 0.00,
  PRIMARY KEY (`drugcode`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drug`
--

LOCK TABLES `drug` WRITE;
/*!40000 ALTER TABLE `drug` DISABLE KEYS */;
INSERT INTO `drug` VALUES (1,'Paracetamol (Acetaminophen)','Analgesics','mg',20.00,120,90.00),(2,'Aspirin (Acetylsalicylic Acid)','Analgesics','mg',20.00,600,20.00),(3,'Naproxen','Analgesics','mg',20.00,100,30.00),(4,'Tramadol','Analgesics','mg',20.00,200,70.00),(5,'Diclofenac','Analgesics','mg',20.00,500,100.00),(6,'Saridon','Analgesics','mg',20.00,200,150.00),(7,'Neosporin ointment','Antibacterials','ml',12.00,330,60.00),(8,'Amoxicillin','Antibacterials','ml',12.00,350,80.00),(9,'Azithromycin','Antibacterials','ml',12.00,130,100.00),(10,'Ciprofloxacin','Antibacterials','ml',12.00,530,60.00),(11,'Doxycycline','Antibacterials','ml',12.00,130,120.00),(12,'Metronidazole','Antibacterials','ml',12.00,290,310.00),(13,'Fluoxetine (Prozac)','Antidepressants','mL',18.00,400,450.00),(14,'Escitalopram (Lexapro) (Zoloft','Antidepressants','mL',18.00,110,120.00),(15,'Paroxetine (Paxil)','Antidepressants','mL',18.00,210,50.00),(16,'Citalopram (Celexa)','Antidepressants','mL',18.00,280,50.00),(17,'Venlafaxine (Effexor)','Antidepressants','mL',18.00,60,150.00),(18,'Glybera','Drug','mL',18.00,140,25.00),(19,'Soliris (Eculizumab)','Drug','mL',18.00,130,95.00),(20,'Zolgensma','Drug','mL',18.00,120,55.00),(21,'Vitravene (Fomivirsen)','Drug','mL',18.00,120,375.00),(22,'Clotrimazole','Antifungals','mg',12.00,80,980.00),(23,'Fosmanogepix','Antifungals','mg',12.00,100,70.00),(24,'Isavuconazole (Cresemba)','Antifungals','mg',12.00,450,620.00),(25,'Nystatin Liposomal','Antifungals','mL',12.00,150,50.00),(26,'Abreva (Docosanol)','Antivirals','mL',12.00,650,29.00),(27,'Oseltamivir (Tamiflu)','Antivirals','mL',12.00,60,219.00),(28,'Acyclovir (Zovirax)','Antivirals','mL',12.00,70,229.00),(29,'Remdesivir (Veklury)','Antivirals','mL',12.00,150,374.00),(30,'Amoxicillin','Antibiotics','mL',18.00,440,34.00),(31,'Ciprofloxacin (Cipro)','Antibiotics','mL',18.00,210,134.00),(32,'Azithromycin (Zithromax)','Antibiotics','mL',18.00,40,324.00),(33,'Doxycycline (Vibramycin)','Antibiotics','mL',18.00,320,234.00),(34,'Clindamycin (Cleocin)','Antibiotics','mL',18.00,142,214.00),(35,'Phenobarbital (Luminal)','Barbiturates','mL',18.00,320,87.00),(36,'Pentobarbital (Nembutal)','Barbiturates','mg',18.00,220,187.00),(37,'Secobarbital (Seconal)','Barbiturates','mL',18.00,120,233.00),(38,'Amobarbital (Amytal)','Barbiturates','mg',18.00,310,247.00),(39,'Thiopental (Pentothal)','Barbiturates','mL',18.00,240,149.00),(40,'Adderall','Controlled drugs','mg',18.00,290,95.00),(41,'Fentanyl','Controlled drugs','mg',18.00,290,195.00),(42,'Diazepam (Valium)','Controlled drugs','mg',18.00,290,235.00),(43,'Hydrocodone (Vicodin, Norco)','Controlled drugs','mg',18.00,290,134.00),(44,'Methadone','Controlled drugs','mg',18.00,290,64.33),(45,'Sevoflurane','General anesthetics','mL',12.00,40,1000.00),(46,'Chloroform','General anesthetics','mL',12.00,290,2600.00),(47,'Isoflurane','General anesthetics','mL',12.00,254,2500.00),(48,'Morphine','Opioid','mL',20.00,201,83.00),(49,'Oxycodone','Opioid','mL',20.00,212,25.00),(50,'Codeine','Opioid','mL',20.00,150,145.00),(51,'Fentanyl','Opioid','mL',20.00,130,665.00),(52,'Caffeine','Stimulant','mL',18.50,830,24.00),(53,'Amphetamine (Adderall)','Stimulant','mL',18.50,840,215.00),(54,'Methylphenidate (Ritalin, Conc','Stimulant','mL',18.50,70,125.00),(55,'Nicotine','Stimulant','g',18.50,470,999.99),(56,'Amiodarone','Antiarrhythmics','mg',19.50,650,185.00),(57,'Lidocaine','Antiarrhythmics','mL',19.50,220,125.00),(58,'Flecainide','Antiarrhythmics','mg',19.50,150,112.00),(59,'Amiodarone','Antiarrhythmics','mL',19.50,410,65.00),(60,'Sotalol','Antiarrhythmics','mg',19.50,130,95.00),(61,'Procainamide','Antidiarrheals','mL',20.00,130,625.00),(62,'Diphenhydramine (Benadryl)','Antihistamines','mL',12.00,120,85.00),(63,'Cetirizine (Zyrtec)','Antihistamines','mL',12.00,150,105.00),(64,'Loratadine (Claritin)','Antihistamines','mL',12.00,630,45.00),(65,'Fexofenadine (Allegra)','Antihistamines','mL',12.00,230,375.00),(66,'Delta-9-Tetrahydrocannabinol (','Cannabinoids','mg',18.00,130,125.00),(67,'Cannabidiol (CBD)','Cannabinoids','mL',18.00,160,95.00),(68,'Cannabinol (CBN)','Cannabinoids','mg',18.00,172,235.00),(69,'Cannabigerol (CBG)','Cannabinoids','mL',18.00,151,62.00),(70,'Cannabichromene (CBC)','Cannabinoids','mg',18.00,450,155.00),(71,'Donepezil (Aricept)','Cholinesterase inhibitors','mg',12.00,130,21.50),(72,'Rivastigmine (Exelon)','Cholinesterase inhibitors','mL',12.00,170,123.50),(73,'Galantamine (Razadyne)','Cholinesterase inhibitors','mg',12.00,181,261.50),(74,'Tacrine (Cognex)','Cholinesterase inhibitors','mL',12.00,370,291.50),(75,'Physostigmine','Cholinesterase inhibitors','mg',12.00,210,521.50),(76,'Vicks Vaporub','Inhalant','g',18.00,180,16.00),(77,'Vicks Inhaler','Inhalant','mL',18.00,190,61.00),(78,'Vicks Inhaler Advanced','Inhalant','mL',18.00,120,52.00),(79,'Vicks Balm','Inhalant','mL',18.00,156,84.00),(80,'Zandu Balm Red','Inhalant','mL',18.00,220,36.00),(81,'Zandu Balm Blue','Inhalant','qty',18.00,890,44.00),(82,'Zandu Balm Green','Inhalant','qty',18.00,640,77.00),(83,'Nepali Balm','Inhalant','qty',18.00,510,42.00),(84,'LSD (Lysergic Acid Diethylamid','Hallucinogen','mL',20.00,320,97.00),(85,'Psilocybin','Hallucinogen','mL',20.00,736,57.00),(86,'DMT (Dimethyltryptamine)','Hallucinogen','mL',20.00,120,997.00),(87,'Mescaline','Hallucinogen','mL',20.00,220,297.00),(88,'MDMA (Ecstasy/Molly)','Hallucinogen','mL',20.00,370,425.00),(89,'Cyclophosphamide (Cytoxan)','Cytotoxic drugs','mL',20.00,140,525.00),(90,'Doxorubicin (Adriamycin)','Cytotoxic drugs','mL',20.00,240,55.00),(91,'Cisplatin','Cytotoxic drugs','mL',20.00,130,185.00),(92,'Methotrexate','Cytotoxic drugs','mL',20.00,190,265.00),(93,'Ibuprofen (Advil, Motrin)','Nonsteroidal anti-inflammatory','mL',18.50,750,50.00),(94,'Naproxen (Aleve, Naprosyn)','Nonsteroidal anti-inflammatory','mL',18.50,230,250.00),(95,'Celecoxib (Celebrex)','Nonsteroidal anti-inflammatory','mL',18.50,150,520.00),(96,'Ketoprofen (Orudis, Oruvail)','Nonsteroidal anti-inflammatory','mL',18.50,170,510.00),(97,'Mefenamic Acid (Ponstel)','Nonsteroidal anti-inflammatory','mL',18.50,250,1150.00),(98,'Piroxicam (Feldene)','Nonsteroidal anti-inflammatory','mL',18.50,255,550.00),(99,'Bandage','General','m',18.00,320,85.00),(100,'Band-Aid','General','qty',18.00,320,15.00),(101,'Tape','General','cm',18.00,120,20.50),(102,'Cotton Buds','General','kg',18.00,120,4.99),(103,'Surgical Masks','General','qty',18.00,360,10.00),(104,'Zolgensma','GENE THERAPY DRUGS','Others...',12.00,5,175000000.00),(105,'Luxturna (voretigene neparvove','GENE THERAPY DRUGS','Others...',12.00,6,70000000.00);
/*!40000 ALTER TABLE `drug` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drugcategory`
--

DROP TABLE IF EXISTS `drugcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drugcategory` (
  `drugcategoryid` int(11) NOT NULL AUTO_INCREMENT,
  `drugcategory` varchar(30) DEFAULT NULL,
  `gstrate` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`drugcategoryid`),
  UNIQUE KEY `drugcategory` (`drugcategory`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drugcategory`
--

LOCK TABLES `drugcategory` WRITE;
/*!40000 ALTER TABLE `drugcategory` DISABLE KEYS */;
INSERT INTO `drugcategory` VALUES (1,'General',18.00),(2,'Analgesics',20.00),(3,'Antidepressants',18.00),(4,'Drug',18.00),(5,'Antibacterials',12.00),(6,'Antifungals',12.00),(7,'Antivirals',12.00),(8,'Antibiotics',18.00),(9,'Barbiturates',18.00),(10,'Controlled drugs',18.00),(11,'General anesthetics',12.00),(12,'Opioid',20.00),(13,'Stimulant',18.50),(14,'Antiarrhythmics',19.50),(15,'Antidiarrheals',20.00),(16,'Antihistamines',12.00),(17,'Cannabinoids',18.00),(18,'Cholinesterase inhibitors',12.00),(19,'Inhalant',18.00),(20,'Hallucinogen',20.00),(21,'Cytotoxic drugs',20.00),(22,'Nonsteroidal anti-inflammatory',18.50),(23,'GENE THERAPY DRUGS',12.00);
/*!40000 ALTER TABLE `drugcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `employeeid` int(11) NOT NULL AUTO_INCREMENT,
  `employeename` varchar(30) DEFAULT NULL,
  `contact` varchar(30) DEFAULT NULL,
  `agedob` date DEFAULT NULL,
  `employeeaddress` varchar(50) DEFAULT NULL,
  `employeecity` varchar(30) DEFAULT NULL,
  `employeestate` varchar(30) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `salaryrangePA` decimal(10,3) DEFAULT NULL,
  `employeecategory` varchar(30) DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`employeeid`),
  UNIQUE KEY `employeename` (`employeename`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Ronak Arora','+91 9173544835','1992-12-26','Sector 09 Flat 4B Gokuldham Society','Patna','Bihar','India',300000.990,'Sweeper','F'),(2,'Charu','+91 9273569835','2000-12-04','Sector 08 Flat 4A Meragaow Society','Rai Bareilly','Uttar Pradesh','India',480000.010,'Keeper','F'),(3,'Sonika Chauhan','+91 9173546835','1999-01-01','Sector 08 Flat 3B Wild Crest','Vidisha','Madhya Pradesh','India',544000.000,'Keeper','F'),(4,'Ajeet Rana','+91 9473566835','2001-02-02','Sector 06 Flat 1C World Green Society','Dispur','Assam','India',696969.690,'Keeper','M'),(5,'Ananya','+91 9173596835','2004-04-04','Sector 04 Flat 5Z Protestant Society','Nainital','Uttarakhand','India',6500000.000,'Owner','F'),(6,'XYZ Maksad','+91 8173569695','2000-12-09','Sector 03 Flat 2F Revolutionary Societyy','New Delhi','Delhi','India',800000.660,'Miscellaneous','F'),(7,'Mulayam Yadav','+91 8273569695','2000-11-09','Sector 03 Flat 9J Madanmohan Society','Mumbai','Maharashtra','India',200000.660,'Keeper','M'),(8,'Govind Singh','+91 8374499695','1994-10-09','Mall Road Calisthenics Society','Bengaluru','Karnataka','India',100000.660,'Keeper','M'),(9,'Maarkaat Nochphaad','+91 9153015695','2000-09-02','Sector 02 Flat 1K Catholics Society','Jaipur','Rajasthan','India',300000.660,'Keeper','M'),(10,'Naagin Itchchadhari','+91 8178452395','2000-09-06','GB Road Secret Underworld Society','Dehradun','Uttarakhand','India',500000.660,'Keeper','F'),(11,'BaalVeer Season 2','+91 7645199695','1999-12-01','Sector 01 Flat 4S Preist Society','Nanakmatta','Uttarakhand','India',600000.660,'Keeper','M');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeecategory`
--

DROP TABLE IF EXISTS `employeecategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employeecategory` (
  `employeecategoryid` int(11) NOT NULL AUTO_INCREMENT,
  `employeecategory` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`employeecategoryid`),
  UNIQUE KEY `employeecategory` (`employeecategory`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeecategory`
--

LOCK TABLES `employeecategory` WRITE;
/*!40000 ALTER TABLE `employeecategory` DISABLE KEYS */;
INSERT INTO `employeecategory` VALUES (4,'Keeper'),(2,'Manager'),(5,'Miscellaneous'),(1,'Owner'),(3,'Sweeper');
/*!40000 ALTER TABLE `employeecategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gender`
--

DROP TABLE IF EXISTS `gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gender` (
  `genderid` int(11) NOT NULL AUTO_INCREMENT,
  `gender` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`genderid`),
  UNIQUE KEY `gender` (`gender`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gender`
--

LOCK TABLES `gender` WRITE;
/*!40000 ALTER TABLE `gender` DISABLE KEYS */;
INSERT INTO `gender` VALUES (8,'Agender'),(28,'Aliagender'),(47,'Androgyne'),(12,'Androgynous'),(27,'Autigender'),(9,'Bigender'),(23,'Bisexual'),(41,'Boi'),(25,'Cisgender'),(14,'Demiboy'),(45,'Demiflux'),(46,'Demigender'),(15,'Demigirl'),(2,'F'),(34,'Feminine of Center'),(37,'Fluidgender'),(17,'Gay'),(38,'Gender Apathetic'),(39,'Gender Non-Conforming'),(40,'Gender Questioning'),(7,'Genderfluid'),(44,'Genderflux'),(43,'Genderless'),(42,'Gendermon'),(6,'Genderqueer'),(49,'Gendervague'),(31,'Gendervoid'),(26,'Graygender'),(20,'Intergender'),(48,'Intersex'),(19,'Krigar'),(11,'Lesbian'),(1,'M'),(35,'Masculine of Center'),(29,'Maverique'),(36,'Multigender'),(16,'Neutrois'),(5,'Non-Binary'),(30,'Novigender'),(22,'Omnigender'),(10,'Pangender'),(21,'Polygender'),(50,'Queer'),(24,'Third Gender'),(4,'Transgender Female'),(3,'Transgender Male'),(32,'Trixic'),(33,'Trixic/Polygender'),(13,'Two-Spirit'),(18,'Xenogender');
/*!40000 ALTER TABLE `gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase` (
  `purchaseid` int(11) NOT NULL AUTO_INCREMENT,
  `pdate` date DEFAULT NULL,
  `invoice` varchar(30) DEFAULT NULL,
  `suppliercategory` varchar(30) DEFAULT NULL,
  `suppliercode` varchar(30) DEFAULT NULL,
  `suppliername` varchar(30) DEFAULT NULL,
  `suppliermobile` varchar(30) DEFAULT NULL,
  `drugcode` varchar(30) DEFAULT NULL,
  `drugcategory` varchar(30) DEFAULT NULL,
  `drugname` varchar(30) DEFAULT NULL,
  `unit` varchar(30) DEFAULT NULL,
  `gstrate` decimal(5,2) DEFAULT NULL,
  `drugquantity` decimal(10,2) DEFAULT NULL,
  `drugstock` decimal(10,2) DEFAULT NULL,
  `drugprice` decimal(10,2) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `freight` decimal(10,2) DEFAULT NULL,
  `gst` decimal(10,2) DEFAULT NULL,
  `netamount` decimal(10,2) DEFAULT NULL,
  `grandamount` decimal(10,2) DEFAULT NULL,
  `drugminsaleprice` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`purchaseid`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase`
--

LOCK TABLES `purchase` WRITE;
/*!40000 ALTER TABLE `purchase` DISABLE KEYS */;
INSERT INTO `purchase` VALUES (1,'2024-08-22','1','Manufacturers','A','Ria Lifesciences Pvt Ltd.','9411107750','1','Analgesics','Paracetamol (Acetaminophen)','mg',20.00,11.00,704.00,90.00,990.00,100.00,198.00,1188.00,1288.00,117.09),(2,'2024-08-22','12','Manufacturers','B','Johnson & Johnson','8211107750','2','Analgesics','Aspirin (Acetylsalicylic Acid)','mg',20.00,12.00,483.00,20.00,240.00,2.00,48.00,288.00,290.00,24.17),(3,'2024-08-23','123','Wholesalers','F','Cardinal Health','8217612569','7','Antibacterials','Neosporin ointment','ml',12.00,13.00,705.00,60.00,780.00,3.00,93.60,873.60,876.60,67.43),(4,'2024-08-24','1234','Exporters','O','Nexford Healthcare Pvt Ltd.','8161235490','14','Antidepressants','Escitalopram (Lexapro) (Zoloft','mL',18.00,14.00,498.00,120.00,1680.00,5.00,302.40,1982.40,1987.40,141.96),(5,'2024-08-25','12345','Importers','U','Rite Aid','7262618901','19','Drug','Soliris (Eculizumab)','mL',18.00,15.00,703.00,95.00,1425.00,2.00,256.50,1681.50,1683.50,112.23),(6,'2024-08-27','123456','Others...','W','Charles River Laboratories','7262636278','23','Antifungals','Fosmanogepix','mg',12.00,16.00,689.00,70.00,1120.00,5.00,134.40,1254.40,1259.40,78.71),(7,'2024-08-27','12321','Exporters','L','Sandoz (a Novartis division)','7897262490','31','Antibiotics','Ciprofloxacin (Cipro)','mL',18.00,12.00,495.00,134.00,1608.00,12.00,289.44,1897.44,1909.44,159.12),(8,'2024-08-28','12321','Importers','R','Walgreens Boots Alliance','7412189011','38','Barbiturates','Amobarbital (Amytal)','mg',18.00,13.00,492.00,247.00,3211.00,3.00,577.98,3788.98,3791.98,291.69),(9,'2024-08-30','131','Manufacturers','C','Novartis','8172107750','100','General','Band-Aid','qty',18.00,21.00,494.00,15.00,315.00,0.00,56.70,371.70,371.70,17.70),(10,'2024-08-31','101','Others...','V','Thermo Fisher Scientific','8272636627','78','Inhalant','Vicks Inhaler Advanced','mL',18.00,100.00,87.00,52.00,5200.00,0.00,936.00,6136.00,6136.00,61.36),(11,'2024-09-01','322','Manufacturers','E','Merck & Co., Inc. (known as MS','9371107750','102','General','Cotton Buds','kg',18.00,20.00,659.00,5.00,100.00,0.00,18.00,118.00,118.00,5.90),(12,'2024-08-23','41','Exporters','M','Teva Pharmaceuticals','8291235490','23','Antifungals','Fosmanogepix','mg',12.00,5.00,500.00,70.00,350.00,1.00,42.00,392.00,393.00,78.60),(13,'2024-09-02','139','Wholesalers','K','Mezorays Pharma','7272189011','64','Antihistamines','Loratadine (Claritin)','mL',12.00,12.00,498.00,45.00,540.00,0.00,64.80,604.80,604.80,50.40),(14,'2024-09-04','1222','Exporters','P','Mylan (now part of Viatris)','5226235493','49','Opioid','Oxycodone','mL',20.00,2.00,450.00,25.00,50.00,0.00,10.00,60.00,60.00,30.00),(15,'2024-09-05','435','Wholesalers','F','Cardinal Health','8217612569','14','Antidepressants','Escitalopram (Lexapro) (Zoloft','mL',18.00,12.00,706.00,120.00,1440.00,5.00,259.20,1699.20,1704.20,142.02),(16,'2024-09-06','69','Importers','S','Wal-Mart','9412189075','13','Antidepressants','Fluoxetine (Prozac)','mL',18.00,3.00,497.00,450.00,1350.00,12.00,243.00,1593.00,1605.00,535.00),(17,'2024-09-07','3231','Others...','X','WuXi AppTec','9173638227','18','Drug','Glybera','mL',18.00,1.00,496.00,25.00,25.00,0.00,4.50,29.50,29.50,29.50),(18,'2024-09-10','4511','Wholesalers','F','Cardinal Health','8217612569','100','General','Band-Aid','qty',18.00,12.00,706.00,15.00,180.00,0.00,32.40,212.40,212.40,17.70),(19,'2024-09-10','121','Exporters','N','Sun Pharmaceutical Industries','8162235490','103','General','Surgical Masks','qty',18.00,500.00,466.00,10.00,5000.00,1.00,900.00,5900.00,5901.00,11.80),(20,'2024-09-09','342','Manufacturers','C','Novartis','8172107750','81','Inhalant','Zandu Balm Blue','qty',18.00,500.00,444.00,44.00,22000.00,1.00,3960.00,25960.00,25961.00,51.92),(21,'2024-09-09','89347','Exporters','M','Teva Pharmaceuticals','8291235490','83','Inhalant','Nepali Balm','qty',18.00,400.00,397.00,42.00,16800.00,0.00,3024.00,19824.00,19824.00,49.56),(22,'2024-09-10','1691','Manufacturers','C','Novartis','8172107750','101','General','Tape','cm',18.00,400.00,389.00,20.50,8200.00,5.00,1476.00,9676.00,9681.00,24.20),(23,'2024-09-11','323432','Wholesalers','G','McKesson Corporation','7163612569','99','General','Bandage','m',18.00,451.00,439.00,85.00,38335.00,0.00,6900.30,45235.30,45235.30,100.30),(24,'2024-09-11','5784234','Wholesalers','K','Mezorays Pharma','7272189011','6','Analgesics','Saridon','mg',20.00,150.00,147.00,150.00,22500.00,0.00,4500.00,27000.00,27000.00,180.00),(25,'2024-09-11','00110011','Others...','V','Thermo Fisher Scientific','8272636627','104','GENE THERAPY DRUGS','Zolgensma','Others...',12.00,6.00,499.00,99999999.99,99999999.99,5000.00,99999999.99,99999999.99,99999999.99,99999999.99),(26,'2024-09-11','001001169','Others...','V','Thermo Fisher Scientific','8272636627','105','GENE THERAPY DRUGS','Luxturna (voretigene neparvove','Others...',12.00,7.00,499.00,70000000.00,99999999.99,2000.00,58800000.00,99999999.99,99999999.99,78400285.71),(27,'2024-09-11','6445','Wholesalers','F','Cardinal Health','8217612569','52','Stimulant','Caffeine','mL',18.50,500.00,460.00,24.00,12000.00,0.00,2220.00,14220.00,14220.00,28.44),(28,'2024-09-11','467','Wholesalers','G','McKesson Corporation','7163612569','82','Inhalant','Zandu Balm Green','qty',18.00,230.00,225.00,77.00,17710.00,0.00,3187.80,20897.80,20897.80,90.86),(29,'2024-09-11','5646546','Wholesalers','G','McKesson Corporation','7163612569','80','Inhalant','Zandu Balm Red','mL',18.00,270.00,260.00,36.00,9720.00,0.00,1749.60,11469.60,11469.60,42.48),(30,'2024-09-11','7757522354','Wholesalers','H','AmerisourceBergen','7272612569','64','Antihistamines','Loratadine (Claritin)','mL',12.00,900.00,900.00,45.00,40500.00,0.00,4860.00,45360.00,45360.00,50.40),(31,'2024-09-11','76776','Wholesalers','G','McKesson Corporation','7163612569','49','Opioid','Oxycodone','mL',20.00,1000.00,1000.00,25.00,25000.00,0.00,5000.00,30000.00,30000.00,30.00),(32,'2024-09-11','675365','Wholesalers','G','McKesson Corporation','7163612569','48','Opioid','Morphine','mL',20.00,1000.00,955.00,83.00,83000.00,0.00,16600.00,99600.00,99600.00,99.60),(33,'2024-09-12','567','Wholesalers','G','McKesson Corporation','7163612569','50','Opioid','Codeine','mL',20.00,1000.00,915.00,145.00,145000.00,0.00,29000.00,174000.00,174000.00,174.00),(34,'2024-09-12','6873','Others...','W','Charles River Laboratories','7262636278','51','Opioid','Fentanyl','mL',20.00,1000.00,948.00,665.00,665000.00,0.00,133000.00,798000.00,798000.00,798.00),(42,'2024-09-12','0099900','Wholesalers','I','Cencora (formerly known as All','8162512569','55','Stimulant','Nicotine','g',18.50,2000.00,1997.00,999.99,1999980.00,50.00,369996.30,2369976.30,2370026.30,1185.01),(43,'2024-09-12','0099900','Wholesalers','I','Cencora (formerly known as All','8162512569','53','Stimulant','Amphetamine (Adderall)','mL',18.50,400.00,399.00,215.00,86000.00,5.00,15910.00,101910.00,101915.00,254.79),(46,'2024-09-12','09886674','Exporters','N','Sun Pharmaceutical Industries','8162235490','54','Stimulant','Methylphenidate (Ritalin, Conc','mL',18.50,400.00,398.00,125.00,50000.00,0.00,9250.00,59250.00,59250.00,148.12),(47,'2024-09-12','7867564','Exporters','N','Sun Pharmaceutical Industries','8162235490','45','General anesthetics','Sevoflurane','mL',12.00,400.00,398.00,1000.00,400000.00,0.00,48000.00,448000.00,448000.00,1120.00),(48,'2024-09-12','0907','Exporters','N','Sun Pharmaceutical Industries','8162235490','46','General anesthetics','Chloroform','mL',12.00,400.00,398.00,2600.00,1040000.00,60.00,124800.00,1164800.00,1164860.00,2912.15),(49,'2024-09-12','65765','Exporters','N','Sun Pharmaceutical Industries','8162235490','47','General anesthetics','Isoflurane','mL',12.00,280.00,279.00,2500.00,700000.00,90.00,84000.00,784000.00,784090.00,2800.32),(50,'2024-09-12','675611','Importers','S','Wal-Mart','9412189075','73','Cholinesterase inhibitors','Galantamine (Razadyne)','mg',12.00,460.00,459.00,261.00,120060.00,0.00,14407.20,134467.20,134467.20,292.32),(51,'2024-09-12','090909095','Wholesalers','F','Cardinal Health','8217612569','72','Cholinesterase inhibitors','Rivastigmine (Exelon)','mL',12.00,483.00,481.00,123.50,59650.50,0.00,7158.06,66808.56,66808.56,138.32),(52,'2024-09-12','7387','Exporters','L','Sandoz (a Novartis division)','7897262490','71','Cholinesterase inhibitors','Donepezil (Aricept)','mg',12.00,367.00,364.00,21.50,7890.50,0.00,946.86,8837.36,8837.36,24.08),(53,'2024-09-12','0856767','Manufacturers','D','Roche','5135607750','74','Cholinesterase inhibitors','Tacrine (Cognex)','mL',12.00,487.00,484.00,291.50,141960.50,0.00,17035.26,158995.76,158995.76,326.48),(54,'2024-09-12','6667342','Manufacturers','B','Johnson & Johnson','8211107750','75','Cholinesterase inhibitors','Physostigmine','mg',12.00,389.00,386.00,521.50,202863.50,40.00,24343.62,227207.12,227247.12,584.18),(55,'2024-09-12','65465','Wholesalers','K','Mezorays Pharma','7272189011','84','Hallucinogen','LSD (Lysergic Acid Diethylamid','mL',20.00,421.00,420.00,997.00,419737.00,0.00,83947.40,503684.40,503684.40,1196.40),(56,'2024-09-12','45646','Exporters','L','Sandoz (a Novartis division)','7897262490','85','Hallucinogen','Psilocybin','mL',20.00,428.00,426.00,57.00,24396.00,0.00,4879.20,29275.20,29275.20,68.40),(57,'2024-09-12','7897','Importers','Q','CVS Health','9412189928','86','Hallucinogen','DMT (Dimethyltryptamine)','mL',20.00,656.00,652.00,57.00,37392.00,0.00,7478.40,44870.40,44870.40,68.40),(58,'2024-09-13','8764','Wholesalers','G','McKesson Corporation','7163612569','87','Hallucinogen','Mescaline','mL',20.00,578.00,576.00,297.00,171666.00,0.00,34333.20,205999.20,205999.20,356.40),(59,'2024-09-13','6541','Importers','Q','CVS Health','9412189928','88','Hallucinogen','MDMA (Ecstasy/Molly)','mL',20.00,123.00,120.00,425.00,52275.00,6.00,10455.00,62730.00,62736.00,510.05),(60,'2024-09-13','564654','Manufacturers','A','Ria Lifesciences Pvt Ltd.','9411107750','79','Inhalant','Vicks Balm','mL',18.00,400.00,398.00,84.00,33600.00,10.00,6048.00,39648.00,39658.00,99.14),(61,'2024-09-13','65546','Manufacturers','A','Ria Lifesciences Pvt Ltd.','9411107750','77','Inhalant','Vicks Inhaler','mL',18.00,300.00,297.00,61.00,18300.00,5.00,3294.00,21594.00,21599.00,72.00),(62,'2024-09-13','879546','Wholesalers','G','McKesson Corporation','7163612569','76','Inhalant','Vicks Vaporub','g',18.00,456.00,454.00,16.00,7296.00,5.00,1313.28,8609.28,8614.28,18.89),(63,'2024-09-13','897445','Manufacturers','B','Johnson & Johnson','8211107750','28','Antivirals','Acyclovir (Zovirax)','mL',12.00,412.00,411.00,229.00,94348.00,5.00,11321.76,105669.76,105674.76,256.49),(64,'2024-09-13','8765444','Wholesalers','G','McKesson Corporation','7163612569','26','Antivirals','Abreva (Docosanol)','mL',12.00,369.00,361.00,29.00,10701.00,5.00,1284.12,11985.12,11990.12,32.49),(65,'0000-00-00','','','','','','','','','',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(66,'0000-00-00','','','','','','','','','',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(67,'0000-00-00','','','','','','','','','',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(68,'0000-00-00','','','','','','','','','',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(69,'0000-00-00','','','','','','','','','',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(70,'2024-09-14','655','Wholesalers','H','AmerisourceBergen','7272612569','7','Antibacterials','Neosporin ointment','ml',12.00,50.00,50.00,60.00,3000.00,2.00,360.00,3360.00,3362.00,67.24),(71,'0000-00-00','','','','','','','','','',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(72,'0000-00-00','','','','','','','','','',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(73,'0000-00-00','','','','','','','','','',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(74,'0000-00-00','','','','','','','','','',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(75,'0000-00-00','','','','','','','','','',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(76,'0000-00-00','','','','','','','','','',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(77,'0000-00-00','','','','','','','','','',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00),(78,'0000-00-00','','','','','','','','','',0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00);
/*!40000 ALTER TABLE `purchase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale`
--

DROP TABLE IF EXISTS `sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sale` (
  `saleid` int(11) NOT NULL AUTO_INCREMENT,
  `sdate` date DEFAULT NULL,
  `invoice` varchar(30) DEFAULT NULL,
  `customercategory` varchar(30) DEFAULT NULL,
  `customercode` varchar(30) DEFAULT NULL,
  `customername` varchar(30) DEFAULT NULL,
  `customermobile` varchar(30) DEFAULT NULL,
  `drugcode` varchar(30) DEFAULT NULL,
  `drugname` varchar(30) DEFAULT NULL,
  `drugcategory` varchar(30) DEFAULT NULL,
  `unit` varchar(30) DEFAULT NULL,
  `gstrate` decimal(5,2) DEFAULT NULL,
  `drugquantity` decimal(10,2) DEFAULT NULL,
  `drugprice` decimal(10,2) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `marginpercent` decimal(10,2) DEFAULT NULL,
  `gst` decimal(10,2) DEFAULT NULL,
  `netamount` decimal(10,2) DEFAULT NULL,
  `freight` decimal(10,2) DEFAULT NULL,
  `grandamount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`saleid`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale`
--

LOCK TABLES `sale` WRITE;
/*!40000 ALTER TABLE `sale` DISABLE KEYS */;
INSERT INTO `sale` VALUES (1,'2024-08-23','1','REGULAR','C','Girpade Gudarphate','+91-7834643753','100','Band-Aid','General','qty',NULL,5.00,18.23,91.15,3.00,NULL,91.15,0.00,NULL),(2,'2024-08-23','12','REGULAR','D','Madhuri Dixit','+91-8984357845','78','Vicks Inhaler Advanced','Inhalant','mL',NULL,1.00,62.59,62.59,2.00,NULL,64.59,2.00,NULL),(3,'2024-08-23','123','REGULAR','E','Customer Special','+91-2984677845','2','Aspirin (Acetylsalicylic Acid)','Analgesics','mg',NULL,4.00,24.65,98.60,2.00,NULL,98.60,0.00,NULL),(4,'2024-08-24','1234','REGULAR','F','Malhotra Sahab','+91-8952678845','103','Surgical Masks','General','qty',NULL,5.00,11.92,59.60,1.00,NULL,59.60,0.00,NULL),(5,'2024-08-24','2','EMPLOYEE','J','Ankit Tiwari','+91-1314357845','100','Band-Aid','General','qty',NULL,2.00,18.05,36.10,2.00,NULL,36.10,0.00,NULL),(6,'2024-08-24','3','REGULAR','G','Sahib-E-Alam','+91-1234357845','1','Paracetamol (Acetaminophen)','Analgesics','mg',NULL,1.00,119.43,119.43,2.00,NULL,119.43,0.00,NULL),(7,'2024-08-24','4','REGULAR','I','Pulkit Pokhral','+91-9101357845','7','Neosporin ointment','Antibacterials','ml',NULL,2.00,68.78,137.56,2.00,NULL,137.56,0.00,NULL),(8,'2024-08-24','5','REGULAR','C','Girpade Gudarphate','+91-7834643753','14','Escitalopram (Lexapro) (Zoloft','Antidepressants','mL',NULL,1.00,144.80,144.80,2.00,NULL,144.80,0.00,NULL),(9,'2024-08-25','6','REGULAR','C','Girpade Gudarphate','+91-7834643753','78','Vicks Inhaler Advanced','Inhalant','mL',NULL,2.00,62.59,125.18,2.00,NULL,125.18,0.00,NULL),(10,'2024-08-25','7','REGULAR','D','Madhuri Dixit','+91-8984357845','81','Zandu Balm Blue','Inhalant','qty',NULL,2.00,52.96,105.92,2.00,NULL,105.92,0.00,NULL),(11,'2024-08-25','697','REGULAR','B','Shyam Guldastewala','+91-9369997345','100','Band-Aid','General','qty',NULL,4.00,18.05,72.20,2.00,NULL,72.20,0.00,NULL),(12,'2024-08-25','645646','REGULAR','A','Ria Malhotra','+91-9365453385','99','Bandage','General','m',NULL,2.00,102.31,204.62,2.00,NULL,204.62,0.00,NULL),(13,'2024-08-25','6757','REGULAR','L','Prajjwal Rathore','+91-4465357845','6','Saridon','Analgesics','mg',NULL,2.00,183.60,367.20,2.00,NULL,367.20,0.00,NULL),(14,'2024-08-25','54','REGULAR','Z','Melantina Getasdrool','+91-4563218972','81','Zandu Balm Blue','Inhalant','qty',NULL,2.00,52.96,105.92,2.00,NULL,105.92,0.00,NULL),(15,'2024-08-25','77777','VIP','AA','Hon. Kirti Kamal Bhardwaj','+91-6498810023','64','Loratadine (Claritin)','Antihistamines','mL',NULL,5.00,52.42,262.10,4.00,NULL,263.10,1.00,NULL),(16,'2024-08-25','675675','INTERDICTED','S','Pav Bhaji Wali','+91-6966996666','49','Oxycodone','Opioid','mL',NULL,69.00,36.00,2484.00,20.00,NULL,2504.00,20.00,NULL),(17,'2024-08-26','234','REGULAR','M','Saina Rathore','+91-1258795684','80','Zandu Balm Red','Inhalant','mL',NULL,4.00,43.33,173.32,2.00,NULL,173.32,0.00,NULL),(19,'2024-08-26','554','VIP','Q','Private XQZ','+XX-XXXXXXXXXX','64','Loratadine (Claritin)','Antihistamines','mL',NULL,15.00,51.41,771.15,2.00,NULL,771.15,0.00,NULL),(20,'2024-08-26','7686','INTERDICTED','S','Pav Bhaji Wali','+91-6966996666','50','Codeine','Opioid','mL',NULL,40.00,177.48,7099.20,2.00,NULL,7099.20,0.00,NULL),(21,'2024-08-26','567','OTHERS...','H','Alfahad Malik','+91-5678357845','38','Amobarbital (Amytal)','Barbiturates','mg',NULL,12.00,315.03,3780.36,8.00,NULL,3780.36,0.00,NULL),(22,'2024-08-26','6786','VIP','P','Cannot Reveal Name','+XX-XXXXXXXXXX','105','Luxturna (voretigene neparvove','GENE THERAPY DRUGS','Others...',NULL,1.00,86240314.28,86240314.28,10.00,NULL,86330314.28,90000.00,NULL),(23,'2024-08-26','76867','REGULAR','N','Merry Jilli','+91-3598757848','52','Caffeine','Stimulant','mL',NULL,5.00,29.01,145.05,2.00,NULL,145.05,0.00,NULL),(24,'2024-08-27','657','REGULAR','O','Terry Lilli','+91-1654584654','18','Glybera','Drug','mL',NULL,4.00,30.09,120.36,2.00,NULL,120.36,0.00,NULL),(25,'2024-08-27','7684','REGULAR','R','Dolly Chai Wala','+91-6969696969','18','Glybera','Drug','mL',NULL,1.00,30.09,30.09,2.00,NULL,30.09,0.00,NULL),(26,'2024-08-27','7684','REGULAR','R','Dolly Chai Wala','+91-6969696969','14','Escitalopram (Lexapro) (Zoloft','Antidepressants','mL',NULL,14.00,144.80,2027.20,2.00,NULL,2027.20,0.00,NULL),(27,'2024-08-27','74633','REGULAR','T','IIT Momo Wala','+91-7544464466','31','Ciprofloxacin (Cipro)','Antibiotics','mL',NULL,3.00,162.30,486.90,2.00,NULL,486.90,0.00,NULL),(28,'2024-08-27','74633','REGULAR','T','IIT Momo Wala','+91-7544464466','102','Cotton Buds','General','kg',NULL,3.00,6.02,18.06,2.00,NULL,18.06,0.00,NULL),(29,'2024-08-27','74633','REGULAR','U','MIT Vada Pav Wala','+91-6589745821','100','Band-Aid','General','qty',NULL,3.00,18.59,55.77,5.00,NULL,55.77,0.00,NULL),(30,'2024-08-27','74633','REGULAR','U','MIT Vada Pav Wala','+91-6589745821','103','Surgical Masks','General','qty',NULL,7.00,12.39,86.73,5.00,NULL,86.73,0.00,NULL),(31,'2024-08-27','34534','REGULAR','U','MIT Vada Pav Wala','+91-6589745821','101','Tape','General','cm',NULL,2.00,25.41,50.82,5.00,NULL,50.82,0.00,NULL),(32,'2024-08-27','34534','REGULAR','V','UPSC Chai Wala','+91-3852496274','81','Zandu Balm Blue','Inhalant','qty',NULL,50.00,54.52,2726.00,5.00,NULL,2726.00,0.00,NULL),(33,'2024-08-28','657234','REGULAR','X','AIIMS Malai Chaap Wala','+91-6236549875','100','Band-Aid','General','qty',NULL,5.00,18.05,90.25,2.00,NULL,90.25,0.00,NULL),(34,'2024-08-28','54654','REGULAR','Y','Yusuf Dadar Haveli','+91-7539516482','99','Bandage','General','m',NULL,5.00,102.31,511.55,2.00,NULL,511.55,0.00,NULL),(35,'2024-08-28','54611','REGULAR','Z','Melantina Getasdrool','+91-4563218972','101','Tape','General','cm',NULL,5.00,24.68,123.40,2.00,NULL,123.40,0.00,NULL),(36,'2024-08-28','212','REGULAR','A','Ria Malhotra','+91-9365453385','82','Zandu Balm Green','Inhalant','qty',NULL,1.00,92.68,92.68,2.00,NULL,92.68,0.00,NULL),(37,'2024-08-28','563434','REGULAR','B','Shyam Guldastewala','+91-9369997345','80','Zandu Balm Red','Inhalant','mL',NULL,2.00,43.33,86.66,2.00,NULL,86.66,0.00,NULL),(38,'2024-08-28','4343462','REGULAR','O','Terry Lilli','+91-1654584654','2','Aspirin (Acetylsalicylic Acid)','Analgesics','mg',NULL,16.00,24.65,394.40,2.00,NULL,394.40,0.00,NULL),(39,'2024-08-28','34241','REGULAR','V','UPSC Chai Wala','+91-3852496274','23','Fosmanogepix','Antifungals','mg',NULL,14.00,80.28,1123.92,2.00,NULL,1123.92,0.00,NULL),(40,'2024-08-28','44314','REGULAR','B','Shyam Guldastewala','+91-9369997345','78','Vicks Inhaler Advanced','Inhalant','mL',NULL,3.00,62.59,187.77,2.00,NULL,187.77,0.00,NULL),(41,'2024-08-28','6555','REGULAR','C','Girpade Gudarphate','+91-7834643753','82','Zandu Balm Green','Inhalant','qty',NULL,3.00,92.68,278.04,2.00,NULL,278.04,0.00,NULL),(42,'2024-08-28','23232','OTHERS...','H','Alfahad Malik','+91-5678357845','82','Zandu Balm Green','Antibiotics','qty',NULL,3.00,92.68,278.04,2.00,NULL,278.04,0.00,NULL),(43,'2024-08-28','214423','REGULAR','E','Customer Special','+91-2984677845','14','Escitalopram (Lexapro) (Zoloft','Antidepressants','mL',NULL,1.00,144.80,144.80,2.00,NULL,144.80,0.00,NULL),(44,'2024-08-28','2343','EMPLOYEE','J','Ankit Tiwari','+91-1314357845','51','Fentanyl','Opioid','mL',NULL,15.00,813.96,12209.40,2.00,NULL,12209.40,0.00,NULL),(45,'2024-08-29','76577','REGULAR','B','Shyam Guldastewala','+91-9369997345','102','Cotton Buds','General','kg',NULL,45.00,6.02,270.90,2.00,NULL,270.90,0.00,NULL),(46,'2024-08-29','76577','REGULAR','F','Malhotra Sahab','+91-8952678845','101','Tape','General','cm',NULL,1.00,24.68,24.68,2.00,NULL,24.68,0.00,NULL),(47,'2024-08-29','88881','VIP','P','Cannot Reveal Name','+XX-XXXXXXXXXX','38','Amobarbital (Amytal)','Barbiturates','mg',NULL,1.00,350.03,350.03,20.00,NULL,350.03,0.00,NULL),(48,'2024-08-29','6969666','VIP','AB','Yadhirubhai Yambani','+91-6929012345','52','Caffeine','Stimulant','mL',NULL,30.00,54.04,1621.20,90.00,NULL,1621.20,0.00,NULL),(50,'2024-08-29','78587','REGULAR','G','Sahib-E-Alam','+91-1234357845','31','Ciprofloxacin (Cipro)','Antibiotics','mL',NULL,3.00,162.30,486.90,2.00,NULL,486.90,0.00,NULL),(51,'2024-08-29','700','REGULAR','L','Prajjwal Rathore','+91-4465357845','18','Glybera','Drug','mL',NULL,2.00,30.09,60.18,2.00,NULL,60.18,0.00,NULL),(52,'2024-08-29','57700','REGULAR','M','Saina Rathore','+91-1258795684','19','Soliris (Eculizumab)','Drug','mL',NULL,2.00,114.47,228.94,2.00,NULL,228.94,0.00,NULL),(53,'2024-08-29','0909098','REGULAR','N','Merry Jilli','+91-3598757848','103','Surgical Masks','General','qty',NULL,20.00,12.04,240.80,2.00,NULL,240.80,0.00,NULL),(54,'2024-08-30','12098','REGULAR','O','Terry Lilli','+91-1654584654','52','Caffeine','Stimulant','mL',NULL,3.00,29.01,87.03,2.00,NULL,87.03,0.00,NULL),(55,'2024-09-01','323213','REGULAR','U','MIT Vada Pav Wala','+91-6589745821','2','Aspirin (Acetylsalicylic Acid)','Analgesics','mg',NULL,1.00,24.65,24.65,2.00,NULL,27.65,3.00,NULL),(56,'2024-09-01','refref42','REGULAR','A','Ria Malhotra','+91-9365453385','1','Paracetamol (Acetaminophen)','Analgesics','mg',NULL,2.00,119.43,238.86,2.00,NULL,238.86,0.00,NULL),(57,'2024-09-01','34545','REGULAR','B','Shyam Guldastewala','+91-9369997345','6','Saridon','Analgesics','mg',NULL,1.00,183.60,183.60,2.00,NULL,185.60,2.00,NULL),(58,'2024-09-01','823749238','REGULAR','G','Sahib-E-Alam','+91-1234357845','7','Neosporin ointment','Antibacterials','ml',NULL,1.00,68.78,68.78,2.00,NULL,73.78,5.00,NULL),(59,'2024-09-02','84738','REGULAR','L','Prajjwal Rathore','+91-4465357845','14','Escitalopram (Lexapro) (Zoloft','Antidepressants','mL',NULL,1.00,144.80,144.80,2.00,NULL,149.80,5.00,NULL),(60,'2024-09-02','48973494','REGULAR','L','Prajjwal Rathore','+91-4465357845','13','Fluoxetine (Prozac)','Antidepressants','mL',NULL,3.00,545.70,1637.10,2.00,NULL,1642.10,5.00,NULL),(61,'2024-09-02','8574','REGULAR','Z','Melantina Getasdrool','+91-4563218972','19','Soliris (Eculizumab)','Drug','mL',NULL,1.00,114.47,114.47,2.00,NULL,114.47,0.00,NULL),(62,'2024-09-02','58734859','REGULAR','Y','Yusuf Dadar Haveli','+91-7539516482','18','Glybera','Drug','mL',NULL,2.00,30.09,60.18,2.00,NULL,60.18,0.00,NULL),(63,'2024-09-02','6483','REGULAR','X','AIIMS Malai Chaap Wala','+91-6236549875','100','Band-Aid','General','qty',NULL,1.00,18.05,18.05,2.00,NULL,18.05,0.00,NULL),(64,'2024-09-02','e3642876482','REGULAR','V','UPSC Chai Wala','+91-3852496274','102','Cotton Buds','General','kg',NULL,2.00,6.02,12.04,2.00,NULL,12.04,0.00,NULL),(65,'2024-09-02','3682','REGULAR','U','MIT Vada Pav Wala','+91-6589745821','103','Surgical Masks','General','qty',NULL,2.00,12.04,24.08,2.00,NULL,24.08,0.00,NULL),(66,'2024-09-03','7648723','REGULAR','T','IIT Momo Wala','+91-7544464466','101','Tape','General','cm',NULL,3.00,24.68,74.04,2.00,NULL,74.04,0.00,NULL),(67,'2024-09-03','876423','REGULAR','R','Dolly Chai Wala','+91-6969696969','99','Bandage','General','m',NULL,5.00,105.31,526.55,5.00,NULL,526.55,0.00,NULL),(68,'2024-09-04','4554','OTHERS...','H','Alfahad Malik','+91-5678357845','23','Fosmanogepix','Antifungals','mg',NULL,3.00,80.28,240.84,2.00,NULL,240.84,0.00,NULL),(69,'2024-09-04','56546','OTHERS...','H','Alfahad Malik','+91-5678357845','31','Ciprofloxacin (Cipro)','Antibiotics','mL',NULL,2.00,162.30,324.60,2.00,NULL,324.60,0.00,NULL),(70,'2024-09-04','347234','EMPLOYEE','J','Ankit Tiwari','+91-1314357845','38','Amobarbital (Amytal)','Barbiturates','mg',NULL,7.00,291.98,2043.86,0.10,NULL,2043.86,0.00,NULL),(71,'2024-09-04','45435','VIP','Q','Private XQZ','+XX-XXXXXXXXXX','78','Vicks Inhaler Advanced','Inhalant','mL',NULL,7.00,73.63,515.41,20.00,NULL,515.41,0.00,NULL),(72,'2024-09-04','6573','VIP','AA','Hon. Kirti Kamal Bhardwaj','+91-6498810023','81','Zandu Balm Blue','Inhalant','qty',NULL,2.00,62.30,124.60,20.00,NULL,124.60,0.00,NULL),(73,'2024-09-04','56657','REGULAR','N','Merry Jilli','+91-3598757848','83','Nepali Balm','Inhalant','qty',NULL,3.00,50.55,151.65,2.00,NULL,151.65,0.00,NULL),(74,'2024-09-04','567','REGULAR','O','Terry Lilli','+91-1654584654','82','Zandu Balm Green','Inhalant','qty',NULL,1.00,92.68,92.68,2.00,NULL,92.68,0.00,NULL),(75,'2024-09-04','345232','REGULAR','N','Merry Jilli','+91-3598757848','80','Zandu Balm Red','Inhalant','mL',NULL,4.00,43.33,173.32,2.00,NULL,173.32,0.00,NULL),(76,'2024-09-05','3534f','REGULAR','L','Prajjwal Rathore','+91-4465357845','79','Vicks Balm','Inhalant','mL',NULL,2.00,101.12,202.24,2.00,NULL,202.24,0.00,NULL),(77,'2024-09-05','54rtg','EMPLOYEE','J','Ankit Tiwari','+91-1314357845','77','Vicks Inhaler','Inhalant','mL',NULL,3.00,72.07,216.21,0.10,NULL,216.21,0.00,NULL),(78,'2024-09-05','5464fg','OTHERS...','H','Alfahad Malik','+91-5678357845','76','Vicks Vaporub','Inhalant','g',NULL,2.00,19.27,38.54,2.00,NULL,38.54,0.00,NULL),(79,'2024-09-05','454rftf','REGULAR','B','Shyam Guldastewala','+91-9369997345','64','Loratadine (Claritin)','Antihistamines','mL',NULL,2.00,51.41,102.82,2.00,NULL,102.82,0.00,NULL),(80,'2024-09-05','3454f','INTERDICTED','I','Pulkit Pokhral','+91-9101357845','49','Oxycodone','Opioid','mL',NULL,50.00,75.00,3750.00,150.00,NULL,5750.00,2000.00,NULL),(81,'2024-09-05','45654tg54f','INTERDICTED','S','Pav Bhaji Wali','+91-6966996666','48','Morphine','Opioid','mL',NULL,45.00,197.21,8874.45,98.00,NULL,10874.45,2000.00,NULL),(82,'2024-09-05','435r','INTERDICTED','W','MBBS International Bhikhari','+23-5784962105','50','Codeine','Opioid','mL',NULL,45.00,271.44,12214.80,56.00,NULL,15003.80,2789.00,NULL),(83,'2024-09-05','654tf','INTERDICTED','S','Pav Bhaji Wali','+91-6966996666','51','Fentanyl','Opioid','mL',NULL,37.00,2497.74,92416.38,213.00,NULL,100239.38,7823.00,NULL),(84,'2024-09-05','564g','VIP','AA','Hon. Kirti Kamal Bhardwaj','+91-6498810023','104','Zolgensma','GENE THERAPY DRUGS','Others...',NULL,1.00,99999999.99,99999999.99,20.00,NULL,99999999.99,300.00,NULL),(85,'2024-09-05','56456gfvd','VIP','AB','Yadhirubhai Yambani','+91-6929012345','105','Luxturna (voretigene neparvove','GENE THERAPY DRUGS','Others...',NULL,1.00,94864345.71,94864345.71,21.00,NULL,94864645.71,300.00,NULL),(86,'2024-09-05','786g','OTHERS...','H','Alfahad Malik','+91-5678357845','52','Caffeine','Stimulant','mL',NULL,2.00,29.01,58.02,2.00,NULL,58.02,0.00,NULL),(87,'2024-09-06','45trg','REGULAR','F','Malhotra Sahab','+91-8952678845','55','Nicotine','Stimulant','g',NULL,3.00,1208.71,3626.13,2.00,NULL,3626.13,0.00,NULL),(88,'2024-09-06','4rfefde','REGULAR','E','Customer Special','+91-2984677845','53','Amphetamine (Adderall)','Stimulant','mL',NULL,1.00,259.89,259.89,2.00,NULL,259.89,0.00,NULL),(89,'2024-09-06','545fewd','REGULAR','M','Saina Rathore','+91-1258795684','54','Methylphenidate (Ritalin, Conc','Stimulant','mL',NULL,2.00,151.08,302.16,2.00,NULL,302.16,0.00,NULL),(90,'2024-09-07','54ferd','REGULAR','N','Merry Jilli','+91-3598757848','45','Sevoflurane','General anesthetics','mL',NULL,2.00,1142.40,2284.80,2.00,NULL,2284.80,0.00,NULL),(91,'2024-09-07','55erfd','REGULAR','N','Merry Jilli','+91-3598757848','46','Chloroform','General anesthetics','mL',NULL,2.00,2970.39,5940.78,2.00,NULL,5940.78,0.00,NULL),(92,'2024-09-07','5464tref','EMPLOYEE','J','Ankit Tiwari','+91-1314357845','47','Isoflurane','General anesthetics','mL',NULL,1.00,2856.33,2856.33,2.00,NULL,2856.33,0.00,NULL),(93,'2024-09-07','3453','REGULAR','B','Shyam Guldastewala','+91-9369997345','73','Galantamine (Razadyne)','Cholinesterase inhibitors','mg',NULL,1.00,298.17,298.17,2.00,NULL,298.17,0.00,NULL),(94,'2024-09-08','45trefer','REGULAR','F','Malhotra Sahab','+91-8952678845','72','Rivastigmine (Exelon)','Cholinesterase inhibitors','mL',NULL,2.00,141.09,282.18,2.00,NULL,282.18,0.00,NULL),(95,'2024-09-08','564trf','REGULAR','B','Shyam Guldastewala','+91-9369997345','71','Donepezil (Aricept)','Cholinesterase inhibitors','mg',NULL,3.00,24.56,73.68,2.00,NULL,73.68,0.00,NULL),(96,'2024-09-08','3455rfrf','REGULAR','N','Merry Jilli','+91-3598757848','74','Tacrine (Cognex)','Cholinesterase inhibitors','mL',NULL,3.00,333.01,999.03,2.00,NULL,999.03,0.00,NULL),(97,'2024-09-08','56refre','REGULAR','E','Customer Special','+91-2984677845','75','Physostigmine','Cholinesterase inhibitors','mg',NULL,3.00,595.86,1787.58,2.00,NULL,1787.58,0.00,NULL),(98,'2024-09-08','5444rer','REGULAR','R','Dolly Chai Wala','+91-6969696969','84','LSD (Lysergic Acid Diethylamid','Hallucinogen','mL',NULL,1.00,1220.33,1220.33,2.00,NULL,1220.33,0.00,NULL),(99,'2024-09-08','55refrer','REGULAR','N','Merry Jilli','+91-3598757848','85','Psilocybin','Hallucinogen','mL',NULL,2.00,69.77,139.54,2.00,NULL,139.54,0.00,NULL),(100,'2024-09-08','56t5erfr','EMPLOYEE','I','Pulkit Pokhral','+91-9101357845','86','DMT (Dimethyltryptamine)','Hallucinogen','mL',NULL,4.00,69.77,279.08,2.00,NULL,279.08,0.00,NULL),(101,'2024-09-08','3554rt','OTHERS...','H','Alfahad Malik','+91-5678357845','87','Mescaline','Hallucinogen','mL',NULL,2.00,363.53,727.06,2.00,NULL,727.06,0.00,NULL),(102,'2024-09-08','5646terfe','OTHERS...','H','Alfahad Malik','+91-5678357845','88','MDMA (Ecstasy/Molly)','Hallucinogen','mL',NULL,3.00,520.25,1560.75,2.00,NULL,1560.75,0.00,NULL),(103,'2024-09-09','565tgref','REGULAR','F','Malhotra Sahab','+91-8952678845','28','Acyclovir (Zovirax)','Antivirals','mL',NULL,1.00,261.62,261.62,2.00,NULL,261.62,0.00,NULL),(104,'2024-09-09','443r4edf','REGULAR','M','Saina Rathore','+91-1258795684','26','Abreva (Docosanol)','Antivirals','mL',NULL,8.00,33.46,267.68,3.00,NULL,267.68,0.00,NULL);
/*!40000 ALTER TABLE `sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplier` (
  `supplierid` int(11) NOT NULL AUTO_INCREMENT,
  `suppliercode` varchar(30) DEFAULT NULL,
  `suppliername` varchar(30) DEFAULT NULL,
  `suppliermobile` varchar(15) DEFAULT NULL,
  `suppliercategory` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`supplierid`),
  UNIQUE KEY `suppliercode` (`suppliercode`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'A','Ria Lifesciences Pvt Ltd.','9411107750','Manufacturers'),(2,'B','Johnson & Johnson','8211107750','Manufacturers'),(3,'C','Novartis','8172107750','Manufacturers'),(4,'D','Roche','5135607750','Manufacturers'),(5,'E','Merck & Co., Inc. (known as MS','9371107750','Manufacturers'),(6,'F','Cardinal Health','8217612569','Wholesalers'),(7,'G','McKesson Corporation','7163612569','Wholesalers'),(8,'H','AmerisourceBergen','7272612569','Wholesalers'),(9,'I','Cencora (formerly known as All','8162512569','Wholesalers'),(10,'J','H.D. Smith','7117612569','Wholesalers'),(11,'K','Mezorays Pharma','7272189011','Wholesalers'),(12,'L','Sandoz (a Novartis division)','7897262490','Exporters'),(13,'M','Teva Pharmaceuticals','8291235490','Exporters'),(14,'N','Sun Pharmaceutical Industries','8162235490','Exporters'),(15,'O','Nexford Healthcare Pvt Ltd.','8161235490','Exporters'),(16,'P','Mylan (now part of Viatris)','5226235493','Exporters'),(17,'Q','CVS Health','9412189928','Importers'),(18,'R','Walgreens Boots Alliance','7412189011','Importers'),(19,'S','Wal-Mart','9412189075','Importers'),(20,'T','Mezorays Pharma','8172789011','Importers'),(21,'U','Rite Aid','7262618901','Importers'),(22,'V','Thermo Fisher Scientific','8272636627','Others...'),(23,'W','Charles River Laboratories','7262636278','Others...'),(24,'X','WuXi AppTec','9173638227','Others...'),(25,'Y','Labcorp','7183363937','Others...'),(26,'Z','Syneos Health','9172737283','Others...');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliercategory`
--

DROP TABLE IF EXISTS `suppliercategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suppliercategory` (
  `suppliercategoryid` int(11) NOT NULL AUTO_INCREMENT,
  `suppliercategory` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`suppliercategoryid`),
  UNIQUE KEY `suppliercategory` (`suppliercategory`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliercategory`
--

LOCK TABLES `suppliercategory` WRITE;
/*!40000 ALTER TABLE `suppliercategory` DISABLE KEYS */;
INSERT INTO `suppliercategory` VALUES (4,'Exporters'),(3,'Importers'),(2,'Manufacturers'),(5,'Others...'),(1,'Wholesalers');
/*!40000 ALTER TABLE `suppliercategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unit`
--

DROP TABLE IF EXISTS `unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unit` (
  `unitid` int(11) NOT NULL AUTO_INCREMENT,
  `unit` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`unitid`),
  UNIQUE KEY `unit` (`unit`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unit`
--

LOCK TABLES `unit` WRITE;
/*!40000 ALTER TABLE `unit` DISABLE KEYS */;
INSERT INTO `unit` VALUES (7,'cm'),(3,'g'),(5,'kg'),(4,'L'),(6,'m'),(2,'mg'),(1,'mL'),(9,'Others...'),(8,'qty');
/*!40000 ALTER TABLE `unit` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-28 17:06:04
