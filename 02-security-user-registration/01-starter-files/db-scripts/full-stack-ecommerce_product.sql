-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: full-stack-ecommerce
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sku` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `unit_price` decimal(13,2) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `active` bit(1) DEFAULT b'1',
  `units_in_stock` int DEFAULT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `last_updated` datetime(6) DEFAULT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category` (`category_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'LIVING-1000','Ovas Cane Serving Basket with Brass Rim & Handle','At Blank Slate Home - From a House to A Home',3800.00,'https://ii1.pepperfry.com/media/catalog/product/o/v/800x880/ovas-cane-serving-basket-with-brass-rim---handle-by-blank-slate-home-ovas-cane-serving-basket-with-b-n4hsgq.jpg',_binary '',100,'2022-07-13 18:46:48.000000',NULL,2),(2,'LIVING-1001','Marden 2 Seater Sofa In Provincial Teak Finish','Contemporary Style Sofas are very current and in trend.',32227.00,'https://ii1.pepperfry.com/media/catalog/product/m/a/568x284/marden-2-seater-sofa-in-provincial-teak-finish-by-bohemiana-marden-2-seater-sofa-in-provincial-teak--yw0xtm.jpg',_binary '',100,'2022-07-13 18:46:48.000000',NULL,2),(3,'LIVING-1002','Tarano Slipper Chair In Floral Print','Bohemiana is rhapsody for your home',14923.00,'https://ii1.pepperfry.com/media/catalog/product/t/a/800x880/tarano-wing-chair-in-floral-print---bohemiana-by-pepperfry-tarano-wing-chair-in-floral-print---bohem-fnxgwt.jpg',_binary '',100,'2022-07-13 18:46:48.000000',NULL,2),(4,'LIVING-1003','Piranha Wing Chair In Blue Colour','Bohemiana is rhapsody for your home',28076.00,'https://ii1.pepperfry.com/media/catalog/product/p/i/800x880/piranha-wing-chair-in-blue-colour---bohemiana-by-pepperfry-piranha-wing-chair-in-blue-colour---bohem-g1ev1i.jpg',_binary '',100,'2022-07-13 18:46:48.000000',NULL,2),(5,'LIVING-1004','Single Futon Sofa Cum Bed in Blue Colour','A Futon is a Japanese word for a foldable, day bed',19452.00,'https://ii1.pepperfry.com/media/catalog/product/a/l/800x880/alexa-single-futon-sofa-cum-bed-blue-colour-by-arra-alexa-single-futon-sofa-cum-bed-blue-colour-by-a-eh9bfw.jpg',_binary '',100,'2022-07-13 18:46:48.000000',NULL,2),(6,'BEDROOM-1000','Cambridge Upholstered Queen Size Bed With Box Storage r','Mintwud is a classic amalgamation of form and function',20000.00,'https://ii1.pepperfry.com/media/catalog/product/c/a/800x880/cambridge-upholstered-queen-size-bed-with-storage-in-grey-color--mintwud-by-pepperfry-cambridge-upho-kkkyek.jpg',_binary '',4,NULL,NULL,1),(7,'BEDROOM-1001','Foldable Wardrobe','Mintwud is a classic amalgamation of form and function',2000.00,'https://ii1.pepperfry.com/media/catalog/product/p/a/1100x1210/paine-fabric-wardrobe-by-diy-furniture-paine-fabric-wardrobe-by-diy-furniture-gihurz.jpg',_binary '',5,NULL,NULL,1),(8,'BEDROOM-1002','Bedside Table',NULL,30000.00,'https://ii2.pepperfry.com/media/catalog/product/t/a/494x544/taro-bed-side-table-in-walnut-finish-by-mintwud-taro-bed-side-table-in-walnut-finish-by-mintwud-t7ldue.jpg',_binary '',2,NULL,NULL,1),(9,'DINING-1000','Dining bowl','A fulfilment while eating',895.00,'https://ii2.pepperfry.com/media/catalog/product/m/u/494x544/multicolor-350ml-ceramic-dining-bowl--set-of-4--by-lupaava-multicolor-350ml-ceramic-dining-bowl--set-desjin.jpg',_binary '',10,NULL,NULL,3),(10,'DINING-1001','Teaware set','A joy in enjoying tea',1649.00,'https://ii2.pepperfry.com/media/catalog/product/h/a/494x544/hand-printed--set-of-3--red-ceramic-teaware-set-by-cdi-hand-printed--set-of-3--red-ceramic-teaware-s-jqusgq.jpg',_binary '',100,NULL,NULL,3),(11,'DINING-1002','cutlery holder',NULL,1449.00,'https://ii3.pepperfry.com/media/catalog/product/t/r/494x544/trendy-teak-wood-cutlery-stand-by-nestroots-trendy-teak-wood-cutlery-stand-by-nestroots-6xdg6f.jpg',_binary '',50,NULL,NULL,3),(12,'STUDY-1000','Study lamp',NULL,3200.00,'https://ii1.pepperfry.com/media/catalog/product/p/o/800x880/poulsen-pharmacy-adjustable-study-lamp-with-shiny-gold-base-by-decor-de-maison-poulsen-pharmacy-adju-x56wi4.jpg',_binary '',300,NULL,NULL,4),(13,'STUDY-1001','Office Table','A good one for workholic',4500.00,'https://ii3.pepperfry.com/media/catalog/product/n/i/494x544/ninja-office-table-in-acacia-finish-by-wood-you-ninja-office-table-in-acacia-finish-by-wood-you-o3cvlb.jpg',_binary '',40,NULL,NULL,4),(14,'STUDY-1002','Ergonomic chair','Have good ergoniomics',3000.00,'https://ii1.pepperfry.com/media/catalog/product/i/n/800x880/ine-mid-back-ergonomic-chair-in-black-colour-by-valuewud-ine-mid-back-ergonomic-chair-in-black-colou-ydq0mb.jpg',_binary '',30,NULL,NULL,4);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-14 23:36:58
