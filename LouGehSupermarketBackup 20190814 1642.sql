-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.45-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema lougehsupermarket
--

CREATE DATABASE IF NOT EXISTS lougehsupermarket;
USE lougehsupermarket;

--
-- Definition of table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `customer_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `customer_firstname` text,
  `customer_lastname` text,
  `customer_mi` varchar(2) DEFAULT NULL,
  `customer_address` text,
  `customer_contact_number` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` (`customer_id`,`customer_firstname`,`customer_lastname`,`customer_mi`,`customer_address`,`customer_contact_number`) VALUES 
 (1,'Ceazar','Masula','L','Polomolok, South Cotabato','09396264943');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;


--
-- Definition of table `delivery_transaction`
--

DROP TABLE IF EXISTS `delivery_transaction`;
CREATE TABLE `delivery_transaction` (
  `dtransaction_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `transaction_timestamp` text,
  `supplier_id` varchar(20) DEFAULT NULL,
  `barcode` varchar(30) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `cost_per_unit` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  PRIMARY KEY (`dtransaction_id`),
  UNIQUE KEY `dtransaction_id` (`dtransaction_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery_transaction`
--

/*!40000 ALTER TABLE `delivery_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `delivery_transaction` ENABLE KEYS */;


--
-- Definition of table `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `barcode` varchar(30) NOT NULL,
  `product_description` text,
  `quantity` int(11) DEFAULT NULL,
  `cost_per_unit` float DEFAULT NULL,
  PRIMARY KEY (`barcode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` (`barcode`,`product_description`,`quantity`,`cost_per_unit`) VALUES 
 ('123123','Apples (kl)',35,100),
 ('15236','Mega Sardines (Cans)',150,15),
 ('2131','Mangoes (kl)',30,40);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;


--
-- Definition of table `newtransaction`
--

DROP TABLE IF EXISTS `newtransaction`;
CREATE TABLE `newtransaction` (
  `newtransaction_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `barcode` varchar(30) DEFAULT NULL,
  `description` text,
  `quantity` int(11) DEFAULT NULL,
  `cost_per_unit` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  PRIMARY KEY (`newtransaction_id`),
  UNIQUE KEY `newtransaction_id` (`newtransaction_id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newtransaction`
--

/*!40000 ALTER TABLE `newtransaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `newtransaction` ENABLE KEYS */;


--
-- Definition of table `sales_transaction`
--

DROP TABLE IF EXISTS `sales_transaction`;
CREATE TABLE `sales_transaction` (
  `stransaction_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `transaction_timestamp` text,
  `customer_id` varchar(20) DEFAULT NULL,
  `barcode` varchar(30) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `cost_per_unit` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  PRIMARY KEY (`stransaction_id`),
  UNIQUE KEY `stransaction_id` (`stransaction_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_transaction`
--

/*!40000 ALTER TABLE `sales_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_transaction` ENABLE KEYS */;


--
-- Definition of table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
CREATE TABLE `suppliers` (
  `supplier_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `company_name` text,
  `company_contact_number` varchar(20) DEFAULT NULL,
  `company_address` text,
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suppliers`
--

/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` (`supplier_id`,`company_name`,`company_contact_number`,`company_address`) VALUES 
 (1,'Biotech Farms','09364596159','Veranza, General Santos City');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
