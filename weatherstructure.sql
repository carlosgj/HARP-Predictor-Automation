-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: test_dataset
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB-0+deb9u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `test_dataset`
--

/*!40000 DROP DATABASE IF EXISTS `test_dataset`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `test_dataset` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `test_dataset`;

--
-- Table structure for table `WeatherData`
--

DROP TABLE IF EXISTS `WeatherData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WeatherData` (
  `PredictionTime` datetime NOT NULL,
  `ValueTime` datetime NOT NULL,
  `Resolution` enum('0.25','0.50') NOT NULL,
  `Latitude` float NOT NULL,
  `Longitude` float NOT NULL,
  `Isobar` smallint(6) NOT NULL,
  `HGT` mediumint(9) DEFAULT NULL,
  `TMP` float DEFAULT NULL,
  `UGRD` float DEFAULT NULL,
  `VGRD` float DEFAULT NULL,
  PRIMARY KEY (`PredictionTime`,`ValueTime`,`Resolution`,`Latitude`,`Longitude`,`Isobar`),
  KEY `prediction_time` (`PredictionTime`),
  KEY `idx_WeatherData_Latitude_Longitude` (`Latitude`,`Longitude`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `setIndex`
--

DROP TABLE IF EXISTS `setIndex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setIndex` (
  `tableName` char(13) NOT NULL,
  `predictionTime` datetime DEFAULT NULL,
  PRIMARY KEY (`tableName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-11 13:31:25
