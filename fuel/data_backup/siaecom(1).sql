-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 27, 2014 at 11:21 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `siaecom`
--
-- CREATE DATABASE IF NOT EXISTS `siaecom` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
-- USE `siaecom`;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) DEFAULT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Note: This is the default CodeIgniter session table.';

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('1a583bce25da880167ea76195a1244db', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:27.0) Gecko/20100101 Firefox/27.0', 1393499634, 'a:3:{s:9:"user_data";s:0:"";s:13:"cart_contents";a:3:{s:32:"d61a4210f5d19feefc738a0adb527039";a:7:{s:5:"rowid";s:32:"d61a4210f5d19feefc738a0adb527039";s:2:"id";i:1;s:3:"qty";s:2:"11";s:5:"price";s:3:"243";s:4:"name";s:9:"Item name";s:7:"options";a:3:{s:4:"Type";s:5:"Asian";s:5:"Color";s:5:"Color";s:8:"products";a:21:{s:2:"id";s:1:"1";s:4:"slug";s:9:"item-name";s:9:"item_name";s:9:"Item name";s:21:"product_categories_id";s:1:"7";s:7:"fabrics";s:7:"Fabrics";s:6:"weight";s:6:"Weight";s:7:"quality";s:3:"ewr";s:8:"standard";s:3:"rew";s:12:"descriptions";s:46:"<p>971519_597301576960553_1902425528_n.jpg</p>";s:3:"qty";s:3:"ewr";s:5:"style";s:3:"ewr";s:9:"is_active";s:1:"1";s:10:"created_at";s:19:"2014-01-09 23:05:25";s:10:"updated_at";s:19:"2014-02-26 01:25:07";s:10:"created_by";s:1:"1";s:10:"updated_by";s:1:"1";s:15:"products_images";a:4:{i:0;a:7:{s:2:"id";s:1:"8";s:11:"products_id";s:1:"1";s:10:"item_image";s:11:"logo11w.png";s:10:"created_at";s:19:"2014-02-26 01:25:07";s:10:"created_by";s:1:"1";s:10:"updated_at";s:19:"2014-02-26 01:25:07";s:10:"updated_by";s:1:"1";}i:1;a:7:{s:2:"id";s:1:"9";s:11:"products_id";s:1:"1";s:10:"item_image";s:17:"about_payment.jpg";s:10:"created_at";s:19:"2014-02-26 01:25:07";s:10:"created_by";s:1:"1";s:10:"updated_at";s:19:"2014-02-26 01:25:07";s:10:"updated_by";s:1:"1";}i:2;a:7:{s:2:"id";s:2:"10";s:11:"products_id";s:1:"1";s:10:"item_image";s:11:"color_2.jpg";s:10:"created_at";s:19:"2014-02-26 01:25:07";s:10:"created_by";s:1:"1";s:10:"updated_at";s:19:"2014-02-26 01:25:07";s:10:"updated_by";s:1:"1";}i:3;a:7:{s:2:"id";s:2:"11";s:11:"products_id";s:1:"1";s:10:"item_image";s:11:"color_3.jpg";s:10:"created_at";s:19:"2014-02-26 01:25:07";s:10:"created_by";s:1:"1";s:10:"updated_at";s:19:"2014-02-26 01:25:07";s:10:"updated_by";s:1:"1";}}s:14:"products_color";a:0:{}s:5:"types";a:4:{i:0;a:2:{s:4:"name";s:5:"Asian";s:17:"measurement_table";a:3:{i:0;a:2:{s:6:"Length";a:5:{i:0;s:2:"12";i:1;s:3:"234";i:2;s:3:"234";i:3;s:3:"234";i:4;s:3:"324";}s:4:"name";s:6:"Length";}i:1;a:2:{s:5:"Chest";a:5:{i:0;s:3:"324";i:1;s:3:"324";i:2;s:4:"3243";i:3;s:3:"324";i:4;s:4:"3243";}s:4:"name";s:5:"Chest";}i:2;a:2:{s:6:"Sleeve";a:5:{i:0;s:3:"234";i:1;s:4:"4324";i:2;s:3:"324";i:3;s:3:"324";i:4;s:4:"2432";}s:4:"name";s:6:"Sleeve";}}}i:5;a:2:{s:4:"name";s:6:"Europe";s:17:"measurement_table";a:3:{i:0;a:2:{s:6:"Length";a:6:{i:0;s:3:"243";i:1;s:3:"324";i:2;s:3:"324";i:3;s:3:"343";i:4;s:3:"324";i:5;s:5:"32432";}s:4:"name";s:6:"Length";}i:1;a:2:{s:5:"Chest";a:6:{i:0;s:3:"324";i:1;s:5:"32432";i:2;s:5:"32432";i:3;s:4:"2432";i:4;s:3:"324";i:5;s:4:"4324";}s:4:"name";s:5:"Chest";}i:2;a:2:{s:6:"Sleeve";a:6:{i:0;s:3:"432";i:1;s:4:"4324";i:2;s:3:"432";i:3;s:3:"432";i:4;s:4:"3243";i:5;s:5:"32432";}s:4:"name";s:6:"Sleeve";}}}i:11;a:2:{s:4:"name";s:10:"American B";s:17:"measurement_table";a:3:{i:0;a:2:{s:6:"Length";a:6:{i:0;s:2:"34";i:1;s:2:"32";i:2;s:6:"324324";i:3;s:5:"34324";i:4;s:5:"32432";i:5;s:3:"324";}s:4:"name";s:6:"Length";}i:1;a:2:{s:5:"Chest";a:6:{i:0;s:4:"3243";i:1;s:4:"4324";i:2;s:3:"324";i:3;s:5:"32432";i:4;s:4:"4324";i:5;s:5:"32432";}s:4:"name";s:5:"Chest";}i:2;a:2:{s:6:"Sleeve";a:6:{i:0;s:4:"2432";i:1;s:5:"43243";i:2;s:5:"32432";i:3;s:4:"4324";i:4;s:5:"32432";i:5;s:4:"4324";}s:4:"name";s:6:"Sleeve";}}}i:17;a:2:{s:4:"name";s:10:"American R";s:17:"measurement_table";a:3:{i:0;a:2:{s:6:"Length";a:2:{i:0;s:5:"23432";i:1;s:5:"32432";}s:4:"name";s:6:"Length";}i:1;a:2:{s:5:"Chest";a:2:{i:0;s:3:"432";i:1;s:3:"454";}s:4:"name";s:5:"Chest";}i:2;a:2:{s:6:"Sleeve";a:2:{i:0;s:3:"324";i:1;s:4:"3543";}s:4:"name";s:6:"Sleeve";}}}}s:5:"sizes";a:6:{i:0;s:1:"S";i:1;s:1:"L";i:2;s:1:"M";i:3;s:2:"XL";i:4;s:3:"XXL";i:10;s:3:"3XL";}s:14:"products_price";a:4:{s:5:"Asian";a:2:{s:5:"price";s:3:"243";s:11:"black_price";s:5:"24.00";}s:6:"Europe";a:2:{s:5:"price";s:3:"432";s:11:"black_price";s:7:"3424.00";}s:10:"American B";a:2:{s:5:"price";s:5:"32432";s:11:"black_price";s:6:"434.00";}s:10:"American R";a:2:{s:5:"price";s:4:"5435";s:11:"black_price";s:6:"545.00";}}}}s:8:"subtotal";i:2673;}s:11:"total_items";i:11;s:10:"cart_total";i:2673;}s:17:"userdata_contents";a:10:{s:10:"first_name";s:10:"Md. Sourav";s:9:"last_name";s:9:"Last name";s:7:"company";s:7:"Company";s:7:"street1";s:7:"Address";s:7:"street2";s:9:"Address 2";s:4:"city";s:4:"City";s:5:"state";s:5:"State";s:10:"postalcode";s:6:"423432";s:5:"phone";s:15:"0039 3495452377";s:5:"email";s:19:"mou_cse47@yahoo.com";}}');

-- --------------------------------------------------------

--
-- Table structure for table `fuel_archives`
--

CREATE TABLE IF NOT EXISTS `fuel_archives` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ref_id` int(10) unsigned NOT NULL,
  `table_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `version` smallint(5) unsigned NOT NULL,
  `version_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `archived_user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=123 ;

--
-- Dumping data for table `fuel_archives`
--

INSERT INTO `fuel_archives` (`id`, `ref_id`, `table_name`, `data`, `version`, `version_timestamp`, `archived_user_id`) VALUES
(1, 1, 'fuel_pages', '{"id":1,"location":"home","layout":"none","published":"yes","cache":"yes","date_added":"2014-01-08 05:17:08","last_modified":"2014-01-08 05:17:08","last_modified_by":"","variables":[{"id":"1","page_id":"1","name":"body","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"none","location":"home","page_published":"yes"}]}', 1, '2014-01-08 13:17:08', 1),
(2, 1, 'fuel_pages', '{"id":"1","location":"home","layout":"SIATEX","published":"yes","cache":"yes","date_added":"2014-01-08 05:17:08","last_modified":"2014-01-08 05:34:50","last_modified_by":"1","variables":[{"id":"6","page_id":"1","name":"body","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX","location":"home","page_published":"yes"},{"id":"7","page_id":"1","name":"body_class","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX","location":"home","page_published":"yes"},{"id":"5","page_id":"1","name":"heading","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX","location":"home","page_published":"yes"},{"id":"3","page_id":"1","name":"meta_description","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX","location":"home","page_published":"yes"},{"id":"4","page_id":"1","name":"meta_keywords","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX","location":"home","page_published":"yes"},{"id":"2","page_id":"1","name":"page_title","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX","location":"home","page_published":"yes"}]}', 2, '2014-01-08 13:34:50', 1),
(3, 1, 'products_categories', '{"id":1,"name":"T-shirt","is_active":"1","created_at":"2014-01-08 22:33:48","updated_at":"2014-01-08 22:33:48","created_by":"1","updated_by":"1"}', 1, '2014-01-09 06:33:48', 1),
(4, 2, 'products_categories', '{"id":2,"name":"Polo T-Shirt","is_active":"1","created_at":"2014-01-08 22:33:58","updated_at":"2014-01-08 22:33:58","created_by":"1","updated_by":"1"}', 1, '2014-01-09 06:33:58', 1),
(5, 3, 'products_categories', '{"id":3,"name":"Raglan","is_active":"0","created_at":"2014-01-08 22:34:06","updated_at":"2014-01-08 22:34:06","created_by":"1","updated_by":"1"}', 1, '2014-01-09 06:34:06', 1),
(6, 4, 'products_categories', '{"id":4,"name":"Hoodie","is_active":"0","created_at":"2014-01-08 22:34:14","updated_at":"2014-01-08 22:34:14","created_by":"1","updated_by":"1"}', 1, '2014-01-09 06:34:14', 1),
(7, 5, 'products_categories', '{"id":5,"name":"Sweet Shirt","is_active":"0","created_at":"2014-01-08 22:34:21","updated_at":"2014-01-08 22:34:21","created_by":"1","updated_by":"1"}', 1, '2014-01-09 06:34:21', 1),
(8, 6, 'products_categories', '{"id":6,"name":"Tank Top","is_active":"0","created_at":"2014-01-08 22:34:46","updated_at":"2014-01-08 22:34:46","created_by":"1","updated_by":"1"}', 1, '2014-01-09 06:34:46', 1),
(9, 7, 'products_categories', '{"id":7,"name":"Long Sleeve T-shirt","is_active":"1","created_at":"2014-01-08 22:36:28","updated_at":"2014-01-08 22:36:28","created_by":"1","updated_by":"1"}', 1, '2014-01-09 06:36:28', 1),
(10, 6, 'products_categories', '{"id":"6","name":"Tank Top","is_active":"1","created_at":"2014-01-08 22:34:46","updated_at":"2014-01-08 22:36:46","created_by":"1","updated_by":"1"}', 2, '2014-01-09 06:36:46', 1),
(12, 2, 'fuel_pages', '{"id":2,"location":"contact","layout":"SIATEX","published":"yes","cache":"yes","date_added":"2014-01-14 22:11:31","last_modified":"2014-01-14 22:11:31","last_modified_by":"","variables":[{"id":"12","page_id":"2","name":"body","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX","location":"contact","page_published":"yes"},{"id":"13","page_id":"2","name":"body_class","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX","location":"contact","page_published":"yes"},{"id":"11","page_id":"2","name":"heading","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX","location":"contact","page_published":"yes"},{"id":"9","page_id":"2","name":"meta_description","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX","location":"contact","page_published":"yes"},{"id":"10","page_id":"2","name":"meta_keywords","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX","location":"contact","page_published":"yes"},{"id":"8","page_id":"2","name":"page_title","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX","location":"contact","page_published":"yes"}]}', 1, '2014-01-15 06:11:32', 1),
(13, 3, 'fuel_pages', '{"id":3,"location":"services","layout":"SIATEX","published":"yes","cache":"yes","date_added":"2014-01-14 22:24:59","last_modified":"2014-01-14 22:24:59","last_modified_by":"","variables":[{"id":"18","page_id":"3","name":"body","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX","location":"services","page_published":"yes"},{"id":"19","page_id":"3","name":"body_class","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX","location":"services","page_published":"yes"},{"id":"17","page_id":"3","name":"heading","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX","location":"services","page_published":"yes"},{"id":"15","page_id":"3","name":"meta_description","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX","location":"services","page_published":"yes"},{"id":"16","page_id":"3","name":"meta_keywords","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX","location":"services","page_published":"yes"},{"id":"14","page_id":"3","name":"page_title","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX","location":"services","page_published":"yes"}]}', 1, '2014-01-15 06:25:00', 1),
(30, 2, 'products', '{"id":"2","slug":"item-name-1","item_name":"Item name 1","product_categories_id":"2","fabrics":"","weight":"","quality":"","standard":"","descriptions":"","qty":"","style":"","is_active":"0","created_at":"2014-01-22 23:37:19","updated_at":"2014-01-23 02:13:08","created_by":"1","updated_by":"1"}', 2, '2014-01-23 10:13:09', 1),
(26, 1, 'products', '{"id":"1","slug":"item-name","item_name":"Item name","product_categories_id":"7","fabrics":"Fabrics","weight":"Weight","quality":"ewr","standard":"rew","descriptions":"971519_597301576960553_1902425528_n.jpg","qty":"ewr","style":"ewr","is_active":"1","created_at":"2014-01-09 23:05:25","updated_at":"2014-01-22 04:52:22","created_by":"1","updated_by":"1"}', 11, '2014-01-22 12:52:22', 1),
(18, 1, 'fuel_pages', '{"id":"1","location":"home","layout":"SIATEX","published":"yes","cache":"no","date_added":"2014-01-08 05:17:08","last_modified":"2014-01-22 00:48:05","last_modified_by":"1","variables":[{"id":"24","page_id":"1","name":"body","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX","location":"home","page_published":"yes"},{"id":"25","page_id":"1","name":"body_class","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX","location":"home","page_published":"yes"},{"id":"23","page_id":"1","name":"heading","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX","location":"home","page_published":"yes"},{"id":"21","page_id":"1","name":"meta_description","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX","location":"home","page_published":"yes"},{"id":"22","page_id":"1","name":"meta_keywords","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX","location":"home","page_published":"yes"},{"id":"20","page_id":"1","name":"page_title","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX","location":"home","page_published":"yes"}]}', 3, '2014-01-22 08:48:05', 1),
(19, 1, 'products_images', '{"id":1,"products_id":"1","item_image":"logo11w.png","created_at":"2014-01-22 02:52:32","created_by":"1","updated_at":"2014-01-22 02:52:32","updated_by":"1"}', 1, '2014-01-22 10:52:32', 1),
(20, 1, 'products_images', '{"id":"1","products_id":"1","item_image":"logo11w.png","created_at":"2014-01-22 02:52:32","created_by":"1","updated_at":"2014-01-22 02:53:38","updated_by":"1"}', 2, '2014-01-22 10:53:38', 1),
(27, 1, 'products', '{"id":"1","slug":"item-name","item_name":"Item name","product_categories_id":"7","fabrics":"Fabrics","weight":"Weight","quality":"ewr","standard":"rew","descriptions":"<p>971519_597301576960553_1902425528_n.jpg<\\/p>","qty":"ewr","style":"ewr","is_active":"1","created_at":"2014-01-09 23:05:25","updated_at":"2014-01-22 04:56:57","created_by":"1","updated_by":"1"}', 12, '2014-01-22 12:56:58', 1),
(28, 1, 'products', '{"id":"1","slug":"item-name","item_name":"Item name","product_categories_id":"7","fabrics":"Fabrics","weight":"Weight","quality":"ewr","standard":"rew","descriptions":"<p>971519_597301576960553_1902425528_n.jpg<\\/p>","qty":"ewr","style":"ewr","is_active":"1","created_at":"2014-01-09 23:05:25","updated_at":"2014-01-22 05:08:27","created_by":"1","updated_by":"1"}', 13, '2014-01-22 13:08:27', 1),
(29, 2, 'products', '{"id":2,"slug":"item-name-1","item_name":"Item name 1","product_categories_id":"2","fabrics":"","weight":"","quality":"","standard":"","descriptions":"","qty":"","style":"","is_active":"0","created_at":"2014-01-22 23:37:19","updated_at":"2014-01-22 23:37:19","created_by":"1","updated_by":"1"}', 1, '2014-01-23 07:37:20', 1),
(122, 1, 'products', '{"id":"1","slug":"item-name","item_name":"Item name","product_categories_id":"7","fabrics":"Fabrics","weight":"Weight","quality":"ewr","standard":"rew","descriptions":"<p>971519_597301576960553_1902425528_n.jpg<\\/p>","qty":"ewr","style":"ewr","is_active":"1","created_at":"2014-01-09 23:05:25","updated_at":"2014-02-26 01:25:07","created_by":"1","updated_by":"1"}', 15, '2014-02-26 09:25:09', 1),
(31, 3, 'products', '{"id":3,"slug":"971519_597301576960553_1902425528_njpg","item_name":"971519_597301576960553_1902425528_n.jpg","product_categories_id":"","fabrics":"","weight":"","quality":"","standard":"","descriptions":"","qty":"","style":"","is_active":"1","created_at":"2014-01-23 02:38:25","updated_at":"2014-01-23 02:38:25","created_by":"1","updated_by":"1"}', 1, '2014-01-23 10:38:25', 1),
(32, 3, 'products', '{"id":"3","slug":"971519_597301576960553_1902425528_njpg","item_name":"971519_597301576960553_1902425528_n.jpg","product_categories_id":"6","fabrics":"","weight":"","quality":"","standard":"","descriptions":"","qty":"","style":"","is_active":"1","created_at":"2014-01-23 02:38:25","updated_at":"2014-01-23 03:29:29","created_by":"1","updated_by":"1"}', 2, '2014-01-23 11:29:29', 1),
(54, 4, 'products', '{"id":"4","slug":"971519_597301576960553_1902425528_njpg0","item_name":"971519_597301576960553_1902425528_n.jpg0","product_categories_id":"7","fabrics":"","weight":"","quality":"","standard":"","descriptions":"","qty":"","style":"","is_active":"0","created_at":"2014-01-23 03:44:37","updated_at":"2014-01-24 01:06:19","created_by":"1","updated_by":"1"}', 20, '2014-01-24 09:06:20', 1),
(55, 4, 'fuel_pages', '{"id":4,"location":"home","layout":"main","published":"yes","cache":"yes","date_added":"2014-01-24 02:12:09","last_modified":"2014-01-24 02:12:09","last_modified_by":"","variables":[{"id":"30","page_id":"4","name":"body","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"main","location":"home","page_published":"yes"},{"id":"31","page_id":"4","name":"body_class","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"main","location":"home","page_published":"yes"},{"id":"29","page_id":"4","name":"heading","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"main","location":"home","page_published":"yes"},{"id":"27","page_id":"4","name":"meta_description","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"main","location":"home","page_published":"yes"},{"id":"28","page_id":"4","name":"meta_keywords","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"main","location":"home","page_published":"yes"},{"id":"26","page_id":"4","name":"page_title","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"main","location":"home","page_published":"yes"}]}', 1, '2014-01-24 10:12:09', 1),
(119, 11, 'products_categories', '{"id":"11","slug":"wereewrew","name":"wereewrew","is_active":"1","created_at":"2014-02-19 00:33:34","updated_at":"2014-02-20 02:03:01","created_by":"1","updated_by":"1","precedence":"0","parent_id":""}', 3, '2014-02-20 10:03:01', 1),
(120, 2, 'products', '{"id":"2","slug":"item-name-1","item_name":"Item name 1","product_categories_id":"6","fabrics":"","weight":"","quality":"","standard":"","descriptions":"","qty":"","style":"","is_active":"1","created_at":"2014-01-22 23:37:19","updated_at":"2014-02-20 02:56:35","created_by":"1","updated_by":"1"}', 4, '2014-02-20 10:56:35', 1),
(37, 1, 'products_color_table', '{"id":1,"products_id":"3","color_code":"sssa","color_image":"971519_597301576960553_1902425528_n.jpg","created_at":0,"created_by":"","updated_at":"2014-01-23 05:38:35","updated_by":"1"}', 1, '2014-01-23 13:38:35', 1),
(38, 1, 'products_measurement_table', '{"id":1,"products_id":"3","product_categories_id":"","type":"Asian","size":"S","length":"12","chest":"12","sleeve":"12","price":"2.00","updated_by":"1","updated_at":"2014-01-23 05:47:14","created_by":"","created_at":0}', 1, '2014-01-23 13:47:14', 1),
(51, 4, 'products', '{"id":"4","slug":"971519_597301576960553_1902425528_njpg0","item_name":"971519_597301576960553_1902425528_n.jpg0","product_categories_id":"7","fabrics":"","weight":"","quality":"","standard":"","descriptions":"","qty":"","style":"","is_active":"0","created_at":"2014-01-23 03:44:37","updated_at":"2014-01-24 00:42:35","created_by":"1","updated_by":"1"}', 17, '2014-01-24 08:42:36', 1),
(52, 4, 'products', '{"id":"4","slug":"971519_597301576960553_1902425528_njpg0","item_name":"971519_597301576960553_1902425528_n.jpg0","product_categories_id":"7","fabrics":"","weight":"","quality":"","standard":"","descriptions":"","qty":"","style":"","is_active":"0","created_at":"2014-01-23 03:44:37","updated_at":"2014-01-24 01:02:34","created_by":"1","updated_by":"1"}', 18, '2014-01-24 09:02:35', 1),
(53, 4, 'products', '{"id":"4","slug":"971519_597301576960553_1902425528_njpg0","item_name":"971519_597301576960553_1902425528_n.jpg0","product_categories_id":"7","fabrics":"","weight":"","quality":"","standard":"","descriptions":"","qty":"","style":"","is_active":"0","created_at":"2014-01-23 03:44:37","updated_at":"2014-01-24 01:06:04","created_by":"1","updated_by":"1"}', 19, '2014-01-24 09:06:04', 1),
(56, 4, 'fuel_pages', '{"id":"4","location":"home","layout":"main","published":"yes","cache":"no","date_added":"2014-01-24 02:12:09","last_modified":"2014-01-24 02:12:17","last_modified_by":"1","variables":[{"id":"36","page_id":"4","name":"body","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"main","location":"home","page_published":"yes"},{"id":"37","page_id":"4","name":"body_class","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"main","location":"home","page_published":"yes"},{"id":"35","page_id":"4","name":"heading","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"main","location":"home","page_published":"yes"},{"id":"33","page_id":"4","name":"meta_description","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"main","location":"home","page_published":"yes"},{"id":"34","page_id":"4","name":"meta_keywords","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"main","location":"home","page_published":"yes"},{"id":"32","page_id":"4","name":"page_title","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"main","location":"home","page_published":"yes"}]}', 2, '2014-01-24 10:12:17', 1),
(57, 4, 'fuel_pages', '{"id":"4","location":"home","layout":"SIATEX","published":"yes","cache":"no","date_added":"2014-01-24 02:12:09","last_modified":"2014-01-24 02:12:36","last_modified_by":"1","variables":[{"id":"42","page_id":"4","name":"body","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX","location":"home","page_published":"yes"},{"id":"43","page_id":"4","name":"body_class","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX","location":"home","page_published":"yes"},{"id":"41","page_id":"4","name":"heading","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX","location":"home","page_published":"yes"},{"id":"39","page_id":"4","name":"meta_description","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX","location":"home","page_published":"yes"},{"id":"40","page_id":"4","name":"meta_keywords","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX","location":"home","page_published":"yes"},{"id":"38","page_id":"4","name":"page_title","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX","location":"home","page_published":"yes"}]}', 3, '2014-01-24 10:12:36', 1),
(58, 2, 'fuel_pages', '{"id":"2","location":"contact","layout":"SIATEX","published":"yes","cache":"yes","date_added":"2014-01-14 22:11:31","last_modified":"2014-01-24 02:21:07","last_modified_by":"1","variables":[{"id":"48","page_id":"2","name":"body","scope":"","value":"<p>sdss<\\/p>","type":"string","language":"english","active":"yes","layout":"SIATEX","location":"contact","page_published":"yes"},{"id":"49","page_id":"2","name":"body_class","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX","location":"contact","page_published":"yes"},{"id":"47","page_id":"2","name":"heading","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX","location":"contact","page_published":"yes"},{"id":"45","page_id":"2","name":"meta_description","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX","location":"contact","page_published":"yes"},{"id":"46","page_id":"2","name":"meta_keywords","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX","location":"contact","page_published":"yes"},{"id":"44","page_id":"2","name":"page_title","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX","location":"contact","page_published":"yes"}]}', 2, '2014-01-24 10:21:07', 1),
(59, 2, 'fuel_pages', '{"id":"2","location":"contact","layout":"SIATEX","published":"yes","cache":"no","date_added":"2014-01-14 22:11:31","last_modified":"2014-01-24 02:21:19","last_modified_by":"1","variables":[{"id":"54","page_id":"2","name":"body","scope":"","value":"<p>sdss<\\/p>","type":"string","language":"english","active":"yes","layout":"SIATEX","location":"contact","page_published":"yes"},{"id":"55","page_id":"2","name":"body_class","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX","location":"contact","page_published":"yes"},{"id":"53","page_id":"2","name":"heading","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX","location":"contact","page_published":"yes"},{"id":"51","page_id":"2","name":"meta_description","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX","location":"contact","page_published":"yes"},{"id":"52","page_id":"2","name":"meta_keywords","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX","location":"contact","page_published":"yes"},{"id":"50","page_id":"2","name":"page_title","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX","location":"contact","page_published":"yes"}]}', 3, '2014-01-24 10:21:19', 1),
(75, 5, 'fuel_pages', '{"id":"5","location":"services","layout":"SIATEX_SERVICES","published":"yes","cache":"no","date_added":"2014-01-24 02:38:45","last_modified":"2014-02-06 01:25:58","last_modified_by":"1","variables":[{"id":"93","page_id":"5","name":"body","scope":"","value":"<div class=\\"services_tex_box_one\\"><strong>Textile Knitting Service <\\/strong><br \\/>\\r\\nOne of our company''s prime goals is to sell out the knitted fabric that we produce and help garments companies'' who wants to have their own stock of thread be turned into a set of useful cloths.<\\/div>\\r\\n\\r\\n<div class=\\"services_tex_box_one services_tex_box_two\\"><strong>T-shirts Manufacturing<\\/strong><br \\/>\\r\\nBe it plain white t-shirts, plain coloured t-shirts, v neck shirts, shirts with print, striped shirts and or t-shirts with embroidery we can work on it. Even if you have a specific colour preference. We can still produce the product the way you want it.<\\/div>\\r\\n\\r\\n<div class=\\"services_tex_box_one services_tex_box_three\\"><strong>Producing Polo shirts<\\/strong><br \\/>\\r\\nTell us how you want the polo shirts to look like and we will do it. We can also copy even the most unique shade of colour that you like. Our minimum order quantity for fabric colouring is just 5 rolls of fabric per colour.<\\/div>\\r\\n<div class=\\"services_tex_box_one services_tex_box_three\\"><strong>Producing Polo shirts<\\/strong><br \\/>\\r\\nTell us how you want the polo shirts to look like and we will do it. We can also copy even the most unique shade of colour that you like. Our minimum order quantity for fabric colouring is just 5 rolls of fabric per colour.<\\/div>","type":"string","language":"english","active":"yes","layout":"SIATEX_SERVICES","location":"services","page_published":"yes"},{"id":"94","page_id":"5","name":"body_class","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX_SERVICES","location":"services","page_published":"yes"},{"id":"91","page_id":"5","name":"meta_description","scope":"","value":"Service","type":"string","language":"english","active":"yes","layout":"SIATEX_SERVICES","location":"services","page_published":"yes"},{"id":"92","page_id":"5","name":"meta_keywords","scope":"","value":"Service","type":"string","language":"english","active":"yes","layout":"SIATEX_SERVICES","location":"services","page_published":"yes"},{"id":"90","page_id":"5","name":"page_title","scope":"","value":"Service","type":"string","language":"english","active":"yes","layout":"SIATEX_SERVICES","location":"services","page_published":"yes"}]}', 7, '2014-02-06 09:25:58', 1),
(83, 4, 'products_categories', '{"id":"4","slug":"hoodie","name":"Hoodie","is_active":"0","created_at":"2014-01-08 22:34:14","updated_at":"2014-02-18 21:35:56","created_by":"1","updated_by":"1","precedence":"0","parent_id":"7"}', 4, '2014-02-19 05:35:56', 1),
(84, 3, 'fuel_categories', '{"id":3,"name":"er","slug":"er","context":"","precedence":"","parent_id":"1","published":"yes"}', 1, '2014-02-19 07:44:30', 1),
(85, 3, 'fuel_categories', '{"id":"3","name":"er","slug":"er","context":"","precedence":"0","parent_id":"2","published":"yes"}', 2, '2014-02-19 07:44:42', 1),
(86, 6, 'products_categories', '{"id":"6","slug":"tank-top","name":"Tank Top","is_active":"1","created_at":"2014-01-08 22:34:46","updated_at":"2014-02-18 23:58:06","created_by":"1","updated_by":"1","precedence":"0","parent_id":"3"}', 4, '2014-02-19 07:58:06', 1),
(87, 8, 'products_categories', '{"id":8,"slug":"erwerewr","name":"erwerewr","is_active":"1","created_at":"2014-02-19 00:33:05","updated_at":"2014-02-19 00:33:05","created_by":"1","updated_by":"1","precedence":"","parent_id":"4"}', 1, '2014-02-19 08:33:05', 1),
(88, 9, 'products_categories', '{"id":9,"slug":"erwerew","name":"erwerew","is_active":"0","created_at":"2014-02-19 00:33:19","updated_at":"2014-02-19 00:33:19","created_by":"1","updated_by":"1","precedence":"","parent_id":"8"}', 1, '2014-02-19 08:33:20', 1),
(62, 1, 'fuel_categories', '{"id":1,"name":"Hoodie","slug":"hoodie","context":"","precedence":"","parent_id":"","published":"yes"}', 1, '2014-01-24 12:55:04', 1),
(63, 2, 'fuel_categories', '{"id":2,"name":"Duttatex","slug":"971519_597301576960553_1902425528_njpg","context":"","precedence":"","parent_id":"1","published":"yes"}', 1, '2014-01-24 12:55:16', 1),
(64, 4, 'products_categories', '{"id":"4","slug":"hoodie","name":"Hoodie","is_active":"0","created_at":"2014-01-08 22:34:14","updated_at":"2014-02-05 04:49:30","created_by":"1","updated_by":"1"}', 2, '2014-02-05 12:49:30', 1),
(65, 7, 'products_categories', '{"id":"7","slug":"long-sleeve-t-shirt","name":"Long Sleeve T-shirt","is_active":"1","created_at":"2014-01-08 22:36:28","updated_at":"2014-02-05 04:49:54","created_by":"1","updated_by":"1"}', 2, '2014-02-05 12:49:54', 1),
(66, 2, 'products_categories', '{"id":"2","slug":"polo-t-shirt","name":"Polo T-Shirt","is_active":"1","created_at":"2014-01-08 22:33:58","updated_at":"2014-02-05 04:50:02","created_by":"1","updated_by":"1"}', 2, '2014-02-05 12:50:02', 1),
(67, 3, 'products_categories', '{"id":"3","slug":"raglan","name":"Raglan","is_active":"0","created_at":"2014-01-08 22:34:06","updated_at":"2014-02-05 04:50:08","created_by":"1","updated_by":"1"}', 2, '2014-02-05 12:50:08', 1),
(68, 5, 'products_categories', '{"id":"5","slug":"sweet-shirt","name":"Sweet Shirt","is_active":"0","created_at":"2014-01-08 22:34:21","updated_at":"2014-02-05 04:50:14","created_by":"1","updated_by":"1"}', 2, '2014-02-05 12:50:14', 1),
(69, 1, 'products_categories', '{"id":"1","slug":"t-shirt","name":"T-shirt","is_active":"1","created_at":"2014-01-08 22:33:48","updated_at":"2014-02-05 04:50:19","created_by":"1","updated_by":"1"}', 2, '2014-02-05 12:50:19', 1),
(70, 6, 'products_categories', '{"id":"6","slug":"tank-top","name":"Tank Top","is_active":"1","created_at":"2014-01-08 22:34:46","updated_at":"2014-02-05 04:50:24","created_by":"1","updated_by":"1"}', 3, '2014-02-05 12:50:24', 1),
(71, 5, 'fuel_pages', '{"id":"5","location":"services","layout":"SIATEX_SERVICES","published":"yes","cache":"yes","date_added":"2014-01-24 02:38:45","last_modified":"2014-02-06 00:59:03","last_modified_by":"1","variables":[{"id":"72","page_id":"5","name":"body","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX_SERVICES","location":"services","page_published":"yes"},{"id":"73","page_id":"5","name":"body_class","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX_SERVICES","location":"services","page_published":"yes"},{"id":"69","page_id":"5","name":"meta_description","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX_SERVICES","location":"services","page_published":"yes"},{"id":"70","page_id":"5","name":"meta_keywords","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX_SERVICES","location":"services","page_published":"yes"},{"id":"68","page_id":"5","name":"page_title","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX_SERVICES","location":"services","page_published":"yes"},{"id":"71","page_id":"5","name":"right_image","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX_SERVICES","location":"services","page_published":"yes"}]}', 3, '2014-02-06 08:59:03', 1),
(72, 5, 'fuel_pages', '{"id":"5","location":"services","layout":"SIATEX_SERVICES","published":"yes","cache":"yes","date_added":"2014-01-24 02:38:45","last_modified":"2014-02-06 01:03:55","last_modified_by":"1","variables":[{"id":"78","page_id":"5","name":"body","scope":"","value":"<p>fdgfdg<\\/p>","type":"string","language":"english","active":"yes","layout":"SIATEX_SERVICES","location":"services","page_published":"yes"},{"id":"79","page_id":"5","name":"body_class","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX_SERVICES","location":"services","page_published":"yes"},{"id":"75","page_id":"5","name":"meta_description","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX_SERVICES","location":"services","page_published":"yes"},{"id":"76","page_id":"5","name":"meta_keywords","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX_SERVICES","location":"services","page_published":"yes"},{"id":"74","page_id":"5","name":"page_title","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX_SERVICES","location":"services","page_published":"yes"},{"id":"77","page_id":"5","name":"right_image","scope":"","value":"971519_597301576960553_1902425528_n.jpg","type":"string","language":"english","active":"yes","layout":"SIATEX_SERVICES","location":"services","page_published":"yes"}]}', 4, '2014-02-06 09:03:55', 1),
(73, 5, 'fuel_pages', '{"id":"5","location":"services","layout":"SIATEX_SERVICES","published":"yes","cache":"yes","date_added":"2014-01-24 02:38:45","last_modified":"2014-02-06 01:09:38","last_modified_by":"1","variables":[{"id":"83","page_id":"5","name":"body","scope":"","value":"<div class=\\"services_tex_box_one\\"><strong>Textile Knitting Service <\\/strong><br \\/>\\r\\nOne of our company''s prime goals is to sell out the knitted fabric that we produce and help garments companies'' who wants to have their own stock of thread be turned into a set of useful cloths.<\\/div>\\r\\n\\r\\n<div class=\\"services_tex_box_one services_tex_box_two\\"><strong>T-shirts Manufacturing<\\/strong><br \\/>\\r\\nBe it plain white t-shirts, plain coloured t-shirts, v neck shirts, shirts with print, striped shirts and or t-shirts with embroidery we can work on it. Even if you have a specific colour preference. We can still produce the product the way you want it.<\\/div>\\r\\n\\r\\n<div class=\\"services_tex_box_one services_tex_box_three\\"><strong>Producing Polo shirts<\\/strong><br \\/>\\r\\nTell us how you want the polo shirts to look like and we will do it. We can also copy even the most unique shade of colour that you like. Our minimum order quantity for fabric colouring is just 5 rolls of fabric per colour.<\\/div>","type":"string","language":"english","active":"yes","layout":"SIATEX_SERVICES","location":"services","page_published":"yes"},{"id":"84","page_id":"5","name":"body_class","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX_SERVICES","location":"services","page_published":"yes"},{"id":"81","page_id":"5","name":"meta_description","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX_SERVICES","location":"services","page_published":"yes"},{"id":"82","page_id":"5","name":"meta_keywords","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX_SERVICES","location":"services","page_published":"yes"},{"id":"80","page_id":"5","name":"page_title","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX_SERVICES","location":"services","page_published":"yes"}]}', 5, '2014-02-06 09:09:38', 1),
(74, 5, 'fuel_pages', '{"id":"5","location":"services","layout":"SIATEX_SERVICES","published":"yes","cache":"no","date_added":"2014-01-24 02:38:45","last_modified":"2014-02-06 01:25:03","last_modified_by":"1","variables":[{"id":"88","page_id":"5","name":"body","scope":"","value":"<div class=\\"services_tex_box_one\\"><strong>Textile Knitting Service <\\/strong><br \\/>\\r\\nOne of our company''s prime goals is to sell out the knitted fabric that we produce and help garments companies'' who wants to have their own stock of thread be turned into a set of useful cloths.<\\/div>\\r\\n\\r\\n<div class=\\"services_tex_box_one services_tex_box_two\\"><strong>T-shirts Manufacturing<\\/strong><br \\/>\\r\\nBe it plain white t-shirts, plain coloured t-shirts, v neck shirts, shirts with print, striped shirts and or t-shirts with embroidery we can work on it. Even if you have a specific colour preference. We can still produce the product the way you want it.<\\/div>\\r\\n\\r\\n<div class=\\"services_tex_box_one services_tex_box_three\\"><strong>Producing Polo shirts<\\/strong><br \\/>\\r\\nTell us how you want the polo shirts to look like and we will do it. We can also copy even the most unique shade of colour that you like. Our minimum order quantity for fabric colouring is just 5 rolls of fabric per colour.<\\/div>","type":"string","language":"english","active":"yes","layout":"SIATEX_SERVICES","location":"services","page_published":"yes"},{"id":"89","page_id":"5","name":"body_class","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX_SERVICES","location":"services","page_published":"yes"},{"id":"86","page_id":"5","name":"meta_description","scope":"","value":"Service","type":"string","language":"english","active":"yes","layout":"SIATEX_SERVICES","location":"services","page_published":"yes"},{"id":"87","page_id":"5","name":"meta_keywords","scope":"","value":"Service","type":"string","language":"english","active":"yes","layout":"SIATEX_SERVICES","location":"services","page_published":"yes"},{"id":"85","page_id":"5","name":"page_title","scope":"","value":"Service","type":"string","language":"english","active":"yes","layout":"SIATEX_SERVICES","location":"services","page_published":"yes"}]}', 6, '2014-02-06 09:25:03', 1),
(82, 4, 'products_categories', '{"id":"4","slug":"hoodie","name":"Hoodie","is_active":"0","created_at":"2014-01-08 22:34:14","updated_at":"2014-02-18 21:24:59","created_by":"1","updated_by":"1","precedence":"0","parent_id":"7"}', 3, '2014-02-19 05:24:59', 1),
(77, 6, 'fuel_pages', '{"id":"6","location":"contact","layout":"SIATEX_CONTACT","published":"yes","cache":"no","date_added":"2014-02-06 01:37:31","last_modified":"2014-02-06 01:41:53","last_modified_by":"1","variables":[{"id":"100","page_id":"6","name":"body","scope":"","value":"<h4>Head Office<\\/h4>\\r\\n\\r\\n<p>Siatex Bangladesh Limited<\\/p>\\r\\n\\r\\n<p>House # 8, Road # 6, BLK \\"E\\"<\\/p>\\r\\n\\r\\n<p>Dhaka-1212. Bangladesh.<\\/p>\\r\\n\\r\\n<p>Phone: (+880-2) 985-9720<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<h4>Canada Sales Office<\\/h4>\\r\\n\\r\\n<p>APTEX Canada Limited<\\/p>\\r\\n\\r\\n<p>22 Hagley Road<\\/p>\\r\\n\\r\\n<p>Toronto, M1M 1S9<\\/p>\\r\\n\\r\\n<p>ON Canada<\\/p>","type":"string","language":"english","active":"yes","layout":"SIATEX_CONTACT","location":"contact","page_published":"yes"},{"id":"101","page_id":"6","name":"body_class","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX_CONTACT","location":"contact","page_published":"yes"},{"id":"103","page_id":"6","name":"meta_description","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX_CONTACT","location":"contact","page_published":"yes"},{"id":"104","page_id":"6","name":"meta_keywords","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX_CONTACT","location":"contact","page_published":"yes"},{"id":"102","page_id":"6","name":"page_title","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX_CONTACT","location":"contact","page_published":"yes"}]}', 2, '2014-02-06 09:41:53', 1),
(78, 6, 'fuel_pages', '{"id":"6","location":"contact","layout":"SIATEX_CONTACT","published":"yes","cache":"no","date_added":"2014-02-06 01:37:31","last_modified":"2014-02-06 01:44:38","last_modified_by":"1","variables":[{"id":"105","page_id":"6","name":"body","scope":"","value":"<h4>Head Office<\\/h4>\\r\\n\\r\\n<p>Siatex Bangladesh Limited<\\/p>\\r\\n\\r\\n<p>House # 8, Road # 6, BLK \\"E\\"<\\/p>\\r\\n\\r\\n<p>Dhaka-1212. Bangladesh.<\\/p>\\r\\n\\r\\n<p>Phone: (+880-2) 985-9720<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<h4>Canada Sales Office<\\/h4>\\r\\n\\r\\n<p>APTEX Canada Limited<\\/p>\\r\\n\\r\\n<p>22 Hagley Road<\\/p>\\r\\n\\r\\n<p>Toronto, M1M 1S9<\\/p>\\r\\n\\r\\n<p>ON Canada<\\/p>","type":"string","language":"english","active":"yes","layout":"SIATEX_CONTACT","location":"contact","page_published":"yes"},{"id":"106","page_id":"6","name":"body_class","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX_CONTACT","location":"contact","page_published":"yes"},{"id":"108","page_id":"6","name":"meta_description","scope":"","value":"contact","type":"string","language":"english","active":"yes","layout":"SIATEX_CONTACT","location":"contact","page_published":"yes"},{"id":"109","page_id":"6","name":"meta_keywords","scope":"","value":"contact","type":"string","language":"english","active":"yes","layout":"SIATEX_CONTACT","location":"contact","page_published":"yes"},{"id":"107","page_id":"6","name":"page_title","scope":"","value":"contact","type":"string","language":"english","active":"yes","layout":"SIATEX_CONTACT","location":"contact","page_published":"yes"}]}', 3, '2014-02-06 09:44:38', 1),
(79, 6, 'fuel_pages', '{"id":"6","location":"contact","layout":"SIATEX_CONTACT","published":"yes","cache":"no","date_added":"2014-02-06 01:37:31","last_modified":"2014-02-06 01:44:56","last_modified_by":"1","variables":[{"id":"110","page_id":"6","name":"body","scope":"","value":"<h4>Head Office<\\/h4>\\r\\n\\r\\n<p>Siatex Bangladesh Limited<\\/p>\\r\\n\\r\\n<p>House # 8, Road # 6, BLK \\"E\\"<\\/p>\\r\\n\\r\\n<p>Dhaka-1212. Bangladesh.<\\/p>\\r\\n\\r\\n<p>Phone: (+880-2) 985-9720<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<h4>Canada Sales Office<\\/h4>\\r\\n\\r\\n<p>APTEX Canada Limited<\\/p>\\r\\n\\r\\n<p>22 Hagley Road<\\/p>\\r\\n\\r\\n<p>Toronto, M1M 1S9<\\/p>\\r\\n\\r\\n<p>ON Canada<\\/p>","type":"string","language":"english","active":"yes","layout":"SIATEX_CONTACT","location":"contact","page_published":"yes"},{"id":"111","page_id":"6","name":"body_class","scope":"","value":"","type":"string","language":"english","active":"yes","layout":"SIATEX_CONTACT","location":"contact","page_published":"yes"},{"id":"113","page_id":"6","name":"meta_description","scope":"","value":"contact","type":"string","language":"english","active":"yes","layout":"SIATEX_CONTACT","location":"contact","page_published":"yes"},{"id":"114","page_id":"6","name":"meta_keywords","scope":"","value":"contact","type":"string","language":"english","active":"yes","layout":"SIATEX_CONTACT","location":"contact","page_published":"yes"},{"id":"112","page_id":"6","name":"page_title","scope":"","value":"Contact","type":"string","language":"english","active":"yes","layout":"SIATEX_CONTACT","location":"contact","page_published":"yes"}]}', 4, '2014-02-06 09:44:56', 1),
(80, 6, 'fuel_pages', '{"id":"6","location":"contact","layout":"SIATEX_CONTACT","published":"yes","cache":"no","date_added":"2014-02-06 01:37:31","last_modified":"2014-02-06 03:13:04","last_modified_by":"1","variables":[{"id":"115","page_id":"6","name":"body","scope":"","value":"<h4>Head Office<\\/h4>\\r\\n\\r\\n<p>Siatex Bangladesh Limited<\\/p>\\r\\n\\r\\n<p>House # 8, Road # 6, BLK \\"E\\"<\\/p>\\r\\n\\r\\n<p>Dhaka-1212. Bangladesh.<\\/p>\\r\\n\\r\\n<p>Phone: (+880-2) 985-9720<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<h4>Canada Sales Office<\\/h4>\\r\\n\\r\\n<p>APTEX Canada Limited<\\/p>\\r\\n\\r\\n<p>22 Hagley Road<\\/p>\\r\\n\\r\\n<p>Toronto, M1M 1S9<\\/p>\\r\\n\\r\\n<p>ON Canada<\\/p>","type":"string","language":"english","active":"yes","layout":"SIATEX_CONTACT","location":"contact","page_published":"yes"},{"id":"116","page_id":"6","name":"google_map","scope":"","value":"<iframe src=\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d456.4097892323409!2d90.40936234620678!3d23.773101695293228!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c7a0f70deb73%3A0x30c36498f90fe23!2sGulshan!5e0!3m2!1sen!2s!4v1391685121437\\" width=\\"588\\" height=\\"200\\" frameborder=\\"0\\" style=\\"border:0\\"><\\/iframe>","type":"string","language":"english","active":"yes","layout":"SIATEX_CONTACT","location":"contact","page_published":"yes"},{"id":"118","page_id":"6","name":"meta_description","scope":"","value":"contact","type":"string","language":"english","active":"yes","layout":"SIATEX_CONTACT","location":"contact","page_published":"yes"},{"id":"119","page_id":"6","name":"meta_keywords","scope":"","value":"contact","type":"string","language":"english","active":"yes","layout":"SIATEX_CONTACT","location":"contact","page_published":"yes"},{"id":"117","page_id":"6","name":"page_title","scope":"","value":"Contact","type":"string","language":"english","active":"yes","layout":"SIATEX_CONTACT","location":"contact","page_published":"yes"}]}', 5, '2014-02-06 11:13:04', 1),
(81, 6, 'fuel_pages', '{"id":"6","location":"contact","layout":"SIATEX_CONTACT","published":"yes","cache":"no","date_added":"2014-02-06 01:37:31","last_modified":"2014-02-06 03:23:11","last_modified_by":"1","variables":[{"id":"120","page_id":"6","name":"body","scope":"","value":"<h4>Head Office<\\/h4>\\r\\n\\r\\n<p>Siatex Bangladesh Limited<\\/p>\\r\\n\\r\\n<p>House # 8, Road # 6, BLK \\"E\\"<\\/p>\\r\\n\\r\\n<p>Dhaka-1212. Bangladesh.<\\/p>\\r\\n\\r\\n<p>Phone: (+880-2) 985-9720<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<h4>Canada Sales Office<\\/h4>\\r\\n\\r\\n<p>APTEX Canada Limited<\\/p>\\r\\n\\r\\n<p>22 Hagley Road<\\/p>\\r\\n\\r\\n<p>Toronto, M1M 1S9<\\/p>\\r\\n\\r\\n<p>ON Canada<\\/p>","type":"string","language":"english","active":"yes","layout":"SIATEX_CONTACT","location":"contact","page_published":"yes"},{"id":"121","page_id":"6","name":"google_map","scope":"","value":"<p><iframe frameborder=\\"0\\" height=\\"200\\" src=\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d228.20480189549002!2d90.41002858116521!3d23.773154544189918!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c779b7af66df%3A0xf4e61e25c3a8f0ac!2sHouse+17+Road+No+6!5e0!3m2!1sen!2s!4v1391685454738\\" style=\\"border:0\\" width=\\"588\\"><\\/iframe><\\/p>","type":"string","language":"english","active":"yes","layout":"SIATEX_CONTACT","location":"contact","page_published":"yes"},{"id":"123","page_id":"6","name":"meta_description","scope":"","value":"contact","type":"string","language":"english","active":"yes","layout":"SIATEX_CONTACT","location":"contact","page_published":"yes"},{"id":"124","page_id":"6","name":"meta_keywords","scope":"","value":"contact","type":"string","language":"english","active":"yes","layout":"SIATEX_CONTACT","location":"contact","page_published":"yes"},{"id":"122","page_id":"6","name":"page_title","scope":"","value":"Contact","type":"string","language":"english","active":"yes","layout":"SIATEX_CONTACT","location":"contact","page_published":"yes"}]}', 6, '2014-02-06 11:23:11', 1),
(89, 10, 'products_categories', '{"id":10,"slug":"erewrwer","name":"erewrwer","is_active":"0","created_at":"2014-02-19 00:33:28","updated_at":"2014-02-19 00:33:28","created_by":"1","updated_by":"1","precedence":"","parent_id":"9"}', 1, '2014-02-19 08:33:28', 1),
(90, 11, 'products_categories', '{"id":11,"slug":"wereewrew","name":"wereewrew","is_active":"0","created_at":"2014-02-19 00:33:34","updated_at":"2014-02-19 00:33:34","created_by":"1","updated_by":"1","precedence":"","parent_id":"10"}', 1, '2014-02-19 08:33:34', 1),
(91, 12, 'products_categories', '{"id":12,"slug":"wery-rtybrtbyt","name":"wery  rtybrtbyt","is_active":"0","created_at":"2014-02-19 00:33:49","updated_at":"2014-02-19 00:33:49","created_by":"1","updated_by":"1","precedence":"","parent_id":"9"}', 1, '2014-02-19 08:33:49', 1),
(92, 13, 'products_categories', '{"id":13,"slug":"rtytry","name":"rtytry","is_active":"0","created_at":"2014-02-19 00:33:58","updated_at":"2014-02-19 00:33:58","created_by":"1","updated_by":"1","precedence":"","parent_id":"4"}', 1, '2014-02-19 08:33:58', 1),
(93, 10, 'products_categories', '{"id":"10","slug":"erewrwer","name":"erewrwer","is_active":"1","created_at":"2014-02-19 00:33:28","updated_at":"2014-02-19 00:34:20","created_by":"1","updated_by":"1","precedence":"0","parent_id":"9"}', 2, '2014-02-19 08:34:20', 1),
(94, 9, 'products_categories', '{"id":"9","slug":"erwerew","name":"erwerew","is_active":"1","created_at":"2014-02-19 00:33:19","updated_at":"2014-02-19 00:34:26","created_by":"1","updated_by":"1","precedence":"0","parent_id":"8"}', 2, '2014-02-19 08:34:26', 1),
(95, 8, 'products_categories', '{"id":"8","slug":"erwerewr","name":"erwerewr","is_active":"1","created_at":"2014-02-19 00:33:05","updated_at":"2014-02-19 00:34:31","created_by":"1","updated_by":"1","precedence":"0","parent_id":"4"}', 2, '2014-02-19 08:34:31', 1),
(96, 4, 'products_categories', '{"id":"4","slug":"hoodie","name":"Hoodie","is_active":"1","created_at":"2014-01-08 22:34:14","updated_at":"2014-02-19 00:34:35","created_by":"1","updated_by":"1","precedence":"0","parent_id":"7"}', 5, '2014-02-19 08:34:35', 1),
(97, 7, 'products_categories', '{"id":"7","slug":"long-sleeve-t-shirt","name":"Long Sleeve T-shirt","is_active":"1","created_at":"2014-01-08 22:36:28","updated_at":"2014-02-19 00:34:39","created_by":"1","updated_by":"1","precedence":"0","parent_id":""}', 3, '2014-02-19 08:34:39', 1),
(98, 2, 'products_categories', '{"id":"2","slug":"polo-t-shirt","name":"Polo T-Shirt","is_active":"1","created_at":"2014-01-08 22:33:58","updated_at":"2014-02-19 00:34:46","created_by":"1","updated_by":"1","precedence":"0","parent_id":""}', 3, '2014-02-19 08:34:46', 1),
(99, 3, 'products_categories', '{"id":"3","slug":"raglan","name":"Raglan","is_active":"1","created_at":"2014-01-08 22:34:06","updated_at":"2014-02-19 00:34:53","created_by":"1","updated_by":"1","precedence":"0","parent_id":"1"}', 3, '2014-02-19 08:34:53', 1),
(100, 13, 'products_categories', '{"id":"13","slug":"rtytry","name":"rtytry","is_active":"1","created_at":"2014-02-19 00:33:58","updated_at":"2014-02-19 00:35:01","created_by":"1","updated_by":"1","precedence":"0","parent_id":"4"}', 2, '2014-02-19 08:35:01', 1),
(101, 5, 'products_categories', '{"id":"5","slug":"sweet-shirt","name":"Sweet Shirt","is_active":"1","created_at":"2014-01-08 22:34:21","updated_at":"2014-02-19 00:35:07","created_by":"1","updated_by":"1","precedence":"0","parent_id":""}', 3, '2014-02-19 08:35:07', 1),
(102, 1, 'products_categories', '{"id":"1","slug":"t-shirt","name":"T-shirt","is_active":"1","created_at":"2014-01-08 22:33:48","updated_at":"2014-02-19 00:35:13","created_by":"1","updated_by":"1","precedence":"0","parent_id":""}', 3, '2014-02-19 08:35:13', 1),
(103, 11, 'products_categories', '{"id":"11","slug":"wereewrew","name":"wereewrew","is_active":"1","created_at":"2014-02-19 00:33:34","updated_at":"2014-02-19 00:35:22","created_by":"1","updated_by":"1","precedence":"0","parent_id":"10"}', 2, '2014-02-19 08:35:22', 1),
(104, 12, 'products_categories', '{"id":"12","slug":"wery-rtybrtbyt","name":"wery  rtybrtbyt","is_active":"1","created_at":"2014-02-19 00:33:49","updated_at":"2014-02-19 00:35:27","created_by":"1","updated_by":"1","precedence":"0","parent_id":"9"}', 2, '2014-02-19 08:35:27', 1),
(105, 14, 'products_categories', '{"id":14,"slug":"erewrwer","name":"erewrwer","is_active":"1","created_at":"2014-02-19 00:38:12","updated_at":"2014-02-19 00:38:12","created_by":"1","updated_by":"1","precedence":"","parent_id":"3"}', 1, '2014-02-19 08:38:12', 1),
(106, 4, 'fuel_categories', '{"id":4,"name":"Duttatex","slug":"duttatex","context":"","precedence":"","parent_id":"2","published":"yes"}', 1, '2014-02-19 08:38:57', 1),
(107, 15, 'products_categories', '{"id":15,"slug":"t-shirt1","name":"T-shirt1","is_active":"1","created_at":"2014-02-19 00:41:59","updated_at":"2014-02-19 00:41:59","created_by":"1","updated_by":"1","precedence":"","parent_id":"1"}', 1, '2014-02-19 08:41:59', 1),
(108, 16, 'products_categories', '{"id":16,"slug":"t-shirt2","name":"T-shirt2","is_active":"1","created_at":"2014-02-19 00:42:19","updated_at":"2014-02-19 00:42:19","created_by":"1","updated_by":"1","precedence":"","parent_id":"1"}', 1, '2014-02-19 08:42:19', 1),
(109, 17, 'products_categories', '{"id":17,"slug":"t-shirt3","name":"T-shirt3","is_active":"1","created_at":"2014-02-19 00:42:50","updated_at":"2014-02-19 00:42:50","created_by":"1","updated_by":"1","precedence":"","parent_id":"1"}', 1, '2014-02-19 08:42:50', 1),
(110, 18, 'products_categories', '{"id":18,"slug":"t-shirt-11","name":"T-shirt 11","is_active":"1","created_at":"2014-02-19 00:43:11","updated_at":"2014-02-19 00:43:11","created_by":"1","updated_by":"1","precedence":"","parent_id":"15"}', 1, '2014-02-19 08:43:11', 1),
(111, 19, 'products_categories', '{"id":19,"slug":"t-shirt-12","name":"T-shirt 12","is_active":"1","created_at":"2014-02-19 00:43:43","updated_at":"2014-02-19 00:43:43","created_by":"1","updated_by":"1","precedence":"","parent_id":"15"}', 1, '2014-02-19 08:43:43', 1),
(112, 20, 'products_categories', '{"id":20,"slug":"t-shirt14","name":"T-shirt14","is_active":"1","created_at":"2014-02-19 00:43:55","updated_at":"2014-02-19 00:43:55","created_by":"1","updated_by":"1","precedence":"","parent_id":"15"}', 1, '2014-02-19 08:43:55', 1),
(113, 21, 'products_categories', '{"id":21,"slug":"t-shirt15","name":"T-shirt15","is_active":"1","created_at":"2014-02-19 00:44:43","updated_at":"2014-02-19 00:44:43","created_by":"1","updated_by":"1","precedence":"","parent_id":"15"}', 1, '2014-02-19 08:44:43', 1),
(114, 22, 'products_categories', '{"id":22,"slug":"t-shirt-16","name":"T-shirt 16","is_active":"0","created_at":"2014-02-19 00:45:00","updated_at":"2014-02-19 00:45:00","created_by":"1","updated_by":"1","precedence":"","parent_id":"15"}', 1, '2014-02-19 08:45:00', 1);
INSERT INTO `fuel_archives` (`id`, `ref_id`, `table_name`, `data`, `version`, `version_timestamp`, `archived_user_id`) VALUES
(115, 23, 'products_categories', '{"id":23,"slug":"t-shirt-21","name":"T-shirt 21","is_active":"1","created_at":"2014-02-19 00:45:37","updated_at":"2014-02-19 00:45:37","created_by":"1","updated_by":"1","precedence":"","parent_id":"16"}', 1, '2014-02-19 08:45:37', 1),
(116, 24, 'products_categories', '{"id":24,"slug":"t-shirt-22","name":"T-shirt 22","is_active":"1","created_at":"2014-02-19 00:45:54","updated_at":"2014-02-19 00:45:54","created_by":"1","updated_by":"1","precedence":"","parent_id":"16"}', 1, '2014-02-19 08:45:55', 1),
(117, 2, 'products', '{"id":"2","slug":"item-name-1","item_name":"Item name 1","product_categories_id":"6","fabrics":"","weight":"","quality":"","standard":"","descriptions":"","qty":"","style":"","is_active":"1","created_at":"2014-01-22 23:37:19","updated_at":"2014-02-19 20:55:45","created_by":"1","updated_by":"1"}', 3, '2014-02-20 04:55:45', 1),
(118, 4, 'products', '{"id":"4","slug":"971519_597301576960553_1902425528_njpg0","item_name":"971519_597301576960553_1902425528_n.jpg0","product_categories_id":"7","fabrics":"","weight":"","quality":"","standard":"","descriptions":"","qty":"","style":"","is_active":"1","created_at":"2014-01-23 03:44:37","updated_at":"2014-02-19 20:56:09","created_by":"1","updated_by":"1"}', 21, '2014-02-20 04:56:09', 1),
(121, 1, 'products', '{"id":"1","slug":"item-name","item_name":"Item name","product_categories_id":"7","fabrics":"Fabrics","weight":"Weight","quality":"ewr","standard":"rew","descriptions":"<p>971519_597301576960553_1902425528_n.jpg<\\/p>","qty":"ewr","style":"ewr","is_active":"1","created_at":"2014-01-09 23:05:25","updated_at":"2014-02-20 04:35:46","created_by":"1","updated_by":"1"}', 14, '2014-02-20 12:35:50', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fuel_blocks`
--

CREATE TABLE IF NOT EXISTS `fuel_blocks` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `view` text COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'english',
  `published` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `date_added` datetime DEFAULT NULL,
  `last_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`,`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fuel_categories`
--

CREATE TABLE IF NOT EXISTS `fuel_categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `slug` varchar(100) NOT NULL DEFAULT '',
  `context` varchar(100) NOT NULL DEFAULT '',
  `precedence` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `published` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `fuel_categories`
--

INSERT INTO `fuel_categories` (`id`, `name`, `slug`, `context`, `precedence`, `parent_id`, `published`) VALUES
(1, 'Hoodie', 'hoodie', '', 0, 0, 'yes'),
(2, 'Duttatex', '971519_597301576960553_1902425528_njpg', '', 0, 1, 'yes'),
(3, 'er', 'er', '', 0, 2, 'yes'),
(4, 'Duttatex', 'duttatex', '', 0, 2, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `fuel_logs`
--

CREATE TABLE IF NOT EXISTS `fuel_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=154 ;

--
-- Dumping data for table `fuel_logs`
--

INSERT INTO `fuel_logs` (`id`, `entry_date`, `user_id`, `message`, `type`) VALUES
(1, '2014-01-08 05:16:52', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(2, '2014-01-08 05:34:50', 1, 'Pages item <em>home</em> edited', 'info'),
(3, '2014-01-08 22:33:31', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(4, '2014-01-08 22:33:48', 1, 'Products Categories item <em>T-shirt</em> edited', 'info'),
(5, '2014-01-08 22:33:58', 1, 'Products Categories item <em>Polo T-Shirt</em> edited', 'info'),
(6, '2014-01-08 22:34:06', 1, 'Products Categories item <em>Raglan</em> edited', 'info'),
(7, '2014-01-08 22:34:14', 1, 'Products Categories item <em>Hoodie</em> edited', 'info'),
(8, '2014-01-08 22:34:21', 1, 'Products Categories item <em>Sweet Shirt</em> edited', 'info'),
(9, '2014-01-08 22:34:46', 1, 'Products Categories item <em>Tank Top</em> edited', 'info'),
(10, '2014-01-08 22:36:28', 1, 'Products Categories item <em>Long Sleeve T-shirt</em> edited', 'info'),
(11, '2014-01-08 22:36:46', 1, 'Products Categories item <em>Tank Top</em> edited', 'info'),
(12, '2014-01-09 21:57:24', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(13, '2014-01-09 23:05:25', 1, 'Products item <em>Item name</em> edited', 'info'),
(14, '2014-01-10 00:33:50', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(15, '2014-01-10 03:12:38', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(16, '2014-01-14 22:11:09', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(17, '2014-01-15 01:21:48', 1, 'Products item <em>Item name</em> edited', 'info'),
(18, '2014-01-15 01:22:04', 1, 'Products item <em>Item name</em> edited', 'info'),
(19, '2014-01-15 01:28:58', 1, 'Products item <em>Item name</em> edited', 'info'),
(20, '2014-01-15 01:29:06', 1, 'Products item <em>Item name</em> edited', 'info'),
(21, '2014-01-15 22:07:54', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(22, '2014-01-21 23:52:58', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(23, '2014-01-22 00:48:05', 1, 'Pages item <em>home</em> edited', 'info'),
(24, '2014-01-22 02:52:30', 1, 'Assets item <em>logo11w.png</em> edited', 'info'),
(25, '2014-01-22 02:52:32', 1, 'Products Images item <em>logo11w.png</em> edited', 'info'),
(26, '2014-01-22 02:53:38', 1, 'Products Images item <em>logo11w.png</em> edited', 'info'),
(27, '2014-01-22 03:17:53', 1, 'Products item <em>Item name</em> edited', 'info'),
(28, '2014-01-22 03:18:03', 1, 'Products item <em>Item name</em> edited', 'info'),
(29, '2014-01-22 03:22:51', 1, 'Products item <em>Item name</em> edited', 'info'),
(30, '2014-01-22 03:42:35', 1, 'Products item <em>Item name</em> edited', 'info'),
(31, '2014-01-22 03:43:10', 1, 'Products item <em>Item name</em> edited', 'info'),
(32, '2014-01-22 04:52:22', 1, 'Products item <em>Item name</em> edited', 'info'),
(33, '2014-01-22 04:56:58', 1, 'Products item <em>Item name</em> edited', 'info'),
(34, '2014-01-22 05:08:27', 1, 'Products item <em>Item name</em> edited', 'info'),
(35, '2014-01-22 21:57:26', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(36, '2014-01-22 23:37:20', 1, 'Products item <em>Item name 1</em> edited', 'info'),
(37, '2014-01-23 02:13:09', 1, 'Products item <em>Item name 1</em> edited', 'info'),
(38, '2014-01-23 02:38:25', 1, 'Products item <em>971519_597301576960553_1902425528_n.jpg</em> edited', 'info'),
(39, '2014-01-23 03:29:29', 1, 'Products item <em>971519_597301576960553_1902425528_n.jpg</em> edited', 'info'),
(40, '2014-01-23 03:44:37', 1, 'Products item <em>971519_597301576960553_1902425528_n.jpg0</em> edited', 'info'),
(41, '2014-01-23 04:16:15', 1, 'Assets item <em>photo.png</em> edited', 'info'),
(42, '2014-01-23 04:28:44', 1, 'Assets item <em>photo_002.png</em> edited', 'info'),
(43, '2014-01-23 04:56:45', 1, 'Products item <em>971519_597301576960553_1902425528_n.jpg0</em> edited', 'info'),
(44, '2014-01-23 05:16:38', 1, 'Products item <em>971519_597301576960553_1902425528_n.jpg0</em> edited', 'info'),
(45, '2014-01-23 05:20:17', 1, 'Products item <em>971519_597301576960553_1902425528_n.jpg0</em> edited', 'info'),
(46, '2014-01-23 05:38:35', 1, 'Products Color Table item <em>sssa</em> edited', 'info'),
(47, '2014-01-23 05:47:14', 1, 'Products Measurement Table item <em>Asian</em> edited', 'info'),
(48, '2014-01-23 05:51:23', 1, 'Products item <em>971519_597301576960553_1902425528_n.jpg0</em> edited', 'info'),
(49, '2014-01-23 06:06:04', 1, 'Products item <em>971519_597301576960553_1902425528_n.jpg0</em> edited', 'info'),
(50, '2014-01-23 21:22:05', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(51, '2014-01-23 21:29:00', 1, 'Products item <em>971519_597301576960553_1902425528_n.jpg0</em> edited', 'info'),
(52, '2014-01-23 21:29:08', 1, 'Products item <em>971519_597301576960553_1902425528_n.jpg0</em> edited', 'info'),
(53, '2014-01-24 00:03:07', 1, 'Products item <em>971519_597301576960553_1902425528_n.jpg0</em> edited', 'info'),
(54, '2014-01-24 00:25:19', 1, 'Products item <em>971519_597301576960553_1902425528_n.jpg0</em> edited', 'info'),
(55, '2014-01-24 00:25:36', 1, 'Products item <em>971519_597301576960553_1902425528_n.jpg0</em> edited', 'info'),
(56, '2014-01-24 00:26:14', 1, 'Products item <em>971519_597301576960553_1902425528_n.jpg0</em> edited', 'info'),
(57, '2014-01-24 00:37:18', 1, 'Products item <em>971519_597301576960553_1902425528_n.jpg0</em> edited', 'info'),
(58, '2014-01-24 00:37:36', 1, 'Products item <em>971519_597301576960553_1902425528_n.jpg0</em> edited', 'info'),
(59, '2014-01-24 00:37:47', 1, 'Products item <em>971519_597301576960553_1902425528_n.jpg0</em> edited', 'info'),
(60, '2014-01-24 00:39:00', 1, 'Products item <em>971519_597301576960553_1902425528_n.jpg0</em> edited', 'info'),
(61, '2014-01-24 00:42:36', 1, 'Products item <em>971519_597301576960553_1902425528_n.jpg0</em> edited', 'info'),
(62, '2014-01-24 01:02:35', 1, 'Products item <em>971519_597301576960553_1902425528_n.jpg0</em> edited', 'info'),
(63, '2014-01-24 01:06:04', 1, 'Products item <em>971519_597301576960553_1902425528_n.jpg0</em> edited', 'info'),
(64, '2014-01-24 01:06:20', 1, 'Products item <em>971519_597301576960553_1902425528_n.jpg0</em> edited', 'info'),
(65, '2014-01-24 02:11:37', 1, '1 item for <em>pages</em> deleted', 'info'),
(66, '2014-01-24 02:12:17', 1, 'Pages item <em>home</em> edited', 'info'),
(67, '2014-01-24 02:12:36', 1, 'Pages item <em>home</em> edited', 'info'),
(68, '2014-01-24 02:21:07', 1, 'Pages item <em>contact</em> edited', 'info'),
(69, '2014-01-24 02:21:19', 1, 'Pages item <em>contact</em> edited', 'info'),
(70, '2014-01-24 02:34:56', 1, '1 item for <em>pages</em> deleted', 'info'),
(71, '2014-01-24 02:38:50', 1, 'Pages item <em>services</em> edited', 'info'),
(72, '2014-01-24 04:55:04', 1, 'Categories item <em>Hoodie</em> edited', 'info'),
(73, '2014-01-24 04:55:16', 1, 'Categories item <em>Duttatex</em> edited', 'info'),
(74, '2014-01-28 21:42:51', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(75, '2014-01-28 21:55:21', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(76, '2014-01-29 03:06:43', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(77, '2014-02-04 22:46:49', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(78, '2014-02-05 04:49:20', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(79, '2014-02-05 04:49:30', 1, 'Products Categories item <em>Hoodie</em> edited', 'info'),
(80, '2014-02-05 04:49:54', 1, 'Products Categories item <em>Long Sleeve T-shirt</em> edited', 'info'),
(81, '2014-02-05 04:50:02', 1, 'Products Categories item <em>Polo T-Shirt</em> edited', 'info'),
(82, '2014-02-05 04:50:08', 1, 'Products Categories item <em>Raglan</em> edited', 'info'),
(83, '2014-02-05 04:50:14', 1, 'Products Categories item <em>Sweet Shirt</em> edited', 'info'),
(84, '2014-02-05 04:50:19', 1, 'Products Categories item <em>T-shirt</em> edited', 'info'),
(85, '2014-02-05 04:50:24', 1, 'Products Categories item <em>Tank Top</em> edited', 'info'),
(86, '2014-02-06 00:25:10', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(87, '2014-02-06 00:59:03', 1, 'Pages item <em>services</em> edited', 'info'),
(88, '2014-02-06 01:03:55', 1, 'Pages item <em>services</em> edited', 'info'),
(89, '2014-02-06 01:09:38', 1, 'Pages item <em>services</em> edited', 'info'),
(90, '2014-02-06 01:25:03', 1, 'Pages item <em>services</em> edited', 'info'),
(91, '2014-02-06 01:25:58', 1, 'Pages item <em>services</em> edited', 'info'),
(92, '2014-02-06 01:30:56', 1, '1 item for <em>pages</em> deleted', 'info'),
(93, '2014-02-06 01:41:53', 1, 'Pages item <em>contact</em> edited', 'info'),
(94, '2014-02-06 01:44:38', 1, 'Pages item <em>contact</em> edited', 'info'),
(95, '2014-02-06 01:44:56', 1, 'Pages item <em>contact</em> edited', 'info'),
(96, '2014-02-06 03:13:04', 1, 'Pages item <em>contact</em> edited', 'info'),
(97, '2014-02-06 03:23:11', 1, 'Pages item <em>contact</em> edited', 'info'),
(98, '2014-02-06 21:16:38', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(99, '2014-02-07 01:40:28', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(100, '2014-02-11 21:59:39', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(101, '2014-02-13 20:01:21', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(102, '2014-02-13 22:04:58', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(103, '2014-02-18 20:59:51', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(104, '2014-02-18 21:24:59', 1, 'Products Categories item <em>Hoodie</em> edited', 'info'),
(105, '2014-02-18 21:35:56', 1, 'Products Categories item <em>Hoodie</em> edited', 'info'),
(106, '2014-02-18 23:44:30', 1, 'Categories item <em>er</em> edited', 'info'),
(107, '2014-02-18 23:44:42', 1, 'Categories item <em>er</em> edited', 'info'),
(108, '2014-02-18 23:58:06', 1, 'Products Categories item <em>Tank Top</em> edited', 'info'),
(109, '2014-02-19 00:33:05', 1, 'Products Categories item <em>erwerewr</em> edited', 'info'),
(110, '2014-02-19 00:33:20', 1, 'Products Categories item <em>erwerew</em> edited', 'info'),
(111, '2014-02-19 00:33:28', 1, 'Products Categories item <em>erewrwer</em> edited', 'info'),
(112, '2014-02-19 00:33:34', 1, 'Products Categories item <em>wereewrew</em> edited', 'info'),
(113, '2014-02-19 00:33:50', 1, 'Products Categories item <em>wery  rtybrtbyt</em> edited', 'info'),
(114, '2014-02-19 00:33:58', 1, 'Products Categories item <em>rtytry</em> edited', 'info'),
(115, '2014-02-19 00:34:20', 1, 'Products Categories item <em>erewrwer</em> edited', 'info'),
(116, '2014-02-19 00:34:26', 1, 'Products Categories item <em>erwerew</em> edited', 'info'),
(117, '2014-02-19 00:34:31', 1, 'Products Categories item <em>erwerewr</em> edited', 'info'),
(118, '2014-02-19 00:34:35', 1, 'Products Categories item <em>Hoodie</em> edited', 'info'),
(119, '2014-02-19 00:34:40', 1, 'Products Categories item <em>Long Sleeve T-shirt</em> edited', 'info'),
(120, '2014-02-19 00:34:46', 1, 'Products Categories item <em>Polo T-Shirt</em> edited', 'info'),
(121, '2014-02-19 00:34:53', 1, 'Products Categories item <em>Raglan</em> edited', 'info'),
(122, '2014-02-19 00:35:01', 1, 'Products Categories item <em>rtytry</em> edited', 'info'),
(123, '2014-02-19 00:35:07', 1, 'Products Categories item <em>Sweet Shirt</em> edited', 'info'),
(124, '2014-02-19 00:35:13', 1, 'Products Categories item <em>T-shirt</em> edited', 'info'),
(125, '2014-02-19 00:35:22', 1, 'Products Categories item <em>wereewrew</em> edited', 'info'),
(126, '2014-02-19 00:35:27', 1, 'Products Categories item <em>wery  rtybrtbyt</em> edited', 'info'),
(127, '2014-02-19 00:37:35', 1, '1 item for <em>products_categories</em> deleted', 'info'),
(128, '2014-02-19 00:37:54', 1, '1 item for <em>products_categories</em> deleted', 'info'),
(129, '2014-02-19 00:38:12', 1, 'Products Categories item <em>erewrwer</em> edited', 'info'),
(130, '2014-02-19 00:38:57', 1, 'Categories item <em>Duttatex</em> edited', 'info'),
(131, '2014-02-19 00:41:59', 1, 'Products Categories item <em>T-shirt1</em> edited', 'info'),
(132, '2014-02-19 00:42:19', 1, 'Products Categories item <em>T-shirt2</em> edited', 'info'),
(133, '2014-02-19 00:42:51', 1, 'Products Categories item <em>T-shirt3</em> edited', 'info'),
(134, '2014-02-19 00:43:11', 1, 'Products Categories item <em>T-shirt 11</em> edited', 'info'),
(135, '2014-02-19 00:43:43', 1, 'Products Categories item <em>T-shirt 12</em> edited', 'info'),
(136, '2014-02-19 00:43:55', 1, 'Products Categories item <em>T-shirt14</em> edited', 'info'),
(137, '2014-02-19 00:44:43', 1, 'Products Categories item <em>T-shirt15</em> edited', 'info'),
(138, '2014-02-19 00:45:00', 1, 'Products Categories item <em>T-shirt 16</em> edited', 'info'),
(139, '2014-02-19 00:45:37', 1, 'Products Categories item <em>T-shirt 21</em> edited', 'info'),
(140, '2014-02-19 00:45:55', 1, 'Products Categories item <em>T-shirt 22</em> edited', 'info'),
(141, '2014-02-19 20:55:26', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(142, '2014-02-19 20:55:45', 1, 'Products item <em>Item name 1</em> edited', 'info'),
(143, '2014-02-19 20:56:09', 1, 'Products item <em>971519_597301576960553_1902425528_n.jpg0</em> edited', 'info'),
(144, '2014-02-19 21:57:26', 1, 'Multiple <em>products_categories</em> deleted', 'info'),
(145, '2014-02-20 02:01:26', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(146, '2014-02-20 02:03:01', 1, 'Products Categories item <em>wereewrew</em> edited', 'info'),
(147, '2014-02-20 02:56:35', 1, 'Products item <em>Item name 1</em> edited', 'info'),
(148, '2014-02-20 04:35:50', 1, 'Products item <em>Item name</em> edited', 'info'),
(149, '2014-02-25 20:14:05', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(150, '2014-02-26 01:23:12', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(151, '2014-02-26 01:25:09', 1, 'Products item <em>Item name</em> edited', 'info'),
(152, '2014-02-26 02:43:39', 1, 'Successful login by ''admin'' from ::1', 'debug'),
(153, '2014-02-26 21:11:50', 1, 'Successful login by ''admin'' from ::1', 'debug');

-- --------------------------------------------------------

--
-- Table structure for table `fuel_navigation`
--

CREATE TABLE IF NOT EXISTS `fuel_navigation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The part of the path after the domain name that you want the link to go to (e.g. comany/about_us)',
  `group_id` int(5) unsigned NOT NULL DEFAULT '1',
  `nav_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The nav key is a friendly ID that you can use for setting the selected state. If left blank, a default value will be set for you.',
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The name you want to appear in the menu',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Used for creating menu hierarchies. No value means it is a root level menu item',
  `precedence` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The higher the number, the greater the precedence and farther up the list the navigational element will appear',
  `attributes` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Extra attributes that can be used for navigation implementation',
  `selected` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The pattern to match for the active state. Most likely you leave this field blank',
  `hidden` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no' COMMENT 'A hidden value can be used in rendering the menu. In some areas, the menu item may not want to be displayed',
  `language` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'english',
  `published` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes' COMMENT 'Determines whether the item is displayed or not',
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`location`,`parent_id`,`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fuel_navigation_groups`
--

CREATE TABLE IF NOT EXISTS `fuel_navigation_groups` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `published` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `fuel_navigation_groups`
--

INSERT INTO `fuel_navigation_groups` (`id`, `name`, `published`) VALUES
(1, 'main', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `fuel_pages`
--

CREATE TABLE IF NOT EXISTS `fuel_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Add the part of the url after the root of your site (usually after the domain name). For the homepage, just put the word ''home''',
  `layout` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The name of the template to associate with this page',
  `published` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes' COMMENT 'A ''yes'' value will display the page and an ''no'' value will give a 404 error message',
  `cache` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes' COMMENT 'Cache controls whether the page will pull from the database or from a saved file which is more effeicent. If a page has content that is dynamic, it''s best to set cache to ''no''',
  `date_added` datetime DEFAULT NULL,
  `last_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_modified_by` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `location` (`location`),
  KEY `layout` (`layout`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `fuel_pages`
--

INSERT INTO `fuel_pages` (`id`, `location`, `layout`, `published`, `cache`, `date_added`, `last_modified`, `last_modified_by`) VALUES
(4, 'home', 'SIATEX', 'yes', 'no', '2014-01-24 02:12:09', '2014-01-23 20:12:36', 1),
(6, 'contact', 'SIATEX_CONTACT', 'yes', 'no', '2014-02-06 01:37:31', '2014-02-05 21:23:11', 1),
(5, 'services', 'SIATEX_SERVICES', 'yes', 'no', '2014-01-24 02:38:45', '2014-02-05 19:25:58', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fuel_page_variables`
--

CREATE TABLE IF NOT EXISTS `fuel_page_variables` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(10) unsigned NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('string','int','boolean','array') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'string',
  `language` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'english',
  `active` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `page_id` (`page_id`,`name`,`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=125 ;

--
-- Dumping data for table `fuel_page_variables`
--

INSERT INTO `fuel_page_variables` (`id`, `page_id`, `name`, `scope`, `value`, `type`, `language`, `active`) VALUES
(43, 4, 'body_class', '', '', 'string', 'english', 'yes'),
(42, 4, 'body', '', '', 'string', 'english', 'yes'),
(39, 4, 'meta_description', '', '', 'string', 'english', 'yes'),
(40, 4, 'meta_keywords', '', '', 'string', 'english', 'yes'),
(122, 6, 'page_title', '', 'Contact', 'string', 'english', 'yes'),
(41, 4, 'heading', '', '', 'string', 'english', 'yes'),
(38, 4, 'page_title', '', '', 'string', 'english', 'yes'),
(123, 6, 'meta_description', '', 'contact', 'string', 'english', 'yes'),
(90, 5, 'page_title', '', 'Service', 'string', 'english', 'yes'),
(91, 5, 'meta_description', '', 'Service', 'string', 'english', 'yes'),
(92, 5, 'meta_keywords', '', 'Service', 'string', 'english', 'yes'),
(93, 5, 'body', '', '<div class="services_tex_box_one"><strong>Textile Knitting Service </strong><br />\r\nOne of our company''s prime goals is to sell out the knitted fabric that we produce and help garments companies'' who wants to have their own stock of thread be turned into a set of useful cloths.</div>\r\n\r\n<div class="services_tex_box_one services_tex_box_two"><strong>T-shirts Manufacturing</strong><br />\r\nBe it plain white t-shirts, plain coloured t-shirts, v neck shirts, shirts with print, striped shirts and or t-shirts with embroidery we can work on it. Even if you have a specific colour preference. We can still produce the product the way you want it.</div>\r\n\r\n<div class="services_tex_box_one services_tex_box_three"><strong>Producing Polo shirts</strong><br />\r\nTell us how you want the polo shirts to look like and we will do it. We can also copy even the most unique shade of colour that you like. Our minimum order quantity for fabric colouring is just 5 rolls of fabric per colour.</div>\r\n<div class="services_tex_box_one services_tex_box_three"><strong>Producing Polo shirts</strong><br />\r\nTell us how you want the polo shirts to look like and we will do it. We can also copy even the most unique shade of colour that you like. Our minimum order quantity for fabric colouring is just 5 rolls of fabric per colour.</div>', 'string', 'english', 'yes'),
(94, 5, 'body_class', '', '', 'string', 'english', 'yes'),
(121, 6, 'google_map', '', '<p><iframe frameborder="0" height="200" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d228.20480189549002!2d90.41002858116521!3d23.773154544189918!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c779b7af66df%3A0xf4e61e25c3a8f0ac!2sHouse+17+Road+No+6!5e0!3m2!1sen!2s!4v1391685454738" style="border:0" width="588"></iframe></p>', 'string', 'english', 'yes'),
(120, 6, 'body', '', '<h4>Head Office</h4>\r\n\r\n<p>Siatex Bangladesh Limited</p>\r\n\r\n<p>House # 8, Road # 6, BLK "E"</p>\r\n\r\n<p>Dhaka-1212. Bangladesh.</p>\r\n\r\n<p>Phone: (+880-2) 985-9720</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h4>Canada Sales Office</h4>\r\n\r\n<p>APTEX Canada Limited</p>\r\n\r\n<p>22 Hagley Road</p>\r\n\r\n<p>Toronto, M1M 1S9</p>\r\n\r\n<p>ON Canada</p>', 'string', 'english', 'yes'),
(124, 6, 'meta_keywords', '', 'contact', 'string', 'english', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `fuel_permissions`
--

CREATE TABLE IF NOT EXISTS `fuel_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'In most cases, this should be the name of the module (e.g. news)',
  `active` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=36 ;

--
-- Dumping data for table `fuel_permissions`
--

INSERT INTO `fuel_permissions` (`id`, `description`, `name`, `active`) VALUES
(1, 'Pages', 'pages', 'yes'),
(2, 'Pages: Create', 'pages/create', 'yes'),
(3, 'Pages: Edit', 'pages/edit', 'yes'),
(4, 'Pages: Publish', 'pages/publish', 'yes'),
(5, 'Pages: Delete', 'pages/delete', 'yes'),
(6, 'Blocks', 'blocks', 'yes'),
(7, 'Blocks: Create', 'blocks/create', 'yes'),
(8, 'Blocks: Edit', 'blocks/edit', 'yes'),
(9, 'Blocks: Publish', 'blocks/publish', 'yes'),
(10, 'Blocks: Delete', 'blocks/delete', 'yes'),
(11, 'Navigation', 'navigation', 'yes'),
(12, 'Navigation: Create', 'navigation/create', 'yes'),
(13, 'Navigation: Edit', 'navigation/edit', 'yes'),
(14, 'Navigation: Publish', 'navigation/publish', 'yes'),
(15, 'Navigation: Delete', 'navigation/delete', 'yes'),
(16, 'Categories', 'categories', 'yes'),
(17, 'Categories: Create', 'categories/create', 'yes'),
(18, 'Categories: Edit', 'categories/edit', 'yes'),
(19, 'Categories: Publish', 'categories/publish', 'yes'),
(20, 'Categories: Delete', 'categories/delete', 'yes'),
(21, 'Tags', 'tags', 'yes'),
(22, 'Tags: Create', 'tags/create', 'yes'),
(23, 'Tags: Edit', 'tags/edit', 'yes'),
(24, 'Tags: Publish', 'tags/publish', 'yes'),
(25, 'Tags: Delete', 'tags/delete', 'yes'),
(26, 'Site Variables', 'sitevariables', 'yes'),
(27, 'Assets', 'assets', 'yes'),
(28, 'Site Documentation', 'site_docs', 'yes'),
(29, 'Users', 'users', 'yes'),
(30, 'Permissions', 'permissions', 'yes'),
(31, 'Manage', 'manage', 'yes'),
(32, 'Cache', 'manage/cache', 'yes'),
(33, 'Logs', 'logs', 'yes'),
(34, 'Settings', 'settings', 'yes'),
(35, 'Generate Code', 'generate', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `fuel_relationships`
--

CREATE TABLE IF NOT EXISTS `fuel_relationships` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `candidate_table` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `candidate_key` int(11) NOT NULL,
  `foreign_table` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foreign_key` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `candidate_table` (`candidate_table`,`candidate_key`),
  KEY `foreign_table` (`foreign_table`,`foreign_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fuel_settings`
--

CREATE TABLE IF NOT EXISTS `fuel_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `key` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `module` (`module`,`key`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `fuel_settings`
--

INSERT INTO `fuel_settings` (`id`, `module`, `key`, `value`) VALUES
(3, 'fuel', 'site_name', ''),
(4, 'fuel', 'modules_allowed', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `fuel_site_variables`
--

CREATE TABLE IF NOT EXISTS `fuel_site_variables` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'leave blank if you want the variable to be available to all pages',
  `active` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fuel_tags`
--

CREATE TABLE IF NOT EXISTS `fuel_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `precedence` int(11) NOT NULL,
  `published` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fuel_users`
--

CREATE TABLE IF NOT EXISTS `fuel_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `reset_key` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `super_admin` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `active` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `fuel_users`
--

INSERT INTO `fuel_users` (`id`, `user_name`, `password`, `email`, `first_name`, `last_name`, `language`, `reset_key`, `salt`, `super_admin`, `active`) VALUES
(1, 'admin', 'da6e6eb80fcb14aa369eb57075c49c34f3a5ac9b', 'info@getfuelcms.com', 'Admin', 'test', 'english', '', '9438da166c07475e80d9eb72eaccffcc', 'yes', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `product_categories_id` int(11) NOT NULL,
  `fabrics` varchar(255) NOT NULL,
  `weight` varchar(255) NOT NULL,
  `quality` varchar(255) NOT NULL,
  `standard` varchar(255) NOT NULL,
  `descriptions` text NOT NULL,
  `qty` varchar(255) NOT NULL,
  `style` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `slug`, `item_name`, `product_categories_id`, `fabrics`, `weight`, `quality`, `standard`, `descriptions`, `qty`, `style`, `is_active`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'item-name', 'Item name', 7, 'Fabrics', 'Weight', 'ewr', 'rew', '<p>971519_597301576960553_1902425528_n.jpg</p>', 'ewr', 'ewr', 1, '2014-01-09 23:05:25', '2014-02-26 01:25:07', 1, 1),
(2, 'item-name-1', 'Item name 1', 6, '', '', '', '', '', '', '', 1, '2014-01-22 23:37:19', '2014-02-20 02:56:35', 1, 1),
(3, '971519_597301576960553_1902425528_njpg', '971519_597301576960553_1902425528_n.jpg', 6, '', '', '', '', '', '', '', 1, '2014-01-23 02:38:25', '2014-01-23 03:29:29', 1, 1),
(4, '971519_597301576960553_1902425528_njpg0', '971519_597301576960553_1902425528_n.jpg0', 7, '', '', '', '', '', '', '', 1, '2014-01-23 03:44:37', '2014-02-19 20:56:09', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products_categories`
--

CREATE TABLE IF NOT EXISTS `products_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `precedence` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `slug_2` (`slug`),
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `products_categories`
--

INSERT INTO `products_categories` (`id`, `slug`, `name`, `is_active`, `created_at`, `updated_at`, `created_by`, `updated_by`, `precedence`, `parent_id`) VALUES
(1, 't-shirt', 'T-shirt', 1, '2014-01-08 22:33:48', '2014-02-19 00:35:13', 1, 1, 0, 0),
(2, 'polo-t-shirt', 'Polo T-Shirt', 1, '2014-01-08 22:33:58', '2014-02-19 00:34:46', 1, 1, 0, 0),
(3, 'raglan', 'Raglan', 1, '2014-01-08 22:34:06', '2014-02-19 00:34:53', 1, 1, 0, 1),
(4, 'hoodie', 'Hoodie', 1, '2014-01-08 22:34:14', '2014-02-19 00:34:35', 1, 1, 0, 7),
(5, 'sweet-shirt', 'Sweet Shirt', 1, '2014-01-08 22:34:21', '2014-02-19 00:35:07', 1, 1, 0, 0),
(6, 'tank-top', 'Tank Top', 1, '2014-01-08 22:34:46', '2014-02-18 23:58:06', 1, 1, 0, 3),
(7, 'long-sleeve-t-shirt', 'Long Sleeve T-shirt', 1, '2014-01-08 22:36:28', '2014-02-19 00:34:39', 1, 1, 0, 0),
(8, 'erwerewr', 'erwerewr', 1, '2014-02-19 00:33:05', '2014-02-19 00:34:31', 1, 1, 0, 4),
(11, 'wereewrew', 'wereewrew', 1, '2014-02-19 00:33:34', '2014-02-20 02:03:01', 1, 1, 0, 0),
(13, 'rtytry', 'rtytry', 1, '2014-02-19 00:33:58', '2014-02-19 00:35:01', 1, 1, 0, 4),
(15, 't-shirt1', 'T-shirt1', 1, '2014-02-19 00:41:59', '2014-02-19 00:41:59', 1, 1, 0, 1),
(16, 't-shirt2', 'T-shirt2', 1, '2014-02-19 00:42:19', '2014-02-19 00:42:19', 1, 1, 0, 1),
(17, 't-shirt3', 'T-shirt3', 1, '2014-02-19 00:42:50', '2014-02-19 00:42:50', 1, 1, 0, 1),
(18, 't-shirt-11', 'T-shirt 11', 1, '2014-02-19 00:43:11', '2014-02-19 00:43:11', 1, 1, 0, 15),
(19, 't-shirt-12', 'T-shirt 12', 1, '2014-02-19 00:43:43', '2014-02-19 00:43:43', 1, 1, 0, 15),
(20, 't-shirt14', 'T-shirt14', 1, '2014-02-19 00:43:55', '2014-02-19 00:43:55', 1, 1, 0, 15),
(21, 't-shirt15', 'T-shirt15', 1, '2014-02-19 00:44:43', '2014-02-19 00:44:43', 1, 1, 0, 15),
(22, 't-shirt-16', 'T-shirt 16', 0, '2014-02-19 00:45:00', '2014-02-19 00:45:00', 1, 1, 0, 15),
(23, 't-shirt-21', 'T-shirt 21', 1, '2014-02-19 00:45:37', '2014-02-19 00:45:37', 1, 1, 0, 16),
(24, 't-shirt-22', 'T-shirt 22', 1, '2014-02-19 00:45:54', '2014-02-19 00:45:54', 1, 1, 0, 16);

-- --------------------------------------------------------

--
-- Table structure for table `products_color_table`
--

CREATE TABLE IF NOT EXISTS `products_color_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `color_code` varchar(25) NOT NULL,
  `color_image` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `products_color_table`
--

INSERT INTO `products_color_table` (`id`, `products_id`, `color_code`, `color_image`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 3, 'sssa', '971519_597301576960553_1902425528_n.jpg', '0000-00-00 00:00:00', 0, '2014-01-23 05:38:35', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products_images`
--

CREATE TABLE IF NOT EXISTS `products_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `item_image` varchar(250) CHARACTER SET utf8 NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `products_images`
--

INSERT INTO `products_images` (`id`, `products_id`, `item_image`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(8, 1, 'logo11w.png', '2014-02-26 01:25:07', 1, '2014-02-26 01:25:07', 1),
(9, 1, 'about_payment.jpg', '2014-02-26 01:25:07', 1, '2014-02-26 01:25:07', 1),
(10, 1, 'color_2.jpg', '2014-02-26 01:25:07', 1, '2014-02-26 01:25:07', 1),
(11, 1, 'color_3.jpg', '2014-02-26 01:25:07', 1, '2014-02-26 01:25:07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products_measurement_table`
--

CREATE TABLE IF NOT EXISTS `products_measurement_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `products_id` int(11) DEFAULT NULL,
  `product_categories_id` int(11) DEFAULT NULL,
  `type` enum('Asian','Europe','American B','American R') NOT NULL,
  `size` enum('S','L','M','XL','XXL','3XL') NOT NULL,
  `length` int(11) NOT NULL,
  `chest` int(11) NOT NULL,
  `sleeve` int(11) NOT NULL,
  `price` decimal(10,0) DEFAULT '0',
  `black_price` double(10,2) DEFAULT '0.00',
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `products_measurement_table`
--

INSERT INTO `products_measurement_table` (`id`, `products_id`, `product_categories_id`, `type`, `size`, `length`, `chest`, `sleeve`, `price`, `black_price`, `updated_by`, `updated_at`, `created_by`, `created_at`) VALUES
(1, 3, 0, 'Asian', 'S', 12, 12, 12, '2', 0.00, 1, '2014-01-23 05:47:14', 0, '0000-00-00 00:00:00'),
(9, 2, NULL, 'Asian', 'S', 4, 45, 45, '45', 5.00, 1, '2014-02-20 02:56:35', 1, '2014-02-20 02:56:35'),
(29, 1, NULL, 'Asian', 'S', 12, 324, 234, '234', 324.00, 1, '2014-02-26 01:25:07', 1, '2014-02-26 01:25:07'),
(30, 1, NULL, 'Asian', 'L', 234, 324, 4324, '324', 34.00, 1, '2014-02-26 01:25:07', 1, '2014-02-26 01:25:07'),
(31, 1, NULL, 'Asian', 'M', 234, 3243, 324, '342', 342.00, 1, '2014-02-26 01:25:07', 1, '2014-02-26 01:25:07'),
(32, 1, NULL, 'Asian', 'XL', 234, 324, 324, '34', 324.00, 1, '2014-02-26 01:25:08', 1, '2014-02-26 01:25:08'),
(33, 1, NULL, 'Asian', 'XXL', 324, 3243, 2432, '243', 24.00, 1, '2014-02-26 01:25:08', 1, '2014-02-26 01:25:08'),
(34, 1, NULL, 'Europe', 'S', 243, 324, 432, '432', 43.00, 1, '2014-02-26 01:25:08', 1, '2014-02-26 01:25:08'),
(35, 1, NULL, 'Europe', 'L', 324, 32432, 4324, '3243', 3434.00, 1, '2014-02-26 01:25:08', 1, '2014-02-26 01:25:08'),
(36, 1, NULL, 'Europe', 'M', 324, 32432, 432, '4324', 33424.00, 1, '2014-02-26 01:25:08', 1, '2014-02-26 01:25:08'),
(37, 1, NULL, 'Europe', 'XL', 343, 2432, 432, '34', 324.00, 1, '2014-02-26 01:25:08', 1, '2014-02-26 01:25:08'),
(38, 1, NULL, 'Europe', 'XXL', 324, 324, 3243, '243', 2324.00, 1, '2014-02-26 01:25:08', 1, '2014-02-26 01:25:08'),
(39, 1, NULL, 'Europe', '3XL', 32432, 4324, 32432, '432', 3424.00, 1, '2014-02-26 01:25:08', 1, '2014-02-26 01:25:08'),
(40, 1, NULL, 'American B', 'S', 34, 3243, 2432, '432', 43.00, 1, '2014-02-26 01:25:08', 1, '2014-02-26 01:25:08'),
(41, 1, NULL, 'American B', 'L', 32, 4324, 43243, '324', 2434.00, 1, '2014-02-26 01:25:08', 1, '2014-02-26 01:25:08'),
(42, 1, NULL, 'American B', 'M', 324324, 324, 32432, '324', 342.00, 1, '2014-02-26 01:25:08', 1, '2014-02-26 01:25:08'),
(43, 1, NULL, 'American B', 'XL', 34324, 32432, 4324, '3424', 34.00, 1, '2014-02-26 01:25:08', 1, '2014-02-26 01:25:08'),
(44, 1, NULL, 'American B', 'XXL', 32432, 4324, 32432, '4324', 342.00, 1, '2014-02-26 01:25:08', 1, '2014-02-26 01:25:08'),
(45, 1, NULL, 'American B', '3XL', 324, 32432, 4324, '32432', 434.00, 1, '2014-02-26 01:25:08', 1, '2014-02-26 01:25:08'),
(46, 1, NULL, 'American R', 'S', 23432, 432, 324, '342', 32432.00, 1, '2014-02-26 01:25:08', 1, '2014-02-26 01:25:08'),
(47, 1, NULL, 'American R', 'L', 32432, 454, 3543, '5435', 545.00, 1, '2014-02-26 01:25:09', 1, '2014-02-26 01:25:09');

-- --------------------------------------------------------

--
-- Table structure for table `products_order`
--

CREATE TABLE IF NOT EXISTS `products_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `customer_name` int(11) NOT NULL,
  `customer_phone` int(11) NOT NULL,
  `customer_email` int(11) NOT NULL,
  `customer_address` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
