-- MySQL dump 10.13  Distrib 8.0.39, for Win64 (x86_64)
--
-- Host: localhost    Database: unitest_cms
-- ------------------------------------------------------
-- Server version	8.0.39
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;
/*!50503 SET NAMES utf8mb4 */
;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */
;
/*!40103 SET TIME_ZONE='+00:00' */
;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */
;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */
;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */
;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */
;
--
-- Table structure for table `accounts`
--
use unitest_cms;
DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `accounts` (
    `id` int NOT NULL AUTO_INCREMENT,
    `name` varchar(255) NOT NULL,
    `email` varchar(255) NOT NULL,
    `status` varchar(50) NOT NULL,
    `department` varchar(100) NOT NULL,
    `mobile_no` varchar(15) NOT NULL,
    `modified_date_time` datetime NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 85 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `accounts`
--
LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */
;
INSERT INTO `accounts`
VALUES (
        80,
        'Melvin Hue',
        'wss.melvin@gmail.com',
        'Active',
        'gg',
        '96758185',
        '2024-09-27 12:11:31'
    ),
(
        81,
        'joann',
        'joann@unitestinst.com',
        'Active',
        'sales',
        '12341234',
        '2024-09-27 13:14:07'
    ),
(
        82,
        'kevin',
        'kevintantingfeng@gmail.com',
        'Active',
        'sales',
        '12345512',
        '2024-09-30 19:25:53'
    ),
(
        83,
        'levin',
        'dd@gmail.com',
        'Active',
        'sales',
        '44441231',
        '2024-09-30 19:31:44'
    ),
(
        84,
        'Melvin Hueerg',
        'wss.melvin@gmail.com',
        'Active',
        'dd',
        '96758185',
        '2024-09-30 20:18:26'
    );
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `customers`
--
DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `customers` (
    `id` int NOT NULL AUTO_INCREMENT,
    `company_name` varchar(255) NOT NULL,
    `UEN` varchar(255) DEFAULT NULL,
    `address` text NOT NULL,
    `contact_name` varchar(255) NOT NULL,
    `phone_number` varchar(20) DEFAULT NULL,
    `email` varchar(255) NOT NULL,
    `modified_date_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 25 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `customers`
--
LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */
;
INSERT INTO `customers`
VALUES (
        3,
        'resonac',
        'gg',
        '2pioneer cres',
        'Melvin Hue',
        '96758185',
        'mike.johnson@acme.com',
        '2024-09-27 04:09:22'
    ),
(
        4,
        'unitest',
        '123',
        '37 Jalan Menarong,',
        'Melvin Hue',
        '90048982',
        'alice.tan@techsolutions.com',
        '2024-09-27 04:09:34'
    ),
(
        5,
        'Global Services',
        '201612345D',
        '202 Tanjong Pagar, Singapore',
        'Bob Lee',
        '94567890',
        'bob.lee@globalservices.com',
        '2024-09-04 04:53:07'
    ),
(
        24,
        'samsung',
        '123',
        '2pioneer cres',
        'Melvin Hue',
        '96758185',
        'wss.melvin@gmail.com',
        '2024-09-30 08:33:29'
    );
/*!40000 ALTER TABLE `customers` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `models`
--
DROP TABLE IF EXISTS `models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `models` (
    `model_id` int NOT NULL AUTO_INCREMENT,
    `model_number` varchar(255) NOT NULL,
    `brand_name` varchar(255) NOT NULL,
    `modified_date_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`model_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 19 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `models`
--
LOCK TABLES `models` WRITE;
/*!40000 ALTER TABLE `models` DISABLE KEYS */
;
INSERT INTO `models`
VALUES (13, '666', 'fluke', NULL),
(14, '444', 'fluke', NULL),
(15, '554', 'rotronic', '2024-09-27 13:13:25'),
(16, '1234', 'HP', '2024-09-30 16:54:19'),
(17, '444d', 'fluke', NULL),
(18, 'ccccccc', 'fluke', NULL);
/*!40000 ALTER TABLE `models` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `order_models`
--
DROP TABLE IF EXISTS `order_models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `order_models` (
    `model_id` int NOT NULL AUTO_INCREMENT,
    `order_id` int DEFAULT NULL,
    `brand_name` varchar(255) NOT NULL,
    `model_number` varchar(255) NOT NULL,
    `tag_number` varchar(255) DEFAULT NULL,
    `serial_number` varchar(255) NOT NULL,
    `cert_number` varchar(255) NOT NULL,
    PRIMARY KEY (`model_id`),
    KEY `order_id` (`order_id`),
    CONSTRAINT `order_models_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 10 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `order_models`
--
LOCK TABLES `order_models` WRITE;
/*!40000 ALTER TABLE `order_models` DISABLE KEYS */
;
INSERT INTO `order_models`
VALUES (1, 1, 'fluke', '666', '', '123', 'vvv'),
(2, 2, 'fluke', '666', '', '1235', 'UNI-ELE-S123'),
(3, 2, 'HP', '1234', '', '55555', 'UNI-ELE-S127');
/*!40000 ALTER TABLE `order_models` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `orders`
--
DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `orders` (
    `order_id` int NOT NULL AUTO_INCREMENT,
    `customer_name` varchar(255) NOT NULL,
    `sales_person` varchar(255) NOT NULL,
    `order_type` varchar(255) NOT NULL,
    `status` varchar(50) DEFAULT 'pending',
    `job_no` varchar(50) DEFAULT NULL,
    -- New job_no column
    `modified_date_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`order_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 9 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `orders`
--
LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */
;
INSERT INTO `orders`
VALUES (
        1,
        'resonac',
        'Melvin Hue',
        'Calibration',
        'pending',
        'J123',
        '2024-09-30 18:31:32'
    ),
    (
        2,
        'Global Services',
        'Melvin Hue',
        'Calibration',
        'pending',
        'J124',
        '2024-09-30 19:19:00'
    );
/*!40000 ALTER TABLE `orders` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `products`
--
DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `products` (
    `id` int NOT NULL AUTO_INCREMENT,
    `name` varchar(255) NOT NULL,
    `description` text,
    `modified_date_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 13 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `products`
--
LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */
;
INSERT INTO `products`
VALUES (2, 'multimeter', NULL, '2024-09-06 04:59:22'),
(4, 'thermometer', NULL, '2024-09-06 04:59:32'),
(10, 'probe', NULL, '2024-09-06 05:16:59');
/*!40000 ALTER TABLE `products` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `users`
--
DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `users` (
    `id` int NOT NULL AUTO_INCREMENT,
    `username` varchar(255) NOT NULL,
    `password` varchar(255) NOT NULL,
    `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    UNIQUE KEY `username` (`username`)
) ENGINE = InnoDB AUTO_INCREMENT = 5 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `users`
--
LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */
;
INSERT INTO `users`
VALUES (1, 'unilab', 'unilab1', '2024-08-28 05:03:44'),
(2, 'admin', 'admin1', '2024-08-28 05:03:46'),
(
        3,
        'newuser',
        '$2b$10$cQEKEkSkWGNdK/AxJ/kBbuObwcgTM6ODcihGMzM37L17./jxSIu9W',
        '2024-08-28 05:10:22'
    ),
(
        4,
        'admin2',
        '$2b$10$6MwKEHp9Ymd64vjN2OFn3.BwxW1T7HHGXLfh7ZNaVB6FuG86WO/A.',
        '2024-08-28 07:29:31'
    );
/*!40000 ALTER TABLE `users` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Dumping events for database 'unitest_cms'
--
--
-- Dumping routines for database 'unitest_cms'
--
/*!50003 DROP PROCEDURE IF EXISTS `AddAccount` */
;
/*!50003 SET @saved_cs_client      = @@character_set_client */
;
/*!50003 SET @saved_cs_results     = @@character_set_results */
;
/*!50003 SET @saved_col_connection = @@collation_connection */
;
/*!50003 SET character_set_client  = utf8mb4 */
;
/*!50003 SET character_set_results = utf8mb4 */
;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */
;
/*!50003 SET @saved_sql_mode       = @@sql_mode */
;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */
;
DELIMITER;
;
CREATE DEFINER = `root` @`localhost` PROCEDURE `AddAccount`(
    IN p_name VARCHAR(255),
    IN p_email VARCHAR(255),
    IN p_status VARCHAR(50),
    IN p_department VARCHAR(100),
    IN p_mobile_no VARCHAR(15)
) BEGIN
INSERT INTO accounts (
        name,
        email,
        status,
        department,
        mobile_no,
        modified_date_time
    )
VALUES (
        p_name,
        p_email,
        p_status,
        p_department,
        p_mobile_no,
        NOW()
    );
END;
;
DELIMITER;
/*!50003 SET sql_mode              = @saved_sql_mode */
;
/*!50003 SET character_set_client  = @saved_cs_client */
;
/*!50003 SET character_set_results = @saved_cs_results */
;
/*!50003 SET collation_connection  = @saved_col_connection */
;
/*!50003 DROP PROCEDURE IF EXISTS `AddNewModel` */
;
/*!50003 SET @saved_cs_client      = @@character_set_client */
;
/*!50003 SET @saved_cs_results     = @@character_set_results */
;
/*!50003 SET @saved_col_connection = @@collation_connection */
;
/*!50003 SET character_set_client  = utf8mb4 */
;
/*!50003 SET character_set_results = utf8mb4 */
;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */
;
/*!50003 SET @saved_sql_mode       = @@sql_mode */
;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */
;
DELIMITER;
;
CREATE DEFINER = `root` @`localhost` PROCEDURE `AddNewModel`(
    IN p_modelNumber VARCHAR(255),
    IN p_brandName VARCHAR(255),
    IN p_modifiedDateTime DATETIME
) BEGIN
INSERT INTO models (model_number, brand_name, modified_date_time)
VALUES (p_modelNumber, p_brandName, p_modifiedDateTime);
END;
;
DELIMITER;
/*!50003 SET sql_mode              = @saved_sql_mode */
;
/*!50003 SET character_set_client  = @saved_cs_client */
;
/*!50003 SET character_set_results = @saved_cs_results */
;
/*!50003 SET collation_connection  = @saved_col_connection */
;
/*!50003 DROP PROCEDURE IF EXISTS `DeleteAccount` */
;
/*!50003 SET @saved_cs_client      = @@character_set_client */
;
/*!50003 SET @saved_cs_results     = @@character_set_results */
;
/*!50003 SET @saved_col_connection = @@collation_connection */
;
/*!50003 SET character_set_client  = utf8mb4 */
;
/*!50003 SET character_set_results = utf8mb4 */
;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */
;
/*!50003 SET @saved_sql_mode       = @@sql_mode */
;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */
;
DELIMITER;
;
CREATE DEFINER = `root` @`localhost` PROCEDURE `DeleteAccount`(IN p_id INT) BEGIN
DELETE FROM accounts
WHERE id = p_id;
END;
;
DELIMITER;
/*!50003 SET sql_mode              = @saved_sql_mode */
;
/*!50003 SET character_set_client  = @saved_cs_client */
;
/*!50003 SET character_set_results = @saved_cs_results */
;
/*!50003 SET collation_connection  = @saved_col_connection */
;
/*!50003 DROP PROCEDURE IF EXISTS `DeleteAccountById` */
;
/*!50003 SET @saved_cs_client      = @@character_set_client */
;
/*!50003 SET @saved_cs_results     = @@character_set_results */
;
/*!50003 SET @saved_col_connection = @@collation_connection */
;
/*!50003 SET character_set_client  = utf8mb4 */
;
/*!50003 SET character_set_results = utf8mb4 */
;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */
;
/*!50003 SET @saved_sql_mode       = @@sql_mode */
;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */
;
DELIMITER;
;
CREATE DEFINER = `root` @`localhost` PROCEDURE `DeleteAccountById`(IN p_account_id INT) BEGIN
DELETE FROM accounts
WHERE id = p_account_id;
END;
;
DELIMITER;
/*!50003 SET sql_mode              = @saved_sql_mode */
;
/*!50003 SET character_set_client  = @saved_cs_client */
;
/*!50003 SET character_set_results = @saved_cs_results */
;
/*!50003 SET collation_connection  = @saved_col_connection */
;
/*!50003 DROP PROCEDURE IF EXISTS `DeleteCustomerById` */
;
/*!50003 SET @saved_cs_client      = @@character_set_client */
;
/*!50003 SET @saved_cs_results     = @@character_set_results */
;
/*!50003 SET @saved_col_connection = @@collation_connection */
;
/*!50003 SET character_set_client  = utf8mb4 */
;
/*!50003 SET character_set_results = utf8mb4 */
;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */
;
/*!50003 SET @saved_sql_mode       = @@sql_mode */
;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */
;
DELIMITER;
;
CREATE DEFINER = `root` @`localhost` PROCEDURE `DeleteCustomerById`(IN customer_id INT) BEGIN
DELETE FROM customers
WHERE id = customer_id;
END;
;
DELIMITER;
/*!50003 SET sql_mode              = @saved_sql_mode */
;
/*!50003 SET character_set_client  = @saved_cs_client */
;
/*!50003 SET character_set_results = @saved_cs_results */
;
/*!50003 SET collation_connection  = @saved_col_connection */
;
/*!50003 DROP PROCEDURE IF EXISTS `DeleteModelById` */
;
/*!50003 SET @saved_cs_client      = @@character_set_client */
;
/*!50003 SET @saved_cs_results     = @@character_set_results */
;
/*!50003 SET @saved_col_connection = @@collation_connection */
;
/*!50003 SET character_set_client  = utf8mb4 */
;
/*!50003 SET character_set_results = utf8mb4 */
;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */
;
/*!50003 SET @saved_sql_mode       = @@sql_mode */
;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */
;
DELIMITER;
;
CREATE DEFINER = `root` @`localhost` PROCEDURE `DeleteModelById`(IN p_model_id INT) BEGIN
DELETE FROM models
WHERE model_id = p_model_id;
END;
;
DELIMITER;
/*!50003 SET sql_mode              = @saved_sql_mode */
;
/*!50003 SET character_set_client  = @saved_cs_client */
;
/*!50003 SET character_set_results = @saved_cs_results */
;
/*!50003 SET collation_connection  = @saved_col_connection */
;
/*!50003 DROP PROCEDURE IF EXISTS `DeleteOrderById` */
;
/*!50003 SET @saved_cs_client      = @@character_set_client */
;
/*!50003 SET @saved_cs_results     = @@character_set_results */
;
/*!50003 SET @saved_col_connection = @@collation_connection */
;
/*!50003 SET character_set_client  = utf8mb4 */
;
/*!50003 SET character_set_results = utf8mb4 */
;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */
;
/*!50003 SET @saved_sql_mode       = @@sql_mode */
;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */
;
DELIMITER;
;
CREATE DEFINER = `root` @`localhost` PROCEDURE `DeleteOrderById`(IN orderId INT) BEGIN -- First, delete related records from the order_models table, if they exist
DELETE FROM order_models
WHERE order_id = orderId;
-- Then, delete the order from the orders table
DELETE FROM orders
WHERE order_id = orderId;
-- You can also add a condition to check if the order was successfully deleted (optional)
SELECT ROW_COUNT() AS deleted_rows;
END;
;
DELIMITER;
/*!50003 SET sql_mode              = @saved_sql_mode */
;
/*!50003 SET character_set_client  = @saved_cs_client */
;
/*!50003 SET character_set_results = @saved_cs_results */
;
/*!50003 SET collation_connection  = @saved_col_connection */
;
/*!50003 DROP PROCEDURE IF EXISTS `DeleteProduct` */
;
/*!50003 SET @saved_cs_client      = @@character_set_client */
;
/*!50003 SET @saved_cs_results     = @@character_set_results */
;
/*!50003 SET @saved_col_connection = @@collation_connection */
;
/*!50003 SET character_set_client  = utf8mb4 */
;
/*!50003 SET character_set_results = utf8mb4 */
;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */
;
/*!50003 SET @saved_sql_mode       = @@sql_mode */
;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */
;
DELIMITER;
;
CREATE DEFINER = `root` @`localhost` PROCEDURE `DeleteProduct`(IN p_product_id INT) BEGIN
DELETE FROM products
WHERE id = p_product_id;
END;
;
DELIMITER;
/*!50003 SET sql_mode              = @saved_sql_mode */
;
/*!50003 SET character_set_client  = @saved_cs_client */
;
/*!50003 SET character_set_results = @saved_cs_results */
;
/*!50003 SET collation_connection  = @saved_col_connection */
;
/*!50003 DROP PROCEDURE IF EXISTS `EditAccount` */
;
/*!50003 SET @saved_cs_client      = @@character_set_client */
;
/*!50003 SET @saved_cs_results     = @@character_set_results */
;
/*!50003 SET @saved_col_connection = @@collation_connection */
;
/*!50003 SET character_set_client  = utf8mb4 */
;
/*!50003 SET character_set_results = utf8mb4 */
;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */
;
/*!50003 SET @saved_sql_mode       = @@sql_mode */
;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */
;
DELIMITER;
;
CREATE DEFINER = `root` @`localhost` PROCEDURE `EditAccount`(
    IN p_id INT,
    IN p_name VARCHAR(255),
    IN p_email VARCHAR(255),
    IN p_status VARCHAR(50),
    IN p_department VARCHAR(100),
    IN p_mobile_no VARCHAR(15)
) BEGIN
UPDATE accounts
SET name = p_name,
    email = p_email,
    status = p_status,
    department = p_department,
    mobile_no = p_mobile_no,
    modified_date_time = NOW()
WHERE id = p_id;
END;
;
DELIMITER;
/*!50003 SET sql_mode              = @saved_sql_mode */
;
/*!50003 SET character_set_client  = @saved_cs_client */
;
/*!50003 SET character_set_results = @saved_cs_results */
;
/*!50003 SET collation_connection  = @saved_col_connection */
;
/*!50003 DROP PROCEDURE IF EXISTS `EditProduct` */
;
/*!50003 SET @saved_cs_client      = @@character_set_client */
;
/*!50003 SET @saved_cs_results     = @@character_set_results */
;
/*!50003 SET @saved_col_connection = @@collation_connection */
;
/*!50003 SET character_set_client  = utf8mb4 */
;
/*!50003 SET character_set_results = utf8mb4 */
;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */
;
/*!50003 SET @saved_sql_mode       = @@sql_mode */
;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */
;
DELIMITER;
;
CREATE DEFINER = `root` @`localhost` PROCEDURE `EditProduct`(
    IN p_product_id INT,
    IN p_name VARCHAR(255),
    IN p_description TEXT
) BEGIN
UPDATE products
SET name = p_name,
    description = p_description,
    modified_date_time = NOW()
WHERE id = p_product_id;
END;
;
DELIMITER;
/*!50003 SET sql_mode              = @saved_sql_mode */
;
/*!50003 SET character_set_client  = @saved_cs_client */
;
/*!50003 SET character_set_results = @saved_cs_results */
;
/*!50003 SET collation_connection  = @saved_col_connection */
;
/*!50003 DROP PROCEDURE IF EXISTS `GetAllAccounts` */
;
/*!50003 SET @saved_cs_client      = @@character_set_client */
;
/*!50003 SET @saved_cs_results     = @@character_set_results */
;
/*!50003 SET @saved_col_connection = @@collation_connection */
;
/*!50003 SET character_set_client  = utf8mb4 */
;
/*!50003 SET character_set_results = utf8mb4 */
;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */
;
/*!50003 SET @saved_sql_mode       = @@sql_mode */
;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */
;
DELIMITER;
;
CREATE DEFINER = `root` @`localhost` PROCEDURE `GetAllAccounts`() BEGIN
SELECT id,
    name,
    email,
    status,
    department,
    mobile_no,
    modified_date_time
FROM accounts
ORDER BY modified_date_time DESC;
END;
;
DELIMITER;
/*!50003 SET sql_mode              = @saved_sql_mode */
;
/*!50003 SET character_set_client  = @saved_cs_client */
;
/*!50003 SET character_set_results = @saved_cs_results */
;
/*!50003 SET collation_connection  = @saved_col_connection */
;
/*!50003 DROP PROCEDURE IF EXISTS `GetAllCustomers` */
;
/*!50003 SET @saved_cs_client      = @@character_set_client */
;
/*!50003 SET @saved_cs_results     = @@character_set_results */
;
/*!50003 SET @saved_col_connection = @@collation_connection */
;
/*!50003 SET character_set_client  = utf8mb4 */
;
/*!50003 SET character_set_results = utf8mb4 */
;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */
;
/*!50003 SET @saved_sql_mode       = @@sql_mode */
;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */
;
DELIMITER;
;
CREATE DEFINER = `root` @`localhost` PROCEDURE `GetAllCustomers`() BEGIN
SELECT id,
    company_name,
    UEN,
    address,
    contact_name,
    phone_number,
    email,
    modified_date_time
FROM customers
ORDER BY modified_date_time DESC;
END;
;
DELIMITER;
/*!50003 SET sql_mode              = @saved_sql_mode */
;
/*!50003 SET character_set_client  = @saved_cs_client */
;
/*!50003 SET character_set_results = @saved_cs_results */
;
/*!50003 SET collation_connection  = @saved_col_connection */
;
/*!50003 DROP PROCEDURE IF EXISTS `GetAllModels` */
;
/*!50003 SET @saved_cs_client      = @@character_set_client */
;
/*!50003 SET @saved_cs_results     = @@character_set_results */
;
/*!50003 SET @saved_col_connection = @@collation_connection */
;
/*!50003 SET character_set_client  = utf8mb4 */
;
/*!50003 SET character_set_results = utf8mb4 */
;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */
;
/*!50003 SET @saved_sql_mode       = @@sql_mode */
;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */
;
DELIMITER;
;
CREATE DEFINER = `root` @`localhost` PROCEDURE `GetAllModels`() BEGIN
SELECT model_id,
    model_number,
    brand_name,
    modified_date_time
FROM models
ORDER BY modified_date_time DESC;
END;
;
DELIMITER;
/*!50003 SET sql_mode              = @saved_sql_mode */
;
/*!50003 SET character_set_client  = @saved_cs_client */
;
/*!50003 SET character_set_results = @saved_cs_results */
;
/*!50003 SET collation_connection  = @saved_col_connection */
;
/*!50003 DROP PROCEDURE IF EXISTS `GetAllOrders` */
;
/*!50003 SET @saved_cs_client      = @@character_set_client */
;
/*!50003 SET @saved_cs_results     = @@character_set_results */
;
/*!50003 SET @saved_col_connection = @@collation_connection */
;
/*!50003 SET character_set_client  = utf8mb4 */
;
/*!50003 SET character_set_results = utf8mb4 */
;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */
;
/*!50003 SET @saved_sql_mode       = @@sql_mode */
;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */
;
DELIMITER;
;
CREATE DEFINER = `root` @`localhost` PROCEDURE `GetAllOrders`() BEGIN
SELECT order_id,
    customer_name,
    order_type,
    job_no,
    -- Include the job_no column
    modified_date_time,
    status
FROM orders
ORDER BY CASE
        WHEN status = 'pending' THEN 1
        ELSE 2
    END,
    modified_date_time DESC;
END;
;
DELIMITER;
/*!50003 SET sql_mode              = @saved_sql_mode */
;
/*!50003 SET character_set_client  = @saved_cs_client */
;
/*!50003 SET character_set_results = @saved_cs_results */
;
/*!50003 SET collation_connection  = @saved_col_connection */
;
/*!50003 DROP PROCEDURE IF EXISTS `GetAllProducts` */
;
/*!50003 SET @saved_cs_client      = @@character_set_client */
;
/*!50003 SET @saved_cs_results     = @@character_set_results */
;
/*!50003 SET @saved_col_connection = @@collation_connection */
;
/*!50003 SET character_set_client  = utf8mb4 */
;
/*!50003 SET character_set_results = utf8mb4 */
;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */
;
/*!50003 SET @saved_sql_mode       = @@sql_mode */
;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */
;
DELIMITER;
;
CREATE DEFINER = `root` @`localhost` PROCEDURE `GetAllProducts`() BEGIN
SELECT id,
    name,
    description,
    modified_date_time
FROM products
ORDER BY modified_date_time DESC;
END;
;
DELIMITER;
/*!50003 SET sql_mode              = @saved_sql_mode */
;
/*!50003 SET character_set_client  = @saved_cs_client */
;
/*!50003 SET character_set_results = @saved_cs_results */
;
/*!50003 SET collation_connection  = @saved_col_connection */
;
/*!50003 DROP PROCEDURE IF EXISTS `GetOrderDetails` */
;
/*!50003 SET @saved_cs_client      = @@character_set_client */
;
/*!50003 SET @saved_cs_results     = @@character_set_results */
;
/*!50003 SET @saved_col_connection = @@collation_connection */
;
/*!50003 SET character_set_client  = utf8mb4 */
;
/*!50003 SET character_set_results = utf8mb4 */
;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */
;
/*!50003 SET @saved_sql_mode       = @@sql_mode */
;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */
;
DELIMITER;
;
CREATE DEFINER = `root` @`localhost` PROCEDURE `GetOrderDetails`(IN orderId INT) BEGIN -- Select order details (customer name, sales person, order type, etc.)
SELECT o.order_id,
    o.customer_name,
    o.sales_person,
    o.order_type,
    o.job_no,
    o.modified_date_time,
    o.status
FROM orders o
WHERE o.order_id = orderId;
-- Select models associated with the order
SELECT om.model_id,
    om.brand_name,
    om.model_number,
    om.tag_number,
    om.serial_number,
    om.cert_number
FROM order_models om
WHERE om.order_id = orderId;
END;
;
DELIMITER;
/*!50003 SET sql_mode              = @saved_sql_mode */
;
/*!50003 SET character_set_client  = @saved_cs_client */
;
/*!50003 SET character_set_results = @saved_cs_results */
;
/*!50003 SET collation_connection  = @saved_col_connection */
;
/*!50003 DROP PROCEDURE IF EXISTS `InsertNewAccount` */
;
/*!50003 SET @saved_cs_client      = @@character_set_client */
;
/*!50003 SET @saved_cs_results     = @@character_set_results */
;
/*!50003 SET @saved_col_connection = @@collation_connection */
;
/*!50003 SET character_set_client  = utf8mb4 */
;
/*!50003 SET character_set_results = utf8mb4 */
;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */
;
/*!50003 SET @saved_sql_mode       = @@sql_mode */
;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */
;
DELIMITER;
;
CREATE DEFINER = `root` @`localhost` PROCEDURE `InsertNewAccount`(
    IN p_name VARCHAR(255),
    IN p_email VARCHAR(255),
    IN p_status VARCHAR(50),
    IN p_department VARCHAR(100),
    IN p_mobile_no VARCHAR(15)
) BEGIN
INSERT INTO accounts (
        name,
        email,
        status,
        department,
        mobile_no,
        modified_date_time
    )
VALUES (
        p_name,
        p_email,
        p_status,
        p_department,
        p_mobile_no,
        NOW()
    );
END;
;
DELIMITER;
/*!50003 SET sql_mode              = @saved_sql_mode */
;
/*!50003 SET character_set_client  = @saved_cs_client */
;
/*!50003 SET character_set_results = @saved_cs_results */
;
/*!50003 SET collation_connection  = @saved_col_connection */
;
/*!50003 DROP PROCEDURE IF EXISTS `InsertNewCustomer` */
;
/*!50003 SET @saved_cs_client      = @@character_set_client */
;
/*!50003 SET @saved_cs_results     = @@character_set_results */
;
/*!50003 SET @saved_col_connection = @@collation_connection */
;
/*!50003 SET character_set_client  = utf8mb4 */
;
/*!50003 SET character_set_results = utf8mb4 */
;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */
;
/*!50003 SET @saved_sql_mode       = @@sql_mode */
;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */
;
DELIMITER;
;
CREATE DEFINER = `root` @`localhost` PROCEDURE `InsertNewCustomer`(
    IN p_company_name VARCHAR(255),
    IN p_UEN VARCHAR(20),
    IN p_address VARCHAR(255),
    IN p_contact_name VARCHAR(255),
    IN p_phone_number VARCHAR(20),
    IN p_email VARCHAR(255)
) BEGIN
INSERT INTO customers (
        company_name,
        UEN,
        address,
        contact_name,
        phone_number,
        email,
        modified_date_time
    )
VALUES (
        p_company_name,
        p_UEN,
        p_address,
        p_contact_name,
        p_phone_number,
        p_email,
        NOW()
    );
END;
;
DELIMITER;
/*!50003 SET sql_mode              = @saved_sql_mode */
;
/*!50003 SET character_set_client  = @saved_cs_client */
;
/*!50003 SET character_set_results = @saved_cs_results */
;
/*!50003 SET collation_connection  = @saved_col_connection */
;
/*!50003 DROP PROCEDURE IF EXISTS `InsertNewProduct` */
;
/*!50003 SET @saved_cs_client      = @@character_set_client */
;
/*!50003 SET @saved_cs_results     = @@character_set_results */
;
/*!50003 SET @saved_col_connection = @@collation_connection */
;
/*!50003 SET character_set_client  = utf8mb4 */
;
/*!50003 SET character_set_results = utf8mb4 */
;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */
;
/*!50003 SET @saved_sql_mode       = @@sql_mode */
;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */
;
DELIMITER;
;
CREATE DEFINER = `root` @`localhost` PROCEDURE `InsertNewProduct`(
    IN p_name VARCHAR(255),
    IN p_description TEXT
) BEGIN
INSERT INTO products (name, description, modified_date_time)
VALUES (p_name, p_description, NOW());
END;
;
DELIMITER;
/*!50003 SET sql_mode              = @saved_sql_mode */
;
/*!50003 SET character_set_client  = @saved_cs_client */
;
/*!50003 SET character_set_results = @saved_cs_results */
;
/*!50003 SET collation_connection  = @saved_col_connection */
;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateAccount` */
;
/*!50003 SET @saved_cs_client      = @@character_set_client */
;
/*!50003 SET @saved_cs_results     = @@character_set_results */
;
/*!50003 SET @saved_col_connection = @@collation_connection */
;
/*!50003 SET character_set_client  = utf8mb4 */
;
/*!50003 SET character_set_results = utf8mb4 */
;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */
;
/*!50003 SET @saved_sql_mode       = @@sql_mode */
;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */
;
DELIMITER;
;
CREATE DEFINER = `root` @`localhost` PROCEDURE `UpdateAccount`(
    IN p_id INT,
    IN p_name VARCHAR(255),
    IN p_email VARCHAR(255),
    IN p_status VARCHAR(50),
    IN p_department VARCHAR(100),
    IN p_mobile_no VARCHAR(15)
) BEGIN
UPDATE accounts
SET name = p_name,
    email = p_email,
    status = p_status,
    department = p_department,
    mobile_no = p_mobile_no,
    modified_date_time = NOW() -- Automatically update the modified date and time
WHERE id = p_id;
END;
;
DELIMITER;
/*!50003 SET sql_mode              = @saved_sql_mode */
;
/*!50003 SET character_set_client  = @saved_cs_client */
;
/*!50003 SET character_set_results = @saved_cs_results */
;
/*!50003 SET collation_connection  = @saved_col_connection */
;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateCustomer` */
;
/*!50003 SET @saved_cs_client      = @@character_set_client */
;
/*!50003 SET @saved_cs_results     = @@character_set_results */
;
/*!50003 SET @saved_col_connection = @@collation_connection */
;
/*!50003 SET character_set_client  = utf8mb4 */
;
/*!50003 SET character_set_results = utf8mb4 */
;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */
;
/*!50003 SET @saved_sql_mode       = @@sql_mode */
;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */
;
DELIMITER;
;
CREATE DEFINER = `root` @`localhost` PROCEDURE `UpdateCustomer`(
    IN p_id INT,
    IN p_company_name VARCHAR(255),
    IN p_UEN VARCHAR(255),
    IN p_address TEXT,
    IN p_contact_name VARCHAR(255),
    IN p_phone_number VARCHAR(20),
    IN p_email VARCHAR(255)
) BEGIN
UPDATE customers
SET company_name = p_company_name,
    UEN = p_UEN,
    address = p_address,
    contact_name = p_contact_name,
    phone_number = p_phone_number,
    email = p_email,
    modified_date_time = NOW() -- Update the modification time
WHERE id = p_id;
END;
;
DELIMITER;
/*!50003 SET sql_mode              = @saved_sql_mode */
;
/*!50003 SET character_set_client  = @saved_cs_client */
;
/*!50003 SET character_set_results = @saved_cs_results */
;
/*!50003 SET collation_connection  = @saved_col_connection */
;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateModel` */
;
/*!50003 SET @saved_cs_client      = @@character_set_client */
;
/*!50003 SET @saved_cs_results     = @@character_set_results */
;
/*!50003 SET @saved_col_connection = @@collation_connection */
;
/*!50003 SET character_set_client  = utf8mb4 */
;
/*!50003 SET character_set_results = utf8mb4 */
;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */
;
/*!50003 SET @saved_sql_mode       = @@sql_mode */
;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */
;
DELIMITER;
;
CREATE DEFINER = `root` @`localhost` PROCEDURE `UpdateModel`(
    IN p_modelId INT,
    IN p_modelNumber VARCHAR(255),
    IN p_brandName VARCHAR(255),
    IN p_modifiedDateTime DATETIME
) BEGIN
UPDATE models
SET model_number = p_modelNumber,
    brand_name = p_brandName,
    modified_date_time = p_modifiedDateTime
WHERE model_id = p_modelId;
END;
;
DELIMITER;
/*!50003 SET sql_mode              = @saved_sql_mode */
;
/*!50003 SET character_set_client  = @saved_cs_client */
;
/*!50003 SET character_set_results = @saved_cs_results */
;
/*!50003 SET collation_connection  = @saved_col_connection */
;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */
;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */
;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */
;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */
;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */
;
-- Dump completed on 2024-10-08 13:48:25