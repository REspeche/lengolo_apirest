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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `axu_alexusr`
--

LOCK TABLES `axu_alexusr` WRITE;
/*!40000 ALTER TABLE `axu_alexusr` DISABLE KEYS */;
INSERT INTO `axu_alexusr` VALUES (2,1,2,2,_binary '',_binary '','2020-06-07 21:54:44',_binary ''),(8,1,8,8,_binary '',_binary '','2020-06-15 15:21:01',_binary '');
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
  `buy_status` enum('pending','sent','ready') COLLATE utf8_bin NOT NULL DEFAULT 'pending',
  `buy_quantity` int DEFAULT NULL,
  `buy_description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `buy_email` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `buy_installments` int DEFAULT NULL,
  `buy_payment_method_id` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `buy_token` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `buy_transaction_amount` float DEFAULT NULL,
  `buy_response_mp` text COLLATE utf8_bin,
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
  `cat_enable` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_category`
--

LOCK TABLES `cat_category` WRITE;
/*!40000 ALTER TABLE `cat_category` DISABLE KEYS */;
INSERT INTO `cat_category` VALUES (1,2,1,'DESAYUNOS',_binary ''),(2,2,2,'ENTRADAS',_binary ''),(3,2,3,'ENSALADAS',_binary ''),(4,2,4,'PARRILLA DE CARBÓN',_binary ''),(5,2,5,'NUESTRAS PATATAS ESPECIALES',_binary ''),(6,2,6,'BEBIDAS',_binary ''),(7,8,1,'DESAYUNOS Y MERIENDAS',_binary ''),(8,8,2,'CAFETERÍA',_binary ''),(9,8,3,'TARTAS Y TORTAS',_binary ''),(10,8,4,'ADICIONALES',_binary ''),(11,8,5,'LICUADOS',_binary ''),(12,8,6,'JARRA DE LIMONADA',_binary ''),(13,8,7,'SÁNDWICHES Y TOSTAS',_binary '');
/*!40000 ALTER TABLE `cat_category` ENABLE KEYS */;
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
-- Table structure for table `men_menu`
--

DROP TABLE IF EXISTS `men_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `men_menu` (
  `men_id` int NOT NULL AUTO_INCREMENT,
  `usr_id` int NOT NULL,
  `men_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `men_enable` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`men_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `men_menu`
--

LOCK TABLES `men_menu` WRITE;
/*!40000 ALTER TABLE `men_menu` DISABLE KEYS */;
INSERT INTO `men_menu` VALUES (7,2,'Principal',_binary ''),(8,2,'Ejecutivo',_binary ''),(9,8,'Principal',_binary '');
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
  `men_id` int DEFAULT NULL,
  `cat_id` int NOT NULL,
  `pro_order` int NOT NULL DEFAULT '1',
  `pro_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `pro_excerpt` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `pro_price` float NOT NULL DEFAULT '0',
  `pro_enable` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`pro_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pro_product`
--

LOCK TABLES `pro_product` WRITE;
/*!40000 ALTER TABLE `pro_product` DISABLE KEYS */;
INSERT INTO `pro_product` VALUES (1,2,7,1,1,'CAFÉ CON LECHE','cafe con 1/4 de leche entera y soda',130,_binary ''),(2,2,7,1,2,'CAFE CON LECHE LIGTH','cafe con 1/4 de leche descremada, 3 tostadas del campo, manteca o mermelada y jugo de naranja',150,_binary ''),(3,2,7,2,1,'EMPANADAS CRIOLLAS CORTADA A CUCHILLO','bola de cuadril con un toque de especias',50,_binary ''),(4,2,7,2,2,'PROVOLETA A LA PARRILLA CON ORÉGANO','Provoleta italiana grillada con queso',110,_binary ''),(5,2,7,2,3,'CHORIZO CRIOLLO con patatas paja y chimichurri','Salsa Argentina con pápas fritas y salsa de chimichurri',115,_binary ''),(6,2,7,3,1,'DE CAMPO (Clásica de asados: lechuga, tomate y cebolla)','Lechuga, tomate y cebolla',82,_binary ''),(7,2,7,3,2,'CALABAZA ASADA Y QUESO DE CABRA','Dados de calabaza, pipas, queso de cabra desmigado sobre mix de verdes con vinagreta de pomelo',96,_binary ''),(8,2,7,3,3,'ESPINACAS FRESCAS','Espinacas frescas con nueces, requesón, QUESO AZUL Y PERA',108,_binary ''),(9,2,7,4,1,'TIRA DE ASADO','Churrasco de ternera seleccionado',180,_binary ''),(10,2,7,4,2,'ENTRAÑA','Corte de moda en Argentina, sin hueso y sabroso',170,_binary ''),(11,2,7,4,3,'SECRETO DE CERDO \"a la pizza\"','Con salsa de tomate y mozzarella',165,_binary ''),(12,2,7,4,4,'POLLO RELLENO A LA BRASA','Receta del \"Pobre Luis\", Uruguay (según disponibilidad).',150,_binary ''),(13,2,7,4,5,'ENTRECOT ORIGEN ARGENTINA','Razas varias',190,_binary ''),(14,2,7,5,1,'CASERAS CLÁSICAS','',80,_binary ''),(15,2,7,5,2,'ARGENTINAS A LA PROVENZAL','Con ajo y perejil frezco',62,_binary ''),(16,2,7,5,3,'ASADAS A LA BRASA DE CARBÓN','Con una salsa de BBQ',55,_binary ''),(17,2,7,5,4,'PAPAS \"DE PAUL\"','Asadas y rellenas de crema de queso',28,_binary ''),(18,2,7,5,5,'RÚSTICAS, ESPECIADAS Y UN POCO PICANTES','Con cáscara y un toque de pimienta',60,_binary ''),(19,2,7,4,6,'ENTRECOT ORIGEN ARGENTINA RAZA ANGUS CERTIFICADO','Costilla de Angus Argentino',210,_binary ''),(20,2,7,6,1,'GASEOSA','Botella 500cc',100,_binary ''),(21,2,7,6,2,'AGUA MINERAL','Con gas o sin gas',60,_binary ''),(24,2,8,1,3,'TÉ CON LIMÓN','',40,_binary ''),(25,8,9,7,1,'CLÁSICO','Café con leche o infusión, 2 medialunas o criollos. Jugo de naranja.',190,_binary ''),(26,8,9,7,2,'COMPLETO','Café con leche o infusión, 2 medialunas o criollos. Manteca y dulce casero. Jugo de naranja.',220,_binary ''),(27,8,9,7,3,'LIGHT','Café con leche o infusión. Tostada de pan negro. Queso untable y mermelada light. Jugo de naranja. (Opcional con ensalada de frutas $270)',250,_binary ''),(28,8,9,7,4,'CAMPERO','Café con leche o infusión. Tostadas pan de campo. Manteca, dulce, jamón y queso. Jugo de Naranja.',260,_binary ''),(29,8,9,7,5,'MESÓN COPADO - Figurella','Copón de Yogurt con granola y frutas de estación.',190,_binary '');
/*!40000 ALTER TABLE `pro_product` ENABLE KEYS */;
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
  `usr_updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `usr_created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `usr_code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`usr_id`),
  KEY `username` (`usr_status`),
  KEY `role` (`usr_role`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usr_user`
--

LOCK TABLES `usr_user` WRITE;
/*!40000 ALTER TABLE `usr_user` DISABLE KEYS */;
INSERT INTO `usr_user` VALUES (2,'restaurant','active','admin','RicardoEspeche','Ricardo','Espeche','El Rincón de Lengolo','23264836719','ricardo_espeche@hotmail.com','xauv8j65wf7px39w97bekcfisp3kqjo1owtzyjpfx.png','bf9f4637d8929473926bb14bd58266d1',1,6,'La Calera','Jorge L. Borges 800',5151,'3515555237','www.mirestaurante.com.ar',NULL,'2020-06-08 00:54:44','2020-06-08 00:54:44','D5Y2V8NV'),(8,'restaurant','active','normal','NataliaGomez','Natalia','Gomez','El Mesón','3071656928-0','info@elmeson.com.ar','rub21iy2ymwjh6qf4yaafjgu7iejj1bx722rvsg51.jpeg','6a4222d7a0085835895864ceb0cc0665',1,6,'Córdoba','Luis de Tejeda 4594',5009,'+5493512211627','https://www.circuitogastronomico.com/restaurante/el-meson/','','2020-06-15 18:21:01','2020-06-15 18:21:01','93QR64S3');
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
-- Dumping routines for database 'menu_db'
--
/*!50003 DROP PROCEDURE IF EXISTS `SP_ACTIVE_ACCOUNT` */;
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
		SET vError = 310; /*Los datos para activar la cuenta son erroneos. Por favor intente nuevamente o comuníquese con la empresa.*/
	END IF;

	/* Return */
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
/*!50003 DROP PROCEDURE IF EXISTS `SP_ACTIVE_MENU` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_bin */ ;
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
    
	UPDATE men_menu
	SET men_enable = IF(men_enable=1,0,1)
	WHERE men_id = pMenId AND usr_id = pUsrId;
    
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
/*!50003 DROP PROCEDURE IF EXISTS `SP_ACTIVE_PRODUCT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_bin */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_ACTIVE_PRODUCT`(
	IN pUsrId INT,
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
    
	UPDATE pro_product
	SET pro_enable = IF(pro_enable=1,0,1)
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
/*!50003 DROP PROCEDURE IF EXISTS `SP_CHANGE_ORDER_CATEGORY` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_bin */ ;
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
    
	SET vOldOrder = (SELECT pro_order FROM pro_product WHERE pro_id = pProId AND usr_id = pUsrId AND cat_id=pCatId); 
    
    IF (pOrder < vOldOrder) THEN
		UPDATE pro_product
		SET pro_order = pro_order + 1
		WHERE usr_id = pUsrId AND pro_order >= pOrder AND pro_order <= vOldOrder AND cat_id=pCatId;
    END IF;
 
	IF (pOrder > vOldOrder) THEN
		UPDATE pro_product
		SET pro_order = pro_order - 1
		WHERE usr_id = pUsrId AND pro_order >= vOldOrder AND pro_order <= pOrder AND cat_id=pCatId;
    END IF;
    
	UPDATE pro_product
	SET pro_order = pOrder
	WHERE men_id = pMenId AND pro_id = pProId AND usr_id = pUsrId AND cat_id=pCatId;
    
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
			SET vError = 205; /*La contraseña no puede ser igual a la actual.*/
		END IF;
	ELSE
		SET vError = 305; /*Los datos para cambiar la contraseña han caducado. Por favor intente nuevamente pedir cambiar la contraseña.*/
	END IF;

	/* Return */
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
    IN pPrice FLOAT
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
    
	UPDATE pro_product
	SET pro_price = pPrice
	WHERE men_id = pMenId AND pro_id = pProId AND usr_id = pUsrId AND cat_id=pCatId;
    
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
	SET vUsrId = IFNULL((SELECT IFNULL(usr_id,0) FROM usr_user WHERE usr_email = pEmail AND usr_status IN (1,2)),0); /* Active */
	
	IF (vUsrId > 0) THEN
		SET vHash = MD5(CONCAT((SELECT usr_password FROM usr_user WHERE usr_id = vUsrId),NOW()));
        SET vName = (SELECT usr_firstname FROM usr_user WHERE usr_id = vUsrId);
		
		UPDATE usr_user
		SET usr_hash = vHash
		WHERE usr_id = vUsrId;
	ELSE
		SET vError = 304; /*La dirección de correo electronico no existe en la base de datos.*/
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
	/* Return */
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
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_bin */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_GET_CATEGORIES`(
	IN pUsrId INT
)
BEGIN   

    /* Return */
	SELECT 
		cat.cat_id as 'id',
        cat.cat_order as 'order',
        cat.cat_name as 'name',
        CASE WHEN (cat.cat_enable) THEN 1 ELSE 0 END as 'enable',
        (select count(*) from pro_product pro2 where pro2.cat_id =  cat.cat_id and pro2.usr_id = pUsrId) as 'products'
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
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_bin */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_GET_CATEGORY`(
	IN pUsrId INT,
    IN pCatId INT
)
BEGIN   

    /* Return */
	SELECT 
        cat.cat_name as 'name',
		CASE WHEN (cat.cat_enable) THEN 1 ELSE 0 END as 'enable'
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
    
	/* Return */
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
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_bin */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_GET_COUNT_ALERTS`(
	IN pUsrId INT
)
BEGIN
    
    /* Return */
    SELECT 
		COUNT(*) as notifications
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
    
    /* Return */
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

    /* Return */
    SELECT 
		cat_id as 'id',
        cat_name as 'label'
    FROM 
		cat_category cat
    WHERE 
		usr_id = pUsrId
    ORDER BY 
        cat.cat_order ASC;

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

    /* Return */
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

    /* Return */
    SELECT 
		men_id as 'id',
        men_name as 'label'
    FROM 
		men_menu men
    WHERE 
		usr_id = pUsrId
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
    
    /* Return */
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

    /* Return */
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

    /* Return */
	SELECT 
        men.men_name as 'name',
		CASE WHEN (men.men_enable) THEN 1 ELSE 0 END as 'enable'
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

    /* Return */
	SELECT 
		men.men_id as 'id',
        men.men_name as 'name',
        CASE WHEN (men.men_enable) THEN 1 ELSE 0 END as 'enable',
		(select count(*) from (select pro2.cat_id from pro_product pro2 where pro2.usr_id = pUsrId and pro2.men_id =  men.men_id group by pro2.cat_id) lis) as 'categories',
        (select count(*) from pro_product pro2 where pro2.usr_id = pUsrId and pro2.men_id =  men.men_id) as 'products'
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
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_bin */ ;
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
			pro_id as 'id',
			pro_order as 'order',
			pro_name as 'name',
			pro_price as 'price',
			cat_name as 'category',
			cat.cat_id as 'catId',
			pro.pro_excerpt as 'excerpt'
		FROM pro_product pro
		INNER JOIN cat_category cat ON pro.cat_id = cat.cat_id
		WHERE cat.usr_id = vUsrId AND pro.usr_id = vUsrId
        AND cat_enable=1 AND pro_enable=1
		order by 
			cat_order ASC,
			pro_order ASC;
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
    IN pProId INT
)
BEGIN   

    /* Return */
	SELECT 
        pro.pro_name as 'name',
        pro.pro_price as 'price',
		CASE WHEN (pro.pro_enable) THEN 1 ELSE 0 END as 'enable',
        pro.men_id as 'menId',
        pro.cat_id as 'catId',
        pro.pro_excerpt as 'excerpt'
	FROM pro_product  pro
	WHERE pro.pro_id = pProId;
    
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

    /* Return */
	SELECT 
		pro_id as 'id',
        pro_order as 'order',
		pro_name as 'name',
		pro_price as 'price',
		case when (pro_enable) then 1 else 0 end 'enable',
		cat_name as 'category',
		cat.cat_id as 'catId',
		pro.pro_excerpt as 'excerpt'
	FROM pro_product pro
	INNER JOIN cat_category cat ON pro.cat_id = cat.cat_id
	WHERE cat.usr_id = pUsrId AND pro.usr_id = pUsrId
    AND pro.men_id = pMenId
	AND (pCatId = 0 OR (pCatId > 0 AND pro.cat_id = pCatId))
	order by 
		cat_order ASC,
		pro_order ASC;
    
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

    /* Return */
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
	DECLARE vCountry VARCHAR(45);
	DECLARE vState VARCHAR(45);
	DECLARE vCity VARCHAR(45);
	DECLARE vAddress VARCHAR(255);
	DECLARE vZip INT;
    DECLARE vLastDate VARCHAR(45);
    DECLARE vQuantity INT;

	SELECT 
		usr_company,
		(SELECT cou_name FROM cou_country cou2 WHERE cou2.cou_id = usr.cou_id),
		(SELECT sta_name FROM sta_state sta2 WHERE sta2.cou_id = usr.cou_id AND sta2.sta_id = usr.sta_id),
		IFNULL(usr_city,''),
		IFNULL(usr_address,''),
		IFNULL(usr_zip_code,'') 
	INTO
		vCompany,
        vCountry,
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
    
    /* Return */
	SELECT 
        ads.ads_cost_qr as 'costQr',
        ads.ads_cost_shipping as 'costShipping',
		vCompany as 'company',
        vCountry as 'country',
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
/*!50003 DROP PROCEDURE IF EXISTS `SP_INSERT_CATEGORY` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_bin */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_INSERT_CATEGORY`(
	IN pUsrId INT,
	IN pName VARCHAR(255),
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
	`cat_enable`)
	VALUES
	(
    pUsrId,
    vOrder,
    pName,
	pEnable);
    SET vId = LAST_INSERT_ID();
	
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
/*!50003 DROP PROCEDURE IF EXISTS `SP_INSERT_MENU` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_bin */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_INSERT_MENU`(
	IN pUsrId INT,
	IN pName VARCHAR(255),
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
	`men_enable`)
	VALUES
	(
    pUsrId,
    pName,
	pEnable);
    SET vId = LAST_INSERT_ID();
	
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
    IN pMenId INT,
    IN pCatId INT,
	IN pName VARCHAR(255),
    IN pPrice FLOAT,
    IN pExcerpt VARCHAR(2000),
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

	SET vOrder = (SELECT IFNULL(MAX(pro_order),0) FROM pro_product WHERE cat_id = pCatId AND usr_id = pUsrId)+1;
	INSERT INTO `pro_product`
	(
    `usr_id`,
    `men_id`,
    `cat_id`,
    `pro_order`,
    `pro_name`,
	`pro_price`,
    `pro_excerpt`,
	`pro_enable`)
	VALUES
	(
    pUsrId,
    pMenId,
    pCatId,
    vOrder,
    pName,
	pPrice,
    pExcerpt,
	pEnable);
	SET vId = LAST_INSERT_ID();
    
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

    /* Return */
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
/*!50003 DROP PROCEDURE IF EXISTS `SP_REMOVE_PRODUCT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_bin */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_REMOVE_PRODUCT`(
	IN pUsrId INT,
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
	
	DELETE FROM pro_product
	WHERE pro_id = pProId;
	
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
/*!50003 DROP PROCEDURE IF EXISTS `SP_REMOVE_USER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_bin */ ;
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
    IN pCompany VARCHAR(45),
    IN pCUIT VARCHAR(45),
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
	SET vUsrCount = (SELECT COUNT(1) FROM usr_user WHERE usr_email = pEmail AND usr_status < 4); /* not DELETE */

	IF (vUsrCount=0) THEN            
		SET vUsrCount = (SELECT COUNT(1) FROM usr_user WHERE (usr_cuit = pCUIT) AND usr_status < 4); /* not DELETE */
		
		IF (vUsrCount=0) THEN
            SET vName = CONCAT(REPLACE(pFirstName," ",""),REPLACE(pLastName," ",""));
            SET vUsrCount = (SELECT COUNT(1) FROM usr_user WHERE usr_name = vName AND usr_status < 4);
			WHILE(vUsrCount > 0) DO
				SET vName = CONCAT(REPLACE(pFirstName," ",""),REPLACE(pLastName," ",""),vCount);
				SET vUsrCount = (SELECT COUNT(1) FROM usr_user WHERE usr_name = vName AND usr_status < 4);
				SET vCount = vCount + 1;
			END WHILE;

			INSERT INTO usr_user (usr_name, usr_type, usr_firstname, usr_lastname, usr_company, usr_cuit, cou_id, usr_password, usr_email, usr_avatar, usr_status, usr_role, usr_updated_at, usr_created_at) 
			VALUES (vName, 1, pFirstName, pLastName, pCompany, pCUIT, vCountry, MD5(pPassword), pEmail, NULL, 1, 1, NOW(), NOW());
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
				
				/* default alerts */
				CALL SP_INSERT_ALERT(vId, vId, 1, 0); /*Debes completar tu perfil antes de seguir operando con la plataforma*/
			END IF;
		ELSE
			SET vError = 313; /*The company name already exists registered in the database.*/
		END IF;
	ELSE
		SET vError = 302; /*The email address already exists registered in the database.*/
	END IF;

	/* Return */
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
	/* Return */
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
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_bin */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_UPDATE_CATEGORY`(
	IN pUsrId INT,
	IN pCatId INT,
	IN pName VARCHAR(255),
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

	UPDATE `cat_category`
	SET
	`cat_name` = pName,
	`cat_enable` = pEnable
	WHERE cat_id = pCatId AND usr_id = pUsrId;
    
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
/*!50003 DROP PROCEDURE IF EXISTS `SP_UPDATE_MENU` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_bin */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`menu_user`@`localhost` PROCEDURE `SP_UPDATE_MENU`(
	IN pUsrId INT,
	IN pMenId INT,
	IN pName VARCHAR(255),
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

	UPDATE `men_menu`
	SET
	`men_name` = pName,
	`men_enable` = pEnable
	WHERE men_id = pMenId AND usr_id = pUsrId;
    
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
    IN pMenId INT,
    IN pCatId INT,
	IN pName VARCHAR(255),
	IN pPrice FLOAT,
    IN pExcerpt VARCHAR(2000),
	IN pEnable INT
)
BEGIN
    DECLARE vError INT DEFAULT 0;
    DECLARE vMsg VARCHAR(255);
    DECLARE vEnable INT DEFAULT 0;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
		GET CURRENT DIAGNOSTICS CONDITION 1 vMsg = MESSAGE_TEXT;
        SELECT 301 as 'code', vMsg as message;
		ROLLBACK;
    END;
    START TRANSACTION;

	SET vEnable = (SELECT CASE WHEN (pro_enable) THEN 1 ELSE 0 END FROM pro_product WHERE pro_id = pProId);
    
	UPDATE `pro_product`
	SET
    `cat_id` = pCatId,
	`pro_name` = pName,
	`pro_price` = pPrice,
    `pro_excerpt` = pExcerpt,
	`pro_enable` = pEnable
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
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_bin */ ;
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
	IN pWebSite VARCHAR(255)
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

	SET vUsrCount = (SELECT COUNT(1) FROM usr_user WHERE usr_name = pName AND usr_status < 4 AND usr_id <> pUsrId); /* not DELETE */

	IF (vUsrCount=0) THEN
		SET vUsrCount = (SELECT COUNT(1) FROM usr_user WHERE (usr_company = pCompany OR usr_cuit = pCUIT) AND usr_status < 4 AND usr_id <> pUsrId); /* not DELETE */
		
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
				usr_website = pWebSite
			WHERE usr_id = pUsrId AND usr_status=2;
			
			CALL SP_READ_ALERT(pUsrId, 1);
		ELSE
			SET vError = 313; /*The company name already exists registered in the database.*/
        END IF;
	ELSE
		SET vError = 312; /*La nombre de usuario ya existe en la base de datos.*/
	END IF;
    
	/* Return */
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
	
	/* Return */
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
/*!50001 VIEW `vw_login` AS select `usr`.`usr_id` AS `id`,convert(`usr`.`usr_firstname` using utf8) AS `name`,(`usr`.`usr_status` + 0) AS `status`,`usr`.`usr_hash` AS `hash`,(`usr`.`usr_role` + 0) AS `role`,(case when (`usr`.`sta_id` is null) then true else false end) AS `forceProfile`,`usr`.`usr_avatar` AS `avatar`,`usr`.`usr_email` AS `email`,`usr`.`usr_code` AS `codeMenu` from `usr_user` `usr` */;
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

-- Dump completed on 2020-06-15 15:51:43
