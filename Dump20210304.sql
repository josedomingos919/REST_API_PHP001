-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: api_db
-- ------------------------------------------------------
-- Server version	5.7.23

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Fashion','Category for anything related to fashion.','2014-06-01 00:35:07','2014-05-30 16:34:33'),(2,'Electronics','Gadgets, drones and more.','2014-06-01 00:35:07','2014-05-30 16:34:33'),(3,'Motors','Motor sports and more','2014-06-01 00:35:07','2014-05-30 16:34:54'),(5,'Movies','Movie products.','2021-03-04 03:25:06','2016-01-08 12:27:26'),(6,'Books','Kindle books, audio books and more.','2021-03-04 03:25:06','2016-01-08 12:27:47'),(13,'Sports','Drop into new winter gear.','2016-01-09 02:24:24','2016-01-09 00:24:24');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'LG P880 4X HD','My first awesome phone!',336,3,'2014-06-01 01:12:26','2014-05-31 16:12:26'),(2,'Google Nexus 4','The most awesome phone of 2013!',299,2,'2014-06-01 01:12:26','2014-05-31 16:12:26'),(3,'Samsung Galaxy S4','How about no?',600,3,'2014-06-01 01:12:26','2014-05-31 16:12:26'),(6,'Bench Shirt','The best shirt!',29,1,'2014-06-01 01:12:26','2014-05-31 01:12:21'),(7,'Lenovo Laptop','My business partner.',399,2,'2014-06-01 01:13:45','2014-05-31 01:13:39'),(8,'Samsung Galaxy Tab 10.1','Good tablet.',259,2,'2014-06-01 01:14:13','2014-05-31 01:14:08'),(9,'Spalding Watch','My sports watch.',199,1,'2014-06-01 01:18:36','2014-05-31 01:18:31'),(10,'Sony Smart Watch','The coolest smart watch!',300,2,'2014-06-06 17:10:01','2014-06-05 17:09:51'),(11,'Huawei Y300','For testing purposes.',100,2,'2014-06-06 17:11:04','2014-06-05 17:10:54'),(12,'Abercrombie Lake Arnold Shirt','Perfect as gift!',60,1,'2014-06-06 17:12:21','2014-06-05 17:12:11'),(13,'Abercrombie Allen Brook Shirt','Cool red shirt!',70,1,'2014-06-06 17:12:59','2014-06-05 17:12:49'),(26,'Another product','Awesome product!',555,2,'2014-11-22 19:07:34','2014-11-21 19:07:34'),(28,'Wallet','You can absolutely use this one!',799,6,'2014-12-04 21:12:03','2014-12-03 21:12:03'),(31,'Amanda Waller Shirt','New awesome shirt!',333,1,'2014-12-13 00:52:54','2014-12-12 00:52:54'),(42,'Nike Shoes for Men','Nike Shoes',12999,3,'2015-12-12 06:47:08','2015-12-12 04:47:08'),(48,'Bristol Shoes','Awesome shoes.',999,5,'2016-01-08 06:36:37','2016-01-08 04:36:37'),(60,'Rolex Watch','Luxury watch.',25000,1,'2016-01-11 15:46:02','2016-01-11 13:46:02'),(65,'Amazing Pillow 2.0','The best pillow for amazing programmers.',199,2,'2021-03-04 03:02:07','2021-03-04 03:02:07');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'api_db'
--

--
-- Dumping routines for database 'api_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-04  4:19:33
