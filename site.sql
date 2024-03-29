-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.6.47 - MySQL Community Server (GPL)
-- Операционная система:         Win64
-- HeidiSQL Версия:              11.0.0.5958
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Дамп структуры базы данных shop
DROP DATABASE IF EXISTS `shop`;
CREATE DATABASE IF NOT EXISTS `shop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `shop`;

-- Дамп структуры для таблица shop.oc_address
DROP TABLE IF EXISTS `oc_address`;
CREATE TABLE IF NOT EXISTS `oc_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_address: 0 rows
DELETE FROM `oc_address`;
/*!40000 ALTER TABLE `oc_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_address` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_api
DROP TABLE IF EXISTS `oc_api`;
CREATE TABLE IF NOT EXISTS `oc_api` (
  `api_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_api: 1 rows
DELETE FROM `oc_api`;
/*!40000 ALTER TABLE `oc_api` DISABLE KEYS */;
INSERT INTO `oc_api` (`api_id`, `username`, `key`, `status`, `date_added`, `date_modified`) VALUES
	(1, 'Default', '96pgXEU2OD8rYU3Ys1KiIv6oSzuLG5hM0OaUBAypiyro9Vu0kE8ZLZVcL34YwZ94CZOIlSYtrf593On8PU4N3zbgPVrnqLtQqtNSuKSlmKJXNRDlC4Mp7iO8Xhh6fhvTNqH93IXZGIyzSqGzUpssf2hKKXCV6qbmnlGl7v6VlFjPduqXvjq9QxIFWzzl6nGMx1Ukv9I7k9GFuxlqn4nak4vg9MdhD2IGZoDdAMeCc6NS3pQQ4vTjo8lTGi7NeuSe', 1, '2021-04-07 12:43:25', '2021-04-07 12:43:25');
/*!40000 ALTER TABLE `oc_api` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_api_ip
DROP TABLE IF EXISTS `oc_api_ip`;
CREATE TABLE IF NOT EXISTS `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`api_ip_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_api_ip: 0 rows
DELETE FROM `oc_api_ip`;
/*!40000 ALTER TABLE `oc_api_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_api_ip` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_api_session
DROP TABLE IF EXISTS `oc_api_session`;
CREATE TABLE IF NOT EXISTS `oc_api_session` (
  `api_session_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_api_session: 0 rows
DELETE FROM `oc_api_session`;
/*!40000 ALTER TABLE `oc_api_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_api_session` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_attribute
DROP TABLE IF EXISTS `oc_attribute`;
CREATE TABLE IF NOT EXISTS `oc_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_attribute: 11 rows
DELETE FROM `oc_attribute`;
/*!40000 ALTER TABLE `oc_attribute` DISABLE KEYS */;
INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
	(1, 6, 1),
	(2, 6, 5),
	(3, 6, 3),
	(4, 3, 1),
	(5, 3, 2),
	(6, 3, 3),
	(7, 3, 4),
	(8, 3, 5),
	(9, 3, 6),
	(10, 3, 7),
	(11, 3, 8);
/*!40000 ALTER TABLE `oc_attribute` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_attribute_description
DROP TABLE IF EXISTS `oc_attribute_description`;
CREATE TABLE IF NOT EXISTS `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_attribute_description: 11 rows
DELETE FROM `oc_attribute_description`;
/*!40000 ALTER TABLE `oc_attribute_description` DISABLE KEYS */;
INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
	(1, 1, 'Description'),
	(2, 1, 'No. of Cores'),
	(4, 1, 'test 1'),
	(5, 1, 'test 2'),
	(6, 1, 'test 3'),
	(7, 1, 'test 4'),
	(8, 1, 'test 5'),
	(9, 1, 'test 6'),
	(10, 1, 'test 7'),
	(11, 1, 'test 8'),
	(3, 1, 'Clockspeed');
/*!40000 ALTER TABLE `oc_attribute_description` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_attribute_group
DROP TABLE IF EXISTS `oc_attribute_group`;
CREATE TABLE IF NOT EXISTS `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_attribute_group: 4 rows
DELETE FROM `oc_attribute_group`;
/*!40000 ALTER TABLE `oc_attribute_group` DISABLE KEYS */;
INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
	(3, 2),
	(4, 1),
	(5, 3),
	(6, 4);
/*!40000 ALTER TABLE `oc_attribute_group` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_attribute_group_description
DROP TABLE IF EXISTS `oc_attribute_group_description`;
CREATE TABLE IF NOT EXISTS `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_attribute_group_description: 4 rows
DELETE FROM `oc_attribute_group_description`;
/*!40000 ALTER TABLE `oc_attribute_group_description` DISABLE KEYS */;
INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
	(3, 1, 'Memory'),
	(4, 1, 'Technical'),
	(5, 1, 'Motherboard'),
	(6, 1, 'Processor');
/*!40000 ALTER TABLE `oc_attribute_group_description` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_banner
DROP TABLE IF EXISTS `oc_banner`;
CREATE TABLE IF NOT EXISTS `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_banner: 3 rows
DELETE FROM `oc_banner`;
/*!40000 ALTER TABLE `oc_banner` DISABLE KEYS */;
INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
	(6, 'HP Products', 1),
	(7, 'Home Page Slideshow', 1),
	(8, 'Manufacturers', 1);
/*!40000 ALTER TABLE `oc_banner` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_banner_image
DROP TABLE IF EXISTS `oc_banner_image`;
CREATE TABLE IF NOT EXISTS `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_banner_image: 14 rows
DELETE FROM `oc_banner_image`;
/*!40000 ALTER TABLE `oc_banner_image` DISABLE KEYS */;
INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `language_id`, `title`, `link`, `image`, `sort_order`) VALUES
	(79, 7, 1, 'iPhone 6', 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/banners/iPhone6.jpg', 0),
	(87, 6, 1, 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
	(94, 8, 1, 'NFL', '', 'catalog/demo/manufacturer/nfl.png', 0),
	(95, 8, 1, 'RedBull', '', 'catalog/demo/manufacturer/redbull.png', 0),
	(96, 8, 1, 'Sony', '', 'catalog/demo/manufacturer/sony.png', 0),
	(91, 8, 1, 'Coca Cola', '', 'catalog/demo/manufacturer/cocacola.png', 0),
	(92, 8, 1, 'Burger King', '', 'catalog/demo/manufacturer/burgerking.png', 0),
	(93, 8, 1, 'Canon', '', 'catalog/demo/manufacturer/canon.png', 0),
	(88, 8, 1, 'Harley Davidson', '', 'catalog/demo/manufacturer/harley.png', 0),
	(89, 8, 1, 'Dell', '', 'catalog/demo/manufacturer/dell.png', 0),
	(90, 8, 1, 'Disney', '', 'catalog/demo/manufacturer/disney.png', 0),
	(80, 7, 1, 'MacBookAir', '', 'catalog/demo/banners/MacBookAir.jpg', 0),
	(97, 8, 1, 'Starbucks', '', 'catalog/demo/manufacturer/starbucks.png', 0),
	(98, 8, 1, 'Nintendo', '', 'catalog/demo/manufacturer/nintendo.png', 0);
/*!40000 ALTER TABLE `oc_banner_image` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_cart
DROP TABLE IF EXISTS `oc_cart`;
CREATE TABLE IF NOT EXISTS `oc_cart` (
  `cart_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_cart: ~0 rows (приблизительно)
DELETE FROM `oc_cart`;
/*!40000 ALTER TABLE `oc_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_cart` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_category
DROP TABLE IF EXISTS `oc_category`;
CREATE TABLE IF NOT EXISTS `oc_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_category: 38 rows
DELETE FROM `oc_category`;
/*!40000 ALTER TABLE `oc_category` DISABLE KEYS */;
INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
	(25, '', 0, 1, 1, 3, 1, '2009-01-31 01:04:25', '2011-05-30 12:14:55'),
	(27, '', 20, 0, 0, 2, 1, '2009-01-31 01:55:34', '2010-08-22 06:32:15'),
	(20, 'catalog/demo/compaq_presario.jpg', 0, 1, 1, 1, 1, '2009-01-05 21:49:43', '2011-07-16 02:14:42'),
	(24, '', 0, 1, 1, 5, 1, '2009-01-20 02:36:26', '2011-05-30 12:15:18'),
	(18, 'catalog/demo/hp_2.jpg', 0, 1, 0, 2, 1, '2009-01-05 21:49:15', '2011-05-30 12:13:55'),
	(17, '', 0, 1, 1, 4, 1, '2009-01-03 21:08:57', '2011-05-30 12:15:11'),
	(28, '', 25, 0, 0, 1, 1, '2009-02-02 13:11:12', '2010-08-22 06:32:46'),
	(26, '', 20, 0, 0, 1, 1, '2009-01-31 01:55:14', '2010-08-22 06:31:45'),
	(29, '', 25, 0, 0, 1, 1, '2009-02-02 13:11:37', '2010-08-22 06:32:39'),
	(30, '', 25, 0, 0, 1, 1, '2009-02-02 13:11:59', '2010-08-22 06:33:00'),
	(31, '', 25, 0, 0, 1, 1, '2009-02-03 14:17:24', '2010-08-22 06:33:06'),
	(32, '', 25, 0, 0, 1, 1, '2009-02-03 14:17:34', '2010-08-22 06:33:12'),
	(33, '', 0, 1, 1, 6, 1, '2009-02-03 14:17:55', '2011-05-30 12:15:25'),
	(34, 'catalog/demo/ipod_touch_4.jpg', 0, 1, 4, 7, 1, '2009-02-03 14:18:11', '2011-05-30 12:15:31'),
	(35, '', 28, 0, 0, 0, 1, '2010-09-17 10:06:48', '2010-09-18 14:02:42'),
	(36, '', 28, 0, 0, 0, 1, '2010-09-17 10:07:13', '2010-09-18 14:02:55'),
	(37, '', 34, 0, 0, 0, 1, '2010-09-18 14:03:39', '2011-04-22 01:55:08'),
	(38, '', 34, 0, 0, 0, 1, '2010-09-18 14:03:51', '2010-09-18 14:03:51'),
	(39, '', 34, 0, 0, 0, 1, '2010-09-18 14:04:17', '2011-04-22 01:55:20'),
	(40, '', 34, 0, 0, 0, 1, '2010-09-18 14:05:36', '2010-09-18 14:05:36'),
	(41, '', 34, 0, 0, 0, 1, '2010-09-18 14:05:49', '2011-04-22 01:55:30'),
	(42, '', 34, 0, 0, 0, 1, '2010-09-18 14:06:34', '2010-11-07 20:31:04'),
	(43, '', 34, 0, 0, 0, 1, '2010-09-18 14:06:49', '2011-04-22 01:55:40'),
	(44, '', 34, 0, 0, 0, 1, '2010-09-21 15:39:21', '2010-11-07 20:30:55'),
	(45, '', 18, 0, 0, 0, 1, '2010-09-24 18:29:16', '2011-04-26 08:52:11'),
	(46, '', 18, 0, 0, 0, 1, '2010-09-24 18:29:31', '2011-04-26 08:52:23'),
	(47, '', 34, 0, 0, 0, 1, '2010-11-07 11:13:16', '2010-11-07 11:13:16'),
	(48, '', 34, 0, 0, 0, 1, '2010-11-07 11:13:33', '2010-11-07 11:13:33'),
	(49, '', 34, 0, 0, 0, 1, '2010-11-07 11:14:04', '2010-11-07 11:14:04'),
	(50, '', 34, 0, 0, 0, 1, '2010-11-07 11:14:23', '2011-04-22 01:16:01'),
	(51, '', 34, 0, 0, 0, 1, '2010-11-07 11:14:38', '2011-04-22 01:16:13'),
	(52, '', 34, 0, 0, 0, 1, '2010-11-07 11:16:09', '2011-04-22 01:54:57'),
	(53, '', 34, 0, 0, 0, 1, '2010-11-07 11:28:53', '2011-04-22 01:14:36'),
	(54, '', 34, 0, 0, 0, 1, '2010-11-07 11:29:16', '2011-04-22 01:16:50'),
	(55, '', 34, 0, 0, 0, 1, '2010-11-08 10:31:32', '2010-11-08 10:31:32'),
	(56, '', 34, 0, 0, 0, 1, '2010-11-08 10:31:50', '2011-04-22 01:16:37'),
	(57, '', 0, 1, 1, 3, 1, '2011-04-26 08:53:16', '2011-05-30 12:15:05'),
	(58, '', 52, 0, 0, 0, 1, '2011-05-08 13:44:16', '2011-05-08 13:44:16');
/*!40000 ALTER TABLE `oc_category` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_category_description
DROP TABLE IF EXISTS `oc_category_description`;
CREATE TABLE IF NOT EXISTS `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_category_description: 38 rows
DELETE FROM `oc_category_description`;
/*!40000 ALTER TABLE `oc_category_description` DISABLE KEYS */;
INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
	(28, 1, 'Мониторы', '', 'Мониторы', '', ''),
	(33, 1, 'Камеры', '', 'Камеры', '', ''),
	(32, 1, 'Веб камеры', '', 'Веб камеры', '', ''),
	(31, 1, 'Сканеры', '', 'Сканеры', '', ''),
	(30, 1, 'Принтеры', '', 'Принтеры', '', ''),
	(29, 1, 'Манипуляторы мышь', '', 'Манипуляторы мышь', '', ''),
	(27, 1, 'Mac', '', 'Mac', '', ''),
	(26, 1, 'PC', '', 'PC', '', ''),
	(17, 1, 'Софт', '', 'Софт', '', ''),
	(25, 1, 'Комплектующие', '', 'Комплектующие', '', ''),
	(24, 1, 'Телефоны', '', 'Телефоны', '', ''),
	(20, 1, 'Компьютеры', '&lt;p&gt;\r\n	Example of category description text&lt;/p&gt;\r\n', 'Компьютеры', 'Example of category description', ''),
	(35, 1, 'test 1', '', 'test 1', '', ''),
	(36, 1, 'test 2', '', 'test 2', '', ''),
	(37, 1, 'test 5', '', 'test 5', '', ''),
	(38, 1, 'test 4', '', 'test 4', '', ''),
	(39, 1, 'test 6', '', 'test 6', '', ''),
	(40, 1, 'test 7', '', 'test 7', '', ''),
	(41, 1, 'test 8', '', 'test 8', '', ''),
	(42, 1, 'test 9', '', 'test 9', '', ''),
	(43, 1, 'test 11', '', 'test 11', '', ''),
	(34, 1, 'MP3 плееры', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', 'MP3 плееры', '', ''),
	(18, 1, 'Ноутбуки', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', 'Ноутбуки', '', ''),
	(44, 1, 'test 12', '', 'test 12', '', ''),
	(45, 1, 'Windows', '', 'Windows', '', ''),
	(46, 1, 'Macs', '', 'Macs', '', ''),
	(47, 1, 'test 15', '', 'test 15', '', ''),
	(48, 1, 'test 16', '', 'test 16', '', ''),
	(49, 1, 'test 17', '', 'test 17', '', ''),
	(50, 1, 'test 18', '', 'test 18', '', ''),
	(51, 1, 'test 19', '', 'test 19', '', ''),
	(52, 1, 'test 20', '', 'test 20', '', ''),
	(53, 1, 'test 21', '', 'test 21', '', ''),
	(54, 1, 'test 22', '', 'test 22', '', ''),
	(55, 1, 'test 23', '', 'test 23', '', ''),
	(56, 1, 'test 24', '', 'test 24', '', ''),
	(57, 1, 'Планшеты', '', 'Планшеты', '', ''),
	(58, 1, 'test 25', '', 'test 25', '', '');
/*!40000 ALTER TABLE `oc_category_description` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_category_filter
DROP TABLE IF EXISTS `oc_category_filter`;
CREATE TABLE IF NOT EXISTS `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_category_filter: 0 rows
DELETE FROM `oc_category_filter`;
/*!40000 ALTER TABLE `oc_category_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_category_filter` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_category_path
DROP TABLE IF EXISTS `oc_category_path`;
CREATE TABLE IF NOT EXISTS `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_category_path: 71 rows
DELETE FROM `oc_category_path`;
/*!40000 ALTER TABLE `oc_category_path` DISABLE KEYS */;
INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
	(25, 25, 0),
	(28, 25, 0),
	(28, 28, 1),
	(35, 25, 0),
	(35, 28, 1),
	(35, 35, 2),
	(36, 25, 0),
	(36, 28, 1),
	(36, 36, 2),
	(29, 25, 0),
	(29, 29, 1),
	(30, 25, 0),
	(30, 30, 1),
	(31, 25, 0),
	(31, 31, 1),
	(32, 25, 0),
	(32, 32, 1),
	(20, 20, 0),
	(27, 20, 0),
	(27, 27, 1),
	(26, 20, 0),
	(26, 26, 1),
	(24, 24, 0),
	(18, 18, 0),
	(45, 18, 0),
	(45, 45, 1),
	(46, 18, 0),
	(46, 46, 1),
	(17, 17, 0),
	(33, 33, 0),
	(34, 34, 0),
	(37, 34, 0),
	(37, 37, 1),
	(38, 34, 0),
	(38, 38, 1),
	(39, 34, 0),
	(39, 39, 1),
	(40, 34, 0),
	(40, 40, 1),
	(41, 34, 0),
	(41, 41, 1),
	(42, 34, 0),
	(42, 42, 1),
	(43, 34, 0),
	(43, 43, 1),
	(44, 34, 0),
	(44, 44, 1),
	(47, 34, 0),
	(47, 47, 1),
	(48, 34, 0),
	(48, 48, 1),
	(49, 34, 0),
	(49, 49, 1),
	(50, 34, 0),
	(50, 50, 1),
	(51, 34, 0),
	(51, 51, 1),
	(52, 34, 0),
	(52, 52, 1),
	(58, 34, 0),
	(58, 52, 1),
	(58, 58, 2),
	(53, 34, 0),
	(53, 53, 1),
	(54, 34, 0),
	(54, 54, 1),
	(55, 34, 0),
	(55, 55, 1),
	(56, 34, 0),
	(56, 56, 1),
	(57, 57, 0);
/*!40000 ALTER TABLE `oc_category_path` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_category_to_layout
DROP TABLE IF EXISTS `oc_category_to_layout`;
CREATE TABLE IF NOT EXISTS `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_category_to_layout: 0 rows
DELETE FROM `oc_category_to_layout`;
/*!40000 ALTER TABLE `oc_category_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_category_to_layout` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_category_to_store
DROP TABLE IF EXISTS `oc_category_to_store`;
CREATE TABLE IF NOT EXISTS `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_category_to_store: 38 rows
DELETE FROM `oc_category_to_store`;
/*!40000 ALTER TABLE `oc_category_to_store` DISABLE KEYS */;
INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
	(17, 0),
	(18, 0),
	(20, 0),
	(24, 0),
	(25, 0),
	(26, 0),
	(27, 0),
	(28, 0),
	(29, 0),
	(30, 0),
	(31, 0),
	(32, 0),
	(33, 0),
	(34, 0),
	(35, 0),
	(36, 0),
	(37, 0),
	(38, 0),
	(39, 0),
	(40, 0),
	(41, 0),
	(42, 0),
	(43, 0),
	(44, 0),
	(45, 0),
	(46, 0),
	(47, 0),
	(48, 0),
	(49, 0),
	(50, 0),
	(51, 0),
	(52, 0),
	(53, 0),
	(54, 0),
	(55, 0),
	(56, 0),
	(57, 0),
	(58, 0);
/*!40000 ALTER TABLE `oc_category_to_store` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_country
DROP TABLE IF EXISTS `oc_country`;
CREATE TABLE IF NOT EXISTS `oc_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=227 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_country: 7 rows
DELETE FROM `oc_country`;
/*!40000 ALTER TABLE `oc_country` DISABLE KEYS */;
INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
	(20, 'Белоруссия (Беларусь)', 'BY', 'BLR', '', 0, 1),
	(80, 'Грузия', 'GE', 'GEO', '', 0, 1),
	(109, 'Казахстан', 'KZ', 'KAZ', '', 0, 1),
	(115, 'Киргизия (Кыргызстан)', 'KG', 'KGZ', '', 0, 1),
	(176, 'Российская Федерация', 'RU', 'RUS', '', 0, 1),
	(220, 'Украина', 'UA', 'UKR', '', 0, 1),
	(226, 'Узбекистан', 'UZ', 'UZB', '', 0, 1);
/*!40000 ALTER TABLE `oc_country` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_coupon
DROP TABLE IF EXISTS `oc_coupon`;
CREATE TABLE IF NOT EXISTS `oc_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_coupon: 3 rows
DELETE FROM `oc_coupon`;
/*!40000 ALTER TABLE `oc_coupon` DISABLE KEYS */;
INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
	(4, '-10% Discount', '2222', 'P', 10.0000, 0, 0, 0.0000, '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
	(5, 'Free Shipping', '3333', 'P', 0.0000, 0, 1, 100.0000, '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
	(6, '-10.00 Discount', '1111', 'F', 10.0000, 0, 0, 10.0000, '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');
/*!40000 ALTER TABLE `oc_coupon` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_coupon_category
DROP TABLE IF EXISTS `oc_coupon_category`;
CREATE TABLE IF NOT EXISTS `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_coupon_category: 0 rows
DELETE FROM `oc_coupon_category`;
/*!40000 ALTER TABLE `oc_coupon_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_category` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_coupon_history
DROP TABLE IF EXISTS `oc_coupon_history`;
CREATE TABLE IF NOT EXISTS `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_coupon_history: 0 rows
DELETE FROM `oc_coupon_history`;
/*!40000 ALTER TABLE `oc_coupon_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_history` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_coupon_product
DROP TABLE IF EXISTS `oc_coupon_product`;
CREATE TABLE IF NOT EXISTS `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_coupon_product: 0 rows
DELETE FROM `oc_coupon_product`;
/*!40000 ALTER TABLE `oc_coupon_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_product` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_currency
DROP TABLE IF EXISTS `oc_currency`;
CREATE TABLE IF NOT EXISTS `oc_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` double(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_currency: 1 rows
DELETE FROM `oc_currency`;
/*!40000 ALTER TABLE `oc_currency` DISABLE KEYS */;
INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
	(1, 'Рубль', 'RUB', '', 'р.', '0', 1.00000000, 1, '2021-04-07 10:34:09');
/*!40000 ALTER TABLE `oc_currency` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_customer
DROP TABLE IF EXISTS `oc_customer`;
CREATE TABLE IF NOT EXISTS `oc_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_customer: 0 rows
DELETE FROM `oc_customer`;
/*!40000 ALTER TABLE `oc_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_customer_activity
DROP TABLE IF EXISTS `oc_customer_activity`;
CREATE TABLE IF NOT EXISTS `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_customer_activity: 0 rows
DELETE FROM `oc_customer_activity`;
/*!40000 ALTER TABLE `oc_customer_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_activity` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_customer_affiliate
DROP TABLE IF EXISTS `oc_customer_affiliate`;
CREATE TABLE IF NOT EXISTS `oc_customer_affiliate` (
  `customer_id` int(11) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `custom_field` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_customer_affiliate: 0 rows
DELETE FROM `oc_customer_affiliate`;
/*!40000 ALTER TABLE `oc_customer_affiliate` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_affiliate` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_customer_approval
DROP TABLE IF EXISTS `oc_customer_approval`;
CREATE TABLE IF NOT EXISTS `oc_customer_approval` (
  `customer_approval_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `type` varchar(9) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_approval_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_customer_approval: 0 rows
DELETE FROM `oc_customer_approval`;
/*!40000 ALTER TABLE `oc_customer_approval` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_approval` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_customer_group
DROP TABLE IF EXISTS `oc_customer_group`;
CREATE TABLE IF NOT EXISTS `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_customer_group: 1 rows
DELETE FROM `oc_customer_group`;
/*!40000 ALTER TABLE `oc_customer_group` DISABLE KEYS */;
INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
	(1, 0, 1);
/*!40000 ALTER TABLE `oc_customer_group` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_customer_group_description
DROP TABLE IF EXISTS `oc_customer_group_description`;
CREATE TABLE IF NOT EXISTS `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_customer_group_description: 1 rows
DELETE FROM `oc_customer_group_description`;
/*!40000 ALTER TABLE `oc_customer_group_description` DISABLE KEYS */;
INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
	(1, 1, 'Default', 'test');
/*!40000 ALTER TABLE `oc_customer_group_description` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_customer_history
DROP TABLE IF EXISTS `oc_customer_history`;
CREATE TABLE IF NOT EXISTS `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_customer_history: 0 rows
DELETE FROM `oc_customer_history`;
/*!40000 ALTER TABLE `oc_customer_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_history` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_customer_ip
DROP TABLE IF EXISTS `oc_customer_ip`;
CREATE TABLE IF NOT EXISTS `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_customer_ip: 0 rows
DELETE FROM `oc_customer_ip`;
/*!40000 ALTER TABLE `oc_customer_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_ip` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_customer_login
DROP TABLE IF EXISTS `oc_customer_login`;
CREATE TABLE IF NOT EXISTS `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`customer_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_customer_login: 0 rows
DELETE FROM `oc_customer_login`;
/*!40000 ALTER TABLE `oc_customer_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_login` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_customer_online
DROP TABLE IF EXISTS `oc_customer_online`;
CREATE TABLE IF NOT EXISTS `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_customer_online: 0 rows
DELETE FROM `oc_customer_online`;
/*!40000 ALTER TABLE `oc_customer_online` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_online` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_customer_reward
DROP TABLE IF EXISTS `oc_customer_reward`;
CREATE TABLE IF NOT EXISTS `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_customer_reward: 0 rows
DELETE FROM `oc_customer_reward`;
/*!40000 ALTER TABLE `oc_customer_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_reward` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_customer_search
DROP TABLE IF EXISTS `oc_customer_search`;
CREATE TABLE IF NOT EXISTS `oc_customer_search` (
  `customer_search_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_search_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_customer_search: 0 rows
DELETE FROM `oc_customer_search`;
/*!40000 ALTER TABLE `oc_customer_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_search` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_customer_transaction
DROP TABLE IF EXISTS `oc_customer_transaction`;
CREATE TABLE IF NOT EXISTS `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_customer_transaction: 0 rows
DELETE FROM `oc_customer_transaction`;
/*!40000 ALTER TABLE `oc_customer_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_transaction` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_customer_wishlist
DROP TABLE IF EXISTS `oc_customer_wishlist`;
CREATE TABLE IF NOT EXISTS `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_customer_wishlist: 0 rows
DELETE FROM `oc_customer_wishlist`;
/*!40000 ALTER TABLE `oc_customer_wishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_wishlist` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_custom_field
DROP TABLE IF EXISTS `oc_custom_field`;
CREATE TABLE IF NOT EXISTS `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_custom_field: 0 rows
DELETE FROM `oc_custom_field`;
/*!40000 ALTER TABLE `oc_custom_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_custom_field_customer_group
DROP TABLE IF EXISTS `oc_custom_field_customer_group`;
CREATE TABLE IF NOT EXISTS `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_custom_field_customer_group: 0 rows
DELETE FROM `oc_custom_field_customer_group`;
/*!40000 ALTER TABLE `oc_custom_field_customer_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_customer_group` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_custom_field_description
DROP TABLE IF EXISTS `oc_custom_field_description`;
CREATE TABLE IF NOT EXISTS `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_custom_field_description: 0 rows
DELETE FROM `oc_custom_field_description`;
/*!40000 ALTER TABLE `oc_custom_field_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_description` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_custom_field_value
DROP TABLE IF EXISTS `oc_custom_field_value`;
CREATE TABLE IF NOT EXISTS `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_custom_field_value: 0 rows
DELETE FROM `oc_custom_field_value`;
/*!40000 ALTER TABLE `oc_custom_field_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_value` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_custom_field_value_description
DROP TABLE IF EXISTS `oc_custom_field_value_description`;
CREATE TABLE IF NOT EXISTS `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_custom_field_value_description: 0 rows
DELETE FROM `oc_custom_field_value_description`;
/*!40000 ALTER TABLE `oc_custom_field_value_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_value_description` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_download
DROP TABLE IF EXISTS `oc_download`;
CREATE TABLE IF NOT EXISTS `oc_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_download: 0 rows
DELETE FROM `oc_download`;
/*!40000 ALTER TABLE `oc_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_download` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_download_description
DROP TABLE IF EXISTS `oc_download_description`;
CREATE TABLE IF NOT EXISTS `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_download_description: 0 rows
DELETE FROM `oc_download_description`;
/*!40000 ALTER TABLE `oc_download_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_download_description` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_event
DROP TABLE IF EXISTS `oc_event`;
CREATE TABLE IF NOT EXISTS `oc_event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_event: 45 rows
DELETE FROM `oc_event`;
/*!40000 ALTER TABLE `oc_event` DISABLE KEYS */;
INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`, `sort_order`) VALUES
	(1, 'activity_customer_add', 'catalog/model/account/customer/addCustomer/after', 'event/activity/addCustomer', 1, 0),
	(2, 'activity_customer_edit', 'catalog/model/account/customer/editCustomer/after', 'event/activity/editCustomer', 1, 0),
	(3, 'activity_customer_password', 'catalog/model/account/customer/editPassword/after', 'event/activity/editPassword', 1, 0),
	(4, 'activity_customer_forgotten', 'catalog/model/account/customer/editCode/after', 'event/activity/forgotten', 1, 0),
	(5, 'activity_transaction', 'catalog/model/account/customer/addTransaction/after', 'event/activity/addTransaction', 1, 0),
	(6, 'activity_customer_login', 'catalog/model/account/customer/deleteLoginAttempts/after', 'event/activity/login', 1, 0),
	(7, 'activity_address_add', 'catalog/model/account/address/addAddress/after', 'event/activity/addAddress', 1, 0),
	(8, 'activity_address_edit', 'catalog/model/account/address/editAddress/after', 'event/activity/editAddress', 1, 0),
	(9, 'activity_address_delete', 'catalog/model/account/address/deleteAddress/after', 'event/activity/deleteAddress', 1, 0),
	(10, 'activity_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'event/activity/addAffiliate', 1, 0),
	(11, 'activity_affiliate_edit', 'catalog/model/account/customer/editAffiliate/after', 'event/activity/editAffiliate', 1, 0),
	(12, 'activity_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'event/activity/addOrderHistory', 1, 0),
	(13, 'activity_return_add', 'catalog/model/account/return/addReturn/after', 'event/activity/addReturn', 1, 0),
	(14, 'mail_transaction', 'catalog/model/account/customer/addTransaction/after', 'mail/transaction', 1, 0),
	(15, 'mail_forgotten', 'catalog/model/account/customer/editCode/after', 'mail/forgotten', 1, 0),
	(16, 'mail_customer_add', 'catalog/model/account/customer/addCustomer/after', 'mail/register', 1, 0),
	(17, 'mail_customer_alert', 'catalog/model/account/customer/addCustomer/after', 'mail/register/alert', 1, 0),
	(18, 'mail_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate', 1, 0),
	(19, 'mail_affiliate_alert', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate/alert', 1, 0),
	(20, 'mail_voucher', 'catalog/model/checkout/order/addOrderHistory/after', 'extension/total/voucher/send', 1, 0),
	(21, 'mail_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order', 1, 0),
	(22, 'mail_order_alert', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order/alert', 1, 0),
	(23, 'statistics_review_add', 'catalog/model/catalog/review/addReview/after', 'event/statistics/addReview', 1, 0),
	(24, 'statistics_return_add', 'catalog/model/account/return/addReturn/after', 'event/statistics/addReturn', 1, 0),
	(25, 'statistics_order_history', 'catalog/model/checkout/order/addOrderHistory/after', 'event/statistics/addOrderHistory', 1, 0),
	(26, 'admin_mail_affiliate_approve', 'admin/model/customer/customer_approval/approveAffiliate/after', 'mail/affiliate/approve', 1, 0),
	(27, 'admin_mail_affiliate_deny', 'admin/model/customer/customer_approval/denyAffiliate/after', 'mail/affiliate/deny', 1, 0),
	(28, 'admin_mail_customer_approve', 'admin/model/customer/customer_approval/approveCustomer/after', 'mail/customer/approve', 1, 0),
	(29, 'admin_mail_customer_deny', 'admin/model/customer/customer_approval/denyCustomer/after', 'mail/customer/deny', 1, 0),
	(30, 'admin_mail_reward', 'admin/model/customer/customer/addReward/after', 'mail/reward', 1, 0),
	(31, 'admin_mail_transaction', 'admin/model/customer/customer/addTransaction/after', 'mail/transaction', 1, 0),
	(32, 'admin_mail_return', 'admin/model/sale/return/addReturn/after', 'mail/return', 1, 0),
	(33, 'admin_mail_forgotten', 'admin/model/user/user/editCode/after', 'mail/forgotten', 1, 0),
	(34, 'advertise_google', 'admin/model/catalog/product/deleteProduct/after', 'extension/advertise/google/deleteProduct', 1, 0),
	(35, 'advertise_google', 'admin/model/catalog/product/copyProduct/after', 'extension/advertise/google/copyProduct', 1, 0),
	(36, 'advertise_google', 'admin/view/common/column_left/before', 'extension/advertise/google/admin_link', 1, 0),
	(37, 'advertise_google', 'admin/model/catalog/product/addProduct/after', 'extension/advertise/google/addProduct', 1, 0),
	(38, 'advertise_google', 'catalog/controller/checkout/success/before', 'extension/advertise/google/before_checkout_success', 1, 0),
	(39, 'advertise_google', 'catalog/view/common/header/after', 'extension/advertise/google/google_global_site_tag', 1, 0),
	(40, 'advertise_google', 'catalog/view/common/success/after', 'extension/advertise/google/google_dynamic_remarketing_purchase', 1, 0),
	(41, 'advertise_google', 'catalog/view/product/product/after', 'extension/advertise/google/google_dynamic_remarketing_product', 1, 0),
	(42, 'advertise_google', 'catalog/view/product/search/after', 'extension/advertise/google/google_dynamic_remarketing_searchresults', 1, 0),
	(43, 'advertise_google', 'catalog/view/product/category/after', 'extension/advertise/google/google_dynamic_remarketing_category', 1, 0),
	(44, 'advertise_google', 'catalog/view/common/home/after', 'extension/advertise/google/google_dynamic_remarketing_home', 1, 0),
	(45, 'advertise_google', 'catalog/view/checkout/cart/after', 'extension/advertise/google/google_dynamic_remarketing_cart', 1, 0);
/*!40000 ALTER TABLE `oc_event` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_extension
DROP TABLE IF EXISTS `oc_extension`;
CREATE TABLE IF NOT EXISTS `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_extension: 42 rows
DELETE FROM `oc_extension`;
/*!40000 ALTER TABLE `oc_extension` DISABLE KEYS */;
INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
	(1, 'payment', 'cod'),
	(2, 'total', 'shipping'),
	(3, 'total', 'sub_total'),
	(4, 'total', 'tax'),
	(5, 'total', 'total'),
	(6, 'module', 'banner'),
	(7, 'module', 'carousel'),
	(8, 'total', 'credit'),
	(9, 'shipping', 'flat'),
	(10, 'total', 'handling'),
	(11, 'total', 'low_order_fee'),
	(12, 'total', 'coupon'),
	(13, 'module', 'category'),
	(14, 'module', 'account'),
	(15, 'total', 'reward'),
	(16, 'total', 'voucher'),
	(17, 'payment', 'free_checkout'),
	(18, 'module', 'featured'),
	(19, 'module', 'slideshow'),
	(20, 'theme', 'default'),
	(21, 'dashboard', 'activity'),
	(22, 'dashboard', 'sale'),
	(23, 'dashboard', 'recent'),
	(24, 'dashboard', 'order'),
	(25, 'dashboard', 'online'),
	(26, 'dashboard', 'map'),
	(27, 'dashboard', 'customer'),
	(28, 'dashboard', 'chart'),
	(29, 'report', 'sale_coupon'),
	(31, 'report', 'customer_search'),
	(32, 'report', 'customer_transaction'),
	(33, 'report', 'product_purchased'),
	(34, 'report', 'product_viewed'),
	(35, 'report', 'sale_return'),
	(36, 'report', 'sale_order'),
	(37, 'report', 'sale_shipping'),
	(38, 'report', 'sale_tax'),
	(39, 'report', 'customer_activity'),
	(40, 'report', 'customer_order'),
	(41, 'report', 'customer_reward'),
	(42, 'advertise', 'google'),
	(44, 'module', 'cookiepolicy');
/*!40000 ALTER TABLE `oc_extension` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_extension_install
DROP TABLE IF EXISTS `oc_extension_install`;
CREATE TABLE IF NOT EXISTS `oc_extension_install` (
  `extension_install_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_download_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`extension_install_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_extension_install: 2 rows
DELETE FROM `oc_extension_install`;
/*!40000 ALTER TABLE `oc_extension_install` DISABLE KEYS */;
INSERT INTO `oc_extension_install` (`extension_install_id`, `extension_download_id`, `filename`, `date_added`) VALUES
	(2, 0, 'CookiePolicy_v3.1.3_OC3.0.x.ocmod.zip', '2021-04-07 13:14:30');
/*!40000 ALTER TABLE `oc_extension_install` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_extension_path
DROP TABLE IF EXISTS `oc_extension_path`;
CREATE TABLE IF NOT EXISTS `oc_extension_path` (
  `extension_path_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_install_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`extension_path_id`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_extension_path: 73 rows
DELETE FROM `oc_extension_path`;
/*!40000 ALTER TABLE `oc_extension_path` DISABLE KEYS */;
INSERT INTO `oc_extension_path` (`extension_path_id`, `extension_install_id`, `path`, `date_added`) VALUES
	(10, 2, 'admin/language/uk-ua', '2021-04-07 13:14:34'),
	(11, 2, 'admin/language/uk-ua/extension', '2021-04-07 13:14:34'),
	(12, 2, 'admin/view/javascript/cookiepolicy', '2021-04-07 13:14:34'),
	(13, 2, 'catalog/view/javascript/cookiepolicy', '2021-04-07 13:14:34'),
	(14, 2, 'admin/controller/extension/module/cookiepolicy.php', '2021-04-07 13:14:34'),
	(15, 2, 'admin/language/uk-ua/extension/module', '2021-04-07 13:14:34'),
	(16, 2, 'admin/view/javascript/cookiepolicy/cookiepolicy.css', '2021-04-07 13:14:34'),
	(17, 2, 'admin/view/javascript/cookiepolicy/cookiepolicy_popup.js', '2021-04-07 13:14:34'),
	(18, 2, 'admin/view/javascript/cookiepolicy/font-awesome', '2021-04-07 13:14:34'),
	(19, 2, 'admin/view/javascript/cookiepolicy/jscolor', '2021-04-07 13:14:34'),
	(20, 2, 'catalog/view/javascript/cookiepolicy/cookiepolicy.css', '2021-04-07 13:14:34'),
	(21, 2, 'catalog/view/javascript/cookiepolicy/jquery.cookie.js', '2021-04-07 13:14:34'),
	(22, 2, 'catalog/view/javascript/cookiepolicy/jquery.cookiecuttr.js', '2021-04-07 13:14:34'),
	(23, 2, 'admin/language/en-gb/extension/module/cookiepolicy.php', '2021-04-07 13:14:34'),
	(24, 2, 'admin/language/ru-ru/extension/module/cookiepolicy.php', '2021-04-07 13:14:34'),
	(25, 2, 'admin/language/uk-ua/extension/module/cookiepolicy.php', '2021-04-07 13:14:34'),
	(26, 2, 'admin/view/javascript/cookiepolicy/font-awesome/css', '2021-04-07 13:14:34'),
	(27, 2, 'admin/view/javascript/cookiepolicy/font-awesome/fonts', '2021-04-07 13:14:34'),
	(28, 2, 'admin/view/javascript/cookiepolicy/font-awesome/less', '2021-04-07 13:14:34'),
	(29, 2, 'admin/view/javascript/cookiepolicy/font-awesome/scss', '2021-04-07 13:14:34'),
	(30, 2, 'admin/view/javascript/cookiepolicy/jscolor/arrow.gif', '2021-04-07 13:14:34'),
	(31, 2, 'admin/view/javascript/cookiepolicy/jscolor/cross.gif', '2021-04-07 13:14:34'),
	(32, 2, 'admin/view/javascript/cookiepolicy/jscolor/hs.png', '2021-04-07 13:14:34'),
	(33, 2, 'admin/view/javascript/cookiepolicy/jscolor/hv.png', '2021-04-07 13:14:34'),
	(34, 2, 'admin/view/javascript/cookiepolicy/jscolor/jscolor.js', '2021-04-07 13:14:34'),
	(35, 2, 'admin/view/template/extension/module/cookiepolicy.twig', '2021-04-07 13:14:34'),
	(36, 2, 'admin/view/javascript/cookiepolicy/font-awesome/css/font-awesome.css', '2021-04-07 13:14:34'),
	(37, 2, 'admin/view/javascript/cookiepolicy/font-awesome/css/font-awesome.min.css', '2021-04-07 13:14:34'),
	(38, 2, 'admin/view/javascript/cookiepolicy/font-awesome/fonts/FontAwesome.otf', '2021-04-07 13:14:34'),
	(39, 2, 'admin/view/javascript/cookiepolicy/font-awesome/fonts/fontawesome-webfont.eot', '2021-04-07 13:14:34'),
	(40, 2, 'admin/view/javascript/cookiepolicy/font-awesome/fonts/fontawesome-webfont.svg', '2021-04-07 13:14:34'),
	(41, 2, 'admin/view/javascript/cookiepolicy/font-awesome/fonts/fontawesome-webfont.ttf', '2021-04-07 13:14:34'),
	(42, 2, 'admin/view/javascript/cookiepolicy/font-awesome/fonts/fontawesome-webfont.woff', '2021-04-07 13:14:34'),
	(43, 2, 'admin/view/javascript/cookiepolicy/font-awesome/fonts/fontawesome-webfont.woff2', '2021-04-07 13:14:34'),
	(44, 2, 'admin/view/javascript/cookiepolicy/font-awesome/less/animated.less', '2021-04-07 13:14:34'),
	(45, 2, 'admin/view/javascript/cookiepolicy/font-awesome/less/bordered-pulled.less', '2021-04-07 13:14:34'),
	(46, 2, 'admin/view/javascript/cookiepolicy/font-awesome/less/core.less', '2021-04-07 13:14:34'),
	(47, 2, 'admin/view/javascript/cookiepolicy/font-awesome/less/fixed-width.less', '2021-04-07 13:14:34'),
	(48, 2, 'admin/view/javascript/cookiepolicy/font-awesome/less/font-awesome.less', '2021-04-07 13:14:34'),
	(49, 2, 'admin/view/javascript/cookiepolicy/font-awesome/less/icons.less', '2021-04-07 13:14:34'),
	(50, 2, 'admin/view/javascript/cookiepolicy/font-awesome/less/larger.less', '2021-04-07 13:14:34'),
	(51, 2, 'admin/view/javascript/cookiepolicy/font-awesome/less/list.less', '2021-04-07 13:14:34'),
	(52, 2, 'admin/view/javascript/cookiepolicy/font-awesome/less/mixins.less', '2021-04-07 13:14:34'),
	(53, 2, 'admin/view/javascript/cookiepolicy/font-awesome/less/path.less', '2021-04-07 13:14:34'),
	(54, 2, 'admin/view/javascript/cookiepolicy/font-awesome/less/rotated-flipped.less', '2021-04-07 13:14:34'),
	(55, 2, 'admin/view/javascript/cookiepolicy/font-awesome/less/screen-reader.less', '2021-04-07 13:14:34'),
	(56, 2, 'admin/view/javascript/cookiepolicy/font-awesome/less/spinning.less', '2021-04-07 13:14:34'),
	(57, 2, 'admin/view/javascript/cookiepolicy/font-awesome/less/stacked.less', '2021-04-07 13:14:34'),
	(58, 2, 'admin/view/javascript/cookiepolicy/font-awesome/less/variables.less', '2021-04-07 13:14:34'),
	(59, 2, 'admin/view/javascript/cookiepolicy/font-awesome/scss/_animated.scss', '2021-04-07 13:14:34'),
	(60, 2, 'admin/view/javascript/cookiepolicy/font-awesome/scss/_bordered-pulled.scss', '2021-04-07 13:14:34'),
	(61, 2, 'admin/view/javascript/cookiepolicy/font-awesome/scss/_core.scss', '2021-04-07 13:14:34'),
	(62, 2, 'admin/view/javascript/cookiepolicy/font-awesome/scss/_fixed-width.scss', '2021-04-07 13:14:34'),
	(63, 2, 'admin/view/javascript/cookiepolicy/font-awesome/scss/_icons.scss', '2021-04-07 13:14:34'),
	(64, 2, 'admin/view/javascript/cookiepolicy/font-awesome/scss/_larger.scss', '2021-04-07 13:14:34'),
	(65, 2, 'admin/view/javascript/cookiepolicy/font-awesome/scss/_list.scss', '2021-04-07 13:14:34'),
	(66, 2, 'admin/view/javascript/cookiepolicy/font-awesome/scss/_mixins.scss', '2021-04-07 13:14:34'),
	(67, 2, 'admin/view/javascript/cookiepolicy/font-awesome/scss/_path.scss', '2021-04-07 13:14:34'),
	(68, 2, 'admin/view/javascript/cookiepolicy/font-awesome/scss/_rotated-flipped.scss', '2021-04-07 13:14:34'),
	(69, 2, 'admin/view/javascript/cookiepolicy/font-awesome/scss/_screen-reader.scss', '2021-04-07 13:14:34'),
	(70, 2, 'admin/view/javascript/cookiepolicy/font-awesome/scss/_spinning.scss', '2021-04-07 13:14:34'),
	(71, 2, 'admin/view/javascript/cookiepolicy/font-awesome/scss/_stacked.scss', '2021-04-07 13:14:34'),
	(72, 2, 'admin/view/javascript/cookiepolicy/font-awesome/scss/_variables.scss', '2021-04-07 13:14:34'),
	(73, 2, 'admin/view/javascript/cookiepolicy/font-awesome/scss/font-awesome.scss', '2021-04-07 13:14:34');
/*!40000 ALTER TABLE `oc_extension_path` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_filter
DROP TABLE IF EXISTS `oc_filter`;
CREATE TABLE IF NOT EXISTS `oc_filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_filter: 0 rows
DELETE FROM `oc_filter`;
/*!40000 ALTER TABLE `oc_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_filter_description
DROP TABLE IF EXISTS `oc_filter_description`;
CREATE TABLE IF NOT EXISTS `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_filter_description: 0 rows
DELETE FROM `oc_filter_description`;
/*!40000 ALTER TABLE `oc_filter_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter_description` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_filter_group
DROP TABLE IF EXISTS `oc_filter_group`;
CREATE TABLE IF NOT EXISTS `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_filter_group: 0 rows
DELETE FROM `oc_filter_group`;
/*!40000 ALTER TABLE `oc_filter_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter_group` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_filter_group_description
DROP TABLE IF EXISTS `oc_filter_group_description`;
CREATE TABLE IF NOT EXISTS `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_filter_group_description: 0 rows
DELETE FROM `oc_filter_group_description`;
/*!40000 ALTER TABLE `oc_filter_group_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter_group_description` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_geo_zone
DROP TABLE IF EXISTS `oc_geo_zone`;
CREATE TABLE IF NOT EXISTS `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_geo_zone: 1 rows
DELETE FROM `oc_geo_zone`;
/*!40000 ALTER TABLE `oc_geo_zone` DISABLE KEYS */;
INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_added`, `date_modified`) VALUES
	(3, 'Зона НДС', 'Облагаемые НДС', '2014-05-21 22:30:20', '2014-09-09 11:48:13');
/*!40000 ALTER TABLE `oc_geo_zone` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_googleshopping_category
DROP TABLE IF EXISTS `oc_googleshopping_category`;
CREATE TABLE IF NOT EXISTS `oc_googleshopping_category` (
  `google_product_category` varchar(10) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`google_product_category`,`store_id`),
  KEY `category_id_store_id` (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_googleshopping_category: 0 rows
DELETE FROM `oc_googleshopping_category`;
/*!40000 ALTER TABLE `oc_googleshopping_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_googleshopping_category` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_googleshopping_product
DROP TABLE IF EXISTS `oc_googleshopping_product`;
CREATE TABLE IF NOT EXISTS `oc_googleshopping_product` (
  `product_advertise_google_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `has_issues` tinyint(1) DEFAULT NULL,
  `destination_status` enum('pending','approved','disapproved') NOT NULL DEFAULT 'pending',
  `impressions` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `conversions` int(11) NOT NULL DEFAULT '0',
  `cost` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `conversion_value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `google_product_category` varchar(10) DEFAULT NULL,
  `condition` enum('new','refurbished','used') DEFAULT NULL,
  `adult` tinyint(1) DEFAULT NULL,
  `multipack` int(11) DEFAULT NULL,
  `is_bundle` tinyint(1) DEFAULT NULL,
  `age_group` enum('newborn','infant','toddler','kids','adult') DEFAULT NULL,
  `color` int(11) DEFAULT NULL,
  `gender` enum('male','female','unisex') DEFAULT NULL,
  `size_type` enum('regular','petite','plus','big and tall','maternity') DEFAULT NULL,
  `size_system` enum('AU','BR','CN','DE','EU','FR','IT','JP','MEX','UK','US') DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `is_modified` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_advertise_google_id`),
  UNIQUE KEY `product_id_store_id` (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_googleshopping_product: 0 rows
DELETE FROM `oc_googleshopping_product`;
/*!40000 ALTER TABLE `oc_googleshopping_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_googleshopping_product` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_googleshopping_product_status
DROP TABLE IF EXISTS `oc_googleshopping_product_status`;
CREATE TABLE IF NOT EXISTS `oc_googleshopping_product_status` (
  `product_id` int(11) NOT NULL DEFAULT '0',
  `store_id` int(11) NOT NULL DEFAULT '0',
  `product_variation_id` varchar(64) NOT NULL DEFAULT '',
  `destination_statuses` text NOT NULL,
  `data_quality_issues` text NOT NULL,
  `item_level_issues` text NOT NULL,
  `google_expiration_date` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`,`product_variation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_googleshopping_product_status: 0 rows
DELETE FROM `oc_googleshopping_product_status`;
/*!40000 ALTER TABLE `oc_googleshopping_product_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_googleshopping_product_status` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_googleshopping_product_target
DROP TABLE IF EXISTS `oc_googleshopping_product_target`;
CREATE TABLE IF NOT EXISTS `oc_googleshopping_product_target` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `advertise_google_target_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`advertise_google_target_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_googleshopping_product_target: 0 rows
DELETE FROM `oc_googleshopping_product_target`;
/*!40000 ALTER TABLE `oc_googleshopping_product_target` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_googleshopping_product_target` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_googleshopping_target
DROP TABLE IF EXISTS `oc_googleshopping_target`;
CREATE TABLE IF NOT EXISTS `oc_googleshopping_target` (
  `advertise_google_target_id` int(11) unsigned NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `campaign_name` varchar(255) NOT NULL DEFAULT '',
  `country` varchar(2) NOT NULL DEFAULT '',
  `budget` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `feeds` text NOT NULL,
  `status` enum('paused','active') NOT NULL DEFAULT 'paused',
  `date_added` date DEFAULT NULL,
  `roas` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`advertise_google_target_id`),
  KEY `store_id` (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_googleshopping_target: 0 rows
DELETE FROM `oc_googleshopping_target`;
/*!40000 ALTER TABLE `oc_googleshopping_target` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_googleshopping_target` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_information
DROP TABLE IF EXISTS `oc_information`;
CREATE TABLE IF NOT EXISTS `oc_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_information: 5 rows
DELETE FROM `oc_information`;
/*!40000 ALTER TABLE `oc_information` DISABLE KEYS */;
INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
	(3, 1, 3, 1),
	(4, 1, 1, 1),
	(5, 1, 4, 1),
	(6, 1, 2, 1),
	(8, 0, 0, 1);
/*!40000 ALTER TABLE `oc_information` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_information_description
DROP TABLE IF EXISTS `oc_information_description`;
CREATE TABLE IF NOT EXISTS `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_information_description: 5 rows
DELETE FROM `oc_information_description`;
/*!40000 ALTER TABLE `oc_information_description` DISABLE KEYS */;
INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
	(4, 1, 'О нас', '&lt;p&gt;\r\n	Мы компания ООО &quot;ЛОКАЛХОСТ&quot; Занимаемся продажей чего-угодно уже 10 лет на рынке РФ!&lt;/p&gt;&lt;p&gt;Наши специалисты очень крутые ребята, мы подбираем товар очень тщательно!&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;МЫ НАХОДИМСЯ ПО АДРЕСУ - г. Москва, ул. Можайская, д.32 офис 314&lt;/p&gt;', 'О нас', '', ''),
	(5, 1, 'Условия продажи товара и лицензионное соглашение', '&lt;ol style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; list-style: none; counter-reset: li 0; padding: 0px; color: rgb(69, 54, 64); font-family: Roboto, &amp;quot;Open Sans&amp;quot;; font-size: 14px;&quot;&gt;&lt;li style=&quot;padding-left: 12px; margin-top: 8px; font-weight: bold;&quot;&gt;Общие положения&lt;ol style=&quot;margin-right: 0px; margin-left: 0px; list-style: none; counter-reset: li 0; padding: 0px;&quot;&gt;&lt;li style=&quot;padding-left: 12px; margin-top: 8px; font-weight: normal;&quot;&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;Продавец&lt;/span&gt;&amp;nbsp;— Общество с ограниченной ответственностью «Деликатный переезд», юридический адрес: 115419, г. Москва, Муниципальный округ Донской вн. тер. г., Орджоникидзе ул., д. 11, стр. 1А, этаж 3, помещ. VIII комната № 1..&amp;nbsp;Фактический и почтовый адрес:&amp;nbsp;115419, г. Москва, Орджоникидзе ул., д. 11, стр. 1А, блок Г, подъезд 24, этаж 3.&amp;nbsp;ИНН 7725377751, ОГРН 1177746554700.&lt;/li&gt;&lt;li style=&quot;padding-left: 12px; margin-top: 8px; font-weight: normal;&quot;&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;Покупатель&lt;/span&gt;&amp;nbsp;– лицо, приобретающее или имеющее намерение приобрести товар или товары, предлагаемый к продаже продавцом с использованием интернет-магазина; Потребитель – покупатель, являющийся физическим лицом и приобретающий либо имеющий намерение приобрести товар на сайте&amp;nbsp;&amp;nbsp;для личных, семейных, домашних и иных нужд, не связанных с осуществлением предпринимательской деятельности;&lt;/li&gt;&lt;li style=&quot;padding-left: 12px; margin-top: 8px; font-weight: normal;&quot;&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;Сайт&lt;/span&gt;&amp;nbsp;— текущий сайт&lt;/li&gt;&lt;li style=&quot;padding-left: 12px; margin-top: 8px; font-weight: normal;&quot;&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;Интернет-магазин&lt;/span&gt;&amp;nbsp;— Совокупность страниц на Интернет-сайте Продавца, имеющий адрес в сети Интернет. На нем представлены товары, предлагаемые Продавцом для оформления Заказов, а также условия оплаты и доставки этих Заказов Покупателям.&lt;/li&gt;&lt;li style=&quot;padding-left: 12px; margin-top: 8px; font-weight: normal;&quot;&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;Товар&lt;/span&gt;&amp;nbsp;— объект материального мира, не изъятый из гражданского оборота и представленный к продаже на Сайте&lt;/li&gt;&lt;/ol&gt;&lt;/li&gt;&lt;li style=&quot;padding-left: 12px; margin-top: 8px; font-weight: bold;&quot;&gt;Порядок приобретения товаров&lt;ol style=&quot;margin-right: 0px; margin-left: 0px; list-style: none; counter-reset: li 0; padding: 0px;&quot;&gt;&lt;li style=&quot;padding-left: 12px; margin-top: 8px; font-weight: normal;&quot;&gt;Покупатель оформляет Заказ путем направления заявки в интернет-магазине, а также по телефону +7 (495) 106-30-04. Покупатель, при оформлении Заказа предоставляет Продавцу информацию, необходимую для выполнения заказа и продажи Товара Покупателю;&lt;/li&gt;&lt;li style=&quot;padding-left: 12px; margin-top: 8px; font-weight: normal;&quot;&gt;Покупатель предоставляет следующую информацию о себе: фамилию, имя, отчество, адрес электронной почты, номер телефона. Покупатель также вправе предоставить дополнительную информацию, адрес и др.;&lt;/li&gt;&lt;li style=&quot;padding-left: 12px; margin-top: 8px; font-weight: normal;&quot;&gt;Продавец не несёт ответственность за полноту и достоверность информации, предоставляемой Покупателем. Если с Покупателем невозможно связаться по указанным контактным данным Заказ считается аннулированным.&lt;/li&gt;&lt;li style=&quot;padding-left: 12px; margin-top: 8px; font-weight: normal;&quot;&gt;Отправляя Заказ Покупатель подтверждает, что Продавец предоставил всю необходимую Покупателю информацию о Товаре, его основных потребительских свойствах, месте изготовления, цене и условиях приобретения товара, его доставки, сроке службы, сроке годности, гарантийном сроке, и иную информацию, необходимую Покупателю для правильного выбора Товара;&lt;/li&gt;&lt;li style=&quot;padding-left: 12px; margin-top: 8px; font-weight: normal;&quot;&gt;После обработки Заказа Продавец направляет Покупателю информацию о готовности заключить договор купли-продажи и согласует условия и порядок доставки и оплаты Товара.&lt;br&gt;Сообщение Продавца должно содержать:&lt;br&gt;- полное фирменное наименование и адрес Продавца;&lt;br&gt;- фамилия, имя, отчество Покупателя или указанного им лица;&lt;br&gt;- способ доставки;&lt;br&gt;- адрес, по которому следует доставить товар;&lt;br&gt;- наименование товара, марка, разновидность, количество предметов, входящих в комплект приобретаемого товара;&lt;br&gt;- цена товара;&lt;br&gt;- вид услуги (при предоставлении), время её исполнения и стоимость;&lt;br&gt;- контактный телефон, электронную почту или иную контактную информацию.&lt;/li&gt;&lt;li style=&quot;padding-left: 12px; margin-top: 8px; font-weight: normal;&quot;&gt;В случае отсутствия у сторон соглашения хотя бы по одному из существенных условий договор купли-продажи не может быть заключен;&lt;/li&gt;&lt;li style=&quot;padding-left: 12px; margin-top: 8px; font-weight: normal;&quot;&gt;Продавец вправе не принимать Заказ от Покупателя, а принятый Заказ аннулировать, если он содержит товар, который данный Покупатель неоднократно заказывал, но отказывался от получения или возвращал такой товар надлежащего качества;&lt;/li&gt;&lt;li style=&quot;padding-left: 12px; margin-top: 8px; font-weight: normal;&quot;&gt;Договор купли-продажи считается заключенным с момента достижения соглашения между Продавцом и Покупателем по всем существенным условиям договора, в том числе но не ограничиваясь, о цене Товара, ассортименте, сроке и порядке доставки;&lt;/li&gt;&lt;li style=&quot;padding-left: 12px; margin-top: 8px; font-weight: normal;&quot;&gt;Обязанность Продавца передать товар Покупателю считается исполненной с момента получения товара Покупателем от Продавца.&lt;/li&gt;&lt;/ol&gt;&lt;/li&gt;&lt;li style=&quot;padding-left: 12px; margin-top: 8px; font-weight: bold;&quot;&gt;Условия доставки&lt;ol style=&quot;margin-right: 0px; margin-left: 0px; list-style: none; counter-reset: li 0; padding: 0px;&quot;&gt;&lt;li style=&quot;padding-left: 12px; margin-top: 8px; font-weight: normal;&quot;&gt;Доставка товара возможна следующими способами:&lt;ol style=&quot;margin-right: 0px; margin-left: 0px; list-style: none; counter-reset: li 0; padding: 0px;&quot;&gt;&lt;li style=&quot;padding-left: 12px; margin-top: 8px;&quot;&gt;силами Продавца, в том числе путем привлечения службы доставки ежедневно с 8.00 до 22.00. В стоимость доставки входит подъем на этаж, до двери квартиры или офиса.&lt;br&gt;Территория, доступная для доставки: г. Москва.&lt;br&gt;Стоимость доставки:&lt;br&gt;- в пределах МКАД - 600 руб.,&lt;br&gt;- за МКАД - 600 руб. + 22&amp;nbsp;руб./км., в обе стороны&lt;br&gt;При покупке упаковочных материалов на сумму свыше 8000 рублей доставка в пределах МКАД – бесплатно, за МКАД – доплата 22&amp;nbsp;руб./км., в обе стороны&lt;/li&gt;&lt;li style=&quot;padding-left: 12px; margin-top: 8px;&quot;&gt;Путем самовывоза Товара по адресу г. Москва, ул. Котляковская, д.3, стр.1. Въезд на территорию платный, стоимость&amp;nbsp;50 руб./час. Ежедневно, с 10.00 до 20.00&amp;nbsp;при условии предварительного оформления и оплаты заказа через сайт. В выходные самовывоз возможен по предварительному звонку.&lt;/li&gt;&lt;/ol&gt;&lt;/li&gt;&lt;li style=&quot;padding-left: 12px; margin-top: 8px; font-weight: normal;&quot;&gt;Продавец обязуется доставить товар Покупателю не позднее срока, согласованного сторонами;&lt;/li&gt;&lt;li style=&quot;padding-left: 12px; margin-top: 8px; font-weight: normal;&quot;&gt;Если срок доставки товара сторонами не определён и отсутствуют возможности определить этот срок, товар должен быть передан продавцом в разумный срок. Если товар не доставлен Покупателю в разумный срок, Продавец обязан доставить товар в течение 7 дней с момента предъявления Покупателем требования о доставке товара;&lt;/li&gt;&lt;li style=&quot;padding-left: 12px; margin-top: 8px; font-weight: normal;&quot;&gt;Риск случайной гибели или случайного повреждения товара переходит к Покупателю с момента передачи товара (товаров) Покупателю или указанному им лицу;&lt;/li&gt;&lt;li style=&quot;padding-left: 12px; margin-top: 8px; font-weight: normal;&quot;&gt;Товар вручается Покупателю либо лицу, указанному в качестве получателя при оформлении заказа. Продавец вправе потребовать предъявления документа, удостоверяющего личность лица, получающего товар.&lt;/li&gt;&lt;li style=&quot;padding-left: 12px; margin-top: 8px; font-weight: normal;&quot;&gt;В случае если доставка товара произведена в установленные договором сроки, но товар не был передан Покупателю по вине последнего, последующая доставка производится в новые сроки, согласованные с Продавцом, после повторной оплаты покупателем стоимости услуг по доставке товара;&lt;/li&gt;&lt;li style=&quot;padding-left: 12px; margin-top: 8px; font-weight: normal;&quot;&gt;При передаче Товара Покупатель должен проверить внешний вид и упаковку заказа, количество товара, комплектность, ассортимент;&lt;/li&gt;&lt;li style=&quot;padding-left: 12px; margin-top: 8px; font-weight: normal;&quot;&gt;В случае доставки Покупателю Товара, не соответствующего заказанному (пересорт) Покупатель, при передаче товара, вправе отказаться от данного Товара и потребовать Товар в ассортименте, предусмотренном Заказом либо возврата денежных средств за фактически не переданный Товар;&lt;/li&gt;&lt;li style=&quot;padding-left: 12px; margin-top: 8px; font-weight: normal;&quot;&gt;Если при передаче заказа Покупателем обнаружены расхождения по количеству товара в заказе, он обязан в присутствии представителя Продавца составить акт о расхождении по количеству;&lt;/li&gt;&lt;/ol&gt;&lt;/li&gt;&lt;li style=&quot;padding-left: 12px; margin-top: 8px; font-weight: bold;&quot;&gt;Условия оплаты&lt;ol style=&quot;margin-right: 0px; margin-left: 0px; list-style: none; counter-reset: li 0; padding: 0px;&quot;&gt;&lt;li style=&quot;padding-left: 12px; margin-top: 8px; font-weight: normal;&quot;&gt;Цена товара указывается в интернет-магазине;&lt;/li&gt;&lt;li style=&quot;padding-left: 12px; margin-top: 8px; font-weight: normal;&quot;&gt;Способы оплаты товара указаны на сайте в разделе&amp;nbsp;&lt;a href=&quot;http://localhost/index.php?route=information/information&amp;amp;information_id=6&quot; style=&quot;color: rgb(250, 130, 39); outline: none !important;&quot;&gt;http://localhost/index.php?route=information/information&amp;amp;information_id=6&lt;/a&gt;. Согласованным способом оплаты считается способ, выбранный Покупателем из доступных способов оплаты при оформлении Заказа;&lt;/li&gt;&lt;/ol&gt;&lt;/li&gt;&lt;li style=&quot;padding-left: 12px; margin-top: 8px; font-weight: bold;&quot;&gt;Условия возврата товара&lt;ol style=&quot;margin-right: 0px; margin-left: 0px; list-style: none; counter-reset: li 0; padding: 0px;&quot;&gt;&lt;li style=&quot;padding-left: 12px; margin-top: 8px; font-weight: normal;&quot;&gt;Адрес (местонахождения) Продавца, по которому осуществляется возврат товара: 115419, г. Москва, Орджоникидзе ул., д. 11, стр. 1А, блок Г, подъезд 24, этаж 3. Режим работы: ежедневно (кроме субботы, воскресенья и праздничных дней), часы работы: понедельник – пятница 10:00 до 19:00, тел. +7 (495) 106-30-04.&lt;/li&gt;&lt;li style=&quot;padding-left: 12px; margin-top: 8px; font-weight: normal;&quot;&gt;Покупатель может потребовать замены Товара ненадлежащего качества либо устранения недостатков, а также может возвратить Товар ненадлежащего качества Продавцу и потребовать возврата уплаченной денежной суммы в течение гарантийного срока, который составляет 14 календарных дней.&lt;/li&gt;&lt;li style=&quot;padding-left: 12px; margin-top: 8px; font-weight: normal;&quot;&gt;Покупатель вправе отказаться от товара надлежащего качества в любое время до его передачи, а после передачи товара - в течение 7 дней, не считая дня покупки. Возврат товара надлежащего качества возможен в случае, если указанный товар не был в употреблении, сохранены его товарный вид, потребительские свойства, фабричные ярлыки, а также документ, подтверждающий факт и условия покупки указанного товара (товарный или кассовый чек). Отсутствие у покупателя документа, подтверждающего факт покупки не лишает его возможности ссылаться на другие доказательства приобретения товара у данного продавца.&lt;/li&gt;&lt;li style=&quot;padding-left: 12px; margin-top: 8px; font-weight: normal;&quot;&gt;В целях экономии времени на оформление документов, связанными с возвратом Товара, Покупатель вправе предварительно позвонить для уточнения всех вопросов, связанных с возвратом товара по телефону Продавца +7 (495) 106-30-04.&lt;/li&gt;&lt;li style=&quot;padding-left: 12px; margin-top: 8px; font-weight: normal;&quot;&gt;Возмещение денежных средств за возвращенный товар осуществляется на основании письменного заявления покупателя с указанием фамилии, имени, отчества только при предъявлении в момент получения денежных средств документа, удостоверяющего личность (Паспорт) по расходно-кассовому ордеру с обязательным указанием фамилии, имени, отчества покупателя и его паспортных данных.&lt;/li&gt;&lt;li style=&quot;padding-left: 12px; margin-top: 8px; font-weight: normal;&quot;&gt;При отказе покупателя от товара продавец должен возвратить ему сумму, уплаченную покупателем за товар, за исключением расходов продавца на доставку от покупателя возвращенного товара, не позднее чем через 10 дней с даты предъявления покупателем соответствующего требования.&lt;/li&gt;&lt;li style=&quot;padding-left: 12px; margin-top: 8px; font-weight: normal;&quot;&gt;Если иное не предусмотрено соглашением Сторон, Законом или настоящими Условиями возврат денежных средств осуществляется Продавцом, по своему усмотрению одним из следующих способов:&lt;br&gt;- наличными денежными средствами по месту нахождения Продавца;&lt;br&gt;- путём перечисления соответствующей суммы на банковский или иной счёт Покупателя, указанный Покупателем;&lt;/li&gt;&lt;/ol&gt;&lt;/li&gt;&lt;li style=&quot;padding-left: 12px; margin-top: 8px; font-weight: bold;&quot;&gt;Заключительные положения&lt;ol style=&quot;margin-right: 0px; margin-left: 0px; list-style: none; counter-reset: li 0; padding: 0px;&quot;&gt;&lt;li style=&quot;padding-left: 12px; margin-top: 8px; font-weight: normal;&quot;&gt;Продавец оставляет за собой право в любое время в одностороннем порядке и без специального уведомления вносить изменения, удалять, исправлять, дополнять, либо любым иным способом обновлять информацию, размещённую во всех разделах Интернет-магазина, а также настоящие Условия;&lt;/li&gt;&lt;li style=&quot;padding-left: 12px; margin-top: 8px; font-weight: normal;&quot;&gt;Обработка персональных данных Покупателя осуществляется в порядке, предусмотренным действующим законодательством, настоящими Условиями, а также Пользовательским соглашением Сайта.&lt;/li&gt;&lt;li style=&quot;padding-left: 12px; margin-top: 8px; font-weight: normal;&quot;&gt;Во всём, что не урегулировано настоящими правилами стороны руководствуются действующим законодательством Российской Федерации;&lt;/li&gt;&lt;li style=&quot;padding-left: 12px; margin-top: 8px; font-weight: normal;&quot;&gt;Все споры и разногласия стороны будут стараться решить путём переговоров. При не достижении соглашения спор подлежит передаче на рассмотрение в судебный орган в соответствии с действующим законодательством РФ;&lt;/li&gt;&lt;li style=&quot;padding-left: 12px; margin-top: 8px; font-weight: normal;&quot;&gt;Признание судом недействительности какого-либо из условий настоящего Предложения не влечёт за собой недействительность остальных его положений.&lt;/li&gt;&lt;/ol&gt;&lt;/li&gt;&lt;/ol&gt;', 'Условия продажи товара и лицензионное соглашение', '', ''),
	(6, 1, 'Доставка', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;', 'Доставка', '', ''),
	(3, 1, 'Политика конфиденциальности', '&lt;h3 style=&quot;margin: 40px 0px 26px; padding: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Helvetica, Arial, sans-serif; font-weight: bold; line-height: 24px; color: rgb(56, 56, 56); font-size: 1.6em; text-align: center;&quot;&gt;ПОЛИТИКА КОНФИДЕНЦИАЛЬНОСТИ&lt;/h3&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px; text-align: center;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px; text-align: center;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; color: rgb(56, 56, 56);&quot;&gt;г. Москва «1» апреля 2021 г.&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px; text-align: center;&quot;&gt;Настоящая Политика конфиденциальности персональных данных (далее – Политика конфиденциальности) действует в отношении всей информации, которую Интернет-магазин «localhost», расположенный на доменном имени localhost, может получить о Пользователе во время использования сайта Интернет-магазина, программ и продуктов Интернет-магазина и в ходе исполнения любых соглашений и договоров с Пользователем.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px; text-align: center;&quot;&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px; text-align: center;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; color: rgb(56, 56, 56);&quot;&gt;1. ОПРЕДЕЛЕНИЕ ТЕРМИНОВ&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px; text-align: center;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;1. Существующая на текущий момент политика конфиденциальности персональных данных (далее – Политика конфиденциальности) работает со следующими понятиями:&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;2. «Администрация сайта Интернет-магазина (далее – Администрация сайта) » – уполномоченные сотрудники на управления сайтом, действующие от имени ИП Бобров Никита Александрович, которые организуют и (или) осуществляет обработку персональных данных, а также определяет цели обработки персональных данных, состав персональных данных, подлежащих обработке, действия (операции), совершаемые с персональными данными.&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;3. «Персональные данные» — сведения, имеющие прямое или косвенное отношение к определённому либо определяемому физическому лицу (также называемому субъектом персональных данных).&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;4. «Обработка персональных данных» — любая операция (действие) либо совокупность таковых, которые Администрация производит с персональными данными. Их могут собирать, записывать, систематизировать, накапливать, хранить, уточнять (при необходимости обновлять или изменять), извлекать, использовать, передавать (распространять, предоставлять, открывать к ним доступ), обезличивать, блокировать, удалять и даже уничтожать. Данные операции (действия) могут выполняться как автоматически, так и вручную.&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;5. «Конфиденциальность персональных данных» — обязательное требование, предъявляемое к Оператору или иному работающему с данными Пользователя должностному лицу, хранить полученные сведения в тайне, не посвящая в них посторонних, если предоставивший персональные данные Пользователь не изъявил своё согласие, а также отсутствует законное основание для разглашения.&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;6. «Пользователь сайта Интернет-магазина» (далее — Пользователь)» – человек, посетивший сайт Интернет-магазина, а также пользующийся его программами и продуктами.&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;7. «Cookies» — короткий фрагмент данных, пересылаемый веб-браузером или веб-клиентом веб-серверу в HTTP-запросе, всякий раз, когда Пользователь пытается открыть страницу Интернет-магазина. Фрагмент хранится на компьютере Пользователя.&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;8. «IP-адрес» — уникальный сетевой адрес узла в компьютерной сети, построенной по протоколу TCP/IP.&lt;/i&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px; text-align: center;&quot;&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px; text-align: center;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px; text-align: center;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; color: rgb(56, 56, 56);&quot;&gt;2. ОБЩИЕ ПОЛОЖЕНИЯ&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px; text-align: center;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;1. Просмотр сайта Интернет-магазина, а также использование его программ и продуктов подразумевают безоговорочное автоматическое согласие Пользователя с Политикой конфиденциальности, подразумевающей предоставление Пользователем персональных данных на обработку.&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;2. Если Пользователь не принимает существующую Политику конфиденциальности, Пользователь должен покинуть Интернет-магазин.&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;3. Имеющаяся Политика конфиденциальности распространяется только на сайт Интернет-магазина localhost. Если по ссылкам, размещённым на сайте последнего, Пользователь зайдёт на ресурсы третьих лиц, Интернет-магазин за его действия ответственности не несёт.&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;4. Проверка достоверности персональных данных, которые решил сообщить принявший Политику конфиденциальности Пользователь, не входит в обязанности Администрации сайта.&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px; text-align: center;&quot;&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px; text-align: center;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px; text-align: center;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; color: rgb(56, 56, 56);&quot;&gt;3. ПРЕДМЕТ ПОЛИТИКИ КОНФИДЕНЦИАЛЬНОСТИ&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px; text-align: center;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;1. Согласно проводимой в текущий период Политике конфиденциальности Администрация Интернет-магазина обязана не разглашать персональные данные, сообщаемые Пользователями, регистрирующимися на сайте или оформляющими заказ на покупку товара, а также обеспечивать этим данным абсолютную конфиденциальность.&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;2. Чтобы сообщить персональные данные, Пользователь заполняет расположенные на сайте интернет-магазина электронные формы. Персональными данными Пользователя, которые подлежат обработке, являются:&lt;/i&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px; text-align: center;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px;&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px; color: rgb(56, 56, 56);&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;1. его фамилия, имя, отчество;&lt;/i&gt;&lt;/b&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px; color: rgb(56, 56, 56);&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;2. его контактный телефон;&lt;/i&gt;&lt;/b&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px; color: rgb(56, 56, 56);&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;3. его электронный адрес (e-mail);&lt;/i&gt;&lt;/b&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px; color: rgb(56, 56, 56);&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;4. адрес, по которому должен быть доставлен купленный им товар;&lt;/i&gt;&lt;/b&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px; color: rgb(56, 56, 56);&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;5. адрес проживания Пользователя.&lt;/i&gt;&lt;/b&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px; text-align: center;&quot;&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;3. Защита данных, автоматически передаваемых при просмотре рекламных блоков и посещении страниц с установленными на них статистическими скриптами системы (пикселями) осуществляется Интернет-магазином. Вот перечень этих данных:&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;IP-адрес;&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;сведения из cookies;&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;сведения о браузере (либо другой программе, через которую становится доступен показ рекламы);&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;время посещения сайта;&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;адрес страницы, на которой располагается рекламный блок;&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;реферер (адрес предыдущей страницы).&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;4. Последствием отключения cookies может стать невозможность доступа к требующим авторизации частям сайта Интернет-магазина.&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;5. Интернет-магазин собирает статистику об IP-адресах всех посетителей. Данные сведения нужны, чтобы выявить и решить технические проблемы и проконтролировать, насколько законным будет проведение финансовых платежей.&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;6. Любые другие неоговорённые выше персональные сведения (о том, когда и какие покупки были сделаны, какой при этом использовался браузер, какая была установлена операционная система и пр.) надёжно хранятся и не распространяются. Исключение существующая Политика конфиденциальности предусматривает для случаев, описанных в п.п. 5.2 и 5.3.&lt;/i&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px; text-align: center;&quot;&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px; text-align: center;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px; text-align: center;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px; text-align: center;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px; text-align: center;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; color: rgb(56, 56, 56);&quot;&gt;4. ЦЕЛИ СБОРА ПЕРСОНАЛЬНОЙ ИНФОРМАЦИИ ПОЛЬЗОВАТЕЛЯ&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px; text-align: center;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;1. Сбор персональных данных Пользователя Администрацией Интернет-магазина проводится ради того, чтобы:&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;1. Идентифицировать Пользователя, который прошёл процедуру регистрации на сайте Интернет-магазина, чтобы оформить заказ и (или) приобрести товар данного магазина дистанционно.&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;2. Открыть Пользователю доступ к персонализированным ресурсам данного сайта.&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;3. Установить с Пользователем обратную связь, под которой подразумевается, в частности, рассылка запросов и уведомлений, касающихся использования сайта Интернет-магазина, обработка пользовательских запросов и заявок, оказание прочих услуг.&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;4. Определить местонахождение Пользователя, чтобы обеспечить безопасность платежей и предотвратить мошенничество.&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;5. Подтвердить, что данные, которые предоставил Пользователь, полны и достоверны.&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;6. Создать учётную запись для совершения Покупок, если Пользователь изъявил на то своё желание.&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;7. Уведомить Пользователя о состоянии его заказа в Интернет-магазине.&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;8. Обрабатывать и получать платежи, подтверждать налог или налоговые льготы, оспаривать платёж, определять целесообразно ли предоставить конкретному Пользователю кредитную линию.&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;9. Обеспечить Пользователю максимально быстрое решение проблем, встречающихся при использовании Интернет-магазина, за счёт эффективной клиентской и технической поддержки.&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;10. Своевременно информировать Пользователя об обновлённой продукции, ознакомлять его с уникальными предложениями, новыми прайсами, новостями о деятельности Интернет-магазина или его партнёров и прочими сведениями, если Пользователь изъявит на то своё согласие.&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;11. Рекламировать товары Интернет-магазина, если Пользователь изъявит на то своё согласие.&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;12. Предоставить Пользователю доступ на сайты или сервисы Интернет-магазина, помогая ему тем самым получать продукты, обновления и услуги.&lt;/i&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px; text-align: center;&quot;&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px; text-align: center;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px; text-align: center;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; color: rgb(56, 56, 56);&quot;&gt;5. СПОСОБЫ И СРОКИ ОБРАБОТКИ ПЕРСОНАЛЬНОЙ ИНФОРМАЦИИ&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px; text-align: center;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;1. Срок обработки персональных данных Пользователя ничем не ограничен. Процедура обработки может проводиться любым предусмотренным законодательством способом. В частности, с помощью информационных систем персональных данных, которые могут вестись автоматически либо без средств автоматизации.&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;2. Обработанные Администрацией сайта персональные данные Пользователя могут передаваться третьим лицам, в число которых входят курьерские службы, организации почтовой связи, операторы электросвязи. Делается это для того, чтобы выполнить заказ Пользователя, оставленный им на сайте Интернет-магазина, и доставить товар по адресу. Согласие Пользователя на подобную передачу предусмотрено правилами политики сайта.&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;3. Также обработанные Администрацией сайта персональные данные могут передаваться уполномоченным органам государственной власти Российской Федерации, если это осуществляется на законных основаниях и в предусмотренном российским законодательством порядке.&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;4. Если персональные данные будут утрачены или разглашены, Пользователь уведомляется об этом Администрацией сайта.&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;5. Все действия Администрации сайта направлены на то, чтобы не допустить к персональным данным Пользователя третьих лиц (за исключением п.п. 5.2, 5.3). Последним эта информация не должна быть доступна даже случайно, дабы те не уничтожили её, не изменили и не блокировали, не копировали и не распространяли, а также не совершали прочие противозаконные действия. Для защиты пользовательских данных Администрация располагает комплексом организационных и технических мер.&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;6. Если персональные данные будут утрачены либо разглашены, Администрация сайта совместно с Пользователем готова принять все возможные меры, дабы предотвратить убытки и прочие негативные последствия, вызванные данной ситуацией.&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px; text-align: center;&quot;&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px; text-align: center;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px; text-align: center;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; color: rgb(56, 56, 56);&quot;&gt;6. ОБЯЗАТЕЛЬСТВА СТОРОН&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px; text-align: center;&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px; color: rgb(56, 56, 56);&quot;&gt;1. В обязанности Пользователя входит:&lt;/b&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;1. Сообщение соответствующих требованиям Интернет-магазина сведений о себе.&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;2. Обновление и дополнение предоставляемых им сведений в случае изменения таковых.&lt;/i&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px; text-align: center;&quot;&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px; color: rgb(56, 56, 56);&quot;&gt;2. В обязанности Администрации сайта входит:&lt;/b&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;1. Применение полученных сведений исключительно в целях, обозначенных в п. 4 существующей Политики конфиденциальности.&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;2. Обеспечение конфиденциальности поступивших от Пользователя сведений. Они не должны разглашаться, если Пользователь не даст на то письменное разрешение. Также Администрация не имеет права продавать, обменивать, публиковать либо разглашать прочими способами переданные Пользователем персональные данные, исключая п.п. 5.2 и 5.3 существующей Политики конфиденциальности.&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;3. Принятие мер предосторожности, дабы персональные данные Пользователя оставались строго конфиденциальными, точно также, как остаются конфиденциальными такого рода сведения в современном деловом обороте.&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;4. Блокировка персональных пользовательских данных с того момента, с которого Пользователь либо его законный представитель сделает соответствующий запрос. Право сделать запрос на блокировку также предоставляется органу, уполномоченному защищать права Пользователя, предоставившего Администрации сайта свои данные, на период проверки, в случае обнаружения недостоверности сообщённых персональных данных либо неправомерности действий.&lt;/i&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px; text-align: center;&quot;&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px; text-align: center;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px; text-align: center;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px; text-align: center;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; color: rgb(56, 56, 56);&quot;&gt;7. ОТВЕТСТВЕННОСТЬ СТОРОН&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px; text-align: center;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;1. В случае неисполнения Администрацией сайта собственных обязательств и, как следствие, убытков Пользователя, понесённых из-за неправомерного использования предоставленной им информации, ответственность возлагается на неё. Об этом, в частности, утверждает российское законодательство. Исключение существующая в настоящее время Политика конфиденциальности делает для случаев, отражённых в п.п. 5.2, 5.3 и 7.2.&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;2. Но существует ряд случаев, когда Администрация сайта ответственности не несёт, если пользовательские данные утрачиваются или разглашаются. Это происходит тогда, когда они:&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;1. Превратились в достояние общественности до того, как были утрачены или разглашены.&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;2. Были предоставлены третьими лицами до того, как их получила Администрация сайта.&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;3. Разглашались с согласия Пользователя.&lt;/i&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px; text-align: center;&quot;&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px; text-align: center;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px; text-align: center;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; color: rgb(56, 56, 56);&quot;&gt;8. РАЗРЕШЕНИЕ СПОРОВ&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px; text-align: center;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;1. Если Пользователь недоволен действиями Администрации Интернет-магазина и намерен отстаивать свои права в суде, до того как обратиться с иском, он в обязательном порядке должен предъявить претензию (письменно предложить урегулировать конфликт добровольно).&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;2. Получившая претензию Администрация обязана в течение 30 календарных дней с даты её получения письменно уведомить Пользователя о её рассмотрении и принятых мерах.&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;3. Если обе стороны так и не смогли договориться, спор передаётся в судебный орган, где его должны рассмотреть согласно действующему российскому законодательству.&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;4. Регулирование отношений Пользователя и Администрации сайта в Политике конфиденциальности проводится согласно действующему российскому законодательству.&lt;/i&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px; text-align: center;&quot;&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px; text-align: center;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px; text-align: center;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; color: rgb(56, 56, 56);&quot;&gt;9. ДОПОЛНИТЕЛЬНЫЕ УСЛОВИЯ&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px; text-align: center;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;1. Администрация сайта вправе менять существующую на текущий момент Политику конфиденциальности, не спрашивая согласия у Пользователя.&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;2. Вступление в силу новой Политики конфиденциальности начинается после того, как информация о ней будет выложена на сайт Интернет-магазина, если изменившаяся Политика не подразумевает иного варианта размещения.&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;3. Все предложения, пожелания, требования или вопросы по настоящей Политике конфиденциальности следует сообщать в раздел обратной связи, расположенный по адресу:&amp;nbsp;localhost/contacts&lt;/i&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;. Или путем отправки электронного письма по адресу admin@admin.ru&lt;/i&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;i style=&quot;margin: 0px; padding: 0px;&quot;&gt;4. Прочитать о существующей Политике конфиденциальности можно, зайдя на страницу по адресу&amp;nbsp;http://localhost/index.php?route=information/information&amp;amp;information_id=3&lt;/i&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px; text-align: center;&quot;&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px; text-align: center;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 20px; padding: 0px; color: rgb(85, 85, 85); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 15px; text-align: center;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; color: rgb(56, 56, 56);&quot;&gt;Обновлено «7» апреля 2021 г.&lt;/strong&gt;&lt;/p&gt;', 'Политика конфиденциальности', '', ''),
	(8, 1, 'Права потребителя', '&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 15px;&quot;&gt;Приобретение товаров в интернет-магазине регулируется ст. 26.1 Закона РФ от 7 февраля 1992 г. № 2300-I &quot;&lt;/span&gt;&lt;a href=&quot;http://base.garant.ru/10106035/2/#block_261&quot; style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255); border: 0px none; color: rgb(128, 128, 128); outline: none; text-decoration-line: underline; transition: all 0.2s ease-out 0s;&quot;&gt;О защите прав потребителей&lt;/a&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 15px;&quot;&gt;&quot; (далее – закон о защите прав потребителей). Возникшие проблемы с покупками в сети нужно решать, опираясь на этот закон. Недобросовестный продавец, услышав вашу осведомленность в своих правах, может пересмотреть свою позицию. Основные пункты, которые должен знать каждый покупатель в Интернете:&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;ol style=&quot;font-size: 15px; line-height: 18px; padding: 0px 0px 0px 14px; margin-right: 0px; margin-bottom: 17px; margin-left: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif;&quot;&gt;&lt;li style=&quot;margin: 0px 0px 0px 10px;&quot;&gt;Для совершения покупки через Интернет желательно составить договор. Как правило, продавец имеет стандартный шаблон договора, по которому работает с покупателями. Однако, никто не запрещает вам использовать свой шаблон договора. Это не обязательное требование, но в тоже время дополнительная гарантия.&lt;/li&gt;&lt;li style=&quot;margin: 4px 0px 0px 10px;&quot;&gt;Перед совершением покупки потребитель должен получить исчерпывающую информацию о товаре (&lt;a href=&quot;http://base.garant.ru/10106035/2/#block_261&quot; style=&quot;border: 0px none; color: rgb(128, 128, 128); outline: none; text-decoration-line: underline; transition: all 0.2s ease-out 0s;&quot;&gt;ст. 26.1 закона о защите прав потребителей&lt;/a&gt;): буклеты, фото, видео, другие источники.&lt;/li&gt;&lt;li style=&quot;margin: 4px 0px 0px 10px;&quot;&gt;Помимо этого покупатель должен быть осведомлен о фактическом адресе продавца, цене товара, оплате и сроке, в течение которого действует предложение о покупке.&lt;/li&gt;&lt;li style=&quot;margin: 4px 0px 0px 10px;&quot;&gt;В момент получения товара продавцом должна быть предоставлена в письменном виде информация о характеристиках товара, сроках его возврата, а также гарантийный талон (&lt;a href=&quot;http://base.garant.ru/10106035/2/#p_1041&quot; style=&quot;border: 0px none; color: rgb(128, 128, 128); outline: none; text-decoration-line: underline; transition: all 0.2s ease-out 0s;&quot;&gt;п. 3. ст. 26.1 закона о защите прав потребителей&lt;/a&gt;).&lt;/li&gt;&lt;li style=&quot;margin: 4px 0px 0px 10px;&quot;&gt;&lt;a href=&quot;http://base.garant.ru/10106035/2/#p_1042&quot; style=&quot;border: 0px none; color: rgb(128, 128, 128); outline: none; text-decoration-line: underline; transition: all 0.2s ease-out 0s;&quot;&gt;Пункт 4 ст. 26.1&lt;/a&gt;&amp;nbsp;говорит о том, что покупатель имеет право отказаться от совершения покупки до передачи товара. Если же товар уже получен, потребитель может отказаться от него на протяжении семи дней. Если в момент получения товара в упаковке не было информации в письменном виде о порядке и сроках возврата, покупатель может вернуть товар в течение 90 дней с даты его получения. Если товар не соответствует индивидуально-потребительским свойствам покупателя, он может отказаться от него. В данном случае продавец в течение 10-ти дней с момента требования обязан вернуть оплату. При этом возврату подлежит стоимость товара, за исключением затрат на доставку.&lt;/li&gt;&lt;li style=&quot;margin: 4px 0px 0px 10px;&quot;&gt;Для возврата товара продавцу он должен соответствовать изначальным характеристикам, то есть сохранить товарный вид и свойства на момент возврата.&lt;/li&gt;&lt;li style=&quot;margin: 4px 0px 0px 10px;&quot;&gt;Отказаться невозможно только от одного вида товара, который сделан под заказ, по вашим индивидуальным параметрам, например, пошив одежды, обуви или с персональной дарственной надписью.&lt;/li&gt;&lt;li style=&quot;margin: 4px 0px 0px 10px;&quot;&gt;Если причиной возврата товара служит претензия к его свойствам, продавец вправе заказать проведение экспертизы качества. Если он будет настаивать на этой мере, срок обмена увеличивается и будет равным 20 дням (&lt;a href=&quot;http://base.garant.ru/10106035/2/#p_1012&quot; style=&quot;border: 0px none; color: rgb(128, 128, 128); outline: none; text-decoration-line: underline; transition: all 0.2s ease-out 0s;&quot;&gt;п. 1 ст. 21 закона о защите прав потребителей&lt;/a&gt;). Как правило, экспертиза проводится за счет продавца. Так как именно он оспаривает тот факт, что товар не соответствует первоначальным характеристикам. Если результат экспертизы не удовлетворяет покупателя, он имеет право оспорить это решение в суде, предоставив вывод других квалификационных структур.&lt;/li&gt;&lt;li style=&quot;margin: 4px 0px 0px 10px;&quot;&gt;Если продавец имеет определенные задержки с заменой, согласно&amp;nbsp;&lt;a href=&quot;http://base.garant.ru/10106035/2/#p_1012&quot; style=&quot;border: 0px none; color: rgb(128, 128, 128); outline: none; text-decoration-line: underline; transition: all 0.2s ease-out 0s;&quot;&gt;п. 1 ст. 21 закона о защите прав потребителей&lt;/a&gt;, он обязан предоставить вам другой товар во временное пользование. С момента обращения у продавца есть 3 дня для предоставления замены.&lt;/li&gt;&lt;li style=&quot;margin: 4px 0px 0px 10px;&quot;&gt;Прежде, чем действовать, нужно знать, как вернуть деньги за товар, который не подошел. Как уже говорилось выше, основной документ, на который должен опираться покупатель – закон о защите прав потребителей. В&amp;nbsp;&lt;a href=&quot;http://base.garant.ru/10106035/2/#p_1021&quot; style=&quot;border: 0px none; color: rgb(128, 128, 128); outline: none; text-decoration-line: underline; transition: all 0.2s ease-out 0s;&quot;&gt;ст. 23 закона о защите прав потребителей&lt;/a&gt;&amp;nbsp;говорится о том, что за каждый день просрочки продавец заплатить 1% от общей стоимости товара в случае, если не вернут в установленном порядке оплату за несоответствующий вашим требованиям товар. Прочие пункты возврата товара регулируются ст. 18-24 закона о защите прав потребителей. Если товар нужно обменять, например, не подошел размер или выявлен дефект, его можно вернуть в течение двух недель для обмена.&lt;/li&gt;&lt;li style=&quot;margin: 4px 0px 0px 10px;&quot;&gt;Многие магазины указывают, что товар не принимается к возврату в случае, если нарушена упаковка. Но такое требование не может считаться правомерным, ведь без нарушения упаковки невозможно проверить исправность товара.&lt;/li&gt;&lt;/ol&gt;&lt;p style=&quot;margin-bottom: 17px; font-size: 15px; line-height: 18px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;h3 style=&quot;padding: 0px; margin-right: 0px; margin-bottom: 17px; margin-left: 0px; color: rgb(51, 51, 51); font-size: 14px; line-height: 18px; font-family: Arial, Helvetica, sans-serif;&quot;&gt;Алгоритм действий для возврата/обмена товара&lt;/h3&gt;&lt;ol style=&quot;font-size: 15px; line-height: 18px; padding: 0px 0px 0px 14px; margin-right: 0px; margin-bottom: 17px; margin-left: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif;&quot;&gt;&lt;li style=&quot;margin: 0px 0px 0px 10px;&quot;&gt;Основное правило, действующее в отношении товаров, приобретенных в интернет-магазине – это право отказаться от покупки и вернуть товар без объяснения причин в течение семи дней с момента его фактической передачи покупателю. Отказаться от заказа до момента доставки можно в любое время.&lt;/li&gt;&lt;li style=&quot;margin: 4px 0px 0px 10px;&quot;&gt;Покупателю дается 7 дней для того, что бы доставить не подходящий ему товар в интернет-магазин. Если интернет-магазин не довел в письменной форме (памятка) до покупателя информацию о порядке и сроках возврата товара, то срок, в течение которого покупатель имеет право вернуть товар, увеличивается до трех месяцев.&lt;/li&gt;&lt;li style=&quot;margin: 4px 0px 0px 10px;&quot;&gt;Составить требование о возврате товара. К нему обязательно нужно приложить оригинал расчетного документа (копию сделать для себя), а также копию паспорта покупателя. Оригинал чека лучше отдавать в тот момент, когда интернет-магазин непосредственно возвращает деньги или оформляет фактический обмен товара.&lt;/li&gt;&lt;li style=&quot;margin: 4px 0px 0px 10px;&quot;&gt;Предоставить магазину товар, гарантийный талон, все комплектующие, притом ярлыки и бирки должны быть сохранены, а нарушение заводской упаковки не является основанием для отказа обмена товара или возврата денег.&lt;/li&gt;&lt;li style=&quot;margin: 4px 0px 0px 10px;&quot;&gt;Получить деньги от продавца или оформить обмен. В последнем случае нужно оплатить разницу в стоимости товаров (если обмен происходит на более дорогую модель), получить гарантийный талон и чек.&lt;/li&gt;&lt;/ol&gt;&lt;p style=&quot;margin-bottom: 17px; font-size: 15px; line-height: 18px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;h3 style=&quot;padding: 0px; margin-right: 0px; margin-bottom: 17px; margin-left: 0px; color: rgb(51, 51, 51); font-size: 14px; line-height: 18px; font-family: Arial, Helvetica, sans-serif;&quot;&gt;Алгоритм действий в случае покупки неисправного товара&lt;/h3&gt;&lt;ol style=&quot;font-size: 15px; line-height: 18px; padding: 0px 0px 0px 14px; margin-right: 0px; margin-bottom: 17px; margin-left: 0px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif;&quot;&gt;&lt;li style=&quot;margin: 0px 0px 0px 10px;&quot;&gt;Если товар оказался неисправным, его необходимо вернуть до окончания гарантийного срока. В случае, если вес товара больше 5 кг, интернет-магазин должен оказать доставку товара в сервисный центр.&lt;/li&gt;&lt;li style=&quot;margin: 4px 0px 0px 10px;&quot;&gt;Сервисный центр должен выдать заключение о том, что товар неисправен или не может быть отремонтирован. Согласно&amp;nbsp;&lt;a href=&quot;http://base.garant.ru/10106035/2/#p_1229&quot; style=&quot;border: 0px none; color: rgb(128, 128, 128); outline: none; text-decoration-line: underline; transition: all 0.2s ease-out 0s;&quot;&gt;п. 1 ст. 20 закона о защите прав потребителей&lt;/a&gt;, срок устранения недостатков товара, определяемый в письменной форме соглашением сторон, не может превышать 45 дней. Лучше лично предоставить товар в сервисный центр, так как продавец может повлиять на результат экспертизы и сделать виновным покупателя.&lt;/li&gt;&lt;li style=&quot;margin: 4px 0px 0px 10px;&quot;&gt;Доставить товар по адресу интернет-магазина. Предоставить акт, чек, гарантийный талон и все комплектующие.&lt;/li&gt;&lt;li style=&quot;margin: 4px 0px 0px 10px;&quot;&gt;Получить деньги от продавца или оформить обмен.&lt;/li&gt;&lt;/ol&gt;&lt;p style=&quot;margin-bottom: 17px; font-size: 15px; line-height: 18px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;h3 style=&quot;padding: 0px; margin-right: 0px; margin-bottom: 17px; margin-left: 0px; color: rgb(51, 51, 51); font-size: 14px; line-height: 18px; font-family: Arial, Helvetica, sans-serif;&quot;&gt;Период возврата денег покупателю&lt;/h3&gt;&lt;p style=&quot;margin-bottom: 17px; font-size: 15px; line-height: 18px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif;&quot;&gt;Для возврата денег необходимо составить акт возврата, в котором должны быть две подписи (покупателя, продавца). Продавец должен вернуть деньги в момент составления акта, однако у него есть право совершить возврат в течение 10-ти дней. При этом есть три варианта возврата:&lt;/p&gt;&lt;ul style=&quot;padding: 0px 0px 0px 14px; margin-right: 0px; margin-bottom: 17px; margin-left: 0px; font-size: 15px; line-height: 18px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif;&quot;&gt;&lt;li style=&quot;margin: 0px 0px 0px 10px;&quot;&gt;наличными;&lt;/li&gt;&lt;li style=&quot;margin: 4px 0px 0px 10px;&quot;&gt;перевод через почту;&lt;/li&gt;&lt;li style=&quot;margin: 4px 0px 0px 10px;&quot;&gt;на карту или счет.&lt;/li&gt;&lt;/ul&gt;&lt;p style=&quot;margin-bottom: 17px; font-size: 15px; line-height: 18px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif;&quot;&gt;Расходы по перечислению суммы несет продавец.&lt;/p&gt;', 'Права потребителя', '', '');
/*!40000 ALTER TABLE `oc_information_description` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_information_to_layout
DROP TABLE IF EXISTS `oc_information_to_layout`;
CREATE TABLE IF NOT EXISTS `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_information_to_layout: 3 rows
DELETE FROM `oc_information_to_layout`;
/*!40000 ALTER TABLE `oc_information_to_layout` DISABLE KEYS */;
INSERT INTO `oc_information_to_layout` (`information_id`, `store_id`, `layout_id`) VALUES
	(3, 0, 0),
	(5, 0, 0),
	(8, 0, 0),
	(4, 0, 0);
/*!40000 ALTER TABLE `oc_information_to_layout` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_information_to_store
DROP TABLE IF EXISTS `oc_information_to_store`;
CREATE TABLE IF NOT EXISTS `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_information_to_store: 5 rows
DELETE FROM `oc_information_to_store`;
/*!40000 ALTER TABLE `oc_information_to_store` DISABLE KEYS */;
INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
	(3, 0),
	(4, 0),
	(5, 0),
	(6, 0),
	(8, 0);
/*!40000 ALTER TABLE `oc_information_to_store` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_language
DROP TABLE IF EXISTS `oc_language`;
CREATE TABLE IF NOT EXISTS `oc_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_language: 1 rows
DELETE FROM `oc_language`;
/*!40000 ALTER TABLE `oc_language` DISABLE KEYS */;
INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
	(1, 'Russian', 'ru-ru', 'ru_RU.UTF-8,ru_RU,russian', 'ru-ru.png', 'russian', 1, 1);
/*!40000 ALTER TABLE `oc_language` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_layout
DROP TABLE IF EXISTS `oc_layout`;
CREATE TABLE IF NOT EXISTS `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_layout: 13 rows
DELETE FROM `oc_layout`;
/*!40000 ALTER TABLE `oc_layout` DISABLE KEYS */;
INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
	(1, 'Home'),
	(2, 'Product'),
	(3, 'Category'),
	(4, 'Default'),
	(5, 'Manufacturer'),
	(6, 'Account'),
	(7, 'Checkout'),
	(8, 'Contact'),
	(9, 'Sitemap'),
	(10, 'Affiliate'),
	(11, 'Information'),
	(12, 'Compare'),
	(13, 'Search');
/*!40000 ALTER TABLE `oc_layout` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_layout_module
DROP TABLE IF EXISTS `oc_layout_module`;
CREATE TABLE IF NOT EXISTS `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_layout_module: 10 rows
DELETE FROM `oc_layout_module`;
/*!40000 ALTER TABLE `oc_layout_module` DISABLE KEYS */;
INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
	(2, 4, '0', 'content_top', 0),
	(3, 4, '0', 'content_top', 1),
	(20, 5, '0', 'column_left', 2),
	(69, 10, 'account', 'column_right', 1),
	(68, 6, 'account', 'column_right', 1),
	(67, 1, 'carousel.29', 'content_top', 3),
	(66, 1, 'slideshow.27', 'content_top', 1),
	(65, 1, 'featured.28', 'content_top', 2),
	(72, 3, 'category', 'column_left', 1),
	(73, 3, 'banner.30', 'column_left', 2);
/*!40000 ALTER TABLE `oc_layout_module` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_layout_route
DROP TABLE IF EXISTS `oc_layout_route`;
CREATE TABLE IF NOT EXISTS `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_layout_route: 13 rows
DELETE FROM `oc_layout_route`;
/*!40000 ALTER TABLE `oc_layout_route` DISABLE KEYS */;
INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
	(38, 6, 0, 'account/%'),
	(17, 10, 0, 'affiliate/%'),
	(44, 3, 0, 'product/category'),
	(42, 1, 0, 'common/home'),
	(20, 2, 0, 'product/product'),
	(24, 11, 0, 'information/information'),
	(23, 7, 0, 'checkout/%'),
	(31, 8, 0, 'information/contact'),
	(32, 9, 0, 'information/sitemap'),
	(34, 4, 0, ''),
	(45, 5, 0, 'product/manufacturer'),
	(52, 12, 0, 'product/compare'),
	(53, 13, 0, 'product/search');
/*!40000 ALTER TABLE `oc_layout_route` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_length_class
DROP TABLE IF EXISTS `oc_length_class`;
CREATE TABLE IF NOT EXISTS `oc_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_length_class: 3 rows
DELETE FROM `oc_length_class`;
/*!40000 ALTER TABLE `oc_length_class` DISABLE KEYS */;
INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
	(1, 1.00000000),
	(2, 10.00000000),
	(3, 0.39370000);
/*!40000 ALTER TABLE `oc_length_class` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_length_class_description
DROP TABLE IF EXISTS `oc_length_class_description`;
CREATE TABLE IF NOT EXISTS `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_length_class_description: 2 rows
DELETE FROM `oc_length_class_description`;
/*!40000 ALTER TABLE `oc_length_class_description` DISABLE KEYS */;
INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
	(1, 1, 'Сантиметр', 'см'),
	(2, 1, 'Миллиметр', 'мм');
/*!40000 ALTER TABLE `oc_length_class_description` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_location
DROP TABLE IF EXISTS `oc_location`;
CREATE TABLE IF NOT EXISTS `oc_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_location: 0 rows
DELETE FROM `oc_location`;
/*!40000 ALTER TABLE `oc_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_location` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_manufacturer
DROP TABLE IF EXISTS `oc_manufacturer`;
CREATE TABLE IF NOT EXISTS `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_manufacturer: 6 rows
DELETE FROM `oc_manufacturer`;
/*!40000 ALTER TABLE `oc_manufacturer` DISABLE KEYS */;
INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
	(5, 'HTC', 'catalog/demo/htc_logo.jpg', 0),
	(6, 'Palm', 'catalog/demo/palm_logo.jpg', 0),
	(7, 'Hewlett-Packard', 'catalog/demo/hp_logo.jpg', 0),
	(8, 'Apple', 'catalog/demo/apple_logo.jpg', 0),
	(9, 'Canon', 'catalog/demo/canon_logo.jpg', 0),
	(10, 'Sony', 'catalog/demo/sony_logo.jpg', 0);
/*!40000 ALTER TABLE `oc_manufacturer` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_manufacturer_to_store
DROP TABLE IF EXISTS `oc_manufacturer_to_store`;
CREATE TABLE IF NOT EXISTS `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_manufacturer_to_store: 6 rows
DELETE FROM `oc_manufacturer_to_store`;
/*!40000 ALTER TABLE `oc_manufacturer_to_store` DISABLE KEYS */;
INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
	(5, 0),
	(6, 0),
	(7, 0),
	(8, 0),
	(9, 0),
	(10, 0);
/*!40000 ALTER TABLE `oc_manufacturer_to_store` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_marketing
DROP TABLE IF EXISTS `oc_marketing`;
CREATE TABLE IF NOT EXISTS `oc_marketing` (
  `marketing_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`marketing_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_marketing: 0 rows
DELETE FROM `oc_marketing`;
/*!40000 ALTER TABLE `oc_marketing` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_marketing` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_modification
DROP TABLE IF EXISTS `oc_modification`;
CREATE TABLE IF NOT EXISTS `oc_modification` (
  `modification_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_install_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`modification_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_modification: 2 rows
DELETE FROM `oc_modification`;
/*!40000 ALTER TABLE `oc_modification` DISABLE KEYS */;
INSERT INTO `oc_modification` (`modification_id`, `extension_install_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
	(2, 2, '<i class="fa fa-file-text-o"></i> Cookie Policy', 'cookiepolicy', 'Pavel Kravchenko', '3.1.3', 'https://opencartforum.com/profile/711752-paulkravchenko/', '﻿<?xml version="1.0" encoding="UTF-8"?>\r\n<modification>\r\n	<name><![CDATA[<i class="fa fa-file-text-o"></i> Cookie Policy]]></name>\r\n	<code>cookiepolicy</code>\r\n	<version>3.1.3</version>\r\n	<author>Pavel Kravchenko</author>\r\n	<link>https://opencartforum.com/profile/711752-paulkravchenko/</link>\r\n	<date>2020.05.12</date>\r\n\r\n	<file path="catalog/controller/common/header.php">\r\n		<operation>\r\n			<search><![CDATA[public function index() {]]></search>\r\n			<add position="after"><![CDATA[\r\n			// Cookie Policy\r\n			        $config_data = array(\r\n					\'module_cookiepolicy_status\',\r\n					\'module_cookiepolicy_accept_button_colour\',\r\n					\'module_cookiepolicy_accept_button_hover\',\r\n					\'module_cookiepolicy_accept_text_colour\',\r\n					\'module_cookiepolicy_accept_text_hover\',\r\n					\'module_cookiepolicy_text_colour\',\r\n					\'module_cookiepolicy_background_colour\',\r\n					\'module_cookiepolicy_opacity\',\r\n					\'module_cookiepolicy_rounded_corners\',\r\n					\'module_cookiepolicy_text_align\',\r\n                    \'module_cookiepolicy_transparent_button\',\r\n                    \'module_cookiepolicy_accept_button_border\',\r\n                    \'module_cookiepolicy_accept_button_border_hover\',\r\n                    \'module_cookiepolicy_link_colour\',\r\n                    \'module_cookiepolicy_link_hover\'\r\n			        );\r\n				\r\n			        foreach ($config_data as $conf) {\r\n			                $data[$conf] = $this->config->get($conf);\r\n			        }\r\n			// END Cookie Policy\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path="catalog/controller/common/footer.php">\r\n		<operation>\r\n			<search><![CDATA[public function index() {]]></search>\r\n			<add position="after"><![CDATA[\r\n			// Cookie Policy\r\n\r\n		$this->load->model(\'localisation/language\');\r\n		$data[\'languages\'] = $this->model_localisation_language->getLanguages();\r\n		$data[\'langcode\'] = $this->session->data[\'language\'];\r\n\r\n        $this->load->language(\'extension/module/cookiepolicy\');\r\n				\r\n			        $config_data = array(\r\n					\'module_cookiepolicy_status\',\r\n					\'module_cookiepolicy_position\',\r\n					\'module_cookiepolicy_url\',\r\n					\'module_cookiepolicy_random_url\',\r\n					\'module_cookiepolicy_infopage\',\r\n					\'module_cookiepolicy_infopage_on\',\r\n					\'module_cookiepolicy_cookietext\',\r\n					\'module_cookiepolicy_cookietext_after\',\r\n					\'module_cookiepolicy_urltext\',\r\n					\'module_cookiepolicy_buttontext\',\r\n					\'module_cookiepolicy_cookie_expires\',\r\n					\'module_cookiepolicy_cookie_name\',\r\n                    \'module_cookiepolicy_accept_button_icon\',\r\n                    \'module_cookiepolicy_blank_page\',\r\n			        );\r\n				\r\n			        foreach ($config_data as $conf) {\r\n			                $data[$conf] = $this->config->get($conf);\r\n\r\n					$data[\'infopage_number\'] = $this->config->get(\'module_cookiepolicy_infopage\');\r\n					if ($this->config->get(\'module_cookiepolicy_infopage\')) {\r\n					$data[\'module_cookiepolicy_infopage_url\'] =  $this->url->link(\'information/information\', \'information_id=\' .  $data[\'infopage_number\']);\r\n\r\n					$this->load->model(\'catalog/information\');\r\n\r\n					$information_info = $this->model_catalog_information->getInformation($this->config->get(\'module_cookiepolicy_infopage\'));\r\n\r\n              		if (isset($information_info[\'title\']) && !empty($information_info[\'title\']))\r\n                    {\r\n					$data[\'module_cookiepolicy_infopage_title\'] = $information_info[\'title\'];\r\n                    } else {\r\n					$data[\'module_cookiepolicy_infopage_title\'] = \'\';\r\n                    }\r\n					}\r\n			        }\r\n			// END Cookie Policy\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path="catalog/view/theme/default/template/common/header.twig">\r\n		<operation>\r\n			<search><![CDATA[</head>]]></search>\r\n			<add position="before"><![CDATA[\r\n{% if module_cookiepolicy_status == "1" %}\r\n<style>\r\n#cookiepolicy {\r\n opacity: {{ module_cookiepolicy_opacity }};\r\n background: {{ module_cookiepolicy_background_colour }};\r\n}\r\n\r\n#cookiepolicy-btn {\r\n color: {{ module_cookiepolicy_accept_text_colour }} !important;\r\n border: 1px solid {{ module_cookiepolicy_accept_button_border }};\r\n {% if module_cookiepolicy_transparent_button %}\r\n background: transparent;\r\n {% else %}\r\n background: {{ module_cookiepolicy_accept_button_colour }};\r\n {% endif %}\r\n {% if module_cookiepolicy_rounded_corners %}\r\n -webkit-border-radius: 4px 4px 4px 4px;\r\n border-radius: 4px 4px 4px 4px;\r\n {% endif %}\r\n}\r\n\r\n#cookiepolicy-btn:hover {\r\n background: {{ module_cookiepolicy_accept_button_hover }};\r\n color: {{ module_cookiepolicy_accept_text_hover }} !important;\r\n border: 1px solid {{ module_cookiepolicy_accept_button_border_hover }};\r\n}\r\n\r\n.cookiepolicy-text {\r\n color: {{ module_cookiepolicy_text_colour }};\r\n}\r\n.cookiepolicy-text a {\r\n color: {{ module_cookiepolicy_link_colour }};\r\n text-decoration: underline;\r\n}\r\n\r\n.cookiepolicy-text a:hover {\r\n color: {{ module_cookiepolicy_link_hover }};\r\n text-decoration: none;\r\n}\r\n</style>\r\n{% endif %}\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path="catalog/view/theme/default/template/common/footer.twig">\r\n		<operation>\r\n			<search><![CDATA[</body>]]></search>\r\n			<add position="before"><![CDATA[\r\n{% if module_cookiepolicy_status == "1" %}\r\n<script type="text/javascript" >\r\n    var text_before = "{{ module_cookiepolicy_cookietext.text[langcode] }}";\r\n    var link_text = "{% if module_cookiepolicy_infopage_on == 1 %} {{ module_cookiepolicy_infopage_title }} {% elseif module_cookiepolicy_infopage_on == 0 %} {{ module_cookiepolicy_urltext.text[langcode] }}{% endif %}";\r\n    var text_after = "{{ module_cookiepolicy_cookietext_after.text[langcode] }}";\r\n    var accept_text = "{{ module_cookiepolicy_buttontext.text[langcode] }}";\r\n    var cookie_url = "{% if module_cookiepolicy_infopage_on == 1 %} {{ module_cookiepolicy_infopage_url }} {% elseif module_cookiepolicy_infopage_on == 0 %} {{ module_cookiepolicy_url }}{% endif %}";\r\n    var target_url = "{{ cookiepolicy_blank_page }}";\r\n    var cookie_expires = {{ module_cookiepolicy_cookie_expires }};\r\n    var cookie_name = "{{ module_cookiepolicy_cookie_name }}";\r\n    var text_align = "{{ module_cookiepolicy_text_align }}";\r\n    var cookie_position = "{{ module_cookiepolicy_position }}";\r\n    var button_icon = "{% if module_cookiepolicy_accept_button_icon %}<i class=\'{{ module_cookiepolicy_accept_button_icon }}\'></i>&nbsp;{% endif %}";\r\n</script>\r\n<script src="catalog/view/javascript/cookiepolicy/jquery.cookie.js"></script>\r\n<script src="catalog/view/javascript/cookiepolicy/jquery.cookiecuttr.js"></script>\r\n<link rel="stylesheet" href="catalog/view/javascript/cookiepolicy/cookiepolicy.css">\r\n<script>\r\n$(document).ready(function () {\r\n    $.cookieCuttr();	\r\n});\r\n</script>\r\n{% endif %}\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>', 1, '2021-04-07 13:14:35');
/*!40000 ALTER TABLE `oc_modification` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_module
DROP TABLE IF EXISTS `oc_module`;
CREATE TABLE IF NOT EXISTS `oc_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_module: 5 rows
DELETE FROM `oc_module`;
/*!40000 ALTER TABLE `oc_module` DISABLE KEYS */;
INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
	(30, 'Category', 'banner', '{"name":"Category","banner_id":"6","width":"182","height":"182","status":"1"}'),
	(29, 'Home Page', 'carousel', '{"name":"Home Page","banner_id":"8","width":"130","height":"100","status":"1"}'),
	(28, 'Home Page', 'featured', '{"name":"Home Page","product":["43","40","42","30"],"limit":"4","width":"200","height":"200","status":"1"}'),
	(27, 'Home Page', 'slideshow', '{"name":"Home Page","banner_id":"7","width":"1140","height":"380","status":"1"}'),
	(31, 'Banner 1', 'banner', '{"name":"Banner 1","banner_id":"6","width":"182","height":"182","status":"1"}');
/*!40000 ALTER TABLE `oc_module` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_option
DROP TABLE IF EXISTS `oc_option`;
CREATE TABLE IF NOT EXISTS `oc_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_option: 11 rows
DELETE FROM `oc_option`;
/*!40000 ALTER TABLE `oc_option` DISABLE KEYS */;
INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
	(1, 'radio', 1),
	(2, 'checkbox', 2),
	(4, 'text', 3),
	(5, 'select', 4),
	(6, 'textarea', 5),
	(7, 'file', 6),
	(8, 'date', 7),
	(9, 'time', 8),
	(10, 'datetime', 9),
	(11, 'select', 10),
	(12, 'date', 11);
/*!40000 ALTER TABLE `oc_option` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_option_description
DROP TABLE IF EXISTS `oc_option_description`;
CREATE TABLE IF NOT EXISTS `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_option_description: 11 rows
DELETE FROM `oc_option_description`;
/*!40000 ALTER TABLE `oc_option_description` DISABLE KEYS */;
INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
	(1, 1, 'Radio'),
	(2, 1, 'Checkbox'),
	(4, 1, 'Text'),
	(6, 1, 'Textarea'),
	(8, 1, 'Date'),
	(7, 1, 'File'),
	(5, 1, 'Select'),
	(9, 1, 'Time'),
	(10, 1, 'Date &amp; Time'),
	(12, 1, 'Delivery Date'),
	(11, 1, 'Size');
/*!40000 ALTER TABLE `oc_option_description` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_option_value
DROP TABLE IF EXISTS `oc_option_value`;
CREATE TABLE IF NOT EXISTS `oc_option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_option_value: 14 rows
DELETE FROM `oc_option_value`;
/*!40000 ALTER TABLE `oc_option_value` DISABLE KEYS */;
INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
	(43, 1, '', 3),
	(32, 1, '', 1),
	(45, 2, '', 4),
	(44, 2, '', 3),
	(42, 5, '', 4),
	(41, 5, '', 3),
	(39, 5, '', 1),
	(40, 5, '', 2),
	(31, 1, '', 2),
	(23, 2, '', 1),
	(24, 2, '', 2),
	(46, 11, '', 1),
	(47, 11, '', 2),
	(48, 11, '', 3);
/*!40000 ALTER TABLE `oc_option_value` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_option_value_description
DROP TABLE IF EXISTS `oc_option_value_description`;
CREATE TABLE IF NOT EXISTS `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_option_value_description: 14 rows
DELETE FROM `oc_option_value_description`;
/*!40000 ALTER TABLE `oc_option_value_description` DISABLE KEYS */;
INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
	(43, 1, 1, 'Large'),
	(32, 1, 1, 'Small'),
	(45, 1, 2, 'Checkbox 4'),
	(44, 1, 2, 'Checkbox 3'),
	(31, 1, 1, 'Medium'),
	(42, 1, 5, 'Yellow'),
	(41, 1, 5, 'Green'),
	(39, 1, 5, 'Red'),
	(40, 1, 5, 'Blue'),
	(23, 1, 2, 'Checkbox 1'),
	(24, 1, 2, 'Checkbox 2'),
	(48, 1, 11, 'Large'),
	(47, 1, 11, 'Medium'),
	(46, 1, 11, 'Small');
/*!40000 ALTER TABLE `oc_option_value_description` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_order
DROP TABLE IF EXISTS `oc_order`;
CREATE TABLE IF NOT EXISTS `oc_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(60) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_order: 0 rows
DELETE FROM `oc_order`;
/*!40000 ALTER TABLE `oc_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_order_history
DROP TABLE IF EXISTS `oc_order_history`;
CREATE TABLE IF NOT EXISTS `oc_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_order_history: 0 rows
DELETE FROM `oc_order_history`;
/*!40000 ALTER TABLE `oc_order_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_history` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_order_option
DROP TABLE IF EXISTS `oc_order_option`;
CREATE TABLE IF NOT EXISTS `oc_order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_order_option: 0 rows
DELETE FROM `oc_order_option`;
/*!40000 ALTER TABLE `oc_order_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_option` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_order_product
DROP TABLE IF EXISTS `oc_order_product`;
CREATE TABLE IF NOT EXISTS `oc_order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL,
  PRIMARY KEY (`order_product_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_order_product: 0 rows
DELETE FROM `oc_order_product`;
/*!40000 ALTER TABLE `oc_order_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_product` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_order_recurring
DROP TABLE IF EXISTS `oc_order_recurring`;
CREATE TABLE IF NOT EXISTS `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_order_recurring: 0 rows
DELETE FROM `oc_order_recurring`;
/*!40000 ALTER TABLE `oc_order_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_recurring` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_order_recurring_transaction
DROP TABLE IF EXISTS `oc_order_recurring_transaction`;
CREATE TABLE IF NOT EXISTS `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_order_recurring_transaction: 0 rows
DELETE FROM `oc_order_recurring_transaction`;
/*!40000 ALTER TABLE `oc_order_recurring_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_recurring_transaction` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_order_shipment
DROP TABLE IF EXISTS `oc_order_shipment`;
CREATE TABLE IF NOT EXISTS `oc_order_shipment` (
  `order_shipment_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `shipping_courier_id` varchar(255) NOT NULL DEFAULT '',
  `tracking_number` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`order_shipment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_order_shipment: 0 rows
DELETE FROM `oc_order_shipment`;
/*!40000 ALTER TABLE `oc_order_shipment` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_shipment` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_order_status
DROP TABLE IF EXISTS `oc_order_status`;
CREATE TABLE IF NOT EXISTS `oc_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_order_status: 14 rows
DELETE FROM `oc_order_status`;
/*!40000 ALTER TABLE `oc_order_status` DISABLE KEYS */;
INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
	(1, 1, 'Ожидание'),
	(2, 1, 'В обработке'),
	(3, 1, 'Доставлено'),
	(7, 1, 'Отменено'),
	(5, 1, 'Сделка завершена'),
	(8, 1, 'Возврат'),
	(9, 1, 'Отмена и аннулирование'),
	(10, 1, 'Неудавшийся'),
	(11, 1, 'Возмещенный'),
	(12, 1, 'Полностью измененный'),
	(13, 1, 'Полный возврат'),
	(16, 1, 'Аннулированный'),
	(15, 1, 'Обработанный'),
	(14, 1, 'Просроченный');
/*!40000 ALTER TABLE `oc_order_status` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_order_total
DROP TABLE IF EXISTS `oc_order_total`;
CREATE TABLE IF NOT EXISTS `oc_order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_order_total: 0 rows
DELETE FROM `oc_order_total`;
/*!40000 ALTER TABLE `oc_order_total` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_total` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_order_voucher
DROP TABLE IF EXISTS `oc_order_voucher`;
CREATE TABLE IF NOT EXISTS `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_order_voucher: 0 rows
DELETE FROM `oc_order_voucher`;
/*!40000 ALTER TABLE `oc_order_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_voucher` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_product
DROP TABLE IF EXISTS `oc_product`;
CREATE TABLE IF NOT EXISTS `oc_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_product: 19 rows
DELETE FROM `oc_product`;
/*!40000 ALTER TABLE `oc_product` DISABLE KEYS */;
INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
	(28, 'Product 1', '', '', '', '', '', '', '', 939, 7, 'catalog/demo/htc_touch_hd_1.jpg', 5, 1, 100.0000, 200, 9, '2009-02-03', 146.40000000, 2, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 0, 1, 0, '2009-02-03 16:06:50', '2011-09-30 01:05:39'),
	(29, 'Product 2', '', '', '', '', '', '', '', 999, 6, 'catalog/demo/palm_treo_pro_1.jpg', 6, 1, 279.9900, 0, 9, '2009-02-03', 133.00000000, 2, 0.00000000, 0.00000000, 0.00000000, 3, 1, 1, 0, 1, 0, '2009-02-03 16:42:17', '2011-09-30 01:06:08'),
	(30, 'Product 3', '', '', '', '', '', '', '', 7, 6, 'catalog/demo/canon_eos_5d_1.jpg', 9, 1, 100.0000, 0, 9, '2009-02-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 0, 1, 0, '2009-02-03 16:59:00', '2011-09-30 01:05:23'),
	(31, 'Product 4', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/nikon_d300_1.jpg', 0, 1, 80.0000, 0, 9, '2009-02-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 3, 1, 1, 0, 1, 0, '2009-02-03 17:00:10', '2011-09-30 01:06:00'),
	(32, 'Product 5', '', '', '', '', '', '', '', 999, 6, 'catalog/demo/ipod_touch_1.jpg', 8, 1, 100.0000, 0, 9, '2009-02-03', 5.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 0, 1, 0, '2009-02-03 17:07:26', '2011-09-30 01:07:22'),
	(33, 'Product 6', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/samsung_syncmaster_941bw.jpg', 0, 1, 200.0000, 0, 9, '2009-02-03', 5.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 2, 1, 1, 0, 1, 0, '2009-02-03 17:08:31', '2011-09-30 01:06:29'),
	(34, 'Product 7', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/ipod_shuffle_1.jpg', 8, 1, 100.0000, 0, 9, '2009-02-03', 5.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 2, 1, 1, 0, 1, 0, '2009-02-03 18:07:54', '2011-09-30 01:07:17'),
	(35, 'Product 8', '', '', '', '', '', '', '', 1000, 5, '', 0, 0, 100.0000, 0, 9, '2009-02-03', 5.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 0, 1, 0, '2009-02-03 18:08:31', '2011-09-30 01:06:17'),
	(36, 'Product 9', '', '', '', '', '', '', '', 994, 6, 'catalog/demo/ipod_nano_1.jpg', 8, 0, 100.0000, 100, 9, '2009-02-03', 5.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 2, 1, 1, 0, 1, 0, '2009-02-03 18:09:19', '2011-09-30 01:07:12'),
	(40, 'product 11', '', '', '', '', '', '', '', 970, 5, 'catalog/demo/iphone_1.jpg', 8, 1, 101.0000, 0, 9, '2009-02-03', 10.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 0, 1, 0, '2009-02-03 21:07:12', '2011-09-30 01:06:53'),
	(41, 'Product 14', '', '', '', '', '', '', '', 977, 5, 'catalog/demo/imac_1.jpg', 8, 1, 100.0000, 0, 9, '2009-02-03', 5.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 0, 1, 0, '2009-02-03 21:07:26', '2011-09-30 01:06:44'),
	(42, 'Product 15', '', '', '', '', '', '', '', 990, 5, 'catalog/demo/apple_cinema_30.jpg', 8, 1, 100.0000, 400, 9, '2009-02-04', 12.50000000, 1, 1.00000000, 2.00000000, 3.00000000, 1, 1, 2, 0, 1, 0, '2009-02-03 21:07:37', '2011-09-30 00:46:19'),
	(43, 'Product 16', '', '', '', '', '', '', '', 929, 5, 'catalog/demo/macbook_1.jpg', 8, 0, 500.0000, 0, 9, '2009-02-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 2, 1, 1, 0, 1, 0, '2009-02-03 21:07:49', '2011-09-30 01:05:46'),
	(44, 'Product 17', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/macbook_air_1.jpg', 8, 1, 1000.0000, 0, 9, '2009-02-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 2, 1, 1, 0, 1, 0, '2009-02-03 21:08:00', '2011-09-30 01:05:53'),
	(45, 'Product 18', '', '', '', '', '', '', '', 998, 5, 'catalog/demo/macbook_pro_1.jpg', 8, 1, 2000.0000, 0, 100, '2009-02-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 2, 1, 1, 0, 1, 0, '2009-02-03 21:08:17', '2011-09-15 22:22:01'),
	(46, 'Product 19', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/sony_vaio_1.jpg', 10, 1, 1000.0000, 0, 9, '2009-02-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 2, 1, 1, 0, 1, 0, '2009-02-03 21:08:29', '2011-09-30 01:06:39'),
	(47, 'Product 21', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/hp_1.jpg', 7, 1, 100.0000, 400, 9, '2009-02-03', 1.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 0, 1, 0, 1, 0, '2009-02-03 21:08:40', '2011-09-30 01:05:28'),
	(48, 'product 20', 'test 1', '', '', '', '', '', 'test 2', 995, 5, 'catalog/demo/ipod_classic_1.jpg', 8, 1, 100.0000, 0, 9, '2009-02-08', 1.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 2, 1, 1, 0, 1, 0, '2009-02-08 17:21:51', '2011-09-30 01:07:06'),
	(49, 'SAM1', '', '', '', '', '', '', '', 0, 8, 'catalog/demo/samsung_tab_1.jpg', 0, 1, 199.9900, 0, 9, '2011-04-25', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 2, '2011-04-26 08:57:34', '2011-09-30 01:06:23');
/*!40000 ALTER TABLE `oc_product` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_product_attribute
DROP TABLE IF EXISTS `oc_product_attribute`;
CREATE TABLE IF NOT EXISTS `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_product_attribute: 5 rows
DELETE FROM `oc_product_attribute`;
/*!40000 ALTER TABLE `oc_product_attribute` DISABLE KEYS */;
INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
	(43, 2, 1, '1'),
	(47, 4, 1, '16GB'),
	(43, 4, 1, '8gb'),
	(42, 3, 1, '100mhz'),
	(47, 2, 1, '4');
/*!40000 ALTER TABLE `oc_product_attribute` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_product_description
DROP TABLE IF EXISTS `oc_product_description`;
CREATE TABLE IF NOT EXISTS `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_product_description: 19 rows
DELETE FROM `oc_product_description`;
/*!40000 ALTER TABLE `oc_product_description` DISABLE KEYS */;
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
	(35, 1, 'Product 8', '&lt;p&gt;\r\n	Product 8&lt;/p&gt;\r\n', '', 'Product 8', '', ''),
	(48, 1, 'iPod Classic', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'iPod Classic', '', ''),
	(40, 1, 'iPhone', '&lt;p class=&quot;intro&quot;&gt;\r\n	iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;\r\n', '', 'iPhone', '', ''),
	(28, 1, 'HTC Touch HD', '&lt;p&gt;\r\n	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&amp;quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Processor Qualcomm&amp;reg; MSM 7201A&amp;trade; 528 MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Operating System&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Device Control via HTC TouchFLO&amp;trade; 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n	&lt;li&gt;\r\n		GPS and A-GPS ready&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth&amp;reg; 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wi-Fi&amp;reg;: IEEE 802.11 b/g&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HTC ExtUSB&amp;trade; (11-pin mini-USB 2.0)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		5 megapixel color camera with auto focus&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VGA CMOS color camera&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n	&lt;li&gt;\r\n		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Expansion Slot: microSD&amp;trade; memory card (SD 2.0 compatible)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Special Features: FM Radio, G-Sensor&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', '	 HTC Touch HD', '', ''),
	(44, 1, 'MacBook Air', '&lt;div&gt;\r\n	MacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don&amp;rsquo;t lose inches and pounds overnight. It&amp;rsquo;s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.&lt;/div&gt;\r\n', '', 'MacBook Air', '', ''),
	(45, 1, 'MacBook Pro', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'MacBook Pro', '', ''),
	(29, 1, 'Palm Treo Pro', '&lt;p&gt;\r\n	Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you&amp;rsquo;re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Edition&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Qualcomm&amp;reg; MSM7201 400MHz Processor&lt;/li&gt;\r\n	&lt;li&gt;\r\n		320x320 transflective colour TFT touchscreen&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Tri-band UMTS &amp;mdash; 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM &amp;mdash; 850/900/1800/1900&lt;/li&gt;\r\n	&lt;li&gt;\r\n		802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in GPS&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth Version: 2.0 + Enhanced Data Rate&lt;/li&gt;\r\n	&lt;li&gt;\r\n		256MB storage (100MB user available), 128MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2.0 megapixel camera, up to 8x digital zoom and video capture&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Removable, rechargeable 1500mAh lithium-ion battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Up to 5.0 hours talk time and up to 250 hours standby&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroSDHC card expansion (up to 32GB supported)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroUSB 2.0 for synchronization and charging&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.5mm stereo headset jack&lt;/li&gt;\r\n	&lt;li&gt;\r\n		60mm (W) x 114mm (L) x 13.5mm (D) / 133g&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', 'Palm Treo Pro', '', ''),
	(36, 1, 'iPod Nano', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'iPod Nano', '', ''),
	(46, 1, 'Sony VAIO', '&lt;div&gt;\r\n	Unprecedented power. The next generation of processing technology has arrived. Built into the newest VAIO notebooks lies Intel&amp;#39;s latest, most powerful innovation yet: Intel&amp;reg; Centrino&amp;reg; 2 processor technology. Boasting incredible speed, expanded wireless connectivity, enhanced multimedia support and greater energy efficiency, all the high-performance essentials are seamlessly combined into a single chip.&lt;/div&gt;\r\n', '', 'Sony VAIO', '', ''),
	(47, 1, 'HP LP3065', '&lt;p&gt;\r\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you&amp;#39;re at the office&lt;/p&gt;\r\n', '', 'HP LP3065', '', ''),
	(32, 1, 'iPod Touch', '&lt;p&gt;\r\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br /&gt;\r\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br /&gt;\r\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br /&gt;\r\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br /&gt;\r\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n', '', '	 iPod Touch', '', ''),
	(41, 1, 'iMac', '&lt;div&gt;\r\n	Just when you thought iMac had everything, now there&acute;s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife &acute;08, and it&acute;s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\r\n', '', 'iMac', '', ''),
	(33, 1, 'Samsung SyncMaster 941BW', '&lt;div&gt;\r\n	Imagine the advantages of going big without slowing down. The big 19&amp;quot; 941BW monitor combines wide aspect ratio with fast pixel response time, for bigger images, more room to work and crisp motion. In addition, the exclusive MagicBright 2, MagicColor and MagicTune technologies help deliver the ideal image in every situation, while sleek, narrow bezels and adjustable stands deliver style just the way you want it. With the Samsung 941BW widescreen analog/digital LCD monitor, it&amp;#39;s not hard to imagine.&lt;/div&gt;\r\n', '', 'Samsung SyncMaster 941BW', '', ''),
	(34, 1, 'iPod Shuffle', '&lt;div&gt;\r\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'iPod Shuffle', '', ''),
	(43, 1, 'MacBook', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'MacBook', '', ''),
	(31, 1, 'Nikon D300', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		Engineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon&amp;#39;s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		Similar to the D3, the D300 features Nikon&amp;#39;s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera&amp;#39;s new features. The D300 features a new 51-point autofocus system with Nikon&amp;#39;s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera&amp;#39;s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon&amp;#39;s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'Nikon D300', '', ''),
	(49, 1, 'Samsung Galaxy Tab 10.1', '&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1, is the world&amp;rsquo;s thinnest tablet, measuring 8.6 mm thickness, running with Android 3.0 Honeycomb OS on a 1GHz dual-core Tegra 2 processor, similar to its younger brother Samsung Galaxy Tab 8.9.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 gives pure Android 3.0 experience, adding its new TouchWiz UX or TouchWiz 4.0 &amp;ndash; includes a live panel, which lets you to customize with different content, such as your pictures, bookmarks, and social feeds, sporting a 10.1 inches WXGA capacitive touch screen with 1280 x 800 pixels of resolution, equipped with 3 megapixel rear camera with LED flash and a 2 megapixel front camera, HSPA+ connectivity up to 21Mbps, 720p HD video recording capability, 1080p HD playback, DLNA support, Bluetooth 2.1, USB 2.0, gyroscope, Wi-Fi 802.11 a/b/g/n, micro-SD slot, 3.5mm headphone jack, and SIM slot, including the Samsung Stick &amp;ndash; a Bluetooth microphone that can be carried in a pocket like a pen and sound dock with powered subwoofer.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 will come in 16GB / 32GB / 64GB verities and pre-loaded with Social Hub, Reader&amp;rsquo;s Hub, Music Hub and Samsung Mini Apps Tray &amp;ndash; which gives you access to more commonly used apps to help ease multitasking and it is capable of Adobe Flash Player 10.2, powered by 6860mAh battery that gives you 10hours of video-playback time.&amp;nbsp;&amp;auml;&amp;ouml;&lt;/p&gt;\r\n', '', 'Samsung Galaxy Tab 10.1', '', ''),
	(42, 1, 'Apple Cinema 30&quot;', '&lt;p&gt;\r\n	&lt;font face=&quot;helvetica,geneva,arial&quot; size=&quot;2&quot;&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work. Combine this display with a Mac Pro, MacBook Pro, or PowerMac G5 and there\'s no limit to what you can achieve. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it\'s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Offering accurate, brilliant color performance, the Cinema HD delivers up to 16.7 million colors across a wide gamut allowing you to see subtle nuances between colors from soft pastels to rich jewel tones. A wide viewing angle ensures uniform color from edge to edge. Apple\'s ColorSync technology allows you to create custom profiles to maintain consistent color onscreen and in print. The result: You can confidently use this display in all your color-critical applications. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.&lt;br&gt;\r\n	&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;\r\n&lt;h3&gt;\r\n	Features:&lt;/h3&gt;\r\n&lt;p&gt;\r\n	Unrivaled display performance&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 2560-by-1600 pixel resolution for display of high definition still and video imagery.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wide-format design for simultaneous display of two full pages of text and graphics.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Industry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Incredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Lightning-fast pixel response for full-motion digital video playback.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 16.7 million saturated colors, for use in all graphics-intensive applications.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Simple setup and operation&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Single cable with elegant breakout for connection to DVI, USB and FireWire ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports to support iSight and other desktop peripherals&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Sleek, elegant design&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Huge virtual workspace, very small footprint.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Narrow Bezel design to minimize visual impact of using dual displays&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Unique hinge design for effortless adjustment&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;h3&gt;\r\n	Technical specifications&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen size (diagonal viewable image size)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Apple Cinema HD Display: 30 inches (29.7-inch viewable)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen type&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Thin film transistor (TFT) active-matrix liquid crystal display (AMLCD)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Resolutions&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		2560 x 1600 pixels (optimum resolution)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2048 x 1280&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1920 x 1200&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1280 x 800&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1024 x 640&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Display colors (maximum)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16.7 million&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Viewing angle (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		170° horizontal; 170° vertical&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Brightness (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 400 cd/m2&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Contrast ratio (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		700:1&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Response time (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16 ms&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Pixel pitch&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 0.250 mm&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen treatment&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Antiglare hardcoat&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;User controls (hardware and software)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Display Power,&lt;/li&gt;\r\n	&lt;li&gt;\r\n		System sleep, wake&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Brightness&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Monitor tilt&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Connectors and cables&lt;/b&gt;&lt;br&gt;\r\n	Cable&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		DVI (Digital Visual Interface)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		FireWire 400&lt;/li&gt;\r\n	&lt;li&gt;\r\n		USB 2.0&lt;/li&gt;\r\n	&lt;li&gt;\r\n		DC power (24 V)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Connectors&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Two-port, self-powered USB 2.0 hub&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Kensington security port&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;VESA mount adapter&lt;/b&gt;&lt;br&gt;\r\n	Requires optional Cinema Display VESA Mount Adapter (M9649G/A)&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Compatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Electrical requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Input voltage: 100-240 VAC 50-60Hz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum power when operating: 150W&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Energy saver mode: 3W or less&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Environmental requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Operating temperature: 50° to 95° F (10° to 35° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Storage temperature: -40° to 116° F (-40° to 47° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Operating humidity: 20% to 80% noncondensing&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum operating altitude: 10,000 feet&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Agency approvals&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		FCC Part 15 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55022 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55024&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VCCI Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AS/NZS 3548 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CNS 13438 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ICES-003 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ISO 13406 part 2&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MPR II&lt;/li&gt;\r\n	&lt;li&gt;\r\n		IEC 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		UL 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CSA 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ENERGY STAR&lt;/li&gt;\r\n	&lt;li&gt;\r\n		TCO \'03&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Size and weight&lt;/b&gt;&lt;br&gt;\r\n	30-inch Apple Cinema HD Display&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Height: 21.3 inches (54.3 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Width: 27.2 inches (68.8 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Depth: 8.46 inches (21.5 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Weight: 27.5 pounds (12.5 kg)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;System Requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Mac Pro, all graphic options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MacBook Pro&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI Express), all graphics options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		PowerBook G4 with dual-link DVI support&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', 'Apple Cinema 30', '', ''),
	(30, 1, 'Canon EOS 5D', '&lt;p&gt;\r\n	Canon\'s press material for the EOS 5D states that it \'defines (a) new D-SLR category\', while we\'re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably \'chunkier\'). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR\'s, an important difference when compared to the latter is that the EOS 5D doesn\'t have any environmental seals. While Canon don\'t specifically refer to the EOS 5D as a \'professional\' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they\'ve not bought too many EF-S lenses...) äë&lt;/p&gt;\r\n', '', 'sdf', '', '');
/*!40000 ALTER TABLE `oc_product_description` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_product_discount
DROP TABLE IF EXISTS `oc_product_discount`;
CREATE TABLE IF NOT EXISTS `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=441 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_product_discount: 3 rows
DELETE FROM `oc_product_discount`;
/*!40000 ALTER TABLE `oc_product_discount` DISABLE KEYS */;
INSERT INTO `oc_product_discount` (`product_discount_id`, `product_id`, `customer_group_id`, `quantity`, `priority`, `price`, `date_start`, `date_end`) VALUES
	(440, 42, 1, 30, 1, 66.0000, '0000-00-00', '0000-00-00'),
	(439, 42, 1, 20, 1, 77.0000, '0000-00-00', '0000-00-00'),
	(438, 42, 1, 10, 1, 88.0000, '0000-00-00', '0000-00-00');
/*!40000 ALTER TABLE `oc_product_discount` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_product_filter
DROP TABLE IF EXISTS `oc_product_filter`;
CREATE TABLE IF NOT EXISTS `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_product_filter: 0 rows
DELETE FROM `oc_product_filter`;
/*!40000 ALTER TABLE `oc_product_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_filter` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_product_image
DROP TABLE IF EXISTS `oc_product_image`;
CREATE TABLE IF NOT EXISTS `oc_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_image_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2352 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_product_image: 61 rows
DELETE FROM `oc_product_image`;
/*!40000 ALTER TABLE `oc_product_image` DISABLE KEYS */;
INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
	(2345, 30, 'catalog/demo/canon_eos_5d_2.jpg', 0),
	(2321, 47, 'catalog/demo/hp_3.jpg', 0),
	(2035, 28, 'catalog/demo/htc_touch_hd_2.jpg', 0),
	(2351, 41, 'catalog/demo/imac_3.jpg', 0),
	(1982, 40, 'catalog/demo/iphone_6.jpg', 0),
	(2001, 36, 'catalog/demo/ipod_nano_5.jpg', 0),
	(2000, 36, 'catalog/demo/ipod_nano_4.jpg', 0),
	(2005, 34, 'catalog/demo/ipod_shuffle_5.jpg', 0),
	(2004, 34, 'catalog/demo/ipod_shuffle_4.jpg', 0),
	(2011, 32, 'catalog/demo/ipod_touch_7.jpg', 0),
	(2010, 32, 'catalog/demo/ipod_touch_6.jpg', 0),
	(2009, 32, 'catalog/demo/ipod_touch_5.jpg', 0),
	(1971, 43, 'catalog/demo/macbook_5.jpg', 0),
	(1970, 43, 'catalog/demo/macbook_4.jpg', 0),
	(1974, 44, 'catalog/demo/macbook_air_4.jpg', 0),
	(1973, 44, 'catalog/demo/macbook_air_2.jpg', 0),
	(1977, 45, 'catalog/demo/macbook_pro_2.jpg', 0),
	(1976, 45, 'catalog/demo/macbook_pro_3.jpg', 0),
	(1986, 31, 'catalog/demo/nikon_d300_3.jpg', 0),
	(1985, 31, 'catalog/demo/nikon_d300_2.jpg', 0),
	(1988, 29, 'catalog/demo/palm_treo_pro_3.jpg', 0),
	(1995, 46, 'catalog/demo/sony_vaio_5.jpg', 0),
	(1994, 46, 'catalog/demo/sony_vaio_4.jpg', 0),
	(1991, 48, 'catalog/demo/ipod_classic_4.jpg', 0),
	(1990, 48, 'catalog/demo/ipod_classic_3.jpg', 0),
	(1981, 40, 'catalog/demo/iphone_2.jpg', 0),
	(1980, 40, 'catalog/demo/iphone_5.jpg', 0),
	(2344, 30, 'catalog/demo/canon_eos_5d_3.jpg', 0),
	(2320, 47, 'catalog/demo/hp_2.jpg', 0),
	(2034, 28, 'catalog/demo/htc_touch_hd_3.jpg', 0),
	(2350, 41, 'catalog/demo/imac_2.jpg', 0),
	(1979, 40, 'catalog/demo/iphone_3.jpg', 0),
	(1978, 40, 'catalog/demo/iphone_4.jpg', 0),
	(1989, 48, 'catalog/demo/ipod_classic_2.jpg', 0),
	(1999, 36, 'catalog/demo/ipod_nano_2.jpg', 0),
	(1998, 36, 'catalog/demo/ipod_nano_3.jpg', 0),
	(2003, 34, 'catalog/demo/ipod_shuffle_2.jpg', 0),
	(2002, 34, 'catalog/demo/ipod_shuffle_3.jpg', 0),
	(2008, 32, 'catalog/demo/ipod_touch_2.jpg', 0),
	(2007, 32, 'catalog/demo/ipod_touch_3.jpg', 0),
	(2006, 32, 'catalog/demo/ipod_touch_4.jpg', 0),
	(1969, 43, 'catalog/demo/macbook_2.jpg', 0),
	(1968, 43, 'catalog/demo/macbook_3.jpg', 0),
	(1972, 44, 'catalog/demo/macbook_air_3.jpg', 0),
	(1975, 45, 'catalog/demo/macbook_pro_4.jpg', 0),
	(1984, 31, 'catalog/demo/nikon_d300_4.jpg', 0),
	(1983, 31, 'catalog/demo/nikon_d300_5.jpg', 0),
	(1987, 29, 'catalog/demo/palm_treo_pro_2.jpg', 0),
	(1993, 46, 'catalog/demo/sony_vaio_2.jpg', 0),
	(1992, 46, 'catalog/demo/sony_vaio_3.jpg', 0),
	(2327, 49, 'catalog/demo/samsung_tab_7.jpg', 0),
	(2326, 49, 'catalog/demo/samsung_tab_6.jpg', 0),
	(2325, 49, 'catalog/demo/samsung_tab_5.jpg', 0),
	(2324, 49, 'catalog/demo/samsung_tab_4.jpg', 0),
	(2323, 49, 'catalog/demo/samsung_tab_3.jpg', 0),
	(2322, 49, 'catalog/demo/samsung_tab_2.jpg', 0),
	(2317, 42, 'catalog/demo/canon_logo.jpg', 0),
	(2316, 42, 'catalog/demo/hp_1.jpg', 0),
	(2315, 42, 'catalog/demo/compaq_presario.jpg', 0),
	(2314, 42, 'catalog/demo/canon_eos_5d_1.jpg', 0),
	(2313, 42, 'catalog/demo/canon_eos_5d_2.jpg', 0);
/*!40000 ALTER TABLE `oc_product_image` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_product_option
DROP TABLE IF EXISTS `oc_product_option`;
CREATE TABLE IF NOT EXISTS `oc_product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=227 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_product_option: 12 rows
DELETE FROM `oc_product_option`;
/*!40000 ALTER TABLE `oc_product_option` DISABLE KEYS */;
INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
	(224, 35, 11, '', 1),
	(225, 47, 12, '2011-04-22', 1),
	(223, 42, 2, '', 1),
	(217, 42, 5, '', 1),
	(209, 42, 6, '', 1),
	(218, 42, 1, '', 1),
	(208, 42, 4, 'test', 1),
	(219, 42, 8, '2011-02-20', 1),
	(222, 42, 7, '', 1),
	(221, 42, 9, '22:25', 1),
	(220, 42, 10, '2011-02-20 22:25', 1),
	(226, 30, 5, '', 1);
/*!40000 ALTER TABLE `oc_product_option` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_product_option_value
DROP TABLE IF EXISTS `oc_product_option_value`;
CREATE TABLE IF NOT EXISTS `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_product_option_value: 16 rows
DELETE FROM `oc_product_option_value`;
/*!40000 ALTER TABLE `oc_product_option_value` DISABLE KEYS */;
INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
	(1, 217, 42, 5, 41, 100, 0, 1.0000, '+', 0, '+', 1.00000000, '+'),
	(6, 218, 42, 1, 31, 146, 1, 20.0000, '+', 2, '-', 20.00000000, '+'),
	(7, 218, 42, 1, 43, 300, 1, 30.0000, '+', 3, '+', 30.00000000, '+'),
	(5, 218, 42, 1, 32, 96, 1, 10.0000, '+', 1, '+', 10.00000000, '+'),
	(4, 217, 42, 5, 39, 92, 1, 4.0000, '+', 0, '+', 4.00000000, '+'),
	(2, 217, 42, 5, 42, 200, 1, 2.0000, '+', 0, '+', 2.00000000, '+'),
	(3, 217, 42, 5, 40, 300, 0, 3.0000, '+', 0, '+', 3.00000000, '+'),
	(8, 223, 42, 2, 23, 48, 1, 10.0000, '+', 0, '+', 10.00000000, '+'),
	(10, 223, 42, 2, 44, 2696, 1, 30.0000, '+', 0, '+', 30.00000000, '+'),
	(9, 223, 42, 2, 24, 194, 1, 20.0000, '+', 0, '+', 20.00000000, '+'),
	(11, 223, 42, 2, 45, 3998, 1, 40.0000, '+', 0, '+', 40.00000000, '+'),
	(12, 224, 35, 11, 46, 0, 1, 5.0000, '+', 0, '+', 0.00000000, '+'),
	(13, 224, 35, 11, 47, 10, 1, 10.0000, '+', 0, '+', 0.00000000, '+'),
	(14, 224, 35, 11, 48, 15, 1, 15.0000, '+', 0, '+', 0.00000000, '+'),
	(16, 226, 30, 5, 40, 5, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
	(15, 226, 30, 5, 39, 2, 1, 0.0000, '+', 0, '+', 0.00000000, '+');
/*!40000 ALTER TABLE `oc_product_option_value` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_product_recurring
DROP TABLE IF EXISTS `oc_product_recurring`;
CREATE TABLE IF NOT EXISTS `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_product_recurring: 0 rows
DELETE FROM `oc_product_recurring`;
/*!40000 ALTER TABLE `oc_product_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_recurring` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_product_related
DROP TABLE IF EXISTS `oc_product_related`;
CREATE TABLE IF NOT EXISTS `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_product_related: 4 rows
DELETE FROM `oc_product_related`;
/*!40000 ALTER TABLE `oc_product_related` DISABLE KEYS */;
INSERT INTO `oc_product_related` (`product_id`, `related_id`) VALUES
	(40, 42),
	(41, 42),
	(42, 40),
	(42, 41);
/*!40000 ALTER TABLE `oc_product_related` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_product_reward
DROP TABLE IF EXISTS `oc_product_reward`;
CREATE TABLE IF NOT EXISTS `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=546 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_product_reward: 19 rows
DELETE FROM `oc_product_reward`;
/*!40000 ALTER TABLE `oc_product_reward` DISABLE KEYS */;
INSERT INTO `oc_product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
	(515, 42, 1, 100),
	(519, 47, 1, 300),
	(379, 28, 1, 400),
	(329, 43, 1, 600),
	(339, 29, 1, 0),
	(343, 48, 1, 0),
	(335, 40, 1, 0),
	(539, 30, 1, 200),
	(331, 44, 1, 700),
	(333, 45, 1, 800),
	(337, 31, 1, 0),
	(425, 35, 1, 0),
	(345, 33, 1, 0),
	(347, 46, 1, 0),
	(545, 41, 1, 0),
	(351, 36, 1, 0),
	(353, 34, 1, 0),
	(355, 32, 1, 0),
	(521, 49, 1, 1000);
/*!40000 ALTER TABLE `oc_product_reward` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_product_special
DROP TABLE IF EXISTS `oc_product_special`;
CREATE TABLE IF NOT EXISTS `oc_product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=440 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_product_special: 3 rows
DELETE FROM `oc_product_special`;
/*!40000 ALTER TABLE `oc_product_special` DISABLE KEYS */;
INSERT INTO `oc_product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`) VALUES
	(419, 42, 1, 1, 90.0000, '0000-00-00', '0000-00-00'),
	(439, 30, 1, 2, 90.0000, '0000-00-00', '0000-00-00'),
	(438, 30, 1, 1, 80.0000, '0000-00-00', '0000-00-00');
/*!40000 ALTER TABLE `oc_product_special` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_product_to_category
DROP TABLE IF EXISTS `oc_product_to_category`;
CREATE TABLE IF NOT EXISTS `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_product_to_category: 30 rows
DELETE FROM `oc_product_to_category`;
/*!40000 ALTER TABLE `oc_product_to_category` DISABLE KEYS */;
INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
	(28, 20),
	(28, 24),
	(29, 20),
	(29, 24),
	(30, 20),
	(30, 33),
	(31, 33),
	(32, 34),
	(33, 20),
	(33, 28),
	(34, 34),
	(35, 20),
	(36, 34),
	(40, 20),
	(40, 24),
	(41, 27),
	(42, 20),
	(42, 28),
	(43, 18),
	(43, 20),
	(44, 18),
	(44, 20),
	(45, 18),
	(46, 18),
	(46, 20),
	(47, 18),
	(47, 20),
	(48, 20),
	(48, 34),
	(49, 57);
/*!40000 ALTER TABLE `oc_product_to_category` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_product_to_download
DROP TABLE IF EXISTS `oc_product_to_download`;
CREATE TABLE IF NOT EXISTS `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_product_to_download: 0 rows
DELETE FROM `oc_product_to_download`;
/*!40000 ALTER TABLE `oc_product_to_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_to_download` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_product_to_layout
DROP TABLE IF EXISTS `oc_product_to_layout`;
CREATE TABLE IF NOT EXISTS `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_product_to_layout: 0 rows
DELETE FROM `oc_product_to_layout`;
/*!40000 ALTER TABLE `oc_product_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_to_layout` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_product_to_store
DROP TABLE IF EXISTS `oc_product_to_store`;
CREATE TABLE IF NOT EXISTS `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_product_to_store: 19 rows
DELETE FROM `oc_product_to_store`;
/*!40000 ALTER TABLE `oc_product_to_store` DISABLE KEYS */;
INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
	(28, 0),
	(29, 0),
	(30, 0),
	(31, 0),
	(32, 0),
	(33, 0),
	(34, 0),
	(35, 0),
	(36, 0),
	(40, 0),
	(41, 0),
	(42, 0),
	(43, 0),
	(44, 0),
	(45, 0),
	(46, 0),
	(47, 0),
	(48, 0),
	(49, 0);
/*!40000 ALTER TABLE `oc_product_to_store` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_recurring
DROP TABLE IF EXISTS `oc_recurring`;
CREATE TABLE IF NOT EXISTS `oc_recurring` (
  `recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) unsigned NOT NULL,
  `cycle` int(10) unsigned NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) unsigned NOT NULL,
  `trial_cycle` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_recurring: 0 rows
DELETE FROM `oc_recurring`;
/*!40000 ALTER TABLE `oc_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_recurring` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_recurring_description
DROP TABLE IF EXISTS `oc_recurring_description`;
CREATE TABLE IF NOT EXISTS `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`recurring_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_recurring_description: 0 rows
DELETE FROM `oc_recurring_description`;
/*!40000 ALTER TABLE `oc_recurring_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_recurring_description` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_return
DROP TABLE IF EXISTS `oc_return`;
CREATE TABLE IF NOT EXISTS `oc_return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_return: 0 rows
DELETE FROM `oc_return`;
/*!40000 ALTER TABLE `oc_return` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_return` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_return_action
DROP TABLE IF EXISTS `oc_return_action`;
CREATE TABLE IF NOT EXISTS `oc_return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_return_action: 3 rows
DELETE FROM `oc_return_action`;
/*!40000 ALTER TABLE `oc_return_action` DISABLE KEYS */;
INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
	(1, 1, 'Возвращены средства'),
	(2, 1, 'Выдан в кредит'),
	(3, 1, 'Отправлен другой товар для замены');
/*!40000 ALTER TABLE `oc_return_action` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_return_history
DROP TABLE IF EXISTS `oc_return_history`;
CREATE TABLE IF NOT EXISTS `oc_return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_return_history: 0 rows
DELETE FROM `oc_return_history`;
/*!40000 ALTER TABLE `oc_return_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_return_history` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_return_reason
DROP TABLE IF EXISTS `oc_return_reason`;
CREATE TABLE IF NOT EXISTS `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_return_reason: 5 rows
DELETE FROM `oc_return_reason`;
/*!40000 ALTER TABLE `oc_return_reason` DISABLE KEYS */;
INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
	(1, 1, 'Получен/доставлен неисправным (сломан)'),
	(2, 1, 'Получен не тот (ошибочный) товар'),
	(3, 1, 'Ошибочный заказ'),
	(4, 1, 'Ошибка, пожалуйста укажите/приложите подробности'),
	(5, 1, 'Другое (другая причина), пожалуйста укажите/приложите подробности');
/*!40000 ALTER TABLE `oc_return_reason` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_return_status
DROP TABLE IF EXISTS `oc_return_status`;
CREATE TABLE IF NOT EXISTS `oc_return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_return_status: 3 rows
DELETE FROM `oc_return_status`;
/*!40000 ALTER TABLE `oc_return_status` DISABLE KEYS */;
INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
	(1, 1, 'Рассматриваемый'),
	(3, 1, 'Готов (к отправке)'),
	(2, 1, 'Заказ в ожидании');
/*!40000 ALTER TABLE `oc_return_status` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_review
DROP TABLE IF EXISTS `oc_review`;
CREATE TABLE IF NOT EXISTS `oc_review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_review: 0 rows
DELETE FROM `oc_review`;
/*!40000 ALTER TABLE `oc_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_review` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_seo_url
DROP TABLE IF EXISTS `oc_seo_url`;
CREATE TABLE IF NOT EXISTS `oc_seo_url` (
  `seo_url_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`seo_url_id`),
  KEY `query` (`query`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM AUTO_INCREMENT=895 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_seo_url: 102 rows
DELETE FROM `oc_seo_url`;
/*!40000 ALTER TABLE `oc_seo_url` DISABLE KEYS */;
INSERT INTO `oc_seo_url` (`seo_url_id`, `store_id`, `language_id`, `query`, `keyword`) VALUES
	(824, 0, 1, 'product_id=48', 'ipod-classic'),
	(836, 0, 1, 'category_id=20', 'desktops'),
	(834, 0, 1, 'category_id=26', 'pc'),
	(835, 0, 1, 'category_id=27', 'mac'),
	(730, 0, 1, 'manufacturer_id=8', 'apple'),
	(894, 0, 1, 'information_id=4', 'about_us'),
	(768, 0, 1, 'product_id=42', 'test'),
	(789, 0, 1, 'category_id=34', 'mp3-players'),
	(781, 0, 1, 'category_id=36', 'test2'),
	(774, 0, 1, 'category_id=18', 'laptop-notebook'),
	(775, 0, 1, 'category_id=46', 'macs'),
	(776, 0, 1, 'category_id=45', 'windows'),
	(777, 0, 1, 'category_id=25', 'component'),
	(778, 0, 1, 'category_id=29', 'mouse'),
	(779, 0, 1, 'category_id=28', 'monitor'),
	(780, 0, 1, 'category_id=35', 'test1'),
	(782, 0, 1, 'category_id=30', 'printer'),
	(783, 0, 1, 'category_id=31', 'scanner'),
	(784, 0, 1, 'category_id=32', 'web-camera'),
	(785, 0, 1, 'category_id=57', 'tablet'),
	(786, 0, 1, 'category_id=17', 'software'),
	(787, 0, 1, 'category_id=24', 'smartphone'),
	(788, 0, 1, 'category_id=33', 'camera'),
	(790, 0, 1, 'category_id=43', 'test11'),
	(791, 0, 1, 'category_id=44', 'test12'),
	(792, 0, 1, 'category_id=47', 'test15'),
	(793, 0, 1, 'category_id=48', 'test16'),
	(794, 0, 1, 'category_id=49', 'test17'),
	(795, 0, 1, 'category_id=50', 'test18'),
	(796, 0, 1, 'category_id=51', 'test19'),
	(797, 0, 1, 'category_id=52', 'test20'),
	(798, 0, 1, 'category_id=58', 'test25'),
	(799, 0, 1, 'category_id=53', 'test21'),
	(800, 0, 1, 'category_id=54', 'test22'),
	(801, 0, 1, 'category_id=55', 'test23'),
	(802, 0, 1, 'category_id=56', 'test24'),
	(803, 0, 1, 'category_id=38', 'test4'),
	(804, 0, 1, 'category_id=37', 'test5'),
	(805, 0, 1, 'category_id=39', 'test6'),
	(806, 0, 1, 'category_id=40', 'test7'),
	(807, 0, 1, 'category_id=41', 'test8'),
	(808, 0, 1, 'category_id=42', 'test9'),
	(809, 0, 1, 'product_id=30', 'canon-eos-5d'),
	(840, 0, 1, 'product_id=47', 'hp-lp3065'),
	(811, 0, 1, 'product_id=28', 'htc-touch-hd'),
	(812, 0, 1, 'product_id=43', 'macbook'),
	(813, 0, 1, 'product_id=44', 'macbook-air'),
	(814, 0, 1, 'product_id=45', 'macbook-pro'),
	(816, 0, 1, 'product_id=31', 'nikon-d300'),
	(817, 0, 1, 'product_id=29', 'palm-treo-pro'),
	(818, 0, 1, 'product_id=35', 'product-8'),
	(819, 0, 1, 'product_id=49', 'samsung-galaxy-tab-10-1'),
	(820, 0, 1, 'product_id=33', 'samsung-syncmaster-941bw'),
	(821, 0, 1, 'product_id=46', 'sony-vaio'),
	(837, 0, 1, 'product_id=41', 'imac'),
	(823, 0, 1, 'product_id=40', 'iphone'),
	(825, 0, 1, 'product_id=36', 'ipod-nano'),
	(826, 0, 1, 'product_id=34', 'ipod-shuffle'),
	(827, 0, 1, 'product_id=32', 'ipod-touch'),
	(828, 0, 1, 'manufacturer_id=9', 'canon'),
	(829, 0, 1, 'manufacturer_id=5', 'htc'),
	(830, 0, 1, 'manufacturer_id=7', 'hewlett-packard'),
	(831, 0, 1, 'manufacturer_id=6', 'palm'),
	(832, 0, 1, 'manufacturer_id=10', 'sony'),
	(841, 0, 1, 'information_id=6', 'delivery'),
	(892, 0, 1, 'information_id=3', 'privacy'),
	(890, 0, 1, 'information_id=5', 'terms'),
	(845, 0, 1, 'common/home', ''),
	(846, 0, 1, 'information/contact', 'contact'),
	(847, 0, 1, 'information/sitemap', 'sitemap'),
	(848, 0, 1, 'product/special', 'specials'),
	(849, 0, 1, 'product/manufacturer', 'brands'),
	(850, 0, 1, 'product/compare', 'compare-products'),
	(851, 0, 1, 'product/search', 'search'),
	(852, 0, 1, 'checkout/cart', 'cart'),
	(853, 0, 1, 'checkout/checkout', 'checkout'),
	(854, 0, 1, 'account/login', 'login'),
	(855, 0, 1, 'account/logout', 'logout'),
	(856, 0, 1, 'account/voucher', 'vouchers'),
	(857, 0, 1, 'account/wishlist', 'wishlist'),
	(858, 0, 1, 'account/account', 'my-account'),
	(859, 0, 1, 'account/order', 'order-history'),
	(860, 0, 1, 'account/newsletter', 'newsletter'),
	(861, 0, 1, 'account/return/add', 'return-add'),
	(862, 0, 1, 'account/forgotten', 'forgot-password'),
	(863, 0, 1, 'account/download', 'downloads'),
	(864, 0, 1, 'account/return', 'returns'),
	(865, 0, 1, 'account/transaction', 'transactions'),
	(866, 0, 1, 'account/register', 'create-account'),
	(867, 0, 1, 'account/recurring', 'recurring'),
	(868, 0, 1, 'account/address', 'address-book'),
	(869, 0, 1, 'account/reward', 'reward-points'),
	(870, 0, 1, 'account/edit', 'edit-account'),
	(871, 0, 1, 'account/password', 'change-password'),
	(880, 0, 1, 'affiliate/forgotten', 'affiliate-forgot-password'),
	(881, 0, 1, 'affiliate/register', 'create-affiliate-account'),
	(882, 0, 1, 'affiliate/login', 'affiliate-login'),
	(883, 0, 1, 'affiliate/payment', 'affiliate-payment'),
	(884, 0, 1, 'affiliate/tracking', 'affiliate-tracking'),
	(885, 0, 1, 'affiliate/transaction', 'affiliate-transaction'),
	(886, 0, 1, 'affiliate/account', 'affiliates'),
	(893, 0, 1, 'information_id=8', 'prava-potrebitelya');
/*!40000 ALTER TABLE `oc_seo_url` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_session
DROP TABLE IF EXISTS `oc_session`;
CREATE TABLE IF NOT EXISTS `oc_session` (
  `session_id` varchar(32) NOT NULL,
  `data` text NOT NULL,
  `expire` datetime NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_session: ~4 rows (приблизительно)
DELETE FROM `oc_session`;
/*!40000 ALTER TABLE `oc_session` DISABLE KEYS */;
INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
	('3e00e2bf4f8f827ba38745216e', '{"language":"ru-ru","currency":"RUB","user_id":"1","user_token":"kMcu9gykvqMdbU4g8IQGnLOqPpPM2d9B"}', '2021-04-07 11:25:39'),
	('42bf39e6be59676d85ad9bba44', '{"language":"ru-ru","currency":"RUB","user_id":"1","user_token":"3qJIo39heVf0ZMpdBDRik1n020iEWBBS","install":"n3tsaLqEg9"}', '2021-04-07 11:16:06'),
	('47169f222e9f32e6d06c67ee60', '{"language":"ru-ru","currency":"RUB","user_id":"1","user_token":"kgWseWHzSftza6a2MlyZQXB36WA7n9iT"}', '2021-04-07 11:34:26'),
	('5b339b1bb8b79c63ef0897160b', '{"language":"ru-ru","currency":"RUB","user_id":"1","user_token":"yUwtuKrDOQvwWuGyahhlmBjEBNknvPIt","install":"8xnOaHJykb"}', '2021-04-07 11:13:30'),
	('ee43a3a1982e07e3b55ab9abfd', '{"language":"ru-ru","currency":"RUB","user_id":"1","user_token":"UFjqYi9a3QRM9YQ74WSwm4rCgJ1C408I"}', '2021-04-07 11:22:10');
/*!40000 ALTER TABLE `oc_session` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_setting
DROP TABLE IF EXISTS `oc_setting`;
CREATE TABLE IF NOT EXISTS `oc_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(128) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=517 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_setting: 220 rows
DELETE FROM `oc_setting`;
/*!40000 ALTER TABLE `oc_setting` DISABLE KEYS */;
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
	(498, 0, 'config', 'config_mail_smtp_password', '', 0),
	(499, 0, 'config', 'config_mail_smtp_port', '25', 0),
	(500, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
	(501, 0, 'config', 'config_mail_alert', '["order"]', 1),
	(502, 0, 'config', 'config_mail_alert_email', '', 0),
	(503, 0, 'config', 'config_maintenance', '0', 0),
	(504, 0, 'config', 'config_seo_url', '0', 0),
	(505, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
	(4, 0, 'total_voucher', 'total_voucher_sort_order', '8', 0),
	(5, 0, 'total_voucher', 'total_voucher_status', '1', 0),
	(516, 0, 'config', 'config_error_filename', 'error.log', 0),
	(514, 0, 'config', 'config_error_display', '1', 0),
	(515, 0, 'config', 'config_error_log', '1', 0),
	(512, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
	(513, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
	(506, 0, 'config', 'config_compression', '0', 0),
	(507, 0, 'config', 'config_secure', '0', 0),
	(508, 0, 'config', 'config_password', '1', 0),
	(509, 0, 'config', 'config_shared', '0', 0),
	(510, 0, 'config', 'config_encryption', 'PPDOdc6dvxTUa1RGN3SEnMtMo55xRQVhzAjZCkclmomSpVkQXEHJHthky0SuJl53oIJY5E61ZBPqS2wltM8yblkdITzrPmmk117mhQeI6opFoytpxqD0NPtek0srMeqDswPkRZka3QdLO8LUEIupJjSombmHHuAd9iW1s0NDq2TFSQNdvfLXI539xBSjHDIerxJaY17tLD05EeCK9ZR7d9FHgaYL2ScOT0Y7GLYKxtM8FCwvukuG8Ffq7tR3PU8gLnaZgIJvt9gj9m2RNn4fDZHcrhCPsTNipmYZ9e8RmFhsVl5YtBbA4kFEzb8TqxQNNfKms00Zok3mOYdyKbBvc9KcP9axY1oBEFYCMXwQjd9R1KcB0i0Y9sGiK37vMN2C8CrSBLKXvDzgyUBhJbK24Luy07uyOcXuqnf5LhK3KSyzk7hjilarZ7B5QTyHrCN8jpySoOYrhXwGRd42ZBYLFsMNDGla6ojdjkcf52NzhIcbbJOw103PVdGLANdZHLnos5KE6OWdEdKgCyhG0fW7CJA2xChG5ZYUa06CtIjuJGLussB3nJmxt2x0DSu6rYEKX4qmEM23RhipyACelKwGljVwKsKUq1z49RW30kMminwsgBR3oBGfCfLbvpTlseQbx5BSnZieFtlPah4XriCvh3JOEKOzbcaC74UpkTq5l5KxWdd5OSybza2ckK9ouNEfz0E3ApuwrFJeoQTxSLuBsVRpqMLXSocOd15wKopkbXOqZEEE5wv2XqkFnE08XizX979HLBTv6PcMTrg2mjZw59JiPdqKiQDs6NL0k81DtUNWcUyhm7LMSoblWlvoNhD8GY9P18xi7SFL6oqQBQJpG9vfCRiJn62yR8sBykfUECgbGVp99yDzGhJnIJ3R2IduzS8eMBer3pgB8vHk7EIqqOAiTNMcgRuDokfODXVbTJT6vOehYxbs7lCVqpZNOXo95oSXbSizblHBG2xWHFd8PbtB5vHLVcTORGiZKVSOGYumEfiAKHFF2e1SMKAY5UlU', 0),
	(511, 0, 'config', 'config_file_max_size', '300000', 0),
	(497, 0, 'config', 'config_mail_smtp_username', '', 0),
	(496, 0, 'config', 'config_mail_smtp_hostname', '', 0),
	(495, 0, 'config', 'config_mail_parameter', '', 0),
	(494, 0, 'config', 'config_mail_engine', 'mail', 0),
	(493, 0, 'config', 'config_icon', 'catalog/cart.png', 0),
	(492, 0, 'config', 'config_logo', 'catalog/logo.png', 0),
	(491, 0, 'config', 'config_captcha_page', '["review","return","contact"]', 1),
	(490, 0, 'config', 'config_captcha', '', 0),
	(489, 0, 'config', 'config_return_status_id', '2', 0),
	(488, 0, 'config', 'config_return_id', '0', 0),
	(487, 0, 'config', 'config_affiliate_id', '4', 0),
	(486, 0, 'config', 'config_affiliate_commission', '5', 0),
	(485, 0, 'config', 'config_affiliate_auto', '0', 0),
	(484, 0, 'config', 'config_affiliate_approval', '0', 0),
	(483, 0, 'config', 'config_affiliate_group_id', '1', 0),
	(482, 0, 'config', 'config_stock_checkout', '0', 0),
	(481, 0, 'config', 'config_stock_warning', '0', 0),
	(480, 0, 'config', 'config_stock_display', '0', 0),
	(479, 0, 'config', 'config_api_id', '1', 0),
	(478, 0, 'config', 'config_fraud_status_id', '16', 0),
	(477, 0, 'config', 'config_complete_status', '["3","5"]', 1),
	(473, 0, 'config', 'config_checkout_guest', '1', 0),
	(474, 0, 'config', 'config_checkout_id', '5', 0),
	(476, 0, 'config', 'config_processing_status', '["2","3","1","12","5"]', 1),
	(475, 0, 'config', 'config_order_status_id', '1', 0),
	(472, 0, 'config', 'config_cart_weight', '1', 0),
	(95, 0, 'payment_free_checkout', 'payment_free_checkout_status', '1', 0),
	(96, 0, 'payment_free_checkout', 'free_checkout_order_status_id', '1', 0),
	(97, 0, 'payment_free_checkout', 'payment_free_checkout_sort_order', '1', 0),
	(98, 0, 'payment_cod', 'payment_cod_sort_order', '5', 0),
	(99, 0, 'payment_cod', 'payment_cod_total', '0.01', 0),
	(100, 0, 'payment_cod', 'payment_cod_order_status_id', '1', 0),
	(101, 0, 'payment_cod', 'payment_cod_geo_zone_id', '0', 0),
	(102, 0, 'payment_cod', 'payment_cod_status', '1', 0),
	(103, 0, 'shipping_flat', 'shipping_flat_sort_order', '1', 0),
	(104, 0, 'shipping_flat', 'shipping_flat_status', '1', 0),
	(105, 0, 'shipping_flat', 'shipping_flat_geo_zone_id', '0', 0),
	(106, 0, 'shipping_flat', 'shipping_flat_tax_class_id', '9', 0),
	(107, 0, 'shipping_flat', 'shipping_flat_cost', '5.00', 0),
	(108, 0, 'total_shipping', 'total_shipping_sort_order', '3', 0),
	(109, 0, 'total_sub_total', 'sub_total_sort_order', '1', 0),
	(110, 0, 'total_sub_total', 'total_sub_total_status', '1', 0),
	(111, 0, 'total_tax', 'total_tax_status', '0', 0),
	(112, 0, 'total_total', 'total_total_sort_order', '9', 0),
	(113, 0, 'total_total', 'total_total_status', '1', 0),
	(114, 0, 'total_tax', 'total_tax_sort_order', '5', 0),
	(115, 0, 'total_credit', 'total_credit_sort_order', '7', 0),
	(116, 0, 'total_credit', 'total_credit_status', '1', 0),
	(117, 0, 'total_reward', 'total_reward_sort_order', '2', 0),
	(118, 0, 'total_reward', 'total_reward_status', '1', 0),
	(119, 0, 'total_shipping', 'total_shipping_status', '1', 0),
	(120, 0, 'total_shipping', 'total_shipping_estimator', '1', 0),
	(121, 0, 'total_coupon', 'total_coupon_sort_order', '4', 0),
	(122, 0, 'total_coupon', 'total_coupon_status', '1', 0),
	(123, 0, 'module_category', 'module_category_status', '1', 0),
	(124, 0, 'module_account', 'module_account_status', '1', 0),
	(125, 0, 'theme_default', 'theme_default_product_limit', '15', 0),
	(126, 0, 'theme_default', 'theme_default_product_description_length', '100', 0),
	(127, 0, 'theme_default', 'theme_default_image_thumb_width', '228', 0),
	(128, 0, 'theme_default', 'theme_default_image_thumb_height', '228', 0),
	(129, 0, 'theme_default', 'theme_default_image_popup_width', '500', 0),
	(130, 0, 'theme_default', 'theme_default_image_popup_height', '500', 0),
	(131, 0, 'theme_default', 'theme_default_image_category_width', '80', 0),
	(132, 0, 'theme_default', 'theme_default_image_category_height', '80', 0),
	(133, 0, 'theme_default', 'theme_default_image_product_width', '228', 0),
	(134, 0, 'theme_default', 'theme_default_image_product_height', '228', 0),
	(135, 0, 'theme_default', 'theme_default_image_additional_width', '74', 0),
	(136, 0, 'theme_default', 'theme_default_image_additional_height', '74', 0),
	(137, 0, 'theme_default', 'theme_default_image_related_width', '200', 0),
	(138, 0, 'theme_default', 'theme_default_image_related_height', '200', 0),
	(139, 0, 'theme_default', 'theme_default_image_compare_width', '90', 0),
	(140, 0, 'theme_default', 'theme_default_image_compare_height', '90', 0),
	(141, 0, 'theme_default', 'theme_default_image_wishlist_width', '47', 0),
	(142, 0, 'theme_default', 'theme_default_image_wishlist_height', '47', 0),
	(143, 0, 'theme_default', 'theme_default_image_cart_height', '47', 0),
	(144, 0, 'theme_default', 'theme_default_image_cart_width', '47', 0),
	(145, 0, 'theme_default', 'theme_default_image_location_height', '50', 0),
	(146, 0, 'theme_default', 'theme_default_image_location_width', '268', 0),
	(147, 0, 'theme_default', 'theme_default_directory', 'default', 0),
	(148, 0, 'theme_default', 'theme_default_status', '1', 0),
	(149, 0, 'dashboard_activity', 'dashboard_activity_status', '1', 0),
	(150, 0, 'dashboard_activity', 'dashboard_activity_sort_order', '7', 0),
	(151, 0, 'dashboard_sale', 'dashboard_sale_status', '1', 0),
	(152, 0, 'dashboard_sale', 'dashboard_sale_width', '3', 0),
	(153, 0, 'dashboard_chart', 'dashboard_chart_status', '1', 0),
	(154, 0, 'dashboard_chart', 'dashboard_chart_width', '6', 0),
	(155, 0, 'dashboard_customer', 'dashboard_customer_status', '1', 0),
	(156, 0, 'dashboard_customer', 'dashboard_customer_width', '3', 0),
	(157, 0, 'dashboard_map', 'dashboard_map_status', '1', 0),
	(158, 0, 'dashboard_map', 'dashboard_map_width', '6', 0),
	(159, 0, 'dashboard_online', 'dashboard_online_status', '1', 0),
	(160, 0, 'dashboard_online', 'dashboard_online_width', '3', 0),
	(161, 0, 'dashboard_order', 'dashboard_order_sort_order', '1', 0),
	(162, 0, 'dashboard_order', 'dashboard_order_status', '1', 0),
	(163, 0, 'dashboard_order', 'dashboard_order_width', '3', 0),
	(164, 0, 'dashboard_sale', 'dashboard_sale_sort_order', '2', 0),
	(165, 0, 'dashboard_customer', 'dashboard_customer_sort_order', '3', 0),
	(166, 0, 'dashboard_online', 'dashboard_online_sort_order', '4', 0),
	(167, 0, 'dashboard_map', 'dashboard_map_sort_order', '5', 0),
	(168, 0, 'dashboard_chart', 'dashboard_chart_sort_order', '6', 0),
	(169, 0, 'dashboard_recent', 'dashboard_recent_status', '1', 0),
	(170, 0, 'dashboard_recent', 'dashboard_recent_sort_order', '8', 0),
	(171, 0, 'dashboard_activity', 'dashboard_activity_width', '4', 0),
	(172, 0, 'dashboard_recent', 'dashboard_recent_width', '8', 0),
	(173, 0, 'report_customer_activity', 'report_customer_activity_status', '1', 0),
	(174, 0, 'report_customer_activity', 'report_customer_activity_sort_order', '1', 0),
	(175, 0, 'report_customer_order', 'report_customer_order_status', '1', 0),
	(176, 0, 'report_customer_order', 'report_customer_order_sort_order', '2', 0),
	(177, 0, 'report_customer_reward', 'report_customer_reward_status', '1', 0),
	(178, 0, 'report_customer_reward', 'report_customer_reward_sort_order', '3', 0),
	(179, 0, 'report_customer_search', 'report_customer_search_sort_order', '3', 0),
	(180, 0, 'report_customer_search', 'report_customer_search_status', '1', 0),
	(181, 0, 'report_customer_transaction', 'report_customer_transaction_status', '1', 0),
	(182, 0, 'report_customer_transaction', 'report_customer_transaction_status_sort_order', '4', 0),
	(183, 0, 'report_sale_tax', 'report_sale_tax_status', '1', 0),
	(184, 0, 'report_sale_tax', 'report_sale_tax_sort_order', '5', 0),
	(185, 0, 'report_sale_shipping', 'report_sale_shipping_status', '1', 0),
	(186, 0, 'report_sale_shipping', 'report_sale_shipping_sort_order', '6', 0),
	(187, 0, 'report_sale_return', 'report_sale_return_status', '1', 0),
	(188, 0, 'report_sale_return', 'report_sale_return_sort_order', '7', 0),
	(189, 0, 'report_sale_order', 'report_sale_order_status', '1', 0),
	(190, 0, 'report_sale_order', 'report_sale_order_sort_order', '8', 0),
	(191, 0, 'report_sale_coupon', 'report_sale_coupon_status', '1', 0),
	(192, 0, 'report_sale_coupon', 'report_sale_coupon_sort_order', '9', 0),
	(193, 0, 'report_product_viewed', 'report_product_viewed_status', '1', 0),
	(194, 0, 'report_product_viewed', 'report_product_viewed_sort_order', '10', 0),
	(195, 0, 'report_product_purchased', 'report_product_purchased_status', '1', 0),
	(196, 0, 'report_product_purchased', 'report_product_purchased_sort_order', '11', 0),
	(197, 0, 'report_marketing', 'report_marketing_status', '1', 0),
	(198, 0, 'report_marketing', 'report_marketing_sort_order', '12', 0),
	(199, 0, 'developer', 'developer_theme', '1', 0),
	(200, 0, 'developer', 'developer_sass', '1', 0),
	(471, 0, 'config', 'config_invoice_prefix', 'INV-2021-00', 0),
	(470, 0, 'config', 'config_account_id', '3', 0),
	(469, 0, 'config', 'config_login_attempts', '5', 0),
	(468, 0, 'config', 'config_customer_price', '0', 0),
	(467, 0, 'config', 'config_customer_group_display', '["1"]', 1),
	(465, 0, 'config', 'config_customer_search', '0', 0),
	(466, 0, 'config', 'config_customer_group_id', '1', 0),
	(464, 0, 'config', 'config_customer_activity', '0', 0),
	(463, 0, 'config', 'config_customer_online', '0', 0),
	(462, 0, 'config', 'config_tax_customer', 'shipping', 0),
	(461, 0, 'config', 'config_tax_default', 'shipping', 0),
	(460, 0, 'config', 'config_tax', '0', 0),
	(459, 0, 'config', 'config_voucher_max', '1000', 0),
	(458, 0, 'config', 'config_voucher_min', '1', 0),
	(457, 0, 'config', 'config_review_guest', '1', 0),
	(456, 0, 'config', 'config_review_status', '1', 0),
	(445, 0, 'config', 'config_comment', '', 0),
	(446, 0, 'config', 'config_country_id', '176', 0),
	(447, 0, 'config', 'config_zone_id', '', 0),
	(448, 0, 'config', 'config_language', 'ru-ru', 0),
	(449, 0, 'config', 'config_admin_language', 'ru-ru', 0),
	(450, 0, 'config', 'config_currency', 'RUB', 0),
	(451, 0, 'config', 'config_currency_auto', '1', 0),
	(452, 0, 'config', 'config_length_class_id', '1', 0),
	(453, 0, 'config', 'config_weight_class_id', '1', 0),
	(454, 0, 'config', 'config_product_count', '1', 0),
	(455, 0, 'config', 'config_limit_admin', '20', 0),
	(444, 0, 'config', 'config_open', '8:00 - 22:00 без выходных', 0),
	(443, 0, 'config', 'config_image', '', 0),
	(442, 0, 'config', 'config_fax', '', 0),
	(441, 0, 'config', 'config_telephone', '+7 915 510 23 32', 0),
	(439, 0, 'config', 'config_geocode', '', 0),
	(440, 0, 'config', 'config_email', 'admin@admin.ru', 0),
	(438, 0, 'config', 'config_address', 'г. Москва, ул. Можайская, д. 32 офис 314', 0),
	(437, 0, 'config', 'config_owner', 'Бобров Алексей Геннадьевич', 0),
	(436, 0, 'config', 'config_name', 'Интернет магазин localhost', 0),
	(435, 0, 'config', 'config_layout_id', '4', 0),
	(434, 0, 'config', 'config_theme', 'default', 0),
	(433, 0, 'config', 'config_meta_keyword', 'Интернет магазин localhost', 0),
	(432, 0, 'config', 'config_meta_description', 'Интернет магазин localhost', 0),
	(431, 0, 'config', 'config_meta_title', 'Интернет магазин localhost', 0),
	(335, 0, 'module_cookiepolicy', 'module_cookiepolicy_opacity', '0.8', 0),
	(336, 0, 'module_cookiepolicy', 'module_cookiepolicy_accept_text_colour', '#FFFFFF', 0),
	(337, 0, 'module_cookiepolicy', 'module_cookiepolicy_accept_text_hover', '#262626', 0),
	(338, 0, 'module_cookiepolicy', 'module_cookiepolicy_accept_button_colour', '#262626', 0),
	(339, 0, 'module_cookiepolicy', 'module_cookiepolicy_accept_button_hover', '#FFFFFF', 0),
	(340, 0, 'module_cookiepolicy', 'module_cookiepolicy_transparent_button', '0', 0),
	(341, 0, 'module_cookiepolicy', 'module_cookiepolicy_rounded_corners', '0', 0),
	(342, 0, 'module_cookiepolicy', 'module_cookiepolicy_accept_button_border', '#FFFFFF', 0),
	(343, 0, 'module_cookiepolicy', 'module_cookiepolicy_accept_button_border_hover', '#FFFFFF', 0),
	(344, 0, 'module_cookiepolicy', 'module_cookiepolicy_accept_button_icon', '', 0),
	(330, 0, 'module_cookiepolicy', 'module_cookiepolicy_text_colour', '#CBCBCB', 0),
	(331, 0, 'module_cookiepolicy', 'module_cookiepolicy_link_colour', '#71BE00', 0),
	(332, 0, 'module_cookiepolicy', 'module_cookiepolicy_link_hover', '#71BE00', 0),
	(333, 0, 'module_cookiepolicy', 'module_cookiepolicy_text_align', 'left', 0),
	(334, 0, 'module_cookiepolicy', 'module_cookiepolicy_background_colour', '#262626', 0),
	(326, 0, 'module_cookiepolicy', 'module_cookiepolicy_blank_page', '_blank', 0),
	(327, 0, 'module_cookiepolicy', 'module_cookiepolicy_cookietext_after', '{"text":{"ru-ru":" . \\u041a\\u043b\\u0438\\u043a\\u043d\\u0443\\u0432 \\u043d\\u0430 \\u00ab\\u041f\\u0440\\u0438\\u043d\\u044f\\u0442\\u044c\\u00bb, \\u0432\\u044b \\u0441\\u043e\\u0433\\u043b\\u0430\\u0448\\u0430\\u0435\\u0442\\u0435\\u0441\\u044c \\u043d\\u0430 \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0444\\u0430\\u0439\\u043b\\u043e\\u0432 cookie."}}', 1),
	(328, 0, 'module_cookiepolicy', 'module_cookiepolicy_buttontext', '{"text":{"ru-ru":"\\u041f\\u0440\\u0438\\u043d\\u044f\\u0442\\u044c"}}', 1),
	(329, 0, 'module_cookiepolicy', 'module_cookiepolicy_position', 'bottom', 0),
	(325, 0, 'module_cookiepolicy', 'module_cookiepolicy_urltext', '{"text":{"ru-ru":"\\u00ab\\u0418\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u043e\\u043d\\u043d\\u043e\\u043c \\u0443\\u0432\\u0435\\u0434\\u043e\\u043c\\u043b\\u0435\\u043d\\u0438\\u0438\\u00bb"}}', 1),
	(324, 0, 'module_cookiepolicy', 'module_cookiepolicy_url', 'https://wikipedia.org/wiki/Cookie', 0),
	(323, 0, 'module_cookiepolicy', 'module_cookiepolicy_infopage', '3', 0),
	(322, 0, 'module_cookiepolicy', 'module_cookiepolicy_infopage_on', '1', 0),
	(321, 0, 'module_cookiepolicy', 'module_cookiepolicy_cookietext', '{"text":{"ru-ru":"\\u041c\\u044b \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u0435\\u043c \\u0444\\u0430\\u0439\\u043b\\u044b cookie \\u0441 \\u0446\\u0435\\u043b\\u044c\\u044e \\u043e\\u043f\\u0442\\u0438\\u043c\\u0438\\u0437\\u0430\\u0446\\u0438\\u0438 \\u0440\\u0430\\u0431\\u043e\\u0442\\u044b \\u043d\\u0430\\u0448\\u0435\\u0433\\u043e \\u0432\\u0435\\u0431-\\u0441\\u0430\\u0439\\u0442\\u0430. \\u0411\\u043e\\u043b\\u0435\\u0435 \\u043f\\u043e\\u0434\\u0440\\u043e\\u0431\\u043d\\u0430\\u044f \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f \\u0441\\u043e\\u0434\\u0435\\u0440\\u0436\\u0438\\u0442\\u0441\\u044f \\u0432 \\u0434\\u043e\\u043a\\u0443\\u043c\\u0435\\u043d\\u0442\\u0435 "}}', 1),
	(320, 0, 'module_cookiepolicy', 'module_cookiepolicy_cookie_expires', '365', 0),
	(319, 0, 'module_cookiepolicy', 'module_cookiepolicy_status', '1', 0);
/*!40000 ALTER TABLE `oc_setting` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_shipping_courier
DROP TABLE IF EXISTS `oc_shipping_courier`;
CREATE TABLE IF NOT EXISTS `oc_shipping_courier` (
  `shipping_courier_id` int(11) NOT NULL,
  `shipping_courier_code` varchar(255) NOT NULL DEFAULT '',
  `shipping_courier_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`shipping_courier_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_shipping_courier: 6 rows
DELETE FROM `oc_shipping_courier`;
/*!40000 ALTER TABLE `oc_shipping_courier` DISABLE KEYS */;
INSERT INTO `oc_shipping_courier` (`shipping_courier_id`, `shipping_courier_code`, `shipping_courier_name`) VALUES
	(1, 'dhl', 'DHL'),
	(2, 'fedex', 'Fedex'),
	(3, 'ups', 'UPS'),
	(4, 'royal-mail', 'Royal Mail'),
	(5, 'usps', 'United States Postal Service'),
	(6, 'auspost', 'Australia Post');
/*!40000 ALTER TABLE `oc_shipping_courier` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_statistics
DROP TABLE IF EXISTS `oc_statistics`;
CREATE TABLE IF NOT EXISTS `oc_statistics` (
  `statistics_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `value` decimal(15,4) NOT NULL,
  PRIMARY KEY (`statistics_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_statistics: 7 rows
DELETE FROM `oc_statistics`;
/*!40000 ALTER TABLE `oc_statistics` DISABLE KEYS */;
INSERT INTO `oc_statistics` (`statistics_id`, `code`, `value`) VALUES
	(1, 'order_sale', 0.0000),
	(2, 'order_processing', 0.0000),
	(3, 'order_complete', 0.0000),
	(4, 'order_other', 0.0000),
	(5, 'returns', 0.0000),
	(6, 'product', 0.0000),
	(7, 'review', 0.0000);
/*!40000 ALTER TABLE `oc_statistics` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_stock_status
DROP TABLE IF EXISTS `oc_stock_status`;
CREATE TABLE IF NOT EXISTS `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_stock_status: 4 rows
DELETE FROM `oc_stock_status`;
/*!40000 ALTER TABLE `oc_stock_status` DISABLE KEYS */;
INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
	(7, 1, 'В наличии'),
	(8, 1, 'Предзаказ'),
	(5, 1, 'Нет в наличии'),
	(6, 1, 'Ожидание 2-3 дня');
/*!40000 ALTER TABLE `oc_stock_status` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_store
DROP TABLE IF EXISTS `oc_store`;
CREATE TABLE IF NOT EXISTS `oc_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_store: 0 rows
DELETE FROM `oc_store`;
/*!40000 ALTER TABLE `oc_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_store` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_tax_class
DROP TABLE IF EXISTS `oc_tax_class`;
CREATE TABLE IF NOT EXISTS `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_tax_class: 1 rows
DELETE FROM `oc_tax_class`;
/*!40000 ALTER TABLE `oc_tax_class` DISABLE KEYS */;
INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
	(9, 'Налоги', 'Облагаемые налогом', '2018-06-06 23:00:00', '2018-09-09 11:50:31');
/*!40000 ALTER TABLE `oc_tax_class` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_tax_rate
DROP TABLE IF EXISTS `oc_tax_rate`;
CREATE TABLE IF NOT EXISTS `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_tax_rate: 1 rows
DELETE FROM `oc_tax_rate`;
/*!40000 ALTER TABLE `oc_tax_rate` DISABLE KEYS */;
INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
	(87, 3, 'НДС', 18.0000, 'F', '2018-09-21 21:49:23', '2018-09-09 11:49:32');
/*!40000 ALTER TABLE `oc_tax_rate` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_tax_rate_to_customer_group
DROP TABLE IF EXISTS `oc_tax_rate_to_customer_group`;
CREATE TABLE IF NOT EXISTS `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_tax_rate_to_customer_group: 2 rows
DELETE FROM `oc_tax_rate_to_customer_group`;
/*!40000 ALTER TABLE `oc_tax_rate_to_customer_group` DISABLE KEYS */;
INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
	(86, 1),
	(87, 1);
/*!40000 ALTER TABLE `oc_tax_rate_to_customer_group` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_tax_rule
DROP TABLE IF EXISTS `oc_tax_rule`;
CREATE TABLE IF NOT EXISTS `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_tax_rule: 4 rows
DELETE FROM `oc_tax_rule`;
/*!40000 ALTER TABLE `oc_tax_rule` DISABLE KEYS */;
INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
	(121, 10, 86, 'payment', 1),
	(120, 10, 87, 'store', 0),
	(128, 9, 86, 'shipping', 1),
	(127, 9, 87, 'shipping', 2);
/*!40000 ALTER TABLE `oc_tax_rule` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_theme
DROP TABLE IF EXISTS `oc_theme`;
CREATE TABLE IF NOT EXISTS `oc_theme` (
  `theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` mediumtext NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`theme_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_theme: 0 rows
DELETE FROM `oc_theme`;
/*!40000 ALTER TABLE `oc_theme` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_theme` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_translation
DROP TABLE IF EXISTS `oc_translation`;
CREATE TABLE IF NOT EXISTS `oc_translation` (
  `translation_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`translation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_translation: 0 rows
DELETE FROM `oc_translation`;
/*!40000 ALTER TABLE `oc_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_translation` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_upload
DROP TABLE IF EXISTS `oc_upload`;
CREATE TABLE IF NOT EXISTS `oc_upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`upload_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_upload: 0 rows
DELETE FROM `oc_upload`;
/*!40000 ALTER TABLE `oc_upload` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_upload` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_user
DROP TABLE IF EXISTS `oc_user`;
CREATE TABLE IF NOT EXISTS `oc_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_user: 1 rows
DELETE FROM `oc_user`;
/*!40000 ALTER TABLE `oc_user` DISABLE KEYS */;
INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
	(1, 1, 'admin', 'f818a546ac318c960cda4d76fe1036e54af60b97', 'MoKpIEuke', 'John', 'Doe', 'admin@admin.ru', '', '', '127.0.0.1', 1, '2021-04-07 12:43:25');
/*!40000 ALTER TABLE `oc_user` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_user_group
DROP TABLE IF EXISTS `oc_user_group`;
CREATE TABLE IF NOT EXISTS `oc_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_user_group: 2 rows
DELETE FROM `oc_user_group`;
/*!40000 ALTER TABLE `oc_user_group` DISABLE KEYS */;
INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
	(1, 'Administrator', '{"access":["catalog\\/attribute","catalog\\/attribute_group","catalog\\/category","catalog\\/download","catalog\\/filter","catalog\\/information","catalog\\/manufacturer","catalog\\/option","catalog\\/product","catalog\\/recurring","catalog\\/review","common\\/column_left","common\\/developer","common\\/filemanager","common\\/profile","common\\/security","customer\\/custom_field","customer\\/customer","customer\\/customer_approval","customer\\/customer_group","design\\/banner","design\\/layout","design\\/theme","design\\/translation","design\\/seo_url","event\\/statistics","event\\/theme","extension\\/advertise\\/google","extension\\/analytics\\/google","extension\\/captcha\\/basic","extension\\/captcha\\/google","extension\\/dashboard\\/activity","extension\\/dashboard\\/chart","extension\\/dashboard\\/customer","extension\\/dashboard\\/map","extension\\/dashboard\\/online","extension\\/dashboard\\/order","extension\\/dashboard\\/recent","extension\\/dashboard\\/sale","extension\\/extension\\/advertise","extension\\/extension\\/analytics","extension\\/extension\\/captcha","extension\\/extension\\/dashboard","extension\\/extension\\/feed","extension\\/extension\\/fraud","extension\\/extension\\/menu","extension\\/extension\\/module","extension\\/extension\\/payment","extension\\/extension\\/report","extension\\/extension\\/shipping","extension\\/extension\\/theme","extension\\/extension\\/total","extension\\/feed\\/google_base","extension\\/feed\\/google_sitemap","extension\\/feed\\/openbaypro","extension\\/fraud\\/fraudlabspro","extension\\/fraud\\/ip","extension\\/fraud\\/maxmind","extension\\/marketing\\/remarketing","extension\\/module\\/account","extension\\/module\\/amazon_login","extension\\/module\\/amazon_pay","extension\\/module\\/banner","extension\\/module\\/bestseller","extension\\/module\\/carousel","extension\\/module\\/category","extension\\/module\\/divido_calculator","extension\\/module\\/ebay_listing","extension\\/module\\/featured","extension\\/module\\/filter","extension\\/module\\/google_hangouts","extension\\/module\\/html","extension\\/module\\/information","extension\\/module\\/klarna_checkout_module","extension\\/module\\/latest","extension\\/module\\/laybuy_layout","extension\\/module\\/pilibaba_button","extension\\/module\\/pp_button","extension\\/module\\/pp_login","extension\\/module\\/sagepay_direct_cards","extension\\/module\\/sagepay_server_cards","extension\\/module\\/slideshow","extension\\/module\\/special","extension\\/module\\/store","extension\\/openbay\\/amazon","extension\\/openbay\\/amazon_listing","extension\\/openbay\\/amazon_product","extension\\/openbay\\/amazonus","extension\\/openbay\\/amazonus_listing","extension\\/openbay\\/amazonus_product","extension\\/openbay\\/ebay","extension\\/openbay\\/ebay_profile","extension\\/openbay\\/ebay_template","extension\\/openbay\\/etsy","extension\\/openbay\\/etsy_product","extension\\/openbay\\/etsy_shipping","extension\\/openbay\\/etsy_shop","extension\\/openbay\\/fba","extension\\/payment\\/amazon_login_pay","extension\\/payment\\/authorizenet_aim","extension\\/payment\\/authorizenet_sim","extension\\/payment\\/bank_transfer","extension\\/payment\\/bluepay_hosted","extension\\/payment\\/bluepay_redirect","extension\\/payment\\/cardconnect","extension\\/payment\\/cardinity","extension\\/payment\\/cheque","extension\\/payment\\/cod","extension\\/payment\\/divido","extension\\/payment\\/eway","extension\\/payment\\/firstdata","extension\\/payment\\/firstdata_remote","extension\\/payment\\/free_checkout","extension\\/payment\\/g2apay","extension\\/payment\\/globalpay","extension\\/payment\\/globalpay_remote","extension\\/payment\\/klarna_account","extension\\/payment\\/klarna_checkout","extension\\/payment\\/klarna_invoice","extension\\/payment\\/laybuy","extension\\/payment\\/liqpay","extension\\/payment\\/nochex","extension\\/payment\\/paymate","extension\\/payment\\/paypoint","extension\\/payment\\/payza","extension\\/payment\\/perpetual_payments","extension\\/payment\\/pilibaba","extension\\/payment\\/pp_express","extension\\/payment\\/pp_payflow","extension\\/payment\\/pp_payflow_iframe","extension\\/payment\\/pp_pro","extension\\/payment\\/pp_pro_iframe","extension\\/payment\\/pp_standard","extension\\/payment\\/realex","extension\\/payment\\/realex_remote","extension\\/payment\\/sagepay_direct","extension\\/payment\\/sagepay_server","extension\\/payment\\/sagepay_us","extension\\/payment\\/securetrading_pp","extension\\/payment\\/securetrading_ws","extension\\/payment\\/skrill","extension\\/payment\\/twocheckout","extension\\/payment\\/web_payment_software","extension\\/payment\\/worldpay","extension\\/module\\/pp_braintree_button","extension\\/payment\\/pp_braintree","extension\\/report\\/customer_activity","extension\\/report\\/customer_order","extension\\/report\\/customer_reward","extension\\/report\\/customer_search","extension\\/report\\/customer_transaction","extension\\/report\\/marketing","extension\\/report\\/product_purchased","extension\\/report\\/product_viewed","extension\\/report\\/sale_coupon","extension\\/report\\/sale_order","extension\\/report\\/sale_return","extension\\/report\\/sale_shipping","extension\\/report\\/sale_tax","extension\\/shipping\\/auspost","extension\\/shipping\\/ec_ship","extension\\/shipping\\/fedex","extension\\/shipping\\/flat","extension\\/shipping\\/free","extension\\/shipping\\/item","extension\\/shipping\\/parcelforce_48","extension\\/shipping\\/pickup","extension\\/shipping\\/royal_mail","extension\\/shipping\\/ups","extension\\/shipping\\/usps","extension\\/shipping\\/weight","extension\\/theme\\/default","extension\\/total\\/coupon","extension\\/total\\/credit","extension\\/total\\/handling","extension\\/total\\/klarna_fee","extension\\/total\\/low_order_fee","extension\\/total\\/reward","extension\\/total\\/shipping","extension\\/total\\/sub_total","extension\\/total\\/tax","extension\\/total\\/total","extension\\/total\\/voucher","localisation\\/country","localisation\\/currency","localisation\\/geo_zone","localisation\\/language","localisation\\/length_class","localisation\\/location","localisation\\/order_status","localisation\\/return_action","localisation\\/return_reason","localisation\\/return_status","localisation\\/stock_status","localisation\\/tax_class","localisation\\/tax_rate","localisation\\/weight_class","localisation\\/zone","mail\\/affiliate","mail\\/customer","mail\\/forgotten","mail\\/return","mail\\/reward","mail\\/transaction","marketing\\/contact","marketing\\/coupon","marketing\\/marketing","marketplace\\/api","marketplace\\/event","marketplace\\/extension","marketplace\\/install","marketplace\\/installer","marketplace\\/marketplace","marketplace\\/modification","marketplace\\/openbay","report\\/online","report\\/report","report\\/statistics","sale\\/order","sale\\/recurring","sale\\/return","sale\\/voucher","sale\\/voucher_theme","setting\\/setting","setting\\/store","startup\\/error","startup\\/event","startup\\/login","startup\\/permission","startup\\/router","startup\\/sass","startup\\/startup","tool\\/backup","tool\\/log","tool\\/upload","user\\/api","user\\/user","user\\/user_permission","extension\\/module\\/agree_cookie","extension\\/module\\/cookiepolicy","extension\\/module\\/cookiepolicy"],"modify":["catalog\\/attribute","catalog\\/attribute_group","catalog\\/category","catalog\\/download","catalog\\/filter","catalog\\/information","catalog\\/manufacturer","catalog\\/option","catalog\\/product","catalog\\/recurring","catalog\\/review","common\\/column_left","common\\/developer","common\\/filemanager","common\\/profile","common\\/security","customer\\/custom_field","customer\\/customer","customer\\/customer_approval","customer\\/customer_group","design\\/banner","design\\/layout","design\\/theme","design\\/translation","design\\/seo_url","event\\/statistics","event\\/theme","extension\\/advertise\\/google","extension\\/analytics\\/google","extension\\/captcha\\/basic","extension\\/captcha\\/google","extension\\/dashboard\\/activity","extension\\/dashboard\\/chart","extension\\/dashboard\\/customer","extension\\/dashboard\\/map","extension\\/dashboard\\/online","extension\\/dashboard\\/order","extension\\/dashboard\\/recent","extension\\/dashboard\\/sale","extension\\/extension\\/advertise","extension\\/extension\\/analytics","extension\\/extension\\/captcha","extension\\/extension\\/dashboard","extension\\/extension\\/feed","extension\\/extension\\/fraud","extension\\/extension\\/menu","extension\\/extension\\/module","extension\\/extension\\/payment","extension\\/extension\\/report","extension\\/extension\\/shipping","extension\\/extension\\/theme","extension\\/extension\\/total","extension\\/feed\\/google_base","extension\\/feed\\/google_sitemap","extension\\/feed\\/openbaypro","extension\\/fraud\\/fraudlabspro","extension\\/fraud\\/ip","extension\\/fraud\\/maxmind","extension\\/marketing\\/remarketing","extension\\/module\\/account","extension\\/module\\/amazon_login","extension\\/module\\/amazon_pay","extension\\/module\\/banner","extension\\/module\\/bestseller","extension\\/module\\/carousel","extension\\/module\\/category","extension\\/module\\/divido_calculator","extension\\/module\\/ebay_listing","extension\\/module\\/featured","extension\\/module\\/filter","extension\\/module\\/google_hangouts","extension\\/module\\/html","extension\\/module\\/information","extension\\/module\\/klarna_checkout_module","extension\\/module\\/latest","extension\\/module\\/laybuy_layout","extension\\/module\\/pilibaba_button","extension\\/module\\/pp_button","extension\\/module\\/pp_login","extension\\/module\\/sagepay_direct_cards","extension\\/module\\/sagepay_server_cards","extension\\/module\\/slideshow","extension\\/module\\/special","extension\\/module\\/store","extension\\/openbay\\/amazon","extension\\/openbay\\/amazon_listing","extension\\/openbay\\/amazon_product","extension\\/openbay\\/amazonus","extension\\/openbay\\/amazonus_listing","extension\\/openbay\\/amazonus_product","extension\\/openbay\\/ebay","extension\\/openbay\\/ebay_profile","extension\\/openbay\\/ebay_template","extension\\/openbay\\/etsy","extension\\/openbay\\/etsy_product","extension\\/openbay\\/etsy_shipping","extension\\/openbay\\/etsy_shop","extension\\/openbay\\/fba","extension\\/payment\\/amazon_login_pay","extension\\/payment\\/authorizenet_aim","extension\\/payment\\/authorizenet_sim","extension\\/payment\\/bank_transfer","extension\\/payment\\/bluepay_hosted","extension\\/payment\\/bluepay_redirect","extension\\/payment\\/cardconnect","extension\\/payment\\/cardinity","extension\\/payment\\/cheque","extension\\/payment\\/cod","extension\\/payment\\/divido","extension\\/payment\\/eway","extension\\/payment\\/firstdata","extension\\/payment\\/firstdata_remote","extension\\/payment\\/free_checkout","extension\\/payment\\/g2apay","extension\\/payment\\/globalpay","extension\\/payment\\/globalpay_remote","extension\\/payment\\/klarna_account","extension\\/payment\\/klarna_checkout","extension\\/payment\\/klarna_invoice","extension\\/payment\\/laybuy","extension\\/payment\\/liqpay","extension\\/payment\\/nochex","extension\\/payment\\/paymate","extension\\/payment\\/paypoint","extension\\/payment\\/payza","extension\\/payment\\/perpetual_payments","extension\\/payment\\/pilibaba","extension\\/payment\\/pp_express","extension\\/payment\\/pp_payflow","extension\\/payment\\/pp_payflow_iframe","extension\\/payment\\/pp_pro","extension\\/payment\\/pp_pro_iframe","extension\\/payment\\/pp_standard","extension\\/payment\\/realex","extension\\/payment\\/realex_remote","extension\\/payment\\/sagepay_direct","extension\\/payment\\/sagepay_server","extension\\/payment\\/sagepay_us","extension\\/payment\\/securetrading_pp","extension\\/payment\\/securetrading_ws","extension\\/payment\\/skrill","extension\\/payment\\/twocheckout","extension\\/payment\\/web_payment_software","extension\\/payment\\/worldpay","extension\\/module\\/pp_braintree_button","extension\\/payment\\/pp_braintree","extension\\/report\\/customer_activity","extension\\/report\\/customer_order","extension\\/report\\/customer_reward","extension\\/report\\/customer_search","extension\\/report\\/customer_transaction","extension\\/report\\/marketing","extension\\/report\\/product_purchased","extension\\/report\\/product_viewed","extension\\/report\\/sale_coupon","extension\\/report\\/sale_order","extension\\/report\\/sale_return","extension\\/report\\/sale_shipping","extension\\/report\\/sale_tax","extension\\/shipping\\/auspost","extension\\/shipping\\/ec_ship","extension\\/shipping\\/fedex","extension\\/shipping\\/flat","extension\\/shipping\\/free","extension\\/shipping\\/item","extension\\/shipping\\/parcelforce_48","extension\\/shipping\\/pickup","extension\\/shipping\\/royal_mail","extension\\/shipping\\/ups","extension\\/shipping\\/usps","extension\\/shipping\\/weight","extension\\/theme\\/default","extension\\/total\\/coupon","extension\\/total\\/credit","extension\\/total\\/handling","extension\\/total\\/klarna_fee","extension\\/total\\/low_order_fee","extension\\/total\\/reward","extension\\/total\\/shipping","extension\\/total\\/sub_total","extension\\/total\\/tax","extension\\/total\\/total","extension\\/total\\/voucher","localisation\\/country","localisation\\/currency","localisation\\/geo_zone","localisation\\/language","localisation\\/length_class","localisation\\/location","localisation\\/order_status","localisation\\/return_action","localisation\\/return_reason","localisation\\/return_status","localisation\\/stock_status","localisation\\/tax_class","localisation\\/tax_rate","localisation\\/weight_class","localisation\\/zone","mail\\/affiliate","mail\\/customer","mail\\/forgotten","mail\\/return","mail\\/reward","mail\\/transaction","marketing\\/contact","marketing\\/coupon","marketing\\/marketing","marketplace\\/event","marketplace\\/api","marketplace\\/extension","marketplace\\/install","marketplace\\/installer","marketplace\\/marketplace","marketplace\\/modification","marketplace\\/openbay","report\\/online","report\\/report","report\\/statistics","sale\\/order","sale\\/recurring","sale\\/return","sale\\/voucher","sale\\/voucher_theme","setting\\/setting","setting\\/store","startup\\/error","startup\\/event","startup\\/login","startup\\/permission","startup\\/router","startup\\/sass","startup\\/startup","tool\\/backup","tool\\/log","tool\\/upload","user\\/api","user\\/user","user\\/user_permission","extension\\/module\\/agree_cookie","extension\\/module\\/cookiepolicy","extension\\/module\\/cookiepolicy"]}'),
	(10, 'Demonstration', '');
/*!40000 ALTER TABLE `oc_user_group` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_voucher
DROP TABLE IF EXISTS `oc_voucher`;
CREATE TABLE IF NOT EXISTS `oc_voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_voucher: 0 rows
DELETE FROM `oc_voucher`;
/*!40000 ALTER TABLE `oc_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_voucher` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_voucher_history
DROP TABLE IF EXISTS `oc_voucher_history`;
CREATE TABLE IF NOT EXISTS `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_voucher_history: 0 rows
DELETE FROM `oc_voucher_history`;
/*!40000 ALTER TABLE `oc_voucher_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_voucher_history` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_voucher_theme
DROP TABLE IF EXISTS `oc_voucher_theme`;
CREATE TABLE IF NOT EXISTS `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_voucher_theme: 3 rows
DELETE FROM `oc_voucher_theme`;
/*!40000 ALTER TABLE `oc_voucher_theme` DISABLE KEYS */;
INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
	(8, 'catalog/demo/canon_eos_5d_2.jpg'),
	(7, 'catalog/demo/gift-voucher-birthday.jpg'),
	(6, 'catalog/demo/apple_logo.jpg');
/*!40000 ALTER TABLE `oc_voucher_theme` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_voucher_theme_description
DROP TABLE IF EXISTS `oc_voucher_theme_description`;
CREATE TABLE IF NOT EXISTS `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_voucher_theme_description: 3 rows
DELETE FROM `oc_voucher_theme_description`;
/*!40000 ALTER TABLE `oc_voucher_theme_description` DISABLE KEYS */;
INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
	(6, 1, 'Новый год'),
	(7, 1, 'День рождения'),
	(8, 1, 'Другое');
/*!40000 ALTER TABLE `oc_voucher_theme_description` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_weight_class
DROP TABLE IF EXISTS `oc_weight_class`;
CREATE TABLE IF NOT EXISTS `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_weight_class: 4 rows
DELETE FROM `oc_weight_class`;
/*!40000 ALTER TABLE `oc_weight_class` DISABLE KEYS */;
INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
	(1, 1.00000000),
	(2, 1000.00000000),
	(5, 2.20460000),
	(6, 35.27400000);
/*!40000 ALTER TABLE `oc_weight_class` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_weight_class_description
DROP TABLE IF EXISTS `oc_weight_class_description`;
CREATE TABLE IF NOT EXISTS `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_weight_class_description: 2 rows
DELETE FROM `oc_weight_class_description`;
/*!40000 ALTER TABLE `oc_weight_class_description` DISABLE KEYS */;
INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
	(1, 1, 'Килограмм', 'кг'),
	(2, 1, 'Грамм', 'г');
/*!40000 ALTER TABLE `oc_weight_class_description` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_zone
DROP TABLE IF EXISTS `oc_zone`;
CREATE TABLE IF NOT EXISTS `oc_zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=170 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_zone: 169 rows
DELETE FROM `oc_zone`;
/*!40000 ALTER TABLE `oc_zone` DISABLE KEYS */;
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
	(1, 20, 'Брест', 'BR', 1),
	(2, 20, 'Гомель', 'HO', 1),
	(3, 20, 'Минск', 'HM', 1),
	(4, 20, 'Гродно', 'HR', 1),
	(5, 20, 'Могилев', 'MA', 1),
	(6, 20, 'Минская область', 'MI', 1),
	(7, 20, 'Витебск', 'VI', 1),
	(8, 80, 'Abkhazia', 'AB', 1),
	(9, 80, 'Ajaria', 'AJ', 1),
	(10, 80, 'Tbilisi', 'TB', 1),
	(11, 80, 'Guria', 'GU', 1),
	(12, 80, 'Imereti', 'IM', 1),
	(13, 80, 'Kakheti', 'KA', 1),
	(14, 80, 'Kvemo Kartli', 'KK', 1),
	(15, 80, 'Mtskheta-Mtianeti', 'MM', 1),
	(16, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
	(17, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
	(18, 80, 'Samtskhe-Javakheti', 'SJ', 1),
	(19, 80, 'Shida Kartli', 'SK', 1),
	(20, 109, 'Алматинская область', 'AL', 1),
	(21, 109, 'Алматы - город республ-го значения', 'AC', 1),
	(22, 109, 'Акмолинская область', 'AM', 1),
	(23, 109, 'Актюбинская область', 'AQ', 1),
	(24, 109, 'Астана - город республ-го значения', 'AS', 1),
	(25, 109, 'Атырауская область', 'AT', 1),
	(26, 109, 'Западно-Казахстанская область', 'BA', 1),
	(27, 109, 'Байконур - город республ-го значения', 'BY', 1),
	(28, 109, 'Мангистауская область', 'MA', 1),
	(29, 109, 'Южно-Казахстанская область', 'ON', 1),
	(30, 109, 'Павлодарская область', 'PA', 1),
	(31, 109, 'Карагандинская область', 'QA', 1),
	(32, 109, 'Костанайская область', 'QO', 1),
	(33, 109, 'Кызылординская область', 'QY', 1),
	(34, 109, 'Восточно-Казахстанская область', 'SH', 1),
	(35, 109, 'Северо-Казахстанская область', 'SO', 1),
	(36, 109, 'Жамбылская область', 'ZH', 1),
	(37, 115, 'Bishkek', 'GB', 1),
	(38, 115, 'Batken', 'B', 1),
	(39, 115, 'Chu', 'C', 1),
	(40, 115, 'Jalal-Abad', 'J', 1),
	(41, 115, 'Naryn', 'N', 1),
	(42, 115, 'Osh', 'O', 1),
	(43, 115, 'Talas', 'T', 1),
	(44, 115, 'Ysyk-Kol', 'Y', 1),
	(45, 176, 'Республика Хакасия', 'KK', 1),
	(46, 176, 'Московская область', 'MOS', 1),
	(47, 176, 'Чукотский АО', 'CHU', 1),
	(48, 176, 'Архангельская область', 'ARK', 1),
	(49, 176, 'Астраханская область', 'AST', 1),
	(50, 176, 'Алтайский край', 'ALT', 1),
	(51, 176, 'Белгородская область', 'BEL', 1),
	(52, 176, 'Еврейская АО', 'YEV', 1),
	(53, 176, 'Амурская область', 'AMU', 1),
	(54, 176, 'Брянская область', 'BRY', 1),
	(55, 176, 'Чувашская Республика', 'CU', 1),
	(56, 176, 'Челябинская область', 'CHE', 1),
	(57, 176, 'Карачаево-Черкесия', 'KC', 1),
	(58, 176, 'Забайкальский край', 'ZAB', 1),
	(59, 176, 'Ленинградская область', 'LEN', 1),
	(60, 176, 'Республика Калмыкия', 'KL', 1),
	(61, 176, 'Сахалинская область', 'SAK', 1),
	(62, 176, 'Республика Алтай', 'AL', 1),
	(63, 176, 'Чеченская Республика', 'CE', 1),
	(64, 176, 'Иркутская область', 'IRK', 1),
	(65, 176, 'Ивановская область', 'IVA', 1),
	(66, 176, 'Удмуртская Республика', 'UD', 1),
	(67, 176, 'Калининградская область', 'KGD', 1),
	(68, 176, 'Калужская область', 'KLU', 1),
	(69, 176, 'Республика Татарстан', 'TA', 1),
	(70, 176, 'Кемеровская область', 'KEM', 1),
	(71, 176, 'Хабаровский край', 'KHA', 1),
	(72, 176, 'Ханты-Мансийский АО - Югра', 'KHM', 1),
	(73, 176, 'Костромская область', 'KOS', 1),
	(74, 176, 'Краснодарский край', 'KDA', 1),
	(75, 176, 'Красноярский край', 'KYA', 1),
	(76, 176, 'Курганская область', 'KGN', 1),
	(77, 176, 'Курская область', 'KRS', 1),
	(78, 176, 'Республика Тыва', 'TY', 1),
	(79, 176, 'Липецкая область', 'LIP', 1),
	(80, 176, 'Магаданская область', 'MAG', 1),
	(81, 176, 'Республика Дагестан', 'DA', 1),
	(82, 176, 'Республика Адыгея', 'AD', 1),
	(83, 176, 'Москва', 'MOW', 1),
	(84, 176, 'Мурманская область', 'MUR', 1),
	(85, 176, 'Республика Кабардино-Балкария', 'KB', 1),
	(86, 176, 'Ненецкий АО', 'NEN', 1),
	(87, 176, 'Республика Ингушетия', 'IN', 1),
	(88, 176, 'Нижегородская область', 'NIZ', 1),
	(89, 176, 'Новгородская область', 'NGR', 1),
	(90, 176, 'Новосибирская область', 'NVS', 1),
	(91, 176, 'Омская область', 'OMS', 1),
	(92, 176, 'Орловская область', 'ORL', 1),
	(93, 176, 'Оренбургская область', 'ORE', 1),
	(94, 176, 'Пензенская область', 'PNZ', 1),
	(95, 176, 'Пермский край', 'PER', 1),
	(96, 176, 'Камчатский край', 'KAM', 1),
	(97, 176, 'Республика Карелия', 'KR', 1),
	(98, 176, 'Псковская область', 'PSK', 1),
	(99, 176, 'Ростовская область', 'ROS', 1),
	(100, 176, 'Рязанская область', 'RYA', 1),
	(101, 176, 'Ямало-Ненецкий АО', 'YAN', 1),
	(102, 176, 'Самарская область', 'SAM', 1),
	(103, 176, 'Республика Мордовия', 'MO', 1),
	(104, 176, 'Саратовская область', 'SAR', 1),
	(105, 176, 'Смоленская область', 'SMO', 1),
	(106, 176, 'Санкт-Петербург', 'SPE', 1),
	(107, 176, 'Ставропольский край', 'STA', 1),
	(108, 176, 'Республика Коми', 'KO', 1),
	(109, 176, 'Тамбовская область', 'TAM', 1),
	(110, 176, 'Томская область', 'TOM', 1),
	(111, 176, 'Тульская область', 'TUL', 1),
	(112, 176, 'Тверская область', 'TVE', 1),
	(113, 176, 'Тюменская область', 'TYU', 1),
	(114, 176, 'Республика Башкортостан', 'BA', 1),
	(115, 176, 'Ульяновская область', 'ULY', 1),
	(116, 176, 'Республика Бурятия', 'BU', 1),
	(117, 176, 'Республика Северная Осетия', 'SE', 1),
	(118, 176, 'Владимирская область', 'VLA', 1),
	(119, 176, 'Приморский край', 'PRI', 1),
	(120, 176, 'Волгоградская область', 'VGG', 1),
	(121, 176, 'Вологодская область', 'VLG', 1),
	(122, 176, 'Воронежская область', 'VOR', 1),
	(123, 176, 'Кировская область', 'KIR', 1),
	(124, 176, 'Республика Саха', 'SA', 1),
	(125, 176, 'Ярославская область', 'YAR', 1),
	(126, 176, 'Свердловская область', 'SVE', 1),
	(127, 176, 'Республика Марий Эл', 'ME', 1),
	(128, 176, 'Республика Крым', 'CR', 1),
	(129, 220, 'Черкассы', 'CK', 1),
	(130, 220, 'Чернигов', 'CH', 1),
	(131, 220, 'Черновцы', 'CV', 1),
	(132, 220, 'Днепропетровск', 'DN', 1),
	(133, 220, 'Донецк', 'DO', 1),
	(134, 220, 'Ивано-Франковск', 'IV', 1),
	(135, 220, 'Харьков', 'KH', 1),
	(136, 220, 'Хмельницкий', 'KM', 1),
	(137, 220, 'Кировоград', 'KR', 1),
	(138, 220, 'Киевская область', 'KV', 1),
	(139, 220, 'Киев', 'KY', 1),
	(140, 220, 'Луганск', 'LU', 1),
	(141, 220, 'Львов', 'LV', 1),
	(142, 220, 'Николаев', 'MY', 1),
	(143, 220, 'Одесса', 'OD', 1),
	(144, 220, 'Полтава', 'PO', 1),
	(145, 220, 'Ровно', 'RI', 1),
	(146, 176, 'Севастополь', 'SEV', 1),
	(147, 220, 'Сумы', 'SU', 1),
	(148, 220, 'Тернополь', 'TE', 1),
	(149, 220, 'Винница', 'VI', 1),
	(150, 220, 'Луцк', 'VO', 1),
	(151, 220, 'Ужгород', 'ZK', 1),
	(152, 220, 'Запорожье', 'ZA', 1),
	(153, 220, 'Житомир', 'ZH', 1),
	(154, 220, 'Херсон', 'KE', 1),
	(155, 226, 'Andijon', 'AN', 1),
	(156, 226, 'Buxoro', 'BU', 1),
	(157, 226, 'Farg\'ona', 'FA', 1),
	(158, 226, 'Jizzax', 'JI', 1),
	(159, 226, 'Namangan', 'NG', 1),
	(160, 226, 'Navoiy', 'NW', 1),
	(161, 226, 'Qashqadaryo', 'QA', 1),
	(162, 226, 'Qoraqalpog\'iston Republikasi', 'QR', 1),
	(163, 226, 'Samarqand', 'SA', 1),
	(164, 226, 'Sirdaryo', 'SI', 1),
	(165, 226, 'Surxondaryo', 'SU', 1),
	(166, 226, 'Toshkent City', 'TK', 1),
	(167, 226, 'Toshkent Region', 'TO', 1),
	(168, 226, 'Xorazm', 'XO', 1),
	(169, 176, 'Байконур - город республ-го значения', 'BY', 1);
/*!40000 ALTER TABLE `oc_zone` ENABLE KEYS */;

-- Дамп структуры для таблица shop.oc_zone_to_geo_zone
DROP TABLE IF EXISTS `oc_zone_to_geo_zone`;
CREATE TABLE IF NOT EXISTS `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы shop.oc_zone_to_geo_zone: 1 rows
DELETE FROM `oc_zone_to_geo_zone`;
/*!40000 ALTER TABLE `oc_zone_to_geo_zone` DISABLE KEYS */;
INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
	(1, 176, 0, 3, '2018-09-09 11:48:13', '0000-00-00 00:00:00');
/*!40000 ALTER TABLE `oc_zone_to_geo_zone` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
