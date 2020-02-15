-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cruisedatabase
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add user',7,'add_user'),(26,'Can change user',7,'change_user'),(27,'Can delete user',7,'delete_user'),(28,'Can view user',7,'view_user'),(29,'Can add language',8,'add_language'),(30,'Can change language',8,'change_language'),(31,'Can delete language',8,'delete_language'),(32,'Can view language',8,'view_language'),(33,'Can add typology',9,'add_typology'),(34,'Can change typology',9,'change_typology'),(35,'Can delete typology',9,'delete_typology'),(36,'Can view typology',9,'view_typology'),(37,'Can add excursion',10,'add_excursion'),(38,'Can change excursion',10,'change_excursion'),(39,'Can delete excursion',10,'delete_excursion'),(40,'Can view excursion',10,'view_excursion');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(10,'excursion','excursion'),(8,'excursion','language'),(9,'excursion','typology'),(6,'sessions','session'),(7,'user','user');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-02-13 01:46:12.543610'),(2,'auth','0001_initial','2020-02-13 01:46:26.590001'),(3,'admin','0001_initial','2020-02-13 01:47:19.419135'),(4,'admin','0002_logentry_remove_auto_add','2020-02-13 01:47:34.061999'),(5,'admin','0003_logentry_add_action_flag_choices','2020-02-13 01:47:34.382998'),(6,'contenttypes','0002_remove_content_type_name','2020-02-13 01:47:56.877602'),(7,'auth','0002_alter_permission_name_max_length','2020-02-13 01:48:10.250759'),(8,'auth','0003_alter_user_email_max_length','2020-02-13 01:48:12.828784'),(9,'auth','0004_alter_user_username_opts','2020-02-13 01:48:13.618789'),(10,'auth','0005_alter_user_last_login_null','2020-02-13 01:48:20.540470'),(11,'auth','0006_require_contenttypes_0002','2020-02-13 01:48:20.896511'),(12,'auth','0007_alter_validators_add_error_messages','2020-02-13 01:48:21.113520'),(13,'auth','0008_alter_user_username_max_length','2020-02-13 01:48:25.735513'),(14,'auth','0009_alter_user_last_name_max_length','2020-02-13 01:48:31.919401'),(15,'auth','0010_alter_group_name_max_length','2020-02-13 01:48:33.047309'),(16,'auth','0011_update_proxy_permissions','2020-02-13 01:48:33.291318'),(17,'excursion','0001_initial','2020-02-13 01:48:47.192326'),(18,'excursion','0002_auto_20200212_2331','2020-02-13 01:49:12.739631'),(19,'excursion','0003_auto_20200212_2343','2020-02-13 01:49:16.230632'),(20,'excursion','0004_auto_20200212_2345','2020-02-13 01:49:26.268037'),(21,'excursion','0005_auto_20200213_0244','2020-02-13 01:50:08.059938'),(22,'sessions','0001_initial','2020-02-13 01:50:13.471773'),(23,'user','0001_initial','2020-02-13 01:50:18.290975');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('8kxwxta156kwfdv88hxwh01wexgeke6o','ODhhNTRiMWQ2ZjVlMGY3OTRiYTYxYjdmMzVjOThiYWI5ZDc5ZDAwZjp7Il9hdXRoX3VzZXJfaWQiOiI0YWFjNmJhNS1iNzY0LTRiYmQtOWQ3Mi1hZjVkMDU5ZmU4ZmEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjRmNTY2OGM2ZDdjYWM1YTFhN2VkOTI5NTI2MTU3ZDBmNDM4ZTMwNWYifQ==','2020-02-29 14:26:18.011175');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `excursion`
--

DROP TABLE IF EXISTS `excursion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `excursion` (
  `id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `detailPageName` varchar(100) NOT NULL,
  `portID` varchar(3) NOT NULL,
  `type` varchar(10) NOT NULL,
  `activityLevel` varchar(100) NOT NULL,
  `collectionType` varchar(100) NOT NULL,
  `duration` varchar(100) NOT NULL,
  `priceLevel` smallint(5) unsigned NOT NULL,
  `currency` varchar(3) NOT NULL,
  `mealInfo` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `shortDescription` varchar(100) NOT NULL,
  `longDescription` longtext NOT NULL,
  `externalContent` tinyint(1) NOT NULL,
  `minimumAge` varchar(3) NOT NULL,
  `wheelChairAccessible` tinyint(1) NOT NULL,
  `featured` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `excursion_chk_1` CHECK ((`priceLevel` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `excursion`
--

LOCK TABLES `excursion` WRITE;
/*!40000 ALTER TABLE `excursion` DISABLE KEYS */;
INSERT INTO `excursion` VALUES ('10100001131','Antwerp Private Touring - Half Day (Car)','Antwerp Private Touring - Half Day (Car)','ANR','shorex','easy_activity','signature_collection','Approximately 4 hours - Price is per vehicle, not per person. See additional NOTES below.',4,'USD','','active','','<P>Explore at your own pace with a private vehicle, driver and English-speaking guide at your service. This exclusive tour is designed to allow you the chance to customize your time ashore and discover the most interesting sights in the comfort and privacy of your own vehicle. With your private vehicle, and the personalized attention of your driver and English-speaking guide, you will have the flexibility and independence to design your itinerary ashore according to your own interests, and take in the sights at your own pace. See the famous sights, or go beyond to create your own intimate connections and unique cultural encounters. The Signature Collection is recommended for the single/solo traveler, couples, family, friends, and special interest groups traveling together. It can also be an excellent choice for guests with mobility limitations.<P>Capacity: 2 guests. Your private party may be of any size up to the maximum capacity.<B><P>Notes:</B><P>Private cars are ordered per vehicle (not per person), so only one person in the party needs to order the vehicle. The price shown is the total cost for the vehicle, driver, and English-speaking guide. Entrance fees for attractions are not included. In many destinations, the number of vehicles available is extremely limited, so guests are encouraged to secure their private vehicle reservation as early as possible.',0,'',0,1),('10100001132','Antwerp Private Touring - Full Day (Car)','Antwerp Private Touring - Full Day (Car)','ANR','shorex','easy_activity','signature_collection','Approximately 8 hours - Price is per vehicle, not per person. See additional NOTES below.',4,'USD','','active','','<P>Explore at your own pace with a private vehicle, driver and English-speaking guide at your service. This exclusive tour is designed to allow you the chance to customize your time ashore and discover the most interesting sights in the comfort and privacy of your own vehicle. With your private vehicle, and the personalized attention of your driver and English-speaking guide, you will have the flexibility and independence to design your itinerary ashore according to your own interests, and take in the sights at your own pace. See the famous sights, or go beyond to create your own intimate connections and unique cultural encounters. The Signature Collection is recommended for the single/solo traveler, couples, family, friends, and special interest groups traveling together. It can also be an excellent choice for guests with mobility limitations.<P>Capacity: 2 guests. Your private party may be of any size up to the maximum capacity.<B><P>Notes:</B><P>Private cars are ordered per vehicle (not per person), so only one person in the party needs to order the vehicle. The price shown is the total cost for the vehicle, driver, and English-speaking guide. Entrance fees for attractions are not included. In many destinations, the number of vehicles available is extremely limited, so guests are encouraged to secure their private vehicle reservation as early as possible.',0,'',0,1),('10100001133','Antwerp Private Touring - Half Day (Minivan)','Antwerp Private Touring - Half Day (Minivan)','ANR','shorex','easy_activity','signature_collection','Approximately 4 hours - Price is per vehicle, not per person. See additional NOTES below.',4,'USD','','active','','<P>Explore at your own pace with a private vehicle, driver and English-speaking guide at your service. This exclusive tour is designed to allow you the chance to customize your time ashore and discover the most interesting sights in the comfort and privacy of your own vehicle. With your private vehicle, and the personalized attention of your driver and English-speaking guide, you will have the flexibility and independence to design your itinerary ashore according to your own interests, and take in the sights at your own pace. See the famous sights, or go beyond to create your own intimate connections and unique cultural encounters. The Signature Collection is recommended for the single/solo traveler, couples, family, friends, and special interest groups traveling together. It can also be an excellent choice for guests with mobility limitations.<P>Capacity: 5 guests. Your private party may be of any size up to the maximum capacity.<B></B><P><STRONG>Notes:</STRONG><P>Private minivans are ordered per vehicle (not per person), so only one person in the party needs to order the vehicle. The price shown is the total cost for the vehicle, driver, and English-speaking guide. Entrance fees for attractions are not included. In many destinations, the number of vehicles available is extremely limited, so guests are encouraged to secure their private vehicle reservation as early as possible.',0,'',0,1),('10100001134','Antwerp Private Touring - Full Day (Minivan)','Antwerp Private Touring - Full Day (Minivan)','ANR','shorex','easy_activity','signature_collection','Approximately 8 hours - Price is per vehicle, not per person. See additional NOTES below.',4,'USD','','active','','<P>Explore at your own pace with a private vehicle, driver and English-speaking guide at your service. This exclusive tour is designed to allow you the chance to customize your time ashore and discover the most interesting sights in the comfort and privacy of your own vehicle. With your private vehicle, and the personalized attention of your driver and English-speaking guide, you will have the flexibility and independence to design your itinerary ashore according to your own interests, and take in the sights at your own pace. See the famous sights, or go beyond to create your own intimate connections and unique cultural encounters. The Signature Collection is recommended for the single/solo traveler, couples, family, friends, and special interest groups traveling together. It can also be an excellent choice for guests with mobility limitations.<P>Capacity: 5 guests. Your private party may be of any size up to the maximum capacity.<B></B><P>Notes:<P>Private minivans are ordered per vehicle (not per person), so only one person in the party needs to order the vehicle. The price shown is the total cost for the vehicle, driver, and English-speaking guide. Entrance fees for attractions are not included. In many destinations, the number of vehicles available is extremely limited, so guests are encouraged to secure their private vehicle reservation as early as possible.',0,'',0,1),('10100001139','Antwerp Private Touring - Full Day (Car)','','','shorex','','signature_collection','Approximately 8 hours - Price is per vehicle, not per person. See additional NOTES below.',4,'USD','','','','',0,'',0,0),('10100001203','Copenhagen Private Touring - Half Day (Car)','Copenhagen Private Touring - Half Day (Car)','CPH','shorex','easy_activity','signature_collection','Approximately 4 hours - Price is per vehicle, not per person. See additional NOTES below.',4,'USD','','active','','<P>Explore at your own pace with a private vehicle, driver and English-speaking guide at your service. This exclusive tour is designed to allow you the chance to customize your time ashore and discover the most interesting sights in the comfort and privacy of your own vehicle. With your private vehicle, and the personalized attention of your English-speaking guide, you will have the flexibility and independence to design your itinerary ashore according to your own interests, and take in the sights at your own pace. See the famous sights, or go beyond to create your own intimate connections and unique cultural encounters. The Signature Collection is recommended for the single/solo traveler, couples, family, friends, and special interest groups traveling together. It can also be an excellent choice for guests with mobility limitations.<P>Capacity: 2 guests. Your private party may be of any size up to the maximum capacity.<B><P>Notes:</B><P>Private cars are ordered per vehicle (not per person), so only one person in the party needs to order the vehicle. The price shown is the total cost for the vehicle, driver and English-speaking guide. Entrance fees for attractions are not included. In many destinations, the number of vehicles available is extremely limited, so guests are encouraged to secure their private vehicle reservation as early as possible.',0,'',0,1),('10100001204','Copenhagen Private Touring - Full Day (Car)','Copenhagen Private Touring - Full Day (Car)','CPH','shorex','easy_activity','signature_collection','Approximately 8 hours - Price is per vehicle, not per person. See additional NOTES below.',4,'USD','','active','','<P>Explore at your own pace with a private vehicle, driver and English-speaking guide at your service. This exclusive tour is designed to allow you the chance to customize your time ashore and discover the most interesting sights in the comfort and privacy of your own vehicle. With your private vehicle, and the personalized attention of your English-speaking guide, you will have the flexibility and independence to design your itinerary ashore according to your own interests, and take in the sights at your own pace. See the famous sights, or go beyond to create your own intimate connections and unique cultural encounters. The Signature Collection is recommended for the single/solo traveler, couples, family, friends, and special interest groups traveling together. It can also be an excellent choice for guests with mobility limitations.<P>Capacity: 2 guests. Your private party may be of any size up to the maximum capacity.<B><P>Notes:</B><P>Private cars are ordered per vehicle (not per person), so only one person in the party needs to order the vehicle. The price shown is the total cost for the vehicle, driver and English-speaking guide. Entrance fees for attractions are not included. In many destinations, the number of vehicles available is extremely limited, so guests are encouraged to secure their private vehicle reservation as early as possible.',0,'',0,1),('10100001205','Copenhagen Private Touring - Half Day (Minivan)','Copenhagen Private Touring - Half Day (Minivan)','CPH','shorex','easy_activity','signature_collection','Approximately 4 hours - Price is per vehicle, not per person. See additional NOTES below.',4,'USD','','active','','<P>Explore at your own pace with a private vehicle, driver and English-speaking guide at your service. This exclusive tour is designed to allow you the chance to customize your time ashore and discover the most interesting sights in the comfort and privacy of your own vehicle. With your private vehicle, and the personalized attention of your English-speaking guide, you will have the flexibility and independence to design your itinerary ashore according to your own interests, and take in the sights at your own pace. See the famous sights, or go beyond to create your own intimate connections and unique cultural encounters. The Signature Collection is recommended for the single/solo traveler, couples, family, friends, and special interest groups traveling together. It can also be an excellent choice for guests with mobility limitations.<P>Capacity:&nbsp;6 guests. Your private party may be of any size up to the maximum capacity.<B><P>Notes:</B><P>Private minivans are ordered per vehicle (not per person), so only one person in the party needs to order the vehicle. The price shown is the total cost for the vehicle, driver and English-speaking guide. Entrance fees for attractions are not included. In many destinations, the number of vehicles available is extremely limited, so guests are encouraged to secure their private vehicle reservation as early as possible.',0,'',0,1),('10100001206','Copenhagen Private Touring - Full Day (Minivan)','Copenhagen Private Touring - Full Day (Minivan)','CPH','shorex','easy_activity','signature_collection','Approximately 8 hours - Price is per vehicle, not per person. See additional NOTES below.',4,'USD','','active','','<P>Explore at your own pace with a private vehicle, driver and English-speaking guide at your service. This exclusive tour is designed to allow you the chance to customize your time ashore and discover the most interesting sights in the comfort and privacy of your own vehicle. With your private vehicle, and the personalized attention of your English-speaking guide, you will have the flexibility and independence to design your itinerary ashore according to your own interests, and take in the sights at your own pace. See the famous sights, or go beyond to create your own intimate connections and unique cultural encounters. The Signature Collection is recommended for the single/solo traveler, couples, family, friends, and special interest groups traveling together. It can also be an excellent choice for guests with mobility limitations.<P>Capacity:&nbsp;6 guests. Your private party may be of any size up to the maximum capacity.<B></B><P>Notes:<P>Private minivans are ordered per vehicle (not per person), so only one person in the party needs to order the vehicle. The price shown is the total cost for the vehicle, driver and English-speaking guide. Entrance fees for attractions are not included. In many destinations, the number of vehicles available is extremely limited, so guests are encouraged to secure their private vehicle reservation as early as possible.',0,'',0,1),('10100001229','Tallinn Private Touring - Half Day (Car)','Tallinn Private Touring - Half Day (Car)','TLL','shorex','easy_activity','signature_collection','Approximately 4 hours - Price is per vehicle, not per person. See additional NOTES below.',4,'USD','','active','','<P>Explore at your own pace with a private vehicle, driver and English-speaking guide at your service. This exclusive tour is designed to allow you the chance to customize your time ashore and discover the most interesting sights in the comfort and privacy of your own vehicle. With your private vehicle, and the personalized attention of your driver and English-speaking guide, you will have the flexibility and independence to design your itinerary ashore according to your own interests, and take in the sights at your own pace. See the famous sights, or go beyond to create your own intimate connections and unique cultural encounters. The Signature Collection is recommended for the single/solo traveler, couples, family, friends, and special interest groups traveling together. It can also be an excellent choice for guests with mobility limitations.<P>Capacity: 2 guests. Your private party may be of any size up to the maximum capacity.<B><P>Notes:</B><P>Private cars are ordered per vehicle (not per person), so only one person in the party needs to order the vehicle. The price shown is the total cost for the vehicle, driver, and English-speaking guide. Entrance fees for attractions are not included. In many destinations, the number of vehicles available is extremely limited, so guests are encouraged to secure their private vehicle reservation as early as possible.',0,'',0,1),('10100001230','Tallinn Private Touring - Full Day (Car)','Tallinn Private Touring - Full Day (Car)','TLL','shorex','easy_activity','signature_collection','Approximately 7&#189; - 8 hours - Price is per vehicle, not per person. See additional NOTES',4,'USD','','active','','<P>Explore at your own pace with a private vehicle, driver and English-speaking guide at your service. This exclusive tour is designed to allow you the chance to customize your time ashore and discover the most interesting sights in the comfort and privacy of your own vehicle. With your private vehicle, and the personalized attention of your driver and English-speaking guide, you will have the flexibility and independence to design your itinerary ashore according to your own interests, and take in the sights at your own pace. See the famous sights, or go beyond to create your own intimate connections and unique cultural encounters. The Signature Collection is recommended for the single/solo traveler, couples, family, friends, and special interest groups traveling together. It can also be an excellent choice for guests with mobility limitations.<P>Capacity: 2 guests. Your private party may be of any size up to the maximum capacity.<B><P>Notes:</B><P>Private cars are ordered per vehicle (not per person), so only one person in the party needs to order the vehicle. The price shown is the total cost for the vehicle, driver, and English-speaking guide. Entrance fees for attractions are not included. In many destinations, the number of vehicles available is extremely limited, so guests are encouraged to secure their private vehicle reservation as early as possible.',0,'',0,1),('10100001231','Tallinn Private Touring - Half Day (Minivan)','Tallinn Private Touring - Half Day (Minivan)','TLL','shorex','easy_activity','signature_collection','Approximately 4 hours - Price is per vehicle, not per person. See additional NOTES below.',4,'USD','','active','','<P>Explore at your own pace with a private vehicle, driver and English-speaking guide at your service. This exclusive tour is designed to allow you the chance to customize your time ashore and discover the most interesting sights in the comfort and privacy of your own vehicle. With your private vehicle, and the personalized attention of your driver and English-speaking guide, you will have the flexibility and independence to design your itinerary ashore according to your own interests, and take in the sights at your own pace. See the famous sights, or go beyond to create your own intimate connections and unique cultural encounters. The Signature Collection is recommended for the single/solo traveler, couples, family, friends, and special interest groups traveling together. It can also be an excellent choice for guests with mobility limitations.<P>Capacity:7 guests. Your private party may be of any size up to the maximum capacity.<B><P>Notes:</B><P>Private minivans are ordered per vehicle (not per person), so only one person in the party needs to order the vehicle. The price shown is the total cost for the vehicle, driver, and English-speaking guide. Entrance fees for attractions are not included. In many destinations, the number of vehicles available is extremely limited, so guests are encouraged to secure their private vehicle reservation as early as possible.',0,'',0,1),('10100001232','Tallinn Private Touring - Full Day (Minivan)','Tallinn Private Touring - Full Day (Minivan)','TLL','shorex','easy_activity','signature_collection','Approximately 7&#189; - 8 hours - Price is per vehicle, not per person. See additional NOTES',4,'USD','','active','','<P>Explore at your own pace with a private vehicle, driver and English-speaking guide at your service. This exclusive tour is designed to allow you the chance to customize your time ashore and discover the most interesting sights in the comfort and privacy of your own vehicle. With your private vehicle, and the personalized attention of your driver and English-speaking guide, you will have the flexibility and independence to design your itinerary ashore according to your own interests, and take in the sights at your own pace. See the famous sights, or go beyond to create your own intimate connections and unique cultural encounters. The Signature Collection is recommended for the single/solo traveler, couples, family, friends, and special interest groups traveling together. It can also be an excellent choice for guests with mobility limitations.<P>Capacity:7 guests. Your private party may be of any size up to the maximum capacity.<B><P>Notes:</B><P>Private minivans are ordered per vehicle (not per person), so only one person in the party needs to order the vehicle. The price shown is the total cost for the vehicle, driver, and English-speaking guide. Entrance fees for attractions are not included. In many destinations, the number of vehicles available is extremely limited, so guests are encouraged to secure their private vehicle reservation as early as possible.',0,'',0,1);
/*!40000 ALTER TABLE `excursion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `excursion_language`
--

DROP TABLE IF EXISTS `excursion_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `excursion_language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `excursion_id` varchar(100) NOT NULL,
  `language_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `excursion_excursion_lang_excursion_id_language_id_b5c9f039_uniq` (`excursion_id`,`language_id`),
  KEY `excursion_excursion__language_id_5027d37d_fk_excursion` (`language_id`),
  CONSTRAINT `excursion_excursion__language_id_5027d37d_fk_excursion` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `excursion_language`
--

LOCK TABLES `excursion_language` WRITE;
/*!40000 ALTER TABLE `excursion_language` DISABLE KEYS */;
INSERT INTO `excursion_language` VALUES (1,'10100001131',1),(2,'10100001132',1),(3,'10100001133',1),(4,'10100001134',1),(13,'10100001139',1),(5,'10100001203',1),(6,'10100001204',1),(7,'10100001205',1),(8,'10100001206',1),(9,'10100001229',1),(10,'10100001230',1),(11,'10100001231',1),(12,'10100001232',1);
/*!40000 ALTER TABLE `excursion_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `excursion_typology`
--

DROP TABLE IF EXISTS `excursion_typology`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `excursion_typology` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `excursion_id` varchar(100) NOT NULL,
  `typology_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `excursion_excursion_typo_excursion_id_typology_id_0d1788d4_uniq` (`excursion_id`,`typology_id`),
  KEY `excursion_excursion__typology_id_1f7ed320_fk_excursion` (`typology_id`),
  CONSTRAINT `excursion_excursion__typology_id_1f7ed320_fk_excursion` FOREIGN KEY (`typology_id`) REFERENCES `typology` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `excursion_typology`
--

LOCK TABLES `excursion_typology` WRITE;
/*!40000 ALTER TABLE `excursion_typology` DISABLE KEYS */;
INSERT INTO `excursion_typology` VALUES (1,'10100001131',1),(2,'10100001131',2),(3,'10100001132',1),(4,'10100001132',3),(5,'10100001133',1),(6,'10100001133',2),(7,'10100001134',1),(8,'10100001134',3),(25,'10100001139',1),(26,'10100001139',3),(9,'10100001203',1),(10,'10100001203',2),(11,'10100001204',1),(12,'10100001204',3),(13,'10100001205',1),(14,'10100001205',2),(15,'10100001206',1),(16,'10100001206',3),(17,'10100001229',1),(18,'10100001229',2),(19,'10100001230',1),(20,'10100001230',3),(21,'10100001231',1),(22,'10100001231',2),(23,'10100001232',1),(24,'10100001232',2);
/*!40000 ALTER TABLE `excursion_typology` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `language_name_76dcb45c_uniq` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language`
--

LOCK TABLES `language` WRITE;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` VALUES (1,'en');
/*!40000 ALTER TABLE `language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `id` char(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('pbkdf2_sha256$180000$8rmrClwrZslP$5B73mJwZwzb4dyt/0klrlaa7uBzmTNdnSPESUhe0XCM=','2020-02-14 19:25:09.191991','457d4e36d0aa4894aa5a3f5344284ca6','spook@admin.com',1,0,0),('pbkdf2_sha256$180000$xQImjgpDum4P$qlAQqGG6dP7dzoPVOV5wtmM1JVDD+uUGsvjX/jrH5Fg=','2020-02-15 16:11:29.973212','4aac6ba5b7644bbd9d72af5d059fe8fa','admin@admin.com',1,1,1);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typology`
--

DROP TABLE IF EXISTS `typology`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `typology` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `number` (`number`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typology`
--

LOCK TABLES `typology` WRITE;
/*!40000 ALTER TABLE `typology` DISABLE KEYS */;
INSERT INTO `typology` VALUES (1,'29'),(2,'84'),(3,'85');
/*!40000 ALTER TABLE `typology` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-15 17:37:40
