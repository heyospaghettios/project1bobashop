-- MariaDB dump 10.17  Distrib 10.4.6-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: bobashop
-- ------------------------------------------------------
-- Server version	10.4.6-MariaDB

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
-- Table structure for table `tblproducts`
--

DROP TABLE IF EXISTS `tblproducts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblproducts` (
  `PKProductID` int(11) NOT NULL,
  `BobaName` varchar(45) NOT NULL,
  `Price` decimal(4,2) NOT NULL,
  `CategoryID` int(11) DEFAULT NULL,
  PRIMARY KEY (`PKProductID`),
  KEY `CategoryID` (`CategoryID`),
  CONSTRAINT `tblproducts_ibfk_1` FOREIGN KEY (`CategoryID`) REFERENCES `tblcategories` (`PKCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblproducts`
--

LOCK TABLES `tblproducts` WRITE;
/*!40000 ALTER TABLE `tblproducts` DISABLE KEYS */;
INSERT INTO `tblproducts` VALUES (1,'Taro Milk Tea',3.99,1),(2,'Jasmine Milk Tea',3.99,1),(3,'Coconut Milk Tea',3.99,1),(4,'Milk Tea',3.99,1),(5,'Honeydew Milk Tea',3.99,1),(6,'Strawberry Milk Tea',3.99,1),(7,'Matcha Green Tea',3.99,1),(8,'Lychee Milk Tea',3.99,1),(9,'Caramel Milk Tea',3.99,1),(10,'Chocolate Milk Tea',3.99,1),(11,'Oolong Milk Tea',3.99,1),(12,'Mango Milk Tea',3.99,1),(13,'Hazelnut Milk Tea',3.99,1),(14,'Watermelon Milk Tea',3.99,1),(15,'Coconut Taro',3.99,1),(16,'Coffee Milk Tea',3.99,1),(17,'Brown Sugar Milk Tea',3.99,1),(18,'Wintermelon Tea',3.99,2),(19,'Oolong Tea',3.99,2),(20,'Rose Tea',3.99,2),(21,'Passion Fruit Tea',3.99,2),(22,'Thai tea',3.99,2),(23,'Black tea',3.99,2),(24,'Vanilla Milk tea',3.99,2),(25,'Banana Milk tea',3.99,2),(26,'Ube tea',3.99,2),(27,'fries',2.99,3),(28,'Popcorn Chicken',2.99,3),(29,'Tacos',0.99,3),(30,'Pho',5.99,3),(31,'Nachos',2.99,3),(32,'Spam Musubi',2.99,3),(33,'Chicken Wings',2.99,3),(34,'Eggrolls',2.99,3),(35,'Tater Tots',2.99,3);
/*!40000 ALTER TABLE `tblproducts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-21 14:06:30
