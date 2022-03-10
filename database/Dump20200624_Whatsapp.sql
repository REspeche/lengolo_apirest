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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `axu_alexusr`
--

LOCK TABLES `axu_alexusr` WRITE;
/*!40000 ALTER TABLE `axu_alexusr` DISABLE KEYS */;
INSERT INTO `axu_alexusr` VALUES (2,1,2,2,_binary '',_binary '','2020-06-07 21:54:44',_binary ''),(8,1,8,8,_binary '',_binary '','2020-06-15 15:21:01',_binary ''),(9,1,9,9,_binary '',_binary '','2020-06-21 23:10:56',_binary ''),(10,1,10,10,_binary '\0',_binary '','2020-06-24 19:42:52',_binary '');
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_category`
--

LOCK TABLES `cat_category` WRITE;
/*!40000 ALTER TABLE `cat_category` DISABLE KEYS */;
INSERT INTO `cat_category` VALUES (1,2,1,'desayunos',NULL,NULL,_binary ''),(2,2,2,'entradas',NULL,NULL,_binary ''),(3,2,3,'ensaladas','','med/gran',_binary ''),(4,2,4,'parrilla de carbón','Todos los platos vienen con guarnición de papas, ensalada o puré',NULL,_binary ''),(5,2,5,'nuestras patatas especiales',NULL,NULL,_binary ''),(6,2,6,'bebidas',NULL,NULL,_binary ''),(7,8,1,'desayunos y meriendas',NULL,NULL,_binary ''),(8,8,2,'cafetería',NULL,NULL,_binary ''),(9,8,3,'tartas y tortas',NULL,NULL,_binary ''),(10,8,4,'adicionales',NULL,NULL,_binary ''),(11,8,5,'licuados',NULL,NULL,_binary ''),(12,8,6,'jarra de limonada',NULL,NULL,_binary ''),(13,8,7,'sándwiches y tostas',NULL,NULL,_binary ''),(14,8,8,'hamburguesas',NULL,NULL,_binary ''),(15,8,9,'degustación de hamburguesas',NULL,NULL,_binary ''),(16,8,10,'lomos',NULL,NULL,_binary ''),(17,8,11,'sándwiches',NULL,NULL,_binary ''),(18,8,12,'menú infantil',NULL,NULL,_binary ''),(19,8,13,'nuestros tacos',NULL,NULL,_binary ''),(20,8,14,'whiskys (la medida)',NULL,NULL,_binary ''),(21,8,15,'fernet branca',NULL,NULL,_binary ''),(22,8,16,'bebidas sin alcohol',NULL,NULL,_binary ''),(23,8,17,'algunos tragos',NULL,NULL,_binary ''),(24,8,18,'vinos',NULL,NULL,_binary ''),(25,8,19,'espumantes',NULL,NULL,_binary '');
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
  `cli_idFacebook` varchar(45) DEFAULT NULL,
  `cli_firstName` varchar(100) DEFAULT NULL,
  `cli_lastName` varchar(100) DEFAULT NULL,
  `cli_gender` varchar(45) DEFAULT NULL,
  `cli_hash` varchar(45) DEFAULT NULL,
  `cli_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cli_enable` varchar(45) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cli_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cli_client`
--

LOCK TABLES `cli_client` WRITE;
/*!40000 ALTER TABLE `cli_client` DISABLE KEYS */;
INSERT INTO `cli_client` VALUES (1,'ricardo_espeche@hotmail.com','10221147296365712','Ricardo','Espeche','Espeche','a1e459252ee4635d7269c2f28d3efdb1','2020-06-24 22:57:06','1');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cxu_clixusr`
--

LOCK TABLES `cxu_clixusr` WRITE;
/*!40000 ALTER TABLE `cxu_clixusr` DISABLE KEYS */;
INSERT INTO `cxu_clixusr` VALUES (2,1,2,'2020-06-24 22:57:06',_binary '');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `men_menu`
--

LOCK TABLES `men_menu` WRITE;
/*!40000 ALTER TABLE `men_menu` DISABLE KEYS */;
INSERT INTO `men_menu` VALUES (7,2,'Principal',0,1439,_binary ''),(8,2,'Ejecutivo',600,930,_binary '\0'),(9,8,'Principal',0,1439,_binary ''),(10,9,'Principal',0,1439,_binary ''),(11,10,'Principal',0,1439,_binary '');
/*!40000 ALTER TABLE `men_menu` ENABLE KEYS */;
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
  PRIMARY KEY (`pro_id`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pro_product`
--

LOCK TABLES `pro_product` WRITE;
/*!40000 ALTER TABLE `pro_product` DISABLE KEYS */;
INSERT INTO `pro_product` VALUES (1,2,'café con leche','cafe con 1/4 de leche entera y soda',135,NULL,'normal',_binary ''),(2,2,'cafe con leche ligth','cafe con 1/4 de leche descremada, 3 tostadas del campo, manteca o mermelada y jugo de naranja',150,NULL,'normal',_binary ''),(3,2,'empanadas criollas cortada a cuchillo','bola de cuadril con un toque de especias',50,NULL,'normal',_binary ''),(4,2,'provoleta a la parrilla con orégano','Provoleta italiana grillada con queso',110,NULL,'normal',_binary ''),(5,2,'chorizo criollo con patatas paja y chimichurri','Salsa Argentina con pápas fritas y salsa de chimichurri',115,NULL,'normal',_binary ''),(6,2,'de campo (clásica de asados: lechuga, tomate y cebolla)','Lechuga, tomate y cebolla',82,'50/82','normal',_binary ''),(7,2,'calabaza asada y queso de cabra','Dados de calabaza, pipas, queso de cabra desmigado sobre mix de verdes con vinagreta de pomelo',96,'80/94','normal',_binary ''),(8,2,'espinacas frescas','Espinacas frescas con nueces, requesón, QUESO AZUL Y PERA',108,'100/111','normal',_binary ''),(9,2,'tira de asado','Churrasco de ternera seleccionado',180,NULL,'normal',_binary ''),(10,2,'entraña','Corte de moda en Argentina, sin hueso y sabroso',170,NULL,'normal',_binary ''),(11,2,'secreto de cerdo \"a la pizza\"','Con salsa de tomate y mozzarella',165,NULL,'normal',_binary ''),(12,2,'pollo relleno a la brasa','Receta del \"Pobre Luis\", Uruguay (según disponibilidad).',150,NULL,'normal',_binary ''),(13,2,'entrecot origen argentina','Razas varias',190,NULL,'normal',_binary ''),(14,2,'caseras clásicas','',80,NULL,'normal',_binary ''),(15,2,'argentinas a la provenzal','Con ajo y perejil frezco',62,NULL,'normal',_binary ''),(16,2,'asadas a la brasa de carbón','Con una salsa de BBQ',55,NULL,'normal',_binary ''),(17,2,'papas \"de paul\"','Asadas y rellenas de crema de queso',28,NULL,'normal',_binary ''),(18,2,'rústicas, especiadas y un poco picantes','Con cáscara y un toque de pimienta',60,NULL,'normal',_binary ''),(19,2,'entrecot origen argentina raza angus certificado','Costilla de Angus Argentino',210,NULL,'normal',_binary ''),(20,2,'gaseosa','Botella 500cc',100,NULL,'normal',_binary ''),(21,2,'agua mineral','Con gas o sin gas',60,NULL,'normal',_binary ''),(25,8,'clásico','Café con leche o infusión, 2 medialunas o criollos. Jugo de naranja.',190,NULL,'normal',_binary ''),(26,8,'completo','Café con leche o infusión, 2 medialunas o criollos. Manteca y dulce casero. Jugo de naranja.',220,NULL,'normal',_binary ''),(27,8,'light','Café con leche o infusión. Tostada de pan negro. Queso untable y mermelada light. Jugo de naranja. (Opcional con ensalada de frutas $270)',250,NULL,'normal',_binary ''),(28,8,'campero','Café con leche o infusión. Tostadas pan de campo. Manteca, dulce, jamón y queso. Jugo de Naranja.',260,NULL,'normal',_binary ''),(29,8,'mesón copado - figurella','Copón de Yogurt con granola y frutas de estación.',190,NULL,'normal',_binary ''),(30,8,'proteico','Huevo revueltos, jamón y queso, tostadas de campo y ensalada de frutas. Infusión y jugo de naranja.',360,NULL,'normal',_binary ''),(31,8,'matero','Set de mate completo por persona.',90,NULL,'normal',_binary ''),(32,8,'café chico','',80,NULL,'normal',_binary ''),(33,8,'café en jarro','',90,NULL,'normal',_binary ''),(34,8,'café doble','',100,NULL,'normal',_binary ''),(35,8,'café con leche','',100,NULL,'normal',_binary ''),(36,8,'submarino','',120,NULL,'normal',_binary ''),(37,8,'capuchino','',120,NULL,'normal',_binary ''),(38,8,'té y otras infusiones','',90,NULL,'normal',_binary ''),(39,8,'mesón','',180,NULL,'normal',_binary ''),(40,8,'lemmon pie','',180,NULL,'normal',_binary ''),(41,8,'coco','',180,NULL,'normal',_binary ''),(42,8,'cheesecake','',190,NULL,'normal',_binary ''),(43,8,'marquise de chocolate','',190,NULL,'normal',_binary ''),(44,8,'medialunas','',50,NULL,'normal',_binary ''),(45,8,'criollos','',40,NULL,'normal',_binary ''),(46,8,'mafalda','',110,NULL,'normal',_binary ''),(47,8,'manteca y mermelada','',50,NULL,'normal',_binary ''),(48,8,'jugo de naranja','',150,NULL,'normal',_binary ''),(49,8,'jugo de arándanos','',180,NULL,'normal',_binary ''),(50,8,'huevos revueltos','',110,NULL,'normal',_binary ''),(51,8,'porción de tostadas','',50,NULL,'normal',_binary ''),(52,8,'porción de tostadas con semillas','',70,NULL,'normal',_binary ''),(53,8,'ensalada de frutas','Las frutas pueden variar según estación.',110,NULL,'normal',_binary ''),(54,8,'con agua','',170,NULL,'normal',_binary ''),(55,8,'con leche','',190,NULL,'normal',_binary ''),(56,8,'con jugo de naranja','',190,NULL,'normal',_binary ''),(57,8,'smoothies','',190,NULL,'normal',_binary ''),(58,8,'jarra de limonada','Con jengibre y menta. Opcional pepino.',210,NULL,'normal',_binary ''),(59,8,'tostado de jamón y queso','En pan baguette.',190,NULL,'normal',_binary ''),(60,8,'tostado mesón','En pan baguette con tomate y rúcula.',230,NULL,'vegetarian',_binary ''),(61,8,'sándwich de jamón crudo','En pan de campo con rúcula y cherry.',270,NULL,'normal',_binary ''),(62,8,'sándwich de vegetales frío','Palta, lechuga, tomate y queso crema en pan negro con semillas.',290,NULL,'vegetarian',_binary ''),(63,8,'sándwich de salmón','Salmón, rúcula, cherry y queso crema en pan con semillas.',380,NULL,'normal',_binary ''),(64,8,'tostas de huevo revuelto','Tostadita con huevo revuelto, jamón natural, queso y verdeo.',190,NULL,'normal',_binary ''),(65,8,'tostas mexicanas','Con guacamole.',190,NULL,'vegetarian',_binary ''),(66,8,'tostas vegetarianas','Palta, queso crema, cherry y sésamo en pan con semillas.',190,NULL,'vegetarian',_binary ''),(67,8,'la bestia','Tomate, lechuga, panceta, cebolla morada, cheddar, huevo y aleoli. Con papas bastón.',390,NULL,'normal',_binary ''),(68,8,'egoista','Provolone gratinado, hongos, cebolla, panceta, huevo, barbacoa y aleoli. Con papas bastón.',370,NULL,'normal',_binary ''),(69,8,'caprichosa','Tomate, lechuga, palta, provolone gratinado y aleoli. Con papas bastón.',370,NULL,'normal',_binary ''),(70,8,'princesita (de pollo)','Pollo crispy, tomate, lechuga, huevo, queso y aleoli. Con papas bastón.',370,NULL,'normal',_binary ''),(71,8,'recatada','Garbanzo, rúcula, tomate, queso tybo, cebolla, huevo, mayonesa de apio y aleoli. Con papas bastón.',370,NULL,'vegetarian',_binary ''),(72,8,'kustom (lookeada para vos)','Queso provolone rebozado, lechuga, tomate, y huevo. Con papas bastón.',370,NULL,'normal',_binary ''),(73,8,'curda','Panceta, queso tybo, lechuga, tomate, y huevo. Con aderezo de cebollas asadas al Malbec. Con papas.',370,NULL,'normal',_binary ''),(74,8,'ciclotímica','No te conformás con nada y querés todas.\n*LA BESTIA - *EGOÍSTA - *CAPRICHOSA - *PRINCESITA',620,NULL,'normal',_binary ''),(75,8,'lomo completo','Jamón, queso, huevo, lechuga y tomate.\nCon papas bravas.',450,NULL,'normal',_binary ''),(76,8,'lomo completo de pollo','Jamón, queso, huevo, lechuga y tomate.\nCon papas bravas.',360,NULL,'normal',_binary ''),(77,8,'lomo mediano','Jamón, queso, huevo, lechuga y tomate.\nCon papas bravas.',360,NULL,'normal',_binary ''),(78,8,'lomo mediano de pollo','Jamón, queso, huevo, lechuga y tomate.\nCon papas bravas.',290,NULL,'normal',_binary ''),(79,8,'lomito al plato','Lomo con jamón, queso y huevo. Acompañado de papas fritas y ensalada.',450,NULL,'normal',_binary ''),(80,8,'sándwich de vegetales asados','Berenjenas, zuccini, pimientos, hongos, rúcula y queso. Con papas fritas.',310,NULL,'normal',_binary ''),(81,8,'sándwich de vegetales fríos','Palta, lechuga, tomate y queso en pan negro con semillas.',290,NULL,'vegetarian',_binary ''),(82,8,'sándwich de salmón','Salmón, rúcula, cherry y queso crema en pan con semillas.',380,NULL,'normal',_binary ''),(83,8,'para ellos también','Crocantes de pollo caseritos ó hamburguesa con fritas. Incluye gaseosa.',310,NULL,'normal',_binary ''),(84,8,'nuestro taquito bien cabrón','De carne o pollo con vegetales salteados, queso cheddar y un toque de panceta. Ahh... y el infaltable guacamole sale con papas.',440,NULL,'normal',_binary ''),(85,8,'taco de vegetales','Berenjenas, zuccini, pimientos, cebolla morada, hongos y queso tybo. Con papas fritas.',430,NULL,'vegetarian',_binary ''),(86,8,'ballantines','',350,NULL,'normal',_binary ''),(87,8,'johnnie walker red label','',370,NULL,'normal',_binary ''),(88,8,'johnnie walker black label','',420,NULL,'normal',_binary ''),(89,8,'jack daniels','',400,NULL,'normal',_binary ''),(90,8,'famous grouse finest','',400,NULL,'normal',_binary ''),(91,8,'gentleman jack','',690,NULL,'normal',_binary ''),(92,8,'the macallan fine oak 12 años','',690,NULL,'normal',_binary ''),(93,8,'gaseosas','',100,NULL,'normal',_binary ''),(94,8,'aguas saborizadas','',100,NULL,'normal',_binary ''),(95,8,'agua con y sin gas','',100,NULL,'normal',_binary ''),(96,8,'jugo de naranjas','',140,NULL,'normal',_binary ''),(97,8,'jugo de arándanos','',170,NULL,'normal',_binary ''),(98,8,'licuados con agua','',150,NULL,'normal',_binary ''),(99,8,'licuados con leche','',160,NULL,'normal',_binary ''),(100,8,'licuados con jugo de naranja','',170,NULL,'normal',_binary ''),(101,8,'smoothies','',170,NULL,'normal',_binary ''),(102,8,'speed','',120,NULL,'normal',_binary ''),(103,8,'jarra de limonada','Con jenjibre y menta. Opcional pepino.',210,NULL,'normal',_binary ''),(104,8,'fernet branca','',220,NULL,'normal',_binary ''),(105,8,'garibaldi','',220,NULL,'normal',_binary ''),(106,8,'gancia','',220,NULL,'normal',_binary ''),(107,8,'gin & tonic','',260,NULL,'normal',_binary ''),(108,8,'cuba libre','',250,NULL,'normal',_binary ''),(109,8,'mojito','',300,NULL,'normal',_binary ''),(110,8,'mojito de maracuyá','',300,NULL,'normal',_binary ''),(111,8,'famiglia bianchi (red blend)','',400,NULL,'normal',_binary ''),(112,8,'famiglia bianchi (white blend)','',400,NULL,'normal',_binary ''),(113,8,'famiglia bianchi (rosé blend)','',400,NULL,'normal',_binary ''),(114,8,'famiglia bianchi (malbec)','',530,NULL,'normal',_binary ''),(115,8,'gauchezco 3/8 (reserva malbec)','',310,NULL,'normal',_binary ''),(116,8,'gauchezco clásico (malbec)','',400,NULL,'normal',_binary ''),(117,8,'gauchezco clásico (cabernet sauvignon)','',400,NULL,'normal',_binary ''),(118,8,'gauchezco (reserva chardonay)','',520,NULL,'normal',_binary ''),(119,8,'gauchezco (reserva malbec)','',520,NULL,'normal',_binary ''),(120,8,'gauchezco (reserva cabernet sauvignon)','',520,NULL,'normal',_binary ''),(121,8,'fond de cave (malbec)','',490,NULL,'normal',_binary ''),(122,8,'fond de cave (cabernet sauvignon)','',490,NULL,'normal',_binary ''),(123,8,'don david (malbec)','',490,NULL,'normal',_binary ''),(124,8,'alma mora (malbec)','',380,NULL,'normal',_binary ''),(125,8,'bravio (malbec, cab.sauv., sauv. blanc., blend)','',370,NULL,'normal',_binary ''),(126,8,'dada 1 (tinto, malbec y bonarda)','',380,NULL,'normal',_binary ''),(127,8,'dada 2 (merlot)','',380,NULL,'normal',_binary ''),(128,8,'dada 3 (tinto, cabernet y syrah)','',380,NULL,'normal',_binary ''),(129,8,'dada 5 (moscato)','',380,NULL,'normal',_binary ''),(130,8,'santa julia (malbec)','',340,NULL,'normal',_binary ''),(131,8,'santa julia (sauvignon blanc)','',320,NULL,'normal',_binary ''),(132,8,'las perdices 3/8 (malbec)','',320,NULL,'normal',_binary ''),(133,8,'las perdices (sauvignon blanc)','',450,NULL,'normal',_binary ''),(134,8,'las perdices (rosé)','',430,NULL,'normal',_binary ''),(135,8,'las perdices (malbec)','',490,NULL,'normal',_binary ''),(136,8,'tomero rose tomero (malbec)','',520,NULL,'normal',_binary ''),(137,8,'fabre montmayou (reserva malbec)','',570,NULL,'normal',_binary ''),(138,8,'nicassia (red blend)','',860,NULL,'normal',_binary ''),(139,8,'alamos (malbec, moscatel)','',530,NULL,'normal',_binary ''),(140,8,'cafayate cosecha tardía','',370,NULL,'normal',_binary ''),(141,8,'latitud 33 (malbec)','',450,NULL,'normal',_binary ''),(142,8,'uxmall (malbec, cabernet, chardonay)','',450,NULL,'normal',_binary ''),(143,8,'luigi bosca (malbec)','',980,NULL,'normal',_binary ''),(144,8,'copa de vino (las perdices reserva malbec)','',140,NULL,'normal',_binary ''),(145,8,'sidra peer x 500 c.c.','',190,NULL,'normal',_binary '');
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
) ENGINE=InnoDB AUTO_INCREMENT=545 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pxm_proxmen`
--

LOCK TABLES `pxm_proxmen` WRITE;
/*!40000 ALTER TABLE `pxm_proxmen` DISABLE KEYS */;
INSERT INTO `pxm_proxmen` VALUES (265,2,7,1,1,_binary '',1),(266,2,7,2,1,_binary '',1),(267,2,7,3,2,_binary '',2),(268,2,7,4,2,_binary '',3),(269,2,7,5,2,_binary '',3),(273,2,7,9,4,_binary '',1),(274,2,7,10,4,_binary '',2),(275,2,7,11,4,_binary '',3),(276,2,7,12,4,_binary '',4),(277,2,7,13,4,_binary '',5),(278,2,7,14,5,_binary '',1),(279,2,7,15,5,_binary '',2),(280,2,7,16,5,_binary '',3),(281,2,7,17,5,_binary '',4),(282,2,7,18,5,_binary '',5),(283,2,7,19,4,_binary '',6),(284,2,7,20,6,_binary '',1),(285,2,7,21,6,_binary '',2),(287,8,9,25,7,_binary '',1),(288,8,9,26,7,_binary '',2),(289,8,9,27,7,_binary '',3),(290,8,9,28,7,_binary '',4),(291,8,9,29,7,_binary '',5),(292,8,9,30,7,_binary '',6),(293,8,9,31,7,_binary '',7),(294,8,9,32,8,_binary '',1),(295,8,9,33,8,_binary '',2),(296,8,9,34,8,_binary '',3),(297,8,9,35,8,_binary '',4),(298,8,9,36,8,_binary '',5),(299,8,9,37,8,_binary '',6),(300,8,9,38,8,_binary '',7),(301,8,9,39,9,_binary '',1),(302,8,9,40,9,_binary '',2),(303,8,9,41,9,_binary '',3),(304,8,9,42,9,_binary '',4),(305,8,9,43,9,_binary '',5),(306,8,9,44,10,_binary '',1),(307,8,9,45,10,_binary '',2),(308,8,9,46,10,_binary '',3),(309,8,9,47,10,_binary '',4),(310,8,9,48,10,_binary '',5),(311,8,9,49,10,_binary '',6),(312,8,9,50,10,_binary '',7),(313,8,9,51,10,_binary '',8),(314,8,9,52,10,_binary '',9),(315,8,9,53,10,_binary '',10),(316,8,9,54,11,_binary '',1),(317,8,9,55,11,_binary '',2),(318,8,9,56,11,_binary '',3),(319,8,9,57,11,_binary '',4),(320,8,9,58,12,_binary '',1),(321,8,9,59,13,_binary '',1),(322,8,9,60,13,_binary '',2),(323,8,9,61,13,_binary '',3),(324,8,9,62,13,_binary '',4),(325,8,9,63,13,_binary '',5),(326,8,9,64,13,_binary '',6),(327,8,9,65,13,_binary '',7),(328,8,9,66,13,_binary '',8),(329,8,9,67,14,_binary '',1),(330,8,9,68,14,_binary '',2),(331,8,9,69,14,_binary '',3),(332,8,9,70,14,_binary '',4),(333,8,9,71,14,_binary '',5),(334,8,9,72,14,_binary '',6),(335,8,9,73,14,_binary '',7),(336,8,9,74,15,_binary '',1),(337,8,9,75,16,_binary '',1),(338,8,9,76,16,_binary '',2),(339,8,9,77,16,_binary '',3),(340,8,9,78,16,_binary '',4),(341,8,9,79,16,_binary '',5),(342,8,9,80,17,_binary '',1),(343,8,9,81,17,_binary '',2),(344,8,9,82,17,_binary '',3),(345,8,9,83,18,_binary '',1),(346,8,9,84,19,_binary '',1),(347,8,9,85,19,_binary '',2),(348,8,9,86,20,_binary '',1),(349,8,9,87,20,_binary '',2),(350,8,9,88,20,_binary '',3),(351,8,9,89,20,_binary '',4),(352,8,9,90,20,_binary '',5),(353,8,9,91,20,_binary '',6),(354,8,9,92,20,_binary '',7),(355,8,9,93,22,_binary '',1),(356,8,9,94,22,_binary '',2),(357,8,9,95,22,_binary '',3),(358,8,9,96,22,_binary '',4),(359,8,9,97,22,_binary '',5),(360,8,9,98,22,_binary '',6),(361,8,9,99,22,_binary '',7),(362,8,9,100,22,_binary '',8),(363,8,9,101,22,_binary '',9),(364,8,9,102,22,_binary '',10),(365,8,9,103,22,_binary '',11),(366,8,9,104,23,_binary '',1),(367,8,9,105,23,_binary '',2),(368,8,9,106,23,_binary '',3),(369,8,9,107,23,_binary '',4),(370,8,9,108,23,_binary '',5),(371,8,9,109,23,_binary '',6),(372,8,9,110,23,_binary '',7),(373,8,9,111,24,_binary '',1),(374,8,9,112,24,_binary '',2),(375,8,9,113,24,_binary '',3),(376,8,9,114,24,_binary '',4),(377,8,9,115,24,_binary '',5),(378,8,9,116,24,_binary '',6),(379,8,9,117,24,_binary '',7),(380,8,9,118,24,_binary '',8),(381,8,9,119,24,_binary '',9),(382,8,9,120,24,_binary '',10),(383,8,9,121,24,_binary '',11),(384,8,9,122,24,_binary '',12),(385,8,9,123,24,_binary '',13),(386,8,9,124,24,_binary '',14),(387,8,9,125,24,_binary '',15),(388,8,9,126,24,_binary '',16),(389,8,9,127,24,_binary '',17),(390,8,9,128,24,_binary '',18),(391,8,9,129,24,_binary '',19),(392,8,9,130,24,_binary '',20),(393,8,9,131,24,_binary '',21),(394,8,9,132,24,_binary '',22),(395,8,9,133,24,_binary '',23),(396,8,9,134,24,_binary '',24),(397,8,9,135,24,_binary '',25),(398,8,9,136,24,_binary '',26),(399,8,9,137,24,_binary '',27),(400,8,9,138,24,_binary '',28),(401,8,9,139,24,_binary '',29),(402,8,9,140,24,_binary '',30),(403,8,9,141,24,_binary '',31),(404,8,9,142,24,_binary '',32),(405,8,9,143,24,_binary '',33),(406,8,9,144,24,_binary '',34),(407,8,9,145,24,_binary '',35),(521,2,8,1,1,_binary '',1),(522,2,8,2,1,_binary '',0),(523,2,8,3,2,_binary '',2),(524,2,8,4,2,_binary '',1),(538,2,7,6,3,_binary '',3),(540,2,7,7,3,_binary '',1),(542,2,7,8,3,_binary '',3);
/*!40000 ALTER TABLE `pxm_proxmen` ENABLE KEYS */;
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
  `usr_phone_wa` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `usr_website` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `usr_hash` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `usr_updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usr_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usr_code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `usr_is_change` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`usr_id`),
  KEY `username` (`usr_status`),
  KEY `role` (`usr_role`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usr_user`
--

LOCK TABLES `usr_user` WRITE;
/*!40000 ALTER TABLE `usr_user` DISABLE KEYS */;
INSERT INTO `usr_user` VALUES (2,'restaurant','active','admin','RicardoEspeche','Ricardo','Espeche','El Rincón de Lengolo','23264836719','ricardo_espeche@hotmail.com','zic2nyfow5c94bihuaqjzvm11q7xi73rfcjclwrma.jpeg','bf9f4637d8929473926bb14bd58266d1',1,6,'La Calera','Jorge L. Borges 800',5151,'3515555237','+5493515555237','www.mirestaurante.com.ar',NULL,'2020-06-08 00:54:44','2020-06-08 00:54:44','D5Y2V8NV',_binary '\0'),(8,'restaurant','active','normal','NataliaGomez','Natalia','Gomez','El Mesón','30716569280','info@elmeson.com.ar','efwpi55uh4grd7v2r0qby2sfkzn0ppb7ft0hxv1ao.jpeg','6a4222d7a0085835895864ceb0cc0665',1,6,'Córdoba','Luis de Tejeda 4594',5009,'+5493512211627',NULL,'https://www.circuitogastronomico.com/restaurante/el-meson/','','2020-06-15 18:21:01','2020-06-15 18:21:01','93QR64S3',_binary '\0'),(9,'restaurant','delete','normal','PepeEstopa','Pepe','Estopa','El Mesón','23264836711','pepe.estopa@gmail.com','hajvevvju6r78cxzjacmrauhc4ss0lys1azqnetf5.jpeg','bf9f4637d8929473926bb14bd58266d1',1,6,'Córdoba','Luis de Tejeda 4594',5009,'',NULL,'','a0b75643336cc700c15ee3f3784d99f7','2020-06-22 02:10:56','2020-06-22 02:10:56','RCFSYIEF',_binary '\0'),(10,'restaurant','pending','normal','D5Y2V8NVricardo_espeche@hotmail.com','D5Y2V8NV','ricardo_espeche@hotmail.com',NULL,NULL,'10221147296365712',NULL,'c899a91880ee511c03f5810cf9eaa022',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'bd389e03e5051069048e7abee576dbf8','2020-06-24 22:42:52','2020-06-24 22:42:52','NQR5AZNY',_binary '\0');
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
 1 AS `codeMenu`*/;
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
 1 AS `hash`*/;
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `COUNT_STR`(haystack TEXT, needle VARCHAR(32)) RETURNS int
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
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
/*!50003 DROP FUNCTION IF EXISTS `FN_REMOVE_ACCENTS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
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
        usr_website as 'website'
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
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
	   usr_name as 'name',
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
       CASE WHEN (LENGTH(usr_cuit)=11) THEN CONCAT(SUBSTRING(usr_cuit,1,2),'-',SUBSTRING(usr_cuit,3,8),'-',SUBSTRING(usr_cuit,11,1)) ELSE usr_cuit END as 'cuit',
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
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
	IN pCode VARCHAR(8)
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
            pro.pro_type+0 as 'type'
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
        pro.pro_type+0 as 'type'
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
		cat_name as 'category'
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
	   usr_name as 'name',
	   usr_firstName as 'firstName',
       usr_lastName as 'lastName',
       usr_company as 'company',
	   IFNULL(cou_id,0) as 'couId',
       IFNULL(sta_id,0) as 'staId',
       IFNULL(usr_city,'') as 'city',
	   IFNULL(usr_address,'') as 'address',
	   IFNULL(usr_zip_code,'') as 'zip',
	   IFNULL(usr_phone,'') as 'phone',
       IFNULL(usr_phone_wa,'') as 'phoneWA',
	   IFNULL(usr_website,'') as 'webSite',
       usr_avatar as 'avatar',
       CASE WHEN (LENGTH(usr_cuit)=11) THEN CONCAT(SUBSTRING(usr_cuit,1,2),'-',SUBSTRING(usr_cuit,3,8),'-',SUBSTRING(usr_cuit,11,1)) ELSE usr_cuit END as 'cuit'
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
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
	IN pEnable INT
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
    `pro_type`)
	VALUES
	(
    pUsrId,
    pName,
	pPrice,
    IF(pManyPrices='',NULL,pManyPrices),
    pExcerpt,
    pType);
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
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
	/* Return */
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
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
	/* Return */
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
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
	IN pIdFacebook VARCHAR(50),
	IN pFirstName VARCHAR(100),
    IN pLastName VARCHAR(100),
	IN pGender VARCHAR(45)
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
		INSERT INTO cli_client (cli_email, cli_idFacebook, cli_firstname, cli_lastname, cli_gender, cli_hash, cli_created_at, cli_enable) 
		VALUES (pEmail, pIdFacebook, pFirstName, pLastName, pLastName, MD5(CONCAT(pIdFacebook,NOW())), NOW(), 1);
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
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
    IN pCUIT VARCHAR(45),
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
		usr_cuit = pCUIT,
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
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
	IN pEnable INT
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
    `pro_type` = pType
	WHERE pro_id = pProId AND usr_id = pUsrId;
    
    COMMIT;
	/* Return */
	SELECT 
		vError as 'code',
		vMsg as 'message';
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
	IN pName VARCHAR(100),
    IN pFirstName VARCHAR(50),
    IN pLastName VARCHAR(50),
    IN pCompany VARCHAR(45),
    IN pCUIT VARCHAR(45),
    IN pCouId INT,
	IN pStaId INT,
	IN pCity VARCHAR(45),
	IN pAddress VARCHAR(255),
	IN pZip INT,
	IN pPhone VARCHAR(32),
    IN pPhoneWA VARCHAR(32),
	IN pWebSite VARCHAR(255),
    IN pAvatar VARCHAR(255)
)
BEGIN
	DECLARE vError INT;
    DECLARE vMsg VARCHAR(255);
    DECLARE vUsrCount INT;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
		GET CURRENT DIAGNOSTICS CONDITION 1 vMsg = MESSAGE_TEXT;
        SELECT 301 as 'code', vMsg as message;
		ROLLBACK;
    END;
    START TRANSACTION;
	SET vError = 0;

	SET vUsrCount = (SELECT COUNT(1) FROM usr_user WHERE usr_name = pName AND usr_status < 4 AND usr_id <> pUsrId); 

	IF (vUsrCount=0) THEN
		SET vUsrCount = (SELECT COUNT(1) FROM usr_user WHERE usr_cuit = pCUIT AND usr_status < 4 AND usr_id <> pUsrId); 
		
		IF (vUsrCount=0) THEN
        
			SET vUsrCount = (SELECT COUNT(1) FROM usr_user WHERE (usr_company = pCompany AND usr_cuit = pCUIT) AND usr_status < 4 AND usr_id <> pUsrId); 
            
            IF (vUsrCount=0) THEN
				UPDATE usr_user
				SET
					usr_name = pName,
					usr_firstname = pFirstName,
					usr_lastname = pLastName,
					usr_company = pCompany,
					usr_cuit = pCUIT,
					cou_id = pCouId ,
					sta_id = pStaId ,
					usr_city = pCity,
					usr_address = pAddress,
					usr_zip_code = pZip ,
					usr_phone = pPhone ,
                    usr_phone_wa = pPhoneWA ,
					usr_website = pWebSite
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
		ELSE
			SET vError = 313; 
        END IF;
	ELSE
		SET vError = 312; 
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
/*!50001 VIEW `vw_login` AS select `usr`.`usr_id` AS `id`,convert(`usr`.`usr_firstname` using utf8) AS `name`,(`usr`.`usr_status` + 0) AS `status`,`usr`.`usr_hash` AS `hash`,(`usr`.`usr_role` + 0) AS `role`,(case when (`usr`.`sta_id` is null) then true else false end) AS `forceProfile`,`usr`.`usr_avatar` AS `avatar`,`usr`.`usr_email` AS `email`,`usr`.`usr_code` AS `codeMenu` from `usr_user` `usr` */;
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
/*!50001 VIEW `vw_login_client` AS select `cli`.`cli_id` AS `id`,convert(`cli`.`cli_firstName` using utf8) AS `name`,`cli`.`cli_email` AS `email`,`cli`.`cli_hash` AS `hash` from `cli_client` `cli` */;
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

-- Dump completed on 2020-06-24 21:07:22
