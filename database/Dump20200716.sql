-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: menu_db
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `ads_admin_settings`
--

DROP TABLE IF EXISTS `ads_admin_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_admin_settings` (
  `ads_id` int unsigned NOT NULL AUTO_INCREMENT,
  `ads_currency_symbol` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ads_currency_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ads_cost_qr` int NOT NULL DEFAULT '1',
  `ads_cost_shipping` int DEFAULT '1',
  PRIMARY KEY (`ads_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_admin_settings`
--

LOCK TABLES `ads_admin_settings` WRITE;
/*!40000 ALTER TABLE `ads_admin_settings` DISABLE KEYS */;
INSERT INTO `ads_admin_settings` VALUES (1,'$','$',18,150);
/*!40000 ALTER TABLE `ads_admin_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ale_alert`
--

DROP TABLE IF EXISTS `ale_alert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ale_alert` (
  `ale_id` int NOT NULL AUTO_INCREMENT,
  `ale_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ale_action` int DEFAULT NULL,
  `ale_enabled` bit(1) NOT NULL,
  PRIMARY KEY (`ale_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ale_alert`
--

LOCK TABLES `ale_alert` WRITE;
/*!40000 ALTER TABLE `ale_alert` DISABLE KEYS */;
INSERT INTO `ale_alert` VALUES (1,'Debes completar tu perfil antes de seguir operando con la plataforma',6,_binary '');
/*!40000 ALTER TABLE `ale_alert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `axu_alexusr`
--

DROP TABLE IF EXISTS `axu_alexusr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `axu_alexusr` (
  `axu_id` int NOT NULL AUTO_INCREMENT,
  `ale_id` int NOT NULL,
  `usr_id_owner` int DEFAULT NULL,
  `usr_id` int NOT NULL,
  `axu_viewed` bit(1) NOT NULL,
  `axu_sent` bit(1) NOT NULL DEFAULT b'0',
  `axu_entered` datetime NOT NULL,
  `axu_enabled` bit(1) NOT NULL,
  PRIMARY KEY (`axu_id`),
  KEY `axc_alert_idx` (`ale_id`),
  KEY `usr_user_idx` (`usr_id`),
  CONSTRAINT `axl_alert` FOREIGN KEY (`ale_id`) REFERENCES `ale_alert` (`ale_id`),
  CONSTRAINT `usr_user` FOREIGN KEY (`usr_id`) REFERENCES `usr_user` (`usr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `axu_alexusr`
--

LOCK TABLES `axu_alexusr` WRITE;
/*!40000 ALTER TABLE `axu_alexusr` DISABLE KEYS */;
INSERT INTO `axu_alexusr` VALUES (2,1,2,2,_binary '',_binary '','2020-06-07 21:54:44',_binary ''),(8,1,8,8,_binary '',_binary '','2020-06-15 15:21:01',_binary ''),(11,1,11,11,_binary '',_binary '','2020-06-19 20:10:29',_binary ''),(12,1,12,12,_binary '',_binary '','2020-06-19 20:34:45',_binary ''),(13,1,13,13,_binary '',_binary '','2020-06-19 21:59:26',_binary ''),(14,1,14,14,_binary '',_binary '','2020-06-19 23:04:59',_binary ''),(15,1,15,15,_binary '',_binary '','2020-06-20 01:51:42',_binary ''),(16,1,16,16,_binary '',_binary '','2020-06-20 23:34:25',_binary ''),(17,1,17,17,_binary '',_binary '','2020-06-20 23:43:45',_binary ''),(18,1,18,18,_binary '',_binary '','2020-06-23 18:05:43',_binary ''),(19,1,19,19,_binary '',_binary '','2020-06-23 19:26:42',_binary ''),(20,1,20,20,_binary '',_binary '','2020-06-23 21:09:06',_binary ''),(22,1,22,22,_binary '',_binary '','2020-06-25 14:16:59',_binary ''),(23,1,23,23,_binary '\0',_binary '','2020-06-27 23:39:40',_binary ''),(24,1,24,24,_binary '',_binary '','2020-06-30 15:01:04',_binary ''),(25,1,25,25,_binary '',_binary '','2020-06-30 16:58:19',_binary ''),(26,1,26,26,_binary '',_binary '','2020-07-01 14:52:11',_binary ''),(27,1,27,27,_binary '',_binary '','2020-07-01 19:09:47',_binary ''),(28,1,28,28,_binary '',_binary '','2020-07-02 16:29:16',_binary ''),(29,1,29,29,_binary '',_binary '','2020-07-03 19:53:29',_binary ''),(30,1,30,30,_binary '',_binary '','2020-07-06 18:49:54',_binary ''),(31,1,31,31,_binary '',_binary '','2020-07-07 21:54:44',_binary ''),(33,1,33,33,_binary '',_binary '','2020-07-07 22:54:01',_binary ''),(34,1,34,34,_binary '',_binary '','2020-07-08 00:57:28',_binary ''),(35,1,35,35,_binary '\0',_binary '','2020-07-08 01:18:33',_binary ''),(36,1,36,36,_binary '\0',_binary '','2020-07-08 12:10:59',_binary ''),(37,1,37,37,_binary '\0',_binary '','2020-07-08 12:11:28',_binary ''),(38,1,38,38,_binary '',_binary '','2020-07-08 14:13:18',_binary ''),(40,1,40,40,_binary '',_binary '','2020-07-08 21:57:15',_binary ''),(42,1,42,42,_binary '\0',_binary '','2020-07-08 22:59:43',_binary ''),(43,1,43,43,_binary '',_binary '','2020-07-09 13:27:01',_binary ''),(44,1,44,44,_binary '',_binary '','2020-07-09 13:28:43',_binary ''),(45,1,45,45,_binary '',_binary '','2020-07-09 20:15:55',_binary ''),(46,1,46,46,_binary '',_binary '','2020-07-10 00:24:31',_binary ''),(47,1,47,47,_binary '',_binary '','2020-07-10 15:05:15',_binary ''),(48,1,48,48,_binary '',_binary '','2020-07-10 19:06:02',_binary ''),(49,1,49,49,_binary '',_binary '','2020-07-10 19:14:04',_binary ''),(50,1,50,50,_binary '\0',_binary '','2020-07-10 21:48:41',_binary ''),(51,1,51,51,_binary '\0',_binary '','2020-07-10 21:48:57',_binary ''),(52,1,52,52,_binary '',_binary '','2020-07-11 00:54:41',_binary ''),(53,1,53,53,_binary '\0',_binary '','2020-07-11 18:37:09',_binary ''),(54,1,54,54,_binary '\0',_binary '','2020-07-11 18:37:40',_binary ''),(55,1,55,55,_binary '\0',_binary '','2020-07-11 18:38:12',_binary ''),(56,1,56,56,_binary '',_binary '','2020-07-13 22:26:18',_binary ''),(57,1,57,57,_binary '\0',_binary '','2020-07-13 22:26:44',_binary ''),(58,1,58,58,_binary '',_binary '','2020-07-15 14:05:46',_binary ''),(59,1,59,59,_binary '\0',_binary '','2020-07-15 21:39:47',_binary '');
/*!40000 ALTER TABLE `axu_alexusr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buy_buyqr`
--

DROP TABLE IF EXISTS `buy_buyqr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buy_buyqr` (
  `buy_id` int NOT NULL AUTO_INCREMENT,
  `usr_id` int NOT NULL,
  `buy_status` enum('pending','payed','sent','ready') CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'pending',
  `buy_quantity` int DEFAULT NULL,
  `buy_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `buy_email` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `buy_installments` int DEFAULT NULL,
  `buy_payment_method_id` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `buy_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `buy_transaction_amount` float DEFAULT NULL,
  `buy_response_mp` text CHARACTER SET utf8 COLLATE utf8_bin,
  `buy_entered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`buy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buy_buyqr`
--

LOCK TABLES `buy_buyqr` WRITE;
/*!40000 ALTER TABLE `buy_buyqr` DISABLE KEYS */;
/*!40000 ALTER TABLE `buy_buyqr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_category`
--

DROP TABLE IF EXISTS `cat_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cat_category` (
  `cat_id` int NOT NULL AUTO_INCREMENT,
  `usr_id` int NOT NULL,
  `cat_order_parent` int NOT NULL DEFAULT '1',
  `cat_order` int NOT NULL DEFAULT '1',
  `cat_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `cat_excerpt` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `cat_manyPrices` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `cat_enable` bit(1) NOT NULL DEFAULT b'1',
  `cat_id_parent` int NOT NULL DEFAULT '0',
  `cat_id_clone` int DEFAULT NULL,
  `cat_back_color` varchar(8) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'FFFFFF',
  `cat_font_color` enum('dark','light') CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'dark',
  PRIMARY KEY (`cat_id`),
  KEY `cat_usr_id` (`usr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=754 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_category`
--

LOCK TABLES `cat_category` WRITE;
/*!40000 ALTER TABLE `cat_category` DISABLE KEYS */;
INSERT INTO `cat_category` VALUES (1,2,1,1,'desayunos','',NULL,_binary '',0,NULL,'fff','dark'),(2,2,1,2,'entradas',NULL,NULL,_binary '',0,NULL,'FFFFFF','dark'),(3,2,1,4,'ensaladas','','Chi|Gra',_binary '',0,NULL,'FFFFFF','dark'),(4,2,1,5,'parrilla de carbón',NULL,NULL,_binary '',0,NULL,'FFFFFF','dark'),(5,2,5,1,'nuestras patatas especiales','',NULL,_binary '',4,NULL,'FFFFFF','dark'),(6,2,1,6,'bebidas','',NULL,_binary '',0,NULL,'746d53','light'),(7,8,1,1,'desayunos y meriendas',NULL,NULL,_binary '',0,NULL,'FFFFFF','dark'),(8,8,1,2,'cafetería',NULL,NULL,_binary '',0,NULL,'FFFFFF','dark'),(9,8,1,3,'tartas y tortas',NULL,NULL,_binary '',0,NULL,'FFFFFF','dark'),(10,8,1,4,'adicionales',NULL,NULL,_binary '',0,NULL,'FFFFFF','dark'),(11,8,1,5,'licuados',NULL,NULL,_binary '',0,NULL,'FFFFFF','dark'),(12,8,1,6,'jarra de limonada',NULL,NULL,_binary '',0,NULL,'FFFFFF','dark'),(13,8,1,7,'sándwiches y tostas',NULL,NULL,_binary '',0,NULL,'FFFFFF','dark'),(14,8,1,8,'hamburguesas',NULL,NULL,_binary '',0,NULL,'FFFFFF','dark'),(15,8,1,9,'degustación de hamburguesas',NULL,NULL,_binary '',0,NULL,'FFFFFF','dark'),(16,8,1,10,'lomos',NULL,NULL,_binary '',0,NULL,'FFFFFF','dark'),(17,8,1,11,'sándwiches',NULL,NULL,_binary '',0,NULL,'FFFFFF','dark'),(18,8,1,12,'menú infantil',NULL,NULL,_binary '',0,NULL,'FFFFFF','dark'),(19,8,1,13,'nuestros tacos',NULL,NULL,_binary '',0,NULL,'FFFFFF','dark'),(20,8,1,15,'whiskys (la medida)',NULL,NULL,_binary '',0,NULL,'FFFFFF','dark'),(22,8,1,16,'bebidas sin alcohol',NULL,NULL,_binary '',0,NULL,'FFFFFF','dark'),(23,8,1,17,'algunos tragos',NULL,NULL,_binary '',0,NULL,'FFFFFF','dark'),(24,8,1,18,'vinos',NULL,NULL,_binary '',0,NULL,'FFFFFF','dark'),(26,8,1,19,'menú del día',NULL,NULL,_binary '',0,NULL,'FFFFFF','dark'),(27,8,1,20,'armá tu ensalada',NULL,NULL,_binary '',0,NULL,'FFFFFF','dark'),(32,8,1,21,'opcionales','Todos los menús vienen con guarnición de papas, ensalada o puré',NULL,_binary '',0,NULL,'FFFFFF','dark'),(33,8,1,22,'más livianitos',NULL,NULL,_binary '',0,NULL,'FFFFFF','dark'),(35,8,1,23,'las gohan del mesón',NULL,NULL,_binary '',0,NULL,'FFFFFF','dark'),(36,8,1,24,'espumantes','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(37,8,1,25,'postres','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(39,8,1,26,'helados','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(40,8,1,14,'Para compartir','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(41,11,1,1,'Para picar!','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(42,13,1,5,'Empanadas Salteñas \"de la abuela Ema\"','Pa´entrarle',NULL,_binary '\0',0,NULL,'FFFFFF','dark'),(43,13,1,7,'en Cazuela','',NULL,_binary '\0',0,NULL,'FFFFFF','dark'),(44,13,1,9,'en Chala','',NULL,_binary '\0',0,NULL,'FFFFFF','dark'),(45,13,1,10,'pa´l postre','',NULL,_binary '\0',0,NULL,'FFFFFF','dark'),(46,13,1,1,'Gaseosas y aguas','',NULL,_binary '',71,NULL,'FFFFFF','dark'),(47,13,1,3,'Vinos Salteños','',NULL,_binary '',71,NULL,'FFFFFF','dark'),(56,15,1,1,'Desayunos y Meriendas','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(57,15,1,2,'Jugos Naturales','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(58,15,1,3,'Menú Infantil','+ Bebida y Juguete',NULL,_binary '',0,NULL,'FFFFFF','dark'),(59,15,1,4,'Postres','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(60,15,1,5,'Bebidas','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(61,15,1,6,'Cervezas Artesanales','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(62,15,1,7,'Vinos','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(63,15,1,8,'Menú del Mediodía','+ Bebida + Postre o Café',NULL,_binary '',0,NULL,'FFFFFF','dark'),(64,15,1,9,'Principales','Para Compartir',NULL,_binary '',0,NULL,'FFFFFF','dark'),(65,15,1,10,'Entradas','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(66,15,1,11,'Lomitos','','med.|gde.',_binary '',0,NULL,'FFFFFF','dark'),(67,13,1,2,'Cervezas','',NULL,_binary '',71,NULL,'FFFFFF','dark'),(69,13,1,8,'Pastas','',NULL,_binary '\0',0,NULL,'FFFFFF','dark'),(70,13,1,6,'Empanadas Arabes','',NULL,_binary '\0',0,NULL,'FFFFFF','dark'),(71,13,1,1,'Sugerencia Del Día','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(72,14,1,1,'ENTRADAS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(73,17,1,1,'CAFETERIA','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(74,17,1,2,'BEBIDAS SIN ALCOHOL','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(75,17,1,3,'CERVEZAS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(76,17,1,4,'SANDWHICHES','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(77,17,1,5,'PIZZAS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(78,11,1,2,'Ensaladas','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(79,11,1,3,'Pescados y Mariscos','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(80,11,1,4,'Carnes','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(81,11,1,5,'Menú  niños','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(82,11,1,6,'Tabla criolla','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(83,11,1,7,'Pastas','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(84,11,1,8,'Salsas','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(85,11,1,9,'Sándwiches','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(86,11,1,10,'Al plato!','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(87,11,1,11,'Para tomar','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(88,11,1,12,'Postres','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(89,11,1,13,'Cafetería','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(90,11,1,14,'Cafetería Especial','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(91,11,1,15,'Tragos Clásicos','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(92,11,1,16,'Tragos Largos','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(93,11,1,17,'Cóctel Ochre','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(94,11,1,18,'Chandon tragos','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(95,11,1,19,'Reversiones de Ochre','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(96,11,1,20,'Cremas Heladas & Champagne','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(97,11,1,21,'Vodka','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(98,11,1,22,'Cervezas','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(99,17,1,6,'AL PLATO','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(100,17,1,7,'ENSALADAS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(101,17,1,8,'OMELETTES','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(102,17,1,9,'CREPES','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(103,17,1,10,'WHISKYS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(104,18,1,1,'Desayunos','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(105,19,1,1,'Cafeteria','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(106,19,1,2,'Desayunos y Meriendas','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(107,19,1,3,'Almuerzos','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(108,16,1,1,'Para picar','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(109,16,1,2,'Entradas','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(110,16,1,3,'Carnes','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(111,16,1,4,'Minutas','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(112,16,1,5,'Pescados','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(113,16,1,6,'Pastas','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(114,16,1,7,'Ensaladas','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(115,16,1,8,'Guarniciones','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(116,17,1,11,'TRAGOS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(118,16,1,9,'Pizzas','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(119,16,1,10,'Lomos','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(120,16,1,11,'Sandwiches','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(121,16,1,12,'Vinos y Champagne','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(122,16,1,13,'Postres','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(123,16,1,14,'Bebidas sin alcohol','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(124,22,1,1,'Menús de pasos','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(125,16,1,15,'Cafeteria','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(126,12,1,1,'ENTRADAS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(127,12,1,2,'EMPANADAS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(128,12,1,3,'LOMITOS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(129,12,1,4,'SANDWICHES','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(130,12,1,5,'HAMBURGUESAS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(131,16,1,16,'Cervezas','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(132,16,1,17,'Tragos','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(133,12,1,6,'PIZZAS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(134,13,1,12,'Nuestras formas de pago','Transferencia bancaria',NULL,_binary '\0',0,NULL,'FFFFFF','dark'),(136,12,1,7,'COMIDAS VARIAS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(137,12,1,8,'ENSALADAS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(138,12,1,9,'SIN ALCOHOL','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(139,24,1,2,'Entradas','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(140,24,1,3,'Ensaladas','clásicas',NULL,_binary '',0,NULL,'FFFFFF','dark'),(141,24,1,5,'Guarniciones','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(142,24,3,4,'Ensaladas especiales','',NULL,_binary '',140,NULL,'FFFFFF','dark'),(147,12,1,10,'CERVEZAS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(148,12,1,11,'CON ALCOHOL','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(149,12,1,12,'VINOS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(150,12,1,13,'POSTRES (2x1)','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(151,12,1,14,'CAFETERÍA','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(152,25,1,1,'Bebidas','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(153,25,1,2,'Comidas','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(154,28,1,1,'CAFETERÍA','DESAYUNOS Y MERIENDAS',NULL,_binary '',0,NULL,'FFFFFF','dark'),(155,28,1,2,'JUGOS Y LICUADOS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(156,28,1,3,'BEBIDAS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(157,28,1,4,'POSTRES','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(158,28,1,5,'ENTRADAS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(159,28,1,6,'ENSALADAS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(160,28,1,7,'SANDWICHS Y HAMBURGUESAS','CON TOPPINGS CASICOS DE LECHUGA/TOMATE/CEBOLLA/PANCETA/CEBOLLA CARAMELIZADA/SALSA CS/SALSA BBQ',NULL,_binary '',0,NULL,'FFFFFF','dark'),(161,28,1,8,'PLATOS TRADICIONALES','GUARNICIÓN: PAPAS FRITAS, PURÉ DE PAPAS, ENSALADA MIXTA O ARROZ CREMOSO',NULL,_binary '',0,NULL,'FFFFFF','dark'),(162,28,1,9,'TRAGOS','CLÁSICOS',NULL,_binary '',0,NULL,'FFFFFF','dark'),(163,28,9,1,'TRAGOS','SIN ALCOHOL',NULL,_binary '',162,NULL,'FFFFFF','dark'),(164,28,9,2,'TRAGOS','DE AUTOR',NULL,_binary '',162,NULL,'FFFFFF','dark'),(165,28,1,12,'VINOS Y ESPUMANTES','BODEGA CHANDON',NULL,_binary '',0,NULL,'FFFFFF','dark'),(166,28,12,1,'VIÑA LAS PERDICES','BODEGA',NULL,_binary '',165,NULL,'FFFFFF','dark'),(167,28,12,2,'ANDELUNA','BODEGA',NULL,_binary '',165,NULL,'FFFFFF','dark'),(168,27,1,1,'ENTRADA','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(169,27,1,2,'ENSALADAS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(170,27,1,3,'PASTAS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(171,27,1,4,'MINUTAS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(172,27,1,5,'PARRILLA','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(173,27,1,6,'GUARNICIÓN','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(174,27,1,8,'BEBIDAS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(175,27,1,9,'VINOS','','3/8|3/4',_binary '',0,NULL,'FFFFFF','dark'),(176,27,1,10,'CHAMPAÑAS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(179,27,1,7,'HAMBURGUESAS','DE LA PARRILLA A TU GUSTO',NULL,_binary '',0,NULL,'FFFFFF','dark'),(180,28,7,1,'TOPPINGS EXTRA','',NULL,_binary '',160,NULL,'FFFFFF','dark'),(181,28,8,1,'PASTAS CASERAS','',NULL,_binary '',161,NULL,'FFFFFF','dark'),(182,29,1,1,'CAFETERIA','DESAYUNOS/MERIENDAS',NULL,_binary '',0,NULL,'FFFFFF','dark'),(183,29,1,2,'JUGOS Y LICUADOS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(184,29,1,3,'BEBIDAS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(185,29,1,4,'CERVEZAS Y CHOPP','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(186,29,1,5,'POSTRES','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(187,29,1,7,'ENTRADAS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(188,29,1,8,'SANDWICHS , HAMBURGUESAS Y TACOS','CON TOPPINGS CLÁSICOS DE LECHUGA/TOMATE/CEBOLLA/PANCETA/CEBOLLA CARAMELIZADA/SALSA CS/SALSA BBQ',NULL,_binary '',0,NULL,'FFFFFF','dark'),(189,29,1,9,'TRAGOS','CLÁSICOS',NULL,_binary '',0,NULL,'FFFFFF','dark'),(190,29,1,10,'VINOS Y ESPUMANTES','BODEGA CHANDON',NULL,_binary '',0,NULL,'FFFFFF','dark'),(191,29,10,1,'VIÑA LAS PERDICES','BODEGA',NULL,_binary '',190,NULL,'FFFFFF','dark'),(193,29,8,1,'TOPPINGS EXTRA','',NULL,_binary '',188,NULL,'FFFFFF','dark'),(194,29,9,1,'TRAGOS','SIN ALCOHOL',NULL,_binary '',189,NULL,'FFFFFF','dark'),(195,29,9,2,'TRAGOS','DE AUTOR',NULL,_binary '',189,NULL,'FFFFFF','dark'),(197,29,1,6,'PIZZAS CASERAS','8 PORCIONES',NULL,_binary '',0,NULL,'FFFFFF','dark'),(198,29,10,3,'ANDELUNA','BODEGA',NULL,_binary '',190,NULL,'FFFFFF','dark'),(199,30,1,2,'LAS ENTRADAS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(200,30,1,3,'LAS ENSALADAS','CLÁSICAS',NULL,_binary '',0,NULL,'FFFFFF','dark'),(201,30,3,4,'LAS ENSALADAS ESPECIALES','',NULL,_binary '',200,NULL,'FFFFFF','dark'),(202,30,1,5,'LAS GUARNICIONES','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(203,30,1,6,'LA PARRILLADA','Incluye empanada + guarnición.',NULL,_binary '',0,NULL,'eaeaea','dark'),(205,30,6,8,'LOS CORTES A LA PARRILLA','Incluye empanada + guarnición.',NULL,_binary '',203,NULL,'eaeaea','dark'),(206,30,1,9,'EL MENÚ PARA NIÑOS','Hasta 13 años',NULL,_binary '',0,NULL,'FFFFFF','dark'),(207,30,1,1,'SUGERENCIA DEL DÍA','(De Lunes a Viernes de 12:30 a 15 hs)',NULL,_binary '',0,NULL,'FFFFFF','dark'),(209,14,1,2,'HAMBURGUESAS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(210,14,1,3,'SANDWICHES','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(211,14,1,4,'PARA COMPARTIR','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(212,14,1,5,'ENSALADAS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(213,14,1,6,'CERVEZAS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(214,14,1,7,'TRAGOS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(215,14,1,8,'BEBIDAS SIN ALCOHOL','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(216,2,6,1,'con Alcohol','',NULL,_binary '',6,NULL,'6a644d','light'),(217,28,1,13,'CERVEZAS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(218,30,1,10,'LOS PESCADOS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(219,30,1,11,'LAS PASTAS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(220,30,1,12,'MENÚ VEGETARIANO','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(221,30,1,13,'LOS POSTRES','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(222,30,1,14,'BEBIDAS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(223,30,1,15,'INFUSIONES','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(225,30,1,17,'LOS VINOS','RECOMENDADOS',NULL,_binary '',0,NULL,'FFFFFF','dark'),(226,30,17,18,'LOS VINOS DE AUTOR','',NULL,_binary '',225,NULL,'FFFFFF','dark'),(227,30,17,19,'RUTINI WINES','',NULL,_binary '',225,NULL,'FFFFFF','dark'),(228,30,17,20,'SALENTEIN','',NULL,_binary '',225,NULL,'FFFFFF','dark'),(229,30,17,21,'BIANCHI','BODEGA',NULL,_binary '',225,NULL,'FFFFFF','dark'),(230,30,17,22,'FAMILIA CARUSO','',NULL,_binary '',225,NULL,'FFFFFF','dark'),(231,30,17,23,'EL PORTILLO','BODEGA',NULL,_binary '',225,NULL,'FFFFFF','dark'),(232,30,17,24,'VISTALBA','BODEGA',NULL,_binary '',225,NULL,'FFFFFF','dark'),(233,30,17,25,'CHANDON','',NULL,_binary '',225,NULL,'FFFFFF','dark'),(234,30,17,26,'LUIGI BOSCA','BODEGA',NULL,_binary '',225,NULL,'FFFFFF','dark'),(235,30,17,27,'UXMAL','BODEGA',NULL,_binary '',225,NULL,'FFFFFF','dark'),(236,30,17,28,'CATENA ZAPATA','',NULL,_binary '',225,NULL,'FFFFFF','dark'),(237,30,17,29,'SANTA JULIA','BODEGA',NULL,_binary '',225,NULL,'FFFFFF','dark'),(238,30,17,30,'SAN PEDRO DE YACOCHUYA','',NULL,_binary '',225,NULL,'FFFFFF','dark'),(239,30,17,31,'TERRAZAS DE LOS ANDES','',NULL,_binary '',225,NULL,'FFFFFF','dark'),(240,30,17,32,'LOS VINOS 375 cc','',NULL,_binary '',225,NULL,'FFFFFF','dark'),(241,30,1,33,'CHAMPAGNE','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(242,30,33,34,'ESPUMANTES','',NULL,_binary '',241,NULL,'FFFFFF','dark'),(243,14,1,9,'PIZZAS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(244,38,1,1,'DESAYUNOS Y MERIENDAS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(255,38,1,2,'CAFETERÍA','TRADICIONAL',NULL,_binary '',0,NULL,'FFFFFF','dark'),(263,38,2,3,'CAFETERÍA ESPECIAL','',NULL,_binary '',255,NULL,'FFFFFF','dark'),(267,38,2,4,'OPCIONALES','',NULL,_binary '',255,NULL,'FFFFFF','dark'),(289,38,1,5,'ENTRANTES FRIOS Y CALIENTES','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(298,38,1,6,'TABLAS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(301,38,1,7,'SOPAS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(304,38,1,8,'ENSALADAS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(309,38,1,9,'PLATOS PRINCIPALES','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(311,24,1,7,'Menú para Niños','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(315,38,1,10,'PASTAS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(323,38,1,11,'CORTES AL GRILL','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(332,38,1,12,'REBOZADOS Y APANADOS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(333,24,1,8,'BEBIDAS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(337,38,12,4,'GUARNICIONES','',NULL,_binary '',332,NULL,'FFFFFF','dark'),(338,38,1,13,'MENÚ KIDS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(344,38,1,14,'POSTRES','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(352,24,1,9,'PARRILLADA','La Parrillada completa incluye empanada + guarnición.',NULL,_binary '',0,NULL,'eaeaea','dark'),(353,24,9,1,'CORTES A LA PARRILLA','Los cortes incluyen empanada + guarnición.',NULL,_binary '',352,NULL,'eaeaea','dark'),(354,24,9,2,'GUARNICIÓN','',NULL,_binary '',352,NULL,'eaeaea','dark'),(355,24,1,11,'POSTRES','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(356,24,1,12,'INFUSIONES','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(450,40,1,1,'desayunos y meriendas',NULL,NULL,_binary '',0,7,'FFFFFF','dark'),(451,40,1,2,'cafetería',NULL,NULL,_binary '',0,8,'FFFFFF','dark'),(452,40,1,3,'tartas y tortas',NULL,NULL,_binary '',0,9,'FFFFFF','dark'),(453,40,1,4,'adicionales',NULL,NULL,_binary '',0,10,'FFFFFF','dark'),(454,40,1,5,'licuados',NULL,NULL,_binary '',0,11,'FFFFFF','dark'),(455,40,1,6,'jarra de limonada',NULL,NULL,_binary '',0,12,'FFFFFF','dark'),(456,40,1,7,'sándwiches y tostas',NULL,NULL,_binary '',0,13,'FFFFFF','dark'),(457,40,1,8,'hamburguesas',NULL,NULL,_binary '',0,14,'FFFFFF','dark'),(458,40,1,9,'degustación de hamburguesas',NULL,NULL,_binary '',0,15,'FFFFFF','dark'),(459,40,1,10,'lomos',NULL,NULL,_binary '',0,16,'FFFFFF','dark'),(460,40,1,11,'sándwiches',NULL,NULL,_binary '',0,17,'FFFFFF','dark'),(461,40,1,12,'menú infantil',NULL,NULL,_binary '',0,18,'FFFFFF','dark'),(462,40,1,13,'nuestros tacos',NULL,NULL,_binary '',0,19,'FFFFFF','dark'),(463,40,1,15,'whiskys (la medida)',NULL,NULL,_binary '',0,20,'FFFFFF','dark'),(464,40,1,16,'bebidas sin alcohol',NULL,NULL,_binary '',0,22,'FFFFFF','dark'),(465,40,1,17,'algunos tragos',NULL,NULL,_binary '',0,23,'FFFFFF','dark'),(466,40,1,18,'vinos',NULL,NULL,_binary '',0,24,'FFFFFF','dark'),(467,40,1,19,'menú del día',NULL,NULL,_binary '',0,26,'FFFFFF','dark'),(468,40,1,20,'armá tu ensalada',NULL,NULL,_binary '',0,27,'FFFFFF','dark'),(469,40,1,21,'opcionales','Todos los menús vienen con guarnición de papas, ensalada o puré',NULL,_binary '',0,32,'FFFFFF','dark'),(470,40,1,22,'más livianitos',NULL,NULL,_binary '',0,33,'FFFFFF','dark'),(471,40,1,23,'las gohan del mesón',NULL,NULL,_binary '',0,35,'FFFFFF','dark'),(472,40,1,24,'espumantes','',NULL,_binary '',0,36,'FFFFFF','dark'),(473,40,1,25,'postres','',NULL,_binary '',0,37,'FFFFFF','dark'),(474,40,1,26,'helados','',NULL,_binary '',0,39,'FFFFFF','dark'),(475,40,1,14,'Para compartir','',NULL,_binary '',0,40,'FFFFFF','dark'),(543,42,1,1,'desayunos y meriendas',NULL,NULL,_binary '',0,7,'FFFFFF','dark'),(544,42,1,2,'cafetería',NULL,NULL,_binary '',0,8,'FFFFFF','dark'),(545,42,1,3,'tartas y tortas',NULL,NULL,_binary '',0,9,'FFFFFF','dark'),(546,42,1,4,'adicionales',NULL,NULL,_binary '',0,10,'FFFFFF','dark'),(547,42,1,5,'licuados',NULL,NULL,_binary '',0,11,'FFFFFF','dark'),(548,42,1,6,'jarra de limonada',NULL,NULL,_binary '',0,12,'FFFFFF','dark'),(549,42,1,7,'sándwiches y tostas',NULL,NULL,_binary '',0,13,'FFFFFF','dark'),(550,42,1,8,'hamburguesas',NULL,NULL,_binary '',0,14,'FFFFFF','dark'),(551,42,1,9,'degustación de hamburguesas',NULL,NULL,_binary '',0,15,'FFFFFF','dark'),(552,42,1,10,'lomos',NULL,NULL,_binary '',0,16,'FFFFFF','dark'),(553,42,1,11,'sándwiches',NULL,NULL,_binary '',0,17,'FFFFFF','dark'),(554,42,1,12,'menú infantil',NULL,NULL,_binary '',0,18,'FFFFFF','dark'),(555,42,1,13,'nuestros tacos',NULL,NULL,_binary '',0,19,'FFFFFF','dark'),(556,42,1,15,'whiskys (la medida)',NULL,NULL,_binary '',0,20,'FFFFFF','dark'),(557,42,1,16,'bebidas sin alcohol',NULL,NULL,_binary '',0,22,'FFFFFF','dark'),(558,42,1,17,'algunos tragos',NULL,NULL,_binary '',0,23,'FFFFFF','dark'),(559,42,1,18,'vinos',NULL,NULL,_binary '',0,24,'FFFFFF','dark'),(560,42,1,19,'menú del día',NULL,NULL,_binary '',0,26,'FFFFFF','dark'),(561,42,1,20,'armá tu ensalada',NULL,NULL,_binary '',0,27,'FFFFFF','dark'),(562,42,1,21,'opcionales','Todos los menús vienen con guarnición de papas, ensalada o puré',NULL,_binary '',0,32,'FFFFFF','dark'),(563,42,1,22,'más livianitos',NULL,NULL,_binary '',0,33,'FFFFFF','dark'),(564,42,1,23,'las gohan del mesón',NULL,NULL,_binary '',0,35,'FFFFFF','dark'),(565,42,1,24,'espumantes','',NULL,_binary '',0,36,'FFFFFF','dark'),(566,42,1,25,'postres','',NULL,_binary '',0,37,'FFFFFF','dark'),(567,42,1,26,'helados','',NULL,_binary '',0,39,'FFFFFF','dark'),(568,42,1,14,'Para compartir','',NULL,_binary '',0,40,'FFFFFF','dark'),(576,11,1,23,'Bodega Terrazas De Los Andes','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(577,11,1,24,'Bodega 33° Sur','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(578,11,1,25,'Bodega Catena Zapata','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(579,11,1,26,'Bodegas Uxmal','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(580,11,1,27,'Bodegas Salentein','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(581,11,1,28,'Bodegas Callia','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(582,11,1,29,'Bodega Nieto Senetiner','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(583,11,1,30,'Bodega Familia Zuccardi','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(584,11,1,31,'Bodega Santa Julia','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(585,11,1,32,'Bodega Rutini Wines','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(586,11,1,33,'Bodega Luigi Bosca','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(587,11,1,34,'Luigi Bosca Gala Collection','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(588,11,1,35,'Luigi Bosca Insignia','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(589,11,1,36,'La Linda','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(590,11,1,37,'Bodega Los Haroldos','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(591,11,1,38,'Familia Falasco','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(592,43,1,1,'MENÚ','Almuerzos: de lunes a viernes excepto feriados. / Lunch: monday to friday, except on holidays.',NULL,_binary '',0,NULL,'FFFFFF','dark'),(593,43,1,2,'PARRILLA','GRILL',NULL,_binary '',0,NULL,'FFFFFF','dark'),(594,43,1,3,'PASTAS CASERAS','HOMEMADE PASTA',NULL,_binary '',0,NULL,'FFFFFF','dark'),(595,43,3,1,'SALSAS','SAUCES',NULL,_binary '',594,NULL,'FFFFFF','dark'),(596,43,1,4,'POSTRES','DESSERTS',NULL,_binary '',0,NULL,'FFFFFF','dark'),(597,43,4,1,'CAFETERÍA','',NULL,_binary '',596,NULL,'FFFFFF','dark'),(598,43,1,5,'VINOS','Bodega & Viñedos Alfredo Roca','3/8|UNIDAD',_binary '',0,NULL,'FFFFFF','dark'),(599,43,1,6,'TINTOS','MALBEC','3/8|UNIDAD',_binary '',0,NULL,'FFFFFF','dark'),(600,43,6,2,'CABERNET SAUVIGNON','','3/8|UNIDAD',_binary '',599,NULL,'FFFFFF','dark'),(601,43,6,3,'TEMPRANILLO','','3/8|UNIDAD',_binary '',599,NULL,'FFFFFF','dark'),(602,43,6,4,'PETIT VERDOT','','3/8|UNIDAD',_binary '',599,NULL,'FFFFFF','dark'),(603,43,1,7,'BLANCOS','CHARDONNAY','3/8|UNIDAD',_binary '',0,NULL,'FFFFFF','dark'),(605,43,7,2,'SAUVIGNON BLANC','','3/8|UNIDAD',_binary '',603,NULL,'FFFFFF','dark'),(606,43,7,3,'TORRONTES','','3/8|UNIDAD',_binary '',603,NULL,'FFFFFF','dark'),(607,43,1,8,'OTROS VARIETALES','VINOS DE CORTE','3/8|UNIDAD',_binary '',0,NULL,'FFFFFF','dark'),(609,43,8,2,'ROSADOS','','3/8|UNIDAD',_binary '',607,NULL,'FFFFFF','dark'),(610,43,8,3,'DULCE','','3/8|UNIDAD',_binary '',607,NULL,'FFFFFF','dark'),(611,43,8,4,'SYRAH','','3/8|UNIDAD',_binary '',607,NULL,'FFFFFF','dark'),(612,43,8,5,'COSECHA TARDÍA','','3/8|UNIDAD',_binary '',607,NULL,'FFFFFF','dark'),(613,43,1,9,'ESPUMANTES','EXTRA BRUT',NULL,_binary '',0,NULL,'FFFFFF','dark'),(615,43,9,2,'BRUT NATURE','',NULL,_binary '',613,NULL,'FFFFFF','dark'),(616,43,9,3,'ROSE','',NULL,_binary '',613,NULL,'FFFFFF','dark'),(617,43,9,4,'IMPORTADOS','',NULL,_binary '',613,NULL,'FFFFFF','dark'),(618,43,1,10,'BEBIDAS SIN ALCOHOL','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(619,43,1,11,'CERVEZAS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(620,38,1,15,'BRUNCH Y SANDWICHERIA','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(621,43,2,2,'Cortes de parrilla / Pieces of meat','',NULL,_binary '',593,NULL,'FFFFFF','dark'),(622,38,1,16,'PAPAS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(623,38,1,17,'PIZZAS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(624,38,1,18,'BEBIDAS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(625,38,1,19,'CERVEZAS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(626,24,1,13,'vinos','recomendados',NULL,_binary '',0,NULL,'FFFFFF','dark'),(627,24,13,14,'vinos de autor','',NULL,_binary '',626,NULL,'FFFFFF','dark'),(628,24,13,15,'rutini wines','',NULL,_binary '',626,NULL,'FFFFFF','dark'),(629,24,13,16,'salentein','bodega',NULL,_binary '',626,NULL,'FFFFFF','dark'),(630,24,13,17,'luigi bosca','bodega',NULL,_binary '',626,NULL,'FFFFFF','dark'),(631,24,13,18,'chandon','bodega',NULL,_binary '',626,NULL,'FFFFFF','dark'),(632,24,13,19,'catena zapata','',NULL,_binary '',626,NULL,'FFFFFF','dark'),(633,24,13,20,'pulenta estate','bodega',NULL,_binary '',626,NULL,'FFFFFF','dark'),(634,24,13,21,'santa julia','bodega',NULL,_binary '',626,NULL,'FFFFFF','dark'),(635,24,13,22,'familia caruso','',NULL,_binary '',626,NULL,'FFFFFF','dark'),(636,24,13,23,'finca el portillo','',NULL,_binary '',626,NULL,'FFFFFF','dark'),(637,24,13,24,'vistalba','bodega',NULL,_binary '',626,NULL,'FFFFFF','dark'),(638,24,13,25,'etchart','bodega',NULL,_binary '',626,NULL,'FFFFFF','dark'),(639,24,13,26,'viña las perdices','',NULL,_binary '',626,NULL,'FFFFFF','dark'),(640,24,13,27,'san pedro de yacochuya','',NULL,_binary '',626,NULL,'FFFFFF','dark'),(641,24,13,28,'trapiche','bodega',NULL,_binary '',626,NULL,'FFFFFF','dark'),(642,24,13,29,'uxmal','bodega',NULL,_binary '',626,NULL,'FFFFFF','dark'),(643,24,13,30,'terrazas de los andes','',NULL,_binary '',626,NULL,'FFFFFF','dark'),(644,38,1,20,'TRAGOS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(645,38,1,21,'VINOS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(646,24,13,31,'vinos 375cc','',NULL,_binary '',626,NULL,'FFFFFF','dark'),(647,24,1,32,'champagnes','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(648,24,32,33,'espumantes','',NULL,_binary '',647,NULL,'FFFFFF','dark'),(651,38,21,22,'VINOS 375 CC','',NULL,_binary '',645,NULL,'FFFFFF','dark'),(655,26,1,1,'PIZZA','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(657,45,1,1,'Cafetería','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(661,26,1,2,'INSALATE','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(662,26,1,3,'ANTIPASTI','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(663,26,1,4,'PASTE','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(665,38,21,23,'ESPUMANTES','',NULL,_binary '',645,NULL,'FFFFFF','dark'),(666,26,1,5,'RISOTTI','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(667,26,1,6,'POLENTA','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(668,26,1,7,'CARNE','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(669,26,1,8,'PESCE','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(670,26,1,9,'DOLCI','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(671,26,1,10,'BAMBINI','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(672,26,1,11,'VINOS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(673,26,11,12,'RUTINI WINES','',NULL,_binary '',672,NULL,'FFFFFF','dark'),(674,26,11,13,'SALENTEIN','BODEGA',NULL,_binary '',672,NULL,'FFFFFF','dark'),(675,26,11,14,'FINCA EL PORTILLO','',NULL,_binary '',672,NULL,'FFFFFF','dark'),(676,26,11,15,'BIANCHI','BODEGA',NULL,_binary '',672,NULL,'FFFFFF','dark'),(677,26,11,16,'VISTALBA','BODEGA',NULL,_binary '',672,NULL,'FFFFFF','dark'),(678,26,11,17,'VIÑA LAS PERDICES','',NULL,_binary '',672,NULL,'FFFFFF','dark'),(679,26,11,18,'LUIGI BOSCA','BODEGA',NULL,_binary '',672,NULL,'FFFFFF','dark'),(680,26,11,19,'FAMILIA CARUSO','',NULL,_binary '',672,NULL,'FFFFFF','dark'),(681,26,11,20,'CATENA ZAPATA','',NULL,_binary '',672,NULL,'FFFFFF','dark'),(682,26,11,21,'SAN PEDRO DE YACOCHUYA','',NULL,_binary '',672,NULL,'FFFFFF','dark'),(683,26,11,22,'SANTA JULIA','BODEGA',NULL,_binary '',672,NULL,'FFFFFF','dark'),(684,26,11,23,'TERRAZAS DE LOS ANDES','',NULL,_binary '',672,NULL,'FFFFFF','dark'),(685,26,11,24,'VINOS 375','',NULL,_binary '',672,NULL,'FFFFFF','dark'),(686,26,1,25,'CHAMPAGNES','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(687,26,1,26,'BEBIDAS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(688,26,1,27,'CERVEZAS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(689,26,1,28,'INFUSIONES','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(690,44,1,1,'ENTRADAS / REBOZADOS','',NULL,_binary '',0,NULL,'575757','light'),(691,44,1,2,'ENSALADAS DE LA HUERTA','',NULL,_binary '',0,NULL,'0a8744','light'),(692,44,1,3,'EMPANADAS','',NULL,_binary '',0,NULL,'b18744','light'),(693,44,1,4,'HAMBURGUESAS','GURMET DE BUFALO',NULL,_binary '',0,NULL,'000','light'),(694,44,1,5,'LOMITAZOS','',NULL,_binary '',0,NULL,'a22200','light'),(695,44,1,6,'CALZONIS','',NULL,_binary '',0,NULL,'8e8e00','light'),(696,44,1,7,'PIZZAS','',NULL,_binary '',0,NULL,'bc8651','light'),(697,44,1,8,'SÁNDIWICH EN PAN BAGUETTE','',NULL,_binary '',0,NULL,'758169','light'),(698,44,1,9,'BEBIDAS SIN ALCOHOL','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(699,44,1,10,'BEBIDAS CON ALCOHOL','',NULL,_binary '',0,NULL,'000','light'),(702,45,1,4,'Promos Desayuno y Merienda','',NULL,_binary '',657,NULL,'FFFFFF','dark'),(703,45,1,5,'Lomitos y Hamburguesas','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(704,45,1,6,'Bebidas','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(705,45,1,7,'Menú Diario','Consultar opciones del día\nMinutas: $190\nPastas: $150\nGuisos: $190\nTodos los viernes, parrillada: $250',NULL,_binary '',0,NULL,'FFFFFF','dark'),(706,58,1,1,'Entradas','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(707,58,1,2,'Antipastos','',NULL,_binary '',706,NULL,'FFFFFF','dark'),(708,58,1,3,'Sopas','',NULL,_binary '',706,NULL,'FFFFFF','dark'),(709,58,1,4,'Ensaladas','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(710,58,1,5,'Nuestras Pizzas','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(711,58,1,6,'Como en Casa','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(712,58,1,7,'Cocina de autor','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(713,58,1,8,'Nuestras Pastas','Rellenas',NULL,_binary '',0,NULL,'FFFFFF','dark'),(714,58,8,1,'Nuestras Pastas Secas','',NULL,_binary '',713,NULL,'FFFFFF','dark'),(715,58,8,2,'Salsas (a elección)','Adicional $50',NULL,_binary '',713,NULL,'FFFFFF','dark'),(716,58,1,9,'Grill','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(717,58,9,10,'GUARNICIONES','incluidas en Grill, una a elección',NULL,_binary '',716,NULL,'FFFFFF','dark'),(718,58,1,11,'MENÚ INFANTIL','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(719,58,11,1,'Guarnición','',NULL,_binary '',718,NULL,'FFFFFF','dark'),(720,58,11,2,'Salsa','',NULL,_binary '',718,NULL,'FFFFFF','dark'),(721,58,1,12,'Postres','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(722,58,12,1,'Postres infantil','',NULL,_binary '',721,NULL,'FFFFFF','dark'),(723,58,17,13,'Café Gourmand','',NULL,_binary '',727,NULL,'FFFFFF','dark'),(724,58,1,14,'Bebidas - Beverage','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(725,58,14,15,'Cervezas - Beer','',NULL,_binary '',724,NULL,'FFFFFF','dark'),(726,58,14,16,'Vino en Copa','',NULL,_binary '',724,NULL,'FFFFFF','dark'),(727,58,1,17,'Cafetería','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(729,15,1,12,'Ensaladas','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(730,15,1,13,'Pizzas','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(731,15,1,14,'Hamburguesas','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(732,31,1,1,'COMIDAS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(733,31,1,1,'Entradas','',NULL,_binary '',732,NULL,'FFFFFF','dark'),(734,31,1,2,'Principales','',NULL,_binary '',732,NULL,'FFFFFF','dark'),(735,31,1,3,'Postres','A cargo de la Pastelería Moma',NULL,_binary '',732,NULL,'FFFFFF','dark'),(736,31,1,2,'COCKTAILS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(737,31,2,1,'Gin Lab','New Signature Tonics',NULL,_binary '',736,NULL,'FFFFFF','dark'),(738,31,2,2,'Upgrade Gins','',NULL,_binary '',736,NULL,'FFFFFF','dark'),(739,31,2,3,'CATCH Cocktails','',NULL,_binary '',736,NULL,'FFFFFF','dark'),(740,31,2,4,'Mojitos & Caipis','',NULL,_binary '',736,NULL,'FFFFFF','dark'),(741,31,2,5,'Classic Cocktails','',NULL,_binary '',736,NULL,'FFFFFF','dark'),(742,31,2,6,'Sin Alcohol','',NULL,_binary '',736,NULL,'FFFFFF','dark'),(743,31,2,7,'Vodkas','',NULL,_binary '',736,NULL,'FFFFFF','dark'),(744,31,2,8,'Jägermeister','',NULL,_binary '',736,NULL,'FFFFFF','dark'),(745,31,1,3,'BEBIDAS','',NULL,_binary '',0,NULL,'FFFFFF','dark'),(746,31,3,1,'Vinos','',NULL,_binary '',745,NULL,'FFFFFF','dark'),(747,31,3,2,'Cervezas','',NULL,_binary '',745,NULL,'FFFFFF','dark'),(748,31,3,3,'Champagne','',NULL,_binary '',745,NULL,'FFFFFF','dark'),(749,31,3,4,'Sin Alcohol','',NULL,_binary '',745,NULL,'FFFFFF','dark');
/*!40000 ALTER TABLE `cat_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cli_client`
--

DROP TABLE IF EXISTS `cli_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cli_client` (
  `cli_id` int NOT NULL AUTO_INCREMENT,
  `cli_email` varchar(45) DEFAULT NULL,
  `cli_name` varchar(100) DEFAULT NULL,
  `cli_phone` varchar(45) DEFAULT NULL,
  `cli_address` varchar(100) DEFAULT NULL,
  `cli_zip` varchar(45) DEFAULT NULL,
  `cli_hash` varchar(45) DEFAULT NULL,
  `cli_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cli_enable` varchar(45) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cli_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cli_client`
--

LOCK TABLES `cli_client` WRITE;
/*!40000 ALTER TABLE `cli_client` DISABLE KEYS */;
INSERT INTO `cli_client` VALUES (3,'ricardo_espeche@hotmail.com','Ricardo Espeche','3515555237','Jorge L. Borges esq. Roberto Arlt Torre 2 3D','5151','43565b4488e11e70a37d4ccc0343bc59','2020-06-26 13:05:40','1');
/*!40000 ALTER TABLE `cli_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cos_costqr`
--

DROP TABLE IF EXISTS `cos_costqr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cos_costqr` (
  `cos_id` int NOT NULL,
  `cos_quantity` int DEFAULT NULL,
  `cos_cost` int DEFAULT NULL,
  `cos_url` varchar(2000) DEFAULT NULL,
  `cos_enable` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`cos_id`),
  UNIQUE KEY `cos_id_UNIQUE` (`cos_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cos_costqr`
--

LOCK TABLES `cos_costqr` WRITE;
/*!40000 ALTER TABLE `cos_costqr` DISABLE KEYS */;
INSERT INTO `cos_costqr` VALUES (1,50,900,'https://forms.todopago.com.ar:443/formulario/commands?command=formulario&fr=1&m=8dcb0117a778ad56c2c07f9740d71101#utm_source=409966&utm_medium=boton_de_pago&utm_campaign=web',_binary ''),(2,75,1280,'https://forms.todopago.com.ar:443/formulario/commands?command=formulario&fr=1&m=975b8a293a19eaa7c74b9461406c6f91#utm_source=409966&utm_medium=boton_de_pago&utm_campaign=web',_binary ''),(3,100,1620,'https://forms.todopago.com.ar:443/formulario/commands?command=formulario&fr=1&m=1412ccde27ed30c89b1c72d4537a2489#utm_source=409966&utm_medium=boton_de_pago&utm_campaign=web',_binary ''),(4,125,1900,'https://forms.todopago.com.ar:443/formulario/commands?command=formulario&fr=1&m=ac35bb5638396f3f5e481b9f409e6b3a#utm_source=409966&utm_medium=boton_de_pago&utm_campaign=web',_binary ''),(5,1,1,'https://forms.todopago.com.ar:443/formulario/commands?command=formulario&fr=1&m=114398dfc7e8be6bc7f64b5d2d47df75#utm_source=409966&utm_medium=boton_de_pago&utm_campaign=web',_binary '\0');
/*!40000 ALTER TABLE `cos_costqr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cou_country`
--

DROP TABLE IF EXISTS `cou_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cou_country` (
  `cou_id` int NOT NULL,
  `cou_code` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `cou_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `cou_enabled` bit(1) DEFAULT b'1',
  PRIMARY KEY (`cou_id`),
  UNIQUE KEY `cou_id_UNIQUE` (`cou_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cou_country`
--

LOCK TABLES `cou_country` WRITE;
/*!40000 ALTER TABLE `cou_country` DISABLE KEYS */;
INSERT INTO `cou_country` VALUES (1,'AR','Argentina',_binary '');
/*!40000 ALTER TABLE `cou_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cxu_clixusr`
--

DROP TABLE IF EXISTS `cxu_clixusr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cxu_clixusr` (
  `cxu_id` int NOT NULL AUTO_INCREMENT,
  `cli_id` int NOT NULL,
  `usr_id` int NOT NULL,
  `cxu_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cxu_enable` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`cxu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cxu_clixusr`
--

LOCK TABLES `cxu_clixusr` WRITE;
/*!40000 ALTER TABLE `cxu_clixusr` DISABLE KEYS */;
INSERT INTO `cxu_clixusr` VALUES (4,3,2,'2020-06-26 13:05:40',_binary '');
/*!40000 ALTER TABLE `cxu_clixusr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `men_menu`
--

DROP TABLE IF EXISTS `men_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `men_menu` (
  `men_id` int NOT NULL AUTO_INCREMENT,
  `usr_id` int NOT NULL,
  `men_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `men_time_start` int NOT NULL DEFAULT '0',
  `men_time_end` int NOT NULL DEFAULT '1439',
  `men_days` varchar(7) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '1111111',
  `men_enable` bit(1) NOT NULL DEFAULT b'1',
  `men_id_clone` int DEFAULT NULL,
  PRIMARY KEY (`men_id`),
  KEY `men_usr_id` (`usr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `men_menu`
--

LOCK TABLES `men_menu` WRITE;
/*!40000 ALTER TABLE `men_menu` DISABLE KEYS */;
INSERT INTO `men_menu` VALUES (7,2,'Principal',0,1439,'1111111',_binary '',NULL),(9,8,'Principal',0,1439,'1111111',_binary '',NULL),(12,8,'Ejecutivo',660,900,'1111111',_binary '',NULL),(13,11,'Principal',0,1439,'1111111',_binary '',NULL),(14,12,'Principal',0,1439,'1111111',_binary '',NULL),(15,13,'Principal',0,1439,'1111111',_binary '',NULL),(17,15,'Principal',0,1439,'1111111',_binary '',NULL),(19,2,'Ejecutivo',450,750,'1111111',_binary '\0',NULL),(20,14,'Otro Bar de Cervezas MENU',1110,1410,'1111111',_binary '',NULL),(21,16,'Principal',0,1439,'1111111',_binary '',NULL),(22,17,'Principal',0,1439,'1111111',_binary '',NULL),(23,18,'Principal',0,1439,'1111111',_binary '',NULL),(24,19,'Principal',450,1439,'1111111',_binary '',NULL),(25,20,'Principal',0,1439,'1111111',_binary '',NULL),(26,20,'Empanada',0,1439,'1111111',_binary '',NULL),(28,22,'Principal',0,1439,'1111111',_binary '',NULL),(29,23,'Principal',0,1439,'1111111',_binary '',NULL),(30,24,'Principal',0,1439,'1111111',_binary '',NULL),(31,25,'Principal',0,1439,'1111111',_binary '',NULL),(32,26,'Principal',0,1439,'1111111',_binary '',NULL),(33,27,'Principal',0,1439,'1111111',_binary '',NULL),(34,28,'Principal',0,1439,'1111111',_binary '',NULL),(35,27,'Hamburguesa',1200,1439,'1000011',_binary '',NULL),(36,27,'Parrilla',0,1200,'1000000',_binary '',NULL),(37,29,'Principal',0,1439,'1111111',_binary '',NULL),(38,30,'Principal',0,1439,'1111111',_binary '',NULL),(39,30,'Ejecutivo',660,900,'0111110',_binary '\0',NULL),(40,31,'Carta CATCH',0,1439,'1111111',_binary '',NULL),(42,33,'Principal',0,1439,'1111111',_binary '',NULL),(43,34,'Principal',0,1439,'1111111',_binary '',NULL),(44,35,'Principal',0,1439,'1111111',_binary '',NULL),(45,36,'Principal',0,1439,'1111111',_binary '',NULL),(46,37,'Principal',0,1439,'1111111',_binary '',NULL),(49,38,'MERIENDAS Y DESAYUNOS (mañana)',480,720,'1111111',_binary '',NULL),(50,38,'MERIENDAS Y DESAYUNOS (tarde)',900,1200,'1111111',_binary '',NULL),(51,38,'PRINCIPAL (mañana)',720,900,'1111111',_binary '',NULL),(61,40,'Principal',0,1439,'1111111',_binary '',9),(62,40,'Ejecutivo',660,900,'1111111',_binary '',12),(68,42,'Principal',0,1439,'1111111',_binary '',9),(69,42,'Ejecutivo',660,900,'1111111',_binary '',12),(70,38,'PRINCIPAL (noche)',1200,1380,'1111111',_binary '',NULL),(71,43,'Principal',0,1439,'1111111',_binary '',NULL),(72,44,'Principal',0,1439,'1111111',_binary '',NULL),(73,45,'Juan Perez',0,1439,'1111111',_binary '',NULL),(74,46,'Principal',0,1439,'1111111',_binary '',NULL),(75,47,'Principal',0,1439,'1111111',_binary '',NULL),(76,48,'Principal',0,1439,'1111111',_binary '',NULL),(77,49,'Principal',0,1439,'1111111',_binary '',NULL),(78,50,'Principal',0,1439,'1111111',_binary '',NULL),(79,51,'Principal',0,1439,'1111111',_binary '',NULL),(80,52,'Principal',0,1439,'1111111',_binary '',NULL),(81,53,'Principal',0,1439,'1111111',_binary '',NULL),(82,54,'Principal',0,1439,'1111111',_binary '',NULL),(83,55,'Principal',0,1439,'1111111',_binary '',NULL),(84,56,'Principal',0,1439,'1111111',_binary '',NULL),(85,57,'Principal',0,1439,'1111111',_binary '',NULL),(86,58,'Principal',0,1439,'1111111',_binary '',NULL),(87,59,'Principal',0,1439,'1111111',_binary '',NULL);
/*!40000 ALTER TABLE `men_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ord_order`
--

DROP TABLE IF EXISTS `ord_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ord_order` (
  `ord_id` int NOT NULL AUTO_INCREMENT,
  `usr_id` int NOT NULL,
  `cli_id` int NOT NULL,
  `cxu_id` int NOT NULL,
  `ord_status` enum('pending','processing','delivery','ready','canceled') DEFAULT 'pending',
  `ord_total` float DEFAULT NULL,
  `ord_address` varchar(100) DEFAULT NULL,
  `ord_zip` varchar(45) DEFAULT NULL,
  `ord_created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ord_comment` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ord_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ord_order`
--

LOCK TABLES `ord_order` WRITE;
/*!40000 ALTER TABLE `ord_order` DISABLE KEYS */;
INSERT INTO `ord_order` VALUES (30,2,3,4,'canceled',165,'Jorge L. Borges esq. Roberto Arlt Torre 2 3D','5151','2020-06-26 13:06:41',''),(31,2,3,4,'canceled',100,'Jorge L. Borges esq. Roberto Arlt Torre 2 3D','5151','2020-06-26 13:15:00','prueba'),(32,2,3,4,'ready',200,'Jorge L. Borges esq. Roberto Arlt Torre 2 3D','5151','2020-06-26 23:06:52',''),(33,2,3,4,'ready',375,'Jorge L. Borges esq. Roberto Arlt Torre 2 3D','5151','2020-07-02 14:24:40','Extras mayonesa'),(34,2,3,4,'canceled',210,'Jorge L. Borges esq. Roberto Arlt Torre 2 3D','5151','2020-07-06 20:06:39','que no llegue frio');
/*!40000 ALTER TABLE `ord_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pro_product`
--

DROP TABLE IF EXISTS `pro_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pro_product` (
  `pro_id` int NOT NULL AUTO_INCREMENT,
  `usr_id` int NOT NULL,
  `pro_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `pro_excerpt` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `pro_price` float NOT NULL DEFAULT '0',
  `pro_manyPrices` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `pro_type` enum('normal','vegetarian','spicy') CHARACTER SET utf8 COLLATE utf8_bin DEFAULT 'normal',
  `pro_enable` bit(1) NOT NULL DEFAULT b'1',
  `pro_delivery` bit(1) NOT NULL DEFAULT b'1',
  `pro_image` varchar(70) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `pro_id_clone` int DEFAULT NULL,
  PRIMARY KEY (`pro_id`),
  KEY `pro_usr_id` (`usr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4273 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pro_product`
--

LOCK TABLES `pro_product` WRITE;
/*!40000 ALTER TABLE `pro_product` DISABLE KEYS */;
INSERT INTO `pro_product` VALUES (1,2,'café con leche','cafe con 1/4 de leche entera y soda',130,NULL,'normal',_binary '',_binary '\0','snucpg9nwf4w0udxskkko58jbsngcednx640ouy7n.jpeg',NULL),(2,2,'cafe con leche ligth','cafe con 1/4 de leche descremada, 3 tostadas del campo, manteca o mermelada y jugo de naranja',150,NULL,'normal',_binary '',_binary '\0','1h4ks54bof0ob8lz9k97zlm4q72ym56njrte4n2rq.jpeg',NULL),(3,2,'empanadas criollas cortada a cuchillo','bola de cuadril con un toque de especias',50,NULL,'normal',_binary '',_binary '','o7y5jr123m478zhxj3x427880c3gazzmcedegvexm.jpeg',NULL),(4,2,'provoleta a la parrilla con orégano','Provoleta italiana grillada con queso',110,NULL,'normal',_binary '',_binary '','py7omq0n0ika4p548j1181ghnmnkwpdswilb4s705.jpeg',NULL),(5,2,'chorizo criollo con patatas paja y chimichurri','Salsa Argentina con pápas fritas y salsa de chimichurri',115,NULL,'normal',_binary '',_binary '',NULL,NULL),(6,2,'de campo (clásica de asados)','Lechuga, tomate y cebolla',82,'80|95','normal',_binary '',_binary '','jko55qi2sdm2tamjpkfbwghptfezhaobwg9s4otc5.jpeg',NULL),(7,2,'calabaza asada y queso de cabra','Dados de calabaza, pipas, queso de cabra desmigado sobre mix de verdes con vinagreta de pomelo',96,'90|105','normal',_binary '',_binary '',NULL,NULL),(8,2,'espinacas frescas','Espinacas frescas con nueces, requesón, QUESO AZUL Y PERA',108,'110|130','normal',_binary '',_binary '','ztmpnmktckld8kjcniics2y2lpntf0adou4ov02pb.jpeg',NULL),(9,2,'tira de asado','Churrasco de ternera seleccionado',180,NULL,'spicy',_binary '',_binary '','pvszmlwv41mtqtcxs7d55lgv0t6x0dnh42rm8pl83.jpeg',NULL),(10,2,'entraña','Corte de moda en Argentina, sin hueso y sabroso',170,NULL,'normal',_binary '',_binary '',NULL,NULL),(11,2,'secreto de cerdo \"a la pizza\"','Con salsa de tomate y mozzarella',165,NULL,'normal',_binary '',_binary '',NULL,NULL),(12,2,'pollo relleno a la brasa','Receta del \"Pobre Luis\", Uruguay (según disponibilidad).',150,NULL,'normal',_binary '',_binary '',NULL,NULL),(13,2,'entrecot origen argentina','Razas varias',190,NULL,'normal',_binary '',_binary '',NULL,NULL),(14,2,'caseras clásicas','',80,NULL,'normal',_binary '',_binary '',NULL,NULL),(15,2,'argentinas a la provenzal','Con ajo y perejil frezco',62,NULL,'normal',_binary '',_binary '',NULL,NULL),(16,2,'asadas a la brasa de carbón','Con una salsa de BBQ',55,NULL,'normal',_binary '',_binary '',NULL,NULL),(17,2,'papas \"de paul\"','Asadas y rellenas de crema de queso',28,NULL,'normal',_binary '',_binary '',NULL,NULL),(18,2,'rústicas, especiadas y un poco picantes','Con cáscara y un toque de pimienta',60,NULL,'normal',_binary '',_binary '',NULL,NULL),(19,2,'entrecot origen argentina raza angus certificado','Costilla de Angus Argentino',210,NULL,'normal',_binary '',_binary '',NULL,NULL),(20,2,'gaseosa','Botella 500cc',100,NULL,'normal',_binary '',_binary '\0','0feuan2r45a5pgu55gxzw8pjaak54608nuvl0jbp2.jpeg',NULL),(21,2,'agua mineral','Con gas o sin gas',60,NULL,'normal',_binary '',_binary '\0',NULL,NULL),(25,8,'clásico','Café con leche o infusión, 2 medialunas o criollos. Jugo de naranja.',190,NULL,'normal',_binary '',_binary '',NULL,NULL),(26,8,'completo','Café con leche o infusión, 2 medialunas o criollos. Manteca y dulce casero. Jugo de naranja.',220,NULL,'normal',_binary '',_binary '',NULL,NULL),(27,8,'light','Café con leche o infusión. Tostada de pan negro. Queso untable y mermelada light. Jugo de naranja. (Opcional con ensalada de frutas $270)',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(28,8,'campero','Café con leche o infusión. Tostadas pan de campo. Manteca, dulce, jamón y queso. Jugo de Naranja.',260,NULL,'normal',_binary '',_binary '',NULL,NULL),(29,8,'mesón copado - figurella','Copón de Yogurt con granola y frutas de estación.',190,NULL,'normal',_binary '',_binary '',NULL,NULL),(30,8,'proteico','Huevo revueltos, jamón y queso, tostadas de campo y ensalada de frutas. Infusión y jugo de naranja.',360,NULL,'normal',_binary '',_binary '',NULL,NULL),(31,8,'matero','Set de mate completo por persona.',90,NULL,'normal',_binary '',_binary '',NULL,NULL),(32,8,'café chico','',80,NULL,'normal',_binary '',_binary '',NULL,NULL),(33,8,'café en jarro','',90,NULL,'normal',_binary '',_binary '',NULL,NULL),(34,8,'café doble','',100,NULL,'normal',_binary '',_binary '',NULL,NULL),(35,8,'café con leche','',100,NULL,'normal',_binary '',_binary '',NULL,NULL),(36,8,'submarino','',120,NULL,'normal',_binary '',_binary '',NULL,NULL),(37,8,'capuchino','',120,NULL,'normal',_binary '',_binary '',NULL,NULL),(38,8,'té y otras infusiones','',90,NULL,'normal',_binary '',_binary '',NULL,NULL),(39,8,'Mesón','Con leche condensada y ralladura de naranja.',180,NULL,'normal',_binary '',_binary '',NULL,NULL),(40,8,'Lemmon Pie','',180,NULL,'normal',_binary '',_binary '',NULL,NULL),(41,8,'Coco','',180,NULL,'normal',_binary '',_binary '',NULL,NULL),(42,8,'Cheesecake','',190,NULL,'normal',_binary '',_binary '',NULL,NULL),(43,8,'Marquise de Chocolate','',190,NULL,'normal',_binary '',_binary '',NULL,NULL),(44,8,'medialunas','',50,NULL,'normal',_binary '',_binary '',NULL,NULL),(45,8,'criollos','',40,NULL,'normal',_binary '',_binary '',NULL,NULL),(46,8,'mafalda','',110,NULL,'normal',_binary '',_binary '',NULL,NULL),(47,8,'manteca y mermelada','',50,NULL,'normal',_binary '',_binary '',NULL,NULL),(48,8,'jugo de naranja','',150,NULL,'normal',_binary '',_binary '',NULL,NULL),(49,8,'jugo de arándanos','',180,NULL,'normal',_binary '',_binary '',NULL,NULL),(50,8,'huevos revueltos','',110,NULL,'normal',_binary '',_binary '',NULL,NULL),(51,8,'porción de tostadas','',50,NULL,'normal',_binary '',_binary '',NULL,NULL),(52,8,'porción de tostadas con semillas','',70,NULL,'normal',_binary '',_binary '',NULL,NULL),(53,8,'ensalada de frutas','Las frutas pueden variar según estación.',110,NULL,'normal',_binary '',_binary '',NULL,NULL),(54,8,'con agua','',170,NULL,'normal',_binary '',_binary '',NULL,NULL),(55,8,'con leche','',190,NULL,'normal',_binary '',_binary '',NULL,NULL),(56,8,'con jugo de naranja','',190,NULL,'normal',_binary '',_binary '',NULL,NULL),(57,8,'smoothies','',190,NULL,'normal',_binary '',_binary '',NULL,NULL),(58,8,'jarra de limonada','Con jengibre y menta. Opcional pepino.',210,NULL,'normal',_binary '',_binary '',NULL,NULL),(59,8,'tostado de jamón y queso','En pan baguette.',190,NULL,'normal',_binary '',_binary '',NULL,NULL),(60,8,'tostado mesón','En pan baguette con tomate y rúcula.',230,NULL,'vegetarian',_binary '',_binary '',NULL,NULL),(61,8,'sándwich de jamón crudo','En pan de campo con rúcula y cherry.',270,NULL,'normal',_binary '',_binary '',NULL,NULL),(62,8,'sándwich de vegetales frío','Palta, lechuga, tomate y queso crema en pan negro con semillas.',290,NULL,'vegetarian',_binary '',_binary '',NULL,NULL),(63,8,'sándwich de salmón','Salmón, rúcula, cherry y queso crema en pan con semillas.',380,NULL,'normal',_binary '',_binary '',NULL,NULL),(64,8,'tostas de huevo revuelto','Tostadita con huevo revuelto, jamón natural, queso y verdeo.',190,NULL,'normal',_binary '',_binary '',NULL,NULL),(65,8,'tostas mexicanas','Con guacamole.',190,NULL,'vegetarian',_binary '',_binary '',NULL,NULL),(66,8,'tostas vegetarianas','Palta, queso crema, cherry y sésamo en pan con semillas.',190,NULL,'vegetarian',_binary '',_binary '',NULL,NULL),(67,8,'la bestia','Tomate, lechuga, panceta, cebolla morada, cheddar, huevo y aleoli. Con papas bastón.',390,NULL,'normal',_binary '',_binary '',NULL,NULL),(68,8,'egoista','Provolone gratinado, hongos, cebolla, panceta, huevo, barbacoa y aleoli. Con papas bastón.',370,NULL,'normal',_binary '',_binary '',NULL,NULL),(69,8,'caprichosa','Tomate, lechuga, palta, provolone gratinado y aleoli. Con papas bastón.',370,NULL,'normal',_binary '',_binary '',NULL,NULL),(70,8,'princesita (de pollo)','Pollo crispy, tomate, lechuga, huevo, queso y aleoli. Con papas bastón.',370,NULL,'normal',_binary '',_binary '',NULL,NULL),(71,8,'recatada','Garbanzo, rúcula, tomate, queso tybo, cebolla, huevo, mayonesa de apio y aleoli. Con papas bastón.',370,NULL,'vegetarian',_binary '',_binary '',NULL,NULL),(72,8,'kustom (lookeada para vos)','Queso provolone rebozado, lechuga, tomate, y huevo. Con papas bastón.',370,NULL,'normal',_binary '',_binary '',NULL,NULL),(73,8,'curda','Panceta, queso tybo, lechuga, tomate, y huevo. Con aderezo de cebollas asadas al Malbec. Con papas.',370,NULL,'normal',_binary '',_binary '',NULL,NULL),(74,8,'ciclotímica','No te conformás con nada y querés todas.\n*LA BESTIA - *EGOÍSTA - *CAPRICHOSA - *PRINCESITA',620,NULL,'normal',_binary '',_binary '',NULL,NULL),(75,8,'lomo completo','Jamón, queso, huevo, lechuga y tomate.\nCon papas bravas.',450,NULL,'normal',_binary '',_binary '',NULL,NULL),(76,8,'lomo completo de pollo','Jamón, queso, huevo, lechuga y tomate.\nCon papas bravas.',360,NULL,'normal',_binary '',_binary '',NULL,NULL),(77,8,'lomo mediano','Jamón, queso, huevo, lechuga y tomate.\nCon papas bravas.',360,NULL,'normal',_binary '',_binary '',NULL,NULL),(78,8,'lomo mediano de pollo','Jamón, queso, huevo, lechuga y tomate.\nCon papas bravas.',290,NULL,'normal',_binary '',_binary '',NULL,NULL),(79,8,'lomito al plato','Lomo con jamón, queso y huevo. Acompañado de papas fritas y ensalada.',450,NULL,'normal',_binary '',_binary '',NULL,NULL),(80,8,'sándwich de vegetales asados','Berenjenas, zuccini, pimientos, hongos, rúcula y queso. Con papas fritas.',310,NULL,'normal',_binary '',_binary '',NULL,NULL),(81,8,'sándwich de vegetales fríos','Palta, lechuga, tomate y queso en pan negro con semillas.',290,NULL,'vegetarian',_binary '',_binary '',NULL,NULL),(82,8,'sándwich de salmón','Salmón, rúcula, cherry y queso crema en pan con semillas.',380,NULL,'normal',_binary '',_binary '',NULL,NULL),(83,8,'para ellos también','Crocantes de pollo caseritos ó hamburguesa con fritas. Incluye gaseosa.',310,NULL,'normal',_binary '',_binary '',NULL,NULL),(84,8,'nuestro taquito bien cabrón','De carne o pollo con vegetales salteados, queso cheddar y un toque de panceta. Ahh... y el infaltable guacamole sale con papas.',440,NULL,'normal',_binary '',_binary '',NULL,NULL),(85,8,'taco de vegetales','Berenjenas, zuccini, pimientos, cebolla morada, hongos y queso tybo. Con papas fritas.',430,NULL,'vegetarian',_binary '',_binary '',NULL,NULL),(86,8,'ballantines','',350,NULL,'normal',_binary '',_binary '',NULL,NULL),(87,8,'johnnie walker red label','',370,NULL,'normal',_binary '',_binary '',NULL,NULL),(88,8,'johnnie walker black label','',420,NULL,'normal',_binary '',_binary '',NULL,NULL),(89,8,'jack daniels','',400,NULL,'normal',_binary '',_binary '',NULL,NULL),(90,8,'famous grouse finest','',400,NULL,'normal',_binary '',_binary '',NULL,NULL),(91,8,'gentleman jack','',690,NULL,'normal',_binary '',_binary '',NULL,NULL),(92,8,'the macallan fine oak 12 años','',690,NULL,'normal',_binary '',_binary '',NULL,NULL),(93,8,'gaseosas','',100,NULL,'normal',_binary '',_binary '',NULL,NULL),(94,8,'aguas saborizadas','',100,NULL,'normal',_binary '',_binary '',NULL,NULL),(95,8,'agua con y sin gas','',100,NULL,'normal',_binary '',_binary '',NULL,NULL),(96,8,'jugo de naranjas','',140,NULL,'normal',_binary '',_binary '',NULL,NULL),(97,8,'jugo de arándanos','',170,NULL,'normal',_binary '',_binary '',NULL,NULL),(98,8,'licuados con agua','',150,NULL,'normal',_binary '',_binary '',NULL,NULL),(99,8,'licuados con leche','',160,NULL,'normal',_binary '',_binary '',NULL,NULL),(100,8,'licuados con jugo de naranja','',170,NULL,'normal',_binary '',_binary '',NULL,NULL),(101,8,'smoothies','',170,NULL,'normal',_binary '',_binary '',NULL,NULL),(102,8,'speed','',120,NULL,'normal',_binary '',_binary '',NULL,NULL),(103,8,'jarra de limonada','Con jenjibre y menta. Opcional pepino.',210,NULL,'normal',_binary '',_binary '',NULL,NULL),(104,8,'fernet branca','',220,NULL,'normal',_binary '',_binary '',NULL,NULL),(105,8,'garibaldi','',220,NULL,'normal',_binary '',_binary '',NULL,NULL),(106,8,'gancia','',220,NULL,'normal',_binary '',_binary '',NULL,NULL),(107,8,'gin & tonic','',260,NULL,'normal',_binary '',_binary '',NULL,NULL),(108,8,'cuba libre','',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(109,8,'mojito','',300,NULL,'normal',_binary '',_binary '',NULL,NULL),(110,8,'mojito de maracuyá','',300,NULL,'normal',_binary '',_binary '',NULL,NULL),(111,8,'famiglia bianchi (red blend)','',400,NULL,'normal',_binary '',_binary '',NULL,NULL),(112,8,'famiglia bianchi (white blend)','',400,NULL,'normal',_binary '',_binary '',NULL,NULL),(113,8,'famiglia bianchi (rosé blend)','',400,NULL,'normal',_binary '',_binary '',NULL,NULL),(114,8,'famiglia bianchi (malbec)','',530,NULL,'normal',_binary '',_binary '',NULL,NULL),(115,8,'gauchezco 3/8 (reserva malbec)','',310,NULL,'normal',_binary '',_binary '',NULL,NULL),(116,8,'gauchezco clásico (malbec)','',400,NULL,'normal',_binary '',_binary '',NULL,NULL),(117,8,'gauchezco clásico (cabernet sauvignon)','',400,NULL,'normal',_binary '',_binary '',NULL,NULL),(118,8,'gauchezco (reserva chardonay)','',520,NULL,'normal',_binary '',_binary '',NULL,NULL),(119,8,'gauchezco (reserva malbec)','',520,NULL,'normal',_binary '',_binary '',NULL,NULL),(120,8,'gauchezco (reserva cabernet sauvignon)','',520,NULL,'normal',_binary '',_binary '',NULL,NULL),(121,8,'fond de cave (malbec)','',490,NULL,'normal',_binary '',_binary '',NULL,NULL),(122,8,'fond de cave (cabernet sauvignon)','',490,NULL,'normal',_binary '',_binary '',NULL,NULL),(123,8,'don david (malbec)','',490,NULL,'normal',_binary '',_binary '',NULL,NULL),(124,8,'alma mora (malbec)','',380,NULL,'normal',_binary '',_binary '',NULL,NULL),(125,8,'bravio (malbec, cab.sauv., sauv. blanc., blend)','',370,NULL,'normal',_binary '',_binary '',NULL,NULL),(126,8,'dada 1 (tinto, malbec y bonarda)','',380,NULL,'normal',_binary '',_binary '',NULL,NULL),(127,8,'dada 2 (merlot)','',380,NULL,'normal',_binary '',_binary '',NULL,NULL),(128,8,'dada 3 (tinto, cabernet y syrah)','',380,NULL,'normal',_binary '',_binary '',NULL,NULL),(129,8,'dada 5 (moscato)','',380,NULL,'normal',_binary '',_binary '',NULL,NULL),(130,8,'santa julia (malbec)','',340,NULL,'normal',_binary '',_binary '',NULL,NULL),(131,8,'santa julia (sauvignon blanc)','',320,NULL,'normal',_binary '',_binary '',NULL,NULL),(132,8,'las perdices 3/8 (malbec)','',320,NULL,'normal',_binary '',_binary '',NULL,NULL),(133,8,'las perdices (sauvignon blanc)','',450,NULL,'normal',_binary '',_binary '',NULL,NULL),(134,8,'las perdices (rosé)','',430,NULL,'normal',_binary '',_binary '',NULL,NULL),(135,8,'las perdices (malbec)','',490,NULL,'normal',_binary '',_binary '',NULL,NULL),(136,8,'tomero rose tomero (malbec)','',520,NULL,'normal',_binary '',_binary '',NULL,NULL),(137,8,'fabre montmayou (reserva malbec)','',570,NULL,'normal',_binary '',_binary '',NULL,NULL),(138,8,'nicassia (red blend)','',860,NULL,'normal',_binary '',_binary '',NULL,NULL),(139,8,'alamos (malbec, moscatel)','',530,NULL,'normal',_binary '',_binary '',NULL,NULL),(140,8,'cafayate cosecha tardía','',370,NULL,'normal',_binary '',_binary '',NULL,NULL),(141,8,'latitud 33 (malbec)','',450,NULL,'normal',_binary '',_binary '',NULL,NULL),(142,8,'uxmall (malbec, cabernet, chardonay)','',450,NULL,'normal',_binary '',_binary '',NULL,NULL),(143,8,'luigi bosca (malbec)','',980,NULL,'normal',_binary '',_binary '',NULL,NULL),(144,8,'copa de vino (las perdices reserva malbec)','',140,NULL,'normal',_binary '',_binary '',NULL,NULL),(145,8,'sidra peer x 500 c.c.','',190,NULL,'normal',_binary '',_binary '',NULL,NULL),(146,8,'Menú del día 1','Incluye postre y gaseosa o vaso de limonada',380,NULL,'normal',_binary '',_binary '',NULL,NULL),(147,8,'Combiná lechuga, tomate, zanahoria y choclo','+ PROTEÍNA A ELEECIÓN\n\n1) Calamares fritos\n2) Langostinos rebozados\n3) Bastoncitos de mozarella\n4) Pollo\n5) Atún',360,NULL,'normal',_binary '',_binary '',NULL,NULL),(148,8,'Bife de pollo','',360,NULL,'normal',_binary '',_binary '',NULL,NULL),(149,8,'Milanesa de pollo','',360,NULL,'normal',_binary '',_binary '',NULL,NULL),(150,8,'Hamburguesa al plato','De carne. Con queso y huevo.',360,NULL,'normal',_binary '',_binary '',NULL,NULL),(151,8,'Hamburguesa de garbanzo','',360,NULL,'vegetarian',_binary '',_binary '',NULL,NULL),(152,8,'Costeleta de carne','Opcional a caballo',390,NULL,'normal',_binary '',_binary '',NULL,NULL),(153,8,'Wrap de vegetales','Hojas verdes, vegetales asados, hongos y cebollas salteadas con queso crema.',330,NULL,'vegetarian',_binary '',_binary '',NULL,NULL),(154,8,'Canelones de vegetales','Hojas verdes, vegetales asados, hongos y cebollas salteadas con queso crema.',360,NULL,'vegetarian',_binary '',_binary '',NULL,NULL),(155,8,'Lasagna Mesón','Bolognesa, espinaca, ricotta, jamón y queso.',360,NULL,'normal',_binary '',_binary '',NULL,NULL),(156,8,'Langostinos','Rebozados o salteados. Arroz, queso crema, palta, cherry, verdeo, sésamo y brotes.',430,NULL,'normal',_binary '',_binary '',NULL,NULL),(157,8,'Salmón','Arroz, queso crema, palta, cherry, verdeo, sésamo y brotes.',430,NULL,'normal',_binary '',_binary '',NULL,NULL),(158,8,'Pollo','Rebozados o salteados. Arroz, queso crema, palta, cherry, verdeo, sésamo y brotes.',410,NULL,'normal',_binary '',_binary '',NULL,NULL),(159,8,'Ceviche','Salmón rosado, cebolla morada, arroz, queso crema, palta, cherry, verdeo, sésamo y brotes.',430,NULL,'normal',_binary '',_binary '',NULL,NULL),(160,8,'Calamares','Rabas, arroz, queso crema, palta, cherry, verdeo, sésamo y brotes',430,NULL,'normal',_binary '',_binary '',NULL,NULL),(161,8,'Vegetariano','Bastoncitos de muzza, arroz, quedo crema, palta, cherrys, verdeo, sésamo y brotes de soja.',410,NULL,'vegetarian',_binary '',_binary '',NULL,NULL),(162,8,'Mum Cuvee extra brut x 750 c.c.','',490,NULL,'normal',_binary '',_binary '',NULL,NULL),(163,8,'Dadá 7 (Sparking blanco)','',440,NULL,'normal',_binary '',_binary '',NULL,NULL),(164,8,'Dadá 7 (Baby)','',180,NULL,'normal',_binary '',_binary '',NULL,NULL),(165,8,'Baby Chandon x 187 c.c.','',230,NULL,'normal',_binary '',_binary '',NULL,NULL),(166,8,'Bianchi Estrella extra brut','',550,NULL,'normal',_binary '',_binary '',NULL,NULL),(167,8,'Chandon extra brut','',550,NULL,'normal',_binary '',_binary '',NULL,NULL),(168,8,'Fca. La Linda extra brut','',600,NULL,'normal',_binary '',_binary '',NULL,NULL),(169,8,'Navarro Correas extra brut','',540,NULL,'normal',_binary '',_binary '',NULL,NULL),(170,8,'Gauchezco Pinot Noir (espumante)','',590,NULL,'normal',_binary '',_binary '',NULL,NULL),(171,8,'Barón B','',1300,NULL,'normal',_binary '',_binary '',NULL,NULL),(172,8,'Flan clásico','Flan de leche condensada.',160,NULL,'normal',_binary '',_binary '',NULL,NULL),(173,8,'Trifle de maracuyá','Crocante de galletas, mousse de maracuyá y frutas tropicales.',210,NULL,'normal',_binary '',_binary '',NULL,NULL),(174,8,'Tiramisú de la casa','Con mascarpone.',210,NULL,'normal',_binary '',_binary '',NULL,NULL),(175,8,'Chocotorta','Con helado de dulce de leche.',200,NULL,'normal',_binary '',_binary '',NULL,NULL),(176,8,'Brownie con helado de crema','',210,NULL,'normal',_binary '',_binary '',NULL,NULL),(177,8,'Mousse de chocolate con frutos rojos','',220,NULL,'normal',_binary '',_binary '',NULL,NULL),(178,8,'Pavlova','Torta de merengue, crema y dulce de leche. Con frutas de estación.',220,NULL,'normal',_binary '',_binary '',NULL,NULL),(179,8,'Panqueuqes con dulce de leche','',200,NULL,'normal',_binary '',_binary '',NULL,NULL),(185,8,'Limón','',120,NULL,'normal',_binary '',_binary '',NULL,NULL),(186,8,'Crema Americana','',120,NULL,'normal',_binary '',_binary '',NULL,NULL),(187,8,'Dulce de Leche','',120,NULL,'normal',_binary '',_binary '',NULL,NULL),(188,8,'Chocolate','',120,NULL,'normal',_binary '',_binary '',NULL,NULL),(189,8,'Crocante de pollo','Con salsa barbacoa casera.',350,NULL,'normal',_binary '',_binary '',NULL,NULL),(190,8,'Albóndigas de cerdo rellenas','Rellenas de queso en salsa napolitana.',380,NULL,'normal',_binary '',_binary '',NULL,NULL),(191,8,'Bastoncitos de Mozarella','',370,NULL,'vegetarian',_binary '',_binary '',NULL,NULL),(192,8,'Rabas','',650,NULL,'normal',_binary '',_binary '',NULL,NULL),(193,8,'Langostinos rebozados','Con exquisita salsa picante.',650,NULL,'normal',_binary '',_binary '',NULL,NULL),(194,8,'Provoleta','',320,NULL,'vegetarian',_binary '',_binary '',NULL,NULL),(195,8,'Nachos con chili','Chili de carne y cheddar.',310,NULL,'normal',_binary '',_binary '',NULL,NULL),(196,8,'Tortilla de papas','Con chorizo colorado y cebolla.',370,NULL,'normal',_binary '',_binary '',NULL,NULL),(197,8,'Hongos rellenos','Op. 1: rellenos de cebolla caramelizada con panceta y queso. Op. 2: rellenos con cuatro quesos.',450,NULL,'vegetarian',_binary '',_binary '',NULL,NULL),(198,8,'Bruschetas de hongos','Con cebolla caramelizada y queso parmesano gratinado',340,NULL,'vegetarian',_binary '',_binary '',NULL,NULL),(199,8,'Empanaditas chinas de carne (x6)','',330,NULL,'normal',_binary '',_binary '',NULL,NULL),(200,8,'Empanaditas chinas de verdura (x6)','',310,NULL,'vegetarian',_binary '',_binary '',NULL,NULL),(201,8,'Empanaditas de salmón (x6)','',350,NULL,'normal',_binary '',_binary '',NULL,NULL),(202,8,'Tabla \"Mesón\" (2/3 personas)','Rabas, bastoncitos de mozarella, crocantes de pollo, empanaditas chinas y papas bravas.',1250,NULL,'normal',_binary '',_binary '',NULL,NULL),(203,8,'Tabla \"Crispy\" (2/3 personas)','Langostinos rebozados, empanaditas de salmón, sorrentinos fritos de jamón y queso, hongos rellenos con cuatro quesos y papas con cheddar.',1350,NULL,'normal',_binary '',_binary '',NULL,NULL),(204,8,'Parrillita \"Mesón\" (2/3 personas)','Tabla de matambrito de cerdo, mollejita, bife de chorizo, morcilla y chorizo bombón con papas revueltas y sus ricas salsas.',1450,NULL,'normal',_binary '',_binary '',NULL,NULL),(205,8,'Tabla de fiambres (2/3 personas)','Jamón crudo, jamón cocido, salame, bondiola de cerdo, lomo ahumado, queso en fetas, queso azul, queso pategrás, salsa de berenjenas y papas fritas. Con pan casero.',860,NULL,'normal',_binary '',_binary '',NULL,NULL),(206,8,'Y por qué no?','Empanadita criolla frita (x1)',60,NULL,'normal',_binary '',_binary '',NULL,NULL),(207,8,'Papas Bastón','Con alioli.',190,NULL,'vegetarian',_binary '',_binary '',NULL,NULL),(208,8,'Papas Revueltas','Con huevo, panceta, cebollas y verdeo.',380,NULL,'normal',_binary '',_binary '',NULL,NULL),(209,8,'Papas Gratinadas','Con queso cheddar y panceta ahumada.',380,NULL,'normal',_binary '',_binary '',NULL,NULL),(210,8,'\"La papa\"Mesón','Papas fritas con crema de queso blanco y panceta crocante.',360,NULL,'normal',_binary '',_binary '',NULL,NULL),(211,8,'Papas bravas','Papas acompañadas de la clásica salsa picante a base de deliciosos ajíes.',320,NULL,'spicy',_binary '',_binary '',NULL,NULL),(212,11,'Degustación de quesos y fiambres','Jamón crudo, salame, bondiola, mortadela con pistachos, quesos holanda, gruyere, queso marinado en limón y olivas mixtas.',900,NULL,'normal',_binary '',_binary '',NULL,NULL),(213,11,'Tabla de mar','Langostinos grillados, mejillones gratinados, rabas, panzotis de salmón, salmón ahumado, croquetas de papa y muzarella, bastones de merluza.',990,NULL,'normal',_binary '',_binary '',NULL,NULL),(214,13,'Empanada de carne cortada a cuchillo','Masa casera rellena con recado de carne de nalga cortada, prolija y pacientemente a cuchillo, huevo duro, cebollita de verdeo y dados de papas.\nSe aconseja usar el plato y servilletas, porque... \"Se Chooorrian\".',60,NULL,'normal',_binary '',_binary '\0','jxlcmv0wkbfq88ctmlybvjqyohhl4iadxhh8wzsx5.jpeg',NULL),(215,13,'Empanada de Queso, cebolla y pimientos','Masa casera rellena con recado de queso, cebollita de verdeo, pimientos, debidamente condimentados para resaltar su sabor.',60,NULL,'normal',_binary '',_binary '\0',NULL,NULL),(216,13,'Empanada de Pollo','Masa casera rellena con recado de pollo, cebollita de verdeo, daditos de papas.',60,NULL,'normal',_binary '',_binary '\0',NULL,NULL),(217,15,'Clasicón','Infusión / 2 Medialunas o 2 Criollos',150,NULL,'normal',_binary '',_binary '',NULL,NULL),(218,15,'Panino','Infusión / 2 Medialunas o 2 Criollos / Mermelada y Manteca',180,NULL,'normal',_binary '',_binary '',NULL,NULL),(219,15,'Campo','Infusión / 2 Tostadas de pan de campo / 1 Medialuna / 1 Criollo / Manteca / Mermelada casera / Queso crema / Jugo de naranja mediano',210,NULL,'normal',_binary '',_binary '',NULL,NULL),(220,15,'Livianito','Infusión / Tostadas de pan de campo / Mermelada casera / Queso crema / Jugo de naranja chico',200,NULL,'normal',_binary '',_binary '',NULL,NULL),(221,15,'Como me Gusta a Mí','Infusión / 2 Tostadas de pan negro / Huevo revuelto / Queso crema / Mermelada casera / Fruta de estación de gajos / Frutos secos / Jugo de naranja chico',290,NULL,'normal',_binary '',_binary '',NULL,NULL),(222,15,'Energía','Infusión / 2 Tostadas de pan negro / Queso crema / Mermelada casera / Omelette de jamón y queso / Jugo de naranja mediano',290,NULL,'normal',_binary '',_binary '',NULL,NULL),(223,15,'Mafalda','Infusión / 2 Mafaldas',210,NULL,'normal',_binary '',_binary '',NULL,NULL),(224,15,'Tostado Triple','Tostado de jamón y queso',240,NULL,'normal',_binary '',_binary '',NULL,NULL),(225,15,'Individual','Naranja, Limonada, Panino (Naranja, Durazno, Stevia), Feliz (Naranja, Zanahoria, Durazno, Chía, Stevia), Detox (Manzana verde, Naranja, Espinaca, Jengibre, Stevia)',180,NULL,'normal',_binary '',_binary '',NULL,NULL),(226,15,'Jarra','Naranja, Limonada, Panino (Naranja, Durazno, Stevia), Feliz (Naranja, Zanahoria, Durazno, Chía, Stevia), Detox (Manzana verde, Naranja, Espinaca, Jengibre, Stevia)',350,NULL,'normal',_binary '',_binary '',NULL,NULL),(227,15,'Milanesa de peceto','+ Papas fritas',360,NULL,'normal',_binary '',_binary '',NULL,NULL),(228,15,'Hamburguesa','+ Papas fritas',360,NULL,'normal',_binary '',_binary '',NULL,NULL),(229,15,'Fideos','+ Salsa',360,NULL,'normal',_binary '',_binary '',NULL,NULL),(230,15,'Flan de huevo Casero','',170,NULL,'normal',_binary '',_binary '',NULL,NULL),(231,15,'Ensalada de frutas','',170,NULL,'normal',_binary '',_binary '',NULL,NULL),(232,15,'Crepes de dulce de leche con helado','',180,NULL,'normal',_binary '',_binary '',NULL,NULL),(233,15,'1 Bocha de helado c/salsa','',110,NULL,'normal',_binary '',_binary '',NULL,NULL),(234,15,'2 Bocha de helado c/salsa','',180,NULL,'normal',_binary '',_binary '',NULL,NULL),(235,15,'Porción de Torta ó Tarta','',180,NULL,'normal',_binary '',_binary '',NULL,NULL),(236,15,'Gaseosa','',90,NULL,'normal',_binary '',_binary '',NULL,NULL),(237,15,'Agua Mineral','',90,NULL,'normal',_binary '',_binary '',NULL,NULL),(238,15,'Agua Saborizada','',90,NULL,'normal',_binary '',_binary '',NULL,NULL),(239,15,'Café','',90,NULL,'normal',_binary '',_binary '','',NULL),(240,15,'Café con Crema','',100,NULL,'normal',_binary '',_binary '',NULL,NULL),(241,15,'Café Jarro','',100,NULL,'normal',_binary '',_binary '',NULL,NULL),(242,15,'Café Jarro c/Crema','',110,NULL,'normal',_binary '',_binary '',NULL,NULL),(243,15,'Café Doble','',110,NULL,'normal',_binary '',_binary '',NULL,NULL),(244,15,'Café Doble c/Crema','',120,NULL,'normal',_binary '',_binary '',NULL,NULL),(245,15,'Café con leche','',110,NULL,'normal',_binary '',_binary '',NULL,NULL),(246,15,'Té/Té de hierbas','',90,NULL,'normal',_binary '',_binary '',NULL,NULL),(247,15,'Quilmes stout 1lt.','',300,NULL,'normal',_binary '',_binary '',NULL,NULL),(248,15,'Stella 975 cc','',350,NULL,'normal',_binary '',_binary '',NULL,NULL),(249,15,'Stella noire 975 cc','',360,NULL,'normal',_binary '',_binary '',NULL,NULL),(250,15,'Stella 1/3','',170,NULL,'normal',_binary '',_binary '',NULL,NULL),(251,15,'Corona 1/3','',200,NULL,'normal',_binary '',_binary '',NULL,NULL),(252,15,'Quilmes 1/3','',130,NULL,'normal',_binary '',_binary '',NULL,NULL),(253,15,'Quilmes Stout 1/3','',140,NULL,'normal',_binary '',_binary '',NULL,NULL),(254,15,'Quilmes 1/2','',160,NULL,'normal',_binary '',_binary '',NULL,NULL),(255,15,'Quilmes 1lt.','',240,NULL,'normal',_binary '',_binary '',NULL,NULL),(256,15,'Patagonia 730cc','',380,NULL,'normal',_binary '',_binary '',NULL,NULL),(257,15,'Quilmes (Media Pinta)','',160,NULL,'normal',_binary '',_binary '',NULL,NULL),(258,15,'Quilmes (Pinta)','',220,NULL,'normal',_binary '',_binary '',NULL,NULL),(259,15,'Quilmes (Pinta)','',220,NULL,'normal',_binary '',_binary '',NULL,NULL),(260,15,'Stella Artois (Media Pinta)','',180,NULL,'normal',_binary '',_binary '',NULL,NULL),(261,15,'Stella Artois (Pinta)','',240,NULL,'normal',_binary '',_binary '',NULL,NULL),(262,15,'Cafayate Malbec','',320,NULL,'normal',_binary '',_binary '',NULL,NULL),(263,15,'Elementos Malbec','',340,NULL,'normal',_binary '',_binary '',NULL,NULL),(264,15,'Cafayate Gran Linaje','',640,NULL,'normal',_binary '',_binary '',NULL,NULL),(265,15,'Las Perdices Malbec','',490,NULL,'normal',_binary '',_binary '',NULL,NULL),(266,15,'Alaris Malbec y Blanco','',290,NULL,'normal',_binary '',_binary '',NULL,NULL),(267,15,'Cafayate Chardonay','',320,NULL,'normal',_binary '',_binary '',NULL,NULL),(268,15,'Champagne Extra Brut','',490,NULL,'normal',_binary '',_binary '',NULL,NULL),(269,15,'Lúnes a Viernes','Consultá el Menú de Hoy',360,NULL,'normal',_binary '',_binary '',NULL,NULL),(270,15,'Sabado / Domingo / Feriados','Consultá el Menú de Hoy',430,NULL,'normal',_binary '',_binary '',NULL,NULL),(271,15,'Tartas X3','Tres tartines de verduras de estación + Ensalada de hojas verdes',410,NULL,'normal',_binary '',_binary '',NULL,NULL),(272,15,'Pechuga al Champignon','Pechuga de Pollo con salsa al champignon + Guarnición',430,NULL,'normal',_binary '',_binary '',NULL,NULL),(273,15,'Bife de Chorizo','Bife de Chorizo + Guarnición a elección',500,NULL,'normal',_binary '',_binary '',NULL,NULL),(274,15,'Bistec','Delicioso y tierno corte de carne vacuna + Papas fritas con huevo revuelto y panceta crocante',460,NULL,'normal',_binary '',_binary '',NULL,NULL),(275,15,'Bifecitos de Cuadril','Tiernos cortes de cuadril + Guarnición a elección',410,NULL,'normal',_binary '',_binary '',NULL,NULL),(276,15,'Brótola (de mar)','Filete de Brótola con salsa de langostinos enteros + Guarnición a elección',540,NULL,'normal',_binary '',_binary '',NULL,NULL),(277,15,'Ravioles','Ricota y Verdura + Salsa',360,NULL,'vegetarian',_binary '',_binary '',NULL,NULL),(278,15,'Sorrentinos','Calabaza y Mozzarella + Salsa',360,NULL,'vegetarian',_binary '',_binary '',NULL,NULL),(279,15,'Fajitas Mex (para compartir)','Fajitas de carne, pollo, huevo revuelto y vegetales salteados',820,NULL,'normal',_binary '',_binary '',NULL,NULL),(280,15,'Super Milas Napolitana (para compartir)','Jamón, queso y tomate',770,NULL,'normal',_binary '',_binary '',NULL,NULL),(281,15,'Super Milas Patagonia (para compartir)','Rúcula, queso y tomates cherry',770,NULL,'normal',_binary '',_binary '',NULL,NULL),(282,15,'Papas Cerveceras','Papas / Crema de leche / Mozzarella / Champignones / Cebolla de verdeo',320,NULL,'normal',_binary '',_binary '',NULL,NULL),(283,15,'Papas con Huevo','Papas con huevos fritos o revueltos',260,NULL,'normal',_binary '',_binary '',NULL,NULL),(284,15,'Reina de Berenjenas','Berenjenas / Mozzarella / Parmesano / Tomate / Albahaca / Sal y pimienta',320,NULL,'normal',_binary '',_binary '',NULL,NULL),(285,15,'Rabas','',540,NULL,'normal',_binary '',_binary '',NULL,NULL),(287,13,'Locro Pulsudo \"de la Negrita\"','Manjar criollo a base de maíz blanco partido, poroto pallares, sobrepecho en dados, panceta, patita de cerdo y chorizo colorado, junto al zapallo plomo y algunos secretos que le daba mi Máma.',380,NULL,'normal',_binary '',_binary '\0','wzi005ir3lymazmk6nbwyvir82kpo9911bk473e8l.jpeg',NULL),(288,13,'Humita a la Olla \"la facil\"','Choclo rallado, cebolla y pimiento rojo rehogados en aceite y aromatizada con albahaca, pero se ahorra la envoltura en la chala y se cocina suelta en l´olla, removiendo pacientemente pa´que no se pegue.\nEl queso, es de vaca nomás.',380,NULL,'normal',_binary '',_binary '\0','laleyr0xxirbhyub9taaxcmwmzu0kzq95y5fwqne2.jpeg',NULL),(289,13,'Buseca a la española \"pero salteña\"','Especie de Guiso de mondongo tiernizado muy bien, se completa con chorizo de cerdo y colorado, panceta en dados y Garbanzo bien hervido.\nRe-riquíssimo. Pa´calentar el cuerpito.',380,NULL,'normal',_binary '',_binary '\0','oikcrayg2lqmzxybo81kkvh3b9lq89tg5pskhymup.jpeg',NULL),(290,13,'Riñoncitos al Torrontés','Cazuela de riñoncitos enriquecida con el aroma y sabor típico Torrontés de Cafayate, hecha sobre la base de una salsa de cebolla, acompañada con arroz graneado del norte.\nNo macha. ni emborracha... hip!!',380,NULL,'normal',_binary '',_binary '\0','e6rt0xj8rit4dscyz2d61u5k2l0ea64q10jmaz0gv.jpeg',NULL),(291,13,'Guiso i´Lentejas','Otro guisito criollo, como se imagina, a base de Lentejas, cebolla, pimiento rojo, tomates y dados de carne de ternera y panceta, chorizo de cerdo.',380,NULL,'normal',_binary '',_binary '\0','v9h8p4ds1bwxkhiehrgw8lnk9t8c1zjjqiblc7wof.jpeg',NULL),(292,13,'Humita en chala \"de la abuela\"','Laboriooosa molienda de choclo blanco fresco, rallado, con un sofrito de cebolla y pimiento colorado, aromatizada con albahaca fresca y rellena con queso de cabra, envuelta en chalas frescas y cocinada en agua hirviente.\nEnvase no retornable... se contarán las chalas.',200,NULL,'vegetarian',_binary '',_binary '\0','xlxoij9ljv69zk673w1ecrcsll3s536tbe8h59ho7.jpeg',NULL),(293,13,'Tamal \"pero está bueno\"','Pasta de maíz (mote) molido que se amasa y se rellena con carne de cabeza de cerdo o vaca preparada como el recado de la empanada, envuelta en chalas secas y atadito como caramelo.\n(No tiene pasa de uvas)',180,NULL,'normal',_binary '',_binary '\0',NULL,NULL),(294,13,'Dulce Artesanal De Peras 420gr','Dulce elaborado de forma de casera con una selección de peras de 1era calidad, con el toque característico de nuestra cocina.',220,NULL,'normal',_binary '',_binary '\0',NULL,NULL),(295,13,'Dulce de Cayote','El cayote es un cultivo andino que abunda en la región cuyana y en el noroeste argentino.',80,NULL,'normal',_binary '',_binary '\0',NULL,NULL),(296,13,'Cuaresmillo En Almibar','El cuaresmillo es una variedad de durazno o melocotón pequeño, muy sabroso, que toma su nombre de su época de cosecha, la cuaresma.',80,NULL,'normal',_binary '',_binary '\0',NULL,NULL),(297,13,'Higos En Almibar','',80,NULL,'normal',_binary '',_binary '\0',NULL,NULL),(298,13,'Zapallo En Almibar','',80,NULL,'normal',_binary '',_binary '\0',NULL,NULL),(299,13,'Quesillo Con Dulces Regionales','Puede elegir solo uno de estos:\nCayote c/nuez, Cuaresmillo, Miel De Caña, Higos o zapallo en almíbar.\n*Queso de vaca hecho en forma artesanal, hilado y en lonjas.',100,NULL,'normal',_binary '',_binary '\0',NULL,NULL),(300,13,'Quesillo mixto con dulces regionales','Puede elegir hasta tres de estos:\nCayote c/nuez, Cuaresmillo, Miel De Caña, Higos o Zapallo en almíbar.\n*Queso de vaca hecho en forma artesanal, hilado y en lonjas.',130,NULL,'normal',_binary '',_binary '\0','77eytkcgtogynzumgzxj1ain17izl358gkwy9birq.jpeg',NULL),(301,13,'Budín De Pan Casero','',80,NULL,'normal',_binary '',_binary '\0','sjxgorwidmfhz33a31ew03s3mo0pvyt7maqfmieon.jpeg',NULL),(302,13,'Flan Casero De Huevo','',80,NULL,'normal',_binary '',_binary '\0','hjd64rh8p6yh9ibum7r50weqvo06ugni909jh6l3u.jpeg',NULL),(303,13,'Queso y Dulce De Batata o Membrillo','',100,NULL,'normal',_binary '',_binary '\0',NULL,NULL),(304,13,'Gaseosas 350ml','Gaseosas De La Linea Coca Cola',100,NULL,'normal',_binary '',_binary '','kj26kefwtiktn6itd6lbex2e4uppvcmq6de94eepw.jpeg',NULL),(305,13,'Agua Saborizadas Aquarius 500cc','',100,NULL,'normal',_binary '',_binary '','o7ih8r29oo5dgxaxyulywvfn6j7aatfhb8i6e213t.jpeg',NULL),(306,13,'Agua Con Gas','',100,NULL,'normal',_binary '',_binary '','odv0ys59fcdlz7j5ircj86ghgkl629poxzjkxp6dv.jpeg',NULL),(307,13,'Agua Sin Gas','',100,NULL,'normal',_binary '',_binary '','eeclf4l99sszn77qeobzvzw7i3b8zavxh1jouu2t4.jpeg',NULL),(308,13,'Gaseosas De 1,25lt','',200,NULL,'normal',_binary '',_binary '','64722alryt9z9am1wv8hew8pgnss17x8v3axhc12f.jpeg',NULL),(309,13,'Imperial Rubia 1lt','Cerveza dorada, su aroma fruta y su inconfundible sabor fresco e intenso la convierten en la autentica y tradicional Cerveza Especial Argentina',280,NULL,'normal',_binary '',_binary '','xaicmz0f367y54alfmqft4vzyrk2mpipp6sl57nqz.jpeg',NULL),(310,13,'Imperial Amber','',300,NULL,'normal',_binary '',_binary '','1nxl8f4q8f5ztv4c27bqk0zonvfn7ip9esu76ue4w.jpeg',NULL),(311,13,'Heineken 1lt','Cerveza Rubia',350,NULL,'normal',_binary '',_binary '\0',NULL,NULL),(312,13,'Finca Humanao','Vino de Bodega Humanao, de cepas cultivadas en el Valle De Molinos, a 2.230 mts. de altura sobre el nivel del mar, lo que dan un sabor y aroma característico. Crianza en barricas de roble francés y americanas, durante 12 meses.',500,NULL,'normal',_binary '',_binary '','qcs3de5btj0fenn5yq9wurnuuzd487iko6lj635vf.jpeg',NULL),(313,13,'Humanao Reserva','Vino de Bodega Humanao, salteño, específicamente del Valle de Molinos, criado en barricas de roble francés, durante 12 meses.\nDe intenso color rojo rubí, con leves tonalidades violáceas. Predominan frutos rojos, casis con un segundo plano de notas a especies, mineral y sutil madera de roble francés.',1000,NULL,'normal',_binary '',_binary '','rlsk1r6g8mfsdnhdawzxj1wovrtff6blosri3gqa3.jpeg',NULL),(314,13,'Territorio','Vino de Bodega Amalaya, las uvas provienen de los Valles Calchaquíes, de viñedos plantados a 1700 mts de altura, en Salta.\n\nVino floral y especiado de cuerpo medio.',450,NULL,'normal',_binary '',_binary '','w9dt33spr3pwtztd1ljkyaxsxzo7epuu47k111byu.jpeg',NULL),(315,15,'Lomo Panino','Lomo completo de carne o pollo + Papas Fritas',0,'360|410','normal',_binary '',_binary '',NULL,NULL),(316,13,'Vallisto','De color rojo intenso con tonos violáceos. Intensidad aromática alta, carácter:\nfrutado–tostado, complejidad: media, y aromas a frutos rojos, ciruelas, pimiento y especias, que reflejan las características del Terroir.\nEn boca es seco, de muy buen cuerpo y textura carnosa, con taninos sedosos y maduros. La persistencia es prolongada y el final es elegante.',700,NULL,'normal',_binary '',_binary '','m9331ogf1dsp63tt7t6zrupg31tcq384z3ajul55d.jpeg',NULL),(317,15,'Lomo Nino','Lomo completo de carne o pollo / Panceta / Salteado de pimientos y cebolla + Papas Fritas',0,'380|430','normal',_binary '',_binary '',NULL,NULL),(318,15,'Veggie','Zucchinis / Berenjenas / Morrón / Zanahorias / Hojas de rúcula fresca / Mozzarella / Queso crema / Oliva, pimienta y sal + Papas Fritas',0,'-|410','vegetarian',_binary '',_binary '','',NULL),(319,13,'Coquena','Vino De Bodega Yacochuya.\nLos indios de la Puna y de la Quebrada creen en un personaje mítico, “Coquena”. Es el amo y el propietario de las vicuñas y de los guanacos.',800,NULL,'normal',_binary '',_binary '','u06dvm0xvmt1687qltcul3nadpjcpuo7vhz8jqyzd.jpeg',NULL),(320,13,'Coquena Corte','Vino De Bodega Yacochuya. Corte: Malbec, Cabernet Sauvignon y Tannat\nLos indios de la Puna y de la Quebrada creen en un personaje mítico, “Coquena”. Es el amo y el propietario de las vicuñas y de los guanacos.',1200,NULL,'normal',_binary '',_binary '','bl6t76a0sdecc0v44lhnvoygul7asv9r4cu8kj2k0.jpeg',NULL),(321,11,'Tapeo español','Buñuelos con allioli, tortilla de papas, anillos de calamar, champignones marinados y mejillones al limón.',900,NULL,'normal',_binary '',_binary '',NULL,NULL),(322,11,'Langostinos apanados','Con pure de coliflor',290,NULL,'normal',_binary '',_binary '',NULL,NULL),(323,11,'Rabas para uno','A la andaluza con allioli de limón.',240,NULL,'normal',_binary '',_binary '',NULL,NULL),(326,13,'Empanada Arabe','Masa casera rellena de la combinación de carne, cebolla y tomates picaditos, sazonados con el sabor característicos de nuestra cocina!\nY por supuesto, \"no puede faltar el toque de sabor del limón\"',60,NULL,'normal',_binary '',_binary '\0',NULL,NULL),(327,13,'Lasagna','',300,NULL,'normal',_binary '',_binary '\0',NULL,NULL),(328,13,'Tallarines Caseros','Nuestra pasta casera: Masa de huevo y harina 0000.\n\n                               Recomendación del Cheff:\nOLVIDATE DE TODO LO ANTERIOR!\nY SOLO TRANSPORTATE CON  LA MEMORIA,  A LA COCINA DE NUESTRAS ABUELAS\nDISFRUTA DE ESTE MOMENTO INOLVIDABLE, CON LA MUSICA QUE MAS TE APASIONA, Y  LA COMPAÑÍA QUE MEJOR TE SIENTA.',300,NULL,'normal',_binary '',_binary '\0',NULL,NULL),(329,13,'Menú Villa#pandemia','- 1 Empanada a elección (carne cortada a cuchillo, Queso y cebolla, pollo)\n- 1 Cazuela (Locro, Humita al plato, Guiso de Lentejas, Guiso de Mondongo o Riñoncitos al Torrontés)\n- 1 Postre (Queso fresco o Quesillo con dulces regionales)\n\nSi juntas 4 personas, te regalamos la bebida: 1 Gaseosa familiar de 1,25lt o 1 Cerveza de 1lt o 1 Jarra de 1lt tinto/blanco.',500,NULL,'normal',_binary '',_binary '\0','37z8octifexbt1bsumxvgma6qhebx0q9ohh45tyif.jpeg',NULL),(331,11,'Rabas para dos','A la andaluza con allioli de limón.',480,NULL,'normal',_binary '',_binary '',NULL,NULL),(332,11,'Berenjenas al Forno','Apanadas con salsa roja y queso gratinado.',300,NULL,'normal',_binary '',_binary '',NULL,NULL),(333,11,'Provoleta','Con miel, hongos de las sierras y almendras.',350,NULL,'normal',_binary '',_binary '',NULL,NULL),(334,14,'PAPAS TIPICAS','Papas fritas corte bastón cubiertas de queso cheddar fundido, panceta y verdeo.',300,NULL,'normal',_binary '',_binary '',NULL,NULL),(336,14,'Papas con huevo','Papas con queso crema y huevo revuelto',280,NULL,'normal',_binary '',_binary '',NULL,NULL),(337,14,'Papas alfredo','Papas bastón, salsa Alfredo, langostinos salteados.',380,NULL,'normal',_binary '',_binary '',NULL,NULL),(338,14,'Nachos','Nachos con cazuela de cheddar fundido',280,NULL,'normal',_binary '',_binary '',NULL,NULL),(339,14,'crocantes de pollo','con cazuela de mostaza,miel y bbq',300,NULL,'normal',_binary '',_binary '',NULL,NULL),(340,14,'Rabas','Aros de calamar rebozados.\nCazuela de bbq y alioli.',450,NULL,'normal',_binary '',_binary '',NULL,NULL),(341,14,'Provoleta','Porción de queso provolone gratinado con especias. \nAcompañada de rúcula, tomates asados y aceitunas negras.',530,NULL,'vegetarian',_binary '',_binary '',NULL,NULL),(342,14,'Bastones de muzzarella','Con cazuela de alioli y bbq.',350,NULL,'vegetarian',_binary '',_binary '',NULL,NULL),(343,14,'Aros de cebolla','',280,NULL,'normal',_binary '',_binary '',NULL,NULL),(345,17,'CAFE','',90,NULL,'normal',_binary '',_binary '',NULL,NULL),(346,17,'CAFE AMERICANO','',100,NULL,'normal',_binary '',_binary '',NULL,NULL),(347,17,'CAFE  DOBLE','',110,NULL,'normal',_binary '',_binary '',NULL,NULL),(348,17,'CAFE ESPECIAL','',220,NULL,'normal',_binary '',_binary '',NULL,NULL),(349,17,'CAPUCHINO','',120,NULL,'normal',_binary '',_binary '',NULL,NULL),(350,17,'SUBMARINO','',120,NULL,'normal',_binary '',_binary '',NULL,NULL),(351,17,'TE','',90,NULL,'normal',_binary '',_binary '',NULL,NULL),(352,17,'TE SABORIZADO','',90,NULL,'normal',_binary '',_binary '',NULL,NULL),(353,17,'TE CON LECHE','',100,NULL,'normal',_binary '',_binary '',NULL,NULL),(354,17,'CAFE CON CREMA','',100,NULL,'normal',_binary '',_binary '',NULL,NULL),(355,17,'CAFE AMERICANO CON CREMA','',110,NULL,'normal',_binary '',_binary '',NULL,NULL),(356,17,'AGUA MINERAL','',110,NULL,'normal',_binary '',_binary '',NULL,NULL),(357,17,'GASEOSA','',110,NULL,'normal',_binary '',_binary '',NULL,NULL),(358,17,'JUGO DE NARANJA','',169,NULL,'normal',_binary '',_binary '',NULL,NULL),(359,17,'LICUADOS','',170,NULL,'normal',_binary '',_binary '',NULL,NULL),(360,17,'AGUA SABORIZADA','',120,NULL,'normal',_binary '',_binary '',NULL,NULL),(361,17,'MEDIALUNAS O CRIOLLITOS','',40,NULL,'normal',_binary '',_binary '',NULL,NULL),(362,17,'DESAYUNO','',220,NULL,'normal',_binary '',_binary '',NULL,NULL),(363,17,'DESAYUNO CON TOSTADAS','',240,NULL,'normal',_binary '',_binary '',NULL,NULL),(364,17,'DESAYUNO KGB','',299,NULL,'normal',_binary '',_binary '',NULL,NULL),(365,17,'TORTAS','',210,NULL,'normal',_binary '',_binary '',NULL,NULL),(366,17,'TARTAS','',190,NULL,'normal',_binary '',_binary '',NULL,NULL),(367,17,'MAFALDA','',90,NULL,'normal',_binary '',_binary '',NULL,NULL),(368,17,'CHOPP LISO 330 CC','',150,NULL,'normal',_binary '',_binary '',NULL,NULL),(369,17,'BALON 500 CC','',190,NULL,'normal',_binary '',_binary '',NULL,NULL),(370,17,'CORONA 330 CC','',280,NULL,'normal',_binary '',_binary '',NULL,NULL),(371,17,'STELLA ARTOIS 970 CC','',300,NULL,'normal',_binary '',_binary '',NULL,NULL),(372,17,'STELLA ARTOIS NEGRA','',340,NULL,'normal',_binary '',_binary '',NULL,NULL),(373,17,'PATAGONIA  750 CC','',380,NULL,'normal',_binary '',_binary '',NULL,NULL),(374,17,'BUDWEISER 970 CC','',280,NULL,'normal',_binary '',_binary '',NULL,NULL),(375,17,'TRIPLE','',235,NULL,'normal',_binary '',_binary '','',NULL),(376,17,'TOSTADO','jamón y queso tostado',235,NULL,'normal',_binary '',_binary '','',NULL),(377,17,'ISIDORITO','jamón, queso, tomate , ketchup',255,NULL,'normal',_binary '',_binary '','',NULL),(378,17,'PRIMAVERA','jamón, queso, tomate, huevo',305,NULL,'normal',_binary '',_binary '','',NULL),(379,17,'NAPOLITANO','jamon, queso gratinado, tomate, aceituna y huevo',355,NULL,'normal',_binary '',_binary '','',NULL),(380,17,'NINOTCHKA','jamón crudo, queso, manteca',355,NULL,'normal',_binary '',_binary '','',NULL),(381,17,'SIBERIA','pan árabe, jamón crudo, queso gratinado, manteca',355,NULL,'normal',_binary '',_binary '','',NULL),(382,17,'LOMO MOSCU','lomo, queso',349,NULL,'normal',_binary '',_binary '',NULL,NULL),(383,17,'LOMO ESTRELLA ROJA','lomo, jamón, queso, tomate, aceituna, huevo y salsa golf',379,NULL,'normal',_binary '',_binary '','',NULL),(384,11,'Papas Fritas Bastón','',160,NULL,'normal',_binary '',_binary '',NULL,NULL),(385,17,'LOMO DE POLLO','pollo, jamón, queso, tomate, lechuga y huevo',350,NULL,'normal',_binary '',_binary '','',NULL),(386,11,'Papas Fritas','Con huevo revuelto y panceta.',230,NULL,'normal',_binary '',_binary '',NULL,NULL),(387,11,'Papas Bravas','Rústicas con mayonesa picante.',200,NULL,'spicy',_binary '',_binary '',NULL,NULL),(388,17,'KGB','pan árabe, salchicha ahumada, queso, tomate y huevo',335,NULL,'normal',_binary '',_binary '','',NULL),(389,11,'Papas Ochre','Salsa cuatro quesos y  panceta.',240,NULL,'normal',_binary '',_binary '',NULL,NULL),(390,17,'HAMBURGUESA CASERA','hamburguesa casera, tomate, lechuga, queso ,huevo mayonesa y ketchup',350,NULL,'normal',_binary '',_binary '','',NULL),(391,11,'Papas Con Cheddar','',240,NULL,'normal',_binary '',_binary '',NULL,NULL),(392,11,'Empanada Criolla','',80,NULL,'normal',_binary '',_binary '',NULL,NULL),(393,11,'Empanada Caprese','',80,NULL,'normal',_binary '',_binary '',NULL,NULL),(394,11,'Empanada De Espinaca','',90,NULL,'normal',_binary '',_binary '',NULL,NULL),(395,11,'Ochre','Verduras de estación asadas.',350,NULL,'vegetarian',_binary '',_binary '',NULL,NULL),(396,11,'Caesar De Pollo','Lechuga criolla, huevo duro, parmesano, panceta, crutons y aderezo cesar.',410,NULL,'normal',_binary '',_binary '',NULL,NULL),(397,11,'Del Mar','Mix de hojas, salmón rosado ahumado, espárragos, alcaparras verdes, castañas y escamas de parmesano.',550,NULL,'normal',_binary '',_binary '',NULL,NULL),(398,11,'Gohan','(Sushi al plato)\nArroz, palta, queso, salmón, langostinos y kanikama con semillas de sésamo.',500,NULL,'normal',_binary '',_binary '',NULL,NULL),(399,11,'Gohan Vegetariano','Arroz, palta, queso, champignones, pepino y zanahoria con semillas de sésamo.',450,NULL,'vegetarian',_binary '',_binary '',NULL,NULL),(400,17,'PIZZA MUZZARELLA','',499,NULL,'normal',_binary '',_binary '',NULL,NULL),(401,17,'PIZZA NAPOLITANA','',560,NULL,'normal',_binary '',_binary '',NULL,NULL),(402,17,'PIZZA ESPECIAL','',560,NULL,'normal',_binary '',_binary '',NULL,NULL),(403,11,'Salmón Rosado','Grillado con vegetales asados.',850,NULL,'normal',_binary '',_binary '',NULL,NULL),(404,11,'Tempura de Salmón y vegetales','Con mayonesa de soja.',460,NULL,'normal',_binary '',_binary '',NULL,NULL),(405,11,'Trucha','Grillada con vegetales asados.',580,NULL,'normal',_binary '',_binary '',NULL,NULL),(406,11,'Lenguado','Con salsa de limón, alcaparras, aceitunas y tomates secos con vegetales.',500,NULL,'normal',_binary '',_binary '',NULL,NULL),(407,11,'Merluza','A la andaluza con vegetales asados.',420,NULL,'normal',_binary '',_binary '',NULL,NULL),(408,11,'Pescado de río','(Dorado o Surubí) con tratar de quinoa y vegetales.',450,NULL,'normal',_binary '',_binary '',NULL,NULL),(409,11,'Langostinos a la chapa','Sobre timbal de arroz.',550,NULL,'normal',_binary '',_binary '',NULL,NULL),(410,11,'Bife de chorizo','Con chimichurri y papas fritas.',599,NULL,'normal',_binary '',_binary '',NULL,NULL),(411,11,'Entraña','Con papas cuadruchi.',570,NULL,'normal',_binary '',_binary '',NULL,NULL),(412,11,'Asado de tira','Con papas fritas o mix de verdes.',570,NULL,'normal',_binary '',_binary '',NULL,NULL),(413,11,'Medallones de lomo','Con salsa de champignon y papa aplastada.',599,NULL,'normal',_binary '',_binary '',NULL,NULL),(414,11,'Medallones de lomo','Con salsa malbec con hongos, papines y panceta.',599,NULL,'normal',_binary '',_binary '',NULL,NULL),(415,11,'Cazuela de lomo','',480,NULL,'normal',_binary '',_binary '',NULL,NULL),(416,11,'Matambrito de cerdo','Al limón y tomillo con papas fritas.',520,NULL,'normal',_binary '',_binary '',NULL,NULL),(417,11,'Pollo deshuesado','Con bouquet de hojas.',430,NULL,'normal',_binary '',_binary '',NULL,NULL),(418,11,'Wok','De vegetales con pollo crujiente en sésamo.',430,NULL,'normal',_binary '',_binary '',NULL,NULL),(419,11,'Milanesa de peceto','A la napolitana con papas fritas.',400,NULL,'normal',_binary '',_binary '',NULL,NULL),(420,11,'Milanesa de peceto','A caballo con papas fritas.',400,NULL,'normal',_binary '',_binary '',NULL,NULL),(421,17,'LOMO ESTRELLA ROJA','LOMO ,QUESO , JAMÓN, HUEVO, TOMATE,LECHUGA.',420,NULL,'normal',_binary '',_binary '','',NULL),(422,17,'POLLO GRILLE','DESHUESADO DE POLLO, LECHUGA,TOMATE Y ZANAHORIA RALLADA',350,NULL,'normal',_binary '',_binary '',NULL,NULL),(423,17,'HAMBURGUESA','HAMBURGUESA DE CARNE, CON JAMÓN,QUESO ,TOMATE, LECHUGA Y HUEVO',350,NULL,'normal',_binary '',_binary '',NULL,NULL),(424,17,'TRADICIONAL','LECHUGA,TOMATE, ZANAHORIA Y HUEVO',199,NULL,'normal',_binary '',_binary '',NULL,NULL),(425,17,'PRIMAVERA','ATÚN, TOMATE, PALMITO Y HUEVO',289,NULL,'normal',_binary '',_binary '',NULL,NULL),(426,17,'TROPICAL','JAMÓN ,QUESO, PALMITO, LECHUGA,TOMATE, HUEVO Y ACEITUNAS',289,NULL,'normal',_binary '',_binary '',NULL,NULL),(427,17,'KGB','ANANÁ, JAMÓN CRUDO, POLLO Y TOMATE',299,NULL,'normal',_binary '',_binary '',NULL,NULL),(428,17,'DE JAMÓN Y QUESO','OMELETTE DE JAMON Y QUESO CON ENSALADA DE LECHUGA Y TOMATE',200,NULL,'normal',_binary '',_binary '',NULL,NULL),(429,17,'JAMÓN QUESO Y TOMATE','OMOLETTE DE JAMÓN QUESO Y TOMATE CON ENSALADA DE LECHUGA Y TOMATE',270,NULL,'normal',_binary '',_binary '',NULL,NULL),(430,17,'CON ESPÁRRAGOS','OMELETTE DE QUESO Y ESPÁRRAGOS CON ENSALADA DE LECHUGA Y TOMATE',290,NULL,'normal',_binary '',_binary '',NULL,NULL),(431,17,'kGB','CREMA DE CHAMPIGNION, QUESO AL GRATE',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(432,17,'NAPOLITANO','SALSA DE TOMATE,J COCIDO, QUESO, OREGANO',220,NULL,'normal',_binary '',_binary '',NULL,NULL),(433,17,'BLENDERS PRIDE','',240,NULL,'normal',_binary '',_binary '',NULL,NULL),(434,17,'CHIVAS REGALS','',350,NULL,'normal',_binary '',_binary '',NULL,NULL),(435,17,'GLENFIDDCH','',440,NULL,'normal',_binary '',_binary '',NULL,NULL),(436,17,'100 PIPES','',279,NULL,'normal',_binary '',_binary '',NULL,NULL),(437,11,'Milanesa de peceto','Con papas fritas.',350,NULL,'normal',_binary '',_binary '',NULL,NULL),(438,11,'Milanesa de pollo','Con papas fritas.',300,NULL,'normal',_binary '',_binary '',NULL,NULL),(439,11,'Para dos personas','Empanadas criollas, chorizo, morcilla, riñoncito, asado de tira, matambre de cerdo, papas fritas.',1200,NULL,'normal',_binary '',_binary '',NULL,NULL),(440,11,'Para una persona','Empanada criolla, chorizo, morcilla, entraña, asado de tira, papas fritas.',800,NULL,'normal',_binary '',_binary '',NULL,NULL),(441,11,'Ñoquis de papa','',300,NULL,'spicy',_binary '',_binary '',NULL,NULL),(442,11,'Ravioles de espinaca','',3500,NULL,'normal',_binary '',_binary '',NULL,NULL),(443,11,'Sorrentinos de berenjena y mozzarella','',390,NULL,'normal',_binary '',_binary '',NULL,NULL),(444,11,'Sorrentinos de humita en doble textura','',390,NULL,'normal',_binary '',_binary '',NULL,NULL),(445,11,'Sorrentinos thai','Camarones, coco, curry, jengibre y p. de jamaica.',490,NULL,'normal',_binary '',_binary '',NULL,NULL),(446,11,'Panzottis de cabrito, verduras y hierbas','',430,NULL,'normal',_binary '',_binary '',NULL,NULL),(447,11,'Panzottis de langostino al limon','',430,NULL,'normal',_binary '',_binary '',NULL,NULL),(448,11,'Panzottis de salmon y mozzarella','',430,NULL,'normal',_binary '',_binary '',NULL,NULL),(449,11,'Boscaiola','Cebolla, panceta, hongos frescos, vino blanco, crema y perejil.',100,NULL,'normal',_binary '',_binary '',NULL,NULL),(450,11,'Cuatro quesos','',100,NULL,'normal',_binary '',_binary '',NULL,NULL),(451,11,'De camarones','',120,NULL,'normal',_binary '',_binary '',NULL,NULL),(452,11,'Triple','Jamon y queso.',200,NULL,'normal',_binary '',_binary '',NULL,NULL),(453,11,'Tostado','Jamon cocido, queso, tostado.',200,NULL,'normal',_binary '',_binary '',NULL,NULL),(454,11,'Bon vivant','Jamon crudo, rucula y tomates secos.',270,NULL,'normal',_binary '',_binary '',NULL,NULL),(455,11,'Primavera','Jamon, queso, tomate y huevo.',240,NULL,'normal',_binary '',_binary '',NULL,NULL),(456,11,'Napolitano','Jamon, queso gratinado, tomate, oregano y huevo.',300,NULL,'normal',_binary '',_binary '',NULL,NULL),(457,11,'Del mar','Salmon rosado ahumado, cebolla morada, tomate y queso.',570,NULL,'normal',_binary '',_binary '',NULL,NULL),(458,11,'Vegetariano','Pimiento, zucchini, berenjena, tomate y morrones.',220,NULL,'vegetarian',_binary '',_binary '',NULL,NULL),(459,11,'Lomo completo','Lomo, jamon, queso, tomate, aceituna, huevo, papas fritas.',380,NULL,'normal',_binary '',_binary '',NULL,NULL),(460,11,'Lomo de pollo','Pollo, jamon, queso, lechuga, tomate, huevo, papas fritas.',350,NULL,'normal',_binary '',_binary '',NULL,NULL),(461,11,'Lomo de molleja','Molleja, jamon, queso, lechuga, tomate, huevo, papas fritas.',410,NULL,'normal',_binary '',_binary '',NULL,NULL),(462,11,'Hamburguesa','De carne, jamon, panceta, queso, lechuga, cebolla morada, tomate, huevo, pepinillos dulces, papas fritas.',350,NULL,'normal',_binary '',_binary '',NULL,NULL),(463,18,'Café con leche','café con leche y dos medialunas',122,NULL,'normal',_binary '',_binary '',NULL,NULL),(464,19,'Café Expreso','',70,NULL,'normal',_binary '',_binary '',NULL,NULL),(465,19,'Café Jarrito','',90,NULL,'normal',_binary '',_binary '',NULL,NULL),(466,19,'Café Doble','',110,NULL,'normal',_binary '',_binary '',NULL,NULL),(467,19,'Café con Leche','',100,NULL,'normal',_binary '',_binary '',NULL,NULL),(468,19,'\"La MUNDIAL\"','Café con leche/té, pan de campo, 2 medialunas o 2 criollos',340,NULL,'normal',_binary '',_binary '',NULL,NULL),(469,11,'Lomo al plato','Lomo, queso, jamon, huevo, tomate, lechuga, papas fritas.',400,NULL,'normal',_binary '',_binary '',NULL,NULL),(470,11,'Lomo de pollo al plato','Pechuga de pollo, queso, jamon, huevo, lechuga, tomate y papas fritas.',400,NULL,'normal',_binary '',_binary '',NULL,NULL),(471,11,'Hamburguesa','De carne, jamon, panceta, queso, lechuga, cebolla morada, tomate, huevo, papas bravas con mayonesa picante.',350,NULL,'normal',_binary '',_binary '',NULL,NULL),(472,11,'Gaseosa','',110,NULL,'normal',_binary '',_binary '',NULL,NULL),(473,11,'Agua saborizada','',120,NULL,'normal',_binary '',_binary '',NULL,NULL),(474,11,'Agua mineral','',110,NULL,'normal',_binary '',_binary '',NULL,NULL),(475,11,'Jugos naturales','',180,NULL,'normal',_binary '',_binary '',NULL,NULL),(476,11,'Licuados','',180,NULL,'normal',_binary '',_binary '',NULL,NULL),(477,11,'Limonada con menta y jengibre','',180,NULL,'normal',_binary '',_binary '',NULL,NULL),(478,11,'Smoothies','',180,NULL,'normal',_binary '',_binary '',NULL,NULL),(479,11,'Helado de 1 sabor','',130,NULL,'normal',_binary '',_binary '',NULL,NULL),(480,11,'Helado de 2 sabores','',170,NULL,'normal',_binary '',_binary '',NULL,NULL),(481,11,'Frutos del bosque con crema chantilly','',270,NULL,'normal',_binary '',_binary '',NULL,NULL),(482,11,'Tiramisu','',240,NULL,'normal',_binary '',_binary '',NULL,NULL),(483,11,'Tarta de manzana con helado','',270,NULL,'normal',_binary '',_binary '',NULL,NULL),(484,11,'Brownie con helado','',270,NULL,'normal',_binary '',_binary '',NULL,NULL),(485,11,'Mousse de maracuya','',240,NULL,'normal',_binary '',_binary '',NULL,NULL),(486,11,'Baclawa','',135,NULL,'normal',_binary '',_binary '',NULL,NULL),(487,11,'Flan casero','',165,NULL,'normal',_binary '',_binary '',NULL,NULL),(488,11,'Torta humeda de chocolate y pistachos con crema de naranja y su reduccion','No contiene harina.',270,NULL,'normal',_binary '',_binary '',NULL,NULL),(489,11,'Budin de pan','',165,NULL,'normal',_binary '',_binary '',NULL,NULL),(490,11,'Cafe','',90,NULL,'normal',_binary '',_binary '',NULL,NULL),(491,11,'Cafe con crema','',105,NULL,'normal',_binary '',_binary '',NULL,NULL),(492,11,'Cafe doble con crema','',110,NULL,'normal',_binary '',_binary '',NULL,NULL),(493,11,'Cafe americano','',100,NULL,'normal',_binary '',_binary '',NULL,NULL),(494,11,'Cafe americano con crema','',110,NULL,'normal',_binary '',_binary '',NULL,NULL),(495,11,'Capuccino','',110,NULL,'normal',_binary '',_binary '',NULL,NULL),(496,11,'Cafe con leche','',105,NULL,'normal',_binary '',_binary '',NULL,NULL),(497,11,'Leche fria o caliente','',100,NULL,'normal',_binary '',_binary '',NULL,NULL),(498,11,'Submarino','',110,NULL,'normal',_binary '',_binary '',NULL,NULL),(499,11,'Negrito','',100,NULL,'normal',_binary '',_binary '',NULL,NULL),(500,11,'Cafe doble','',105,NULL,'normal',_binary '',_binary '',NULL,NULL),(501,11,'Capuccino frio','Cafe, crema de leche, licor de cafe, hielo picado.',220,NULL,'normal',_binary '',_binary '',NULL,NULL),(502,11,'Cafe vienes','Cafe fuerte, crema de leche, chocolate, canela, cacao.',220,NULL,'normal',_binary '',_binary '',NULL,NULL),(503,11,'Cafe irlandes','Cafe, whisky, crema, chocolate rallado.',220,NULL,'normal',_binary '',_binary '',NULL,NULL),(504,11,'Cafe carioca','Cafe, licor de cafe, crema, canela.',220,NULL,'normal',_binary '',_binary '',NULL,NULL),(505,11,'Cafe brooklyn','Cafe, tia maria, canela, chocolate rallado.',220,NULL,'normal',_binary '',_binary '',NULL,NULL),(506,16,'Tabla de fiambres y queso','Variedades de fiambres y quesos , empanadas y papas fritas',700,NULL,'normal',_binary '',_binary '',NULL,NULL),(507,16,'Rabas para dos personas','Rabas a la romana',450,NULL,'normal',_binary '',_binary '',NULL,NULL),(508,11,'Cafe amaretto','Cafe, amaretto, crema y cacao.',220,NULL,'normal',_binary '',_binary '',NULL,NULL),(509,16,'Papas fritas','Papas fritas baston',160,NULL,'normal',_binary '',_binary '',NULL,NULL),(510,11,'Cafe Ochre','Cafe, crema, licor de dulce de leche, chocolate rallado y canela.',220,NULL,'normal',_binary '',_binary '',NULL,NULL),(511,11,'Dry martini','gin + vermout extra dry + oliva.',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(512,11,'Manhattan','bourbon + vermouth rosso + perfume de naranja.',300,NULL,'normal',_binary '',_binary '',NULL,NULL),(513,16,'Papas bravas','Papas rusticas con salsa picante',230,NULL,'normal',_binary '',_binary '',NULL,NULL),(514,16,'Papas faustino','Papas baston con salsa cuatro quesos , verdeo y panceta',280,NULL,'normal',_binary '',_binary '',NULL,NULL),(515,11,'Apple martini','vodka + licor sour apple + twist citrico.',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(516,11,'Margarita','tequila + licor de naranja + jugo de limon y azucar.',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(517,11,'Mojito','ron blanco + menta fresca + jugo de limon + azucar + soda.',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(518,16,'Rabas para dos personas','Rabas a la romana',450,NULL,'normal',_binary '',_binary '',NULL,NULL),(519,11,'Pisco sour','pisco + clara de huevo + jugo de limon + azucar.',280,NULL,'normal',_binary '',_binary '',NULL,NULL),(520,16,'Tabla de fiambres','Variedad de fiambres y quesos , empanadas y papas fritas',700,NULL,'normal',_binary '',_binary '',NULL,NULL),(521,16,'Provolone','Provolone oreganado al oliva',280,NULL,'normal',_binary '',_binary '',NULL,NULL),(522,16,'Emapanada criolla','Empanada criolla de carne',65,NULL,'normal',_binary '',_binary '',NULL,NULL),(523,11,'Caipirinha','cachaca + limas maceradas + azucar.',260,NULL,'normal',_binary '',_binary '',NULL,NULL),(524,11,'Caipiroska','vodka, limas maceradas, azucar.',260,NULL,'normal',_binary '',_binary '',NULL,NULL),(525,11,'Negroni','gin + campari + vermouth rosso + naranja.',260,NULL,'normal',_binary '',_binary '',NULL,NULL),(526,11,'Old fashioned','bourbon + azucar + bitter angostura.',300,NULL,'normal',_binary '',_binary '',NULL,NULL),(527,11,'Fernet branca','',100,NULL,'normal',_binary '',_binary '',NULL,NULL),(528,11,'Gin tonic','gin + agua tonica + limon.',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(529,11,'Tom collins','gin + agua con gas + almibar + limon + cereza.',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(530,11,'Cuba libre','ron + coca cola + limon.',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(531,16,'Emapanada capresse','Empanada con tomate , queso mozarella y albaca',75,NULL,'normal',_binary '',_binary '',NULL,NULL),(532,11,'Garibaldi','campari y jugo de naranja.',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(533,16,'Empanada arabe','Empanada arabe',75,NULL,'normal',_binary '',_binary '',NULL,NULL),(534,11,'Gancia batido','gancia + limon + azucar.',190,NULL,'normal',_binary '',_binary '',NULL,NULL),(535,16,'Empanada de espinaca','Empanada de espinaca con queso mozarella',90,NULL,'normal',_binary '',_binary '',NULL,NULL),(536,11,'After dinner coffee','whisky irlandes + licor de cafe + crema fresca + chocolate rallado.',290,NULL,'normal',_binary '',_binary '',NULL,NULL),(537,16,'Chorizo','Porcion de chorizo',180,NULL,'normal',_binary '',_binary '',NULL,NULL),(538,16,'Morcilla','Porcion de morcilla',160,NULL,'normal',_binary '',_binary '',NULL,NULL),(539,11,'Delice pepino','chandon delice + 2 hielos + 2 rodajas de pepino.',230,NULL,'normal',_binary '',_binary '',NULL,NULL),(540,11,'delice orange','chandon delice + aperol + soda + rodaja de naranja + hielo.',230,NULL,'normal',_binary '',_binary '',NULL,NULL),(541,16,'Tira de asado','Tira de asado de ternera',480,NULL,'normal',_binary '',_binary '',NULL,NULL),(542,11,'Madagascar berries','chandon delice + gin + syrup de berries + frutos rojos.',230,NULL,'normal',_binary '',_binary '',NULL,NULL),(543,11,'Chandon aperitif','',230,NULL,'normal',_binary '',_binary '',NULL,NULL),(544,11,'Cucumber collins','gin + limon + pepinos macerados + soda.',260,NULL,'normal',_binary '',_binary '',NULL,NULL),(545,16,'Bife de chorizo','Bife de chorizo 350gr',540,NULL,'normal',_binary '',_binary '',NULL,NULL),(546,11,'Mojito Maracuya','ron blanco + menta fresca + maracuya.',260,NULL,'normal',_binary '',_binary '',NULL,NULL),(547,11,'Mojito frutos rojos','ron blanco + menta fresca + jugo de limon + azucar + soda + frutos rojos.',260,NULL,'normal',_binary '',_binary '',NULL,NULL),(548,11,'Daiquiri frozen','ron + fruta a eleccion: frutilla, durazno, anana o maracuya + azucar + jugo de limon.',260,NULL,'normal',_binary '',_binary '',NULL,NULL),(549,11,'Jager julep','jagermeifter + menta fresca + limon + pomelo.',300,NULL,'normal',_binary '',_binary '',NULL,NULL),(550,11,'El inmortal','malibu + jugo de naranja + pulpa de frutilla + piña colada.',260,NULL,'normal',_binary '',_binary '',NULL,NULL),(551,11,'Copa huracan','baileys + helado de crema y chocolate.',260,NULL,'normal',_binary '',_binary '',NULL,NULL),(552,11,'Lemon champ','helado de limon + champagne.',260,NULL,'normal',_binary '',_binary '',NULL,NULL),(553,11,'Bellini','nectar de durazno + champagne.',260,NULL,'normal',_binary '',_binary '',NULL,NULL),(554,11,'Kir royal','licor de cassis + champagne.',260,NULL,'normal',_binary '',_binary '',NULL,NULL),(555,11,'Spritz','aperol + champagne + soda + cascara de naranja.',260,NULL,'normal',_binary '',_binary '',NULL,NULL),(556,11,'Absolut','',230,NULL,'normal',_binary '',_binary '',NULL,NULL),(557,16,'Bife de entrecotte','Bife de entrecotte de 300gr',499,NULL,'normal',_binary '',_binary '',NULL,NULL),(558,11,'Stella artois 975 cc.','premium belga, de destacado aroma a lupulo y fino amargor.',350,NULL,'normal',_binary '',_binary '',NULL,NULL),(559,16,'Pollo deshuesado','Pollo deshuesado a la parrilla',395,NULL,'normal',_binary '',_binary '',NULL,NULL),(560,16,'Matambrito de cerdo','Matambre de cerdo al limon',450,NULL,'normal',_binary '',_binary '',NULL,NULL),(561,11,'Stella artois 330 cc.','',200,NULL,'normal',_binary '',_binary '',NULL,NULL),(562,16,'Matambre a la pizza','Matambre de cerdo a la pizza',495,NULL,'normal',_binary '',_binary '',NULL,NULL),(563,16,'Matambre a los cuatro quesos','Matambre de cerdo con salsa cuatro quesos',495,NULL,'normal',_binary '',_binary '',NULL,NULL),(564,16,'Lomo al champignon','Lomo con salsa champignon',550,NULL,'normal',_binary '',_binary '',NULL,NULL),(565,16,'Lomo a la pimienta','Lomo a la pimienta',550,NULL,'normal',_binary '',_binary '',NULL,NULL),(566,11,'Stella noir 975 cc.','negra, de destacado aroma a lupulo, fino amargor y notas dulces.',380,NULL,'normal',_binary '',_binary '',NULL,NULL),(567,11,'Stella noir 330 cc.','',200,NULL,'normal',_binary '',_binary '',NULL,NULL),(568,16,'Lomo lardeado','Lomo envuelto con panceta y salsa',550,NULL,'normal',_binary '',_binary '',NULL,NULL),(569,11,'Quilmes clasica 1 l','equilibrada, de gran refrescancia y cuerpo balanceado.',280,NULL,'normal',_binary '',_binary '',NULL,NULL),(570,16,'Brochette de carne con guarnicion','Brochette de carne con ensalada o papas fritas baston',450,NULL,'normal',_binary '',_binary '',NULL,NULL),(571,11,'Quilmes clasica 330 cc.','',150,NULL,'normal',_binary '',_binary '',NULL,NULL),(572,16,'Brochette de pollo con guarnicion','Brochette de pollo con ensalada o papas fritas baston',450,NULL,'normal',_binary '',_binary '',NULL,NULL),(573,11,'Quilmes stout 330 cc.','negra con espuma cremosa, de dulzor y cuerpo definido.',190,NULL,'normal',_binary '',_binary '',NULL,NULL),(574,16,'Brochette mixto con guarnicion','Brochette de carne y pollo con ensalada o papas fritas baston',450,NULL,'normal',_binary '',_binary '',NULL,NULL),(575,16,'Brochette de cerdo con guarnicion','Brochette de cerdo con ensalada o papas fritas baston',450,NULL,'normal',_binary '',_binary '',NULL,NULL),(576,11,'Budweiser 1 l','cerveza de cuerpo medio, gustosa, crepitante de estilo american lager.',300,NULL,'normal',_binary '',_binary '',NULL,NULL),(577,11,'Patagonia 740 cc.','consultar variedades disponibles.',380,NULL,'normal',_binary '',_binary '',NULL,NULL),(578,11,'corona 355 cc.','autentica cerveza premiun mexicana, color dorado, cuerpo liviano y muy refrescante.',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(579,16,'Milanesa con guarnicion','Milanesa de peceto con ensalada o papas fritas baston',350,NULL,'normal',_binary '',_binary '',NULL,NULL),(580,16,'Milanesa napolitana con guarnicion','Milanesa de peceto a ll napolitana con ensalada o papas fritas baston',399,NULL,'normal',_binary '',_binary '',NULL,NULL),(581,16,'Milanesa a caballo con guarnicion','Milanesa de peceto con huevo frito con ensalada o papas fritas baston',399,NULL,'normal',_binary '',_binary '',NULL,NULL),(582,16,'Merluza a la romana con guarnicion','Merluza a la romana con ensalada o papas fritas baston',399,NULL,'normal',_binary '',_binary '',NULL,NULL),(583,16,'Suprema de pollo con guarnicion','Suprema de pollo con ensalada o papas fritas baston',350,NULL,'normal',_binary '',_binary '',NULL,NULL),(584,16,'Trucha a las brasas','Trucha a la parrilla',440,NULL,'normal',_binary '',_binary '',NULL,NULL),(585,16,'Salmon rosado','Salmon rosado a la parrilla',690,NULL,'normal',_binary '',_binary '',NULL,NULL),(586,16,'Ñoquis','Ñoquis de papas con salsa mixta , fileto o bechamel',299,NULL,'normal',_binary '',_binary '',NULL,NULL),(587,16,'Ravioles de verdura','Ravioles de verdura con salsa mixta , fileto o bechamel',350,NULL,'normal',_binary '',_binary '',NULL,NULL),(588,16,'Sorrentinos de humita','Sorrentinos de humita con salsa mixta , fileto o bechamel',380,NULL,'normal',_binary '',_binary '',NULL,NULL),(589,16,'Sorrentinos de berenjena y mozarella','Sorrentinos de berenjena y mozarella con salsa mixta , fileto o bechamel',380,NULL,'normal',_binary '',_binary '',NULL,NULL),(590,16,'Panzotis de cabrito','Panzotis de cabrito con salsa mixta , fileto o bechamel',399,NULL,'normal',_binary '',_binary '',NULL,NULL),(591,16,'Panzotis de salmon rosado','Pansotis de salmon y mozzarella con salsa mixta , fileto o bechamel',430,NULL,'normal',_binary '',_binary '',NULL,NULL),(592,16,'Salsa cuatro quesos','Salsa cuatro quesos',100,NULL,'normal',_binary '',_binary '',NULL,NULL),(593,16,'Salsa de hongos','Salsa de hongos',100,NULL,'normal',_binary '',_binary '',NULL,NULL),(594,16,'Combinacion de vegetales','Ensalada de lechuga , rucula , tomate , zanahoria y cebolla',210,NULL,'normal',_binary '',_binary '',NULL,NULL),(595,16,'Caesar','Ensalada de lechuga , crotines , pollo , queso parmesano y aderezo caesar',360,NULL,'normal',_binary '',_binary '',NULL,NULL),(596,16,'Capresse','Ensalada de mozarella , tomate y albaca',330,NULL,'normal',_binary '',_binary '',NULL,NULL),(597,16,'Popeye','Ensalada de espinaca , atun , aceitunas negras , queso y tomate',350,NULL,'normal',_binary '',_binary '',NULL,NULL),(598,16,'Papas fritas','Papas fritas baston',160,NULL,'normal',_binary '',_binary '',NULL,NULL),(599,16,'Papas a la crema','Papas al natural con salsa a la crema',210,NULL,'normal',_binary '',_binary '',NULL,NULL),(600,16,'Papas fritas con huevo','Papas fritas baston con huevo frito',230,NULL,'normal',_binary '',_binary '',NULL,NULL),(601,16,'Espinaca a la crema','Espinaca con salsa a la crema y queso',230,NULL,'normal',_binary '',_binary '',NULL,NULL),(602,17,'BALLANTINES','',299,NULL,'normal',_binary '',_binary '',NULL,NULL),(603,17,'JYB','',310,NULL,'normal',_binary '',_binary '',NULL,NULL),(604,17,'VAT 69','',269,NULL,'normal',_binary '',_binary '',NULL,NULL),(605,17,'PREMIUM','',259,NULL,'normal',_binary '',_binary '',NULL,NULL),(606,17,'OLD SMUGLER','',259,NULL,'normal',_binary '',_binary '',NULL,NULL),(607,17,'JOHNNIE WALKER ROJO','',310,NULL,'normal',_binary '',_binary '',NULL,NULL),(608,17,'JOHNNIE WALKER NEGRO','',350,NULL,'normal',_binary '',_binary '',NULL,NULL),(609,17,'BALLANTINES 12 AÑOS','',380,NULL,'normal',_binary '',_binary '',NULL,NULL),(610,17,'GRANTS','',310,NULL,'normal',_binary '',_binary '',NULL,NULL),(611,17,'JACK DANIELS','',330,NULL,'normal',_binary '',_binary '',NULL,NULL),(612,17,'WHITE HORSE','',269,NULL,'normal',_binary '',_binary '',NULL,NULL),(613,17,'FAMOUS GROUSE','',330,NULL,'normal',_binary '',_binary '',NULL,NULL),(614,17,'JAMESON','',320,NULL,'normal',_binary '',_binary '',NULL,NULL),(615,17,'ALEXANDER','cognac, crema de cacao, crema de leche',279,NULL,'normal',_binary '',_binary '',NULL,NULL),(616,17,'BACARDI','ron, jugo de limón, golpe de granadina',279,NULL,'normal',_binary '',_binary '',NULL,NULL),(622,16,'Mozzarella','Salsa de tomate , mozzarella,  oregano y olivos verdes',499,NULL,'normal',_binary '',_binary '',NULL,NULL),(623,16,'Mozzarella especial','Jamon cocido',550,NULL,'normal',_binary '',_binary '',NULL,NULL),(624,16,'Mozzarella con huevo','Mozzarella con huevo duro rallado',560,NULL,'normal',_binary '',_binary '',NULL,NULL),(625,16,'Napolitana','Rodajas de tomate y olivos negros',560,NULL,'normal',_binary '',_binary '',NULL,NULL),(626,16,'Roquefort','',630,NULL,'normal',_binary '',_binary '',NULL,NULL),(627,16,'Fugazzeta','Mozzarella con cebolla , verdeo , parmesano , oregano y aceite de oliva',550,NULL,'normal',_binary '',_binary '',NULL,NULL),(628,16,'Pamitos y salsa golf','',660,NULL,'normal',_binary '',_binary '',NULL,NULL),(629,16,'Rucula y jamon crudo','',660,NULL,'normal',_binary '',_binary '',NULL,NULL),(630,16,'Hawaiana','Jamon , anana , morrones , azucar negra y olivos negros',660,NULL,'normal',_binary '',_binary '',NULL,NULL),(631,16,'Provolone','',660,NULL,'normal',_binary '',_binary '',NULL,NULL),(632,16,'Cuatro quesos','',660,NULL,'normal',_binary '',_binary '',NULL,NULL),(633,16,'Provenzal','Ajo y perejil',560,NULL,'normal',_binary '',_binary '',NULL,NULL),(634,16,'Anchoas y morrones','',660,NULL,'normal',_binary '',_binary '',NULL,NULL),(635,16,'Completo','Lomo , jamon cocido , queso , huevo , lechuga , tomate , mayonesa y papas fritas baston',380,NULL,'normal',_binary '',_binary '','',NULL),(636,16,'De pollo','Pollo , jamon cocido , queso , lechuga , tomate , huevo frito , mayonesa y papas fritas',380,NULL,'normal',_binary '',_binary '','',NULL),(637,16,'De molleja','Molleja , jamon cocido , queso,  lechuga,  tomate,  huevo frito , mayonesa y papas fritas',420,NULL,'normal',_binary '',_binary '','',NULL),(638,16,'Al plato','Lomo o pollo , jamon cocido , queso , lechuga , tomate,  huevo frito y papas fritas baston',430,NULL,'normal',_binary '',_binary '','',NULL),(639,16,'Hambueguesa','Hamburguesa casera , lechuga , tomate , jamon cocido , queso , huevo , aderezo y papas fritas baston',340,NULL,'normal',_binary '',_binary '',NULL,NULL),(640,16,'Jamon cocido y queso','En pan miga frio o caliente  , jamon cocido , queso y aderezo',210,NULL,'normal',_binary '',_binary '',NULL,NULL),(641,16,'Jamon crudo y queso','En pan miga frio o caliente,  jamon crudo , queso y aderezo',290,NULL,'normal',_binary '',_binary '',NULL,NULL),(642,16,'Primavera','En pan miga frio o caliente,  lechuga , tomate,  jamon cocido , queso y aderezo',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(643,16,'Kilka Salentein Malbec 750cc','',720,NULL,'normal',_binary '',_binary '',NULL,NULL),(644,16,'Portillo Malbec 750cc','',400,NULL,'normal',_binary '',_binary '',NULL,NULL),(645,16,'Portillo Cabernet  Sauvignon','',400,NULL,'normal',_binary '',_binary '',NULL,NULL),(646,16,'Portillo Sauvignon Blanc','',400,NULL,'normal',_binary '',_binary '',NULL,NULL),(647,16,'Nieto Senetiner Doc 750cc','',490,NULL,'normal',_binary '',_binary '',NULL,NULL),(648,16,'Nieto Senetiner Malbec 3/8','',320,NULL,'normal',_binary '',_binary '',NULL,NULL),(649,16,'Nieto Senetiner Cabernet Sauvignon','',440,NULL,'normal',_binary '',_binary '',NULL,NULL),(650,16,'Nieto Senetiner Blend Collection 750cc','',440,NULL,'normal',_binary '',_binary '',NULL,NULL),(651,16,'Nieto Senetiner Chardonay','',440,NULL,'normal',_binary '',_binary '',NULL,NULL),(652,16,'Emilia Nieto Senetiner Malbec 750cv','',385,NULL,'normal',_binary '',_binary '',NULL,NULL),(653,16,'Emilia Nieto Senetiner Malbec Rose 750cc','',385,NULL,'normal',_binary '',_binary '',NULL,NULL),(654,16,'Emilia Nieto Senetiner Dulce Natural 750cc','',385,NULL,'normal',_binary '',_binary '',NULL,NULL),(655,16,'Benjamin Nieto Malbec 750cc','',320,NULL,'normal',_binary '',_binary '',NULL,NULL),(656,16,'Benjamin Nieto Malbec 3/8','',200,NULL,'normal',_binary '',_binary '',NULL,NULL),(657,16,'Benjamin Nieto Sauvignon Blanc 750cc','',320,NULL,'normal',_binary '',_binary '',NULL,NULL),(658,16,'Benjamin Nieto Cabernet Sauvignon 750cc','',320,NULL,'normal',_binary '',_binary '',NULL,NULL),(659,16,'Rutini Cabernet Malbec 75pcc','',980,NULL,'normal',_binary '',_binary '',NULL,NULL),(660,16,'Rutini Cabernet Malbec 3/8','',600,NULL,'normal',_binary '',_binary '',NULL,NULL),(661,16,'Rutini Sauvignon Blanc','',980,NULL,'normal',_binary '',_binary '',NULL,NULL),(662,16,'Rutini Sauvignon Blanc 3/8','',590,NULL,'normal',_binary '',_binary '',NULL,NULL),(663,16,'Trumpeter Malbec','',710,NULL,'normal',_binary '',_binary '',NULL,NULL),(664,16,'Trumpeter Cabernet Sauvignon 750cc','',710,NULL,'normal',_binary '',_binary '',NULL,NULL),(665,16,'Callia Alta Malbec 750cc','',380,NULL,'normal',_binary '',_binary '',NULL,NULL),(666,16,'Callia Alta Cabernet Sauvignon 750cc','',380,NULL,'normal',_binary '',_binary '',NULL,NULL),(667,16,'Baron B Extra Brut 750cc','',1450,NULL,'normal',_binary '',_binary '',NULL,NULL),(668,16,'Baron B Brut  Nature 750cc','',1600,NULL,'normal',_binary '',_binary '',NULL,NULL),(669,16,'Chandon Extra Brut 750cc','',750,NULL,'normal',_binary '',_binary '',NULL,NULL),(670,16,'Chandon Extra Brut 375 cc','',450,NULL,'normal',_binary '',_binary '',NULL,NULL),(671,16,'Chandon Extra Brut 187cc','',270,NULL,'normal',_binary '',_binary '',NULL,NULL),(672,16,'Chandon Brut Nature 750cc','',850,NULL,'normal',_binary '',_binary '',NULL,NULL),(673,16,'Chandon Brut Rose 750cc','',750,NULL,'normal',_binary '',_binary '',NULL,NULL),(674,16,'Chandon Delice','',750,NULL,'normal',_binary '',_binary '',NULL,NULL),(675,16,'Latitud 33 Extra Brut 750cc','',500,NULL,'normal',_binary '',_binary '',NULL,NULL),(676,16,'Nieto Senetiner Extra Brut 750cc','',600,NULL,'normal',_binary '',_binary '',NULL,NULL),(677,16,'Nieto Senetiner Brut Nature 750cc','',650,NULL,'normal',_binary '',_binary '',NULL,NULL),(678,16,'Luigui Bosca Cabernet Sauvignon 750cc','',950,NULL,'normal',_binary '',_binary '',NULL,NULL),(679,16,'Luigi Bosca Malbec 750cc','',950,NULL,'normal',_binary '',_binary '',NULL,NULL),(680,16,'Luigi Bosca Malbec 375 cc','',650,NULL,'normal',_binary '',_binary '',NULL,NULL),(681,16,'Luigi Bosca Chardonnay 750cc','',950,NULL,'normal',_binary '',_binary '',NULL,NULL),(682,16,'Finca La Linda Old Vines Malbec 750cc','',730,NULL,'normal',_binary '',_binary '',NULL,NULL),(683,16,'Finca La Linda Malbec 750cc','',620,NULL,'normal',_binary '',_binary '',NULL,NULL),(684,16,'Finca La Linda Malbec 375cc','',390,NULL,'normal',_binary '',_binary '',NULL,NULL),(685,16,'Alambrado Malbec 750cc','',570,NULL,'normal',_binary '',_binary '',NULL,NULL),(686,16,'Alambrado Malbec 3/8','',360,NULL,'normal',_binary '',_binary '',NULL,NULL),(687,16,'Alambrado Cabernet Sauvignon 750cc','',570,NULL,'normal',_binary '',_binary '',NULL,NULL),(688,16,'Santa Julia Cabernet Sauvignon 750cc','',380,NULL,'normal',_binary '',_binary '',NULL,NULL),(689,16,'Santa Julia Syrah 750cc','',380,NULL,'normal',_binary '',_binary '',NULL,NULL),(690,16,'Santa Julia Chardonnay','',380,NULL,'normal',_binary '',_binary '',NULL,NULL),(691,16,'Santa Julia Syrah Rose 750cc','',380,NULL,'normal',_binary '',_binary '',NULL,NULL),(692,16,'Santa Julia Chenin Dulce Natural 750cc','',430,NULL,'normal',_binary '',_binary '',NULL,NULL),(693,16,'Santa Julia Tardio','',430,NULL,'normal',_binary '',_binary '',NULL,NULL),(694,16,'Latitud 33 Maibec 750cc','',385,NULL,'normal',_binary '',_binary '',NULL,NULL),(695,16,'Latitud 33 Cabernet Sauvignon 750cc','',385,NULL,'normal',_binary '',_binary '',NULL,NULL),(696,16,'Latitud 33 Chardonnay 750cc','',385,NULL,'normal',_binary '',_binary '',NULL,NULL),(697,16,'Latitud 33 Dulce Natural 750cc','',385,NULL,'normal',_binary '',_binary '',NULL,NULL),(698,16,'Valmont Tinto 350cc','',350,NULL,'normal',_binary '',_binary '',NULL,NULL),(699,16,'Valmont Blanco','',350,NULL,'normal',_binary '',_binary '',NULL,NULL),(700,16,'Castel Chandon 750cc','',350,NULL,'normal',_binary '',_binary '',NULL,NULL),(701,16,'Altos del Plata Malbec 750cc','',530,NULL,'normal',_binary '',_binary '',NULL,NULL),(702,16,'Altos del Plata Cabernet Sauvignon 750cc','',530,NULL,'normal',_binary '',_binary '',NULL,NULL),(703,16,'Terrazas de los Andes Reserva Malbec 750c','',920,NULL,'normal',_binary '',_binary '',NULL,NULL),(704,16,'Uxmal Malbec 750cc','',450,NULL,'normal',_binary '',_binary '',NULL,NULL),(705,16,'Uxmal Cabernet Sauvignon 750cc','',450,NULL,'normal',_binary '',_binary '',NULL,NULL),(706,16,'Altos Uxmal Cabernet Sauvignon-  Merlot 750cc','',650,NULL,'normal',_binary '',_binary '',NULL,NULL),(707,16,'Nicasia Blen Malbec 750cc','',750,NULL,'normal',_binary '',_binary '',NULL,NULL),(708,16,'Copa de Vino','',150,NULL,'normal',_binary '',_binary '',NULL,NULL),(709,16,'Flan Casero','',150,NULL,'normal',_binary '',_binary '',NULL,NULL),(710,16,'Flan Casero','',150,NULL,'normal',_binary '',_binary '',NULL,NULL),(711,16,'Budin de pan','',150,NULL,'normal',_binary '',_binary '',NULL,NULL),(712,16,'Helado de 1 sabor','',80,NULL,'normal',_binary '',_binary '',NULL,NULL),(713,16,'Helado 2 sabores','',120,NULL,'normal',_binary '',_binary '',NULL,NULL),(714,16,'Almendrado','',150,NULL,'normal',_binary '',_binary '',NULL,NULL),(715,16,'Bombon Escoces','',150,NULL,'normal',_binary '',_binary '',NULL,NULL),(716,16,'Brownie con helado','',210,NULL,'normal',_binary '',_binary '',NULL,NULL),(717,16,'Tiramisu','',199,NULL,'normal',_binary '',_binary '',NULL,NULL),(718,16,'Isla flotante','',150,NULL,'normal',_binary '',_binary '',NULL,NULL),(719,16,'Adicional de crema o dulce de leche','',50,NULL,'normal',_binary '',_binary '',NULL,NULL),(720,16,'Gaseosa 350cc','',110,NULL,'normal',_binary '',_binary '',NULL,NULL),(721,16,'Agua Mineral 600cc','',120,NULL,'normal',_binary '',_binary '',NULL,NULL),(722,16,'Agua Saborizada 500cc','',120,NULL,'normal',_binary '',_binary '',NULL,NULL),(723,16,'Gaseosa en lata 350cc','',110,NULL,'normal',_binary '',_binary '',NULL,NULL),(724,16,'Jugo de naranja','',170,NULL,'normal',_binary '',_binary '',NULL,NULL),(725,16,'Smoothies','',185,NULL,'normal',_binary '',_binary '',NULL,NULL),(726,16,'Limanoda con menta y jengibre','',185,NULL,'normal',_binary '',_binary '',NULL,NULL),(727,22,'Menú Criollo','-Recepción con aceite de oliva\n-Jamón crudo láminas de pera, rúcula y gremolata\n-Empanada criolla de carne y pastelito de queso con\nchimichurry\n-Salchicha parrillera con verduras al rescoldo\n-Vacío grillado con papas asadas salsa criolla y crema\nde zapallo al rescoldo\n-Peras al malbec en su salsa, crema helada de\ncítricos y leche condensada',0,'ARS 1500','normal',_binary '',_binary '',NULL,NULL),(728,22,'Menú 3 pasos','-Empanadas criollas y su chimicurry (2)\n-Costillas de cerdo caramelizadas en tomates\nahumados soja y miel con batata crocantes y hojas de\nmostaza aderezadas\n-Peras al Malbec con crema helada de cítricos\ny leche condensada\n\nIncluye agua y café\n¡Probá la sugerencia del Sommelier!\nContamos con opciones vegetarianas y celíacas',0,'ARS 990','normal',_binary '',_binary '',NULL,NULL),(729,16,'Cafe express','',90,NULL,'normal',_binary '',_binary '',NULL,NULL),(730,16,'Cafe express doble','',110,NULL,'normal',_binary '',_binary '',NULL,NULL),(731,16,'Cafe americano','',100,NULL,'normal',_binary '',_binary '',NULL,NULL),(732,16,'Cafe con crema','',100,NULL,'normal',_binary '',_binary '',NULL,NULL),(733,16,'Cafe doble con crema','',120,NULL,'normal',_binary '',_binary '',NULL,NULL),(734,16,'Capuccino','',120,NULL,'normal',_binary '',_binary '',NULL,NULL),(735,12,'Papas fritas Baston o Regilla','',200,NULL,'normal',_binary '',_binary '',NULL,NULL),(736,12,'Papas revueltas con Huevo','',300,NULL,'normal',_binary '',_binary '',NULL,NULL),(737,12,'Papas fritas con queso cheddar, panceta,cebolla de verdeo','',310,NULL,'normal',_binary '',_binary '',NULL,NULL),(739,12,'Tequeños x4 unidades','Bastonsito de masa de harina de trigo frita, rellena de queso.\nAcompañados de mayonesa casera y BBQ',150,NULL,'normal',_binary '',_binary '','',NULL),(741,12,'EMPANADA DE JAMON Y QUESO','',40,NULL,'normal',_binary '',_binary '',NULL,NULL),(742,12,'EMPANADAS ARABES DE LOMO','',40,NULL,'normal',_binary '',_binary '',NULL,NULL),(743,12,'EMPANADAS CRIOLLAS DE LOMO','',40,NULL,'normal',_binary '',_binary '',NULL,NULL),(744,12,'EMPANADAS DE POLLO','',40,NULL,'normal',_binary '',_binary '',NULL,NULL),(745,12,'LOMITO 348','LOMO/POLLO/CERDO, QUESO, MAYONESA, TOMATE, LECHUGA, JAMON, HUEVO, PAPAS.',450,NULL,'normal',_binary '',_binary '','',NULL),(747,12,'348 DOBLE','DOBLE LOMO, QUESO, MAYONESA, TOMATE, HUEVO, LECHUGA, PAPAS.',600,NULL,'normal',_binary '',_binary '','',NULL),(748,12,'COMUN','LOMO/POLLO/CERDO, QUESO, MAYONESA, TOMATE, LECHUGA, PAPAS.',440,NULL,'normal',_binary '',_binary '','',NULL),(749,12,'NORTEAMERICANO','LOMO, CEBOLLA SALTEADA, PANCETA, MAYONESA, QUESO, HUEVO REVUELTO, SALSA BBQ Y PAPAS',510,NULL,'normal',_binary '',_binary '','',NULL),(750,12,'AZTECA','LOMO, TOMATE, LECHUGA, QUESO, HUEVO, CHIMICHURRI, AJI, SALSA PICANTE Y PAPAS.',500,NULL,'spicy',_binary '',_binary '','',NULL),(751,12,'AGUACATE','LOMO, CEBOLLA, PIMIENTOS SALTEADOS, QUESO, GUACAMOLE, PAPAS.',520,NULL,'normal',_binary '',_binary '','',NULL),(752,12,'LIVIANO','PAN DESMIGADO, POLLO, QUESO, ZANAHORIA, HUEVO DURO, MAYONESA LIGHT, PAPAS.',450,NULL,'normal',_binary '',_binary '','',NULL),(753,12,'MEDITERRANEO','LOMO, MAYONESA, JAMON CRUDO, OLIVAS NEGRAS,. RUCULA, QUESO PARMESANO, PAPAS.',520,NULL,'normal',_binary '',_binary '',NULL,NULL),(754,12,'MIX 348 (mediano)','LOMO, QUESO, MAYONESA, TOMATE, LECHUGA, JAMON, HUEVO, PAPAS.',390,NULL,'normal',_binary '',_binary '',NULL,NULL),(755,12,'MEDIANO','LOMO, QUESO, MAYONESA, TOMATE, LECHUGA, PAPAS.',410,NULL,'normal',_binary '',_binary '',NULL,NULL),(756,12,'VEGETARIANO','QUESO, MAYONESA, TOMATE, LECHUGA, HUEVO,PAPAS.\n(OPCIONAL: palmitos, berenjenas o champignon)',420,NULL,'vegetarian',_binary '',_binary '',NULL,NULL),(757,12,'MOLLEJA 348','MOLLEJA, QUESO, MAYONESA, TOMATE, LECHUGA, JAMON, HUEVO, PAPAS.',520,NULL,'normal',_binary '',_binary '',NULL,NULL),(758,12,'MOLLEJA COMUN','MOLLEJA, QUESO, MAYONESA, TOMATE, LECHUGA, PAPAS.',500,NULL,'normal',_binary '',_binary '',NULL,NULL),(759,12,'AL PLATO SIMPLE','2 MEDALLONES DE LOMO, QUESO, PAPAS',430,NULL,'normal',_binary '',_binary '',NULL,NULL),(760,12,'AL PLATO COMPLETO','2 MEDALLONES DE LOMO, QUESO, JAMON, HUEVO, PAPAS.',480,NULL,'normal',_binary '',_binary '',NULL,NULL),(761,12,'AL PLATO MEDITERRANEO','2 MEDALLONES DE LOMO, JAMON CRUDO, RUCULA, QUESO PARMESANO, OLIVAS NEGRAS, PAPAS.',530,NULL,'normal',_binary '',_binary '',NULL,NULL),(762,12,'DE MILANESA 348','MILANESA, JAMON, QUESO, HUEVO, LECHUGA, TOMATE, MAYONESA, PAPAS.',390,NULL,'normal',_binary '',_binary '',NULL,NULL),(763,12,'TOSTADO CON PAPAS','JAMON, QUESO, MAYONESA, PAPAS.',320,NULL,'normal',_binary '',_binary '',NULL,NULL),(764,12,'CAJITA SORPRESA','LOMITO (CARNE Y QUESO), PAPAS, GASEOSA, JUGUETE, GOLOSINA.',420,NULL,'normal',_binary '',_binary '',NULL,NULL),(765,16,'Te con leche','',100,NULL,'normal',_binary '',_binary '',NULL,NULL),(766,16,'Submarino','',120,NULL,'normal',_binary '',_binary '',NULL,NULL),(767,16,'Cafe especial','',190,NULL,'normal',_binary '',_binary '',NULL,NULL),(768,16,'Stelka Artois 975 cc','',350,NULL,'normal',_binary '',_binary '',NULL,NULL),(769,16,'Stella Artois Noir 975cc','',390,NULL,'normal',_binary '',_binary '',NULL,NULL),(770,16,'Stella Artois 473cc','',150,NULL,'normal',_binary '',_binary '',NULL,NULL),(771,16,'Patagonia 730cc','',380,NULL,'normal',_binary '',_binary '',NULL,NULL),(772,16,'Budweiser 970cc','',300,NULL,'normal',_binary '',_binary '',NULL,NULL),(773,16,'Corona 335cc','',290,NULL,'normal',_binary '',_binary '',NULL,NULL),(774,16,'Chopp','',150,NULL,'normal',_binary '',_binary '',NULL,NULL),(775,16,'Dry Martini','Gin , vermouth extra dry y oliva',230,NULL,'normal',_binary '',_binary '',NULL,NULL),(776,16,'Manhattan','Bourbon , vermouth rosso , perfume de naranja',230,NULL,'normal',_binary '',_binary '',NULL,NULL),(777,16,'Margarita','Tequila , licor de naranja , jugo de limon y azucar',230,NULL,'normal',_binary '',_binary '',NULL,NULL),(778,16,'Mojito','Ron blanco , menta fresca , jugo de limon , azucar y soda',230,NULL,'normal',_binary '',_binary '',NULL,NULL),(779,16,'Caipirinha','Gin cachaca, limas maceradas y azucar',230,NULL,'normal',_binary '',_binary '',NULL,NULL),(780,16,'Caipiroska','Vodka , limas maceradas y azucar',240,NULL,'normal',_binary '',_binary '',NULL,NULL),(781,16,'Negroni','Gin , campari , vermouth rosso y naranja',240,NULL,'normal',_binary '',_binary '',NULL,NULL),(782,16,'Gin tonic','Gin , agua tonica y limon',230,NULL,'normal',_binary '',_binary '',NULL,NULL),(783,16,'Tom Collins','',230,NULL,'normal',_binary '',_binary '',NULL,NULL),(784,16,'Cuba libre','Ron , coca cola y limon',230,NULL,'normal',_binary '',_binary '',NULL,NULL),(785,16,'Garibaldi','Campari y jugo de naranja',230,NULL,'normal',_binary '',_binary '',NULL,NULL),(786,16,'Fernet branca','Medida de fernet',100,NULL,'normal',_binary '',_binary '',NULL,NULL),(787,16,'Gancia batido','Gancia , limon y azucar',170,NULL,'normal',_binary '',_binary '',NULL,NULL),(788,16,'After Dinner Faustino','Whisky irlandes , licor de cafe , crema fresca y chocolate rallado',270,NULL,'normal',_binary '',_binary '',NULL,NULL),(789,16,'Mojito Frutos Rojos','Ron blanco , menta fresca , jugo de limon , azucar , soda y frutos rojos',220,NULL,'normal',_binary '',_binary '',NULL,NULL),(790,16,'Daiquiri Frozen','Ron , fruta a eleccion , azucar y jugo de limon',240,NULL,'normal',_binary '',_binary '',NULL,NULL),(791,16,'Copa Huracan','',240,NULL,'normal',_binary '',_binary '',NULL,NULL),(792,16,'Lemon Champ','Helado de limon y champagne',240,NULL,'normal',_binary '',_binary '',NULL,NULL),(793,16,'Bellini','',240,NULL,'normal',_binary '',_binary '',NULL,NULL),(794,16,'Spritz','Aperol , champagne,  soda y cascara de naranja',240,NULL,'normal',_binary '',_binary '',NULL,NULL),(795,16,'Aboslut','Medida de absolut',210,NULL,'normal',_binary '',_binary '',NULL,NULL),(796,16,'Te nacional','',90,NULL,'normal',_binary '',_binary '',NULL,NULL),(797,16,'Servicio de mesa','',50,NULL,'normal',_binary '',_binary '',NULL,NULL),(798,12,'HAMBURGUESA CASERA 348','2 hamburguesas de carne de lomo, jamón, queso, mayonesa, tomate, Lechuga, huevo y papas',430,NULL,'normal',_binary '',_binary '','',NULL),(800,12,'HAMBURGUESA CASERA DOBLE CHEDDAR','2 hamburguesas de carne de lomo, cheddar, cebolla cruda, pepino, mayonesa y papas',430,NULL,'normal',_binary '',_binary '',NULL,NULL),(801,12,'HAMBURGUESA CASERA DOBLE CRIOLLA','2 hamburguesas de carne de lomo, tomate, Lechuga, salsa criolla, mayonesa y papas',430,NULL,'normal',_binary '',_binary '',NULL,NULL),(802,12,'MUZZARELLA','Salsa, muzzarella, morones, orégano, olivas',420,NULL,'normal',_binary '',_binary '',NULL,NULL),(803,12,'MUZZARELLA ADRIATICA','Salsa, muzzarella, morones, orégano, huevo, olivas',460,NULL,'normal',_binary '',_binary '',NULL,NULL),(804,12,'PROVENZAL RINNINI','Salsa, muzzarella, morrones, orégano, ajo, perejil, olivas',460,NULL,'normal',_binary '',_binary '',NULL,NULL),(805,12,'NAPOLITANA','Salsa, muzzarella, orégano, tomate y olivas',480,NULL,'normal',_binary '',_binary '',NULL,NULL),(806,12,'ROMANA','Salsa, muzzarella, morrones, orégano, tomate, jamón, provolone, olivas',480,NULL,'normal',_binary '',_binary '',NULL,NULL),(807,12,'FUGAZZA','Salsa, muzzarella, cebolla rehogada, orégano, y olivas',460,NULL,'normal',_binary '',_binary '',NULL,NULL),(808,12,'FUGAZZA AL ROQUEFORT','Salsa, muzzarella, cebolla rehogada, Roquefort, morrones, olivas',520,NULL,'normal',_binary '',_binary '',NULL,NULL),(809,12,'FUGAZZA ESPECIAL','Salsa, muzzarella, morrones, orégano, huevo, tomate, cebolla rehogada, jamón, olivas',480,NULL,'normal',_binary '',_binary '',NULL,NULL),(810,12,'SICILIANA','Salsa, muzzarella, orégano, jamón, olivas',480,NULL,'normal',_binary '',_binary '',NULL,NULL),(811,12,'CALABRESA','Salsa, muzzarella, morron, sálame, olivas',540,NULL,'normal',_binary '',_binary '',NULL,NULL),(812,12,'AMERICANA','Salsa, muzzarella, cheddar, papas fritas, cebolla de verdeo',540,NULL,'normal',_binary '',_binary '',NULL,NULL),(813,12,'RUCULA','Salsa, muzzarella, rucula, jamón crudo, , queso parmesano, olivas negras',540,NULL,'normal',_binary '',_binary '',NULL,NULL),(814,12,'4 QUESOS','Salsa, muzzarella, roquefort, parmesano, regianito, olivas',540,NULL,'normal',_binary '',_binary '',NULL,NULL),(815,12,'PIZZA 348','Salsa, muzzarella, jamón, ananá, olivas o cerezas',540,NULL,'normal',_binary '',_binary '',NULL,NULL),(816,12,'SÚPER VENDETTA','Salsa, muzzarella, morrones, orégano, jamón, anchoas, olivas',480,NULL,'normal',_binary '',_binary '',NULL,NULL),(817,12,'CAPRI TROPICAL','Salsa, muzzarella, jamón, palmitos, salsa golf, morrones, orégano,',540,NULL,'normal',_binary '',_binary '',NULL,NULL),(818,12,'SÚPER 348','Salsa, muzzarella, morrones, orégano, tomate,',540,NULL,'normal',_binary '',_binary '',NULL,NULL),(819,17,'CZARINA','vodka, vermouth seco, brandy, golpe de angostura',279,NULL,'normal',_binary '',_binary '',NULL,NULL),(820,17,'DESTORNILLADOR','jugo de naranja, vodka',279,NULL,'normal',_binary '',_binary '',NULL,NULL),(821,17,'ACAPULCO','whisky, vermouth rojo, frutilla, naranja',279,NULL,'normal',_binary '',_binary '',NULL,NULL),(822,17,'COGOTE DE CABALLO','whisky, sprite, cascara de naranja',279,NULL,'normal',_binary '',_binary '',NULL,NULL),(823,17,'MANHATTAN','whisky, vermouth rojo, golpe de angostura',279,NULL,'normal',_binary '',_binary '',NULL,NULL),(824,17,'DAIKIRI','ron blanco , jugo de limon , fruta',279,NULL,'normal',_binary '',_binary '',NULL,NULL),(825,17,'MARGARITA','tequila, limón, cointrau',279,NULL,'normal',_binary '',_binary '',NULL,NULL),(826,17,'NEGRONI','vermouth rojo, gin, rodaja de naranja, campari',279,NULL,'vegetarian',_binary '',_binary '',NULL,NULL),(827,17,'KREMLIN','vodka, ron, jugo de limón, granadina',279,NULL,'normal',_binary '',_binary '',NULL,NULL),(828,17,'RUSSIAN','vodka, gin, crema de cacao',279,NULL,'normal',_binary '',_binary '',NULL,NULL),(829,17,'CAIPIRINHA','',279,NULL,'normal',_binary '',_binary '',NULL,NULL),(830,17,'ACERTIJO','licor de melón, vodka, sprite, limón',279,NULL,'normal',_binary '',_binary '',NULL,NULL),(831,17,'PIÑA COLADA','gin, piña colada',279,NULL,'normal',_binary '',_binary '',NULL,NULL),(832,17,'SEX ON THE BEACH','licor de durazno, vodka, granadina',279,NULL,'normal',_binary '',_binary '',NULL,NULL),(833,17,'TWISTER','ron, triple sec, limón, ananá, granadina, naranja',279,NULL,'normal',_binary '',_binary '',NULL,NULL),(834,17,'POMELO ROSADO','gancia, campari, jugo de naranja',279,NULL,'normal',_binary '',_binary '',NULL,NULL),(835,17,'GRACE THE WOMAN','jugo de naranja, vodka, blue curacao',279,NULL,'normal',_binary '',_binary '',NULL,NULL),(837,12,'PROVOLONE','Salsa, muzzarella, morrones, orégano, jamón enrollado, provolone, olivas',540,NULL,'normal',_binary '',_binary '',NULL,NULL),(838,12,'ROQUEFORT TURIN','Salsa, muzzarella, morrones, orégano, roquefort',520,NULL,'normal',_binary '',_binary '','',NULL),(839,12,'ESPECIAL DE CHOCLO','Muzzarella, morrones, orégano, tomate, choclo , olivas',520,NULL,'normal',_binary '',_binary '',NULL,NULL),(840,12,'ESPECIAL DE CHAMPIGNON','Muzzarella, morrones, orégano, tomate, champignon, olivas',520,NULL,'normal',_binary '',_binary '',NULL,NULL),(841,12,'MILANESA/ SUPREMA AL PLATO SOLA','',420,NULL,'normal',_binary '',_binary '',NULL,NULL),(842,12,'MILANESA/SUPREMA CON PAPAS FRITAS','',440,NULL,'normal',_binary '',_binary '',NULL,NULL),(843,12,'MILANESA/ SUPREMA CON PAPAS FRITAS Y HUEVO','',460,NULL,'normal',_binary '',_binary '',NULL,NULL),(844,12,'MILANESA/ SUPREMA NAPOLITANA SOLA','',420,NULL,'normal',_binary '',_binary '',NULL,NULL),(845,12,'MILANESA/ SUPREMA NAPOLITANA CON PAPAS FRITAS','',450,NULL,'normal',_binary '',_binary '',NULL,NULL),(846,12,'MILANESA/ SUPREMA NAPOLITANA CON PAPAS FRITAS Y HUEVO','',470,NULL,'normal',_binary '',_binary '',NULL,NULL),(847,12,'1/4 POLLO DESHUESADO SOLO','Patamuslo/ pechuga',400,NULL,'normal',_binary '',_binary '',NULL,NULL),(848,12,'1/4 POLLO DESHUESADO CON PAPAS','Patamuslo / pechuga',450,NULL,'normal',_binary '',_binary '',NULL,NULL),(849,12,'1/4 POLLO DESHUESADO COMPLETO','Patamuslo / pechuga\nJamón, queso, huevo y papas',500,NULL,'normal',_binary '',_binary '',NULL,NULL),(850,12,'ENTRECOT SOLO','',480,NULL,'normal',_binary '',_binary '',NULL,NULL),(851,12,'ENTRECOT CON PAPAS','',500,NULL,'normal',_binary '',_binary '',NULL,NULL),(852,12,'ENTRECOT COMPLETO','Papas y huevo',530,NULL,'normal',_binary '',_binary '',NULL,NULL),(853,12,'BIFE DE CHORIZO SOLO','',540,NULL,'normal',_binary '',_binary '',NULL,NULL),(854,12,'BIFE DE CHORIZO CON PAPAS','',570,NULL,'normal',_binary '',_binary '',NULL,NULL),(855,12,'BIFE DE CHORIZO COMPLETO','Papas y huevo',590,NULL,'normal',_binary '',_binary '',NULL,NULL),(856,12,'ENSALADA 348','Lechuga, tomate, zanahoria, huevo duro, queso, pechuga de pollo trozada',400,NULL,'normal',_binary '',_binary '',NULL,NULL),(857,12,'ENSALADA MIXTA','Lechuga, tomate, cebolla',200,NULL,'normal',_binary '',_binary '','',NULL),(858,12,'ENSALADA DE RUCULA Y QUESO PARMESANO','',280,NULL,'normal',_binary '',_binary '','',NULL),(859,12,'ENSALADA COMPLETA','Lechuga, tomate, cebolla, zanahoria, huevo duro y remolacha',260,NULL,'normal',_binary '',_binary '','',NULL),(860,12,'ENSALADA CESAR','Pollo en tiras, Lechuga, panceta, croutons y salsa cesar',400,NULL,'normal',_binary '',_binary '','',NULL),(861,12,'ENSALADA FRESCA','Lechuga, huevo duro, jamón, queso y choclo',300,NULL,'normal',_binary '',_binary '','',NULL),(862,12,'AGUA CON O SIN GAS 500cc','',110,NULL,'normal',_binary '',_binary '',NULL,NULL),(863,12,'GASEOSA 350','',110,NULL,'normal',_binary '',_binary '',NULL,NULL),(864,24,'Tabla de salames y quesos','Selección de salames y quesos para 2 personas',650,NULL,'normal',_binary '',_binary '','',NULL),(865,24,'Achicoria','',220,NULL,'normal',_binary '',_binary '','',NULL),(866,24,'Verdes de estación','',250,NULL,'normal',_binary '',_binary '','',NULL),(867,24,'Lechuga, tomate y cebolla','',270,NULL,'normal',_binary '',_binary '','',NULL),(868,24,'Rúcula y parmesano','',290,NULL,'normal',_binary '',_binary '','',NULL),(869,24,'Verduras asadas','',440,NULL,'normal',_binary '',_binary '','',NULL),(870,24,'Morrones asados','Con champignones y olivas negras.',480,NULL,'normal',_binary '',_binary '','',NULL),(871,24,'Caesar con ave','Crotones de pan, blanco de ave, verde de estación, parmesano y suave bagna cauda.',590,NULL,'normal',_binary '',_binary '',NULL,NULL),(872,24,'Provoleta','',570,NULL,'normal',_binary '',_binary '',NULL,NULL),(873,24,'Papas fritas (Bastón, pai o españolas)','',280,NULL,'normal',_binary '',_binary '',NULL,NULL),(874,24,'Puré','',260,NULL,'normal',_binary '',_binary '',NULL,NULL),(875,24,'Tortilla de papas','',370,NULL,'normal',_binary '',_binary '',NULL,NULL),(876,24,'Tortilla de papas con cebolla','',390,NULL,'normal',_binary '',_binary '',NULL,NULL),(877,24,'Empanada','',130,NULL,'normal',_binary '',_binary '',NULL,NULL),(878,26,'Risotto con Funghi','Cuatro tipos de hongos.',820,NULL,'normal',_binary '',_binary '','',NULL),(879,26,'Polenta con Ragu e Gongonzola','A elección polenta blanca o amarilla',680,NULL,'normal',_binary '',_binary '',NULL,NULL),(880,12,'SCHWEPPES LATA','',110,NULL,'normal',_binary '',_binary '',NULL,NULL),(881,12,'AGUA SABORIZADA 500 cc','',110,NULL,'normal',_binary '',_binary '',NULL,NULL),(882,12,'COCA COLA REGULAR DE 1 1/4 lt','',220,NULL,'normal',_binary '',_binary '',NULL,NULL),(883,12,'AGUA SABORIZADA 1,5 lt','',220,NULL,'normal',_binary '',_binary '',NULL,NULL),(884,12,'JUGÓ DE NARANJA EXPRIMIDO','',160,NULL,'normal',_binary '',_binary '',NULL,NULL),(885,12,'JUGÓ DE NARANJA EXPRIMIDO','',160,NULL,'normal',_binary '',_binary '',NULL,NULL),(886,12,'QUILMES 1Lt','',260,NULL,'normal',_binary '',_binary '',NULL,NULL),(887,12,'QUILMES BLOCK / STOUT 1 Lt','',280,NULL,'normal',_binary '',_binary '',NULL,NULL),(888,12,'QUILMES/ BRAHMA 500 cc','',200,NULL,'normal',_binary '',_binary '',NULL,NULL),(889,12,'QUILMES 340 cc','',180,NULL,'normal',_binary '',_binary '',NULL,NULL),(890,12,'QUILMES STOUT 340 cc','',180,NULL,'normal',_binary '',_binary '',NULL,NULL),(891,12,'STELLA ARTOIS 1lt','',300,NULL,'normal',_binary '',_binary '',NULL,NULL),(892,12,'STELLA ARTOIS NOIRE 1Lt','',310,NULL,'normal',_binary '',_binary '',NULL,NULL),(893,12,'STELLA ARTOIS 330 cc','',200,NULL,'normal',_binary '',_binary '',NULL,NULL),(894,12,'CORONA 355 cc','',220,NULL,'normal',_binary '',_binary '',NULL,NULL),(895,12,'PATAGONIA 740 cc','',330,NULL,'normal',_binary '',_binary '',NULL,NULL),(896,12,'HEINEKEN 1 lt','',300,NULL,'normal',_binary '',_binary '',NULL,NULL),(897,12,'FERNET BRANCA (medida)','',190,NULL,'normal',_binary '',_binary '',NULL,NULL),(898,12,'WHISKY NAC.','',190,NULL,'normal',_binary '',_binary '',NULL,NULL),(899,12,'WHISKY IMPORTADO','',210,NULL,'normal',_binary '',_binary '',NULL,NULL),(900,12,'GANCIA','',150,NULL,'normal',_binary '',_binary '',NULL,NULL),(901,12,'CHANDON','',770,NULL,'normal',_binary '',_binary '',NULL,NULL),(902,12,'CHANDON 187','',370,NULL,'normal',_binary '',_binary '',NULL,NULL),(903,12,'ALMA MORA','',470,NULL,'normal',_binary '',_binary '',NULL,NULL),(904,12,'BENJAMÍN NIETO MALBEC','',420,NULL,'normal',_binary '',_binary '',NULL,NULL),(905,12,'CASTEL BLANCO','',460,NULL,'normal',_binary '',_binary '',NULL,NULL),(906,12,'COLON MALBEC/ CABERNET','',390,NULL,'normal',_binary '',_binary '',NULL,NULL),(907,12,'LATITUD 33 MALBEC/ CABERNET','',430,NULL,'normal',_binary '',_binary '',NULL,NULL),(908,12,'LATITUD 33 SAUVIGNON BLANC','',450,NULL,'normal',_binary '',_binary '',NULL,NULL),(909,12,'LÓPEZ MALBEC 375 cc','',350,NULL,'normal',_binary '',_binary '',NULL,NULL),(910,12,'SANTA JULIA MALBEC','',440,NULL,'normal',_binary '',_binary '',NULL,NULL),(911,12,'SANTA JULIA MALBEC 375 cc','',350,NULL,'normal',_binary '',_binary '',NULL,NULL),(912,12,'SANTA JULIA SAUVIGNON BLANC','',470,NULL,'normal',_binary '',_binary '',NULL,NULL),(913,12,'SANTA JULIA CHENIN DULCE','',480,NULL,'normal',_binary '',_binary '',NULL,NULL),(914,12,'SANTA JULIA CHARDONNAY 375 cc','',360,NULL,'normal',_binary '',_binary '',NULL,NULL),(915,12,'TRAPICHE ALARIS','',410,NULL,'normal',_binary '',_binary '',NULL,NULL),(916,12,'TRAPICHE ALARIS SAUV. BLANC 375 cc','',350,NULL,'normal',_binary '',_binary '',NULL,NULL),(917,12,'VALMONT','',420,NULL,'normal',_binary '',_binary '',NULL,NULL),(918,12,'VALMONT 375 cc','',360,NULL,'normal',_binary '',_binary '',NULL,NULL),(919,12,'FLAN CASERO','',200,NULL,'normal',_binary '',_binary '',NULL,NULL),(920,12,'BUDIN DE PAN (casero)','',200,NULL,'normal',_binary '',_binary '','',NULL),(921,12,'ENSALADA DE FRUTAS DE ESTACIÓN','',200,NULL,'normal',_binary '',_binary '',NULL,NULL),(922,12,'FRUTOS EN ALMÍBAR','Batatitas, higos o zapallo con láminas de queso y cerezas',200,NULL,'normal',_binary '',_binary '',NULL,NULL),(923,12,'FRUTAS AL NATURAL','Ananá o durazno al natural',200,NULL,'normal',_binary '',_binary '',NULL,NULL),(924,12,'CONOS DE QUESO RELLENOS CON DULCE DE LECHE Y NUEZ','',200,NULL,'normal',_binary '',_binary '',NULL,NULL),(925,12,'POSTRE HELADO','Bombón escocés, suizo, almendrado o tricolor',200,NULL,'normal',_binary '',_binary '',NULL,NULL),(926,12,'BOCHA DE HELADO (por unidad)','Limon, frutilla, vainilla, dulce de leche, americana o chocolate',100,NULL,'normal',_binary '',_binary '',NULL,NULL),(927,12,'COPA HELADA 348','Ensalada de frutas de estación con 2 bochas de helado y salsa',370,NULL,'normal',_binary '',_binary '',NULL,NULL),(928,12,'BROWNIE CON HELADO','Cuadrado de brownie cubierto de bocha de helado de crema americana con salsa de chocolate',200,NULL,'normal',_binary '',_binary '',NULL,NULL),(929,12,'CAFÉ/ CORTADO','',90,NULL,'normal',_binary '',_binary '',NULL,NULL),(930,12,'CAFÉ CON LECHE','',110,NULL,'normal',_binary '',_binary '',NULL,NULL),(931,12,'EN JARRITO','',100,NULL,'normal',_binary '',_binary '',NULL,NULL),(932,12,'TÉ','',100,NULL,'normal',_binary '',_binary '',NULL,NULL),(933,12,'PROMO 2x1 EN HAMBURGUESAS','DE DOMINGOS A JUEVES\n(Hamburguesas a elección)',430,NULL,'normal',_binary '',_binary '',NULL,NULL),(934,25,'Tapa del día','',100,NULL,'normal',_binary '',_binary '\0',NULL,NULL),(935,25,'Aceitunas Marinadas','',120,NULL,'normal',_binary '',_binary '\0',NULL,NULL),(936,25,'Empanada Gintonera','',160,NULL,'normal',_binary '',_binary '',NULL,NULL),(937,25,'Empanada de Cabrito','',180,NULL,'normal',_binary '',_binary '',NULL,NULL),(938,25,'Escabeche de Berenjenas','',150,NULL,'normal',_binary '',_binary '\0',NULL,NULL),(939,25,'Selección de Salames','',300,NULL,'normal',_binary '',_binary '\0',NULL,NULL),(940,25,'Selección de Quesos','',300,NULL,'normal',_binary '',_binary '\0',NULL,NULL),(941,25,'Milanesa Picada','',180,NULL,'normal',_binary '',_binary '\0',NULL,NULL),(942,25,'Papas Fritas','',180,NULL,'normal',_binary '',_binary '\0',NULL,NULL),(943,25,'Provoleta','',265,NULL,'normal',_binary '',_binary '\0',NULL,NULL),(944,25,'Cazuela de Chorizos','',330,NULL,'normal',_binary '',_binary '\0',NULL,NULL),(945,25,'Carlitos Clásico','',200,NULL,'normal',_binary '',_binary '\0',NULL,NULL),(946,25,'Pancho al Paso','',220,NULL,'normal',_binary '',_binary '\0',NULL,NULL),(947,25,'Sandwich de Milanesa','',300,NULL,'normal',_binary '',_binary '\0',NULL,NULL),(948,25,'Hamburguesa','',300,NULL,'normal',_binary '',_binary '',NULL,NULL),(950,25,'Vigilante','',150,NULL,'normal',_binary '',_binary '\0',NULL,NULL),(951,25,'CYN TONIC','GIN PRINCIPE DE LOS APÓSTOLES, CYNAR, TÓNICA PULPO BLANCO, POMELO Y ROMERO',200,NULL,'normal',_binary '',_binary '','',NULL),(952,25,'AP AP TONIC','GIN PRÍNCIPE DE LOS APÓSTOLES, APEROL, TÓNICA PULPO BLANCO, NARANJA Y MENTA',200,NULL,'normal',_binary '',_binary '',NULL,NULL),(953,25,'G y G','GIN PRÍNCIPE DE LOS APÓSTOLES, GINGER, ALE PULPO BLANCO, PEPINO, NARANJA, FRUTILLAS Y MENTA',200,NULL,'normal',_binary '',_binary '',NULL,NULL),(954,25,'DRY TONIC','GIN PRÍNCIPE DE LOS APÓSTOLES, VERMOUTH SECO GIOVANNONI, TÓNICA PULPO BLANCO Y ACEITUNAS.',200,NULL,'normal',_binary '',_binary '',NULL,NULL),(955,25,'TERERÉ TONIC','GIN PRÍNCIPE DE LOS APÓSTOLES, YERBA MATE, TÓNICA PULPO BLANCO Y POMELO.',200,NULL,'normal',_binary '',_binary '',NULL,NULL),(956,28,'CAFÉ EXPRESSO','',95,NULL,'normal',_binary '',_binary '',NULL,NULL),(957,28,'CAFÉ JARRITO','',100,NULL,'normal',_binary '',_binary '',NULL,NULL),(958,28,'CAFÉ CON LECHE','',110,NULL,'normal',_binary '',_binary '',NULL,NULL),(959,28,'CAPUCHINO','',145,NULL,'normal',_binary '',_binary '',NULL,NULL),(960,28,'SUBMARINO','',130,NULL,'normal',_binary '',_binary '',NULL,NULL),(961,28,'CHOCOLATADA','',120,NULL,'normal',_binary '',_binary '',NULL,NULL),(962,28,'TE','',95,NULL,'normal',_binary '',_binary '',NULL,NULL),(963,28,'DESAYUNO SIMPLE','CAFÉ CON LECHE O TÉ + 1 MEDIALUNA O CRIOLLO',170,NULL,'normal',_binary '',_binary '','',NULL),(964,28,'DESAYUNO COMPLETO','CAFÉ CON LECHE O TÉ + 2 MEDIALUNAS O CRIOLLOS CON MANTECA Y DULCE + JUGO NARANJA CHICO',190,NULL,'normal',_binary '',_binary '',NULL,NULL),(965,28,'DESAYUNO LIGHT','CAFÉ CON LECHE O TÉ + PORCIÓN DE TOSTADAS PAN DE CAMPO O INTEGRAL CON QUESO Y MERMELADA CASERA + JUGO NARANJA CHICO',195,NULL,'normal',_binary '',_binary '',NULL,NULL),(966,28,'TOSTADO CS','PAN CASERO, DOBLE JAMÓN, DOBLE QUESO Y MAYONESA',240,NULL,'normal',_binary '',_binary '',NULL,NULL),(967,28,'JUGO DE NARANJA','',175,NULL,'normal',_binary '',_binary '',NULL,NULL),(968,28,'LIMONADA CLASICA','',145,NULL,'normal',_binary '',_binary '',NULL,NULL),(969,28,'LIMONADA EXTRA','',155,NULL,'normal',_binary '',_binary '',NULL,NULL),(970,28,'LICUADO','CON AGUA',175,NULL,'normal',_binary '',_binary '',NULL,NULL),(971,28,'LICUADO EXTRA','CON LECHE O JUGO DE NARANJA',185,NULL,'normal',_binary '',_binary '',NULL,NULL),(972,28,'MILSHAKE','HELADO DE CHOCOLATE/ DULCE DE LECHE/VAINILLA/ FRUTILLA CON LECHE BATIDO',185,NULL,'normal',_binary '',_binary '',NULL,NULL),(973,28,'GASEOSA','',105,NULL,'normal',_binary '',_binary '',NULL,NULL),(974,28,'AGUA SABORIZADA','',105,NULL,'normal',_binary '',_binary '',NULL,NULL),(975,28,'AGUA MINERAL','',99,NULL,'normal',_binary '',_binary '',NULL,NULL),(976,28,'JARRA LIMONADA','',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(977,28,'COPA DE VINO DE LA CASA','',170,NULL,'normal',_binary '',_binary '',NULL,NULL),(978,27,'EMPANADAS','',50,NULL,'normal',_binary '',_binary '','',NULL),(979,27,'LENGUA C/ VINAGRETA','',130,NULL,'normal',_binary '',_binary '','',NULL),(980,27,'TABLA DE SALAME Y QUESO','',130,NULL,'normal',_binary '',_binary '','',NULL),(981,27,'TABLA DE JAMÓN CRUDO Y QUESO','',180,NULL,'normal',_binary '',_binary '','',NULL),(982,27,'TABLA DE JAMÓN COCIDO Y QUESO','',170,NULL,'normal',_binary '',_binary '','',NULL),(983,27,'TABLA DE BONDIOLA Y QUESO','',170,NULL,'normal',_binary '',_binary '','',NULL),(984,27,'OMELETTE DE JAMÓN Y QUESO','',190,NULL,'normal',_binary '',_binary '','',NULL),(985,27,'MIXTA O UNA VERDURA','',90,NULL,'normal',_binary '',_binary '','',NULL),(986,27,'COMPLETA','',150,NULL,'normal',_binary '',_binary '','',NULL),(987,27,'RUCULA C/ PARMESANO','',150,NULL,'normal',_binary '',_binary '','',NULL),(988,27,'ADICIONAL QUESO PARMESANO','',60,NULL,'normal',_binary '',_binary '','',NULL),(989,27,'ADICIONAL HUEVO','',40,NULL,'normal',_binary '',_binary '','',NULL),(990,27,'MILANESA DE TERNERA','',310,NULL,'normal',_binary '',_binary '','',NULL),(991,27,'MILANESA A LA NAPOLITANA','',350,NULL,'normal',_binary '',_binary '','',NULL),(992,27,'SUPREMA DE POLLO','',310,NULL,'normal',_binary '',_binary '','',NULL),(993,27,'SUPREMA A LA NAPOLITANA','',350,NULL,'normal',_binary '',_binary '','',NULL),(994,27,'MATAMBRE A LA PIZZA','',510,NULL,'normal',_binary '',_binary '','',NULL),(995,27,'TALLARINES O ÑOQUIS SALSA Y/O CREMA','',310,NULL,'normal',_binary '',_binary '','',NULL),(996,27,'RAVIOLES VERDURA Y CARNE','',330,NULL,'normal',_binary '',_binary '','',NULL),(997,27,'CANELONES VERDURA Y POLLO','',330,NULL,'normal',_binary '',_binary '','',NULL),(998,27,'PECETO LA UNIDAD','',330,NULL,'normal',_binary '',_binary '','',NULL),(999,27,'ROCKEFORT','',330,NULL,'normal',_binary '',_binary '','',NULL),(1000,27,'SALSA BLANCA','',330,NULL,'normal',_binary '',_binary '','',NULL),(1001,27,'PARRILLA POR PERSONA','',460,NULL,'normal',_binary '',_binary '','',NULL),(1002,27,'PORCIÓN DE ASADO DE TIRA','',490,NULL,'normal',_binary '',_binary '','',NULL),(1003,27,'PORCIÓN DE CHURRASCO DE CUADRIL','4 UNIDADES',460,NULL,'normal',_binary '',_binary '','',NULL),(1004,27,'PORCIÓN DE BONDIOLA DE CERDO','4 UNIDADES',460,NULL,'normal',_binary '',_binary '','',NULL),(1005,27,'CHORIZO C/U','',100,NULL,'normal',_binary '',_binary '','',NULL),(1006,27,'MORCILLA C/U','',90,NULL,'normal',_binary '',_binary '','',NULL),(1007,27,'CHINCHULIN O RIÑON','5 UNIDADES',280,NULL,'normal',_binary '',_binary '','',NULL),(1008,27,'POLLO DESHUESADO A LA PARRILLA','',310,NULL,'normal',_binary '',_binary '','',NULL),(1009,27,'MATAMBRE','',490,NULL,'normal',_binary '',_binary '','',NULL),(1010,27,'PAPAS FRITAS AL NATURAL O PURÉ','',100,NULL,'normal',_binary '',_binary '','',NULL),(1011,27,'PAPAS FRITAS C/ HUEVO','',160,NULL,'normal',_binary '',_binary '','',NULL),(1012,27,'TORTILLA DE PAPAS','',180,NULL,'normal',_binary '',_binary '','',NULL),(1013,27,'HUEVO FRITO C/U','',40,NULL,'normal',_binary '',_binary '','',NULL),(1014,27,'GASEOSA 500 CC','',90,NULL,'normal',_binary '',_binary '','',NULL),(1015,27,'GASEOSA 1 LT','',160,NULL,'normal',_binary '',_binary '','',NULL),(1016,27,'GASEOSA 1.5 LT','',210,NULL,'normal',_binary '',_binary '','',NULL),(1017,27,'AGUA 500 CC','',80,NULL,'normal',_binary '',_binary '','',NULL),(1018,27,'SODA','',80,NULL,'normal',_binary '',_binary '','',NULL),(1019,27,'CERVEZA 500 CC','',100,NULL,'normal',_binary '',_binary '','',NULL),(1020,27,'CERVEZA 1 LT','',170,NULL,'normal',_binary '',_binary '','',NULL),(1021,27,'D.V.CATENA','',0,'1450|-','normal',_binary '',_binary '','',NULL),(1022,27,'SAINT FELICIEN','',0,'850|-','normal',_binary '',_binary '','',NULL),(1023,27,'ALAMOS','',0,'590|410','normal',_binary '',_binary '','',NULL),(1024,27,'UXMAL','',0,'390|310','normal',_binary '',_binary '','',NULL),(1025,27,'ESTIBA','',0,'270|-','normal',_binary '',_binary '','',NULL),(1026,27,'VALDERROBLES','',0,'210|-','normal',_binary '',_binary '','',NULL),(1027,27,'RODAS','',0,'230|-','normal',_binary '',_binary '','',NULL),(1028,27,'CARCASONNE','',0,'210|150','normal',_binary '',_binary '','',NULL),(1029,27,'CIRCUS','',0,'260|-','normal',_binary '',_binary '','',NULL),(1030,27,'RUTINI','',0,'1300|-','normal',_binary '',_binary '','',NULL),(1031,28,'HELADO','2 BOCHAS',190,NULL,'normal',_binary '',_binary '',NULL,NULL),(1032,28,'ENSALADA DE FRUTAS','DE ESTACIÓN',190,NULL,'normal',_binary '',_binary '',NULL,NULL),(1033,28,'FLAN CASERO','CON CREMA CHANTILLY O DULCE DE LECHE',210,NULL,'normal',_binary '',_binary '',NULL,NULL),(1034,28,'RABAS','',490,NULL,'normal',_binary '',_binary '',NULL,NULL),(1035,28,'BASTONCITOS DE MOZZARELLA','SALSA BBQ ( 6 UNI )',340,NULL,'normal',_binary '',_binary '',NULL,NULL),(1036,28,'PAPAS CLASICAS','',270,NULL,'normal',_binary '',_binary '',NULL,NULL),(1037,28,'PAPAS DELICIOSAS','PAPAS FRITAS, SALTEADO DE CREMA Y MOZZARELLA, PANCETA AHUMADA Y CEBOLLITA DE VERDEO',295,NULL,'normal',_binary '',_binary '',NULL,NULL),(1038,28,'PAPAS CON CHEDDAR Y PANCETA','PAPAS FRITAS, QUESO CHEDDAR FUNDIDO, CROCANTE DE PANCETA Y PIMENTON',295,NULL,'normal',_binary '',_binary '',NULL,NULL),(1039,28,'CAESAR CS','MIX DE HOJAS VERDES, PECHUGUITAS DE POLLO GRILLADO, CRUTONES, TOMATITOS CHERRYS, QUESO SARDO Y NUESTRO CLÁSICO ADEREZO CAESAR',380,NULL,'normal',_binary '',_binary '',NULL,NULL),(1040,28,'GOHAN CS','ARROZ, SALMÓN ROSADO O LANGOSTINOS REBOZADOS, LAMINAS DE PALTA FRESCA, QUESO CREMA CON SÉSAMO TOSTADO ACOMPAÑADO DE SALSA DE SOJA',430,NULL,'normal',_binary '',_binary '',NULL,NULL),(1041,28,'LOMITO COMPLETO','PAN DE LOMO O DE PIZZA, BIFE DE LOMO O POLLO, QUESO TYBO, JAMON COCIDO, LECHUGA, TOMATE, HUEVO FRITO Y MAYONESA CASERA ACOMPAÑADO DE PAPAS FRITAS',390,NULL,'normal',_binary '',_binary '',NULL,NULL),(1042,28,'SANDWICH DE MILANESA','PAN DE PIZZA, MILANESA DE PECETO O POLLO, QUESO TYBO, JAMON COCIDO, LECHUGA, TOMATE, HUEVO FRITO Y MAYONESA CASERA CON TOQUE DE MOSTAZA ACOMPAÑADO DE PAPAS FRITAS.',380,NULL,'normal',_binary '',_binary '',NULL,NULL),(1043,28,'SIMPLE CHESSE BURGER CON PAPAS FRITAS','MEDALLON DE 110 G + DOBLE CHEDDAR + TOPPINGS CLASICOS',310,NULL,'normal',_binary '',_binary '',NULL,NULL),(1044,28,'DOBLE CHESSE BURGER CON PAPAS FRITAS','2 MEDALLONES DE 110 G + DOBLE CHEDDAR + TOPPINGS CLASICOS',360,NULL,'normal',_binary '',_binary '',NULL,NULL),(1045,28,'TRIPLE CHESSE BURGER CON PAPAS FRITAS','3 MEDALLONES DE 110 G + DOBLE CHEDDAR + TOPPINGS CLASICOS',410,NULL,'normal',_binary '',_binary '',NULL,NULL),(1047,28,'CEBOLLA CRISPY','',40,NULL,'normal',_binary '',_binary '','',NULL),(1048,28,'AROS DE CEBOLLA','',50,NULL,'normal',_binary '',_binary '','',NULL),(1049,28,'RELISH','',40,NULL,'normal',_binary '',_binary '','',NULL),(1050,28,'EXTRA CHEDDAR','',50,NULL,'normal',_binary '',_binary '','',NULL),(1051,28,'CHAMPIÑONES','',50,NULL,'normal',_binary '',_binary '','',NULL),(1052,28,'QUESO MOZZARELLA','',50,NULL,'normal',_binary '',_binary '','',NULL),(1053,28,'MILANESA CLASICA','DE PECETO O PECHUGA CON GUARNICIÓN A ELECCIÓN',370,NULL,'normal',_binary '',_binary '','',NULL),(1054,28,'MILANESA NAPOLITANA','DE PECETO O PECHUGA, SALSA DE TOMATE, JAMON COCIDO Y MOZZARELLA GRATINADA CON GUARNICIÓN A ELECCIÓN',410,NULL,'normal',_binary '',_binary '','',NULL),(1055,28,'MILANESA CHEDDAR Y PANCETA','DE PECETO O PECHUGA QUESO CHEDDAR FUNDIDO, PANCETA AHUMADA CROCANTE Y CEBOLLA DE VERDEO CON GUARNICIÓN A ELECCIÓN',430,NULL,'normal',_binary '',_binary '','',NULL),(1056,28,'BIFE DE TERNERA','CON GUARNICIÓN A ELECCIÓN',480,NULL,'normal',_binary '',_binary '','',NULL),(1057,28,'PECHUGA DE POLLO A LA PLANCHA','CON GUARNICIÓN A ELECCIÓN',410,NULL,'normal',_binary '',_binary '','',NULL),(1059,28,'TACOS MIXTOS','TIRITAS DE TERNERA Y PECHUGA, SALTEADAS CON VEGETALES',390,NULL,'normal',_binary '',_binary '',NULL,NULL),(1060,28,'ÑOQUIS CASEROS','CREMA Y QUESO, MIXTA O FILETTO',360,NULL,'normal',_binary '',_binary '','',NULL),(1061,28,'TALLARINES CASEROS','CREMA Y QUESO, MIXTA O FILETTO',360,NULL,'normal',_binary '',_binary '','',NULL),(1063,28,'CUBIERTO','',45,NULL,'normal',_binary '',_binary '',NULL,NULL),(1064,28,'LOS CAPUCHINOS PARA COMPARTIR','VODKA, TIA MARIA, LIMÓN, JUGO DE PERA, SYRUP Y ANGOSTURA',380,NULL,'normal',_binary '',_binary '',NULL,NULL),(1065,25,'TONICO SERRANO','GIN PRINCIPE DE LOS APOSTOLES, TERMA SERRANO, TONICA PULPO BLANCO, LEMON GRASS Y NARANJA.',200,NULL,'normal',_binary '',_binary '','qgm9phl9b5fil6m3j7hjjqqw9li7hawzxrd3jmge7.jpeg',NULL),(1066,25,'SILVESTRE TONIC','GIN PRINCIPE DE LOS APOSTOLES, TONICA PULPO BLANCO, HIERBAS CORDOBESAS Y POMELO.',200,NULL,'normal',_binary '',_binary '',NULL,NULL),(1067,25,'APOSTOLES MULE','GIN PRINCIPE DE LOS APOSTOLES, JUGO DE LIMON, GINGER PULPO BLANCO, LIMON Y MENTA.',200,NULL,'normal',_binary '',_binary '',NULL,NULL),(1068,25,'NEGRONICO','GIN PRINCIPE DE LOS APOSTOLES, REDUCCION DE NEGRONI, TONICA PULPO BLANCO Y NARANJA',200,NULL,'normal',_binary '',_binary '',NULL,NULL),(1069,25,'LA DOCTA TONIC','GIN PRINCIPE DE LOS APOSTOLES, FERNET 1882, TONICA PULPO BLANCO, MELISA Y NARANJA.',200,NULL,'normal',_binary '',_binary '',NULL,NULL),(1070,25,'NEGRONI','GIN PRINCIPE DE LOS APOSTOLES, CAMPARI, CINZANO ROSSO Y NARANJA',200,NULL,'normal',_binary '',_binary '','xap2oe26oj65700a8sn01r8c73a0k3ti95vpgzvsv.jpeg',NULL),(1071,25,'NEGRONI BALESTRINI','GIN PRINCIPE DE LOS APOSTOLES, CAMPARI, AVERNA, AGUA DE MAR Y AHUMADO CON EUCALIPTOS',240,NULL,'normal',_binary '',_binary '','stdz5zo8ss1qvs9j886zkrswduricgbygicbjoszx.jpeg',NULL),(1072,25,'DRY MARTINI','GIN PRINCIPE DE LOS APOSTOLES, VERMOUTH DRY GIOVANONNI Y ACEITUNA.',220,NULL,'normal',_binary '',_binary '',NULL,NULL),(1073,25,'GASEOSAS PULPO BLANCO','TONICA O GINGER ALE',90,NULL,'normal',_binary '',_binary '',NULL,NULL),(1074,25,'AGUA VILLAVICENCIO','CON O SIN GAS',85,NULL,'normal',_binary '',_binary '',NULL,NULL),(1075,27,'STELLA ARTOIS 269 cc','',80,NULL,'normal',_binary '',_binary '',NULL,NULL),(1076,27,'ANDES 473 cc','',130,NULL,'normal',_binary '',_binary '',NULL,NULL),(1077,27,'ANDES 1LT','',260,NULL,'normal',_binary '',_binary '',NULL,NULL),(1078,27,'CUARTO DE LIBRA','Medallón de carne, cheddar y aderezo especial',290,NULL,'normal',_binary '',_binary '',NULL,NULL),(1079,27,'CRISPY ONION','Medallón de carne, cheddar, cebolla crocante y mayonesa a la provenzal',290,NULL,'normal',_binary '',_binary '',NULL,NULL),(1080,27,'CHESSE BACON','Medallón de carne, cheddar, panceta crocante y mayonesa ahumada',290,NULL,'normal',_binary '',_binary '',NULL,NULL),(1081,27,'CRIOLLA BURGER','Medallón de carne, queso cheddar y alioli',290,NULL,'normal',_binary '',_binary '',NULL,NULL),(1082,27,'CLASIC BURGER','Medallón de carne, cheddar, tomate, lechuga y mayonesa de rúcula',290,NULL,'normal',_binary '',_binary '',NULL,NULL),(1083,27,'VEGGIE BURGER','* Quinoa y espinaca\n* Calabaza y garbanzo\n* Lentejas y arroz yamani\n* Cebolla caramelizada y yamani',290,NULL,'vegetarian',_binary '',_binary '',NULL,NULL),(1084,28,'MONTEVIDEO ST (P/COMPARTIR)','VODKA, CACHACA, JUGO DE MARACUYA, JUGO DE PERA Y SEXY SYRUP',375,NULL,'normal',_binary '',_binary '','',NULL),(1085,28,'RONDEAU ST','RON, LICOR DE NARANJA, JUGO DE ANANA, JUGO DE MARACUYA, ALMIBAR Y ANGOSTURA',240,NULL,'normal',_binary '',_binary '',NULL,NULL),(1086,28,'CHANDON DELICE 750 CC','',850,NULL,'normal',_binary '',_binary '',NULL,NULL),(1087,28,'CHANDON BRUT NATURE 750CC','',890,NULL,'normal',_binary '',_binary '',NULL,NULL),(1088,28,'CHANDON EXTRA BRUT 750 CC','',890,NULL,'normal',_binary '',_binary '',NULL,NULL),(1089,28,'CHANDON DELICE 375 CC','',490,NULL,'normal',_binary '',_binary '',NULL,NULL),(1090,28,'BABY CHANDON 187 CC','',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(1091,28,'BARON B 750 CC','',1650,NULL,'normal',_binary '',_binary '',NULL,NULL),(1092,28,'VARIETAL MALBEC','',580,NULL,'normal',_binary '',_binary '',NULL,NULL),(1093,28,'VARIETAL SAUV BLANC','',590,NULL,'normal',_binary '',_binary '',NULL,NULL),(1094,28,'RESERVA MALBEC','',730,NULL,'normal',_binary '',_binary '',NULL,NULL),(1095,28,'ALA COLORADA CABERNET FRANCK','',1050,NULL,'normal',_binary '',_binary '',NULL,NULL),(1096,28,'ANDELUNA RAICES MALBEC','',460,NULL,'normal',_binary '',_binary '',NULL,NULL),(1097,28,'INDEPENDECIA ST','JUGO DE ANANA, JUGO DE NARANJA, TE TROPICAL Y LIMON',205,NULL,'normal',_binary '',_binary '',NULL,NULL),(1098,28,'LUGONES ST','JUGO DE POMELO, JUGO DE PERA, MENTA Y SYRUP DE TE DE FRUTOS ROJOS',205,NULL,'normal',_binary '',_binary '',NULL,NULL),(1099,28,'FERNET BRANCA','',200,NULL,'normal',_binary '',_binary '',NULL,NULL),(1100,28,'GIN TONIC','',230,NULL,'normal',_binary '',_binary '',NULL,NULL),(1101,28,'MOJITO $200','',200,NULL,'normal',_binary '',_binary '',NULL,NULL),(1102,28,'CAIPIRINHA','',200,NULL,'normal',_binary '',_binary '',NULL,NULL),(1103,28,'CAIPIROSKA','',200,NULL,'normal',_binary '',_binary '',NULL,NULL),(1104,28,'NEGRONI','',240,NULL,'normal',_binary '',_binary '',NULL,NULL),(1105,28,'PISCO SOUR','',230,NULL,'normal',_binary '',_binary '',NULL,NULL),(1106,28,'CAMPARI ORANGE','',200,NULL,'normal',_binary '',_binary '',NULL,NULL),(1107,28,'CUBA LIBRE','',200,NULL,'normal',_binary '',_binary '',NULL,NULL),(1108,29,'CAFÉ EXPRESSO','',95,NULL,'normal',_binary '',_binary '',NULL,NULL),(1109,29,'CAFÉ JARRITO','',100,NULL,'normal',_binary '',_binary '',NULL,NULL),(1110,29,'CAFÉ CON LECHE','',110,NULL,'normal',_binary '',_binary '',NULL,NULL),(1111,29,'CAPUCHINO','',145,NULL,'normal',_binary '',_binary '',NULL,NULL),(1112,29,'SUBMARINO','',130,NULL,'normal',_binary '',_binary '',NULL,NULL),(1113,29,'CHOCOLATADA','',120,NULL,'normal',_binary '',_binary '',NULL,NULL),(1114,29,'TE','',95,NULL,'normal',_binary '',_binary '',NULL,NULL),(1115,29,'DESAYUNO SIMPLE','CAFÉ CON LECHE O TE + 1 MEDIALUNA O CRIOLLO',170,NULL,'normal',_binary '',_binary '',NULL,NULL),(1116,29,'DESAYUNO COMPLETO','CAFÉ CON LECHE O TÉ + 2 MEDIALUNAS O CRIOLLOS CON MANTECA Y DULCE + JUGO NARANJA CHICO',190,NULL,'normal',_binary '',_binary '',NULL,NULL),(1117,29,'DESAYUNO LIGHT','CAFÉ CON LECHE O TÉ + PORCIÓN DE TOSTADAS PAN DE CAMPO O INTEGRAL CON QUESO Y MERMELADA CASERA + JUGO NARANJA CHICO',195,NULL,'normal',_binary '',_binary '',NULL,NULL),(1118,29,'TOSTADO','PAN CASERO, DOBLE JAMÓN, DOBLE QUESO Y MAYONESA',240,NULL,'normal',_binary '',_binary '',NULL,NULL),(1119,29,'JUGO DE NARANJA','',175,NULL,'normal',_binary '',_binary '',NULL,NULL),(1120,29,'LIMONADA CLASICA','',145,NULL,'normal',_binary '',_binary '',NULL,NULL),(1121,29,'LIMONADA EXTRA','',155,NULL,'normal',_binary '',_binary '',NULL,NULL),(1122,29,'LICUADO','CON AGUA',175,NULL,'normal',_binary '',_binary '',NULL,NULL),(1123,29,'LICUADO EXTRA','CON LECHE O JUGO DE NARANJA',185,NULL,'normal',_binary '',_binary '',NULL,NULL),(1124,29,'MILSHAKE','HELADO DE CHOCOLATE/ DULCE DE LECHE/VAINILLA/ FRUTILLA CON LECHE BATIDO',175,NULL,'normal',_binary '',_binary '',NULL,NULL),(1125,29,'GASEOSA','',105,NULL,'normal',_binary '',_binary '',NULL,NULL),(1126,29,'AGUA SABORIZADA','',105,NULL,'normal',_binary '',_binary '',NULL,NULL),(1127,29,'AGUA MINERAL','',99,NULL,'normal',_binary '',_binary '',NULL,NULL),(1128,29,'JARRA LIMONADA','',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(1129,29,'CAFÉ EXPRESSO','',95,NULL,'normal',_binary '',_binary '',NULL,NULL),(1130,29,'CAFÉ JARRITO','',100,NULL,'normal',_binary '',_binary '',NULL,NULL),(1131,29,'CAFÉ CON LECHE','',110,NULL,'normal',_binary '',_binary '',NULL,NULL),(1132,29,'CAPUCHINO','',145,NULL,'normal',_binary '',_binary '',NULL,NULL),(1133,29,'SUBMARINO','',130,NULL,'normal',_binary '',_binary '',NULL,NULL),(1134,29,'CHOCOLATADA','',120,NULL,'normal',_binary '',_binary '',NULL,NULL),(1135,29,'TE','',95,NULL,'normal',_binary '',_binary '',NULL,NULL),(1136,29,'DESAYUNO SIMPLE','CAFÉ CON LECHE O TÉ + 1 MEDIALUNA O CRIOLLO',150,NULL,'normal',_binary '',_binary '',NULL,NULL),(1137,29,'DESAYUNO COMPLETO','CAFÉ CON LECHE O TÉ + 2 MEDIALUNAS O CRIOLLOS CON MANTECA Y DULCE + JUGO NARANJA CHICO',175,NULL,'normal',_binary '',_binary '',NULL,NULL),(1138,29,'DESAYUNO LIGHT','CAFÉ CON LECHE O TÉ + PORCIÓN DE TOSTADAS PAN DE CAMPO O INTEGRAL CON QUESO Y MERMELADA CASERA + JUGO NARANJA CHICO',180,NULL,'normal',_binary '',_binary '',NULL,NULL),(1139,29,'TOSTADO','PAN CASERO, DOBLE JAMÓN, DOBLE QUESO Y MAYONESA',240,NULL,'normal',_binary '',_binary '',NULL,NULL),(1140,29,'JUGO DE NARANJA','',175,NULL,'normal',_binary '',_binary '',NULL,NULL),(1141,29,'LIMONADA CLASICA','',145,NULL,'normal',_binary '',_binary '',NULL,NULL),(1142,29,'LIMONADA EXTRA','',155,NULL,'normal',_binary '',_binary '',NULL,NULL),(1143,29,'LICUADO','CON AGUA',170,NULL,'normal',_binary '',_binary '',NULL,NULL),(1144,29,'LICUADO EXTRA','CON LECHE O JUGO DE NARANJA',175,NULL,'normal',_binary '',_binary '',NULL,NULL),(1145,29,'MILSHAKE','HELADO DE CHOCOLATE/ DULCE DE LECHE/VAINILLA/ FRUTILLA CON LECHE BATIDO',175,NULL,'normal',_binary '',_binary '',NULL,NULL),(1146,29,'GASEOSA','',105,NULL,'normal',_binary '',_binary '',NULL,NULL),(1147,29,'AGUA SABORIZADA','',105,NULL,'normal',_binary '',_binary '',NULL,NULL),(1148,29,'AGUA MINERAL','',99,NULL,'normal',_binary '',_binary '',NULL,NULL),(1149,29,'JARRA LIMONADA','',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(1150,29,'CORONA 335 CC','',160,NULL,'normal',_binary '',_binary '',NULL,NULL),(1151,29,'BALDE CORONA L','4 CORONAS 335CC',570,NULL,'normal',_binary '',_binary '',NULL,NULL),(1152,29,'BALDE CORONA XL','6 CORONAS 335CC',870,NULL,'normal',_binary '',_binary '',NULL,NULL),(1153,29,'CHOPP PATAGONIA 330 CC','',170,NULL,'normal',_binary '',_binary '',NULL,NULL),(1154,29,'CHOPP QUILMES 330 CC','',150,NULL,'normal',_binary '',_binary '',NULL,NULL),(1155,29,'CHOPP ARTESANAL 500CC','CONSULTAR VARIEDADES',170,NULL,'normal',_binary '',_binary '',NULL,NULL),(1156,29,'HELADO 2 BOCHAS','GUSTOS A ELECCION',180,NULL,'normal',_binary '',_binary '',NULL,NULL),(1157,29,'CHOCOTORTA','PORCIÓN',180,NULL,'normal',_binary '',_binary '','',NULL),(1158,29,'RABAS','CON DIP DE MAYONESA CASERA',470,NULL,'normal',_binary '',_binary '',NULL,NULL),(1159,29,'BASTONCITOS DE MOZZARELLA','CON DIP DE BBQ (6 UNIDADES)',340,NULL,'normal',_binary '',_binary '',NULL,NULL),(1160,29,'PAPAS CLASICAS','',270,NULL,'normal',_binary '',_binary '',NULL,NULL),(1161,29,'PAPAS MATAMBRE','PAPAS FRITAS, MATAMBRE DE CERDO MECHADO CON VEGETALES SALTEADOS AL VINO BLANCO Y CEBOLLITA DE VERDEO',310,NULL,'normal',_binary '',_binary '',NULL,NULL),(1162,29,'PAPAS CON CHEDDAR Y PANCETA','PAPAS FRITAS, QUESO CHEDDAR FUNDIDO, CROCANTE DE PANCETA Y PIMENTÓN',295,NULL,'normal',_binary '',_binary '',NULL,NULL),(1163,29,'LOMO COMPLETO','PAN DE LOMO O DE PIZZA, BIFE DE LOMO O POLLO, QUESO TYBO, JAMÓN COCIDO, LECHUGA, TOMATE, HUEVO FRITO Y MAYONESA CASERA ACOMPAÑADO DE PAPAS FRITAS',390,NULL,'normal',_binary '',_binary '',NULL,NULL),(1164,29,'SANDWICH DE MATAMBRITO','PAN DE PIZZA, MATAMBRE DE CERDO MECHADO CON VEGETALES SALTEADOS AL VINO BLANCO Y CEBOLLA DE VERDEO, QUESO TYBO, MAYONESA CASERA Y SALSA BBQ ACOMPAÑADO DE PAPAS FRITAS',390,NULL,'normal',_binary '',_binary '',NULL,NULL),(1165,29,'SIMPLE CHESSE BURGER CON PAPAS FRITAS','MEDALLÓN DE 110 G + DOBLE CHEDDAR + TOPPINGS CLASICOS + PAPAS FRITAS',310,NULL,'normal',_binary '',_binary '','',NULL),(1166,29,'DOBLE CHESSE BURGER CON PAPAS FRITAS','2 MEDALLONES DE 110 G + DOBLE CHEDDAR + TOPPINGS CLASICOS + PAPAS FRITAS',360,NULL,'normal',_binary '',_binary '','',NULL),(1167,29,'TRIPLE CHESSE BURGER CON PAPAS FRITAS','3 MEDALLONES DE 110 G + DOBLE CHEDDAR + TOPPINGS CLÁSICOS + PAPAS FRITAS',410,NULL,'normal',_binary '',_binary '','',NULL),(1168,29,'CEBOLLA CRISPY','',40,NULL,'normal',_binary '',_binary '',NULL,NULL),(1169,29,'AROS DE CEBOLLA','',50,NULL,'normal',_binary '',_binary '',NULL,NULL),(1170,29,'RELISH','',40,NULL,'normal',_binary '',_binary '',NULL,NULL),(1171,29,'EXTRA CHEDDAR','',50,NULL,'normal',_binary '',_binary '',NULL,NULL),(1172,29,'CHAMPIÑONES','',50,NULL,'normal',_binary '',_binary '',NULL,NULL),(1173,29,'QUESO MOZZARELLA','',50,NULL,'normal',_binary '',_binary '',NULL,NULL),(1175,29,'FERNET BRANCA','',220,NULL,'normal',_binary '',_binary '',NULL,NULL),(1176,29,'GIN TONIC','',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(1177,29,'MOJITO','',220,NULL,'normal',_binary '',_binary '',NULL,NULL),(1178,29,'CAIPIRINHA','',220,NULL,'normal',_binary '',_binary '',NULL,NULL),(1179,29,'CAIPIROSKA','',220,NULL,'normal',_binary '',_binary '',NULL,NULL),(1180,29,'NEGRONI','',260,NULL,'normal',_binary '',_binary '',NULL,NULL),(1181,29,'PISCO SOUR','',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(1182,29,'CAMPARI ORANGE','',230,NULL,'normal',_binary '',_binary '',NULL,NULL),(1183,29,'CUBA LIBRE','',220,NULL,'normal',_binary '',_binary '',NULL,NULL),(1184,29,'CHANDON DELICE 750 CC','',880,NULL,'normal',_binary '',_binary '',NULL,NULL),(1185,29,'CHANDON BRUT NATURE 750CC','',920,NULL,'normal',_binary '',_binary '',NULL,NULL),(1186,29,'CHANDON EXTRA BRUT 750 CC','',920,NULL,'normal',_binary '',_binary '',NULL,NULL),(1187,29,'CHANDON DELICE 375 CC','',490,NULL,'normal',_binary '',_binary '',NULL,NULL),(1188,29,'BABY CHANDON 187 CC','',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(1189,29,'BARON B 750 CC','',1650,NULL,'normal',_binary '',_binary '',NULL,NULL),(1190,29,'VARIETAL MALBEC','',580,NULL,'normal',_binary '',_binary '',NULL,NULL),(1191,29,'VARIETAL SAUV BLANC','',590,NULL,'normal',_binary '',_binary '',NULL,NULL),(1192,29,'RESERVA MALBEC','',730,NULL,'normal',_binary '',_binary '',NULL,NULL),(1193,29,'ALA COLORADA CABERNET FRANCK','',1050,NULL,'normal',_binary '',_binary '',NULL,NULL),(1202,29,'TACOS DE POLLO','3 TORTILLAS, SALTEADO CON PIMIENTOS, CEBOLLA Y CHAMPIÑONES + DIP DE MAYONESITA CASERA.',350,NULL,'normal',_binary '',_binary '','',NULL),(1203,11,'Cazuela de cordero','',450,NULL,'normal',_binary '',_binary '',NULL,NULL),(1204,28,'ANDELUNA 1300 MALBEC','',540,NULL,'normal',_binary '',_binary '',NULL,NULL),(1205,28,'ANDELUNA ALTITUD MALBEC','',830,NULL,'normal',_binary '',_binary '',NULL,NULL),(1206,29,'CHICKEN BURGER','SANDWICH DE POLLO EMPANIZADO CON NUESTRA CRUJIENTE RECETA CRISPY, DOBLE QUESO CHEDDAR, LECHUGA, TOMATE, REPOLLO MORADO Y MAYONESA CASERA ACOMPAÑADO DE PAPAS FRITAS',350,NULL,'normal',_binary '',_binary '',NULL,NULL),(1207,29,'CLASICA MOZZARELLA','SALSA FILETTO, QUESO MOZZARELLA Y OREGANO',420,NULL,'normal',_binary '',_binary '',NULL,NULL),(1208,29,'FUGAZZETA','QUESO MOZZARELLA, CEBOLLA, ACEITE DE OLIVA Y OREGANO',450,NULL,'normal',_binary '',_binary '',NULL,NULL),(1209,29,'ESPECIAL CON JAMON Y MORRONES','SALSA FILETTO, QUESO MOZZARELLA, JAMÓN COCIDO, MORRONES Y ORÉGANO',480,NULL,'normal',_binary '',_binary '',NULL,NULL),(1210,29,'NAPOLITANA','SALSA FILETTO, QUESO MOZZARELLA, TOMATES, ACEITE DE OLIVA, ALBAHACA Y OREGANO',480,NULL,'normal',_binary '',_binary '',NULL,NULL),(1211,29,'ANDELUNA RAICES MALBEC','',460,NULL,'normal',_binary '',_binary '',NULL,NULL),(1212,29,'ANDELUNA 1300 MALBEC','',540,NULL,'normal',_binary '',_binary '',NULL,NULL),(1213,29,'ANDELUNA ALTITUD MALBEC','',830,NULL,'normal',_binary '',_binary '',NULL,NULL),(1214,17,'lLATA STELLAx 473 cm','',240,NULL,'normal',_binary '',_binary '','',NULL),(1216,30,'Rúcula y parmesano','',290,NULL,'normal',_binary '',_binary '',NULL,NULL),(1217,30,'Achicoria','',220,NULL,'normal',_binary '',_binary '',NULL,NULL),(1218,30,'Verdes de estación','',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(1219,30,'Lechuga, tomate y cebolla','',270,NULL,'normal',_binary '',_binary '',NULL,NULL),(1220,30,'Verduras asadas','',440,NULL,'normal',_binary '',_binary '',NULL,NULL),(1221,30,'Morrones asados','Con champignones y olivas negras.',480,NULL,'normal',_binary '',_binary '',NULL,NULL),(1222,30,'Caesar con ave','Crutones de pan, blanco de ave, verdes de estación, parmesano y suave bagna cauda.',590,NULL,'normal',_binary '',_binary '',NULL,NULL),(1224,30,'Papas fritas','Bastón, pai o española.',280,NULL,'normal',_binary '',_binary '',NULL,NULL),(1225,30,'Puré','',260,NULL,'normal',_binary '',_binary '',NULL,NULL),(1226,30,'Tortilla de papas','',370,NULL,'normal',_binary '',_binary '',NULL,NULL),(1227,30,'Tortilla de papas con cebolla .','',390,NULL,'normal',_binary '',_binary '',NULL,NULL),(1229,30,'Completa (La parrillada completa es individual y no se puede compartir)','• Empanada criolla\n• Chorizo y morcilla\n• Achuras\n• Cortes vacunos\n• Cortes porcinos\n•  Guarnición: Papas fritas con huevo o ensaladas a elección (lechuga-tomate-cebolla-repollo-zanahoria-remolacha-papa-huevo duro)',1180,NULL,'normal',_binary '',_binary '','',NULL),(1230,30,'Compartida','Incluye dos empanadas criollas y dos guarniciones',1900,NULL,'normal',_binary '',_binary '','',NULL),(1234,30,'Ojo de bife con hueso','',950,NULL,'normal',_binary '',_binary '',NULL,NULL),(1236,30,'Milanesita de carne','+ Guarnición',690,NULL,'normal',_binary '',_binary '','',NULL),(1237,30,'Bife de pollo o carne','+ Guarnición',740,NULL,'normal',_binary '',_binary '',NULL,NULL),(1239,30,'Sugerencia','•Empanada\n•Corte del día\n•Guarnición (ensalada o papas fritas)\n•Bebida sin alcohol',800,NULL,'normal',_binary '',_binary '\0','',NULL),(1241,12,'ADICIONAL DE DULCE DE LECHE O CREMA','',40,NULL,'normal',_binary '',_binary '',NULL,NULL),(1242,14,'BURGER 01','Doble carne, cebolla caramelizada, triple queso cheddar y aderezo bbq.',340,NULL,'normal',_binary '',_binary '','yl933l8cy3f7adc1tovhzraa85irawe0ttgbnko0r.jpeg',NULL),(1243,14,'BURGER 02','Doble de carne, lechuga, tomate, palta, queso tybo, huevo y mayo casera.',330,NULL,'normal',_binary '',_binary '','6fvhmcfz5aud3rnhzz4mr13g59nmjwt7lj2k0y4go.jpeg',NULL),(1244,14,'BURGER 03','Doble carne, rucula, cebolla caramelizada, panceta, queso tybo y queso azul.',340,NULL,'normal',_binary '',_binary '','ivzv5277bvtzmu0s4hcegiilj7ns4khhcbyynzpp5.jpeg',NULL),(1245,14,'BURGER 04','Hamburguesa de arroz yamani y vegetales, lechuga, morrones asados, huevo, palta y queso muzzarella.',300,NULL,'vegetarian',_binary '',_binary '','eabt6womkgjqv8wahu43iu37t65holtc2pwqk19zr.jpeg',NULL),(1246,14,'BURGER 05','Doble carne, queso tybo, morrones asados, huevo, panceta y aderezo del bar.',340,NULL,'normal',_binary '',_binary '','ith94f4fzfvp80wei9wzedqxr34ol6n8ohf4boj2d.jpeg',NULL),(1247,14,'BURGER 06','Medallon de provoleta, rucula, salsa criolla, tomates asados, champi y mayo casera.',350,NULL,'vegetarian',_binary '',_binary '','llqcumobm590ph9heqjrt8s19sq4lt1rnu6kd4f5d.jpeg',NULL),(1248,14,'BURGER 07','Hamburguesa de pollo rebozado en panko, lechuga, tomate, queso cheddar y panceta.',320,NULL,'normal',_binary '',_binary '','',NULL),(1249,13,'Jarra de Vino','Jarra de 1LT de Vino Salteño (Tinto o Blanco).',300,NULL,'normal',_binary '',_binary '','647wex7bwigxmlvchgj6xl3le56wc46gipcty0hkb.jpeg',NULL),(1250,2,'Cerveza 750cc','',120,NULL,'normal',_binary '',_binary '',NULL,NULL),(1251,2,'Cerveza Chop (1 pinta)','',130,NULL,'normal',_binary '',_binary '','bngh5wks5jp96owo2mw75fza5gc56043dieemgtdm.jpeg',NULL),(1252,29,'Bora litgh','Naranja, maracuyá almíbar de granada, limón.',200,NULL,'normal',_binary '',_binary '','',NULL),(1254,29,'Volcan 1LT','Blend rones Havana, licor naranja, ananá, almíbar sexy, maracuyá, naranja, limón, angostura y fuegoo.',490,NULL,'normal',_binary '',_binary '','',NULL),(1255,29,'Waikiki 600 ml','Mix de rones, licor de naranja, jugo de piña, maracuyá, almíbar sexy, limón, naranja, bitter.',380,NULL,'normal',_binary '',_binary '','',NULL),(1256,29,'Copon corona','Vodka, triple se, maracuyá, frutilla, limón y corona.',340,NULL,'normal',_binary '',_binary '',NULL,NULL),(1257,29,'Pinche Wey','Tequila, vodka, passion syrup, miel de piña, pimiento dram, piña, naranja, limón, bitter orange.',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(1258,29,'Tiki sexy','Pisco, ron, falernum, hot passion syrup, limón, naranja.',240,NULL,'normal',_binary '',_binary '',NULL,NULL),(1259,29,'Scotch Potions','Whisky escoces, miel de jengibre, agua de coco, pomelo, limón, bitter hawaian.',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(1260,29,'Caribbean London','Gin, vermouth Bianco, syrup de romero y jengibre, pomelo, limón, soda.',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(1261,29,'Rum Troops','Mix de rones Havana, Cherry brandy, hot passion syrup, limón, naranja, bitter Orange.',235,NULL,'normal',_binary '',_binary '',NULL,NULL),(1262,29,'Piña y Rum','Ron Havana, ron spice, passion syrup, piña, orgeat, limón, bitter hawaian.',240,NULL,'normal',_binary '',_binary '',NULL,NULL),(1263,29,'Aku Aku Boom','Blend de rones Havana, licor de marrasquino, maracuyá, almíbar, limón, bitter de pomelo.',230,NULL,'normal',_binary '',_binary '',NULL,NULL),(1264,29,'Milktik','Ron Havana special, orgeat, licor de café, Passion fruit, limón, pera, rock candy syrup.',235,NULL,'normal',_binary '',_binary '',NULL,NULL),(1265,29,'SATURN','Gin, falernum, orgeat, passion syrup, limón.',235,NULL,'normal',_binary '',_binary '',NULL,NULL),(1266,29,'JUNGLE BIRD','Ron, campari, piña, almibar, limón.',230,NULL,'normal',_binary '',_binary '',NULL,NULL),(1267,29,'Zombie','Blend de rones, falernum, syrup de canela, limón, syrup de frutos rojos, pomelo, pernos, angostura.',240,NULL,'normal',_binary '',_binary '',NULL,NULL),(1268,29,'MAI TAI','Ron special, ron añejo Havana, orgeat, licor de naranja, syrup, limón.',240,NULL,'normal',_binary '',_binary '',NULL,NULL),(1269,28,'STELLA ARTOIS 1L','',305,NULL,'normal',_binary '',_binary '',NULL,NULL),(1270,28,'STELLA ARTOIS NOIRE 1L','',310,NULL,'normal',_binary '',_binary '',NULL,NULL),(1271,28,'ANDES ORIGEN 1L','',275,NULL,'normal',_binary '',_binary '',NULL,NULL),(1272,28,'PATAGONIA 730ML','',299,NULL,'normal',_binary '',_binary '',NULL,NULL),(1273,28,'IMPERIAL 1L','IPA/AMBER/STOUT/LAGER',299,NULL,'normal',_binary '',_binary '',NULL,NULL),(1274,28,'HAPPY HOUR','DE 16HS A 18HS',0,NULL,'normal',_binary '',_binary '','',NULL),(1275,28,'HAPPY HOUR','DE 16HS A 18HS',0,NULL,'normal',_binary '',_binary '',NULL,NULL),(1276,11,'Desayuno tradicional','Cafe/te, 2 medialunas, manteca, mermelada, jugo de naranja.',215,NULL,'normal',_binary '',_binary '',NULL,NULL),(1277,11,'Desayuno Ochre','Cafe/te, 1 medialuna, 1 criollo, manteca, mermelada, medio tostado, jugo de naranja.',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(1278,11,'Desayuno Light','Cafe/te, tostadas de salvado, queso untable, jugo de naranja.',235,NULL,'normal',_binary '',_binary '',NULL,NULL),(1279,11,'Merienda Ochre','Cafe/te, 1 medialuna, 1 criollo, manteca, mermelada, medio tostado, jugo de naranja.',270,NULL,'normal',_binary '',_binary '',NULL,NULL),(1280,11,'Merienda tradicional','Cafe/te, 2 medialunas, manteca, mermelada, jugo de naranja.',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(1281,11,'Merienda Light','Cafe/te, tostadas de salvado, queso untable, jugo de naranja.',260,NULL,'normal',_binary '',_binary '',NULL,NULL),(1282,11,'Te con torta','Con torta a eleccion.',260,NULL,'normal',_binary '',_binary '',NULL,NULL),(1283,30,'Empanada','',130,NULL,'normal',_binary '',_binary '',NULL,NULL),(1284,30,'Provoleta','',570,NULL,'normal',_binary '',_binary '',NULL,NULL),(1285,30,'Salames y quesos','',650,NULL,'normal',_binary '',_binary '',NULL,NULL),(1286,30,'Ensalada con ingredientes a elección','(Lechuga, tomate, cebolla, repollo, zanahoria, remolacha, huevo duro)',300,NULL,'normal',_binary '',_binary '',NULL,NULL),(1287,30,'Papas fritas con huevo','',300,NULL,'normal',_binary '',_binary '',NULL,NULL),(1289,30,'Ricardo Santos  Malbec / Cabernet','',850,NULL,'normal',_binary '',_binary '','',NULL),(1290,30,'Sapo de Otro Pozo','',1090,NULL,'normal',_binary '',_binary '','',NULL),(1291,30,'Perro Callejero','',800,NULL,'normal',_binary '',_binary '','',NULL),(1292,30,'Animal Malbec de Ernesto Catena','',900,NULL,'normal',_binary '',_binary '','',NULL),(1293,30,'Bife de Chorizo','',900,NULL,'normal',_binary '',_binary '',NULL,NULL),(1294,30,'Medallones de lomo','',950,NULL,'normal',_binary '',_binary '',NULL,NULL),(1295,30,'Asado de tira','',880,NULL,'normal',_binary '',_binary '',NULL,NULL),(1296,30,'Bifes de entrecote','',880,NULL,'normal',_binary '',_binary '',NULL,NULL),(1297,30,'Petite Fleur Malbec de Michel Rolland','',1040,NULL,'normal',_binary '',_binary '','',NULL),(1298,30,'Matambre (ternera o cerdo)','',950,NULL,'normal',_binary '',_binary '',NULL,NULL),(1299,30,'Vacío','',790,NULL,'normal',_binary '',_binary '',NULL,NULL),(1300,30,'Selección de achuras','',770,NULL,'normal',_binary '',_binary '',NULL,NULL),(1301,30,'Killka Malbec','',580,NULL,'normal',_binary '',_binary '','',NULL),(1302,30,'Brochette de carne','',740,NULL,'normal',_binary '',_binary '',NULL,NULL),(1303,30,'Pollo deshuesado','',750,NULL,'normal',_binary '',_binary '',NULL,NULL),(1304,30,'Killka Cabernet','',580,NULL,'normal',_binary '',_binary '','',NULL),(1305,30,'Brochette de pollo','',720,NULL,'normal',_binary '',_binary '',NULL,NULL),(1306,30,'Ala Colorada Cabernet Franc','',1010,NULL,'normal',_binary '',_binary '','',NULL),(1307,30,'Exploración La Consulta Malbec','',1120,NULL,'normal',_binary '',_binary '','',NULL),(1308,30,'Enemigo Malbec','',1490,NULL,'normal',_binary '',_binary '','',NULL),(1309,30,'Enemigo Cabernet Franc','',1190,NULL,'normal',_binary '',_binary '','',NULL),(1310,30,'Salmón','con verduras grilladas',1160,NULL,'normal',_binary '',_binary '',NULL,NULL),(1311,30,'Ravioles La Emilia','Rellenos de carne con salsa de hongos.',840,NULL,'normal',_binary '',_binary '',NULL,NULL),(1312,30,'Ravioles de espinaca y ricota','Salsa a elección: Bolognesa, Fileto, Crema, Mixta o Cuatro quesos.',820,NULL,'normal',_binary '',_binary '',NULL,NULL),(1313,30,'Spaguetti','Salsa a elección: Bolognesa, Fileto, Crema, Mixta o Cuatro quesos.',800,NULL,'normal',_binary '',_binary '',NULL,NULL),(1314,30,'Penne Rigate','Salsa a elección: Bolognesa, Fileto, Crema, Mixta o Cuatro quesos.',800,NULL,'normal',_binary '',_binary '',NULL,NULL),(1315,30,'Patrón Santiago Gran Reserva','',2390,NULL,'normal',_binary '',_binary '',NULL,NULL),(1316,30,'Tortilla de papas + ensalada clásica a elección','',650,NULL,'vegetarian',_binary '',_binary '','',NULL),(1317,30,'Tortilla de papas + verduras asadas','',690,NULL,'vegetarian',_binary '',_binary '','',NULL),(1318,30,'Patrón Santiago Malbec','',2360,NULL,'normal',_binary '',_binary '',NULL,NULL),(1319,30,'Angel Mendoza Pura Sangre Malbec / Cabernet Sauvignon','',1350,NULL,'normal',_binary '',_binary '',NULL,NULL),(1320,30,'Carmelo Patti Cabernet Sauvignon','',1210,NULL,'normal',_binary '',_binary '',NULL,NULL),(1321,30,'Tortilla de papas + morrones asados','',850,NULL,'vegetarian',_binary '',_binary '','',NULL),(1322,30,'Clos de los Siete Blend','',1220,NULL,'normal',_binary '',_binary '',NULL,NULL),(1323,30,'Brochette de verduras + ensalada clásica a elección o papas fritas','',650,NULL,'vegetarian',_binary '',_binary '','',NULL),(1324,30,'Tiramisú','',240,NULL,'normal',_binary '',_binary '',NULL,NULL),(1325,30,'Mousse de chocolate','',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(1326,30,'Flan','',220,NULL,'normal',_binary '',_binary '',NULL,NULL),(1327,30,'Budín','',220,NULL,'normal',_binary '',_binary '',NULL,NULL),(1328,30,'Rutini Malbec','',1670,NULL,'normal',_binary '',_binary '',NULL,NULL),(1329,30,'Ensalada de frutas','',230,NULL,'normal',_binary '',_binary '',NULL,NULL),(1330,30,'Rutini Cabernet Sauvignon','',1670,NULL,'normal',_binary '',_binary '',NULL,NULL),(1331,30,'Bocha de helado','(Dos gustos a elección)',220,NULL,'normal',_binary '',_binary '',NULL,NULL),(1332,30,'Rutini Chardonnay','',1230,NULL,'normal',_binary '',_binary '',NULL,NULL),(1333,30,'Postres helados','',230,NULL,'normal',_binary '',_binary '','',NULL),(1334,30,'Rutini Cabernet Malbec','',1110,NULL,'normal',_binary '',_binary '',NULL,NULL),(1335,30,'Creppe de dulce de leche','(con helado de crema)',280,NULL,'normal',_binary '',_binary '',NULL,NULL),(1336,30,'Queso y dulce','',260,NULL,'normal',_binary '',_binary '',NULL,NULL),(1337,30,'Trumpeter Reserva','',890,NULL,'normal',_binary '',_binary '',NULL,NULL),(1338,30,'Trumpeter Malbec','',720,NULL,'normal',_binary '',_binary '',NULL,NULL),(1339,30,'Zapallo y frutos en almibar','(con quesillo y helado de crema)',300,NULL,'normal',_binary '',_binary '',NULL,NULL),(1340,30,'Trumpeter Cabernet Sauvignon','',700,NULL,'normal',_binary '',_binary '',NULL,NULL),(1341,30,'Zapallo y frutas en almibar para compartir','(con quesillo y helado de crema)',550,NULL,'normal',_binary '',_binary '',NULL,NULL),(1342,30,'Trumpeter Chardonnay','',700,NULL,'normal',_binary '',_binary '',NULL,NULL),(1343,30,'Primus Malbec','',2280,NULL,'normal',_binary '',_binary '',NULL,NULL),(1344,30,'Reserve Cabernet Sauvignon','',820,NULL,'normal',_binary '',_binary '',NULL,NULL),(1345,30,'Gaseosas','',120,NULL,'normal',_binary '',_binary '',NULL,NULL),(1346,30,'Reserve Malbec','',820,NULL,'normal',_binary '',_binary '',NULL,NULL),(1347,30,'Aguas saborizadas','',120,NULL,'normal',_binary '',_binary '',NULL,NULL),(1348,30,'Reserve Merlot','',820,NULL,'normal',_binary '',_binary '',NULL,NULL),(1349,30,'Agua con o sin gas','',120,NULL,'normal',_binary '',_binary '',NULL,NULL),(1350,30,'Reserve Pinot Noir','',820,NULL,'normal',_binary '',_binary '',NULL,NULL),(1351,30,'Té','',90,NULL,'normal',_binary '',_binary '',NULL,NULL),(1352,30,'Café','',100,NULL,'normal',_binary '',_binary '',NULL,NULL),(1353,30,'Café en jarrito','',110,NULL,'normal',_binary '',_binary '',NULL,NULL),(1354,30,'Reserve Chardonnay','',820,NULL,'normal',_binary '',_binary '',NULL,NULL),(1355,30,'Reserve Sauvignon Blanc','',820,NULL,'normal',_binary '',_binary '',NULL,NULL),(1356,30,'Famiglia Malbec','',910,NULL,'normal',_binary '',_binary '',NULL,NULL),(1357,30,'Famiglia Cabernet Sauvignon','',910,NULL,'normal',_binary '',_binary '',NULL,NULL),(1358,30,'Famiglia Chardonnay','',910,NULL,'normal',_binary '',_binary '',NULL,NULL),(1359,30,'Don Valentin Lacrado','',680,NULL,'normal',_binary '',_binary '',NULL,NULL),(1360,30,'Familia Caruso Malbec Reserva','',910,NULL,'normal',_binary '',_binary '',NULL,NULL),(1361,30,'Familia Caruso Cabernet Sauvignon Reserva','',910,NULL,'normal',_binary '',_binary '',NULL,NULL),(1362,30,'Familia Caruso Bonarda Reserva','',910,NULL,'normal',_binary '',_binary '',NULL,NULL),(1363,30,'Familia Caruso Torrontés','',800,NULL,'normal',_binary '',_binary '',NULL,NULL),(1364,30,'Portillo Malbec','',590,NULL,'normal',_binary '',_binary '',NULL,NULL),(1365,30,'Portillo Rosé Malbec','',590,NULL,'normal',_binary '',_binary '',NULL,NULL),(1366,30,'Portillo Sauvignon Blanc','',590,NULL,'normal',_binary '',_binary '',NULL,NULL),(1367,30,'Tomero Malbec','',720,NULL,'normal',_binary '',_binary '',NULL,NULL),(1368,30,'Tomero Cabernet Franc','',680,NULL,'normal',_binary '',_binary '',NULL,NULL),(1369,30,'Clos Du Molin','',680,NULL,'normal',_binary '',_binary '',NULL,NULL),(1370,30,'Latitud 33° Malbec','',650,NULL,'normal',_binary '',_binary '',NULL,NULL),(1371,30,'Castel','',640,NULL,'normal',_binary '',_binary '',NULL,NULL),(1372,30,'Luigi Bosca Reserve Cabernet Sauvignon','',1190,NULL,'normal',_binary '',_binary '',NULL,NULL),(1373,30,'Luigi Bosca Reserve Malbec','',1340,NULL,'normal',_binary '',_binary '',NULL,NULL),(1374,30,'Luigi Bosca Chardonnay','',900,NULL,'normal',_binary '',_binary '',NULL,NULL),(1375,30,'Finca La Linda Malbec','',790,NULL,'normal',_binary '',_binary '',NULL,NULL),(1376,30,'Finca La Linda Cabernet','',800,NULL,'normal',_binary '',_binary '',NULL,NULL),(1377,30,'Finca La Linda Chardonnay','',760,NULL,'normal',_binary '',_binary '',NULL,NULL),(1378,30,'Finca La Linda Rosé','',760,NULL,'normal',_binary '',_binary '',NULL,NULL),(1379,30,'Alto Uxmal Malbec','',740,NULL,'normal',_binary '',_binary '',NULL,NULL),(1380,30,'Uxmal Malbec','',670,NULL,'normal',_binary '',_binary '',NULL,NULL),(1381,30,'Uxmal Cabernet Sauvignon','',670,NULL,'normal',_binary '',_binary '',NULL,NULL),(1382,30,'DV Catena Cabernet Cabernet','',1780,NULL,'normal',_binary '',_binary '','',NULL),(1383,30,'DV Catena Malbec Malbec','',1580,NULL,'normal',_binary '',_binary '','',NULL),(1384,30,'DV Catena Cabernet Malbec','',1210,NULL,'normal',_binary '',_binary '',NULL,NULL),(1385,30,'Angélica Zapata Malbec Alta','',2300,NULL,'normal',_binary '',_binary '',NULL,NULL),(1386,30,'Angélica Zapata Cabernet Franc Alta','',1770,NULL,'normal',_binary '',_binary '',NULL,NULL),(1387,30,'Saint Felicien Malbec','',950,NULL,'normal',_binary '',_binary '',NULL,NULL),(1388,30,'Saint Felicien Cabernet Sauvignon','',940,NULL,'normal',_binary '',_binary '',NULL,NULL),(1389,30,'Saint Felicien Sauvignon Blanc','',940,NULL,'normal',_binary '',_binary '',NULL,NULL),(1390,30,'Nicasia Malbec Blend','',910,NULL,'normal',_binary '',_binary '',NULL,NULL),(1391,30,'Nicasia Cabernet Franc','',890,NULL,'normal',_binary '',_binary '',NULL,NULL),(1392,30,'Alamos Reserve Malbec','',810,NULL,'normal',_binary '',_binary '',NULL,NULL),(1393,30,'Alamos Selección Malbec','',780,NULL,'normal',_binary '',_binary '','',NULL),(1394,30,'Alamos Selección Cabernet Sauvignon','',740,NULL,'normal',_binary '',_binary '',NULL,NULL),(1395,30,'Alamos Selección Sauvignon Blanc','',740,NULL,'normal',_binary '',_binary '',NULL,NULL),(1396,12,'ADICIONAL PARA COMPARTIR','',50,NULL,'normal',_binary '',_binary '',NULL,NULL),(1397,12,'ADICIONAL PARA COMPARTIR','',30,NULL,'normal',_binary '',_binary '',NULL,NULL),(1398,14,'SANDWICH DE BONDIOLA','Bondiola de cerdo, rucula, tomates asados, jamón crudo y aderezo de mostaza y miel.',340,NULL,'normal',_binary '',_binary '','y7k9o2s6jg89cj2qjdhczrpq6o8vv9atsg3okdj6u.jpeg',NULL),(1399,14,'SANDWICH DE VACIO','Vacio braseado en cocción lenta con vegetales, rucula, tomate y mayonesa casera.',350,NULL,'normal',_binary '',_binary '','ttvxslbnqvdrbllj0zehu6xdghwx2zwepfx4m7cmy.jpeg',NULL),(1400,14,'SANDWICH DE LOMO','Bifecitos de lomo a la plancha, lechuga, tomate, jamón cocido, queso tybo, huevo y mayo casera.',380,NULL,'normal',_binary '',_binary '',NULL,NULL),(1401,14,'MILANESA A CABALLO','Milanesa de ternera a la napolitana con papas fritas y huevo a la plancha.',680,NULL,'normal',_binary '',_binary '','aqypz2lqfc2x38gjcfq11yfmh7wftjbwqgobhm8n4.jpeg',NULL),(1402,14,'POLLO','Mix de hojas verdes, tomate cherry, palta,queso tybo, champi, huevo duro, mix de semillas y pollo rebozado.',330,NULL,'normal',_binary '',_binary '',NULL,NULL),(1403,14,'LANGOSTINOS','Mix de hojas verdes, tomate cherry, palta,queso tybo, champi, huevo duro, mix de semillas y langostinos rebozados.',370,NULL,'normal',_binary '',_binary '',NULL,NULL),(1404,14,'Muzzarella','Masa de pizza casera, salsa de tomate, queso muzzarella, aceitunas y orégano.',430,NULL,'vegetarian',_binary '',_binary '',NULL,NULL),(1405,14,'NAPOLITANA CON AJO','Masa de pizza casera, salsa de tomate, queso muzzarella, tomates frescos, ajo, aceitunas y orégano.',460,NULL,'vegetarian',_binary '',_binary '',NULL,NULL),(1406,14,'FUGAZZETTA','Masa de pizza casera, salsa de tomate, queso muzzarella, cebolla,  aceitunas y orégano.',450,NULL,'vegetarian',_binary '',_binary '',NULL,NULL),(1407,14,'JAMON Y MORRON ASADO','Masa de pizza casera, salsa de tomate, queso muzzarella, jamon cocido, morrones asados, aceitunas y orégano.',530,NULL,'normal',_binary '',_binary '',NULL,NULL),(1408,14,'JAMÓN, MORRÓN Y ANCHOAS','Masa de pizza casera, salsa de tomate, queso muzzarella, jamón cocido, morrón asado, anchoas, aceitunas y orégano.',550,NULL,'normal',_binary '',_binary '',NULL,NULL),(1409,14,'CALABRESA','Masa de pizza casera, salsa de tomate, queso muzzarella, salame, aceitunas y orégano.',540,NULL,'normal',_binary '',_binary '',NULL,NULL),(1410,14,'QUESO AZUL Y HONGOS DE PINO','Masa de pizza casera, salsa de tomate, queso muzzarella, queso azul, hongos de pino, aceitunas y orégano.',570,NULL,'vegetarian',_binary '',_binary '',NULL,NULL),(1411,14,'QUESO AZUL Y CEBOLLA CARAMELIZADA','Masa de pizza casera, salsa de tomate, queso muzzarella, queso azul, cebolla caramelizada, aceitunas y orégano.',540,NULL,'vegetarian',_binary '',_binary '',NULL,NULL),(1412,14,'PROVOLONE Y PANCETA','Masa de pizza casera, salsa de tomate, queso muzzarella, queso provolone, panceta salteada, aceitunas y orégano.',580,NULL,'normal',_binary '',_binary '',NULL,NULL),(1413,14,'RUCULA, JAMON CRUDO Y CHERRIES','Masa de pizza casera, salsa de tomate, queso muzzarella, jamón crudo, rucula, cherries y orégano.',570,NULL,'normal',_binary '',_binary '','k0pojg2w0c25eopza5h8mgpg9nltl4b2592nlcde6.jpeg',NULL),(1414,14,'ALFREDO Y POLLO','Masa de pizza casera, salsa de tomate, queso muzzarella, crema de queso y ajo, pollo salteado, champi, aceitunas y orégano.',570,NULL,'normal',_binary '',_binary '',NULL,NULL),(1415,14,'PALMITOS Y SALSA GOLF','Masa de pizza casera, salsa de tomate, queso muzzarella, palmitos, salsa golf, aceitunas y orégano.',580,NULL,'vegetarian',_binary '',_binary '',NULL,NULL),(1416,14,'ANANA','Masa de pizza casera, salsa de tomate, queso muzzarella, ananá, reducción de azúcar negra, aceitunas y orégano.',570,NULL,'vegetarian',_binary '',_binary '',NULL,NULL),(1417,14,'BLONDE','RUBIA. Cerveceria Skallen, IBU 20, % Alcohol 5.5.',0,'110|180','normal',_binary '',_binary '','pxyozs8aoiegou2e16au7wu6hz5mp6ujnnhj5if9k.jpeg',NULL),(1418,14,'SCOTISH','ROJA, Cerveceria Skallen, IBU 25, % Alcohol 4.5.',0,'110|180','normal',_binary '',_binary '','75ktw5jjv681t2s8c5n2zcakn0k9u29vt6cogv1zi.jpeg',NULL),(1419,14,'PORTER','NEGRA- Cervecería Arthur, IBU 25, % Alcohol 4.7.',0,'110|180','normal',_binary '',_binary '','f1rw12wh2ow1c2ydb1fs0akqacwmzwp0hsy9epfs7.jpeg',NULL),(1420,14,'AMERICAN AMBER ALE','ROJA. Cervecería Forellis, IBU 30, % Alcohol 5.5.',0,'110|180','normal',_binary '',_binary '','ih63sm7u6xw3bawt0g5iit5z8yr9oh570tug3lcec.jpeg',NULL),(1421,14,'IPA','RUBIA. Cerveceria Skallen, IBU 40, % Alcohol 5.8.',0,'120|190','normal',_binary '',_binary '','2lmkn6z24bq4jbl963dvdyfodaek4dkxppsmk0zak.jpeg',NULL),(1422,14,'FRUTOS ROJOS','ROJA. Cervecería Skallen, IBU 14, % Alcohol 3.5.',0,'110|180','normal',_binary '',_binary '','oew8kul8dpljy9pwgjse8gcgnhxn87tvl48g2xj8a.jpeg',NULL),(1423,14,'GIN TONIC BEEFEATER','',290,NULL,'normal',_binary '',_binary '','5ofy8woavu3w7axrnrfyhfg5mq93mdjs9iqombgb9.jpeg',NULL),(1424,14,'GIN TONIC BEEFEATER PINK','',330,NULL,'normal',_binary '',_binary '',NULL,NULL),(1425,14,'OLD FASHIONED','',290,NULL,'normal',_binary '',_binary '',NULL,NULL),(1426,14,'MOJITO','',220,NULL,'normal',_binary '',_binary '','6cffocpg72wrg1nsqvov51r3asgdiob0hrxpp4p58.jpeg',NULL),(1427,14,'MOJITO MALIBU','',220,NULL,'normal',_binary '',_binary '','7nh0uj9j5ohqxd89gy94xoclf2gio9dkertn04hrh.jpeg',NULL),(1428,14,'FERNET BRANCA CON COCA','',190,NULL,'normal',_binary '',_binary '',NULL,NULL),(1429,14,'NEGRONI','',280,NULL,'normal',_binary '',_binary '',NULL,NULL),(1430,14,'JAGGER JULEPES','',330,NULL,'normal',_binary '',_binary '',NULL,NULL),(1431,14,'CAMPARI ORANGE','',220,NULL,'normal',_binary '',_binary '',NULL,NULL),(1432,14,'CAMPARI TONIC','',220,NULL,'normal',_binary '',_binary '',NULL,NULL),(1433,14,'CUBA LIBRE','',220,NULL,'normal',_binary '',_binary '',NULL,NULL),(1434,14,'ABSOLUT CON RED BULL','',380,NULL,'normal',_binary '',_binary '',NULL,NULL),(1435,14,'ABSOLUT SABORIZADO CON RED BULL','',430,NULL,'normal',_binary '',_binary '',NULL,NULL),(1436,14,'ABSOLUT CON NARANJA','',350,NULL,'normal',_binary '',_binary '',NULL,NULL),(1437,14,'CARPANO CON POMELO','',180,NULL,'normal',_binary '',_binary '',NULL,NULL),(1438,14,'PEPSI, PEPSI LIGHT','',110,NULL,'normal',_binary '',_binary '','',NULL),(1439,14,'SEVEN UP, SEVEN UP FREE','',110,NULL,'normal',_binary '',_binary '',NULL,NULL),(1440,30,'Santa Julia Reserva Malbec','',650,NULL,'normal',_binary '',_binary '',NULL,NULL),(1441,30,'Santa Julia Malbec','',580,NULL,'normal',_binary '',_binary '',NULL,NULL),(1442,30,'Santa Julia Sauvignnon Blanc','',580,NULL,'normal',_binary '',_binary '',NULL,NULL),(1443,30,'Santa Julia Chardonnay','',580,NULL,'normal',_binary '',_binary '',NULL,NULL),(1444,30,'Santa Julia Chenin Dulce','',570,NULL,'normal',_binary '',_binary '',NULL,NULL),(1445,30,'Santa Julia Cosecha Tardía','',570,NULL,'normal',_binary '',_binary '',NULL,NULL),(1446,30,'Yacochuya Malbec','',4020,NULL,'normal',_binary '',_binary '',NULL,NULL),(1447,30,'San Pedro de Yacochuya Malbec','',1980,NULL,'normal',_binary '',_binary '',NULL,NULL),(1448,30,'San Pedro de Yacochuya Torrontés','',1020,NULL,'normal',_binary '',_binary '',NULL,NULL),(1449,30,'Terrazas Reserva Malbec','',800,NULL,'normal',_binary '',_binary '',NULL,NULL),(1450,30,'Terrazas Cabernet Sauvignon','',800,NULL,'normal',_binary '',_binary '',NULL,NULL),(1451,30,'Terrazas Reserva Chardonnay','',800,NULL,'normal',_binary '',_binary '',NULL,NULL),(1452,30,'Santa Julia Malbec','',350,NULL,'normal',_binary '',_binary '',NULL,NULL),(1453,30,'Santa Julia Chardonay','',350,NULL,'normal',_binary '',_binary '',NULL,NULL),(1454,30,'Finca La Linda Malbec','',460,NULL,'normal',_binary '',_binary '',NULL,NULL),(1455,30,'Finca La Linda Chardonay','',460,NULL,'normal',_binary '',_binary '',NULL,NULL),(1456,30,'Terrazas Malbec','',460,NULL,'normal',_binary '',_binary '',NULL,NULL),(1457,30,'Trumpeter Malbec','',470,NULL,'normal',_binary '',_binary '',NULL,NULL),(1458,30,'Tomero Malbec','',440,NULL,'normal',_binary '',_binary '',NULL,NULL),(1459,30,'Veuve Cliequot','',8260,NULL,'normal',_binary '',_binary '',NULL,NULL),(1460,30,'Chandon Brut Nature','',950,NULL,'normal',_binary '',_binary '',NULL,NULL),(1461,30,'Chandon Extra Brut','',900,NULL,'normal',_binary '',_binary '',NULL,NULL),(1462,30,'Baron B Rosé','',1780,NULL,'normal',_binary '',_binary '',NULL,NULL),(1463,30,'Baron B Brut Nature','',1780,NULL,'normal',_binary '',_binary '',NULL,NULL),(1464,30,'Baron B Extra Brut','',1310,NULL,'normal',_binary '',_binary '',NULL,NULL),(1465,30,'Salentein Extra Brut','',900,NULL,'normal',_binary '',_binary '',NULL,NULL),(1466,30,'Salentein Brut Rosé','',920,NULL,'normal',_binary '',_binary '',NULL,NULL),(1467,30,'Salentein Brut Nature','',920,NULL,'normal',_binary '',_binary '',NULL,NULL),(1468,30,'Salentein Extra Brut 375cc','',480,NULL,'normal',_binary '',_binary '',NULL,NULL),(1469,30,'Familia Caruso Extra Brut','',950,NULL,'normal',_binary '',_binary '',NULL,NULL),(1470,30,'Familia Caruso Extra Brut Rosé','',1010,NULL,'normal',_binary '',_binary '',NULL,NULL),(1471,30,'Familia Caruso Extra Brut 375cc','',670,NULL,'normal',_binary '',_binary '',NULL,NULL),(1472,14,'AGUA CON O SIN GAS','',130,NULL,'normal',_binary '',_binary '',NULL,NULL),(1473,14,'Limonada','',100,NULL,'normal',_binary '',_binary '',NULL,NULL),(1474,14,'Limonada con Naranja o Pomelo y menta','',130,NULL,'normal',_binary '',_binary '','',NULL),(1475,38,'CLÁSICO','Café con leche o té clásico+2 medialunas o criollitos.',210,'120','normal',_binary '',_binary '','',NULL),(1477,38,'COMPLETO','Café con leche o té clásico + 3 medialunas o criollitos + manteca + mermelada + jugo de naranja chico.',240,NULL,'normal',_binary '',_binary '',NULL,NULL),(1478,38,'DE CAMPO','Café con leche o te clásico + 3 tostadas de campo + 2 fetas de jamón + 2 fetas de queso + manteca + mermelada +  jugo de naranja chico.',300,NULL,'normal',_binary '',_binary '',NULL,NULL),(1479,38,'LIGHT','Café con leche o te clásico + 3 tostadas de pan integral negro + queso crema + mermelada + jugo de naranja chico + ensalada de frutas',300,NULL,'normal',_binary '',_binary '',NULL,NULL),(1480,38,'AMERICANO','Café con leche o te clásico + huevos revueltos + panceta o jamón cocido + queso crema + 2 tostadas de pan casero + jugo de naranja chico.',350,NULL,'normal',_binary '',_binary '',NULL,NULL),(1481,38,'PROTEICO','Café con leche o te clásico + huevo revuelto con jamón y queso + palta + hot cake de avena + queso crema + jugo de naranja chico.',380,NULL,'normal',_binary '',_binary '',NULL,NULL),(1482,38,'SALUDABLE','Copa de yogurth, granola y frutas.',240,NULL,'normal',_binary '',_binary '',NULL,NULL),(1483,38,'STAZIONE','Submarino + 1 muffin o porción de budín.',260,NULL,'normal',_binary '',_binary '',NULL,NULL),(1484,38,'SIN TACC','Café con leche o te clásico + porción de budín o pasta frola + alfajorcito de maicena o chocolate.',300,NULL,'normal',_binary '',_binary '',NULL,NULL),(1485,38,'VISTELLO PARA COMPARTIR','2 Té en hebras a elección o 2 limonadas + 2 jugos de naranja chicos + muffin del día o porción de torta del día + 4 bruschettas.',770,NULL,'normal',_binary '',_binary '',NULL,NULL),(1486,38,'CAFÉ CHICO','',120,'120','normal',_binary '',_binary '','',NULL),(1487,38,'CAFÉ EN JARRITO','',130,'130','normal',_binary '',_binary '','',NULL),(1488,38,'CAFÉ DOBLE','',140,'140','normal',_binary '',_binary '','',NULL),(1489,38,'CAFÉ CON LECHE','',150,'150','normal',_binary '',_binary '','',NULL),(1490,38,'CAFÉ CON CREMA','',190,'190','normal',_binary '',_binary '','',NULL),(1491,38,'SUBMARINO','',210,'210','normal',_binary '',_binary '','',NULL),(1492,38,'CAPUCHINO','',230,'230','normal',_binary '',_binary '','',NULL),(1493,38,'CAFÉ IRLANDÉS (con wisky)','',200,NULL,'normal',_binary '',_binary '',NULL,NULL),(1494,30,'Bifes de cuadril','',900,NULL,'normal',_binary '',_binary '',NULL,NULL),(1495,38,'CAFÉ ESCOSES (con Tía María)','',210,NULL,'normal',_binary '',_binary '',NULL,NULL),(1496,38,'CAFÉ VISTELLO (Baileys)','',200,NULL,'normal',_binary '',_binary '',NULL,NULL),(1497,38,'MEDIALUNA DULCE O SALADA','',40,NULL,'normal',_binary '',_binary '',NULL,NULL),(1498,38,'MEDIALUNA RELLENA CON DULCE DE LECHE','',50,NULL,'normal',_binary '',_binary '',NULL,NULL),(1499,38,'CRIOLLITO','',40,NULL,'normal',_binary '',_binary '',NULL,NULL),(1500,38,'TOSTADAS DE PAN DE CAMPO','',60,NULL,'normal',_binary '',_binary '',NULL,NULL),(1501,38,'TOSTADAS DE PAN INTEGRAL','',60,NULL,'normal',_binary '',_binary '',NULL,NULL),(1502,38,'ALFAJOR DE MAICENA O CHOCOLATE','',80,NULL,'normal',_binary '',_binary '',NULL,NULL),(1503,38,'COOKIES','',80,NULL,'normal',_binary '',_binary '',NULL,NULL),(1504,38,'MUFFIN DEL DÍA','',90,NULL,'normal',_binary '',_binary '',NULL,NULL),(1505,38,'PORCIÓN DE BUDÍN','',110,NULL,'normal',_binary '',_binary '',NULL,NULL),(1506,38,'MAFALDA','',110,NULL,'normal',_binary '',_binary '',NULL,NULL),(1507,38,'PORCIÓN DE GRANOLA','',70,NULL,'normal',_binary '',_binary '',NULL,NULL),(1508,38,'ENSALADA DE FRUTAS','',220,NULL,'normal',_binary '',_binary '',NULL,NULL),(1509,38,'MEDIA PORCIÓN DE TORTA','',130,NULL,'normal',_binary '',_binary '',NULL,NULL),(1510,24,'MILANESITA','Milanesa de carne y guarnición.',690,NULL,'normal',_binary '',_binary '','',NULL),(1511,24,'BIFE DE POLLO O CARNE','Bife de carne o pollo con guarnición y bebida',740,NULL,'normal',_binary '',_binary '',NULL,NULL),(1512,24,'GASEOSAS','',120,NULL,'normal',_binary '',_binary '',NULL,NULL),(1513,24,'AGUAS SABORIZADAS','',120,NULL,'normal',_binary '',_binary '',NULL,NULL),(1514,24,'AGUA MINERAL','CON O SIN GAS',120,NULL,'normal',_binary '',_binary '',NULL,NULL),(1515,24,'PARRILLADA COMPLETA','*EMPANADITA CRIOLLA\n*CHORIZO Y MORCILLA\n*ACHURAS\n*CORTES VACUNOS\n*CORTES PORCINOS\n\nACLARACIÓN: La parrilla es individual y no se puede compartir',1180,NULL,'normal',_binary '',_binary '','',NULL),(1516,24,'OJO DE BIFE CON HUESO','',950,NULL,'normal',_binary '',_binary '',NULL,NULL),(1517,24,'PAPAS FRITAS CON HUEVO O ENSALADA A ELECCIÓN','lechuga, tomate, cebolla, repollo, zanahoria, remolacha y huevo duro',0,NULL,'normal',_binary '',_binary '',NULL,NULL),(1518,24,'BIFE DE CHORIZO','',880,NULL,'normal',_binary '',_binary '',NULL,NULL),(1519,24,'MEDALLONES DE LOMO','',950,NULL,'normal',_binary '',_binary '',NULL,NULL),(1520,24,'ASADO DE TIRA','',950,NULL,'normal',_binary '',_binary '',NULL,NULL),(1521,24,'BIFE DE ENTRECOTE','',880,NULL,'normal',_binary '',_binary '',NULL,NULL),(1522,24,'BIFE DE CUADRIL','',950,NULL,'normal',_binary '',_binary '',NULL,NULL),(1523,24,'MATAMBRE','',950,NULL,'normal',_binary '',_binary '',NULL,NULL),(1524,24,'VACIO','',790,NULL,'normal',_binary '',_binary '',NULL,NULL),(1525,24,'SELECCIÓN DE ACHURAS','',770,NULL,'normal',_binary '',_binary '',NULL,NULL),(1526,24,'BROCHETTE DE CARNE','',740,NULL,'normal',_binary '',_binary '',NULL,NULL),(1527,24,'POLLO DESHUESADO','',750,NULL,'normal',_binary '',_binary '',NULL,NULL),(1528,24,'BROCHETTE DE POLLO','GUARNICIÓN: \nPAPAS FRITAS CON HUEVO O ENSALADA A ELECCIÓN\n(lechuga, tomate, cebolla, repollo, zanahoria, remolacha y huevo duro)\n\nACLARACIÓN: Los cortes a la parrilla son individuales y no se pueden compartir.',720,NULL,'normal',_binary '',_binary '','',NULL),(1529,24,'TIRAMISÚ','',240,NULL,'normal',_binary '',_binary '',NULL,NULL),(1530,24,'MOUSSE DE CHOCOLATE','',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(1531,24,'FLAN','',220,NULL,'normal',_binary '',_binary '',NULL,NULL),(1532,24,'BUDIN','',220,NULL,'normal',_binary '',_binary '',NULL,NULL),(1533,24,'ENSALADA DE FRUTAS','',230,NULL,'normal',_binary '',_binary '',NULL,NULL),(1534,24,'BOCHA DE HELADO DOS GUSTOS','',220,NULL,'normal',_binary '',_binary '',NULL,NULL),(1535,24,'POSTRES HELADO','',230,NULL,'normal',_binary '',_binary '',NULL,NULL),(1536,24,'CREPPE DE DULCE DE LECHE','Con helado de crema.',280,NULL,'normal',_binary '',_binary '',NULL,NULL),(1537,24,'ZAPALLO Y FRUTAS EN ALMÍBAR','Con quesillo y helado de crema. Para compartir.',550,NULL,'normal',_binary '',_binary '','',NULL),(1538,24,'QUESO Y DULCE','',260,NULL,'normal',_binary '',_binary '','',NULL),(1539,24,'TÉ','',90,NULL,'normal',_binary '',_binary '',NULL,NULL),(1540,24,'CAFÉ','',100,NULL,'normal',_binary '',_binary '',NULL,NULL),(1541,24,'CAFE EN JARRITO','',110,NULL,'normal',_binary '',_binary '',NULL,NULL),(2307,40,'clásico','Café con leche o infusión, 2 medialunas o criollos. Jugo de naranja.',190,NULL,'normal',_binary '',_binary '',NULL,25),(2308,40,'completo','Café con leche o infusión, 2 medialunas o criollos. Manteca y dulce casero. Jugo de naranja.',220,NULL,'normal',_binary '',_binary '',NULL,26),(2309,40,'light','Café con leche o infusión. Tostada de pan negro. Queso untable y mermelada light. Jugo de naranja. (Opcional con ensalada de frutas $270)',250,NULL,'normal',_binary '',_binary '',NULL,27),(2310,40,'campero','Café con leche o infusión. Tostadas pan de campo. Manteca, dulce, jamón y queso. Jugo de Naranja.',260,NULL,'normal',_binary '',_binary '',NULL,28),(2311,40,'mesón copado - figurella','Copón de Yogurt con granola y frutas de estación.',190,NULL,'normal',_binary '',_binary '',NULL,29),(2312,40,'proteico','Huevo revueltos, jamón y queso, tostadas de campo y ensalada de frutas. Infusión y jugo de naranja.',360,NULL,'normal',_binary '',_binary '',NULL,30),(2313,40,'matero','Set de mate completo por persona.',90,NULL,'normal',_binary '',_binary '',NULL,31),(2314,40,'café chico','',80,NULL,'normal',_binary '',_binary '',NULL,32),(2315,40,'café en jarro','',90,NULL,'normal',_binary '',_binary '',NULL,33),(2316,40,'café doble','',100,NULL,'normal',_binary '',_binary '',NULL,34),(2317,40,'café con leche','',100,NULL,'normal',_binary '',_binary '',NULL,35),(2318,40,'submarino','',120,NULL,'normal',_binary '',_binary '',NULL,36),(2319,40,'capuchino','',120,NULL,'normal',_binary '',_binary '',NULL,37),(2320,40,'té y otras infusiones','',90,NULL,'normal',_binary '',_binary '',NULL,38),(2321,40,'Mesón','Con leche condensada y ralladura de naranja.',180,NULL,'normal',_binary '',_binary '',NULL,39),(2322,40,'Lemmon Pie','',180,NULL,'normal',_binary '',_binary '',NULL,40),(2323,40,'Coco','',180,NULL,'normal',_binary '',_binary '',NULL,41),(2324,40,'Cheesecake','',190,NULL,'normal',_binary '',_binary '',NULL,42),(2325,40,'Marquise de Chocolate','',190,NULL,'normal',_binary '',_binary '',NULL,43),(2326,40,'medialunas','',50,NULL,'normal',_binary '',_binary '',NULL,44),(2327,40,'criollos','',40,NULL,'normal',_binary '',_binary '',NULL,45),(2328,40,'mafalda','',110,NULL,'normal',_binary '',_binary '',NULL,46),(2329,40,'manteca y mermelada','',50,NULL,'normal',_binary '',_binary '',NULL,47),(2330,40,'jugo de naranja','',150,NULL,'normal',_binary '',_binary '',NULL,48),(2331,40,'jugo de arándanos','',180,NULL,'normal',_binary '',_binary '',NULL,49),(2332,40,'huevos revueltos','',110,NULL,'normal',_binary '',_binary '',NULL,50),(2333,40,'porción de tostadas','',50,NULL,'normal',_binary '',_binary '',NULL,51),(2334,40,'porción de tostadas con semillas','',70,NULL,'normal',_binary '',_binary '',NULL,52),(2335,40,'ensalada de frutas','Las frutas pueden variar según estación.',110,NULL,'normal',_binary '',_binary '',NULL,53),(2336,40,'con agua','',170,NULL,'normal',_binary '',_binary '',NULL,54),(2337,40,'con leche','',190,NULL,'normal',_binary '',_binary '',NULL,55),(2338,40,'con jugo de naranja','',190,NULL,'normal',_binary '',_binary '',NULL,56),(2339,40,'smoothies','',190,NULL,'normal',_binary '',_binary '',NULL,57),(2340,40,'jarra de limonada','Con jengibre y menta. Opcional pepino.',210,NULL,'normal',_binary '',_binary '',NULL,58),(2341,40,'tostado de jamón y queso','En pan baguette.',190,NULL,'normal',_binary '',_binary '',NULL,59),(2342,40,'tostado mesón','En pan baguette con tomate y rúcula.',230,NULL,'vegetarian',_binary '',_binary '',NULL,60),(2343,40,'sándwich de jamón crudo','En pan de campo con rúcula y cherry.',270,NULL,'normal',_binary '',_binary '',NULL,61),(2344,40,'sándwich de vegetales frío','Palta, lechuga, tomate y queso crema en pan negro con semillas.',290,NULL,'vegetarian',_binary '',_binary '',NULL,62),(2345,40,'sándwich de salmón','Salmón, rúcula, cherry y queso crema en pan con semillas.',380,NULL,'normal',_binary '',_binary '',NULL,63),(2346,40,'tostas de huevo revuelto','Tostadita con huevo revuelto, jamón natural, queso y verdeo.',190,NULL,'normal',_binary '',_binary '',NULL,64),(2347,40,'tostas mexicanas','Con guacamole.',190,NULL,'vegetarian',_binary '',_binary '',NULL,65),(2348,40,'tostas vegetarianas','Palta, queso crema, cherry y sésamo en pan con semillas.',190,NULL,'vegetarian',_binary '',_binary '',NULL,66),(2349,40,'la bestia','Tomate, lechuga, panceta, cebolla morada, cheddar, huevo y aleoli. Con papas bastón.',390,NULL,'normal',_binary '',_binary '',NULL,67),(2350,40,'egoista','Provolone gratinado, hongos, cebolla, panceta, huevo, barbacoa y aleoli. Con papas bastón.',370,NULL,'normal',_binary '',_binary '',NULL,68),(2351,40,'caprichosa','Tomate, lechuga, palta, provolone gratinado y aleoli. Con papas bastón.',370,NULL,'normal',_binary '',_binary '',NULL,69),(2352,40,'princesita (de pollo)','Pollo crispy, tomate, lechuga, huevo, queso y aleoli. Con papas bastón.',370,NULL,'normal',_binary '',_binary '',NULL,70),(2353,40,'recatada','Garbanzo, rúcula, tomate, queso tybo, cebolla, huevo, mayonesa de apio y aleoli. Con papas bastón.',370,NULL,'vegetarian',_binary '',_binary '',NULL,71),(2354,40,'kustom (lookeada para vos)','Queso provolone rebozado, lechuga, tomate, y huevo. Con papas bastón.',370,NULL,'normal',_binary '',_binary '',NULL,72),(2355,40,'curda','Panceta, queso tybo, lechuga, tomate, y huevo. Con aderezo de cebollas asadas al Malbec. Con papas.',370,NULL,'normal',_binary '',_binary '',NULL,73),(2356,40,'ciclotímica','No te conformás con nada y querés todas.\n*LA BESTIA - *EGOÍSTA - *CAPRICHOSA - *PRINCESITA',620,NULL,'normal',_binary '',_binary '',NULL,74),(2357,40,'lomo completo','Jamón, queso, huevo, lechuga y tomate.\nCon papas bravas.',450,NULL,'normal',_binary '',_binary '',NULL,75),(2358,40,'lomo completo de pollo','Jamón, queso, huevo, lechuga y tomate.\nCon papas bravas.',360,NULL,'normal',_binary '',_binary '',NULL,76),(2359,40,'lomo mediano','Jamón, queso, huevo, lechuga y tomate.\nCon papas bravas.',360,NULL,'normal',_binary '',_binary '',NULL,77),(2360,40,'lomo mediano de pollo','Jamón, queso, huevo, lechuga y tomate.\nCon papas bravas.',290,NULL,'normal',_binary '',_binary '',NULL,78),(2361,40,'lomito al plato','Lomo con jamón, queso y huevo. Acompañado de papas fritas y ensalada.',450,NULL,'normal',_binary '',_binary '',NULL,79),(2362,40,'sándwich de vegetales asados','Berenjenas, zuccini, pimientos, hongos, rúcula y queso. Con papas fritas.',310,NULL,'normal',_binary '',_binary '',NULL,80),(2363,40,'sándwich de vegetales fríos','Palta, lechuga, tomate y queso en pan negro con semillas.',290,NULL,'vegetarian',_binary '',_binary '',NULL,81),(2364,40,'sándwich de salmón','Salmón, rúcula, cherry y queso crema en pan con semillas.',380,NULL,'normal',_binary '',_binary '',NULL,82),(2365,40,'para ellos también','Crocantes de pollo caseritos ó hamburguesa con fritas. Incluye gaseosa.',310,NULL,'normal',_binary '',_binary '',NULL,83),(2366,40,'nuestro taquito bien cabrón','De carne o pollo con vegetales salteados, queso cheddar y un toque de panceta. Ahh... y el infaltable guacamole sale con papas.',440,NULL,'normal',_binary '',_binary '',NULL,84),(2367,40,'taco de vegetales','Berenjenas, zuccini, pimientos, cebolla morada, hongos y queso tybo. Con papas fritas.',430,NULL,'vegetarian',_binary '',_binary '',NULL,85),(2368,40,'ballantines','',350,NULL,'normal',_binary '',_binary '',NULL,86),(2369,40,'johnnie walker red label','',370,NULL,'normal',_binary '',_binary '',NULL,87),(2370,40,'johnnie walker black label','',420,NULL,'normal',_binary '',_binary '',NULL,88),(2371,40,'jack daniels','',400,NULL,'normal',_binary '',_binary '',NULL,89),(2372,40,'famous grouse finest','',400,NULL,'normal',_binary '',_binary '',NULL,90),(2373,40,'gentleman jack','',690,NULL,'normal',_binary '',_binary '',NULL,91),(2374,40,'the macallan fine oak 12 años','',690,NULL,'normal',_binary '',_binary '',NULL,92),(2375,40,'gaseosas','',100,NULL,'normal',_binary '',_binary '',NULL,93),(2376,40,'aguas saborizadas','',100,NULL,'normal',_binary '',_binary '',NULL,94),(2377,40,'agua con y sin gas','',100,NULL,'normal',_binary '',_binary '',NULL,95),(2378,40,'jugo de naranjas','',140,NULL,'normal',_binary '',_binary '',NULL,96),(2379,40,'jugo de arándanos','',170,NULL,'normal',_binary '',_binary '',NULL,97),(2380,40,'licuados con agua','',150,NULL,'normal',_binary '',_binary '',NULL,98),(2381,40,'licuados con leche','',160,NULL,'normal',_binary '',_binary '',NULL,99),(2382,40,'licuados con jugo de naranja','',170,NULL,'normal',_binary '',_binary '',NULL,100),(2383,40,'smoothies','',170,NULL,'normal',_binary '',_binary '',NULL,101),(2384,40,'speed','',120,NULL,'normal',_binary '',_binary '',NULL,102),(2385,40,'jarra de limonada','Con jenjibre y menta. Opcional pepino.',210,NULL,'normal',_binary '',_binary '',NULL,103),(2386,40,'fernet branca','',220,NULL,'normal',_binary '',_binary '',NULL,104),(2387,40,'garibaldi','',220,NULL,'normal',_binary '',_binary '',NULL,105),(2388,40,'gancia','',220,NULL,'normal',_binary '',_binary '',NULL,106),(2389,40,'gin & tonic','',260,NULL,'normal',_binary '',_binary '',NULL,107),(2390,40,'cuba libre','',250,NULL,'normal',_binary '',_binary '',NULL,108),(2391,40,'mojito','',300,NULL,'normal',_binary '',_binary '',NULL,109),(2392,40,'mojito de maracuyá','',300,NULL,'normal',_binary '',_binary '',NULL,110),(2393,40,'famiglia bianchi (red blend)','',400,NULL,'normal',_binary '',_binary '',NULL,111),(2394,40,'famiglia bianchi (white blend)','',400,NULL,'normal',_binary '',_binary '',NULL,112),(2395,40,'famiglia bianchi (rosé blend)','',400,NULL,'normal',_binary '',_binary '',NULL,113),(2396,40,'famiglia bianchi (malbec)','',530,NULL,'normal',_binary '',_binary '',NULL,114),(2397,40,'gauchezco 3/8 (reserva malbec)','',310,NULL,'normal',_binary '',_binary '',NULL,115),(2398,40,'gauchezco clásico (malbec)','',400,NULL,'normal',_binary '',_binary '',NULL,116),(2399,40,'gauchezco clásico (cabernet sauvignon)','',400,NULL,'normal',_binary '',_binary '',NULL,117),(2400,40,'gauchezco (reserva chardonay)','',520,NULL,'normal',_binary '',_binary '',NULL,118),(2401,40,'gauchezco (reserva malbec)','',520,NULL,'normal',_binary '',_binary '',NULL,119),(2402,40,'gauchezco (reserva cabernet sauvignon)','',520,NULL,'normal',_binary '',_binary '',NULL,120),(2403,40,'fond de cave (malbec)','',490,NULL,'normal',_binary '',_binary '',NULL,121),(2404,40,'fond de cave (cabernet sauvignon)','',490,NULL,'normal',_binary '',_binary '',NULL,122),(2405,40,'don david (malbec)','',490,NULL,'normal',_binary '',_binary '',NULL,123),(2406,40,'alma mora (malbec)','',380,NULL,'normal',_binary '',_binary '',NULL,124),(2407,40,'bravio (malbec, cab.sauv., sauv. blanc., blend)','',370,NULL,'normal',_binary '',_binary '',NULL,125),(2408,40,'dada 1 (tinto, malbec y bonarda)','',380,NULL,'normal',_binary '',_binary '',NULL,126),(2409,40,'dada 2 (merlot)','',380,NULL,'normal',_binary '',_binary '',NULL,127),(2410,40,'dada 3 (tinto, cabernet y syrah)','',380,NULL,'normal',_binary '',_binary '',NULL,128),(2411,40,'dada 5 (moscato)','',380,NULL,'normal',_binary '',_binary '',NULL,129),(2412,40,'santa julia (malbec)','',340,NULL,'normal',_binary '',_binary '',NULL,130),(2413,40,'santa julia (sauvignon blanc)','',320,NULL,'normal',_binary '',_binary '',NULL,131),(2414,40,'las perdices 3/8 (malbec)','',320,NULL,'normal',_binary '',_binary '',NULL,132),(2415,40,'las perdices (sauvignon blanc)','',450,NULL,'normal',_binary '',_binary '',NULL,133),(2416,40,'las perdices (rosé)','',430,NULL,'normal',_binary '',_binary '',NULL,134),(2417,40,'las perdices (malbec)','',490,NULL,'normal',_binary '',_binary '',NULL,135),(2418,40,'tomero rose tomero (malbec)','',520,NULL,'normal',_binary '',_binary '',NULL,136),(2419,40,'fabre montmayou (reserva malbec)','',570,NULL,'normal',_binary '',_binary '',NULL,137),(2420,40,'nicassia (red blend)','',860,NULL,'normal',_binary '',_binary '',NULL,138),(2421,40,'alamos (malbec, moscatel)','',530,NULL,'normal',_binary '',_binary '',NULL,139),(2422,40,'cafayate cosecha tardía','',370,NULL,'normal',_binary '',_binary '',NULL,140),(2423,40,'latitud 33 (malbec)','',450,NULL,'normal',_binary '',_binary '',NULL,141),(2424,40,'uxmall (malbec, cabernet, chardonay)','',450,NULL,'normal',_binary '',_binary '',NULL,142),(2425,40,'luigi bosca (malbec)','',980,NULL,'normal',_binary '',_binary '',NULL,143),(2426,40,'copa de vino (las perdices reserva malbec)','',140,NULL,'normal',_binary '',_binary '',NULL,144),(2427,40,'sidra peer x 500 c.c.','',190,NULL,'normal',_binary '',_binary '',NULL,145),(2428,40,'Menú del día 1','Incluye postre y gaseosa o vaso de limonada',380,NULL,'normal',_binary '',_binary '',NULL,146),(2429,40,'Combiná lechuga, tomate, zanahoria y choclo','+ PROTEÍNA A ELEECIÓN\n\n1) Calamares fritos\n2) Langostinos rebozados\n3) Bastoncitos de mozarella\n4) Pollo\n5) Atún',360,NULL,'normal',_binary '',_binary '',NULL,147),(2430,40,'Bife de pollo','',360,NULL,'normal',_binary '',_binary '',NULL,148),(2431,40,'Milanesa de pollo','',360,NULL,'normal',_binary '',_binary '',NULL,149),(2432,40,'Hamburguesa al plato','De carne. Con queso y huevo.',360,NULL,'normal',_binary '',_binary '',NULL,150),(2433,40,'Hamburguesa de garbanzo','',360,NULL,'vegetarian',_binary '',_binary '',NULL,151),(2434,40,'Costeleta de carne','Opcional a caballo',390,NULL,'normal',_binary '',_binary '',NULL,152),(2435,40,'Wrap de vegetales','Hojas verdes, vegetales asados, hongos y cebollas salteadas con queso crema.',330,NULL,'vegetarian',_binary '',_binary '',NULL,153),(2436,40,'Canelones de vegetales','Hojas verdes, vegetales asados, hongos y cebollas salteadas con queso crema.',360,NULL,'vegetarian',_binary '',_binary '',NULL,154),(2437,40,'Lasagna Mesón','Bolognesa, espinaca, ricotta, jamón y queso.',360,NULL,'normal',_binary '',_binary '',NULL,155),(2438,40,'Langostinos','Rebozados o salteados. Arroz, queso crema, palta, cherry, verdeo, sésamo y brotes.',430,NULL,'normal',_binary '',_binary '',NULL,156),(2439,40,'Salmón','Arroz, queso crema, palta, cherry, verdeo, sésamo y brotes.',430,NULL,'normal',_binary '',_binary '',NULL,157),(2440,40,'Pollo','Rebozados o salteados. Arroz, queso crema, palta, cherry, verdeo, sésamo y brotes.',410,NULL,'normal',_binary '',_binary '',NULL,158),(2441,40,'Ceviche','Salmón rosado, cebolla morada, arroz, queso crema, palta, cherry, verdeo, sésamo y brotes.',430,NULL,'normal',_binary '',_binary '',NULL,159),(2442,40,'Calamares','Rabas, arroz, queso crema, palta, cherry, verdeo, sésamo y brotes',430,NULL,'normal',_binary '',_binary '',NULL,160),(2443,40,'Vegetariano','Bastoncitos de muzza, arroz, quedo crema, palta, cherrys, verdeo, sésamo y brotes de soja.',410,NULL,'vegetarian',_binary '',_binary '',NULL,161),(2444,40,'Mum Cuvee extra brut x 750 c.c.','',490,NULL,'normal',_binary '',_binary '',NULL,162),(2445,40,'Dadá 7 (Sparking blanco)','',440,NULL,'normal',_binary '',_binary '',NULL,163),(2446,40,'Dadá 7 (Baby)','',180,NULL,'normal',_binary '',_binary '',NULL,164),(2447,40,'Baby Chandon x 187 c.c.','',230,NULL,'normal',_binary '',_binary '',NULL,165),(2448,40,'Bianchi Estrella extra brut','',550,NULL,'normal',_binary '',_binary '',NULL,166),(2449,40,'Chandon extra brut','',550,NULL,'normal',_binary '',_binary '',NULL,167),(2450,40,'Fca. La Linda extra brut','',600,NULL,'normal',_binary '',_binary '',NULL,168),(2451,40,'Navarro Correas extra brut','',540,NULL,'normal',_binary '',_binary '',NULL,169),(2452,40,'Gauchezco Pinot Noir (espumante)','',590,NULL,'normal',_binary '',_binary '',NULL,170),(2453,40,'Barón B','',1300,NULL,'normal',_binary '',_binary '',NULL,171),(2454,40,'Flan clásico','Flan de leche condensada.',160,NULL,'normal',_binary '',_binary '',NULL,172),(2455,40,'Trifle de maracuyá','Crocante de galletas, mousse de maracuyá y frutas tropicales.',210,NULL,'normal',_binary '',_binary '',NULL,173),(2456,40,'Tiramisú de la casa','Con mascarpone.',210,NULL,'normal',_binary '',_binary '',NULL,174),(2457,40,'Chocotorta','Con helado de dulce de leche.',200,NULL,'normal',_binary '',_binary '',NULL,175),(2458,40,'Brownie con helado de crema','',210,NULL,'normal',_binary '',_binary '',NULL,176),(2459,40,'Mousse de chocolate con frutos rojos','',220,NULL,'normal',_binary '',_binary '',NULL,177),(2460,40,'Pavlova','Torta de merengue, crema y dulce de leche. Con frutas de estación.',220,NULL,'normal',_binary '',_binary '',NULL,178),(2461,40,'Panqueuqes con dulce de leche','',200,NULL,'normal',_binary '',_binary '',NULL,179),(2462,40,'Limón','',120,NULL,'normal',_binary '',_binary '',NULL,185),(2463,40,'Crema Americana','',120,NULL,'normal',_binary '',_binary '',NULL,186),(2464,40,'Dulce de Leche','',120,NULL,'normal',_binary '',_binary '',NULL,187),(2465,40,'Chocolate','',120,NULL,'normal',_binary '',_binary '',NULL,188),(2466,40,'Crocante de pollo','Con salsa barbacoa casera.',350,NULL,'normal',_binary '',_binary '',NULL,189),(2467,40,'Albóndigas de cerdo rellenas','Rellenas de queso en salsa napolitana.',380,NULL,'normal',_binary '',_binary '',NULL,190),(2468,40,'Bastoncitos de Mozarella','',370,NULL,'vegetarian',_binary '',_binary '',NULL,191),(2469,40,'Rabas','',650,NULL,'normal',_binary '',_binary '',NULL,192),(2470,40,'Langostinos rebozados','Con exquisita salsa picante.',650,NULL,'normal',_binary '',_binary '',NULL,193),(2471,40,'Provoleta','',320,NULL,'vegetarian',_binary '',_binary '',NULL,194),(2472,40,'Nachos con chili','Chili de carne y cheddar.',310,NULL,'normal',_binary '',_binary '',NULL,195),(2473,40,'Tortilla de papas','Con chorizo colorado y cebolla.',370,NULL,'normal',_binary '',_binary '',NULL,196),(2474,40,'Hongos rellenos','Op. 1: rellenos de cebolla caramelizada con panceta y queso. Op. 2: rellenos con cuatro quesos.',450,NULL,'vegetarian',_binary '',_binary '',NULL,197),(2475,40,'Bruschetas de hongos','Con cebolla caramelizada y queso parmesano gratinado',340,NULL,'vegetarian',_binary '',_binary '',NULL,198),(2476,40,'Empanaditas chinas de carne (x6)','',330,NULL,'normal',_binary '',_binary '',NULL,199),(2477,40,'Empanaditas chinas de verdura (x6)','',310,NULL,'vegetarian',_binary '',_binary '',NULL,200),(2478,40,'Empanaditas de salmón (x6)','',350,NULL,'normal',_binary '',_binary '',NULL,201),(2479,40,'Tabla \"Mesón\" (2/3 personas)','Rabas, bastoncitos de mozarella, crocantes de pollo, empanaditas chinas y papas bravas.',1250,NULL,'normal',_binary '',_binary '',NULL,202),(2480,40,'Tabla \"Crispy\" (2/3 personas)','Langostinos rebozados, empanaditas de salmón, sorrentinos fritos de jamón y queso, hongos rellenos con cuatro quesos y papas con cheddar.',1350,NULL,'normal',_binary '',_binary '',NULL,203),(2481,40,'Parrillita \"Mesón\" (2/3 personas)','Tabla de matambrito de cerdo, mollejita, bife de chorizo, morcilla y chorizo bombón con papas revueltas y sus ricas salsas.',1450,NULL,'normal',_binary '',_binary '',NULL,204),(2482,40,'Tabla de fiambres (2/3 personas)','Jamón crudo, jamón cocido, salame, bondiola de cerdo, lomo ahumado, queso en fetas, queso azul, queso pategrás, salsa de berenjenas y papas fritas. Con pan casero.',860,NULL,'normal',_binary '',_binary '',NULL,205),(2483,40,'Y por qué no?','Empanadita criolla frita (x1)',60,NULL,'normal',_binary '',_binary '',NULL,206),(2484,40,'Papas Bastón','Con alioli.',190,NULL,'vegetarian',_binary '',_binary '',NULL,207),(2485,40,'Papas Revueltas','Con huevo, panceta, cebollas y verdeo.',380,NULL,'normal',_binary '',_binary '',NULL,208),(2486,40,'Papas Gratinadas','Con queso cheddar y panceta ahumada.',380,NULL,'normal',_binary '',_binary '',NULL,209),(2487,40,'\"La papa\"Mesón','Papas fritas con crema de queso blanco y panceta crocante.',360,NULL,'normal',_binary '',_binary '',NULL,210),(2488,40,'Papas bravas','Papas acompañadas de la clásica salsa picante a base de deliciosos ajíes.',320,NULL,'spicy',_binary '',_binary '',NULL,211),(3072,14,'APA','Cervecería Arthur, IBU 30, % Alcohol 4.9.',0,'120|190','normal',_binary '',_binary '','',NULL),(3073,42,'clásico','Café con leche o infusión, 2 medialunas o criollos. Jugo de naranja.',190,NULL,'normal',_binary '',_binary '',NULL,25),(3074,42,'completo','Café con leche o infusión, 2 medialunas o criollos. Manteca y dulce casero. Jugo de naranja.',220,NULL,'normal',_binary '',_binary '',NULL,26),(3075,42,'light','Café con leche o infusión. Tostada de pan negro. Queso untable y mermelada light. Jugo de naranja. (Opcional con ensalada de frutas $270)',250,NULL,'normal',_binary '',_binary '',NULL,27),(3076,42,'campero','Café con leche o infusión. Tostadas pan de campo. Manteca, dulce, jamón y queso. Jugo de Naranja.',260,NULL,'normal',_binary '',_binary '',NULL,28),(3077,42,'mesón copado - figurella','Copón de Yogurt con granola y frutas de estación.',190,NULL,'normal',_binary '',_binary '',NULL,29),(3078,42,'proteico','Huevo revueltos, jamón y queso, tostadas de campo y ensalada de frutas. Infusión y jugo de naranja.',360,NULL,'normal',_binary '',_binary '',NULL,30),(3079,42,'matero','Set de mate completo por persona.',90,NULL,'normal',_binary '',_binary '',NULL,31),(3080,42,'café chico','',80,NULL,'normal',_binary '',_binary '',NULL,32),(3081,42,'café en jarro','',90,NULL,'normal',_binary '',_binary '',NULL,33),(3082,42,'café doble','',100,NULL,'normal',_binary '',_binary '',NULL,34),(3083,42,'café con leche','',100,NULL,'normal',_binary '',_binary '',NULL,35),(3084,42,'submarino','',120,NULL,'normal',_binary '',_binary '',NULL,36),(3085,42,'capuchino','',120,NULL,'normal',_binary '',_binary '',NULL,37),(3086,42,'té y otras infusiones','',90,NULL,'normal',_binary '',_binary '',NULL,38),(3087,42,'Mesón','Con leche condensada y ralladura de naranja.',180,NULL,'normal',_binary '',_binary '',NULL,39),(3088,42,'Lemmon Pie','',180,NULL,'normal',_binary '',_binary '',NULL,40),(3089,42,'Coco','',180,NULL,'normal',_binary '',_binary '',NULL,41),(3090,42,'Cheesecake','',190,NULL,'normal',_binary '',_binary '',NULL,42),(3091,42,'Marquise de Chocolate','',190,NULL,'normal',_binary '',_binary '',NULL,43),(3092,42,'medialunas','',50,NULL,'normal',_binary '',_binary '',NULL,44),(3093,42,'criollos','',40,NULL,'normal',_binary '',_binary '',NULL,45),(3094,42,'mafalda','',110,NULL,'normal',_binary '',_binary '',NULL,46),(3095,42,'manteca y mermelada','',50,NULL,'normal',_binary '',_binary '',NULL,47),(3096,42,'jugo de naranja','',150,NULL,'normal',_binary '',_binary '',NULL,48),(3097,42,'jugo de arándanos','',180,NULL,'normal',_binary '',_binary '',NULL,49),(3098,42,'huevos revueltos','',110,NULL,'normal',_binary '',_binary '',NULL,50),(3099,42,'porción de tostadas','',50,NULL,'normal',_binary '',_binary '',NULL,51),(3100,42,'porción de tostadas con semillas','',70,NULL,'normal',_binary '',_binary '',NULL,52),(3101,42,'ensalada de frutas','Las frutas pueden variar según estación.',110,NULL,'normal',_binary '',_binary '',NULL,53),(3102,42,'con agua','',170,NULL,'normal',_binary '',_binary '',NULL,54),(3103,42,'con leche','',190,NULL,'normal',_binary '',_binary '',NULL,55),(3104,42,'con jugo de naranja','',190,NULL,'normal',_binary '',_binary '',NULL,56),(3105,42,'smoothies','',190,NULL,'normal',_binary '',_binary '',NULL,57),(3106,42,'jarra de limonada','Con jengibre y menta. Opcional pepino.',210,NULL,'normal',_binary '',_binary '',NULL,58),(3107,42,'tostado de jamón y queso','En pan baguette.',190,NULL,'normal',_binary '',_binary '',NULL,59),(3108,42,'tostado mesón','En pan baguette con tomate y rúcula.',230,NULL,'vegetarian',_binary '',_binary '',NULL,60),(3109,42,'sándwich de jamón crudo','En pan de campo con rúcula y cherry.',270,NULL,'normal',_binary '',_binary '',NULL,61),(3110,42,'sándwich de vegetales frío','Palta, lechuga, tomate y queso crema en pan negro con semillas.',290,NULL,'vegetarian',_binary '',_binary '',NULL,62),(3111,42,'sándwich de salmón','Salmón, rúcula, cherry y queso crema en pan con semillas.',380,NULL,'normal',_binary '',_binary '',NULL,63),(3112,42,'tostas de huevo revuelto','Tostadita con huevo revuelto, jamón natural, queso y verdeo.',190,NULL,'normal',_binary '',_binary '',NULL,64),(3113,42,'tostas mexicanas','Con guacamole.',190,NULL,'vegetarian',_binary '',_binary '',NULL,65),(3114,42,'tostas vegetarianas','Palta, queso crema, cherry y sésamo en pan con semillas.',190,NULL,'vegetarian',_binary '',_binary '',NULL,66),(3115,42,'la bestia','Tomate, lechuga, panceta, cebolla morada, cheddar, huevo y aleoli. Con papas bastón.',390,NULL,'normal',_binary '',_binary '',NULL,67),(3116,42,'egoista','Provolone gratinado, hongos, cebolla, panceta, huevo, barbacoa y aleoli. Con papas bastón.',370,NULL,'normal',_binary '',_binary '',NULL,68),(3117,42,'caprichosa','Tomate, lechuga, palta, provolone gratinado y aleoli. Con papas bastón.',370,NULL,'normal',_binary '',_binary '',NULL,69),(3118,42,'princesita (de pollo)','Pollo crispy, tomate, lechuga, huevo, queso y aleoli. Con papas bastón.',370,NULL,'normal',_binary '',_binary '',NULL,70),(3119,42,'recatada','Garbanzo, rúcula, tomate, queso tybo, cebolla, huevo, mayonesa de apio y aleoli. Con papas bastón.',370,NULL,'vegetarian',_binary '',_binary '',NULL,71),(3120,42,'kustom (lookeada para vos)','Queso provolone rebozado, lechuga, tomate, y huevo. Con papas bastón.',370,NULL,'normal',_binary '',_binary '',NULL,72),(3121,42,'curda','Panceta, queso tybo, lechuga, tomate, y huevo. Con aderezo de cebollas asadas al Malbec. Con papas.',370,NULL,'normal',_binary '',_binary '',NULL,73),(3122,42,'ciclotímica','No te conformás con nada y querés todas.\n*LA BESTIA - *EGOÍSTA - *CAPRICHOSA - *PRINCESITA',620,NULL,'normal',_binary '',_binary '',NULL,74),(3123,42,'lomo completo','Jamón, queso, huevo, lechuga y tomate.\nCon papas bravas.',450,NULL,'normal',_binary '',_binary '',NULL,75),(3124,42,'lomo completo de pollo','Jamón, queso, huevo, lechuga y tomate.\nCon papas bravas.',360,NULL,'normal',_binary '',_binary '',NULL,76),(3125,42,'lomo mediano','Jamón, queso, huevo, lechuga y tomate.\nCon papas bravas.',360,NULL,'normal',_binary '',_binary '',NULL,77),(3126,42,'lomo mediano de pollo','Jamón, queso, huevo, lechuga y tomate.\nCon papas bravas.',290,NULL,'normal',_binary '',_binary '',NULL,78),(3127,42,'lomito al plato','Lomo con jamón, queso y huevo. Acompañado de papas fritas y ensalada.',450,NULL,'normal',_binary '',_binary '',NULL,79),(3128,42,'sándwich de vegetales asados','Berenjenas, zuccini, pimientos, hongos, rúcula y queso. Con papas fritas.',310,NULL,'normal',_binary '',_binary '',NULL,80),(3129,42,'sándwich de vegetales fríos','Palta, lechuga, tomate y queso en pan negro con semillas.',290,NULL,'vegetarian',_binary '',_binary '',NULL,81),(3130,42,'sándwich de salmón','Salmón, rúcula, cherry y queso crema en pan con semillas.',380,NULL,'normal',_binary '',_binary '',NULL,82),(3131,42,'para ellos también','Crocantes de pollo caseritos ó hamburguesa con fritas. Incluye gaseosa.',310,NULL,'normal',_binary '',_binary '',NULL,83),(3132,42,'nuestro taquito bien cabrón','De carne o pollo con vegetales salteados, queso cheddar y un toque de panceta. Ahh... y el infaltable guacamole sale con papas.',440,NULL,'normal',_binary '',_binary '',NULL,84),(3133,42,'taco de vegetales','Berenjenas, zuccini, pimientos, cebolla morada, hongos y queso tybo. Con papas fritas.',430,NULL,'vegetarian',_binary '',_binary '',NULL,85),(3134,42,'ballantines','',350,NULL,'normal',_binary '',_binary '',NULL,86),(3135,42,'johnnie walker red label','',370,NULL,'normal',_binary '',_binary '',NULL,87),(3136,42,'johnnie walker black label','',420,NULL,'normal',_binary '',_binary '',NULL,88),(3137,42,'jack daniels','',400,NULL,'normal',_binary '',_binary '',NULL,89),(3138,42,'famous grouse finest','',400,NULL,'normal',_binary '',_binary '',NULL,90),(3139,42,'gentleman jack','',690,NULL,'normal',_binary '',_binary '',NULL,91),(3140,42,'the macallan fine oak 12 años','',690,NULL,'normal',_binary '',_binary '',NULL,92),(3141,42,'gaseosas','',100,NULL,'normal',_binary '',_binary '',NULL,93),(3142,42,'aguas saborizadas','',100,NULL,'normal',_binary '',_binary '',NULL,94),(3143,42,'agua con y sin gas','',100,NULL,'normal',_binary '',_binary '',NULL,95),(3144,42,'jugo de naranjas','',140,NULL,'normal',_binary '',_binary '',NULL,96),(3145,42,'jugo de arándanos','',170,NULL,'normal',_binary '',_binary '',NULL,97),(3146,42,'licuados con agua','',150,NULL,'normal',_binary '',_binary '',NULL,98),(3147,42,'licuados con leche','',160,NULL,'normal',_binary '',_binary '',NULL,99),(3148,42,'licuados con jugo de naranja','',170,NULL,'normal',_binary '',_binary '',NULL,100),(3149,42,'smoothies','',170,NULL,'normal',_binary '',_binary '',NULL,101),(3150,42,'speed','',120,NULL,'normal',_binary '',_binary '',NULL,102),(3151,42,'jarra de limonada','Con jenjibre y menta. Opcional pepino.',210,NULL,'normal',_binary '',_binary '',NULL,103),(3152,42,'fernet branca','',220,NULL,'normal',_binary '',_binary '',NULL,104),(3153,42,'garibaldi','',220,NULL,'normal',_binary '',_binary '',NULL,105),(3154,42,'gancia','',220,NULL,'normal',_binary '',_binary '',NULL,106),(3155,42,'gin & tonic','',260,NULL,'normal',_binary '',_binary '',NULL,107),(3156,42,'cuba libre','',250,NULL,'normal',_binary '',_binary '',NULL,108),(3157,42,'mojito','',300,NULL,'normal',_binary '',_binary '',NULL,109),(3158,42,'mojito de maracuyá','',300,NULL,'normal',_binary '',_binary '',NULL,110),(3159,42,'famiglia bianchi (red blend)','',400,NULL,'normal',_binary '',_binary '',NULL,111),(3160,42,'famiglia bianchi (white blend)','',400,NULL,'normal',_binary '',_binary '',NULL,112),(3161,42,'famiglia bianchi (rosé blend)','',400,NULL,'normal',_binary '',_binary '',NULL,113),(3162,42,'famiglia bianchi (malbec)','',530,NULL,'normal',_binary '',_binary '',NULL,114),(3163,42,'gauchezco 3/8 (reserva malbec)','',310,NULL,'normal',_binary '',_binary '',NULL,115),(3164,42,'gauchezco clásico (malbec)','',400,NULL,'normal',_binary '',_binary '',NULL,116),(3165,42,'gauchezco clásico (cabernet sauvignon)','',400,NULL,'normal',_binary '',_binary '',NULL,117),(3166,42,'gauchezco (reserva chardonay)','',520,NULL,'normal',_binary '',_binary '',NULL,118),(3167,42,'gauchezco (reserva malbec)','',520,NULL,'normal',_binary '',_binary '',NULL,119),(3168,42,'gauchezco (reserva cabernet sauvignon)','',520,NULL,'normal',_binary '',_binary '',NULL,120),(3169,42,'fond de cave (malbec)','',490,NULL,'normal',_binary '',_binary '',NULL,121),(3170,42,'fond de cave (cabernet sauvignon)','',490,NULL,'normal',_binary '',_binary '',NULL,122),(3171,42,'don david (malbec)','',490,NULL,'normal',_binary '',_binary '',NULL,123),(3172,42,'alma mora (malbec)','',380,NULL,'normal',_binary '',_binary '',NULL,124),(3173,42,'bravio (malbec, cab.sauv., sauv. blanc., blend)','',370,NULL,'normal',_binary '',_binary '',NULL,125),(3174,42,'dada 1 (tinto, malbec y bonarda)','',380,NULL,'normal',_binary '',_binary '',NULL,126),(3175,42,'dada 2 (merlot)','',380,NULL,'normal',_binary '',_binary '',NULL,127),(3176,42,'dada 3 (tinto, cabernet y syrah)','',380,NULL,'normal',_binary '',_binary '',NULL,128),(3177,42,'dada 5 (moscato)','',380,NULL,'normal',_binary '',_binary '',NULL,129),(3178,42,'santa julia (malbec)','',340,NULL,'normal',_binary '',_binary '',NULL,130),(3179,42,'santa julia (sauvignon blanc)','',320,NULL,'normal',_binary '',_binary '',NULL,131),(3180,42,'las perdices 3/8 (malbec)','',320,NULL,'normal',_binary '',_binary '',NULL,132),(3181,42,'las perdices (sauvignon blanc)','',450,NULL,'normal',_binary '',_binary '',NULL,133),(3182,42,'las perdices (rosé)','',430,NULL,'normal',_binary '',_binary '',NULL,134),(3183,42,'las perdices (malbec)','',490,NULL,'normal',_binary '',_binary '',NULL,135),(3184,42,'tomero rose tomero (malbec)','',520,NULL,'normal',_binary '',_binary '',NULL,136),(3185,42,'fabre montmayou (reserva malbec)','',570,NULL,'normal',_binary '',_binary '',NULL,137),(3186,42,'nicassia (red blend)','',860,NULL,'normal',_binary '',_binary '',NULL,138),(3187,42,'alamos (malbec, moscatel)','',530,NULL,'normal',_binary '',_binary '',NULL,139),(3188,42,'cafayate cosecha tardía','',370,NULL,'normal',_binary '',_binary '',NULL,140),(3189,42,'latitud 33 (malbec)','',450,NULL,'normal',_binary '',_binary '',NULL,141),(3190,42,'uxmall (malbec, cabernet, chardonay)','',450,NULL,'normal',_binary '',_binary '',NULL,142),(3191,42,'luigi bosca (malbec)','',980,NULL,'normal',_binary '',_binary '',NULL,143),(3192,42,'copa de vino (las perdices reserva malbec)','',140,NULL,'normal',_binary '',_binary '',NULL,144),(3193,42,'sidra peer x 500 c.c.','',190,NULL,'normal',_binary '',_binary '',NULL,145),(3194,42,'Menú del día 1','Incluye postre y gaseosa o vaso de limonada',380,NULL,'normal',_binary '',_binary '',NULL,146),(3195,42,'Combiná lechuga, tomate, zanahoria y choclo','+ PROTEÍNA A ELEECIÓN\n\n1) Calamares fritos\n2) Langostinos rebozados\n3) Bastoncitos de mozarella\n4) Pollo\n5) Atún',360,NULL,'normal',_binary '',_binary '',NULL,147),(3196,42,'Bife de pollo','',360,NULL,'normal',_binary '',_binary '',NULL,148),(3197,42,'Milanesa de pollo','',360,NULL,'normal',_binary '',_binary '',NULL,149),(3198,42,'Hamburguesa al plato','De carne. Con queso y huevo.',360,NULL,'normal',_binary '',_binary '',NULL,150),(3199,42,'Hamburguesa de garbanzo','',360,NULL,'vegetarian',_binary '',_binary '',NULL,151),(3200,42,'Costeleta de carne','Opcional a caballo',390,NULL,'normal',_binary '',_binary '',NULL,152),(3201,42,'Wrap de vegetales','Hojas verdes, vegetales asados, hongos y cebollas salteadas con queso crema.',330,NULL,'vegetarian',_binary '',_binary '',NULL,153),(3202,42,'Canelones de vegetales','Hojas verdes, vegetales asados, hongos y cebollas salteadas con queso crema.',360,NULL,'vegetarian',_binary '',_binary '',NULL,154),(3203,42,'Lasagna Mesón','Bolognesa, espinaca, ricotta, jamón y queso.',360,NULL,'normal',_binary '',_binary '',NULL,155),(3204,42,'Langostinos','Rebozados o salteados. Arroz, queso crema, palta, cherry, verdeo, sésamo y brotes.',430,NULL,'normal',_binary '',_binary '',NULL,156),(3205,42,'Salmón','Arroz, queso crema, palta, cherry, verdeo, sésamo y brotes.',430,NULL,'normal',_binary '',_binary '',NULL,157),(3206,42,'Pollo','Rebozados o salteados. Arroz, queso crema, palta, cherry, verdeo, sésamo y brotes.',410,NULL,'normal',_binary '',_binary '',NULL,158),(3207,42,'Ceviche','Salmón rosado, cebolla morada, arroz, queso crema, palta, cherry, verdeo, sésamo y brotes.',430,NULL,'normal',_binary '',_binary '',NULL,159),(3208,42,'Calamares','Rabas, arroz, queso crema, palta, cherry, verdeo, sésamo y brotes',430,NULL,'normal',_binary '',_binary '',NULL,160),(3209,42,'Vegetariano','Bastoncitos de muzza, arroz, quedo crema, palta, cherrys, verdeo, sésamo y brotes de soja.',410,NULL,'vegetarian',_binary '',_binary '',NULL,161),(3210,42,'Mum Cuvee extra brut x 750 c.c.','',490,NULL,'normal',_binary '',_binary '',NULL,162),(3211,42,'Dadá 7 (Sparking blanco)','',440,NULL,'normal',_binary '',_binary '',NULL,163),(3212,42,'Dadá 7 (Baby)','',180,NULL,'normal',_binary '',_binary '',NULL,164),(3213,42,'Baby Chandon x 187 c.c.','',230,NULL,'normal',_binary '',_binary '',NULL,165),(3214,42,'Bianchi Estrella extra brut','',550,NULL,'normal',_binary '',_binary '',NULL,166),(3215,42,'Chandon extra brut','',550,NULL,'normal',_binary '',_binary '',NULL,167),(3216,42,'Fca. La Linda extra brut','',600,NULL,'normal',_binary '',_binary '',NULL,168),(3217,42,'Navarro Correas extra brut','',540,NULL,'normal',_binary '',_binary '',NULL,169),(3218,42,'Gauchezco Pinot Noir (espumante)','',590,NULL,'normal',_binary '',_binary '',NULL,170),(3219,42,'Barón B','',1300,NULL,'normal',_binary '',_binary '',NULL,171),(3220,42,'Flan clásico','Flan de leche condensada.',160,NULL,'normal',_binary '',_binary '',NULL,172),(3221,42,'Trifle de maracuyá','Crocante de galletas, mousse de maracuyá y frutas tropicales.',210,NULL,'normal',_binary '',_binary '',NULL,173),(3222,42,'Tiramisú de la casa','Con mascarpone.',210,NULL,'normal',_binary '',_binary '',NULL,174),(3223,42,'Chocotorta','Con helado de dulce de leche.',200,NULL,'normal',_binary '',_binary '',NULL,175),(3224,42,'Brownie con helado de crema','',210,NULL,'normal',_binary '',_binary '',NULL,176),(3225,42,'Mousse de chocolate con frutos rojos','',220,NULL,'normal',_binary '',_binary '',NULL,177),(3226,42,'Pavlova','Torta de merengue, crema y dulce de leche. Con frutas de estación.',220,NULL,'normal',_binary '',_binary '',NULL,178),(3227,42,'Panqueuqes con dulce de leche','',200,NULL,'normal',_binary '',_binary '',NULL,179),(3228,42,'Limón','',120,NULL,'normal',_binary '',_binary '',NULL,185),(3229,42,'Crema Americana','',120,NULL,'normal',_binary '',_binary '',NULL,186),(3230,42,'Dulce de Leche','',120,NULL,'normal',_binary '',_binary '',NULL,187),(3231,42,'Chocolate','',120,NULL,'normal',_binary '',_binary '',NULL,188),(3232,42,'Crocante de pollo','Con salsa barbacoa casera.',350,NULL,'normal',_binary '',_binary '',NULL,189),(3233,42,'Albóndigas de cerdo rellenas','Rellenas de queso en salsa napolitana.',380,NULL,'normal',_binary '',_binary '',NULL,190),(3234,42,'Bastoncitos de Mozarella','',370,NULL,'vegetarian',_binary '',_binary '',NULL,191),(3235,42,'Rabas','',650,NULL,'normal',_binary '',_binary '',NULL,192),(3236,42,'Langostinos rebozados','Con exquisita salsa picante.',650,NULL,'normal',_binary '',_binary '',NULL,193),(3237,42,'Provoleta','',320,NULL,'vegetarian',_binary '',_binary '',NULL,194),(3238,42,'Nachos con chili','Chili de carne y cheddar.',310,NULL,'normal',_binary '',_binary '',NULL,195),(3239,42,'Tortilla de papas','Con chorizo colorado y cebolla.',370,NULL,'normal',_binary '',_binary '',NULL,196),(3240,42,'Hongos rellenos','Op. 1: rellenos de cebolla caramelizada con panceta y queso. Op. 2: rellenos con cuatro quesos.',450,NULL,'vegetarian',_binary '',_binary '',NULL,197),(3241,42,'Bruschetas de hongos','Con cebolla caramelizada y queso parmesano gratinado',340,NULL,'vegetarian',_binary '',_binary '',NULL,198),(3242,42,'Empanaditas chinas de carne (x6)','',330,NULL,'normal',_binary '',_binary '',NULL,199),(3243,42,'Empanaditas chinas de verdura (x6)','',310,NULL,'vegetarian',_binary '',_binary '',NULL,200),(3244,42,'Empanaditas de salmón (x6)','',350,NULL,'normal',_binary '',_binary '',NULL,201),(3245,42,'Tabla \"Mesón\" (2/3 personas)','Rabas, bastoncitos de mozarella, crocantes de pollo, empanaditas chinas y papas bravas.',1250,NULL,'normal',_binary '',_binary '',NULL,202),(3246,42,'Tabla \"Crispy\" (2/3 personas)','Langostinos rebozados, empanaditas de salmón, sorrentinos fritos de jamón y queso, hongos rellenos con cuatro quesos y papas con cheddar.',1350,NULL,'normal',_binary '',_binary '',NULL,203),(3247,42,'Parrillita \"Mesón\" (2/3 personas)','Tabla de matambrito de cerdo, mollejita, bife de chorizo, morcilla y chorizo bombón con papas revueltas y sus ricas salsas.',1450,NULL,'normal',_binary '',_binary '',NULL,204),(3248,42,'Tabla de fiambres (2/3 personas)','Jamón crudo, jamón cocido, salame, bondiola de cerdo, lomo ahumado, queso en fetas, queso azul, queso pategrás, salsa de berenjenas y papas fritas. Con pan casero.',860,NULL,'normal',_binary '',_binary '',NULL,205),(3249,42,'Y por qué no?','Empanadita criolla frita (x1)',60,NULL,'normal',_binary '',_binary '',NULL,206),(3250,42,'Papas Bastón','Con alioli.',190,NULL,'vegetarian',_binary '',_binary '',NULL,207),(3251,42,'Papas Revueltas','Con huevo, panceta, cebollas y verdeo.',380,NULL,'normal',_binary '',_binary '',NULL,208),(3252,42,'Papas Gratinadas','Con queso cheddar y panceta ahumada.',380,NULL,'normal',_binary '',_binary '',NULL,209),(3253,42,'\"La papa\"Mesón','Papas fritas con crema de queso blanco y panceta crocante.',360,NULL,'normal',_binary '',_binary '',NULL,210),(3254,42,'Papas bravas','Papas acompañadas de la clásica salsa picante a base de deliciosos ajíes.',320,NULL,'spicy',_binary '',_binary '',NULL,211),(3328,38,'BRUSCHETTA','De jamón serrano, hojas de rúcula, tomates secos sobre queso de hierbas.',350,NULL,'normal',_binary '',_binary '',NULL,NULL),(3329,38,'POLLO CONFIT','Con aderezo de mostaza y queso blanco, hojas de estación y crujiente de cebolla',420,NULL,'normal',_binary '',_binary '',NULL,NULL),(3330,38,'RABAS','A la provenzal y limón',630,NULL,'normal',_binary '',_binary '',NULL,NULL),(3331,38,'PROVOLETA','En hierro fundido con oliva y orégano.',360,NULL,'normal',_binary '',_binary '',NULL,NULL),(3332,38,'ENTRADA STAZIONE','Empanada criolla, empanada de calabaza a los 4 quesos y empanada de jamón cocido, mozzarella y albahaca.',350,NULL,'normal',_binary '',_binary '',NULL,NULL),(3333,38,'EMPANADAS CRIOLLAS (c/u)','Al horno o fritas',100,NULL,'normal',_binary '',_binary '',NULL,NULL),(3334,38,'TABLA CRIOLLA','Jamón cocido, jamón crudo, bondiola, lomo de cerdo ahumado, salame de la colonia, queso gruyere, queso roquefort, queso pategras y queso tybo. Berenjena ahumada, aceitunas marinadas y escabeche de vegetales',1140,NULL,'normal',_binary '',_binary '',NULL,NULL),(3335,38,'TABLA DE MAR (para 3 personas)','Langostinos rebozados, rabas, pescado frito, aros de cebolla, papas bastón, paté de berenjenas ahumadas y escabeche de vegetales.',1780,NULL,'normal',_binary '',_binary '',NULL,NULL),(3336,38,'DE AVE, CALABAZA Y CILANTRO','De ave, calabaza y cilantro',280,NULL,'normal',_binary '',_binary '',NULL,NULL),(3337,38,'DE VEGETALES','',280,NULL,'vegetarian',_binary '',_binary '',NULL,NULL),(3338,38,'CAPRESSE','Tomates, mozzarella, albahaca y olivas  negras (sin TACC)',570,NULL,'normal',_binary '',_binary '',NULL,NULL),(3339,38,'VISTELLO','Salmón ahumado, laminas de pepino, chips de remolacha, queso de lima y hojas verdes de estación.',650,NULL,'normal',_binary '',_binary '',NULL,NULL),(3340,38,'CESAR','Lechuga repollada, pollo deshilachado, bacon, crutones, parmesano.',460,NULL,'normal',_binary '',_binary '',NULL,NULL),(3341,38,'VEGETALES AL RESCOLDO','Berenjenas, cebollas y pimientos ahumados, queso bajas calorías, hojas de rúcula. Sin TACC.',440,NULL,'normal',_binary '',_binary '',NULL,NULL),(3342,38,'EMINCÉ DE LOMO','En crema de hongos, acompañado de espárragos tiernos envueltos en jamón crudo y quiche de tomates asados, mozzarella y rúcula.',780,NULL,'normal',_binary '',_binary '',NULL,NULL),(3343,38,'OJO DE BIFE (para 2 personas)','Acompañado de papas gratinadas, chimichurri clásico y salsa criolla de vegetales asados. Sin TACC.',1350,NULL,'normal',_binary '',_binary '',NULL,NULL),(3344,38,'PECHUGA BBQ','Pechuga de pollo y bacon en salsa BBQ, aros de cebolla y ensalada coleslaw.',540,NULL,'normal',_binary '',_binary '',NULL,NULL),(3345,38,'SALMÓN HORNEADO','Con crute de hierbas, ravioles fritos de puerros, cebolla y puré de ají amarillo.',1100,NULL,'normal',_binary '',_binary '',NULL,NULL),(3346,38,'SORRENTINOS DE SALMÓN','Salmón, puerro y parmesano.\nSALSAS: Filetto (Tomates, ajo, cebolla, aceite de oliva y albahaca)\n-Crema\n-Bolognesa (ternera picada, cebolla, zanahoria y vino tinto)\nParissiene (pollo deshilachado, puerro, bacon, hongos, vino blanco y crema)',580,NULL,'normal',_binary '',_binary '','',NULL),(3347,38,'SORRENTINOS DE JAMÓN','Jamón cocido, mozzarella y albahaca.\nSALSAS: Filetto (Tomates, ajo, cebolla, aceite de oliva y albahaca)\n-Crema\n-Bolognesa (ternera picada, cebolla, zanahoria y vino tinto)\nParissiene (pollo deshilachado, puerro, bacon, hongos, vino blanco y crema)',560,NULL,'normal',_binary '',_binary '','',NULL),(3348,38,'CANELONES','De espinaca, parmesano y ricota\nSALSAS: Filetto (Tomates, ajo, cebolla, aceite de oliva y albahaca)\n-Crema\n-Bolognesa (ternera picada, cebolla, zanahoria y vino tinto)\nParissiene (pollo deshilachado, puerro, bacon, hongos, vino blanco y crema)',580,NULL,'normal',_binary '',_binary '','nq0ta45hsg0erp5vx2vx49ceu1y9z2zuvo9f9yh5o.jpeg',NULL),(3349,38,'ÑOQUIS DE PAPA','SALSAS: Filetto (Tomates, ajo, cebolla, aceite de oliva y albahaca)\n-Crema\n-Bolognesa (ternera picada, cebolla, zanahoria y vino tinto)\nParissiene (pollo deshilachado, puerro, bacon, hongos, vino blanco y crema)',390,NULL,'normal',_binary '',_binary '','572pxomlq1jlwo10nn5o9s053sbdv22yb7n5za3n5.jpeg',NULL),(3350,38,'TAGLIATELLES','SALSAS: Filetto (Tomates, ajo, cebolla, aceite de oliva y albahaca)\n-Crema\n-Bolognesa (ternera picada, cebolla, zanahoria y vino tinto)\nParissiene (pollo deshilachado, puerro, bacon, hongos, vino blanco y crema)',440,NULL,'normal',_binary '',_binary '','',NULL),(3351,38,'LASAGNA','Jamón, queso y espinaca\nSALSAS: Filetto (Tomates, ajo, cebolla, aceite de oliva y albahaca)\n-Crema\n-Bolognesa (ternera picada, cebolla, zanahoria y vino tinto)\nParissiene (pollo deshilachado, puerro, bacon, hongos, vino blanco y crema)',650,NULL,'normal',_binary '',_binary '','',NULL),(3356,38,'ENTRECOTTE (250 gr)','Tiempo aprox. de cocción 20-30 min.',770,NULL,'normal',_binary '',_binary '',NULL,NULL),(3357,38,'BIFE DE CHORIZO (500gr)','Tiempo aprox. de cocción 30-40 min.',1050,NULL,'normal',_binary '',_binary '',NULL,NULL),(3358,38,'EMINCÉ (250 gr)','Tiempo de cocción aprox. 20-30 min.',750,NULL,'normal',_binary '',_binary '',NULL,NULL),(3359,38,'PECHUGA AL LIMÓN','',490,NULL,'normal',_binary '',_binary '',NULL,NULL),(3360,38,'MUSLO AL LIMÓN','',490,NULL,'normal',_binary '',_binary '',NULL,NULL),(3361,38,'SALMÓN ROSADO','',890,NULL,'normal',_binary '',_binary '',NULL,NULL),(3362,38,'MATAMBRE DE TERNERA (Opcional a la pizza)','',630,NULL,'normal',_binary '',_binary '',NULL,NULL),(3363,38,'BONDIOLA BRASEADA','',550,NULL,'normal',_binary '',_binary '',NULL,NULL),(3364,38,'MILANESA DE TERNERA','',620,NULL,'normal',_binary '',_binary '','w6yutt7j59zr4tcc0oeq004brpt0t067gpv96osle.jpeg',NULL),(3365,38,'MILANESA DE TERNERA (opción napolitana)','',730,NULL,'normal',_binary '',_binary '',NULL,NULL),(3366,38,'SUPREMA DE POLLO','',570,NULL,'normal',_binary '',_binary '',NULL,NULL),(3367,38,'SUPREMA DE POLLO (opción napolitana)','',680,NULL,'normal',_binary '',_binary '',NULL,NULL),(3368,38,'PESCA DEL DÍA','',540,NULL,'normal',_binary '',_binary '',NULL,NULL),(3369,38,'Sauté de vegetales','',0,NULL,'normal',_binary '',_binary '',NULL,NULL),(3370,38,'Vegetales al wok','',0,NULL,'normal',_binary '',_binary '',NULL,NULL),(3371,38,'Puré de papas','',0,NULL,'normal',_binary '',_binary '',NULL,NULL),(3372,38,'Puré de calabaza','',0,NULL,'normal',_binary '',_binary '',NULL,NULL),(3373,38,'Papa bastón','',0,NULL,'normal',_binary '',_binary '',NULL,NULL),(3374,38,'Papas españolas','',0,NULL,'normal',_binary '',_binary '',NULL,NULL),(3375,38,'CHESSEE BURGUER','Medallón de carne y queso cheddar acompañado con papas fritas',360,NULL,'normal',_binary '',_binary '',NULL,NULL),(3376,38,'MILANESA DE TERNERA O SUPREMA DE POLLO','Acompañado de papas fritas, puré de papas o puré de calabaza.',360,NULL,'normal',_binary '',_binary '',NULL,NULL),(3377,38,'NUGGETS DE POLLO','Acompañado de papas fritas, puré de papas o puré de calabaza.',360,NULL,'normal',_binary '',_binary '',NULL,NULL),(3378,38,'SPAGUETTIS','Con salsa filetto o crema',360,NULL,'normal',_binary '',_binary '',NULL,NULL),(3379,38,'ÑOQUIS DE PAPA','Con salsa fliletto o crema',360,NULL,'normal',_binary '',_binary '',NULL,NULL),(3380,38,'CREMME BRULEÉ','',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(3381,38,'PANQUEQUES','Con dulce de leche y helado de crema',320,NULL,'normal',_binary '',_binary '',NULL,NULL),(3382,38,'COPA VISTELLO','Frutillas o durazno, dulce de leche, merengue molido, crema chantillí y helado de crema.',320,NULL,'normal',_binary '',_binary '',NULL,NULL),(3383,38,'ENSALADA DE FRUTAS','',220,NULL,'normal',_binary '',_binary '',NULL,NULL),(3384,38,'CREMAS HELADAS (2 bochas)','-chocolate\n-frutilla\n-dulce de leche\n- limón\n- vainilla\n- crema',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(3385,38,'BOMBÓN ESCOCES','',310,NULL,'normal',_binary '',_binary '',NULL,NULL),(3386,38,'BOMBÓN SUIZO','',310,NULL,'normal',_binary '',_binary '',NULL,NULL),(3387,11,'medialuna','',40,NULL,'normal',_binary '',_binary '',NULL,NULL),(3388,11,'criollito','',40,NULL,'normal',_binary '',_binary '',NULL,NULL),(3389,11,'tostadas','',60,NULL,'normal',_binary '',_binary '',NULL,NULL),(3390,11,'manteca, mermelada, dulce de leche c/u.','',40,NULL,'normal',_binary '',_binary '',NULL,NULL),(3391,11,'mafalda  (medialuna con jamon y queso)','',80,NULL,'normal',_binary '',_binary '',NULL,NULL),(3392,11,'alfajores','',130,NULL,'normal',_binary '',_binary '',NULL,NULL),(3393,11,'pasta frola','',135,NULL,'normal',_binary '',_binary '',NULL,NULL),(3394,11,'brownie','',190,NULL,'normal',_binary '',_binary '',NULL,NULL),(3395,11,'Terrazas de los Andes Reserva Malbec','',899,NULL,'normal',_binary '',_binary '',NULL,NULL),(3396,11,'Terrazas de los Andes reserva Cabernet Sauvignon','',900,NULL,'normal',_binary '',_binary '',NULL,NULL),(3397,11,'Altos del Plata Malbec','',520,NULL,'normal',_binary '',_binary '',NULL,NULL),(3398,11,'Terrazas de los Andes Reserva Malbec','',900,NULL,'normal',_binary '',_binary '',NULL,NULL),(3399,11,'Terrazas de los Andes Reserva Cabernet Sauvignon','',900,NULL,'normal',_binary '',_binary '',NULL,NULL),(3400,11,'Altos del PLata Malbec','',514,NULL,'normal',_binary '',_binary '',NULL,NULL),(3401,11,'Altos del Plata Cabernet Sauvignon','',520,NULL,'normal',_binary '',_binary '',NULL,NULL),(3402,11,'Terrazas de los Andes Reserva Chardonnay','',900,NULL,'normal',_binary '',_binary '',NULL,NULL),(3403,11,'Altos del Plata Chardonnay','',520,NULL,'normal',_binary '',_binary '',NULL,NULL),(3404,11,'Latitud 33° Malbec','',385,NULL,'normal',_binary '',_binary '',NULL,NULL),(3405,11,'Latitud 33° cabernet Sauvignon','',385,NULL,'normal',_binary '',_binary '',NULL,NULL),(3406,11,'Latitud 33° Tempranillo','',385,NULL,'normal',_binary '',_binary '',NULL,NULL),(3407,11,'Latitud 33° Syrah','',385,NULL,'normal',_binary '',_binary '',NULL,NULL),(3408,11,'Latitud 33° Chardonnay','',385,NULL,'normal',_binary '',_binary '',NULL,NULL),(3409,11,'Latitud 33° Dulce Natural','',385,NULL,'normal',_binary '',_binary '',NULL,NULL),(3410,11,'D.V. Catena Cabernet Sauvignon - Malbec','',950,NULL,'normal',_binary '',_binary '',NULL,NULL),(3411,11,'Saint Felicien Malbec','',900,NULL,'normal',_binary '',_binary '',NULL,NULL),(3412,11,'Saint Felicien Malbec 3/8','',520,NULL,'normal',_binary '',_binary '',NULL,NULL),(3413,11,'Saint Felicien Cabernet Sauvignon','',900,NULL,'normal',_binary '',_binary '',NULL,NULL),(3414,11,'Nicasia Blend Malbec','',750,NULL,'normal',_binary '',_binary '',NULL,NULL),(3415,11,'Nicasia Cabernet Franc','',750,NULL,'normal',_binary '',_binary '',NULL,NULL),(3416,11,'Alamos Malbec','',650,NULL,'normal',_binary '',_binary '',NULL,NULL),(3417,11,'Alamos Cabernet Sauvignon','',650,NULL,'normal',_binary '',_binary '',NULL,NULL),(3418,11,'Alto Uxmal Cabernet Sauvignon - Merlot','',650,NULL,'normal',_binary '',_binary '',NULL,NULL),(3419,11,'Uxmal Malbec','',450,NULL,'normal',_binary '',_binary '',NULL,NULL),(3420,11,'Uxmal Cabernet Sauvignon','',450,NULL,'normal',_binary '',_binary '',NULL,NULL),(3421,27,'TRUMPETER','',0,'760|-','normal',_binary '',_binary '',NULL,NULL),(3422,38,'TOSTADO DE JAMÓN Y QUESO','Pan inglés blanco, jamón cocido, queso tybo y manteca. Acompañado de papa chips.',220,NULL,'normal',_binary '',_binary '','',NULL),(3423,27,'SANT FELIPE','',0,'350|220','normal',_binary '',_binary '',NULL,NULL),(3424,27,'TRAPICHE','',0,'260|160','normal',_binary '',_binary '',NULL,NULL),(3425,27,'FOND DE CAVE','',0,'490|-','normal',_binary '',_binary '','',NULL),(3426,27,'NORTON','',0,'210|160','normal',_binary '',_binary '',NULL,NULL),(3427,27,'DON VALENTIN','',0,'260|180','normal',_binary '',_binary '',NULL,NULL),(3428,27,'VALMONT TINTO / BLANCO','',0,'320|200','normal',_binary '',_binary '',NULL,NULL),(3429,27,'CASTEL BLANCO','',0,'280|-','normal',_binary '',_binary '',NULL,NULL),(3430,27,'LATITUD 33','',0,'420|-','normal',_binary '',_binary '',NULL,NULL),(3431,38,'SANDWICH CLÁSICO','Jamón cocido, queso tybo y manteca. Acompañado de papas bastón.',270,NULL,'normal',_binary '',_binary '','',NULL),(3432,27,'LOPEZ TINTO / BLANCO','',0,'310|210','normal',_binary '',_binary '',NULL,NULL),(3433,27,'COLON B/CH','',0,'190|-','normal',_binary '',_binary '',NULL,NULL),(3434,27,'COLON CAB.SAUV','',0,'220|-','normal',_binary '',_binary '',NULL,NULL),(3435,27,'COLON MALBEC','',0,'220|-','normal',_binary '',_binary '',NULL,NULL),(3436,27,'ETCHART PRIVADO','',0,'220|-','normal',_binary '',_binary '',NULL,NULL),(3437,27,'SANTA JULIA VARIETALES','',0,'340|240','normal',_binary '',_binary '',NULL,NULL),(3438,38,'PRIMAVERA','Jamón cocido, queso tybo, lechuga, tomate y huevo duro. Acompañado con papas bastón.',320,NULL,'normal',_binary '',_binary '','',NULL),(3439,38,'DE JAMÓN SERRANO EN PAN DE PARMESANO','Jamón crudo, queso tybo, hojas de rúcula, tomates y aderezo romesco. Acompañado de papas bastón.',320,NULL,'normal',_binary '',_binary '','',NULL),(3440,38,'DE SALMÓN EN PAN DE SÉSAMO','Salmón ahumado, hojas de rucula, palta y queso de hierbas. Acompañado de papas bastón.',400,NULL,'normal',_binary '',_binary '','',NULL),(3441,38,'CLUB SANDWICH','Pollo a la plancha, queso pategrás, panceta, lechuga y tomate. Acompañado de papas bastón.',380,NULL,'normal',_binary '',_binary '','',NULL),(3442,38,'CLUB SANDWICH','Pollo a la plancha, queso pategrás, panceta, lechuga y tomate. Acompañado de papas bastón.',380,NULL,'normal',_binary '',_binary '',NULL,NULL),(3443,38,'HAMBURGUESA SIMPLE','Medallón de carne, queso, lechuga, tomate. Acompañado de papas bastón.',380,NULL,'normal',_binary '',_binary '','',NULL),(3444,38,'HAMBURGUESA VISTELLO','Dos medallones de carne, cheddar, bacon y huevo. Acompañado de papas bastón. (abierta o cerrada)',430,NULL,'normal',_binary '',_binary '','',NULL),(3445,38,'LOMITO COMPLETO','Pan baguette, bife de lomo, jamón, queso, lechuga, tomate y huevo. Acompañado de papas bastón.',470,NULL,'normal',_binary '',_binary '','',NULL),(3446,43,'EJECUTIVO · SET MENU','Plato principal, postre y bebida (gaseosa, agua o vino).\nMain course, dessert and beberage (water, soda or wine).',0,NULL,'normal',_binary '',_binary '','',NULL),(3447,43,'INFANTIL · KID’S MENU','Plato principal, postre y gaseosa.\nMain course, dessert and soda.\n\nNiños hasta 10 años.\nChildren up to 10 years old.',500,NULL,'normal',_binary '',_binary '','',NULL),(3448,38,'WRAP DE POLLO','Tortilla de trigo, pollo deshilachado, cebolla caramelizada, tomates asados y queso. Acompañado de salsa cheddar y totopos.',0,NULL,'normal',_binary '',_binary '','',NULL),(3449,43,'PARRILLA LIBRE CON CABRITO','Acompañada por guarnición libre.\nCavery / Free grill with kid and free side dishes.',1300,NULL,'normal',_binary '',_binary '','',NULL),(3450,38,'VEGETALES ASADOS EN PAN INTEGRAL','Con salsa romesco, queso tybo, rúcula y tomates. Acompañados de papas bastón.',340,NULL,'normal',_binary '',_binary '','',NULL),(3451,43,'Embutidos / Sausages','Chorizo y morcilla.\nPork sausage and blood sausage.',0,NULL,'normal',_binary '',_binary '','',NULL),(3452,43,'Carnes / Meat cuts','Matambre (ternera y cerdo), costilla (ternera y cerdo), bife de ternera, costeleta de cerdo, colita de cuadril, vacío, tapa de cuadril, cabrito.\nRose meat (pork and veal), rib (pork and veal), flank, veal steak, pork chop, tri-tip, kid.',0,NULL,'normal',_binary '',_binary '',NULL,NULL),(3453,38,'PAPAS FRITAS','',470,NULL,'normal',_binary '',_binary '',NULL,NULL),(3454,38,'PAPAS FRITAS CON CHEDDAR Y BACON','',310,NULL,'normal',_binary '',_binary '',NULL,NULL),(3455,43,'Achuras / Offal','Molleja, riñón, chinchulín.\nSweetbread, kidney, chitterlings.',0,NULL,'normal',_binary '',_binary '',NULL,NULL),(3456,38,'PAPAS FRITAS CON HUEVO REVUELTO','',290,NULL,'normal',_binary '',_binary '',NULL,NULL),(3457,38,'TOTOPOS CON CHEDDAR','',180,NULL,'normal',_binary '',_binary '',NULL,NULL),(3458,38,'SANDWICH CRIOLLO EN PAN DE CAMPO','Bifes de entrecot, huevo, chimichurri, lechuga y tomate. Acompañado de papas bastón.',430,NULL,'normal',_binary '',_binary '','',NULL),(3459,38,'MOZZARELLA','Masa casera, salsa de tomates frescos, aceite de oliva, queso mozzarella y oregano.',450,NULL,'normal',_binary '',_binary '','',NULL),(3460,38,'ESPECIAL DE JAMÓN','Masa casera, salsa de tomates frescos, aceite de oliva, jamón cocido y queso mozzarella.',520,NULL,'normal',_binary '',_binary '',NULL,NULL),(3461,38,'DE SALMÓN','Masa casera, salsa de tomates frescos, aceite de oliva, salmón y queso mozzarella.',690,NULL,'normal',_binary '',_binary '',NULL,NULL),(3462,38,'NAPOLITANA','Masa casera, salsa de tomates frescos, aceite de oliva, queso mozzarella, rodajas de tomates y aceite de ajo.',610,NULL,'normal',_binary '',_binary '',NULL,NULL),(3463,38,'SERRANA','Masa casera, salsa de tomates frescos. aceite de oliva, queso mozzarella, hojas frescas de rucula, jamón crudo y parmesano.',680,NULL,'normal',_binary '',_binary '',NULL,NULL),(3464,38,'4 QUESOS Y LOMO AHUMADO','Masa casera, salsa de tomates frescos, aceite de oliva, queso mozzarella, queso gruyere, queso fontina, queso parmesano, lomito de cerdo ahumado y aceite de ajo.',680,NULL,'normal',_binary '',_binary '',NULL,NULL),(3465,38,'Aguas saborizadas','Pomelo, manzana, pera.',110,NULL,'normal',_binary '',_binary '',NULL,NULL),(3466,38,'Agua con o sin gas','',110,NULL,'normal',_binary '',_binary '',NULL,NULL),(3467,38,'Gaseosas linea Coca-Cola','',110,NULL,'normal',_binary '',_binary '',NULL,NULL),(3468,38,'Jugo de naranja exprimido mediano','',130,NULL,'normal',_binary '',_binary '',NULL,NULL),(3469,38,'Jugo de naranja exprimido grande','',170,NULL,'normal',_binary '',_binary '',NULL,NULL),(3470,38,'Licuados con agua','',170,NULL,'normal',_binary '',_binary '',NULL,NULL),(3471,38,'Licuados con leche','',190,NULL,'normal',_binary '',_binary '',NULL,NULL),(3472,38,'Limonada individual','Con menta y jengibre.',170,NULL,'normal',_binary '',_binary '','',NULL),(3473,38,'Jarra de limonada','Con menta y jengibre',310,NULL,'normal',_binary '',_binary '',NULL,NULL),(3474,38,'Smoothies','',190,NULL,'normal',_binary '',_binary '',NULL,NULL),(3475,38,'STELLA ARTOIS 330CC','',180,NULL,'normal',_binary '',_binary '','',NULL),(3476,38,'STELLA ARTOIS RUBIA 1 LITRO','',320,NULL,'normal',_binary '',_binary '','',NULL),(3477,38,'STELLA ARTOIS NEGRA 1 LITRO','',320,NULL,'normal',_binary '',_binary '',NULL,NULL),(3478,43,'PARRILLA LIBRE SIN CABRITO','Acompañada por guarnición libre.\nCavery / Free grill without kid accompanied by free side dishes.',1100,NULL,'normal',_binary '',_binary '',NULL,NULL),(3479,43,'CABRITO LIBRE','Acompañada por guarnición libre.\nKid carvery with free side dishes.',1700,NULL,'normal',_binary '',_binary '',NULL,NULL),(3480,43,'PARRILLA','Dos cortes de parrilla acompañados por una guarnición.\nTwo grilled pieces of meat with a side dish.',800,NULL,'normal',_binary '',_binary '',NULL,NULL),(3481,43,'PORCIÓN DE CUADRIL','Dos unidades de cuadril acompañados por una guarnición.\nTwo grilled pieces of rump with a side dish.',800,NULL,'normal',_binary '',_binary '',NULL,NULL),(3482,43,'PORCIÓN DE CABRITO','Acompañado por una guarnición.\nPortion of kid with a side of dish.',1300,NULL,'normal',_binary '',_binary '',NULL,NULL),(3483,43,'GUARNICIONES / SIDE DISHES','Ensalada, papas fritas o papa fritas con huevo.\nSalads, french fries and french fries with scrambled eggs.',150,NULL,'normal',_binary '',_binary '',NULL,NULL),(3484,43,'ÑOQUIS','Gnocchi.',550,NULL,'normal',_binary '',_binary '',NULL,NULL),(3485,43,'ÑOQUIS DE ESPINACA','Spinach gnocchi.',550,NULL,'normal',_binary '',_binary '',NULL,NULL),(3486,43,'RAVIOLES DE CARNE Y VERDURA','Meat and vegetables ravioli.',600,NULL,'normal',_binary '',_binary '',NULL,NULL),(3487,43,'RAVIOLES DE CABRITO','Kid ravioli.',700,NULL,'normal',_binary '',_binary '',NULL,NULL),(3488,43,'RAVIOLES DE QUESO Y VERDURA','Cheese and vegetables ravioli.',600,NULL,'normal',_binary '',_binary '',NULL,NULL),(3489,43,'SORRENTINOS DE JAMÓN Y QUESO','Ham and cheese sorrentinos.',600,NULL,'normal',_binary '',_binary '',NULL,NULL),(3490,43,'SORRENTINOS DE RICOTA Y JAMÓN','Ricotta and ham sorrentinos.',600,NULL,'normal',_binary '',_binary '',NULL,NULL),(3491,43,'SORRENTINOS DE CALABACÍN','Pumpkin sorrentinos.',600,NULL,'normal',_binary '',_binary '',NULL,NULL),(3492,43,'SORRENTINOS CAPRESE','Caprese sorrentinos.',600,NULL,'normal',_binary '',_binary '',NULL,NULL),(3493,43,'CANELONES DE CARNE Y VERDURA','Meat and vegetables canneloni.',600,NULL,'normal',_binary '',_binary '',NULL,NULL),(3494,43,'LASAGNA DE CARNE, JAMÓN Y QUESO','Meat and vegetables canneloni.',600,NULL,'normal',_binary '',_binary '',NULL,NULL),(3495,43,'TALLARINES AL HUEVO','Tagliatelle.',500,NULL,'normal',_binary '',_binary '',NULL,NULL),(3496,43,'CREMA / CREAM','',0,NULL,'normal',_binary '',_binary '',NULL,NULL),(3497,43,'FILETTO','',0,NULL,'normal',_binary '',_binary '',NULL,NULL),(3498,43,'ROQUEFORT','',0,NULL,'normal',_binary '',_binary '',NULL,NULL),(3499,43,'PARISIENNE','',0,NULL,'normal',_binary '',_binary '',NULL,NULL),(3500,43,'BUFFET DEGUSTACIÓN DE PLATOS DULCES','Dessert tasting buffet.',150,NULL,'normal',_binary '',_binary '',NULL,NULL),(3501,43,'HELADO','Ice cream.',150,NULL,'normal',_binary '',_binary '',NULL,NULL),(3502,43,'CAFÉ','Espresso.',100,NULL,'normal',_binary '',_binary '',NULL,NULL),(3503,43,'CAFÉ EN JARRO','Americano.',100,NULL,'normal',_binary '',_binary '',NULL,NULL),(3504,43,'CAFÉ DOBLE','Double espresso.',100,NULL,'normal',_binary '',_binary '',NULL,NULL),(3505,43,'CAFÉ EN JARRO CON CREMA','Americano with cream.',100,NULL,'normal',_binary '',_binary '',NULL,NULL),(3506,43,'TÉ','Tea.',100,NULL,'normal',_binary '',_binary '',NULL,NULL),(3507,43,'Alfredo Roca Malbec','',0,'500|850','normal',_binary '',_binary '',NULL,NULL),(3508,43,'Alfredo Roca Cabernet Sauvignon','',0,'-|850','normal',_binary '',_binary '',NULL,NULL),(3509,43,'Alfredo Roca Chardonnay','',0,'-|850','normal',_binary '',_binary '',NULL,NULL),(3510,43,'Alfredo Roca Torrontes','',0,'-|850','normal',_binary '',_binary '',NULL,NULL),(3511,43,'Alfredo Roca Chenin','',0,'-|850','normal',_binary '',_binary '',NULL,NULL),(3512,24,'RICARDO SANTOS','Malbec / Cabernet',852,NULL,'normal',_binary '',_binary '',NULL,NULL),(3513,43,'Alfredo Roca “Family Reserve” Malbec','',0,'-|2300','normal',_binary '',_binary '',NULL,NULL),(3514,43,'Alfredo Roca champagne Brut Nature','',0,'-|1200','normal',_binary '',_binary '',NULL,NULL),(3515,43,'Alfredo Roca Cosecha Tardía Chardonnay (500cc)','',0,'-|1100','normal',_binary '',_binary '',NULL,NULL),(3516,43,'IQUE','',0,'-|-','normal',_binary '',_binary '',NULL,NULL),(3517,43,'Estancia Mendoza Roble','',0,'350|450','normal',_binary '',_binary '',NULL,NULL),(3518,43,'Trapiche','',0,'300|450','normal',_binary '',_binary '',NULL,NULL),(3519,43,'Pink Rosado de Malbec','',0,'-|-','normal',_binary '',_binary '',NULL,NULL),(3520,43,'Santa Julia','',0,'350|500','normal',_binary '',_binary '',NULL,NULL),(3521,43,'Elementos','',0,'-|500','normal',_binary '',_binary '',NULL,NULL),(3522,43,'Gauchezco','',0,'-|500','normal',_binary '',_binary '',NULL,NULL),(3523,43,'Navarro Correas Colección Privada','',0,'-|-','normal',_binary '',_binary '',NULL,NULL),(3524,43,'Alma Mora','',0,'-|500','normal',_binary '',_binary '',NULL,NULL),(3525,43,'Alambrado by Santa Julia','',0,'-|750','normal',_binary '',_binary '',NULL,NULL),(3526,43,'Tomero','',0,'400|700','normal',_binary '',_binary '',NULL,NULL),(3527,43,'Fond de Cave','',0,'-|650','normal',_binary '',_binary '',NULL,NULL),(3528,43,'Finca La Linda','',0,'500|700','normal',_binary '',_binary '',NULL,NULL),(3529,43,'Gauchezco Reserva','',0,'500|600','normal',_binary '',_binary '',NULL,NULL),(3530,43,'Álamos','',0,'-|800','normal',_binary '',_binary '',NULL,NULL),(3531,43,'Enrique Foster Reserva Malbec','',0,'-|-','normal',_binary '',_binary '',NULL,NULL),(3532,43,'Trumpeter','',0,'-|1200','normal',_binary '',_binary '',NULL,NULL),(3533,43,'Fond de Cave Reserva','',0,'-|1200','normal',_binary '',_binary '',NULL,NULL),(3534,43,'Los Helechos','',0,'-|1000','normal',_binary '',_binary '',NULL,NULL),(3535,43,'Nieto Senetiner','',0,'400|750','normal',_binary '',_binary '',NULL,NULL),(3536,24,'sapo de otro pozo','',1092,NULL,'normal',_binary '',_binary '',NULL,NULL),(3537,43,'Zuccardi Q','',0,'-|1800','normal',_binary '',_binary '',NULL,NULL),(3538,43,'Saint Felicien','',0,'700|1200','normal',_binary '',_binary '',NULL,NULL),(3539,43,'Bacán','',0,'-|-','normal',_binary '',_binary '',NULL,NULL),(3540,43,'Alto Las Hormigas','',0,'-|1000','normal',_binary '',_binary '',NULL,NULL),(3541,24,'perro callejero','',804,NULL,'normal',_binary '',_binary '',NULL,NULL),(3542,43,'Gauchezco Oro','',0,'-|1650','normal',_binary '',_binary '',NULL,NULL),(3543,43,'Enrique Foster Ed. Limitada','',0,'-|-','normal',_binary '',_binary '',NULL,NULL),(3544,43,'Bramare Luján de Cuyo','',0,'-|2400','normal',_binary '',_binary '',NULL,NULL),(3545,43,'Luigi Bosca Reserva','',0,'-|1200','normal',_binary '',_binary '',NULL,NULL),(3546,43,'Rutini','',0,'-|2800','normal',_binary '',_binary '',NULL,NULL),(3547,43,'Foster Firmado','',0,'-|5000','normal',_binary '',_binary '',NULL,NULL),(3548,43,'Bramare Marchiori','',0,'-|8500','normal',_binary '',_binary '',NULL,NULL),(3549,43,'Estancia Mendoza Roble','',0,'-|450','normal',_binary '',_binary '',NULL,NULL),(3550,43,'Trapiche','',0,'-|450','normal',_binary '',_binary '',NULL,NULL),(3551,24,'animal malbec','malbec de Ernesto catena',900,NULL,'normal',_binary '',_binary '',NULL,NULL),(3552,43,'Santa Julia','',0,'-|500','normal',_binary '',_binary '',NULL,NULL),(3553,43,'Elementos','',0,'-|500','normal',_binary '',_binary '',NULL,NULL),(3554,43,'Gauchezco','',0,'-|500','normal',_binary '',_binary '',NULL,NULL),(3555,43,'Alma Mora','',0,'-|500','normal',_binary '',_binary '',NULL,NULL),(3556,43,'Navarro Correas Colección Privada','',0,'-|-','normal',_binary '',_binary '',NULL,NULL),(3557,43,'Tomero','',0,'-|700','normal',_binary '',_binary '',NULL,NULL),(3558,43,'Fond de Cave','',0,'-|650','normal',_binary '',_binary '',NULL,NULL),(3559,43,'Finca La Linda','',0,'-|700','normal',_binary '',_binary '',NULL,NULL),(3560,24,'petite fleur','malbec de Michel Rolland',1044,NULL,'normal',_binary '',_binary '',NULL,NULL),(3561,43,'Gauchezco Reserva','',0,'-|600','normal',_binary '',_binary '',NULL,NULL),(3562,43,'Trumpeter','',0,'-|1200','normal',_binary '',_binary '',NULL,NULL),(3563,43,'Zuccardi Q','',0,'-|1800','normal',_binary '',_binary '',NULL,NULL),(3564,24,'killka','malbec',582,NULL,'normal',_binary '',_binary '',NULL,NULL),(3565,43,'Fond de Cave Reserva','',0,'-|1200','normal',_binary '',_binary '',NULL,NULL),(3566,43,'Luigi Bosca Reserva','',0,'-|1600','normal',_binary '',_binary '',NULL,NULL),(3567,43,'Bramare Luján de Cuyo','',0,'-|2500','normal',_binary '',_binary '',NULL,NULL),(3568,43,'Bramare Marchiori','',0,'-|8500','normal',_binary '',_binary '',NULL,NULL),(3569,43,'Santa Julia','',0,'-|500','normal',_binary '',_binary '',NULL,NULL),(3570,43,'Finca La Linda','',0,'-|700','normal',_binary '',_binary '',NULL,NULL),(3571,43,'Gauchezco Reserva','',0,'-|650','normal',_binary '',_binary '',NULL,NULL),(3572,43,'Santa Julia','',0,'-|500','normal',_binary '',_binary '',NULL,NULL),(3573,43,'Alma Mora','',0,'-|500','normal',_binary '',_binary '',NULL,NULL),(3574,43,'Navarro Correas Colección Privada','',0,'-|-','normal',_binary '',_binary '',NULL,NULL),(3575,43,'Tomero','',0,'-|700','normal',_binary '',_binary '',NULL,NULL),(3576,43,'Fond de Cave','',0,'-|650','normal',_binary '',_binary '',NULL,NULL),(3577,43,'Finca La Linda','',0,'-|700','normal',_binary '',_binary '',NULL,NULL),(3578,43,'Saint Felicien','',0,'-|1200','normal',_binary '',_binary '',NULL,NULL),(3579,43,'Luigi Bosca Reserva','',0,'-|1200','normal',_binary '',_binary '',NULL,NULL),(3580,43,'Trapiche','',0,'-|450','normal',_binary '',_binary '',NULL,NULL),(3581,43,'Santa Julia','',0,'-|500','normal',_binary '',_binary '',NULL,NULL),(3582,43,'Cafayate Cosecha Tardía','',0,'-|450','normal',_binary '',_binary '',NULL,NULL),(3583,43,'Etchart Privado','',0,'-|450','normal',_binary '',_binary '',NULL,NULL),(3584,43,'Elementos','',0,'-|500','normal',_binary '',_binary '',NULL,NULL),(3585,43,'Cafayate Reserva','',0,'-|750','normal',_binary '',_binary '',NULL,NULL),(3586,43,'Rutini Cabernet-Malbec','',0,'-|2000','normal',_binary '',_binary '',NULL,NULL),(3587,43,'D.V. Catena Zapata Cabernet-Malbec','',0,'-|1800','normal',_binary '',_binary '',NULL,NULL),(3588,43,'D.V. Catena Zapata Malbec - Malbec','',0,'-|2500','normal',_binary '',_binary '',NULL,NULL),(3589,43,'Dilema Rosado Dulce','',0,'-|450','normal',_binary '',_binary '',NULL,NULL),(3590,43,'Santa Julia Syrah Rose','',0,'-|500','normal',_binary '',_binary '',NULL,NULL),(3591,43,'Finca La Linda Rose','',0,'-|700','normal',_binary '',_binary '',NULL,NULL),(3592,43,'Dilema Blanco Natural','',0,'-|450','normal',_binary '',_binary '',NULL,NULL),(3593,43,'Santa Julia Chenin','',0,'-|500','normal',_binary '',_binary '',NULL,NULL),(3594,43,'Santa Julia','',0,'-|-','normal',_binary '',_binary '',NULL,NULL),(3595,43,'Poético','',0,'-|-','normal',_binary '',_binary '',NULL,NULL),(3596,43,'Santa Julia','',0,'-|500','normal',_binary '',_binary '',NULL,NULL),(3597,43,'Alma Mora','',0,'-|-','normal',_binary '',_binary '',NULL,NULL),(3598,43,'Estancia Mendoza','',600,NULL,'normal',_binary '',_binary '',NULL,NULL),(3599,43,'Nieto Senetiner','',800,NULL,'normal',_binary '',_binary '',NULL,NULL),(3600,43,'Santa Julia','',0,NULL,'normal',_binary '',_binary '',NULL,NULL),(3601,43,'Finca La Linda','',700,NULL,'normal',_binary '',_binary '',NULL,NULL),(3602,43,'Baron B','',1900,NULL,'normal',_binary '',_binary '',NULL,NULL),(3603,43,'Luigi Bosca','',1350,NULL,'normal',_binary '',_binary '',NULL,NULL),(3604,43,'Estancia Mendoza','',650,NULL,'normal',_binary '',_binary '',NULL,NULL),(3605,43,'Finca La Linda','',750,NULL,'normal',_binary '',_binary '',NULL,NULL),(3606,43,'Nieto Senetiner','',850,NULL,'normal',_binary '',_binary '',NULL,NULL),(3607,43,'Baron B','',2400,NULL,'normal',_binary '',_binary '',NULL,NULL),(3608,43,'Luigi Bosca','',1650,NULL,'normal',_binary '',_binary '',NULL,NULL),(3609,43,'Baron B','',2300,NULL,'normal',_binary '',_binary '',NULL,NULL),(3610,43,'Finca La Linda Rose','',800,NULL,'normal',_binary '',_binary '',NULL,NULL),(3611,43,'Veuve Clicquot','',6500,NULL,'normal',_binary '',_binary '',NULL,NULL),(3612,43,'Don Perignon','',20000,NULL,'normal',_binary '',_binary '',NULL,NULL),(3613,43,'Agua mineral c/s gas','',150,NULL,'normal',_binary '',_binary '',NULL,NULL),(3614,43,'Agua saborizada','',150,NULL,'normal',_binary '',_binary '',NULL,NULL),(3615,43,'Gaseosa linea Coca Cola','',150,NULL,'normal',_binary '',_binary '',NULL,NULL),(3616,43,'Jugo de Naranja','',150,NULL,'normal',_binary '',_binary '',NULL,NULL),(3617,43,'Chopp','',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(3618,43,'Heineken (330cc)','',185,NULL,'normal',_binary '',_binary '',NULL,NULL),(3619,43,'Sol','',200,NULL,'normal',_binary '',_binary '',NULL,NULL),(3620,43,'Imperial Negra','',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(3621,24,'killka','cabernet',582,NULL,'normal',_binary '',_binary '',NULL,NULL),(3622,24,'ala colorada','cabernet franc',1008,NULL,'normal',_binary '',_binary '',NULL,NULL),(3623,24,'exploración la consulta','malbec',1116,NULL,'normal',_binary '',_binary '',NULL,NULL),(3624,24,'enemigo','malbec',1488,NULL,'normal',_binary '',_binary '',NULL,NULL),(3625,24,'enemigo','cabernet franc',1188,NULL,'normal',_binary '',_binary '',NULL,NULL),(3626,24,'patron santiago','',1968,NULL,'normal',_binary '',_binary '','',NULL),(3627,24,'patron santiago gran reserva','',1992,NULL,'normal',_binary '',_binary '',NULL,NULL),(3628,24,'pura sangre','malbec/cabernet sauvignon',1122,NULL,'normal',_binary '',_binary '','',NULL),(3629,24,'carmelo patti','cabernet sauvignon',1080,NULL,'normal',_binary '',_binary '',NULL,NULL),(3630,24,'clos de los siete','blend',1020,NULL,'normal',_binary '',_binary '',NULL,NULL),(3631,24,'rutini','malbec',2004,NULL,'normal',_binary '',_binary '',NULL,NULL),(3632,24,'rutini','cabernet sauvignon',2004,NULL,'normal',_binary '',_binary '',NULL,NULL),(3633,24,'rutini','chardonnay',1476,NULL,'normal',_binary '',_binary '',NULL,NULL),(3634,24,'rutini','cabernet malbec',1332,NULL,'normal',_binary '',_binary '',NULL,NULL),(3635,24,'trumpeter','reserva',1068,NULL,'normal',_binary '',_binary '',NULL,NULL),(3636,24,'trumpeter','malbec',864,NULL,'normal',_binary '',_binary '',NULL,NULL),(3637,24,'trumpeter','cabernet sauvignon',840,NULL,'normal',_binary '',_binary '',NULL,NULL),(3638,24,'trumpeter','chardonnay',840,NULL,'normal',_binary '',_binary '',NULL,NULL),(3639,24,'primus','malbec',2280,NULL,'normal',_binary '',_binary '',NULL,NULL),(3640,24,'reserve','cabernet sauvignon',816,NULL,'normal',_binary '',_binary '',NULL,NULL),(3641,24,'reserve','malbec',816,NULL,'normal',_binary '',_binary '',NULL,NULL),(3642,24,'reserve','merlot',816,NULL,'normal',_binary '',_binary '',NULL,NULL),(3643,24,'reserve','pinot noir',816,NULL,'normal',_binary '',_binary '',NULL,NULL),(3644,24,'reserve','chardonnay',816,NULL,'normal',_binary '',_binary '',NULL,NULL),(3645,24,'reserve','sauvignon blanc',816,NULL,'normal',_binary '',_binary '',NULL,NULL),(3646,24,'gala 1','',2376,NULL,'normal',_binary '',_binary '',NULL,NULL),(3647,24,'reserve','malbec',1344,NULL,'normal',_binary '',_binary '',NULL,NULL),(3648,24,'reserve','malbec cabernet sauvig',1188,NULL,'normal',_binary '',_binary '',NULL,NULL),(3649,24,'reserve','chardonnay',900,NULL,'normal',_binary '',_binary '',NULL,NULL),(3650,24,'finca la linda','malbec',792,NULL,'normal',_binary '',_binary '',NULL,NULL),(3651,24,'finca la linda','cabernet',804,NULL,'normal',_binary '',_binary '',NULL,NULL),(3652,24,'finca la linda','chardonnay',756,NULL,'normal',_binary '',_binary '',NULL,NULL),(3653,24,'finca la linda','rose',756,NULL,'normal',_binary '',_binary '',NULL,NULL),(3654,24,'clos du molin','',684,NULL,'normal',_binary '',_binary '',NULL,NULL),(3655,24,'latitud 33','malbec',648,NULL,'normal',_binary '',_binary '',NULL,NULL),(3656,24,'castel','',636,NULL,'normal',_binary '',_binary '',NULL,NULL),(3657,24,'dv catena','cabernet cabernet',1776,NULL,'normal',_binary '',_binary '',NULL,NULL),(3658,24,'dv catena','malbec malbec',1584,NULL,'normal',_binary '',_binary '',NULL,NULL),(3659,24,'dv catena','cabernet malbec',1212,NULL,'normal',_binary '',_binary '',NULL,NULL),(3660,24,'angelica zapata','malbec alta',2304,NULL,'normal',_binary '',_binary '',NULL,NULL),(3661,24,'angelica zapata','cab. franc alta',1766,NULL,'normal',_binary '',_binary '',NULL,NULL),(3662,24,'saint felicien','malbec',948,NULL,'normal',_binary '',_binary '',NULL,NULL),(3663,24,'saint felicien','cab. sauvignon',936,NULL,'normal',_binary '',_binary '',NULL,NULL),(3664,24,'saint felicien','sauvignon blanc',936,NULL,'normal',_binary '',_binary '',NULL,NULL),(3665,24,'nicasia','malbec blend',912,NULL,'normal',_binary '',_binary '',NULL,NULL),(3666,24,'nicasia','cabernet franc',888,NULL,'normal',_binary '',_binary '',NULL,NULL),(3667,24,'alamos reserve','malbec',810,NULL,'normal',_binary '',_binary '',NULL,NULL),(3668,24,'alamos seleccion','malbec',780,NULL,'normal',_binary '',_binary '',NULL,NULL),(3669,24,'alamos seleccion','cab. sauvignon',744,NULL,'normal',_binary '',_binary '',NULL,NULL),(3670,24,'pulenta estate','malbec',1260,NULL,'normal',_binary '',_binary '',NULL,NULL),(3671,24,'pulenta estate','cabernet sauv',1260,NULL,'normal',_binary '',_binary '',NULL,NULL),(3672,24,'pulenta estate','sauvignon blanc',0,NULL,'normal',_binary '',_binary '',NULL,NULL),(3673,24,'santa julia reserva','malbec',648,NULL,'normal',_binary '',_binary '',NULL,NULL),(3674,24,'santa julia','malbec',576,NULL,'normal',_binary '',_binary '',NULL,NULL),(3675,24,'santa julia','sauvignon blanc',576,NULL,'normal',_binary '',_binary '',NULL,NULL),(3676,24,'santa julia','chardonnay',576,NULL,'normal',_binary '',_binary '',NULL,NULL),(3677,24,'santa julia','chenin dulce',564,NULL,'normal',_binary '',_binary '',NULL,NULL),(3678,24,'santa julia','cosecha tardia',564,NULL,'normal',_binary '',_binary '',NULL,NULL),(3679,24,'familia caruso','malbec reserva',912,NULL,'normal',_binary '',_binary '',NULL,NULL),(3680,24,'familia caruso','cabernet sauvignon reserva',912,NULL,'normal',_binary '',_binary '',NULL,NULL),(3681,24,'familia caruso','bonarda reserva',912,NULL,'normal',_binary '',_binary '',NULL,NULL),(3682,24,'familia caruso','torrontes',804,NULL,'normal',_binary '',_binary '',NULL,NULL),(3683,24,'portillo','malbec',588,NULL,'normal',_binary '',_binary '',NULL,NULL),(3684,24,'portillo','rose malbec',588,NULL,'normal',_binary '',_binary '',NULL,NULL),(3685,24,'portillo','sauvignon blanc',588,NULL,'normal',_binary '',_binary '',NULL,NULL),(3686,24,'tomero','malbec',720,NULL,'normal',_binary '',_binary '',NULL,NULL),(3687,24,'tomero','cabernet franc',648,NULL,'normal',_binary '',_binary '',NULL,NULL),(3688,24,'cafayate reserva','torrontés',660,NULL,'normal',_binary '',_binary '',NULL,NULL),(3689,24,'cafayate','torrontés',552,NULL,'normal',_binary '',_binary '',NULL,NULL),(3690,24,'reserva don juan','',1308,NULL,'normal',_binary '',_binary '',NULL,NULL),(3691,24,'las perdices reserva','malbec',888,NULL,'normal',_binary '',_binary '',NULL,NULL),(3692,24,'las perdices reserva','cabernet sauv',888,NULL,'normal',_binary '',_binary '',NULL,NULL),(3693,24,'las perdices','malbec',744,NULL,'normal',_binary '',_binary '',NULL,NULL),(3694,24,'las perdices','cabernet sauv',744,NULL,'normal',_binary '',_binary '',NULL,NULL),(3695,24,'yacochuya','malbec',4020,NULL,'normal',_binary '',_binary '',NULL,NULL),(3696,24,'san perdo de yacochuya','malbec',1980,NULL,'normal',_binary '',_binary '',NULL,NULL),(3697,24,'san pedro de yacochuya','torrontés',1020,NULL,'normal',_binary '',_binary '',NULL,NULL),(3698,24,'fond de cave reserva','cab franc',852,NULL,'normal',_binary '',_binary '',NULL,NULL),(3699,24,'fond de cave reserva','malbec',852,NULL,'normal',_binary '',_binary '',NULL,NULL),(3700,24,'alto uxmal','malbec',744,NULL,'normal',_binary '',_binary '',NULL,NULL),(3701,24,'uxmal','malbec',672,NULL,'normal',_binary '',_binary '',NULL,NULL),(3702,38,'CORONA 710 CC','',350,NULL,'normal',_binary '',_binary '',NULL,NULL),(3703,24,'uxmal','cabernet sauvignon',672,NULL,'normal',_binary '',_binary '',NULL,NULL),(3704,38,'CORONA 355 CC','',220,NULL,'normal',_binary '',_binary '',NULL,NULL),(3705,24,'terrazas reserva','malbec',804,NULL,'normal',_binary '',_binary '',NULL,NULL),(3706,38,'FERNET CON COCA','',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(3707,38,'CAMPARI ORANGE','',230,NULL,'normal',_binary '',_binary '',NULL,NULL),(3708,24,'terrazas reserva','cabernet sauvignon',804,NULL,'normal',_binary '',_binary '',NULL,NULL),(3709,38,'WISKY RED LABEL','',300,NULL,'normal',_binary '',_binary '',NULL,NULL),(3710,24,'terrazas reserva','chardonnay',804,NULL,'normal',_binary '',_binary '',NULL,NULL),(3711,38,'WISKY BLACK LABEL','',330,NULL,'normal',_binary '',_binary '',NULL,NULL),(3712,38,'GIN TONIC','',255,NULL,'normal',_binary '',_binary '',NULL,NULL),(3713,38,'APEROL SPRITZ','',280,NULL,'normal',_binary '',_binary '',NULL,NULL),(3714,24,'santa julia','malbec',348,NULL,'normal',_binary '',_binary '',NULL,NULL),(3715,24,'santa julia','chardonnay',348,NULL,'normal',_binary '',_binary '',NULL,NULL),(3716,24,'finca la linda','malbec',456,NULL,'normal',_binary '',_binary '',NULL,NULL),(3717,38,'FINCA LA LINDA MALBEC','',640,NULL,'normal',_binary '',_binary '',NULL,NULL),(3718,24,'finca la linda','chardonnay',456,NULL,'normal',_binary '',_binary '',NULL,NULL),(3719,24,'terrazas','malbec',456,NULL,'normal',_binary '',_binary '',NULL,NULL),(3720,24,'terrazas','malbec',456,NULL,'normal',_binary '',_binary '',NULL,NULL),(3721,24,'trumpeter','malbec',468,NULL,'normal',_binary '',_binary '',NULL,NULL),(3722,38,'FINCA LA LINDA CABERNET','',640,NULL,'normal',_binary '',_binary '',NULL,NULL),(3723,24,'tomero','malbec',444,NULL,'normal',_binary '',_binary '',NULL,NULL),(3724,38,'FINCA LA LINDA CHARDONAY','',640,NULL,'normal',_binary '',_binary '',NULL,NULL),(3725,38,'FINCA LA LINDA OLD MALBEC','',880,NULL,'normal',_binary '',_binary '',NULL,NULL),(3726,38,'FINCA LA LINDA HIGH VINES SAUV. BLANC','',880,NULL,'normal',_binary '',_binary '',NULL,NULL),(3727,24,'veuve cliequot','',7848,NULL,'normal',_binary '',_binary '',NULL,NULL),(3728,38,'FINCA LA LINDA TEMPRANILLO','',840,NULL,'normal',_binary '',_binary '',NULL,NULL),(3729,38,'FINCA LA LINDA SWEET VIOGNIER','',840,NULL,'normal',_binary '',_binary '',NULL,NULL),(3730,38,'FINCA LA LINDA ROSE','',840,NULL,'normal',_binary '',_binary '',NULL,NULL),(3731,38,'LUIGI BOSCA CHARDONNAY','',1120,NULL,'normal',_binary '',_binary '',NULL,NULL),(3732,38,'LUIGI BOSCA MALBEC','',1100,NULL,'normal',_binary '',_binary '',NULL,NULL),(3733,38,'LUIGI BOSCA CABERNET SAUVIGNON','',1100,NULL,'normal',_binary '',_binary '',NULL,NULL),(3734,24,'chandon','brut nature',948,NULL,'normal',_binary '',_binary '',NULL,NULL),(3735,38,'LUIGI BOSCA PINOT NOIR','',1230,NULL,'normal',_binary '',_binary '',NULL,NULL),(3736,38,'LUIGI BOSCA ROSE','',1230,NULL,'normal',_binary '',_binary '',NULL,NULL),(3737,24,'chandon','extra brut',900,NULL,'normal',_binary '',_binary '',NULL,NULL),(3738,24,'baron b','rose',1776,NULL,'normal',_binary '',_binary '',NULL,NULL),(3739,38,'GALA 1 Petit verdot tannat','',2230,NULL,'normal',_binary '',_binary '',NULL,NULL),(3740,24,'baron b','brut nature',1776,NULL,'normal',_binary '',_binary '',NULL,NULL),(3741,38,'GALA 2 Cavernet sauvignon franc. merlot','',2230,NULL,'normal',_binary '',_binary '',NULL,NULL),(3742,24,'baron b','extra brut',1308,NULL,'normal',_binary '',_binary '',NULL,NULL),(3743,38,'GALA 3  Chardonnay riesling','',2230,NULL,'normal',_binary '',_binary '',NULL,NULL),(3744,38,'GALA 4 Cabernet franc malbec','',2230,NULL,'normal',_binary '',_binary '',NULL,NULL),(3745,38,'LUIGI BOSCA Sauvignon Blanc','',1100,NULL,'normal',_binary '',_binary '',NULL,NULL),(3746,38,'EMILIA  Malbec','',610,NULL,'normal',_binary '',_binary '',NULL,NULL),(3747,38,'EMILIA Malbec Rose','',610,NULL,'normal',_binary '',_binary '',NULL,NULL),(3748,24,'salentein','extra brut',900,NULL,'normal',_binary '',_binary '',NULL,NULL),(3749,38,'EMILIA Dulce Natural','',610,NULL,'normal',_binary '',_binary '',NULL,NULL),(3750,24,'salentein','brut rose',924,NULL,'normal',_binary '',_binary '',NULL,NULL),(3751,38,'NIETO Cabernet Sauvignon','',760,NULL,'normal',_binary '',_binary '',NULL,NULL),(3752,24,'salentein','brut nature',924,NULL,'normal',_binary '',_binary '',NULL,NULL),(3753,38,'NIETO Malbec','',760,NULL,'normal',_binary '',_binary '',NULL,NULL),(3754,24,'salentein','extra brute 375cc',474,NULL,'normal',_binary '',_binary '',NULL,NULL),(3755,24,'familia caruso','extra brut',948,NULL,'normal',_binary '',_binary '',NULL,NULL),(3756,24,'familia caruso','extra brut rose',1008,NULL,'normal',_binary '',_binary '',NULL,NULL),(3757,24,'familia caruso','extra brut 375cc',672,NULL,'normal',_binary '',_binary '',NULL,NULL),(3758,38,'NIETO Merlot','',760,NULL,'normal',_binary '',_binary '',NULL,NULL),(3759,38,'NIETO Torrontes','',760,NULL,'normal',_binary '',_binary '',NULL,NULL),(3760,38,'NIETO Malbec Doc','',760,NULL,'normal',_binary '',_binary '',NULL,NULL),(3761,38,'NIETO Petit Verdot','',850,NULL,'normal',_binary '',_binary '',NULL,NULL),(3762,38,'DON NICANOR Blend','',1000,NULL,'normal',_binary '',_binary '',NULL,NULL),(3763,38,'DON NICANOR Malbec','',1000,NULL,'normal',_binary '',_binary '',NULL,NULL),(3764,38,'DON NICANOR Malbec','',880,NULL,'normal',_binary '',_binary '',NULL,NULL),(3765,38,'DON NICANOR Chardonnay','',1000,NULL,'normal',_binary '',_binary '',NULL,NULL),(3766,38,'CADUS MALBEC Blend de altura','',2550,NULL,'normal',_binary '',_binary '',NULL,NULL),(3767,38,'EMILIA Chardonnay','',560,NULL,'normal',_binary '',_binary '',NULL,NULL),(3768,38,'NIETO Chardonay','',680,NULL,'normal',_binary '',_binary '',NULL,NULL),(3769,38,'FINCA LA LINDA Rose','',530,NULL,'normal',_binary '',_binary '',NULL,NULL),(3770,38,'FINCA LA LINDA Malbec','',530,NULL,'normal',_binary '',_binary '',NULL,NULL),(3771,38,'FINCA LA LINDA Chardonnay','',530,NULL,'normal',_binary '',_binary '',NULL,NULL),(3772,38,'LUIGI BOSCA Malbec','',810,NULL,'normal',_binary '',_binary '',NULL,NULL),(3773,38,'LUIGI BOSCA Sauvignon blanc','',810,NULL,'normal',_binary '',_binary '',NULL,NULL),(3774,26,'MARGHERITA','TOMATE ,MOZZARELLA ALBAHACA Y ACEITE DE OLIVA',690,NULL,'normal',_binary '',_binary '',NULL,NULL),(3775,26,'PROSCIUTTO','TOMATE MOZZARELLA JAMON CRUDO',730,NULL,'normal',_binary '',_binary '',NULL,NULL),(3776,26,'margherita','tomate, muzzarella, albahaca y aceite de oliva',690,NULL,'normal',_binary '',_binary '',NULL,NULL),(3777,26,'prosciutto','tomate, mozzarella y jamón cocido',730,NULL,'normal',_binary '',_binary '',NULL,NULL),(3778,45,'Café','',80,NULL,'normal',_binary '',_binary '','',NULL),(3779,26,'RUCOLA E PROSCIUTTO CRUDO','RUCULA Y JAMON CRUDO',790,NULL,'normal',_binary '',_binary '',NULL,NULL),(3780,26,'4 FORMAGGI','TOMATE, MOZZARELLA GRANA PADANO ,GORGONZOLA Y PROVOLONE',750,NULL,'normal',_binary '',_binary '',NULL,NULL),(3781,26,'PROSCIUTTO E FUNGHI','TOMATE, MOZZARELLA JAMON Y CHAMPIÑONES',730,NULL,'normal',_binary '',_binary '',NULL,NULL),(3782,26,'MARINARA','TOMATE  AJO ANCHOAS',690,NULL,'normal',_binary '',_binary '',NULL,NULL),(3783,26,'ALLE CIPOLLE','CEBOLLAS Y MOZZARELLA',710,NULL,'normal',_binary '',_binary '',NULL,NULL),(3784,26,'ALLE VERDURE','BERENJENAS ZUCCHINI PIMIENTOS Y ALBAHACA',710,NULL,'normal',_binary '',_binary '',NULL,NULL),(3785,26,'PUGLIESE','CEBOLLA, GORGONZOLA Y HUEVO',770,NULL,'normal',_binary '',_binary '',NULL,NULL),(3786,26,'CACCIO CAVALLO','MOZZARELLA QUESO AHUMADO Y PANCETA ARROLLADA',790,NULL,'normal',_binary '',_binary '',NULL,NULL),(3787,26,'INSALATA CAPRESE','TOMATE MUZARELA ALBAHACA RUCULA JAMÓN COCIDO Y MORTADELA',660,NULL,'normal',_binary '',_binary '',NULL,NULL),(3788,26,'INSALATA CAESAR','LECHUGA CRIOLLA POLLO GRILLADO CRUTONES DE PAN AL AJO Y PARMESANO',660,NULL,'normal',_binary '',_binary '',NULL,NULL),(3789,26,'INSALATA DI MARE','LANGOSTINOS ,MEJILLONES, CALAMARES,PULPO TOMATE FRESCO Y PEREJIL',930,NULL,'normal',_binary '',_binary '',NULL,NULL),(3790,26,'BURRATA CON PROSCIUTTO CRUDO','JAMÓN CRUDO, CAPONADA Y RUCULA',930,NULL,'normal',_binary '',_binary '',NULL,NULL),(3791,26,'FRITTO MISTO','CALAMARES, TENTACULOS DE CALAMARES ,LANGOSTINOS Y CHIPIRONES',930,NULL,'normal',_binary '',_binary '',NULL,NULL),(3792,26,'CARPACCIO','FINAS FETAS DE LOMO CON PARMESANO',790,NULL,'normal',_binary '',_binary '',NULL,NULL),(3793,26,'TAGLIERI MISTI','TABLA DE QUESO Y FIAMBRES',930,NULL,'normal',_binary '',_binary '',NULL,NULL),(3794,26,'TAGLIATELLE AL RAGU DI VITELLO','SALSA A BASE DE CARNE Y TOMATE',750,NULL,'normal',_binary '',_binary '',NULL,NULL),(3795,26,'PAPPARDELLE AL PESTO GENOVESE','SALSA A BASE DE ALBAHACA',750,NULL,'normal',_binary '',_binary '',NULL,NULL),(3796,26,'TAGLIOLINI GAMBERI E RUCOLA','TOMATE FRESCO , AJO,RUCULA Y LANGOSTINOS',950,NULL,'normal',_binary '',_binary '',NULL,NULL),(3797,26,'SPAGHETTI AL FRUTTI DI MARE','ALMEJAS, CALAMARES, PULPO , MEJILLONES Y LANGOSTINOS',820,NULL,'normal',_binary '',_binary '',NULL,NULL),(3798,26,'SPAGHETTI AGLIO OLIO','AJO ACEITE Y PEPERONCINO',740,NULL,'normal',_binary '',_binary '',NULL,NULL),(3799,26,'SPAGHETTI ALLA PUTTANESCA','ANCHOAS, OLIVAS NEGRAS AJO Y POMODORO',820,NULL,'normal',_binary '',_binary '',NULL,NULL),(3800,26,'LINGUINE AL FRUTTI DI MARE','ALMEJAS ,CALAMARES,PULPO, MEJILLONES Y LANGOSTINOS',770,NULL,'normal',_binary '',_binary '',NULL,NULL),(3801,26,'LINGUINE ALLA CARBONARA','PANCETA AHUMADA YEMA DE HUEVO Y CREMA',770,NULL,'normal',_binary '',_binary '',NULL,NULL),(3802,26,'BUCATINI ALL MATRICIANA','TOMATE, PANCETA, PECORINO',750,NULL,'normal',_binary '',_binary '',NULL,NULL),(3803,26,'BUCATINI CON BAGNA CAUDA','SALSA A BASE DE ANCHOAS AJO Y CREMA DE NUECES',770,NULL,'normal',_binary '',_binary '',NULL,NULL),(3804,26,'PENNE AI QUATTRO','GORGONZOLA FONTINA,PARMESANO',0,NULL,'normal',_binary '',_binary '',NULL,NULL),(3805,29,'Bora bora','Vodka, agua de pera, almíbar sexy, frutos rojos',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(3806,38,'ESCORIHUELA GASCON Malbec','',850,NULL,'normal',_binary '',_binary '',NULL,NULL),(3807,38,'GASCON ROBLE Malbec','',650,NULL,'normal',_binary '',_binary '',NULL,NULL),(3808,38,'GASCON Malbec','',540,NULL,'normal',_binary '',_binary '',NULL,NULL),(3809,38,'GASCON Dulce','',550,NULL,'normal',_binary '',_binary '',NULL,NULL),(3810,38,'GASCON Roble Malbec 375 cc','',470,NULL,'normal',_binary '',_binary '',NULL,NULL),(3811,38,'GASCON Chardonnay 375 cc','',470,NULL,'normal',_binary '',_binary '',NULL,NULL),(3812,38,'RUTINI Cabernet Malbec','',1860,NULL,'normal',_binary '',_binary '',NULL,NULL),(3813,38,'RUTINI Sauvignon Blanc','',1930,NULL,'normal',_binary '',_binary '',NULL,NULL),(3814,38,'EMILIA Extra Brut','',590,NULL,'normal',_binary '',_binary '',NULL,NULL),(3815,38,'EMILIA Brut Rose','',590,NULL,'normal',_binary '',_binary '',NULL,NULL),(3816,38,'FINCA LA LINDA Extra Brut','',730,NULL,'normal',_binary '',_binary '',NULL,NULL),(3817,38,'FINCA LA LINDA Dulce Natural','',730,NULL,'normal',_binary '',_binary '',NULL,NULL),(3818,38,'FINCA LA LINDA Brut Nature','',790,NULL,'normal',_binary '',_binary '',NULL,NULL),(3819,38,'NIETO SENETINER Extra Brut','',790,NULL,'normal',_binary '',_binary '',NULL,NULL),(3820,38,'NIETO SENETINER Brut Nature','',860,NULL,'normal',_binary '',_binary '',NULL,NULL),(3821,38,'SANTA JULIA Extra Brut','',860,NULL,'normal',_binary '',_binary '',NULL,NULL),(3822,38,'LUIGI BOSCA Cuvee','',1270,NULL,'normal',_binary '',_binary '',NULL,NULL),(3823,38,'LUIGI BOSCA Brut Nature','',1460,NULL,'normal',_binary '',_binary '',NULL,NULL),(3824,38,'LUIGI BOSCA Prestige Rose','',1500,NULL,'normal',_binary '',_binary '',NULL,NULL),(3825,38,'BARON B Extra Brut','',1740,NULL,'normal',_binary '',_binary '',NULL,NULL),(3826,38,'BARON B Brut Nature','',1950,NULL,'normal',_binary '',_binary '',NULL,NULL),(3827,38,'BARON B Brut Rose','',1990,NULL,'normal',_binary '',_binary '',NULL,NULL),(3828,26,'PENNE ALLE VERDURE','ZUCCHINI , BERENJENA Y PIMIENTOS EN SALSA POMODORO',750,NULL,'normal',_binary '',_binary '',NULL,NULL),(3829,26,'FUSILLI CON POLLO E CHAMPIGNON','POLLO, CHAMPIÑONES Y CREMA',750,NULL,'normal',_binary '',_binary '',NULL,NULL),(3830,26,'TORTELLI CREMASCHI','CALABAZA Y AMARETTI',770,NULL,'normal',_binary '',_binary '',NULL,NULL),(3831,26,'AGNOLOTTI DI RICOTA','CON ESPINACA RICOTA Y UN TOQUE DE NUEZ MOSCADA',770,NULL,'normal',_binary '',_binary '',NULL,NULL),(3832,26,'MALFATTI SPINACI E RICOTTA','ESPINACA ,RICOTA Y UN TOQUE DE NUEZ MOSCADA',770,NULL,'normal',_binary '',_binary '',NULL,NULL),(3833,26,'RAVIOLLI DI VITELLO','A BASE DE CARNE CON SALSA DE HONGOS',780,NULL,'normal',_binary '',_binary '',NULL,NULL),(3834,26,'GNOCCHI','SALSA DE CARNE CON MANTECA Y QUESO RALLADO',740,NULL,'normal',_binary '',_binary '',NULL,NULL),(3835,26,'LASAGNA ALL EMILIANA','SALSA BOLOGNESA, SALSA BLANCA ,PARMESANO',770,NULL,'normal',_binary '',_binary '',NULL,NULL),(3836,26,'LASAGNA  AL SALMONE','',910,NULL,'normal',_binary '',_binary '',NULL,NULL),(3837,26,'MELANZANE ALLA PARMIGIANA',', ALBAHACA, ORÉGANO,QUESO RALLADO Y TOMATE',770,NULL,'normal',_binary '',_binary '',NULL,NULL),(3838,26,'CANNELLONI DI VERDURE','DE ESPINACA Y RICOTA',740,NULL,'normal',_binary '',_binary '',NULL,NULL),(3839,26,'PASTA INTEGRAL','TAGLIATELLE, PAPPARDELLE, E TAGLIOLINI',740,NULL,'normal',_binary '',_binary '',NULL,NULL),(3840,26,'RISOTTO CON FUNGHI','CUATRO TIPO HONGOS',920,NULL,'normal',_binary '',_binary '',NULL,NULL),(3841,26,'POLENTA CON RAGU','POLENTA BLANCA O AMARILLA A ELECCIÓN',770,NULL,'normal',_binary '',_binary '',NULL,NULL),(3842,26,'POLENTA CON CARNE','TOMATE, CARNE , ALBÓNDIGAS',770,NULL,'normal',_binary '',_binary '',NULL,NULL),(3843,26,'TAGLIATA DI MANZO','FINAS FETAS DE CARNE CONDIMENTADAS TERMINADA CON RUCULA Y PARMESANO EN ESCAMAS',830,NULL,'normal',_binary '',_binary '',NULL,NULL),(3844,26,'SALTIMBOCA ALLA ROMANA','FETAS DE TERNERA CON JAMÓN CRUDO Y SALVIA CON SALSA CHARDONNAY',830,NULL,'normal',_binary '',_binary '',NULL,NULL),(3845,26,'FILETTO AL FUNGHI','LOMO CON HONGOS DE PINO Y RISOTTO MILANES',950,NULL,'normal',_binary '',_binary '',NULL,NULL),(3846,26,'POLPETTE DI CARNE','ALBONDIGAS CON PURÉ',810,NULL,'normal',_binary '',_binary '',NULL,NULL),(3847,26,'BISTECCA ALLA FIORENTINA','OJO DE BIFE CON BROCOLIS GRATINADOS',1100,NULL,'normal',_binary '',_binary '',NULL,NULL),(3848,26,'OSSOBUCO STUFATO CON FUNGHI','ESTOFADO CON HONGOS ACOMPAÑADO CON RISOTTO',950,NULL,'normal',_binary '',_binary '',NULL,NULL),(3849,26,'STINCO DI MAIALE','COCCIÓN LENTA DE 3 HORAS AL HORNO CON HIERBAS',950,NULL,'normal',_binary '',_binary '',NULL,NULL),(3850,26,'SALMONE','SALMÓN ROSADO ACOMPAÑADO CON ESPINACA Y SALSA BLANCA',1090,NULL,'normal',_binary '',_binary '',NULL,NULL),(3851,26,'SPIEDINI DI GAMBERI','BROCHETA DE LANGOSTINOS CON PAPAS RUSTICAS',890,NULL,'normal',_binary '',_binary '',NULL,NULL),(3852,26,'TIRAMISU','BASE DE MASCARPONE Y CAFÉ',370,NULL,'normal',_binary '',_binary '',NULL,NULL),(3853,26,'ZABAGLIONE','SABAYON CON FRUTOS ROJOS',370,NULL,'normal',_binary '',_binary '',NULL,NULL),(3854,26,'CREME CARAMEL','',340,NULL,'normal',_binary '',_binary '',NULL,NULL),(3855,26,'PANNA COTTA','BUDÍN DE CREMA COCIDA',360,NULL,'normal',_binary '',_binary '',NULL,NULL),(3856,26,'MOUSSE DE CIOCCOLATO','',390,NULL,'normal',_binary '',_binary '',NULL,NULL),(3857,26,'PROFITEROLES CON CREMA','',425,NULL,'normal',_binary '',_binary '',NULL,NULL),(3858,26,'AFFOGATO AL CAFFE','',325,NULL,'normal',_binary '',_binary '',NULL,NULL),(3859,26,'MERINGA','MERENGUE FRUTAS Y HELADO',425,NULL,'normal',_binary '',_binary '',NULL,NULL),(3860,26,'I GELATI','',300,NULL,'normal',_binary '',_binary '',NULL,NULL),(3861,26,'GOLOSI','BIZCOCHUELO DE CHOCOLATE ,DULCE DE LECHE CON CROCANTE DE MANI,CON COBERTURA DE CHOCOLATE Y HELADO',395,NULL,'normal',_binary '',_binary '',NULL,NULL),(3862,26,'GNOCCHI','',505,NULL,'normal',_binary '',_binary '',NULL,NULL),(3863,26,'SPAGHETTI','',505,NULL,'normal',_binary '',_binary '',NULL,NULL),(3864,26,'MILANESE CON PAPAS','',505,NULL,'normal',_binary '',_binary '',NULL,NULL),(3865,26,'RICARDO SANTOS MALB/CAB','',852,NULL,'normal',_binary '',_binary '',NULL,NULL),(3866,26,'SAPO DE OTRO POZO','',1092,NULL,'normal',_binary '',_binary '',NULL,NULL),(3867,26,'PERRO CALLEJERO','',804,NULL,'normal',_binary '',_binary '',NULL,NULL),(3868,26,'ANIMAL MALBEC','',900,NULL,'normal',_binary '',_binary '',NULL,NULL),(3869,26,'PETITE FLEUR MALBEC','',1044,NULL,'normal',_binary '',_binary '',NULL,NULL),(3870,26,'ALA COLORADA CAB FRANC','',1008,NULL,'normal',_binary '',_binary '',NULL,NULL),(3871,26,'ENEMIGO MALBEC','',1488,NULL,'normal',_binary '',_binary '',NULL,NULL),(3872,26,'ENEMIGO CAB FRANC','',1188,NULL,'normal',_binary '',_binary '',NULL,NULL),(3873,26,'CLOS DE LOS SIETE BLEND','',1020,NULL,'normal',_binary '',_binary '',NULL,NULL),(3874,26,'ANGEL MZA PURA SANGRE MALB/CAB','',1122,NULL,'normal',_binary '',_binary '',NULL,NULL),(3875,26,'MOSQUITA MUERTA','',1404,NULL,'normal',_binary '',_binary '',NULL,NULL),(3876,26,'ALMA NEGRA','',1400,NULL,'normal',_binary '',_binary '',NULL,NULL),(3877,26,'RUTINI MALBEC','',2004,NULL,'normal',_binary '',_binary '',NULL,NULL),(3878,26,'RUTINI CAB SAUVIGNON','',2004,NULL,'normal',_binary '',_binary '',NULL,NULL),(3879,26,'RUTINI CHARDONNAY','',1476,NULL,'normal',_binary '',_binary '',NULL,NULL),(3880,26,'RUTINI CAB MALB','',1332,NULL,'normal',_binary '',_binary '',NULL,NULL),(3881,26,'TRUMPETER RESERVA','',1068,NULL,'normal',_binary '',_binary '',NULL,NULL),(3882,26,'TRUMPETER MALBEC','',864,NULL,'normal',_binary '',_binary '',NULL,NULL),(3883,26,'TRUMPETER CAB SAUVIGNON','',840,NULL,'normal',_binary '',_binary '',NULL,NULL),(3884,26,'TRUMPETER CHARDONNAY','',840,NULL,'normal',_binary '',_binary '',NULL,NULL),(3885,26,'PRIMUS MALBEC','',2280,NULL,'normal',_binary '',_binary '',NULL,NULL),(3886,26,'RESERVE CAB SAUVIGNON','',816,NULL,'normal',_binary '',_binary '',NULL,NULL),(3887,26,'RESERVE MALBEC','',816,NULL,'normal',_binary '',_binary '',NULL,NULL),(3888,26,'RESERVE MERLOT','',816,NULL,'normal',_binary '',_binary '',NULL,NULL),(3889,26,'RESERVE CHARDONNAY','',816,NULL,'normal',_binary '',_binary '',NULL,NULL),(3890,26,'RESERVE SAUVIGNON BLANCO','',816,NULL,'normal',_binary '',_binary '',NULL,NULL),(3891,26,'PORTILLO MALBEC','',588,NULL,'normal',_binary '',_binary '',NULL,NULL),(3892,26,'PORTILLO ROSE MALBEC','',588,NULL,'normal',_binary '',_binary '',NULL,NULL),(3893,26,'PORTILLO SAUV BLANCO','',588,NULL,'normal',_binary '',_binary '',NULL,NULL),(3894,26,'FAMILIA MALBEC','',910,NULL,'normal',_binary '',_binary '',NULL,NULL),(3895,26,'FAMILIA CAB SAUVIGNON','',910,NULL,'normal',_binary '',_binary '',NULL,NULL),(3896,26,'FAMILIA CHARDONNAY','',910,NULL,'normal',_binary '',_binary '',NULL,NULL),(3897,26,'CORTE B','',984,NULL,'normal',_binary '',_binary '',NULL,NULL),(3898,26,'TOMERO MALBEC','',720,NULL,'normal',_binary '',_binary '',NULL,NULL),(3899,26,'TOMERO CAB FRANC','',684,NULL,'normal',_binary '',_binary '',NULL,NULL),(3900,26,'TOMERO SAUV BLANCO','',684,NULL,'normal',_binary '',_binary '',NULL,NULL),(3901,26,'TOMERO ROSADO','',684,NULL,'normal',_binary '',_binary '',NULL,NULL),(3902,26,'RESERVA DON JUAN','',1308,NULL,'normal',_binary '',_binary '',NULL,NULL),(3903,26,'RESERVA MALBEC','',888,NULL,'normal',_binary '',_binary '',NULL,NULL),(3904,26,'RESERVA CAB SAUVIGNON','',888,NULL,'normal',_binary '',_binary '',NULL,NULL),(3905,26,'LAS PERDICES MALBEC','',744,NULL,'normal',_binary '',_binary '',NULL,NULL),(3906,26,'LAS PERDICES CAB SAUV','',744,NULL,'normal',_binary '',_binary '',NULL,NULL),(3907,26,'LAS PERDICES VIOGNIER','',744,NULL,'normal',_binary '',_binary '',NULL,NULL),(3908,26,'LAS PERDICES PINOT GRIGIO','',744,NULL,'normal',_binary '',_binary '',NULL,NULL),(3909,26,'RESERVE MALBEC','',1344,NULL,'normal',_binary '',_binary '',NULL,NULL),(3910,26,'RESERVE CAB SAUVIGNON','',1188,NULL,'normal',_binary '',_binary '',NULL,NULL),(3911,26,'RESERVE CHARDONNAY','',900,NULL,'normal',_binary '',_binary '',NULL,NULL),(3912,26,'FINCA LA LINDA MALBEC','',792,NULL,'normal',_binary '',_binary '',NULL,NULL),(3913,26,'FINCA LA LINDA CAB SAUVIGNON','',804,NULL,'normal',_binary '',_binary '',NULL,NULL),(3914,26,'FINCA LA LINDA CHADONNAY','',756,NULL,'normal',_binary '',_binary '',NULL,NULL),(3915,26,'FINCA LA LINDA ROSE','',756,NULL,'normal',_binary '',_binary '',NULL,NULL),(3916,26,'RESERVA MALBEC','',912,NULL,'normal',_binary '',_binary '',NULL,NULL),(3917,26,'RESERVA CAB SAUVIGNON','',912,NULL,'normal',_binary '',_binary '',NULL,NULL),(3918,26,'RESERVA BONARDA','',912,NULL,'normal',_binary '',_binary '',NULL,NULL),(3919,26,'RESERVA TORRONTES','',804,NULL,'normal',_binary '',_binary '',NULL,NULL),(3920,26,'DV CATENA CAB CAB','',1776,NULL,'normal',_binary '',_binary '',NULL,NULL),(3921,26,'DV CATENA MALB MALB','',1584,NULL,'normal',_binary '',_binary '',NULL,NULL),(3922,26,'DV CATENA CAB MALB','',1212,NULL,'normal',_binary '',_binary '',NULL,NULL),(3923,26,'ANGELICA ZAPATA MALB ALTA','',2304,NULL,'normal',_binary '',_binary '',NULL,NULL),(3924,26,'ANGELICA ZAPATA CAB FRANC ALTA','',1766,NULL,'normal',_binary '',_binary '',NULL,NULL),(3925,26,'SAINT FELICIEN MALBEC','',948,NULL,'normal',_binary '',_binary '',NULL,NULL),(3926,26,'SAINT FELICIEN CAB SAUVIGNON','',936,NULL,'normal',_binary '',_binary '',NULL,NULL),(3927,26,'SAINT FELICIEN SAUV BLANCO','',936,NULL,'normal',_binary '',_binary '',NULL,NULL),(3928,26,'NICASIA MALBEC BLEND','',912,NULL,'normal',_binary '',_binary '',NULL,NULL),(3929,26,'NICASIA CAB FRANC','',888,NULL,'normal',_binary '',_binary '',NULL,NULL),(3930,26,'ALAMOS RESERVA MALBEC','',810,NULL,'normal',_binary '',_binary '',NULL,NULL),(3931,26,'ALAMOS SELECCION MALBEC','',780,NULL,'normal',_binary '',_binary '',NULL,NULL),(3932,26,'ALAMOS SELECCION CAB SAUVIGNON','',744,NULL,'normal',_binary '',_binary '',NULL,NULL),(3933,26,'ALAMOS SELECCION SAUV BLANCO','',744,NULL,'normal',_binary '',_binary '',NULL,NULL),(3934,26,'YACOCHUYA MALBEC','',4020,NULL,'normal',_binary '',_binary '',NULL,NULL),(3935,26,'SAN PEDRO DE YACOCHUYA MALB','',1980,NULL,'normal',_binary '',_binary '',NULL,NULL),(3936,26,'SAN PEDRO DE YACOCHUYA TORRONTES','',1020,NULL,'normal',_binary '',_binary '',NULL,NULL),(3937,26,'SANTA JULIA MALBEC','',576,NULL,'normal',_binary '',_binary '',NULL,NULL),(3938,26,'SANTA JULIA CHARDONNAY','',576,NULL,'normal',_binary '',_binary '',NULL,NULL),(3939,26,'SANTA JULIA CHENIN DULCE','',564,NULL,'normal',_binary '',_binary '',NULL,NULL),(3940,26,'RESERVA MALBEC','',804,NULL,'normal',_binary '',_binary '',NULL,NULL),(3941,26,'RESERVA CAB SAUVIGNON','',804,NULL,'normal',_binary '',_binary '',NULL,NULL),(3942,26,'RESERVA CHARDONNAY','',804,NULL,'normal',_binary '',_binary '',NULL,NULL),(3943,26,'SANTA JULIA MALBEC','',348,NULL,'normal',_binary '',_binary '',NULL,NULL),(3944,26,'SANTA JULIA CHARDONNAY','',348,NULL,'normal',_binary '',_binary '',NULL,NULL),(3945,26,'FINCA LA LINDA MALBEC','',456,NULL,'normal',_binary '',_binary '',NULL,NULL),(3946,26,'FINCA LA LINDA CHARDONNAY','',456,NULL,'normal',_binary '',_binary '',NULL,NULL),(3947,26,'TERRAZAS MALBEC','',456,NULL,'normal',_binary '',_binary '',NULL,NULL),(3948,26,'TRUMPETER MALBEC','',468,NULL,'normal',_binary '',_binary '',NULL,NULL),(3949,26,'TOMERO MALBEC','',444,NULL,'normal',_binary '',_binary '',NULL,NULL),(3950,26,'LUIGI BOSCA MALBEC','',528,NULL,'normal',_binary '',_binary '',NULL,NULL),(3951,26,'VEUVE CLICQUOT','',7848,NULL,'normal',_binary '',_binary '',NULL,NULL),(3952,26,'BARON B ROSE','',1776,NULL,'normal',_binary '',_binary '',NULL,NULL),(3953,26,'BARON B BRUT NATURE','',1776,NULL,'normal',_binary '',_binary '',NULL,NULL),(3954,26,'BARON B EXTRA BRUT','',1308,NULL,'normal',_binary '',_binary '',NULL,NULL),(3955,26,'SALENTEIN EXTRA BRUT','',900,NULL,'normal',_binary '',_binary '',NULL,NULL),(3956,26,'SALENTEIN BRUT ROSE','',924,NULL,'normal',_binary '',_binary '',NULL,NULL),(3957,26,'SALENTEIN BRUT NATURE','',924,NULL,'normal',_binary '',_binary '',NULL,NULL),(3958,26,'SALENTEIN BRUT NATURE 375CC','',474,NULL,'normal',_binary '',_binary '',NULL,NULL),(3959,26,'FAMILIA CARUSO EXTRA BRUT','',948,NULL,'normal',_binary '',_binary '',NULL,NULL),(3960,26,'FAMILIA CARUSO EXTRA BRUT ROSE','',1008,NULL,'normal',_binary '',_binary '',NULL,NULL),(3961,26,'FAMILIA CARUSO EXTRA BRUT 375CC','',672,NULL,'normal',_binary '',_binary '',NULL,NULL),(3962,26,'GASEOSAS','',110,NULL,'normal',_binary '',_binary '',NULL,NULL),(3963,26,'AGUA MINERAL CON Y SIN GAS','',110,NULL,'normal',_binary '',_binary '',NULL,NULL),(3964,26,'AGUAS SABORIZADAS','',110,NULL,'normal',_binary '',_binary '',NULL,NULL),(3965,26,'STELLA ARTOIS 1 LITRO','',330,NULL,'normal',_binary '',_binary '',NULL,NULL),(3966,26,'STELLA ARTOIS 330 CC','',174,NULL,'normal',_binary '',_binary '',NULL,NULL),(3967,26,'PATAGONIA 710CC','',288,NULL,'normal',_binary '',_binary '',NULL,NULL),(3968,26,'CORONA 350CC','',186,NULL,'normal',_binary '',_binary '',NULL,NULL),(3969,26,'CAFE','',85,NULL,'normal',_binary '',_binary '',NULL,NULL),(3970,26,'CORTADO','',95,NULL,'normal',_binary '',_binary '',NULL,NULL),(3971,26,'TE','',80,NULL,'normal',_binary '',_binary '',NULL,NULL),(3972,28,'PORCION DE TORTA','',195,NULL,'normal',_binary '',_binary '',NULL,NULL),(3973,28,'PORCION DE TARTA','',170,NULL,'normal',_binary '',_binary '',NULL,NULL),(3974,28,'MAFALDA','',99,NULL,'normal',_binary '',_binary '',NULL,NULL),(3975,44,'PAPAS RÚSTICAS','',100,NULL,'normal',_binary '',_binary '',NULL,NULL),(3976,44,'PAPAS RÚSTICAS CON CHEDDAR, PANCETA Y CIBOULETTE','',200,NULL,'normal',_binary '',_binary '',NULL,NULL),(3977,44,'RABAS','',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(3978,44,'PATTOSA','Rúcula fresca, lechuga, queso parmesano, tomates en gajos, cebolla morada y palta',230,NULL,'normal',_binary '',_binary '',NULL,NULL),(3979,44,'CESAR','Lechuga, trozos de pollo, queso parmesano, aderezo a base de mayonesa con aceite de oliva, alcaparras y anchoas',230,NULL,'normal',_binary '',_binary '',NULL,NULL),(3980,44,'CRIOLLA','Carne de ternera, cebolla, huevo, verdeo y aceitunas verdes.',60,NULL,'normal',_binary '',_binary '',NULL,NULL),(3981,44,'CRIOLLA DULCE','Carne de ternera, cebolla, huevo, verdeo y pasas de uva.',60,NULL,'normal',_binary '',_binary '',NULL,NULL),(3982,44,'NORTEÑA PICANTE','Carne picada a cuchillo, huevo y verdeo.',60,NULL,'normal',_binary '',_binary '',NULL,NULL),(3983,44,'ESPINACA','Espinaca, salteado de cebolla y pimientos rojos, mozzarellla.',60,NULL,'vegetarian',_binary '',_binary '',NULL,NULL),(3984,44,'ÁRABES','Carne ternera, tomate, cebolla y limón.',60,NULL,'normal',_binary '',_binary '',NULL,NULL),(3985,44,'JAMÓN Y QUESO','Jamón cocido y mozzarella.',60,NULL,'normal',_binary '',_binary '',NULL,NULL),(3986,44,'CLÁSICA','Pan casero con semillas de sésamo, hamburguesa de carne de búfalo, queso cheddar, lechuga, tomates y pepinillos en vinagre, acompañada de papas rústicas.',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(3987,44,'AMERICANA','Pan casero con semillas de sésamo, hamburguesa de carne de búfalo, queso cheddar, crocante de panceta, huevo, acompañada de papas rústicas.',300,NULL,'normal',_binary '',_binary '',NULL,NULL),(3988,44,'TRASANDINA','Pan casero con semillas de sésamo, hamburguesa de carne de búfalo, queso cheddar, palta, cebolla morada, acompañada de papas rústicas.',310,NULL,'normal',_binary '',_binary '',NULL,NULL),(3989,44,'SIMPLE','',300,NULL,'normal',_binary '',_binary '',NULL,NULL),(3990,44,'COMPLETO','',350,NULL,'normal',_binary '',_binary '',NULL,NULL),(3991,44,'POBLANOS','',370,NULL,'normal',_binary '',_binary '',NULL,NULL),(3992,44,'MILANESAS','',0,NULL,'normal',_binary '',_binary '',NULL,NULL),(3993,44,'AL PLATO','',300,NULL,'normal',_binary '',_binary '',NULL,NULL),(3994,44,'SANDWICHS','',270,NULL,'normal',_binary '',_binary '',NULL,NULL),(3995,44,'EL TANITO','Mozzarella, tomates frescos, jamón cocido, morrones al natural, y aceite de oliva.',570,NULL,'normal',_binary '',_binary '',NULL,NULL),(3996,44,'DE LA HUERTA','Mozzarella, espinaca, cebolla salteada, morrones al natural y aceite de oliva.',570,NULL,'normal',_binary '',_binary '',NULL,NULL),(3997,44,'MOZZARELLA','Salsa de tomate, mozzarella, aceitunas verdes y orégano.',360,NULL,'normal',_binary '',_binary '',NULL,NULL),(3998,44,'FUGAZETTA','Salsa de tomate, mozzarella, cebolla salteada, aceitunas negras y orégano.',400,NULL,'normal',_binary '',_binary '',NULL,NULL),(3999,44,'CAPRESE','Salsa de tomate, mozzarella, tomates en rodajas, aceite de ajo, hojas de albahaca y olivas negras y orégano.',400,NULL,'normal',_binary '',_binary '',NULL,NULL),(4000,44,'ESPECIAL (CON HUEVO / SIN HUEVO)','Salsa de tomate, mozzarella, jamón cocido, huevo rallado, aceitunas verdes y orégano.',570,NULL,'normal',_binary '',_binary '',NULL,NULL),(4001,44,'RÚCULA','Salsa de tomate, mozzarella, rúcula, jamón crudo, queso parmesano, morrones, olivas negras y orégano.',570,NULL,'normal',_binary '',_binary '',NULL,NULL),(4002,44,'MEXICANA','Salsa de tomate, mozzarella, salteado de pimientos y cebolla, panceta y revuelto de huevo, cebolla de verdeo, olivas negras y orégano.',600,NULL,'normal',_binary '',_binary '',NULL,NULL),(4003,44,'Tostado de jamón y queso en pan inglés blanco.','',150,NULL,'normal',_binary '',_binary '',NULL,NULL),(4004,44,'Baguette blanco, manteca, jamón cocido, tybo, tomate y huevo duro.','',200,NULL,'normal',_binary '',_binary '',NULL,NULL),(4005,44,'Baguette blanco, manteca, salame de la colonia y queso.','',260,NULL,'normal',_binary '',_binary '',NULL,NULL),(4006,44,'Baguette negro, manteca, bondiola, tybo, rúcula y olivas negras.','',200,NULL,'normal',_binary '',_binary '',NULL,NULL),(4007,44,'Baguette negro, manteca, jamón crudo, parmesano, rúcula, tomates hidratados en oliva especiada.','',280,NULL,'normal',_binary '',_binary '',NULL,NULL),(4008,44,'Baguette bco/negro, manteca, berenjenas asadas, tomates, zucchinis asados y queso.','',150,NULL,'normal',_binary '',_binary '',NULL,NULL),(4009,44,'AGUA CON Y SIN GAS X 500CC','',150,NULL,'normal',_binary '',_binary '',NULL,NULL),(4010,44,'AGUA SABORIZADA AQUARIUS X 500CC','',150,NULL,'normal',_binary '',_binary '',NULL,NULL),(4011,44,'GASEOSA X 350CC (LÍNEA COCA COLA)','',150,NULL,'normal',_binary '',_binary '',NULL,NULL),(4012,44,'JUGO DE NARANJA (CEPITA)','',150,NULL,'normal',_binary '',_binary '',NULL,NULL),(4013,44,'CHOPP IMPERIAL LAGER','',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(4014,44,'CHOPP IMPERIAL IPA','',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(4015,44,'CHOPP IMPERIAL AMBER LAGER','',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(4016,44,'IMPERIAL CREAM STOUT X 500CC','',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(4017,44,'SCHNEIDER LATA X 475CC','',120,NULL,'normal',_binary '',_binary '',NULL,NULL),(4018,44,'SOL','',200,NULL,'normal',_binary '',_binary '',NULL,NULL),(4019,44,'FERNET BRANCA (MEDIDA)','',150,NULL,'normal',_binary '',_binary '',NULL,NULL),(4020,44,'GANCIA','',120,NULL,'normal',_binary '',_binary '',NULL,NULL),(4021,44,'GINEBRA','',130,NULL,'normal',_binary '',_binary '',NULL,NULL),(4022,44,'RON BACARDI 8 AÑOS','',200,NULL,'normal',_binary '',_binary '',NULL,NULL),(4023,44,'RON BACARDI ORO','',150,NULL,'normal',_binary '',_binary '',NULL,NULL),(4024,44,'BAILEYS','',0,NULL,'normal',_binary '',_binary '',NULL,NULL),(4025,44,'GIN BOMBAY','',150,NULL,'normal',_binary '',_binary '',NULL,NULL),(4026,44,'WHISKY J&B','',200,NULL,'normal',_binary '',_binary '',NULL,NULL),(4027,44,'WHISKY JONNIE WALKER RED','',0,NULL,'normal',_binary '',_binary '',NULL,NULL),(4028,44,'WHISKY JONNIE WALKER BLACK','',0,NULL,'normal',_binary '',_binary '',NULL,NULL),(4029,44,'CAMPARI','',0,NULL,'normal',_binary '',_binary '',NULL,NULL),(4030,14,'Chandon Decile con hielo, Aperol y naranja','',350,NULL,'normal',_binary '',_binary '',NULL,NULL),(4031,14,'GIN TONIC Beefeater con pepino','',300,NULL,'normal',_binary '',_binary '',NULL,NULL),(4032,14,'MEDIDA Baileys','',240,NULL,'normal',_binary '',_binary '',NULL,NULL),(4033,14,'MEDIDA Amarula','',270,NULL,'normal',_binary '',_binary '',NULL,NULL),(4034,14,'Whiskey Jim Beam MEDIDA','',320,NULL,'normal',_binary '',_binary '',NULL,NULL),(4035,14,'Whiskey Jim Bean Honey MEDIDA','',350,NULL,'normal',_binary '',_binary '',NULL,NULL),(4036,14,'Jonny Walker Red Label MEDIDA','',300,NULL,'normal',_binary '',_binary '',NULL,NULL),(4037,14,'JAGER BOOM','medida de Jagermeister con Red Bull',420,NULL,'normal',_binary '',_binary '',NULL,NULL),(4038,14,'Agua Saborizada AWAFRUT','naranja, manzana o pomelo',130,NULL,'normal',_binary '',_binary '',NULL,NULL),(4039,45,'Cafe en Jarrito','',90,NULL,'normal',_binary '',_binary '',NULL,NULL),(4040,45,'Café doble','',100,NULL,'normal',_binary '',_binary '',NULL,NULL),(4041,45,'Capuccino','',120,NULL,'normal',_binary '',_binary '',NULL,NULL),(4042,45,'Submarino','',110,NULL,'normal',_binary '',_binary '',NULL,NULL),(4043,45,'Licuado','',130,NULL,'normal',_binary '',_binary '',NULL,NULL),(4044,45,'Exprimido de naranja (Grande)','',130,NULL,'normal',_binary '',_binary '',NULL,NULL),(4045,45,'Exprimido de naranja (mediano)','',80,NULL,'normal',_binary '',_binary '',NULL,NULL),(4046,45,'Medialuna o criollo','',30,NULL,'normal',_binary '',_binary '',NULL,NULL),(4047,45,'Alfajor de maicena / cuadrado dulce','',60,NULL,'normal',_binary '',_binary '',NULL,NULL),(4048,45,'Porción de tostadas','',60,NULL,'normal',_binary '',_binary '',NULL,NULL),(4049,45,'Tostado de jamón y queso','',150,NULL,'normal',_binary '',_binary '',NULL,NULL),(4050,45,'Tostado jamón crudo y queso','',180,NULL,'normal',_binary '',_binary '',NULL,NULL),(4051,45,'Tostado napolitano','',180,NULL,'normal',_binary '',_binary '',NULL,NULL),(4052,45,'Baguette jamón y queso','',180,NULL,'normal',_binary '',_binary '',NULL,NULL),(4053,45,'Simple','2 medialunas o criollos + café o infusión.',130,NULL,'normal',_binary '',_binary '',NULL,NULL),(4054,45,'Light','Tostadas de pan de semillas + queso crema y mermelada light + café o infusión.',150,NULL,'normal',_binary '',_binary '',NULL,NULL),(4055,45,'Nutri','Huevo revuelto + jamón + queso + tostadas + yogurt + granola + café o infusión.',210,NULL,'normal',_binary '',_binary '',NULL,NULL),(4056,45,'Mafalda','2 mafaldas + café, infusión o chocolatada caliente',160,NULL,'normal',_binary '',_binary '',NULL,NULL),(4057,45,'Fresco','Baguette de jamón y queso + licuado.',130,NULL,'normal',_binary '',_binary '',NULL,NULL),(4058,45,'Juan Perez','2 tostadas francesas + jamón + queso + mermelada + café o infusión',180,NULL,'normal',_binary '',_binary '',NULL,NULL),(4059,45,'Lomo completo','Carne de lomo + jamón + queso + tomate + huevo a la plancha + lechuga + mayo casera.',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(4060,45,'Lomo bacon y cheddar','Carne de lomo + queso cheddar + panceta + jamón + lechuga + tomate + salsa verde.',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(4061,45,'Lomo Juan Perez','Carne de lomo + champignones salteados con cebolla caramelizada + salsa bbq.',240,NULL,'normal',_binary '',_binary '',NULL,NULL),(4062,45,'Lomo Cubano','Carne desmechada + cebolla caramelizada + jamón + queso + mayo casera.',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(4063,45,'Hamburguesa XL','Medallón de carne + Jamón + queso + tomate + huevo a la plancha + lechuga + mayonesa casera.',200,NULL,'normal',_binary '',_binary '',NULL,NULL),(4064,45,'Hamburguesa Cacho','Medallon de carne + doble queso + palta + salsa criolla',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(4065,45,'Gaseosa 500 ml','Gaseosas línea Coca Cola',90,NULL,'normal',_binary '',_binary '',NULL,NULL),(4066,45,'Gaseosa 375 ml','Gaseosas línea Coca Cola',80,NULL,'normal',_binary '',_binary '',NULL,NULL),(4067,45,'Agua Saborizada','Levité',80,NULL,'normal',_binary '',_binary '',NULL,NULL),(4068,45,'Agua mineral','Bon Aqua',80,NULL,'normal',_binary '',_binary '',NULL,NULL),(4069,14,'STOUT','Cerverceria Skallen . IBU 20 % alcohol 4.3',180,NULL,'normal',_binary '',_binary '','',NULL),(4070,14,'MARACUYA','Cerveceria Arthur . IBU 15 %alc 3.8',180,NULL,'normal',_binary '',_binary '','',NULL),(4071,14,'APA','',0,NULL,'normal',_binary '',_binary '',NULL,NULL),(4072,14,'Whiskey JonnyWalker BLACK Label','',360,NULL,'normal',_binary '',_binary '',NULL,NULL),(4073,38,'PORCIÓN DE TORTA DEL DÍA','',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(4074,58,'Tabla de fiambres (para dos personas)','quesos tradicionales y ahumados artesanalmente',520,NULL,'normal',_binary '',_binary '',NULL,NULL),(4075,58,'Carpaccio de lomo','Rúcula, escamas de queso pepato y oliva extra virgen',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(4076,58,'Escabeche de conejo','Quiché de calabazas asadas quesillo ahumado',240,NULL,'normal',_binary '',_binary '',NULL,NULL),(4077,58,'Tibio petit camembert','praliné de maní, chutney de mandarinas',280,NULL,'vegetarian',_binary '',_binary '',NULL,NULL),(4078,58,'Dúo regional','Empanada de matambre y mollejas grilladas en salsa criolla',260,NULL,'normal',_binary '',_binary '',NULL,NULL),(4079,58,'Jamón crudo','en láminas, focaccia con pâté de ternera, shot de porotos en vinagreta, cherrys a la plancha, hojas orgánicas.',390,NULL,'normal',_binary '',_binary '',NULL,NULL),(4080,58,'Salmón ahumado','en rosetas, bruschetta de anchoas y tomate, boconccinos a la albahaca, tortilla española y hojas orgánicas.',480,NULL,'normal',_binary '',_binary '',NULL,NULL),(4081,58,'Queso Camembert','gratén de queso gruyère, croutons con chutney de manzanas, peras al campari y blue chesse, y bouquet de rúcula.',420,NULL,'normal',_binary '',_binary '',NULL,NULL),(4082,58,'Soupe à L’Oignon','',230,NULL,'normal',_binary '',_binary '',NULL,NULL),(4083,58,'Potaje casero de verdura y ternera','',230,NULL,'normal',_binary '',_binary '',NULL,NULL),(4084,58,'Ensalada de Salmón ahumado','queso brie, alcaparras, hojas verdes y almendras',390,NULL,'vegetarian',_binary '',_binary '','',NULL),(4085,58,'Ensalada Ceasar','con jamón serrano',360,NULL,'normal',_binary '',_binary '','',NULL),(4086,58,'Ensaladas bistro','cinco ingredientes vegetales a su gusto',330,NULL,'vegetarian',_binary '',_binary '','',NULL),(4087,58,'Salmón ahumado','salsa de tomates, queso mozzarella, queso azul, cheddar, gruyère y pimientos asados',550,NULL,'normal',_binary '',_binary '',NULL,NULL),(4088,58,'Prosciutto:','jamón crudo, mozzarella, salsa de tomates, rúcula fresca, huevo rallado, champignones fileteados, queso parmesano y pesto clásico',480,NULL,'normal',_binary '',_binary '',NULL,NULL),(4089,58,'Clásica','salsa de tomates, jamón cocido, mozzarella orégano, aceitunas',410,NULL,'normal',_binary '',_binary '',NULL,NULL),(4090,58,'Vegetariana:','salsa de tomates, mozzarella, vegetales asados, tomates en rodajas y albahaca',430,NULL,'normal',_binary '',_binary '',NULL,NULL),(4091,58,'Arroz a la Valenciana','arroz al azafrán, mariscos, pollo y vegetales',540,NULL,'normal',_binary '',_binary '',NULL,NULL),(4092,58,'Saltado de lomo estilo Limeño','acompañado de arroz basmati',475,NULL,'normal',_binary '',_binary '',NULL,NULL),(4093,58,'Matambre de ternera con tomates secos','queso brie gratinado y papas al plomo',510,NULL,'normal',_binary '',_binary '',NULL,NULL),(4094,58,'Lasagna clasica italiana','en pomodoro de tomates y salsa bechamel gratinada',470,NULL,'normal',_binary '',_binary '',NULL,NULL),(4095,58,'Tempura de coliflores al curry','crema de garbanzos, cous cous cremoso, vinagreta de porotos y anís, calabazas asadas',445,NULL,'normal',_binary '',_binary '',NULL,NULL),(4096,58,'Langostinos crocantes en panko','laminas de pulpo, dashi de vegetales y fideo ramen en consomé de verduras',545,NULL,'normal',_binary '',_binary '',NULL,NULL),(4097,58,'Pechugas cordon bleu Casanova','salsa de puerros, papas y batatas chips',470,NULL,'normal',_binary '',_binary '',NULL,NULL),(4098,58,'Burguer de entrecôte y lomo (350gr)','relleno de queso azul, salsa de curry de tomates y papas duquesa',490,NULL,'normal',_binary '',_binary '',NULL,NULL),(4099,58,'Rack de cordero ahumado','ratatouille asada en salsa demiglase de cerveza negra',515,NULL,'normal',_binary '',_binary '',NULL,NULL),(4100,58,'Criollo Gourmet','degustación de chorizo y morcilla bombón, mollejas, matambre de cerdo a la chapa con batatas horneadas y salsa criolla',570,NULL,'normal',_binary '',_binary '',NULL,NULL),(4101,58,'Sorrentinos jamón, mozzarella y albahaca','con salsa Arrabiata (ajo, albahaca, pimienta, oliva, tomates, bouquet de hierbas)',425,NULL,'normal',_binary '',_binary '',NULL,NULL),(4102,58,'Sorrentinos de alcauciles, panceta y almendras','con salsa putanesca (tomate, ajo, anchoas, olivas negras y alcaparras)',440,NULL,'normal',_binary '',_binary '',NULL,NULL),(4103,58,'Panzottis de calabaza, jamón crudo y castañas de cajú','con ragôut de ternera y hongos de pino',455,NULL,'normal',_binary '',_binary '',NULL,NULL),(4104,58,'Panzottis de centolla y echalottes','con salsa amatriciana de camarones',480,NULL,'normal',_binary '',_binary '',NULL,NULL),(4105,58,'Penne Rigate en fiuri de mare','',475,NULL,'normal',_binary '',_binary '',NULL,NULL),(4106,58,'Fettuccini al huevo','',405,NULL,'normal',_binary '',_binary '',NULL,NULL),(4107,58,'Penne rigatti','',405,NULL,'normal',_binary '',_binary '',NULL,NULL),(4108,58,'Linguine','',405,NULL,'normal',_binary '',_binary '',NULL,NULL),(4109,58,'Gnocchi de papa','',405,NULL,'normal',_binary '',_binary '',NULL,NULL),(4110,58,'Fileto','',0,NULL,'normal',_binary '',_binary '',NULL,NULL),(4111,58,'Crema','',0,NULL,'normal',_binary '',_binary '',NULL,NULL),(4112,58,'Graten','',0,NULL,'normal',_binary '',_binary '',NULL,NULL),(4113,58,'Manteca','',0,NULL,'normal',_binary '',_binary '',NULL,NULL),(4114,58,'Cuatro Quesos','',0,NULL,'normal',_binary '',_binary '',NULL,NULL),(4115,58,'Amatriciana','',0,NULL,'normal',_binary '',_binary '',NULL,NULL),(4116,58,'Putanesca','',0,NULL,'normal',_binary '',_binary '',NULL,NULL),(4117,58,'Arrabiata','',0,NULL,'normal',_binary '',_binary '',NULL,NULL),(4118,58,'Filet de salmón','',585,NULL,'normal',_binary '',_binary '',NULL,NULL),(4119,58,'Bife de Chorizo','',650,NULL,'normal',_binary '',_binary '',NULL,NULL),(4120,58,'Lomo','',530,NULL,'normal',_binary '',_binary '',NULL,NULL),(4121,58,'Entrecôte','',500,NULL,'normal',_binary '',_binary '',NULL,NULL),(4122,58,'Carré de cerdo','',470,NULL,'normal',_binary '',_binary '',NULL,NULL),(4123,58,'Muslo','',420,NULL,'normal',_binary '',_binary '',NULL,NULL),(4124,58,'Pechuga','',420,NULL,'normal',_binary '',_binary '',NULL,NULL),(4125,58,'Puré de calabaza asado / Puré de papas / Puré de zanahoria','',0,NULL,'normal',_binary '',_binary '',NULL,NULL),(4126,58,'Sauté de vegetales / Espinacas salteadas con queso parmesano / Panaché de verduras','',0,NULL,'normal',_binary '',_binary '',NULL,NULL),(4127,58,'Papas al graten / Arroz blanco / Pilaf / Vegetales grillados','',0,NULL,'normal',_binary '',_binary '',NULL,NULL),(4128,58,'Papas fritas / Papas españolas / Papas noisette','',0,NULL,'normal',_binary '',_binary '',NULL,NULL),(4129,58,'Plato Principal','Patitas de pollo o Hamburguesa Kids, medallón de carne, queso, jamón, tomate y lechuga o Milanesa de carne o ave o Gnoccis de papa o Spaghetti',375,NULL,'normal',_binary '',_binary '',NULL,NULL),(4130,58,'Puré de papas','',0,NULL,'normal',_binary '',_binary '',NULL,NULL),(4131,58,'Puré de calabaza','',0,NULL,'normal',_binary '',_binary '',NULL,NULL),(4132,58,'Papas fritas','',0,NULL,'normal',_binary '',_binary '',NULL,NULL),(4133,58,'Fileto','',0,NULL,'normal',_binary '',_binary '',NULL,NULL),(4134,58,'Crema','',0,NULL,'normal',_binary '',_binary '',NULL,NULL),(4135,58,'Mixta','',0,NULL,'normal',_binary '',_binary '',NULL,NULL),(4136,58,'Volcán de chocolate con salsa de frambuesas y helado de crema','',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(4137,58,'Tiramisu clásico al estilo Bistro del Poeta','',220,NULL,'normal',_binary '',_binary '',NULL,NULL),(4138,58,'Crême brûlée con centro de dulce de leche','',230,NULL,'normal',_binary '',_binary '',NULL,NULL),(4139,58,'Postre Tres Leches','',210,NULL,'normal',_binary '',_binary '',NULL,NULL),(4140,58,'Flan casero','',190,NULL,'normal',_binary '',_binary '',NULL,NULL),(4141,58,'Torta Matilda','',0,NULL,'normal',_binary '',_binary '',NULL,NULL),(4142,58,'Triffle de Oreo','',0,NULL,'normal',_binary '',_binary '',NULL,NULL),(4143,58,'Helado Holiday Inn','',0,NULL,'normal',_binary '',_binary '',NULL,NULL),(4144,58,'degustación de','crème brûlée, Cake de coco y macaron, trufa de maní, shot de chocotorta',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(4145,58,'Gaseosa/ Agua mineral','',90,NULL,'normal',_binary '',_binary '',NULL,NULL),(4146,58,'Agua Ser Citrus','',90,NULL,'normal',_binary '',_binary '',NULL,NULL),(4147,58,'Jugo de Cítricos','',110,NULL,'normal',_binary '',_binary '',NULL,NULL),(4148,58,'Limonada','',150,NULL,'normal',_binary '',_binary '',NULL,NULL),(4149,58,'Licuados','',150,NULL,'normal',_binary '',_binary '',NULL,NULL),(4150,58,'Milkshakes','',150,NULL,'normal',_binary '',_binary '',NULL,NULL),(4151,58,'Stella Artois','',130,NULL,'normal',_binary '',_binary '',NULL,NULL),(4152,58,'Corona','',160,NULL,'normal',_binary '',_binary '',NULL,NULL),(4153,58,'Heineken','',140,NULL,'normal',_binary '',_binary '',NULL,NULL),(4154,58,'Quilmes','',115,NULL,'normal',_binary '',_binary '',NULL,NULL),(4155,58,'Isembeck','',115,NULL,'normal',_binary '',_binary '',NULL,NULL),(4156,58,'Stella Noir','',130,NULL,'normal',_binary '',_binary '',NULL,NULL),(4157,58,'Alambrado Malbec','',150,NULL,'normal',_binary '',_binary '',NULL,NULL),(4158,58,'Serie A Malbec, Familia Zuccardi','',190,NULL,'normal',_binary '',_binary '',NULL,NULL),(4159,58,'Zuccardi Q Malbec, Familia Zuccardi','',320,NULL,'normal',_binary '',_binary '',NULL,NULL),(4160,58,'Alambrado Chardonnay','',150,NULL,'normal',_binary '',_binary '',NULL,NULL),(4161,58,'Serie A Chardonnay, Zuccardi','',190,NULL,'normal',_binary '',_binary '',NULL,NULL),(4162,58,'Zuccardi Q Chardonnay','',320,NULL,'normal',_binary '',_binary '',NULL,NULL),(4163,58,'Café / Cortado/ Té / Infusiones','',80,NULL,'normal',_binary '',_binary '',NULL,NULL),(4164,58,'Café en Jarrito','',95,NULL,'normal',_binary '',_binary '',NULL,NULL),(4165,58,'Capuchino','',105,NULL,'normal',_binary '',_binary '',NULL,NULL),(4166,15,'Omelette','Jamón y Queso + Guarnición',370,NULL,'normal',_binary '',_binary '',NULL,NULL),(4167,15,'Mediterranea','Tiritas de lomo / rúcula / lechuga / tomates cherry / mozzarella / aceitunas',370,NULL,'normal',_binary '',_binary '',NULL,NULL),(4168,15,'Fresca','Rúcula / Tomates cherry / Palta / Huevo poche / Queso en hebras / Mix de semillas / Tiras de pan de pizza tostado',370,NULL,'normal',_binary '',_binary '',NULL,NULL),(4169,15,'Chicken','Tiritas de pollo / Mix de hojas verdes / Tomates cherry / Palta / Hongos frescos',370,NULL,'normal',_binary '',_binary '',NULL,NULL),(4170,15,'Calentita','Zucchinis / Berenjenas / Morrón / Zanahoria / Hojas de rúcula fresca / Huevo poche / almendras tostadas',370,NULL,'normal',_binary '',_binary '',NULL,NULL),(4171,15,'Panino','Hamburguesa / Lechuga / Tomate / Jamón cocido / Queso / Huevo / Mayonesa + Papas Fritas',380,NULL,'normal',_binary '',_binary '',NULL,NULL),(4172,15,'Diva','Hamburguesa / Cebolla / Hongos / Mozzarella / Huevo / Rúcula / Barbacoa + Papas Fritas',380,NULL,'normal',_binary '',_binary '',NULL,NULL),(4173,15,'Panceta Crispy','Hamburguesa / Cebolla caramelizada / Mozzarella / Panceta crocante + Papas Fritas',380,NULL,'normal',_binary '',_binary '','',NULL),(4174,15,'Mozzarella','Mediana',400,NULL,'normal',_binary '',_binary '',NULL,NULL),(4175,15,'Mozzarella','Grande',550,NULL,'normal',_binary '',_binary '',NULL,NULL),(4176,15,'Rúcula y Jamón Crudo','Mediana',440,NULL,'normal',_binary '',_binary '',NULL,NULL),(4177,15,'Rúcula y Jamón Crudo','Grande',590,NULL,'normal',_binary '',_binary '',NULL,NULL),(4178,15,'Jamón Cocido','Mediana',410,NULL,'normal',_binary '',_binary '',NULL,NULL),(4179,15,'Jamón Cocido','Grande',550,NULL,'normal',_binary '',_binary '',NULL,NULL),(4180,15,'Palmitos','Mediana',420,NULL,'normal',_binary '',_binary '',NULL,NULL),(4181,15,'Palmitos','Grande',580,NULL,'normal',_binary '',_binary '',NULL,NULL),(4182,15,'Napolitana','Mediana',420,NULL,'normal',_binary '',_binary '',NULL,NULL),(4183,15,'Napolitana','Grande',570,NULL,'normal',_binary '',_binary '',NULL,NULL),(4184,15,'Champignones','Mediana',410,NULL,'normal',_binary '',_binary '',NULL,NULL),(4185,15,'Champignones','Grande',550,NULL,'normal',_binary '',_binary '',NULL,NULL),(4186,15,'Milanesas de Peceto','Peceto + Guarnición',360,NULL,'normal',_binary '',_binary '',NULL,NULL),(4187,15,'Suprema de Pollo','Suprema + Guarnición',340,NULL,'normal',_binary '',_binary '',NULL,NULL),(4188,31,'Trilogía de Ceviches','Mix de ceviches peruanos de palta, spicy y clásico.',0,NULL,'normal',_binary '',_binary '','',NULL),(4189,31,'Mozzarella Ebi','Langostinos apanados rellenos en panko',0,NULL,'normal',_binary '',_binary '',NULL,NULL),(4190,31,'Mix de 12 piezas de sushi frías y calientes','California Acevichado (salmón · queso · verdeo · bañado en salsa acevichada)\nCanggu Roll (langostino apanado · queso · verdeo · bañado en salsa acevichada · batata crispy) \nRock & Roll (langostino · queso · verdeo · bañado en salsa acevichada)',0,NULL,'normal',_binary '',_binary '',NULL,NULL),(4191,31,'Bife de lomo al curry con puré','',0,NULL,'normal',_binary '',_binary '',NULL,NULL),(4192,31,'Pavlova','Con peras al vino blanco, crema, almendra y dulce de leche.',0,NULL,'normal',_binary '',_binary '',NULL,NULL),(4193,31,'Marquisse','Con remolacha, nuez, dulce de leche, crema y merengue.',0,NULL,'normal',_binary '',_binary '','',NULL),(4194,31,'Clásico','Gin Gordons, limón y agua tónica',300,NULL,'normal',_binary '',_binary '',NULL,NULL),(4195,31,'Cucumber','Gin Gordons, pepino y agua tónica $350',350,NULL,'normal',_binary '',_binary '',NULL,NULL),(4196,31,'Rosemary','Gin Gordons, romero, pomelo y agua tónica',350,NULL,'normal',_binary '',_binary '',NULL,NULL),(4197,31,'Pink','Gin Beefeater Pink, pomelo y agua tónica.',400,NULL,'normal',_binary '',_binary '',NULL,NULL),(4198,31,'Citrus','Gin Gordons, naranja, pomelo, limón y agua tónica.',350,NULL,'normal',_binary '',_binary '',NULL,NULL),(4199,31,'Tanqueray','+ $100',100,NULL,'normal',_binary '',_binary '',NULL,NULL),(4200,31,'Bombay Sapphire','+ $150',150,NULL,'normal',_binary '',_binary '',NULL,NULL),(4201,31,'Hendriks','+ $200',200,NULL,'normal',_binary '',_binary '',NULL,NULL),(4202,31,'Armeil de Canela','Ron de canela, jugo de limón, miel 2.1, espumante.',350,NULL,'normal',_binary '',_binary '',NULL,NULL),(4203,31,'Certero','Campari macerado en te “Alicia en el país”, jugo de arándanos, maracuyá, syrup y jugo de limón.',350,NULL,'normal',_binary '',_binary '',NULL,NULL),(4204,31,'Yucatán','Gin Gordons, Aperol, vodka infusionado con jalapeño, maracuyá, jugo de limón y syrup.',350,NULL,'normal',_binary '',_binary '',NULL,NULL),(4205,31,'Catch Me','Vermú rosso, jaggermeister, jugo de pomelo, jugo de limón y syrup.',350,NULL,'normal',_binary '',_binary '',NULL,NULL),(4206,31,'5th Avenue','Gin Gordons, Aperol, jugo de manzana, lima y azúcar.',350,NULL,'normal',_binary '',_binary '',NULL,NULL),(4207,31,'Membresía','Campari, syrup de membrillo, pepino y agua tónica.',300,NULL,'normal',_binary '',_binary '',NULL,NULL),(4208,31,'Paper Plane','Bourbon, Aperol, Cynar y jugo de limón.',350,NULL,'normal',_binary '',_binary '',NULL,NULL),(4209,31,'Bull Mojito','Ron Havana blanco, jaggermeister, Red Bull, menta, syrup y jugo de limón.',350,NULL,'normal',_binary '',_binary '',NULL,NULL),(4210,31,'Campestre','Campari, te de durazno, maracuyá y syrup.',300,NULL,'normal',_binary '',_binary '',NULL,NULL),(4211,31,'Maracuyá','',300,NULL,'normal',_binary '',_binary '','',NULL),(4212,31,'Malibú','',350,NULL,'normal',_binary '',_binary '',NULL,NULL),(4213,31,'Frutos Rojos','',300,NULL,'normal',_binary '',_binary '',NULL,NULL),(4214,31,'Old Fashioned','Whisky Johnnie Walker Red, syrup simple y bitter Angostura.',350,NULL,'normal',_binary '',_binary '',NULL,NULL),(4215,31,'Pisco Sour','Pisco, syrup simple, jugo de limón y clara de huevo.',300,NULL,'normal',_binary '',_binary '',NULL,NULL),(4216,31,'Aperol Spritz','Aperol, soda, naranja y champagne.',300,NULL,'normal',_binary '',_binary '',NULL,NULL),(4217,31,'Negroni','Gin Gordons, Carpano Rosso y Campari.',300,NULL,'normal',_binary '',_binary '',NULL,NULL),(4218,31,'Fernet','Fernet Branca y coca.',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(4219,31,'Limonada','Menta, jengibre, jugo de limón y soda.',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(4220,31,'Posta do Sol','Jugo de naranja, jugo de manzana, maracuyá y miel.',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(4221,31,'Universo Paralelo','Te de durazno, jugo de manzana, jugo de limón y arándanos.',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(4222,31,'Smirnoff con jugo','Una medida por $250 y dos medidas por $450.',250,NULL,'normal',_binary '',_binary '','',NULL),(4223,31,'Snirnoff con Red Bull','Una medida por $350 y dos medidas por $600.',350,NULL,'normal',_binary '',_binary '',NULL,NULL),(4224,31,'Absolut con Red Bull','Una medida por $450 y dos medidas por $800.',450,NULL,'normal',_binary '',_binary '',NULL,NULL),(4225,31,'Botella Smirnoff','Incluye 4 Red Bulls.',2500,NULL,'normal',_binary '',_binary '','',NULL),(4226,31,'Absolut Regular','Incluye 4 Red Bulls.',3500,NULL,'normal',_binary '',_binary '',NULL,NULL),(4227,31,'Absolut Saborizado','Incluye 4 Red Bulls.',4000,NULL,'normal',_binary '',_binary '',NULL,NULL),(4228,31,'Jäger con Red Bull','Una medida de Jäger con Red Bull a $450 y dos medidas de Jäger por $800.',450,NULL,'normal',_binary '',_binary '',NULL,NULL),(4229,31,'Jäger Julep','',400,NULL,'normal',_binary '',_binary '',NULL,NULL),(4230,31,'Meister Shot','Un Shot por $300 y dos shots por $500.',300,NULL,'normal',_binary '',_binary '',NULL,NULL),(4231,31,'Jägermeister Bottle','Incluye 4 Red Bulls.',4500,NULL,'normal',_binary '',_binary '',NULL,NULL),(4232,31,'Las Perdices Torrontés Dulce Natural','',500,NULL,'normal',_binary '',_binary '',NULL,NULL),(4233,31,'Las Perdices Malbec','',500,NULL,'normal',_binary '',_binary '',NULL,NULL),(4234,31,'Cafayate Malbec','',400,NULL,'normal',_binary '',_binary '',NULL,NULL),(4235,31,'Cafayate Torrontés Dulce','',400,NULL,'normal',_binary '',_binary '',NULL,NULL),(4236,31,'Cafayate Reserva Malbec','',550,NULL,'normal',_binary '',_binary '',NULL,NULL),(4237,31,'Cafayate Gran Linaje Malbec','',750,NULL,'normal',_binary '',_binary '',NULL,NULL),(4238,31,'Andeluna Malbec','',500,NULL,'normal',_binary '',_binary '',NULL,NULL),(4239,31,'Andeluna Malbec Rose','',500,NULL,'normal',_binary '',_binary '',NULL,NULL),(4240,31,'Andeluna Altitud Malbec','',800,NULL,'normal',_binary '',_binary '',NULL,NULL),(4241,31,'Fazzio Malbec','',500,NULL,'normal',_binary '',_binary '',NULL,NULL),(4242,31,'Fazzio Rosado','',500,NULL,'normal',_binary '',_binary '',NULL,NULL),(4243,31,'Fazzio Malbec Reserva','',780,NULL,'normal',_binary '',_binary '',NULL,NULL),(4244,31,'Fazzio Blend Reserva','',780,NULL,'normal',_binary '',_binary '',NULL,NULL),(4245,31,'Miller','',200,NULL,'normal',_binary '',_binary '',NULL,NULL),(4246,31,'Heineken','',250,NULL,'normal',_binary '',_binary '',NULL,NULL),(4247,31,'Chandon 187cc','',300,NULL,'normal',_binary '',_binary '',NULL,NULL),(4248,31,'Chandon Extra Brut','',1200,NULL,'normal',_binary '',_binary '',NULL,NULL),(4249,31,'Chandon Extra Brut Rose','',1200,NULL,'normal',_binary '',_binary '',NULL,NULL),(4250,31,'Chandon Délice','',1200,NULL,'normal',_binary '',_binary '',NULL,NULL),(4251,31,'Chandon Apéritif','',1200,NULL,'normal',_binary '',_binary '',NULL,NULL),(4252,31,'Baron B','',2000,NULL,'normal',_binary '',_binary '',NULL,NULL),(4253,31,'Veuve Clicquot','',7000,NULL,'normal',_binary '',_binary '',NULL,NULL),(4254,31,'Coca Cola','',100,NULL,'normal',_binary '',_binary '',NULL,NULL),(4255,31,'Coca Cola Zero','',100,NULL,'normal',_binary '',_binary '',NULL,NULL),(4256,31,'Sprite','',100,NULL,'normal',_binary '',_binary '',NULL,NULL),(4257,31,'Agua con/sin gas','',100,NULL,'normal',_binary '',_binary '',NULL,NULL),(4258,31,'Scheweppes','',100,NULL,'normal',_binary '',_binary '',NULL,NULL),(4259,31,'Red Bull Energy Drink','',150,NULL,'normal',_binary '',_binary '',NULL,NULL),(4260,31,'Red Bull Energy Drink Sugar Free','',150,NULL,'normal',_binary '',_binary '',NULL,NULL),(4261,15,'submarino','',110,NULL,'normal',_binary '',_binary '',NULL,NULL),(4262,15,'capuccino simple','',110,NULL,'normal',_binary '',_binary '',NULL,NULL),(4263,15,'capuccino Italiano','',120,NULL,'normal',_binary '',_binary '',NULL,NULL),(4264,15,'capuccino Holandês','',130,NULL,'normal',_binary '',_binary '',NULL,NULL),(4265,15,'leche en vaso','',100,NULL,'normal',_binary '',_binary '',NULL,NULL),(4266,15,'Te con leche','',100,NULL,'normal',_binary '',_binary '',NULL,NULL),(4267,15,'Milanesa de Peceto + Guarnición + Bebida + Postre o Café','Almuerzo y Cena\nLunes - Mar - Mier - Juev - Vier',400,NULL,'normal',_binary '',_binary '','',NULL),(4268,15,'Milanesa de Peceto + Guarnición + Bebida + Postre o Café','Almuerzo y Cena\nSábado - Domingo y feriados',470,NULL,'normal',_binary '',_binary '','',NULL),(4269,15,'Milanesa de Pollo + Guarnición + Bebida + Postre o Café','Almuerzo y Cena\nLunes - Mar - Mier - Juev - Vier',400,NULL,'normal',_binary '',_binary '','',NULL),(4270,15,'Milanesa de Pollo + Guarnición + Bebida + Postre o Café','Almuerzo y Cena\nSábado - Domingo y feriados',470,NULL,'normal',_binary '',_binary '','',NULL),(4271,15,'Pechuga de pollo + Guarnición + Bebida + Postre o Café','Almuerzo y Cena\nLunes - Mar - Mier - Juev - Vier',400,NULL,'normal',_binary '',_binary '','',NULL),(4272,15,'Pechuga de pollo + Guarnición + Bebida + Postre o Café','Almuerzo y Cena\nSábado - Domingo y feriados',470,NULL,'normal',_binary '',_binary '','',NULL);
/*!40000 ALTER TABLE `pro_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pxm_proxmen`
--

DROP TABLE IF EXISTS `pxm_proxmen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pxm_proxmen` (
  `pxm_id` int NOT NULL AUTO_INCREMENT,
  `usr_id` int NOT NULL,
  `men_id` int NOT NULL,
  `pro_id` int NOT NULL,
  `cat_id` int NOT NULL,
  `pxm_enable` bit(1) NOT NULL DEFAULT b'1',
  `pxm_order` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`pxm_id`),
  KEY `pxm_usr_id` (`usr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6846 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pxm_proxmen`
--

LOCK TABLES `pxm_proxmen` WRITE;
/*!40000 ALTER TABLE `pxm_proxmen` DISABLE KEYS */;
INSERT INTO `pxm_proxmen` VALUES (537,2,7,3,2,_binary '',1),(538,2,7,4,2,_binary '',3),(539,2,7,5,2,_binary '',2),(540,2,7,6,3,_binary '',1),(541,2,7,7,3,_binary '',3),(542,2,7,8,3,_binary '\0',2),(543,2,7,9,4,_binary '',1),(544,2,7,10,4,_binary '',2),(545,2,7,11,4,_binary '',3),(546,2,7,12,4,_binary '',4),(547,2,7,13,4,_binary '',5),(548,2,7,14,5,_binary '',1),(549,2,7,15,5,_binary '',2),(550,2,7,16,5,_binary '',3),(551,2,7,17,5,_binary '',4),(552,2,7,18,5,_binary '',5),(553,2,7,19,4,_binary '',6),(554,2,7,20,6,_binary '',1),(555,2,7,21,6,_binary '',2),(556,8,9,25,7,_binary '',1),(557,8,9,26,7,_binary '',2),(558,8,9,27,7,_binary '',3),(559,8,9,28,7,_binary '',4),(560,8,9,29,7,_binary '',5),(561,8,9,30,7,_binary '',6),(562,8,9,31,7,_binary '',7),(563,8,9,32,8,_binary '',1),(564,8,9,33,8,_binary '',2),(565,8,9,34,8,_binary '',3),(566,8,9,35,8,_binary '',4),(567,8,9,36,8,_binary '',5),(568,8,9,37,8,_binary '',6),(569,8,9,38,8,_binary '',7),(570,8,9,39,9,_binary '',1),(571,8,9,40,9,_binary '',2),(572,8,9,41,9,_binary '',3),(573,8,9,42,9,_binary '',4),(574,8,9,43,9,_binary '',5),(575,8,9,44,10,_binary '',1),(576,8,9,45,10,_binary '',2),(577,8,9,46,10,_binary '',3),(578,8,9,47,10,_binary '',4),(579,8,9,48,10,_binary '',5),(580,8,9,49,10,_binary '',6),(581,8,9,50,10,_binary '',7),(582,8,9,51,10,_binary '',8),(583,8,9,52,10,_binary '',9),(584,8,9,53,10,_binary '',10),(585,8,9,54,11,_binary '',1),(586,8,9,55,11,_binary '',2),(587,8,9,56,11,_binary '',3),(588,8,9,57,11,_binary '',4),(589,8,9,58,12,_binary '',1),(590,8,9,59,13,_binary '',1),(591,8,9,60,13,_binary '',2),(592,8,9,61,13,_binary '',3),(593,8,9,62,13,_binary '',4),(594,8,9,63,13,_binary '',5),(595,8,9,64,13,_binary '',6),(596,8,9,65,13,_binary '',7),(597,8,9,66,13,_binary '',8),(598,8,9,67,14,_binary '',1),(599,8,9,68,14,_binary '',2),(600,8,9,69,14,_binary '',3),(601,8,9,70,14,_binary '',4),(602,8,9,71,14,_binary '',5),(603,8,9,72,14,_binary '',6),(604,8,9,73,14,_binary '',7),(605,8,9,74,15,_binary '',1),(606,8,9,75,16,_binary '',1),(607,8,9,76,16,_binary '',2),(608,8,9,77,16,_binary '',3),(609,8,9,78,16,_binary '',4),(610,8,9,79,16,_binary '',5),(611,8,9,80,17,_binary '',1),(612,8,9,81,17,_binary '',2),(613,8,9,82,17,_binary '',3),(614,8,9,83,18,_binary '',1),(615,8,9,84,19,_binary '',1),(616,8,9,85,19,_binary '',2),(617,8,9,86,20,_binary '',1),(618,8,9,87,20,_binary '',2),(619,8,9,88,20,_binary '',3),(620,8,9,89,20,_binary '',4),(621,8,9,90,20,_binary '',5),(622,8,9,91,20,_binary '',6),(623,8,9,92,20,_binary '',7),(624,8,9,93,22,_binary '',1),(625,8,9,94,22,_binary '',2),(626,8,9,95,22,_binary '',3),(627,8,9,96,22,_binary '',4),(628,8,9,97,22,_binary '',5),(629,8,9,98,22,_binary '',6),(630,8,9,99,22,_binary '',7),(631,8,9,100,22,_binary '',8),(632,8,9,101,22,_binary '',9),(633,8,9,102,22,_binary '',10),(634,8,9,103,22,_binary '',11),(635,8,9,104,23,_binary '',1),(636,8,9,105,23,_binary '',2),(637,8,9,106,23,_binary '',3),(638,8,9,107,23,_binary '',4),(639,8,9,108,23,_binary '',5),(640,8,9,109,23,_binary '',6),(641,8,9,110,23,_binary '',7),(642,8,9,111,24,_binary '',1),(643,8,9,112,24,_binary '',2),(644,8,9,113,24,_binary '',3),(645,8,9,114,24,_binary '',4),(646,8,9,115,24,_binary '',5),(647,8,9,116,24,_binary '',6),(648,8,9,117,24,_binary '',7),(649,8,9,118,24,_binary '',8),(650,8,9,119,24,_binary '',9),(651,8,9,120,24,_binary '',10),(652,8,9,121,24,_binary '',11),(653,8,9,122,24,_binary '',12),(654,8,9,123,24,_binary '',13),(655,8,9,124,24,_binary '',14),(656,8,9,125,24,_binary '',15),(657,8,9,126,24,_binary '',16),(658,8,9,127,24,_binary '',17),(659,8,9,128,24,_binary '',18),(660,8,9,129,24,_binary '',19),(661,8,9,130,24,_binary '',20),(662,8,9,131,24,_binary '',21),(663,8,9,132,24,_binary '',22),(664,8,9,133,24,_binary '',23),(665,8,9,134,24,_binary '',24),(666,8,9,135,24,_binary '',25),(667,8,9,136,24,_binary '',26),(668,8,9,137,24,_binary '',27),(669,8,9,138,24,_binary '',28),(670,8,9,139,24,_binary '',29),(671,8,9,140,24,_binary '',30),(672,8,9,141,24,_binary '',31),(673,8,9,142,24,_binary '',32),(674,8,9,143,24,_binary '',33),(675,8,9,144,24,_binary '',34),(676,8,9,145,24,_binary '',35),(677,8,12,146,26,_binary '',1),(678,8,12,147,27,_binary '',1),(679,8,12,148,32,_binary '',1),(680,8,12,149,32,_binary '',2),(681,8,12,150,32,_binary '',3),(682,8,12,151,32,_binary '',4),(683,8,12,152,32,_binary '',5),(684,8,12,153,33,_binary '',1),(685,8,12,154,33,_binary '',2),(686,8,12,155,33,_binary '',3),(687,8,12,156,35,_binary '',1),(688,8,12,157,35,_binary '',2),(689,8,12,158,35,_binary '',3),(690,8,12,159,35,_binary '',4),(691,8,12,160,35,_binary '',5),(692,8,12,161,35,_binary '',6),(693,8,9,162,36,_binary '',1),(694,8,9,163,36,_binary '',2),(695,8,9,164,36,_binary '',3),(696,8,9,165,36,_binary '',4),(697,8,9,166,36,_binary '',5),(698,8,9,167,36,_binary '',6),(699,8,9,168,36,_binary '',7),(700,8,9,169,36,_binary '',8),(701,8,9,170,36,_binary '',9),(702,8,9,171,36,_binary '',10),(703,8,9,172,37,_binary '',1),(704,8,9,173,37,_binary '',2),(705,8,9,174,37,_binary '',3),(706,8,9,175,37,_binary '',4),(707,8,9,176,37,_binary '',5),(708,8,9,177,37,_binary '',6),(709,8,9,178,37,_binary '',7),(710,8,9,179,37,_binary '',8),(711,8,9,185,39,_binary '',1),(712,8,9,186,39,_binary '',2),(713,8,9,187,39,_binary '',3),(714,8,9,188,39,_binary '',4),(715,8,9,189,40,_binary '',1),(716,8,9,190,40,_binary '',2),(717,8,9,191,40,_binary '',3),(718,8,9,192,40,_binary '',4),(719,8,9,193,40,_binary '',5),(720,8,9,194,40,_binary '',6),(721,8,9,195,40,_binary '',7),(722,8,9,196,40,_binary '',8),(723,8,9,197,40,_binary '',9),(724,8,9,198,40,_binary '',10),(725,8,9,199,40,_binary '',11),(726,8,9,200,40,_binary '',12),(727,8,9,201,40,_binary '',13),(728,8,9,202,40,_binary '',14),(729,8,9,203,40,_binary '',15),(730,8,9,204,40,_binary '',16),(731,8,9,205,40,_binary '',17),(732,8,9,206,40,_binary '',18),(733,8,9,207,40,_binary '',19),(734,8,9,208,40,_binary '',20),(735,8,9,209,40,_binary '',21),(736,8,9,210,40,_binary '',22),(737,8,9,211,40,_binary '',23),(738,11,13,212,41,_binary '',1),(740,13,15,214,42,_binary '\0',1),(741,13,15,215,42,_binary '\0',2),(742,13,15,216,42,_binary '\0',3),(743,15,17,217,56,_binary '',1),(744,15,17,218,56,_binary '',2),(745,15,17,219,56,_binary '',3),(746,15,17,220,56,_binary '',4),(747,15,17,221,56,_binary '',5),(748,15,17,222,56,_binary '',6),(749,15,17,223,56,_binary '',7),(750,15,17,224,56,_binary '',8),(751,15,17,225,57,_binary '',1),(752,15,17,226,57,_binary '',2),(753,15,17,227,58,_binary '',1),(754,15,17,228,58,_binary '',2),(755,15,17,229,58,_binary '',3),(756,15,17,230,59,_binary '',1),(757,15,17,231,59,_binary '',2),(758,15,17,232,59,_binary '',3),(759,15,17,233,59,_binary '',4),(760,15,17,234,59,_binary '',5),(761,15,17,235,59,_binary '',6),(762,15,17,236,60,_binary '',1),(763,15,17,237,60,_binary '',2),(764,15,17,238,60,_binary '',3),(765,15,17,239,60,_binary '',4),(766,15,17,240,60,_binary '',5),(767,15,17,241,60,_binary '',6),(768,15,17,242,60,_binary '',7),(769,15,17,243,60,_binary '',8),(770,15,17,244,60,_binary '',9),(771,15,17,245,60,_binary '',10),(772,15,17,246,60,_binary '',11),(773,15,17,247,60,_binary '',18),(774,15,17,248,60,_binary '',19),(775,15,17,249,60,_binary '',20),(776,15,17,250,60,_binary '',21),(777,15,17,251,60,_binary '',22),(778,15,17,252,60,_binary '',23),(779,15,17,253,60,_binary '',24),(780,15,17,254,60,_binary '',25),(781,15,17,255,60,_binary '',26),(782,15,17,256,60,_binary '',27),(783,15,17,257,61,_binary '',1),(784,15,17,258,61,_binary '',2),(785,15,17,259,61,_binary '',3),(786,15,17,260,61,_binary '',4),(787,15,17,261,61,_binary '',5),(788,15,17,262,62,_binary '',1),(789,15,17,263,62,_binary '',2),(790,15,17,264,62,_binary '',3),(791,15,17,265,62,_binary '',4),(792,15,17,266,62,_binary '',5),(793,15,17,267,62,_binary '',6),(794,15,17,268,62,_binary '',7),(795,15,17,269,63,_binary '',1),(796,15,17,270,63,_binary '',2),(797,15,17,271,64,_binary '',1),(798,15,17,272,64,_binary '',2),(799,15,17,273,64,_binary '',3),(800,15,17,274,64,_binary '',4),(801,15,17,275,64,_binary '',5),(802,15,17,276,64,_binary '',6),(803,15,17,277,64,_binary '',7),(804,15,17,278,64,_binary '',8),(805,15,17,279,64,_binary '',9),(806,15,17,280,64,_binary '',10),(807,15,17,281,64,_binary '',11),(808,15,17,282,65,_binary '',1),(809,15,17,283,65,_binary '',2),(810,15,17,284,65,_binary '',3),(811,15,17,285,65,_binary '',4),(813,13,15,287,43,_binary '',1),(814,13,15,288,43,_binary '',2),(815,13,15,289,43,_binary '',3),(816,13,15,290,43,_binary '',4),(817,13,15,291,43,_binary '',5),(818,13,15,292,44,_binary '\0',1),(819,13,15,293,44,_binary '\0',2),(820,13,15,294,45,_binary '\0',10),(821,13,15,295,45,_binary '\0',1),(822,13,15,296,45,_binary '\0',2),(823,13,15,297,45,_binary '\0',3),(824,13,15,298,45,_binary '\0',4),(825,13,15,299,45,_binary '\0',5),(826,13,15,300,45,_binary '\0',6),(827,13,15,301,45,_binary '\0',7),(828,13,15,302,45,_binary '\0',8),(829,13,15,303,45,_binary '\0',9),(830,13,15,304,46,_binary '',1),(831,13,15,305,46,_binary '',2),(832,13,15,306,46,_binary '',3),(833,13,15,307,46,_binary '',4),(834,13,15,308,46,_binary '',5),(835,13,15,309,67,_binary '',1),(836,13,15,310,67,_binary '',2),(837,13,15,311,67,_binary '\0',3),(838,13,15,312,47,_binary '',2),(839,13,15,313,47,_binary '',3),(840,13,15,314,47,_binary '',4),(841,15,17,315,66,_binary '',1),(842,13,15,316,47,_binary '',5),(843,15,17,317,66,_binary '',2),(844,15,17,318,66,_binary '',3),(845,13,15,319,47,_binary '',6),(846,13,15,320,47,_binary '',7),(847,11,13,321,41,_binary '',3),(849,11,13,323,41,_binary '\0',5),(852,13,15,326,70,_binary '\0',1),(853,13,15,327,69,_binary '\0',1),(854,13,15,328,69,_binary '\0',2),(855,13,15,329,71,_binary '',0),(857,11,13,331,41,_binary '',6),(859,11,13,333,41,_binary '',8),(1046,2,7,1,1,_binary '',2),(1049,2,7,2,1,_binary '',2),(1052,14,20,334,72,_binary '',1),(1054,14,20,336,72,_binary '',2),(1055,14,20,337,72,_binary '\0',3),(1056,14,20,338,72,_binary '',4),(1057,14,20,339,72,_binary '',5),(1058,14,20,340,72,_binary '\0',6),(1059,14,20,341,72,_binary '',7),(1060,14,20,342,72,_binary '',8),(1061,14,20,343,72,_binary '',9),(1063,17,22,345,73,_binary '',1),(1064,17,22,346,73,_binary '',2),(1065,17,22,347,73,_binary '',3),(1066,17,22,348,73,_binary '',4),(1067,17,22,349,73,_binary '',5),(1068,17,22,350,73,_binary '',6),(1069,17,22,351,73,_binary '',7),(1070,17,22,352,73,_binary '',8),(1071,17,22,353,73,_binary '',9),(1072,17,22,354,73,_binary '',10),(1073,17,22,355,73,_binary '',11),(1074,17,22,356,74,_binary '',1),(1075,17,22,357,74,_binary '',2),(1076,17,22,358,74,_binary '',3),(1077,17,22,359,74,_binary '',4),(1078,17,22,360,74,_binary '',5),(1079,17,22,361,73,_binary '',12),(1080,17,22,362,73,_binary '',13),(1081,17,22,363,73,_binary '',14),(1082,17,22,364,73,_binary '',15),(1083,17,22,365,73,_binary '',16),(1084,17,22,366,73,_binary '',17),(1085,17,22,367,73,_binary '',18),(1086,17,22,368,75,_binary '',1),(1087,17,22,369,75,_binary '',2),(1088,17,22,370,75,_binary '',3),(1089,17,22,371,75,_binary '',4),(1090,17,22,372,75,_binary '',5),(1091,17,22,373,75,_binary '',6),(1092,17,22,374,75,_binary '',7),(1093,17,22,375,76,_binary '',1),(1094,17,22,376,76,_binary '',2),(1095,17,22,377,76,_binary '',3),(1096,17,22,378,76,_binary '',4),(1097,17,22,379,76,_binary '',5),(1099,17,22,380,76,_binary '',6),(1100,17,22,381,76,_binary '',7),(1101,17,22,382,76,_binary '',8),(1102,17,22,383,76,_binary '',9),(1103,11,13,384,41,_binary '',9),(1105,11,13,386,41,_binary '',10),(1106,17,22,385,76,_binary '',10),(1107,11,13,387,41,_binary '',11),(1108,17,22,388,76,_binary '',11),(1109,11,13,389,41,_binary '',12),(1110,17,22,390,76,_binary '',12),(1111,11,13,213,41,_binary '',12),(1112,11,13,332,41,_binary '',12),(1113,11,13,391,41,_binary '',13),(1114,11,13,392,41,_binary '',14),(1115,11,13,393,41,_binary '',15),(1116,11,13,394,41,_binary '',16),(1117,11,13,395,78,_binary '',1),(1118,11,13,396,78,_binary '',2),(1119,11,13,397,78,_binary '',3),(1120,11,13,398,78,_binary '',4),(1121,11,13,399,78,_binary '',5),(1122,11,13,322,41,_binary '',16),(1123,17,22,400,77,_binary '',1),(1124,17,22,401,77,_binary '',2),(1125,17,22,402,77,_binary '',3),(1129,11,13,406,79,_binary '',4),(1130,11,13,407,79,_binary '',5),(1131,11,13,408,79,_binary '',6),(1132,11,13,403,79,_binary '',6),(1133,11,13,404,79,_binary '',6),(1134,11,13,405,79,_binary '',6),(1135,11,13,409,79,_binary '',7),(1136,11,13,410,80,_binary '',1),(1137,11,13,411,80,_binary '',2),(1138,11,13,412,80,_binary '',3),(1139,11,13,413,80,_binary '',4),(1140,11,13,414,80,_binary '',5),(1141,11,13,415,80,_binary '',6),(1142,11,13,416,80,_binary '',7),(1143,11,13,417,80,_binary '',8),(1144,11,13,418,80,_binary '',9),(1145,11,13,419,80,_binary '',10),(1146,11,13,420,80,_binary '',11),(1147,17,22,421,99,_binary '',1),(1148,17,22,422,99,_binary '',2),(1149,17,22,423,99,_binary '',3),(1150,17,22,424,100,_binary '',1),(1151,17,22,425,100,_binary '',2),(1152,17,22,426,100,_binary '',3),(1153,17,22,427,100,_binary '',4),(1154,17,22,428,101,_binary '',1),(1155,17,22,429,101,_binary '',2),(1156,17,22,430,101,_binary '',3),(1157,17,22,431,102,_binary '',1),(1158,17,22,432,102,_binary '',2),(1159,17,22,433,103,_binary '',1),(1160,17,22,434,103,_binary '',2),(1161,17,22,435,103,_binary '',3),(1162,17,22,436,103,_binary '',4),(1163,11,13,437,81,_binary '',1),(1164,11,13,438,81,_binary '',2),(1165,11,13,439,82,_binary '',1),(1166,11,13,440,82,_binary '',2),(1167,11,13,441,83,_binary '',1),(1168,11,13,442,83,_binary '',2),(1169,11,13,443,83,_binary '',3),(1170,11,13,444,83,_binary '',4),(1171,11,13,445,83,_binary '',5),(1172,11,13,446,83,_binary '',6),(1173,11,13,447,83,_binary '',7),(1174,11,13,448,83,_binary '',8),(1175,11,13,449,84,_binary '',1),(1176,11,13,450,84,_binary '',2),(1177,11,13,451,84,_binary '',3),(1178,11,13,452,85,_binary '',1),(1179,11,13,453,85,_binary '',2),(1180,11,13,454,85,_binary '',3),(1181,11,13,455,85,_binary '',4),(1182,11,13,456,85,_binary '',5),(1183,11,13,457,85,_binary '',6),(1185,11,13,459,85,_binary '',8),(1187,11,13,461,85,_binary '',10),(1188,11,13,462,85,_binary '',11),(1189,11,13,458,85,_binary '',11),(1190,11,13,460,85,_binary '',11),(1191,18,23,463,104,_binary '',1),(1192,19,24,464,105,_binary '',1),(1193,19,24,465,105,_binary '',2),(1194,19,24,466,105,_binary '',3),(1195,19,24,467,105,_binary '',4),(1196,19,24,468,106,_binary '',1),(1197,11,13,469,86,_binary '',1),(1198,11,13,470,86,_binary '',2),(1199,11,13,471,86,_binary '',3),(1200,11,13,472,87,_binary '',1),(1201,11,13,473,87,_binary '',2),(1202,11,13,474,87,_binary '',3),(1203,11,13,475,87,_binary '',4),(1204,11,13,476,87,_binary '',5),(1205,11,13,477,87,_binary '',6),(1206,11,13,478,87,_binary '',7),(1207,11,13,479,88,_binary '',1),(1208,11,13,480,88,_binary '',2),(1209,11,13,481,88,_binary '',3),(1210,11,13,482,88,_binary '',4),(1211,11,13,483,88,_binary '',5),(1212,11,13,484,88,_binary '',6),(1213,11,13,485,88,_binary '',7),(1214,11,13,486,88,_binary '',8),(1215,11,13,487,88,_binary '',9),(1216,11,13,488,88,_binary '',10),(1217,11,13,489,88,_binary '',11),(1218,11,13,490,89,_binary '',1),(1219,11,13,491,89,_binary '',2),(1220,11,13,492,89,_binary '',3),(1221,11,13,493,89,_binary '',4),(1222,11,13,494,89,_binary '',5),(1223,11,13,495,89,_binary '',6),(1224,11,13,496,89,_binary '',7),(1225,11,13,497,89,_binary '',8),(1226,11,13,498,89,_binary '',9),(1227,11,13,499,89,_binary '',10),(1228,11,13,500,89,_binary '',11),(1229,11,13,501,90,_binary '',1),(1230,11,13,502,90,_binary '',2),(1231,11,13,503,90,_binary '',3),(1232,11,13,504,90,_binary '',4),(1233,11,13,505,90,_binary '',5),(1234,16,21,506,108,_binary '',1),(1235,16,21,507,108,_binary '',2),(1236,11,13,508,90,_binary '',6),(1237,16,21,509,108,_binary '',3),(1238,11,13,510,90,_binary '',7),(1239,11,13,511,91,_binary '',1),(1240,11,13,512,91,_binary '',2),(1241,16,21,513,108,_binary '',4),(1242,16,21,514,108,_binary '',5),(1243,11,13,515,91,_binary '',3),(1244,11,13,516,91,_binary '',4),(1245,11,13,517,91,_binary '',5),(1246,16,21,518,109,_binary '',1),(1247,11,13,519,91,_binary '',6),(1248,16,21,520,109,_binary '',2),(1249,16,21,521,109,_binary '',3),(1250,16,21,522,109,_binary '',4),(1251,11,13,523,91,_binary '',7),(1252,11,13,524,91,_binary '',8),(1253,11,13,525,91,_binary '',9),(1254,11,13,526,91,_binary '',10),(1255,11,13,527,92,_binary '',1),(1256,11,13,528,92,_binary '',2),(1258,11,13,530,92,_binary '',4),(1259,16,21,531,109,_binary '',5),(1260,11,13,532,92,_binary '',5),(1261,16,21,533,109,_binary '',6),(1262,11,13,534,92,_binary '',6),(1263,16,21,535,109,_binary '',7),(1264,11,13,536,93,_binary '',1),(1265,16,21,537,109,_binary '',8),(1266,16,21,538,109,_binary '',9),(1267,11,13,539,94,_binary '',1),(1268,11,13,540,94,_binary '',2),(1269,16,21,541,110,_binary '',1),(1270,11,13,542,94,_binary '',3),(1271,11,13,543,94,_binary '',4),(1272,11,13,544,95,_binary '',1),(1274,11,13,546,95,_binary '',2),(1275,11,13,547,95,_binary '',3),(1276,11,13,548,95,_binary '',4),(1277,11,13,549,95,_binary '',5),(1278,11,13,550,95,_binary '',6),(1280,11,13,529,92,_binary '',6),(1281,11,13,551,96,_binary '',1),(1282,11,13,552,96,_binary '',2),(1283,11,13,553,96,_binary '',3),(1284,16,21,545,110,_binary '',2),(1285,11,13,554,96,_binary '',4),(1286,11,13,555,96,_binary '',5),(1287,11,13,556,97,_binary '',1),(1288,16,21,557,110,_binary '',3),(1290,16,21,559,110,_binary '',4),(1291,16,21,560,110,_binary '',5),(1292,11,13,561,98,_binary '',2),(1293,16,21,562,110,_binary '',6),(1294,11,13,558,98,_binary '',2),(1295,16,21,563,110,_binary '',7),(1296,16,21,564,110,_binary '',8),(1297,16,21,565,110,_binary '',9),(1298,11,13,566,98,_binary '',3),(1299,11,13,567,98,_binary '',4),(1300,16,21,568,110,_binary '',10),(1301,11,13,569,98,_binary '',5),(1302,16,21,570,110,_binary '',11),(1303,11,13,571,98,_binary '',6),(1304,16,21,572,110,_binary '',12),(1305,11,13,573,98,_binary '',7),(1306,16,21,574,110,_binary '',13),(1307,16,21,575,110,_binary '',14),(1308,11,13,576,98,_binary '',8),(1309,11,13,577,98,_binary '',9),(1310,11,13,578,98,_binary '',10),(1311,16,21,579,111,_binary '',1),(1312,16,21,580,111,_binary '',2),(1313,16,21,581,111,_binary '',3),(1314,16,21,582,111,_binary '',4),(1315,16,21,583,111,_binary '',5),(1316,16,21,584,112,_binary '',1),(1317,16,21,585,112,_binary '',2),(1318,16,21,586,113,_binary '',1),(1319,16,21,587,113,_binary '',2),(1320,16,21,588,113,_binary '',3),(1321,16,21,589,113,_binary '',4),(1322,16,21,590,113,_binary '',5),(1323,16,21,591,113,_binary '',6),(1324,16,21,592,113,_binary '',7),(1325,16,21,593,113,_binary '',8),(1326,16,21,594,114,_binary '',1),(1327,16,21,595,114,_binary '',2),(1328,16,21,596,114,_binary '',3),(1329,16,21,597,114,_binary '',4),(1330,16,21,598,115,_binary '',1),(1331,16,21,599,115,_binary '',2),(1332,16,21,600,115,_binary '',3),(1333,16,21,601,115,_binary '',4),(1334,17,22,602,103,_binary '',5),(1335,17,22,603,103,_binary '',6),(1336,17,22,604,103,_binary '',7),(1337,17,22,605,103,_binary '',8),(1338,17,22,606,103,_binary '',9),(1339,17,22,607,103,_binary '',10),(1340,17,22,608,103,_binary '',11),(1341,17,22,609,103,_binary '',12),(1342,17,22,610,103,_binary '',13),(1343,17,22,611,103,_binary '',14),(1344,17,22,612,103,_binary '',15),(1345,17,22,613,103,_binary '',16),(1346,17,22,614,103,_binary '',17),(1347,17,22,615,116,_binary '',1),(1348,17,22,616,116,_binary '',2),(1355,16,21,622,118,_binary '',1),(1356,16,21,623,118,_binary '',2),(1357,16,21,624,118,_binary '',3),(1358,16,21,625,118,_binary '',4),(1359,16,21,626,118,_binary '',5),(1360,16,21,627,118,_binary '',6),(1361,16,21,628,118,_binary '',7),(1362,16,21,629,118,_binary '',8),(1363,16,21,630,118,_binary '',9),(1364,16,21,631,118,_binary '',10),(1365,16,21,632,118,_binary '',11),(1366,16,21,633,118,_binary '',12),(1367,16,21,634,118,_binary '',13),(1368,16,21,635,119,_binary '',1),(1369,16,21,636,119,_binary '',2),(1370,16,21,637,119,_binary '',3),(1371,16,21,638,119,_binary '',4),(1372,16,21,639,120,_binary '',1),(1373,16,21,640,120,_binary '',2),(1374,16,21,641,120,_binary '',3),(1375,16,21,642,120,_binary '',4),(1376,16,21,643,121,_binary '',1),(1377,16,21,644,121,_binary '',2),(1378,16,21,645,121,_binary '',3),(1379,16,21,646,121,_binary '',4),(1380,16,21,647,121,_binary '',5),(1381,16,21,648,121,_binary '',6),(1382,16,21,649,121,_binary '',7),(1383,16,21,650,121,_binary '',8),(1384,16,21,651,121,_binary '',9),(1385,16,21,652,121,_binary '',10),(1386,16,21,653,121,_binary '',11),(1387,16,21,654,121,_binary '',12),(1388,16,21,655,121,_binary '',13),(1389,16,21,656,121,_binary '',14),(1390,16,21,657,121,_binary '',15),(1391,16,21,658,121,_binary '',16),(1392,16,21,659,121,_binary '',17),(1393,16,21,660,121,_binary '',18),(1394,16,21,661,121,_binary '',19),(1395,16,21,662,121,_binary '',20),(1396,16,21,663,121,_binary '',21),(1397,16,21,664,121,_binary '',22),(1398,16,21,665,121,_binary '',23),(1399,16,21,666,121,_binary '',24),(1400,16,21,667,121,_binary '',25),(1401,16,21,668,121,_binary '',26),(1402,16,21,669,121,_binary '',27),(1403,16,21,670,121,_binary '',28),(1404,16,21,671,121,_binary '',29),(1405,16,21,672,121,_binary '',30),(1406,16,21,673,121,_binary '',31),(1407,16,21,674,121,_binary '',32),(1408,16,21,675,121,_binary '',33),(1409,16,21,676,121,_binary '',34),(1410,16,21,677,121,_binary '',35),(1411,16,21,678,121,_binary '',36),(1412,16,21,679,121,_binary '',37),(1413,16,21,680,121,_binary '',38),(1414,16,21,681,121,_binary '',39),(1415,16,21,682,121,_binary '',40),(1416,16,21,683,121,_binary '',41),(1417,16,21,684,121,_binary '',42),(1418,16,21,685,121,_binary '',43),(1419,16,21,686,121,_binary '',44),(1420,16,21,687,121,_binary '',45),(1421,16,21,688,121,_binary '',46),(1422,16,21,689,121,_binary '',47),(1423,16,21,690,121,_binary '',48),(1424,16,21,691,121,_binary '',49),(1425,16,21,692,121,_binary '',50),(1426,16,21,693,121,_binary '',51),(1427,16,21,694,121,_binary '',52),(1428,16,21,695,121,_binary '',53),(1429,16,21,696,121,_binary '',54),(1430,16,21,697,121,_binary '',55),(1431,16,21,698,121,_binary '',56),(1432,16,21,699,121,_binary '',57),(1433,16,21,700,121,_binary '',58),(1434,16,21,701,121,_binary '',59),(1435,16,21,702,121,_binary '',60),(1436,16,21,703,121,_binary '',61),(1437,16,21,704,121,_binary '',62),(1438,16,21,705,121,_binary '',63),(1439,16,21,706,121,_binary '',64),(1440,16,21,707,121,_binary '',65),(1441,16,21,708,121,_binary '',66),(1442,16,21,709,122,_binary '',1),(1443,16,21,710,122,_binary '',2),(1444,16,21,711,122,_binary '',3),(1445,16,21,712,122,_binary '',4),(1446,16,21,713,122,_binary '',5),(1447,16,21,714,122,_binary '',6),(1448,16,21,715,122,_binary '',7),(1449,16,21,716,122,_binary '',8),(1450,16,21,717,122,_binary '',9),(1451,16,21,718,122,_binary '',10),(1452,16,21,719,122,_binary '',11),(1453,16,21,720,123,_binary '',1),(1454,16,21,721,123,_binary '',2),(1455,16,21,722,123,_binary '',3),(1456,16,21,723,123,_binary '',4),(1457,16,21,724,123,_binary '',5),(1458,16,21,725,123,_binary '',6),(1459,16,21,726,123,_binary '',7),(1460,22,28,727,124,_binary '',1),(1461,22,28,728,124,_binary '',2),(1462,16,21,729,125,_binary '',1),(1463,16,21,730,125,_binary '',2),(1464,16,21,731,125,_binary '',3),(1465,16,21,732,125,_binary '',4),(1466,16,21,733,125,_binary '',5),(1467,16,21,734,125,_binary '',6),(1468,12,14,735,126,_binary '',1),(1469,12,14,736,126,_binary '',2),(1470,12,14,737,126,_binary '',3),(1472,12,14,739,126,_binary '',4),(1474,12,14,741,127,_binary '',1),(1475,12,14,742,127,_binary '',2),(1476,12,14,743,127,_binary '',3),(1477,12,14,744,127,_binary '',4),(1478,12,14,745,128,_binary '',1),(1480,12,14,747,128,_binary '',2),(1481,12,14,748,128,_binary '',3),(1482,12,14,749,128,_binary '',4),(1483,12,14,750,128,_binary '',5),(1484,12,14,751,128,_binary '',6),(1485,12,14,752,128,_binary '',7),(1486,12,14,753,128,_binary '',8),(1487,12,14,754,128,_binary '',9),(1488,12,14,755,128,_binary '',10),(1489,12,14,756,128,_binary '',11),(1490,12,14,757,128,_binary '',12),(1491,12,14,758,128,_binary '',13),(1492,12,14,759,128,_binary '',14),(1493,12,14,760,128,_binary '',15),(1494,12,14,761,128,_binary '',16),(1495,12,14,762,129,_binary '',1),(1497,12,14,763,129,_binary '',2),(1498,12,14,764,130,_binary '',1),(1499,16,21,765,125,_binary '',7),(1500,16,21,766,125,_binary '',8),(1501,16,21,767,125,_binary '',9),(1502,16,21,768,131,_binary '',1),(1503,16,21,769,131,_binary '',2),(1504,16,21,770,131,_binary '',3),(1505,16,21,771,131,_binary '',4),(1506,16,21,772,131,_binary '',5),(1507,16,21,773,131,_binary '',6),(1508,16,21,774,131,_binary '',7),(1509,16,21,775,132,_binary '',1),(1510,16,21,776,132,_binary '',2),(1511,16,21,777,132,_binary '',3),(1512,16,21,778,132,_binary '',4),(1513,16,21,779,132,_binary '',5),(1514,16,21,780,132,_binary '',6),(1515,16,21,781,132,_binary '',7),(1516,16,21,782,132,_binary '',8),(1517,16,21,783,132,_binary '',9),(1518,16,21,784,132,_binary '',10),(1519,16,21,785,132,_binary '',11),(1520,16,21,786,132,_binary '',12),(1521,16,21,787,132,_binary '',13),(1522,16,21,788,132,_binary '',14),(1523,16,21,789,132,_binary '',15),(1524,16,21,790,132,_binary '',16),(1525,16,21,791,132,_binary '',17),(1526,16,21,792,132,_binary '',18),(1527,16,21,793,132,_binary '',19),(1528,16,21,794,132,_binary '',20),(1529,16,21,795,132,_binary '',21),(1530,16,21,796,125,_binary '',10),(1531,16,21,797,110,_binary '',15),(1532,12,14,798,130,_binary '',2),(1534,12,14,800,130,_binary '',4),(1535,12,14,801,130,_binary '',5),(1536,12,14,802,133,_binary '',1),(1537,12,14,803,133,_binary '',2),(1538,12,14,804,133,_binary '',3),(1539,12,14,805,133,_binary '',4),(1540,12,14,806,133,_binary '',5),(1541,12,14,807,133,_binary '',6),(1542,12,14,808,133,_binary '',7),(1543,12,14,809,133,_binary '',8),(1544,12,14,810,133,_binary '',9),(1545,12,14,811,133,_binary '',10),(1546,12,14,812,133,_binary '',11),(1547,12,14,813,133,_binary '',12),(1548,12,14,814,133,_binary '',13),(1549,12,14,815,133,_binary '',14),(1550,12,14,816,133,_binary '',15),(1551,12,14,817,133,_binary '',16),(1552,12,14,818,133,_binary '',17),(1553,17,22,819,116,_binary '',3),(1554,17,22,820,116,_binary '',4),(1555,17,22,821,116,_binary '',5),(1556,17,22,822,116,_binary '',6),(1557,17,22,823,116,_binary '',7),(1558,17,22,824,116,_binary '',8),(1559,17,22,825,116,_binary '',9),(1560,17,22,826,116,_binary '',10),(1561,17,22,827,116,_binary '',11),(1562,17,22,828,116,_binary '',12),(1563,17,22,829,116,_binary '',13),(1564,17,22,830,116,_binary '',14),(1565,17,22,831,116,_binary '',15),(1566,17,22,832,116,_binary '',16),(1567,17,22,833,116,_binary '',17),(1568,17,22,834,116,_binary '',18),(1569,17,22,835,116,_binary '',19),(1572,12,14,837,133,_binary '',18),(1573,12,14,838,133,_binary '',19),(1574,12,14,839,133,_binary '',20),(1575,12,14,840,133,_binary '',21),(1576,12,14,841,136,_binary '',1),(1577,12,14,842,136,_binary '',2),(1578,12,14,843,136,_binary '',3),(1579,12,14,844,136,_binary '',4),(1580,12,14,845,136,_binary '',5),(1581,12,14,846,136,_binary '',6),(1582,12,14,847,136,_binary '',7),(1583,12,14,848,136,_binary '',8),(1584,12,14,849,136,_binary '',9),(1585,12,14,850,136,_binary '',10),(1586,12,14,851,136,_binary '',11),(1587,12,14,852,136,_binary '',12),(1588,12,14,853,136,_binary '',13),(1589,12,14,854,136,_binary '',14),(1590,12,14,855,136,_binary '',15),(1591,12,14,856,137,_binary '',1),(1592,12,14,857,137,_binary '',16),(1593,12,14,858,137,_binary '',17),(1594,12,14,859,137,_binary '',18),(1595,12,14,860,137,_binary '',19),(1596,12,14,861,137,_binary '',20),(1597,12,14,862,138,_binary '',1),(1598,12,14,863,138,_binary '',2),(1599,24,30,864,139,_binary '',1),(1600,24,30,865,140,_binary '',2),(1601,24,30,866,140,_binary '',3),(1602,24,30,867,140,_binary '',4),(1603,24,30,868,140,_binary '',1),(1606,24,30,871,142,_binary '',3),(1607,24,30,869,142,_binary '',1),(1608,24,30,870,142,_binary '',2),(1609,24,30,872,141,_binary '',1),(1610,24,30,873,141,_binary '',2),(1611,24,30,874,141,_binary '',3),(1612,24,30,875,141,_binary '',4),(1613,24,30,876,141,_binary '',5),(1614,24,30,877,141,_binary '',6),(1615,26,32,878,143,_binary '',1),(1616,26,32,879,144,_binary '',1),(1617,12,14,880,138,_binary '',3),(1618,12,14,881,138,_binary '',4),(1619,12,14,882,138,_binary '',5),(1620,12,14,883,138,_binary '',6),(1621,12,14,884,138,_binary '',7),(1622,12,14,885,138,_binary '',8),(1623,12,14,886,147,_binary '',1),(1624,12,14,887,147,_binary '',2),(1625,12,14,888,147,_binary '',3),(1626,12,14,889,147,_binary '',4),(1627,12,14,890,147,_binary '',5),(1628,12,14,891,147,_binary '',6),(1629,12,14,892,147,_binary '',7),(1630,12,14,893,147,_binary '',8),(1631,12,14,894,147,_binary '',9),(1632,12,14,895,147,_binary '',10),(1633,12,14,896,147,_binary '',11),(1634,12,14,897,148,_binary '',1),(1635,12,14,898,148,_binary '',2),(1636,12,14,899,148,_binary '',3),(1637,12,14,900,148,_binary '',4),(1638,12,14,901,148,_binary '',5),(1639,12,14,902,148,_binary '',6),(1640,12,14,903,149,_binary '',1),(1641,12,14,904,149,_binary '',2),(1642,12,14,905,149,_binary '',3),(1643,12,14,906,149,_binary '',4),(1644,12,14,907,149,_binary '',5),(1645,12,14,908,149,_binary '',6),(1646,12,14,909,149,_binary '',7),(1647,12,14,910,149,_binary '',8),(1648,12,14,911,149,_binary '',9),(1649,12,14,912,149,_binary '',10),(1650,12,14,913,149,_binary '',11),(1651,12,14,914,149,_binary '',12),(1652,12,14,915,149,_binary '',13),(1653,12,14,916,149,_binary '',14),(1654,12,14,917,149,_binary '',15),(1655,12,14,918,149,_binary '',16),(1656,12,14,919,150,_binary '',1),(1657,12,14,920,150,_binary '',2),(1658,12,14,921,150,_binary '',3),(1659,12,14,922,150,_binary '',4),(1660,12,14,923,150,_binary '',5),(1661,12,14,924,150,_binary '',6),(1662,12,14,925,150,_binary '\0',7),(1663,12,14,926,150,_binary '',8),(1664,12,14,927,150,_binary '',9),(1665,12,14,928,150,_binary '\0',10),(1666,12,14,929,151,_binary '',1),(1667,12,14,930,151,_binary '',2),(1668,12,14,931,151,_binary '',3),(1669,12,14,932,151,_binary '',4),(1670,12,14,933,130,_binary '',5),(1671,25,31,934,153,_binary '',1),(1672,25,31,935,153,_binary '',2),(1673,25,31,936,153,_binary '',3),(1674,25,31,937,153,_binary '',4),(1675,25,31,938,153,_binary '',5),(1676,25,31,939,153,_binary '',6),(1677,25,31,940,153,_binary '',7),(1678,25,31,941,153,_binary '',8),(1679,25,31,942,153,_binary '',9),(1680,25,31,943,153,_binary '',10),(1681,25,31,944,153,_binary '',11),(1682,25,31,945,153,_binary '',12),(1683,25,31,946,153,_binary '',13),(1684,25,31,947,153,_binary '',14),(1685,25,31,948,153,_binary '',15),(1687,25,31,950,153,_binary '',17),(1688,25,31,951,152,_binary '',1),(1689,25,31,952,152,_binary '',2),(1690,25,31,953,152,_binary '',3),(1691,25,31,954,152,_binary '',4),(1692,25,31,955,152,_binary '',5),(1693,28,34,956,154,_binary '',1),(1694,28,34,957,154,_binary '',2),(1695,28,34,958,154,_binary '',3),(1696,28,34,959,154,_binary '',4),(1697,28,34,960,154,_binary '',5),(1698,28,34,961,154,_binary '',6),(1699,28,34,962,154,_binary '',7),(1700,28,34,963,154,_binary '',8),(1701,28,34,964,154,_binary '',9),(1702,28,34,965,154,_binary '',10),(1703,28,34,966,154,_binary '',11),(1704,28,34,967,155,_binary '',1),(1705,28,34,968,155,_binary '',2),(1706,28,34,969,155,_binary '',3),(1707,28,34,970,155,_binary '',4),(1708,28,34,971,155,_binary '',5),(1709,28,34,972,155,_binary '',6),(1710,28,34,973,156,_binary '',1),(1711,28,34,974,156,_binary '',2),(1712,28,34,975,156,_binary '',3),(1713,28,34,976,156,_binary '',4),(1714,28,34,977,156,_binary '',5),(1715,27,33,978,168,_binary '',1),(1716,27,33,979,168,_binary '',2),(1717,27,33,980,168,_binary '',3),(1718,27,33,981,168,_binary '',4),(1719,27,33,982,168,_binary '',5),(1720,27,33,983,168,_binary '',6),(1721,27,33,984,168,_binary '',7),(1722,27,33,985,169,_binary '',1),(1723,27,33,986,169,_binary '',2),(1724,27,33,987,169,_binary '',3),(1725,27,33,988,169,_binary '',4),(1726,27,33,989,169,_binary '',5),(1727,27,33,990,171,_binary '',1),(1728,27,33,991,171,_binary '',2),(1729,27,33,992,171,_binary '',3),(1730,27,33,993,171,_binary '',4),(1731,27,33,994,171,_binary '',5),(1732,27,33,995,170,_binary '',1),(1733,27,33,996,170,_binary '',2),(1734,27,33,997,170,_binary '',3),(1735,27,33,998,170,_binary '',4),(1736,27,33,999,170,_binary '',5),(1737,27,33,1000,170,_binary '',6),(1747,27,33,1010,173,_binary '',1),(1748,27,33,1011,173,_binary '',2),(1749,27,33,1012,173,_binary '',3),(1750,27,33,1013,173,_binary '',4),(1751,27,33,1014,174,_binary '',1),(1752,27,33,1015,174,_binary '',2),(1753,27,33,1016,174,_binary '',3),(1754,27,33,1017,174,_binary '',4),(1755,27,33,1018,174,_binary '',5),(1756,27,33,1019,174,_binary '',6),(1757,27,33,1020,174,_binary '',7),(1758,27,33,1021,175,_binary '',1),(1759,27,33,1022,175,_binary '',2),(1760,27,33,1023,175,_binary '',3),(1761,27,33,1024,175,_binary '',4),(1762,27,33,1025,175,_binary '',5),(1763,27,33,1026,175,_binary '',6),(1764,27,33,1027,175,_binary '',7),(1765,27,33,1028,175,_binary '',8),(1766,27,33,1029,175,_binary '',9),(1767,27,33,1030,175,_binary '',10),(1768,28,34,1031,157,_binary '',1),(1769,28,34,1032,157,_binary '',2),(1770,28,34,1033,157,_binary '',3),(1771,28,34,1034,158,_binary '',1),(1772,28,34,1035,158,_binary '',2),(1773,28,34,1036,158,_binary '',3),(1774,28,34,1037,158,_binary '',4),(1775,28,34,1038,158,_binary '',5),(1776,28,34,1039,159,_binary '',1),(1777,28,34,1040,159,_binary '',2),(1778,28,34,1041,160,_binary '',1),(1779,28,34,1042,160,_binary '',2),(1780,28,34,1043,160,_binary '',3),(1781,28,34,1044,160,_binary '',4),(1782,28,34,1045,160,_binary '',5),(1784,28,34,1047,180,_binary '',7),(1785,28,34,1048,180,_binary '',8),(1786,28,34,1049,180,_binary '',9),(1787,28,34,1050,180,_binary '',10),(1788,28,34,1051,180,_binary '',11),(1789,28,34,1052,180,_binary '',12),(1790,28,34,1053,161,_binary '',1),(1791,28,34,1054,161,_binary '',2),(1792,28,34,1055,161,_binary '',3),(1793,28,34,1056,161,_binary '',4),(1794,28,34,1057,161,_binary '',5),(1796,28,34,1059,161,_binary '',7),(1797,28,34,1060,181,_binary '',8),(1798,28,34,1061,181,_binary '',9),(1800,28,34,1063,161,_binary '',11),(1801,28,34,1064,164,_binary '',1),(1802,25,31,1065,152,_binary '',6),(1803,25,31,1066,152,_binary '',7),(1804,25,31,1067,152,_binary '',8),(1805,25,31,1068,152,_binary '',9),(1806,25,31,1069,152,_binary '',10),(1807,25,31,1070,152,_binary '',11),(1808,25,31,1071,152,_binary '',12),(1809,25,31,1072,152,_binary '',13),(1810,25,31,1073,152,_binary '',14),(1811,25,31,1074,152,_binary '',15),(1812,27,36,1001,172,_binary '',1),(1813,27,36,1003,172,_binary '',3),(1814,27,36,1002,172,_binary '',2),(1815,27,36,1004,172,_binary '',4),(1816,27,36,1005,172,_binary '',5),(1817,27,36,1006,172,_binary '',6),(1818,27,36,1007,172,_binary '',7),(1819,27,36,1008,172,_binary '',8),(1820,27,36,1009,172,_binary '',9),(1822,27,36,978,168,_binary '',1),(1824,27,36,979,168,_binary '',2),(1826,27,36,980,168,_binary '',3),(1828,27,36,981,168,_binary '',4),(1830,27,36,982,168,_binary '',5),(1832,27,36,983,168,_binary '',6),(1834,27,36,984,168,_binary '',7),(1836,27,36,985,169,_binary '',1),(1838,27,36,986,169,_binary '',2),(1840,27,36,987,169,_binary '',3),(1842,27,36,988,169,_binary '',4),(1844,27,36,989,169,_binary '',5),(1846,27,36,995,170,_binary '',1),(1848,27,36,996,170,_binary '',2),(1850,27,36,997,170,_binary '',3),(1852,27,36,998,170,_binary '',4),(1854,27,36,999,170,_binary '',5),(1856,27,36,1000,170,_binary '',6),(1858,27,36,990,171,_binary '',1),(1860,27,36,991,171,_binary '',2),(1862,27,36,992,171,_binary '',3),(1864,27,36,993,171,_binary '',4),(1866,27,36,994,171,_binary '',5),(1868,27,36,1010,173,_binary '',1),(1870,27,36,1011,173,_binary '',2),(1872,27,36,1012,173,_binary '',3),(1874,27,36,1013,173,_binary '',4),(1876,27,36,1014,174,_binary '',1),(1878,27,36,1015,174,_binary '',2),(1880,27,36,1016,174,_binary '',3),(1882,27,36,1017,174,_binary '',4),(1884,27,36,1018,174,_binary '',5),(1886,27,36,1019,174,_binary '',6),(1888,27,36,1020,174,_binary '',7),(1890,27,36,1021,175,_binary '',1),(1892,27,36,1022,175,_binary '',2),(1894,27,36,1023,175,_binary '',3),(1896,27,36,1024,175,_binary '',4),(1898,27,36,1025,175,_binary '',5),(1900,27,36,1026,175,_binary '',6),(1902,27,36,1027,175,_binary '',7),(1904,27,36,1028,175,_binary '',8),(1906,27,36,1029,175,_binary '',9),(1908,27,36,1030,175,_binary '',10),(1909,27,35,1017,174,_binary '',1),(1910,27,35,1014,174,_binary '',2),(1911,27,35,1016,174,_binary '',3),(1912,27,35,1075,174,_binary '',4),(1913,27,35,1076,174,_binary '',5),(1914,27,35,1077,174,_binary '',6),(1915,27,35,1078,179,_binary '',1),(1916,27,35,1079,179,_binary '',2),(1917,27,35,1080,179,_binary '',3),(1918,27,35,1081,179,_binary '',4),(1919,27,35,1082,179,_binary '',5),(1920,27,35,1083,179,_binary '',6),(1921,28,34,1084,164,_binary '',2),(1922,28,34,1085,164,_binary '',3),(1923,28,34,1086,165,_binary '',1),(1924,28,34,1087,165,_binary '',2),(1925,28,34,1088,165,_binary '',3),(1926,28,34,1089,165,_binary '',4),(1927,28,34,1090,165,_binary '',5),(1928,28,34,1091,165,_binary '',6),(1929,28,34,1092,166,_binary '',1),(1930,28,34,1093,166,_binary '',2),(1931,28,34,1094,166,_binary '',3),(1932,28,34,1095,166,_binary '',4),(1933,28,34,1096,167,_binary '',1),(1934,28,34,1097,163,_binary '',1),(1935,28,34,1098,163,_binary '',2),(1936,28,34,1099,162,_binary '',2),(1937,28,34,1100,162,_binary '',3),(1938,28,34,1101,162,_binary '',4),(1939,28,34,1102,162,_binary '',5),(1940,28,34,1103,162,_binary '',6),(1941,28,34,1104,162,_binary '',7),(1942,28,34,1105,162,_binary '',8),(1943,28,34,1106,162,_binary '',9),(1944,28,34,1107,162,_binary '',10),(1945,29,37,1108,154,_binary '',1),(1946,29,37,1109,154,_binary '',2),(1947,29,37,1110,154,_binary '',3),(1948,29,37,1111,154,_binary '',4),(1949,29,37,1112,154,_binary '',5),(1950,29,37,1113,154,_binary '',6),(1951,29,37,1114,154,_binary '',7),(1952,29,37,1115,154,_binary '',8),(1953,29,37,1116,154,_binary '',9),(1954,29,37,1117,154,_binary '',10),(1955,29,37,1118,154,_binary '',11),(1956,29,37,1119,155,_binary '',1),(1957,29,37,1120,155,_binary '',2),(1958,29,37,1121,155,_binary '',3),(1959,29,37,1122,155,_binary '',4),(1960,29,37,1123,155,_binary '',5),(1961,29,37,1124,155,_binary '',6),(1962,29,37,1125,156,_binary '',1),(1963,29,37,1126,156,_binary '',2),(1964,29,37,1127,156,_binary '',3),(1965,29,37,1128,156,_binary '',4),(1966,29,37,1129,182,_binary '',1),(1967,29,37,1130,182,_binary '',2),(1968,29,37,1131,182,_binary '',3),(1969,29,37,1132,182,_binary '',4),(1970,29,37,1133,182,_binary '',5),(1971,29,37,1134,182,_binary '',6),(1972,29,37,1135,182,_binary '',7),(1973,29,37,1136,182,_binary '',8),(1974,29,37,1137,182,_binary '',9),(1975,29,37,1138,182,_binary '',10),(1976,29,37,1139,182,_binary '',11),(1977,29,37,1140,183,_binary '',1),(1978,29,37,1141,183,_binary '',2),(1979,29,37,1142,183,_binary '',3),(1980,29,37,1143,183,_binary '',4),(1981,29,37,1144,183,_binary '',5),(1982,29,37,1145,183,_binary '',6),(1983,29,37,1146,184,_binary '',1),(1984,29,37,1147,184,_binary '',2),(1985,29,37,1148,184,_binary '',3),(1986,29,37,1149,184,_binary '',4),(1987,29,37,1150,185,_binary '',1),(1988,29,37,1151,185,_binary '',2),(1989,29,37,1152,185,_binary '',3),(1990,29,37,1153,185,_binary '',4),(1991,29,37,1154,185,_binary '',5),(1992,29,37,1155,185,_binary '',6),(1993,29,37,1156,186,_binary '',1),(1994,29,37,1157,186,_binary '',2),(1995,29,37,1158,187,_binary '',1),(1996,29,37,1159,187,_binary '',2),(1997,29,37,1160,187,_binary '',3),(1998,29,37,1161,187,_binary '',4),(1999,29,37,1162,187,_binary '',5),(2000,29,37,1163,188,_binary '',1),(2001,29,37,1164,188,_binary '',2),(2002,29,37,1165,188,_binary '',4),(2003,29,37,1166,188,_binary '',5),(2004,29,37,1167,188,_binary '',6),(2005,29,37,1168,193,_binary '',2),(2006,29,37,1169,193,_binary '',3),(2007,29,37,1170,193,_binary '',4),(2008,29,37,1171,193,_binary '',5),(2009,29,37,1172,193,_binary '',6),(2010,29,37,1173,193,_binary '',7),(2012,29,37,1175,189,_binary '',1),(2013,29,37,1176,189,_binary '',2),(2014,29,37,1177,189,_binary '',3),(2015,29,37,1178,189,_binary '',4),(2016,29,37,1179,189,_binary '',5),(2017,29,37,1180,189,_binary '',6),(2018,29,37,1181,189,_binary '',7),(2019,29,37,1182,189,_binary '',8),(2020,29,37,1183,189,_binary '',9),(2021,29,37,1184,190,_binary '',1),(2022,29,37,1185,190,_binary '',2),(2023,29,37,1186,190,_binary '',3),(2024,29,37,1187,190,_binary '',4),(2025,29,37,1188,190,_binary '',5),(2026,29,37,1189,190,_binary '',6),(2027,29,37,1190,191,_binary '',1),(2028,29,37,1191,191,_binary '',2),(2029,29,37,1192,191,_binary '',3),(2030,29,37,1193,191,_binary '',4),(2039,29,37,1202,188,_binary '',3),(2040,11,13,1203,80,_binary '',12),(2041,28,34,1204,167,_binary '',2),(2042,28,34,1205,167,_binary '',3),(2043,29,37,1206,188,_binary '',7),(2044,29,37,1207,197,_binary '',1),(2045,29,37,1208,197,_binary '',2),(2046,29,37,1209,197,_binary '',3),(2047,29,37,1210,197,_binary '',4),(2048,29,37,1211,198,_binary '',1),(2049,29,37,1212,198,_binary '',2),(2050,29,37,1213,198,_binary '',3),(2052,17,22,1214,75,_binary '',8),(2054,30,38,1216,200,_binary '',1),(2055,30,38,1217,200,_binary '',2),(2056,30,38,1218,200,_binary '',3),(2057,30,38,1219,200,_binary '',4),(2058,30,38,1220,201,_binary '',1),(2059,30,38,1221,201,_binary '',2),(2060,30,38,1222,201,_binary '',3),(2062,30,38,1224,202,_binary '',2),(2063,30,38,1225,202,_binary '',4),(2064,30,38,1226,202,_binary '',5),(2065,30,38,1227,202,_binary '',6),(2067,30,38,1229,203,_binary '',1),(2068,30,38,1230,203,_binary '',2),(2072,30,38,1234,205,_binary '',2),(2074,30,38,1236,206,_binary '',1),(2075,30,38,1237,206,_binary '',2),(2080,12,14,1241,150,_binary '',11),(2081,14,20,1242,209,_binary '',1),(2082,14,20,1243,209,_binary '',2),(2083,14,20,1244,209,_binary '',3),(2084,14,20,1245,209,_binary '',4),(2085,14,20,1246,209,_binary '',5),(2086,14,20,1247,209,_binary '',6),(2087,14,20,1248,209,_binary '',7),(2088,13,15,1249,47,_binary '',1),(2089,2,7,1250,216,_binary '',1),(2090,2,7,1251,216,_binary '',2),(2091,29,37,1252,194,_binary '',1),(2093,29,37,1254,195,_binary '',1),(2094,29,37,1255,195,_binary '',2),(2095,29,37,1256,195,_binary '',3),(2096,29,37,1257,195,_binary '',4),(2097,29,37,1258,195,_binary '',5),(2098,29,37,1259,195,_binary '',6),(2099,29,37,1260,195,_binary '',7),(2100,29,37,1261,195,_binary '',8),(2101,29,37,1262,195,_binary '',9),(2102,29,37,1263,195,_binary '',10),(2103,29,37,1264,195,_binary '',11),(2104,29,37,1265,189,_binary '',10),(2105,29,37,1266,189,_binary '',11),(2106,29,37,1267,189,_binary '',12),(2107,29,37,1268,189,_binary '',13),(2108,28,34,1269,217,_binary '',2),(2109,28,34,1270,217,_binary '',3),(2110,28,34,1271,217,_binary '',4),(2111,28,34,1272,217,_binary '',5),(2112,28,34,1273,217,_binary '',6),(2113,28,34,1274,217,_binary '',1),(2114,28,34,1275,162,_binary '',1),(2115,11,13,1276,89,_binary '',12),(2116,11,13,1277,89,_binary '',13),(2117,11,13,1278,89,_binary '',14),(2118,11,13,1279,89,_binary '',15),(2119,11,13,1280,89,_binary '',16),(2120,11,13,1281,89,_binary '',17),(2121,11,13,1282,89,_binary '',18),(2122,30,38,1283,199,_binary '',2),(2123,30,38,1284,199,_binary '',3),(2124,30,38,1285,199,_binary '',4),(2125,30,38,1286,200,_binary '',5),(2126,30,38,1287,202,_binary '',3),(2128,30,38,1289,225,_binary '',1),(2129,30,38,1290,225,_binary '',2),(2130,30,38,1291,225,_binary '',3),(2131,30,38,1292,225,_binary '',4),(2132,30,38,1293,205,_binary '',3),(2133,30,38,1294,205,_binary '',4),(2134,30,38,1295,205,_binary '',5),(2135,30,38,1296,205,_binary '',6),(2136,30,38,1297,225,_binary '',5),(2137,30,38,1298,205,_binary '',8),(2138,30,38,1299,205,_binary '',9),(2139,30,38,1300,205,_binary '',10),(2140,30,38,1301,225,_binary '',6),(2141,30,38,1302,205,_binary '',11),(2142,30,38,1303,205,_binary '',12),(2143,30,38,1304,225,_binary '',7),(2144,30,38,1305,205,_binary '',13),(2145,30,38,1306,225,_binary '',8),(2146,30,38,1307,225,_binary '',9),(2147,30,38,1308,225,_binary '',10),(2148,30,38,1309,225,_binary '',11),(2150,30,38,1310,218,_binary '',1),(2151,30,38,1311,219,_binary '',1),(2152,30,38,1312,219,_binary '',2),(2153,30,38,1313,219,_binary '',3),(2154,30,38,1314,219,_binary '',4),(2155,30,38,1315,226,_binary '',1),(2156,30,38,1316,220,_binary '',1),(2157,30,38,1317,220,_binary '',2),(2158,30,38,1318,226,_binary '',2),(2159,30,38,1319,226,_binary '',3),(2160,30,38,1320,226,_binary '',4),(2161,30,38,1321,220,_binary '',3),(2162,30,38,1322,226,_binary '',5),(2163,30,38,1323,220,_binary '',4),(2164,30,38,1324,221,_binary '',1),(2165,30,38,1325,221,_binary '',2),(2166,30,38,1326,221,_binary '',3),(2167,30,38,1327,221,_binary '',4),(2168,30,38,1328,227,_binary '',1),(2169,30,38,1329,221,_binary '',5),(2170,30,38,1330,227,_binary '',2),(2171,30,38,1331,221,_binary '',6),(2172,30,38,1332,227,_binary '',3),(2173,30,38,1333,221,_binary '',7),(2174,30,38,1334,227,_binary '',4),(2175,30,38,1335,221,_binary '',8),(2176,30,38,1336,221,_binary '',9),(2177,30,38,1337,227,_binary '',5),(2178,30,38,1338,227,_binary '',6),(2179,30,38,1339,221,_binary '',10),(2180,30,38,1340,227,_binary '',7),(2181,30,38,1341,221,_binary '',11),(2182,30,38,1342,227,_binary '',8),(2183,30,38,1343,228,_binary '',1),(2184,30,38,1344,228,_binary '',2),(2185,30,38,1345,222,_binary '',1),(2186,30,38,1346,228,_binary '',3),(2187,30,38,1347,222,_binary '',2),(2188,30,38,1348,228,_binary '',4),(2189,30,38,1349,222,_binary '',3),(2190,30,38,1350,228,_binary '',5),(2191,30,38,1351,223,_binary '',1),(2192,30,38,1352,223,_binary '',2),(2193,30,38,1353,223,_binary '',3),(2194,30,38,1354,228,_binary '',6),(2195,30,38,1355,228,_binary '',7),(2196,30,38,1356,229,_binary '',1),(2197,30,38,1357,229,_binary '',2),(2198,30,38,1358,229,_binary '',3),(2199,30,38,1359,229,_binary '',4),(2200,30,38,1360,230,_binary '',1),(2201,30,38,1361,230,_binary '',2),(2202,30,38,1362,230,_binary '',3),(2203,30,38,1363,230,_binary '',4),(2204,30,38,1364,231,_binary '',1),(2205,30,38,1365,231,_binary '',2),(2206,30,38,1366,231,_binary '',3),(2207,30,38,1367,232,_binary '',1),(2208,30,38,1368,232,_binary '',2),(2209,30,38,1369,233,_binary '',1),(2210,30,38,1370,233,_binary '',2),(2211,30,38,1371,233,_binary '',3),(2212,30,38,1372,234,_binary '',1),(2213,30,38,1373,234,_binary '',2),(2214,30,38,1374,234,_binary '',3),(2215,30,38,1375,234,_binary '',4),(2216,30,38,1376,234,_binary '',5),(2217,30,38,1377,234,_binary '',6),(2218,30,38,1378,234,_binary '',7),(2219,30,38,1239,207,_binary '',1),(2220,30,38,1379,235,_binary '',1),(2221,30,38,1380,235,_binary '',2),(2222,30,38,1381,235,_binary '',3),(2223,30,38,1382,236,_binary '',1),(2224,30,38,1383,236,_binary '',2),(2225,30,38,1384,236,_binary '',3),(2226,30,38,1385,236,_binary '',4),(2227,30,38,1386,236,_binary '',5),(2228,30,38,1387,236,_binary '',6),(2229,30,38,1388,236,_binary '',7),(2230,30,38,1389,236,_binary '',8),(2231,30,38,1390,236,_binary '',9),(2232,30,38,1391,236,_binary '',10),(2233,30,38,1392,236,_binary '',11),(2234,30,38,1393,236,_binary '',12),(2235,30,38,1394,236,_binary '',13),(2236,30,38,1395,236,_binary '',14),(2237,12,14,1396,136,_binary '',16),(2238,12,14,1397,128,_binary '',17),(2239,14,20,1398,210,_binary '',1),(2240,14,20,1399,210,_binary '',2),(2241,14,20,1400,210,_binary '',3),(2242,14,20,1401,211,_binary '',1),(2243,14,20,1402,212,_binary '',1),(2244,14,20,1403,212,_binary '',2),(2245,14,20,1404,243,_binary '',1),(2246,14,20,1405,243,_binary '',2),(2247,14,20,1406,243,_binary '',3),(2248,14,20,1407,243,_binary '',4),(2249,14,20,1408,243,_binary '',5),(2250,14,20,1409,243,_binary '',6),(2251,14,20,1410,243,_binary '',7),(2252,14,20,1411,243,_binary '',8),(2253,14,20,1412,243,_binary '',9),(2254,14,20,1413,243,_binary '',10),(2255,14,20,1414,243,_binary '',11),(2256,14,20,1415,243,_binary '',12),(2257,14,20,1416,243,_binary '',13),(2258,14,20,1417,213,_binary '',1),(2259,14,20,1418,213,_binary '',3),(2260,14,20,1419,213,_binary '',4),(2261,14,20,1420,213,_binary '',5),(2262,14,20,1421,213,_binary '',6),(2263,14,20,1422,213,_binary '',7),(2264,14,20,1423,214,_binary '',1),(2265,14,20,1424,214,_binary '',2),(2266,14,20,1425,214,_binary '',3),(2267,14,20,1426,214,_binary '',4),(2268,14,20,1427,214,_binary '',5),(2269,14,20,1428,214,_binary '',6),(2270,14,20,1429,214,_binary '',7),(2271,14,20,1430,214,_binary '',8),(2272,14,20,1431,214,_binary '',9),(2273,14,20,1432,214,_binary '',10),(2274,14,20,1433,214,_binary '',11),(2275,14,20,1434,214,_binary '',12),(2276,14,20,1435,214,_binary '',13),(2277,14,20,1436,214,_binary '',14),(2278,14,20,1437,214,_binary '',15),(2279,14,20,1438,215,_binary '',1),(2280,14,20,1439,215,_binary '',2),(2281,30,38,1440,237,_binary '',1),(2282,30,38,1441,237,_binary '',2),(2283,30,38,1442,237,_binary '',3),(2284,30,38,1443,237,_binary '',4),(2285,30,38,1444,237,_binary '',5),(2286,30,38,1445,237,_binary '',6),(2287,30,38,1446,238,_binary '',1),(2288,30,38,1447,238,_binary '',2),(2289,30,38,1448,238,_binary '',3),(2290,30,38,1449,239,_binary '',1),(2291,30,38,1450,239,_binary '',2),(2292,30,38,1451,239,_binary '',3),(2293,30,38,1452,240,_binary '',1),(2294,30,38,1453,240,_binary '',2),(2295,30,38,1454,240,_binary '',3),(2296,30,38,1455,240,_binary '',4),(2297,30,38,1456,240,_binary '',5),(2298,30,38,1457,240,_binary '',6),(2299,30,38,1458,240,_binary '',7),(2300,30,38,1459,241,_binary '',1),(2301,30,38,1460,242,_binary '',1),(2302,30,38,1461,242,_binary '',2),(2303,30,38,1462,242,_binary '',3),(2304,30,38,1463,242,_binary '',4),(2305,30,38,1464,242,_binary '',5),(2306,30,38,1465,242,_binary '',6),(2307,30,38,1466,242,_binary '',7),(2308,30,38,1467,242,_binary '',8),(2309,30,38,1468,242,_binary '',9),(2310,30,38,1469,242,_binary '',10),(2311,30,38,1470,242,_binary '',11),(2312,30,38,1471,242,_binary '',12),(2313,14,20,1472,215,_binary '',3),(2314,14,20,1473,215,_binary '',4),(2315,14,20,1474,215,_binary '',5),(2318,38,49,1475,244,_binary '',1),(2320,38,49,1477,244,_binary '',2),(2321,38,49,1478,244,_binary '',3),(2322,38,49,1479,244,_binary '',4),(2323,38,49,1480,244,_binary '',5),(2324,38,49,1481,244,_binary '',6),(2325,38,49,1482,244,_binary '',7),(2326,38,49,1483,244,_binary '',8),(2327,38,49,1484,244,_binary '',9),(2328,38,49,1485,244,_binary '',10),(2329,38,49,1486,255,_binary '',1),(2330,38,49,1487,255,_binary '',2),(2331,38,49,1488,255,_binary '',3),(2332,38,49,1489,255,_binary '',4),(2333,38,49,1490,255,_binary '',5),(2334,38,49,1491,255,_binary '',6),(2335,38,49,1492,255,_binary '',7),(2336,38,49,1493,263,_binary '',1),(2337,30,38,1494,205,_binary '',7),(2338,38,49,1495,263,_binary '',2),(2339,38,49,1496,263,_binary '',3),(2340,38,49,1497,267,_binary '',1),(2341,38,49,1498,267,_binary '',2),(2342,38,49,1499,267,_binary '',3),(2343,38,49,1500,267,_binary '',4),(2344,38,49,1501,267,_binary '',5),(2345,38,49,1502,267,_binary '',6),(2346,38,49,1503,267,_binary '',7),(2347,38,49,1504,267,_binary '',8),(2348,38,49,1505,267,_binary '',9),(2349,38,49,1506,267,_binary '',10),(2350,38,49,1507,267,_binary '',11),(2351,38,49,1508,267,_binary '',12),(2352,38,49,1509,267,_binary '',13),(2353,38,50,1475,244,_binary '',1),(2354,38,50,1477,244,_binary '',2),(2355,38,50,1478,244,_binary '',3),(2356,38,50,1479,244,_binary '',4),(2357,38,50,1480,244,_binary '',5),(2358,38,50,1481,244,_binary '',6),(2359,38,50,1482,244,_binary '',7),(2360,38,50,1483,244,_binary '',8),(2361,38,50,1484,244,_binary '',9),(2362,38,50,1485,244,_binary '',10),(2363,38,50,1486,255,_binary '',1),(2364,38,50,1487,255,_binary '',2),(2365,38,50,1488,255,_binary '',3),(2366,38,50,1489,255,_binary '',4),(2367,38,50,1490,255,_binary '',5),(2368,38,50,1491,255,_binary '',6),(2369,38,50,1492,255,_binary '',7),(2370,38,50,1493,263,_binary '',1),(2371,38,50,1495,263,_binary '',2),(2372,38,50,1496,263,_binary '',3),(2373,38,50,1497,267,_binary '',1),(2374,38,50,1498,267,_binary '',2),(2375,38,50,1499,267,_binary '',3),(2376,38,50,1500,267,_binary '',4),(2377,38,50,1501,267,_binary '',5),(2378,38,50,1502,267,_binary '',6),(2379,38,50,1503,267,_binary '',7),(2380,38,50,1504,267,_binary '',8),(2381,38,50,1505,267,_binary '',9),(2382,38,50,1506,267,_binary '',10),(2383,38,50,1507,267,_binary '',11),(2384,38,50,1508,267,_binary '',12),(2385,38,50,1509,267,_binary '',13),(2417,24,30,1510,311,_binary '',1),(2418,24,30,1511,311,_binary '',2),(2419,24,30,1512,333,_binary '',1),(2420,24,30,1513,333,_binary '',2),(2421,24,30,1514,333,_binary '',3),(2422,24,30,1515,352,_binary '',1),(2423,24,30,1516,353,_binary '',1),(2424,24,30,1517,354,_binary '',1),(2425,24,30,1518,353,_binary '',2),(2426,24,30,1519,353,_binary '',3),(2427,24,30,1520,353,_binary '',4),(2428,24,30,1521,353,_binary '',5),(2429,24,30,1522,353,_binary '',6),(2430,24,30,1523,353,_binary '',7),(2431,24,30,1524,353,_binary '',8),(2432,24,30,1525,353,_binary '',9),(2433,24,30,1526,353,_binary '',10),(2434,24,30,1527,353,_binary '',11),(2435,24,30,1528,353,_binary '',12),(2436,24,30,1529,355,_binary '',1),(2437,24,30,1530,355,_binary '',2),(2438,24,30,1531,355,_binary '',3),(2439,24,30,1532,355,_binary '',4),(2440,24,30,1533,355,_binary '',5),(2441,24,30,1534,355,_binary '',6),(2442,24,30,1535,355,_binary '',7),(2443,24,30,1536,355,_binary '',8),(2444,24,30,1537,355,_binary '',9),(2445,24,30,1538,355,_binary '',10),(2446,24,30,1539,356,_binary '',1),(2447,24,30,1540,356,_binary '',2),(2448,24,30,1541,356,_binary '',3),(3021,40,61,2307,450,_binary '',1),(3022,40,61,2308,450,_binary '',2),(3023,40,61,2309,450,_binary '',3),(3024,40,61,2310,450,_binary '',4),(3025,40,61,2311,450,_binary '',5),(3026,40,61,2312,450,_binary '',6),(3027,40,61,2313,450,_binary '',7),(3028,40,61,2314,451,_binary '',1),(3029,40,61,2315,451,_binary '',2),(3030,40,61,2316,451,_binary '',3),(3031,40,61,2317,451,_binary '',4),(3032,40,61,2318,451,_binary '',5),(3033,40,61,2319,451,_binary '',6),(3034,40,61,2320,451,_binary '',7),(3035,40,61,2321,452,_binary '',1),(3036,40,61,2322,452,_binary '',2),(3037,40,61,2323,452,_binary '',3),(3038,40,61,2324,452,_binary '',4),(3039,40,61,2325,452,_binary '',5),(3040,40,61,2326,453,_binary '',1),(3041,40,61,2327,453,_binary '',2),(3042,40,61,2328,453,_binary '',3),(3043,40,61,2329,453,_binary '',4),(3044,40,61,2330,453,_binary '',5),(3045,40,61,2331,453,_binary '',6),(3046,40,61,2332,453,_binary '',7),(3047,40,61,2333,453,_binary '',8),(3048,40,61,2334,453,_binary '',9),(3049,40,61,2335,453,_binary '',10),(3050,40,61,2336,454,_binary '',1),(3051,40,61,2337,454,_binary '',2),(3052,40,61,2338,454,_binary '',3),(3053,40,61,2339,454,_binary '',4),(3054,40,61,2340,455,_binary '',1),(3055,40,61,2341,456,_binary '',1),(3056,40,61,2342,456,_binary '',2),(3057,40,61,2343,456,_binary '',3),(3058,40,61,2344,456,_binary '',4),(3059,40,61,2345,456,_binary '',5),(3060,40,61,2346,456,_binary '',6),(3061,40,61,2347,456,_binary '',7),(3062,40,61,2348,456,_binary '',8),(3063,40,61,2349,457,_binary '',1),(3064,40,61,2350,457,_binary '',2),(3065,40,61,2351,457,_binary '',3),(3066,40,61,2352,457,_binary '',4),(3067,40,61,2353,457,_binary '',5),(3068,40,61,2354,457,_binary '',6),(3069,40,61,2355,457,_binary '',7),(3070,40,61,2356,458,_binary '',1),(3071,40,61,2357,459,_binary '',1),(3072,40,61,2358,459,_binary '',2),(3073,40,61,2359,459,_binary '',3),(3074,40,61,2360,459,_binary '',4),(3075,40,61,2361,459,_binary '',5),(3076,40,61,2362,460,_binary '',1),(3077,40,61,2363,460,_binary '',2),(3078,40,61,2364,460,_binary '',3),(3079,40,61,2365,461,_binary '',1),(3080,40,61,2366,462,_binary '',1),(3081,40,61,2367,462,_binary '',2),(3082,40,61,2368,463,_binary '',1),(3083,40,61,2369,463,_binary '',2),(3084,40,61,2370,463,_binary '',3),(3085,40,61,2371,463,_binary '',4),(3086,40,61,2372,463,_binary '',5),(3087,40,61,2373,463,_binary '',6),(3088,40,61,2374,463,_binary '',7),(3089,40,61,2375,464,_binary '',1),(3090,40,61,2376,464,_binary '',2),(3091,40,61,2377,464,_binary '',3),(3092,40,61,2378,464,_binary '',4),(3093,40,61,2379,464,_binary '',5),(3094,40,61,2380,464,_binary '',6),(3095,40,61,2381,464,_binary '',7),(3096,40,61,2382,464,_binary '',8),(3097,40,61,2383,464,_binary '',9),(3098,40,61,2384,464,_binary '',10),(3099,40,61,2385,464,_binary '',11),(3100,40,61,2386,465,_binary '',1),(3101,40,61,2387,465,_binary '',2),(3102,40,61,2388,465,_binary '',3),(3103,40,61,2389,465,_binary '',4),(3104,40,61,2390,465,_binary '',5),(3105,40,61,2391,465,_binary '',6),(3106,40,61,2392,465,_binary '',7),(3107,40,61,2393,466,_binary '',1),(3108,40,61,2394,466,_binary '',2),(3109,40,61,2395,466,_binary '',3),(3110,40,61,2396,466,_binary '',4),(3111,40,61,2397,466,_binary '',5),(3112,40,61,2398,466,_binary '',6),(3113,40,61,2399,466,_binary '',7),(3114,40,61,2400,466,_binary '',8),(3115,40,61,2401,466,_binary '',9),(3116,40,61,2402,466,_binary '',10),(3117,40,61,2403,466,_binary '',11),(3118,40,61,2404,466,_binary '',12),(3119,40,61,2405,466,_binary '',13),(3120,40,61,2406,466,_binary '',14),(3121,40,61,2407,466,_binary '',15),(3122,40,61,2408,466,_binary '',16),(3123,40,61,2409,466,_binary '',17),(3124,40,61,2410,466,_binary '',18),(3125,40,61,2411,466,_binary '',19),(3126,40,61,2412,466,_binary '',20),(3127,40,61,2413,466,_binary '',21),(3128,40,61,2414,466,_binary '',22),(3129,40,61,2415,466,_binary '',23),(3130,40,61,2416,466,_binary '',24),(3131,40,61,2417,466,_binary '',25),(3132,40,61,2418,466,_binary '',26),(3133,40,61,2419,466,_binary '',27),(3134,40,61,2420,466,_binary '',28),(3135,40,61,2421,466,_binary '',29),(3136,40,61,2422,466,_binary '',30),(3137,40,61,2423,466,_binary '',31),(3138,40,61,2424,466,_binary '',32),(3139,40,61,2425,466,_binary '',33),(3140,40,61,2426,466,_binary '',34),(3141,40,61,2427,466,_binary '',35),(3142,40,61,2444,472,_binary '',1),(3143,40,61,2445,472,_binary '',2),(3144,40,61,2446,472,_binary '',3),(3145,40,61,2447,472,_binary '',4),(3146,40,61,2448,472,_binary '',5),(3147,40,61,2449,472,_binary '',6),(3148,40,61,2450,472,_binary '',7),(3149,40,61,2451,472,_binary '',8),(3150,40,61,2452,472,_binary '',9),(3151,40,61,2453,472,_binary '',10),(3152,40,61,2454,473,_binary '',1),(3153,40,61,2455,473,_binary '',2),(3154,40,61,2456,473,_binary '',3),(3155,40,61,2457,473,_binary '',4),(3156,40,61,2458,473,_binary '',5),(3157,40,61,2459,473,_binary '',6),(3158,40,61,2460,473,_binary '',7),(3159,40,61,2461,473,_binary '',8),(3160,40,61,2462,474,_binary '',1),(3161,40,61,2463,474,_binary '',2),(3162,40,61,2464,474,_binary '',3),(3163,40,61,2465,474,_binary '',4),(3164,40,61,2466,475,_binary '',1),(3165,40,61,2467,475,_binary '',2),(3166,40,61,2468,475,_binary '',3),(3167,40,61,2469,475,_binary '',4),(3168,40,61,2470,475,_binary '',5),(3169,40,61,2471,475,_binary '',6),(3170,40,61,2472,475,_binary '',7),(3171,40,61,2473,475,_binary '',8),(3172,40,61,2474,475,_binary '',9),(3173,40,61,2475,475,_binary '',10),(3174,40,61,2476,475,_binary '',11),(3175,40,61,2477,475,_binary '',12),(3176,40,61,2478,475,_binary '',13),(3177,40,61,2479,475,_binary '',14),(3178,40,61,2480,475,_binary '',15),(3179,40,61,2481,475,_binary '',16),(3180,40,61,2482,475,_binary '',17),(3181,40,61,2483,475,_binary '',18),(3182,40,61,2484,475,_binary '',19),(3183,40,61,2485,475,_binary '',20),(3184,40,61,2486,475,_binary '',21),(3185,40,61,2487,475,_binary '',22),(3186,40,61,2488,475,_binary '',23),(3276,40,62,2428,467,_binary '',1),(3277,40,62,2429,468,_binary '',1),(3278,40,62,2430,469,_binary '',1),(3279,40,62,2431,469,_binary '',2),(3280,40,62,2432,469,_binary '',3),(3281,40,62,2433,469,_binary '',4),(3282,40,62,2434,469,_binary '',5),(3283,40,62,2435,470,_binary '',1),(3284,40,62,2436,470,_binary '',2),(3285,40,62,2437,470,_binary '',3),(3286,40,62,2438,471,_binary '',1),(3287,40,62,2439,471,_binary '',2),(3288,40,62,2440,471,_binary '',3),(3289,40,62,2441,471,_binary '',4),(3290,40,62,2442,471,_binary '',5),(3291,40,62,2443,471,_binary '',6),(4455,14,20,3072,213,_binary '',2),(4456,42,68,3073,543,_binary '',1),(4457,42,68,3074,543,_binary '',2),(4458,42,68,3075,543,_binary '',3),(4459,42,68,3076,543,_binary '',4),(4460,42,68,3077,543,_binary '',5),(4461,42,68,3078,543,_binary '',6),(4462,42,68,3079,543,_binary '',7),(4463,42,68,3080,544,_binary '',1),(4464,42,68,3081,544,_binary '',2),(4465,42,68,3082,544,_binary '',3),(4466,42,68,3083,544,_binary '',4),(4467,42,68,3084,544,_binary '',5),(4468,42,68,3085,544,_binary '',6),(4469,42,68,3086,544,_binary '',7),(4470,42,68,3087,545,_binary '',1),(4471,42,68,3088,545,_binary '',2),(4472,42,68,3089,545,_binary '',3),(4473,42,68,3090,545,_binary '',4),(4474,42,68,3091,545,_binary '',5),(4475,42,68,3092,546,_binary '',1),(4476,42,68,3093,546,_binary '',2),(4477,42,68,3094,546,_binary '',3),(4478,42,68,3095,546,_binary '',4),(4479,42,68,3096,546,_binary '',5),(4480,42,68,3097,546,_binary '',6),(4481,42,68,3098,546,_binary '',7),(4482,42,68,3099,546,_binary '',8),(4483,42,68,3100,546,_binary '',9),(4484,42,68,3101,546,_binary '',10),(4485,42,68,3102,547,_binary '',1),(4486,42,68,3103,547,_binary '',2),(4487,42,68,3104,547,_binary '',3),(4488,42,68,3105,547,_binary '',4),(4489,42,68,3106,548,_binary '',1),(4490,42,68,3107,549,_binary '',1),(4491,42,68,3108,549,_binary '',2),(4492,42,68,3109,549,_binary '',3),(4493,42,68,3110,549,_binary '',4),(4494,42,68,3111,549,_binary '',5),(4495,42,68,3112,549,_binary '',6),(4496,42,68,3113,549,_binary '',7),(4497,42,68,3114,549,_binary '',8),(4498,42,68,3115,550,_binary '',1),(4499,42,68,3116,550,_binary '',2),(4500,42,68,3117,550,_binary '',3),(4501,42,68,3118,550,_binary '',4),(4502,42,68,3119,550,_binary '',5),(4503,42,68,3120,550,_binary '',6),(4504,42,68,3121,550,_binary '',7),(4505,42,68,3122,551,_binary '',1),(4506,42,68,3123,552,_binary '',1),(4507,42,68,3124,552,_binary '',2),(4508,42,68,3125,552,_binary '',3),(4509,42,68,3126,552,_binary '',4),(4510,42,68,3127,552,_binary '',5),(4511,42,68,3128,553,_binary '',1),(4512,42,68,3129,553,_binary '',2),(4513,42,68,3130,553,_binary '',3),(4514,42,68,3131,554,_binary '',1),(4515,42,68,3132,555,_binary '',1),(4516,42,68,3133,555,_binary '',2),(4517,42,68,3134,556,_binary '',1),(4518,42,68,3135,556,_binary '',2),(4519,42,68,3136,556,_binary '',3),(4520,42,68,3137,556,_binary '',4),(4521,42,68,3138,556,_binary '',5),(4522,42,68,3139,556,_binary '',6),(4523,42,68,3140,556,_binary '',7),(4524,42,68,3141,557,_binary '',1),(4525,42,68,3142,557,_binary '',2),(4526,42,68,3143,557,_binary '',3),(4527,42,68,3144,557,_binary '',4),(4528,42,68,3145,557,_binary '',5),(4529,42,68,3146,557,_binary '',6),(4530,42,68,3147,557,_binary '',7),(4531,42,68,3148,557,_binary '',8),(4532,42,68,3149,557,_binary '',9),(4533,42,68,3150,557,_binary '',10),(4534,42,68,3151,557,_binary '',11),(4535,42,68,3152,558,_binary '',1),(4536,42,68,3153,558,_binary '',2),(4537,42,68,3154,558,_binary '',3),(4538,42,68,3155,558,_binary '',4),(4539,42,68,3156,558,_binary '',5),(4540,42,68,3157,558,_binary '',6),(4541,42,68,3158,558,_binary '',7),(4542,42,68,3159,559,_binary '',1),(4543,42,68,3160,559,_binary '',2),(4544,42,68,3161,559,_binary '',3),(4545,42,68,3162,559,_binary '',4),(4546,42,68,3163,559,_binary '',5),(4547,42,68,3164,559,_binary '',6),(4548,42,68,3165,559,_binary '',7),(4549,42,68,3166,559,_binary '',8),(4550,42,68,3167,559,_binary '',9),(4551,42,68,3168,559,_binary '',10),(4552,42,68,3169,559,_binary '',11),(4553,42,68,3170,559,_binary '',12),(4554,42,68,3171,559,_binary '',13),(4555,42,68,3172,559,_binary '',14),(4556,42,68,3173,559,_binary '',15),(4557,42,68,3174,559,_binary '',16),(4558,42,68,3175,559,_binary '',17),(4559,42,68,3176,559,_binary '',18),(4560,42,68,3177,559,_binary '',19),(4561,42,68,3178,559,_binary '',20),(4562,42,68,3179,559,_binary '',21),(4563,42,68,3180,559,_binary '',22),(4564,42,68,3181,559,_binary '',23),(4565,42,68,3182,559,_binary '',24),(4566,42,68,3183,559,_binary '',25),(4567,42,68,3184,559,_binary '',26),(4568,42,68,3185,559,_binary '',27),(4569,42,68,3186,559,_binary '',28),(4570,42,68,3187,559,_binary '',29),(4571,42,68,3188,559,_binary '',30),(4572,42,68,3189,559,_binary '',31),(4573,42,68,3190,559,_binary '',32),(4574,42,68,3191,559,_binary '',33),(4575,42,68,3192,559,_binary '',34),(4576,42,68,3193,559,_binary '',35),(4577,42,68,3210,565,_binary '',1),(4578,42,68,3211,565,_binary '',2),(4579,42,68,3212,565,_binary '',3),(4580,42,68,3213,565,_binary '',4),(4581,42,68,3214,565,_binary '',5),(4582,42,68,3215,565,_binary '',6),(4583,42,68,3216,565,_binary '',7),(4584,42,68,3217,565,_binary '',8),(4585,42,68,3218,565,_binary '',9),(4586,42,68,3219,565,_binary '',10),(4587,42,68,3220,566,_binary '',1),(4588,42,68,3221,566,_binary '',2),(4589,42,68,3222,566,_binary '',3),(4590,42,68,3223,566,_binary '',4),(4591,42,68,3224,566,_binary '',5),(4592,42,68,3225,566,_binary '',6),(4593,42,68,3226,566,_binary '',7),(4594,42,68,3227,566,_binary '',8),(4595,42,68,3228,567,_binary '',1),(4596,42,68,3229,567,_binary '',2),(4597,42,68,3230,567,_binary '',3),(4598,42,68,3231,567,_binary '',4),(4599,42,68,3232,568,_binary '',1),(4600,42,68,3233,568,_binary '',2),(4601,42,68,3234,568,_binary '',3),(4602,42,68,3235,568,_binary '',4),(4603,42,68,3236,568,_binary '',5),(4604,42,68,3237,568,_binary '',6),(4605,42,68,3238,568,_binary '',7),(4606,42,68,3239,568,_binary '',8),(4607,42,68,3240,568,_binary '',9),(4608,42,68,3241,568,_binary '',10),(4609,42,68,3242,568,_binary '',11),(4610,42,68,3243,568,_binary '',12),(4611,42,68,3244,568,_binary '',13),(4612,42,68,3245,568,_binary '',14),(4613,42,68,3246,568,_binary '',15),(4614,42,68,3247,568,_binary '',16),(4615,42,68,3248,568,_binary '',17),(4616,42,68,3249,568,_binary '',18),(4617,42,68,3250,568,_binary '',19),(4618,42,68,3251,568,_binary '',20),(4619,42,68,3252,568,_binary '',21),(4620,42,68,3253,568,_binary '',22),(4621,42,68,3254,568,_binary '',23),(4711,42,69,3194,560,_binary '',1),(4712,42,69,3195,561,_binary '',1),(4713,42,69,3196,562,_binary '',1),(4714,42,69,3197,562,_binary '',2),(4715,42,69,3198,562,_binary '',3),(4716,42,69,3199,562,_binary '',4),(4717,42,69,3200,562,_binary '',5),(4718,42,69,3201,563,_binary '',1),(4719,42,69,3202,563,_binary '',2),(4720,42,69,3203,563,_binary '',3),(4721,42,69,3204,564,_binary '',1),(4722,42,69,3205,564,_binary '',2),(4723,42,69,3206,564,_binary '',3),(4724,42,69,3207,564,_binary '',4),(4725,42,69,3208,564,_binary '',5),(4726,42,69,3209,564,_binary '',6),(4742,38,51,3328,289,_binary '',1),(4743,38,51,3329,289,_binary '',2),(4744,38,51,3330,289,_binary '',3),(4745,38,51,3331,289,_binary '',4),(4746,38,51,3332,289,_binary '',5),(4747,38,51,3333,289,_binary '',6),(4748,38,51,3334,298,_binary '',1),(4749,38,51,3335,298,_binary '',2),(4750,38,51,3336,301,_binary '',1),(4751,38,51,3337,301,_binary '',2),(4752,38,51,3338,304,_binary '',1),(4753,38,51,3339,304,_binary '',2),(4754,38,51,3340,304,_binary '',3),(4755,38,51,3341,304,_binary '',4),(4756,38,51,3342,309,_binary '',1),(4757,38,51,3343,309,_binary '',2),(4758,38,51,3344,309,_binary '',3),(4759,38,51,3345,309,_binary '',4),(4760,38,51,3346,315,_binary '',1),(4761,38,51,3347,315,_binary '',2),(4762,38,51,3348,315,_binary '',3),(4763,38,51,3349,315,_binary '',4),(4764,38,51,3350,315,_binary '',5),(4765,38,51,3351,315,_binary '',6),(4770,38,51,3356,323,_binary '',1),(4771,38,51,3357,323,_binary '',2),(4772,38,51,3358,323,_binary '',3),(4773,38,51,3359,323,_binary '',4),(4774,38,51,3360,323,_binary '',5),(4775,38,51,3361,323,_binary '',6),(4776,38,51,3362,323,_binary '',7),(4777,38,51,3363,323,_binary '',8),(4778,38,51,3364,332,_binary '',1),(4779,38,51,3365,332,_binary '',2),(4780,38,51,3366,332,_binary '',3),(4781,38,51,3367,332,_binary '',4),(4782,38,51,3368,332,_binary '',5),(4783,38,51,3369,337,_binary '',1),(4784,38,51,3370,337,_binary '',2),(4785,38,51,3371,337,_binary '',3),(4786,38,51,3372,337,_binary '',4),(4787,38,51,3373,337,_binary '',5),(4788,38,51,3374,337,_binary '',6),(4789,38,51,3375,338,_binary '',1),(4790,38,51,3376,338,_binary '',2),(4791,38,51,3377,338,_binary '',3),(4792,38,51,3378,338,_binary '',4),(4793,38,51,3379,338,_binary '',5),(4794,38,51,3380,344,_binary '',1),(4795,38,51,3381,344,_binary '',2),(4796,38,51,3382,344,_binary '',3),(4797,38,51,3383,344,_binary '',4),(4798,38,51,3384,344,_binary '',5),(4799,38,51,3385,344,_binary '',6),(4800,38,51,3386,344,_binary '',7),(4801,38,70,3328,289,_binary '',1),(4802,38,70,3329,289,_binary '',2),(4803,38,70,3330,289,_binary '',3),(4804,38,70,3331,289,_binary '',4),(4805,38,70,3332,289,_binary '',5),(4806,38,70,3333,289,_binary '',6),(4807,38,70,3334,298,_binary '',1),(4808,38,70,3335,298,_binary '',2),(4809,38,70,3336,301,_binary '',1),(4810,38,70,3337,301,_binary '',2),(4811,38,70,3338,304,_binary '',1),(4812,38,70,3339,304,_binary '',2),(4813,38,70,3340,304,_binary '',3),(4814,38,70,3341,304,_binary '',4),(4815,38,70,3342,309,_binary '',1),(4816,38,70,3343,309,_binary '',2),(4817,38,70,3344,309,_binary '',3),(4818,38,70,3345,309,_binary '',4),(4819,38,70,3346,315,_binary '',1),(4820,38,70,3347,315,_binary '',2),(4821,38,70,3348,315,_binary '',3),(4822,38,70,3349,315,_binary '',4),(4823,38,70,3350,315,_binary '',5),(4824,38,70,3351,315,_binary '',6),(4829,38,70,3356,323,_binary '',1),(4830,38,70,3357,323,_binary '',2),(4831,38,70,3358,323,_binary '',3),(4832,38,70,3359,323,_binary '',4),(4833,38,70,3360,323,_binary '',5),(4834,38,70,3361,323,_binary '',6),(4835,38,70,3362,323,_binary '',7),(4836,38,70,3363,323,_binary '',8),(4837,38,70,3364,332,_binary '',1),(4838,38,70,3365,332,_binary '',2),(4839,38,70,3366,332,_binary '',3),(4840,38,70,3367,332,_binary '',4),(4841,38,70,3368,332,_binary '',5),(4842,38,70,3369,337,_binary '',1),(4843,38,70,3370,337,_binary '',2),(4844,38,70,3371,337,_binary '',3),(4845,38,70,3372,337,_binary '',4),(4846,38,70,3373,337,_binary '',5),(4847,38,70,3374,337,_binary '',6),(4848,38,70,3375,338,_binary '',1),(4849,38,70,3376,338,_binary '',2),(4850,38,70,3377,338,_binary '',3),(4851,38,70,3378,338,_binary '',4),(4852,38,70,3379,338,_binary '',5),(4853,38,70,3380,344,_binary '',1),(4854,38,70,3381,344,_binary '',2),(4855,38,70,3382,344,_binary '',3),(4856,38,70,3383,344,_binary '',4),(4857,38,70,3384,344,_binary '',5),(4858,38,70,3385,344,_binary '',6),(4859,38,70,3386,344,_binary '',7),(4865,11,13,3387,89,_binary '',19),(4866,11,13,3388,89,_binary '',20),(4867,11,13,3389,89,_binary '',21),(4868,11,13,3390,89,_binary '',22),(4869,11,13,3391,89,_binary '',23),(4870,11,13,3392,89,_binary '',24),(4871,11,13,3393,89,_binary '',25),(4872,11,13,3394,89,_binary '',26),(4873,11,13,3395,575,_binary '',1),(4874,11,13,3396,575,_binary '',2),(4875,11,13,3397,575,_binary '',3),(4876,11,13,3398,576,_binary '',1),(4877,11,13,3399,576,_binary '',2),(4878,11,13,3400,576,_binary '',3),(4879,11,13,3401,576,_binary '',4),(4880,11,13,3402,576,_binary '',5),(4881,11,13,3403,576,_binary '',6),(4882,11,13,3404,577,_binary '',1),(4883,11,13,3405,577,_binary '',2),(4884,11,13,3406,577,_binary '',3),(4885,11,13,3407,577,_binary '',4),(4886,11,13,3408,577,_binary '',5),(4887,11,13,3409,577,_binary '',6),(4888,11,13,3410,578,_binary '',1),(4889,11,13,3411,578,_binary '',2),(4890,11,13,3412,578,_binary '',3),(4891,11,13,3413,578,_binary '',4),(4892,11,13,3414,578,_binary '',5),(4893,11,13,3415,578,_binary '',6),(4894,11,13,3416,578,_binary '',7),(4895,11,13,3417,578,_binary '',8),(4896,11,13,3418,579,_binary '',1),(4897,11,13,3419,579,_binary '',2),(4898,11,13,3420,579,_binary '',3),(4899,27,33,3421,175,_binary '',11),(4900,27,36,3421,175,_binary '',11),(4902,38,49,3422,620,_binary '',1),(4903,38,50,3422,620,_binary '',1),(4905,27,33,3423,175,_binary '',12),(4906,27,36,3423,175,_binary '',12),(4908,27,33,3424,175,_binary '',13),(4909,27,36,3424,175,_binary '',13),(4911,27,33,3425,175,_binary '',14),(4912,27,36,3425,175,_binary '',14),(4914,27,33,3426,175,_binary '',15),(4915,27,36,3426,175,_binary '',15),(4917,27,33,3427,175,_binary '',16),(4918,27,36,3427,175,_binary '',16),(4920,27,33,3428,175,_binary '',17),(4921,27,36,3428,175,_binary '',17),(4923,27,33,3429,175,_binary '',18),(4924,27,36,3429,175,_binary '',18),(4926,27,33,3430,175,_binary '',19),(4927,27,36,3430,175,_binary '',19),(4929,38,49,3431,620,_binary '',2),(4930,38,50,3431,620,_binary '',2),(4932,27,33,3432,175,_binary '',20),(4933,27,36,3432,175,_binary '',20),(4935,27,33,3433,175,_binary '',21),(4936,27,36,3433,175,_binary '',21),(4938,27,33,3434,175,_binary '',22),(4939,27,36,3434,175,_binary '',22),(4941,27,33,3435,175,_binary '',23),(4942,27,36,3435,175,_binary '',23),(4944,27,33,3436,175,_binary '',24),(4945,27,36,3436,175,_binary '',24),(4947,27,33,3437,175,_binary '',25),(4948,27,36,3437,175,_binary '',25),(4950,38,49,3438,620,_binary '',3),(4951,38,50,3438,620,_binary '',3),(4953,38,49,3439,620,_binary '',4),(4954,38,50,3439,620,_binary '',4),(4956,38,49,3440,620,_binary '',5),(4957,38,50,3440,620,_binary '',5),(4959,38,49,3441,620,_binary '',6),(4963,38,50,3442,620,_binary '',7),(4965,38,49,3443,620,_binary '',8),(4966,38,50,3443,620,_binary '',8),(4968,38,49,3444,620,_binary '',9),(4969,38,50,3444,620,_binary '',9),(4971,38,49,3445,620,_binary '',10),(4972,38,50,3445,620,_binary '',10),(4974,43,71,3446,592,_binary '',1),(4975,43,71,3447,592,_binary '',2),(4976,38,49,3448,620,_binary '',11),(4977,38,50,3448,620,_binary '',11),(4979,43,71,3449,593,_binary '',1),(4980,38,49,3450,620,_binary '',12),(4981,38,50,3450,620,_binary '',12),(4983,43,71,3451,621,_binary '',1),(4984,43,71,3452,621,_binary '',2),(4985,38,49,3453,622,_binary '',1),(4986,38,50,3453,622,_binary '',1),(4987,38,51,3453,622,_binary '',1),(4988,38,70,3453,622,_binary '',1),(4992,38,49,3454,622,_binary '',2),(4993,38,50,3454,622,_binary '',2),(4994,38,51,3454,622,_binary '',2),(4995,38,70,3454,622,_binary '',2),(4999,43,71,3455,621,_binary '',3),(5000,38,49,3456,622,_binary '',3),(5001,38,50,3456,622,_binary '',3),(5002,38,51,3456,622,_binary '',3),(5003,38,70,3456,622,_binary '',3),(5007,38,49,3457,622,_binary '',4),(5008,38,50,3457,622,_binary '',4),(5009,38,51,3457,622,_binary '',4),(5010,38,70,3457,622,_binary '',4),(5014,38,51,3422,620,_binary '',1),(5015,38,70,3422,620,_binary '',1),(5016,38,51,3431,620,_binary '',2),(5017,38,70,3431,620,_binary '',2),(5018,38,51,3438,620,_binary '',3),(5019,38,70,3438,620,_binary '',3),(5020,38,51,3439,620,_binary '',4),(5021,38,70,3439,620,_binary '',4),(5022,38,51,3440,620,_binary '',5),(5023,38,70,3440,620,_binary '',5),(5024,38,51,3441,620,_binary '',6),(5025,38,70,3441,620,_binary '',6),(5026,38,50,3441,620,_binary '',12),(5027,38,51,3443,620,_binary '',7),(5028,38,70,3443,620,_binary '',7),(5029,38,51,3444,620,_binary '',8),(5030,38,70,3444,620,_binary '',8),(5031,38,51,3445,620,_binary '',9),(5032,38,70,3445,620,_binary '',9),(5033,38,51,3448,620,_binary '',10),(5034,38,70,3448,620,_binary '',10),(5035,38,51,3450,620,_binary '',11),(5036,38,70,3450,620,_binary '',11),(5037,38,49,3458,620,_binary '',12),(5038,38,50,3458,620,_binary '',13),(5039,38,51,3458,620,_binary '',12),(5040,38,70,3458,620,_binary '',12),(5044,38,49,3459,623,_binary '',1),(5045,38,50,3459,623,_binary '',1),(5046,38,51,3459,623,_binary '',1),(5047,38,70,3459,623,_binary '',1),(5051,38,49,3460,623,_binary '',2),(5052,38,50,3460,623,_binary '',2),(5053,38,51,3460,623,_binary '',2),(5054,38,70,3460,623,_binary '',2),(5058,38,49,3461,623,_binary '',3),(5059,38,50,3461,623,_binary '',3),(5060,38,51,3461,623,_binary '',3),(5061,38,70,3461,623,_binary '',3),(5065,38,49,3462,623,_binary '',4),(5066,38,50,3462,623,_binary '',4),(5067,38,51,3462,623,_binary '',4),(5068,38,70,3462,623,_binary '',4),(5072,38,49,3463,623,_binary '',5),(5073,38,50,3463,623,_binary '',5),(5074,38,51,3463,623,_binary '',5),(5075,38,70,3463,623,_binary '',5),(5079,38,49,3464,623,_binary '',6),(5080,38,50,3464,623,_binary '',6),(5081,38,51,3464,623,_binary '',6),(5082,38,70,3464,623,_binary '',6),(5086,38,49,3465,624,_binary '',1),(5087,38,50,3465,624,_binary '',1),(5088,38,51,3465,624,_binary '',1),(5089,38,70,3465,624,_binary '',1),(5093,38,49,3466,624,_binary '',2),(5094,38,50,3466,624,_binary '',2),(5095,38,51,3466,624,_binary '',2),(5096,38,70,3466,624,_binary '',2),(5100,38,49,3467,624,_binary '',3),(5101,38,50,3467,624,_binary '',3),(5102,38,51,3467,624,_binary '',3),(5103,38,70,3467,624,_binary '',3),(5107,38,49,3468,624,_binary '',4),(5108,38,50,3468,624,_binary '',4),(5110,38,49,3469,624,_binary '',5),(5111,38,50,3469,624,_binary '',5),(5113,38,49,3470,624,_binary '',6),(5114,38,50,3470,624,_binary '',6),(5116,38,49,3471,624,_binary '',7),(5117,38,50,3471,624,_binary '',7),(5119,38,49,3472,624,_binary '',8),(5120,38,50,3472,624,_binary '',8),(5122,38,49,3473,624,_binary '',9),(5123,38,50,3473,624,_binary '',9),(5124,38,51,3473,624,_binary '',4),(5125,38,70,3473,624,_binary '',4),(5129,38,49,3474,624,_binary '',10),(5130,38,50,3474,624,_binary '',10),(5132,38,51,3472,624,_binary '',5),(5133,38,70,3472,624,_binary '',5),(5134,38,51,3475,625,_binary '',1),(5135,38,70,3475,625,_binary '',1),(5137,38,51,3476,625,_binary '',2),(5138,38,70,3476,625,_binary '',2),(5140,38,50,3476,625,_binary '',1),(5141,38,50,3475,625,_binary '',2),(5142,38,50,3477,625,_binary '',3),(5143,38,51,3477,625,_binary '',3),(5144,38,70,3477,625,_binary '',3),(5145,43,71,3478,593,_binary '',2),(5146,43,71,3479,593,_binary '',3),(5147,43,71,3480,593,_binary '',4),(5148,43,71,3481,593,_binary '',5),(5149,43,71,3482,593,_binary '',6),(5150,43,71,3483,593,_binary '',7),(5151,43,71,3484,594,_binary '',1),(5152,43,71,3485,594,_binary '',2),(5153,43,71,3486,594,_binary '',3),(5154,43,71,3487,594,_binary '',4),(5155,43,71,3488,594,_binary '',5),(5156,43,71,3489,594,_binary '',6),(5157,43,71,3490,594,_binary '',7),(5158,43,71,3491,594,_binary '',8),(5159,43,71,3492,594,_binary '',9),(5160,43,71,3493,594,_binary '',10),(5161,43,71,3494,594,_binary '',11),(5162,43,71,3495,594,_binary '',12),(5163,43,71,3496,595,_binary '',1),(5164,43,71,3497,595,_binary '',2),(5165,43,71,3498,595,_binary '',3),(5166,43,71,3499,595,_binary '',4),(5167,43,71,3500,596,_binary '',1),(5168,43,71,3501,596,_binary '',2),(5169,43,71,3502,597,_binary '',1),(5170,43,71,3503,597,_binary '',2),(5171,43,71,3504,597,_binary '',3),(5172,43,71,3505,597,_binary '',4),(5173,43,71,3506,597,_binary '',5),(5174,43,71,3507,598,_binary '',1),(5175,43,71,3508,598,_binary '',2),(5176,43,71,3509,598,_binary '',3),(5177,43,71,3510,598,_binary '',4),(5178,43,71,3511,598,_binary '',5),(5179,24,30,3512,626,_binary '',1),(5180,43,71,3513,598,_binary '',6),(5181,43,71,3514,598,_binary '',7),(5182,43,71,3515,598,_binary '',8),(5183,43,71,3516,599,_binary '',1),(5184,43,71,3517,599,_binary '',2),(5185,43,71,3518,599,_binary '',3),(5186,43,71,3519,599,_binary '',4),(5187,43,71,3520,599,_binary '',5),(5188,43,71,3521,599,_binary '',6),(5189,43,71,3522,599,_binary '',7),(5190,43,71,3523,599,_binary '',8),(5191,43,71,3524,599,_binary '',9),(5192,43,71,3525,599,_binary '',10),(5193,43,71,3526,599,_binary '',11),(5194,43,71,3527,599,_binary '',12),(5195,43,71,3528,599,_binary '',13),(5196,43,71,3529,599,_binary '',14),(5197,43,71,3530,599,_binary '',15),(5198,43,71,3531,599,_binary '',16),(5199,43,71,3532,599,_binary '',17),(5200,43,71,3533,599,_binary '',18),(5201,43,71,3534,599,_binary '',19),(5202,43,71,3535,599,_binary '',20),(5203,24,30,3536,626,_binary '',2),(5204,43,71,3537,599,_binary '',21),(5205,43,71,3538,599,_binary '',22),(5206,43,71,3539,599,_binary '',23),(5207,43,71,3540,599,_binary '',24),(5208,24,30,3541,626,_binary '',3),(5209,43,71,3542,599,_binary '',25),(5210,43,71,3543,599,_binary '',26),(5211,43,71,3544,599,_binary '',27),(5212,43,71,3545,599,_binary '',28),(5213,43,71,3546,599,_binary '',29),(5214,43,71,3547,599,_binary '',30),(5215,43,71,3548,599,_binary '',31),(5216,43,71,3549,600,_binary '',1),(5217,43,71,3550,600,_binary '',2),(5218,24,30,3551,626,_binary '',4),(5219,43,71,3552,600,_binary '',3),(5220,43,71,3553,600,_binary '',4),(5221,43,71,3554,600,_binary '',5),(5222,43,71,3555,600,_binary '',6),(5223,43,71,3556,600,_binary '',7),(5224,43,71,3557,600,_binary '',8),(5225,43,71,3558,600,_binary '',9),(5226,43,71,3559,600,_binary '',10),(5227,24,30,3560,626,_binary '',5),(5228,43,71,3561,600,_binary '',11),(5229,43,71,3562,600,_binary '',12),(5230,43,71,3563,600,_binary '',13),(5231,24,30,3564,626,_binary '',6),(5232,43,71,3565,600,_binary '',14),(5233,43,71,3566,600,_binary '',15),(5234,43,71,3567,600,_binary '',16),(5235,43,71,3568,600,_binary '',17),(5236,43,71,3569,601,_binary '',1),(5237,43,71,3570,601,_binary '',2),(5238,43,71,3571,602,_binary '',1),(5239,43,71,3572,603,_binary '',1),(5240,43,71,3573,603,_binary '',2),(5241,43,71,3574,603,_binary '',3),(5242,43,71,3575,603,_binary '',4),(5243,43,71,3576,603,_binary '',5),(5244,43,71,3577,603,_binary '',6),(5245,43,71,3578,603,_binary '',7),(5246,43,71,3579,603,_binary '',8),(5247,43,71,3580,605,_binary '',1),(5248,43,71,3581,605,_binary '',2),(5249,43,71,3582,606,_binary '',1),(5250,43,71,3583,606,_binary '',2),(5251,43,71,3584,606,_binary '',3),(5252,43,71,3585,606,_binary '',4),(5253,43,71,3586,607,_binary '',1),(5254,43,71,3587,607,_binary '',2),(5255,43,71,3588,607,_binary '',3),(5256,43,71,3589,609,_binary '',1),(5257,43,71,3590,609,_binary '',2),(5258,43,71,3591,609,_binary '',3),(5259,43,71,3592,610,_binary '',1),(5260,43,71,3593,610,_binary '',2),(5261,43,71,3594,611,_binary '',1),(5262,43,71,3595,611,_binary '',2),(5263,43,71,3596,612,_binary '',1),(5264,43,71,3597,612,_binary '',2),(5265,43,71,3598,613,_binary '',1),(5266,43,71,3599,613,_binary '',2),(5267,43,71,3600,613,_binary '',3),(5268,43,71,3601,613,_binary '',4),(5269,43,71,3602,613,_binary '',5),(5270,43,71,3603,613,_binary '',6),(5271,43,71,3604,615,_binary '',1),(5272,43,71,3605,615,_binary '',2),(5273,43,71,3606,615,_binary '',3),(5274,43,71,3607,615,_binary '',4),(5275,43,71,3608,615,_binary '',5),(5276,43,71,3609,616,_binary '',1),(5277,43,71,3610,616,_binary '',2),(5278,43,71,3611,617,_binary '',1),(5279,43,71,3612,617,_binary '',2),(5280,43,71,3613,618,_binary '',1),(5281,43,71,3614,618,_binary '',2),(5282,43,71,3615,618,_binary '',3),(5283,43,71,3616,618,_binary '',4),(5284,43,71,3617,619,_binary '',1),(5285,43,71,3618,619,_binary '',2),(5286,43,71,3619,619,_binary '',3),(5287,43,71,3620,619,_binary '',4),(5288,24,30,3621,626,_binary '',7),(5289,24,30,3622,626,_binary '',8),(5290,24,30,3623,626,_binary '',9),(5291,24,30,3624,626,_binary '',10),(5292,24,30,3625,626,_binary '',11),(5293,24,30,3626,627,_binary '',1),(5294,24,30,3627,627,_binary '',2),(5295,24,30,3628,627,_binary '',3),(5296,24,30,3629,627,_binary '',4),(5297,24,30,3630,627,_binary '',5),(5298,24,30,3631,628,_binary '',1),(5299,24,30,3632,628,_binary '',2),(5300,24,30,3633,628,_binary '',3),(5301,24,30,3634,628,_binary '',4),(5302,24,30,3635,628,_binary '',5),(5303,24,30,3636,628,_binary '',6),(5304,24,30,3637,628,_binary '',7),(5305,24,30,3638,628,_binary '',8),(5306,24,30,3639,629,_binary '',1),(5307,24,30,3640,629,_binary '',2),(5308,24,30,3641,629,_binary '',3),(5309,24,30,3642,629,_binary '',4),(5310,24,30,3643,629,_binary '',5),(5311,24,30,3644,629,_binary '',6),(5312,24,30,3645,629,_binary '',7),(5313,24,30,3646,630,_binary '',1),(5314,24,30,3647,630,_binary '',2),(5315,24,30,3648,630,_binary '',3),(5316,24,30,3649,630,_binary '',4),(5317,24,30,3650,630,_binary '',5),(5318,24,30,3651,630,_binary '',6),(5319,24,30,3652,630,_binary '',7),(5320,24,30,3653,630,_binary '',8),(5321,24,30,3654,631,_binary '',1),(5322,24,30,3655,631,_binary '',2),(5323,24,30,3656,631,_binary '',3),(5324,24,30,3657,632,_binary '',1),(5325,24,30,3658,632,_binary '',2),(5326,24,30,3659,632,_binary '',3),(5327,24,30,3660,632,_binary '',4),(5328,24,30,3661,632,_binary '',5),(5329,24,30,3662,632,_binary '',6),(5330,24,30,3663,632,_binary '',7),(5331,24,30,3664,632,_binary '',8),(5332,24,30,3665,632,_binary '',9),(5333,24,30,3666,632,_binary '',10),(5334,24,30,3667,632,_binary '',11),(5335,24,30,3668,632,_binary '',12),(5336,24,30,3669,632,_binary '',13),(5337,24,30,3670,633,_binary '',1),(5338,24,30,3671,633,_binary '',2),(5339,24,30,3672,633,_binary '',3),(5340,24,30,3673,634,_binary '',1),(5341,24,30,3674,634,_binary '',2),(5342,24,30,3675,634,_binary '',3),(5343,24,30,3676,634,_binary '',4),(5344,24,30,3677,634,_binary '',5),(5345,24,30,3678,634,_binary '',6),(5346,24,30,3679,635,_binary '',1),(5347,24,30,3680,635,_binary '',2),(5348,24,30,3681,635,_binary '',3),(5349,24,30,3682,635,_binary '',4),(5350,24,30,3683,636,_binary '',1),(5351,24,30,3684,636,_binary '',2),(5352,24,30,3685,636,_binary '',3),(5353,24,30,3686,637,_binary '',1),(5354,24,30,3687,637,_binary '',2),(5355,24,30,3688,638,_binary '',1),(5356,24,30,3689,638,_binary '',2),(5357,24,30,3690,639,_binary '',1),(5358,24,30,3691,639,_binary '',2),(5359,24,30,3692,639,_binary '',3),(5360,24,30,3693,639,_binary '',4),(5361,24,30,3694,639,_binary '',5),(5362,24,30,3695,640,_binary '',1),(5363,24,30,3696,640,_binary '',2),(5364,24,30,3697,640,_binary '',3),(5365,24,30,3698,641,_binary '',1),(5366,24,30,3699,641,_binary '',2),(5367,24,30,3700,642,_binary '',1),(5368,24,30,3701,642,_binary '',2),(5369,38,50,3702,625,_binary '',4),(5370,38,51,3702,625,_binary '',4),(5371,38,70,3702,625,_binary '',4),(5372,24,30,3703,642,_binary '',3),(5373,38,50,3704,625,_binary '',5),(5374,38,51,3704,625,_binary '',5),(5375,38,70,3704,625,_binary '',5),(5376,24,30,3705,643,_binary '',1),(5377,38,50,3706,644,_binary '',1),(5378,38,51,3706,644,_binary '',1),(5379,38,70,3706,644,_binary '',1),(5380,38,50,3707,644,_binary '',2),(5381,38,51,3707,644,_binary '',2),(5382,38,70,3707,644,_binary '',2),(5383,24,30,3708,643,_binary '',2),(5384,38,50,3709,644,_binary '',3),(5385,38,51,3709,644,_binary '',3),(5386,38,70,3709,644,_binary '',3),(5387,24,30,3710,643,_binary '',3),(5388,38,50,3711,644,_binary '',4),(5389,38,51,3711,644,_binary '',4),(5390,38,70,3711,644,_binary '',4),(5391,38,50,3712,644,_binary '',5),(5392,38,51,3712,644,_binary '',5),(5393,38,70,3712,644,_binary '',5),(5394,38,50,3713,644,_binary '',6),(5395,38,51,3713,644,_binary '',6),(5396,38,70,3713,644,_binary '',6),(5397,24,30,3714,646,_binary '',1),(5398,24,30,3715,646,_binary '',2),(5399,24,30,3716,646,_binary '',3),(5400,38,51,3717,645,_binary '',1),(5401,38,70,3717,645,_binary '',1),(5403,24,30,3718,646,_binary '',4),(5404,24,30,3719,646,_binary '',5),(5405,24,30,3720,646,_binary '',6),(5406,24,30,3721,646,_binary '',7),(5407,38,51,3722,645,_binary '',2),(5408,38,70,3722,645,_binary '',2),(5410,24,30,3723,646,_binary '',8),(5411,38,51,3724,645,_binary '',3),(5412,38,70,3724,645,_binary '',3),(5414,38,51,3725,645,_binary '',4),(5415,38,70,3725,645,_binary '',4),(5417,38,51,3726,645,_binary '',5),(5418,38,70,3726,645,_binary '',5),(5420,24,30,3727,647,_binary '',1),(5421,38,51,3728,645,_binary '',6),(5422,38,70,3728,645,_binary '',6),(5424,38,51,3729,645,_binary '',7),(5425,38,70,3729,645,_binary '',7),(5427,38,51,3730,645,_binary '',8),(5428,38,70,3730,645,_binary '',8),(5430,38,51,3731,645,_binary '',9),(5431,38,70,3731,645,_binary '',9),(5433,38,51,3732,645,_binary '',10),(5434,38,70,3732,645,_binary '',10),(5436,38,51,3733,645,_binary '',11),(5437,38,70,3733,645,_binary '',11),(5439,24,30,3734,648,_binary '',1),(5440,38,51,3735,645,_binary '',12),(5441,38,70,3735,645,_binary '',12),(5443,38,51,3736,645,_binary '',13),(5444,38,70,3736,645,_binary '',13),(5446,24,30,3737,648,_binary '',2),(5447,24,30,3738,648,_binary '',3),(5448,38,51,3739,645,_binary '',14),(5449,38,70,3739,645,_binary '',14),(5451,24,30,3740,648,_binary '',4),(5452,38,51,3741,645,_binary '',15),(5453,38,70,3741,645,_binary '',15),(5455,24,30,3742,648,_binary '',5),(5456,38,51,3743,645,_binary '',16),(5457,38,70,3743,645,_binary '',16),(5459,38,51,3744,645,_binary '',17),(5460,38,70,3744,645,_binary '',17),(5462,38,51,3745,645,_binary '',18),(5463,38,70,3745,645,_binary '',18),(5465,38,51,3746,645,_binary '',19),(5466,38,70,3746,645,_binary '',19),(5468,38,51,3747,645,_binary '',20),(5469,38,70,3747,645,_binary '',20),(5471,24,30,3748,648,_binary '',6),(5472,38,51,3749,645,_binary '',21),(5473,38,70,3749,645,_binary '',21),(5475,24,30,3750,648,_binary '',7),(5476,38,51,3751,645,_binary '',22),(5477,38,70,3751,645,_binary '',22),(5479,24,30,3752,648,_binary '',8),(5480,38,51,3753,645,_binary '',23),(5481,38,70,3753,645,_binary '',23),(5483,24,30,3754,648,_binary '',9),(5484,24,30,3755,648,_binary '',10),(5485,24,30,3756,648,_binary '',11),(5486,24,30,3757,648,_binary '',12),(5487,38,51,3758,645,_binary '',24),(5488,38,70,3758,645,_binary '',24),(5490,38,51,3759,645,_binary '',25),(5491,38,70,3759,645,_binary '',25),(5493,38,51,3760,645,_binary '',26),(5494,38,70,3760,645,_binary '',26),(5496,38,51,3761,645,_binary '',27),(5497,38,70,3761,645,_binary '',27),(5499,38,51,3762,645,_binary '',28),(5500,38,70,3762,645,_binary '',28),(5502,38,51,3763,645,_binary '',29),(5503,38,70,3763,645,_binary '',29),(5505,38,51,3764,645,_binary '',30),(5506,38,70,3764,645,_binary '',30),(5508,38,51,3765,645,_binary '',31),(5509,38,70,3765,645,_binary '',31),(5511,38,51,3766,645,_binary '',32),(5512,38,70,3766,645,_binary '',32),(5514,38,51,3767,645,_binary '',33),(5515,38,70,3767,645,_binary '',33),(5517,38,51,3768,645,_binary '',34),(5518,38,70,3768,645,_binary '',34),(5520,38,51,3769,651,_binary '',1),(5521,38,70,3769,651,_binary '',1),(5523,38,51,3770,651,_binary '',2),(5524,38,70,3770,651,_binary '',2),(5526,38,51,3771,651,_binary '',3),(5527,38,70,3771,651,_binary '',3),(5529,38,51,3772,651,_binary '',4),(5530,38,70,3772,651,_binary '',4),(5532,38,51,3773,651,_binary '',5),(5533,38,70,3773,651,_binary '',5),(5535,26,32,3774,649,_binary '',1),(5536,26,32,3775,649,_binary '',2),(5537,26,32,3776,655,_binary '',1),(5538,26,32,3777,655,_binary '',2),(5539,45,73,3778,657,_binary '',1),(5540,26,32,3779,655,_binary '',3),(5541,26,32,3780,655,_binary '',4),(5542,26,32,3781,655,_binary '',5),(5543,26,32,3782,655,_binary '',6),(5544,26,32,3783,655,_binary '',7),(5545,26,32,3784,655,_binary '',8),(5546,26,32,3785,655,_binary '',9),(5547,26,32,3786,655,_binary '',10),(5548,26,32,3787,661,_binary '',1),(5549,26,32,3788,661,_binary '',2),(5550,26,32,3789,661,_binary '',3),(5551,26,32,3790,662,_binary '',1),(5552,26,32,3791,662,_binary '',2),(5553,26,32,3792,662,_binary '',3),(5554,26,32,3793,662,_binary '',4),(5555,26,32,3794,663,_binary '',1),(5556,26,32,3795,663,_binary '',2),(5557,26,32,3796,663,_binary '',3),(5558,26,32,3797,663,_binary '',4),(5559,26,32,3798,663,_binary '',5),(5560,26,32,3799,663,_binary '',6),(5561,26,32,3800,663,_binary '',7),(5562,26,32,3801,663,_binary '',8),(5563,26,32,3802,663,_binary '',9),(5564,26,32,3803,663,_binary '',10),(5565,26,32,3804,663,_binary '',11),(5566,29,37,3805,189,_binary '',14),(5567,38,51,3806,645,_binary '',35),(5568,38,70,3806,645,_binary '',35),(5570,38,51,3807,645,_binary '',36),(5571,38,70,3807,645,_binary '',36),(5573,38,51,3808,645,_binary '',37),(5574,38,70,3808,645,_binary '',37),(5576,38,51,3809,645,_binary '',38),(5577,38,70,3809,645,_binary '',38),(5579,38,51,3810,651,_binary '',6),(5580,38,70,3810,651,_binary '',6),(5582,38,51,3811,651,_binary '',7),(5583,38,70,3811,651,_binary '',7),(5585,38,51,3812,645,_binary '',39),(5586,38,70,3812,645,_binary '',39),(5588,38,51,3813,645,_binary '',40),(5589,38,70,3813,645,_binary '',40),(5591,38,51,3814,665,_binary '',1),(5592,38,70,3814,665,_binary '',1),(5594,38,51,3815,665,_binary '',2),(5595,38,70,3815,665,_binary '',2),(5597,38,51,3816,665,_binary '',3),(5598,38,70,3816,665,_binary '',3),(5600,38,51,3817,665,_binary '',4),(5601,38,70,3817,665,_binary '',4),(5603,38,51,3818,665,_binary '',5),(5604,38,70,3818,665,_binary '',5),(5606,38,51,3819,665,_binary '',6),(5607,38,70,3819,665,_binary '',6),(5609,38,51,3820,665,_binary '',7),(5610,38,70,3820,665,_binary '',7),(5612,38,51,3821,665,_binary '',8),(5613,38,70,3821,665,_binary '',8),(5615,38,51,3822,665,_binary '',9),(5616,38,70,3822,665,_binary '',9),(5618,38,51,3823,665,_binary '',10),(5619,38,70,3823,665,_binary '',10),(5621,38,51,3824,665,_binary '',11),(5622,38,70,3824,665,_binary '',11),(5624,38,51,3825,665,_binary '',12),(5625,38,70,3825,665,_binary '',12),(5627,38,51,3826,665,_binary '',13),(5628,38,70,3826,665,_binary '',13),(5630,38,51,3827,665,_binary '',14),(5631,38,70,3827,665,_binary '',14),(5633,26,32,3828,663,_binary '',12),(5634,26,32,3829,663,_binary '',13),(5635,26,32,3830,663,_binary '',14),(5636,26,32,3831,663,_binary '',15),(5637,26,32,3832,663,_binary '',16),(5638,26,32,3833,663,_binary '',17),(5639,26,32,3834,663,_binary '',18),(5640,26,32,3835,663,_binary '',19),(5641,26,32,3836,663,_binary '',20),(5642,26,32,3837,663,_binary '',21),(5643,26,32,3838,663,_binary '',22),(5644,26,32,3839,663,_binary '',23),(5645,26,32,3840,666,_binary '',1),(5646,26,32,3841,667,_binary '',1),(5647,26,32,3842,667,_binary '',2),(5648,26,32,3843,668,_binary '',1),(5649,26,32,3844,668,_binary '',2),(5650,26,32,3845,668,_binary '',3),(5651,26,32,3846,668,_binary '',4),(5652,26,32,3847,668,_binary '',5),(5653,26,32,3848,668,_binary '',6),(5654,26,32,3849,668,_binary '',7),(5655,26,32,3850,669,_binary '',1),(5656,26,32,3851,669,_binary '',2),(5657,26,32,3852,670,_binary '',1),(5658,26,32,3853,670,_binary '',2),(5659,26,32,3854,670,_binary '',3),(5660,26,32,3855,670,_binary '',4),(5661,26,32,3856,670,_binary '',5),(5662,26,32,3857,670,_binary '',6),(5663,26,32,3858,670,_binary '',7),(5664,26,32,3859,670,_binary '',8),(5665,26,32,3860,670,_binary '',9),(5666,26,32,3861,670,_binary '',10),(5667,26,32,3862,671,_binary '',1),(5668,26,32,3863,671,_binary '',2),(5669,26,32,3864,671,_binary '',3),(5670,26,32,3865,672,_binary '',1),(5671,26,32,3866,672,_binary '',2),(5672,26,32,3867,672,_binary '',3),(5673,26,32,3868,672,_binary '',4),(5674,26,32,3869,672,_binary '',5),(5675,26,32,3870,672,_binary '',6),(5676,26,32,3871,672,_binary '',7),(5677,26,32,3872,672,_binary '',8),(5678,26,32,3873,672,_binary '',9),(5679,26,32,3874,672,_binary '',10),(5680,26,32,3875,672,_binary '',11),(5681,26,32,3876,672,_binary '',12),(5682,26,32,3877,673,_binary '',1),(5683,26,32,3878,673,_binary '',2),(5684,26,32,3879,673,_binary '',3),(5685,26,32,3880,673,_binary '',4),(5686,26,32,3881,673,_binary '',5),(5687,26,32,3882,673,_binary '',6),(5688,26,32,3883,673,_binary '',7),(5689,26,32,3884,673,_binary '',8),(5690,26,32,3885,674,_binary '',1),(5691,26,32,3886,674,_binary '',2),(5692,26,32,3887,674,_binary '',3),(5693,26,32,3888,674,_binary '',4),(5694,26,32,3889,674,_binary '',5),(5695,26,32,3890,674,_binary '',6),(5696,26,32,3891,675,_binary '',1),(5697,26,32,3892,675,_binary '',2),(5698,26,32,3893,675,_binary '',3),(5699,26,32,3894,676,_binary '',1),(5700,26,32,3895,676,_binary '',2),(5701,26,32,3896,676,_binary '',3),(5702,26,32,3897,677,_binary '',1),(5703,26,32,3898,677,_binary '',2),(5704,26,32,3899,677,_binary '',3),(5705,26,32,3900,677,_binary '',4),(5706,26,32,3901,677,_binary '',5),(5707,26,32,3902,678,_binary '',1),(5708,26,32,3903,678,_binary '',2),(5709,26,32,3904,678,_binary '',3),(5710,26,32,3905,678,_binary '',4),(5711,26,32,3906,678,_binary '',5),(5712,26,32,3907,678,_binary '',6),(5713,26,32,3908,678,_binary '',7),(5714,26,32,3909,679,_binary '',1),(5715,26,32,3910,679,_binary '',2),(5716,26,32,3911,679,_binary '',3),(5717,26,32,3912,679,_binary '',4),(5718,26,32,3913,679,_binary '',5),(5719,26,32,3914,679,_binary '',6),(5720,26,32,3915,679,_binary '',7),(5721,26,32,3916,680,_binary '',1),(5722,26,32,3917,680,_binary '',2),(5723,26,32,3918,680,_binary '',3),(5724,26,32,3919,680,_binary '',4),(5725,26,32,3920,681,_binary '',1),(5726,26,32,3921,681,_binary '',2),(5727,26,32,3922,681,_binary '',3),(5728,26,32,3923,681,_binary '',4),(5729,26,32,3924,681,_binary '',5),(5730,26,32,3925,681,_binary '',6),(5731,26,32,3926,681,_binary '',7),(5732,26,32,3927,681,_binary '',8),(5733,26,32,3928,681,_binary '',9),(5734,26,32,3929,681,_binary '',10),(5735,26,32,3930,681,_binary '',11),(5736,26,32,3931,681,_binary '',12),(5737,26,32,3932,681,_binary '',13),(5738,26,32,3933,681,_binary '',14),(5739,26,32,3934,682,_binary '',1),(5740,26,32,3935,682,_binary '',2),(5741,26,32,3936,682,_binary '',3),(5742,26,32,3937,683,_binary '',1),(5743,26,32,3938,683,_binary '',2),(5744,26,32,3939,683,_binary '',3),(5745,26,32,3940,684,_binary '',1),(5746,26,32,3941,684,_binary '',2),(5747,26,32,3942,684,_binary '',3),(5748,26,32,3943,685,_binary '',1),(5749,26,32,3944,685,_binary '',2),(5750,26,32,3945,685,_binary '',3),(5751,26,32,3946,685,_binary '',4),(5752,26,32,3947,685,_binary '',5),(5753,26,32,3948,685,_binary '',6),(5754,26,32,3949,685,_binary '',7),(5755,26,32,3950,685,_binary '',8),(5756,26,32,3951,686,_binary '',1),(5757,26,32,3952,686,_binary '',2),(5758,26,32,3953,686,_binary '',3),(5759,26,32,3954,686,_binary '',4),(5760,26,32,3955,686,_binary '',5),(5761,26,32,3956,686,_binary '',6),(5762,26,32,3957,686,_binary '',7),(5763,26,32,3958,686,_binary '',8),(5764,26,32,3959,686,_binary '',9),(5765,26,32,3960,686,_binary '',10),(5766,26,32,3961,686,_binary '',11),(5767,26,32,3962,687,_binary '',1),(5768,26,32,3963,687,_binary '',2),(5769,26,32,3964,687,_binary '',3),(5770,26,32,3965,688,_binary '',1),(5771,26,32,3966,688,_binary '',2),(5772,26,32,3967,688,_binary '',3),(5773,26,32,3968,688,_binary '',4),(5774,26,32,3969,689,_binary '',1),(5775,26,32,3970,689,_binary '',2),(5776,26,32,3971,689,_binary '',3),(5777,28,34,3972,154,_binary '',12),(5778,28,34,3973,154,_binary '',13),(5779,28,34,3974,154,_binary '',14),(5780,44,72,3975,690,_binary '',1),(5781,44,72,3976,690,_binary '',2),(5782,44,72,3977,690,_binary '',3),(5783,44,72,3978,691,_binary '',1),(5784,44,72,3979,691,_binary '',2),(5785,44,72,3980,692,_binary '',1),(5786,44,72,3981,692,_binary '',2),(5787,44,72,3982,692,_binary '',3),(5788,44,72,3983,692,_binary '',4),(5789,44,72,3984,692,_binary '',5),(5790,44,72,3985,692,_binary '',6),(5791,44,72,3986,693,_binary '',1),(5792,44,72,3987,693,_binary '',2),(5793,44,72,3988,693,_binary '',3),(5794,44,72,3989,694,_binary '',1),(5795,44,72,3990,694,_binary '',2),(5796,44,72,3991,694,_binary '',3),(5797,44,72,3992,694,_binary '',4),(5798,44,72,3993,694,_binary '',5),(5799,44,72,3994,694,_binary '',6),(5800,44,72,3995,695,_binary '',1),(5801,44,72,3996,695,_binary '',2),(5802,44,72,3997,696,_binary '',1),(5803,44,72,3998,696,_binary '',2),(5804,44,72,3999,696,_binary '',3),(5805,44,72,4000,696,_binary '',4),(5806,44,72,4001,696,_binary '',5),(5807,44,72,4002,696,_binary '',6),(5808,44,72,4003,697,_binary '',1),(5809,44,72,4004,697,_binary '',2),(5810,44,72,4005,697,_binary '',3),(5811,44,72,4006,697,_binary '',4),(5812,44,72,4007,697,_binary '',5),(5813,44,72,4008,697,_binary '',6),(5814,44,72,4009,698,_binary '',1),(5815,44,72,4010,698,_binary '',2),(5816,44,72,4011,698,_binary '',3),(5817,44,72,4012,698,_binary '',4),(5818,44,72,4013,699,_binary '',1),(5819,44,72,4014,699,_binary '',2),(5820,44,72,4015,699,_binary '',3),(5821,44,72,4016,699,_binary '',4),(5822,44,72,4017,699,_binary '',5),(5823,44,72,4018,699,_binary '',6),(5824,44,72,4019,699,_binary '',7),(5825,44,72,4020,699,_binary '',8),(5826,44,72,4021,699,_binary '',9),(5827,44,72,4022,699,_binary '',10),(5828,44,72,4023,699,_binary '',11),(5829,44,72,4024,699,_binary '',12),(5830,44,72,4025,699,_binary '',13),(5831,44,72,4026,699,_binary '',14),(5832,44,72,4027,699,_binary '',15),(5833,44,72,4028,699,_binary '',16),(5834,44,72,4029,699,_binary '',17),(5835,14,20,4030,214,_binary '',16),(5836,14,20,4031,214,_binary '',17),(5837,14,20,4032,214,_binary '',18),(5838,14,20,4033,214,_binary '',19),(5839,14,20,4034,214,_binary '',20),(5840,14,20,4035,214,_binary '',21),(5841,14,20,4036,214,_binary '',22),(5842,14,20,4037,214,_binary '',23),(5843,14,20,4038,215,_binary '',6),(5844,45,73,4039,657,_binary '',2),(5845,45,73,4040,657,_binary '',3),(5846,45,73,4041,657,_binary '',4),(5847,45,73,4042,657,_binary '',5),(5848,45,73,4043,657,_binary '',6),(5849,45,73,4044,657,_binary '',7),(5850,45,73,4045,657,_binary '',8),(5851,45,73,4046,657,_binary '',9),(5852,45,73,4047,657,_binary '',10),(5853,45,73,4048,657,_binary '',11),(5854,45,73,4049,657,_binary '',12),(5855,45,73,4050,657,_binary '\0',13),(5856,45,73,4051,657,_binary '\0',14),(5857,45,73,4052,657,_binary '',15),(5858,45,73,4053,702,_binary '',1),(5859,45,73,4054,702,_binary '',2),(5860,45,73,4055,702,_binary '',3),(5861,45,73,4056,702,_binary '',4),(5862,45,73,4057,702,_binary '',5),(5863,45,73,4058,702,_binary '',6),(5864,45,73,4059,703,_binary '',1),(5866,45,73,4060,703,_binary '',2),(5867,45,73,4061,703,_binary '',3),(5868,45,73,4062,703,_binary '',4),(5869,45,73,4063,703,_binary '',5),(5870,45,73,4064,703,_binary '\0',6),(5871,45,73,4065,704,_binary '',1),(5872,45,73,4066,704,_binary '',2),(5873,45,73,4067,704,_binary '',3),(5874,45,73,4068,704,_binary '',4),(5875,14,20,4069,213,_binary '',8),(5876,14,20,4070,213,_binary '',9),(5877,14,20,4071,213,_binary '\0',10),(5878,14,20,4072,214,_binary '',24),(5879,38,49,4073,267,_binary '',14),(5880,38,50,4073,267,_binary '',14),(5882,58,86,4074,706,_binary '',1),(5883,58,86,4075,706,_binary '',2),(5884,58,86,4076,706,_binary '',3),(5885,58,86,4077,706,_binary '',4),(5886,58,86,4078,706,_binary '',5),(5887,58,86,4079,707,_binary '',1),(5888,58,86,4080,707,_binary '',2),(5889,58,86,4081,707,_binary '',3),(5890,58,86,4082,708,_binary '',1),(5891,58,86,4083,708,_binary '',2),(5892,58,86,4084,709,_binary '',3),(5893,58,86,4085,709,_binary '',4),(5894,58,86,4086,709,_binary '',5),(5895,58,86,4087,710,_binary '',1),(5896,58,86,4088,710,_binary '',2),(5897,58,86,4089,710,_binary '',3),(5898,58,86,4090,710,_binary '',4),(5899,58,86,4091,711,_binary '',1),(5900,58,86,4092,711,_binary '',2),(5901,58,86,4093,711,_binary '',3),(5902,58,86,4094,711,_binary '',4),(5903,58,86,4095,711,_binary '',5),(5904,58,86,4096,712,_binary '',1),(5905,58,86,4097,712,_binary '',2),(5906,58,86,4098,712,_binary '',3),(5907,58,86,4099,712,_binary '',4),(5908,58,86,4100,712,_binary '',5),(5909,58,86,4101,713,_binary '',1),(5910,58,86,4102,713,_binary '',2),(5911,58,86,4103,713,_binary '',3),(5912,58,86,4104,713,_binary '',4),(5913,58,86,4105,713,_binary '',5),(5914,58,86,4106,714,_binary '',1),(5915,58,86,4107,714,_binary '',2),(5916,58,86,4108,714,_binary '',3),(5917,58,86,4109,714,_binary '',4),(5918,58,86,4110,715,_binary '',1),(5919,58,86,4111,715,_binary '',2),(5920,58,86,4112,715,_binary '',3),(5921,58,86,4113,715,_binary '',4),(5922,58,86,4114,715,_binary '',5),(5923,58,86,4115,715,_binary '',6),(5924,58,86,4116,715,_binary '',7),(5925,58,86,4117,715,_binary '',8),(5926,58,86,4118,716,_binary '',1),(5927,58,86,4119,716,_binary '',2),(5928,58,86,4120,716,_binary '',3),(5929,58,86,4121,716,_binary '',4),(5930,58,86,4122,716,_binary '',5),(5931,58,86,4123,716,_binary '',6),(5932,58,86,4124,716,_binary '',7),(5933,58,86,4125,717,_binary '',1),(5934,58,86,4126,717,_binary '',2),(5935,58,86,4127,717,_binary '',3),(5936,58,86,4128,717,_binary '',4),(5937,58,86,4129,718,_binary '',1),(5938,58,86,4130,719,_binary '',1),(5939,58,86,4131,719,_binary '',2),(5940,58,86,4132,719,_binary '',3),(5941,58,86,4133,720,_binary '',1),(5942,58,86,4134,720,_binary '',2),(5943,58,86,4135,720,_binary '',3),(5944,58,86,4136,721,_binary '',1),(5945,58,86,4137,721,_binary '',2),(5946,58,86,4138,721,_binary '',3),(5947,58,86,4139,721,_binary '',4),(5948,58,86,4140,721,_binary '',5),(5949,58,86,4141,722,_binary '',1),(5950,58,86,4142,722,_binary '',2),(5951,58,86,4143,722,_binary '',3),(5952,58,86,4144,723,_binary '',1),(5953,58,86,4145,724,_binary '',1),(5954,58,86,4146,724,_binary '',2),(5955,58,86,4147,724,_binary '',3),(5956,58,86,4148,724,_binary '',4),(5957,58,86,4149,724,_binary '',5),(5958,58,86,4150,724,_binary '',6),(5959,58,86,4151,725,_binary '',1),(5960,58,86,4152,725,_binary '',2),(5961,58,86,4153,725,_binary '',3),(5962,58,86,4154,725,_binary '',4),(5963,58,86,4155,725,_binary '',5),(5964,58,86,4156,725,_binary '',6),(5965,58,86,4157,726,_binary '',1),(5966,58,86,4158,726,_binary '',2),(5967,58,86,4159,726,_binary '',3),(5968,58,86,4160,726,_binary '',4),(5969,58,86,4161,726,_binary '',5),(5970,58,86,4162,726,_binary '',6),(5971,58,86,4163,727,_binary '',1),(5972,58,86,4164,727,_binary '',2),(5973,58,86,4165,727,_binary '',3),(5974,15,17,4166,65,_binary '',5),(5975,15,17,4167,729,_binary '',1),(5976,15,17,4168,729,_binary '',2),(5977,15,17,4169,729,_binary '',3),(5978,15,17,4170,729,_binary '',4),(5979,15,17,4171,731,_binary '',1),(5980,15,17,4172,731,_binary '',2),(5981,15,17,4173,731,_binary '',3),(5982,42,69,3073,543,_binary '',1),(5983,42,69,3074,543,_binary '',2),(5984,42,69,3075,543,_binary '',3),(5985,42,69,3076,543,_binary '',4),(5986,42,69,3077,543,_binary '',5),(5987,42,69,3078,543,_binary '',6),(5988,42,69,3079,543,_binary '',7),(5989,42,69,3080,544,_binary '',1),(5990,42,69,3081,544,_binary '',2),(5991,42,69,3082,544,_binary '',3),(5992,42,69,3083,544,_binary '',4),(5993,42,69,3084,544,_binary '',5),(5994,42,69,3085,544,_binary '',6),(5995,42,69,3086,544,_binary '',7),(5996,42,69,3087,545,_binary '',1),(5997,42,69,3088,545,_binary '',2),(5998,42,69,3089,545,_binary '',3),(5999,42,69,3090,545,_binary '',4),(6000,42,69,3091,545,_binary '',5),(6001,42,69,3092,546,_binary '',1),(6002,42,69,3093,546,_binary '',2),(6003,42,69,3094,546,_binary '',3),(6004,42,69,3095,546,_binary '',4),(6005,42,69,3096,546,_binary '',5),(6006,42,69,3097,546,_binary '',6),(6007,42,69,3098,546,_binary '',7),(6008,42,69,3099,546,_binary '',8),(6009,42,69,3100,546,_binary '',9),(6010,42,69,3101,546,_binary '',10),(6011,42,69,3102,547,_binary '',1),(6012,42,69,3103,547,_binary '',2),(6013,42,69,3104,547,_binary '',3),(6014,42,69,3105,547,_binary '',4),(6015,42,69,3106,548,_binary '',1),(6016,42,69,3107,549,_binary '',1),(6017,42,69,3108,549,_binary '',2),(6018,42,69,3109,549,_binary '',3),(6019,42,69,3110,549,_binary '',4),(6020,42,69,3111,549,_binary '',5),(6021,42,69,3112,549,_binary '',6),(6022,42,69,3113,549,_binary '',7),(6023,42,69,3114,549,_binary '',8),(6024,42,69,3115,550,_binary '',1),(6025,42,69,3116,550,_binary '',2),(6026,42,69,3117,550,_binary '',3),(6027,42,69,3118,550,_binary '',4),(6028,42,69,3119,550,_binary '',5),(6029,42,69,3120,550,_binary '',6),(6030,42,69,3121,550,_binary '',7),(6031,42,69,3122,551,_binary '',1),(6032,42,69,3123,552,_binary '',1),(6033,42,69,3124,552,_binary '',2),(6034,42,69,3125,552,_binary '',3),(6035,42,69,3126,552,_binary '',4),(6036,42,69,3127,552,_binary '',5),(6037,42,69,3128,553,_binary '',1),(6038,42,69,3129,553,_binary '',2),(6039,42,69,3130,553,_binary '',3),(6040,42,69,3131,554,_binary '',1),(6041,42,69,3132,555,_binary '',1),(6042,42,69,3133,555,_binary '',2),(6043,42,69,3134,556,_binary '',1),(6044,42,69,3135,556,_binary '',2),(6045,42,69,3136,556,_binary '',3),(6046,42,69,3137,556,_binary '',4),(6047,42,69,3138,556,_binary '',5),(6048,42,69,3139,556,_binary '',6),(6049,42,69,3140,556,_binary '',7),(6050,42,69,3141,557,_binary '',1),(6051,42,69,3142,557,_binary '',2),(6052,42,69,3143,557,_binary '',3),(6053,42,69,3144,557,_binary '',4),(6054,42,69,3145,557,_binary '',5),(6055,42,69,3146,557,_binary '',6),(6056,42,69,3147,557,_binary '',7),(6057,42,69,3148,557,_binary '',8),(6058,42,69,3149,557,_binary '',9),(6059,42,69,3150,557,_binary '',10),(6060,42,69,3151,557,_binary '',11),(6061,42,69,3152,558,_binary '',1),(6062,42,69,3153,558,_binary '',2),(6063,42,69,3154,558,_binary '',3),(6064,42,69,3155,558,_binary '',4),(6065,42,69,3156,558,_binary '',5),(6066,42,69,3157,558,_binary '',6),(6067,42,69,3158,558,_binary '',7),(6068,42,69,3159,559,_binary '',1),(6069,42,69,3160,559,_binary '',2),(6070,42,69,3161,559,_binary '',3),(6071,42,69,3162,559,_binary '',4),(6072,42,69,3163,559,_binary '',5),(6073,42,69,3164,559,_binary '',6),(6074,42,69,3165,559,_binary '',7),(6075,42,69,3166,559,_binary '',8),(6076,42,69,3167,559,_binary '',9),(6077,42,69,3168,559,_binary '',10),(6078,42,69,3169,559,_binary '',11),(6079,42,69,3170,559,_binary '',12),(6080,42,69,3171,559,_binary '',13),(6081,42,69,3172,559,_binary '',14),(6082,42,69,3173,559,_binary '',15),(6083,42,69,3174,559,_binary '',16),(6084,42,69,3175,559,_binary '',17),(6085,42,69,3176,559,_binary '',18),(6086,42,69,3177,559,_binary '',19),(6087,42,69,3178,559,_binary '',20),(6088,42,69,3179,559,_binary '',21),(6089,42,69,3180,559,_binary '',22),(6090,42,69,3181,559,_binary '',23),(6091,42,69,3182,559,_binary '',24),(6092,42,69,3183,559,_binary '',25),(6093,42,69,3184,559,_binary '',26),(6094,42,69,3185,559,_binary '',27),(6095,42,69,3186,559,_binary '',28),(6096,42,69,3187,559,_binary '',29),(6097,42,69,3188,559,_binary '',30),(6098,42,69,3189,559,_binary '',31),(6099,42,69,3190,559,_binary '',32),(6100,42,69,3191,559,_binary '',33),(6101,42,69,3192,559,_binary '',34),(6102,42,69,3193,559,_binary '',35),(6103,42,69,3210,565,_binary '',1),(6104,42,69,3211,565,_binary '',2),(6105,42,69,3212,565,_binary '',3),(6106,42,69,3213,565,_binary '',4),(6107,42,69,3214,565,_binary '',5),(6108,42,69,3215,565,_binary '',6),(6109,42,69,3216,565,_binary '',7),(6110,42,69,3217,565,_binary '',8),(6111,42,69,3218,565,_binary '',9),(6112,42,69,3219,565,_binary '',10),(6113,42,69,3220,566,_binary '',1),(6114,42,69,3221,566,_binary '',2),(6115,42,69,3222,566,_binary '',3),(6116,42,69,3223,566,_binary '',4),(6117,42,69,3224,566,_binary '',5),(6118,42,69,3225,566,_binary '',6),(6119,42,69,3226,566,_binary '',7),(6120,42,69,3227,566,_binary '',8),(6121,42,69,3228,567,_binary '',1),(6122,42,69,3229,567,_binary '',2),(6123,42,69,3230,567,_binary '',3),(6124,42,69,3231,567,_binary '',4),(6125,42,69,3232,568,_binary '',1),(6126,42,69,3233,568,_binary '',2),(6127,42,69,3234,568,_binary '',3),(6128,42,69,3235,568,_binary '',4),(6129,42,69,3236,568,_binary '',5),(6130,42,69,3237,568,_binary '',6),(6131,42,69,3238,568,_binary '',7),(6132,42,69,3239,568,_binary '',8),(6133,42,69,3240,568,_binary '',9),(6134,42,69,3241,568,_binary '',10),(6135,42,69,3242,568,_binary '',11),(6136,42,69,3243,568,_binary '',12),(6137,42,69,3244,568,_binary '',13),(6138,42,69,3245,568,_binary '',14),(6139,42,69,3246,568,_binary '',15),(6140,42,69,3247,568,_binary '',16),(6141,42,69,3248,568,_binary '',17),(6142,42,69,3249,568,_binary '',18),(6143,42,69,3250,568,_binary '',19),(6144,42,69,3251,568,_binary '',20),(6145,42,69,3252,568,_binary '',21),(6146,42,69,3253,568,_binary '',22),(6147,42,69,3254,568,_binary '',23),(6237,8,12,25,7,_binary '',1),(6238,8,12,26,7,_binary '',2),(6239,8,12,27,7,_binary '',3),(6240,8,12,28,7,_binary '',4),(6241,8,12,29,7,_binary '',5),(6242,8,12,30,7,_binary '',6),(6243,8,12,31,7,_binary '',7),(6244,8,12,32,8,_binary '',1),(6245,8,12,33,8,_binary '',2),(6246,8,12,34,8,_binary '',3),(6247,8,12,35,8,_binary '',4),(6248,8,12,36,8,_binary '',5),(6249,8,12,37,8,_binary '',6),(6250,8,12,38,8,_binary '',7),(6251,8,12,39,9,_binary '',1),(6252,8,12,40,9,_binary '',2),(6253,8,12,41,9,_binary '',3),(6254,8,12,42,9,_binary '',4),(6255,8,12,43,9,_binary '',5),(6256,8,12,44,10,_binary '',1),(6257,8,12,45,10,_binary '',2),(6258,8,12,46,10,_binary '',3),(6259,8,12,47,10,_binary '',4),(6260,8,12,48,10,_binary '',5),(6261,8,12,49,10,_binary '',6),(6262,8,12,50,10,_binary '',7),(6263,8,12,51,10,_binary '',8),(6264,8,12,52,10,_binary '',9),(6265,8,12,53,10,_binary '',10),(6266,8,12,54,11,_binary '',1),(6267,8,12,55,11,_binary '',2),(6268,8,12,56,11,_binary '',3),(6269,8,12,57,11,_binary '',4),(6270,8,12,58,12,_binary '',1),(6271,8,12,59,13,_binary '',1),(6272,8,12,60,13,_binary '',2),(6273,8,12,61,13,_binary '',3),(6274,8,12,62,13,_binary '',4),(6275,8,12,63,13,_binary '',5),(6276,8,12,64,13,_binary '',6),(6277,8,12,65,13,_binary '',7),(6278,8,12,66,13,_binary '',8),(6279,8,12,67,14,_binary '',1),(6280,8,12,68,14,_binary '',2),(6281,8,12,69,14,_binary '',3),(6282,8,12,70,14,_binary '',4),(6283,8,12,71,14,_binary '',5),(6284,8,12,72,14,_binary '',6),(6285,8,12,73,14,_binary '',7),(6286,8,12,74,15,_binary '',1),(6287,8,12,75,16,_binary '',1),(6288,8,12,76,16,_binary '',2),(6289,8,12,77,16,_binary '',3),(6290,8,12,78,16,_binary '',4),(6291,8,12,79,16,_binary '',5),(6292,8,12,80,17,_binary '',1),(6293,8,12,81,17,_binary '',2),(6294,8,12,82,17,_binary '',3),(6295,8,12,83,18,_binary '',1),(6296,8,12,84,19,_binary '',1),(6297,8,12,85,19,_binary '',2),(6298,8,12,86,20,_binary '',1),(6299,8,12,87,20,_binary '',2),(6300,8,12,88,20,_binary '',3),(6301,8,12,89,20,_binary '',4),(6302,8,12,90,20,_binary '',5),(6303,8,12,91,20,_binary '',6),(6304,8,12,92,20,_binary '',7),(6305,8,12,93,22,_binary '',1),(6306,8,12,94,22,_binary '',2),(6307,8,12,95,22,_binary '',3),(6308,8,12,96,22,_binary '',4),(6309,8,12,97,22,_binary '',5),(6310,8,12,98,22,_binary '',6),(6311,8,12,99,22,_binary '',7),(6312,8,12,100,22,_binary '',8),(6313,8,12,101,22,_binary '',9),(6314,8,12,102,22,_binary '',10),(6315,8,12,103,22,_binary '',11),(6316,8,12,104,23,_binary '',1),(6317,8,12,105,23,_binary '',2),(6318,8,12,106,23,_binary '',3),(6319,8,12,107,23,_binary '',4),(6320,8,12,108,23,_binary '',5),(6321,8,12,109,23,_binary '',6),(6322,8,12,110,23,_binary '',7),(6323,8,12,111,24,_binary '',1),(6324,8,12,112,24,_binary '',2),(6325,8,12,113,24,_binary '',3),(6326,8,12,114,24,_binary '',4),(6327,8,12,115,24,_binary '',5),(6328,8,12,116,24,_binary '',6),(6329,8,12,117,24,_binary '',7),(6330,8,12,118,24,_binary '',8),(6331,8,12,119,24,_binary '',9),(6332,8,12,120,24,_binary '',10),(6333,8,12,121,24,_binary '',11),(6334,8,12,122,24,_binary '',12),(6335,8,12,123,24,_binary '',13),(6336,8,12,124,24,_binary '',14),(6337,8,12,125,24,_binary '',15),(6338,8,12,126,24,_binary '',16),(6339,8,12,127,24,_binary '',17),(6340,8,12,128,24,_binary '',18),(6341,8,12,129,24,_binary '',19),(6342,8,12,130,24,_binary '',20),(6343,8,12,131,24,_binary '',21),(6344,8,12,132,24,_binary '',22),(6345,8,12,133,24,_binary '',23),(6346,8,12,134,24,_binary '',24),(6347,8,12,135,24,_binary '',25),(6348,8,12,136,24,_binary '',26),(6349,8,12,137,24,_binary '',27),(6350,8,12,138,24,_binary '',28),(6351,8,12,139,24,_binary '',29),(6352,8,12,140,24,_binary '',30),(6353,8,12,141,24,_binary '',31),(6354,8,12,142,24,_binary '',32),(6355,8,12,143,24,_binary '',33),(6356,8,12,144,24,_binary '',34),(6357,8,12,145,24,_binary '',35),(6358,8,12,162,36,_binary '',1),(6359,8,12,163,36,_binary '',2),(6360,8,12,164,36,_binary '',3),(6361,8,12,165,36,_binary '',4),(6362,8,12,166,36,_binary '',5),(6363,8,12,167,36,_binary '',6),(6364,8,12,168,36,_binary '',7),(6365,8,12,169,36,_binary '',8),(6366,8,12,170,36,_binary '',9),(6367,8,12,171,36,_binary '',10),(6368,8,12,172,37,_binary '',1),(6369,8,12,173,37,_binary '',2),(6370,8,12,174,37,_binary '',3),(6371,8,12,175,37,_binary '',4),(6372,8,12,176,37,_binary '',5),(6373,8,12,177,37,_binary '',6),(6374,8,12,178,37,_binary '',7),(6375,8,12,179,37,_binary '',8),(6376,8,12,185,39,_binary '',1),(6377,8,12,186,39,_binary '',2),(6378,8,12,187,39,_binary '',3),(6379,8,12,188,39,_binary '',4),(6380,8,12,189,40,_binary '',1),(6381,8,12,190,40,_binary '',2),(6382,8,12,191,40,_binary '',3),(6383,8,12,192,40,_binary '',4),(6384,8,12,193,40,_binary '',5),(6385,8,12,194,40,_binary '',6),(6386,8,12,195,40,_binary '',7),(6387,8,12,196,40,_binary '',8),(6388,8,12,197,40,_binary '',9),(6389,8,12,198,40,_binary '',10),(6390,8,12,199,40,_binary '',11),(6391,8,12,200,40,_binary '',12),(6392,8,12,201,40,_binary '',13),(6393,8,12,202,40,_binary '',14),(6394,8,12,203,40,_binary '',15),(6395,8,12,204,40,_binary '',16),(6396,8,12,205,40,_binary '',17),(6397,8,12,206,40,_binary '',18),(6398,8,12,207,40,_binary '',19),(6399,8,12,208,40,_binary '',20),(6400,8,12,209,40,_binary '',21),(6401,8,12,210,40,_binary '',22),(6402,8,12,211,40,_binary '',23),(6492,15,17,4174,730,_binary '',1),(6493,15,17,4175,730,_binary '',2),(6494,15,17,4176,730,_binary '',3),(6495,15,17,4177,730,_binary '',4),(6496,15,17,4178,730,_binary '',5),(6497,40,62,2307,450,_binary '',1),(6498,40,62,2308,450,_binary '',2),(6499,40,62,2309,450,_binary '',3),(6500,40,62,2310,450,_binary '',4),(6501,40,62,2311,450,_binary '',5),(6502,40,62,2312,450,_binary '',6),(6503,40,62,2313,450,_binary '',7),(6504,40,62,2314,451,_binary '',1),(6505,40,62,2315,451,_binary '',2),(6506,40,62,2316,451,_binary '',3),(6507,40,62,2317,451,_binary '',4),(6508,40,62,2318,451,_binary '',5),(6509,40,62,2319,451,_binary '',6),(6510,40,62,2320,451,_binary '',7),(6511,40,62,2321,452,_binary '',1),(6512,40,62,2322,452,_binary '',2),(6513,40,62,2323,452,_binary '',3),(6514,40,62,2324,452,_binary '',4),(6515,40,62,2325,452,_binary '',5),(6516,40,62,2326,453,_binary '',1),(6517,40,62,2327,453,_binary '',2),(6518,40,62,2328,453,_binary '',3),(6519,40,62,2329,453,_binary '',4),(6520,40,62,2330,453,_binary '',5),(6521,40,62,2331,453,_binary '',6),(6522,40,62,2332,453,_binary '',7),(6523,40,62,2333,453,_binary '',8),(6524,40,62,2334,453,_binary '',9),(6525,40,62,2335,453,_binary '',10),(6526,40,62,2336,454,_binary '',1),(6527,40,62,2337,454,_binary '',2),(6528,40,62,2338,454,_binary '',3),(6529,40,62,2339,454,_binary '',4),(6530,40,62,2340,455,_binary '',1),(6531,40,62,2341,456,_binary '',1),(6532,40,62,2342,456,_binary '',2),(6533,40,62,2343,456,_binary '',3),(6534,40,62,2344,456,_binary '',4),(6535,40,62,2345,456,_binary '',5),(6536,40,62,2346,456,_binary '',6),(6537,40,62,2347,456,_binary '',7),(6538,40,62,2348,456,_binary '',8),(6539,40,62,2349,457,_binary '',1),(6540,40,62,2350,457,_binary '',2),(6541,40,62,2351,457,_binary '',3),(6542,40,62,2352,457,_binary '',4),(6543,40,62,2353,457,_binary '',5),(6544,40,62,2354,457,_binary '',6),(6545,40,62,2355,457,_binary '',7),(6546,40,62,2356,458,_binary '',1),(6547,40,62,2357,459,_binary '',1),(6548,40,62,2358,459,_binary '',2),(6549,40,62,2359,459,_binary '',3),(6550,40,62,2360,459,_binary '',4),(6551,40,62,2361,459,_binary '',5),(6552,40,62,2362,460,_binary '',1),(6553,40,62,2363,460,_binary '',2),(6554,40,62,2364,460,_binary '',3),(6555,40,62,2365,461,_binary '',1),(6556,40,62,2366,462,_binary '',1),(6557,40,62,2367,462,_binary '',2),(6558,40,62,2368,463,_binary '',1),(6559,40,62,2369,463,_binary '',2),(6560,40,62,2370,463,_binary '',3),(6561,40,62,2371,463,_binary '',4),(6562,40,62,2372,463,_binary '',5),(6563,40,62,2373,463,_binary '',6),(6564,40,62,2374,463,_binary '',7),(6565,40,62,2375,464,_binary '',1),(6566,40,62,2376,464,_binary '',2),(6567,40,62,2377,464,_binary '',3),(6568,40,62,2378,464,_binary '',4),(6569,40,62,2379,464,_binary '',5),(6570,40,62,2380,464,_binary '',6),(6571,40,62,2381,464,_binary '',7),(6572,40,62,2382,464,_binary '',8),(6573,40,62,2383,464,_binary '',9),(6574,40,62,2384,464,_binary '',10),(6575,40,62,2385,464,_binary '',11),(6576,40,62,2386,465,_binary '',1),(6577,40,62,2387,465,_binary '',2),(6578,40,62,2388,465,_binary '',3),(6579,40,62,2389,465,_binary '',4),(6580,40,62,2390,465,_binary '',5),(6581,40,62,2391,465,_binary '',6),(6582,40,62,2392,465,_binary '',7),(6583,40,62,2393,466,_binary '',1),(6584,40,62,2394,466,_binary '',2),(6585,40,62,2395,466,_binary '',3),(6586,40,62,2396,466,_binary '',4),(6587,40,62,2397,466,_binary '',5),(6588,40,62,2398,466,_binary '',6),(6589,40,62,2399,466,_binary '',7),(6590,40,62,2400,466,_binary '',8),(6591,40,62,2401,466,_binary '',9),(6592,40,62,2402,466,_binary '',10),(6593,40,62,2403,466,_binary '',11),(6594,40,62,2404,466,_binary '',12),(6595,40,62,2405,466,_binary '',13),(6596,40,62,2406,466,_binary '',14),(6597,40,62,2407,466,_binary '',15),(6598,40,62,2408,466,_binary '',16),(6599,40,62,2409,466,_binary '',17),(6600,40,62,2410,466,_binary '',18),(6601,40,62,2411,466,_binary '',19),(6602,40,62,2412,466,_binary '',20),(6603,40,62,2413,466,_binary '',21),(6604,40,62,2414,466,_binary '',22),(6605,40,62,2415,466,_binary '',23),(6606,40,62,2416,466,_binary '',24),(6607,40,62,2417,466,_binary '',25),(6608,40,62,2418,466,_binary '',26),(6609,40,62,2419,466,_binary '',27),(6610,40,62,2420,466,_binary '',28),(6611,40,62,2421,466,_binary '',29),(6612,40,62,2422,466,_binary '',30),(6613,40,62,2423,466,_binary '',31),(6614,40,62,2424,466,_binary '',32),(6615,40,62,2425,466,_binary '',33),(6616,40,62,2426,466,_binary '',34),(6617,40,62,2427,466,_binary '',35),(6618,40,62,2444,472,_binary '',1),(6619,40,62,2445,472,_binary '',2),(6620,40,62,2446,472,_binary '',3),(6621,40,62,2447,472,_binary '',4),(6622,40,62,2448,472,_binary '',5),(6623,40,62,2449,472,_binary '',6),(6624,40,62,2450,472,_binary '',7),(6625,40,62,2451,472,_binary '',8),(6626,40,62,2452,472,_binary '',9),(6627,40,62,2453,472,_binary '',10),(6628,40,62,2454,473,_binary '',1),(6629,40,62,2455,473,_binary '',2),(6630,40,62,2456,473,_binary '',3),(6631,40,62,2457,473,_binary '',4),(6632,40,62,2458,473,_binary '',5),(6633,40,62,2459,473,_binary '',6),(6634,40,62,2460,473,_binary '',7),(6635,40,62,2461,473,_binary '',8),(6636,40,62,2462,474,_binary '',1),(6637,40,62,2463,474,_binary '',2),(6638,40,62,2464,474,_binary '',3),(6639,40,62,2465,474,_binary '',4),(6640,40,62,2466,475,_binary '',1),(6641,40,62,2467,475,_binary '',2),(6642,40,62,2468,475,_binary '',3),(6643,40,62,2469,475,_binary '',4),(6644,40,62,2470,475,_binary '',5),(6645,40,62,2471,475,_binary '',6),(6646,40,62,2472,475,_binary '',7),(6647,40,62,2473,475,_binary '',8),(6648,40,62,2474,475,_binary '',9),(6649,40,62,2475,475,_binary '',10),(6650,40,62,2476,475,_binary '',11),(6651,40,62,2477,475,_binary '',12),(6652,40,62,2478,475,_binary '',13),(6653,40,62,2479,475,_binary '',14),(6654,40,62,2480,475,_binary '',15),(6655,40,62,2481,475,_binary '',16),(6656,40,62,2482,475,_binary '',17),(6657,40,62,2483,475,_binary '',18),(6658,40,62,2484,475,_binary '',19),(6659,40,62,2485,475,_binary '',20),(6660,40,62,2486,475,_binary '',21),(6661,40,62,2487,475,_binary '',22),(6662,40,62,2488,475,_binary '',23),(6752,15,17,4179,730,_binary '',6),(6753,15,17,4180,730,_binary '',7),(6754,15,17,4181,730,_binary '',8),(6755,15,17,4182,730,_binary '',9),(6756,15,17,4183,730,_binary '',10),(6757,15,17,4184,730,_binary '',11),(6758,15,17,4185,730,_binary '',12),(6759,15,17,4186,64,_binary '',12),(6760,15,17,4187,64,_binary '',13),(6761,31,40,4188,733,_binary '',1),(6762,31,40,4189,733,_binary '',2),(6763,31,40,4190,734,_binary '',1),(6764,31,40,4191,734,_binary '',2),(6765,31,40,4192,735,_binary '',1),(6766,31,40,4193,735,_binary '',2),(6767,31,40,4194,737,_binary '',1),(6768,31,40,4195,737,_binary '',2),(6769,31,40,4196,737,_binary '',3),(6770,31,40,4197,737,_binary '',4),(6771,31,40,4198,737,_binary '',5),(6772,31,40,4199,738,_binary '',1),(6773,31,40,4200,738,_binary '',2),(6774,31,40,4201,738,_binary '',3),(6775,31,40,4202,739,_binary '',1),(6776,31,40,4203,739,_binary '',2),(6777,31,40,4204,739,_binary '',3),(6778,31,40,4205,739,_binary '',4),(6779,31,40,4206,739,_binary '',5),(6780,31,40,4207,739,_binary '',6),(6781,31,40,4208,739,_binary '',7),(6782,31,40,4209,739,_binary '',8),(6783,31,40,4210,739,_binary '',9),(6784,31,40,4211,740,_binary '',1),(6785,31,40,4212,740,_binary '',3),(6786,31,40,4213,740,_binary '',2),(6787,31,40,4214,741,_binary '',1),(6788,31,40,4215,741,_binary '',2),(6789,31,40,4216,741,_binary '',3),(6790,31,40,4217,741,_binary '',4),(6791,31,40,4218,741,_binary '',5),(6792,31,40,4219,742,_binary '',1),(6793,31,40,4220,742,_binary '',2),(6794,31,40,4221,742,_binary '',3),(6795,31,40,4222,743,_binary '',1),(6796,31,40,4223,743,_binary '',2),(6797,31,40,4224,743,_binary '',3),(6798,31,40,4225,743,_binary '',4),(6799,31,40,4226,743,_binary '',5),(6800,31,40,4227,743,_binary '',6),(6801,31,40,4228,744,_binary '',1),(6802,31,40,4229,744,_binary '',2),(6803,31,40,4230,744,_binary '',3),(6804,31,40,4231,744,_binary '',4),(6805,31,40,4232,746,_binary '',1),(6806,31,40,4233,746,_binary '',2),(6807,31,40,4234,746,_binary '',3),(6808,31,40,4235,746,_binary '',4),(6809,31,40,4236,746,_binary '',5),(6810,31,40,4237,746,_binary '',6),(6811,31,40,4238,746,_binary '',7),(6812,31,40,4239,746,_binary '',8),(6813,31,40,4240,746,_binary '',9),(6814,31,40,4241,746,_binary '',10),(6815,31,40,4242,746,_binary '',11),(6816,31,40,4243,746,_binary '',12),(6817,31,40,4244,746,_binary '',13),(6818,31,40,4245,747,_binary '',1),(6819,31,40,4246,747,_binary '',2),(6820,31,40,4247,748,_binary '',1),(6821,31,40,4248,748,_binary '',2),(6822,31,40,4249,748,_binary '',3),(6823,31,40,4250,748,_binary '',4),(6824,31,40,4251,748,_binary '',5),(6825,31,40,4252,748,_binary '',6),(6826,31,40,4253,748,_binary '',7),(6827,31,40,4254,749,_binary '',1),(6828,31,40,4255,749,_binary '',2),(6829,31,40,4256,749,_binary '',3),(6830,31,40,4257,749,_binary '',4),(6831,31,40,4258,749,_binary '',5),(6832,31,40,4259,749,_binary '',6),(6833,31,40,4260,749,_binary '',7),(6834,15,17,4261,60,_binary '',14),(6835,15,17,4262,60,_binary '',15),(6836,15,17,4263,60,_binary '',16),(6837,15,17,4264,60,_binary '',17),(6838,15,17,4265,60,_binary '',13),(6839,15,17,4266,60,_binary '',12),(6840,15,17,4267,63,_binary '',3),(6841,15,17,4268,63,_binary '',4),(6842,15,17,4269,63,_binary '',5),(6843,15,17,4270,63,_binary '',6),(6844,15,17,4271,63,_binary '',7),(6845,15,17,4272,63,_binary '',8);
/*!40000 ALTER TABLE `pxm_proxmen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pxo_proxord`
--

DROP TABLE IF EXISTS `pxo_proxord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pxo_proxord` (
  `pxo_id` int NOT NULL AUTO_INCREMENT,
  `pro_id` int NOT NULL,
  `ord_id` int NOT NULL,
  `pxo_price` float NOT NULL DEFAULT '0',
  `pxo_quantity` int NOT NULL DEFAULT '1',
  `pxo_total` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`pxo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pxo_proxord`
--

LOCK TABLES `pxo_proxord` WRITE;
/*!40000 ALTER TABLE `pxo_proxord` DISABLE KEYS */;
INSERT INTO `pxo_proxord` VALUES (58,5,30,115,1,115),(59,3,31,50,1,50),(60,2,32,150,1,150),(61,3,33,50,1,50),(62,6,33,95,1,95),(63,9,33,180,1,180),(64,3,34,50,1,50),(65,4,34,110,1,110);
/*!40000 ALTER TABLE `pxo_proxord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sta_state`
--

DROP TABLE IF EXISTS `sta_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sta_state` (
  `sta_id` int NOT NULL,
  `cou_id` int NOT NULL,
  `sta_code` char(2) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sta_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sta_enable` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`sta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sta_state`
--

LOCK TABLES `sta_state` WRITE;
/*!40000 ALTER TABLE `sta_state` DISABLE KEYS */;
INSERT INTO `sta_state` VALUES (1,1,'AN','Antartida e Islas del Atlantico',_binary ''),(2,1,'BA','Buenos Aires',_binary ''),(3,1,'CA','Catamarca',_binary ''),(4,1,'CH','Chaco',_binary ''),(5,1,'CU','Chubut',_binary ''),(6,1,'CO','Cordoba',_binary ''),(7,1,'CR','Corrientes',_binary ''),(8,1,'DF','Distrito Federal',_binary ''),(9,1,'ER','Entre Rios',_binary ''),(10,1,'FO','Formosa',_binary ''),(11,1,'JU','Jujuy',_binary ''),(12,1,'LP','La Pampa',_binary ''),(13,1,'LR','La Rioja',_binary ''),(14,1,'ME','Mendoza',_binary ''),(15,1,'MI','Misiones',_binary ''),(16,1,'NE','Neuquen',_binary ''),(17,1,'RN','Rio Negro',_binary ''),(18,1,'SA','Salta',_binary ''),(19,1,'SJ','San Juan',_binary ''),(20,1,'SL','San Luis',_binary ''),(21,1,'SC','Santa Cruz',_binary ''),(22,1,'SF','Santa Fe',_binary ''),(23,1,'SD','Santiago del Estero',_binary ''),(24,1,'TF','Tierra del Fuego',_binary ''),(25,1,'TU','Tucuman',_binary '');
/*!40000 ALTER TABLE `sta_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usr_user`
--

DROP TABLE IF EXISTS `usr_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usr_user` (
  `usr_id` int NOT NULL AUTO_INCREMENT,
  `usr_type` enum('restaurant','visitor') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'restaurant',
  `usr_status` enum('pending','active','suspended','delete') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'active',
  `usr_role` enum('normal','admin') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'normal',
  `usr_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `usr_firstname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `usr_lastname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `usr_company` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `usr_cuit` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `usr_email` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `usr_avatar` varchar(70) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `usr_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cou_id` int NOT NULL,
  `sta_id` int DEFAULT NULL,
  `usr_city` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `usr_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `usr_zip_code` int DEFAULT NULL,
  `usr_phone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `usr_website` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `usr_hash` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `usr_updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usr_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usr_code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `usr_is_change` bit(1) DEFAULT b'0',
  `usr_time_start_delivery` int NOT NULL DEFAULT '0',
  `usr_time_end_delivery` int NOT NULL DEFAULT '1439',
  `usr_cost_shipping` float NOT NULL DEFAULT '50',
  `usr_can_delivery` bit(1) NOT NULL DEFAULT b'0',
  `usr_last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`usr_id`),
  KEY `username` (`usr_status`),
  KEY `role` (`usr_role`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usr_user`
--

LOCK TABLES `usr_user` WRITE;
/*!40000 ALTER TABLE `usr_user` DISABLE KEYS */;
INSERT INTO `usr_user` VALUES (2,'restaurant','active','admin','RicardoEspeche','Ricardo','Espeche','COCKTAIL Bar','23264836719','ricardo_espeche@hotmail.com','499lffyz27okj483h0bxmdnjw6ibs7szzlhzn4110.jpeg','d210c0b1bc760639dcbee25bbf42dc2a',1,6,'La Calera','Ruta E52 Km. 6.5',5151,'+5493515555237','www.mirestaurante.com.ar',NULL,'2020-06-08 00:54:44','2020-06-08 00:54:44','D5Y2V8NV',_binary '\0',540,1380,50,_binary '','2020-07-16 19:41:46'),(8,'restaurant','active','normal','NataliaGomez','Natalia','Gomez','El Mesón','30716569280','vilbegsrl@gmail.com.ar','rxlw54ii3ifd4b29bm0sz2k63omdtip0yeovr8dc7.png','6a4222d7a0085835895864ceb0cc0665',1,6,'Córdoba','Luis de Tejeda 4594',5009,'+5493512211627','https://www.circuitogastronomico.com/restaurante/el-meson/','','2020-06-15 18:21:01','2020-06-15 18:21:01','1HSHFX86',_binary '\0',0,1439,50,_binary '\0','2020-06-15 18:21:01'),(11,'restaurant','active','normal','PetronaMaldonado','Petrona','Maldonado','Ochre','27033908623','lauracech@hotmail.com','g5v2mgqhku175x8ahwokc930u773couzlddkaxk7q.jpeg','d05ba99999d6efa248c6a24c993a6981',1,6,'Cordoba','Luis de Tejeda 4555',5009,'3514823438','www.ochre.com.ar',NULL,'2020-06-19 20:10:29','2020-06-19 20:10:29','YFMRGMN4',_binary '\0',0,1439,50,_binary '\0','2020-06-19 20:10:29'),(12,'restaurant','active','normal','GabrielaVisentini','Gabriela','Visentini','Lomitos 348','27103760483','lomitos348jardin@hotmail.com','4bxuo1aeyyeaf5j9nzyhivy9tdvpiczsfx7pivs23.jpeg','dc9ff2eeb607c69ff436e432a2fe2a76',1,6,'Cordoba','Elias Yofre 941',5016,'4640010','',NULL,'2020-06-19 20:34:45','2020-06-19 20:34:45','WMFZADG7',_binary '\0',0,1439,50,_binary '\0','2020-06-19 20:34:45'),(13,'restaurant','active','normal','ANTHONYUGUETO','ANTHONY','UGUETO','Lo De Villalpando','27201482092','lodevillagpaz@gmail.com','nuue2xo16jtvjsy0xu3qiz3y1md5s94u6uyp6bdek.png','5766390d521d0d70aa7b80a4d9ed09e1',1,6,'CORDOBA','25 DE MAYO 1186',5000,'3515487823','lodevillalpando.com.ar','ef4fb209425371eacf54b5be30daac64','2020-06-19 21:59:26','2020-06-19 21:59:26','WCFGNI8T',_binary '\0',660,1290,50,_binary '\0','2020-06-19 21:59:26'),(14,'restaurant','active','normal','ValeriaGertie','Valeria','Gertie','Otro Bar de Cervezas','30715508911','valgertie@gmail.com','6texawyyl9zz71gxlb36jm98vye33f8mh5vqxu7rq.jpeg','4a57192ea2c18c8db96f33908c6a2baf',1,6,'cordoba','Achaval Rodriguez 276',5000,'3584225226','',NULL,'2020-06-19 23:04:59','2020-06-19 23:04:59','KA3SP2MN',_binary '',0,1439,50,_binary '\0','2020-06-19 23:04:59'),(15,'restaurant','active','normal','JuanJosePiñero','Juan Jose','Piñero','iL Panino','30-71490054-0','juanjosepineiro@me.com','rsan0hgh7mq8v4e9k8x56jj64ahssc5pk50myxnz7.jpeg','7c1f9e6922b5db6352b4bc7b9f3c1612',1,6,'Cordoba','Hipólito irigoyen 584',5000,'3515928866','','','2020-06-20 01:51:42','2020-06-20 01:51:42','JWFFAG93',_binary '\0',0,1439,50,_binary '\0','2020-06-20 01:51:42'),(16,'restaurant','active','normal','LauraChech','Laura','Chech','Faustino','23170010604','lauracech66@gmail.com','s0d58moe9oq2z43hi7aozj82fwke7ij11syx9sh94.png','a53c8dd912983cc831ce5ddb653cf17b',1,6,'Cordoba','Av del Dante s/n',5000,'351 7074810','',NULL,'2020-06-20 23:34:25','2020-06-20 23:34:25','HRIUB21S',_binary '\0',0,1439,50,_binary '\0','2020-06-20 23:34:25'),(17,'restaurant','active','normal','CarlosPizarro','Flavio','Londra','KGB','2014878414-1','sebastianlondra@hotmail.com.ar','2yxmlg14nv7uoplejnjqw75cjxjsfym6genosn9sq.jpeg','2dc7a037e9e976df88475ccdd82f448e',1,6,'Cordoba','Estrada 98',5000,'+5493514603769','',NULL,'2020-06-21 14:27:41','2020-06-20 23:43:45','2K7H1463',_binary '\0',0,1439,50,_binary '\0','2020-06-21 14:27:41'),(18,'restaurant','active','normal','JeremiasMingorance','Jeremias','Mingorance','Pepecito','20-31668949-4','administracion@pepecito.com.ar','de2x6ke1f0bmri9kdagbzp4kl5763dkob59ihtyt0.jpeg','2f374f739f44ce406af063b9aedaa175',1,6,'Cordoba','Gauss 5500',5147,'3513225500','','e371776eec64403f29d265a9a69bfb82','2020-06-23 18:05:43','2020-06-23 18:05:43','TDSUCIA9',_binary '\0',0,1439,50,_binary '\0','2020-06-23 18:05:43'),(19,'restaurant','active','normal','ClaudiaDeldotto','Rafael','Pontieri','La Mundial','30716212919','lamundial.bda@gmail.com','09paiesmlaqxm8zuhv6g9kuwsddq91ganwoa25cbd.jpeg','747fd56814ccd086199dcba2670e2833',1,6,'La Calera','Ruta E55 Km 7.5',5151,'3543466553','','41119704a23ec7d31a943b7b53287d2d','2020-06-23 19:26:42','2020-06-23 19:26:42','ZBTLTMJ',_binary '',0,1439,50,_binary '\0','2020-06-23 19:26:42'),(20,'restaurant','active','normal','FrancoCerqueti','Franco','Cerqueti','Rancho viejo','30648870236','restauranteranchoviejo@gmail.com','flcv8quccguyp0btf5sl4h0uy5rbhu134up7t6zhs.png','aea1f213a427813800aca013d32fec0f',1,6,'Capital','Av Rogelio  nores Martínez 1900',5000,'4683685','https://instagram.com/ranchoviejo_restaurante?igshid=1ryuoz60blihp',NULL,'2020-06-23 21:09:06','2020-06-23 21:09:06','UEGG68VQ',_binary '\0',0,1439,50,_binary '\0','2020-06-23 21:09:06'),(22,'restaurant','active','normal','TurismoBelascodeBaquedano','Turismo','Belasco de Baquedano','Belasco de Baquedano','30708421592','turismo@bodegabelasco.com','5y33x0b0o99bpxqkvjdfol8hdrktj0xuvonha4kp1.jpeg','91387bfcc621622d1c7a84a1b28f6b48',1,14,'Lujan de Cuyo','Cobos 8260',5509,'261 3023491','http://belascodebaquedano.com/',NULL,'2020-06-25 14:16:59','2020-06-25 14:16:59','L2G0OO1I',_binary '\0',0,1439,50,_binary '\0','2020-06-25 14:16:59'),(23,'restaurant','active','normal','AlbertoCastro','Alberto','Castro',NULL,NULL,'concesrl@gmail.com',NULL,'b0f376078adc0318ad02281f8036248a',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-06-27 23:39:40','2020-06-27 23:39:40','SO4B3NVN',_binary '\0',0,1439,50,_binary '\0','2020-06-27 23:39:40'),(24,'restaurant','active','normal','CarlosGalioti','Eduardo','Slupko','La Parrilla',NULL,'mastergrillsa@yahoo.com.ar','mswloeugdpmku1aqj62ckejj92sy7h4x1hq9qz7mu.jpeg','8976791d4061119d825546add73d1475',1,6,'Cordoba','Rodríguez de Busto 4086',5009,'3514810066','','72b1565e4d515e14990dabf56c3a6e45','2020-06-30 15:01:04','2020-06-30 15:01:04','0HE5B5H3',_binary '\0',0,1439,50,_binary '\0','2020-06-30 15:01:04'),(25,'restaurant','active','normal','RodrigoRodriguez','Rodrigo','Rodriguez','Gintoneria Cordoba',NULL,'gintoneriacordoba@gmail.com','cr288u841szm1k4uyyekcrartflq8j5wk0r4lktcq.jpeg','5880460049bfd13ef90b0f9797b85341',1,6,'Cordoba','Achaval Rodriguez 244',5000,'3515997823','',NULL,'2020-06-30 16:58:19','2020-06-30 16:58:19','KVD49DE1',_binary '',0,1320,50,_binary '','2020-06-30 16:58:19'),(26,'restaurant','active','normal','FranciscoFrancisco','Francisco','Bertolino','Lucca',NULL,'frank_bertolino@hotmail.com','y183dawf6rtkotfcivctp2g6xbiqsut0r5qadszlb.jpeg','13ade7110324e9cbdd85a60b75d10f2f',1,6,'Córdoba','Laplace 5442',5000,'351158044444','','aba16c6e0e6fe88006e6841f33830801','2020-07-01 14:52:11','2020-07-01 14:52:11','908ZQBKA',_binary '\0',0,1439,50,_binary '\0','2020-07-01 14:52:11'),(27,'restaurant','active','normal','GracielaCasadio','Graciela','Casadio','Parrilla Forgione',NULL,'gmforgione@hotmail.com','0jtj4yfkm9hw9cs8vjwfm7xodpsjmrv4mslm3mamp.jpeg','85a54c1a7ce5140309ec2003ae18e630',1,6,'Cordoba','Ruta E 55 Nro 742',5151,'03543693900','','322db5d3711920b96042be0287d41ede','2020-07-01 19:09:47','2020-07-01 19:09:47','JUVJW422',_binary '\0',0,1439,50,_binary '\0','2020-07-01 19:09:47'),(28,'restaurant','active','normal','JuanCruz','Juan','Cruz','Colores Santos',NULL,'colores.santos@hotmail.com','z0f45z218es68zhwrmnjw34ttk3xfwz26dmxu7lbq.jpeg','72651bbd5b3e25cc7c9c7a68b23ba190',1,6,'Cordoba','Buenos Aires 680 Esq. Obispo',5000,'+5493513437173','','f923ac0226f9256e24bef0e6c27a9545','2020-07-02 16:29:16','2020-07-02 16:29:16','S2820GX9',_binary '\0',0,1439,50,_binary '\0','2020-07-02 16:29:16'),(29,'restaurant','active','normal','JuanPedro','Juan','Cruz','The Journey',NULL,'juanmiguel3265@icloud.com','uxy13lc9wpqovz5xi30k0sdtj29zbwepy87m3hcfu.jpeg','df70128c595cb3683ae9173bbd0d1f30',1,6,'Cordoba','Laprida 295',5000,'03514602803','','a361e219c053c20f7c5b26c16e897843','2020-07-03 19:53:29','2020-07-03 19:53:29','K9XN01G1',_binary '\0',0,1439,50,_binary '\0','2020-07-03 19:53:29'),(30,'restaurant','active','normal','CarlosValdéz','Dolores','Urtubey','La Emilia',NULL,'parrillalaemilia@gmail.com','7vttvkmxtidq6irvjmkj1b7ep0fsx72cs0l65qpij.png','9cae931afc85e110c350dc3fce9e9c71',1,6,'Cordoba','Av. Pablo Richieri  2301',5000,'+5493513070216','','18ca6168dca8dd2fb3344da26b08d51a','2020-07-06 18:49:54','2020-07-06 18:49:54','32ZHYRYN',_binary '\0',720,1439,50,_binary '\0','2020-07-06 18:49:54'),(31,'restaurant','active','normal','FranciscoBuscaSust','Francisco','Busca Sust','CATCH',NULL,'barcatch@gmail.com','r28fjmcqp8ihmrrcbf5ad3vakd110p9q144jfyrux.jpeg','89fe444471ddf07ac5c526d0e124675d',1,6,'Córdoba','Fernando Fader',4244,'03513150793','www.barcatch.com.ar',NULL,'2020-07-07 21:54:44','2020-07-07 21:54:44','X4Y1BKOC',_binary '\0',0,1439,50,_binary '\0','2020-07-07 21:54:44'),(33,'restaurant','active','normal','FlorenciaCeballos','Florencia','Ceballos',NULL,NULL,'florceballos@hotmail.com',NULL,'e41f96b32d32c4f98b044d4224155ed4',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-07-07 22:54:01','2020-07-07 22:54:01','PPDOUGWI',_binary '\0',0,1439,50,_binary '\0','2020-07-07 22:54:01'),(34,'restaurant','active','normal','MarinaMolaioli','Marina','Molaioli',NULL,NULL,'marimola2014@gmail.com',NULL,'7284ecd267a6858e4d46a817f954d6ab',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-07-08 00:57:28','2020-07-08 00:57:28','HGDDFELJ',_binary '\0',0,1439,50,_binary '\0','2020-07-08 00:57:28'),(35,'restaurant','active','normal','DiegoCuitiño','Diego','Cuitiño',NULL,NULL,'ronalsc87@hotmail.com',NULL,'3f483b1fcb602864a64f865fd8816158',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-07-08 01:18:33','2020-07-08 01:18:33','A5PSNH6M',_binary '\0',0,1439,50,_binary '\0','2020-07-08 01:18:33'),(36,'restaurant','active','normal','MarianaNegri','Mariana','Negri',NULL,NULL,'mari.negri.76@gmail.com',NULL,'c21b6a13d68b58cd46df1f0c60d157fa',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-07-08 12:10:59','2020-07-08 12:10:59','YFGV110T',_binary '\0',0,1439,50,_binary '\0','2020-07-08 12:10:59'),(37,'restaurant','active','normal','CarolinaQuinteros','Carolina','Quinteros',NULL,NULL,'carolinaquinteros.1972@gmail.com',NULL,'79017d4718331a703d225421f9826f81',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-07-08 12:11:28','2020-07-08 12:11:28','XO6X8KGN',_binary '\0',0,1439,50,_binary '\0','2020-07-08 12:11:28'),(38,'restaurant','active','normal','yamilaNoeliaurrich','Yamila Noelia','Urrich','Stazione Vistello',NULL,'yaminoeurrich@gmail.com','6tkv7tp13znnggie7k9cbp4t9f47sm3znrowjpivy.png','025771fd4d9da343ea998dc1a2a605c9',1,6,'Córdoba','Eguia Zanón 9251',5000,'3518176960','','d24a7cbf724a0372022f917a4027c05a','2020-07-08 14:13:18','2020-07-08 14:13:18','T2K15M57',_binary '\0',480,1380,50,_binary '\0','2020-07-08 14:13:18'),(40,'restaurant','active','normal','FrancoNicolasRecupido','Franco Nicolas','Recupido','El Mesón',NULL,'elmesonderivera@gmail.com','waqw6pfdf8ojd2cfp92xzfk4hzb476x8b490zm2ls.jpeg','6a4222d7a0085835895864ceb0cc0665',1,6,'Cordoba','Ricardo rojas y Manuel de falla Loc.115',5000,'3518019174','','5100b040259422df9f4c4220575e7bbe','2020-07-08 21:57:15','2020-07-08 21:57:15','7R4X5D06',_binary '\0',0,1439,50,_binary '\0','2020-07-08 21:57:15'),(42,'restaurant','active','normal','LaliGaliotti','Lali','Galiotti','El Mesón',NULL,'admmesongauss@gmail.com','c6af71rjslk2rrmczjea8844s1re0agmg8kgpzo6l.png','6a4222d7a0085835895864ceb0cc0665',1,6,'Cordoba','Gauss 5780',5009,'5493512057264','','17cf57e64e17f2a7e37e3e1a4cf5d011','2020-07-08 22:59:43','2020-07-08 22:59:43','AAVMHOMA',_binary '\0',0,1439,50,_binary '\0','2020-07-08 22:59:43'),(43,'restaurant','active','normal','ClaudioClaudio','Claudio','Claudio','El Fogón',NULL,'claudio@elfogon.com','fc6fnc6jpyy1tegldlkyddo1lu7r4n8sjryw59gju.jpeg','47fcdd85d136d43c4b2ce7e28c0f5b9b',1,6,'Cordoba','Rodríguez del Busto 4086',5000,'3515261547','','39c0ea63a524cd4b5adf9b20f3d0641a','2020-07-09 13:27:01','2020-07-09 13:27:01','MXTDJ1NS',_binary '\0',0,1439,50,_binary '\0','2020-07-09 13:27:01'),(44,'restaurant','active','normal','ClaudioClaudio2','Claudio','Claudio','Quelo',NULL,'claudio@quelo.com','tjxxdoveakbjhsavi6v7igfrhi1eopsburjr5pbor.jpeg','90f645f24c28c55c9711b4aad8863c14',1,6,'Cordoba','Dinosaurio Mall - Alto Verde - Local 3',5000,'3515261547','','e96a09edf64d02667f2fad446c8b74bf','2020-07-09 13:28:43','2020-07-09 13:28:43','Y43Q9J4L',_binary '\0',0,1439,50,_binary '\0','2020-07-09 13:28:43'),(45,'restaurant','active','normal','CaelosMandolesi','Carlos','Mandolesi','Juan Pérez',NULL,'carlosmandolesi40@gmail.com','ednyfp8snr2q88i488hyppe5nidho7n2n680sl0rt.jpeg','3c3425e8dde02a0e052bf8d34f0bcd92',1,6,'Cordoba','Ituzaingo 692',5000,'03513291125','',NULL,'2020-07-09 20:15:55','2020-07-09 20:15:55','TR2ISDK0',_binary '\0',0,1439,0,_binary '','2020-07-09 20:15:55'),(46,'restaurant','active','normal','MatiasRuiz','Matias','Ruiz',NULL,NULL,'matiasruizluque@gmail.com',NULL,'2ac9a0f379c4d81ec786f6b7b4af1c00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-07-10 00:24:31','2020-07-10 00:24:31','AF1F75AR',_binary '\0',0,1439,50,_binary '\0','2020-07-10 00:24:31'),(47,'restaurant','active','normal','GuillerminaSalgado','Guillermina','Salgado',NULL,NULL,'guillerminitasalgado98@gmail.com',NULL,'af4f36f59a39f970a0c8f5b0e3a6eea5',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-07-10 15:05:15','2020-07-10 15:05:15','UNKHO81V',_binary '\0',0,1439,50,_binary '\0','2020-07-10 15:05:15'),(48,'restaurant','active','normal','AndresRivero','Andres','Rivero','El meson',NULL,'ajrivero@live.com.ar','','a01183854d7e784f0455d559f4327d55',1,6,'Córdoba','Albariños',5047,'3515490441','Www.www.com.ar',NULL,'2020-07-10 19:06:02','2020-07-10 19:06:02','J0XYRCXR',_binary '\0',0,1439,50,_binary '\0','2020-07-10 19:06:02'),(49,'restaurant','active','normal','NicolásMercau','Nicolás','Mercau','Casa de Fuego',NULL,'namercau@gmail.com','bos6ykawx1z3cmr0a5dnzyybnf6eirn0doo8w9n1p.png','a641ff223cb869fbfb74837f949e54a7',1,6,'Córdoba','Fructuoso Rivera 260 - Galería Muy Guemes',5000,'3512350667','',NULL,'2020-07-10 19:14:04','2020-07-10 19:14:04','R38TEH7D',_binary '\0',0,1439,50,_binary '\0','2020-07-10 19:14:04'),(50,'restaurant','active','normal','NicolasColace','Nicolas','Colace',NULL,NULL,'nicolascolace1234@gmail.com',NULL,'ccee5504c9d889922b101124e9e43b71',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-07-10 21:48:41','2020-07-10 21:48:41','6DE6S63W',_binary '\0',0,1439,50,_binary '\0','2020-07-10 21:48:41'),(51,'restaurant','pending','normal','PieroBoetsch','Piero','Boetsch',NULL,NULL,'pieroboetsch.com@gmail.com',NULL,'0ba32e9419dc78f04e1e5fa34ddc1450',1,NULL,NULL,NULL,NULL,NULL,NULL,'808c367acefce0d0f7b57639440cf454','2020-07-10 21:48:57','2020-07-10 21:48:57','ML8HR9TV',_binary '\0',0,1439,50,_binary '\0','2020-07-10 21:48:57'),(52,'restaurant','active','normal','RodrigoCristolfo','Rodrigo','Cristolfo',NULL,NULL,'rodrigo.cristolfo27@gmail.com',NULL,'2e247e2eb505c42b362e80ed4d05b078',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-07-11 00:54:41','2020-07-11 00:54:41','LTZWHPQ4',_binary '\0',0,1439,50,_binary '\0','2020-07-11 00:54:41'),(53,'restaurant','active','normal','SilvanoLeiva','Silvano','Leiva',NULL,NULL,'silgerleiva@gmail.com',NULL,'28b2472874061e3729e1931afa007900',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-07-11 18:37:09','2020-07-11 18:37:09','A5BU4532',_binary '\0',0,1439,50,_binary '\0','2020-07-11 18:37:09'),(54,'restaurant','active','normal','NahuelLeiva','Nahuel','Leiva',NULL,NULL,'nahuelleivamc23@gmail.com',NULL,'30c33719415f3282564beeed933b2527',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-07-11 18:37:40','2020-07-11 18:37:40','0X2YCYRR',_binary '\0',0,1439,50,_binary '\0','2020-07-11 18:37:40'),(55,'restaurant','active','normal','AbigaikMonahm','Abigaik','Monahm',NULL,NULL,'abigailmonahm22@gmail.com',NULL,'53ea6752496a92934df3dc9fbe946c5e',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-07-11 18:38:12','2020-07-11 18:38:12','A5F9I9I1',_binary '\0',0,1439,50,_binary '\0','2020-07-11 18:38:12'),(56,'restaurant','active','normal','florenciawilneder','María Florencia','Branda','ochre',NULL,'florenciawilneder@gmail.com','','b53f9eab18925087767f61bf36de9992',1,6,'CORDOBA','juan antonio lavallejs',2448,'3514085753','',NULL,'2020-07-13 22:26:18','2020-07-13 22:26:18','DGS7AJ5X',_binary '\0',0,1439,50,_binary '\0','2020-07-13 22:26:18'),(57,'restaurant','active','normal','Mónicapaolamerizalde','Mónica paola','merizalde',NULL,NULL,'monicapaolamartinmerizalde@gmail.com',NULL,'1a6bdc9554e6a324a62e27ea6ee471d3',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-07-13 22:26:44','2020-07-13 22:26:44','BUV7ZMFM',_binary '\0',0,1439,50,_binary '\0','2020-07-13 22:26:44'),(58,'restaurant','active','normal','PabloDavila','Pablo','Davila','Bistro del Poeta',NULL,'pablo.davila@hinn.com.ar','40qs7tfkw50ndy39b3zod1j0bre2upqxtvjlj4zbz.jpeg','6e89ef8be8e45d7c31a81a3da98acfbc',1,6,'Cordoba','Fray Luis Beltran y Manuel Cardeñosa',5008,'+5493514779181','','38ec0f3a5ad0b8d19400538a9b5b0d63','2020-07-15 14:05:46','2020-07-15 14:05:46','3HO83D9D',_binary '\0',0,1439,50,_binary '\0','2020-07-15 14:05:46'),(59,'restaurant','pending','normal','AleCala','Ale','Cala',NULL,NULL,'alex_002009@hotmail.com',NULL,'f2f2d5cd23e8f316c7dffd5ab12d8a77',1,NULL,NULL,NULL,NULL,NULL,NULL,'3b9e27ecf29b4aeadd0a9ae56b1fa537','2020-07-15 21:39:47','2020-07-15 21:39:47','F6MTBSK8',_binary '\0',0,1439,50,_binary '\0','2020-07-15 21:39:47');
/*!40000 ALTER TABLE `usr_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_login`
--

DROP TABLE IF EXISTS `vw_login`;
/*!50001 DROP VIEW IF EXISTS `vw_login`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_login` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `status`,
 1 AS `hash`,
 1 AS `role`,
 1 AS `forceProfile`,
 1 AS `avatar`,
 1 AS `email`,
 1 AS `codeMenu`,
 1 AS `canDelivery`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_login_client`
--

DROP TABLE IF EXISTS `vw_login_client`;
/*!50001 DROP VIEW IF EXISTS `vw_login_client`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_login_client` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `email`,
 1 AS `address`,
 1 AS `zip`,
 1 AS `hash`,
 1 AS `phone`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'menu_db'
--
/*!50003 DROP FUNCTION IF EXISTS `COUNT_STR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` FUNCTION `COUNT_STR`(haystack TEXT, needle VARCHAR(32)) RETURNS int
    DETERMINISTIC
BEGIN
    RETURN ROUND((CHAR_LENGTH(haystack) - CHAR_LENGTH(REPLACE(haystack, needle, ""))) / CHAR_LENGTH(needle));
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `FN_GET_CODE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` FUNCTION `FN_GET_CODE`( 
	pUsrId INT
) RETURNS varchar(8) CHARSET utf8
    DETERMINISTIC
BEGIN

    RETURN (SELECT usr_code FROM usr_user WHERE usr_id = pUsrId);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `FN_GET_EXPIRE_TIME` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` FUNCTION `FN_GET_EXPIRE_TIME`( 
	pUsrId INT
) RETURNS int
    DETERMINISTIC
BEGIN

    RETURN (SELECT MIN(IF(((DATE_FORMAT(CONVERT_TZ(NOW(),'SYSTEM','-03:00'),'%H')*60)+DATE_FORMAT(CONVERT_TZ(NOW(),'SYSTEM','-03:00'),'%i'))>men_time_start,men_time_end,men_time_start)) as 'timeExpire'
			FROM men_menu 
			WHERE usr_id = pUsrId
				AND SUBSTRING(men_days,DAYOFWEEK(NOW()),1)='1'
				AND men_enable = 1);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `FN_GET_ORDER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` FUNCTION `FN_GET_ORDER`(pCatId INT) RETURNS varchar(20) CHARSET utf8
    DETERMINISTIC
BEGIN
	DECLARE vCatOrder VARCHAR(20);
    
	SELECT 	IF(cat_id_parent>0,
			CONCAT(IF(cat_order_parent<10,CONCAT('0',cat_order_parent),cat_order_parent),'_',IF(cat_order<10,CONCAT('0',cat_order),cat_order))
			,IF(cat_order<10,CONCAT('0',cat_order),cat_order))
    INTO vCatOrder
    FROM cat_category cat
    WHERE cat.cat_id = pCatId;
    
    RETURN vCatOrder;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `FN_REMOVE_ACCENTS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` FUNCTION `FN_REMOVE_ACCENTS`( 
	textvalue VARCHAR(100) 
) RETURNS varchar(100) CHARSET utf8
    DETERMINISTIC
BEGIN

    SET @textvalue = textvalue;

    -- ACCENTS
    SET @withaccents = 'ŠšŽžÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÑÒÓÔÕÖØÙÚÛÜÝŸÞàáâãäåæçèéêëìíîïñòóôõöøùúûüýÿþƒ';
    SET @withoutaccents = 'SsZzAAAAAAACEEEEIIIINOOOOOOUUUUYYBaaaaaaaceeeeiiiinoooooouuuuyybf';
    SET @count = LENGTH(@withaccents);

    WHILE @count > 0 DO
        SET @textvalue = REPLACE(@textvalue, SUBSTRING(@withaccents, @count, 1), SUBSTRING(@withoutaccents, @count, 1));
        SET @count = @count - 1;
    END WHILE;

    SET @special = '!@#$%¨&*()_+=§¹²³£¢¬"`´{[^~}]<,>.:;?/°ºª+*|\\''';
    SET @count = LENGTH(@special);

    WHILE @count > 0 do
        SET @textvalue = REPLACE(@textvalue, SUBSTRING(@special, @count, 1), '');
        SET @count = @count - 1;
    END WHILE;

    RETURN @textvalue;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ACTIVE_ACCOUNT` */;
ALTER DATABASE `menu_db` CHARACTER SET utf8 COLLATE utf8_bin ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_bin */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_ACTIVE_ACCOUNT`(
	IN pEmail VARCHAR(45),
    IN pHash VARCHAR(45)
)
BEGIN
    DECLARE vError INT;
    DECLARE vMsg VARCHAR(255);
	DECLARE vUsrId INT;
    
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
		GET CURRENT DIAGNOSTICS CONDITION 1 vMsg = MESSAGE_TEXT;
        SELECT 301 as 'code', vMsg as message, vId AS 'id';
		ROLLBACK;
    END;
    START TRANSACTION;
	SET vError = 0;
	SET vUsrId = IFNULL((SELECT usr_id FROM usr_user WHERE usr_email = pEmail AND usr_hash = pHash AND usr_status=1), 0);
	
	IF (vUsrId > 0) THEN
		UPDATE usr_user
		SET usr_status = 2,
        usr_hash = null
		WHERE usr_id = vUsrId;
	ELSE
		SET vError = 310; 
	END IF;

	
	IF (vUsrId = 0) THEN
		ROLLBACK;
		SELECT 
			vError as 'code',
			vMsg as 'message';
	ELSE
		COMMIT;
		SELECT 
			vError as 'code',
			vMsg as 'message',
			vwL.*
		FROM vw_login vwL
		WHERE vwL.id = vUsrId;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `menu_db` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ACTIVE_CATEGORY` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_ACTIVE_CATEGORY`(
	IN pUsrId INT,
    IN pCatId INT
)
BEGIN
    DECLARE vError INT;
    DECLARE vMsg VARCHAR(255);
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
		GET CURRENT DIAGNOSTICS CONDITION 1 vMsg = MESSAGE_TEXT;
        SELECT 301 as 'code', vMsg as message;
		ROLLBACK;
    END;
    START TRANSACTION;
	SET vError = 0;
    
	UPDATE usr_user SET usr_is_change=1 WHERE usr_id=pUsrId;
        
	UPDATE cat_category
	SET cat_enable = IF(cat_enable=1,0,1)
	WHERE cat_id = pCatId AND usr_id = pUsrId;
    
	COMMIT;
	
	SELECT 
		vError as 'code',
		vMsg as 'message',
        FN_GET_CODE(pUsrId) as 'codeMenu';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ACTIVE_MENU` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_ACTIVE_MENU`(
	IN pUsrId INT,
    IN pMenId INT
)
BEGIN
    DECLARE vError INT;
    DECLARE vMsg VARCHAR(255);
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
		GET CURRENT DIAGNOSTICS CONDITION 1 vMsg = MESSAGE_TEXT;
        SELECT 301 as 'code', vMsg as message;
		ROLLBACK;
    END;
    START TRANSACTION;
	SET vError = 0;
    
    UPDATE usr_user SET usr_is_change=1 WHERE usr_id=pUsrId;
    
	UPDATE men_menu
	SET men_enable = IF(men_enable=1,0,1)
	WHERE men_id = pMenId AND usr_id = pUsrId;
    
	COMMIT;
	
	SELECT 
		vError as 'code',
		vMsg as 'message';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ACTIVE_PRODUCT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_ACTIVE_PRODUCT`(
	IN pUsrId INT,
    IN pMenId INT,
    IN pCatId INT,
    IN pProId INT
)
BEGIN
    DECLARE vError INT;
    DECLARE vMsg VARCHAR(255);
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
		GET CURRENT DIAGNOSTICS CONDITION 1 vMsg = MESSAGE_TEXT;
        SELECT 301 as 'code', vMsg as message;
		ROLLBACK;
    END;
    START TRANSACTION;
	SET vError = 0;
    
    UPDATE usr_user SET usr_is_change=1 WHERE usr_id=pUsrId;
    
	UPDATE pxm_proxmen
	SET pxm_enable = IF(pxm_enable=1,0,1)
	WHERE usr_id = pUsrId AND cat_id = pCatId AND men_id = pMenId AND pro_id = pProId;
    
	COMMIT;
	
	SELECT 
		vError as 'code',
		vMsg as 'message',
        FN_GET_CODE(pUsrId) as 'codeMenu';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_CANCEL_ORDER_CLIENT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_CANCEL_ORDER_CLIENT`(
	IN pCode VARCHAR(8),
	IN pHash VARCHAR(45),
    IN pOrdId INT
)
BEGIN
    DECLARE vError INT DEFAULT 0;
    DECLARE vMsg VARCHAR(255);
    DECLARE vUsrId INT DEFAULT 0;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
		GET CURRENT DIAGNOSTICS CONDITION 1 vMsg = MESSAGE_TEXT;
        SELECT 301 as 'code', vMsg as message;
		ROLLBACK;
    END;
    START TRANSACTION;

	SELECT usr_id
	INTO vUsrId
    FROM usr_user 
    WHERE usr_code like pCode;
    
	UPDATE ord_order
	SET ord_status = 5
	WHERE ord_id = pOrdId;
    
	COMMIT;
	
	SELECT 
		vError as 'code',
		vMsg as 'message',
		vUsrId as 'usrId';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_CHANGE_ORDER_CATEGORY` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_CHANGE_ORDER_CATEGORY`(
	IN pUsrId INT,
    IN pCatId INT,
    IN pJump INT
)
BEGIN
    DECLARE vError INT;
    DECLARE vMsg VARCHAR(255);
    DECLARE vNewOrder INT;
    DECLARE vOldOrder INT;
    DECLARE vCatIdParent INT;
    DECLARE vLimit INT;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
		GET CURRENT DIAGNOSTICS CONDITION 1 vMsg = MESSAGE_TEXT;
        SELECT 301 as 'code', vMsg as message;
		ROLLBACK;
    END;
    START TRANSACTION;
	SET vError = 0;

	UPDATE usr_user SET usr_is_change=1 WHERE usr_id=pUsrId;
    
    SELECT 
		cat_order,
        cat_id_parent
    INTO 
		vOldOrder,
        vCatIdParent
    FROM cat_category 
    WHERE cat_id = pCatId AND usr_id = pUsrId;
    
    SELECT COUNT(*) + pJump
    INTO vLimit
	FROM cat_category 
	WHERE usr_id = pUsrId 
    AND cat_id_parent = vCatIdParent
    AND (
			(pJump < 0 AND cat_order <= vOldOrder) OR (pJump > 0 AND cat_order BETWEEN 0 AND vOldOrder)
		)
    ORDER BY cat_order ASC;
	
    IF (vLimit>0) THEN
		SELECT MAX(lis.order)
        INTO vNewOrder
		FROM 
		(
			SELECT cat_order as 'order'
			FROM cat_category 
			WHERE usr_id = pUsrId and cat_id_parent = vCatIdParent
            ORDER BY cat_order ASC
			LIMIT vLimit
		) lis;
    END IF;
    
    IF (vNewOrder < vOldOrder) THEN
		UPDATE cat_category cat1
		INNER JOIN cat_category cat2 ON cat1.cat_id = cat2.cat_id_parent
		SET cat2.cat_order_parent = cat2.cat_order_parent + 1
		WHERE cat1.usr_id = pUsrId AND cat1.cat_id_parent = vCatIdParent AND cat1.cat_order BETWEEN vNewOrder AND vOldOrder 
        AND cat2.cat_id_parent > 0;
        
		UPDATE cat_category
		SET cat_order = cat_order + 1
		WHERE usr_id = pUsrId AND cat_id_parent = vCatIdParent AND cat_order BETWEEN vNewOrder AND vOldOrder;
    END IF;
 
	IF (vNewOrder > vOldOrder) THEN
		UPDATE cat_category cat1
		INNER JOIN cat_category cat2 ON cat1.cat_id = cat2.cat_id_parent
		SET cat2.cat_order_parent = cat2.cat_order_parent - 1
		WHERE cat1.usr_id = pUsrId AND cat1.cat_id_parent = vCatIdParent AND cat1.cat_order BETWEEN vOldOrder AND vNewOrder AND
        cat2.cat_id_parent > 0;
            
		UPDATE cat_category
		SET cat_order = cat_order - 1
		WHERE usr_id = pUsrId AND cat_id_parent = vCatIdParent AND cat_order BETWEEN vOldOrder AND vNewOrder;
    END IF;
   
	UPDATE cat_category cat1
	INNER JOIN cat_category cat2 ON cat1.cat_id = cat2.cat_id_parent
	SET cat2.cat_order_parent = vNewOrder
	WHERE cat2.cat_id_parent > 0 AND cat1.cat_id = pCatId AND cat1.usr_id = pUsrId;
        
	UPDATE cat_category
	SET cat_order = vNewOrder
	WHERE cat_id = pCatId AND usr_id = pUsrId;
    
	COMMIT;
	
	SELECT 
		vError as 'code',
		vMsg as 'message';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_CHANGE_ORDER_NEXT_STATUS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_CHANGE_ORDER_NEXT_STATUS`(
	IN pUsrId INT,
    IN pOrdId INT
)
BEGIN
    DECLARE vError INT DEFAULT 0;
    DECLARE vMsg VARCHAR(255);
    DECLARE vHash VARCHAR(45);
    DECLARE vCode VARCHAR(8);
    DECLARE vOrdStatus INT;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
		GET CURRENT DIAGNOSTICS CONDITION 1 vMsg = MESSAGE_TEXT;
        SELECT 301 as 'code', vMsg as message;
		ROLLBACK;
    END;
    START TRANSACTION;
    
	SELECT 
		cli.cli_hash,
        usr.usr_code,
        ord.ord_status+0
    INTO 
		vHash,
        vCode,
        vOrdStatus
    FROM ord_order ord
    INNER JOIN cli_client cli ON ord.cli_id = cli.cli_id
    INNER JOIN usr_user usr ON ord.usr_id = usr.usr_id
    WHERE ord_id = pOrdId;
    
    SET vOrdStatus = vOrdStatus+1;
    
	UPDATE ord_order
	SET ord_status = vOrdStatus
	WHERE ord_id = pOrdId;
    
	COMMIT;
	
	SELECT 
		vError as 'code',
		vMsg as 'message',
		vHash as 'hash',
        vCode as 'codeRestaurant',
        vOrdStatus as 'status',
        pOrdId as 'id';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_CHANGE_ORDER_PRODUCT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_CHANGE_ORDER_PRODUCT`(
	IN pUsrId INT,
    IN pMenId INT,
    IN pCatId INT,
    IN pProId INT,
    IN pJump INT
)
BEGIN
    DECLARE vError INT;
    DECLARE vMsg VARCHAR(255);
    DECLARE vNewOrder INT;
    DECLARE vOldOrder INT;
    DECLARE vLimit INT;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
		GET CURRENT DIAGNOSTICS CONDITION 1 vMsg = MESSAGE_TEXT;
        SELECT 301 as 'code', vMsg as message;
		ROLLBACK;
    END;
    START TRANSACTION;
	SET vError = 0;
    
    UPDATE usr_user SET usr_is_change=1 WHERE usr_id=pUsrId;
    
    SELECT 
		pxm_order 
    INTO 
		vOldOrder
    FROM pxm_proxmen 
    WHERE pro_id = pProId AND men_id = pMenId AND usr_id = pUsrId AND cat_id=pCatId;
    
    SELECT COUNT(*) + pJump
    INTO vLimit
	FROM pxm_proxmen 
	WHERE usr_id = pUsrId AND men_id = pMenId AND cat_id = pCatId
    AND (
			(pJump < 0 AND pxm_order <= vOldOrder) OR (pJump > 0 AND pxm_order BETWEEN 0 AND vOldOrder)
		)
    ORDER BY pxm_order ASC;

    IF (vLimit>0) THEN
		SELECT MAX(lis.order)
        INTO vNewOrder
		FROM 
		(
			SELECT pxm_order as 'order'
			FROM pxm_proxmen 
			WHERE usr_id = pUsrId AND men_id = pMenId AND cat_id = pCatId
            ORDER BY pxm_order ASC
			LIMIT vLimit
		) lis;
    END IF;
    
    IF (vNewOrder < vOldOrder) THEN
		UPDATE pxm_proxmen
		SET pxm_order = pxm_order + 1
		WHERE pxm_order BETWEEN vNewOrder AND vOldOrder AND usr_id = pUsrId AND men_id = pMenId AND cat_id=pCatId;
    END IF;
 
	IF (vNewOrder > vOldOrder) THEN
		UPDATE pxm_proxmen
		SET pxm_order = pxm_order - 1
		WHERE pxm_order BETWEEN vOldOrder AND vNewOrder AND usr_id = pUsrId AND men_id = pMenId AND cat_id=pCatId;
    END IF;
    
	UPDATE pxm_proxmen
	SET pxm_order = vNewOrder
	WHERE pro_id = pProId AND usr_id = pUsrId AND men_id = pMenId AND cat_id=pCatId;
    
	COMMIT;
	
	SELECT 
		vError as 'code',
		vMsg as 'message';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_CHANGE_ORDER_STATUS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_CHANGE_ORDER_STATUS`(
	IN pUsrId INT,
    IN pOrdId INT,
    IN pNewStatus INT
)
BEGIN
    DECLARE vError INT DEFAULT 0;
    DECLARE vMsg VARCHAR(255);
    DECLARE vHash VARCHAR(45);
    DECLARE vCode VARCHAR(8);
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
		GET CURRENT DIAGNOSTICS CONDITION 1 vMsg = MESSAGE_TEXT;
        SELECT 301 as 'code', vMsg as message;
		ROLLBACK;
    END;
    START TRANSACTION;
    
	SELECT 
		cli.cli_hash,
        usr.usr_code
    INTO 
		vHash,
        vCode
    FROM ord_order ord
    INNER JOIN cli_client cli ON ord.cli_id = cli.cli_id
    INNER JOIN usr_user usr ON ord.usr_id = usr.usr_id
    WHERE ord_id = pOrdId;
    
	UPDATE ord_order
	SET ord_status = pNewStatus
	WHERE ord_id = pOrdId;
    
	COMMIT;
	
	SELECT 
		vError as 'code',
		vMsg as 'message',
		vHash as 'hash',
        vCode as 'codeRestaurant',
        pNewStatus as 'status',
        pOrdId as 'id';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_CHANGE_PASS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_bin */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_CHANGE_PASS`(
	IN pEmail VARCHAR(45),
	IN pHash VARCHAR(45),
	IN pPassword VARCHAR(255)
)
BEGIN
    DECLARE vError INT;
    DECLARE vMsg VARCHAR(255);
	DECLARE vUsrId INT;
    DECLARE vLogCount INT;
    
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
		GET CURRENT DIAGNOSTICS CONDITION 1 vMsg = MESSAGE_TEXT;
        SELECT 301 as 'code', vMsg as message, vUsrId AS 'id';
		ROLLBACK;
    END;
    START TRANSACTION;
	SET vError = 0;
	SET vUsrId = IFNULL((SELECT usr_id FROM usr_user WHERE usr_email = pEmail AND usr_hash = pHash AND usr_status IN (1,2)), 0);
	
	IF (vUsrId > 0) THEN
		SET vLogCount = (SELECT COUNT(1) FROM usr_user WHERE usr_id = vUsrId AND usr_password = MD5(pPassword));
		
		IF (vLogCount = 0) THEN
			UPDATE usr_user
			SET usr_hash = null,
				usr_password = MD5(pPassword),
                usr_updated_at = NOW()
			WHERE usr_id = vUsrId;
		ELSE
			SET vError = 205; 
		END IF;
	ELSE
		SET vError = 305; 
	END IF;

	
	IF (vUsrId = 0) THEN
		ROLLBACK;
		SELECT 
			vError as 'code',
			vMsg as 'message';
	ELSE
		COMMIT;
		SELECT 
			vError as 'code',
			vMsg as 'message',
			vwL.*
		FROM vw_login vwL
		WHERE vwL.id = vUsrId;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_CHANGE_PRICE_PRODUCT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_CHANGE_PRICE_PRODUCT`(
	IN pUsrId INT,
    IN pMenId INT,
    IN pCatId INT,
    IN pProId INT,
    IN pPrice VARCHAR(20)
)
BEGIN
    DECLARE vError INT;
    DECLARE vMsg VARCHAR(255);
    DECLARE vManyPrices BIT;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
		GET CURRENT DIAGNOSTICS CONDITION 1 vMsg = MESSAGE_TEXT;
        SELECT 301 as 'code', vMsg as message;
		ROLLBACK;
    END;
    START TRANSACTION;
	SET vError = 0;
    
    SELECT CASE WHEN (cat_manyPrices<>'') THEN 1 ELSE 0 END 
    INTO vManyPrices
    FROM cat_category 
    WHERE usr_id = pUsrId AND cat_id = pCatId;
    
    UPDATE usr_user SET usr_is_change=1 WHERE usr_id=pUsrId;
    
    IF (vManyPrices=1) THEN
    	UPDATE pro_product
		SET 
			pro_manyPrices = pPrice
		WHERE pro_id = pProId AND usr_id = pUsrId;
    ELSE
    	UPDATE pro_product
		SET 
			pro_price = CAST(pPrice AS DECIMAL(4,0))
		WHERE pro_id = pProId AND usr_id = pUsrId;
    END IF;

	COMMIT;
	SELECT 
		vError as 'code',
		vMsg as 'message';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_CHANGE_SHIPPING_NEXT_STATUS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_CHANGE_SHIPPING_NEXT_STATUS`(
	IN pUsrId INT,
    IN pBuyId INT
)
BEGIN
    DECLARE vError INT DEFAULT 0;
    DECLARE vMsg VARCHAR(255);
    DECLARE vBuyStatus INT;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
		GET CURRENT DIAGNOSTICS CONDITION 1 vMsg = MESSAGE_TEXT;
        SELECT 301 as 'code', vMsg as message;
		ROLLBACK;
    END;
    START TRANSACTION;
    
	SELECT 
        buy.buy_status+0
    INTO 
        vBuyStatus
    FROM buy_buyqr buy
    WHERE buy_id = pBuyId;
    
    SET vBuyStatus = vBuyStatus+1;
    
	UPDATE buy_buyqr
	SET buy_status = vBuyStatus
	WHERE buy_id = pBuyId;
    
	COMMIT;
	
	SELECT 
		vError as 'code',
		vMsg as 'message';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_CHANGE_STATUS_SHIPPING` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_CHANGE_STATUS_SHIPPING`(
	IN pUsrId INT,
    IN pBuyId INT
)
BEGIN
    DECLARE vError INT DEFAULT 0;
    DECLARE vMsg VARCHAR(255);
    DECLARE vBuyStatus INT;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
		GET CURRENT DIAGNOSTICS CONDITION 1 vMsg = MESSAGE_TEXT;
        SELECT 301 as 'code', vMsg as message;
		ROLLBACK;
    END;
    START TRANSACTION;
    SELECT 
        buy_status+0
	INTO
        vBuyStatus
    FROM buy_buyqr 
    WHERE buy_id = pBuyId;
    
	SET vBuyStatus = IF(vBuyStatus=3,4,3);
    
	UPDATE buy_buyqr
	SET buy_status = vBuyStatus
	WHERE buy_id = pBuyId;
    
	COMMIT;
	
	SELECT 
		vError as 'code',
		vMsg as 'message';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_CLONE_DATA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_CLONE_DATA`(
	IN pUsrIdOrigin INT,
    IN pUsrIdDestination INT
)
BEGIN
    DECLARE vError INT;
    DECLARE vMsg VARCHAR(255);
    DECLARE vMenId INT;
    DECLARE no_more_menu INT DEFAULT 0;
    DECLARE vUsrId1 INT DEFAULT 0;
    DECLARE vUsrId2 INT DEFAULT 0;
    
	DECLARE menu_csr CURSOR FOR
		SELECT men_id
		FROM men_menu
		WHERE usr_id = pUsrIdOrigin;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET no_more_menu=1;
    
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
		GET CURRENT DIAGNOSTICS CONDITION 1 vMsg = MESSAGE_TEXT;
        SELECT 301 as 'code', vMsg as message;
		ROLLBACK;
    END;
    START TRANSACTION;
	SET vError = 0;
	
	SET vUsrId1 = IFNULL((SELECT usr_id FROM usr_user WHERE usr_id = pUsrIdOrigin), 0);
    SET vUsrId2 = IFNULL((SELECT usr_id FROM usr_user WHERE usr_id = pUsrIdDestination), 0);
	
	IF (vUsrId1 > 0 AND vUsrId2 > 0) THEN
		INSERT INTO cat_category (usr_id, cat_order_parent, cat_order, cat_name, cat_excerpt, cat_manyPrices, cat_enable, cat_id_parent, cat_id_clone)
			SELECT pUsrIdDestination, cat_order_parent, cat_order, cat_name, cat_excerpt, cat_manyPrices, cat_enable, cat_id_parent, cat_id
			FROM cat_category
			WHERE usr_id = pUsrIdOrigin;

		INSERT INTO pro_product (usr_id, pro_name, pro_excerpt, pro_price, pro_manyPrices, pro_type, pro_enable, pro_delivery, pro_image, pro_id_clone)
			SELECT pUsrIdDestination, pro_name, pro_excerpt, pro_price, pro_manyPrices, pro_type, pro_enable, pro_delivery, pro_image, pro_id
			FROM pro_product
			WHERE usr_id = pUsrIdOrigin;
			
		OPEN menu_csr;
		menu_loop:WHILE(no_more_menu=0) DO
		
			FETCH menu_csr INTO vMenId;
			IF no_more_menu=1 THEN
				LEAVE menu_loop;
			END IF;
			
			INSERT INTO men_menu (usr_id, men_name, men_time_start, men_time_end, men_days, men_enable, men_id_clone)
				SELECT pUsrIdDestination, men_name, men_time_start, men_time_end, men_days, men_enable, men_id
				FROM men_menu
				WHERE men_id = vMenId AND usr_id = pUsrIdOrigin;
				
			INSERT INTO pxm_proxmen (usr_id, men_id, pro_id, cat_id, pxm_enable, pxm_order)
				SELECT pUsrIdDestination, men.men_id, pro.pro_id, cat.cat_id, pxm_enable, pxm_order
				FROM pxm_proxmen pxm
				INNER JOIN pro_product pro ON pro.pro_id_clone = pxm.pro_id
				INNER JOIN cat_category cat ON cat.cat_id_clone = pxm.cat_id
                INNER JOIN men_menu men ON men.men_id_clone = pxm.men_id
				WHERE pxm.men_id = vMenId 
				AND pxm.usr_id = pUsrIdOrigin
				AND pro.usr_id = pUsrIdDestination
				AND cat.usr_id = pUsrIdDestination
                AND men.usr_id = pUsrIdDestination;
				
		END WHILE menu_loop;
		CLOSE menu_csr;
		COMMIT;
    ELSE
		SET vError = -1;
	END IF;
    
	SELECT 
		vError as 'code',
		vMsg as 'message';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_CONFIRM_PAYMENT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_CONFIRM_PAYMENT`(
	IN pUsrId INT
)
BEGIN
    DECLARE vError INT DEFAULT 0;
    DECLARE vMsg VARCHAR(255);
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
		GET CURRENT DIAGNOSTICS CONDITION 1 vMsg = MESSAGE_TEXT;
        SELECT 301 as 'code', vMsg as message;
		ROLLBACK;
    END;
    START TRANSACTION;

	UPDATE buy_buyqr
    SET buy_status = 2
    WHERE usr_id = pUsrId AND buy_status = 1;
	
	COMMIT;
	SELECT 
		vError as 'code',
		vMsg as 'message';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_DELIVERY_PRODUCT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_DELIVERY_PRODUCT`(
	IN pUsrId INT,
    IN pMenId INT,
    IN pCatId INT,
    IN pProId INT
)
BEGIN
    DECLARE vError INT;
    DECLARE vMsg VARCHAR(255);
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
		GET CURRENT DIAGNOSTICS CONDITION 1 vMsg = MESSAGE_TEXT;
        SELECT 301 as 'code', vMsg as message;
		ROLLBACK;
    END;
    START TRANSACTION;
	SET vError = 0;
    
    UPDATE usr_user SET usr_is_change=1 WHERE usr_id=pUsrId;
    
	UPDATE pro_product
	SET pro_delivery = IF(pro_delivery=1,0,1)
	WHERE usr_id = pUsrId AND pro_id = pProId;
    
	COMMIT;
	
	SELECT 
		vError as 'code',
		vMsg as 'message',
        FN_GET_CODE(pUsrId) as 'codeMenu';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_FORGOT_PASS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_bin */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_FORGOT_PASS`(
	IN pEmail VARCHAR(45)
)
BEGIN
    DECLARE vError INT;
    DECLARE vMsg VARCHAR(255);
    DECLARE vUsrId INT;
    DECLARE vHash VARCHAR(45);
    DECLARE vName VARCHAR(50);
    
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
		GET CURRENT DIAGNOSTICS CONDITION 1 vMsg = MESSAGE_TEXT;
        SELECT 301 as 'code', vMsg as message, null AS 'hash', null AS 'name';
		ROLLBACK;
    END;
    START TRANSACTION;
	SET vError = 0;
	SET vUsrId = IFNULL((SELECT IFNULL(usr_id,0) FROM usr_user WHERE usr_email = pEmail AND usr_status IN (1,2)),0); 
	
	IF (vUsrId > 0) THEN
		SET vHash = MD5(CONCAT((SELECT usr_password FROM usr_user WHERE usr_id = vUsrId),NOW()));
        SET vName = (SELECT usr_firstname FROM usr_user WHERE usr_id = vUsrId);
		
		UPDATE usr_user
		SET usr_hash = vHash
		WHERE usr_id = vUsrId;
	ELSE
		SET vError = 304; 
	END IF;
    
    IF (vError=0) THEN
		COMMIT;
	ELSE
		ROLLBACK;
    END IF;
    SELECT vError as 'code', vMsg as message, vHash AS 'hash', vName AS 'name';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_GET_ACCOUNT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_bin */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_GET_ACCOUNT`(
	IN pUsrId INT
)
BEGIN
	
	SELECT 
       usr_email as 'email'
	FROM usr_user usr
	WHERE usr.usr_id = pUsrId AND usr.usr_status=2;  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_GET_CATEGORIES` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_GET_CATEGORIES`(
	IN pUsrId INT,
    IN pCatIdParent INT
)
BEGIN   

    
	SELECT 
		cat.cat_id as 'id',
        cat.cat_order as 'order',
        cat.cat_name as 'name',
        CASE WHEN (cat.cat_enable) THEN 1 ELSE 0 END as 'enable',
        (select count(*) from pxm_proxmen pxm where pxm.cat_id =  cat.cat_id and pxm.usr_id = pUsrId) as 'products',
        (select count(*) from cat_category cat2 where cat2.cat_id_parent =  cat.cat_id) as 'subCategories'
	FROM cat_category  cat
    WHERE
		cat.usr_id = pUsrId
        AND cat.cat_id_parent = pCatIdParent
    ORDER BY 
		cat.cat_order ASC;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_GET_CATEGORY` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_GET_CATEGORY`(
	IN pUsrId INT,
    IN pCatId INT
)
BEGIN   

    
	SELECT 
        cat.cat_name as 'name',
		CASE WHEN (cat.cat_enable) THEN 1 ELSE 0 END as 'enable',
        cat.cat_excerpt as 'excerpt',
        cat.cat_manyPrices as 'manyPrices',
        cat.cat_id_parent as 'catIdParent',
		cat.cat_back_color as 'backColor',
		cat.cat_font_color+0 as 'fontColor'
	FROM cat_category  cat
	WHERE cat.cat_id = pCatId;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_GET_CODE_QR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_bin */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_GET_CODE_QR`(
	IN pUsrId INT
)
BEGIN
	SELECT 
	   usr_code as 'code'
	FROM usr_user usr
	WHERE usr.usr_id = pUsrId;  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_GET_COUNTERS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_GET_COUNTERS`(
	IN pUsrId INT
)
BEGIN
	DECLARE vCount1 INT DEFAULT 0;
	DECLARE vCount2 INT DEFAULT 0;
	DECLARE vCount3 INT DEFAULT 0;
	DECLARE vRole INT DEFAULT 0;
    
    SELECT 
		usr_role+0
    INTO 
		vRole
    FROM usr_user 
    WHERE usr_id = pUsrId;
    
    SET vCount1 = (SELECT COUNT(*) FROM cat_category WHERE usr_id=pUsrId AND cat_enable=1);
    SET vCount2 = (SELECT COUNT(*) FROM pro_product WHERE usr_id=pUsrId AND pro_enable=1);
    SET vCount3 = (
					SELECT COUNT(*) 
                    FROM ord_order 
                    WHERE usr_id=pUsrId AND ord_status=1 
                    AND ord_created_at < DATE_SUB(NOW(), INTERVAL 0 HOUR) AND ord_created_at > DATE_SUB(NOW(), INTERVAL 24 HOUR)
					);
    
	SELECT 
		vCount1 as 'categories',
		vCount2 as 'products',
		vCount3 as 'pendingOrders';

    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_GET_COUNT_ALERTS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_GET_COUNT_ALERTS`(
	IN pUsrId INT
)
BEGIN
    DECLARE vIsChange INT;
    
    SELECT IF(usr_is_change=1,1,0)
    INTO vIsChange
    FROM usr_user
    WHERE usr_id = pUsrId;
    
    SELECT 
		COUNT(*) as notifications,
        vIsChange as 'isChange'
    FROM ale_alert  ale
    INNER JOIN axu_alexusr axu ON axu.ale_id = ale.ale_id 
    WHERE axu.usr_id = pUsrId AND axu_enabled=true AND axu_viewed=false AND ale_enabled=true;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_GET_HEADER_RESTAURANT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_GET_HEADER_RESTAURANT`(
	IN pCode VARCHAR(8)
)
BEGIN   

	DECLARE vUsrId INT DEFAULT 0;
    
	SELECT 
		usr_company as 'name',
        usr_avatar as 'avatar',
        usr_website as 'website',
		usr_cost_shipping as 'costShipping',
	    usr_time_start_delivery as 'timeS',
        usr_time_end_delivery as 'timeE',
        CASE WHEN (usr_can_delivery) THEN 1 ELSE 0 END as 'canDelivery',
        usr_code as 'codeRestaurant'
    FROM usr_user 
    WHERE usr_code like pCode;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_GET_LIST_ALERTS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_bin */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_GET_LIST_ALERTS`(
	IN pUsrId INT,
    IN pLimit INT
)
BEGIN
    
    
    IF (pLimit=-1) THEN
		SELECT 
			axu_id as 'id',
			ale_name as 'name',
			IF(axu_viewed,true,false) as 'viewed',
			TIMESTAMPDIFF(SECOND,axu_entered,NOW()) as 'time',
			DATE_FORMAT(axu_entered, '%Y-%m-%d %H:%i') as 'date',
			ale_action as 'action'
		FROM ale_alert  ale
		INNER JOIN axu_alexusr axu ON axu.ale_id = ale.ale_id 
		WHERE axu.usr_id = pUsrId AND axu_enabled=true AND ale_enabled=true
		ORDER BY axu_entered DESC;
    ELSE
		SELECT 
			axu_id as 'id',
			ale_name as 'name',
			IF(axu_viewed,true,false) as 'viewed',
			TIMESTAMPDIFF(SECOND,axu_entered,NOW()) as 'time',
			DATE_FORMAT(axu_entered, '%Y-%m-%d %H:%i') as 'date',
			ale_action as 'action'
		FROM ale_alert  ale
		INNER JOIN axu_alexusr axu ON axu.ale_id = ale.ale_id 
		WHERE axu.usr_id = pUsrId AND axu_enabled=true AND ale_enabled=true
		ORDER BY axu_entered DESC
		LIMIT pLimit;
    END IF;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_GET_LIST_CATEGORIES` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_GET_LIST_CATEGORIES`(
	IN pUsrId INT,
    IN pCatIdParent INT
)
BEGIN

    IF (pCatIdParent>=0) THEN
		SELECT 
			cat_id as 'id',
			cat_name as 'label',
			cat_manyPrices as 'manyPrices'
		FROM 
			cat_category cat
		WHERE 
			usr_id = pUsrId
			AND cat.cat_id_parent = pCatIdParent
		ORDER BY 
			cat.cat_order ASC;
	ELSE
		SELECT 
			cat_id as 'id',
			IF(cat_id_parent>0,CONCAT('-- ',cat_name),cat_name)  as 'label',
			cat_manyPrices as 'manyPrices'
		FROM 
			cat_category cat
		WHERE 
			usr_id = pUsrId
		ORDER BY 
			FN_GET_ORDER(cat.cat_id) ASC;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_GET_LIST_COUNTRIES` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_bin */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_GET_LIST_COUNTRIES`()
BEGIN

    
    SELECT 
		cou_id as 'id',
        cou_name as 'label'
    FROM cou_country cou 
    ORDER BY cou_name ASC;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_GET_LIST_MENUS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_GET_LIST_MENUS`(
	IN pUsrId INT
)
BEGIN

    
    SELECT 
		men_id as 'id',
        men_name as 'label'
    FROM 
		men_menu men
    WHERE 
		usr_id = pUsrId
    ORDER BY 
        men.men_id ASC;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_GET_LIST_SHIPPING` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_GET_LIST_SHIPPING`(
	IN pUsrId INT
)
BEGIN   
    DECLARE vRole INT DEFAULT 0;
    
    SELECT 
		usr_role+0
    INTO 
		vRole
    FROM usr_user 
    WHERE usr_id = pUsrId;
    
	SELECT 
		buy.buy_id as 'id',
        buy.buy_status+0 as 'status',
        buy.buy_description as 'description',
		buy.buy_transaction_amount as 'amount',
        DATE_FORMAT(buy_entered, '%d %b, %Y') as 'date',
        usr_avatar as 'avatar',
        usr_company as 'company',
        usr_address as 'address',
        IF(POSITION('http://' IN usr_website)=0,CONCAT('http://',usr_website),usr_website) as 'website',
        CONCAT(usr_firstname,' ',usr_lastname) as 'nameClient',
        usr_city as 'city',
	    usr_zip_code as 'zip',
	    usr_phone as 'phone'
	FROM buy_buyqr  buy
    INNER JOIN usr_user usr ON buy.usr_id = usr.usr_id
    WHERE ((vRole=1 AND buy.usr_id = pUsrId) OR (vRole=2))
    ORDER BY buy.buy_id DESC;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_GET_LIST_STATES` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_bin */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_GET_LIST_STATES`(
	IN pCouId INT
)
BEGIN

    
    SELECT 
		sta_id as 'id',
		sta_name as 'label'
    FROM sta_state sta 
    WHERE cou_id = pCouId
    ORDER BY sta_name ASC;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_GET_MEMBER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_GET_MEMBER`(
	IN pUsrId INT,
    IN pMemId INT
)
BEGIN
	SELECT 
	   usr_id as 'id',
       usr_email as 'email',
	   usr_firstName as 'firstName',
       usr_lastName as 'lastName',
       usr_company as 'company',
	   IFNULL(cou_id,0) as 'couId',
       IFNULL(sta_id,0) as 'staId',
       IFNULL(usr_city,'') as 'city',
	   IFNULL(usr_address,'') as 'address',
	   IFNULL(usr_zip_code,'') as 'zip',
	   IFNULL(usr_phone,'') as 'phone',
	   IFNULL(usr_website,'') as 'webSite',
       usr_avatar as 'avatar',
       usr_code as 'codeMenu',
       usr_status+0 as 'status'
	FROM usr_user usr
    WHERE usr.usr_id = pMemId;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_GET_MEMBERS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_GET_MEMBERS`(
	IN pUsrId INT
)
BEGIN
	SELECT 
	   usr_id as 'id',
	   CONCAT(usr_firstname,' ',usr_lastname) as 'name',
       usr_company as 'company',
       usr_website as 'website',
       usr_avatar as 'avatar',
       DATE_FORMAT(usr_last_login, '%d.%c %H%i') as 'date',
       usr_phone as 'phone',
       usr_code as 'codeMenu',
       usr_address as 'address'
	FROM usr_user usr
    WHERE usr_status <> 4;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_GET_MENU` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_GET_MENU`(
	IN pUsrId INT,
    IN pMenId INT
)
BEGIN   

    
	SELECT 
        men.men_name as 'name',
		CASE WHEN (men.men_enable) THEN 1 ELSE 0 END as 'enable',
        men.men_time_start as 'timeS',
        men.men_time_end as 'timeE',
        men.men_days as 'daysBinary'
	FROM men_menu  men
	WHERE men.men_id = pMenId AND men.usr_id = pUsrId;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_GET_MENUS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_GET_MENUS`(
	IN pUsrId INT
)
BEGIN   

    
	SELECT 
		men.men_id as 'id',
        men.men_name as 'name',
        CASE WHEN (men.men_enable) THEN 1 ELSE 0 END as 'enable',
        (select count(*) from pxm_proxmen pxm where pxm.usr_id = pUsrId and pxm.men_id =  men.men_id) as 'products',
		IF(men.men_time_start=0,'12:00 AM',CONCAT(TIME_FORMAT(SEC_TO_TIME(men.men_time_start*60), "%h:%i"),IF((men.men_time_start/60)>=12,' PM',' AM'))) as 'timeS',
        CONCAT(TIME_FORMAT(SEC_TO_TIME(men.men_time_end*60), "%h:%i"),IF((men.men_time_end/60)>=12,' PM',' AM')) as 'timeE',
        men.men_days as 'days'
	FROM men_menu  men
    WHERE
		men.usr_id = pUsrId
    ORDER BY 
		men.men_id ASC;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_GET_MENU_SITE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_GET_MENU_SITE`(
	IN pCode VARCHAR(8),
    IN pDelivery INT
)
BEGIN   

	DECLARE vUsrId INT DEFAULT 0;
    DECLARE vTimeNow INT;
    
    SET vUsrId = IFNULL((SELECT usr_id FROM usr_user WHERE usr_code like pCode), 0);
    SET vTimeNow = ((DATE_FORMAT(CONVERT_TZ(NOW(),'SYSTEM','-03:00'),'%H')*60)+DATE_FORMAT(CONVERT_TZ(NOW(),'SYSTEM','-03:00'),'%i'));
    
    IF (vUsrId>0) THEN
		/* Return */
		SELECT 
			pro_id as 'id',
			pxm_order as 'order',
			pro_name as 'name',
			pro_price as 'price',
            pro_manyPrices as 'manyPrices',
            cat.cat_id_parent as 'catIdParent',
            cat.cat_id as 'catId',
			FN_REMOVE_ACCENTS(cat_name) as 'category',
            cat.cat_manyPrices as 'colManyPrices',
            cat.cat_excerpt as 'excerptCat',
			pro_excerpt as 'excerpt',
            pro_type+0 as 'type',
            pro_image as 'image',
            FN_GET_EXPIRE_TIME(vUsrId) as 'timeE',
            cat.cat_back_color as 'backColor',
            cat.cat_font_color as 'fontColor',
            FN_GET_ORDER(cat.cat_id) as 'orderDisplay'
		FROM cat_category cat
		LEFT OUTER JOIN (
			SELECT 	cat_id,
					pxm_order, 
					pro.pro_id,
                    pro.pro_name,
                    pro.pro_price,
                    pro.pro_manyPrices,
					pro.pro_excerpt,
					pro.pro_type,
					pro.pro_image,
					pro.pro_delivery
			FROM pxm_proxmen pxm
			INNER JOIN pro_product pro ON pxm.pro_id = pro.pro_id
			WHERE pxm_enable=1 AND pxm.usr_id = vUsrId AND pro.usr_id = vUsrId
			AND pxm.men_id IN (
					SELECT MAX(men_id)
					FROM men_menu 
					WHERE usr_id = vUsrId AND vTimeNow BETWEEN men_time_start AND men_time_end
						AND SUBSTRING(men_days,DAYOFWEEK(NOW()),1)='1'
						AND men_enable = 1
				  )
			AND (pDelivery=0 OR (pDelivery=1 AND pro.pro_delivery=1))
		) lisPro ON lisPro.cat_id = cat.cat_id
		WHERE cat.usr_id = vUsrId
        AND (
				(cat_id_parent = 0 AND cat_enable=1) 
                OR 
                (cat_id_parent > 0 AND (SELECT cat.cat_enable *  cat2.cat_enable FROM cat_category cat2 WHERE cat2.cat_id = cat.cat_id_parent)=1)
			)
        ORDER BY
			FN_GET_ORDER(cat.cat_id) ASC,
			pxm_order ASC;
    END IF;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_GET_ORDERS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_GET_ORDERS`(
	IN pUsrId INT
)
BEGIN
	SELECT 
	   ord_id as 'id',
	   ord_total as 'total',
	   (SELECT COUNT(*) FROM pxo_proxord WHERE ord_id = ord.ord_id) as 'items',
       DATE_FORMAT(CONVERT_TZ(ord.ord_created_at,'SYSTEM','-03:00'), '%d %b %H:%i') as 'date',
       ord_status+0 as 'status',
       cli.cli_name as 'nameClient',
       ord_comment as 'comment',
       ord_address as 'address',
       ord_zip as 'zip',
       cli.cli_phone as 'phone',
       TIMESTAMPDIFF(MINUTE,CONVERT_TZ(ord.ord_created_at,'SYSTEM','-03:00'),CONVERT_TZ(NOW(),'SYSTEM','-03:00')) as 'delay'
	FROM ord_order ord
    INNER JOIN cli_client cli ON ord.cli_id = cli.cli_id
    INNER JOIN usr_user usr ON ord.usr_id = usr.usr_id
    WHERE ord.usr_id = pUsrId 
    AND ord.ord_created_at < DATE_SUB(NOW(), INTERVAL 0 HOUR)
    AND ord.ord_created_at > DATE_SUB(NOW(), INTERVAL 24 HOUR)
    ORDER BY ord_status ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_GET_ORDER_CLIENT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_GET_ORDER_CLIENT`(
	IN pCode VARCHAR(8),
	IN pHash VARCHAR(45)
)
BEGIN
	SELECT 
	   ord_id as 'id',
       ord_status+0 as 'status',
       DATE_FORMAT(CONVERT_TZ(ord.ord_created_at,'SYSTEM','-03:00'), '%d %b, %Y %H:%i') as 'date',
       ord_total as 'total',
       ord_comment as 'comment'
	FROM ord_order ord
    INNER JOIN usr_user usr ON ord.usr_id = usr.usr_id
    INNER JOIN cli_client cli ON ord.cli_id = cli.cli_id
    WHERE usr.usr_code = pCode AND cli.cli_hash = pHash
    AND ord.ord_status < 4
    ORDER BY ord.ord_id DESC
    LIMIT 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_GET_ORDER_CLIENT_DETAIL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_GET_ORDER_CLIENT_DETAIL`(
	IN pCode VARCHAR(8),
	IN pHash VARCHAR(45)
)
BEGIN
	SELECT 
	   pxo_id as 'id',
       pro.pro_name as 'name',
       pxo.pxo_quantity as 'quantity',
       pxo.pxo_total as 'total'
	FROM ord_order ord
    INNER JOIN usr_user usr ON ord.usr_id = usr.usr_id
    INNER JOIN cli_client cli ON ord.cli_id = cli.cli_id
    INNER JOIN pxo_proxord pxo ON ord.ord_id = pxo.ord_id
    INNER JOIN pro_product pro ON pxo.pro_id = pro.pro_id
    WHERE usr.usr_code = pCode AND cli.cli_hash = pHash
    AND ord.ord_id IN (SELECT MAX(ord2.ord_id) FROM ord_order ord2 WHERE ord2.cli_id = cli.cli_id AND ord2.usr_id = usr.usr_id)
    ORDER BY pxo.pxo_id ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_GET_ORDER_DETAIL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_GET_ORDER_DETAIL`(
	IN pOrdId INT
)
BEGIN
	SELECT 
	   pxo_id as 'id',
       pro.pro_name as 'name',
       pxo.pxo_quantity as 'quantity',
       pxo.pxo_total as 'total'
	FROM ord_order ord
    INNER JOIN usr_user usr ON ord.usr_id = usr.usr_id
    INNER JOIN cli_client cli ON ord.cli_id = cli.cli_id
    INNER JOIN pxo_proxord pxo ON ord.ord_id = pxo.ord_id
    INNER JOIN pro_product pro ON pxo.pro_id = pro.pro_id
    WHERE ord.ord_id = pOrdId
    ORDER BY pxo.pxo_id ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_GET_PRODUCT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_GET_PRODUCT`(
	IN pUsrId INT,
    IN pMenId INT,
    IN pCatId INT,
    IN pProId INT
)
BEGIN   

    /* Return */
	SELECT 
        pro.pro_name as 'name',
        pro.pro_price as 'price',
        pro.pro_manyPrices as 'manyPrices',
		CASE WHEN (pro.pro_enable) THEN 1 ELSE 0 END as 'enable',
        (
			SELECT GROUP_CONCAT(men_id)
			FROM pxm_proxmen
			WHERE usr_id = pUsrId AND pro_id = pProId
        ) as 'menId',
        pxm.cat_id as 'catId',
        pro.pro_excerpt as 'excerpt',
        pro.pro_type+0 as 'type',
        CASE WHEN (pro.pro_delivery) THEN 1 ELSE 0 END as 'delivery',
        pro_image as 'image'
	FROM pro_product  pro
    INNER JOIN pxm_proxmen pxm ON pxm.pro_id = pro.pro_id
	WHERE pxm.men_id = pMenId AND pxm.cat_id = pCatId AND pro.pro_id = pProId;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_GET_PRODUCTS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_GET_PRODUCTS`(
	IN pUsrId INT,
    IN pMenId INT,
    IN pCatId INT
)
BEGIN   

    
	SELECT 
		pro.pro_id as 'id',
        pxm.pxm_id as 'pxmId',
        pxm_order as 'order',
		pro_name as 'name',
		CASE WHEN (cat_manyPrices<>'' AND NOT pro_manyPrices IS NULL) THEN pro_manyPrices ELSE pro_price END as 'price',
		case when (pxm_enable) then 1 else 0 end 'enable',
		pro.pro_excerpt as 'excerpt',
        /* menu */
		men.men_id as 'menId',
		men_name as 'menu',
		/* category */
		cat.cat_id as 'catId',
		IF(cat_id_parent>0,CONCAT('-- ',cat_name),cat_name) as 'category',
        case when (pro_delivery) then 1 else 0 end 'delivery',
        case when (cat_enable) then 
			IF(cat.cat_id_parent>0,(select case when (cat2.cat_enable) then 1 else 0 end FROM cat_category cat2 WHERE cat2.cat_id = cat.cat_id_parent),1)
        else 0 end as 'catEnable'
	FROM pro_product pro
    INNER JOIN pxm_proxmen pxm ON pxm.pro_id = pro.pro_id
	INNER JOIN cat_category cat ON pxm.cat_id = cat.cat_id
    INNER JOIN men_menu men ON pxm.men_id = men.men_id
	WHERE cat.usr_id = pUsrId AND pro.usr_id = pUsrId AND pxm.usr_id = pUsrId
    AND (pMenId = 0 OR (pMenId > 0 AND pxm.men_id = pMenId))
	AND (pCatId = 0 OR (pCatId > 0 AND pxm.cat_id = pCatId))
	order by 
		men.men_id ASC,
        FN_GET_ORDER(cat.cat_id) ASC,
		pxm_order ASC;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_GET_PROFILE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_GET_PROFILE`(
	IN pUsrId INT
)
BEGIN
	SELECT 
	   usr_id as 'id',
       usr_email as 'email',
	   usr_firstName as 'firstName',
       usr_lastName as 'lastName',
       usr_company as 'company',
	   IFNULL(cou_id,0) as 'couId',
       IFNULL(sta_id,0) as 'staId',
       IFNULL(usr_city,'') as 'city',
	   IFNULL(usr_address,'') as 'address',
	   IFNULL(usr_zip_code,'') as 'zip',
	   IFNULL(usr_phone,'') as 'phone',
	   IFNULL(usr_website,'') as 'webSite',
       usr_avatar as 'avatar',
        usr_cost_shipping as 'costShipping',
	    usr_time_start_delivery as 'timeS',
        usr_time_end_delivery as 'timeE',
        CASE WHEN (usr_can_delivery) THEN 1 ELSE 0 END as 'canDelivery'
	FROM usr_user usr
	WHERE usr.usr_id = pUsrId;  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_GET_SETTINGS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_bin */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_GET_SETTINGS`()
BEGIN   

    
	SELECT 
		ads.ads_currency_code as 'currencyCode'
	FROM ads_admin_settings  ads
	WHERE ads_id = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_GET_SETTING_COST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_GET_SETTING_COST`(
	IN pUsrId INT
)
BEGIN   

	SELECT 
		cos_id as 'id',
        cos_quantity as 'quantity',
        cos_cost as 'cost',
        cos_url as 'url'
    FROM cos_costqr
    WHERE cos_enable=1;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_GET_SETTING_LAST_BUY` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_GET_SETTING_LAST_BUY`(
	IN pUsrId INT
)
BEGIN   

	DECLARE vCompany VARCHAR(45);
	DECLARE vCouId INT;
	DECLARE vState VARCHAR(45);
	DECLARE vCity VARCHAR(45);
	DECLARE vAddress VARCHAR(255);
	DECLARE vZip INT;
    DECLARE vLastDate VARCHAR(45);
    DECLARE vQuantity INT;

	SELECT 
		usr_company,
		usr.cou_id,
		(SELECT sta_name FROM sta_state sta2 WHERE sta2.cou_id = usr.cou_id AND sta2.sta_id = usr.sta_id),
		IFNULL(usr_city,''),
		IFNULL(usr_address,''),
		IFNULL(usr_zip_code,'') 
	INTO
		vCompany,
        vCouId,
        vState,
        vCity,
        vAddress,
        vZip
	FROM usr_user usr
	WHERE usr.usr_id = pUsrId; 
    
	SELECT 
		DATE_FORMAT(buy_entered, '%d %b, %Y'),
		buy_quantity
	INTO
		vLastDate,
        vQuantity
	FROM buy_buyqr buy
	WHERE buy.usr_id = pUsrId AND buy.buy_status=1
    ORDER BY buy.buy_id DESC
    LIMIT 1; 
    
    
	SELECT 
		vCompany as 'company',
        vCouId as 'couId',
        vState as 'state',
        vCity as 'city',
        vAddress as 'address',
        vZip as 'zip',
        vLastDate as 'lastDate',
        vQuantity as 'lastQuantity';
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_INSERT_ALERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_bin */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_INSERT_ALERT`(
	IN pUsrIdOwner INT,
	IN pUsrId INT,
	IN pAleId INT,
    IN pMobileSend BIT
)
BEGIN
    DECLARE vError INT;
    DECLARE vMsg VARCHAR(255);
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
		GET CURRENT DIAGNOSTICS CONDITION 1 vMsg = MESSAGE_TEXT;
		ROLLBACK;
    END;
    START TRANSACTION;
	SET vError = 0;
	
	IF ((SELECT COUNT(*) FROM axu_alexusr WHERE usr_id = pUsrId AND ale_id = pAleId AND axu_viewed = 0 AND axu_enabled = 1) > 0) THEN
		UPDATE axu_alexusr
		SET axu_entered = NOW(),
        axu_sent = IF(pMobileSend=1,0,1)
		WHERE usr_id_owner = pUsrIdOwner AND usr_id = pUsrId AND ale_id = pAleId AND axu_viewed = 0 AND axu_enabled = 1;
	ELSE
		INSERT INTO axu_alexusr (usr_id_owner, usr_id, ale_id, axu_viewed, axu_sent, axu_entered, axu_enabled) VALUES (pUsrIdOwner, pUsrId, pAleId, 0, IF(pMobileSend=1,0,1), NOW(), 1);
	END IF;
	
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_INSERT_CATEGORY` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_INSERT_CATEGORY`(
	IN pUsrId INT,
	IN pName VARCHAR(255),
    IN pExcerpt VARCHAR(2000),
    IN pManyPrices VARCHAR(100),
	IN pEnable INT,
    IN pCatIdParent INT,
    IN pBackColor VARCHAR(8),
    IN pFontColor INT
)
BEGIN
    DECLARE vError INT DEFAULT 0;
    DECLARE vMsg VARCHAR(255);
	DECLARE vId INT DEFAULT 0;
    DECLARE vOrderParent INT DEFAULT 1;
    DECLARE vOrder INT DEFAULT 0;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
		GET CURRENT DIAGNOSTICS CONDITION 1 vMsg = MESSAGE_TEXT;
        SELECT 301 as 'code', vMsg as message, vId AS 'id';
		ROLLBACK;
    END;
    START TRANSACTION;

	IF (pCatIdParent>0) THEN
		SET vOrderParent = (SELECT cat_order FROM cat_category WHERE usr_id = pUsrId AND cat_id = pCatIdParent);
    END IF;
	SET vOrder = (SELECT IFNULL(MAX(cat_order),0) FROM cat_category WHERE usr_id = pUsrId AND cat_id_parent = pCatIdParent)+1;
	INSERT INTO `cat_category`
	(
    `usr_id`,
    `cat_order_parent`,
    `cat_order`,
    `cat_name`,
    `cat_excerpt`,
    `cat_manyPrices`,
	`cat_enable`,
    `cat_id_parent`,
    `cat_back_color`,
    `cat_font_color`)
	VALUES
	(
    pUsrId,
    vOrderParent,
    vOrder,
    pName,
    pExcerpt,
    IF(pManyPrices='',NULL,pManyPrices),
	pEnable,
    pCatIdParent,
    pBackColor,
    pFontColor);
    SET vId = LAST_INSERT_ID();
	
	
	IF (vId = 0) THEN
		ROLLBACK;
		SELECT 
			vError as 'code',
			vMsg as 'message';
	ELSE
		COMMIT;
		SELECT 
			vError as 'code',
			vMsg as 'message',
			vId as 'id';
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_INSERT_MENU` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_INSERT_MENU`(
	IN pUsrId INT,
	IN pName VARCHAR(255),
	IN pTimeS INT,
    IN pTimeE INT,
	IN pEnable INT,
    IN pDays VARCHAR(7)
)
BEGIN
    DECLARE vError INT DEFAULT 0;
    DECLARE vMsg VARCHAR(255);
	DECLARE vId INT DEFAULT 0;
    DECLARE vOrder INT DEFAULT 0;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
		GET CURRENT DIAGNOSTICS CONDITION 1 vMsg = MESSAGE_TEXT;
        SELECT 301 as 'code', vMsg as message, vId AS 'id';
		ROLLBACK;
    END;
    START TRANSACTION;

	INSERT INTO `men_menu`
	(
    `usr_id`,
    `men_name`,
	`men_time_start`,
    `men_time_end`,
	`men_enable`,
    `men_days`)
	VALUES
	(
    pUsrId,
    pName,
    pTimeS,
    pTimeE,
	pEnable,
    pDays);
    SET vId = LAST_INSERT_ID();
	
	
	IF (vId = 0) THEN
		ROLLBACK;
		SELECT 
			vError as 'code',
			vMsg as 'message';
	ELSE
		COMMIT;
		SELECT 
			vError as 'code',
			vMsg as 'message',
			vId as 'id';
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_INSERT_PRODUCT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_INSERT_PRODUCT`(
	IN pUsrId INT,
    IN pArrMenId VARCHAR(1000),
    IN pCatId INT,
	IN pName VARCHAR(255),
    IN pPrice FLOAT,
    IN pManyPrices VARCHAR(20),
    IN pExcerpt VARCHAR(2000),
    IN pType INT,
	IN pEnable INT,
    IN pDelivery INT,
    IN pImage VARCHAR(70)
)
BEGIN
    DECLARE vError INT DEFAULT 0;
    DECLARE vMsg VARCHAR(255);
	DECLARE vId INT DEFAULT 0;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
		GET CURRENT DIAGNOSTICS CONDITION 1 vMsg = MESSAGE_TEXT;
        SELECT 301 as 'code', vMsg as message, vId AS 'id';
		ROLLBACK;
    END;
    START TRANSACTION;

	UPDATE usr_user SET usr_is_change=1 WHERE usr_id=pUsrId;

	INSERT INTO `pro_product`
	(
    `usr_id`,
    `pro_name`,
	`pro_price`,
    `pro_manyPrices`,
    `pro_excerpt`,
    `pro_type`,
    `pro_delivery`)
	VALUES
	(
    pUsrId,
    pName,
	pPrice,
    IF(pManyPrices='',NULL,pManyPrices),
    pExcerpt,
    pType,
    pDelivery);
	SET vId = LAST_INSERT_ID();
    
	/* multiple menues */
    INSERT INTO pxm_proxmen (usr_id, men_id, cat_id, pro_id, pxm_enable, pxm_order)
		SELECT 
			pUsrId,
			men.men_id,
            pCatId,
			vId,
            pEnable,
            (SELECT IFNULL(COUNT(*),0) FROM pxm_proxmen WHERE usr_id = pUsrId AND men_id = men.men_id AND cat_id = pCatId)+1
		FROM men_menu men
		WHERE FIND_IN_SET(men.men_id,pArrMenId);
            
	/* Return */
	IF (vId = 0) THEN
		ROLLBACK;
		SELECT 
			vError as 'code',
			vMsg as 'message';
	ELSE
		COMMIT;
		SELECT 
			vError as 'code',
			vMsg as 'message',
			vId as 'id';
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_LOGIN_USER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_LOGIN_USER`(
	IN pEmailUser VARCHAR(100),
	IN pPassword VARCHAR(255)
)
BEGIN
	DECLARE vUsrId INT DEFAULT 0;
    DECLARE vUsrPassword VARCHAR(255)  DEFAULT NULL;
    
    SELECT usr_id, usr_password
    INTO vUsrId, vUsrPassword
    FROM usr_user usr
    WHERE LOWER(usr.usr_email) = LOWER(pEmailUser) AND usr.usr_status IN (1,2,3);
    
    IF (vUsrId>0 AND vUsrPassword = MD5(pPassword)) THEN
		UPDATE usr_user SET usr_last_login=CURRENT_TIMESTAMP WHERE usr_id=vUsrId;
    END IF;
    
    SELECT 
		IF(vUsrPassword <> MD5(pPassword), 200, IF(vwL.status=1, 207, 0)) as 'code',
		vwL.*,
        IF(vwL.status=3, 1, 0) as 'blockAccount'
    FROM vw_login vwL
    WHERE vwL.id = vUsrId;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_LOGIN_USER_FAST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_LOGIN_USER_FAST`(
	IN pUsrId INT
)
BEGIN

    
    SELECT 
		0 as 'code',
		vwL.*,
        IF(usr.usr_status=3, 1, 0) as 'blockAccount'
    FROM usr_user usr
    LEFT OUTER JOIN vw_login vwL ON vwL.id = usr.usr_id
    WHERE usr.usr_id = pUsrId AND usr.usr_status IN (1,2,3);
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_MAKE_ORDER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_MAKE_ORDER`(
	IN pCode VARCHAR(8),
	IN pHash VARCHAR(45),
	IN pArrOrder TEXT,
	IN pAddress VARCHAR(100),
    IN pZip VARCHAR(5),
    IN pTotal FLOAT,
    IN pComment VARCHAR(200)
)
BEGIN
    DECLARE vError INT DEFAULT 0;
    DECLARE vMsg VARCHAR(255);
    DECLARE vId INT DEFAULT 0;
	DECLARE vCliId INT DEFAULT 0;
    DECLARE vUsrId INT DEFAULT 0;
    DECLARE vCxuId INT DEFAULT 0;
    DECLARE vOrdId INT DEFAULT 0;
    
    DECLARE vLengthObj INT DEFAULT 0;
    DECLARE vCount INT DEFAULT 0;
    DECLARE vArrOrder TEXT;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
		GET CURRENT DIAGNOSTICS CONDITION 1 vMsg = MESSAGE_TEXT;
        SELECT 301 as 'code', vMsg as message, vId AS 'id';
		ROLLBACK;
    END;
    START TRANSACTION;
    
	SELECT usr_id
	INTO vUsrId
    FROM usr_user 
    WHERE usr_code like pCode;
    
	SELECT IFNULL(cli_id,0)
    INTO vCliId
    FROM cli_client 
    WHERE cli_hash = pHash;

	IF (vCliId>0 AND vUsrId>0) THEN    
		SELECT IFNULL(cxu_id,0)
        INTO vCxuId
        FROM cxu_clixusr 
        WHERE usr_id = vUsrId AND cli_id = vCliId;
        
		IF (vCxuId = 0) THEN
			INSERT INTO `cxu_clixusr`
			(
				`usr_id`,
                `cli_id`
			)
			VALUES
			(
				vUsrId,
				vCliId
			);
            SET vCxuId = LAST_INSERT_ID();
        END IF;
        
		INSERT INTO ord_order (usr_id, cli_id, cxu_id, ord_total, ord_address, ord_zip, ord_comment) 
		VALUES (vUsrId, vCliId, vCxuId, pTotal, pAddress, pZip, pComment);
        SET vOrdId = LAST_INSERT_ID();
        
        SET vArrOrder = replace(CONVERT(pArrOrder USING UTF8), '\n', '\\n');
        SELECT json_length(vArrOrder) into vLengthObj;
        WHILE vCount < vLengthObj DO
			INSERT INTO pxo_proxord (
				pro_id,
				ord_id,
				pxo_price,
				pxo_quantity,
				pxo_total
			)
			SELECT 
				tt.col_id,
				vOrdId, 
				tt.col_price, 
				tt.col_quantity,
				tt.col_total
			FROM (
			SELECT 
					json_extract(vArrOrder, concat('$[', vCount, '].id')) as col_id, 
					json_extract(vArrOrder, concat('$[', vCount, '].priceUnit')) as col_price,
					json_extract(vArrOrder, concat('$[', vCount, '].quantity')) as col_quantity,
					json_extract(vArrOrder, concat('$[', vCount, '].price')) as col_total
			) tt;
        
			set vCount = vCount + 1;
		END WHILE;
        
		SET vId = LAST_INSERT_ID();
	ELSE
		SET vError=301;
	END IF;

	
	IF (vId = 0 OR vError>0) THEN
		ROLLBACK;
		SELECT 
			vError as 'code',
			vMsg as 'message';
	ELSE
		COMMIT;
		SELECT 
			vError as 'code',
			vMsg as 'message',
			vId as 'idOrder',
            vUsrId as 'usrId';
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_PAYMENT_REQUEST` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_PAYMENT_REQUEST`(
	IN pUsrId INT,
    IN pTransactionAmount FLOAT,
    IN pQuantity INT
)
BEGIN
    DECLARE vError INT DEFAULT 0;
    DECLARE vMsg VARCHAR(255);
	DECLARE vId INT DEFAULT 0;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
		GET CURRENT DIAGNOSTICS CONDITION 1 vMsg = MESSAGE_TEXT;
        SELECT 301 as 'code', vMsg as message, vId AS 'id';
		ROLLBACK;
    END;
    START TRANSACTION;

	SET vId = IFNULL((SELECT buy_id FROM buy_buyqr WHERE usr_id = pUsrId AND buy_status = 1),0);
    
	IF (vId=0) THEN
		INSERT INTO `buy_buyqr`
		(
		`usr_id`,
		`buy_transaction_amount`,
		`buy_quantity`,
		`buy_description`)
		VALUES
		(
		pUsrId,
		pTransactionAmount,
		pQuantity,
		CONCAT('Pack de ',pQuantity,' calcomanias plastificadas con envÃ­o incluido.')
		);
		SET vId = LAST_INSERT_ID();
	ELSE
		UPDATE `buy_buyqr`
        SET
			`buy_transaction_amount` = pTransactionAmount,
            `buy_quantity` = pQuantity,
            `buy_description` = CONCAT('Pack de ',pQuantity,' calcomanias plastificadas con envÃ­o incluido.')
		WHERE buy_id = vId;
    END IF;
    
	
	IF (vId = 0) THEN
		ROLLBACK;
		SELECT 
			vError as 'code',
			vMsg as 'message';
	ELSE
		COMMIT;
		SELECT 
			vError as 'code',
			vMsg as 'message',
			vId as 'id';
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_READ_ALERT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_bin */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_READ_ALERT`(
	IN pUsrId INT,
	IN pAleId INT
)
BEGIN
    DECLARE vError INT;
    DECLARE vMsg VARCHAR(255);
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
		GET CURRENT DIAGNOSTICS CONDITION 1 vMsg = MESSAGE_TEXT;
		ROLLBACK;
    END;
    START TRANSACTION;
	SET vError = 0;
	
    UPDATE axu_alexusr
    SET axu_viewed = 1
    WHERE usr_id = pUsrId AND ale_id = pAleId AND axu_viewed = 0;
	
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_REFRESH_MENU` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_REFRESH_MENU`(
	IN pUsrId INT
)
BEGIN
	UPDATE usr_user SET usr_is_change = 0 WHERE usr_id = pUsrId;
    
	SELECT 
	   usr_code as 'code'
	FROM usr_user usr
	WHERE usr.usr_id = pUsrId;  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_REMOVE_CATEGORY` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_REMOVE_CATEGORY`(
	IN pUsrId INT,
    IN pCatId INT
)
BEGIN   
    DECLARE vError INT;
    DECLARE vMsg VARCHAR(255);
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
		GET CURRENT DIAGNOSTICS CONDITION 1 vMsg = MESSAGE_TEXT;
        SELECT 301 as 'code', vMsg as message;
		ROLLBACK;
    END;
    START TRANSACTION;
	SET vError = 0;

	UPDATE usr_user SET usr_is_change=1 WHERE usr_id=pUsrId;
    
	DELETE FROM pxm_proxmen
	WHERE usr_id = pUsrId 
    AND (cat_id IN (SELECT cat_id FROM cat_category WHERE usr_id = pUsrId AND cat_id_parent = pCatId) OR cat_id = pCatId);

	DELETE FROM pro_product
	WHERE usr_id = pUsrId AND NOT pro_id IN (SELECT pxm.pro_id FROM pxm_proxmen pxm WHERE pxm.usr_id = pUsrId);
    
	DELETE FROM cat_category
	WHERE usr_id = pUsrId AND cat_id_parent = pCatId;
    
	DELETE FROM cat_category
	WHERE usr_id = pUsrId AND cat_id = pCatId;
	
    COMMIT;
	
	SELECT 
		vError as 'code',
		vMsg as 'message';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_REMOVE_MEMBER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_REMOVE_MEMBER`(
	IN pUsrId INT,
    IN pMemId INT
)
BEGIN   
    DECLARE vError INT;
    DECLARE vMsg VARCHAR(255);
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
		GET CURRENT DIAGNOSTICS CONDITION 1 vMsg = MESSAGE_TEXT;
        SELECT 301 as 'code', vMsg as message;
		ROLLBACK;
    END;
    START TRANSACTION;
	SET vError = 0;
	
	UPDATE usr_user
    SET usr_status = 4
	WHERE usr_id = pMemId;
	
    COMMIT;
	
	SELECT 
		vError as 'code',
		vMsg as 'message';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_REMOVE_MENU` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_REMOVE_MENU`(
	IN pUsrId INT,
    IN pMenId INT
)
BEGIN   
    DECLARE vError INT;
    DECLARE vMsg VARCHAR(255);
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
		GET CURRENT DIAGNOSTICS CONDITION 1 vMsg = MESSAGE_TEXT;
        SELECT 301 as 'code', vMsg as message;
		ROLLBACK;
    END;
    START TRANSACTION;
	SET vError = 0;
	
    UPDATE usr_user SET usr_is_change=1 WHERE usr_id=pUsrId;
    
	DELETE FROM pxm_proxmen
	WHERE men_id = pMenId AND usr_id = pUsrId;

	DELETE FROM pro_product
	WHERE usr_id = pUsrId AND NOT pro_id IN (SELECT pxm.pro_id FROM pxm_proxmen pxm WHERE pxm.usr_id = pUsrId);
    
	DELETE FROM men_menu
	WHERE men_id = pMenId AND usr_id = pUsrId;
	
    COMMIT;
	
	SELECT 
		vError as 'code',
		vMsg as 'message';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_REMOVE_PRODUCT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_REMOVE_PRODUCT`(
	IN pUsrId INT,
    IN pMenId INT,
    IN pCatId INT,
    IN pProId INT
)
BEGIN   
    DECLARE vError INT;
    DECLARE vMsg VARCHAR(255);
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
		GET CURRENT DIAGNOSTICS CONDITION 1 vMsg = MESSAGE_TEXT;
        SELECT 301 as 'code', vMsg as message;
		ROLLBACK;
    END;
    START TRANSACTION;
	SET vError = 0;
	
    UPDATE usr_user SET usr_is_change=1 WHERE usr_id=pUsrId;
  
  	DELETE FROM pxm_proxmen
	WHERE usr_id = pUsrId AND men_id = pMenId AND cat_id = pCatId AND pro_id = pProId;
    
    IF ((SELECT COUNT(*) FROM pxm_proxmen WHERE usr_id = pUsrId AND pro_id = pProId)=0) THEN
		DELETE FROM pro_product
		WHERE usr_id = pUsrId AND pro_id = pProId;
    END IF;
	
    COMMIT;
	
	SELECT 
		vError as 'code',
		vMsg as 'message';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_REMOVE_USER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_REMOVE_USER`(
	IN pEmail VARCHAR(45)
)
BEGIN
    DECLARE vMsg VARCHAR(255);
	DECLARE vId INT;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
		GET CURRENT DIAGNOSTICS CONDITION 1 vMsg = MESSAGE_TEXT;
		ROLLBACK;
        SELECT vMsg as message;
    END;
    START TRANSACTION;
	SET vId = (SELECT usr_id FROM usr_user WHERE usr_email = pEmail);
	
	IF (vId > 0) THEN
		DELETE FROM axu_alexusr WHERE usr_id = vId;
        DELETE FROM pxm_proxmen WHERE usr_id = vId;
        DELETE FROM pro_product WHERE usr_id = vId;
        DELETE FROM cat_category WHERE usr_id = vId;
        DELETE FROM pxo_proxord WHERE ord_id IN (SELECT ord_id FROM ord_order WHERE usr_id = vId);
        DELETE FROM ord_order WHERE usr_id = vId;
        DELETE FROM men_menu WHERE usr_id = vId;
		DELETE FROM usr_user WHERE usr_id = vId;            
	END IF;
	
    COMMIT;
	SELECT 0 as 'code';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_RESET_PASS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_RESET_PASS`(
	IN pUsrId INT,
    IN pMemId INT,
    IN pPassAdmin VARCHAR(255),
    IN pNewPass VARCHAR(255)
)
BEGIN   
    DECLARE vError INT;
    DECLARE vMsg VARCHAR(255);
    DECLARE vCount INT DEFAULT 0;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
		GET CURRENT DIAGNOSTICS CONDITION 1 vMsg = MESSAGE_TEXT;
        SELECT 301 as 'code', vMsg as message;
		ROLLBACK;
    END;
    START TRANSACTION;
	SET vError = 0;
	
    SET vCount = (SELECT count(*) FROM usr_user WHERE usr_password = MD5(pPassAdmin) AND usr_id = pUsrId);
    
    IF (vCount=1) THEN
		UPDATE usr_user
		SET usr_password = MD5(pNewPass)
		WHERE usr_id = pMemId;
	ELSE
		SET vError = 208;
    END IF;
	
    COMMIT;
	
	SELECT 
		vError as 'code',
		vMsg as 'message';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_SIGN_UP` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_SIGN_UP`(
	IN pFirstName VARCHAR(50),
    IN pLastName VARCHAR(50),
	IN pEmail VARCHAR(45),
	IN pPassword VARCHAR(255)
)
BEGIN
    DECLARE vError INT DEFAULT 0;
    DECLARE vMsg VARCHAR(255);
	DECLARE vId INT DEFAULT 0;
    DECLARE vUsrCount INT;
    DECLARE vHash VARCHAR(45);
    DECLARE vName VARCHAR(100) DEFAULT '';
    DECLARE vCountry INT DEFAULT 1;
    DECLARE vCount INT DEFAULT 2;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
		GET CURRENT DIAGNOSTICS CONDITION 1 vMsg = MESSAGE_TEXT;
        SELECT 301 as 'code', vMsg as message, vId AS 'id';
		ROLLBACK;
    END;
    START TRANSACTION;
	SET vUsrCount = (SELECT COUNT(1) FROM usr_user WHERE usr_email = pEmail AND usr_status < 4); 

	IF (vUsrCount=0) THEN            
		SET vName = CONCAT(REPLACE(pFirstName," ",""),REPLACE(pLastName," ",""));
		SET vUsrCount = (SELECT COUNT(1) FROM usr_user WHERE usr_name = vName AND usr_status < 4);
		WHILE(vUsrCount > 0) DO
			SET vName = CONCAT(REPLACE(pFirstName," ",""),REPLACE(pLastName," ",""),vCount);
			SET vUsrCount = (SELECT COUNT(1) FROM usr_user WHERE usr_name = vName AND usr_status < 4);
			SET vCount = vCount + 1;
		END WHILE;

		INSERT INTO usr_user (usr_name, usr_type, usr_firstname, usr_lastname, cou_id, usr_password, usr_email, usr_avatar, usr_status, usr_role, usr_updated_at, usr_created_at) 
		VALUES (vName, 1, pFirstName, pLastName, vCountry, MD5(pPassword), pEmail, NULL, 1, 1, NOW(), NOW());
		SET vId = LAST_INSERT_ID();
		IF (vId >0) THEN
			INSERT INTO `men_menu`
			(
				`usr_id`,
				`men_name`
			)
			VALUES
			(
				vId,
				'Principal'
			);
			
			SET vHash = (SELECT MD5(CONCAT(usr_password,NOW())) FROM usr_user WHERE usr_id = vId);
			
			UPDATE usr_user
			SET usr_hash = vHash,
				usr_code =  lpad(conv(floor(rand()*pow(36,8)), 10, 36), 8, 0)
			WHERE usr_id = vId;
			
			
			CALL SP_INSERT_ALERT(vId, vId, 1, 0); 
		END IF;
	ELSE
		SET vError = 302; 
	END IF;

	
	IF (vId = 0 OR vError>0) THEN
		ROLLBACK;
		SELECT 
			vError as 'code',
			vMsg as 'message';
	ELSE
		COMMIT;
		SELECT 
			vError as 'code',
			vMsg as 'message',
			vwL.*
		FROM vw_login vwL
		WHERE vwL.id = vId;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_SIGN_UP_CLIENT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_SIGN_UP_CLIENT`(
	IN pCode VARCHAR(8),
	IN pEmail VARCHAR(45),
	IN pName VARCHAR(100),
	IN pPhone VARCHAR(45),
    IN pAddress VARCHAR(100),
	IN pZip VARCHAR(5)
)
BEGIN
    DECLARE vError INT DEFAULT 0;
    DECLARE vMsg VARCHAR(255);
	DECLARE vId INT DEFAULT 0;
    DECLARE vUsrId INT DEFAULT 0;
    DECLARE vCxuId INT DEFAULT 0;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
		GET CURRENT DIAGNOSTICS CONDITION 1 vMsg = MESSAGE_TEXT;
        SELECT 301 as 'code', vMsg as message, vId AS 'id';
		ROLLBACK;
    END;
    START TRANSACTION;
    
	SELECT usr_id
	INTO vUsrId
    FROM usr_user 
    WHERE usr_code like pCode;
    
	SELECT IFNULL(cli_id,0)
    INTO vId
    FROM cli_client 
    WHERE cli_email = pEmail;

	IF (vId=0) THEN 
		IF (pName='' OR pPhone='' OR pAddress='' OR pZip='') THEN 
			SET vError=210;
        ELSE
			INSERT INTO cli_client (cli_email, cli_name, cli_phone, cli_address, cli_zip, cli_hash, cli_created_at, cli_enable) 
			VALUES (pEmail, pName, pPhone, pAddress, pZip, MD5(CONCAT(pEmail,NOW())), NOW(), 1);
			SET vId = LAST_INSERT_ID();
			
			IF (vId >0) THEN
				INSERT INTO `cxu_clixusr`
				(
					`usr_id`,
					`cli_id`
				)
				VALUES
				(
					vUsrId,
					vId
				);
			END IF;
        END IF;
	ELSE
		SELECT IFNULL(cxu_id,0)
		INTO vCxuId
		FROM cxu_clixusr 
		WHERE usr_id = vUsrId AND cli_id = vId;
        
		IF (vCxuId = 0) THEN
			INSERT INTO `cxu_clixusr`
			(
				`usr_id`,
                `cli_id`
			)
			VALUES
			(
				vUsrId,
				vId
			);
		END IF;
	END IF;

	
	IF (vId = 0 OR vError>0) THEN
		ROLLBACK;
		SELECT 
			vError as 'code',
			vMsg as 'message';
	ELSE
		COMMIT;
		SELECT 
			vError as 'code',
			vMsg as 'message',
			vwL.*
		FROM vw_login_client vwL
		WHERE vwL.id = vId;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_UPDATE_ACCOUNT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_bin */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_UPDATE_ACCOUNT`(
	IN pUsrId INT,
	IN pemail VARCHAR(45),
	IN ppass VARCHAR(45),
	IN ppassN VARCHAR(45),
	IN ppassR VARCHAR(45)
)
BEGIN
	DECLARE vError INT;
    DECLARE vMsg VARCHAR(255);
    DECLARE vUsrId INT;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
		GET CURRENT DIAGNOSTICS CONDITION 1 vMsg = MESSAGE_TEXT;
        SELECT 301 as 'code', vMsg as message;
		ROLLBACK;
    END;
    START TRANSACTION;
	SET vError = 0;
	SET vUsrId = 0;
	
	IF ((SELECT COUNT(*) FROM usr_user WHERE usr_id = pUsrId AND usr_status=2 AND usr_password=MD5(ppass))=0) THEN
		SET vError = 200;
		SET vMsg = 'Correo electronico o contraseña incorrecta.';
	ELSE
		IF (ppassN<>ppassR) THEN
			SET vError = 201;
			SET vMsg = 'Las contraseñas ingresadas no coinciden.';
		ELSE
			UPDATE usr_user
			SET
			   usr_password = MD5(ppassN)
			WHERE usr_id = pUsrId AND usr_status=2;
			
			SET vUsrId = pUsrId;
		END IF;
	END IF;
	
    COMMIT;
	
	SELECT 
		vError as 'code',
		vMsg as 'message',
		vUsrId as 'id';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_UPDATE_CATEGORY` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_UPDATE_CATEGORY`(
	IN pUsrId INT,
	IN pCatId INT,
	IN pName VARCHAR(255),
    IN pExcerpt VARCHAR(2000),
    IN pManyPrices VARCHAR(100),
	IN pEnable INT,
    IN pCatIdParent INT,
	IN pBackColor VARCHAR(8),
    IN pFontColor INT
)
BEGIN
    DECLARE vError INT;
    DECLARE vMsg VARCHAR(255);
    DECLARE vOrderParent INT DEFAULT 1;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
		GET CURRENT DIAGNOSTICS CONDITION 1 vMsg = MESSAGE_TEXT;
        SELECT 301 as 'code', vMsg as message;
		ROLLBACK;
    END;
    START TRANSACTION;
	SET vError = 0;

	UPDATE usr_user SET usr_is_change=1 WHERE usr_id=pUsrId;
	IF (pCatIdParent>0) THEN
		SET vOrderParent = (SELECT cat_order FROM cat_category WHERE usr_id = pUsrId AND cat_id = pCatIdParent);
    END IF;
    
	UPDATE `cat_category`
	SET
	`cat_name` = pName,
    `cat_excerpt` = pExcerpt,
	`cat_enable` = pEnable,
    `cat_manyPrices` = IF(pManyPrices='',NULL,pManyPrices),
    `cat_id_parent` = pCatIdParent,
    `cat_back_color` = pBackColor,
    `cat_font_color` = pFontColor,
    `cat_order_parent` = vOrderParent
	WHERE cat_id = pCatId AND usr_id = pUsrId;
    
    COMMIT;
	
	SELECT 
		vError as 'code',
		vMsg as 'message';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_UPDATE_CLIENT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_UPDATE_CLIENT`(
	IN pCode VARCHAR(8),
    IN pEmail VARCHAR(45),
	IN pName VARCHAR(100),
	IN pPhone VARCHAR(45),
    IN pAddress VARCHAR(100),
	IN pZip VARCHAR(5)
)
BEGIN
    DECLARE vError INT DEFAULT 0;
    DECLARE vMsg VARCHAR(255);
	DECLARE vId INT DEFAULT 0;
    DECLARE vUsrId INT DEFAULT 0;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
		GET CURRENT DIAGNOSTICS CONDITION 1 vMsg = MESSAGE_TEXT;
        SELECT 301 as 'code', vMsg as message, vId AS 'id';
		ROLLBACK;
    END;
    START TRANSACTION;
    
	SELECT usr_id
	INTO vUsrId
    FROM usr_user 
    WHERE usr_code like pCode;
    
	SELECT IFNULL(cli_id,0)
    INTO vId
    FROM cli_client 
    WHERE cli_email = pEmail;

	IF (vId>0) THEN   
		IF (pName='' OR pPhone='' OR pAddress='' OR pZip='') THEN 
			SET vError=211;
        ELSE
			UPDATE cli_client
			SET
				cli_name = pName,
				cli_phone = pPhone,
				cli_address = pAddress,
				cli_zip = pZip
			WHERE cli_id = vId;
		END IF;
	END IF;

	
	IF (vId = 0 OR vError>0) THEN
		ROLLBACK;
		SELECT 
			vError as 'code',
			vMsg as 'message';
	ELSE
		COMMIT;
		SELECT 
			vError as 'code',
			vMsg as 'message',
			vwL.*
		FROM vw_login_client vwL
		WHERE vwL.id = vId;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_UPDATE_MEMBER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_UPDATE_MEMBER`(
	IN pUsrId INT,
    IN pMemId INT,
    IN pFirstName VARCHAR(50),
    IN pLastName VARCHAR(50),
    IN pCompany VARCHAR(45),
    IN pEmail VARCHAR(45),
    IN pCouId INT,
	IN pStaId INT,
	IN pCity VARCHAR(45),
	IN pAddress VARCHAR(255),
	IN pZip INT,
	IN pPhone VARCHAR(32),
	IN pWebSite VARCHAR(255),
    IN pCodeMenu VARCHAR(8),
    IN pAvatar VARCHAR(255),
    IN pStatus INT
)
BEGIN
	DECLARE vError INT;
    DECLARE vMsg VARCHAR(255);
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
		GET CURRENT DIAGNOSTICS CONDITION 1 vMsg = MESSAGE_TEXT;
        SELECT 301 as 'code', vMsg as message;
		ROLLBACK;
    END;
    START TRANSACTION;
	SET vError = 0;

	UPDATE usr_user
	SET
		usr_firstname = pFirstName,
		usr_lastname = pLastName,
		usr_company = pCompany,
		usr_email = pEmail,
		cou_id = pCouId ,
		sta_id = pStaId ,
		usr_city = pCity,
		usr_address = pAddress,
		usr_zip_code = pZip ,
		usr_phone = pPhone ,
		usr_website = pWebSite,
		usr_code = IF(pCodeMenu<>'',pCodeMenu,usr_code),
        usr_status = pStatus
	WHERE usr_id = pMemId;

	IF (pAvatar='') THEN
		UPDATE usr_user
		SET usr_avatar = ''
		WHERE usr_id = pMemId;
	END IF;
    
	/* Return */
	COMMIT;
	SELECT 
		vError as 'code',
		vMsg as 'message',
		vwL.*
	FROM vw_login vwL
	WHERE vwL.id = pMemId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_UPDATE_MENU` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_UPDATE_MENU`(
	IN pUsrId INT,
	IN pMenId INT,
	IN pName VARCHAR(255),
	IN pTimeS INT,
    IN pTimeE INT,
	IN pEnable INT,
    IN pDays VARCHAR(7)
)
BEGIN
    DECLARE vError INT;
    DECLARE vMsg VARCHAR(255);
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
		GET CURRENT DIAGNOSTICS CONDITION 1 vMsg = MESSAGE_TEXT;
        SELECT 301 as 'code', vMsg as message;
		ROLLBACK;
    END;
    START TRANSACTION;
	SET vError = 0;

	UPDATE usr_user SET usr_is_change=1 WHERE usr_id=pUsrId;
    
	UPDATE `men_menu`
	SET
	`men_name` = pName,
    `men_time_start` = pTimeS,
    `men_time_end` = pTimeE,
	`men_enable` = pEnable,
    `men_days` = pDays
	WHERE men_id = pMenId AND usr_id = pUsrId;
    
    COMMIT;
	
	SELECT 
		vError as 'code',
		vMsg as 'message';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_UPDATE_PRODUCT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_UPDATE_PRODUCT`(
	IN pUsrId INT,
	IN pProId INT,
    IN pArrMenId VARCHAR(1000),
    IN pCatId INT,
	IN pName VARCHAR(255),
	IN pPrice FLOAT,
    IN pManyPrices VARCHAR(20),
    IN pExcerpt VARCHAR(2000),
    IN pType INT,
	IN pEnable INT,
    IN pDelivery INT,
    IN pImage VARCHAR(70)
)
BEGIN
    DECLARE vError INT DEFAULT 0;
    DECLARE vMsg VARCHAR(255);
    DECLARE vLengthObj INT DEFAULT 0;
    DECLARE vCount INT DEFAULT 1;
    DECLARE vMenId INT;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
		GET CURRENT DIAGNOSTICS CONDITION 1 vMsg = MESSAGE_TEXT;
        SELECT 301 as 'code', vMsg as message;
		ROLLBACK;
    END;
    START TRANSACTION;
	
	UPDATE usr_user SET usr_is_change=1 WHERE usr_id=pUsrId;
    
    SELECT COUNT_STR(pArrMenId,',')+1 
    INTO vLengthObj;
    
	DELETE FROM pxm_proxmen 
	WHERE usr_id = pUsrId 
		AND pro_id = pProId
        AND NOT FIND_IN_SET(men_id,pArrMenId);
        
    WHILE vCount <= vLengthObj DO
		SELECT SUBSTRING_INDEX(SUBSTRING_INDEX(pArrMenId, ',', vCount), ',', -1)
        INTO vMenId;
        
		IF ((SELECT COUNT(*) FROM pxm_proxmen WHERE usr_id = pUsrId AND pro_id = pProId AND men_id = vMenId AND cat_id = pCatId ) > 0) THEN
			UPDATE pxm_proxmen
            SET pxm_enable = pEnable
            WHERE usr_id = pUsrId AND pro_id = pProId AND men_id = vMenId;
		ELSE
			IF ((SELECT COUNT(*) FROM pxm_proxmen WHERE usr_id = pUsrId AND pro_id = pProId AND men_id = vMenId) > 0) THEN
				UPDATE pxm_proxmen
				SET 
					cat_id = pCatId,
					pxm_enable = pEnable
				WHERE usr_id = pUsrId AND pro_id = pProId AND men_id = vMenId; 
            ELSE
				INSERT INTO pxm_proxmen (usr_id, men_id, cat_id, pro_id, pxm_enable, pxm_order)
				SELECT 
					pUsrId,
					vMenId,
					pCatId,
					pProId,
					pEnable,
					(SELECT IFNULL(COUNT(*),0) FROM pxm_proxmen WHERE usr_id = pUsrId AND men_id = vMenId AND cat_id = pCatId)+1;
			END IF;
        END IF;
        
        set vCount = vCount + 1;
    END WHILE;
    
	UPDATE `pro_product`
	SET
	`pro_name` = pName,
	`pro_price` = pPrice,
    `pro_manyPrices` = IF(pManyPrices='',NULL,pManyPrices),
    `pro_excerpt` = pExcerpt,
    `pro_type` = pType,
    `pro_delivery` = pDelivery
	WHERE pro_id = pProId AND usr_id = pUsrId;
    
	IF (pImage='') THEN
		UPDATE `pro_product`
		SET
		`pro_image` = ''
		WHERE pro_id = pProId AND usr_id = pUsrId;
	END IF;
        
    COMMIT;
	/* Return */
	SELECT 
		vError as 'code',
		vMsg as 'message',
        pProId as 'id';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_UPDATE_PROFILE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_UPDATE_PROFILE`(
	IN pUsrId INT,
    IN pFirstName VARCHAR(50),
    IN pLastName VARCHAR(50),
    IN pCompany VARCHAR(45),
    IN pCouId INT,
	IN pStaId INT,
	IN pCity VARCHAR(45),
	IN pAddress VARCHAR(255),
	IN pZip INT,
	IN pPhone VARCHAR(32),
	IN pWebSite VARCHAR(255),
    IN pAvatar VARCHAR(255),
    IN pCostShipping FLOAT,
    IN pTimeSDelivery INT,
    IN pTimeEDelivery INT,
    IN pCanDelivery INT
)
BEGIN
	DECLARE vError INT;
    DECLARE vMsg VARCHAR(255);
    DECLARE vUsrCount INT;
    DECLARE vEmail VARCHAR(45);
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
		GET CURRENT DIAGNOSTICS CONDITION 1 vMsg = MESSAGE_TEXT;
        SELECT 301 as 'code', vMsg as message;
		ROLLBACK;
    END;
    START TRANSACTION;
	SET vError = 0;

	SELECT usr_email 
    INTO vEmail
    FROM usr_user 
    WHERE usr_id = pUsrId;
	
	SET vUsrCount = (SELECT COUNT(1) FROM usr_user WHERE (usr_company = pCompany AND usr_email = vEmail) AND usr_status < 4 AND usr_id <> pUsrId); 
	
	IF (vUsrCount=0) THEN
		UPDATE usr_user
		SET
			usr_firstname = pFirstName,
			usr_lastname = pLastName,
			usr_company = pCompany,
			cou_id = pCouId ,
			sta_id = pStaId ,
			usr_city = pCity,
			usr_address = pAddress,
			usr_zip_code = pZip ,
			usr_phone = pPhone ,
			usr_website = pWebSite,
			usr_cost_shipping = pCostShipping,
			usr_time_start_delivery = pTimeSDelivery,
			usr_time_end_delivery = pTimeEDelivery,
			usr_can_delivery = pCanDelivery
		WHERE usr_id = pUsrId AND usr_status=2;
		
		IF (pAvatar='') THEN
			UPDATE `usr_user`
			SET
			`usr_avatar` = ''
			WHERE usr_id = pUsrId;
		END IF;
	
		CALL SP_READ_ALERT(pUsrId, 1);
	ELSE
		SET vError = 315; 
	END IF;  

	
	COMMIT;
	SELECT 
		vError as 'code',
		vMsg as 'message',
		vwL.*
	FROM vw_login vwL
	WHERE vwL.id = pUsrId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_UPLOAD_IMAGE_PRODUCT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_UPLOAD_IMAGE_PRODUCT`(
	IN pUsrId INT,
	IN pProId INT,
    IN pFileName VARCHAR(255),
    IN pFileSize BIGINT
)
BEGIN   
    DECLARE vError INT;
    DECLARE vMsg VARCHAR(255);
    DECLARE vOldFile VARCHAR(255);
	DECLARE vRole INT;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
		GET CURRENT DIAGNOSTICS CONDITION 1 vMsg = MESSAGE_TEXT;
        SELECT 301 as 'code', vMsg as 'message', '' as 'newFile', '' as 'oldFile';
		ROLLBACK;
    END;
    START TRANSACTION;
	SET vError = 0;
    SET vRole = (SELECT usr_role+0 FROM usr_user WHERE usr_id = pUsrId);
    
	SET vOldFile = (SELECT pro_image FROM pro_product WHERE pro_id = pProId and usr_id = pUsrId);

	UPDATE pro_product
	SET pro_image = pFileName
	WHERE pro_id = pProId and usr_id = pUsrId;
	
	
	COMMIT;
	SELECT 
		vError as 'code',
		vMsg as 'message',
		pFileName as 'newFile',
		vOldFile as 'oldFile';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_UPLOAD_IMAGE_PROFILE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_bin */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_UPLOAD_IMAGE_PROFILE`(
	IN pUsrId INT,
    IN pFileName VARCHAR(255),
    IN pFileSize BIGINT
)
BEGIN   
    DECLARE vError INT;
    DECLARE vMsg VARCHAR(255);
    DECLARE vOldFile VARCHAR(255);
	DECLARE vRole INT;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
		GET CURRENT DIAGNOSTICS CONDITION 1 vMsg = MESSAGE_TEXT;
        SELECT 301 as 'code', vMsg as 'message', '' as 'newFile', '' as 'oldFile';
		ROLLBACK;
    END;
    START TRANSACTION;
	SET vError = 0;
    SET vRole = (SELECT usr_role+0 FROM usr_user WHERE usr_id = pUsrId);
    
	SET vOldFile = (SELECT usr_avatar FROM usr_user WHERE usr_id = pUsrId);

	UPDATE usr_user
	SET usr_avatar = pFileName
	WHERE usr_id = pUsrId;
	
	
	COMMIT;
	SELECT 
		vError as 'code',
		vMsg as 'message',
		pFileName as 'newFile',
		vOldFile as 'oldFile';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_VERIFY_MENU` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_bin */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_VERIFY_MENU`(
	IN pCode VARCHAR(8)
)
BEGIN   

	SELECT 
		IF(usr_is_edit=1,1,0) as 'isEdit'
	FROM usr_user 
    WHERE usr_code like pCode;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vw_login`
--

/*!50001 DROP VIEW IF EXISTS `vw_login`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`menu_user`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_login` AS select `usr`.`usr_id` AS `id`,convert(`usr`.`usr_firstname` using utf8) AS `name`,(`usr`.`usr_status` + 0) AS `status`,`usr`.`usr_hash` AS `hash`,(`usr`.`usr_role` + 0) AS `role`,(case when (`usr`.`sta_id` is null) then true else false end) AS `forceProfile`,`usr`.`usr_avatar` AS `avatar`,`usr`.`usr_email` AS `email`,`usr`.`usr_code` AS `codeMenu`,(case when `usr`.`usr_can_delivery` then 1 else 0 end) AS `canDelivery` from `usr_user` `usr` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_login_client`
--

/*!50001 DROP VIEW IF EXISTS `vw_login_client`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`menu_user`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_login_client` AS select `cli`.`cli_id` AS `id`,convert(`cli`.`cli_name` using utf8) AS `name`,`cli`.`cli_email` AS `email`,`cli`.`cli_address` AS `address`,`cli`.`cli_zip` AS `zip`,`cli`.`cli_hash` AS `hash`,`cli`.`cli_phone` AS `phone` from `cli_client` `cli` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-16 18:49:13
