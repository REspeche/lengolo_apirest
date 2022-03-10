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
INSERT INTO `ads_admin_settings` VALUES (1,'$','$',190,350);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `axu_alexusr`
--

LOCK TABLES `axu_alexusr` WRITE;
/*!40000 ALTER TABLE `axu_alexusr` DISABLE KEYS */;
INSERT INTO `axu_alexusr` VALUES (2,1,2,2,_binary '',_binary '','2020-06-07 21:54:44',_binary ''),(8,1,8,8,_binary '',_binary '','2020-06-15 15:21:01',_binary ''),(11,1,11,11,_binary '',_binary '','2020-06-19 20:10:29',_binary ''),(12,1,12,12,_binary '',_binary '','2020-06-19 20:34:45',_binary ''),(13,1,13,13,_binary '',_binary '','2020-06-19 21:59:26',_binary ''),(14,1,14,14,_binary '',_binary '','2020-06-19 23:04:59',_binary ''),(15,1,15,15,_binary '',_binary '','2020-06-20 01:51:42',_binary ''),(16,1,16,16,_binary '',_binary '','2020-06-20 23:34:25',_binary ''),(17,1,17,17,_binary '',_binary '','2020-06-20 23:43:45',_binary ''),(18,1,18,18,_binary '',_binary '','2020-06-23 18:05:43',_binary ''),(19,1,19,19,_binary '',_binary '','2020-06-23 19:26:42',_binary ''),(20,1,20,20,_binary '',_binary '','2020-06-23 21:09:06',_binary ''),(21,1,21,21,_binary '',_binary '','2020-06-24 14:17:51',_binary '');
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
  `buy_status` enum('pending','sent','ready') CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'pending',
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buy_buyqr`
--

LOCK TABLES `buy_buyqr` WRITE;
/*!40000 ALTER TABLE `buy_buyqr` DISABLE KEYS */;
INSERT INTO `buy_buyqr` VALUES (1,2,'ready',10,'10 calcomanías QR','ricardo_espeche@hotmail.com',1,'visa','870ac9fe964d62c4a5832bf08819f063',1,'{\"body\":{\"id\":26720590,\"date_created\":\"2020-06-14T19:27:09.000-04:00\",\"date_approved\":null,\"date_last_updated\":\"2020-06-14T19:27:12.000-04:00\",\"date_of_expiration\":null,\"money_release_date\":null,\"operation_type\":\"regular_payment\",\"issuer_id\":\"310\",\"payment_method_id\":\"visa\",\"payment_type_id\":\"credit_card\",\"status\":\"rejected\",\"status_detail\":\"cc_rejected_other_reason\",\"currency_id\":\"ARS\",\"description\":\"10 calcomanías QR [lengolo]\",\"live_mode\":false,\"sponsor_id\":null,\"authorization_code\":null,\"money_release_schema\":null,\"taxes_amount\":0,\"counter_currency\":null,\"shipping_amount\":0,\"pos_id\":null,\"store_id\":null,\"integrator_id\":\"true\",\"platform_id\":\"true\",\"corporation_id\":\"true\",\"collector_id\":57832605,\"payer\":{\"first_name\":\"Test\",\"last_name\":\"Test\",\"email\":\"test_user_80507629@testuser.com\",\"identification\":{\"number\":\"32659430\",\"type\":\"DNI\"},\"phone\":{\"area_code\":\"01\",\"number\":\"1111-1111\",\"extension\":\"\"},\"type\":\"registered\",\"entity_type\":null,\"id\":\"518791977\"},\"marketplace_owner\":null,\"metadata\":{},\"additional_info\":{\"available_balance\":null,\"nsu_processadora\":null},\"order\":{},\"external_reference\":null,\"transaction_amount\":1,\"transaction_amount_refunded\":0,\"coupon_amount\":0,\"differential_pricing_id\":null,\"deduction_schema\":null,\"installments\":1,\"transaction_details\":{\"payment_method_reference_id\":null,\"net_received_amount\":0,\"total_paid_amount\":1,\"overpaid_amount\":0,\"external_resource_url\":null,\"installment_amount\":1,\"financial_institution\":null,\"payable_deferral_period\":null,\"acquirer_reference\":null},\"fee_details\":[],\"captured\":true,\"binary_mode\":false,\"call_for_authorize_id\":null,\"statement_descriptor\":\"RICARDOESPECH\",\"card\":{\"id\":null,\"first_six_digits\":\"466057\",\"last_four_digits\":\"7123\",\"expiration_month\":6,\"expiration_year\":2024,\"date_created\":\"2020-06-14T19:27:09.000-04:00\",\"date_last_updated\":\"2020-06-14T19:27:09.000-04:00\",\"cardholder\":{\"name\":\"RICARDO M ESPECHE\",\"identification\":{\"number\":\"26483671\",\"type\":\"DNI\"}}},\"notification_url\":null,\"refunds\":[],\"processing_mode\":\"aggregator\",\"merchant_account_id\":null,\"acquirer\":null,\"merchant_number\":null,\"acquirer_reconciliation\":[]},\"response\":{\"id\":26720590,\"date_created\":\"2020-06-14T19:27:09.000-04:00\",\"date_approved\":null,\"date_last_updated\":\"2020-06-14T19:27:12.000-04:00\",\"date_of_expiration\":null,\"money_release_date\":null,\"operation_type\":\"regular_payment\",\"issuer_id\":\"310\",\"payment_method_id\":\"visa\",\"payment_type_id\":\"credit_card\",\"status\":\"rejected\",\"status_detail\":\"cc_rejected_other_reason\",\"currency_id\":\"ARS\",\"description\":\"10 calcomanías QR [lengolo]\",\"live_mode\":false,\"sponsor_id\":null,\"authorization_code\":null,\"money_release_schema\":null,\"taxes_amount\":0,\"counter_currency\":null,\"shipping_amount\":0,\"pos_id\":null,\"store_id\":null,\"integrator_id\":\"true\",\"platform_id\":\"true\",\"corporation_id\":\"true\",\"collector_id\":57832605,\"payer\":{\"first_name\":\"Test\",\"last_name\":\"Test\",\"email\":\"test_user_80507629@testuser.com\",\"identification\":{\"number\":\"32659430\",\"type\":\"DNI\"},\"phone\":{\"area_code\":\"01\",\"number\":\"1111-1111\",\"extension\":\"\"},\"type\":\"registered\",\"entity_type\":null,\"id\":\"518791977\"},\"marketplace_owner\":null,\"metadata\":{},\"additional_info\":{\"available_balance\":null,\"nsu_processadora\":null},\"order\":{},\"external_reference\":null,\"transaction_amount\":1,\"transaction_amount_refunded\":0,\"coupon_amount\":0,\"differential_pricing_id\":null,\"deduction_schema\":null,\"installments\":1,\"transaction_details\":{\"payment_method_reference_id\":null,\"net_received_amount\":0,\"total_paid_amount\":1,\"overpaid_amount\":0,\"external_resource_url\":null,\"installment_amount\":1,\"financial_institution\":null,\"payable_deferral_period\":null,\"acquirer_reference\":null},\"fee_details\":[],\"captured\":true,\"binary_mode\":false,\"call_for_authorize_id\":null,\"statement_descriptor\":\"RICARDOESPECH\",\"card\":{\"id\":null,\"first_six_digits\":\"466057\",\"last_four_digits\":\"7123\",\"expiration_month\":6,\"expiration_year\":2024,\"date_created\":\"2020-06-14T19:27:09.000-04:00\",\"date_last_updated\":\"2020-06-14T19:27:09.000-04:00\",\"cardholder\":{\"name\":\"RICARDO M ESPECHE\",\"identification\":{\"number\":\"26483671\",\"type\":\"DNI\"}}},\"notification_url\":null,\"refunds\":[],\"processing_mode\":\"aggregator\",\"merchant_account_id\":null,\"acquirer\":null,\"merchant_number\":null,\"acquirer_reconciliation\":[]},\"status\":201,\"idempotency\":\"c6a6d13a-1dff-47fc-a1e6-2b23f6ca9723\"}','2020-06-14 23:27:12');
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
  `cat_order` int NOT NULL DEFAULT '1',
  `cat_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `cat_excerpt` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `cat_manyPrices` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `cat_enable` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_category`
--

LOCK TABLES `cat_category` WRITE;
/*!40000 ALTER TABLE `cat_category` DISABLE KEYS */;
INSERT INTO `cat_category` VALUES (1,2,1,'desayunos',NULL,NULL,_binary ''),(2,2,2,'entradas',NULL,NULL,_binary ''),(3,2,3,'ensaladas','','C/G',_binary ''),(4,2,4,'parrilla de carbón',NULL,NULL,_binary ''),(5,2,5,'nuestras patatas especiales',NULL,NULL,_binary ''),(6,2,6,'bebidas',NULL,NULL,_binary ''),(7,8,1,'desayunos y meriendas',NULL,NULL,_binary ''),(8,8,2,'cafetería',NULL,NULL,_binary ''),(9,8,3,'tartas y tortas',NULL,NULL,_binary ''),(10,8,4,'adicionales',NULL,NULL,_binary ''),(11,8,5,'licuados',NULL,NULL,_binary ''),(12,8,6,'jarra de limonada',NULL,NULL,_binary ''),(13,8,7,'sándwiches y tostas',NULL,NULL,_binary ''),(14,8,8,'hamburguesas',NULL,NULL,_binary ''),(15,8,9,'degustación de hamburguesas',NULL,NULL,_binary ''),(16,8,10,'lomos',NULL,NULL,_binary ''),(17,8,11,'sándwiches',NULL,NULL,_binary ''),(18,8,12,'menú infantil',NULL,NULL,_binary ''),(19,8,13,'nuestros tacos',NULL,NULL,_binary ''),(20,8,15,'whiskys (la medida)',NULL,NULL,_binary ''),(22,8,16,'bebidas sin alcohol',NULL,NULL,_binary ''),(23,8,17,'algunos tragos',NULL,NULL,_binary ''),(24,8,18,'vinos',NULL,NULL,_binary ''),(26,8,19,'menú del día',NULL,NULL,_binary ''),(27,8,20,'armá tu ensalada',NULL,NULL,_binary ''),(32,8,21,'opcionales','Todos los menús vienen con guarnición de papas, ensalada o puré',NULL,_binary ''),(33,8,22,'más livianitos',NULL,NULL,_binary ''),(35,8,23,'las gohan del mesón',NULL,NULL,_binary ''),(36,8,24,'espumantes','',NULL,_binary ''),(37,8,25,'postres','',NULL,_binary ''),(39,8,26,'helados','',NULL,_binary ''),(40,8,14,'Para compartir','',NULL,_binary ''),(41,11,1,'Para picar!','',NULL,_binary ''),(42,13,2,'Empanadas Salteñas \"de la abuela Ema\"','Pa´entrarle',NULL,_binary ''),(43,13,4,'en Cazuela','',NULL,_binary '\0'),(44,13,6,'en Chala','',NULL,_binary ''),(45,13,7,'pa´l postre','',NULL,_binary ''),(46,13,8,'Gaseosas y aguas','',NULL,_binary ''),(47,13,9,'Vinos Salteños','',NULL,_binary ''),(56,15,1,'Desayunos y Meriendas','',NULL,_binary ''),(57,15,2,'Jugos Naturales','',NULL,_binary ''),(58,15,3,'Menú Infantil','+ Bebida y Juguete',NULL,_binary ''),(59,15,4,'Postres','',NULL,_binary ''),(60,15,5,'Bebidas','',NULL,_binary ''),(61,15,6,'Cervezas Artesanales','',NULL,_binary ''),(62,15,7,'Vinos','',NULL,_binary ''),(63,15,8,'Menú del Mediodía','+ Bebida + Postre o Café',NULL,_binary ''),(64,15,9,'Principales','Para Compartir',NULL,_binary ''),(65,15,10,'Entradas','',NULL,_binary ''),(66,15,11,'Lomitos','','med./gde.',_binary ''),(67,13,10,'Cervezas','',NULL,_binary '\0'),(68,13,11,'Menú Diario','',NULL,_binary '\0'),(69,13,5,'Pastas','',NULL,_binary ''),(70,13,3,'Empanadas Arabes','',NULL,_binary ''),(71,13,1,'Sugerencia Del Día','',NULL,_binary ''),(72,14,1,'ENTRADAS','',NULL,_binary ''),(73,17,1,'CAFETERIA','',NULL,_binary ''),(74,17,2,'BEBIDAS SIN ALCOHOL','',NULL,_binary ''),(75,17,3,'CERVEZAS','',NULL,_binary ''),(76,17,4,'SANDWHICHES','',NULL,_binary ''),(77,17,5,'PIZZAS','',NULL,_binary ''),(78,11,2,'Ensaladas','',NULL,_binary ''),(79,11,3,'Pescados y Mariscos','',NULL,_binary ''),(80,11,4,'Carnes','',NULL,_binary ''),(81,11,5,'Menú  niños','',NULL,_binary ''),(82,11,6,'Tabla criolla','',NULL,_binary ''),(83,11,7,'Pastas','',NULL,_binary ''),(84,11,8,'Salsas','',NULL,_binary ''),(85,11,9,'Sándwiches','',NULL,_binary ''),(86,11,10,'Al plato!','',NULL,_binary ''),(87,11,11,'Para tomar','',NULL,_binary ''),(88,11,12,'Postres','',NULL,_binary ''),(89,11,13,'Cafetería','',NULL,_binary ''),(90,11,14,'Cafetería Especial','',NULL,_binary ''),(91,11,15,'Tragos Clásicos','',NULL,_binary ''),(92,11,16,'Tragos Largos','',NULL,_binary ''),(93,11,17,'Cóctel Ochre','',NULL,_binary ''),(94,11,18,'Chandon tragos','',NULL,_binary ''),(95,11,19,'Reversiones de Ochre','',NULL,_binary ''),(96,11,20,'Cremas Heladas & Champagne','',NULL,_binary ''),(97,11,21,'Vodka','',NULL,_binary ''),(98,11,22,'Cervezas','',NULL,_binary ''),(99,17,6,'AL PLATO','',NULL,_binary ''),(100,17,7,'ENSALADAS','',NULL,_binary ''),(101,17,8,'OMELETTES','',NULL,_binary ''),(102,17,9,'CREPES','',NULL,_binary ''),(103,17,10,'WHISKYS','',NULL,_binary ''),(104,18,1,'Desayunos','',NULL,_binary ''),(105,19,1,'Cafeteria','',NULL,_binary ''),(106,19,2,'Desayunos y Meriendas','',NULL,_binary ''),(107,19,3,'Almuerzos','',NULL,_binary ''),(108,16,1,'Para picar','',NULL,_binary ''),(109,16,2,'Entradas','',NULL,_binary ''),(110,16,3,'Carnes','',NULL,_binary ''),(111,16,4,'Minutas','',NULL,_binary ''),(112,16,5,'Pescados','',NULL,_binary ''),(113,16,6,'Pastas','',NULL,_binary ''),(114,16,7,'Ensaladas','',NULL,_binary ''),(115,16,8,'Guarniciones','',NULL,_binary ''),(116,17,11,'TRAGOS','',NULL,_binary ''),(117,21,1,'Tradicionales','','Grande/Media/Pequeña',_binary ''),(118,16,9,'Pizzas','',NULL,_binary ''),(119,16,10,'Lomos','',NULL,_binary ''),(120,16,11,'Sandwiches','',NULL,_binary ''),(121,16,12,'Vinos y Champagne','',NULL,_binary '');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cli_client`
--

LOCK TABLES `cli_client` WRITE;
/*!40000 ALTER TABLE `cli_client` DISABLE KEYS */;
INSERT INTO `cli_client` VALUES (2,'ricardo_espeche@hotmail.com','Ricardo Espeche','3515555235','Jorge L. Borges esq. Roberto Arlt Torre 2 3 D','5151','e86d2fdbfc7df4f80bac13f3f3abcf00','2020-06-25 14:40:23','1');
/*!40000 ALTER TABLE `cli_client` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cxu_clixusr`
--

LOCK TABLES `cxu_clixusr` WRITE;
/*!40000 ALTER TABLE `cxu_clixusr` DISABLE KEYS */;
INSERT INTO `cxu_clixusr` VALUES (3,2,2,'2020-06-25 14:40:23',_binary '');
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
  `men_enable` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`men_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `men_menu`
--

LOCK TABLES `men_menu` WRITE;
/*!40000 ALTER TABLE `men_menu` DISABLE KEYS */;
INSERT INTO `men_menu` VALUES (7,2,'Principal',0,1439,_binary ''),(9,8,'Principal',0,1439,_binary ''),(12,8,'Ejecutivo',660,900,_binary ''),(13,11,'Principal',0,1439,_binary ''),(14,12,'Principal',0,1439,_binary ''),(15,13,'Principal',0,1439,_binary ''),(16,14,'Principal',0,1439,_binary ''),(17,15,'Principal',0,1439,_binary ''),(18,13,'Sugerencia Del Día',0,1439,_binary '\0'),(19,2,'Ejecutivo',450,900,_binary '\0'),(20,14,'Otro Bar de Cervezas MENU',1140,1439,_binary ''),(21,16,'Principal',0,1439,_binary ''),(22,17,'Principal',0,1439,_binary ''),(23,18,'Principal',0,1439,_binary ''),(24,19,'Principal',450,1439,_binary ''),(25,20,'Principal',0,1439,_binary ''),(26,20,'Empanada',0,1439,_binary ''),(27,21,'Principal',0,1439,_binary '');
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ord_order`
--

LOCK TABLES `ord_order` WRITE;
/*!40000 ALTER TABLE `ord_order` DISABLE KEYS */;
INSERT INTO `ord_order` VALUES (36,2,2,3,'canceled',160,'Jorge L. Borges esq. Roberto Arlt Torre 2 3 D','5151','2020-06-26 22:40:29',''),(37,2,2,3,'canceled',110,'Jorge L. Borges esq. Roberto Arlt Torre 2 3 D','5151','2020-06-26 22:40:55',''),(38,2,2,3,'canceled',170,'Jorge L. Borges esq. Roberto Arlt Torre 2 3 D','5151','2020-06-26 22:42:33',''),(39,2,2,3,'canceled',110,'Jorge L. Borges esq. Roberto Arlt Torre 2 3 D','5151','2020-06-26 22:44:17',''),(40,2,2,3,'canceled',220,'Jorge L. Borges esq. Roberto Arlt Torre 2 3 D','5151','2020-06-26 22:44:37','fsdfsdf'),(41,2,2,3,'canceled',110,'Jorge L. Borges esq. Roberto Arlt Torre 2 3 D','5151','2020-06-26 22:47:19',''),(42,2,2,3,'canceled',110,'Jorge L. Borges esq. Roberto Arlt Torre 2 3 D','5151','2020-06-26 22:47:47',''),(43,2,2,3,'canceled',110,'Jorge L. Borges esq. Roberto Arlt Torre 2 3 D','5151','2020-06-26 22:51:45','');
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
  `pro_image` varchar(70) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`pro_id`)
) ENGINE=InnoDB AUTO_INCREMENT=693 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pro_product`
--

LOCK TABLES `pro_product` WRITE;
/*!40000 ALTER TABLE `pro_product` DISABLE KEYS */;
INSERT INTO `pro_product` VALUES (1,2,'café con leche','cafe con 1/4 de leche entera y soda',130,NULL,'normal',_binary '',_binary '\0','r1edbmo7k9pvwfvxi1ambthd4ziztyzw9p3jv7qu2.jpeg'),(2,2,'cafe con leche ligth','cafe con 1/4 de leche descremada, 3 tostadas del campo, manteca o mermelada y jugo de naranja',150,NULL,'normal',_binary '',_binary '\0','rkjq89mv1qsj5xvyp049yph9oqip5zxyfz09lajp8.jpeg'),(3,2,'empanadas criollas cortada a cuchillo','bola de cuadril con un toque de especias',50,NULL,'normal',_binary '',_binary '','4rjl2yyubb7zueh022jaw0amdf68cwr4eupr3a8yv.jpeg'),(4,2,'provoleta a la parrilla con orégano','Provoleta italiana grillada con queso',110,NULL,'normal',_binary '',_binary '','9swuonsowvp7plus0gyd23nqq8i9ef7vqlv6zmrzz.jpeg'),(5,2,'chorizo criollo con patatas paja y chimichurri','Salsa Argentina con pápas fritas y salsa de chimichurri',115,NULL,'normal',_binary '',_binary '',NULL),(6,2,'de campo (clásica de asados: lechuga, tomate y cebolla)','Lechuga, tomate y cebolla',82,'80/95','normal',_binary '',_binary '','8qn6s08sfui87dyj5q549fephsjdduj2wj2fjp2yz.jpeg'),(7,2,'calabaza asada y queso de cabra','Dados de calabaza, pipas, queso de cabra desmigado sobre mix de verdes con vinagreta de pomelo',96,'90/105','normal',_binary '',_binary '',NULL),(8,2,'espinacas frescas','Espinacas frescas con nueces, requesón, QUESO AZUL Y PERA',108,'110/130','normal',_binary '',_binary '',NULL),(9,2,'tira de asado','Churrasco de ternera seleccionado',180,NULL,'spicy',_binary '',_binary '',NULL),(10,2,'entraña','Corte de moda en Argentina, sin hueso y sabroso',170,NULL,'normal',_binary '',_binary '',NULL),(11,2,'secreto de cerdo \"a la pizza\"','Con salsa de tomate y mozzarella',165,NULL,'normal',_binary '',_binary '',NULL),(12,2,'pollo relleno a la brasa','Receta del \"Pobre Luis\", Uruguay (según disponibilidad).',150,NULL,'normal',_binary '',_binary '',NULL),(13,2,'entrecot origen argentina','Razas varias',190,NULL,'normal',_binary '',_binary '',NULL),(14,2,'caseras clásicas','',80,NULL,'normal',_binary '',_binary '',NULL),(15,2,'argentinas a la provenzal','Con ajo y perejil frezco',62,NULL,'normal',_binary '',_binary '',NULL),(16,2,'asadas a la brasa de carbón','Con una salsa de BBQ',55,NULL,'normal',_binary '',_binary '',NULL),(17,2,'papas \"de paul\"','Asadas y rellenas de crema de queso',28,NULL,'normal',_binary '',_binary '',NULL),(18,2,'rústicas, especiadas y un poco picantes','Con cáscara y un toque de pimienta',60,NULL,'normal',_binary '',_binary '',NULL),(19,2,'entrecot origen argentina raza angus certificado','Costilla de Angus Argentino',210,NULL,'normal',_binary '',_binary '',NULL),(20,2,'gaseosa','Botella 500cc',100,NULL,'normal',_binary '',_binary '\0',NULL),(21,2,'agua mineral','Con gas o sin gas',60,NULL,'normal',_binary '',_binary '\0',NULL),(25,8,'clásico','Café con leche o infusión, 2 medialunas o criollos. Jugo de naranja.',190,NULL,'normal',_binary '',_binary '',NULL),(26,8,'completo','Café con leche o infusión, 2 medialunas o criollos. Manteca y dulce casero. Jugo de naranja.',220,NULL,'normal',_binary '',_binary '',NULL),(27,8,'light','Café con leche o infusión. Tostada de pan negro. Queso untable y mermelada light. Jugo de naranja. (Opcional con ensalada de frutas $270)',250,NULL,'normal',_binary '',_binary '',NULL),(28,8,'campero','Café con leche o infusión. Tostadas pan de campo. Manteca, dulce, jamón y queso. Jugo de Naranja.',260,NULL,'normal',_binary '',_binary '',NULL),(29,8,'mesón copado - figurella','Copón de Yogurt con granola y frutas de estación.',190,NULL,'normal',_binary '',_binary '',NULL),(30,8,'proteico','Huevo revueltos, jamón y queso, tostadas de campo y ensalada de frutas. Infusión y jugo de naranja.',360,NULL,'normal',_binary '',_binary '',NULL),(31,8,'matero','Set de mate completo por persona.',90,NULL,'normal',_binary '',_binary '',NULL),(32,8,'café chico','',80,NULL,'normal',_binary '',_binary '',NULL),(33,8,'café en jarro','',90,NULL,'normal',_binary '',_binary '',NULL),(34,8,'café doble','',100,NULL,'normal',_binary '',_binary '',NULL),(35,8,'café con leche','',100,NULL,'normal',_binary '',_binary '',NULL),(36,8,'submarino','',120,NULL,'normal',_binary '',_binary '',NULL),(37,8,'capuchino','',120,NULL,'normal',_binary '',_binary '',NULL),(38,8,'té y otras infusiones','',90,NULL,'normal',_binary '',_binary '',NULL),(39,8,'Mesón','Con leche condensada y ralladura de naranja.',180,NULL,'normal',_binary '',_binary '',NULL),(40,8,'Lemmon Pie','',180,NULL,'normal',_binary '',_binary '',NULL),(41,8,'Coco','',180,NULL,'normal',_binary '',_binary '',NULL),(42,8,'Cheesecake','',190,NULL,'normal',_binary '',_binary '',NULL),(43,8,'Marquise de Chocolate','',190,NULL,'normal',_binary '',_binary '',NULL),(44,8,'medialunas','',50,NULL,'normal',_binary '',_binary '',NULL),(45,8,'criollos','',40,NULL,'normal',_binary '',_binary '',NULL),(46,8,'mafalda','',110,NULL,'normal',_binary '',_binary '',NULL),(47,8,'manteca y mermelada','',50,NULL,'normal',_binary '',_binary '',NULL),(48,8,'jugo de naranja','',150,NULL,'normal',_binary '',_binary '',NULL),(49,8,'jugo de arándanos','',180,NULL,'normal',_binary '',_binary '',NULL),(50,8,'huevos revueltos','',110,NULL,'normal',_binary '',_binary '',NULL),(51,8,'porción de tostadas','',50,NULL,'normal',_binary '',_binary '',NULL),(52,8,'porción de tostadas con semillas','',70,NULL,'normal',_binary '',_binary '',NULL),(53,8,'ensalada de frutas','Las frutas pueden variar según estación.',110,NULL,'normal',_binary '',_binary '',NULL),(54,8,'con agua','',170,NULL,'normal',_binary '',_binary '',NULL),(55,8,'con leche','',190,NULL,'normal',_binary '',_binary '',NULL),(56,8,'con jugo de naranja','',190,NULL,'normal',_binary '',_binary '',NULL),(57,8,'smoothies','',190,NULL,'normal',_binary '',_binary '',NULL),(58,8,'jarra de limonada','Con jengibre y menta. Opcional pepino.',210,NULL,'normal',_binary '',_binary '',NULL),(59,8,'tostado de jamón y queso','En pan baguette.',190,NULL,'normal',_binary '',_binary '',NULL),(60,8,'tostado mesón','En pan baguette con tomate y rúcula.',230,NULL,'vegetarian',_binary '',_binary '',NULL),(61,8,'sándwich de jamón crudo','En pan de campo con rúcula y cherry.',270,NULL,'normal',_binary '',_binary '',NULL),(62,8,'sándwich de vegetales frío','Palta, lechuga, tomate y queso crema en pan negro con semillas.',290,NULL,'vegetarian',_binary '',_binary '',NULL),(63,8,'sándwich de salmón','Salmón, rúcula, cherry y queso crema en pan con semillas.',380,NULL,'normal',_binary '',_binary '',NULL),(64,8,'tostas de huevo revuelto','Tostadita con huevo revuelto, jamón natural, queso y verdeo.',190,NULL,'normal',_binary '',_binary '',NULL),(65,8,'tostas mexicanas','Con guacamole.',190,NULL,'vegetarian',_binary '',_binary '',NULL),(66,8,'tostas vegetarianas','Palta, queso crema, cherry y sésamo en pan con semillas.',190,NULL,'vegetarian',_binary '',_binary '',NULL),(67,8,'la bestia','Tomate, lechuga, panceta, cebolla morada, cheddar, huevo y aleoli. Con papas bastón.',390,NULL,'normal',_binary '',_binary '',NULL),(68,8,'egoista','Provolone gratinado, hongos, cebolla, panceta, huevo, barbacoa y aleoli. Con papas bastón.',370,NULL,'normal',_binary '',_binary '',NULL),(69,8,'caprichosa','Tomate, lechuga, palta, provolone gratinado y aleoli. Con papas bastón.',370,NULL,'normal',_binary '',_binary '',NULL),(70,8,'princesita (de pollo)','Pollo crispy, tomate, lechuga, huevo, queso y aleoli. Con papas bastón.',370,NULL,'normal',_binary '',_binary '',NULL),(71,8,'recatada','Garbanzo, rúcula, tomate, queso tybo, cebolla, huevo, mayonesa de apio y aleoli. Con papas bastón.',370,NULL,'vegetarian',_binary '',_binary '',NULL),(72,8,'kustom (lookeada para vos)','Queso provolone rebozado, lechuga, tomate, y huevo. Con papas bastón.',370,NULL,'normal',_binary '',_binary '',NULL),(73,8,'curda','Panceta, queso tybo, lechuga, tomate, y huevo. Con aderezo de cebollas asadas al Malbec. Con papas.',370,NULL,'normal',_binary '',_binary '',NULL),(74,8,'ciclotímica','No te conformás con nada y querés todas.\n*LA BESTIA - *EGOÍSTA - *CAPRICHOSA - *PRINCESITA',620,NULL,'normal',_binary '',_binary '',NULL),(75,8,'lomo completo','Jamón, queso, huevo, lechuga y tomate.\nCon papas bravas.',450,NULL,'normal',_binary '',_binary '',NULL),(76,8,'lomo completo de pollo','Jamón, queso, huevo, lechuga y tomate.\nCon papas bravas.',360,NULL,'normal',_binary '',_binary '',NULL),(77,8,'lomo mediano','Jamón, queso, huevo, lechuga y tomate.\nCon papas bravas.',360,NULL,'normal',_binary '',_binary '',NULL),(78,8,'lomo mediano de pollo','Jamón, queso, huevo, lechuga y tomate.\nCon papas bravas.',290,NULL,'normal',_binary '',_binary '',NULL),(79,8,'lomito al plato','Lomo con jamón, queso y huevo. Acompañado de papas fritas y ensalada.',450,NULL,'normal',_binary '',_binary '',NULL),(80,8,'sándwich de vegetales asados','Berenjenas, zuccini, pimientos, hongos, rúcula y queso. Con papas fritas.',310,NULL,'normal',_binary '',_binary '',NULL),(81,8,'sándwich de vegetales fríos','Palta, lechuga, tomate y queso en pan negro con semillas.',290,NULL,'vegetarian',_binary '',_binary '',NULL),(82,8,'sándwich de salmón','Salmón, rúcula, cherry y queso crema en pan con semillas.',380,NULL,'normal',_binary '',_binary '',NULL),(83,8,'para ellos también','Crocantes de pollo caseritos ó hamburguesa con fritas. Incluye gaseosa.',310,NULL,'normal',_binary '',_binary '',NULL),(84,8,'nuestro taquito bien cabrón','De carne o pollo con vegetales salteados, queso cheddar y un toque de panceta. Ahh... y el infaltable guacamole sale con papas.',440,NULL,'normal',_binary '',_binary '',NULL),(85,8,'taco de vegetales','Berenjenas, zuccini, pimientos, cebolla morada, hongos y queso tybo. Con papas fritas.',430,NULL,'vegetarian',_binary '',_binary '',NULL),(86,8,'ballantines','',350,NULL,'normal',_binary '',_binary '',NULL),(87,8,'johnnie walker red label','',370,NULL,'normal',_binary '',_binary '',NULL),(88,8,'johnnie walker black label','',420,NULL,'normal',_binary '',_binary '',NULL),(89,8,'jack daniels','',400,NULL,'normal',_binary '',_binary '',NULL),(90,8,'famous grouse finest','',400,NULL,'normal',_binary '',_binary '',NULL),(91,8,'gentleman jack','',690,NULL,'normal',_binary '',_binary '',NULL),(92,8,'the macallan fine oak 12 años','',690,NULL,'normal',_binary '',_binary '',NULL),(93,8,'gaseosas','',100,NULL,'normal',_binary '',_binary '',NULL),(94,8,'aguas saborizadas','',100,NULL,'normal',_binary '',_binary '',NULL),(95,8,'agua con y sin gas','',100,NULL,'normal',_binary '',_binary '',NULL),(96,8,'jugo de naranjas','',140,NULL,'normal',_binary '',_binary '',NULL),(97,8,'jugo de arándanos','',170,NULL,'normal',_binary '',_binary '',NULL),(98,8,'licuados con agua','',150,NULL,'normal',_binary '',_binary '',NULL),(99,8,'licuados con leche','',160,NULL,'normal',_binary '',_binary '',NULL),(100,8,'licuados con jugo de naranja','',170,NULL,'normal',_binary '',_binary '',NULL),(101,8,'smoothies','',170,NULL,'normal',_binary '',_binary '',NULL),(102,8,'speed','',120,NULL,'normal',_binary '',_binary '',NULL),(103,8,'jarra de limonada','Con jenjibre y menta. Opcional pepino.',210,NULL,'normal',_binary '',_binary '',NULL),(104,8,'fernet branca','',220,NULL,'normal',_binary '',_binary '',NULL),(105,8,'garibaldi','',220,NULL,'normal',_binary '',_binary '',NULL),(106,8,'gancia','',220,NULL,'normal',_binary '',_binary '',NULL),(107,8,'gin & tonic','',260,NULL,'normal',_binary '',_binary '',NULL),(108,8,'cuba libre','',250,NULL,'normal',_binary '',_binary '',NULL),(109,8,'mojito','',300,NULL,'normal',_binary '',_binary '',NULL),(110,8,'mojito de maracuyá','',300,NULL,'normal',_binary '',_binary '',NULL),(111,8,'famiglia bianchi (red blend)','',400,NULL,'normal',_binary '',_binary '',NULL),(112,8,'famiglia bianchi (white blend)','',400,NULL,'normal',_binary '',_binary '',NULL),(113,8,'famiglia bianchi (rosé blend)','',400,NULL,'normal',_binary '',_binary '',NULL),(114,8,'famiglia bianchi (malbec)','',530,NULL,'normal',_binary '',_binary '',NULL),(115,8,'gauchezco 3/8 (reserva malbec)','',310,NULL,'normal',_binary '',_binary '',NULL),(116,8,'gauchezco clásico (malbec)','',400,NULL,'normal',_binary '',_binary '',NULL),(117,8,'gauchezco clásico (cabernet sauvignon)','',400,NULL,'normal',_binary '',_binary '',NULL),(118,8,'gauchezco (reserva chardonay)','',520,NULL,'normal',_binary '',_binary '',NULL),(119,8,'gauchezco (reserva malbec)','',520,NULL,'normal',_binary '',_binary '',NULL),(120,8,'gauchezco (reserva cabernet sauvignon)','',520,NULL,'normal',_binary '',_binary '',NULL),(121,8,'fond de cave (malbec)','',490,NULL,'normal',_binary '',_binary '',NULL),(122,8,'fond de cave (cabernet sauvignon)','',490,NULL,'normal',_binary '',_binary '',NULL),(123,8,'don david (malbec)','',490,NULL,'normal',_binary '',_binary '',NULL),(124,8,'alma mora (malbec)','',380,NULL,'normal',_binary '',_binary '',NULL),(125,8,'bravio (malbec, cab.sauv., sauv. blanc., blend)','',370,NULL,'normal',_binary '',_binary '',NULL),(126,8,'dada 1 (tinto, malbec y bonarda)','',380,NULL,'normal',_binary '',_binary '',NULL),(127,8,'dada 2 (merlot)','',380,NULL,'normal',_binary '',_binary '',NULL),(128,8,'dada 3 (tinto, cabernet y syrah)','',380,NULL,'normal',_binary '',_binary '',NULL),(129,8,'dada 5 (moscato)','',380,NULL,'normal',_binary '',_binary '',NULL),(130,8,'santa julia (malbec)','',340,NULL,'normal',_binary '',_binary '',NULL),(131,8,'santa julia (sauvignon blanc)','',320,NULL,'normal',_binary '',_binary '',NULL),(132,8,'las perdices 3/8 (malbec)','',320,NULL,'normal',_binary '',_binary '',NULL),(133,8,'las perdices (sauvignon blanc)','',450,NULL,'normal',_binary '',_binary '',NULL),(134,8,'las perdices (rosé)','',430,NULL,'normal',_binary '',_binary '',NULL),(135,8,'las perdices (malbec)','',490,NULL,'normal',_binary '',_binary '',NULL),(136,8,'tomero rose tomero (malbec)','',520,NULL,'normal',_binary '',_binary '',NULL),(137,8,'fabre montmayou (reserva malbec)','',570,NULL,'normal',_binary '',_binary '',NULL),(138,8,'nicassia (red blend)','',860,NULL,'normal',_binary '',_binary '',NULL),(139,8,'alamos (malbec, moscatel)','',530,NULL,'normal',_binary '',_binary '',NULL),(140,8,'cafayate cosecha tardía','',370,NULL,'normal',_binary '',_binary '',NULL),(141,8,'latitud 33 (malbec)','',450,NULL,'normal',_binary '',_binary '',NULL),(142,8,'uxmall (malbec, cabernet, chardonay)','',450,NULL,'normal',_binary '',_binary '',NULL),(143,8,'luigi bosca (malbec)','',980,NULL,'normal',_binary '',_binary '',NULL),(144,8,'copa de vino (las perdices reserva malbec)','',140,NULL,'normal',_binary '',_binary '',NULL),(145,8,'sidra peer x 500 c.c.','',190,NULL,'normal',_binary '',_binary '',NULL),(146,8,'Menú del día 1','Incluye postre y gaseosa o vaso de limonada',380,NULL,'normal',_binary '',_binary '',NULL),(147,8,'Combiná lechuga, tomate, zanahoria y choclo','+ PROTEÍNA A ELEECIÓN\n\n1) Calamares fritos\n2) Langostinos rebozados\n3) Bastoncitos de mozarella\n4) Pollo\n5) Atún',360,NULL,'normal',_binary '',_binary '',NULL),(148,8,'Bife de pollo','',360,NULL,'normal',_binary '',_binary '',NULL),(149,8,'Milanesa de pollo','',360,NULL,'normal',_binary '',_binary '',NULL),(150,8,'Hamburguesa al plato','De carne. Con queso y huevo.',360,NULL,'normal',_binary '',_binary '',NULL),(151,8,'Hamburguesa de garbanzo','',360,NULL,'vegetarian',_binary '',_binary '',NULL),(152,8,'Costeleta de carne','Opcional a caballo',390,NULL,'normal',_binary '',_binary '',NULL),(153,8,'Wrap de vegetales','Hojas verdes, vegetales asados, hongos y cebollas salteadas con queso crema.',330,NULL,'vegetarian',_binary '',_binary '',NULL),(154,8,'Canelones de vegetales','Hojas verdes, vegetales asados, hongos y cebollas salteadas con queso crema.',360,NULL,'vegetarian',_binary '',_binary '',NULL),(155,8,'Lasagna Mesón','Bolognesa, espinaca, ricotta, jamón y queso.',360,NULL,'normal',_binary '',_binary '',NULL),(156,8,'Langostinos','Rebozados o salteados. Arroz, queso crema, palta, cherry, verdeo, sésamo y brotes.',430,NULL,'normal',_binary '',_binary '',NULL),(157,8,'Salmón','Arroz, queso crema, palta, cherry, verdeo, sésamo y brotes.',430,NULL,'normal',_binary '',_binary '',NULL),(158,8,'Pollo','Rebozados o salteados. Arroz, queso crema, palta, cherry, verdeo, sésamo y brotes.',410,NULL,'normal',_binary '',_binary '',NULL),(159,8,'Ceviche','Salmón rosado, cebolla morada, arroz, queso crema, palta, cherry, verdeo, sésamo y brotes.',430,NULL,'normal',_binary '',_binary '',NULL),(160,8,'Calamares','Rabas, arroz, queso crema, palta, cherry, verdeo, sésamo y brotes',430,NULL,'normal',_binary '',_binary '',NULL),(161,8,'Vegetariano','Bastoncitos de muzza, arroz, quedo crema, palta, cherrys, verdeo, sésamo y brotes de soja.',410,NULL,'vegetarian',_binary '',_binary '',NULL),(162,8,'Mum Cuvee extra brut x 750 c.c.','',490,NULL,'normal',_binary '',_binary '',NULL),(163,8,'Dadá 7 (Sparking blanco)','',440,NULL,'normal',_binary '',_binary '',NULL),(164,8,'Dadá 7 (Baby)','',180,NULL,'normal',_binary '',_binary '',NULL),(165,8,'Baby Chandon x 187 c.c.','',230,NULL,'normal',_binary '',_binary '',NULL),(166,8,'Bianchi Estrella extra brut','',550,NULL,'normal',_binary '',_binary '',NULL),(167,8,'Chandon extra brut','',550,NULL,'normal',_binary '',_binary '',NULL),(168,8,'Fca. La Linda extra brut','',600,NULL,'normal',_binary '',_binary '',NULL),(169,8,'Navarro Correas extra brut','',540,NULL,'normal',_binary '',_binary '',NULL),(170,8,'Gauchezco Pinot Noir (espumante)','',590,NULL,'normal',_binary '',_binary '',NULL),(171,8,'Barón B','',1300,NULL,'normal',_binary '',_binary '',NULL),(172,8,'Flan clásico','Flan de leche condensada.',160,NULL,'normal',_binary '',_binary '',NULL),(173,8,'Trifle de maracuyá','Crocante de galletas, mousse de maracuyá y frutas tropicales.',210,NULL,'normal',_binary '',_binary '',NULL),(174,8,'Tiramisú de la casa','Con mascarpone.',210,NULL,'normal',_binary '',_binary '',NULL),(175,8,'Chocotorta','Con helado de dulce de leche.',200,NULL,'normal',_binary '',_binary '',NULL),(176,8,'Brownie con helado de crema','',210,NULL,'normal',_binary '',_binary '',NULL),(177,8,'Mousse de chocolate con frutos rojos','',220,NULL,'normal',_binary '',_binary '',NULL),(178,8,'Pavlova','Torta de merengue, crema y dulce de leche. Con frutas de estación.',220,NULL,'normal',_binary '',_binary '',NULL),(179,8,'Panqueuqes con dulce de leche','',200,NULL,'normal',_binary '',_binary '',NULL),(185,8,'Limón','',120,NULL,'normal',_binary '',_binary '',NULL),(186,8,'Crema Americana','',120,NULL,'normal',_binary '',_binary '',NULL),(187,8,'Dulce de Leche','',120,NULL,'normal',_binary '',_binary '',NULL),(188,8,'Chocolate','',120,NULL,'normal',_binary '',_binary '',NULL),(189,8,'Crocante de pollo','Con salsa barbacoa casera.',350,NULL,'normal',_binary '',_binary '',NULL),(190,8,'Albóndigas de cerdo rellenas','Rellenas de queso en salsa napolitana.',380,NULL,'normal',_binary '',_binary '',NULL),(191,8,'Bastoncitos de Mozarella','',370,NULL,'vegetarian',_binary '',_binary '',NULL),(192,8,'Rabas','',650,NULL,'normal',_binary '',_binary '',NULL),(193,8,'Langostinos rebozados','Con exquisita salsa picante.',650,NULL,'normal',_binary '',_binary '',NULL),(194,8,'Provoleta','',320,NULL,'vegetarian',_binary '',_binary '',NULL),(195,8,'Nachos con chili','Chili de carne y cheddar.',310,NULL,'normal',_binary '',_binary '',NULL),(196,8,'Tortilla de papas','Con chorizo colorado y cebolla.',370,NULL,'normal',_binary '',_binary '',NULL),(197,8,'Hongos rellenos','Op. 1: rellenos de cebolla caramelizada con panceta y queso. Op. 2: rellenos con cuatro quesos.',450,NULL,'vegetarian',_binary '',_binary '',NULL),(198,8,'Bruschetas de hongos','Con cebolla caramelizada y queso parmesano gratinado',340,NULL,'vegetarian',_binary '',_binary '',NULL),(199,8,'Empanaditas chinas de carne (x6)','',330,NULL,'normal',_binary '',_binary '',NULL),(200,8,'Empanaditas chinas de verdura (x6)','',310,NULL,'vegetarian',_binary '',_binary '',NULL),(201,8,'Empanaditas de salmón (x6)','',350,NULL,'normal',_binary '',_binary '',NULL),(202,8,'Tabla \"Mesón\" (2/3 personas)','Rabas, bastoncitos de mozarella, crocantes de pollo, empanaditas chinas y papas bravas.',1250,NULL,'normal',_binary '',_binary '',NULL),(203,8,'Tabla \"Crispy\" (2/3 personas)','Langostinos rebozados, empanaditas de salmón, sorrentinos fritos de jamón y queso, hongos rellenos con cuatro quesos y papas con cheddar.',1350,NULL,'normal',_binary '',_binary '',NULL),(204,8,'Parrillita \"Mesón\" (2/3 personas)','Tabla de matambrito de cerdo, mollejita, bife de chorizo, morcilla y chorizo bombón con papas revueltas y sus ricas salsas.',1450,NULL,'normal',_binary '',_binary '',NULL),(205,8,'Tabla de fiambres (2/3 personas)','Jamón crudo, jamón cocido, salame, bondiola de cerdo, lomo ahumado, queso en fetas, queso azul, queso pategrás, salsa de berenjenas y papas fritas. Con pan casero.',860,NULL,'normal',_binary '',_binary '',NULL),(206,8,'Y por qué no?','Empanadita criolla frita (x1)',60,NULL,'normal',_binary '',_binary '',NULL),(207,8,'Papas Bastón','Con alioli.',190,NULL,'vegetarian',_binary '',_binary '',NULL),(208,8,'Papas Revueltas','Con huevo, panceta, cebollas y verdeo.',380,NULL,'normal',_binary '',_binary '',NULL),(209,8,'Papas Gratinadas','Con queso cheddar y panceta ahumada.',380,NULL,'normal',_binary '',_binary '',NULL),(210,8,'\"La papa\"Mesón','Papas fritas con crema de queso blanco y panceta crocante.',360,NULL,'normal',_binary '',_binary '',NULL),(211,8,'Papas bravas','Papas acompañadas de la clásica salsa picante a base de deliciosos ajíes.',320,NULL,'spicy',_binary '',_binary '',NULL),(212,11,'Degustación de quesos y fiambres','Jamón crudo, salame, bondiola, mortadela con pistachos, quesos holanda, gruyere, queso marinado en limón y olivas mixtas.',900,NULL,'normal',_binary '',_binary '',NULL),(213,11,'Tabla de mar','Langostinos grillados, mejillones gratinados, rabas, panzotis de salmón, salmón ahumado, croquetas de papa y muzarella, bastones de merluza.',990,NULL,'normal',_binary '',_binary '',NULL),(214,13,'Empanada de carne cortada a cuchillo','Masa casera rellena con recado de carne de nalga cortada, prolija y pacientemente a cuchillo, huevo duro, cebollita de verdeo y dados de papas.\nSe aconseja usar el plato y servilletas, porque... \"Se Chooorrian\".',60,NULL,'normal',_binary '',_binary '',NULL),(215,13,'Empanada de Queso, cebolla y pimientos','Masa casera rellena con recado de queso, cebollita de verdeo, pimientos, debidamente condimentados para resaltar su sabor.',60,NULL,'normal',_binary '',_binary '',NULL),(216,13,'Empanada de Pollo','Masa casera rellena con recado de pollo, cebollita de verdeo, daditos de papas.',60,NULL,'normal',_binary '',_binary '',NULL),(217,15,'Clasicón','Infusión / 2 Medialunas o 2 Criollos',150,NULL,'normal',_binary '',_binary '',NULL),(218,15,'Panino','Infusión / 2 Medialunas o 2 Criollos / Mermelada y Manteca',180,NULL,'normal',_binary '',_binary '',NULL),(219,15,'Campo','Infusión / 2 Tostadas de pan de campo / 1 Medialuna / 1 Criollo / Manteca / Mermelada casera / Queso crema / Jugo de naranja mediano',210,NULL,'normal',_binary '',_binary '',NULL),(220,15,'Livianito','Infusión / Tostadas de pan de campo / Mermelada casera / Queso crema / Jugo de naranja chico',200,NULL,'normal',_binary '',_binary '',NULL),(221,15,'Como me Gusta a Mí','Infusión / 2 Tostadas de pan negro / Huevo revuelto / Queso crema / Mermelada casera / Fruta de estación de gajos / Frutos secos / Jugo de naranja chico',200,NULL,'normal',_binary '',_binary '',NULL),(222,15,'Energía','Infusión / 2 Tostadas de pan negro / Queso crema / Mermelada casera / Omelette de jamón y queso / Jugo de naranja mediano',290,NULL,'normal',_binary '',_binary '',NULL),(223,15,'Mafalda','Infusión / 2 Mafaldas',210,NULL,'normal',_binary '',_binary '',NULL),(224,15,'Tostado Triple','Tostado de jamón y queso',240,NULL,'normal',_binary '',_binary '',NULL),(225,15,'Individual','Naranja, Limonada, Panino (Naranja, Durazno, Stevia), Feliz (Naranja, Zanahoria, Durazno, Chía, Stevia), Detox (Manzana verde, Naranja, Espinaca, Jengibre, Stevia)',180,NULL,'normal',_binary '',_binary '',NULL),(226,15,'Jarra','Naranja, Limonada, Panino (Naranja, Durazno, Stevia), Feliz (Naranja, Zanahoria, Durazno, Chía, Stevia), Detox (Manzana verde, Naranja, Espinaca, Jengibre, Stevia)',350,NULL,'normal',_binary '',_binary '',NULL),(227,15,'Milanesa de peceto','+ Papas fritas',360,NULL,'normal',_binary '',_binary '',NULL),(228,15,'Hamburguesa','+ Papas fritas',360,NULL,'normal',_binary '',_binary '',NULL),(229,15,'Fideos','+ Salsa',360,NULL,'normal',_binary '',_binary '',NULL),(230,15,'Flan de huevo Casero','',170,NULL,'normal',_binary '',_binary '',NULL),(231,15,'Ensalada de frutas','',170,NULL,'normal',_binary '',_binary '',NULL),(232,15,'Crepes de dulce de leche con helado','',180,NULL,'normal',_binary '',_binary '',NULL),(233,15,'1 Bocha de helado c/salsa','',110,NULL,'normal',_binary '',_binary '',NULL),(234,15,'2 Bocha de helado c/salsa','',180,NULL,'normal',_binary '',_binary '',NULL),(235,15,'Porción de Torta ó Tarta','',180,NULL,'normal',_binary '',_binary '',NULL),(236,15,'Gaseosa','',90,NULL,'normal',_binary '',_binary '',NULL),(237,15,'Agua Mineral','',90,NULL,'normal',_binary '',_binary '',NULL),(238,15,'Agua Saborizada','',90,NULL,'normal',_binary '',_binary '',NULL),(239,15,'Café','',80,NULL,'normal',_binary '',_binary '',NULL),(240,15,'Café con Crema','',90,NULL,'normal',_binary '',_binary '',NULL),(241,15,'Café Jarro','',90,NULL,'normal',_binary '',_binary '',NULL),(242,15,'Café Jarro c/Crema','',100,NULL,'normal',_binary '',_binary '',NULL),(243,15,'Café Doble','',100,NULL,'normal',_binary '',_binary '',NULL),(244,15,'Café Doble c/Crema','',110,NULL,'normal',_binary '',_binary '',NULL),(245,15,'Café con leche','',100,NULL,'normal',_binary '',_binary '',NULL),(246,15,'Té/Té de hierbas','',80,NULL,'normal',_binary '',_binary '',NULL),(247,15,'Quilmes stout 1lt.','',300,NULL,'normal',_binary '',_binary '',NULL),(248,15,'Stella 975 cc','',350,NULL,'normal',_binary '',_binary '',NULL),(249,15,'Stella noire 975 cc','',360,NULL,'normal',_binary '',_binary '',NULL),(250,15,'Stella 1/3','',170,NULL,'normal',_binary '',_binary '',NULL),(251,15,'Corona 1/3','',200,NULL,'normal',_binary '',_binary '',NULL),(252,15,'Quilmes 1/3','',130,NULL,'normal',_binary '',_binary '',NULL),(253,15,'Quilmes Stout 1/3','',140,NULL,'normal',_binary '',_binary '',NULL),(254,15,'Quilmes 1/2','',160,NULL,'normal',_binary '',_binary '',NULL),(255,15,'Quilmes 1lt.','',240,NULL,'normal',_binary '',_binary '',NULL),(256,15,'Patagonia 730cc','',380,NULL,'normal',_binary '',_binary '',NULL),(257,15,'Quilmes (Media Pinta)','',160,NULL,'normal',_binary '',_binary '',NULL),(258,15,'Quilmes (Pinta)','',220,NULL,'normal',_binary '',_binary '',NULL),(259,15,'Quilmes (Pinta)','',220,NULL,'normal',_binary '',_binary '',NULL),(260,15,'Stella Artois (Media Pinta)','',180,NULL,'normal',_binary '',_binary '',NULL),(261,15,'Stella Artois (Pinta)','',240,NULL,'normal',_binary '',_binary '',NULL),(262,15,'Cafayate Malbec','',320,NULL,'normal',_binary '',_binary '',NULL),(263,15,'Elementos Malbec','',340,NULL,'normal',_binary '',_binary '',NULL),(264,15,'Cafayate Gran Linaje','',640,NULL,'normal',_binary '',_binary '',NULL),(265,15,'Las Perdices Malbec','',490,NULL,'normal',_binary '',_binary '',NULL),(266,15,'Alaris Malbec y Blanco','',290,NULL,'normal',_binary '',_binary '',NULL),(267,15,'Cafayate Chardonay','',320,NULL,'normal',_binary '',_binary '',NULL),(268,15,'Champagne Extra Brut','',490,NULL,'normal',_binary '',_binary '',NULL),(269,15,'Lúnes a Viernes','Consultá el Menú de Hoy',360,NULL,'normal',_binary '',_binary '',NULL),(270,15,'Sabado / Domingo / Feriados','Consultá el Menú de Hoy',430,NULL,'normal',_binary '',_binary '',NULL),(271,15,'Tartas X3','Tres tartines de verduras de estación + Ensalada de hojas verdes',410,NULL,'normal',_binary '',_binary '',NULL),(272,15,'Pechuga al Champignon','Pechuga de Pollo con salsa al champignon + Guarnición',430,NULL,'normal',_binary '',_binary '',NULL),(273,15,'Bife de Chorizo','Bife de Chorizo + Guarnición a elección',500,NULL,'normal',_binary '',_binary '',NULL),(274,15,'Bistec','Delicioso y tierno corte de carne vacuna + Papas fritas con huevo revuelto y panceta crocante',450,NULL,'normal',_binary '',_binary '',NULL),(275,15,'Bifecitos de Cuadril','Tiernos cortes de cuadril + Guarnición a elección',400,NULL,'normal',_binary '',_binary '',NULL),(276,15,'Brótola (de mar)','Filete de Brótola con salsa de langostinos enteros + Guarnición a elección',540,NULL,'normal',_binary '',_binary '',NULL),(277,15,'Ravioles','Ricota y Verdura + Salsa',360,NULL,'vegetarian',_binary '',_binary '',NULL),(278,15,'Sorrentinos','Calabaza y Mozzarella + Salsa',360,NULL,'vegetarian',_binary '',_binary '',NULL),(279,15,'Fajitas Mex (para compartir)','Fajitas de carne, pollo, huevo revuelto y vegetales salteados',820,NULL,'normal',_binary '',_binary '',NULL),(280,15,'Super Milas Napolitana (para compartir)','Jamón, queso y tomate',770,NULL,'normal',_binary '',_binary '',NULL),(281,15,'Super Milas Patagonia (para compartir)','Rúcula, queso y tomates cherry',770,NULL,'normal',_binary '',_binary '',NULL),(282,15,'Papas Cerveceras','Papas / Crema de leche / Mozzarella / Champignones / Cebolla de verdeo',320,NULL,'normal',_binary '',_binary '',NULL),(283,15,'Papas con Huevo','Papas con huevos fritos o revueltos',260,NULL,'normal',_binary '',_binary '',NULL),(284,15,'Reina de Berenjenas','Berenjenas / Mozzarella / Parmesano / Tomate / Albahaca / Sal y pimienta',320,NULL,'normal',_binary '',_binary '',NULL),(285,15,'Rabas','',540,NULL,'normal',_binary '',_binary '',NULL),(286,15,'Omelette','De Jamón y Queso + Guarnición',370,NULL,'normal',_binary '',_binary '',NULL),(287,13,'Locro Pulsudo \"de la Negrita\"','Manjar criollo a base de maíz blanco partido, poroto pallares, sobrepecho en dados, panceta, patita de cerdo y chorizo colorado, junto al zapallo plomo y algunos secretos que le daba mi Máma.',380,NULL,'normal',_binary '',_binary '',NULL),(288,13,'Humita a la Olla \"la facil\"','Choclo rallado, cebolla y pimiento rojo rehogados en aceite y aromatizada con albahaca, pero se ahorra la envoltura en la chala y se cocina suelta en l´olla, removiendo pacientemente pa´que no se pegue.\nEl queso, es de vaca nomás.',380,NULL,'normal',_binary '',_binary '',NULL),(289,13,'Buseca a la española \"pero salteña\"','Especie de Guiso de mondongo tiernizado muy bien, se completa con chorizo de cerdo y colorado, panceta en dados y Garbanzo bien hervido.\nRe-riquíssimo. Pa´calentar el cuerpito.',380,NULL,'normal',_binary '',_binary '',NULL),(290,13,'Riñoncitos al Torrontés','Cazuela de riñoncitos enriquecida con el aroma y sabor típico Torrontés de Cafayate, hecha sobre la base de una salsa de cebolla, acompañada con arroz graneado del norte.\nNo macha. ni emborracha... hip!!',380,NULL,'normal',_binary '',_binary '',NULL),(291,13,'Guiso i´Lentejas','Otro guisito criollo, como se imagina, a base de Lentejas, cebolla, pimiento rojo, tomates y dados de carne de ternera y panceta, chorizo de cerdo.',380,NULL,'normal',_binary '',_binary '',NULL),(292,13,'Humita en chala \"de la abuela\"','Laboriooosa molienda de choclo blanco fresco, rallado, con un sofrito de cebolla y pimiento colorado, aromatizada con albahaca fresca y rellena con queso de cabra, envuelta en chalas frescas y cocinada en agua hirviente.\nEnvase no retornable... se contarán las chalas.',200,NULL,'vegetarian',_binary '',_binary '',NULL),(293,13,'Tamal \"pero está bueno\"','Pasta de maíz (mote) molido que se amasa y se rellena con carne de cabeza de cerdo o vaca preparada como el recado de la empanada, envuelta en chalas secas y atadito como caramelo.\n(No tiene pasa de uvas)',180,NULL,'normal',_binary '',_binary '',NULL),(294,13,'Dulce Artesanal De Peras 420gr','Dulce elaborado de forma de casera con una selección de peras de 1era calidad, con el toque característico de nuestra cocina.',220,NULL,'normal',_binary '',_binary '',NULL),(295,13,'Dulce de Cayote','El cayote es un cultivo andino que abunda en la región cuyana y en el noroeste argentino.',80,NULL,'normal',_binary '',_binary '',NULL),(296,13,'Cuaresmillo En Almibar','El cuaresmillo es una variedad de durazno o melocotón pequeño, muy sabroso, que toma su nombre de su época de cosecha, la cuaresma.',80,NULL,'normal',_binary '',_binary '',NULL),(297,13,'Higos En Almibar','',80,NULL,'normal',_binary '',_binary '',NULL),(298,13,'Zapallo En Almibar','',80,NULL,'normal',_binary '',_binary '',NULL),(299,13,'Quesillo Con Dulces Regionales','Puede elegir solo uno de estos:\nCayote c/nuez, Cuaresmillo, Miel De Caña, Higos o zapallo en almíbar.\n*Queso de vaca hecho en forma artesanal, hilado y en lonjas.',100,NULL,'normal',_binary '',_binary '',NULL),(300,13,'Quesillo mixto con dulces regionales','Puede elegir hasta tres de estos:\nCayote c/nuez, Cuaresmillo, Miel De Caña, Higos o Zapallo en almíbar.\n*Queso de vaca hecho en forma artesanal, hilado y en lonjas.',130,NULL,'normal',_binary '',_binary '',NULL),(301,13,'Budín De Pan Casero','',80,NULL,'normal',_binary '',_binary '',NULL),(302,13,'Flan Casero De Huevo','',80,NULL,'normal',_binary '',_binary '',NULL),(303,13,'Queso y Dulce De Batata o Membrillo','',100,NULL,'normal',_binary '',_binary '',NULL),(304,13,'Gaseosas 350ml','Gaseosas De La Linea Coca Cola',100,NULL,'normal',_binary '',_binary '',NULL),(305,13,'Agua Saborizadas Aquarius 500cc','',100,NULL,'normal',_binary '',_binary '',NULL),(306,13,'Agua Con Gas','',100,NULL,'normal',_binary '',_binary '',NULL),(307,13,'Agua Sin Gas','',100,NULL,'normal',_binary '',_binary '',NULL),(308,13,'Gaseosas De 1,25lt','',180,NULL,'normal',_binary '',_binary '',NULL),(309,13,'Imperial Rubia 1lt','Cerveza dorada, su aroma fruta y su inconfundible sabor fresco e intenso la convierten en la autentica y tradicional Cerveza Especial Argentina',280,NULL,'normal',_binary '',_binary '',NULL),(310,13,'Imperial, Amber, Stout, IPA','',300,NULL,'normal',_binary '',_binary '',NULL),(311,13,'Heineken 1lt','Cerveza Rubia',350,NULL,'normal',_binary '',_binary '',NULL),(312,13,'Finca Humanao','Vino de Bodega Humanao, de cepas cultivadas en el Valle De Molinos, a 2.230 mts. de altura sobre el nivel del mar, lo que dan un sabor y aroma característico. Crianza en barricas de roble francés y americanas, durante 12 meses.',480,NULL,'normal',_binary '',_binary '',NULL),(313,13,'Humanao Reserva','Vino de Bodega Humanao, salteño, específicamente del Valle de Molinos, criado en barricas de roble francés, durante 12 meses.\nDe intenso color rojo rubí, con leves tonalidades violáceas. Predominan frutos rojos, casis con un segundo plano de notas a especies, mineral y sutil madera de roble francés.',900,NULL,'normal',_binary '',_binary '',NULL),(314,13,'Territorio','Vino de Bodega Amalaya, las uvas provienen de los Valles Calchaquíes, de viñedos plantados a 1700 mts de altura, en Salta.\n\nVino floral y especiado de cuerpo medio.',350,NULL,'normal',_binary '',_binary '',NULL),(315,15,'Lomo Panino','Lomo completo de carne o pollo + Papas Fritas',0,'360/410','normal',_binary '',_binary '',NULL),(316,13,'Vallisto','De color rojo intenso con tonos violáceos. Intensidad aromática alta, carácter:\nfrutado–tostado, complejidad: media, y aromas a frutos rojos, ciruelas, pimiento y especias, que reflejan las características del Terroir.\nEn boca es seco, de muy buen cuerpo y textura carnosa, con taninos sedosos y maduros. La persistencia es prolongada y el final es elegante.',550,NULL,'normal',_binary '',_binary '',NULL),(317,15,'Lomo Nino','Lomo completo de carne o pollo / Panceta / Salteado de pimientos y cebolla + Papas Fritas',0,'380/430','normal',_binary '',_binary '',NULL),(318,15,'Veggie','Zucchinis / Berenjenas / Morrón / Zanahorias / Hojas de rúcula fresca / Mozzarella / Queso crema / Oliva, pimienta y sal + Papas Fritas',0,'410','vegetarian',_binary '',_binary '',NULL),(319,13,'Coquena','Vino De Bodega Yacochuya.\nLos indios de la Puna y de la Quebrada creen en un personaje mítico, “Coquena”. Es el amo y el propietario de las vicuñas y de los guanacos.',600,NULL,'normal',_binary '',_binary '',NULL),(320,13,'Coquena Corte','Vino De Bodega Yacochuya. Corte: Malbec, Cabernet Sauvignon y Tannat\nLos indios de la Puna y de la Quebrada creen en un personaje mítico, “Coquena”. Es el amo y el propietario de las vicuñas y de los guanacos.',900,NULL,'normal',_binary '',_binary '',NULL),(321,11,'Tapeo español','Buñuelos con allioli, tortilla de papas, anillos de calamar, champignones marinados y mejillones al limón.',700,NULL,'normal',_binary '',_binary '',NULL),(322,11,'Langostinos apanados','Con pure de coliflor',290,NULL,'normal',_binary '',_binary '',NULL),(323,11,'Rabas para uno','A la andaluza con allioli de limón.',240,NULL,'normal',_binary '',_binary '',NULL),(324,13,'Menu 1','- 1 Empanada a elección (carne cortada a cuchillo, Queso y cebolla, pollo)\n-  1 Cazuela (Del Día)\n- 1 Postre',400,NULL,'normal',_binary '',_binary '',NULL),(325,13,'Menú 2','- 2 Empanadas a elección (Carne cortada a cuchillo, Queso y cebolla o Pollo).\n- 1 Cazuela (Del Día).\n- 1 Postre.\n- 1 Bebida p/4',500,NULL,'normal',_binary '',_binary '',NULL),(326,13,'Empanada Arabe','Masa casera rellena de la combinación de carne, cebolla y tomates picaditos, sazonados con el sabor característicos de nuestra cocina!\nY por supuesto, \"no puede faltar el toque de sabor del limón\"',60,NULL,'normal',_binary '',_binary '',NULL),(327,13,'Lasagna','',300,NULL,'normal',_binary '',_binary '',NULL),(328,13,'Tallarines Caseros','Nuestra pasta casera: Masa de huevo y harina 0000.\n\n                               Recomendación del Cheff:\nOLVIDATE DE TODO LO ANTERIOR!\nY SOLO TRANSPORTATE CON  LA MEMORIA,  A LA COCINA DE NUESTRAS ABUELAS\nDISFRUTA DE ESTE MOMENTO INOLVIDABLE, CON LA MUSICA QUE MAS TE APASIONA, Y  LA COMPAÑÍA QUE MEJOR TE SIENTA.',300,NULL,'normal',_binary '',_binary '',NULL),(329,13,'Menú 1','- 1 Empanada a elección (carne cortada a cuchillo, Queso y cebolla, pollo)\n-  1 Cazuela (Del Día)\n- 1 Postre',400,NULL,'normal',_binary '',_binary '',NULL),(330,13,'Menu 2','- 2 Empanada a elección (carne cortada a cuchillo, Queso y cebolla, pollo)\n-  1 Cazuela (Del Día)\n- 1 Postre\n- 1 Bebida p/4',500,NULL,'normal',_binary '',_binary '',NULL),(331,11,'Rabas para dos','A la andaluza con allioli de limón.',480,NULL,'normal',_binary '',_binary '',NULL),(332,11,'Berenjenas al Forno','Apanadas con salsa roja y queso gratinado.',300,NULL,'normal',_binary '',_binary '',NULL),(333,11,'Provoleta','Con miel, hongos de las sierras y almendras.',280,NULL,'normal',_binary '',_binary '',NULL),(334,14,'PAPAS TIPICAS','Papas fritas corte bastón cubiertas de queso cheddar fundido, panceta y verdeo.',280,NULL,'normal',_binary '',_binary '',NULL),(336,14,'Papas con huevo','Papas con queso crema y huevo revuelto',280,NULL,'normal',_binary '',_binary '',NULL),(337,14,'Papas alfredo','Papas bastón, salsa Alfredo, langostinos salteados.',380,NULL,'normal',_binary '',_binary '',NULL),(338,14,'Nachos','Nachos con cazuela de cheddar fundido',250,NULL,'normal',_binary '',_binary '',NULL),(339,14,'crocantes de pollo','con cazuela de mostaza,miel y bbq',260,NULL,'normal',_binary '',_binary '',NULL),(340,14,'Rabas','Aros de calamar rebozados.\nCazuela de bbq y alioli.',450,NULL,'normal',_binary '',_binary '',NULL),(341,14,'Provoleta','Porción de queso provolone gratinado con especias. \nAcompañada de rúcula, tomates asados y aceitunas negras.',450,NULL,'vegetarian',_binary '',_binary '',NULL),(342,14,'Bastones de muzzarella','Con cazuela de alioli y bbq.',350,NULL,'vegetarian',_binary '',_binary '',NULL),(343,14,'Aros de cebolla','',250,NULL,'normal',_binary '',_binary '',NULL),(344,14,'Aros de cebolla','Con cazuela de alioli y bbq',250,NULL,'vegetarian',_binary '',_binary '',NULL),(345,17,'CAFE','',90,NULL,'normal',_binary '',_binary '',NULL),(346,17,'CAFE AMERICANO','',100,NULL,'normal',_binary '',_binary '',NULL),(347,17,'CAFE  DOBLE','',110,NULL,'normal',_binary '',_binary '',NULL),(348,17,'CAFE ESPECIAL','',200,NULL,'normal',_binary '',_binary '',NULL),(349,17,'CAPUCHINO','',110,NULL,'normal',_binary '',_binary '',NULL),(350,17,'SUBMARINO','',120,NULL,'normal',_binary '',_binary '',NULL),(351,17,'TE','',80,NULL,'normal',_binary '',_binary '',NULL),(352,17,'TE SABORIZADO','',90,NULL,'normal',_binary '',_binary '',NULL),(353,17,'TE CON LECHE','',100,NULL,'normal',_binary '',_binary '',NULL),(354,17,'CAFE CON CREMA','',100,NULL,'normal',_binary '',_binary '',NULL),(355,17,'CAFE AMERICANO CON CREMA','',110,NULL,'normal',_binary '',_binary '',NULL),(356,17,'AGUA MINERAL','',110,NULL,'normal',_binary '',_binary '',NULL),(357,17,'GASEOSA','',110,NULL,'normal',_binary '',_binary '',NULL),(358,17,'JUGO DE NARANJA','',160,NULL,'normal',_binary '',_binary '',NULL),(359,17,'LICUADOS','',170,NULL,'normal',_binary '',_binary '',NULL),(360,17,'AGUA SABORIZADA','',120,NULL,'normal',_binary '',_binary '',NULL),(361,17,'MEDIALUNAS O CRIOLLITOS','',40,NULL,'normal',_binary '',_binary '',NULL),(362,17,'DESAYUNO','',200,NULL,'normal',_binary '',_binary '',NULL),(363,17,'DESAYUNO CON TOSTADAS','',220,NULL,'normal',_binary '',_binary '',NULL),(364,17,'DESAYUNO KGB','',290,NULL,'normal',_binary '',_binary '',NULL),(365,17,'TORTAS','',210,NULL,'normal',_binary '',_binary '',NULL),(366,17,'TARTAS','',190,NULL,'normal',_binary '',_binary '',NULL),(367,17,'MAFALDA','',90,NULL,'normal',_binary '',_binary '',NULL),(368,17,'CHOPP LISO 330 CC','',150,NULL,'normal',_binary '',_binary '',NULL),(369,17,'BALON 500 CC','',190,NULL,'normal',_binary '',_binary '',NULL),(370,17,'CORONA 330 CC','',280,NULL,'normal',_binary '',_binary '',NULL),(371,17,'STELLA ARTOIS 970 CC','',300,NULL,'normal',_binary '',_binary '',NULL),(372,17,'STELLA ARTOIS NEGRA','',340,NULL,'normal',_binary '',_binary '',NULL),(373,17,'PATAGONIA  750 CC','',380,NULL,'normal',_binary '',_binary '',NULL),(374,17,'BUDWEISER 970 CC','',280,NULL,'normal',_binary '',_binary '',NULL),(375,17,'TRIPLE','',200,NULL,'normal',_binary '',_binary '',NULL),(376,17,'TOSTADO','jamón y queso tostado',210,NULL,'normal',_binary '',_binary '',NULL),(377,17,'ISIDORITO','jamón, queso, tomate , ketchup',230,NULL,'normal',_binary '',_binary '',NULL),(378,17,'PRIMAVERA','jamón, queso, tomate, huevo',280,NULL,'normal',_binary '',_binary '',NULL),(379,17,'NAPOLITANO','jamon, queso gratinado, tomate, aceituna y huevo',329,NULL,'normal',_binary '',_binary '',NULL),(380,17,'NINOTCHKA','jamón crudo, queso, manteca',329,NULL,'normal',_binary '',_binary '',NULL),(381,17,'SIBERIA','pan árabe, jamón crudo, queso gratinado, manteca',329,NULL,'normal',_binary '',_binary '',NULL),(382,17,'LOMO MOSCU','lomo, queso',309,NULL,'normal',_binary '',_binary '',NULL),(383,17,'LOMO ESTRELLA ROJA','lomo, jamón, queso, tomate, aceituna, huevo y salsa golf',349,NULL,'normal',_binary '',_binary '',NULL),(384,11,'Papas Fritas Bastón','',160,NULL,'normal',_binary '',_binary '',NULL),(385,17,'LOMO DE POLLO','pollo, jamón, queso, tomate, lechuga y huevo',309,NULL,'normal',_binary '',_binary '',NULL),(386,11,'Papas Fritas','Con huevo revuelto y panceta.',230,NULL,'normal',_binary '',_binary '',NULL),(387,11,'Papas Bravas','Rústicas con mayonesa picante.',200,NULL,'spicy',_binary '',_binary '',NULL),(388,17,'KGB','pan árabe, salchicha ahumada, queso, tomate y huevo',309,NULL,'normal',_binary '',_binary '',NULL),(389,11,'Papas Ochre','Salsa cuatro quesos y  panceta.',240,NULL,'normal',_binary '',_binary '',NULL),(390,17,'HAMBURGUESA CASERA','hamburguesa casera, tomate, lechuga, queso ,huevo mayonesa y ketchup',320,NULL,'normal',_binary '',_binary '',NULL),(391,11,'Papas Con Cheddar','',240,NULL,'normal',_binary '',_binary '',NULL),(392,11,'Empanada Criolla','',80,NULL,'normal',_binary '',_binary '',NULL),(393,11,'Empanada Caprese','',80,NULL,'normal',_binary '',_binary '',NULL),(394,11,'Empanada De Espinaca','',90,NULL,'normal',_binary '',_binary '',NULL),(395,11,'Ochre','Verduras de estación asadas.',350,NULL,'vegetarian',_binary '',_binary '',NULL),(396,11,'Caesar De Pollo','Lechuga criolla, huevo duro, parmesano, panceta, crutons y aderezo cesar.',410,NULL,'normal',_binary '',_binary '',NULL),(397,11,'Del Mar','Mix de hojas, salmón rosado ahumado, espárragos, alcaparras verdes, castañas y escamas de parmesano.',440,NULL,'normal',_binary '',_binary '',NULL),(398,11,'Gohan','(Sushi al plato)\nArroz, palta, queso, salmón, langostinos y kanikama con semillas de sésamo.',450,NULL,'normal',_binary '',_binary '',NULL),(399,11,'Gohan Vegetariano','Arroz, palta, queso, champignones, pepino y zanahoria con semillas de sésamo.',400,NULL,'vegetarian',_binary '',_binary '',NULL),(400,17,'PIZZA MUZZARELLA','',499,NULL,'normal',_binary '',_binary '',NULL),(401,17,'PIZZA NAPOLITANA','',560,NULL,'normal',_binary '',_binary '',NULL),(402,17,'PIZZA ESPECIAL','',560,NULL,'normal',_binary '',_binary '',NULL),(403,11,'Salmón Rosado','Grillado con vegetales asados.',850,NULL,'normal',_binary '',_binary '',NULL),(404,11,'Tempura de Salmón y vegetales','Con mayonesa de soja.',460,NULL,'normal',_binary '',_binary '',NULL),(405,11,'Trucha','Grillada con vegetales asados.',580,NULL,'normal',_binary '',_binary '',NULL),(406,11,'Lenguado','Con salsa de limón, alcaparras, aceitunas y tomates secos con vegetales.',500,NULL,'normal',_binary '',_binary '',NULL),(407,11,'Merluza','A la andaluza con vegetales asados.',420,NULL,'normal',_binary '',_binary '',NULL),(408,11,'Pescado de río','(Dorado o Surubí) con tratar de quinoa y vegetales.',450,NULL,'normal',_binary '',_binary '',NULL),(409,11,'Langostinos a la chapa','Sobre timbal de arroz.',550,NULL,'normal',_binary '',_binary '',NULL),(410,11,'Bife de chorizo','Con chimichurri y papas fritas.',599,NULL,'normal',_binary '',_binary '',NULL),(411,11,'Entraña','Con papas cuadruchi.',570,NULL,'normal',_binary '',_binary '',NULL),(412,11,'Asado de tira','Con papas fritas o mix de verdes.',570,NULL,'normal',_binary '',_binary '',NULL),(413,11,'Medallones de lomo','Con salsa de champignon y papa aplastada.',599,NULL,'normal',_binary '',_binary '',NULL),(414,11,'Medallones de lomo','Con salsa malbec con hongos, papines y panceta.',599,NULL,'normal',_binary '',_binary '',NULL),(415,11,'Cazuela de lomo','',480,NULL,'normal',_binary '',_binary '',NULL),(416,11,'Matambrito de cerdo','Al limón y tomillo con papas fritas.',520,NULL,'normal',_binary '',_binary '',NULL),(417,11,'Pollo deshuesado','Con bouquet de hojas.',430,NULL,'normal',_binary '',_binary '',NULL),(418,11,'Wok','De vegetales con pollo crujiente en sésamo.',430,NULL,'normal',_binary '',_binary '',NULL),(419,11,'Milanesa de peceto','A la napolitana con papas fritas.',400,NULL,'normal',_binary '',_binary '',NULL),(420,11,'Milanesa de peceto','A caballo con papas fritas.',400,NULL,'normal',_binary '',_binary '',NULL),(421,17,'LOMO ESTRELLA ROJA','LOMO ,QUESO , JAMÓN, HUEVO, TOMATE,LECHUGA.',390,NULL,'normal',_binary '',_binary '',NULL),(422,17,'POLLO GRILLE','DESHUESADO DE POLLO, LECHUGA,TOMATE Y ZANAHORIA RALLADA',350,NULL,'normal',_binary '',_binary '',NULL),(423,17,'HAMBURGUESA','HAMBURGUESA DE CARNE, CON JAMÓN,QUESO ,TOMATE, LECHUGA Y HUEVO',320,NULL,'normal',_binary '',_binary '',NULL),(424,17,'TRADICIONAL','LECHUGA,TOMATE, ZANAHORIA Y HUEVO',170,NULL,'normal',_binary '',_binary '',NULL),(425,17,'PRIMAVERA','ATÚN, TOMATE, PALMITO Y HUEVO',250,NULL,'normal',_binary '',_binary '',NULL),(426,17,'TROPICAL','JAMÓN ,QUESO, PALMITO, LECHUGA,TOMATE, HUEVO Y ACEITUNAS',280,NULL,'normal',_binary '',_binary '',NULL),(427,17,'KGB','ANANÁ, JAMÓN CRUDO, POLLO Y TOMATE',280,NULL,'normal',_binary '',_binary '',NULL),(428,17,'DE JAMÓN Y QUESO','OMELETTE DE JAMON Y QUESO CON ENSALADA DE LECHUGA Y TOMATE',200,NULL,'normal',_binary '',_binary '',NULL),(429,17,'JAMÓN QUESO Y TOMATE','OMOLETTE DE JAMÓN QUESO Y TOMATE CON ENSALADA DE LECHUGA Y TOMATE',270,NULL,'normal',_binary '',_binary '',NULL),(430,17,'CON ESPÁRRAGOS','OMELETTE DE QUESO Y ESPÁRRAGOS CON ENSALADA DE LECHUGA Y TOMATE',290,NULL,'normal',_binary '',_binary '',NULL),(431,17,'kGB','CREMA DE CHAMPIGNION, QUESO AL GRATE',250,NULL,'normal',_binary '',_binary '',NULL),(432,17,'NAPOLITANO','SALSA DE TOMATE,J COCIDO, QUESO, OREGANO',220,NULL,'normal',_binary '',_binary '',NULL),(433,17,'BLENDERS PRIDE','',240,NULL,'normal',_binary '',_binary '',NULL),(434,17,'CHIVAS REGALS','',350,NULL,'normal',_binary '',_binary '',NULL),(435,17,'GLENFIDDCH','',440,NULL,'normal',_binary '',_binary '',NULL),(436,17,'100 PIPES','',279,NULL,'normal',_binary '',_binary '',NULL),(437,11,'Milanesa de peceto','Con papas fritas.',350,NULL,'normal',_binary '',_binary '',NULL),(438,11,'Milanesa de pollo','Con papas fritas.',300,NULL,'normal',_binary '',_binary '',NULL),(439,11,'Para dos personas','Empanadas criollas, chorizo, morcilla, riñoncito, asado de tira, matambre de cerdo, papas fritas.',1200,NULL,'normal',_binary '',_binary '',NULL),(440,11,'Para una persona','Empanada criolla, chorizo, morcilla, entraña, asado de tira, papas fritas.',800,NULL,'normal',_binary '',_binary '',NULL),(441,11,'Ñoquis de papa','',300,NULL,'spicy',_binary '',_binary '',NULL),(442,11,'Ravioles de espinaca','',3500,NULL,'normal',_binary '',_binary '',NULL),(443,11,'Sorrentinos de berenjena y mozzarella','',390,NULL,'normal',_binary '',_binary '',NULL),(444,11,'Sorrentinos de humita en doble textura','',390,NULL,'normal',_binary '',_binary '',NULL),(445,11,'Sorrentinos thai','Camarones, coco, curry, jengibre y p. de jamaica.',490,NULL,'normal',_binary '',_binary '',NULL),(446,11,'Panzottis de cabrito, verduras y hierbas','',430,NULL,'normal',_binary '',_binary '',NULL),(447,11,'Panzottis de langostino al limon','',430,NULL,'normal',_binary '',_binary '',NULL),(448,11,'Panzottis de salmon y mozzarella','',430,NULL,'normal',_binary '',_binary '',NULL),(449,11,'Boscaiola','Cebolla, panceta, hongos frescos, vino blanco, crema y perejil.',100,NULL,'normal',_binary '',_binary '',NULL),(450,11,'Cuatro quesos','',100,NULL,'normal',_binary '',_binary '',NULL),(451,11,'De camarones','',120,NULL,'normal',_binary '',_binary '',NULL),(452,11,'Triple','Jamon y queso.',200,NULL,'normal',_binary '',_binary '',NULL),(453,11,'Tostado','Jamon cocido, queso, tostado.',200,NULL,'normal',_binary '',_binary '',NULL),(454,11,'Bon vivant','Jamon crudo, rucula y tomates secos.',270,NULL,'normal',_binary '',_binary '',NULL),(455,11,'Primavera','Jamon, queso, tomate y huevo.',240,NULL,'normal',_binary '',_binary '',NULL),(456,11,'Napolitano','Jamon, queso gratinado, tomate, oregano y huevo.',300,NULL,'normal',_binary '',_binary '',NULL),(457,11,'Del mar','Salmon rosado ahumado, cebolla morada, tomate y queso.',570,NULL,'normal',_binary '',_binary '',NULL),(458,11,'Vegetariano','Pimiento, zucchini, berenjena, tomate y morrones.',220,NULL,'vegetarian',_binary '',_binary '',NULL),(459,11,'Lomo completo','Lomo, jamon, queso, tomate, aceituna, huevo, papas fritas.',360,NULL,'normal',_binary '',_binary '',NULL),(460,11,'Lomo de pollo','Pollo, jamon, queso, lechuga, tomate, huevo, papas fritas.',330,NULL,'normal',_binary '',_binary '',NULL),(461,11,'Lomo de molleja','Molleja, jamon, queso, lechuga, tomate, huevo, papas fritas.',390,NULL,'normal',_binary '',_binary '',NULL),(462,11,'Hamburguesa','De carne, jamon, panceta, queso, lechuga, cebolla morada, tomate, huevo, pepinillos dulces, papas fritas.',330,NULL,'normal',_binary '',_binary '',NULL),(463,18,'Café con leche','café con leche y dos medialunas',122,NULL,'normal',_binary '',_binary '',NULL),(464,19,'Café Expreso','',70,NULL,'normal',_binary '',_binary '',NULL),(465,19,'Café Jarrito','',90,NULL,'normal',_binary '',_binary '',NULL),(466,19,'Café Doble','',110,NULL,'normal',_binary '',_binary '',NULL),(467,19,'Café con Leche','',100,NULL,'normal',_binary '',_binary '',NULL),(468,19,'\"La MUNDIAL\"','Café con leche/té, pan de campo, 2 medialunas o 2 criollos',340,NULL,'normal',_binary '',_binary '',NULL),(469,11,'Lomo al plato','Lomo, queso, jamon, huevo, tomate, lechuga, papas fritas.',380,NULL,'normal',_binary '',_binary '',NULL),(470,11,'Lomo de pollo al plato','Pechuga de pollo, queso, jamon, huevo, lechuga, tomate y papas fritas.',380,NULL,'normal',_binary '',_binary '',NULL),(471,11,'Hamburguesa','De carne, jamon, panceta, queso, lechuga, cebolla morada, tomate, huevo, papas bravas con mayonesa picante.',330,NULL,'normal',_binary '',_binary '',NULL),(472,11,'Gaseosa','',110,NULL,'normal',_binary '',_binary '',NULL),(473,11,'Agua saborizada','',120,NULL,'normal',_binary '',_binary '',NULL),(474,11,'Agua mineral','',110,NULL,'normal',_binary '',_binary '',NULL),(475,11,'Jugos naturales','',180,NULL,'normal',_binary '',_binary '',NULL),(476,11,'Licuados','',179,NULL,'normal',_binary '',_binary '',NULL),(477,11,'Limonada con menta y jengibre','',180,NULL,'normal',_binary '',_binary '',NULL),(478,11,'Smoothies','',180,NULL,'normal',_binary '',_binary '',NULL),(479,11,'Helado de 1 sabor','',130,NULL,'normal',_binary '',_binary '',NULL),(480,11,'Helado de 2 sabores','',170,NULL,'normal',_binary '',_binary '',NULL),(481,11,'Frutos del bosque con crema chantilly','',270,NULL,'normal',_binary '',_binary '',NULL),(482,11,'Tiramisu','',240,NULL,'normal',_binary '',_binary '',NULL),(483,11,'Tarta de manzana con helado','',270,NULL,'normal',_binary '',_binary '',NULL),(484,11,'Brownie con helado','',270,NULL,'normal',_binary '',_binary '',NULL),(485,11,'Mousse de maracuya','',240,NULL,'normal',_binary '',_binary '',NULL),(486,11,'Baclawa','',135,NULL,'normal',_binary '',_binary '',NULL),(487,11,'Flan casero','',165,NULL,'normal',_binary '',_binary '',NULL),(488,11,'Torta humeda de chocolate y pistachos con crema de naranja y su reduccion','No contiene harina.',270,NULL,'normal',_binary '',_binary '',NULL),(489,11,'Budin de pan','',165,NULL,'normal',_binary '',_binary '',NULL),(490,11,'Cafe','',80,NULL,'normal',_binary '',_binary '',NULL),(491,11,'Cafe con crema','',95,NULL,'normal',_binary '',_binary '',NULL),(492,11,'Cafe doble con crema','',100,NULL,'normal',_binary '',_binary '',NULL),(493,11,'Cafe americano','',90,NULL,'normal',_binary '',_binary '',NULL),(494,11,'Cafe americano con crema','',100,NULL,'normal',_binary '',_binary '',NULL),(495,11,'Capuccino','',100,NULL,'normal',_binary '',_binary '',NULL),(496,11,'Cafe con leche','',95,NULL,'normal',_binary '',_binary '',NULL),(497,11,'Leche fria o caliente','',90,NULL,'normal',_binary '',_binary '',NULL),(498,11,'Submarino','',100,NULL,'normal',_binary '',_binary '',NULL),(499,11,'Negrito','',90,NULL,'normal',_binary '',_binary '',NULL),(500,11,'Cafe doble','',95,NULL,'normal',_binary '',_binary '',NULL),(501,11,'Capuccino frio','Cafe, crema de leche, licor de cafe, hielo picado.',199,NULL,'normal',_binary '',_binary '',NULL),(502,11,'Cafe vienes','Cafe fuerte, crema de leche, chocolate, canela, cacao.',199,NULL,'normal',_binary '',_binary '',NULL),(503,11,'Cafe irlandes','Cafe, whisky, crema, chocolate rallado.',199,NULL,'normal',_binary '',_binary '',NULL),(504,11,'Cafe carioca','Cafe, licor de cafe, crema, canela.',199,NULL,'normal',_binary '',_binary '',NULL),(505,11,'Cafe brooklyn','Cafe, tia maria, canela, chocolate rallado.',199,NULL,'normal',_binary '',_binary '',NULL),(506,16,'Tabla de fiambres y queso','Variedades de fiambres y quesos , empanadas y papas fritas',700,NULL,'normal',_binary '',_binary '',NULL),(507,16,'Rabas para dos personas','Rabas a la romana',450,NULL,'normal',_binary '',_binary '',NULL),(508,11,'Cafe amaretto','Cafe, amaretto, crema y cacao.',199,NULL,'normal',_binary '',_binary '',NULL),(509,16,'Papas fritas','Papas fritas baston',160,NULL,'normal',_binary '',_binary '',NULL),(510,11,'Cafe Ochre','Cafe, crema, licor de dulce de leche, chocolate rallado y canela.',199,NULL,'normal',_binary '',_binary '',NULL),(511,11,'Dry martini','gin + vermout extra dry + oliva.',250,NULL,'normal',_binary '',_binary '',NULL),(512,11,'Manhattan','bourbon + vermouth rosso + perfume de naranja.',300,NULL,'normal',_binary '',_binary '',NULL),(513,16,'Papas bravas','Papas rusticas con salsa picante',230,NULL,'normal',_binary '',_binary '',NULL),(514,16,'Papas faustino','Papas baston con salsa cuatro quesos , verdeo y panceta',280,NULL,'normal',_binary '',_binary '',NULL),(515,11,'Apple martini','vodka + licor sour apple + twist citrico.',250,NULL,'normal',_binary '',_binary '',NULL),(516,11,'Margarita','tequila + licor de naranja + jugo de limon y azucar.',250,NULL,'normal',_binary '',_binary '',NULL),(517,11,'Mojito','ron blanco + menta fresca + jugo de limon + azucar + soda.',250,NULL,'normal',_binary '',_binary '',NULL),(518,16,'Rabas para dos personas','Rabas a la romana',450,NULL,'normal',_binary '',_binary '',NULL),(519,11,'Pisco sour','pisco + clara de huevo + jugo de limon + azucar.',280,NULL,'normal',_binary '',_binary '',NULL),(520,16,'Tabla de fiambres','Variedad de fiambres y quesos , empanadas y papas fritas',700,NULL,'normal',_binary '',_binary '',NULL),(521,16,'Provolone','Provolone oreganado al oliva',280,NULL,'normal',_binary '',_binary '',NULL),(522,16,'Emapanada criolla','Empanada criolla de carne',65,NULL,'normal',_binary '',_binary '',NULL),(523,11,'Caipirinha','cachaca + limas maceradas + azucar.',260,NULL,'normal',_binary '',_binary '',NULL),(524,11,'Caipiroska','vodka, limas maceradas, azucar.',260,NULL,'normal',_binary '',_binary '',NULL),(525,11,'Negroni','gin + campari + vermouth rosso + naranja.',260,NULL,'normal',_binary '',_binary '',NULL),(526,11,'Old fashioned','bourbon + azucar + bitter angostura.',300,NULL,'normal',_binary '',_binary '',NULL),(527,11,'Fernet branca','',100,NULL,'normal',_binary '',_binary '',NULL),(528,11,'Gin tonic','gin + agua tonica + limon.',250,NULL,'normal',_binary '',_binary '',NULL),(529,11,'Tom collins','gin + agua con gas + almibar + limon + cereza.',250,NULL,'normal',_binary '',_binary '',NULL),(530,11,'Cuba libre','ron + coca cola + limon.',250,NULL,'normal',_binary '',_binary '',NULL),(531,16,'Emapanada capresse','Empanada con tomate , queso mozarella y albaca',75,NULL,'normal',_binary '',_binary '',NULL),(532,11,'Garibaldi','campari y jugo de naranja.',250,NULL,'normal',_binary '',_binary '',NULL),(533,16,'Empanada arabe','Empanada arabe',75,NULL,'normal',_binary '',_binary '',NULL),(534,11,'Gancia batido','gancia + limon + azucar.',190,NULL,'normal',_binary '',_binary '',NULL),(535,16,'Empanada de espinaca','Empanada de espinaca con queso mozarella',90,NULL,'normal',_binary '',_binary '',NULL),(536,11,'After dinner coffee','whisky irlandes + licor de cafe + crema fresca + chocolate rallado.',290,NULL,'normal',_binary '',_binary '',NULL),(537,16,'Chorizo','Porcion de chorizo',180,NULL,'normal',_binary '',_binary '',NULL),(538,16,'Morcilla','Porcion de morcilla',160,NULL,'normal',_binary '',_binary '',NULL),(539,11,'Delice pepino','chandon delice + 2 hielos + 2 rodajas de pepino.',230,NULL,'normal',_binary '',_binary '',NULL),(540,11,'delice orange','chandon delice + aperol + soda + rodaja de naranja + hielo.',230,NULL,'normal',_binary '',_binary '',NULL),(541,16,'Tira de asado','Tira de asado de ternera',480,NULL,'normal',_binary '',_binary '',NULL),(542,11,'Madagascar berries','chandon delice + gin + syrup de berries + frutos rojos.',230,NULL,'normal',_binary '',_binary '',NULL),(543,11,'Chandon aperitif','',230,NULL,'normal',_binary '',_binary '',NULL),(544,11,'Cucumber collins','gin + limon + pepinos macerados + soda.',260,NULL,'normal',_binary '',_binary '',NULL),(545,16,'Bife de chorizo','Bife de chorizo 350gr',540,NULL,'normal',_binary '',_binary '',NULL),(546,11,'Mojito Maracuya','ron blanco + menta fresca + maracuya.',260,NULL,'normal',_binary '',_binary '',NULL),(547,11,'Mojito frutos rojos','ron blanco + menta fresca + jugo de limon + azucar + soda + frutos rojos.',260,NULL,'normal',_binary '',_binary '',NULL),(548,11,'Daiquiri frozen','ron + fruta a eleccion: frutilla, durazno, anana o maracuya + azucar + jugo de limon.',260,NULL,'normal',_binary '',_binary '',NULL),(549,11,'Jager julep','jagermeifter + menta fresca + limon + pomelo.',300,NULL,'normal',_binary '',_binary '',NULL),(550,11,'El inmortal','malibu + jugo de naranja + pulpa de frutilla + piña colada.',260,NULL,'normal',_binary '',_binary '',NULL),(551,11,'Copa huracan','baileys + helado de crema y chocolate.',260,NULL,'normal',_binary '',_binary '',NULL),(552,11,'Lemon champ','helado de limon + champagne.',260,NULL,'normal',_binary '',_binary '',NULL),(553,11,'Bellini','nectar de durazno + champagne.',260,NULL,'normal',_binary '',_binary '',NULL),(554,11,'Kir royal','licor de cassis + champagne.',260,NULL,'normal',_binary '',_binary '',NULL),(555,11,'Spritz','aperol + champagne + soda + cascara de naranja.',260,NULL,'normal',_binary '',_binary '',NULL),(556,11,'Absolut','',230,NULL,'normal',_binary '',_binary '',NULL),(557,16,'Bife de entrecotte','Bife de entrecotte de 300gr',499,NULL,'normal',_binary '',_binary '',NULL),(558,11,'Stella artois 975 cc.','premium belga, de destacado aroma a lupulo y fino amargor.',350,NULL,'normal',_binary '',_binary '',NULL),(559,16,'Pollo deshuesado','Pollo deshuesado a la parrilla',395,NULL,'normal',_binary '',_binary '',NULL),(560,16,'Matambrito de cerdo','Matambre de cerdo al limon',450,NULL,'normal',_binary '',_binary '',NULL),(561,11,'Stella artois 330 cc.','',200,NULL,'normal',_binary '',_binary '',NULL),(562,16,'Matambre a la pizza','Matambre de cerdo a la pizza',495,NULL,'normal',_binary '',_binary '',NULL),(563,16,'Matambre a los cuatro quesos','Matambre de cerdo con salsa cuatro quesos',495,NULL,'normal',_binary '',_binary '',NULL),(564,16,'Lomo al champignon','Lomo con salsa champignon',550,NULL,'normal',_binary '',_binary '',NULL),(565,16,'Lomo a la pimienta','Lomo a la pimienta',550,NULL,'normal',_binary '',_binary '',NULL),(566,11,'Stella noir 975 cc.','negra, de destacado aroma a lupulo, fino amargor y notas dulces.',380,NULL,'normal',_binary '',_binary '',NULL),(567,11,'Stella noir 330 cc.','',200,NULL,'normal',_binary '',_binary '',NULL),(568,16,'Lomo lardeado','Lomo envuelto con panceta y salsa',550,NULL,'normal',_binary '',_binary '',NULL),(569,11,'Quilmes clasica 1 l','equilibrada, de gran refrescancia y cuerpo balanceado.',280,NULL,'normal',_binary '',_binary '',NULL),(570,16,'Brochette de carne con guarnicion','Brochette de carne con ensalada o papas fritas baston',450,NULL,'normal',_binary '',_binary '',NULL),(571,11,'Quilmes clasica 330 cc.','',150,NULL,'normal',_binary '',_binary '',NULL),(572,16,'Brochette de pollo con guarnicion','Brochette de pollo con ensalada o papas fritas baston',450,NULL,'normal',_binary '',_binary '',NULL),(573,11,'Quilmes stout 330 cc.','negra con espuma cremosa, de dulzor y cuerpo definido.',190,NULL,'normal',_binary '',_binary '',NULL),(574,16,'Brochette mixto con guarnicion','Brochette de carne y pollo con ensalada o papas fritas baston',450,NULL,'normal',_binary '',_binary '',NULL),(575,16,'Brochette de cerdo con guarnicion','Brochette de cerdo con ensalada o papas fritas baston',450,NULL,'normal',_binary '',_binary '',NULL),(576,11,'Budweiser 1 l','cerveza de cuerpo medio, gustosa, crepitante de estilo american lager.',300,NULL,'normal',_binary '',_binary '',NULL),(577,11,'Patagonia 740 cc.','consultar variedades disponibles.',380,NULL,'normal',_binary '',_binary '',NULL),(578,11,'corona 355 cc.','autentica cerveza premiun mexicana, color dorado, cuerpo liviano y muy refrescante.',250,NULL,'normal',_binary '',_binary '',NULL),(579,16,'Milanesa con guarnicion','Milanesa de peceto con ensalada o papas fritas baston',350,NULL,'normal',_binary '',_binary '',NULL),(580,16,'Milanesa napolitana con guarnicion','Milanesa de peceto a ll napolitana con ensalada o papas fritas baston',399,NULL,'normal',_binary '',_binary '',NULL),(581,16,'Milanesa a caballo con guarnicion','Milanesa de peceto con huevo frito con ensalada o papas fritas baston',399,NULL,'normal',_binary '',_binary '',NULL),(582,16,'Merluza a la romana con guarnicion','Merluza a la romana con ensalada o papas fritas baston',399,NULL,'normal',_binary '',_binary '',NULL),(583,16,'Suprema de pollo con guarnicion','Suprema de pollo con ensalada o papas fritas baston',350,NULL,'normal',_binary '',_binary '',NULL),(584,16,'Trucha a las brasas','Trucha a la parrilla',440,NULL,'normal',_binary '',_binary '',NULL),(585,16,'Salmon rosado','Salmon rosado a la parrilla',690,NULL,'normal',_binary '',_binary '',NULL),(586,16,'Ñoquis','Ñoquis de papas con salsa mixta , fileto o bechamel',299,NULL,'normal',_binary '',_binary '',NULL),(587,16,'Ravioles de verdura','Ravioles de verdura con salsa mixta , fileto o bechamel',350,NULL,'normal',_binary '',_binary '',NULL),(588,16,'Sorrentinos de humita','Sorrentinos de humita con salsa mixta , fileto o bechamel',380,NULL,'normal',_binary '',_binary '',NULL),(589,16,'Sorrentinos de berenjena y mozarella','Sorrentinos de berenjena y mozarella con salsa mixta , fileto o bechamel',380,NULL,'normal',_binary '',_binary '',NULL),(590,16,'Panzotis de cabrito','Panzotis de cabrito con salsa mixta , fileto o bechamel',399,NULL,'normal',_binary '',_binary '',NULL),(591,16,'Panzotis de salmon rosado','',430,NULL,'normal',_binary '',_binary '',NULL),(592,16,'Salsa cuatro quesos','Salsa cuatro quesos',100,NULL,'normal',_binary '',_binary '',NULL),(593,16,'Salsa de hongos','Salsa de hongos',100,NULL,'normal',_binary '',_binary '',NULL),(594,16,'Combinacion de vegetales','Ensalada de lechuga , rucula , tomate , zanahoria y cebolla',210,NULL,'normal',_binary '',_binary '',NULL),(595,16,'Caesar','Ensalada de lechuga , crotines , pollo , queso parmesano y aderezo caesar',360,NULL,'normal',_binary '',_binary '',NULL),(596,16,'Capresse','Ensalada de mozarella , tomate y albaca',330,NULL,'normal',_binary '',_binary '',NULL),(597,16,'Popeye','Ensalada de espinaca , atun , aceitunas negras , queso y tomate',350,NULL,'normal',_binary '',_binary '',NULL),(598,16,'Papas fritas','Papas fritas baston',160,NULL,'normal',_binary '',_binary '',NULL),(599,16,'Papas a la crema','Papas al natural con salsa a la crema',210,NULL,'normal',_binary '',_binary '',NULL),(600,16,'Papas fritas con huevo','Papas fritas baston con huevo frito',230,NULL,'normal',_binary '',_binary '',NULL),(601,16,'Espinaca a la crema','Espinaca con salsa a la crema y queso',230,NULL,'normal',_binary '',_binary '',NULL),(602,17,'BALLANTINES','',299,NULL,'normal',_binary '',_binary '',NULL),(603,17,'JYB','',310,NULL,'normal',_binary '',_binary '',NULL),(604,17,'VAT 69','',269,NULL,'normal',_binary '',_binary '',NULL),(605,17,'PREMIUM','',259,NULL,'normal',_binary '',_binary '',NULL),(606,17,'OLD SMUGLER','',259,NULL,'normal',_binary '',_binary '',NULL),(607,17,'JOHNNIE WALKER ROJO','',310,NULL,'normal',_binary '',_binary '',NULL),(608,17,'JOHNNIE WALKER NEGRO','',350,NULL,'normal',_binary '',_binary '',NULL),(609,17,'BALLANTINES 12 AÑOS','',380,NULL,'normal',_binary '',_binary '',NULL),(610,17,'GRANTS','',310,NULL,'normal',_binary '',_binary '',NULL),(611,17,'JACK DANIELS','',330,NULL,'normal',_binary '',_binary '',NULL),(612,17,'WHITE HORSE','',269,NULL,'normal',_binary '',_binary '',NULL),(613,17,'FAMOUS GROUSE','',330,NULL,'normal',_binary '',_binary '',NULL),(614,17,'JAMESON','',320,NULL,'normal',_binary '',_binary '',NULL),(615,17,'ALEXANDER','cognac, crema de cacao, crema de leche',279,NULL,'normal',_binary '',_binary '',NULL),(616,17,'BACARDI','ron, jugo de limón, golpe de granadina',279,NULL,'normal',_binary '',_binary '',NULL),(617,21,'MARINARA','Salsa de tomate, ajo, orégano y un toque de aceite de olvida.',0,'390/195/330','normal',_binary '',_binary '',NULL),(618,21,'MARGHERITA','Salsa de tomate, mozzarella y orégano o albhaca fresca.',0,'520/260/470','normal',_binary '',_binary '',NULL),(619,21,'FUGAZZETA','Mozzarela y cebollas.',0,'620/310/560','normal',_binary '',_binary '',NULL),(620,21,'FUGAZZA','Cebollas, queso provolone y un toque de aceite de oliva.',0,'620/310/560','normal',_binary '',_binary '',NULL),(621,21,'PAVESSI','Salsa de tomate, mozzarella, cebollas y huevos enteros asados.',0,'620/310/560','normal',_binary '',_binary '',NULL),(622,16,'Mozzarella','Salsa de tomate , mozzarella,  oregano y olivos verdes',499,NULL,'normal',_binary '',_binary '',NULL),(623,16,'Mozzarella especial','Jamon cocido',550,NULL,'normal',_binary '',_binary '',NULL),(624,16,'Mozzarella con huevo','Mozzarella con huevo duro rallado',560,NULL,'normal',_binary '',_binary '',NULL),(625,16,'Napolitana','Rodajas de tomate y olivos negros',560,NULL,'normal',_binary '',_binary '',NULL),(626,16,'Roquefort','',630,NULL,'normal',_binary '',_binary '',NULL),(627,16,'Fugazzeta','Mozzarella con cebolla , verdeo , parmesano , oregano y aceite de oliva',550,NULL,'normal',_binary '',_binary '',NULL),(628,16,'Pamitos y salsa golf','',660,NULL,'normal',_binary '',_binary '',NULL),(629,16,'Rucula y jamon crudo','',660,NULL,'normal',_binary '',_binary '',NULL),(630,16,'Hawaiana','Jamon , anana , morrones , azucar negra y olivos negros',660,NULL,'normal',_binary '',_binary '',NULL),(631,16,'Provolone','',660,NULL,'normal',_binary '',_binary '',NULL),(632,16,'Cuatro quesos','',660,NULL,'normal',_binary '',_binary '',NULL),(633,16,'Provenzal','Ajo y perejil',560,NULL,'normal',_binary '',_binary '',NULL),(634,16,'Anchoas y morrones','',660,NULL,'normal',_binary '',_binary '',NULL),(635,16,'Completo','Lomo , jamon cocido , queso , huevo , lechuga , tomate , mayonesa y papas fritas baston',350,NULL,'normal',_binary '',_binary '',NULL),(636,16,'De pollo','',350,NULL,'normal',_binary '',_binary '',NULL),(637,16,'De molleja','',390,NULL,'normal',_binary '',_binary '',NULL),(638,16,'Al plato','Lomo o pollo , jamon cocido , queso , lechuga , tomate,  huevo frito y papas fritas baston',399,NULL,'normal',_binary '',_binary '',NULL),(639,16,'Hambueguesa','Hamburguesa casera , lechuga , tomate , jamon cocido , queso , huevo , aderezo y papas fritas baston',340,NULL,'normal',_binary '',_binary '',NULL),(640,16,'Jamon cocido y queso','En pan miga frio o caliente  , jamon cocido , queso y aderezo',210,NULL,'normal',_binary '',_binary '',NULL),(641,16,'Jamon crudo y queso','En pan miga frio o caliente,  jamon crudo , queso y aderezo',290,NULL,'normal',_binary '',_binary '',NULL),(642,16,'Primavera','En pan miga frio o caliente,  lechuga , tomate,  jamon cocido , queso y aderezo',250,NULL,'normal',_binary '',_binary '',NULL),(643,16,'Kilka Salentein Malbec 750cc','',720,NULL,'normal',_binary '',_binary '',NULL),(644,16,'Portillo Malbec 750cc','',400,NULL,'normal',_binary '',_binary '',NULL),(645,16,'Portillo Cabernet  Sauvignon','',400,NULL,'normal',_binary '',_binary '',NULL),(646,16,'Portillo Sauvignon Blanc','',400,NULL,'normal',_binary '',_binary '',NULL),(647,16,'Nieto Senetiner Doc 750cc','',490,NULL,'normal',_binary '',_binary '',NULL),(648,16,'Nieto Senetiner Malbec 3/8','',320,NULL,'normal',_binary '',_binary '',NULL),(649,16,'Nieto Senetiner Cabernet Sauvignon','',440,NULL,'normal',_binary '',_binary '',NULL),(650,16,'Nieto Senetiner Blend Collection 750cc','',440,NULL,'normal',_binary '',_binary '',NULL),(651,16,'Nieto Senetiner Chardonay','',440,NULL,'normal',_binary '',_binary '',NULL),(652,16,'Emilia Nieto Senetiner Malbec 750cv','',385,NULL,'normal',_binary '',_binary '',NULL),(653,16,'Emilia Nieto Senetiner Malbec Rose 750cc','',385,NULL,'normal',_binary '',_binary '',NULL),(654,16,'Emilia Nieto Senetiner Dulce Natural 750cc','',385,NULL,'normal',_binary '',_binary '',NULL),(655,16,'Benjamin Nieto Malbec 750cc','',320,NULL,'normal',_binary '',_binary '',NULL),(656,16,'Benjamin Nieto Malbec 3/8','',200,NULL,'normal',_binary '',_binary '',NULL),(657,16,'Benjamin Nieto Sauvignon Blanc 750cc','',320,NULL,'normal',_binary '',_binary '',NULL),(658,16,'Benjamin Nieto Cabernet Sauvignon 750cc','',320,NULL,'normal',_binary '',_binary '',NULL),(659,16,'Rutini Cabernet Malbec 75pcc','',980,NULL,'normal',_binary '',_binary '',NULL),(660,16,'Rutini Cabernet Malbec 3/8','',600,NULL,'normal',_binary '',_binary '',NULL),(661,16,'Rutini Sauvignon Blanc','',980,NULL,'normal',_binary '',_binary '',NULL),(662,16,'Rutini Sauvignon Blanc 3/8','',590,NULL,'normal',_binary '',_binary '',NULL),(663,16,'Trumpeter Malbec','',710,NULL,'normal',_binary '',_binary '',NULL),(664,16,'Trumpeter Cabernet Sauvignon 750cc','',710,NULL,'normal',_binary '',_binary '',NULL),(665,16,'Callia Alta Malbec 750cc','',380,NULL,'normal',_binary '',_binary '',NULL),(666,16,'Callia Alta Cabernet Sauvignon 750cc','',380,NULL,'normal',_binary '',_binary '',NULL),(667,16,'Baron B Extra Brut 750cc','',1450,NULL,'normal',_binary '',_binary '',NULL),(668,16,'Baron B Brut  Nature 750cc','',1600,NULL,'normal',_binary '',_binary '',NULL),(669,16,'Chandon Extra Brut 750cc','',750,NULL,'normal',_binary '',_binary '',NULL),(670,16,'Chandon Extra Brut 375 cc','',450,NULL,'normal',_binary '',_binary '',NULL),(671,16,'Chandon Extra Brut 187cc','',270,NULL,'normal',_binary '',_binary '',NULL),(672,16,'Chandon Brut Nature 750cc','',850,NULL,'normal',_binary '',_binary '',NULL),(673,16,'Chandon Brut Rose 750cc','',750,NULL,'normal',_binary '',_binary '',NULL),(674,16,'Chandon Delice','',750,NULL,'normal',_binary '',_binary '',NULL),(675,16,'Latitud 33 Extra Brut 750cc','',500,NULL,'normal',_binary '',_binary '',NULL),(676,16,'Nieto Senetiner Extra Brut 750cc','',600,NULL,'normal',_binary '',_binary '',NULL),(677,16,'Nieto Senetiner Brut Nature 750cc','',650,NULL,'normal',_binary '',_binary '',NULL),(678,16,'Luigui Bosca Cabernet Sauvignon 750cc','',950,NULL,'normal',_binary '',_binary '',NULL),(679,16,'Luigi Bosca Malbec 750cc','',950,NULL,'normal',_binary '',_binary '',NULL),(680,16,'Luigi Bosca Malbec 375 cc','',650,NULL,'normal',_binary '',_binary '',NULL),(681,16,'Luigi Bosca Chardonnay 750cc','',950,NULL,'normal',_binary '',_binary '',NULL),(682,16,'Finca La Linda Old Vines Malbec 750cc','',730,NULL,'normal',_binary '',_binary '',NULL),(683,16,'Finca La Linda Malbec 750cc','',620,NULL,'normal',_binary '',_binary '',NULL),(684,16,'Finca La Linda Malbec 375cc','',390,NULL,'normal',_binary '',_binary '',NULL),(685,16,'Alambrado Malbec 750cc','',570,NULL,'normal',_binary '',_binary '',NULL),(686,16,'Alambrado Malbec 3/8','',360,NULL,'normal',_binary '',_binary '',NULL),(687,16,'Alambrado Cabernet Sauvignon 750cc','',570,NULL,'normal',_binary '',_binary '',NULL),(688,16,'Santa Julia Cabernet Sauvignon 750cc','',380,NULL,'normal',_binary '',_binary '',NULL),(689,16,'Santa Julia Syrah 750cc','',380,NULL,'normal',_binary '',_binary '',NULL),(690,16,'Santa Julia Chardonnay','',380,NULL,'normal',_binary '',_binary '',NULL),(691,16,'Santa Julia Syrah Rose 750cc','',380,NULL,'normal',_binary '',_binary '',NULL);
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
  PRIMARY KEY (`pxm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1426 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pxm_proxmen`
--

LOCK TABLES `pxm_proxmen` WRITE;
/*!40000 ALTER TABLE `pxm_proxmen` DISABLE KEYS */;
INSERT INTO `pxm_proxmen` VALUES (537,2,7,3,2,_binary '',1),(538,2,7,4,2,_binary '',2),(539,2,7,5,2,_binary '',3),(540,2,7,6,3,_binary '',1),(541,2,7,7,3,_binary '',3),(542,2,7,8,3,_binary '',2),(543,2,7,9,4,_binary '',1),(544,2,7,10,4,_binary '',2),(545,2,7,11,4,_binary '',3),(546,2,7,12,4,_binary '',4),(547,2,7,13,4,_binary '',5),(548,2,7,14,5,_binary '',1),(549,2,7,15,5,_binary '',2),(550,2,7,16,5,_binary '',3),(551,2,7,17,5,_binary '',4),(552,2,7,18,5,_binary '',5),(553,2,7,19,4,_binary '',6),(554,2,7,20,6,_binary '',1),(555,2,7,21,6,_binary '',2),(556,8,9,25,7,_binary '',1),(557,8,9,26,7,_binary '',2),(558,8,9,27,7,_binary '',3),(559,8,9,28,7,_binary '',4),(560,8,9,29,7,_binary '',5),(561,8,9,30,7,_binary '',6),(562,8,9,31,7,_binary '',7),(563,8,9,32,8,_binary '',1),(564,8,9,33,8,_binary '',2),(565,8,9,34,8,_binary '',3),(566,8,9,35,8,_binary '',4),(567,8,9,36,8,_binary '',5),(568,8,9,37,8,_binary '',6),(569,8,9,38,8,_binary '',7),(570,8,9,39,9,_binary '',1),(571,8,9,40,9,_binary '',2),(572,8,9,41,9,_binary '',3),(573,8,9,42,9,_binary '',4),(574,8,9,43,9,_binary '',5),(575,8,9,44,10,_binary '',1),(576,8,9,45,10,_binary '',2),(577,8,9,46,10,_binary '',3),(578,8,9,47,10,_binary '',4),(579,8,9,48,10,_binary '',5),(580,8,9,49,10,_binary '',6),(581,8,9,50,10,_binary '',7),(582,8,9,51,10,_binary '',8),(583,8,9,52,10,_binary '',9),(584,8,9,53,10,_binary '',10),(585,8,9,54,11,_binary '',1),(586,8,9,55,11,_binary '',2),(587,8,9,56,11,_binary '',3),(588,8,9,57,11,_binary '',4),(589,8,9,58,12,_binary '',1),(590,8,9,59,13,_binary '',1),(591,8,9,60,13,_binary '',2),(592,8,9,61,13,_binary '',3),(593,8,9,62,13,_binary '',4),(594,8,9,63,13,_binary '',5),(595,8,9,64,13,_binary '',6),(596,8,9,65,13,_binary '',7),(597,8,9,66,13,_binary '',8),(598,8,9,67,14,_binary '',1),(599,8,9,68,14,_binary '',2),(600,8,9,69,14,_binary '',3),(601,8,9,70,14,_binary '',4),(602,8,9,71,14,_binary '',5),(603,8,9,72,14,_binary '',6),(604,8,9,73,14,_binary '',7),(605,8,9,74,15,_binary '',1),(606,8,9,75,16,_binary '',1),(607,8,9,76,16,_binary '',2),(608,8,9,77,16,_binary '',3),(609,8,9,78,16,_binary '',4),(610,8,9,79,16,_binary '',5),(611,8,9,80,17,_binary '',1),(612,8,9,81,17,_binary '',2),(613,8,9,82,17,_binary '',3),(614,8,9,83,18,_binary '',1),(615,8,9,84,19,_binary '',1),(616,8,9,85,19,_binary '',2),(617,8,9,86,20,_binary '',1),(618,8,9,87,20,_binary '',2),(619,8,9,88,20,_binary '',3),(620,8,9,89,20,_binary '',4),(621,8,9,90,20,_binary '',5),(622,8,9,91,20,_binary '',6),(623,8,9,92,20,_binary '',7),(624,8,9,93,22,_binary '',1),(625,8,9,94,22,_binary '',2),(626,8,9,95,22,_binary '',3),(627,8,9,96,22,_binary '',4),(628,8,9,97,22,_binary '',5),(629,8,9,98,22,_binary '',6),(630,8,9,99,22,_binary '',7),(631,8,9,100,22,_binary '',8),(632,8,9,101,22,_binary '',9),(633,8,9,102,22,_binary '',10),(634,8,9,103,22,_binary '',11),(635,8,9,104,23,_binary '',1),(636,8,9,105,23,_binary '',2),(637,8,9,106,23,_binary '',3),(638,8,9,107,23,_binary '',4),(639,8,9,108,23,_binary '',5),(640,8,9,109,23,_binary '',6),(641,8,9,110,23,_binary '',7),(642,8,9,111,24,_binary '',1),(643,8,9,112,24,_binary '',2),(644,8,9,113,24,_binary '',3),(645,8,9,114,24,_binary '',4),(646,8,9,115,24,_binary '',5),(647,8,9,116,24,_binary '',6),(648,8,9,117,24,_binary '',7),(649,8,9,118,24,_binary '',8),(650,8,9,119,24,_binary '',9),(651,8,9,120,24,_binary '',10),(652,8,9,121,24,_binary '',11),(653,8,9,122,24,_binary '',12),(654,8,9,123,24,_binary '',13),(655,8,9,124,24,_binary '',14),(656,8,9,125,24,_binary '',15),(657,8,9,126,24,_binary '',16),(658,8,9,127,24,_binary '',17),(659,8,9,128,24,_binary '',18),(660,8,9,129,24,_binary '',19),(661,8,9,130,24,_binary '',20),(662,8,9,131,24,_binary '',21),(663,8,9,132,24,_binary '',22),(664,8,9,133,24,_binary '',23),(665,8,9,134,24,_binary '',24),(666,8,9,135,24,_binary '',25),(667,8,9,136,24,_binary '',26),(668,8,9,137,24,_binary '',27),(669,8,9,138,24,_binary '',28),(670,8,9,139,24,_binary '',29),(671,8,9,140,24,_binary '',30),(672,8,9,141,24,_binary '',31),(673,8,9,142,24,_binary '',32),(674,8,9,143,24,_binary '',33),(675,8,9,144,24,_binary '',34),(676,8,9,145,24,_binary '',35),(677,8,12,146,26,_binary '',1),(678,8,12,147,27,_binary '',1),(679,8,12,148,32,_binary '',1),(680,8,12,149,32,_binary '',2),(681,8,12,150,32,_binary '',3),(682,8,12,151,32,_binary '',4),(683,8,12,152,32,_binary '',5),(684,8,12,153,33,_binary '',1),(685,8,12,154,33,_binary '',2),(686,8,12,155,33,_binary '',3),(687,8,12,156,35,_binary '',1),(688,8,12,157,35,_binary '',2),(689,8,12,158,35,_binary '',3),(690,8,12,159,35,_binary '',4),(691,8,12,160,35,_binary '',5),(692,8,12,161,35,_binary '',6),(693,8,9,162,36,_binary '',1),(694,8,9,163,36,_binary '',2),(695,8,9,164,36,_binary '',3),(696,8,9,165,36,_binary '',4),(697,8,9,166,36,_binary '',5),(698,8,9,167,36,_binary '',6),(699,8,9,168,36,_binary '',7),(700,8,9,169,36,_binary '',8),(701,8,9,170,36,_binary '',9),(702,8,9,171,36,_binary '',10),(703,8,9,172,37,_binary '',1),(704,8,9,173,37,_binary '',2),(705,8,9,174,37,_binary '',3),(706,8,9,175,37,_binary '',4),(707,8,9,176,37,_binary '',5),(708,8,9,177,37,_binary '',6),(709,8,9,178,37,_binary '',7),(710,8,9,179,37,_binary '',8),(711,8,9,185,39,_binary '',1),(712,8,9,186,39,_binary '',2),(713,8,9,187,39,_binary '',3),(714,8,9,188,39,_binary '',4),(715,8,9,189,40,_binary '',1),(716,8,9,190,40,_binary '',2),(717,8,9,191,40,_binary '',3),(718,8,9,192,40,_binary '',4),(719,8,9,193,40,_binary '',5),(720,8,9,194,40,_binary '',6),(721,8,9,195,40,_binary '',7),(722,8,9,196,40,_binary '',8),(723,8,9,197,40,_binary '',9),(724,8,9,198,40,_binary '',10),(725,8,9,199,40,_binary '',11),(726,8,9,200,40,_binary '',12),(727,8,9,201,40,_binary '',13),(728,8,9,202,40,_binary '',14),(729,8,9,203,40,_binary '',15),(730,8,9,204,40,_binary '',16),(731,8,9,205,40,_binary '',17),(732,8,9,206,40,_binary '',18),(733,8,9,207,40,_binary '',19),(734,8,9,208,40,_binary '',20),(735,8,9,209,40,_binary '',21),(736,8,9,210,40,_binary '',22),(737,8,9,211,40,_binary '',23),(738,11,13,212,41,_binary '',1),(740,13,15,214,42,_binary '',1),(741,13,15,215,42,_binary '',2),(742,13,15,216,42,_binary '',3),(743,15,17,217,56,_binary '',1),(744,15,17,218,56,_binary '',2),(745,15,17,219,56,_binary '',3),(746,15,17,220,56,_binary '',4),(747,15,17,221,56,_binary '',5),(748,15,17,222,56,_binary '',6),(749,15,17,223,56,_binary '',7),(750,15,17,224,56,_binary '',8),(751,15,17,225,57,_binary '',1),(752,15,17,226,57,_binary '',2),(753,15,17,227,58,_binary '',1),(754,15,17,228,58,_binary '',2),(755,15,17,229,58,_binary '',3),(756,15,17,230,59,_binary '',1),(757,15,17,231,59,_binary '',2),(758,15,17,232,59,_binary '',3),(759,15,17,233,59,_binary '',4),(760,15,17,234,59,_binary '',5),(761,15,17,235,59,_binary '',6),(762,15,17,236,60,_binary '',1),(763,15,17,237,60,_binary '',2),(764,15,17,238,60,_binary '',3),(765,15,17,239,60,_binary '',4),(766,15,17,240,60,_binary '',5),(767,15,17,241,60,_binary '',6),(768,15,17,242,60,_binary '',7),(769,15,17,243,60,_binary '',8),(770,15,17,244,60,_binary '',9),(771,15,17,245,60,_binary '',10),(772,15,17,246,60,_binary '',11),(773,15,17,247,60,_binary '',12),(774,15,17,248,60,_binary '',13),(775,15,17,249,60,_binary '',14),(776,15,17,250,60,_binary '',15),(777,15,17,251,60,_binary '',16),(778,15,17,252,60,_binary '',17),(779,15,17,253,60,_binary '',18),(780,15,17,254,60,_binary '',19),(781,15,17,255,60,_binary '',20),(782,15,17,256,60,_binary '',21),(783,15,17,257,61,_binary '',1),(784,15,17,258,61,_binary '',2),(785,15,17,259,61,_binary '',3),(786,15,17,260,61,_binary '',4),(787,15,17,261,61,_binary '',5),(788,15,17,262,62,_binary '',1),(789,15,17,263,62,_binary '',2),(790,15,17,264,62,_binary '',3),(791,15,17,265,62,_binary '',4),(792,15,17,266,62,_binary '',5),(793,15,17,267,62,_binary '',6),(794,15,17,268,62,_binary '',7),(795,15,17,269,63,_binary '',1),(796,15,17,270,63,_binary '',2),(797,15,17,271,64,_binary '',1),(798,15,17,272,64,_binary '',2),(799,15,17,273,64,_binary '',3),(800,15,17,274,64,_binary '',4),(801,15,17,275,64,_binary '',5),(802,15,17,276,64,_binary '',6),(803,15,17,277,64,_binary '',7),(804,15,17,278,64,_binary '',8),(805,15,17,279,64,_binary '',9),(806,15,17,280,64,_binary '',10),(807,15,17,281,64,_binary '',11),(808,15,17,282,65,_binary '',1),(809,15,17,283,65,_binary '',2),(810,15,17,284,65,_binary '',3),(811,15,17,285,65,_binary '',4),(812,15,17,286,65,_binary '',5),(813,13,15,287,43,_binary '',1),(814,13,15,288,43,_binary '',2),(815,13,15,289,43,_binary '',3),(816,13,15,290,43,_binary '',4),(817,13,15,291,43,_binary '',5),(818,13,15,292,44,_binary '',1),(819,13,15,293,44,_binary '',2),(820,13,15,294,45,_binary '',10),(821,13,15,295,45,_binary '',1),(822,13,15,296,45,_binary '',2),(823,13,15,297,45,_binary '',3),(824,13,15,298,45,_binary '',4),(825,13,15,299,45,_binary '',5),(826,13,15,300,45,_binary '',6),(827,13,15,301,45,_binary '',7),(828,13,15,302,45,_binary '',8),(829,13,15,303,45,_binary '',9),(830,13,15,304,46,_binary '',1),(831,13,15,305,46,_binary '',2),(832,13,15,306,46,_binary '',3),(833,13,15,307,46,_binary '',4),(834,13,15,308,46,_binary '',5),(835,13,15,309,67,_binary '',1),(836,13,15,310,67,_binary '',2),(837,13,15,311,67,_binary '',3),(838,13,15,312,47,_binary '',1),(839,13,15,313,47,_binary '',2),(840,13,15,314,47,_binary '',3),(841,15,17,315,66,_binary '',1),(842,13,15,316,47,_binary '',4),(843,15,17,317,66,_binary '',2),(844,15,17,318,66,_binary '',3),(845,13,15,319,47,_binary '',5),(846,13,15,320,47,_binary '',6),(847,11,13,321,41,_binary '',3),(849,11,13,323,41,_binary '',5),(850,13,18,324,68,_binary '',1),(851,13,18,325,68,_binary '',2),(852,13,15,326,70,_binary '',1),(853,13,15,327,69,_binary '',1),(854,13,15,328,69,_binary '',2),(855,13,15,329,71,_binary '',1),(856,13,15,330,71,_binary '',2),(857,11,13,331,41,_binary '',6),(859,11,13,333,41,_binary '',8),(1046,2,7,1,1,_binary '',2),(1049,2,7,2,1,_binary '',2),(1052,14,20,334,72,_binary '',1),(1054,14,20,336,72,_binary '',2),(1055,14,20,337,72,_binary '',3),(1056,14,20,338,72,_binary '',4),(1057,14,20,339,72,_binary '',5),(1058,14,20,340,72,_binary '',6),(1059,14,20,341,72,_binary '',7),(1060,14,20,342,72,_binary '',8),(1061,14,20,343,72,_binary '',9),(1062,14,20,344,72,_binary '',10),(1063,17,22,345,73,_binary '',1),(1064,17,22,346,73,_binary '',2),(1065,17,22,347,73,_binary '',3),(1066,17,22,348,73,_binary '',4),(1067,17,22,349,73,_binary '',5),(1068,17,22,350,73,_binary '',6),(1069,17,22,351,73,_binary '',7),(1070,17,22,352,73,_binary '',8),(1071,17,22,353,73,_binary '',9),(1072,17,22,354,73,_binary '',10),(1073,17,22,355,73,_binary '',11),(1074,17,22,356,74,_binary '',1),(1075,17,22,357,74,_binary '',2),(1076,17,22,358,74,_binary '',3),(1077,17,22,359,74,_binary '',4),(1078,17,22,360,74,_binary '',5),(1079,17,22,361,73,_binary '',12),(1080,17,22,362,73,_binary '',13),(1081,17,22,363,73,_binary '',14),(1082,17,22,364,73,_binary '',15),(1083,17,22,365,73,_binary '',16),(1084,17,22,366,73,_binary '',17),(1085,17,22,367,73,_binary '',18),(1086,17,22,368,75,_binary '',1),(1087,17,22,369,75,_binary '',2),(1088,17,22,370,75,_binary '',3),(1089,17,22,371,75,_binary '',4),(1090,17,22,372,75,_binary '',5),(1091,17,22,373,75,_binary '',6),(1092,17,22,374,75,_binary '',7),(1093,17,22,375,76,_binary '',1),(1094,17,22,376,76,_binary '',2),(1095,17,22,377,76,_binary '',3),(1096,17,22,378,76,_binary '',4),(1097,17,22,379,76,_binary '',5),(1099,17,22,380,76,_binary '',6),(1100,17,22,381,76,_binary '',7),(1101,17,22,382,76,_binary '',8),(1102,17,22,383,76,_binary '',9),(1103,11,13,384,41,_binary '',9),(1105,11,13,386,41,_binary '',10),(1106,17,22,385,76,_binary '',10),(1107,11,13,387,41,_binary '',11),(1108,17,22,388,76,_binary '',11),(1109,11,13,389,41,_binary '',12),(1110,17,22,390,76,_binary '',12),(1111,11,13,213,41,_binary '',12),(1112,11,13,332,41,_binary '',12),(1113,11,13,391,41,_binary '',13),(1114,11,13,392,41,_binary '',14),(1115,11,13,393,41,_binary '',15),(1116,11,13,394,41,_binary '',16),(1117,11,13,395,78,_binary '',1),(1118,11,13,396,78,_binary '',2),(1119,11,13,397,78,_binary '',3),(1120,11,13,398,78,_binary '',4),(1121,11,13,399,78,_binary '',5),(1122,11,13,322,41,_binary '',16),(1123,17,22,400,77,_binary '',1),(1124,17,22,401,77,_binary '',2),(1125,17,22,402,77,_binary '',3),(1129,11,13,406,79,_binary '',4),(1130,11,13,407,79,_binary '',5),(1131,11,13,408,79,_binary '',6),(1132,11,13,403,79,_binary '',6),(1133,11,13,404,79,_binary '',6),(1134,11,13,405,79,_binary '',6),(1135,11,13,409,79,_binary '',7),(1136,11,13,410,80,_binary '',1),(1137,11,13,411,80,_binary '',2),(1138,11,13,412,80,_binary '',3),(1139,11,13,413,80,_binary '',4),(1140,11,13,414,80,_binary '',5),(1141,11,13,415,80,_binary '',6),(1142,11,13,416,80,_binary '',7),(1143,11,13,417,80,_binary '',8),(1144,11,13,418,80,_binary '',9),(1145,11,13,419,80,_binary '',10),(1146,11,13,420,80,_binary '',11),(1147,17,22,421,99,_binary '',1),(1148,17,22,422,99,_binary '',2),(1149,17,22,423,99,_binary '',3),(1150,17,22,424,100,_binary '',1),(1151,17,22,425,100,_binary '',2),(1152,17,22,426,100,_binary '',3),(1153,17,22,427,100,_binary '',4),(1154,17,22,428,101,_binary '',1),(1155,17,22,429,101,_binary '',2),(1156,17,22,430,101,_binary '',3),(1157,17,22,431,102,_binary '',1),(1158,17,22,432,102,_binary '',2),(1159,17,22,433,103,_binary '',1),(1160,17,22,434,103,_binary '',2),(1161,17,22,435,103,_binary '',3),(1162,17,22,436,103,_binary '',4),(1163,11,13,437,81,_binary '',1),(1164,11,13,438,81,_binary '',2),(1165,11,13,439,82,_binary '',1),(1166,11,13,440,82,_binary '',2),(1167,11,13,441,83,_binary '',1),(1168,11,13,442,83,_binary '',2),(1169,11,13,443,83,_binary '',3),(1170,11,13,444,83,_binary '',4),(1171,11,13,445,83,_binary '',5),(1172,11,13,446,83,_binary '',6),(1173,11,13,447,83,_binary '',7),(1174,11,13,448,83,_binary '',8),(1175,11,13,449,84,_binary '',1),(1176,11,13,450,84,_binary '',2),(1177,11,13,451,84,_binary '',3),(1178,11,13,452,85,_binary '',1),(1179,11,13,453,85,_binary '',2),(1180,11,13,454,85,_binary '',3),(1181,11,13,455,85,_binary '',4),(1182,11,13,456,85,_binary '',5),(1183,11,13,457,85,_binary '',6),(1185,11,13,459,85,_binary '',8),(1187,11,13,461,85,_binary '',10),(1188,11,13,462,85,_binary '',11),(1189,11,13,458,85,_binary '',11),(1190,11,13,460,85,_binary '',11),(1191,18,23,463,104,_binary '',1),(1192,19,24,464,105,_binary '',1),(1193,19,24,465,105,_binary '',2),(1194,19,24,466,105,_binary '',3),(1195,19,24,467,105,_binary '',4),(1196,19,24,468,106,_binary '',1),(1197,11,13,469,86,_binary '',1),(1198,11,13,470,86,_binary '',2),(1199,11,13,471,86,_binary '',3),(1200,11,13,472,87,_binary '',1),(1201,11,13,473,87,_binary '',2),(1202,11,13,474,87,_binary '',3),(1203,11,13,475,87,_binary '',4),(1204,11,13,476,87,_binary '',5),(1205,11,13,477,87,_binary '',6),(1206,11,13,478,87,_binary '',7),(1207,11,13,479,88,_binary '',1),(1208,11,13,480,88,_binary '',2),(1209,11,13,481,88,_binary '',3),(1210,11,13,482,88,_binary '',4),(1211,11,13,483,88,_binary '',5),(1212,11,13,484,88,_binary '',6),(1213,11,13,485,88,_binary '',7),(1214,11,13,486,88,_binary '',8),(1215,11,13,487,88,_binary '',9),(1216,11,13,488,88,_binary '',10),(1217,11,13,489,88,_binary '',11),(1218,11,13,490,89,_binary '',1),(1219,11,13,491,89,_binary '',2),(1220,11,13,492,89,_binary '',3),(1221,11,13,493,89,_binary '',4),(1222,11,13,494,89,_binary '',5),(1223,11,13,495,89,_binary '',6),(1224,11,13,496,89,_binary '',7),(1225,11,13,497,89,_binary '',8),(1226,11,13,498,89,_binary '',9),(1227,11,13,499,89,_binary '',10),(1228,11,13,500,89,_binary '',11),(1229,11,13,501,90,_binary '',1),(1230,11,13,502,90,_binary '',2),(1231,11,13,503,90,_binary '',3),(1232,11,13,504,90,_binary '',4),(1233,11,13,505,90,_binary '',5),(1234,16,21,506,108,_binary '',1),(1235,16,21,507,108,_binary '',2),(1236,11,13,508,90,_binary '',6),(1237,16,21,509,108,_binary '',3),(1238,11,13,510,90,_binary '',7),(1239,11,13,511,91,_binary '',1),(1240,11,13,512,91,_binary '',2),(1241,16,21,513,108,_binary '',4),(1242,16,21,514,108,_binary '',5),(1243,11,13,515,91,_binary '',3),(1244,11,13,516,91,_binary '',4),(1245,11,13,517,91,_binary '',5),(1246,16,21,518,109,_binary '',1),(1247,11,13,519,91,_binary '',6),(1248,16,21,520,109,_binary '',2),(1249,16,21,521,109,_binary '',3),(1250,16,21,522,109,_binary '',4),(1251,11,13,523,91,_binary '',7),(1252,11,13,524,91,_binary '',8),(1253,11,13,525,91,_binary '',9),(1254,11,13,526,91,_binary '',10),(1255,11,13,527,92,_binary '',1),(1256,11,13,528,92,_binary '',2),(1258,11,13,530,92,_binary '',4),(1259,16,21,531,109,_binary '',5),(1260,11,13,532,92,_binary '',5),(1261,16,21,533,109,_binary '',6),(1262,11,13,534,92,_binary '',6),(1263,16,21,535,109,_binary '',7),(1264,11,13,536,93,_binary '',1),(1265,16,21,537,109,_binary '',8),(1266,16,21,538,109,_binary '',9),(1267,11,13,539,94,_binary '',1),(1268,11,13,540,94,_binary '',2),(1269,16,21,541,110,_binary '',1),(1270,11,13,542,94,_binary '',3),(1271,11,13,543,94,_binary '',4),(1272,11,13,544,95,_binary '',1),(1274,11,13,546,95,_binary '',2),(1275,11,13,547,95,_binary '',3),(1276,11,13,548,95,_binary '',4),(1277,11,13,549,95,_binary '',5),(1278,11,13,550,95,_binary '',6),(1280,11,13,529,92,_binary '',6),(1281,11,13,551,96,_binary '',1),(1282,11,13,552,96,_binary '',2),(1283,11,13,553,96,_binary '',3),(1284,16,21,545,110,_binary '',2),(1285,11,13,554,96,_binary '',4),(1286,11,13,555,96,_binary '',5),(1287,11,13,556,97,_binary '',1),(1288,16,21,557,110,_binary '',3),(1290,16,21,559,110,_binary '',4),(1291,16,21,560,110,_binary '',5),(1292,11,13,561,98,_binary '',2),(1293,16,21,562,110,_binary '',6),(1294,11,13,558,98,_binary '',2),(1295,16,21,563,110,_binary '',7),(1296,16,21,564,110,_binary '',8),(1297,16,21,565,110,_binary '',9),(1298,11,13,566,98,_binary '',3),(1299,11,13,567,98,_binary '',4),(1300,16,21,568,110,_binary '',10),(1301,11,13,569,98,_binary '',5),(1302,16,21,570,110,_binary '',11),(1303,11,13,571,98,_binary '',6),(1304,16,21,572,110,_binary '',12),(1305,11,13,573,98,_binary '',7),(1306,16,21,574,110,_binary '',13),(1307,16,21,575,110,_binary '',14),(1308,11,13,576,98,_binary '',8),(1309,11,13,577,98,_binary '',9),(1310,11,13,578,98,_binary '',10),(1311,16,21,579,111,_binary '',1),(1312,16,21,580,111,_binary '',2),(1313,16,21,581,111,_binary '',3),(1314,16,21,582,111,_binary '',4),(1315,16,21,583,111,_binary '',5),(1316,16,21,584,112,_binary '',1),(1317,16,21,585,112,_binary '',2),(1318,16,21,586,113,_binary '',1),(1319,16,21,587,113,_binary '',2),(1320,16,21,588,113,_binary '',3),(1321,16,21,589,113,_binary '',4),(1322,16,21,590,113,_binary '',5),(1323,16,21,591,113,_binary '',6),(1324,16,21,592,113,_binary '',7),(1325,16,21,593,113,_binary '',8),(1326,16,21,594,114,_binary '',1),(1327,16,21,595,114,_binary '',2),(1328,16,21,596,114,_binary '',3),(1329,16,21,597,114,_binary '',4),(1330,16,21,598,115,_binary '',1),(1331,16,21,599,115,_binary '',2),(1332,16,21,600,115,_binary '',3),(1333,16,21,601,115,_binary '',4),(1334,17,22,602,103,_binary '',5),(1335,17,22,603,103,_binary '',6),(1336,17,22,604,103,_binary '',7),(1337,17,22,605,103,_binary '',8),(1338,17,22,606,103,_binary '',9),(1339,17,22,607,103,_binary '',10),(1340,17,22,608,103,_binary '',11),(1341,17,22,609,103,_binary '',12),(1342,17,22,610,103,_binary '',13),(1343,17,22,611,103,_binary '',14),(1344,17,22,612,103,_binary '',15),(1345,17,22,613,103,_binary '',16),(1346,17,22,614,103,_binary '',17),(1347,17,22,615,116,_binary '',1),(1348,17,22,616,116,_binary '',2),(1350,21,27,617,117,_binary '',1),(1351,21,27,618,117,_binary '',2),(1352,21,27,619,117,_binary '',3),(1353,21,27,620,117,_binary '',4),(1354,21,27,621,117,_binary '',5),(1355,16,21,622,118,_binary '',1),(1356,16,21,623,118,_binary '',2),(1357,16,21,624,118,_binary '',3),(1358,16,21,625,118,_binary '',4),(1359,16,21,626,118,_binary '',5),(1360,16,21,627,118,_binary '',6),(1361,16,21,628,118,_binary '',7),(1362,16,21,629,118,_binary '',8),(1363,16,21,630,118,_binary '',9),(1364,16,21,631,118,_binary '',10),(1365,16,21,632,118,_binary '',11),(1366,16,21,633,118,_binary '',12),(1367,16,21,634,118,_binary '',13),(1368,16,21,635,119,_binary '',1),(1369,16,21,636,119,_binary '',2),(1370,16,21,637,119,_binary '',3),(1371,16,21,638,119,_binary '',4),(1372,16,21,639,120,_binary '',1),(1373,16,21,640,120,_binary '',2),(1374,16,21,641,120,_binary '',3),(1375,16,21,642,120,_binary '',4),(1376,16,21,643,121,_binary '',1),(1377,16,21,644,121,_binary '',2),(1378,16,21,645,121,_binary '',3),(1379,16,21,646,121,_binary '',4),(1380,16,21,647,121,_binary '',5),(1381,16,21,648,121,_binary '',6),(1382,16,21,649,121,_binary '',7),(1383,16,21,650,121,_binary '',8),(1384,16,21,651,121,_binary '',9),(1385,16,21,652,121,_binary '',10),(1386,16,21,653,121,_binary '',11),(1387,16,21,654,121,_binary '',12),(1388,16,21,655,121,_binary '',13),(1389,16,21,656,121,_binary '',14),(1390,16,21,657,121,_binary '',15),(1391,16,21,658,121,_binary '',16),(1392,16,21,659,121,_binary '',17),(1393,16,21,660,121,_binary '',18),(1394,16,21,661,121,_binary '',19),(1395,16,21,662,121,_binary '',20),(1396,16,21,663,121,_binary '',21),(1397,16,21,664,121,_binary '',22),(1398,16,21,665,121,_binary '',23),(1399,16,21,666,121,_binary '',24),(1400,16,21,667,121,_binary '',25),(1401,16,21,668,121,_binary '',26),(1402,16,21,669,121,_binary '',27),(1403,16,21,670,121,_binary '',28),(1404,16,21,671,121,_binary '',29),(1405,16,21,672,121,_binary '',30),(1406,16,21,673,121,_binary '',31),(1407,16,21,674,121,_binary '',32),(1408,16,21,675,121,_binary '',33),(1409,16,21,676,121,_binary '',34),(1410,16,21,677,121,_binary '',35),(1411,16,21,678,121,_binary '',36),(1412,16,21,679,121,_binary '',37),(1413,16,21,680,121,_binary '',38),(1414,16,21,681,121,_binary '',39),(1415,16,21,682,121,_binary '',40),(1416,16,21,683,121,_binary '',41),(1417,16,21,684,121,_binary '',42),(1418,16,21,685,121,_binary '',43),(1419,16,21,686,121,_binary '',44),(1420,16,21,687,121,_binary '',45),(1421,16,21,688,121,_binary '',46),(1422,16,21,689,121,_binary '',47),(1423,16,21,690,121,_binary '',48),(1424,16,21,691,121,_binary '',49);
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pxo_proxord`
--

LOCK TABLES `pxo_proxord` WRITE;
/*!40000 ALTER TABLE `pxo_proxord` DISABLE KEYS */;
INSERT INTO `pxo_proxord` VALUES (64,3,36,50,2,100),(65,3,37,50,1,50),(66,4,38,110,1,110),(67,3,39,50,1,50),(68,3,40,50,1,50),(69,4,40,110,1,110),(70,3,41,50,1,50),(71,3,42,50,1,50),(72,3,43,50,1,50);
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
  PRIMARY KEY (`usr_id`),
  KEY `username` (`usr_status`),
  KEY `role` (`usr_role`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usr_user`
--

LOCK TABLES `usr_user` WRITE;
/*!40000 ALTER TABLE `usr_user` DISABLE KEYS */;
INSERT INTO `usr_user` VALUES (2,'restaurant','active','admin','RicardoEspeche','Ricardo','Espeche','COCKTAIL Bar','23264836719','ricardo_espeche@hotmail.com','d59gce3crq19wa0jy0f44ihoc9c9346rzec77c9qu.jpeg','d210c0b1bc760639dcbee25bbf42dc2a',1,6,'La Calera','Jorge L. Borges 800',5151,'3515555237','www.mirestaurante.com.ar',NULL,'2020-06-08 00:54:44','2020-06-08 00:54:44','D5Y2V8NV',_binary '\0',480,1439,60,_binary '\0'),(8,'restaurant','active','normal','NataliaGomez','Natalia','Gomez','El Mesón','30716569280','vilbegsrl@gmail.com.ar','8o6od4zd9cyuw5j6a71krmi4gmmkg3xotgktl8t6l.png','6a4222d7a0085835895864ceb0cc0665',1,6,'Córdoba','Luis de Tejeda 4594',5009,'+5493512211627','https://www.circuitogastronomico.com/restaurante/el-meson/','','2020-06-15 18:21:01','2020-06-15 18:21:01','1HSHFX86',_binary '\0',0,1439,50,_binary '\0'),(11,'restaurant','active','normal','PetronaMaldonado','Petrona','Maldonado','Ochre','27033908623','lauracech@hotmail.com','g5v2mgqhku175x8ahwokc930u773couzlddkaxk7q.jpeg','d05ba99999d6efa248c6a24c993a6981',1,6,'Cordoba','Luis de Tejeda 4555',5009,'3514823438','www.ochre.com.ar',NULL,'2020-06-19 20:10:29','2020-06-19 20:10:29','YFMRGMN4',_binary '\0',0,1439,50,_binary '\0'),(12,'restaurant','active','normal','GabrielaVisentini','Gabriela','Visentini','Lomitos 348','27103760483','lomitos348jardin@hotmail.com','','dc9ff2eeb607c69ff436e432a2fe2a76',1,6,'Cordoba','Elias Yofre 941',5016,'4640010','',NULL,'2020-06-19 20:34:45','2020-06-19 20:34:45','WMFZADG7',_binary '\0',0,1439,50,_binary '\0'),(13,'restaurant','active','normal','ANTHONYUGUETO','ANTHONY','UGUETO','Lo De Villalpando','27201482092','lodevillagpaz@gmail.com','nuue2xo16jtvjsy0xu3qiz3y1md5s94u6uyp6bdek.png','5766390d521d0d70aa7b80a4d9ed09e1',1,6,'CORDOBA','25 DE MAYO 1186',5000,'3515487823','lodevillalpando.com.ar','ef4fb209425371eacf54b5be30daac64','2020-06-19 21:59:26','2020-06-19 21:59:26','WCFGNI8T',_binary '\0',0,1439,50,_binary '\0'),(14,'restaurant','active','normal','ValeriaGertie','Valeria','Gertie','Otro Bar de Cervezas','30715508911','valgertie@gmail.com','6texawyyl9zz71gxlb36jm98vye33f8mh5vqxu7rq.jpeg','4a57192ea2c18c8db96f33908c6a2baf',1,6,'cordoba','Achaval Rodriguez 276',5000,'3584225226','',NULL,'2020-06-19 23:04:59','2020-06-19 23:04:59','KA3SP2MN',_binary '',0,1439,50,_binary '\0'),(15,'restaurant','active','normal','JuanJosePiñero','Juan Jose','Piñero','iL Panino','30714900540','juanjosepineiro@me.com','rsan0hgh7mq8v4e9k8x56jj64ahssc5pk50myxnz7.jpeg','3e534ad52fa5def354c5f7fee7837939',1,6,'Cordoba','Hipólito irigoyen 584',5000,'3515928866','','','2020-06-20 01:51:42','2020-06-20 01:51:42','8A0INDG8',_binary '\0',0,1439,50,_binary '\0'),(16,'restaurant','active','normal','LauraChech','Laura','Chech','Faustino','23170010604','lauracech66@gmail.com','','a53c8dd912983cc831ce5ddb653cf17b',1,6,'Cordoba','Av del Dante s/n',5000,'351 7074810','',NULL,'2020-06-20 23:34:25','2020-06-20 23:34:25','HRIUB21S',_binary '',0,1439,50,_binary '\0'),(17,'restaurant','active','normal','CarlosPizarro','Flavio','Londra','KGB','2014878414-1','sebastianlondra@hotmail.com.ar','','2dc7a037e9e976df88475ccdd82f448e',1,6,'Cordoba','Estrada 98',5000,'+5493514603769','',NULL,'2020-06-21 14:27:41','2020-06-20 23:43:45','2K7H1463',_binary '\0',0,1439,50,_binary '\0'),(18,'restaurant','active','normal','JeremiasMingorance','Jeremias','Mingorance','Pepecito','20-31668949-4','administracion@pepecito.com.ar','','2f374f739f44ce406af063b9aedaa175',1,6,'Cordoba','Gauss 5500',5147,'3513225500','','e371776eec64403f29d265a9a69bfb82','2020-06-23 18:05:43','2020-06-23 18:05:43','TDSUCIA9',_binary '\0',0,1439,50,_binary '\0'),(19,'restaurant','active','normal','ClaudiaDeldotto','Rafael','Pontieri','La Mundial','30716212919','lamundial.bda@gmail.com','09paiesmlaqxm8zuhv6g9kuwsddq91ganwoa25cbd.jpeg','747fd56814ccd086199dcba2670e2833',1,6,'La Calera','Ruta E55 Km 7.5',5151,'3543466553','','41119704a23ec7d31a943b7b53287d2d','2020-06-23 19:26:42','2020-06-23 19:26:42','ZBTLTMJ',_binary '',0,1439,50,_binary '\0'),(20,'restaurant','active','normal','FrancoCerqueti','Franco','Cerqueti','Rancho viejo','30648870236','restauranteranchoviejo@gmail.com','flcv8quccguyp0btf5sl4h0uy5rbhu134up7t6zhs.png','aea1f213a427813800aca013d32fec0f',1,6,'Capital','Av Rogelio  nores Martínez 1900',5000,'4683685','https://instagram.com/ranchoviejo_restaurante?igshid=1ryuoz60blihp',NULL,'2020-06-23 21:09:06','2020-06-23 21:09:06','UEGG68VQ',_binary '\0',0,1439,50,_binary '\0'),(21,'restaurant','active','normal','CandelariaReyna','Candelaria','Reyna','Pizzería POPULAR','30123256450','marketing@pizzeriapopular.com','0ewsvow8zk7okamvge24dpkdk2tdkn9lkzabs8mku.jpeg','755de846632d7b1fd29cf8d324143704',1,6,'Córdoba','Dean Funes 123',5000,'3513365057','','2db0faf8ad0c9468533279a73644b646','2020-06-24 14:17:51','2020-06-24 14:17:51','L618DWUH',_binary '\0',0,1439,50,_binary '\0');
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
ALTER DATABASE `menu_db` CHARACTER SET utf8 COLLATE utf8_bin ;
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
ALTER DATABASE `menu_db` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 DROP FUNCTION IF EXISTS `FN_GET_CODE` */;
ALTER DATABASE `menu_db` CHARACTER SET utf8 COLLATE utf8_bin ;
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
ALTER DATABASE `menu_db` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 DROP FUNCTION IF EXISTS `FN_REMOVE_ACCENTS` */;
ALTER DATABASE `menu_db` CHARACTER SET utf8 COLLATE utf8_bin ;
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
ALTER DATABASE `menu_db` CHARACTER SET utf8 COLLATE utf8_general_ci ;
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
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
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_CHANGE_ORDER_CATEGORY`(
	IN pUsrId INT,
    IN pCatId INT,
    IN pOrder INT
)
BEGIN
    DECLARE vError INT;
    DECLARE vMsg VARCHAR(255);
    DECLARE vOldOrder INT;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
		GET CURRENT DIAGNOSTICS CONDITION 1 vMsg = MESSAGE_TEXT;
        SELECT 301 as 'code', vMsg as message;
		ROLLBACK;
    END;
    START TRANSACTION;
	SET vError = 0;

	UPDATE usr_user SET usr_is_change=1 WHERE usr_id=pUsrId;
    
	SET vOldOrder = (SELECT cat_order FROM cat_category WHERE cat_id = pCatId AND usr_id = pUsrId); 
    
    IF (pOrder < vOldOrder) THEN
		UPDATE cat_category
		SET cat_order = cat_order + 1
		WHERE usr_id = pUsrId AND cat_order >= pOrder AND cat_order <= vOldOrder;
    END IF;
 
	IF (pOrder > vOldOrder) THEN
		UPDATE cat_category
		SET cat_order = cat_order - 1
		WHERE usr_id = pUsrId AND cat_order >= vOldOrder AND cat_order <= pOrder;
    END IF;
    
	UPDATE cat_category
	SET cat_order = pOrder
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
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
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_CHANGE_ORDER_PRODUCT`(
	IN pUsrId INT,
    IN pMenId INT,
    IN pCatId INT,
    IN pProId INT,
    IN pOrder INT
)
BEGIN
    DECLARE vError INT;
    DECLARE vMsg VARCHAR(255);
    DECLARE vOldOrder INT;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
		GET CURRENT DIAGNOSTICS CONDITION 1 vMsg = MESSAGE_TEXT;
        SELECT 301 as 'code', vMsg as message;
		ROLLBACK;
    END;
    START TRANSACTION;
	SET vError = 0;
    
    UPDATE usr_user SET usr_is_change=1 WHERE usr_id=pUsrId;
    
	SET vOldOrder = (SELECT pxm_order FROM pxm_proxmen WHERE pro_id = pProId AND men_id = pMenId AND usr_id = pUsrId AND cat_id=pCatId); 
    
    IF (pOrder < vOldOrder) THEN
		UPDATE pxm_proxmen
		SET pxm_order = pxm_order + 1
		WHERE pxm_order >= pOrder AND pxm_order <= vOldOrder AND usr_id = pUsrId AND men_id = pMenId AND cat_id=pCatId;
    END IF;
 
	IF (pOrder > vOldOrder) THEN
		UPDATE pxm_proxmen
		SET pxm_order = pxm_order - 1
		WHERE pxm_order >= vOldOrder AND pxm_order <= pOrder AND usr_id = pUsrId AND men_id = pMenId AND cat_id=pCatId;
    END IF;
    
	UPDATE pxm_proxmen
	SET pxm_order = pOrder
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
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
/*!50003 DROP PROCEDURE IF EXISTS `SP_CHANGE_STATUS_SHIPPING` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
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
    
	SET vBuyStatus = IF(vBuyStatus=2,3,2);
    
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
/*!50003 DROP PROCEDURE IF EXISTS `SP_DELIVERY_PRODUCT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
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
	IN pUsrId INT
)
BEGIN   

    
	SELECT 
		cat.cat_id as 'id',
        cat.cat_order as 'order',
        cat.cat_name as 'name',
        CASE WHEN (cat.cat_enable) THEN 1 ELSE 0 END as 'enable',
        (select count(*) from pxm_proxmen pxm where pxm.cat_id =  cat.cat_id and pxm.usr_id = pUsrId) as 'products'
	FROM cat_category  cat
    WHERE
		cat.usr_id = pUsrId
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
        cat.cat_manyPrices as 'manyPrices'
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
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_bin */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
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
    
	
	SELECT 
		vCount1 as 'categories',
		vCount2 as 'products',
		vCount3 as 'questions';

    
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
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
	IN pUsrId INT
)
BEGIN

    
    SELECT 
		cat_id as 'id',
        cat_name as 'label',
        cat_manyPrices as 'manyPrices'
    FROM 
		cat_category cat
    WHERE 
		usr_id = pUsrId
        AND cat_enable = 1
    ORDER BY 
        cat.cat_name ASC;

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
        AND men_enable = 1
    ORDER BY 
        men.men_name ASC;

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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_GET_LIST_SHIPPING`(
	IN pUsrId INT
)
BEGIN   
    
    
	SELECT 
		buy.buy_id as 'id',
        buy.buy_status+0 as 'status',
        buy.buy_description as 'description',
		buy.buy_transaction_amount as 'amount',
        DATE_FORMAT(buy_entered, '%d %b, %Y') as 'date'
	FROM buy_buyqr  buy
    WHERE buy.usr_id = pUsrId
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
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
       usr_code as 'codeMenu'
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
       DATE_FORMAT(usr_created_at, '%d %b, %y') as 'date',
       usr_phone as 'phone',
       usr_code as 'codeMenu'
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
        men.men_time_end as 'timeE'
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
        CONCAT(TIME_FORMAT(SEC_TO_TIME(men.men_time_end*60), "%h:%i"),IF((men.men_time_end/60)>=12,' PM',' AM')) as 'timeE'
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
    
    SET vUsrId = IFNULL((SELECT usr_id FROM usr_user WHERE usr_code like pCode), 0);
    IF (vUsrId>0) THEN
		/* Return */
		SELECT 
			pro.pro_id as 'id',
			pxm_order as 'order',
			pro_name as 'name',
			pro_price as 'price',
            pro_manyPrices as 'manyPrices',
            cat.cat_id as 'catId',
			FN_REMOVE_ACCENTS(cat_name) as 'category',
            cat.cat_manyPrices as 'colManyPrices',
            cat.cat_excerpt as 'excerptCat',
			pro.pro_excerpt as 'excerpt',
            pro.pro_type+0 as 'type',
            pro.pro_image as 'image'
		FROM pro_product pro
        INNER JOIN pxm_proxmen pxm ON pxm.pro_id = pro.pro_id
		INNER JOIN cat_category cat ON pxm.cat_id = cat.cat_id 
		WHERE cat.usr_id = vUsrId AND pro.usr_id = vUsrId AND pxm.usr_id = vUsrId
        AND cat_enable=1 
        AND pxm_enable=1
        AND pxm.men_id IN (
							SELECT MAX(men_id)
                            FROM men_menu 
                            WHERE usr_id = vUsrId AND ((DATE_FORMAT(CONVERT_TZ(NOW(),'SYSTEM','-03:00'),'%H')*60)+DATE_FORMAT(CONVERT_TZ(NOW(),'SYSTEM','-03:00'),'%i')) BETWEEN men_time_start 
								AND men_time_end
                                AND men_enable = 1
						  )
		AND (pDelivery=0 OR (pDelivery=1 AND pro.pro_delivery=1))
        ORDER BY
			cat_order ASC,
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
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
		cat_name as 'category',
        case when (pro_delivery) then 1 else 0 end 'delivery'
	FROM pro_product pro
    INNER JOIN pxm_proxmen pxm ON pxm.pro_id = pro.pro_id
	INNER JOIN cat_category cat ON pxm.cat_id = cat.cat_id
    INNER JOIN men_menu men ON pxm.men_id = men.men_id
	WHERE cat.usr_id = pUsrId AND pro.usr_id = pUsrId AND pxm.usr_id = pUsrId
    AND (pMenId = 0 OR (pMenId > 0 AND pxm.men_id = pMenId))
	AND (pCatId = 0 OR (pCatId > 0 AND pxm.cat_id = pCatId))
	order by 
		men.men_id ASC,
		cat_order ASC,
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
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
        ads.ads_cost_qr as 'costQr',
        ads.ads_cost_shipping as 'costShipping',
		vCompany as 'company',
        vCouId as 'couId',
        vState as 'state',
        vCity as 'city',
        vAddress as 'address',
        vZip as 'zip',
        vLastDate as 'lastDate',
        vQuantity as 'lastQuantity'
	FROM ads_admin_settings  ads
    WHERE ads_id = 1;
	
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
/*!50003 DROP PROCEDURE IF EXISTS `SP_INSERT_BUY` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_INSERT_BUY`(
	IN pUsrId INT,
	IN pDescription VARCHAR(255),
    IN pEmail VARCHAR(45),
    IN pInstallments INT,
    IN pPaymentMethod_id VARCHAR(45),
    IN pToken VARCHAR(255),
    IN pTransactionAmount FLOAT,
    IN pResponseMp TEXT,
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

	INSERT INTO `buy_buyqr`
	(
    `usr_id`,
    `buy_description`,
    `buy_email`,
    `buy_installments`,
	`buy_payment_method_id`,
    `buy_token`,
    `buy_transaction_amount`,
    `buy_response_mp`,
    `buy_quantity`)
	VALUES
	(
    pUsrId,
    pDescription,
    pEmail,
    pInstallments,
	pPaymentMethod_id,
    pToken,
	pTransactionAmount,
    pResponseMp,
    pQuantity);
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
	IN pEnable INT
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

	SET vOrder = (SELECT IFNULL(MAX(cat_order),0) FROM cat_category WHERE usr_id = pUsrId)+1;
	INSERT INTO `cat_category`
	(
    `usr_id`,
    `cat_order`,
    `cat_name`,
    `cat_excerpt`,
    `cat_manyPrices`,
	`cat_enable`)
	VALUES
	(
    pUsrId,
    vOrder,
    pName,
    pExcerpt,
    IF(pManyPrices='',NULL,pManyPrices),
	pEnable);
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
	IN pEnable INT
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
	`men_enable`)
	VALUES
	(
    pUsrId,
    pName,
    pTimeS,
    pTimeE,
	pEnable);
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_LOGIN_USER`(
	IN pEmailUser VARCHAR(100),
	IN pPassword VARCHAR(255)
)
BEGIN

    
    SELECT 
		IF(usr.usr_password <> MD5(pPassword), 200, IF(usr.usr_status=1, 207, 0)) as 'code',
		vwL.*,
        IF(usr.usr_status=3, 1, 0) as 'blockAccount'
    FROM usr_user usr
    LEFT OUTER JOIN vw_login vwL ON vwL.id = usr.usr_id
    WHERE (LOWER(usr.usr_email) = LOWER(pEmailUser) OR LOWER(usr.usr_name) = LOWER(pEmailUser)) AND usr.usr_status IN (1,2,3);
    
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
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
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_bin */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_REMOVE_CATEGORY`(
	IN pLogId INT,
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
	
	DELETE FROM cat_category
	WHERE cat_id = pCatId;
	
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
CREATE DEFINER=`menu_user`@`%` PROCEDURE `SP_REMOVE_MEMBER`(
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
    
	DELETE FROM pro_product
	WHERE men_id = pMenId AND usr_id = pUsrId;
    
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
        SELECT vMsg as message;
		ROLLBACK;
    END;
    START TRANSACTION;
	SET vId = (SELECT usr_id FROM usr_user WHERE usr_email = pEmail);
	
	IF (vId > 0) THEN
		DELETE FROM axu_alexusr WHERE usr_id = vId;
        DELETE FROM pro_product WHERE usr_id = vId;
        DELETE FROM cat_category WHERE usr_id = vId;
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
		SET usr_password = MD5(pPassword)
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
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
	IN pEnable INT
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
    
	UPDATE `cat_category`
	SET
	`cat_name` = pName,
    `cat_excerpt` = pExcerpt,
	`cat_enable` = pEnable,
    `cat_manyPrices` = IF(pManyPrices='',NULL,pManyPrices)
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
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
    IN pCodeMenu VARCHAR(8)
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
        usr_code = pCodeMenu
	WHERE usr_id = pMemId;
    
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
	IN pEnable INT
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
	`men_enable` = pEnable
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
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
			INSERT INTO pxm_proxmen (usr_id, men_id, cat_id, pro_id, pxm_enable, pxm_order)
			SELECT 
				pUsrId,
				vMenId,
				pCatId,
				pProId,
				pEnable,
				(SELECT IFNULL(COUNT(*),0) FROM pxm_proxmen WHERE usr_id = pUsrId AND men_id = vMenId AND cat_id = pCatId)+1;
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
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

-- Dump completed on 2020-06-29 15:56:39
