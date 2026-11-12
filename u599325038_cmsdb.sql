/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.10-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: u599325038_cmsdb
-- ------------------------------------------------------
-- Server version	10.11.10-MariaDB-log

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
-- Table structure for table `allumni_testimonies`
--

DROP TABLE IF EXISTS `allumni_testimonies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `allumni_testimonies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `comment` text NOT NULL,
  `path` varchar(125) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allumni_testimonies`
--

/*!40000 ALTER TABLE `allumni_testimonies` DISABLE KEYS */;
/*!40000 ALTER TABLE `allumni_testimonies` ENABLE KEYS */;

--
-- Table structure for table `cms_contacts`
--

DROP TABLE IF EXISTS `cms_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_number` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_contacts`
--

/*!40000 ALTER TABLE `cms_contacts` DISABLE KEYS */;
INSERT INTO `cms_contacts` VALUES
(1,'7118-0050'),
(2,'8277-6754'),
(3,'7255-5879'),
(4,'8921-9766');
/*!40000 ALTER TABLE `cms_contacts` ENABLE KEYS */;

--
-- Table structure for table `cms_table`
--

DROP TABLE IF EXISTS `cms_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_table` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `mission_title` varchar(70) NOT NULL,
  `vision_title` varchar(70) NOT NULL,
  `mission` text NOT NULL,
  `vision` text NOT NULL,
  `icon` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_table`
--

/*!40000 ALTER TABLE `cms_table` DISABLE KEYS */;
INSERT INTO `cms_table` VALUES
(1,'Twinkle Toes Academy, Inc.','Our Mission','Our School Philosophy','We endeavor, through our Pre-School and Grade School programs, to sustain the healthy development of the child\'s cognitive, social, emotional and physical skills that will develop him/her to his/her fullest potential in order for him/her to live adequately and readily face life\'s challenges as he/she participates as a valuable member in a rapidly changing society.','Twinkle Toes Academy, Inc. was established to provide a holistic education that will develop fundamental skills, attitudes and moral values to build a foundation for lifelong achievements, thereby enhancing a child\'s life opportunities in the society he/she serves.','public/images/logo.png','83 & 84 Bignay Sts., Quirino 2A, QC.','www.facebook.com/ttaiconnect','www.twitter.com/twinkletoesdev','www.instagram.com/twinkle_toes_inc');
/*!40000 ALTER TABLE `cms_table` ENABLE KEYS */;

--
-- Table structure for table `gallery_dtl`
--

DROP TABLE IF EXISTS `gallery_dtl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gallery_dtl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gallery_id` int(11) NOT NULL,
  `path` varchar(125) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gallery` (`gallery_id`),
  CONSTRAINT `gallery` FOREIGN KEY (`gallery_id`) REFERENCES `gallery_hdr` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_dtl`
--

/*!40000 ALTER TABLE `gallery_dtl` DISABLE KEYS */;
INSERT INTO `gallery_dtl` VALUES
(41,9,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1652964924.jpeg'),
(42,9,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1652964928.jpeg'),
(43,9,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1652964931.jpeg'),
(44,9,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1652964935.jpeg'),
(52,6,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1652965028.jpeg'),
(53,6,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1652965031.jpeg'),
(54,6,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1652965033.jpeg'),
(55,6,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1652965037.jpeg'),
(56,5,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1652965059.jpeg'),
(57,5,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1652965069.jpeg'),
(58,5,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1652965074.jpeg'),
(59,5,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1652965081.jpeg'),
(76,6,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1654745819.jpeg'),
(79,9,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1654746025.jpeg'),
(81,3,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1711942678.jpg'),
(84,13,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1711945293.jpg'),
(85,13,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1711945333.jpg'),
(86,13,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1711945342.jpg'),
(87,7,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1711946318.jpg'),
(88,6,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1711946828.jpg'),
(89,6,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1711946840.jpg'),
(90,6,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1711946846.jpg'),
(91,6,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1711946858.jpg'),
(92,8,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1711947343.jpg'),
(93,8,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1711947349.jpg'),
(94,8,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1711947359.jpeg'),
(95,8,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1711947365.jpg'),
(96,8,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1711947371.jpg'),
(97,13,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1711947795.jpg'),
(98,13,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1711947801.jpg'),
(99,7,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1711948214.jpg'),
(100,7,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1711948221.jpg'),
(101,3,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1711949689.jpg'),
(102,3,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1712049731.jpg'),
(103,3,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1712049776.jpg'),
(104,3,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1712049797.jpg'),
(105,8,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1712049912.jpg'),
(106,8,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1712049939.jpg'),
(107,8,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1712049946.jpg'),
(108,14,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1715324569.JPG'),
(109,14,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1715324577.JPG'),
(110,14,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1715324587.JPG'),
(112,14,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1715325164.JPG'),
(113,14,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1715325178.JPG'),
(114,14,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1715325203.JPG'),
(115,5,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1715326108.jpg'),
(116,5,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1715326131.jpg'),
(117,15,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1715741383.png'),
(118,16,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1715741518.png'),
(122,15,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1745469381.jpg'),
(123,20,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1745909591.JPG'),
(124,20,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1745909616.JPG'),
(125,20,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1745909629.JPG'),
(126,20,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1745909640.JPG'),
(127,20,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1745909670.JPG'),
(128,20,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1745909681.JPG'),
(129,20,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1745909861.JPG'),
(130,3,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1745910748.JPG'),
(131,3,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1745910766.JPG'),
(132,3,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1745910785.JPG'),
(133,3,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1745910808.JPG'),
(135,3,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1745910832.JPG'),
(136,3,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1745910853.JPG'),
(137,3,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1745910862.JPG'),
(138,3,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1745910874.JPG'),
(139,3,'https://twinkletoesacademyinc.edu.ph/public/cms/gallery/1745910878.JPG');
/*!40000 ALTER TABLE `gallery_dtl` ENABLE KEYS */;

--
-- Table structure for table `gallery_hdr`
--

DROP TABLE IF EXISTS `gallery_hdr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gallery_hdr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_hdr`
--

/*!40000 ALTER TABLE `gallery_hdr` DISABLE KEYS */;
INSERT INTO `gallery_hdr` VALUES
(3,'English Week',NULL),
(5,'Holy Communion',NULL),
(6,'Investiture',NULL),
(7,'Linggo ng Wika',NULL),
(8,'Math and Science Week',NULL),
(9,'Nutrition Week',NULL),
(13,'Declamation Contest',NULL),
(14,'Family Day',NULL),
(15,'Philippine Science Highschool Passer',NULL),
(16,'Quezon City Science Highschool Passer',NULL),
(20,'Nutrition Month',NULL);
/*!40000 ALTER TABLE `gallery_hdr` ENABLE KEYS */;

--
-- Table structure for table `home_announcement`
--

DROP TABLE IF EXISTS `home_announcement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_announcement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `path` text NOT NULL,
  `description` varchar(125) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_announcement`
--

/*!40000 ALTER TABLE `home_announcement` DISABLE KEYS */;
INSERT INTO `home_announcement` VALUES
(1,'LATEST NEWS','https://twinkletoesacademyinc.edu.ph/public/cms/announcement/1742972298.png','LATEST NEWS');
/*!40000 ALTER TABLE `home_announcement` ENABLE KEYS */;

--
-- Table structure for table `home_other`
--

DROP TABLE IF EXISTS `home_other`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_other` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `path` varchar(125) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_other`
--

/*!40000 ALTER TABLE `home_other` DISABLE KEYS */;
INSERT INTO `home_other` VALUES
(1,'Teacher Lucy\'s Corner','https://twinkletoesacademyinc.edu.ph/public/cms/other/1652866996.jpg','\"A pleasant greeting to everyone especially to our dear parents and students of the Twinkle Toes Academy. Almost two (2) years have passed from when we last had our face-to-face classes in school and I really do miss the engagements and interactions with our students during school periods and events. The outbreak of the COVID 19 virus, which began in early 2020 greatly affected many families in all facets of life in our country. Moreso, the COVID pandemic disrupted the educational activities of the children with the suspension of the physical conduct of classes which might have adversely exposed the students to infection from the deadly virus. Thus, in compliance with the Deped guidelines, the Teachers of Twinkle Toes Academy Inc. (TTAI)shifted their classes through its Online Platform Program, continuing to provide effective learning education to its beloved students. Our teachers and staff endeavored to ensure that the quality of the school’s Academic Program was not compromised. It was so gratifying and with great pride that the efforts of our teachers and staff were not fruitless as TTAI has continued to produce graduates to High Schools with STEM programs as scholars, even during these challenging past 2 years.\n\n       With the country’s COVID vaccination and situation improving and the local governments especially in Metro Manila lowering the COVID alert status to Alert Level 1, our school is now preparing for the safe opening of pilot hybrid classes this year with increased ventilation and equipment, as guided by the DOH, Deped and the Local Government of Q.C.\n\n       Hopefully and with God’s blessings, the next school year will bring a more physical social integration amongst students through its Hybrid Platform classes. This “soft” return to normalcy, of course, will have to undergo inspections and approvals from the local barangays and governments and the Deped task force but more importantly with the approval from you, our dear parents and guardians.\n\n       Again, foremost in our preparation for the next school year is to have a more engaging activity whereby the TTAI faculty, Administrative staff and aides, will be able to conduct classes and continue the quality of education and formation of our students in a physically interactive and learning environment safe from the elements of the COVID virus.\n\n       Thank you and we wish you well and safe with God’s Graces.\"');
/*!40000 ALTER TABLE `home_other` ENABLE KEYS */;

--
-- Table structure for table `home_slider`
--

DROP TABLE IF EXISTS `home_slider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(125) NOT NULL,
  `description` text DEFAULT NULL,
  `path` varchar(125) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_slider`
--

/*!40000 ALTER TABLE `home_slider` DISABLE KEYS */;
INSERT INTO `home_slider` VALUES
(12,'Promotes the holistic development of children','Custom text here','https://twinkletoesacademyinc.edu.ph/public/cms/homeslider/1652772922.jpg'),
(14,'Promotes the holistic development of children',NULL,'https://twinkletoesacademyinc.edu.ph/public/cms/homeslider/1711949449.jpg'),
(15,'Promotes the holistic development of children',NULL,'https://twinkletoesacademyinc.edu.ph/public/cms/homeslider/1711949516.jpg');
/*!40000 ALTER TABLE `home_slider` ENABLE KEYS */;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES
(1,'2019_12_14_000001_create_personal_access_tokens_table',1),
(2,'2022_02_26_113304_create_allumni_testimonies',1),
(3,'2022_02_26_113305_create_home_announcement',1),
(4,'2022_02_26_113305_create_home_other',1),
(5,'2022_02_26_113306_create_gallery_hdr',1),
(6,'2022_02_26_113309_create_gallery_dtl',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

--
-- Table structure for table `user_types`
--

DROP TABLE IF EXISTS `user_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_types` (
  `user_type` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(64) NOT NULL,
  PRIMARY KEY (`user_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_types`
--

/*!40000 ALTER TABLE `user_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_types` ENABLE KEYS */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(16) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(32) NOT NULL,
  `last_name` varchar(32) NOT NULL,
  `middle_name` varchar(32) NOT NULL,
  `user_type` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES
(2,'cms_admin','$argon2i$v=19$m=1024,t=2,p=2$YlpFaUdmbXZGbU1JeGJHNQ$FpMw8ysOVBleFchMAAHXX8/mgvP5wphIReE8n/0UHco','admin','','',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

--
-- Dumping routines for database 'u599325038_cmsdb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-01 23:27:11
