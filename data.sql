-- MySQL dump 10.13  Distrib 5.5.58, for debian-linux-gnu (x86_64)
--
-- Host: 0.0.0.0    Database: c9
-- ------------------------------------------------------
-- Server version	5.5.58-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`),
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,NULL,1,'Category 1','category-1','2017-10-17 13:12:33','2017-10-17 13:12:33'),(2,NULL,1,'Category 2','category-2','2017-10-17 13:12:33','2017-10-17 13:12:33');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` VALUES (1,1,'id','number','ID',1,0,0,0,0,0,'',1),(2,1,'author_id','text','Author',1,0,1,1,0,1,'',2),(3,1,'category_id','text','Category',1,0,1,1,1,0,'',3),(4,1,'title','text','Title',1,1,1,1,1,1,'',4),(5,1,'excerpt','text_area','excerpt',1,0,1,1,1,1,'',5),(6,1,'body','rich_text_box','Body',1,0,1,1,1,1,'',6),(7,1,'image','image','Post Image',0,1,1,1,1,1,'{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}',7),(8,1,'slug','text','slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}',8),(9,1,'meta_description','text_area','meta_description',1,0,1,1,1,1,'',9),(10,1,'meta_keywords','text_area','meta_keywords',1,0,1,1,1,1,'',10),(11,1,'status','select_dropdown','status',1,1,1,1,1,1,'{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}',11),(12,1,'created_at','timestamp','created_at',0,1,1,0,0,0,'',12),(13,1,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',13),(14,2,'id','number','id',1,0,0,0,0,0,'',1),(15,2,'author_id','text','author_id',1,0,0,0,0,0,'',2),(16,2,'title','text','title',1,1,1,1,1,1,'',3),(17,2,'excerpt','text_area','excerpt',1,0,1,1,1,1,'',4),(18,2,'body','rich_text_box','body',1,0,1,1,1,1,'',5),(19,2,'slug','text','slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\"}}',6),(20,2,'meta_description','text','meta_description',1,0,1,1,1,1,'',7),(21,2,'meta_keywords','text','meta_keywords',1,0,1,1,1,1,'',8),(22,2,'status','select_dropdown','status',1,1,1,1,1,1,'{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}',9),(23,2,'created_at','timestamp','created_at',1,1,1,0,0,0,'',10),(24,2,'updated_at','timestamp','updated_at',1,0,0,0,0,0,'',11),(25,2,'image','image','image',0,1,1,1,1,1,'',12),(26,3,'id','number','id',1,0,0,0,0,0,'',1),(27,3,'name','text','name',1,1,1,1,1,1,'',2),(28,3,'email','text','email',1,1,1,1,1,1,'',3),(29,3,'password','password','password',0,0,0,1,1,0,'',4),(30,3,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}',10),(31,3,'remember_token','text','remember_token',0,0,0,0,0,0,'',5),(32,3,'created_at','timestamp','created_at',0,1,1,0,0,0,'',6),(33,3,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',7),(34,3,'avatar','image','avatar',0,1,1,1,1,1,'',8),(35,5,'id','number','id',1,0,0,0,0,0,'',1),(36,5,'name','text','name',1,1,1,1,1,1,'',2),(37,5,'created_at','timestamp','created_at',0,0,0,0,0,0,'',3),(38,5,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',4),(39,4,'id','number','id',1,0,0,0,0,0,'',1),(40,4,'parent_id','select_dropdown','parent_id',0,0,1,1,1,1,'{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),(41,4,'order','text','order',1,1,1,1,1,1,'{\"default\":1}',3),(42,4,'name','text','name',1,1,1,1,1,1,'',4),(43,4,'slug','text','slug',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"name\"}}',5),(44,4,'created_at','timestamp','created_at',0,0,1,0,0,0,'',6),(45,4,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',7),(46,6,'id','number','id',1,0,0,0,0,0,'',1),(47,6,'name','text','Name',1,1,1,1,1,1,'',2),(48,6,'created_at','timestamp','created_at',0,0,0,0,0,0,'',3),(49,6,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',4),(50,6,'display_name','text','Display Name',1,1,1,1,1,1,'',5),(51,1,'seo_title','text','seo_title',0,1,1,1,1,1,'',14),(52,1,'featured','checkbox','featured',1,1,1,1,1,1,'',15),(53,3,'role_id','text','role_id',1,1,1,1,1,1,'',9),(69,10,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(70,10,'title','text','Title',0,1,1,1,1,1,NULL,2),(71,10,'body','text','Body',0,1,1,1,1,1,NULL,3),(72,10,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,4),(73,10,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,5),(80,12,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(81,12,'img','image','Img',0,1,1,1,1,1,NULL,2),(82,12,'title','text','Title',0,1,1,1,1,1,NULL,3),(83,12,'body','text','Body',0,1,1,1,1,1,NULL,4),(84,12,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,5),(85,12,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,6),(86,13,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(87,13,'title','text','Title',0,1,1,1,1,1,NULL,2),(89,13,'body','rich_text_box','Body',0,1,1,1,1,1,NULL,4),(91,13,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,6),(92,13,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(93,14,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(94,14,'img','image','Img',0,1,1,1,1,1,NULL,2),(95,14,'title','text','Title',0,1,1,1,1,1,NULL,3),(96,14,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,4),(97,14,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,5),(98,13,'opismain','text','Opismain',0,1,1,1,1,1,NULL,8),(134,22,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(135,22,'images','multiple_images','Images',0,1,1,1,1,1,NULL,2),(136,22,'kil','select_dropdown','Kil',0,1,1,1,1,1,'{\"default\":\"hostel\",\"options\":{\"hostel\":\"Хостел\",\"nomera\":\"Номера\",\"sanuzel\":\"Санузел\"}}',3),(137,22,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,4),(138,22,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,5),(139,13,'images','multiple_images','Images',0,1,1,1,1,1,NULL,3),(140,13,'img','image','Img',0,1,1,1,1,1,NULL,8);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_types`
--

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` VALUES (1,'posts','posts','Post','Posts','voyager-news','TCG\\Voyager\\Models\\Post','TCG\\Voyager\\Policies\\PostPolicy','','',1,0,'2017-10-17 13:12:32','2017-10-17 13:12:32'),(2,'pages','pages','Page','Pages','voyager-file-text','TCG\\Voyager\\Models\\Page',NULL,'','',1,0,'2017-10-17 13:12:32','2017-10-17 13:12:32'),(3,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','','',1,0,'2017-10-17 13:12:32','2017-10-17 13:12:32'),(4,'categories','categories','Category','Categories','voyager-categories','TCG\\Voyager\\Models\\Category',NULL,'','',1,0,'2017-10-17 13:12:32','2017-10-17 13:12:32'),(5,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,'2017-10-17 13:12:32','2017-10-17 13:12:32'),(6,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'','',1,0,'2017-10-17 13:12:32','2017-10-17 13:12:32'),(10,'revs','revs','Отзывы','Отзывы',NULL,'App\\Rev',NULL,NULL,'Отзывы',1,0,'2017-10-25 15:28:48','2017-10-25 15:28:48'),(12,'uslugs','uslugs','Отзывы','Отзывы',NULL,'App\\Uslug',NULL,NULL,'Отзывы',1,0,'2017-10-25 15:44:07','2017-10-25 15:44:07'),(13,'nomers','nomers','Номера','Номера',NULL,'App\\Nomer',NULL,NULL,'Номера',1,0,'2017-10-25 18:26:46','2017-10-25 18:26:46'),(14,'sliders','sliders','Слайдер','Слайдер',NULL,'App\\Slider',NULL,NULL,'Слайдер',1,0,'2017-10-26 19:17:46','2017-10-26 19:17:46'),(22,'gallers','gallers','Galler','Gallers',NULL,'App\\Galler',NULL,NULL,NULL,1,0,'2017-11-09 20:02:25','2017-11-09 20:02:25');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallers`
--

DROP TABLE IF EXISTS `gallers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gallers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `images` text COLLATE utf8_unicode_ci,
  `kil` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallers`
--

LOCK TABLES `gallers` WRITE;
/*!40000 ALTER TABLE `gallers` DISABLE KEYS */;
INSERT INTO `gallers` VALUES (2,'[\"gallers\\/November2017\\/7eCSNXRrn22pcqNF6MEW.jpg\",\"gallers\\/November2017\\/a6c5txBALmxxHxph3qMk.jpg\",\"gallers\\/November2017\\/VeEL7YNi91f1mN4D5xcO.jpg\",\"gallers\\/November2017\\/NZl5mVmME9JE5ZyKMZxj.jpg\",\"gallers\\/November2017\\/F6rBkiGoJPvSMOjOpjIU.jpg\",\"gallers\\/November2017\\/YULUaQZlP7QOxh7XkACY.jpg\"]','hostel','2017-11-09 20:32:50','2017-11-09 20:32:50'),(3,'[\"gallers\\/November2017\\/rzzmntIZM0AUAincT6dG.jpg\",\"gallers\\/November2017\\/5QoN9gLTxGE0R5qeejKb.jpg\",\"gallers\\/November2017\\/pvsSghdXTRgWfYRZ4qQZ.jpg\",\"gallers\\/November2017\\/K09Ryv7aVZamkPI0HmgC.jpg\",\"gallers\\/November2017\\/zZf3Yj1DT20Dwb3vObZI.jpg\",\"gallers\\/November2017\\/E2qltTo226ask241Un1g.jpg\",\"gallers\\/November2017\\/u6vSjQuQmJtkBJ3o2TfX.jpg\",\"gallers\\/November2017\\/RUPkPE0oQpuEIttJyZlf.jpg\",\"gallers\\/November2017\\/fsSA1r8yTEgldXjiFUZy.jpg\",\"gallers\\/November2017\\/Vo9JcK5MMFmSYsiC45dF.jpg\",\"gallers\\/November2017\\/w3UP5VOCtrDWsQ0Qjttw.jpg\",\"gallers\\/November2017\\/ZnzJmi1VHdS3IJTFX58r.jpg\",\"gallers\\/November2017\\/60FyNg2vSTfdXeQKXSVT.jpg\",\"gallers\\/November2017\\/llW2xl3cVPQBEshuIzFP.jpg\",\"gallers\\/November2017\\/FfOZifWFez27XdoS7p7L.jpg\",\"gallers\\/November2017\\/C2FAfAqYDK42tXtZcyWW.jpg\",\"gallers\\/November2017\\/wI0dgEDec4HRru29uKDc.jpg\",\"gallers\\/November2017\\/JruDteGyNG21lERHInNZ.jpg\",\"gallers\\/November2017\\/2DemtqcqDWUq15oSXAAQ.jpg\",\"gallers\\/November2017\\/AP2RGGrUE0j4AaUEyJOB.jpg\"]','nomera','2017-11-09 20:36:22','2017-11-09 20:36:22'),(5,'[\"gallers\\/November2017\\/OAL9p2qIYE5Oj7Hmsg1t.jpg\",\"gallers\\/November2017\\/tFD8RkXAFbsyQF5Eetbd.jpg\",\"gallers\\/November2017\\/LexGjLQoFyhLbgY8alhP.jpg\"]','sanuzel','2017-11-10 22:53:04','2017-11-10 22:53:04');
/*!40000 ALTER TABLE `gallers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2017-10-17 13:12:33','2017-10-17 13:12:33','voyager.dashboard',NULL),(2,1,'Media','','_self','voyager-images',NULL,NULL,4,'2017-10-17 13:12:33','2017-10-25 15:39:31','voyager.media.index',NULL),(3,1,'Posts','','_self','voyager-news',NULL,NULL,5,'2017-10-17 13:12:33','2017-10-25 15:39:31','voyager.posts.index',NULL),(4,1,'Users','','_self','voyager-person',NULL,NULL,3,'2017-10-17 13:12:33','2017-10-17 13:12:33','voyager.users.index',NULL),(5,1,'Categories','','_self','voyager-categories',NULL,NULL,7,'2017-10-17 13:12:33','2017-10-25 15:39:31','voyager.categories.index',NULL),(6,1,'Pages','','_self','voyager-file-text',NULL,NULL,6,'2017-10-17 13:12:33','2017-10-25 15:39:31','voyager.pages.index',NULL),(7,1,'Roles','','_self','voyager-lock',NULL,NULL,2,'2017-10-17 13:12:33','2017-10-17 13:12:33','voyager.roles.index',NULL),(8,1,'Tools','','_self','voyager-tools',NULL,NULL,8,'2017-10-17 13:12:33','2017-10-25 15:39:31',NULL,NULL),(9,1,'Menu Builder','','_self','voyager-list',NULL,8,1,'2017-10-17 13:12:33','2017-10-25 15:39:31','voyager.menus.index',NULL),(10,1,'Database','','_self','voyager-data',NULL,8,2,'2017-10-17 13:12:33','2017-10-25 15:39:31','voyager.database.index',NULL),(11,1,'Compass','/admin/compass','_self','voyager-compass',NULL,8,3,'2017-10-17 13:12:33','2017-10-25 15:39:31',NULL,NULL),(12,1,'Hooks','/admin/hooks','_self','voyager-hook',NULL,8,4,'2017-10-17 13:12:33','2017-10-25 15:39:31',NULL,NULL),(13,1,'Settings','','_self','voyager-settings',NULL,NULL,9,'2017-10-17 13:12:33','2017-10-25 15:39:31','voyager.settings.index',NULL),(15,1,'Отзывы','admin/revs','_self','voyager-file-text','#000000',NULL,10,'2017-10-25 15:29:23','2017-10-25 15:39:31',NULL,''),(18,1,'Услуги','admin/uslugs','_self',NULL,'#000000',NULL,11,'2017-10-25 15:44:34','2017-10-25 15:44:34',NULL,''),(19,1,'Номера','admin/nomers','_self',NULL,'#000000',NULL,12,'2017-10-25 18:27:04','2017-10-25 18:27:04',NULL,''),(20,1,'Слайдер','admin/sliders','_self',NULL,'#000000',NULL,13,'2017-10-26 19:18:07','2017-10-26 19:18:07',NULL,''),(22,1,'Фото','admin/gallers','_self',NULL,'#000000',NULL,14,'2017-11-08 19:52:13','2017-11-09 20:05:36',NULL,'');
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'admin','2017-10-17 13:12:33','2017-10-17 13:12:33');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_01_000000_add_voyager_user_fields',1),(4,'2016_01_01_000000_create_data_types_table',1),(5,'2016_01_01_000000_create_pages_table',1),(6,'2016_01_01_000000_create_posts_table',1),(7,'2016_02_15_204651_create_categories_table',1),(8,'2016_05_19_173453_create_menu_table',1),(9,'2016_10_21_190000_create_roles_table',1),(10,'2016_10_21_190000_create_settings_table',1),(11,'2016_11_30_135954_create_permission_table',1),(12,'2016_11_30_141208_create_permission_role_table',1),(13,'2016_12_26_201236_data_types__add__server_side',1),(14,'2017_01_13_000000_add_route_to_menu_items_table',1),(15,'2017_01_14_005015_create_translations_table',1),(16,'2017_01_15_000000_add_permission_group_id_to_permissions_table',1),(17,'2017_01_15_000000_create_permission_groups_table',1),(18,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),(19,'2017_03_06_000000_add_controller_to_data_types_table',1),(20,'2017_04_11_000000_alter_post_nullable_fields_table',1),(21,'2017_04_21_000000_add_order_to_data_rows_table',1),(22,'2017_07_05_210000_add_policyname_to_data_types_table',1),(23,'2017_08_05_000000_add_group_to_settings_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nomers`
--

DROP TABLE IF EXISTS `nomers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nomers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci,
  `images` text COLLATE utf8_unicode_ci,
  `body` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `opismain` text COLLATE utf8_unicode_ci,
  `img` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nomers`
--

LOCK TABLES `nomers` WRITE;
/*!40000 ALTER TABLE `nomers` DISABLE KEYS */;
INSERT INTO `nomers` VALUES (30,'Бюджетный двухместный номер с 1 кроватью или 2 отдельными кроватями','[\"nomers\\/November2017\\/8pa3J5NMsfYWL6W1BeD5.jpg\",\"nomers\\/November2017\\/4hliAVG0tSjrCX6LAcIm.jpg\",\"nomers\\/November2017\\/KRY6LRMvlU2Zv8CrxYND.jpg\",\"nomers\\/November2017\\/GJ2MKlBiMvoovR3pxpiV.jpg\"]','<p><span style=\"color: #000000; font-family: \'Times New Roman\'; font-size: medium;\">Номер с кондиционером и большим окном. Одна двуспальная или 2-е стандартные односпальные кровати. Площадь 10 кв.м.</span></p>','2017-11-10 23:51:00','2017-11-16 20:58:48','Бюджетный двухместный номер площадью 9 кв. метров с одной двухспальной или двумя односпальными кроватями','nomers/November2017/YIqcs29xLdlCCrJs73xl.jpg'),(31,'Кровать в общем четырехместном номере для мужчин и женщин','[\"nomers\\/November2017\\/lBOOtE8TxabsreApQpp3.jpg\",\"nomers\\/November2017\\/YZ97a9ivhSuD4weWoKYn.jpg\",\"nomers\\/November2017\\/ogjWMBAKNy56L8WwjHQO.jpg\",\"nomers\\/November2017\\/YduYmudi08zAFaBEDfbt.jpg\"]','<p><span style=\"color: #000000; font-family: \'Times New Roman\'; font-size: medium;\">Номер с кондиционером без окна на улицу. Двухъярусные кровати со шторками. В номере индивидуальные локеры для вещей. Площадь 16 кв.м.</span></p>','2017-11-10 23:52:00','2017-11-16 20:57:05','Кровать в общем номере с патио.','nomers/November2017/yrbvv4OVw086TWK6jZqL.jpg'),(32,'Кровать в общем 8-местном номере','[\"nomers\\/November2017\\/10To24oPTC1KaQM480Qw.jpg\",\"nomers\\/November2017\\/7PQ2leNJYPo4tUuAz4YX.jpg\",\"nomers\\/November2017\\/EK0hPYxXwqw3Ku2jnXLB.jpg\",\"nomers\\/November2017\\/Ho2sNRuRISS9KuCUuUyn.jpg\",\"nomers\\/November2017\\/ksJi3HhjoW0IYTp1XN0W.jpg\"]','<p><span style=\"color: #000000; font-family: \'Times New Roman\'; font-size: medium;\">Номер с кондиционером и небольшим окном. Двухъярусные кровати со шторками. В номере индивидуальные локеры для вещей. Площадь 20 кв.м.</span></p>','2017-11-10 23:53:00','2017-11-16 20:54:21','Кровать в звукоизолированном общем номере с патио и кондиционером.','nomers/November2017/O9tJaRVXsdoAnzOGXNVe.jpg'),(33,'Двухместный номер с 1 кроватью','[\"nomers\\/November2017\\/gy9tkSI0JnkAzcaJ1njl.jpg\",\"nomers\\/November2017\\/d1jPoRDalehox6MF720D.jpg\",\"nomers\\/November2017\\/zPVjyjJY08a8EWLt2FOb.jpg\",\"nomers\\/November2017\\/NkWWAra8ZZgDDaQYVRWP.jpg\",\"nomers\\/November2017\\/O4x0lTbwjDMCxSU9Hkrd.jpg\",\"nomers\\/November2017\\/1kSJLc6pfV6TKc1YROcC.jpg\",\"nomers\\/November2017\\/KoH3MZznkh9sEUKpfBUK.jpg\"]','<p><span style=\"color: #000000; font-family: \'Times New Roman\'; font-size: medium;\">Номер с кондиционером и большим окном. Одна двуспальная или 2-е стандартные односпальные кровати. Площадь 10 кв.м.</span></p>','2017-11-10 23:55:00','2017-11-16 21:00:32','Двухместный номер с 1 кроватью или 2 отдельными кроватями, а также патио.','nomers/November2017/vt8RxtUn0AytkvMz4Suy.jpg'),(34,'Двухместный номер с 1 кроватью и общей ванной комнатой','[\"nomers\\/November2017\\/WHCVmxoo1d0zupaFcNu8.jpg\",\"nomers\\/November2017\\/krScWA4fVprD8UaZincN.jpg\",\"nomers\\/November2017\\/nqE4vCHVbGGXCyi9Vmn4.jpg\",\"nomers\\/November2017\\/PE9KiUxBAYJH2Zs9psvx.jpg\",\"nomers\\/November2017\\/LknQdh5obur5dNWDTxHJ.jpg\",\"nomers\\/November2017\\/Iz7YEho061I9jlGyjikX.jpg\",\"nomers\\/November2017\\/wjSX60fPIFovevvNZLrQ.jpg\",\"nomers\\/November2017\\/UMr2MmowiYTwKMmd2nbj.jpg\",\"nomers\\/November2017\\/pwuWH8QZwYrZvx08Hg8F.jpg\"]','<p><span style=\"color: #000000; font-family: \'Times New Roman\'; font-size: medium;\">Просторный номер с большим панорамным окном и кондиционером. Одна двуспальная или 2-е стандартные односпальные кровати. Площадь 20 кв.м.</span></p>','2017-11-10 23:56:00','2017-11-16 20:58:30','Звукоизолированный двухместный номер с 1 двухспальной или 2-мя односпальными кроватями, кондиционером и большим панорамным окном с видом на внутренний дворик.','nomers/November2017/G92Eveiif1hz5VvKhZLA.jpg'),(35,'Кровать в общем 6-местном номере для женщин','[\"nomers\\/November2017\\/2Wxs2XUyRAaE1OcS6OzR.jpg\",\"nomers\\/November2017\\/S4NWy5pgZk57YBR5gAbZ.jpg\",\"nomers\\/November2017\\/gdGQhg5j64HczJYvRAzn.jpg\",\"nomers\\/November2017\\/BKHKNggRjFICS2j4x7nZ.jpg\",\"nomers\\/November2017\\/8qHK0kFMfeUn9bbTGgXF.jpg\",\"nomers\\/November2017\\/xiCD6N2eTByWBFyCIWuy.jpg\",\"nomers\\/November2017\\/OadOKa4qoheJDE7GsqSx.jpg\",\"nomers\\/November2017\\/Fap68Ly6WOSqYUYAqda3.jpg\",\"nomers\\/November2017\\/rHCNxl9rF4Kt2MHMkRdm.jpg\"]','<p><span style=\"color: #000000; font-family: \'Times New Roman\'; font-size: medium;\">Номер с кондиционером и большим панорамным окном. Двухъярусные кровати со шторками. В номере индивидуальные локеры для вещей. Площадь 20 кв.м.</span></p>','2017-11-10 23:58:00','2017-11-16 20:55:35','Кровать в общем номере для женщин с кондиционером и индивидуальными локерами для хранения вещей','nomers/November2017/t2EmEnylQ9aBMJcKwNX3.jpg'),(36,'Кровать в общем 10-местном номере','[\"nomers\\/November2017\\/nxkcN73i3tZhgHchKHi6.jpg\",\"nomers\\/November2017\\/lIh14yU9UEW2sKwSjmOL.jpg\",\"nomers\\/November2017\\/pv8ihm8bd5wMdFHWMcWg.jpg\",\"nomers\\/November2017\\/N8jUyR6YAsQvOZjRXs7R.jpg\",\"nomers\\/November2017\\/RcGz5JSKj5eEEj4tYoES.jpg\",\"nomers\\/November2017\\/WsA8mWSvNIVvGSjCFUjQ.jpg\",\"nomers\\/November2017\\/Ymmvz61HE40xbCl0VhYF.jpg\",\"nomers\\/November2017\\/d7EW0yogsCFcTjSYh3PH.jpg\",\"nomers\\/November2017\\/qCJ75pEagZT8Somd5AtP.jpg\",\"nomers\\/November2017\\/bbM4JXpxw9aHNJn1tx1b.jpg\",\"nomers\\/November2017\\/HnN5eKGntUbnJ5k3XOZr.jpg\",\"nomers\\/November2017\\/RniwvoPwlNd9w3ODsdme.jpg\",\"nomers\\/November2017\\/Rvf21A9FlEt8y2UZoxmY.jpg\"]','<p><span style=\"color: #000000; font-family: \'Times New Roman\'; font-size: medium;\">Просторный номер площадью 35 кв.м с двумя панорамными окнами, кондиционером и индивидуальными локерами для хранения вещей. Двухъярусные кровати оборудованы индивидуальными шторками.</span></p>','2017-11-11 00:00:00','2017-11-16 20:54:45','Кровать в общем номере с кондиционером и плиточным/мраморным полом и большим панорамным окном. Площадь номера - 35 кв.м. В номере установлены индивидуальные локеры для хранения вещей','nomers/November2017/Q2VgYteOW1ki9anZo31z.jpg'),(37,'Кровать в общем 6-местном номере','[\"nomers\\/November2017\\/zTzntFskmmyVoKGEXIWr.jpg\",\"nomers\\/November2017\\/lpf4ly1ktRBI6XNrD9FI.jpg\",\"nomers\\/November2017\\/45BtH6EOnflCA4UwxeoJ.jpg\",\"nomers\\/November2017\\/hrzSaWihAuBxBML7zmhq.jpg\",\"nomers\\/November2017\\/E1w8S0H0UZJ0mlHeMfSN.jpg\",\"nomers\\/November2017\\/n9DfaABMzFlpLFOt3YhV.jpg\",\"nomers\\/November2017\\/eIuxZpjItF9vUFRfgw2V.jpg\",\"nomers\\/November2017\\/cBrgJXq8mXQDagpc258n.jpg\"]','<p><span style=\"color: #000000; font-family: \'Times New Roman\'; font-size: medium;\">Номер с кондиционером и 2-мя небольшими окнами. Двухъярусные кровати со шторками. В номере индивидуальные локеры для вещей. Площадь 20 кв.м.</span></p>','2017-11-11 00:01:00','2017-11-16 20:55:15','Кровать в общем номере с кондиционером и индивидуальными локерами для хранения вещей','nomers/November2017/a3oRkFKYOamt6TNwrkHr.jpg'),(38,'Четырехместный номер \"Комфорт\"','[\"nomers\\/November2017\\/mhldRIOmWq4pgBfSzDAI.jpg\",\"nomers\\/November2017\\/DlCpBkxl2tYdG9FG9gAz.jpg\",\"nomers\\/November2017\\/J6d3BrVD0B571Z5EPZfU.jpg\"]','<p><span style=\"color: #000000; font-family: \'Times New Roman\'; font-size: medium;\">Номер с кондиционером без окна на улицу. Двухъярусные кровати со шторками. В номере индивидуальные локеры для вещей. Площадь 16 кв.м.</span></p>','2017-11-11 00:02:00','2017-11-16 20:56:50','Четырехместный общий номер с двумя двухъярусными кроватями, оборудованными индивидуальными шторками. В номере большое окно с видом на спортивную площадку, индивидуальные локеры для хранения вещей','nomers/November2017/naeUn9o7gt4scxZMxnaa.jpg'),(39,'Улучшенный четырехместный номер','[\"nomers\\/November2017\\/6kSig7EMq7uR6EeGmTJg.jpg\",\"nomers\\/November2017\\/RO3AAtFE7LesVu7QXA5W.jpg\",\"nomers\\/November2017\\/P5ySryRmZ5sH7JBaPpjg.jpg\",\"nomers\\/November2017\\/wy9Nns7Nsae7mbVlcScY.jpg\"]','<p><span style=\"color: #000000; font-family: \'Times New Roman\'; font-size: medium;\">Номер с кондиционером без окна на улицу. Двухъярусные кровати со шторками. В номере индивидуальные локеры для вещей. Площадь 16 кв.м.</span></p>','2017-11-11 00:03:00','2017-11-16 20:56:44','Четырехместный общий номер с двумя двухъярусными кроватями, оборудованными индивидуальными шторками. В номере большое окно с видом на спортивную площадку, индивидуальные локеры для хранения вещей','nomers/November2017/BvtCFxiJ2Vl2AJrDoSV8.jpg');
/*!40000 ALTER TABLE `nomers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,'Hello World','Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.','<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','pages/page1.jpg','hello-world','Yar Meta Description','Keyword1, Keyword2','ACTIVE','2017-10-17 13:12:33','2017-10-17 13:12:33');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_groups`
--

DROP TABLE IF EXISTS `permission_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permission_groups_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_groups`
--

LOCK TABLES `permission_groups` WRITE;
/*!40000 ALTER TABLE `permission_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `permission_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(55,1),(56,1),(57,1),(58,1),(59,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(77,1),(78,1),(79,1),(115,1),(116,1),(117,1),(118,1),(119,1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'browse_admin',NULL,'2017-10-17 13:12:33','2017-10-17 13:12:33',NULL),(2,'browse_database',NULL,'2017-10-17 13:12:33','2017-10-17 13:12:33',NULL),(3,'browse_media',NULL,'2017-10-17 13:12:33','2017-10-17 13:12:33',NULL),(4,'browse_compass',NULL,'2017-10-17 13:12:33','2017-10-17 13:12:33',NULL),(5,'browse_menus','menus','2017-10-17 13:12:33','2017-10-17 13:12:33',NULL),(6,'read_menus','menus','2017-10-17 13:12:33','2017-10-17 13:12:33',NULL),(7,'edit_menus','menus','2017-10-17 13:12:33','2017-10-17 13:12:33',NULL),(8,'add_menus','menus','2017-10-17 13:12:33','2017-10-17 13:12:33',NULL),(9,'delete_menus','menus','2017-10-17 13:12:33','2017-10-17 13:12:33',NULL),(10,'browse_pages','pages','2017-10-17 13:12:33','2017-10-17 13:12:33',NULL),(11,'read_pages','pages','2017-10-17 13:12:33','2017-10-17 13:12:33',NULL),(12,'edit_pages','pages','2017-10-17 13:12:33','2017-10-17 13:12:33',NULL),(13,'add_pages','pages','2017-10-17 13:12:33','2017-10-17 13:12:33',NULL),(14,'delete_pages','pages','2017-10-17 13:12:33','2017-10-17 13:12:33',NULL),(15,'browse_roles','roles','2017-10-17 13:12:33','2017-10-17 13:12:33',NULL),(16,'read_roles','roles','2017-10-17 13:12:33','2017-10-17 13:12:33',NULL),(17,'edit_roles','roles','2017-10-17 13:12:33','2017-10-17 13:12:33',NULL),(18,'add_roles','roles','2017-10-17 13:12:33','2017-10-17 13:12:33',NULL),(19,'delete_roles','roles','2017-10-17 13:12:33','2017-10-17 13:12:33',NULL),(20,'browse_users','users','2017-10-17 13:12:33','2017-10-17 13:12:33',NULL),(21,'read_users','users','2017-10-17 13:12:33','2017-10-17 13:12:33',NULL),(22,'edit_users','users','2017-10-17 13:12:33','2017-10-17 13:12:33',NULL),(23,'add_users','users','2017-10-17 13:12:33','2017-10-17 13:12:33',NULL),(24,'delete_users','users','2017-10-17 13:12:33','2017-10-17 13:12:33',NULL),(25,'browse_posts','posts','2017-10-17 13:12:33','2017-10-17 13:12:33',NULL),(26,'read_posts','posts','2017-10-17 13:12:33','2017-10-17 13:12:33',NULL),(27,'edit_posts','posts','2017-10-17 13:12:33','2017-10-17 13:12:33',NULL),(28,'add_posts','posts','2017-10-17 13:12:33','2017-10-17 13:12:33',NULL),(29,'delete_posts','posts','2017-10-17 13:12:33','2017-10-17 13:12:33',NULL),(30,'browse_categories','categories','2017-10-17 13:12:33','2017-10-17 13:12:33',NULL),(31,'read_categories','categories','2017-10-17 13:12:33','2017-10-17 13:12:33',NULL),(32,'edit_categories','categories','2017-10-17 13:12:33','2017-10-17 13:12:33',NULL),(33,'add_categories','categories','2017-10-17 13:12:33','2017-10-17 13:12:33',NULL),(34,'delete_categories','categories','2017-10-17 13:12:33','2017-10-17 13:12:33',NULL),(35,'browse_settings','settings','2017-10-17 13:12:33','2017-10-17 13:12:33',NULL),(36,'read_settings','settings','2017-10-17 13:12:33','2017-10-17 13:12:33',NULL),(37,'edit_settings','settings','2017-10-17 13:12:33','2017-10-17 13:12:33',NULL),(38,'add_settings','settings','2017-10-17 13:12:33','2017-10-17 13:12:33',NULL),(39,'delete_settings','settings','2017-10-17 13:12:33','2017-10-17 13:12:33',NULL),(55,'browse_revs','revs','2017-10-25 15:28:48','2017-10-25 15:28:48',NULL),(56,'read_revs','revs','2017-10-25 15:28:48','2017-10-25 15:28:48',NULL),(57,'edit_revs','revs','2017-10-25 15:28:48','2017-10-25 15:28:48',NULL),(58,'add_revs','revs','2017-10-25 15:28:48','2017-10-25 15:28:48',NULL),(59,'delete_revs','revs','2017-10-25 15:28:48','2017-10-25 15:28:48',NULL),(65,'browse_uslugs','uslugs','2017-10-25 15:44:07','2017-10-25 15:44:07',NULL),(66,'read_uslugs','uslugs','2017-10-25 15:44:07','2017-10-25 15:44:07',NULL),(67,'edit_uslugs','uslugs','2017-10-25 15:44:07','2017-10-25 15:44:07',NULL),(68,'add_uslugs','uslugs','2017-10-25 15:44:07','2017-10-25 15:44:07',NULL),(69,'delete_uslugs','uslugs','2017-10-25 15:44:07','2017-10-25 15:44:07',NULL),(70,'browse_nomers','nomers','2017-10-25 18:26:46','2017-10-25 18:26:46',NULL),(71,'read_nomers','nomers','2017-10-25 18:26:46','2017-10-25 18:26:46',NULL),(72,'edit_nomers','nomers','2017-10-25 18:26:46','2017-10-25 18:26:46',NULL),(73,'add_nomers','nomers','2017-10-25 18:26:46','2017-10-25 18:26:46',NULL),(74,'delete_nomers','nomers','2017-10-25 18:26:46','2017-10-25 18:26:46',NULL),(75,'browse_sliders','sliders','2017-10-26 19:17:46','2017-10-26 19:17:46',NULL),(76,'read_sliders','sliders','2017-10-26 19:17:46','2017-10-26 19:17:46',NULL),(77,'edit_sliders','sliders','2017-10-26 19:17:46','2017-10-26 19:17:46',NULL),(78,'add_sliders','sliders','2017-10-26 19:17:46','2017-10-26 19:17:46',NULL),(79,'delete_sliders','sliders','2017-10-26 19:17:46','2017-10-26 19:17:46',NULL),(115,'browse_gallers','gallers','2017-11-09 20:02:25','2017-11-09 20:02:25',NULL),(116,'read_gallers','gallers','2017-11-09 20:02:25','2017-11-09 20:02:25',NULL),(117,'edit_gallers','gallers','2017-11-09 20:02:25','2017-11-09 20:02:25',NULL),(118,'add_gallers','gallers','2017-11-09 20:02:25','2017-11-09 20:02:25',NULL),(119,'delete_gallers','gallers','2017-11-09 20:02:25','2017-11-09 20:02:25',NULL);
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,0,NULL,'Lorem Ipsum Post',NULL,'This is the excerpt for the Lorem Ipsum Post','<p>This is the body of the lorem ipsum post</p>','posts/post1.jpg','lorem-ipsum-post','This is the meta description','keyword1, keyword2, keyword3','PUBLISHED',0,'2017-10-17 13:12:33','2017-10-17 13:12:33'),(2,0,NULL,'My Sample Post',NULL,'This is the excerpt for the sample Post','<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>','posts/post2.jpg','my-sample-post','Meta Description for sample post','keyword1, keyword2, keyword3','PUBLISHED',0,'2017-10-17 13:12:33','2017-10-17 13:12:33'),(3,0,NULL,'Latest Post',NULL,'This is the excerpt for the latest post','<p>This is the body for the latest post</p>','posts/post3.jpg','latest-post','This is the meta description','keyword1, keyword2, keyword3','PUBLISHED',0,'2017-10-17 13:12:33','2017-10-17 13:12:33'),(4,0,NULL,'Yarr Post',NULL,'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.','<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>','posts/post4.jpg','yarr-post','this be a meta descript','keyword1, keyword2, keyword3','PUBLISHED',0,'2017-10-17 13:12:33','2017-10-17 13:12:33');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revs`
--

DROP TABLE IF EXISTS `revs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `revs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci,
  `body` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revs`
--

LOCK TABLES `revs` WRITE;
/*!40000 ALTER TABLE `revs` DISABLE KEYS */;
INSERT INTO `revs` VALUES (5,'Немертея','Вежливый и заботливый персонал. Очень стильный отель, молодежный. Нет ощущения \"вокзала\". Есть плита, холодильник, микроволновка. Чистые туалеты и душевые, много раковин. Рядом есть магазины, чтобы купить еду','2017-11-06 21:43:23','2017-11-06 21:43:23'),(6,'Polina','Я в Вышке была второй раз, и в этот раз нужно было эконом размещение для двоих. Могу уверенно заявить, среди всех вариантов в Адлере, этому нет равных. Я тщательно сравнивала. Соотношение цена-функциональность здесь лучше. На кухне большая варочная поверхность, а где-то предлагают просто мультиварку. Есть просторная зона столовой, где днем конечно никто не ест и можно работать за удобными столами со стабильным интернетом. Рассматривали хостелы, которые не предлагают двухместные номера, но где есть ящики для хранения вещей, но они там очень маленькие, а у нас было с собой много ценных вещей, которые в машине не оставишь и в маленький шкафчик они не войдут. Ну и наконец, вышагиваешь из здания, и прямо тут на парковке твоя машина ждет тебя, никуда не надо ходить. Как и весной, помещения чистые, администрация поддерживает порядок. Огромное спасибо за всё!','2017-11-06 21:43:38','2017-11-06 21:43:38'),(7,'Андрей','Замечательный хостел, удобное расположение, ИСКЛЮЧИТЕЛЬНО ЧИСТО!!! Очень доволен проживанием в хостеле, стоимость низкая, качество высокое. Отзывчивый дружелюбный персонал, нашёл здесь новых друзей.!','2017-11-06 21:43:51','2017-11-06 21:43:51'),(8,'Alisa','Чистая комната с кондиционером, на каждой кровати есть шторка, небольшая кухня со всем необходимым, в хостеле в общем доступе есть утюг. Местоположение хорошее, до пляжа 10 минут пешком, рядом остановка автобуса, откуда можно доехать до вокзала Адлера, олимпийского парка, аэропорта и т.д. В трех минутах ходьбы есть нормальный супермаркет.','2017-11-06 21:44:15','2017-11-06 21:44:15'),(9,'Alexandr','Место достаточно удобное. На первом этаже здания находится спортивный зал, а на втором хостел. Также внизу в здании расположен магазин-пекарня со свежей выпечкой. Рядом (через дом) расположена остановка общественного транспорта, а через дорогу небольшой продуктовой рынок и магазины с банкоматами. До моря пешком минут 15 ходьбы мимо различных торговых точек, кафе, шашлычных и баров. Очень зелено и уютно.  Сам хостел обставлен просто, но довольно уютно и чисто. Чистое постельное белье, есть 2 туалета, 3 душевые кабины и 3 раковины. Также за дополнительную небольшую плату можно сдать одежду в стирку. В спальных комнатах есть сейф, куда можно положить ценные вещи. Ключ предоставляет администратор за небольшой залог. Никто не шумит. Приходишь, готовишь еду, ужинаешь и ложишься спать. Для приготовления пищи есть плита, микроволновка, большой водонагреватель, два холодильника.','2017-11-06 21:44:30','2017-11-06 21:44:30'),(10,'Дмитрий','Тепло, сухо и уютно. ) Хороший хостел. Чисто, опрятно и аккуратно. Отличный ориентир в виде Останкинской башни. Был приятно удивлён. ) Просторная кухня, большая гостиная, везде есть розетки и во всех коридорах паласы. Жирный вифи.','2017-11-06 21:44:49','2017-11-06 21:44:49'),(11,'Ekaterina','Администраторы понимающие,подскажут где что,помогут.для путешествующего в одиночку в самый раз.комфортно,удобно,чисто в комнатах и в хостеле. Удобное расположение хостела в центре города,да аэропорта не так далеко. Советую! 10 из 10','2017-11-06 21:45:06','2017-11-06 21:45:06'),(12,'femida95','Неплохой wi-fi, но в номерах уже не очень хорошо ловил. Кровать изначально показалась жестковата, но в итоге спалось на ней отлично! Заселили, все рассказали, показали. Месторасположение на пятерку. Общая зона отличная! Мой вылет был поздно ночью, несмотря на это, без вопросов разрешили остаться, даже удалось подремать в общей комнате.','2017-11-06 21:45:19','2017-11-06 21:45:19'),(13,'Ivan','Чистота, приятная и спокойная атмосфера. Удобные комнаты, просторный холл, кухня с посудой и чаем. Сушилка для постиранных вещей. Много розеток. Велопрокат. Удобное расположение: до пляжа, рынка, автобуса в аэропорт, вокзал, Олимпийский парк, Сочи, Псоу - максимум 10 минут пешком.','2017-11-06 21:45:34','2017-11-06 21:45:34'),(14,'Viacheslav','Довольно просторно и чисто, уличная обувь оставляется на входе. В гостиной нет телевизора и это плюс, потому что тихо и спать можно хоть начиная с 9 вечера. Или заниматься своими делами так, чтобы ничего не отвлекало. Также каким-то волшебным образом получается, что контингент весь нейтрально-хороший, за весь месяц, который я жил - ни одного сомнительного типа. Как бонус - магазин с дешевыми и вкусными булочками прямо у входа. В общем всем доволен!','2017-11-06 21:45:49','2017-11-06 21:45:49'),(15,'Mir_Katrin','Очень чистый, уютный хостел. Адекватные все гости. Можно было оставить чемодан на сутки, когда уже выехала.','2017-11-06 21:46:05','2017-11-06 21:46:05'),(16,'Зануда','Занавес на кроватях, неплохой ремонт, относительная тишина, кондиционер годный, предоставили вазу для цветов. Убирают часто, но неумело (моют пол посередине, а возле окна у меня тапочки аж к полу прилипали))) В хостеле имеется животное - паук в ванной. Не знаю, это постоялец или как))','2017-11-06 21:46:19','2017-11-06 21:46:19'),(17,'Милдред','Небольшой, комфортный и, что важно, тихий; нам попался просторный светлый номер, в котором было приятно находиться длительное время; запомнилось и понравилось настроение хостела - что-то среднее между детским лагерем и хиппи общиной','2017-11-06 21:46:31','2017-11-06 21:46:31'),(18,'Margarita','На кроватях шторочки, это создаёт уединение и покой) зарядки есть В зоне каждой кровати, очень нужно и полезно!)','2017-11-06 21:46:46','2017-11-06 21:46:46');
/*!40000 ALTER TABLE `revs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Administrator','2017-10-17 13:12:33','2017-10-17 13:12:33'),(2,'user','Normal User','2017-10-17 13:12:33','2017-10-17 13:12:33');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'site.title','Site Title','Site Title','','text',1,'Site'),(2,'site.description','Site Description','Site Description','','text',2,'Site'),(3,'site.logo','Site Logo','','','image',3,'Site'),(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID','','','text',4,'Site'),(5,'admin.bg_image','Admin Background Image','','','image',5,'Admin'),(6,'admin.title','Admin Title','Voyager','','text',1,'Admin'),(7,'admin.description','Admin Description','Welcome to Voyager. The Missing Admin for Laravel','','text',2,'Admin'),(8,'admin.loader','Admin Loader','','','image',3,'Admin'),(9,'admin.icon_image','Admin Icon Image','','','image',4,'Admin'),(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)','','','text',1,'Admin');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sliders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `img` text COLLATE utf8_unicode_ci,
  `title` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sliders`
--

LOCK TABLES `sliders` WRITE;
/*!40000 ALTER TABLE `sliders` DISABLE KEYS */;
INSERT INTO `sliders` VALUES (5,'sliders/November2017/i1.png','Жизнь - дар','2017-11-08 20:17:57','2017-11-08 20:17:57');
/*!40000 ALTER TABLE `sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` VALUES (1,'data_types','display_name_singular',1,'pt','Post','2017-10-17 13:12:33','2017-10-17 13:12:33'),(2,'data_types','display_name_singular',2,'pt','Página','2017-10-17 13:12:33','2017-10-17 13:12:33'),(3,'data_types','display_name_singular',3,'pt','Utilizador','2017-10-17 13:12:33','2017-10-17 13:12:33'),(4,'data_types','display_name_singular',4,'pt','Categoria','2017-10-17 13:12:33','2017-10-17 13:12:33'),(5,'data_types','display_name_singular',5,'pt','Menu','2017-10-17 13:12:33','2017-10-17 13:12:33'),(6,'data_types','display_name_singular',6,'pt','Função','2017-10-17 13:12:33','2017-10-17 13:12:33'),(7,'data_types','display_name_plural',1,'pt','Posts','2017-10-17 13:12:33','2017-10-17 13:12:33'),(8,'data_types','display_name_plural',2,'pt','Páginas','2017-10-17 13:12:33','2017-10-17 13:12:33'),(9,'data_types','display_name_plural',3,'pt','Utilizadores','2017-10-17 13:12:33','2017-10-17 13:12:33'),(10,'data_types','display_name_plural',4,'pt','Categorias','2017-10-17 13:12:33','2017-10-17 13:12:33'),(11,'data_types','display_name_plural',5,'pt','Menus','2017-10-17 13:12:33','2017-10-17 13:12:33'),(12,'data_types','display_name_plural',6,'pt','Funções','2017-10-17 13:12:33','2017-10-17 13:12:33'),(13,'categories','slug',1,'pt','categoria-1','2017-10-17 13:12:33','2017-10-17 13:12:33'),(14,'categories','name',1,'pt','Categoria 1','2017-10-17 13:12:33','2017-10-17 13:12:33'),(15,'categories','slug',2,'pt','categoria-2','2017-10-17 13:12:33','2017-10-17 13:12:33'),(16,'categories','name',2,'pt','Categoria 2','2017-10-17 13:12:33','2017-10-17 13:12:33'),(17,'pages','title',1,'pt','Olá Mundo','2017-10-17 13:12:33','2017-10-17 13:12:33'),(18,'pages','slug',1,'pt','ola-mundo','2017-10-17 13:12:33','2017-10-17 13:12:33'),(19,'pages','body',1,'pt','<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','2017-10-17 13:12:33','2017-10-17 13:12:33'),(20,'menu_items','title',1,'pt','Painel de Controle','2017-10-17 13:12:33','2017-10-17 13:12:33'),(21,'menu_items','title',2,'pt','Media','2017-10-17 13:12:33','2017-10-17 13:12:33'),(22,'menu_items','title',3,'pt','Publicações','2017-10-17 13:12:33','2017-10-17 13:12:33'),(23,'menu_items','title',4,'pt','Utilizadores','2017-10-17 13:12:33','2017-10-17 13:12:33'),(24,'menu_items','title',5,'pt','Categorias','2017-10-17 13:12:33','2017-10-17 13:12:33'),(25,'menu_items','title',6,'pt','Páginas','2017-10-17 13:12:33','2017-10-17 13:12:33'),(26,'menu_items','title',7,'pt','Funções','2017-10-17 13:12:33','2017-10-17 13:12:33'),(27,'menu_items','title',8,'pt','Ferramentas','2017-10-17 13:12:33','2017-10-17 13:12:33'),(28,'menu_items','title',9,'pt','Menus','2017-10-17 13:12:33','2017-10-17 13:12:33'),(29,'menu_items','title',10,'pt','Base de dados','2017-10-17 13:12:33','2017-10-17 13:12:33'),(30,'menu_items','title',13,'pt','Configurações','2017-10-17 13:12:33','2017-10-17 13:12:33');
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'Admin','admin@admin.com','users/default.png','$2y$10$q0DqiNIDwrYZ.UmYsxxrjO5ZtORbw.aPXqigdjGO7mxkqhdwEGk.O','ESPoq16CME8AuFO7GvkKD6iRXmybaiaUuPbmbgFpQe24xE5A7aMNwMPDcOui','2017-10-17 13:12:33','2017-10-17 13:12:33');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uslugs`
--

DROP TABLE IF EXISTS `uslugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uslugs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `img` text COLLATE utf8_unicode_ci,
  `title` text COLLATE utf8_unicode_ci,
  `body` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uslugs`
--

LOCK TABLES `uslugs` WRITE;
/*!40000 ALTER TABLE `uslugs` DISABLE KEYS */;
INSERT INTO `uslugs` VALUES (9,'uslugs/November2017/l1.png','Услуги уборки/чистки','Ежедневная уборка номера Прачечная','2017-11-06 21:36:48','2017-11-06 21:36:48'),(10,'uslugs/November2017/32.png','Услуги на стойке регистрации','Круглосуточная стойка регистрации Ускоренная регистрация заезда/отъезда Сейф Запирающиеся шкафчики','2017-11-06 21:37:20','2017-11-06 21:37:20'),(11,'uslugs/November2017/33.png','Транспорт','Трансфер от/до аэропорта Трансфер от/до аэропорта (платный) Прокат велосипедов','2017-11-06 21:37:48','2017-11-06 21:37:48'),(12,'uslugs/November2017/34.png','Спа и велнес','Фитнес-центр','2017-11-06 21:38:16','2017-11-06 21:38:16'),(13,'uslugs/November2017/35.png','Катание на лыжах','Катание на лыжах Продажа горнолыжного абонемента Прокат лыжного снаряжения Место для хранения лыж','2017-11-06 21:38:42','2017-11-06 21:38:42'),(14,'uslugs/November2017/36.png','Общие','Номера для некурящих Кондиционер Курение на всей территории запрещено Звукоизолированные номера Терраса','2017-11-06 21:39:07','2017-11-06 21:39:07'),(15,'uslugs/November2017/37.png','Еда и напитки','Общая кухня','2017-11-06 21:39:35','2017-11-06 21:39:35'),(16,'uslugs/November2017/38.png','Развлечения','Общий лаундж/гостиная с телевизором','2017-11-06 21:40:07','2017-11-06 21:40:07'),(17,'uslugs/November2017/39.png','Размещение домашних животных','Размещение домашних животных допускается по предварительному запросу. Дополнительная плата не взимается.','2017-11-06 21:40:35','2017-11-06 21:40:35'),(18,'uslugs/November2017/40.png','Услуги по парковке автомобилей','Бесплатная Общественная парковка на месте (предварительный заказ не требуется).','2017-11-06 21:41:00','2017-11-06 21:41:09'),(19,'uslugs/November2017/41.png','Интернет','Wi-Fi предоставляется на территории всего отеля бесплатно.','2017-11-06 21:41:39','2017-11-06 21:41:39');
/*!40000 ALTER TABLE `uslugs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-16 21:46:34
