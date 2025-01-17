-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: kbn
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `actions`
--

DROP TABLE IF EXISTS `actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actions` (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ordinal` tinyint unsigned NOT NULL DEFAULT '0',
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `actions_created_by_index` (`created_by`),
  KEY `actions_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actions`
--

LOCK TABLES `actions` WRITE;
/*!40000 ALTER TABLE `actions` DISABLE KEYS */;
INSERT INTO `actions` VALUES ('create','Create',NULL,NULL,'2024-11-22 09:32:53','2024-11-22 09:32:53',3,1),('delete','Delete',NULL,NULL,'2024-11-22 09:32:53','2024-11-22 09:32:53',5,1),('index','Index',NULL,NULL,'2024-11-22 09:32:53','2024-11-22 09:32:53',1,1),('update','Update',NULL,NULL,'2024-11-22 09:32:53','2024-11-22 09:32:53',4,1),('view','View',NULL,NULL,'2024-11-22 09:32:53','2024-11-22 09:32:53',2,1);
/*!40000 ALTER TABLE `actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `customers_created_by_index` (`created_by`),
  KEY `customers_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES ('9da8889d-b750-41d3-8403-d6af57940750','Adi','NF','081380912181','adi.nur.fadillah@gmail.com',NULL,NULL,'2024-12-06 07:55:21','2024-12-06 07:55:21',1);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_accounts`
--

DROP TABLE IF EXISTS `employee_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_accounts` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `employee_accounts_username_unique` (`username`),
  KEY `employee_accounts_employee_id_foreign` (`employee_id`),
  KEY `employee_accounts_created_by_index` (`created_by`),
  KEY `employee_accounts_updated_by_index` (`updated_by`),
  CONSTRAINT `employee_accounts_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_accounts`
--

LOCK TABLES `employee_accounts` WRITE;
/*!40000 ALTER TABLE `employee_accounts` DISABLE KEYS */;
INSERT INTO `employee_accounts` VALUES ('9d8c81b8-8ef3-43f4-bad1-91e945693111','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','developer@system',NULL,'$2y$12$ErcvK1y3D40AE7UosLvu/O0igq63Q5V6X7GXQtMpE./bgspZn75sm',NULL,'system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1);
/*!40000 ALTER TABLE `employee_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_password_reset_tokens`
--

DROP TABLE IF EXISTS `employee_password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_password_reset_tokens`
--

LOCK TABLES `employee_password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `employee_password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_sessions`
--

DROP TABLE IF EXISTS `employee_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `employee_sessions_user_id_index` (`user_id`),
  KEY `employee_sessions_last_activity_index` (`last_activity`),
  CONSTRAINT `employee_sessions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `employee_accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_sessions`
--

LOCK TABLES `employee_sessions` WRITE;
/*!40000 ALTER TABLE `employee_sessions` DISABLE KEYS */;
INSERT INTO `employee_sessions` VALUES ('AUeTsRuGimSJDC5xwTSofUxjjgLGSR82Hyz71oKC',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:134.0) Gecko/20100101 Firefox/134.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVnNwcjdlWFFtMDdyazdUdW5qZHJiRTNjdnI3UTdIN3JjaFpkZktLSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1737076102),('n2vODRifbk5VtmvauJw0QEL9oz1f6MVFS4X4qiaa',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:134.0) Gecko/20100101 Firefox/134.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWm5FWXVndTRPNzYzQ0ljdmZZT2tGalF6V1N3WDd5S01qQWcxWUlaZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1737078900),('vLt26gAnmFrFckVnUSKEuxvC9hJX0gjMMv8mUOsL',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:134.0) Gecko/20100101 Firefox/134.0','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMFIwZElDMDNTMjB5SHFGME9MV25iT3Iyc0hjV0diOFFnUHJuV2ZkdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6MzE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kYXNoYm9hcmQiO319',1737077036);
/*!40000 ALTER TABLE `employee_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `employees_email_unique` (`email`),
  KEY `employees_position_id_foreign` (`position_id`),
  KEY `employees_created_by_index` (`created_by`),
  KEY `employees_updated_by_index` (`updated_by`),
  CONSTRAINT `employees_position_id_foreign` FOREIGN KEY (`position_id`) REFERENCES `positions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES ('9d8c81b8-37ad-4402-88ec-c5b65afb08c6','developer','Full Stack Developer','+6281380912181','developer@system',NULL,'system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketplaces`
--

DROP TABLE IF EXISTS `marketplaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketplaces` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ordinal` tinyint unsigned NOT NULL DEFAULT '0',
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `marketplaces_created_by_index` (`created_by`),
  KEY `marketplaces_updated_by_index` (`updated_by`),
  KEY `marketplaces_created_at_index` (`created_at`),
  KEY `marketplaces_updated_at_index` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketplaces`
--

LOCK TABLES `marketplaces` WRITE;
/*!40000 ALTER TABLE `marketplaces` DISABLE KEYS */;
INSERT INTO `marketplaces` VALUES ('blibli','Blibli','https://www.blibli.com','/assets/images/no-image.webp','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',2,1),('shopee','Shopee','https://shopee.co.id','/assets/images/no-image.webp','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',3,1),('tokopedia','Tokopedia','https://www.tokopedia.com','/assets/images/no-image.webp','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1,1);
/*!40000 ALTER TABLE `marketplaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_properties`
--

DROP TABLE IF EXISTS `meta_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_properties` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_property_group_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ordinal` tinyint unsigned NOT NULL DEFAULT '0',
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `meta_properties_meta_property_group_id_foreign` (`meta_property_group_id`),
  KEY `meta_properties_created_by_index` (`created_by`),
  KEY `meta_properties_updated_by_index` (`updated_by`),
  CONSTRAINT `meta_properties_meta_property_group_id_foreign` FOREIGN KEY (`meta_property_group_id`) REFERENCES `meta_property_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_properties`
--

LOCK TABLES `meta_properties` WRITE;
/*!40000 ALTER TABLE `meta_properties` DISABLE KEYS */;
INSERT INTO `meta_properties` VALUES ('description','general','description','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',2,1),('keywords','general','keywords','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',3,1),('title','general','title','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1,1);
/*!40000 ALTER TABLE `meta_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_property_groups`
--

DROP TABLE IF EXISTS `meta_property_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_property_groups` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ordinal` tinyint unsigned NOT NULL DEFAULT '0',
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `meta_property_groups_created_by_index` (`created_by`),
  KEY `meta_property_groups_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_property_groups`
--

LOCK TABLES `meta_property_groups` WRITE;
/*!40000 ALTER TABLE `meta_property_groups` DISABLE KEYS */;
INSERT INTO `meta_property_groups` VALUES ('facebook','Facebook','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',2,1),('general','(General)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1,1),('instagram','Instagram','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',3,1),('tiktok','Tiktok','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',4,1),('twitter','Twitter','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',5,1);
/*!40000 ALTER TABLE `meta_property_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0000_09_30_042036_create_positions_table',1),(2,'0001_01_01_000000_create_users_table',1),(3,'0001_01_01_000001_create_cache_table',1),(4,'0001_01_01_000002_create_jobs_table',1),(5,'2024_08_30_043431_create_pages_table',1),(6,'2024_08_30_043441_create_actions_table',1),(7,'2024_08_30_043458_create_permissions_table',1),(8,'2024_09_30_035334_create_employees_table',1),(9,'2024_09_30_035339_create_employee_accounts_table',1),(10,'2024_10_01_090408_create_personal_access_tokens_table',1),(11,'2024_10_01_090410_create_marketplaces_table',1),(12,'2024_10_01_090413_create_meta_property_groups_table',1),(13,'2024_10_01_090415_create_meta_properties_table',1),(14,'2024_10_03_073200_create_product_category_seconds_table',1),(15,'2024_10_03_073202_create_product_category_firsts_table',1),(16,'2024_10_10_064954_create_products_table',1),(17,'2024_10_10_081200_create_product_contents_table',1),(18,'2024_10_10_081205_create_product_content_metas_table',1),(19,'2024_10_10_081208_create_product_content_displays_table',1),(20,'2024_10_10_081210_create_product_content_videos_table',1),(21,'2024_10_10_081222_create_product_content_features_table',1),(22,'2024_10_10_081245_create_product_content_marketplaces_table',1),(23,'2024_10_10_081340_create_product_content_specifications_table',1),(24,'2024_10_10_081401_create_product_content_qnas_table',1),(25,'2024_11_12_162024_create_product_content_reviews_table',1),(26,'2024_11_18_160201_create_customers_table',1),(33,'2024_11_18_160233_create_sales_carts_table',2),(34,'2024_11_18_160300_create_sales_cart_detail_table',2),(35,'2024_11_18_160313_create_sales_orders_table',2),(36,'2024_11_18_160332_create_sales_order_detail_table',2),(37,'2024_11_18_160359_create_sales_invoices_table',2),(38,'2024_11_18_160428_create_sales_payments_table',2),(39,'2024_11_18_160301_create_sales_cart_shippings_table',3),(45,'2024_11_18_160335_create_sales_shippings_table',4),(46,'2024_10_03_073202_create_product_category_brands_table',5),(47,'2024_10_03_073202_create_product_brands_table',6);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `pages_created_by_index` (`created_by`),
  KEY `pages_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES ('dashboard','Dashboard','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('employee','Employee','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('employee_account','Employee Account','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('page','Page','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('permission','Permission','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('position','Position','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('product','Product','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('product_category_first','Product Category First','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `permissions_page_id_foreign` (`page_id`),
  KEY `permissions_action_id_foreign` (`action_id`),
  KEY `permissions_created_by_index` (`created_by`),
  KEY `permissions_updated_by_index` (`updated_by`),
  CONSTRAINT `permissions_action_id_foreign` FOREIGN KEY (`action_id`) REFERENCES `actions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permissions_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES ('dashboard_index','dashboard','index','Dashboard (Index)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('employee_account_create','employee_account','create','Employee Account (Create)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('employee_account_delete','employee_account','delete','Employee Account (Delete)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('employee_account_index','employee_account','index','Employee Account (Index)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('employee_account_update','employee_account','update','Employee Account (Update)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('employee_account_view','employee_account','view','Employee Account (View)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('employee_create','employee','create','Employee (Create)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('employee_delete','employee','delete','Employee (Delete)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('employee_index','employee','index','Employee (Index)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('employee_update','employee','update','Employee (Update)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('employee_view','employee','view','Employee (View)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('page_create','page','create','Page (Create)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('page_delete','page','delete','Page (Delete)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('page_index','page','index','Page (Index)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('page_update','page','update','Page (Update)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('page_view','page','view','Page (View)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('permission_create','permission','create','Permission (Create)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('permission_delete','permission','delete','Permission (Delete)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('permission_index','permission','index','Permission (Index)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('permission_update','permission','update','Permission (Update)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('permission_view','permission','view','Permission (View)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('position_create','position','create','Position (Create)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('position_delete','position','delete','Position (Delete)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('position_index','position','index','Position (Index)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('position_update','position','update','Position (Update)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('position_view','position','view','Position (View)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('product_category_first_create','product_category_first','create','Product Category First (Create)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('product_category_first_delete','product_category_first','delete','Product Category First (Delete)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('product_category_first_index','product_category_first','index','Product Category First (Index)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('product_category_first_update','product_category_first','update','Product Category First (Update)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('product_category_first_view','product_category_first','view','Product Category First (View)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('product_create','product','create','Product (Create)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('product_delete','product','delete','Product (Delete)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('product_index','product','index','Product (Index)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('product_update','product','update','Product (Update)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('product_view','product','view','Product (View)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1);
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
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

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positions`
--

DROP TABLE IF EXISTS `positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `positions` (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `positions_created_by_index` (`created_by`),
  KEY `positions_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positions`
--

LOCK TABLES `positions` WRITE;
/*!40000 ALTER TABLE `positions` DISABLE KEYS */;
INSERT INTO `positions` VALUES ('admin','Admin','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('developer','Developer','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1);
/*!40000 ALTER TABLE `positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_brands`
--

DROP TABLE IF EXISTS `product_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_brands` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `product_brands_slug_index` (`slug`),
  KEY `product_brands_created_by_index` (`created_by`),
  KEY `product_brands_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_brands`
--

LOCK TABLES `product_brands` WRITE;
/*!40000 ALTER TABLE `product_brands` DISABLE KEYS */;
INSERT INTO `product_brands` VALUES ('9d8c8235-70a3-4269-b59e-62a371e9400','Brand-1','brand-1',NULL,NULL,NULL,NULL,NULL,1),('9d8c8235-70a3-4269-b59e-62a371e9456','Brand-2','brand-2',NULL,NULL,NULL,NULL,NULL,1),('9d8c8235-70a3-4269-b59e-62a371e94711','Serva','serva',NULL,NULL,NULL,NULL,NULL,1),('9d8c8235-70a3-4269-b59e-62a371e94732','Proquip','proquip',NULL,NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `product_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category_firsts`
--

DROP TABLE IF EXISTS `product_category_firsts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_category_firsts` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_category_second_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `product_category_firsts_product_category_second_id_foreign` (`product_category_second_id`),
  KEY `product_category_firsts_slug_index` (`slug`),
  KEY `product_category_firsts_created_by_index` (`created_by`),
  KEY `product_category_firsts_updated_by_index` (`updated_by`),
  CONSTRAINT `product_category_firsts_product_category_second_id_foreign` FOREIGN KEY (`product_category_second_id`) REFERENCES `product_category_seconds` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category_firsts`
--

LOCK TABLES `product_category_firsts` WRITE;
/*!40000 ALTER TABLE `product_category_firsts` DISABLE KEYS */;
INSERT INTO `product_category_firsts` VALUES ('9d8c8235-70a3-4269-b59e-62a371e94733','9d8c8235-70a3-4269-b59e-62a371e947d6','Brand 2','brand-2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),('9d8c824c-07fb-4c33-a1e8-3444ab0bd33','9d8c8235-70a3-4269-b59e-62a371e947d6','brand 1','brand-1',NULL,'/files/images/product-category-firsts/product_category_first_image-tidak_ada_2024-11-26-141235.webp','/files/images/product-category-firsts/product_category_first_image-tidak_ada_2024-11-26-141235.webp','developer@system','developer@system','2024-11-22 09:34:30','2024-11-26 07:12:35',1),('9d91f131-e42a-4153-8f7e-65951df0ca9b','9d8c8235-70a3-4269-b59e-62a371e947d6','Proquip','proquip','Mewujudkan kebersihan udara dengan teknologi canggih serta inovatif.','/files/images/product-category-firsts/product_category_first_image-air_purifier_2024-11-26-142318.webp','/files/images/product-category-firsts/product_category_first_image-tidak_ada_2024-11-26-141235.webp','developer@system','developer@system','2024-11-25 02:23:44','2024-11-26 07:23:18',1),('9d91f145-19ee-4f94-8fae-cf0644d8ff4d','9d8c8235-70a3-4269-b59e-62a371e947d6','Serva','serva','Memberi pengalaman mendengar terbaik dengan suara jernih berkualitas.','/files/images/product-category-firsts/product_category_first_image-audio_2024-11-26-142307.webp','/files/images/product-category-firsts/product_category_first_image-tidak_ada_2024-11-26-141235.webp','developer@system','developer@system','2024-11-25 02:23:56','2024-11-26 07:23:07',1);
/*!40000 ALTER TABLE `product_category_firsts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category_seconds`
--

DROP TABLE IF EXISTS `product_category_seconds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_category_seconds` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `product_category_seconds_slug_index` (`slug`),
  KEY `product_category_seconds_created_by_index` (`created_by`),
  KEY `product_category_seconds_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category_seconds`
--

LOCK TABLES `product_category_seconds` WRITE;
/*!40000 ALTER TABLE `product_category_seconds` DISABLE KEYS */;
INSERT INTO `product_category_seconds` VALUES ('9d8c8235-70a3-4269-b59e-62a371e947d6','(TIdak Ada)','tidak-ada',NULL,NULL,'developer@system','developer@system','2024-11-22 09:34:15','2024-11-22 09:34:15',1);
/*!40000 ALTER TABLE `product_category_seconds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_content_displays`
--

DROP TABLE IF EXISTS `product_content_displays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_content_displays` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ordinal` tinyint unsigned NOT NULL DEFAULT '0',
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `product_content_displays_product_content_id_foreign` (`product_content_id`),
  KEY `product_content_displays_created_by_index` (`created_by`),
  KEY `product_content_displays_updated_by_index` (`updated_by`),
  CONSTRAINT `product_content_displays_product_content_id_foreign` FOREIGN KEY (`product_content_id`) REFERENCES `product_contents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_content_displays`
--

LOCK TABLES `product_content_displays` WRITE;
/*!40000 ALTER TABLE `product_content_displays` DISABLE KEYS */;
INSERT INTO `product_content_displays` VALUES ('9d940220-3304-47d7-b84f-591c81c909e3','9d924352-2700-4371-ab3c-aa1c755a460a','Besu Display Image 01','/files/product-contents/9d924352-2700-4371-ab3c-aa1c755a460a/product-content-displays/9d924352-2700-4371-ab3c-aa1c755a460a_product-content-display-image_2024-11-26-100243.jpg','developer@system','developer@system','2024-11-26 03:02:43','2024-11-26 03:02:43',1,1),('9d94023d-b8a6-4616-be50-35b6975e64ff','9d924352-2700-4371-ab3c-aa1c755a460a','Besu Display Image 02','/files/product-contents/9d924352-2700-4371-ab3c-aa1c755a460a/product-content-displays/9d924352-2700-4371-ab3c-aa1c755a460a_product-content-display-image_2024-11-26-100303.jpg','developer@system','developer@system','2024-11-26 03:03:03','2024-11-26 03:03:03',2,1),('9d940251-0133-46e6-a246-dd87a6d999b0','9d924352-2700-4371-ab3c-aa1c755a460a','Besu Display Image 03','/files/product-contents/9d924352-2700-4371-ab3c-aa1c755a460a/product-content-displays/9d924352-2700-4371-ab3c-aa1c755a460a_product-content-display-image_2024-11-26-100315.jpg','developer@system','developer@system','2024-11-26 03:03:15','2024-11-26 03:03:15',3,1),('9d940277-e090-4fe2-b9cf-314ae7f5e95d','9d924352-2700-4371-ab3c-aa1c755a460a','Besu Display Image 04','/files/product-contents/9d924352-2700-4371-ab3c-aa1c755a460a/product-content-displays/9d924352-2700-4371-ab3c-aa1c755a460a_product-content-display-image_2024-11-26-100341.jpg','developer@system','developer@system','2024-11-26 03:03:41','2024-11-26 03:03:41',4,1),('9d940296-414d-49c3-a673-5602b07cfb58','9d924352-2700-4371-ab3c-aa1c755a460a','Besu Display Image 05','/files/product-contents/9d924352-2700-4371-ab3c-aa1c755a460a/product-content-displays/9d924352-2700-4371-ab3c-aa1c755a460a_product-content-display-image_2024-11-26-100401.jpg','developer@system','developer@system','2024-11-26 03:04:01','2024-11-26 03:04:01',5,1),('9d9402a9-f598-4164-ad77-ae57aa7ccf56','9d924352-2700-4371-ab3c-aa1c755a460a','Besu Display Image 06','/files/product-contents/9d924352-2700-4371-ab3c-aa1c755a460a/product-content-displays/9d924352-2700-4371-ab3c-aa1c755a460a_product-content-display-image_2024-11-26-100414.jpg','developer@system','developer@system','2024-11-26 03:04:14','2024-11-26 03:04:14',6,1),('9d94071b-ce63-41e7-bba5-ac19eb83ff82','9d92474d-617a-4245-b80f-34520752913c','Dehumidifier UDH1500 Display Image 01','/files/product-contents/9d92474d-617a-4245-b80f-34520752913c/product-content-displays/9d92474d-617a-4245-b80f-34520752913c_product-content-display-image_2024-11-26-101639.webp','developer@system','developer@system','2024-11-26 03:16:39','2024-11-26 03:16:39',1,1),('9d940731-e6b0-4582-afd6-c69efb7ac3ae','9d92474d-617a-4245-b80f-34520752913c','Dehumidifier UDH1500 Display Image 02','/files/product-contents/9d92474d-617a-4245-b80f-34520752913c/product-content-displays/9d92474d-617a-4245-b80f-34520752913c_product-content-display-image_2024-11-26-101654.webp','developer@system','developer@system','2024-11-26 03:16:54','2024-11-26 03:16:54',2,1),('9d94074d-d736-46e0-83b3-d5fbe440cb5e','9d92474d-617a-4245-b80f-34520752913c','Dehumidifier UDH1500 Display Image 03','/files/product-contents/9d92474d-617a-4245-b80f-34520752913c/product-content-displays/9d92474d-617a-4245-b80f-34520752913c_product-content-display-image_2024-11-26-101712.webp','developer@system','developer@system','2024-11-26 03:17:12','2024-11-26 03:17:12',3,1),('9d94075e-6701-4c0b-b6c3-52876b0559c4','9d92474d-617a-4245-b80f-34520752913c','Dehumidifier UDH1500 Display Image 04','/files/product-contents/9d92474d-617a-4245-b80f-34520752913c/product-content-displays/9d92474d-617a-4245-b80f-34520752913c_product-content-display-image_2024-11-26-101723.webp','developer@system','developer@system','2024-11-26 03:17:23','2024-11-26 03:17:23',4,1),('9d94076f-c880-44bc-b043-f50373fb6db1','9d92474d-617a-4245-b80f-34520752913c','Dehumidifier UDH1500 Display Image 05','/files/product-contents/9d92474d-617a-4245-b80f-34520752913c/product-content-displays/9d92474d-617a-4245-b80f-34520752913c_product-content-display-image_2024-11-26-101734.webp','developer@system','developer@system','2024-11-26 03:17:34','2024-11-26 03:17:34',5,1),('9d94079f-fa2d-41f9-b1c0-4f448e433d58','9d92474d-617a-4245-b80f-34520752913c','Dehumidifier UDH1500 Display Image 06','/files/product-contents/9d92474d-617a-4245-b80f-34520752913c/product-content-displays/9d92474d-617a-4245-b80f-34520752913c_product-content-display-image_2024-11-26-101806.webp','developer@system','developer@system','2024-11-26 03:18:06','2024-11-26 03:18:06',6,1),('9d9407b6-5f0c-47a6-9bcb-ed7c2d0ca00b','9d92474d-617a-4245-b80f-34520752913c','Dehumidifier UDH1500 Display Image 07','/files/product-contents/9d92474d-617a-4245-b80f-34520752913c/product-content-displays/9d92474d-617a-4245-b80f-34520752913c_product-content-display-image_2024-11-26-101821.webp','developer@system','developer@system','2024-11-26 03:18:21','2024-11-26 03:18:21',7,1),('9d9407c7-f88c-49ec-bc92-455a3c33cf96','9d92474d-617a-4245-b80f-34520752913c','Dehumidifier UDH1500 Display Image 08','/files/product-contents/9d92474d-617a-4245-b80f-34520752913c/product-content-displays/9d92474d-617a-4245-b80f-34520752913c_product-content-display-image_2024-11-26-101832.webp','developer@system','developer@system','2024-11-26 03:18:32','2024-11-26 03:18:32',8,1),('9d9407d8-e4fc-4546-bafd-d7e0f0d87040','9d92474d-617a-4245-b80f-34520752913c','Dehumidifier UDH1500 Display Image 09','/files/product-contents/9d92474d-617a-4245-b80f-34520752913c/product-content-displays/9d92474d-617a-4245-b80f-34520752913c_product-content-display-image_2024-11-26-101843.webp','developer@system','developer@system','2024-11-26 03:18:43','2024-11-26 03:18:43',9,1),('9d940b7c-e2b6-4ae8-b76b-8fbc08038b58','9d9243e9-f977-43d2-b3ca-3d24319e5bea','Air360 Display Image 01','/files/product-contents/9d9243e9-f977-43d2-b3ca-3d24319e5bea/product-content-displays/9d9243e9-f977-43d2-b3ca-3d24319e5bea_product-content-display-image_2024-11-26-102854.jpg','developer@system','developer@system','2024-11-26 03:28:54','2024-11-26 03:28:54',1,1),('9d940b8e-8b49-4278-a03d-3831acc3c755','9d9243e9-f977-43d2-b3ca-3d24319e5bea','Air360 Display Image 02','/files/product-contents/9d9243e9-f977-43d2-b3ca-3d24319e5bea/product-content-displays/9d9243e9-f977-43d2-b3ca-3d24319e5bea_product-content-display-image_2024-11-26-102906.jpg','developer@system','developer@system','2024-11-26 03:29:06','2024-11-26 03:29:06',2,1),('9d940ba5-946c-4b3f-875d-3bf1098e8e5e','9d9243e9-f977-43d2-b3ca-3d24319e5bea','Air360 Display Image 03','/files/product-contents/9d9243e9-f977-43d2-b3ca-3d24319e5bea/product-content-displays/9d9243e9-f977-43d2-b3ca-3d24319e5bea_product-content-display-image_2024-11-26-102921.jpg','developer@system','developer@system','2024-11-26 03:29:21','2024-11-26 03:29:21',3,1),('9d940bb9-58a8-4b64-b68c-b848fea0fe0b','9d9243e9-f977-43d2-b3ca-3d24319e5bea','Air360 Display Image 04','/files/product-contents/9d9243e9-f977-43d2-b3ca-3d24319e5bea/product-content-displays/9d9243e9-f977-43d2-b3ca-3d24319e5bea_product-content-display-image_2024-11-26-102934.jpg','developer@system','developer@system','2024-11-26 03:29:34','2024-11-26 03:29:34',4,1),('9d940bcb-b6b8-4091-ae13-d0c52d581bc9','9d9243e9-f977-43d2-b3ca-3d24319e5bea','Air360 Display Image 05','/files/product-contents/9d9243e9-f977-43d2-b3ca-3d24319e5bea/product-content-displays/9d9243e9-f977-43d2-b3ca-3d24319e5bea_product-content-display-image_2024-11-26-102946.jpg','developer@system','developer@system','2024-11-26 03:29:46','2024-11-26 03:29:46',5,1);
/*!40000 ALTER TABLE `product_content_displays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_content_features`
--

DROP TABLE IF EXISTS `product_content_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_content_features` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ordinal` tinyint unsigned NOT NULL DEFAULT '0',
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `product_content_features_product_content_id_foreign` (`product_content_id`),
  KEY `product_content_features_created_by_index` (`created_by`),
  KEY `product_content_features_updated_by_index` (`updated_by`),
  CONSTRAINT `product_content_features_product_content_id_foreign` FOREIGN KEY (`product_content_id`) REFERENCES `product_contents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_content_features`
--

LOCK TABLES `product_content_features` WRITE;
/*!40000 ALTER TABLE `product_content_features` DISABLE KEYS */;
INSERT INTO `product_content_features` VALUES ('9d940457-17eb-4117-b085-304de8ad2cc6','9d924352-2700-4371-ab3c-aa1c755a460a','MUSIC IS L.I.F.E.','Musik menghubungkan cerita dan membentuk perjalanan hidup seseorang.','/files/product-contents/9d924352-2700-4371-ab3c-aa1c755a460a/product-content-features/9d924352-2700-4371-ab3c-aa1c755a460a_product-content-feature-image_2024-11-26-100855.jpg','developer@system','developer@system','2024-11-26 03:08:55','2024-11-26 03:08:55',1,1),('9d940481-6bfd-489f-9379-cf82f2f7615e','9d924352-2700-4371-ab3c-aa1c755a460a','CONNECT VIA BLUETOOTH','Speaker dapat dikoneksikan via bluetooth dari berbagai perangkat.','/files/product-contents/9d924352-2700-4371-ab3c-aa1c755a460a/product-content-features/9d924352-2700-4371-ab3c-aa1c755a460a_product-content-feature-image_2024-11-26-100923.jpg','developer@system','developer@system','2024-11-26 03:09:23','2024-11-26 03:09:23',2,1),('9d9404a0-98c9-40c9-a802-618e5e2cc154','9d924352-2700-4371-ab3c-aa1c755a460a','EASY CHARGING','Besu memiliki 2 port charger 2.1A dan 1A untuk mode wireless.','/files/product-contents/9d924352-2700-4371-ab3c-aa1c755a460a/product-content-features/9d924352-2700-4371-ab3c-aa1c755a460a_product-content-feature-image_2024-11-26-100943.jpg','developer@system','developer@system','2024-11-26 03:09:43','2024-11-26 03:09:43',3,1),('9d9404c2-a46e-41e1-b006-86a2b8d578a7','9d924352-2700-4371-ab3c-aa1c755a460a','WIRELESS CHARGING FOR MOBILE PHONE','Cukup letakkan smartphone di atas meja, pengisian daya berjalan otomatis via wireless. (Hanya untuk perangkat mobile yang mendukung wireless charging)','/files/product-contents/9d924352-2700-4371-ab3c-aa1c755a460a/product-content-features/9d924352-2700-4371-ab3c-aa1c755a460a_product-content-feature-image_2024-11-26-101005.jpg','developer@system','developer@system','2024-11-26 03:10:05','2024-11-26 03:10:05',4,1),('9d9404e6-4a90-4e75-9db3-8298b6de7708','9d924352-2700-4371-ab3c-aa1c755a460a','SIMPLE & COMPACT','Dilengkapi dengan DC Port 16V, USB Interface 2.1A / 1A, AUX cable connection untuk perangkat multimedia.','/files/product-contents/9d924352-2700-4371-ab3c-aa1c755a460a/product-content-features/9d924352-2700-4371-ab3c-aa1c755a460a_product-content-feature-image_2024-11-26-101029.jpg','developer@system','developer@system','2024-11-26 03:10:29','2024-11-26 03:10:29',5,1),('9d94050a-a9c2-482d-a60a-bfdba3952744','9d924352-2700-4371-ab3c-aa1c755a460a','BUILT-IN MICROPHONE','Bluetooth speaker dilengkapi dengan microphone, dan dapat dikoneksikan via bluetooth.','/files/product-contents/9d924352-2700-4371-ab3c-aa1c755a460a/product-content-features/9d924352-2700-4371-ab3c-aa1c755a460a_product-content-feature-image_2024-11-26-101053.jpg','developer@system','developer@system','2024-11-26 03:10:53','2024-11-26 03:10:53',6,1),('9d94052d-e5b9-4b0f-a393-cd3c3753e19b','9d924352-2700-4371-ab3c-aa1c755a460a','360° SURROUND SOUND','4 Speaker dan subwoofer menghasilkan suara 360° yang jernih dan menjangkau seluruh area sekitar.','/files/product-contents/9d924352-2700-4371-ab3c-aa1c755a460a/product-content-features/9d924352-2700-4371-ab3c-aa1c755a460a_product-content-feature-image_2024-11-26-101116.jpg','developer@system','developer@system','2024-11-26 03:11:16','2024-11-26 03:11:16',7,1),('9d94093f-d7f7-400d-b6dc-61f209b4ec0d','9d92474d-617a-4245-b80f-34520752913c','COVERAGE AREA UP TO 20M² WITH BIG VOLUME CAPACITY','Kapasitas tangki air 1500 ML dengan area coverage up to 20m²','/files/product-contents/9d92474d-617a-4245-b80f-34520752913c/product-content-features/9d92474d-617a-4245-b80f-34520752913c_product-content-feature-image_2024-11-26-102238.webp','developer@system','developer@system','2024-11-26 03:22:39','2024-11-26 03:22:39',1,1),('9d940966-5ea4-44b5-b48d-783c21ea0916','9d92474d-617a-4245-b80f-34520752913c','LOW WATT AND QUIET','Daya listrik sangat rendah hanya 40 Watt dan tidak bising','/files/product-contents/9d92474d-617a-4245-b80f-34520752913c/product-content-features/9d92474d-617a-4245-b80f-34520752913c_product-content-feature-image_2024-11-26-102304.webp','developer@system','developer@system','2024-11-26 03:23:04','2024-11-26 03:23:04',2,1),('9d940989-9644-45cf-bb8e-656bf78b9b1b','9d92474d-617a-4245-b80f-34520752913c','WATER ABSORBTION UP TO 245 ML/DAY','Daya Serap hingga 245 ml/hari.','/files/product-contents/9d92474d-617a-4245-b80f-34520752913c/product-content-features/9d92474d-617a-4245-b80f-34520752913c_product-content-feature-image_2024-11-26-102327.webp','developer@system','developer@system','2024-11-26 03:23:27','2024-11-26 03:23:27',3,1),('9d9409ab-ffab-418a-9463-8d17cbdec340','9d92474d-617a-4245-b80f-34520752913c','CHANGEABLE LIGHT COLOR','7 warna lampu LED ambience untuk memberi nuansa pada ruangan.','/files/product-contents/9d92474d-617a-4245-b80f-34520752913c/product-content-features/9d92474d-617a-4245-b80f-34520752913c_product-content-feature-image_2024-11-26-102349.webp','developer@system','developer@system','2024-11-26 03:23:49','2024-11-26 03:23:49',4,1),('9d9409dc-0614-407f-af05-44a5d6a139a6','9d92474d-617a-4245-b80f-34520752913c','2 POWER LEVEL','Memiliki 2 level power yaitu High Performance & Sleep Mode.','/files/product-contents/9d92474d-617a-4245-b80f-34520752913c/product-content-features/9d92474d-617a-4245-b80f-34520752913c_product-content-feature-image_2024-11-26-102421.webp','developer@system','developer@system','2024-11-26 03:24:21','2024-11-26 03:24:21',5,1),('9d940a01-5479-4492-a4b3-5360a1e19322','9d92474d-617a-4245-b80f-34520752913c','3-TIMER PRESET','3 Pengaturan waktu yaitu 6, 8, dan 12 Jam.','/files/product-contents/9d92474d-617a-4245-b80f-34520752913c/product-content-features/9d92474d-617a-4245-b80f-34520752913c_product-content-feature-image_2024-11-26-102445.webp','developer@system','developer@system','2024-11-26 03:24:45','2024-11-26 03:24:45',6,1),('9d940a26-f21e-4fe6-b34c-6467dd28efd4','9d92474d-617a-4245-b80f-34520752913c','AUTO STOP','Secara otomatis berhenti jika air sudah penuh.','/files/product-contents/9d92474d-617a-4245-b80f-34520752913c/product-content-features/9d92474d-617a-4245-b80f-34520752913c_product-content-feature-image_2024-11-26-102510.webp','developer@system','developer@system','2024-11-26 03:25:10','2024-11-26 03:25:10',7,1),('9d940a48-6b0b-4bf6-adb2-0e3da4a22b3c','9d92474d-617a-4245-b80f-34520752913c','HIGH-EFFICIENT PELTIER DEHUMIDIFIER','Menyaring kelembaban udara secara maksimal.','/files/product-contents/9d92474d-617a-4245-b80f-34520752913c/product-content-features/9d92474d-617a-4245-b80f-34520752913c_product-content-feature-image_2024-11-26-102532.webp','developer@system','developer@system','2024-11-26 03:25:32','2024-11-26 03:25:32',8,1),('9d940a6f-0f92-4bd3-9deb-704841177b3c','9d92474d-617a-4245-b80f-34520752913c','AUTO-DEFROST FUNCTION','Proses pencairan bunga es berjalan secara otomatis.','/files/product-contents/9d92474d-617a-4245-b80f-34520752913c/product-content-features/9d92474d-617a-4245-b80f-34520752913c_product-content-feature-image_2024-11-26-102557.webp','developer@system','developer@system','2024-11-26 03:25:57','2024-11-26 03:25:57',9,1),('9d940a94-4811-46c5-a043-336827b2456c','9d92474d-617a-4245-b80f-34520752913c','COMPACT, PORTABLE, LIGHTWEIGHT, EASY MAINTENANCE','Mudah dibawa dan dipindahkan, kapanpun dimanapun.','/files/product-contents/9d92474d-617a-4245-b80f-34520752913c/product-content-features/9d92474d-617a-4245-b80f-34520752913c_product-content-feature-image_2024-11-26-102622.webp','developer@system','developer@system','2024-11-26 03:26:22','2024-11-26 03:26:22',10,1),('9d940cc7-6f56-4edc-8ac5-2f4012311a9f','9d9243e9-f977-43d2-b3ca-3d24319e5bea','CADR VALUE 400M³/H','Mengcover area lebih dari 55㎡','/files/product-contents/9d9243e9-f977-43d2-b3ca-3d24319e5bea/product-content-features/9d9243e9-f977-43d2-b3ca-3d24319e5bea_product-content-feature-image_2024-11-26-103231.jpg','developer@system','developer@system','2024-11-26 03:32:31','2024-11-26 03:32:31',1,1),('9d940cf1-2821-45e8-9b3c-f7782eda4200','9d9243e9-f977-43d2-b3ca-3d24319e5bea','3 LAYER HEPA 13 PURAWARD','Memiliki Teknologi Hepa 13 PuraWard, sebuah mikroteknologi dengan menggunakan ion tembaga dan perak untuk membasmi bakteri dan virus.','/files/product-contents/9d9243e9-f977-43d2-b3ca-3d24319e5bea/product-content-features/9d9243e9-f977-43d2-b3ca-3d24319e5bea_product-content-feature-image_2024-11-26-103258.jpg','developer@system','developer@system','2024-11-26 03:32:58','2024-11-26 03:32:58',2,1),('9d940d10-b2db-48c9-b1b2-9b6be634b6f3','9d9243e9-f977-43d2-b3ca-3d24319e5bea','HEPA 13 FILTER','Menghilangkan 105 jenis polusi partikulat dan menghilangkan 99,9% bau, asap, bulu hewan peliharaan, debu, dan lainnya hingga ukuran 0,1 mikron.','/files/product-contents/9d9243e9-f977-43d2-b3ca-3d24319e5bea/product-content-features/9d9243e9-f977-43d2-b3ca-3d24319e5bea_product-content-feature-image_2024-11-26-103319.jpg','developer@system','developer@system','2024-11-26 03:33:19','2024-11-26 03:33:19',3,1),('9d940d38-329c-462c-a275-31e23032c630','9d9243e9-f977-43d2-b3ca-3d24319e5bea','USA PURAWARD PATENTED FILTER','efektif menghilangkan virus corona baru SARS-CoV-2 sebesar 99,46% memberikan efek anti-bakteri dan anti-virus yang sangat baik.','/files/product-contents/9d9243e9-f977-43d2-b3ca-3d24319e5bea/product-content-features/9d9243e9-f977-43d2-b3ca-3d24319e5bea_product-content-feature-image_2024-11-26-103345.jpg','developer@system','developer@system','2024-11-26 03:33:45','2024-11-26 03:33:45',4,1),('9d940d60-b4c2-4057-be43-fdb9439694df','9d9243e9-f977-43d2-b3ca-3d24319e5bea','OLED TOUCH DISPLAY','Atur mode tidur, otomatis, rendah, sedang, atau tinggi hanya dengan satu sentuhan.','/files/product-contents/9d9243e9-f977-43d2-b3ca-3d24319e5bea/product-content-features/9d9243e9-f977-43d2-b3ca-3d24319e5bea_product-content-feature-image_2024-11-26-103411.jpg','developer@system','developer@system','2024-11-26 03:34:11','2024-11-26 03:34:11',5,1),('9d940d84-dac3-4dc5-bfe9-216d009b631c','9d9243e9-f977-43d2-b3ca-3d24319e5bea','REMOTE CONTROL','Mengoperasikan AIR360 melalui remote control tanpa Wi-Fi.','/files/product-contents/9d9243e9-f977-43d2-b3ca-3d24319e5bea/product-content-features/9d9243e9-f977-43d2-b3ca-3d24319e5bea_product-content-feature-image_2024-11-26-103435.jpg','developer@system','developer@system','2024-11-26 03:34:35','2024-11-26 03:34:35',6,1),('9d940dac-1c78-4d9f-b3cf-fb8fb9e20a3c','9d9243e9-f977-43d2-b3ca-3d24319e5bea','REAL TIME PM2.5 INDEX','Menampilkan kualitas udara melalui sensor warna, memantau konsentrasi PM2.5 dan suhu ruangan secara akurat.','/files/product-contents/9d9243e9-f977-43d2-b3ca-3d24319e5bea/product-content-features/9d9243e9-f977-43d2-b3ca-3d24319e5bea_product-content-feature-image_2024-11-26-103501.jpg','developer@system','developer@system','2024-11-26 03:35:01','2024-11-26 03:35:01',7,1),('9d940dd1-856c-408b-bba2-dc38aca2c204','9d9243e9-f977-43d2-b3ca-3d24319e5bea','AUTO ADJUSTABLE SPEED','3 jenis pengaturan untuk kualitas udara yang berbeda.','/files/product-contents/9d9243e9-f977-43d2-b3ca-3d24319e5bea/product-content-features/9d9243e9-f977-43d2-b3ca-3d24319e5bea_product-content-feature-image_2024-11-26-103525.jpg','developer@system','developer@system','2024-11-26 03:35:25','2024-11-26 03:35:25',8,1),('9d940e03-3d4a-4b7e-adb1-dd8164dd46bc','9d9243e9-f977-43d2-b3ca-3d24319e5bea','PEACEFUL SLEEPING ENVIRONMENT','Mode sleep membuat suara penyaringan menjadi lebih lembut.','/files/product-contents/9d9243e9-f977-43d2-b3ca-3d24319e5bea/product-content-features/9d9243e9-f977-43d2-b3ca-3d24319e5bea_product-content-feature-image_2024-11-26-103558.jpg','developer@system','developer@system','2024-11-26 03:35:58','2024-11-26 03:35:58',9,1),('9d940e2c-cb48-4215-86a6-24b52b8343ff','9d9243e9-f977-43d2-b3ca-3d24319e5bea','12-HOURS TIMER SETTING','AIR360 dapat diatur bekerja 1 hingga 12 jam melalui pengaturan manual atau TUYA APP.','/files/product-contents/9d9243e9-f977-43d2-b3ca-3d24319e5bea/product-content-features/9d9243e9-f977-43d2-b3ca-3d24319e5bea_product-content-feature-image_2024-11-26-103625.jpg','developer@system','developer@system','2024-11-26 03:36:25','2024-11-26 03:36:25',10,1),('9d940e58-2e54-4a93-9175-fb10712685c9','9d9243e9-f977-43d2-b3ca-3d24319e5bea','SMART FILTER CHANGE REMINDER','Memiliki indikator pengingat pergantian filter melalui layar OLED dan TUYA APP.','/files/product-contents/9d9243e9-f977-43d2-b3ca-3d24319e5bea/product-content-features/9d9243e9-f977-43d2-b3ca-3d24319e5bea_product-content-feature-image_2024-11-26-103653.jpg','developer@system','developer@system','2024-11-26 03:36:53','2024-11-26 03:36:53',11,1),('9d940e7f-dd9e-4138-8de5-c0468ec43132','9d9243e9-f977-43d2-b3ca-3d24319e5bea','3 EASY STEPS','Filter udara mudah dibersihkan','/files/product-contents/9d9243e9-f977-43d2-b3ca-3d24319e5bea/product-content-features/9d9243e9-f977-43d2-b3ca-3d24319e5bea_product-content-feature-image_2024-11-26-103719.jpg','developer@system','developer@system','2024-11-26 03:37:19','2024-11-26 03:37:19',12,1);
/*!40000 ALTER TABLE `product_content_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_content_marketplaces`
--

DROP TABLE IF EXISTS `product_content_marketplaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_content_marketplaces` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `marketplace_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ordinal` tinyint unsigned NOT NULL DEFAULT '0',
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `product_content_marketplaces_marketplace_id_foreign` (`marketplace_id`),
  KEY `product_content_marketplaces_product_content_id_foreign` (`product_content_id`),
  KEY `product_content_marketplaces_created_by_index` (`created_by`),
  KEY `product_content_marketplaces_updated_by_index` (`updated_by`),
  CONSTRAINT `product_content_marketplaces_marketplace_id_foreign` FOREIGN KEY (`marketplace_id`) REFERENCES `marketplaces` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `product_content_marketplaces_product_content_id_foreign` FOREIGN KEY (`product_content_id`) REFERENCES `product_contents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_content_marketplaces`
--

LOCK TABLES `product_content_marketplaces` WRITE;
/*!40000 ALTER TABLE `product_content_marketplaces` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_content_marketplaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_content_metas`
--

DROP TABLE IF EXISTS `product_content_metas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_content_metas` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_property_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ordinal` tinyint unsigned NOT NULL DEFAULT '0',
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_content_metas_product_content_id_meta_property_id_unique` (`product_content_id`,`meta_property_id`),
  KEY `product_content_metas_meta_property_id_foreign` (`meta_property_id`),
  KEY `product_content_metas_created_by_index` (`created_by`),
  KEY `product_content_metas_updated_by_index` (`updated_by`),
  CONSTRAINT `product_content_metas_meta_property_id_foreign` FOREIGN KEY (`meta_property_id`) REFERENCES `meta_properties` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `product_content_metas_product_content_id_foreign` FOREIGN KEY (`product_content_id`) REFERENCES `product_contents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_content_metas`
--

LOCK TABLES `product_content_metas` WRITE;
/*!40000 ALTER TABLE `product_content_metas` DISABLE KEYS */;
INSERT INTO `product_content_metas` VALUES ('9d9401d6-b8e1-4023-977b-f090113a110a','9d924352-2700-4371-ab3c-aa1c755a460a','title','Besu - Bluetooth Speaker Table','developer@system','developer@system','2024-11-26 03:01:55','2024-11-26 03:01:55',1,1),('9d9401e7-b2aa-425e-b854-15567b3e97e0','9d924352-2700-4371-ab3c-aa1c755a460a','description','Speaker cerdas yang dilengkapi dengan bluetooth, wireless charging, 6600 mAh battery bertahan hingga 7 jam, dan dilengkapi 2 port USB charging.','developer@system','developer@system','2024-11-26 03:02:06','2024-11-26 03:02:06',2,1),('9d9401f8-1a40-439a-b628-7f224d2a4654','9d924352-2700-4371-ab3c-aa1c755a460a','keywords','bluetooth speaker, bluetooth speaker table, meja minimalis, meja kopi','developer@system','developer@system','2024-11-26 03:02:17','2024-11-26 03:02:17',3,1),('9d940695-fa98-4f71-8aa5-61df1ae1d24f','9d92474d-617a-4245-b80f-34520752913c','title','Dehumidifier UDH1500 Serap Air dan Penyerap Kelembaban Udara','developer@system','developer@system','2024-11-26 03:15:12','2024-11-26 03:15:12',1,1),('9d9406a5-91d7-4690-9a75-fc73166fbd41','9d92474d-617a-4245-b80f-34520752913c','description','Dehumidifier hemat listrik (hanya 40 watt) dan tidak bising, dapat menyerap kelembaban udara secara maksimal dengan jangkauan up to 20 m².','developer@system','developer@system','2024-11-26 03:15:22','2024-11-26 03:15:22',2,1),('9d9406dd-666f-4ad1-8d4f-5994490f0a06','9d92474d-617a-4245-b80f-34520752913c','keywords','umeda dehumidifier, smart dehumidifier, dehumidifier udh1500, serap air, dehumidifier serap air, penyerap kelembaban udara','developer@system','developer@system','2024-11-26 03:15:58','2024-11-26 03:15:58',3,1),('9d940b12-f1f1-4d34-93ac-0b4bd461361b','9d9243e9-f977-43d2-b3ca-3d24319e5bea','title','Air360 - Hepa 13 Filter Air Purifier','developer@system','developer@system','2024-11-26 03:27:45','2024-11-26 03:27:45',1,1),('9d940b2a-8c1c-4388-bcf2-2a25ea42bb56','9d9243e9-f977-43d2-b3ca-3d24319e5bea','description','Air360 penyaring udara dengan filter Hepa 13, membersihkan udara secara ekstra dan memiliki banyak fitur seperti anti virus, anti bakteri, dan lainnya.','developer@system','developer@system','2024-11-26 03:28:00','2024-11-26 03:28:00',2,1),('9d940b39-603b-4d6d-85fb-522f6f5ee603','9d9243e9-f977-43d2-b3ca-3d24319e5bea','keywords','umeda air360, air purifier, penyaring debu, hepa 13, penyaring udara, air purifier hepa filter terbaik','developer@system','developer@system','2024-11-26 03:28:10','2024-11-26 03:28:10',3,1);
/*!40000 ALTER TABLE `product_content_metas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_content_qnas`
--

DROP TABLE IF EXISTS `product_content_qnas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_content_qnas` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `question` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ordinal` int unsigned DEFAULT '0',
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `product_content_qnas_product_content_id_foreign` (`product_content_id`),
  KEY `product_content_qnas_created_by_index` (`created_by`),
  KEY `product_content_qnas_updated_by_index` (`updated_by`),
  CONSTRAINT `product_content_qnas_product_content_id_foreign` FOREIGN KEY (`product_content_id`) REFERENCES `product_contents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_content_qnas`
--

LOCK TABLES `product_content_qnas` WRITE;
/*!40000 ALTER TABLE `product_content_qnas` DISABLE KEYS */;
INSERT INTO `product_content_qnas` VALUES ('9da4799f-319d-4c19-b35e-95862e0bde2f','9d924352-2700-4371-ab3c-aa1c755a460a','Vel explicabo quis praesentium et tempora et et.','Unde quas possimus dolores adipisci eius.','system','system','2024-12-04 07:30:06','2024-12-04 07:30:06',5,1),('9da4799f-31a6-4df7-b3cd-f8767cd2f5a6','9d924352-2700-4371-ab3c-aa1c755a460a','Voluptate enim ea quidem quia autem.','Est eos praesentium quis ipsam. Velit velit perferendis et in.','system','system','2024-12-04 07:30:06','2024-12-04 07:30:06',6,1),('9da4799f-31b0-4532-9db1-dcfd4fe4bcc3','9d924352-2700-4371-ab3c-aa1c755a460a','Omnis saepe non distinctio laboriosam quis qui quam.','Earum dolores laboriosam cupiditate aut.','system','system','2024-12-04 07:30:06','2024-12-04 07:30:06',7,1),('9da4799f-31b9-493a-bdbd-70963d5947ee','9d924352-2700-4371-ab3c-aa1c755a460a','Qui odio voluptatum magni animi.','Omnis ex inventore blanditiis rerum iste sed.','system','system','2024-12-04 07:30:06','2024-12-04 07:30:06',8,1),('9da4799f-31c4-4b13-9125-447a4e649066','9d924352-2700-4371-ab3c-aa1c755a460a','Voluptas corrupti mollitia fugiat.','Libero quo inventore deleniti.','system','system','2024-12-04 07:30:06','2024-12-04 07:30:06',9,1),('9da4799f-31cd-4535-8850-ec4d4b0c0e8e','9d924352-2700-4371-ab3c-aa1c755a460a','Est consequatur amet quia.','Molestiae rerum et itaque repellat nulla ut voluptas.','system','system','2024-12-04 07:30:06','2024-12-04 07:30:06',10,1),('9da4799f-31da-4d3a-95e3-df8099a0c2c0','9d9243e9-f977-43d2-b3ca-3d24319e5bea','Bagaimana cara membersihkan hepa filter?','Bisa menggunakan sikat/kuas dengan permukaan halus','system','system','2024-12-04 07:30:06','2024-12-04 07:30:06',5,1),('9da4799f-31eb-41dd-8beb-80cc7a600e04','9d9243e9-f977-43d2-b3ca-3d24319e5bea','Filter kedap-kedip, maka filter harus diriset. Bagaimana cara meriset filter Air purifier?','Klik Timer + filter secara bersamaan','system','system','2024-12-04 07:30:06','2024-12-04 07:30:06',6,1),('9da4799f-31f5-4d49-8403-26d929fcd634','9d9243e9-f977-43d2-b3ca-3d24319e5bea','Kenapa produk tidak menghembuskan udara?','Silakan cek apakah plastik pada filter sudah dilepas atau belum ','system','system','2024-12-04 07:30:06','2024-12-04 07:30:06',7,1),('9da4799f-31ff-45c5-b670-7d74bcd670a8','9d9243e9-f977-43d2-b3ca-3d24319e5bea','Mengapa lampu indikator kualitas udara selalu merah?','Mohon pindahkan mesin ke ruangan\r\nyang bersih. Jika lampu merah masih\r\nmenyala, sirkuit sensor mungkin\r\ntidak normal. Dalam hal ini, silakan\r\nberkonsultasi customer service kami.','system','system','2024-12-04 07:30:06','2024-12-04 07:30:06',8,1),('9da4799f-3209-4564-9c21-d9a9658bacb1','9d9243e9-f977-43d2-b3ca-3d24319e5bea','Kapan saat yang tepat untuk mengganti filter?','Apabila filter telah bekerja selama 3000 jam, buzzer akan berbunyi 5 kali, lampu indikator\r\npenggantian \"Filter\" akan berkedip','system','system','2024-12-04 07:30:06','2024-12-04 07:30:06',9,1),('9da4799f-32ae-4dc2-befc-1508b748a77a','9d92474d-617a-4245-b80f-34520752913c','Bagaimana kalau lampu indikator tidak menyala? ','Bagian kapas yang ditengah diposisikan ke bawah','system','system','2024-12-04 07:30:06','2024-12-04 07:30:06',5,1),('9da4799f-32ba-405b-862d-ee7226c7b065','9d92474d-617a-4245-b80f-34520752913c','Bagaimana cara membersihkan tangki air ','lepaskan dan kosongkan tangki air, berishkan tangki air dengan air bersih yang hangat dan detergen yang lembut, pastikan membersihkan kerak yang timbul dalam tangki air, lap permukaan hingga kering. sebelum memasang kembali tangki air peralatan','system','system','2024-12-04 07:30:06','2024-12-04 07:30:06',6,1),('9da4799f-32c3-4928-bc03-ef89509924eb','9d92474d-617a-4245-b80f-34520752913c','apakah boleh kena matahari langsung','disarankan untuk tidak kena matahari langsung dan bisa dijauhkan dari jangkauan anak anak ','system','system','2024-12-04 07:30:06','2024-12-04 07:30:06',7,1),('9da4799f-32d0-4310-b454-db90078e55df','9d92474d-617a-4245-b80f-34520752913c','bagaimana cara mengunci warna pada dehum?','untuk mengunci warna tekan yg berbentuk matahari lalu tahan sampai warna yang di inginkan tekan lagi untuk mematikan lampu ','system','system','2024-12-04 07:30:06','2024-12-04 07:30:06',8,1),('9da4799f-32e1-4da4-9049-db5b89bbb3b1','9d92474d-617a-4245-b80f-34520752913c','berapa luas ruang cakupan dehum ?','luas ruangan cakupan dehum 15 meter persegi ','system','system','2024-12-04 07:30:06','2024-12-04 07:30:06',9,1);
/*!40000 ALTER TABLE `product_content_qnas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_content_reviews`
--

DROP TABLE IF EXISTS `product_content_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_content_reviews` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` decimal(4,2) DEFAULT '0.00',
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ordinal` int unsigned DEFAULT '0',
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `product_content_reviews_product_content_id_foreign` (`product_content_id`),
  KEY `product_content_reviews_created_by_index` (`created_by`),
  KEY `product_content_reviews_updated_by_index` (`updated_by`),
  CONSTRAINT `product_content_reviews_product_content_id_foreign` FOREIGN KEY (`product_content_id`) REFERENCES `product_contents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_content_reviews`
--

LOCK TABLES `product_content_reviews` WRITE;
/*!40000 ALTER TABLE `product_content_reviews` DISABLE KEYS */;
INSERT INTO `product_content_reviews` VALUES ('9da47813-0064-44ce-a70c-b70af829b4b4','9d924352-2700-4371-ab3c-aa1c755a460a','Yenny',5.00,'kualitas suara bagus dan designya estetik','system','system','2024-12-04 07:25:47','2024-12-04 07:25:47',11,1),('9da47813-007d-49a2-9ea5-607462fe6e9d','9d924352-2700-4371-ab3c-aa1c755a460a','Elaa',5.00,'Cepat sampai dan keren banget suaranya kenceng dan jelas','system','system','2024-12-04 07:25:47','2024-12-04 07:25:47',12,1),('9da47813-0095-4e36-8098-53a921c03b11','9d924352-2700-4371-ab3c-aa1c755a460a','Ferry',5.00,'Suaranya mantap 🔊 Kualitas boleh diadu Penjualnya ramah banget Desain elegan Bahannya kokoh Packaging aman 🙏 Gampang rakitnya Packaging rapi Proses pesanan cepat Respon penjualnya top Garansi terjamin','system','system','2024-12-04 07:25:47','2024-12-04 07:25:47',13,1),('9da47813-00ac-4e32-b0cb-50db5e94360c','9d924352-2700-4371-ab3c-aa1c755a460a','Marella',5.00,'Oke bgt darang tepat waktu admin seller responsif','system','system','2024-12-04 07:25:47','2024-12-04 07:25:47',14,1),('9da47813-00c3-4f3b-9501-8628c3f1c574','9d924352-2700-4371-ab3c-aa1c755a460a','DAVID',5.00,'sesuai deskripsi','system','system','2024-12-04 07:25:47','2024-12-04 07:25:47',15,1),('9da47813-00da-4f76-bef7-0bef39fd703b','9d9243e9-f977-43d2-b3ca-3d24319e5bea','Riany',5.00,'Barang original, design bagus, baru dicoba berfungsi dengan baik. So far so good. Thank you..','system','system','2024-12-04 07:25:47','2024-12-04 07:25:47',16,1),('9da47813-00f4-40dc-9504-80a833486a1d','9d9243e9-f977-43d2-b3ca-3d24319e5bea','pat',5.00,'admin fast response, pengiriman cepat, barang berfungsi dgn baik. semoga awet dan efek buat membersihkan udara.\r\nadmin fast response, pengiriman cepat, barang berfungsi dgn baik. semoga awet dan efek buat membersihkan udara.\r\nadmin fast response, pengiriman cepat, barang berfungsi dgn baik. semoga awet dan efek buat membersihkan udara.\r\n','system','system','2024-12-04 07:25:47','2024-12-04 07:25:47',17,1),('9da47813-010b-4a6a-9d37-cc83d844be78','9d9243e9-f977-43d2-b3ca-3d24319e5bea','Niken',5.00,'Bagus banget air purifiernya! Ga terlalu berat, efektif untuk bersihkan udara (sudah dites dg sensor PM 2.5 terpisah). Sayangnya ga ada handle untuk pindahin air purifiernya dg lebih mudah. Seller responsif, pengirimannya cepat.','system','system','2024-12-04 07:25:47','2024-12-04 07:25:47',18,1),('9da47813-0122-4a69-a48e-6a8ce4b2b399','9d9243e9-f977-43d2-b3ca-3d24319e5bea','abigail',5.00,'Bermanfaat Ukuran pass Tidak terlalu keci dan besar','system','system','2024-12-04 07:25:47','2024-12-04 07:25:47',19,1),('9da47813-013a-40a5-91a3-e88bc97738a4','9d9243e9-f977-43d2-b3ca-3d24319e5bea','Andrew',5.00,'Barang mantap, semoga awet dan bermanfaat. Respon penjual cepat dalam menangani penggantian unit.','system','system','2024-12-04 07:25:47','2024-12-04 07:25:47',20,1),('9da47813-025d-441d-9c0e-d0777d40d0ab','9d92474d-617a-4245-b80f-34520752913c','MOKHAMAD',5.00,'Dalam waktu 6jam, dg suhu ruangan kos 3x4 di area Batu, sudah dapat sekitar 100-150ml air. Komen sementara, ini oke sih.\r\n','system','system','2024-12-04 07:25:47','2024-12-04 07:25:47',1,1),('9da47813-0275-4d95-b030-0fe0e5e61165','9d92474d-617a-4245-b80f-34520752913c','Harry',5.00,'Barang sesuai deskripsi di toko. Barang datang langsung dicoba, pengoperasian cukup mudah buku manual juga simpel sekali. Pertama kali beli dehumidifier, semoga bisa merasakan manfaatnya.','system','system','2024-12-04 07:25:47','2024-12-04 07:25:47',2,1),('9da47813-028e-42ba-807c-501a61a9ded3','9d92474d-617a-4245-b80f-34520752913c','Yudith',5.00,'Ok produknya. Berguna juga untuk ruangan yg lembab dan anak ada riwayat alergi. Ada lampunya jg, nanti bisa ganti² sendiri warnanya, yg pasti warna lampunya lembut sehingga cocok untuk lampu tidur.','system','system','2024-12-04 07:25:47','2024-12-04 07:25:47',3,1),('9da47813-02b4-4355-9ef0-197176dfa0c1','9d92474d-617a-4245-b80f-34520752913c','Yohanes',5.00,'Kualitas bagus dan berfungsi semua featurenya','system','system','2024-12-04 07:25:47','2024-12-04 07:25:47',4,1),('9da47813-02cd-4c2e-b6b3-bd7e497921eb','9d92474d-617a-4245-b80f-34520752913c','Risnanta',5.00,'barang sampai dengan baik, sudah dicoba sehari dan ternyata memang rumah lembab, terlihat dari banyaknya air yang sudah didaoatkan di tangki','system','system','2024-12-04 07:25:47','2024-12-04 07:25:47',5,1);
/*!40000 ALTER TABLE `product_content_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_content_specifications`
--

DROP TABLE IF EXISTS `product_content_specifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_content_specifications` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ordinal` tinyint unsigned NOT NULL DEFAULT '0',
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `product_content_specifications_product_content_id_foreign` (`product_content_id`),
  KEY `product_content_specifications_created_by_index` (`created_by`),
  KEY `product_content_specifications_updated_by_index` (`updated_by`),
  CONSTRAINT `product_content_specifications_product_content_id_foreign` FOREIGN KEY (`product_content_id`) REFERENCES `product_contents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_content_specifications`
--

LOCK TABLES `product_content_specifications` WRITE;
/*!40000 ALTER TABLE `product_content_specifications` DISABLE KEYS */;
INSERT INTO `product_content_specifications` VALUES ('9d940372-6573-48d3-a778-eaa3c0a0e482','9d924352-2700-4371-ab3c-aa1c755a460a','Battery','6.600 mAh, 7 hours cordless playtime','developer@system','developer@system','2024-11-26 03:06:25','2024-11-26 03:06:25',1,1),('9d940385-3592-4c22-ad1d-b4307e67ea6f','9d924352-2700-4371-ab3c-aa1c755a460a','Charging','Wire Charging, Wireless Charging','developer@system','developer@system','2024-11-26 03:06:37','2024-11-26 03:06:37',2,1),('9d940398-a254-4289-bf67-f057bac0b731','9d924352-2700-4371-ab3c-aa1c755a460a','Charging power','30 W','developer@system','developer@system','2024-11-26 03:06:50','2024-11-26 03:06:50',3,1),('9d9403ab-d81b-4efe-981c-5eadbd2ac466','9d924352-2700-4371-ab3c-aa1c755a460a','Network Device','Bluetooth','developer@system','developer@system','2024-11-26 03:07:03','2024-11-26 03:07:03',4,1),('9d9403c0-16e2-4fc3-ad37-2b3468ccaf08','9d924352-2700-4371-ab3c-aa1c755a460a','Port','3.5mm aux-in TV or phone, 2 USB charge devices','developer@system','developer@system','2024-11-26 03:07:16','2024-11-26 03:07:16',5,1),('9d9403d4-f623-4637-9028-c9fba516833b','9d924352-2700-4371-ab3c-aa1c755a460a','Surround Sound','360°','developer@system','developer@system','2024-11-26 03:07:30','2024-11-26 03:07:30',6,1),('9d9403e7-e684-4508-8f72-9c01b892e4f1','9d924352-2700-4371-ab3c-aa1c755a460a','Sound','88 watts of powerful stereo','developer@system','developer@system','2024-11-26 03:07:42','2024-11-26 03:07:42',7,1),('9d9403fc-d295-4a2f-ac42-305294b19e39','9d924352-2700-4371-ab3c-aa1c755a460a','Working Time','Up to 7 hours','developer@system','developer@system','2024-11-26 03:07:56','2024-11-26 03:07:56',8,1),('9d94040e-6c55-43a0-9227-a1547bd086ab','9d924352-2700-4371-ab3c-aa1c755a460a','Weight','8.4 kg','developer@system','developer@system','2024-11-26 03:08:07','2024-11-26 03:08:07',9,1),('9d94041f-4df9-4af2-9974-ac86da07f697','9d924352-2700-4371-ab3c-aa1c755a460a','Dimension','404 x 404 x 630 mm','developer@system','developer@system','2024-11-26 03:08:18','2024-11-26 03:08:18',10,1),('9d94084c-a68c-4faa-afce-64ad6f3776ea','9d92474d-617a-4245-b80f-34520752913c','Power','40 W','developer@system','developer@system','2024-11-26 03:19:59','2024-11-26 03:19:59',1,1),('9d940861-1c35-40a1-9be7-df4e302e9016','9d92474d-617a-4245-b80f-34520752913c','Voltage','DC12 V','developer@system','developer@system','2024-11-26 03:20:13','2024-11-26 03:20:13',2,1),('9d940872-f1f3-4029-a781-eb665d6e605e','9d92474d-617a-4245-b80f-34520752913c','Frequency','50/60 Hz','developer@system','developer@system','2024-11-26 03:20:24','2024-11-26 03:20:24',3,1),('9d940884-004d-40f5-9033-eaa224f2a0b3','9d92474d-617a-4245-b80f-34520752913c','Coverage Area','20 m2','developer@system','developer@system','2024-11-26 03:20:35','2024-11-26 03:20:35',4,1),('9d940895-f91c-46ed-bacb-7d397c9dee8f','9d92474d-617a-4245-b80f-34520752913c','Tank Capacity','1500 ml','developer@system','developer@system','2024-11-26 03:20:47','2024-11-26 03:20:47',5,1),('9d9408a9-1f91-4b44-817d-c9c2452770ca','9d92474d-617a-4245-b80f-34520752913c','Dehumidification','245 ml/day','developer@system','developer@system','2024-11-26 03:21:00','2024-11-26 03:21:00',6,1),('9d9408cb-9715-4ad5-8678-91f9f52aef98','9d92474d-617a-4245-b80f-34520752913c','Net Weight','1.25 kg','developer@system','developer@system','2024-11-26 03:21:22','2024-11-26 03:21:22',7,1),('9d9408dd-a0fa-4f94-9829-f40dbd0a4b90','9d92474d-617a-4245-b80f-34520752913c','Gross Weight','1.45 kg','developer@system','developer@system','2024-11-26 03:21:34','2024-11-26 03:21:34',8,1),('9d9408ef-8ccf-49bd-9fb1-bd8bae31a375','9d92474d-617a-4245-b80f-34520752913c','Product Dimension','191 x 123 x 275 mm','developer@system','developer@system','2024-11-26 03:21:46','2024-11-26 03:21:46',9,1),('9d940c23-510d-446e-b4cd-4c70e03fcab2','9d9243e9-f977-43d2-b3ca-3d24319e5bea','Model','Air360','developer@system','developer@system','2024-11-26 03:30:43','2024-11-26 03:30:43',1,1),('9d940c34-a5d2-48e6-a680-962827bfb9f5','9d9243e9-f977-43d2-b3ca-3d24319e5bea','Power','35 W','developer@system','developer@system','2024-11-26 03:30:54','2024-11-26 03:30:54',2,1),('9d940c46-0cc7-4660-8481-d4716f0d6d97','9d9243e9-f977-43d2-b3ca-3d24319e5bea','Working Voltage','AC 220-240 V','developer@system','developer@system','2024-11-26 03:31:06','2024-11-26 03:31:06',3,1),('9d940c58-4c55-4d47-b6c5-be714e4a8028','9d9243e9-f977-43d2-b3ca-3d24319e5bea','Nett Weight','5.2 kg','developer@system','developer@system','2024-11-26 03:31:18','2024-11-26 03:31:18',4,1),('9d940c71-2484-44b0-96f9-a365a2f8f7a3','9d9243e9-f977-43d2-b3ca-3d24319e5bea','CADR','400 m3/h','developer@system','developer@system','2024-11-26 03:31:34','2024-11-26 03:31:34',5,1),('9d940c82-ebd9-400b-8cec-dd0a058bda96','9d9243e9-f977-43d2-b3ca-3d24319e5bea','Coverage Area','55 m2','developer@system','developer@system','2024-11-26 03:31:46','2024-11-26 03:31:46',6,1),('9d940c95-c471-4e7f-b271-c2778205e47a','9d9243e9-f977-43d2-b3ca-3d24319e5bea','Dimension','290 x 290 x 610 mm','developer@system','developer@system','2024-11-26 03:31:58','2024-11-26 03:31:58',7,1);
/*!40000 ALTER TABLE `product_content_specifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_content_videos`
--

DROP TABLE IF EXISTS `product_content_videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_content_videos` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ordinal` tinyint unsigned NOT NULL DEFAULT '0',
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `product_content_videos_product_content_id_foreign` (`product_content_id`),
  KEY `product_content_videos_created_by_index` (`created_by`),
  KEY `product_content_videos_updated_by_index` (`updated_by`),
  CONSTRAINT `product_content_videos_product_content_id_foreign` FOREIGN KEY (`product_content_id`) REFERENCES `product_contents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_content_videos`
--

LOCK TABLES `product_content_videos` WRITE;
/*!40000 ALTER TABLE `product_content_videos` DISABLE KEYS */;
INSERT INTO `product_content_videos` VALUES ('9d924783-cfa5-4a09-a042-ec7b9ee4b845','9d92474d-617a-4245-b80f-34520752913c','Dehumidifier UDH1500 Video 01','/files/product-contents/9d92474d-617a-4245-b80f-34520752913c/product-content-videos/9d92474d-617a-4245-b80f-34520752913c_product-content-video-image_2024-11-25-132506.jpg','/files/product-contents/9d92474d-617a-4245-b80f-34520752913c/product-content-videos/9d92474d-617a-4245-b80f-34520752913c_product-content-video_2024-11-25-132506.mp4','developer@system','developer@system','2024-11-25 06:25:06','2024-11-25 06:25:06',1,1),('9d9402d8-f064-4d7e-8073-a2849e2bef97','9d924352-2700-4371-ab3c-aa1c755a460a','Besu Video 01','/files/product-contents/9d924352-2700-4371-ab3c-aa1c755a460a/product-content-videos/9d924352-2700-4371-ab3c-aa1c755a460a_product-content-video-image_2024-11-26-100511.jpg','/files/product-contents/9d924352-2700-4371-ab3c-aa1c755a460a/product-content-videos/9d924352-2700-4371-ab3c-aa1c755a460a_product-content-video_2024-11-26-100511.mp4','developer@system','developer@system','2024-11-26 03:04:44','2024-11-26 03:05:11',1,1),('9d940bfb-d900-4ee6-917d-fda96639be3d','9d9243e9-f977-43d2-b3ca-3d24319e5bea','Air360 Video 01','/files/product-contents/9d9243e9-f977-43d2-b3ca-3d24319e5bea/product-content-videos/9d9243e9-f977-43d2-b3ca-3d24319e5bea_product-content-video-image_2024-11-26-103017.jpg','/files/product-contents/9d9243e9-f977-43d2-b3ca-3d24319e5bea/product-content-videos/9d9243e9-f977-43d2-b3ca-3d24319e5bea_product-content-video_2024-11-26-103017.webm','developer@system','developer@system','2024-11-26 03:30:17','2024-11-26 03:30:17',1,1);
/*!40000 ALTER TABLE `product_content_videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_contents`
--

DROP TABLE IF EXISTS `product_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_contents` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_contents_url_unique` (`url`),
  KEY `product_contents_product_id_foreign` (`product_id`),
  KEY `product_contents_created_by_index` (`created_by`),
  KEY `product_contents_updated_by_index` (`updated_by`),
  CONSTRAINT `product_contents_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_contents`
--

LOCK TABLES `product_contents` WRITE;
/*!40000 ALTER TABLE `product_contents` DISABLE KEYS */;
INSERT INTO `product_contents` VALUES ('9d8c8235-70a3-4269-b59e-62a371e94733','9d8c8235-70a3-4269-b59e-62a371e94731','product 1 content','product-1-content','/p/',NULL,NULL,NULL,NULL,NULL,NULL,1),('9d924352-2700-4371-ab3c-aa1c755a460a','9d921a9d-b199-4162-a45b-1f550129a4d8','Besu - Bluetooth Speaker Table','besu-bluetooth-speaker-table','/p/besu-bluetooth-speaker-table','Speaker cerdas yang dilengkapi dengan bluetooth, wireless charging, 6600 mAh battery bertahan hingga 7 jam, dan dilengkapi 2 port USB charging.','/files/product-contents/9d924352-2700-4371-ab3c-aa1c755a460a/9d924352-2700-4371-ab3c-aa1c755a460a_product-content-image_2024-11-25-131322.jpg','developer@system','developer@system','2024-11-25 06:13:22','2024-11-25 06:13:22',1),('9d9243e9-f977-43d2-b3ca-3d24319e5bea','9d92188c-5b2f-4264-a521-69c753f53f2d','Air360 - Hepa 13 Filter Air Purifier','air360-hepa-13-filter-air-purifier','/p/air360-hepa-13-filter-air-purifier','Air360 penyaring udara dengan filter Hepa 13, membersihkan udara secara ekstra dan memiliki banyak fitur seperti anti virus, anti bakteri, dan lainnya.','/files/product-contents/9d9243e9-f977-43d2-b3ca-3d24319e5bea/9d9243e9-f977-43d2-b3ca-3d24319e5bea_product-content-image_2024-11-25-131501.jpg','developer@system','developer@system','2024-11-25 06:15:01','2024-11-25 06:15:01',1),('9d92474d-617a-4245-b80f-34520752913c','9d921a55-b427-4326-9430-58538a3b8e68','Dehumidifier UDH1500 Serap Air dan Penyerap Kelembaban Udara','dehumidifier-udh1500-serap-air-dan-penyerap-kelembaban-udara','/p/dehumidifier-udh1500-serap-air-dan-penyerap-kelembaban-udara','Dehumidifier hemat listrik (hanya 40 watt) dan tidak bising, dapat menyerap kelembaban udara secara maksimal dengan jangkauan up to 20 m².','/files/product-contents/9d92474d-617a-4245-b80f-34520752913c/9d92474d-617a-4245-b80f-34520752913c_product-content-image_2024-11-25-132430.webp','developer@system','developer@system','2024-11-25 06:24:30','2024-11-25 06:24:30',1);
/*!40000 ALTER TABLE `product_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_category_first_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_brand_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `discount_persentage` decimal(5,2) NOT NULL DEFAULT '0.00',
  `discount_value` decimal(15,2) NOT NULL DEFAULT '0.00',
  `nett_price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `weight` decimal(10,2) DEFAULT '0.00',
  `rating` decimal(4,2) DEFAULT '0.00',
  `sold_qty` decimal(10,2) DEFAULT '0.00',
  `availability` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ordinal` smallint unsigned DEFAULT '0',
  `is_new` tinyint(1) DEFAULT '1',
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `products_product_category_first_id_foreign` (`product_category_first_id`),
  KEY `products_availability_index` (`availability`),
  KEY `products_created_by_index` (`created_by`),
  KEY `products_updated_by_index` (`updated_by`),
  KEY `products_product_brand_id_foreign` (`product_brand_id`),
  CONSTRAINT `products_product_brand_id_foreign` FOREIGN KEY (`product_brand_id`) REFERENCES `product_brands` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `products_product_category_first_id_foreign` FOREIGN KEY (`product_category_first_id`) REFERENCES `product_category_firsts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('9d8c8235-70a3-4269-b59e-62a371e94731','9d8c8235-70a3-4269-b59e-62a371e94733','9d8c8235-70a3-4269-b59e-62a371e94732','produk proquip 1',0.00,0.00,0.00,0.00,0.00,0.00,0.00,'in-stock',NULL,'developer@system','developer@system','2024-11-22 09:36:27','2024-11-22 09:36:27',0,0,1),('9d8c824c-07fb-4c33-a1e8-3444ab11','9d8c824c-07fb-4c33-a1e8-3444ab0bd33','9d8c8235-70a3-4269-b59e-62a371e94711','Produk serva 1',0.00,0.00,0.00,0.00,0.00,0.00,0.00,'in-stock',NULL,NULL,NULL,NULL,NULL,0,1,1),('9d92188c-5b2f-4264-a521-69c753f53f2d','9d91f131-e42a-4153-8f7e-65951df0ca9b','9d8c8235-70a3-4269-b59e-62a371e9400','produk brand 1 - Air360',1890000.00,0.00,0.00,1890000.00,7000.00,4.95,724.00,'in-stock','/files/images/products/product_image-air360_2024-11-25-111346.jpg','developer@system','developer@system','2024-11-25 04:13:46','2024-11-26 07:57:03',0,0,1),('9d921a55-b427-4326-9430-58538a3b8e68','9d91f131-e42a-4153-8f7e-65951df0ca9b','9d8c8235-70a3-4269-b59e-62a371e9400','produk brand 1 - UDH1500',690000.00,0.00,0.00,690000.00,3000.00,4.90,1640.00,'in-stock','/files/images/products/product_image-dehumidifier_udh1500_2024-11-25-111846.webp','developer@system','developer@system','2024-11-25 04:18:46','2024-11-30 00:27:38',0,0,1),('9d921a9d-b199-4162-a45b-1f550129a4d8','9d91f145-19ee-4f94-8fae-cf0644d8ff4d','9d8c8235-70a3-4269-b59e-62a371e9456','produk brand 2 - Besu',3790000.00,20.00,758.00,3032000.00,5000.00,4.95,87.00,'in-stock','/files/images/products/product_image-besu_2024-11-25-111933.jpg','developer@system','developer@system','2024-11-25 04:19:33','2024-11-26 07:56:44',0,0,1),('ab85b48b-5a0f-4f4f-b6dd-53cbaf0f78f2','9d91f131-e42a-4153-8f7e-65951df0ca9b','9d8c8235-70a3-4269-b59e-62a371e94732','Produk proquip 2',200000.00,0.00,0.00,0.00,0.00,0.00,0.00,'out-of-stock','https://example.com/images/product_c.png','admin','admin','2025-01-13 04:24:27','2025-01-13 04:24:27',0,1,1),('cd716b05-b5c2-41d3-899b-ccfb5af11be8','9d91f131-e42a-4153-8f7e-65951df0ca9b','9d8c8235-70a3-4269-b59e-62a371e94732','Produk proquip 3',150000.00,0.00,0.00,0.00,0.00,0.00,0.00,'in-stock','https://example.com/images/product_b.png','admin','admin','2025-01-13 04:24:27','2025-01-13 04:24:27',0,1,1),('f35efb65-a7c6-4d0e-bdb9-7a05c5285583','9d91f131-e42a-4153-8f7e-65951df0ca9b','9d8c8235-70a3-4269-b59e-62a371e94732','Produk proquip 4',100000.00,0.00,0.00,0.00,0.00,0.00,0.00,'in-stock','https://example.com/images/product_a.png','admin','admin','2025-01-13 04:24:27','2025-01-13 04:24:27',0,1,1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_cart_detail`
--

DROP TABLE IF EXISTS `sales_cart_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_cart_detail` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales_cart_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selling_price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `discount_persentage` decimal(5,2) NOT NULL DEFAULT '0.00',
  `discount_value` decimal(15,2) NOT NULL DEFAULT '0.00',
  `nett_price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `qty` decimal(8,2) NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) DEFAULT '0.00',
  `weight` decimal(10,2) DEFAULT '0.00',
  `subtotal_weight` decimal(10,2) DEFAULT '0.00',
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sales_cart_detail_sales_cart_id_foreign` (`sales_cart_id`),
  KEY `sales_cart_detail_product_id_foreign` (`product_id`),
  KEY `sales_cart_detail_created_by_index` (`created_by`),
  KEY `sales_cart_detail_updated_by_index` (`updated_by`),
  CONSTRAINT `sales_cart_detail_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sales_cart_detail_sales_cart_id_foreign` FOREIGN KEY (`sales_cart_id`) REFERENCES `sales_carts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_cart_detail`
--

LOCK TABLES `sales_cart_detail` WRITE;
/*!40000 ALTER TABLE `sales_cart_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_cart_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_cart_shippings`
--

DROP TABLE IF EXISTS `sales_cart_shippings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_cart_shippings` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales_cart_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `province_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subdistrict_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subdistrict_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expedition_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expedition_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expedition_service` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expedition_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expedition_etd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expedition_note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_weight` decimal(5,2) NOT NULL DEFAULT '0.00',
  `shipping_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sales_cart_shippings_sales_cart_id_foreign` (`sales_cart_id`),
  KEY `sales_cart_shippings_created_by_index` (`created_by`),
  KEY `sales_cart_shippings_updated_by_index` (`updated_by`),
  CONSTRAINT `sales_cart_shippings_sales_cart_id_foreign` FOREIGN KEY (`sales_cart_id`) REFERENCES `sales_carts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_cart_shippings`
--

LOCK TABLES `sales_cart_shippings` WRITE;
/*!40000 ALTER TABLE `sales_cart_shippings` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_cart_shippings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_carts`
--

DROP TABLE IF EXISTS `sales_carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_carts` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sales_carts_session_id_foreign` (`session_id`),
  KEY `sales_carts_date_index` (`date`),
  KEY `sales_carts_created_by_index` (`created_by`),
  KEY `sales_carts_updated_by_index` (`updated_by`),
  CONSTRAINT `sales_carts_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_carts`
--

LOCK TABLES `sales_carts` WRITE;
/*!40000 ALTER TABLE `sales_carts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_invoices`
--

DROP TABLE IF EXISTS `sales_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_invoices` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales_order_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL,
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sales_invoices_sales_order_id_foreign` (`sales_order_id`),
  KEY `sales_invoices_date_index` (`date`),
  KEY `sales_invoices_number_index` (`number`),
  KEY `sales_invoices_created_by_index` (`created_by`),
  KEY `sales_invoices_updated_by_index` (`updated_by`),
  CONSTRAINT `sales_invoices_sales_order_id_foreign` FOREIGN KEY (`sales_order_id`) REFERENCES `sales_orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_invoices`
--

LOCK TABLES `sales_invoices` WRITE;
/*!40000 ALTER TABLE `sales_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_order_detail`
--

DROP TABLE IF EXISTS `sales_order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_order_detail` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales_order_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selling_price` decimal(15,2) NOT NULL,
  `discount_persentage` decimal(5,2) NOT NULL,
  `discount_value` decimal(15,2) NOT NULL,
  `nett_price` decimal(15,2) NOT NULL,
  `qty` decimal(8,2) NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) DEFAULT '0.00',
  `weight` decimal(10,2) DEFAULT '0.00',
  `subtotal_weight` decimal(10,2) DEFAULT '0.00',
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sales_order_detail_sales_order_id_foreign` (`sales_order_id`),
  KEY `sales_order_detail_product_id_foreign` (`product_id`),
  KEY `sales_order_detail_created_by_index` (`created_by`),
  KEY `sales_order_detail_updated_by_index` (`updated_by`),
  CONSTRAINT `sales_order_detail_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sales_order_detail_sales_order_id_foreign` FOREIGN KEY (`sales_order_id`) REFERENCES `sales_orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_order_detail`
--

LOCK TABLES `sales_order_detail` WRITE;
/*!40000 ALTER TABLE `sales_order_detail` DISABLE KEYS */;
INSERT INTO `sales_order_detail` VALUES ('9da89668-1fe9-464d-9cb4-3dbc3c23a358','9da89668-1939-4fc8-a80e-7597262307f8','9d8c8235-70a3-4269-b59e-62a371e94731',218500.00,0.00,0.00,218500.00,1.00,218500.00,0.00,0.00,NULL,NULL,'2024-12-06 08:33:54','2024-12-06 08:33:54',1),('9da89685-a690-4e78-8325-24ae27836836','9da89685-a2ef-44fb-9312-7195cd1b3096','9d8c8235-70a3-4269-b59e-62a371e94731',218500.00,0.00,0.00,218500.00,1.00,218500.00,0.00,0.00,NULL,NULL,'2024-12-06 08:34:14','2024-12-06 08:34:14',1),('9da89723-605b-441a-96b8-ce9c346fb848','9da89723-5ce7-4553-bda1-3010bdcf1022','9d8c8235-70a3-4269-b59e-62a371e94731',218500.00,0.00,0.00,218500.00,1.00,218500.00,0.00,0.00,NULL,NULL,'2024-12-06 08:35:57','2024-12-06 08:35:57',1),('9da8981e-18de-4115-8e83-bb3ffdbc05e2','9da8981e-151b-4439-8e87-57a1b1fe51a6','9d8c8235-70a3-4269-b59e-62a371e94731',218500.00,0.00,0.00,218500.00,1.00,218500.00,0.00,0.00,NULL,NULL,'2024-12-06 08:38:41','2024-12-06 08:38:41',1),('9da8985e-9f99-4569-9ef3-4562ca029d54','9da8985e-9bca-4c65-819a-e313b77a21ff','9d8c8235-70a3-4269-b59e-62a371e94731',218500.00,0.00,0.00,218500.00,1.00,218500.00,0.00,0.00,NULL,NULL,'2024-12-06 08:39:24','2024-12-06 08:39:24',1),('9da8986f-5e2c-464c-a415-1a4a346186cb','9da8986f-5a9a-48d0-9d80-eababb4746c2','9d8c8235-70a3-4269-b59e-62a371e94731',218500.00,0.00,0.00,218500.00,1.00,218500.00,0.00,0.00,NULL,NULL,'2024-12-06 08:39:35','2024-12-06 08:39:35',1),('9da898ac-4eef-4acf-9b86-875997006f59','9da898ac-4959-4980-8efa-677f7fb5a3f6','9d8c8235-70a3-4269-b59e-62a371e94731',218500.00,0.00,0.00,218500.00,1.00,218500.00,0.00,0.00,NULL,NULL,'2024-12-06 08:40:14','2024-12-06 08:40:14',1),('9da898bf-3f5f-472f-ba82-d86503fe89c7','9da898bf-3b80-4ace-a510-f66f8669905c','9d8c8235-70a3-4269-b59e-62a371e94731',218500.00,0.00,0.00,218500.00,1.00,218500.00,0.00,0.00,NULL,NULL,'2024-12-06 08:40:27','2024-12-06 08:40:27',1),('9da8996f-b5f3-43b1-90ae-1a963b4ebc19','9da8996f-b223-49fe-8446-0a84a5fa0dc9','9d8c8235-70a3-4269-b59e-62a371e94731',218500.00,0.00,0.00,218500.00,1.00,218500.00,0.00,0.00,NULL,NULL,'2024-12-06 08:42:23','2024-12-06 08:42:23',1),('9da89990-81ef-4646-ad8d-b2f15509f469','9da89990-7e4b-4063-8b31-17745e948abc','9d8c8235-70a3-4269-b59e-62a371e94731',218500.00,0.00,0.00,218500.00,1.00,218500.00,0.00,0.00,NULL,NULL,'2024-12-06 08:42:44','2024-12-06 08:42:44',1),('9da899b9-d3c1-4ff6-b2f1-e72cef883b42','9da899b9-d007-4382-9ad6-55c9f74a884d','9d8c8235-70a3-4269-b59e-62a371e94731',218500.00,0.00,0.00,218500.00,1.00,218500.00,0.00,0.00,NULL,NULL,'2024-12-06 08:43:11','2024-12-06 08:43:11',1),('9da899e3-3abe-42f9-9a0a-36f40fe73f01','9da899e3-3753-40ab-9012-1d872b5416df','9d8c8235-70a3-4269-b59e-62a371e94731',218500.00,0.00,0.00,218500.00,1.00,218500.00,0.00,0.00,NULL,NULL,'2024-12-06 08:43:38','2024-12-06 08:43:38',1),('9da899f7-f09a-4d55-ac4b-1ad4598fe754','9da899f7-de30-4c0f-ab85-bbd046f4f0d2','9d8c8235-70a3-4269-b59e-62a371e94731',218500.00,0.00,0.00,218500.00,1.00,218500.00,0.00,0.00,NULL,NULL,'2024-12-06 08:43:52','2024-12-06 08:43:52',1),('9da89a16-ec4e-4385-b68c-a9f96d34cb74','9da89a16-e8ee-434a-a1a6-89aa8bf76916','9d8c8235-70a3-4269-b59e-62a371e94731',218500.00,0.00,0.00,218500.00,1.00,218500.00,0.00,0.00,NULL,NULL,'2024-12-06 08:44:12','2024-12-06 08:44:12',1),('9da89a9d-84c4-47d1-b1f4-34df067afcb1','9da89a9d-7f02-47f5-b130-dbc3ac4bf8b3','9d8c8235-70a3-4269-b59e-62a371e94731',218500.00,0.00,0.00,218500.00,1.00,218500.00,0.00,0.00,NULL,NULL,'2024-12-06 08:45:40','2024-12-06 08:45:40',1),('9da89c57-e007-41bf-8f3d-775237b5fb19','9da89c57-dc5c-47a3-9b53-418ad9c9da30','9d8c8235-70a3-4269-b59e-62a371e94731',218500.00,0.00,0.00,218500.00,1.00,218500.00,0.00,0.00,NULL,NULL,'2024-12-06 08:50:30','2024-12-06 08:50:30',1),('9da89d6e-161f-485c-8125-a9eee1b98325','9da89d6e-1298-47c0-9730-a6dece8a6410','9d8c8235-70a3-4269-b59e-62a371e94731',218500.00,0.00,0.00,218500.00,1.00,218500.00,0.00,0.00,NULL,NULL,'2024-12-06 08:53:33','2024-12-06 08:53:33',1),('9da89e8a-2304-4838-9f1a-4157e3efc741','9da89e8a-1d2a-4530-89c3-840e65b62c05','9d8c8235-70a3-4269-b59e-62a371e94731',218500.00,0.00,0.00,218500.00,1.00,218500.00,0.00,0.00,NULL,NULL,'2024-12-06 08:56:39','2024-12-06 08:56:39',1),('9da8a242-7ef1-4e05-b381-b734a365804f','9da8a242-78be-4161-b39c-2e20d02bc671','9d8c8235-70a3-4269-b59e-62a371e94731',218500.00,0.00,0.00,218500.00,1.00,218500.00,0.00,0.00,NULL,NULL,'2024-12-06 09:07:03','2024-12-06 09:07:03',1),('9da8a2fe-914c-4e37-a4b4-a180fc8346d5','9da8a2fe-8d05-462d-94ea-a0d4c00508e8','9d8c8235-70a3-4269-b59e-62a371e94731',218500.00,0.00,0.00,218500.00,1.00,218500.00,0.00,0.00,NULL,NULL,'2024-12-06 09:09:06','2024-12-06 09:09:06',1),('9da8a352-f13a-4ab1-b3c7-18bf7d97ee16','9da8a352-ed04-470d-863b-3c83bd4736a2','9d8c8235-70a3-4269-b59e-62a371e94731',218500.00,0.00,0.00,218500.00,1.00,218500.00,0.00,0.00,NULL,NULL,'2024-12-06 09:10:01','2024-12-06 09:10:01',1),('9da8a384-07f4-4796-8c72-79f736e9694b','9da8a383-f3ae-46e9-8748-47241f193875','9d8c8235-70a3-4269-b59e-62a371e94731',218500.00,0.00,0.00,218500.00,1.00,218500.00,0.00,0.00,NULL,NULL,'2024-12-06 09:10:34','2024-12-06 09:10:34',1),('9da8a4ad-1198-42ff-8fc1-c9888e81a172','9da8a4ad-0e0b-453e-ab4b-5490f3c9c92a','9d8c8235-70a3-4269-b59e-62a371e94731',218500.00,0.00,0.00,218500.00,1.00,218500.00,0.00,0.00,NULL,NULL,'2024-12-06 09:13:48','2024-12-06 09:13:48',1),('9da8a51e-bf31-48ae-aa4b-f68c968b8c61','9da8a51e-bafe-4273-9b77-77dc08ce848d','9d8c8235-70a3-4269-b59e-62a371e94731',218500.00,0.00,0.00,218500.00,1.00,218500.00,0.00,0.00,NULL,NULL,'2024-12-06 09:15:03','2024-12-06 09:15:03',1),('9da8a5a6-350c-4419-809b-d312916cf7b6','9da8a5a6-30a1-4faf-94b4-36e1dcff7e3b','9d8c8235-70a3-4269-b59e-62a371e94731',218500.00,0.00,0.00,218500.00,1.00,218500.00,0.00,0.00,NULL,NULL,'2024-12-06 09:16:31','2024-12-06 09:16:31',1),('9da8a6b9-1eed-47d7-80e0-64b7a5dab758','9da8a6b9-1aea-479e-8e14-dbae935472b9','9d8c8235-70a3-4269-b59e-62a371e94731',218500.00,0.00,0.00,218500.00,1.00,218500.00,0.00,0.00,NULL,NULL,'2024-12-06 09:19:32','2024-12-06 09:19:32',1),('9da8a6cd-4c1f-4f02-89cb-e03d3c214dec','9da8a6cd-4972-43ae-a70b-c3e93e2dc2b4','9d8c8235-70a3-4269-b59e-62a371e94731',218500.00,0.00,0.00,218500.00,1.00,218500.00,0.00,0.00,NULL,NULL,'2024-12-06 09:19:45','2024-12-06 09:19:45',1),('9da8a756-1722-4854-b681-7c156803d537','9da8a756-139d-470c-b486-72cf5664764c','9d8c8235-70a3-4269-b59e-62a371e94731',218500.00,0.00,0.00,218500.00,1.00,218500.00,0.00,0.00,NULL,NULL,'2024-12-06 09:21:15','2024-12-06 09:21:15',1),('9da8a777-721e-42ef-aa3e-64bdfaef3047','9da8a777-6cf1-4674-aa11-1ef49d8c36ff','9d8c8235-70a3-4269-b59e-62a371e94731',218500.00,0.00,0.00,218500.00,1.00,218500.00,0.00,0.00,NULL,NULL,'2024-12-06 09:21:36','2024-12-06 09:21:36',1),('9da8abc4-bff7-4468-810d-def091d4e88c','9da8abc4-ba35-4a83-8032-0a06527b9162','9d8c8235-70a3-4269-b59e-62a371e94731',218500.00,0.00,0.00,218500.00,1.00,218500.00,0.00,0.00,NULL,NULL,'2024-12-06 09:33:38','2024-12-06 09:33:38',1),('9da8ad9d-75f4-4604-a444-3f625c6c85bd','9da8ad9d-6317-42d3-a044-acde3f61c3e4','9d8c8235-70a3-4269-b59e-62a371e94731',66500.00,0.00,0.00,66500.00,1.00,66500.00,0.00,0.00,NULL,NULL,'2024-12-06 09:38:48','2024-12-06 09:38:48',1),('9da8ae28-5dc9-4d07-8998-015a84299554','9da8ae28-5a20-473b-95e7-54b0e7e8a0be','9d8c8235-70a3-4269-b59e-62a371e94731',218500.00,0.00,0.00,218500.00,1.00,218500.00,0.00,0.00,NULL,NULL,'2024-12-06 09:40:19','2024-12-06 09:40:19',1),('9da8ae35-5179-4c85-bb5a-7dbe9972f537','9da8ae35-4de7-4069-be10-3d1e6b28e8ac','9d8c8235-70a3-4269-b59e-62a371e94731',218500.00,0.00,0.00,218500.00,1.00,218500.00,0.00,0.00,NULL,NULL,'2024-12-06 09:40:27','2024-12-06 09:40:27',1),('9da8ae4a-179d-4e01-a0cd-53b33c75fc6a','9da8ae4a-143c-4c9a-9e8a-4e754854a1d7','9d8c8235-70a3-4269-b59e-62a371e94731',218500.00,0.00,0.00,218500.00,1.00,218500.00,0.00,0.00,NULL,NULL,'2024-12-06 09:40:41','2024-12-06 09:40:41',1),('9da8aeb5-477a-47ad-be81-5fa441d0a775','9da8aeb5-439b-4910-8d9b-ac20d7beaf7d','9d8c8235-70a3-4269-b59e-62a371e94731',218500.00,0.00,0.00,218500.00,1.00,218500.00,0.00,0.00,NULL,NULL,'2024-12-06 09:41:51','2024-12-06 09:41:51',1),('9da8af1b-fc70-41fc-8040-d16eb2895ce1','9da8af1b-f8a5-4331-a160-8bf89ba08689','9d8c8235-70a3-4269-b59e-62a371e94731',218500.00,0.00,0.00,218500.00,1.00,218500.00,0.00,0.00,NULL,NULL,'2024-12-06 09:42:59','2024-12-06 09:42:59',1),('9da8afa8-004f-4a7b-9bcd-bd621156a8ee','9da8afa7-fcc6-4fa3-9881-d5db7c8524d3','9d8c8235-70a3-4269-b59e-62a371e94731',218500.00,0.00,0.00,218500.00,1.00,218500.00,0.00,0.00,NULL,NULL,'2024-12-06 09:44:30','2024-12-06 09:44:30',1),('9da8b050-bff3-4542-85ea-310d5fdec951','9da8b050-ba68-43b1-9e46-818b182dc4dd','9d8c8235-70a3-4269-b59e-62a371e94731',218500.00,0.00,0.00,218500.00,1.00,218500.00,0.00,0.00,NULL,NULL,'2024-12-06 09:46:21','2024-12-06 09:46:21',1),('9da8b072-f95d-45c2-810e-bab7d94ff6bc','9da8b072-f60d-40f3-b6f5-4922a8e386b6','9d8c8235-70a3-4269-b59e-62a371e94731',218500.00,0.00,0.00,218500.00,1.00,218500.00,0.00,0.00,NULL,NULL,'2024-12-06 09:46:43','2024-12-06 09:46:43',1),('9da8b13f-47e6-4166-9d10-6b65090676cf','9da8b13f-4473-46c0-807a-6428cb9c96bb','9d8c8235-70a3-4269-b59e-62a371e94731',218500.00,0.00,0.00,218500.00,1.00,218500.00,0.00,0.00,NULL,NULL,'2024-12-06 09:48:57','2024-12-06 09:48:57',1),('9da8b178-3316-4a36-ab38-442b8ce8acc3','9da8b178-2bb5-4036-a670-43a820ebd6cb','9d8c8235-70a3-4269-b59e-62a371e94731',218500.00,0.00,0.00,218500.00,1.00,218500.00,0.00,0.00,NULL,NULL,'2024-12-06 09:49:35','2024-12-06 09:49:35',1),('9da8ba25-9a59-40ae-b266-1146b75fa65f','9da8ba25-4965-4741-bd5a-ed629567a39e','9d8c8235-70a3-4269-b59e-62a371e94731',218500.00,0.00,0.00,218500.00,1.00,218500.00,0.00,0.00,NULL,NULL,'2024-12-06 10:13:50','2024-12-06 10:13:50',1),('9dad01b7-1c05-4122-bb53-5563836a0287','9dad01b7-17a1-4ce1-99c9-8071af2d2448','9d8c8235-70a3-4269-b59e-62a371e94731',299000.00,0.00,0.00,299000.00,1.00,299000.00,0.00,0.00,NULL,NULL,'2024-12-08 13:17:16','2024-12-08 13:17:16',1),('9dad136a-4e68-4432-b43d-ae21650432ef','9dad1369-3b91-487a-be7d-7c67fb3df1b0','9d8c8235-70a3-4269-b59e-62a371e94731',299000.00,0.00,0.00,299000.00,1.00,299000.00,0.00,0.00,NULL,NULL,'2024-12-08 14:06:46','2024-12-08 14:06:46',1),('9dad1652-fd9b-44c6-92b2-ebfeb0628685','9dad1652-f9c1-4134-822e-5048889e1170','9d8c8235-70a3-4269-b59e-62a371e94731',299000.00,0.00,0.00,299000.00,1.00,299000.00,0.00,0.00,NULL,NULL,'2024-12-08 14:14:54','2024-12-08 14:14:54',1),('9dae3834-4870-48b5-af91-8f35ad960192','9dae3834-1d61-4f74-a827-fc222009f223','9d8c8235-70a3-4269-b59e-62a371e94731',207000.00,0.00,0.00,207000.00,1.00,207000.00,0.00,0.00,NULL,NULL,'2024-12-09 03:45:28','2024-12-09 03:45:28',1),('9db019a8-9152-4d53-9bcf-4999e7354478','9db019a8-3ed6-47c6-8b25-e1e9ce07a841','9d8c8235-70a3-4269-b59e-62a371e94731',425500.00,0.00,0.00,425500.00,1.00,425500.00,0.00,0.00,NULL,NULL,'2024-12-10 02:11:42','2024-12-10 02:11:42',1),('9db025ec-6fca-4635-8b89-59468398f02f','9db025ec-6b2e-45fe-a10e-aa6599e720ce','9d8c8235-70a3-4269-b59e-62a371e94731',425500.00,0.00,0.00,425500.00,1.00,425500.00,0.00,0.00,NULL,NULL,'2024-12-10 02:46:00','2024-12-10 02:46:00',1),('9db02812-934c-4294-8e91-a2dda2a1b046','9db02812-8fe3-46b6-a183-797e00879040','9d8c8235-70a3-4269-b59e-62a371e94731',425500.00,0.00,0.00,425500.00,1.00,425500.00,0.00,0.00,NULL,NULL,'2024-12-10 02:52:01','2024-12-10 02:52:01',1),('9db031d4-553a-405d-9aa8-75e03b28b642','9db031d4-511f-4d32-bbbb-210169fd5ac0','9d8c8235-70a3-4269-b59e-62a371e94731',425500.00,0.00,0.00,425500.00,1.00,425500.00,0.00,0.00,NULL,NULL,'2024-12-10 03:19:18','2024-12-10 03:19:18',1),('9db0996a-1439-4c93-a18a-59262b2d181c','9db0996a-0ae9-4140-9964-234b6bc35d42','9d92188c-5b2f-4264-a521-69c753f53f2d',1890000.00,0.00,0.00,1890000.00,45.00,85050000.00,7000.00,315000.00,NULL,NULL,'2024-12-10 08:08:56','2024-12-10 08:08:56',1),('9db0996a-143f-4f93-89ad-4900c3242be8','9db0996a-0ae9-4140-9964-234b6bc35d42','9d8c8235-70a3-4269-b59e-62a371e94731',4197500.00,0.00,0.00,4197500.00,1.00,4197500.00,0.00,0.00,NULL,NULL,'2024-12-10 08:08:56','2024-12-10 08:08:56',1),('9db0b844-1f4a-431b-b45a-79dd9a4d4d1f','9db0b844-1937-4151-a7eb-48cf62292724','9d92188c-5b2f-4264-a521-69c753f53f2d',1890000.00,0.00,0.00,1890000.00,1.00,1890000.00,7000.00,7000.00,NULL,NULL,'2024-12-10 09:35:12','2024-12-10 09:35:12',1),('9db0b844-1f58-49c3-a4af-bddc37a3b265','9db0b844-1937-4151-a7eb-48cf62292724','9d8c8235-70a3-4269-b59e-62a371e94731',241500.00,0.00,0.00,241500.00,1.00,241500.00,0.00,0.00,NULL,NULL,'2024-12-10 09:35:12','2024-12-10 09:35:12',1),('9db0b8ef-9387-4388-98dc-1bba1404df0f','9db0b8ef-8f9f-4ef2-9c63-4de663e12f98','9d92188c-5b2f-4264-a521-69c753f53f2d',1890000.00,0.00,0.00,1890000.00,1.00,1890000.00,7000.00,7000.00,NULL,NULL,'2024-12-10 09:37:05','2024-12-10 09:37:05',1),('9db0b8ef-938f-41b0-9202-b713df8c19c6','9db0b8ef-8f9f-4ef2-9c63-4de663e12f98','9d8c8235-70a3-4269-b59e-62a371e94731',241500.00,0.00,0.00,241500.00,1.00,241500.00,0.00,0.00,NULL,NULL,'2024-12-10 09:37:05','2024-12-10 09:37:05',1);
/*!40000 ALTER TABLE `sales_order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_orders`
--

DROP TABLE IF EXISTS `sales_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_orders` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `snap_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `snap_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` timestamp NOT NULL,
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_amount` decimal(15,2) DEFAULT '0.00',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ordered',
  `fraud_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'identifying',
  `is_processed` tinyint(1) DEFAULT '0',
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sales_orders_employee_id_foreign` (`employee_id`),
  KEY `sales_orders_customer_id_foreign` (`customer_id`),
  KEY `sales_orders_snap_url_index` (`snap_url`),
  KEY `sales_orders_snap_token_index` (`snap_token`),
  KEY `sales_orders_date_index` (`date`),
  KEY `sales_orders_number_index` (`number`),
  KEY `sales_orders_created_by_index` (`created_by`),
  KEY `sales_orders_updated_by_index` (`updated_by`),
  KEY `sales_orders_status_index` (`status`),
  KEY `fraud_status` (`fraud_status`),
  CONSTRAINT `sales_orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sales_orders_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_orders`
--

LOCK TABLES `sales_orders` WRITE;
/*!40000 ALTER TABLE `sales_orders` DISABLE KEYS */;
INSERT INTO `sales_orders` VALUES ('9da894b9-3b83-4676-ac0d-701e3cbf000d',NULL,'9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 08:29:12','testso-20241206-638735',0.00,NULL,NULL,NULL,'2024-12-06 08:29:12','2024-12-06 08:29:12','pending','identifying',0,1),('9da894ed-1750-4acd-b37c-eb4cff2590ec',NULL,'9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 08:29:46','testso-20241206-541406',0.00,NULL,NULL,NULL,'2024-12-06 08:29:46','2024-12-06 08:29:46','pending','identifying',0,1),('9da89500-f3e2-43b5-8d8a-c349bd671520',NULL,'9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 08:29:59','testso-20241206-274898',0.00,NULL,NULL,NULL,'2024-12-06 08:29:59','2024-12-06 08:29:59','pending','identifying',0,1),('9da89515-081d-4a0e-9a9e-0c50e5c81764',NULL,'9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 08:30:12','testso-20241206-549633',0.00,NULL,NULL,NULL,'2024-12-06 08:30:12','2024-12-06 08:30:12','pending','identifying',0,1),('9da89668-1939-4fc8-a80e-7597262307f8',NULL,'9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 08:33:54','testso-20241206-491191',0.00,NULL,NULL,NULL,'2024-12-06 08:33:54','2024-12-06 08:33:54','pending','identifying',0,1),('9da89685-a2ef-44fb-9312-7195cd1b3096',NULL,'9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 08:34:14','testso-20241206-415213',0.00,NULL,NULL,NULL,'2024-12-06 08:34:14','2024-12-06 08:34:14','pending','identifying',0,1),('9da89723-5ce7-4553-bda1-3010bdcf1022',NULL,'9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 08:35:57','testso-20241206-668547',0.00,NULL,NULL,NULL,'2024-12-06 08:35:57','2024-12-06 08:35:57','pending','identifying',0,1),('9da8981e-151b-4439-8e87-57a1b1fe51a6',NULL,'9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 08:38:41','testso-20241206-969505',0.00,NULL,NULL,NULL,'2024-12-06 08:38:41','2024-12-06 08:38:41','pending','identifying',0,1),('9da8985e-9bca-4c65-819a-e313b77a21ff',NULL,'9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 08:39:24','testso-20241206-831706',0.00,NULL,NULL,NULL,'2024-12-06 08:39:24','2024-12-06 08:39:24','pending','identifying',0,1),('9da8986f-5a9a-48d0-9d80-eababb4746c2',NULL,'9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 08:39:35','testso-20241206-504737',0.00,NULL,NULL,NULL,'2024-12-06 08:39:35','2024-12-06 08:39:35','pending','identifying',0,1),('9da898ac-4959-4980-8efa-677f7fb5a3f6',NULL,'9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 08:40:14','testso-20241206-658305',0.00,NULL,NULL,NULL,'2024-12-06 08:40:14','2024-12-06 08:40:14','pending','identifying',0,1),('9da898bf-3b80-4ace-a510-f66f8669905c',NULL,'9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 08:40:27','testso-20241206-643684',14280000.00,NULL,NULL,NULL,'2024-12-06 08:40:27','2024-12-06 08:40:27','pending','identifying',0,1),('9da8996f-b223-49fe-8446-0a84a5fa0dc9',NULL,'9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 08:42:22','testso-20241206-369682',14280000.00,NULL,NULL,NULL,'2024-12-06 08:42:23','2024-12-06 08:42:23','pending','identifying',0,1),('9da89990-7e4b-4063-8b31-17745e948abc',NULL,'9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 08:42:44','testso-20241206-232153',14280000.00,NULL,NULL,NULL,'2024-12-06 08:42:44','2024-12-06 08:42:44','pending','identifying',0,1),('9da899b9-d007-4382-9ad6-55c9f74a884d',NULL,'9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 08:43:11','testso-20241206-535882',14280000.00,NULL,NULL,NULL,'2024-12-06 08:43:11','2024-12-06 08:43:11','pending','identifying',0,1),('9da899e3-3753-40ab-9012-1d872b5416df',NULL,'9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 08:43:38','testso-20241206-751316',14280000.00,NULL,NULL,NULL,'2024-12-06 08:43:38','2024-12-06 08:43:38','pending','identifying',0,1),('9da899f7-de30-4c0f-ab85-bbd046f4f0d2',NULL,'9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 08:43:52','testso-20241206-502888',14280000.00,NULL,NULL,NULL,'2024-12-06 08:43:52','2024-12-06 08:43:52','pending','identifying',0,1),('9da89a16-e8ee-434a-a1a6-89aa8bf76916',NULL,'9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 08:44:12','testso-20241206-324859',14280000.00,NULL,NULL,NULL,'2024-12-06 08:44:12','2024-12-06 08:44:12','pending','identifying',0,1),('9da89a9d-7f02-47f5-b130-dbc3ac4bf8b3',NULL,'9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 08:45:40','testso-20241206-429979',14280000.00,NULL,NULL,NULL,'2024-12-06 08:45:40','2024-12-06 08:45:40','pending','identifying',0,1),('9da89c57-dc5c-47a3-9b53-418ad9c9da30',NULL,'9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 08:50:30','testso-20241206-434633',14280000.00,NULL,NULL,NULL,'2024-12-06 08:50:30','2024-12-06 08:50:30','pending','identifying',0,1),('9da89d6e-1298-47c0-9730-a6dece8a6410',NULL,'9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 08:53:33','testso-20241206-561941',14280000.00,NULL,NULL,NULL,'2024-12-06 08:53:33','2024-12-06 08:53:33','pending','identifying',0,1),('9da89e8a-1d2a-4530-89c3-840e65b62c05',NULL,'9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 08:56:39','testso-20241206-407604',14280000.00,NULL,NULL,NULL,'2024-12-06 08:56:39','2024-12-06 08:56:39','pending','identifying',0,1),('9da8a242-78be-4161-b39c-2e20d02bc671',NULL,'9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 09:07:03','testso-20241206-787829',14280000.00,NULL,NULL,NULL,'2024-12-06 09:07:03','2024-12-06 09:07:03','pending','identifying',0,1),('9da8a2fe-8d05-462d-94ea-a0d4c00508e8',NULL,'9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 09:09:06','testso-20241206-877539',14280000.00,NULL,NULL,NULL,'2024-12-06 09:09:06','2024-12-06 09:09:06','pending','identifying',0,1),('9da8a352-ed04-470d-863b-3c83bd4736a2',NULL,'9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 09:10:01','testso-20241206-137862',14280000.00,NULL,NULL,NULL,'2024-12-06 09:10:01','2024-12-06 09:10:01','pending','identifying',0,1),('9da8a383-f3ae-46e9-8748-47241f193875',NULL,'9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 09:10:33','testso-20241206-898882',14280000.00,NULL,NULL,NULL,'2024-12-06 09:10:34','2024-12-06 09:10:34','pending','identifying',0,1),('9da8a4ad-0e0b-453e-ab4b-5490f3c9c92a',NULL,'9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 09:13:48','testso-20241206-878055',14280000.00,NULL,NULL,NULL,'2024-12-06 09:13:48','2024-12-06 09:13:48','pending','identifying',0,1),('9da8a51e-bafe-4273-9b77-77dc08ce848d',NULL,'9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 09:15:03','testso-20241206-776182',14280000.00,NULL,NULL,NULL,'2024-12-06 09:15:03','2024-12-06 09:15:03','pending','identifying',0,1),('9da8a5a6-30a1-4faf-94b4-36e1dcff7e3b',NULL,'9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 09:16:31','testso-20241206-516880',14280000.00,NULL,NULL,NULL,'2024-12-06 09:16:31','2024-12-06 09:16:31','pending','identifying',0,1),('9da8a6b9-1aea-479e-8e14-dbae935472b9',NULL,'9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 09:19:32','testso-20241206-466027',14280000.00,NULL,NULL,NULL,'2024-12-06 09:19:32','2024-12-06 09:19:32','pending','identifying',0,1),('9da8a6cd-4972-43ae-a70b-c3e93e2dc2b4',NULL,'9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 09:19:45','testso-20241206-224003',14280000.00,NULL,NULL,NULL,'2024-12-06 09:19:45','2024-12-06 09:19:45','pending','identifying',0,1),('9da8a756-139d-470c-b486-72cf5664764c',NULL,'9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 09:21:15','testso-20241206-792985',14280000.00,NULL,NULL,NULL,'2024-12-06 09:21:15','2024-12-06 09:21:15','pending','identifying',0,1),('9da8a777-6cf1-4674-aa11-1ef49d8c36ff',NULL,'9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 09:21:36','testso-20241206-778286',14280000.00,NULL,NULL,NULL,'2024-12-06 09:21:36','2024-12-06 09:21:36','pending','identifying',0,1),('9da8abc4-ba35-4a83-8032-0a06527b9162',NULL,'9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 09:33:38','testso-20241206-349755',14280000.00,NULL,NULL,NULL,'2024-12-06 09:33:38','2024-12-06 09:33:38','pending','identifying',0,1),('9da8ad9d-6317-42d3-a044-acde3f61c3e4',NULL,'9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 09:38:48','testso-20241206-183647',14280000.00,NULL,NULL,NULL,'2024-12-06 09:38:48','2024-12-06 09:38:48','pending','identifying',0,1),('9da8ae28-5a20-473b-95e7-54b0e7e8a0be',NULL,'9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 09:40:19','testso-20241206-544300',14280000.00,NULL,NULL,NULL,'2024-12-06 09:40:19','2024-12-06 09:40:19','pending','identifying',0,1),('9da8ae35-4de7-4069-be10-3d1e6b28e8ac',NULL,'9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 09:40:27','testso-20241206-885946',14280000.00,NULL,NULL,NULL,'2024-12-06 09:40:27','2024-12-06 09:40:27','pending','identifying',0,1),('9da8ae4a-143c-4c9a-9e8a-4e754854a1d7',NULL,'9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 09:40:41','testso-20241206-910511',14280000.00,NULL,NULL,NULL,'2024-12-06 09:40:41','2024-12-06 09:40:41','pending','identifying',0,1),('9da8aeb5-439b-4910-8d9b-ac20d7beaf7d',NULL,'9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 09:41:51','testso-20241206-427770',14280000.00,NULL,NULL,NULL,'2024-12-06 09:41:51','2024-12-06 09:41:51','pending','identifying',0,1),('9da8af1b-f8a5-4331-a160-8bf89ba08689',NULL,'9da8889d-b750-41d3-8403-d6af57940750','https://app.sandbox.midtrans.com/snap/v4/redirection/b8218b71-c2ec-4415-81f3-9dbc35e52174','b8218b71-c2ec-4415-81f3-9dbc35e52174','2024-12-06 09:42:59','testso-20241206-464326',14280000.00,NULL,NULL,NULL,'2024-12-06 09:42:59','2024-12-06 09:42:59','pending','identifying',0,1),('9da8afa7-fcc6-4fa3-9881-d5db7c8524d3',NULL,'9da8889d-b750-41d3-8403-d6af57940750','https://app.sandbox.midtrans.com/snap/v4/redirection/41c008af-6aa6-4a01-a223-0c063e341969','41c008af-6aa6-4a01-a223-0c063e341969','2024-12-06 09:44:30','testso-20241206-226755',14280000.00,NULL,NULL,NULL,'2024-12-06 09:44:30','2024-12-06 09:44:31','pending','identifying',0,1),('9da8b050-ba68-43b1-9e46-818b182dc4dd',NULL,'9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 09:46:21','testso-20241206-592452',14280000.00,NULL,NULL,NULL,'2024-12-06 09:46:21','2024-12-06 09:46:21','pending','identifying',0,1),('9da8b072-f60d-40f3-b6f5-4922a8e386b6',NULL,'9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 09:46:43','testso-20241206-726539',14280000.00,NULL,NULL,NULL,'2024-12-06 09:46:43','2024-12-06 09:46:43','pending','identifying',0,1),('9da8b13f-4473-46c0-807a-6428cb9c96bb',NULL,'9da8889d-b750-41d3-8403-d6af57940750',NULL,NULL,'2024-12-06 09:48:57','testso-20241206-761840',14280000.00,NULL,NULL,NULL,'2024-12-06 09:48:57','2024-12-06 09:48:57','pending','identifying',0,1),('9da8b178-2bb5-4036-a670-43a820ebd6cb',NULL,'9da8889d-b750-41d3-8403-d6af57940750','https://app.sandbox.midtrans.com/snap/v4/redirection/23e2baa9-f815-44f8-8a7d-0de555ce97df','23e2baa9-f815-44f8-8a7d-0de555ce97df','2024-12-06 09:49:35','testso-20241206-822820',14280000.00,NULL,NULL,NULL,'2024-12-06 09:49:35','2024-12-06 09:59:45','settlement','identifying',0,1),('9da8ba25-4965-4741-bd5a-ed629567a39e',NULL,'9da8889d-b750-41d3-8403-d6af57940750','https://app.sandbox.midtrans.com/snap/v4/redirection/aa49ae55-4aac-4d68-938a-5d2ec8606153','aa49ae55-4aac-4d68-938a-5d2ec8606153','2024-12-06 10:13:50','testso-20241206-177714',14280000.00,NULL,NULL,NULL,'2024-12-06 10:13:50','2024-12-06 10:13:51','pending','identifying',0,1),('9dad01b7-17a1-4ce1-99c9-8071af2d2448',NULL,'9da8889d-b750-41d3-8403-d6af57940750','https://app.sandbox.midtrans.com/snap/v4/redirection/16fcc45e-bceb-4d19-9582-377498ac7418','16fcc45e-bceb-4d19-9582-377498ac7418','2024-12-08 13:17:16','testso-20241208-139594',23560000.00,NULL,NULL,NULL,'2024-12-08 13:17:16','2024-12-08 13:40:58','settlement','identifying',0,1),('9dad1369-3b91-487a-be7d-7c67fb3df1b0',NULL,'9da8889d-b750-41d3-8403-d6af57940750','https://app.sandbox.midtrans.com/snap/v4/redirection/9e767a57-7030-47ba-8bb4-77b57f11557d','9e767a57-7030-47ba-8bb4-77b57f11557d','2024-12-08 14:06:43','testso-20241208-186355',23560000.00,NULL,NULL,NULL,'2024-12-08 14:06:46','2024-12-08 14:08:03','settlement','identifying',0,1),('9dad1652-f9c1-4134-822e-5048889e1170',NULL,'9da8889d-b750-41d3-8403-d6af57940750','https://app.sandbox.midtrans.com/snap/v4/redirection/465924f2-23fa-4ff6-91b8-d04f35689eed','465924f2-23fa-4ff6-91b8-d04f35689eed','2024-12-08 14:14:54','testso-20241208-883251',23560000.00,NULL,NULL,NULL,'2024-12-08 14:14:54','2024-12-08 14:14:54','pending','identifying',0,1),('9dae3834-1d61-4f74-a827-fc222009f223',NULL,'9da8889d-b750-41d3-8403-d6af57940750','https://app.sandbox.midtrans.com/snap/v4/redirection/43c926a5-f11b-45bc-96b7-fd0b95d495e1','43c926a5-f11b-45bc-96b7-fd0b95d495e1','2024-12-09 03:45:28','testso-20241209-683726',15470000.00,NULL,NULL,NULL,'2024-12-09 03:45:28','2024-12-09 03:52:49','settlement','identifying',0,1),('9db019a8-3ed6-47c6-8b25-e1e9ce07a841',NULL,'9da8889d-b750-41d3-8403-d6af57940750','https://app.sandbox.midtrans.com/snap/v4/redirection/96b3cea5-5b19-44b6-b0f1-f0b3dc7cac04','96b3cea5-5b19-44b6-b0f1-f0b3dc7cac04','2024-12-10 02:11:42','testso-20241210-849145',35360000.00,NULL,NULL,NULL,'2024-12-10 02:11:42','2024-12-10 02:11:45','pending','identifying',0,1),('9db025ec-6b2e-45fe-a10e-aa6599e720ce',NULL,'9da8889d-b750-41d3-8403-d6af57940750','https://app.sandbox.midtrans.com/snap/v4/redirection/6a5ef735-aac6-460b-adea-8cfc19747d54','6a5ef735-aac6-460b-adea-8cfc19747d54','2024-12-10 02:46:00','testso-20241210-331369',35785500.00,NULL,NULL,NULL,'2024-12-10 02:46:00','2024-12-10 02:50:05','settlement','identifying',0,1),('9db02812-8fe3-46b6-a183-797e00879040',NULL,'9da8889d-b750-41d3-8403-d6af57940750','https://app.sandbox.midtrans.com/snap/v4/redirection/c3cb5a7e-ff40-4503-b9a7-c7ec498429c3','c3cb5a7e-ff40-4503-b9a7-c7ec498429c3','2024-12-10 02:52:01','testso-20241210-928132',35785500.00,NULL,NULL,NULL,'2024-12-10 02:52:01','2024-12-10 02:52:01','pending','identifying',0,1),('9db031d4-511f-4d32-bbbb-210169fd5ac0',NULL,'9da8889d-b750-41d3-8403-d6af57940750','https://app.sandbox.midtrans.com/snap/v4/redirection/fb3d7e4e-4f93-4b35-8091-a840dbdedf03','fb3d7e4e-4f93-4b35-8091-a840dbdedf03','2024-12-10 03:19:18','testso-20241210-855062',35785500.00,NULL,NULL,NULL,'2024-12-10 03:19:18','2024-12-10 03:19:18','pending','identifying',0,1),('9db0996a-0ae9-4140-9964-234b6bc35d42',NULL,'9da8889d-b750-41d3-8403-d6af57940750','https://app.sandbox.midtrans.com/snap/v4/redirection/d1fcd315-c615-47c7-8142-549c9d98c0e1','d1fcd315-c615-47c7-8142-549c9d98c0e1','2024-12-10 08:08:56','testso-20241210-701596',141697500.00,NULL,NULL,NULL,'2024-12-10 08:08:56','2024-12-10 08:08:57','pending','identifying',0,1),('9db0b844-1937-4151-a7eb-48cf62292724',NULL,'9da8889d-b750-41d3-8403-d6af57940750','https://app.sandbox.midtrans.com/snap/v4/redirection/93f10969-0a62-4802-abfe-b76fb2c0eb7e','93f10969-0a62-4802-abfe-b76fb2c0eb7e','2024-12-10 09:35:12','testso-20241210-707676',13611500.00,NULL,NULL,NULL,'2024-12-10 09:35:12','2024-12-10 09:35:31','pending','identifying',0,1),('9db0b8ef-8f9f-4ef2-9c63-4de663e12f98',NULL,'9da8889d-b750-41d3-8403-d6af57940750','https://app.sandbox.midtrans.com/snap/v4/redirection/56887016-77e1-42cf-b781-568969c9214d','56887016-77e1-42cf-b781-568969c9214d','2024-12-10 09:37:05','testso-20241210-472604',13611500.00,'Catatan 1',NULL,NULL,'2024-12-10 09:37:05','2024-12-10 09:37:05','ordered','identifying',0,1);
/*!40000 ALTER TABLE `sales_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_payments`
--

DROP TABLE IF EXISTS `sales_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_payments` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales_invoice_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL,
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sales_payments_sales_invoice_id_foreign` (`sales_invoice_id`),
  KEY `sales_payments_date_index` (`date`),
  KEY `sales_payments_number_index` (`number`),
  KEY `sales_payments_created_by_index` (`created_by`),
  KEY `sales_payments_updated_by_index` (`updated_by`),
  CONSTRAINT `sales_payments_sales_invoice_id_foreign` FOREIGN KEY (`sales_invoice_id`) REFERENCES `sales_invoices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_payments`
--

LOCK TABLES `sales_payments` WRITE;
/*!40000 ALTER TABLE `sales_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_shippings`
--

DROP TABLE IF EXISTS `sales_shippings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_shippings` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales_order_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `province_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subdistrict_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subdistrict_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expedition_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expedition_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expedition_service` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expedition_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expedition_etd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expedition_note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_weight` decimal(10,2) NOT NULL DEFAULT '0.00',
  `shipping_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sales_shippings_sales_order_id_foreign` (`sales_order_id`),
  KEY `sales_shippings_created_by_index` (`created_by`),
  KEY `sales_shippings_updated_by_index` (`updated_by`),
  CONSTRAINT `sales_shippings_sales_order_id_foreign` FOREIGN KEY (`sales_order_id`) REFERENCES `sales_orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_shippings`
--

LOCK TABLES `sales_shippings` WRITE;
/*!40000 ALTER TABLE `sales_shippings` DISABLE KEYS */;
INSERT INTO `sales_shippings` VALUES ('9da8b13f-48d0-4c0b-aabc-6c4f9587e188','9da8b13f-4473-46c0-807a-6428cb9c96bb','3','Banten','455','Tangerang','Kabupaten','6276','Kelapa Dua','Jl. Tuntang 1 No. 8 Perumnas 2','15810','sicepat','SiCepat Express','REG','REGULER','1 - 2 hari','',19000.00,218500.00,NULL,NULL,'2024-12-06 09:48:57','2024-12-06 09:48:57',1),('9da8b178-33c4-46d1-ad4a-2a0a3fae0152','9da8b178-2bb5-4036-a670-43a820ebd6cb','3','Banten','455','Tangerang','Kabupaten','6276','Kelapa Dua','Jl. Tuntang 1 No. 8 Perumnas 2','15810','sicepat','SiCepat Express','REG','REGULER','1 - 2 hari','',19000.00,218500.00,NULL,NULL,'2024-12-06 09:49:35','2024-12-06 09:49:35',1),('9da8ba25-9b97-4390-b72e-0a317347db9c','9da8ba25-4965-4741-bd5a-ed629567a39e','3','Banten','455','Tangerang','Kabupaten','6276','Kelapa Dua','Jl. Tuntang 1 No. 8 Perumnas 2','15810','sicepat','SiCepat Express','REG','REGULER','1 - 2 hari','',19000.00,218500.00,NULL,NULL,'2024-12-06 10:13:50','2024-12-06 10:13:50',1),('9dad01b7-1d78-41b5-ae0b-15ba3c7c0c10','9dad01b7-17a1-4ce1-99c9-8071af2d2448','3','Banten','455','Tangerang','Kabupaten','6276','Kelapa Dua','Jl. Tuntang 1 No. 8 Perumnas 2','15810','sicepat','SiCepat Express','REG','REGULER','1 - 2 hari','',26000.00,299000.00,NULL,NULL,'2024-12-08 13:17:16','2024-12-08 13:17:16',1),('9dad136a-5078-4ace-95a6-81d155be6f64','9dad1369-3b91-487a-be7d-7c67fb3df1b0','3','Banten','455','Tangerang','Kabupaten','6276','Kelapa Dua','Jl. Tuntang 1 No. 8 Perumnas 2','15810','sicepat','SiCepat Express','REG','REGULER','1 - 2 hari','',26000.00,299000.00,NULL,NULL,'2024-12-08 14:06:46','2024-12-08 14:06:46',1),('9dad1652-fec2-4063-98ab-2c210480f9a6','9dad1652-f9c1-4134-822e-5048889e1170','3','Banten','455','Tangerang','Kabupaten','6276','Kelapa Dua','Jl. Tuntang 1 No. 8 Perumnas 2','15810','sicepat','SiCepat Express','REG','REGULER','1 - 2 hari','',26000.00,299000.00,NULL,NULL,'2024-12-08 14:14:54','2024-12-08 14:14:54',1),('9dae3834-594e-4493-91ab-e3796dd8482d','9dae3834-1d61-4f74-a827-fc222009f223','3','Banten','455','Tangerang','Kabupaten','6276','Kelapa Dua','Jl. Jalan No 8','142342','sicepat','SiCepat Express','REG','REGULER','1 - 2 hari','',18000.00,207000.00,NULL,NULL,'2024-12-09 03:45:28','2024-12-09 03:45:28',1),('9db019a8-9b47-4c9b-a6fa-88e3661cb679','9db019a8-3ed6-47c6-8b25-e1e9ce07a841','3','Banten','455','Tangerang','Kabupaten','6276','Kelapa Dua','Jl. Tuntang 1 No. 8 Perumnas 2','15810','sicepat','SiCepat Express','REG','REGULER','1 - 2 hari','',37000.00,425500.00,NULL,NULL,'2024-12-10 02:11:42','2024-12-10 02:11:42',1),('9db025ec-70d0-43f5-b35b-1b7a8f834975','9db025ec-6b2e-45fe-a10e-aa6599e720ce','3','Banten','455','Tangerang','Kabupaten','6276','Kelapa Dua','Jl. Tuntang 1 No. 8 Perumnas 2','15810','sicepat','SiCepat Express','REG','REGULER','1 - 2 hari','',37000.00,425500.00,NULL,NULL,'2024-12-10 02:46:00','2024-12-10 02:46:00',1),('9db02812-944b-44ed-b845-ecc341123bfc','9db02812-8fe3-46b6-a183-797e00879040','3','Banten','455','Tangerang','Kabupaten','6276','Kelapa Dua','Jl. Tuntang 1 No 8 Perumnas 2','15810','sicepat','SiCepat Express','REG','REGULER','1 - 2 hari','',37000.00,425500.00,NULL,NULL,'2024-12-10 02:52:01','2024-12-10 02:52:01',1),('9db031d4-566f-446d-adf9-7875870eebad','9db031d4-511f-4d32-bbbb-210169fd5ac0','3','Banten','455','Tangerang','Kabupaten','6276','Kelapa Dua','Jl. Tuntang 1 No. 8 Perumnas 2','15810','sicepat','SiCepat Express','REG','REGULER','1 - 2 hari','',37000.00,425500.00,NULL,NULL,'2024-12-10 03:19:18','2024-12-10 03:19:18',1),('9db0996a-19c2-4bfe-8fc1-bb0f88baf898','9db0996a-0ae9-4140-9964-234b6bc35d42','3','Banten','455','Tangerang','Kabupaten','6276','Kelapa Dua','Jl. Tuntang 1 No. 8 Perumnas 2','15810','sicepat','SiCepat Express','REG','REGULER','1 - 2 hari','',365000.00,4197500.00,NULL,NULL,'2024-12-10 08:08:56','2024-12-10 08:08:56',1),('9db0b844-22c1-41e7-a649-0142d14f25a2','9db0b844-1937-4151-a7eb-48cf62292724','3','Banten','455','Tangerang','Kabupaten','6276','Kelapa Dua','Jl. Tuntang 2 No. 8 Perumnas 2','15810','sicepat','SiCepat Express','REG','REGULER','1 - 2 hari','',21000.00,241500.00,NULL,NULL,'2024-12-10 09:35:12','2024-12-10 09:35:12',1),('9db0b8ef-94d3-479d-8d6c-efa7fe2b30cf','9db0b8ef-8f9f-4ef2-9c63-4de663e12f98','3','Banten','455','Tangerang','Kabupaten','6276','Kelapa Dua','Jl. Tuntang 1 No. 8 Perumnas 2','15810','sicepat','SiCepat Express','REG','REGULER','1 - 2 hari','',21000.00,241500.00,NULL,NULL,'2024-12-10 09:37:05','2024-12-10 09:37:05',1);
/*!40000 ALTER TABLE `sales_shippings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`),
  CONSTRAINT `sessions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('0ww3ffsBEVsWlHnlToGJHgQyZwwCNnHDzyb57pyi',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNXU1d3hyRllobm9RSjJjb2NZRnE0a1Znb1hPZXdtVXVlcUM2VThDVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHBzOi8vdW1lZGFzdG9yZS50ZXN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1735531195),('fdUzJrO82liD4Liv36dTdfc0LujBhmibpgATtQqt',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRG51UzVTZ2U2bkZKMjU4QW5rc3pLNnpxM0JLYlN6cmIxcm1yVWF6ayI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzI6Imh0dHBzOi8vdW1lZGFzdG9yZS50ZXN0L3AvdW1lZGEtd2FrdS13aGl0ZS11di1jLWR1c3QtbWl0ZS12YWN1dW0tY2xlYW5lciI7fXM6MTE6Imx3NjczODM4MzQ0IjtOO30=',1735541176),('hhbjNfkVDMqeyeoETpgt7zjTta17IIIvKKK7dOid',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','YToyOntzOjY6Il90b2tlbiI7czo0MDoiMkFxbE12cWhsWWl6MzN6TmFBVHdxZ05BWkRyQjI3bW9Ka2VsdmxUTyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1734664344),('mARKMvlU2D6bt1TXzxdy26n8IVttNaF1o2Bnag4r',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTWZ5NlZLdGlIMlpqYkV0ZjlnNVhZQVNNcHg4VTMxczQ1MXdld1ViaSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly91bWVkYXN0b3JlLnRlc3QiO319',1734926636),('RkkyZcKqwceEoY4inypWJHf7UpxjzvLiqHtea1qA',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoicnpCOGlHUEFoNGkxeDZtUHhqekVvb0pWb0xIWmtTN3djVmJBRU1YWSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0MToiaHR0cHM6Ly91bWVkYXN0b3JlLXByaXZhdGUudGVzdC9kYXNoYm9hcmQiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozMToiaHR0cHM6Ly91bWVkYXN0b3JlLXByaXZhdGUudGVzdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1735550011),('t06HfeNLx7PHpXHYK5eWaRSTXc8NUWQOKXx0Nhnv',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','YToyOntzOjY6Il90b2tlbiI7czo0MDoiT003elBSOExOSjU3dG1uOERXU3JFQUpxMHlzcHR5eFE2dldKV0xFVyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1734762244),('taUeuLXoskDDBaCQSpXfiRnUAXVEYU0R6KD2F7Wm',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNTFZcDNvbGFFUGFrUHF3WjByWXRUbTdBMnV0MWNQZ0dQZjFlb1JuNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly91bWVkYXN0b3JlLnRlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1734591609),('vADnanz8bp7jK3NQZhZI2vNxqv4nMEElB88IAm9e',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','YToyOntzOjY6Il90b2tlbiI7czo0MDoiSlNnTzZuU1htdnlFUjRJRnAxU2M4ZUZMYThFR3dVU1o1ekFUbmdmaSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1735541112),('VWzvavFfY89iOhcAB7LMDF0nNUD52I9mdzgotrLr',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoidUpSczJDYjdBQzl1OWJDeVZNTkZ3UnlXUUFneGF6U2FidGtCdnFXbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly91bWVkYXN0b3JlLnRlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1735124296),('WJDHZcJE9dTPyMvmeMYnIwoQg4NDE7rxFwrL0bhx',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','YToyOntzOjY6Il90b2tlbiI7czo0MDoiMmV2bVIySENRZ1lmY0ZvYXBidzk2cHcyWDlCblp0TmVkOXY4Zm14dCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1735546818);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-17  8:59:11
