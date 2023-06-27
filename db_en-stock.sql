-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 27, 2023 at 06:31 AM
-- Server version: 5.7.40
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_stock`
--

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

DROP TABLE IF EXISTS `attributes`;
CREATE TABLE IF NOT EXISTS `attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `active`) VALUES
(5, 'ชั้น', 1);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_value`
--

DROP TABLE IF EXISTS `attribute_value`;
CREATE TABLE IF NOT EXISTS `attribute_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) NOT NULL,
  `attribute_parent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attribute_value`
--

INSERT INTO `attribute_value` (`id`, `value`, `attribute_parent_id`) VALUES
(5, 'ชั้นที่ #1', 2),
(6, 'ชั้นที่ #2', 2),
(7, '1', 3),
(8, '2', 3),
(9, 'ชั้นที่ #3', 2),
(10, 'ชั้นที่ #4', 2),
(12, 'ชั้นที่ #5', 2),
(14, 'ชั้น บน', 1),
(15, 'ชั้น ล่าง', 1),
(20, 'ล็อกเกอร์เหล็ก', 2),
(21, 'ชั้น 1', 4),
(22, 'ชั้น 2', 4),
(23, 'ชั้น 3', 4),
(24, 'ชั้น 4', 4),
(25, 'ชั้น 5', 4),
(26, 'ชั้น 6', 4),
(27, '3', 3),
(28, '4', 3),
(29, 'ชั้นล่าง', 5),
(30, 'ชั้นบน', 5),
(31, 'รอบนอก', 5),
(35, '1', 6),
(36, '2', 6),
(37, '3', 6),
(38, '4', 6),
(39, '5', 6),
(40, '6', 6),
(41, '1', 7),
(42, '2', 7),
(43, '3', 7),
(44, '4', 7),
(45, '5', 7),
(46, '6', 7);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `active`) VALUES
(4, 'นิปเปิ้ล', 1),
(5, 'ข้อต่อตรง', 1),
(6, 'ข้องอ', 1),
(7, 'ยูเนี่ยน', 1),
(8, 'ข้อต่อสามทาง', 1),
(9, 'เฟอร์รูล', 1),
(10, 'สารหล่อลื่น', 1),
(11, 'สี', 1),
(12, 'ท่อ', 1),
(13, 'สายไฟ', 1),
(14, 'อื่นๆ', 1),
(15, 'ข้อลดกลม', 1),
(16, 'ข้อลดเหลี่ยม', 1),
(17, 'หน้าแปลน', 1),
(18, 'ปลั๊กอุด', 1),
(19, 'ฝาครอบ', 1),
(20, 'บอลวาล์ว', 1),
(21, 'ก้ามปู', 1),
(22, 'ข้อต่อเข้ากล่อง', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `active`) VALUES
(4, 'กาวาไนท์', 1),
(5, 'สตีม', 1),
(6, 'สแตนเลส', 1),
(9, 'สเปรย์กระป๋อง', 1),
(10, 'อุปกรณ์ไฟฟ้า', 1),
(12, 'อุปกรณ์ก่อสร้าง', 1),
(13, 'PVC', 1);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
CREATE TABLE IF NOT EXISTS `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) NOT NULL,
  `service_charge_value` varchar(255) NOT NULL,
  `vat_charge_value` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `currency` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `company_name`, `service_charge_value`, `vat_charge_value`, `address`, `phone`, `country`, `message`, `currency`) VALUES
(1, 'บริษัท นอร์ธเทอร์น ฟู้ด คอมเพล็กซ์ จำกัด', '0', '0', '99/3 ถนนเชียงราย- ดงมะดะ ต. แม่กรณ์ อ.เมือง จ.เชียงราย 57000', '053673985', 'Thailand', '..', 'THB');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `group_name`, `permission`) VALUES
(1, 'Administrator', 'a:36:{i:0;s:10:\"createUser\";i:1;s:10:\"updateUser\";i:2;s:8:\"viewUser\";i:3;s:10:\"deleteUser\";i:4;s:11:\"createGroup\";i:5;s:11:\"updateGroup\";i:6;s:9:\"viewGroup\";i:7;s:11:\"deleteGroup\";i:8;s:11:\"createBrand\";i:9;s:11:\"updateBrand\";i:10;s:9:\"viewBrand\";i:11;s:11:\"deleteBrand\";i:12;s:14:\"createCategory\";i:13;s:14:\"updateCategory\";i:14;s:12:\"viewCategory\";i:15;s:14:\"deleteCategory\";i:16;s:11:\"createStore\";i:17;s:11:\"updateStore\";i:18;s:9:\"viewStore\";i:19;s:11:\"deleteStore\";i:20;s:15:\"createAttribute\";i:21;s:15:\"updateAttribute\";i:22;s:13:\"viewAttribute\";i:23;s:15:\"deleteAttribute\";i:24;s:13:\"createProduct\";i:25;s:13:\"updateProduct\";i:26;s:11:\"viewProduct\";i:27;s:13:\"deleteProduct\";i:28;s:11:\"createOrder\";i:29;s:11:\"updateOrder\";i:30;s:9:\"viewOrder\";i:31;s:11:\"deleteOrder\";i:32;s:11:\"viewReports\";i:33;s:13:\"updateCompany\";i:34;s:11:\"viewProfile\";i:35;s:13:\"updateSetting\";}'),
(4, 'engineer', 'a:28:{i:0;s:11:\"createBrand\";i:1;s:11:\"updateBrand\";i:2;s:9:\"viewBrand\";i:3;s:11:\"deleteBrand\";i:4;s:14:\"createCategory\";i:5;s:14:\"updateCategory\";i:6;s:12:\"viewCategory\";i:7;s:14:\"deleteCategory\";i:8;s:11:\"createStore\";i:9;s:11:\"updateStore\";i:10;s:9:\"viewStore\";i:11;s:11:\"deleteStore\";i:12;s:15:\"createAttribute\";i:13;s:15:\"updateAttribute\";i:14;s:13:\"viewAttribute\";i:15;s:15:\"deleteAttribute\";i:16;s:13:\"createProduct\";i:17;s:13:\"updateProduct\";i:18;s:11:\"viewProduct\";i:19;s:13:\"deleteProduct\";i:20;s:11:\"createOrder\";i:21;s:11:\"updateOrder\";i:22;s:9:\"viewOrder\";i:23;s:11:\"deleteOrder\";i:24;s:11:\"viewReports\";i:25;s:13:\"updateCompany\";i:26;s:11:\"viewProfile\";i:27;s:13:\"updateSetting\";}'),
(5, 'user', 'a:4:{i:0;s:11:\"createOrder\";i:1;s:9:\"viewOrder\";i:2;s:11:\"viewProfile\";i:3;s:13:\"updateSetting\";}');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bill_no` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `date_time` varchar(255) NOT NULL,
  `gross_amount` varchar(255) NOT NULL,
  `service_charge_rate` varchar(255) NOT NULL,
  `service_charge` varchar(255) NOT NULL,
  `vat_charge_rate` varchar(255) NOT NULL,
  `vat_charge` varchar(255) NOT NULL,
  `net_amount` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `paid_status` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `bill_no`, `customer_name`, `customer_address`, `customer_phone`, `date_time`, `gross_amount`, `service_charge_rate`, `service_charge`, `vat_charge_rate`, `vat_charge`, `net_amount`, `discount`, `paid_status`, `user_id`) VALUES
(1, 'EN-3661A', 'มานพ ศรีจุมปา', 'ตัดต่อสตีมกรอง 1', '', '1675743487', '345.00', '0', '0', '0', '0', '345.00', '', 1, 1),
(2, 'EN-22F8A', 'มานพ ศรีจุมปา', 'แก้ไขปั๊มลม B2', '', '1675743546', '65.00', '0', '0', '0', '0', '65.00', '', 1, 1),
(3, 'EN-58F58', 'ยศพนธ์ โพธิ', 'ทาสี ถังขยะ', '', '1675991894', '120.00', '0', '0', '0', '0', '120.00', '', 1, 1),
(4, 'EN-D5611', 'นาย เจษกร คำวรรณ์', 'พ่นสีตู้เก็บสารเคมี', '', '1676100375', '120.00', '0', '0', '0', '0', '120.00', '', 1, 1),
(5, 'EN-9056F', 'นาย ณัฐพล ขันเขียว', 'ติดตั้งถังกรองตะกอน', '', '1676453917', '1605.00', '0', '0', '0', '0', '1605.00', '', 1, 1),
(6, 'EN-DB531', 'สาวิกา พินิจ', 'พ่นถัง 1000 L', '', '1676515938', '240.00', '0', '0', '0', '0', '240.00', '', 1, 1),
(7, 'EN-51981', 'เจษกร คำวรรณ์ ', 'ซ่อมท่อปั๊ม บ่อ A B', '', '1676533661', '160.00', '0', '0', '0', '0', '160.00', '', 1, 1),
(8, 'EN-FB070', 'สราวุฒิ โฆษิตเกียรติคุณ', '', '', '1676710076', '10.00', '0', '0', '0', '0', '10.00', '', 1, 1),
(9, 'EN-38975', 'พงศภัค สมใหม่', 'เอาไปพ่นสี', '', '1677050961', '120.00', '0', '0', '0', '0', '120.00', '', 1, 1),
(10, 'EN-D8F70', 'สุพจน์ ช่างฆ้อง', 'ทำสีขาค้ำยันรางสายพานลำเรียงขวดแก้ว', '', '1677051077', '1150.00', '0', '0', '0', '0', '1150.00', '', 1, 1),
(11, 'EN-3049B', 'ณัฐพล ขันเขียว', 'เดินสายไฟวาล์วคอนโทรลสเปรย์น้ำ', '', '1687768923', '0.00', '0', '0', '0', '0', '0.00', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders_item`
--

DROP TABLE IF EXISTS `orders_item`;
CREATE TABLE IF NOT EXISTS `orders_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders_item`
--

INSERT INTO `orders_item` (`id`, `order_id`, `product_id`, `qty`, `rate`, `amount`) VALUES
(87, 12, 20, '3', '9900', '29700.00'),
(90, 13, 5, '1', '35', '35.00'),
(91, 13, 18, '2', '300', '300.00'),
(94, 1, 18, '1', '195', '195.00'),
(95, 1, 28, '1', '150', '150.00'),
(97, 2, 15, '1', '65', '65.00'),
(101, 4, 53, '1', '120', '120.00'),
(102, 3, 54, '1', '120', '120.00'),
(109, 5, 127, '1', '50', '50.00'),
(110, 5, 128, '1', '75', '75.00'),
(111, 5, 110, '1', '50', '50.00'),
(112, 5, 109, '1', '30', '30.00'),
(113, 5, 2, '10', '80', '800.00'),
(114, 5, 7, '2', '300', '600.00'),
(119, 6, 51, '2', '120', '240.00'),
(121, 7, 4, '1', '95', '95.00'),
(122, 7, 15, '1', '65', '65.00'),
(126, 8, 34, '1', '10', '10.00'),
(129, 9, 49, '1', '120', '120.00'),
(130, 10, 82, '1', '1150', '1150.00'),
(135, 11, 19, '2', '100', '200.00'),
(136, 11, 298, '5', '0', '0.00'),
(137, 11, 288, '14', '0', '0.00'),
(138, 11, 310, '12', '0', '0.00'),
(139, 11, 294, '1', '0', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `description` text NOT NULL,
  `attribute_value_id` text,
  `brand_id` text NOT NULL,
  `category_id` text NOT NULL,
  `store_id` int(11) NOT NULL,
  `availability` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=357 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `sku`, `price`, `qty`, `image`, `description`, `attribute_value_id`, `brand_id`, `category_id`, `store_id`, `availability`) VALUES
(1, 'เฟอร์รูล 316L 25 mm', 'ENJO-SL-047', '70', '19', 'assets/images/product_image/63e3037d8a53c.jpg', '<p><img alt=\"\" src=\"https://www.bestconveyorcenter.com/shop/conveyor-component/sf-25/\">&nbsp;<br></p>', '[\"15\",\"6\",\"7\",\"21\"]', '[\"9\"]', '[\"6\"]', 3, 1),
(2, 'เฟอร์รูล 316L 38 mm', 'ENJO-SL-008', '80', '18', 'assets/images/product_image/63ca12b66b4c0.jpg', '', '[\"15\",\"6\",\"7\",\"21\"]', '[\"9\"]', '[\"6\"]', 3, 1),
(3, 'เฟอร์รูล 316L 76 mm', 'ENJO-SL-115', '150', '11', 'assets/images/product_image/63ca1532a6f07.jpg', '', '[\"15\",\"6\",\"7\",\"21\"]', '[\"9\"]', '[\"6\"]', 3, 1),
(4, 'เฟอร์รูล 316L 51 mm', 'ENJO-SL-007', '95', '133', 'assets/images/product_image/63ca1561ba5e4.jpg', '', '[\"15\",\"6\",\"7\",\"21\"]', '[\"9\"]', '[\"6\"]', 3, 1),
(5, 'เฟอร์รูล 316L 101.6 mm', 'ENJO-SL-085', '175', '7', 'assets/images/product_image/63ca15b626c4e.jpg', '', '[\"15\",\"6\",\"7\",\"21\"]', '[\"9\"]', '[\"6\"]', 3, 1),
(6, 'เฟอร์รูล+แคลมป์ 316L 25 mm ครบชุด', 'ENJO-SL-137', '250', '10', 'assets/images/product_image/63e30526dd620.jpg', '', '[\"15\",\"6\",\"7\",\"21\"]', '[\"9\"]', '[\"6\"]', 3, 1),
(7, 'เฟอร์รูล+แคลมป์ 316L 38 mm ครบชุด', 'ENJO-SL-009', '300', '35', 'assets/images/product_image/63ca163deada4.jpg', '', '[\"15\",\"6\",\"7\",\"21\"]', '[\"9\"]', '[\"6\"]', 3, 1),
(8, 'เฟอร์รูล+แคลมป์ 316L 51 mm ครบชุด', 'ENJO-SL-010', '370', '20', 'assets/images/product_image/63ca167f4fc25.jpg', '', '[\"15\",\"6\",\"7\",\"21\"]', '[\"9\"]', '[\"6\"]', 3, 1),
(9, 'เฟอร์รูล+แคลมป์ 316L 76 mm ครบชุด', 'ENJO-SL-125', '550', '3', 'assets/images/product_image/63ca16b84ff41.jpg', '', '[\"15\",\"6\",\"7\",\"21\"]', '[\"9\"]', '[\"6\"]', 3, 1),
(10, 'เฟอร์รูล+แคลมป์ 316L 101.6 mm ครบชุด', 'ENJO-SL-084', '680', '10', 'assets/images/product_image/63ca16e69b7b1.jpg', '', '[\"15\",\"6\",\"7\",\"21\"]', '[\"9\"]', '[\"6\"]', 3, 1),
(11, 'นิปเปิ้ล สแตนเลส 1/4', 'ENJO-SL-024', '25', '7', 'assets/images/product_image/63ca1aec36ec2.jpg', '', '[\"15\",\"6\",\"7\",\"22\"]', '[\"4\"]', '[\"6\"]', 3, 1),
(12, 'นิปเปิ้ล สแตนเลส 3/8', 'ENJO-SL-052', '23', '8', 'assets/images/product_image/63ca1b322f1cf.jpg', '', '[\"15\",\"6\",\"7\",\"22\"]', '[\"4\"]', '[\"6\"]', 3, 1),
(13, 'นิปเปิ้ล สแตนเลส 1/2', 'ENJO-SL-025', '38', '11', 'assets/images/product_image/63ca1bab277f6.jpg', '', '[\"15\",\"6\",\"7\",\"22\"]', '[\"9\"]', '[\"6\"]', 3, 1),
(14, 'นิปเปิ้ล สแตนเลส 3/4', 'ENJO-SL-026', '50', '13', 'assets/images/product_image/63ca3207ba82f.jpg', '', '[\"15\",\"6\",\"7\",\"22\"]', '[\"4\"]', '[\"6\"]', 3, 1),
(15, 'นิปเปิ้ล สแตนเลส 1', 'ENJO-SL-027', '65', '8', 'assets/images/product_image/63ca324fb14ac.jpg', '', '[\"15\",\"6\",\"7\",\"22\"]', '[\"4\"]', '[\"6\"]', 3, 1),
(16, 'นิปเปิ้ล สแตนเลส 1 1/4', 'ENJO-SL-028', '100', '9', 'assets/images/product_image/63ca32ed03044.jpg', '', '[\"15\",\"6\",\"7\",\"22\"]', '[\"4\"]', '[\"6\"]', 3, 1),
(17, 'นิปเปิ้ล สแตนเลส 1 1/2', 'ENJO-SL-029', '110', '12', 'assets/images/product_image/63ca34eb0704e.jpg', '', '[\"15\",\"6\",\"7\",\"22\"]', '[\"4\"]', '[\"6\"]', 3, 1),
(18, 'นิปเปิ้ล สแตนเลส 2', 'ENJO-SL-071', '195', '4', 'assets/images/product_image/63ca35885bd23.jpg', '', '[\"15\",\"6\",\"7\",\"22\"]', '[\"4\"]', '[\"6\"]', 3, 1),
(19, 'นิปเปิ้ล สแตนเลส 2 1/2', 'ENJO-SL-099', '290', '5', 'assets/images/product_image/63ca361ebc83c.jpg', '', '[\"15\",\"6\",\"7\",\"22\"]', '[\"4\"]', '[\"6\"]', 3, 1),
(20, 'นิปเปิ้ล สแตนเลส 3', 'ENJO-SL-178', '490', '2', 'assets/images/product_image/63ca3652c7464.jpg', '', '[\"15\",\"6\",\"7\",\"22\"]', '[\"4\"]', '[\"6\"]', 3, 1),
(21, 'ข้อต่อตรง เกลียวใน 1/4', 'ENJO-SL-016', '20', '20', 'assets/images/product_image/63ca586e21662.jpg', '', '[\"15\",\"6\",\"7\",\"22\"]', '[\"5\"]', '[\"6\"]', 3, 1),
(22, 'ข้อต่อตรง เกลียวใน 3/8', 'ENJO-SL-017', '25', '21', 'assets/images/product_image/63ca5a40cebe8.jpg', '', '[\"15\",\"6\",\"7\",\"22\"]', '[\"5\"]', '[\"6\"]', 3, 1),
(23, 'ข้อต่อตรง เกลียวใน 1/2', 'ENJO-SL-018', '29', '17', 'assets/images/product_image/63ca5ad514188.jpg', '', '[\"15\",\"6\",\"7\",\"22\"]', '[\"5\"]', '[\"6\"]', 3, 1),
(24, 'ข้อต่อตรง เกลียวใน 3/4', 'ENJO-SL-019', '35', '18', 'assets/images/product_image/63ca5b7a88511.jpg', '', '[\"15\",\"6\",\"7\",\"22\"]', '[\"5\"]', '[\"6\"]', 3, 1),
(25, 'ข้อต่อตรง เกลียวใน 1', 'ENJO-SL-053', '45', '7', 'assets/images/product_image/63ca5bf2d2ced.jpg', '', '[\"15\",\"6\",\"7\",\"22\"]', '[\"5\"]', '[\"6\"]', 3, 1),
(26, 'ข้อต่อตรง เกลียวใน 1 1/4', 'ENJO-SL-022', '95', '19', 'assets/images/product_image/63ca5c2320699.jpg', '', '[\"15\",\"6\",\"7\",\"22\"]', '[\"5\"]', '[\"6\"]', 3, 1),
(27, 'ข้อต่อตรง เกลียวใน 1 1/2', 'ENJO-SL-021', '120', '11', 'assets/images/product_image/63ca5c7b7e3b5.jpg', '', '[\"15\",\"6\",\"7\",\"22\"]', '[\"5\"]', '[\"6\"]', 3, 1),
(28, 'ข้อต่อตรง เกลียวใน 2', 'ENJO-SL-023', '150', '2', '<p>You did not select a file to upload.</p>', '', '[\"15\",\"6\",\"7\",\"22\"]', '[\"5\"]', '[\"6\"]', 3, 1),
(29, 'ข้อต่อตรง เกลียวใน 2 1/2', 'ENJO-SL-179', '250', '3', '<p>You did not select a file to upload.</p>', '', '[\"15\",\"6\",\"7\",\"22\"]', '[\"5\"]', '[\"6\"]', 3, 1),
(30, 'ข้อต่อตรง เกลียวใน 4', 'ENJO-SL-054', '450', '1', 'assets/images/product_image/63ca5d1ce3050.jpg', '', '[\"15\",\"6\",\"7\",\"22\"]', '[\"5\"]', '[\"6\"]', 3, 1),
(31, 'หางปลาไหล 304 1/2', 'ENJO-SL-067', '65', '7', 'assets/images/product_image/63ca5d833a1df.jpg', '', '[\"15\",\"6\",\"7\",\"22\"]', '[\"5\"]', '[\"6\"]', 3, 1),
(32, 'หางปลาไหล 304 3/4', 'ENJO-SL-088', '14', '55', 'assets/images/product_image/63ca5dbccb612.jpg', '', '[\"15\",\"6\",\"7\",\"22\"]', '[\"5\"]', '[\"6\"]', 3, 1),
(33, 'หางปลาไหล 304 1', 'ENJO-SL-087', '98', '26', 'assets/images/product_image/63ca5df7d3819.jpg', '', '[\"15\",\"6\",\"7\",\"22\"]', '[\"5\"]', '[\"6\"]', 3, 1),
(34, 'ข้องอ สแตนเลส 90 องศา 1/2 เกลียวใน', 'ENJO-SL-056', '10', '17', 'assets/images/product_image/63e22e93b7d63.jpg', '', '[\"15\",\"6\",\"7\",\"23\"]', '[\"6\"]', '[\"6\"]', 3, 1),
(35, 'ข้องอ สแตนเลส 90 องศา 3/4 เกลียวใน', 'ENJO-SL-109', '20', '9', 'assets/images/product_image/63e22ef900ad5.jpg', '', '[\"15\",\"6\",\"7\",\"23\"]', '[\"6\"]', '[\"6\"]', 3, 1),
(36, 'ข้องอ สแตนเลส 90 องศา 1 เกลียวใน', 'ENJO-SL-080', '30', '5', 'assets/images/product_image/63e22f55e59e8.jpg', '', '[\"15\",\"6\",\"7\",\"23\"]', '[\"6\"]', '[\"6\"]', 3, 1),
(37, 'ข้องอ สแตนเลส 90 องศา 1 1/2 เกลียวใน', 'ENJO-SL-073', '40', '6', 'assets/images/product_image/63e22fd740433.jpg', '', '[\"15\",\"6\",\"7\",\"23\"]', '[\"6\"]', '[\"6\"]', 3, 1),
(38, 'ข้องอ สแตนเลส 90 องศา 2 เกลียวใน', 'ENJO-SL-123', '50', '4', 'assets/images/product_image/63e23048aee36.jpg', '', '[\"15\",\"6\",\"7\",\"23\"]', '[\"6\"]', '[\"6\"]', 3, 1),
(39, 'ข้องอ สแตนเลส 90 องศา 1/2 แบบเชื่อม', 'ENJO-SL-129', '15', '16', 'assets/images/product_image/63e230ceca3be.jpg', '', '[\"14\",\"6\",\"7\",\"23\"]', '[\"6\"]', '[\"6\"]', 3, 1),
(40, 'ข้องอ สแตนเลส 90 องศา 3/4 แบบเชื่อม', 'ENJO-SL-079', '30', '16', 'assets/images/product_image/63e2312cbe584.jpg', '', '[\"14\",\"6\",\"7\",\"23\"]', '[\"6\"]', '[\"6\"]', 3, 1),
(41, 'ข้องอ สแตนเลส 90 องศา 1 แบบเชื่อม', 'ENJO-SL-051', '45', '24', 'assets/images/product_image/63e2316d8bcd2.jpg', '', '[\"15\",\"6\",\"7\",\"23\"]', '[\"6\"]', '[\"6\"]', 3, 1),
(42, 'ข้องอ สแตนเลส 90 องศา 1 1/2', 'ENJO-SL-060', '60', '20', 'assets/images/product_image/63e231e33113c.jpg', '', '[\"14\",\"6\",\"7\",\"23\"]', '[\"6\"]', '[\"6\"]', 3, 1),
(43, 'ข้องอ สแตนเลส 90 องศา 1 1/4', 'ENJO-SL-176', '75', '6', 'assets/images/product_image/63e232351e593.jpg', '', '[\"15\",\"6\",\"7\",\"23\"]', '[\"6\"]', '[\"6\"]', 3, 1),
(44, 'ข้องอ สแตนเลส 90 องศา 2', 'ENJO-SL-041', '90', '17', 'assets/images/product_image/63e23280aa871.jpg', '', '[\"15\",\"6\",\"7\",\"23\"]', '[\"6\"]', '[\"6\"]', 3, 1),
(45, 'ข้องอ สแตนเลส 90 องศา 2 1/2', 'ENJO-SL-130', '120', '10', 'assets/images/product_image/63e232c1c008a.jpg', '', '[\"15\",\"6\",\"7\",\"23\"]', '[\"6\"]', '[\"6\"]', 3, 1),
(46, 'WD 40', 'ENSP-OL-005', '195', '9', 'assets/images/product_image/63e318194dad7.jpg', '', '[\"15\",\"10\",\"7\",\"21\"]', '[\"10\"]', '[\"9\"]', 3, 1),
(47, 'CRC Contact Cleaner', 'ENSP-OL-006', '200', '4', 'assets/images/product_image/63e319a6f35f0.jpg', '', '[\"15\",\"10\",\"7\",\"21\"]', '[\"10\"]', '[\"9\"]', 3, 1),
(48, 'สีสเปร์ยเหลือง MEDIUM YELLOW 241 NO.25', 'ENCT-PA-009', '120', '7', 'assets/images/product_image/63e31a3a16450.jpg', '', '[\"15\",\"10\",\"7\",\"21\"]', '[\"11\"]', '[\"9\"]', 3, 1),
(49, 'สีสเปร์ยบรอนซ์เงิน BRIGHT SILVER 300 NO.36', 'ENCT-PA-008', '120', '12', 'assets/images/product_image/63e31fce7d8fd.jpg', '', '[\"15\",\"10\",\"7\",\"21\"]', '[\"11\"]', '[\"9\"]', 3, 1),
(50, 'สีสเปร์ยเทา SILVER GREY 29 NO.22', 'ENCT-PA-007', '120', '8', 'assets/images/product_image/63e32291d79a2.jpg', '', '[\"15\",\"10\",\"7\",\"21\"]', '[\"11\"]', '[\"9\"]', 3, 1),
(51, 'สีสเปร์ยแดง RED 211 NO.23', 'ENCT-PA-006', '120', '7', 'assets/images/product_image/63e323cc31211.jpg', '', '[\"15\",\"10\",\"7\",\"21\"]', '[\"11\"]', '[\"9\"]', 3, 1),
(52, 'สีสเปร์ยครีม Grey 215', 'ENCT-PA-005', '120', '9', 'assets/images/product_image/63e3262e61e4e.jpg', '', '[\"15\",\"10\",\"7\",\"21\"]', '[\"11\"]', '[\"9\"]', 3, 1),
(53, 'สีสเปร์ยเขียว APPLE GREEN 217 NO.37', 'ENCT-PA-004', '120', '10', 'assets/images/product_image/63e3273933dd6.jpg', '', '[\"15\",\"10\",\"7\",\"21\"]', '[\"11\"]', '[\"9\"]', 3, 1),
(54, 'สีสเปร์ยน้ำเงิน RIVER BLUE 242 NO.9', 'ENCT-PA-003', '120', '9', 'assets/images/product_image/63e32807567d9.jpg', '', '[\"15\",\"10\",\"7\",\"21\"]', '[\"11\"]', '[\"9\"]', 3, 1),
(55, 'สีสเปร์ยดำ BLACK 210 NO.39', 'ENCT-PA-002', '120', '8', 'assets/images/product_image/63e328a30fc91.jpg', '', '[\"15\",\"10\",\"7\",\"21\"]', '[\"11\"]', '[\"9\"]', 3, 1),
(56, 'สีสเปร์ยขาว', 'ENCT-PA-001', '120', '10', 'assets/images/product_image/63e328d9622ff.jpg', '', '[\"15\",\"10\",\"7\",\"21\"]', '[\"11\"]', '[\"9\"]', 3, 1),
(57, 'ท่อร้อยสายไฟลูกฟูก PVC 3/4', 'ENET-EQ-007', '1000', '1', 'assets/images/product_image/63e344dc97056.jpg', '', '[\"15\",\"10\",\"7\",\"21\"]', '[\"12\"]', '[\"10\"]', 3, 1),
(58, 'สายโทรศัพท์ 0.65*2 Core', 'ENET-WI-010', '500', '1', 'assets/images/product_image/63e34589dc527.jpg', '', '[\"15\",\"10\",\"7\",\"21\"]', '[\"13\"]', '[\"10\"]', 3, 1),
(59, 'สายโทรศัพท์ 0.65*4 Core', 'ENET-WI-009', '250', '1', 'assets/images/product_image/63e346482a6a0.jpg', '', '[\"15\",\"10\",\"7\",\"21\"]', '[\"13\"]', '[\"10\"]', 3, 1),
(60, 'สายไฟ VSF 1*1 SQ.mm สีแดง', 'ENET-WI-002', '250', '1', 'assets/images/product_image/63e346aa0af49.jpg', '', '[\"15\",\"10\",\"7\",\"21\"]', '[\"13\"]', '[\"10\"]', 3, 1),
(61, 'สายไฟ VSF 1*1 SQ.mm สีเหลือง', 'ENET-WI-001', '250', '0', 'assets/images/product_image/63e3484487dd2.jpg', '', '[\"15\",\"10\",\"7\",\"21\"]', '[\"13\"]', '[\"10\"]', 3, 1),
(62, 'ปูนซีเมนต์กันซึม', 'ENCT-OT-120', '650', '3', 'assets/images/product_image/63e348e122f89.jpg', '', '[\"15\",\"10\",\"7\",\"22\"]', '[\"14\"]', '[\"12\"]', 3, 1),
(63, 'เคมีโป้ผนัง', 'ENCT-PA-023', '650', '2', 'assets/images/product_image/63e34923881c8.jpg', '', '[\"15\",\"10\",\"7\",\"22\"]', '[\"14\"]', '[\"12\"]', 3, 1),
(64, 'สีทาถนนสะท้อนแสง TOA#703 สีเหลือง', 'ENCT-PA-029', '750', '2', 'assets/images/product_image/63e34a30da554.jpg', '', '[\"15\",\"10\",\"7\",\"22\"]', '[\"11\"]', '[\"12\"]', 3, 1),
(65, 'สีทาถนนสะท้อนแสง TOA#715 สีแดง', 'ENCT-PA-027', '750', '2', 'assets/images/product_image/63e34a79e393d.jpg', '', '[\"15\",\"10\",\"7\",\"22\"]', '[\"11\"]', '[\"12\"]', 3, 1),
(66, 'สายไฟ THW 1*1.5 SQ.mm. สีดำ', 'ENET-WI-038', '500', '3', 'assets/images/product_image/63e34cdc99119.jpg', '', '[\"15\",\"10\",\"7\",\"22\"]', '[\"13\"]', '[\"10\"]', 3, 1),
(67, 'สายไฟ THW 1*1.5 SQ.mm. สีเขียว/เหลือง', 'ENET-WI-016', '500', '2', 'assets/images/product_image/63e34d3445bba.jpg', '', '[\"15\",\"10\",\"7\",\"22\"]', '[\"13\"]', '[\"10\"]', 3, 1),
(68, 'สายไฟ THW 1*1.5 SQ.mm. สีแดง', 'ENET-WI-0', '500', '0', '<p>You did not select a file to upload.</p>', '', '[\"15\",\"10\",\"7\",\"22\"]', '[\"13\"]', '[\"10\"]', 3, 1),
(69, 'สายไฟ THW 1*1.5 SQ.mm. สีฟ้า', 'ENET-WI-020', '500', '2', 'assets/images/product_image/63e34e1a9816b.jpg', '', '[\"15\",\"10\",\"7\",\"22\"]', '[\"13\"]', '[\"10\"]', 3, 1),
(70, 'สายไฟ THW 1*1.5 SQ.mm. สีน้ำตาล', 'ENET-WI-017', '500', '1', 'assets/images/product_image/63e34eacec68d.jpg', '', '[\"15\",\"10\",\"7\",\"22\"]', '[\"13\"]', '[\"10\"]', 3, 1),
(71, 'สายไฟ THW 1*1.5 SQ.mm. สีน้ำเงิน', 'ENET-WI-015', '500', '1', 'assets/images/product_image/63e34fb9e35b1.jpg', '', '[\"15\",\"10\",\"7\",\"22\"]', '[\"13\"]', '[\"10\"]', 3, 1),
(72, 'สีน้ำมันสีดำ TOA 4 GLIPITON', 'ENCT-PA-035', '950', '2', 'assets/images/product_image/63e359683bb20.jpg', '', '[\"15\",\"10\",\"7\",\"23\"]', '[\"11\"]', '[\"12\"]', 3, 1),
(73, 'สีน้ำมันสีแดง TOA 4 GLIPITON', 'ENCT-PA-034', '950', '1', 'assets/images/product_image/63e35a33b141f.jpg', '', '[\"15\",\"10\",\"7\",\"23\"]', '[\"11\"]', '[\"12\"]', 3, 1),
(74, 'สีน้ำมันเคลือบเงา บรอนซ์เงิน B-1000', 'ENCT-PA-026', '1150', '2', 'assets/images/product_image/63e35ad1f1eeb.jpg', '', '[\"15\",\"10\",\"7\",\"23\"]', '[\"11\"]', '[\"12\"]', 3, 1),
(75, 'สีน้ำมันเคลือบเงา สีน้ำเงิน  G-370', 'ENCT-PA-018', '1150', '2', 'assets/images/product_image/63e35b39df8c7.jpg', '', '[\"15\",\"10\",\"7\",\"23\"]', '[\"11\"]', '[\"12\"]', 3, 1),
(76, 'สายไฟ THW 1*2.5 SQ.mm. สีเขียว/เหลือง', 'ENET-WI-008', '650', '3', 'assets/images/product_image/63e35c0414081.jpg', '', '[\"15\",\"10\",\"7\",\"23\"]', '[\"13\"]', '[\"10\"]', 3, 1),
(77, 'สายไฟ THW 1*2.5 SQ.mm. สีเทา', 'ENET-WI-006', '650', '6', 'assets/images/product_image/63e35caf15914.jpg', '', '[\"15\",\"10\",\"7\",\"23\"]', '[\"13\"]', '[\"10\"]', 3, 1),
(78, 'สายไฟ THW 1*2.5 SQ.mm. สีดำ', 'ENET-WI-004', '650', '2', 'assets/images/product_image/63e35d9cd8dc7.jpg', '', '[\"15\",\"10\",\"7\",\"23\"]', '[\"13\"]', '[\"10\"]', 3, 1),
(79, 'สายไฟ THW 1*2.5 SQ.mm. สีฟ้า', 'ENET-WI-007', '650', '4', 'assets/images/product_image/63e35e2437d7a.jpg', '', '[\"15\",\"10\",\"7\",\"23\"]', '[\"13\"]', '[\"10\"]', 3, 1),
(80, 'สายไฟ THW 1*2.5 SQ.mm. สีน้ำตาล', 'ENET-WI-012', '650', '4', '<p>You did not select a file to upload.</p>', '', '[\"15\",\"10\",\"7\",\"23\"]', '[\"13\"]', '[\"10\"]', 3, 1),
(81, 'สีน้ำมันเคลือบเงา สีขาว G-100', 'ENCT-PA-015', '1150', '3', 'assets/images/product_image/63e362aca42bb.jpg', '', '[\"15\",\"10\",\"7\",\"24\"]', '[\"11\"]', '[\"12\"]', 3, 1),
(82, 'สีน้ำมันเคลือบเงา สีเขียว G-581', 'ENCT-PA-012', '1150', '6', 'assets/images/product_image/63e36303e16c2.jpg', '', '[\"15\",\"10\",\"7\",\"24\"]', '[\"11\"]', '[\"12\"]', 3, 1),
(83, 'สายไฟ THW 1*4 SQ.mm. สีเขียว/เหลือง', 'ENET-WI-034', '850', '3', 'assets/images/product_image/63e363dba32cc.jpg', '', '[\"15\",\"10\",\"7\",\"24\"]', '[\"13\"]', '[\"10\"]', 3, 1),
(84, 'สายไฟ THW 1*4 SQ.mm. สีเทา', 'ENET-WI-036', '950', '2', 'assets/images/product_image/63e36438f3aa6.jpg', '', '[\"15\",\"10\",\"7\",\"24\"]', '[\"13\"]', '[\"10\"]', 3, 1),
(85, 'สายไฟ THW 1*4 SQ.mm. สีดำ', 'ENET-WI-035', '950', '1', 'assets/images/product_image/63e3647637f2c.jpg', '', '[\"15\",\"10\",\"7\",\"24\"]', '[\"13\"]', '[\"10\"]', 3, 1),
(86, 'สายไฟ THW 1*4 SQ.mm. สีฟ้า', 'ENET-WI-037', '950', '0', 'assets/images/product_image/63e364bd16a85.jpg', '', '[\"15\",\"10\",\"7\",\"24\"]', '[\"13\"]', '[\"10\"]', 3, 1),
(87, 'สายไฟ THW 1*4 SQ.mm. สีน้ำตาล', 'ENET-WI-014', '950', '0', 'assets/images/product_image/63e36525783df.jpg', '', '[\"15\",\"10\",\"7\",\"24\"]', '[\"13\"]', '[\"10\"]', 3, 1),
(88, 'ทินเนอร์ 10.47 ลิตร', 'ENCT-PA-031', '950', '0', 'assets/images/product_image/63e369213f820.jpg', '', '[\"15\",\"10\",\"7\",\"25\"]', '[\"14\"]', '[\"12\"]', 3, 1),
(89, 'สีน้ำพลาสติกสีขาว ภายใน ชนิดด้าน', 'ENCT-PA-016', '1200', '5', 'assets/images/product_image/63e36966dc851.jpg', '', '[\"15\",\"10\",\"7\",\"25\"]', '[\"11\"]', '[\"12\"]', 3, 1),
(90, 'สายไฟ THW 1*6 SQ.mm. สีดำ', 'ENET-WI-061', '1000', '1', 'assets/images/product_image/63e369a3cbb39.jpg', '', '[\"15\",\"10\",\"7\",\"25\"]', '[\"13\"]', '[\"10\"]', 3, 1),
(91, 'สายไฟ THW 1*6 SQ.mm. สีเทา', 'ENET-WI-060', '1000', '1', 'assets/images/product_image/63e36a6276f30.jpg', '', '[\"15\",\"10\",\"7\",\"25\"]', '[\"13\"]', '[\"10\"]', 3, 1),
(92, 'สายไฟ THW 1*6 SQ.mm. สีฟ้า', 'ENET-WI-063', '1000', '1', 'assets/images/product_image/63e36ab38f874.jpg', '', '[\"15\",\"10\",\"7\",\"25\"]', '[\"13\"]', '[\"10\"]', 3, 1),
(93, 'สายไฟ THW 1*6 SQ.mm. สีเขียว', 'ENET-WI-064', '1000', '1', 'assets/images/product_image/63e36aef7c9a1.jpg', '', '[\"15\",\"10\",\"7\",\"25\"]', '[\"13\"]', '[\"10\"]', 3, 1),
(94, 'สายไฟ THW 1*6 SQ.mm. สีน้ำตาล', 'ENET-WI-065', '1000', '1', 'assets/images/product_image/63e36b329af30.jpg', '', '[\"15\",\"10\",\"7\",\"25\"]', '[\"13\"]', '[\"10\"]', 3, 1),
(95, 'ยูเนี่ยน สแตนเลส 1/2', 'ENJO-SL-091', '30', '7', 'assets/images/product_image/63e5baf4e4ba8.jpg', '', '[\"15\",\"6\",\"7\",\"24\"]', '[\"7\"]', '[\"6\"]', 3, 1),
(96, 'ยูเนี่ยน สแตนเลส 3/4', 'ENJO-SL-127', '40', '16', 'assets/images/product_image/63e5bb6f148ff.jpg', '', '[\"15\",\"6\",\"7\",\"24\"]', '[\"7\"]', '[\"6\"]', 3, 1),
(97, 'ยูเนี่ยน สแตนเลส 1', 'ENJO-SL-063', '50', '14', 'assets/images/product_image/63e5bbd470e09.jpg', '', '[\"15\",\"6\",\"7\",\"24\"]', '[\"7\"]', '[\"6\"]', 3, 1),
(98, 'ยูเนี่ยน สแตนเลส 1 1/2', 'ENJO-SL-030', '100', '13', 'assets/images/product_image/63e5bca1bd2c4.jpg', '', '[\"15\",\"6\",\"7\",\"24\"]', '[\"7\"]', '[\"6\"]', 3, 1),
(99, 'ยูเนี่ยน สแตนเลส 2', 'ENJO-SL-191', '150', '3', 'assets/images/product_image/63e6f7e46986b.jpg', '', '[\"29\"]', '[\"7\"]', '[\"6\"]', 3, 1),
(100, 'ยูเนี่ยน สแตนเลส 2 1/2\"', 'ENJO-SL-174', '200', '3', 'assets/images/product_image/63e5cdf10eb6d.jpg', '', '[\"15\",\"6\",\"7\",\"24\"]', '[\"7\"]', 'null', 3, 1),
(101, 'สามทาง สแตนเลส 1/2', 'ENJO-SL-090', '30', '9', 'assets/images/product_image/63e5e8e5d49ca.jpg', '', '[\"15\",\"6\",\"7\",\"24\"]', '[\"8\"]', '[\"6\"]', 3, 1),
(102, 'สามทาง สแตนเลส 3/4\" เกลียวใน', 'ENJO-SL-065', '50', '10', 'assets/images/product_image/63e5ecdba01a0.jpg', '', '[\"15\",\"6\",\"7\",\"24\"]', '[\"8\"]', '[\"6\"]', 3, 1),
(103, 'สามทาง สแตนเลส 1', 'ENJO-SL-128', '70', '10', 'assets/images/product_image/63e5ed376d1b8.jpg', '', '[\"15\",\"6\",\"7\",\"24\"]', '[\"8\"]', '[\"6\"]', 3, 1),
(104, 'สามทาง สแตนเลส 304 1\" แบบเชื่อม', 'ENJO-SL-050', '70', '16', 'assets/images/product_image/63e5edb3f330a.jpg', '', '[\"15\",\"6\",\"7\",\"24\"]', '[\"8\"]', '[\"6\"]', 3, 1),
(105, 'สามทาง สแตนเลส 304 1 1/2 แบบเชื่อม', 'ENJO-SL-061', '100', '7', 'assets/images/product_image/63e5f95b81c10.jpg', '', '[\"15\",\"6\",\"7\",\"24\"]', '[\"8\"]', '[\"6\"]', 3, 1),
(106, 'สามทาง สแตนเลส 304 1 1/4 แบบเชื่อม', 'ENJO-SL-072', '150', '21', 'assets/images/product_image/63e5f8f7dc0f0.jpg', '', '[\"15\",\"6\",\"7\",\"24\"]', '[\"8\"]', '[\"6\"]', 3, 1),
(107, 'สามทาง สแตนเลส 304 2', 'ENJO-SL-031', '200', '4', 'assets/images/product_image/63e5f8d502db7.jpg', '', '[\"15\",\"6\",\"7\",\"24\"]', '[\"8\"]', '[\"6\"]', 3, 1),
(108, 'ข้อลดกลม สแตนเลส 316 25*13 mm', 'ENJO-SL-181', '10', '2', 'assets/images/product_image/63e7010ef1942.jpg', '', '[\"15\",\"6\",\"7\",\"25\"]', '[\"15\"]', '[\"6\"]', 3, 1),
(109, 'ข้อลดกลม สแตนเลส 316 38*25 mm', 'ENJO-SL-001', '30', '20', '<p>You did not select a file to upload.</p>', '', '[\"29\"]', '[\"15\"]', '[\"6\"]', 3, 1),
(110, 'ข้อลดกลม สแตนเลส 316 51*25 mm', 'ENJO-SL-104', '50', '20', 'assets/images/product_image/63e703f78e7d8.jpg', '', '[\"29\"]', '[\"15\"]', '[\"6\"]', 3, 1),
(111, 'ข้อลดกลม สแตนเลส 316 51*38 mm', 'ENJO-SL-076', '60', '15', '<p>You did not select a file to upload.</p>', '', '[\"29\"]', '[\"15\"]', '[\"6\"]', 3, 1),
(112, 'ข้อลดกลม สแตนเลส 316 63.5*38 mm', 'ENJO-SL-113', '100', '5', 'assets/images/product_image/63e708629b440.jpg', '', '[\"29\"]', '[\"15\"]', '[\"6\"]', 3, 1),
(113, 'ข้อลดกลม สแตนเลส 316 63.5*51 mm', 'ENJO-SL-114', '120', '5', 'assets/images/product_image/63e708b6f34f0.jpg', '', '[\"15\",\"6\",\"7\",\"25\"]', '[\"15\"]', '[\"6\"]', 3, 1),
(114, 'ข้อลดกลม สแตนเลส 316 76*38 mm', 'ENJO-SL-182', '200', '5', 'assets/images/product_image/63e70cbbef64e.jpg', '', '[\"15\",\"6\",\"7\",\"25\"]', '[\"15\"]', '[\"6\"]', 3, 1),
(115, 'ข้อลดกลม สแตนเลส 316 76*51 mm', 'ENJO-SL-183', '200', '7', 'assets/images/product_image/63e715d59100b.jpg', '', '[\"15\",\"6\",\"7\",\"25\"]', '[\"15\"]', '[\"6\"]', 3, 1),
(116, 'ข้อลดกลม สแตนเลส 316 101.6*38 mm', 'ENJO-SL-184', '250', '2', 'assets/images/product_image/63e71633064e4.jpg', '', '[\"15\",\"6\",\"7\",\"25\"]', '[\"15\"]', '[\"6\"]', 3, 1),
(117, 'ข้อลดกลม สแตนเลส 316 101.6*51 mm', 'ENJO-SL-185', '300', '3', 'assets/images/product_image/63e716865c95b.jpg', '', '[\"15\",\"6\",\"7\",\"25\"]', '[\"15\"]', '[\"6\"]', 3, 1),
(118, 'ข้อลดเหลี่ยม สแตนเลส 304 เกลียว 3/8นอก *1/4ใน', 'ENJO-SL-070', '10', '7', 'assets/images/product_image/63e749e6dde64.jpg', '', '[\"29\"]', '[\"16\"]', '[\"6\"]', 3, 1),
(119, 'ข้อลดเหลี่ยม สแตนเลส 304 เกลียว 1/2นอก', 'ENJO-SL-082', '20', '19', 'assets/images/product_image/63e74b1fd441b.jpg', '', '[\"29\"]', '[\"16\"]', '[\"6\"]', 3, 1),
(120, 'ข้อลดเหลี่ยม สแตนเลส 304 เกลียว 1/2', 'ENJO-SL-077', '30', '11', 'assets/images/product_image/63e74b61b449e.jpg', '', 'null', '[\"16\"]', '[\"6\"]', 3, 1),
(121, 'ข้อลดเหลี่ยม สแตนเลส 304 เกลียว 3/4นอก\"*1/2\" ใน', 'ENJO-SL-055', '40', '13', 'assets/images/product_image/63e74bb1df1b9.jpg', '', '[\"15\",\"6\",\"7\",\"25\"]', '[\"16\"]', '[\"6\"]', 3, 1),
(122, 'ข้อลดเหลี่ยม สแตนเลส 304 เกลียว 1\"นอก\"*1/2\" ใน', 'ENJO-SL-136', '50', '7', 'assets/images/product_image/63e74c0602a13.jpg', '', '[\"15\",\"6\",\"7\",\"25\"]', '[\"16\"]', '[\"6\"]', 3, 1),
(123, 'ข้อลดเหลี่ยม สแตนเลส 304 เกลียว 1', 'ENJO-SL-011', '60', '10', 'assets/images/product_image/63e74ce07f5d6.jpg', '', 'null', '[\"16\"]', '[\"6\"]', 3, 1),
(124, 'ข้อลดเหลี่ยม สแตนเลส 304 เกลียว 1 1/4\"นอก\"*1\" ใน', 'ENJO-SL-094', '90', '6', 'assets/images/product_image/63e74d98721fc.jpg', '', '[\"15\",\"6\",\"7\",\"25\"]', '[\"16\"]', '[\"6\"]', 3, 1),
(125, 'ข้อลดเหลี่ยม สแตนเลส 304 เกลียว 2\"นอก\"*1\" ใน', 'ENJO-SL-134', '200', '1', 'assets/images/product_image/63e751a74348d.jpg', '', '[\"15\",\"6\",\"7\",\"25\"]', '[\"16\"]', '[\"6\"]', 3, 1),
(126, 'ข้องอโค้งสั้น สแตนเลส 316L 90 องศา 25 mm', 'ENJO-SL-003', '25', '17', 'assets/images/product_image/63e757920d1a2.jpg', '', 'null', '[\"6\"]', '[\"6\"]', 3, 1),
(127, 'ข้องอโค้งสั้น สแตนเลส 316L 90 องศา 38 mm', 'ENJO-SL-004', '50', '22', 'assets/images/product_image/63e757f169af3.jpg', '', '[\"29\"]', '[\"6\"]', '[\"6\"]', 3, 1),
(128, 'ข้องอโค้งสั้น สแตนเลส 316L 90 องศา 51 mm', 'ENJO-SL-177', '75', '22', 'assets/images/product_image/63e7585760ecc.jpg', '', '[\"29\"]', '[\"6\"]', '[\"6\"]', 3, 1),
(129, 'ข้องอโค้งยาว สแตนเลส 316L 180 องศา 38 mm', 'ENJO-SL-097', '100', '14', 'assets/images/product_image/63e759b22b72d.jpg', '', '[\"29\"]', '[\"6\"]', '[\"6\"]', 3, 1),
(130, 'ข้องอโค้งยาว สแตนเลส 316L 180 องศา 51 mm', 'ENJO-SL-016', '150', '2', 'assets/images/product_image/63e75a360b470.jpg', '', '[\"29\"]', '[\"6\"]', '[\"6\"]', 3, 1),
(131, 'สามทาง สแตนเลส 316L 25mm แบบเชื่อม', 'ENJO-SL-132', '30', '11', 'assets/images/product_image/63e75b0f9572c.jpg', '', '[\"15\",\"6\",\"7\",\"26\"]', '[\"8\"]', '[\"6\"]', 3, 1),
(132, 'สามทาง สแตนเลส 316L 38mm แบบเชื่อม', 'ENJO-SL-006', '50', '12', 'assets/images/product_image/63e75bc3227f0.jpg', '', '[\"29\"]', '[\"8\"]', '[\"6\"]', 3, 1),
(133, 'สามทาง สแตนเลส 316L 51mm แบบเชื่อม', 'ENJO-SL-005', '100', '13', 'assets/images/product_image/63e75c784e0c7.jpg', '', '[\"29\"]', '[\"8\"]', '[\"6\"]', 3, 1),
(136, 'นิปเปิ้ล กาวาไนท์ 1/4', 'ENJO-KA-005', '20', '5', 'assets/images/product_image/63ef22946cf28.jpg', '', '[\"29\"]', '[\"4\"]', '[\"4\"]', 3, 1),
(137, 'นิปเปิ้ล กาวาไนท์ 1/2', 'ENJO-KA-004', '30', '21', 'assets/images/product_image/63ef2302d0638.jpg', '', '[\"29\"]', '[\"4\"]', '[\"4\"]', 3, 1),
(138, 'นิปเปิ้ล กาวาไนท์ 1\"', 'ENJO-KA-213', '50', '20', 'assets/images/product_image/63ef249334e49.jpg', '', '[\"15\",\"6\",\"8\",\"21\"]', '[\"4\"]', '[\"4\"]', 3, 1),
(139, 'นิปเปิ้ล กาวาไนท์ 1 1/4', 'ENJO-KA-212', '70', '3', 'assets/images/product_image/63ef24de38b45.jpg', '', '[\"15\",\"6\",\"8\",\"21\"]', '[\"4\"]', '[\"4\"]', 3, 1),
(140, 'นิปเปิ้ล กาวาไนท์ 1 1/2\"', 'ENJO-KA-006', '100', '3', 'assets/images/product_image/63ef2588dd2e5.jpg', '', '[\"15\",\"6\",\"8\",\"21\"]', '[\"4\"]', '[\"4\"]', 3, 1),
(141, 'นิปเปิ้ล กาวาไนท์ 2\"', 'ENJO-KA-003', '150', '3', 'assets/images/product_image/63ef265cb5687.jpg', '', '[\"15\",\"6\",\"8\",\"21\"]', '[\"4\"]', '[\"4\"]', 3, 1),
(142, 'นิปเปิ้ล กาวาไนท์ 2 1/2\"', 'ENJO-KA-031', '200', '2', 'assets/images/product_image/63ef26c8d3e58.jpg', '', '[\"15\",\"6\",\"8\",\"21\"]', '[\"4\"]', '[\"4\"]', 3, 1),
(143, 'นิปเปิ้ล กาวาไนท์ 3\"', 'ENJO-KA-013', '250', '1', 'assets/images/product_image/63ef289a1ec70.jpg', '', '[\"15\",\"6\",\"8\",\"21\"]', '[\"4\"]', '[\"4\"]', 3, 1),
(144, 'นิปเปิ้ล กาวาไนท์ 4\"', 'ENJO-KA-034', '300', '1', 'assets/images/product_image/63ef29d47a2fe.jpg', '', '[\"15\",\"6\",\"8\",\"21\"]', '[\"4\"]', '[\"4\"]', 3, 1),
(145, 'ข้อต่อตรง กาวาไนท์ 1/2 เกลียวใน', 'ENJO-KA-021', '20', '22', 'assets/images/product_image/63ef2a9344233.jpg', '', '[\"29\"]', '[\"5\"]', '[\"4\"]', 3, 1),
(146, 'ข้อต่อตรง กาวาไนท์ 3/4', 'ENJO-KA-020', '30', '18', 'assets/images/product_image/63ef2ad19fd23.jpg', '', '[\"29\"]', '[\"5\"]', '[\"4\"]', 3, 1),
(147, 'ข้อต่อตรง กาวาไนท์ 1\" เกลียวใน', 'ENJO-KA-019', '40', '20', 'assets/images/product_image/63ef2b1601e46.jpg', '', '[\"15\",\"6\",\"8\",\"21\"]', '[\"5\"]', '[\"4\"]', 3, 1),
(148, 'ข้อต่อตรง กาวาไนท์ 1 1/4\" เกลียวใน', 'ENJO-KA-018', '60', '12', 'assets/images/product_image/63ef2cf6580e2.jpg', '', '[\"15\",\"6\",\"8\",\"21\"]', '[\"5\"]', '[\"4\"]', 3, 1),
(149, 'ข้อต่อตรง กาวาไนท์ 2\" เกลียวใน', 'ENJO-KA-206', '70', '3', 'assets/images/product_image/63ef2d3b68225.jpg', '', '[\"15\",\"6\",\"8\",\"21\"]', '[\"5\"]', '[\"4\"]', 3, 1),
(150, 'ข้อต่อตรง กาวาไนท์ 2 1/2 เกลียวใน', 'ENJO-KA-205', '120', '3', 'assets/images/product_image/63ef2e63e7083.jpg', '', '[\"15\",\"6\",\"8\",\"21\"]', '[\"5\"]', '[\"4\"]', 3, 1),
(151, 'ข้อต่อตรง กาวาไนท์ 3\" เกลียวใน', 'ENJO-KA-017', '150', '1', 'assets/images/product_image/63ef2f21c6182.jpg', '', '[\"15\",\"6\",\"8\",\"21\"]', '[\"5\"]', '[\"4\"]', 3, 1),
(152, 'ข้องอ กาวาไนท์ 90 องศา 1/2\" เกลียวใน', 'ENJO-KA-015', '25', '19', 'assets/images/product_image/63ef42683dd87.jpg', '', '[\"15\",\"6\",\"8\",\"22\"]', '[\"6\"]', '[\"4\"]', 3, 1),
(153, 'ข้องอ กาวาไนท์ 90 องศา 3/4 เกลียวใน', 'ENJO-KA-001', '50', '13', 'assets/images/product_image/63ef42a742193.jpg', '', '[\"15\",\"6\",\"8\",\"22\"]', '[\"6\"]', '[\"4\"]', 3, 1),
(154, 'ข้องอ กาวาไนท์ 90 องศา 1\" เกลียวใน', 'ENJO-KA-002', '75', '9', 'assets/images/product_image/63ef431fdb0d7.jpg', '', '[\"15\",\"6\",\"8\",\"22\"]', '[\"6\"]', '[\"4\"]', 3, 1),
(155, 'ข้องอ กาวาไนท์ 90 องศา 1 1/4\" เกลียวใน', 'ENJO-KA-035', '100', '6', 'assets/images/product_image/63ef4363200c2.jpg', '', '[\"15\",\"6\",\"8\",\"22\"]', '[\"6\"]', '[\"4\"]', 3, 1),
(156, 'ข้องอ กาวาไนท์ 90 องศา 2\" เกลียวใน', 'ENJO-KA-007', '125', '11', 'assets/images/product_image/63ef43a77d46c.jpg', '', '[\"15\",\"6\",\"8\",\"22\"]', '[\"6\"]', '[\"4\"]', 3, 1),
(157, 'ข้องอ กาวาไนท์ 90 องศา 2 1/2\" เกลียวใน', 'ENJO-KA-016', '150', '11', 'assets/images/product_image/63ef469d5be7f.jpg', '', '[\"15\",\"6\",\"8\",\"22\"]', '[\"6\"]', '[\"4\"]', 3, 1),
(158, 'ข้องอ กาวาไนท์ 45 องศา 1\" เกลียวใน', 'ENJO-KA-009', '75', '5', 'assets/images/product_image/63ef46d6d30b3.jpg', '', '[\"15\",\"6\",\"8\",\"22\"]', '[\"6\"]', '[\"4\"]', 3, 1),
(159, 'ยูเนี่ยน กาวาไนท์  1/2\"', 'ENJO-KA-022', '30', '4', 'assets/images/product_image/63ef47fd1f259.jpg', '', '[\"15\",\"6\",\"8\",\"22\"]', '[\"7\"]', '[\"4\"]', 3, 1),
(160, 'ยูเนี่ยน กาวาไนท์  3/4\"', 'ENJO-KA-023', '50', '3', 'assets/images/product_image/63ef48323649a.jpg', '', '[\"15\",\"6\",\"8\",\"22\"]', '[\"7\"]', '[\"4\"]', 3, 1),
(161, 'ยูเนี่ยน กาวาไนท์  1\"', 'ENJO-KA-024', '75', '10', 'assets/images/product_image/63ef4865d95cc.jpg', '', '[\"15\",\"6\",\"8\",\"22\"]', '[\"7\"]', '[\"4\"]', 3, 1),
(162, 'ยูเนี่ยน กาวาไนท์  1 1/4\"', 'ENJO-KA-025', '100', '5', 'assets/images/product_image/63ef489880322.jpg', '', '[\"15\",\"6\",\"8\",\"22\"]', '[\"7\"]', '[\"4\"]', 3, 1),
(163, 'ยูเนี่ยน กาวาไนท์  1 1/2\"', 'ENJO-KA-026', '125', '5', 'assets/images/product_image/63ef48ff938a6.jpg', '', '[\"15\",\"6\",\"8\",\"22\"]', '[\"7\"]', '[\"4\"]', 3, 1),
(164, 'ยูเนี่ยน กาวาไนท์  2\"', 'ENJO-KA-027', '150', '3', 'assets/images/product_image/63ef493198b38.jpg', '', '[\"15\",\"6\",\"8\",\"22\"]', '[\"7\"]', '[\"4\"]', 3, 1),
(165, 'ยูเนี่ยน กาวาไนท์  2 1/2\"', 'ENJO-KA-028', '175', '4', 'assets/images/product_image/63ef496f9b642.jpg', '', '[\"15\",\"6\",\"8\",\"22\"]', '[\"7\"]', '[\"4\"]', 3, 1),
(166, 'ยูเนี่ยน กาวาไนท์  3', 'ENJO-KA-030', '250', '3', 'assets/images/product_image/63ef49b53e91a.jpg', '', '[\"15\",\"6\",\"8\",\"22\"]', '[\"7\"]', '[\"4\"]', 3, 1),
(167, 'ท่อ PVC 1/2\" สีฟ้า ปลายบาน', 'ENPI-PV-003', '0', '27', '<p>You did not select a file to upload.</p>', '', '[\"29\",\"35\",\"41\"]', '[\"12\"]', '[\"13\"]', 3, 1),
(168, 'ท่อ PVC 3/4\" สีฟ้า ปลายบาน', 'ENPI-PV-004', '0', '28', '<p>You did not select a file to upload.</p>', '', '[\"31\"]', '[\"12\"]', '[\"13\"]', 3, 1),
(169, 'ท่อ PVC 1\" สีฟ้า ปลายบาน', 'ENPI-PV-005', '0', '18', '<p>You did not select a file to upload.</p>', '', '[\"31\"]', '[\"12\"]', '[\"13\"]', 3, 1),
(170, 'ท่อ PVC 1 1/4\" สีฟ้า ปลายบาน', 'ENPI-PV-006', '0', '8', '<p>You did not select a file to upload.</p>', '', '[\"31\"]', '[\"12\"]', '[\"13\"]', 3, 1),
(171, 'ท่อ PVC 1 1/2\" สีฟ้า ปลายบาน', 'ENPI-PV-007', '0', '20', '<p>You did not select a file to upload.</p>', '', '[\"31\"]', '[\"12\"]', '[\"13\"]', 3, 1),
(172, 'ท่อ PVC 2\" สีฟ้า ปลายบาน', 'ENPI-PV-008', '0', '16', '<p>You did not select a file to upload.</p>', '', '[\"31\"]', '[\"12\"]', '[\"13\"]', 3, 1),
(173, 'ท่อ PVC 2 1/2\" สีฟ้า ปลายบาน', 'ENPI-PV-009', '0', '3', '<p>You did not select a file to upload.</p>', '', '[\"31\"]', '[\"12\"]', '[\"13\"]', 3, 1),
(174, 'ท่อ PVC 3\" สีฟ้า ปลายบาน', 'ENPI-PV-010', '0', '3', '<p>You did not select a file to upload.</p>', '', '[\"31\"]', '[\"12\"]', '[\"13\"]', 3, 1),
(175, 'ท่อ PVC 4\" สีฟ้า ปลายบาน', 'ENPI-PV-011', '0', '13', '<p>You did not select a file to upload.</p>', '', '[\"31\"]', '[\"12\"]', '[\"13\"]', 3, 1),
(176, 'ข้อต่อสามทาง PVC 1/2\" สีฟ้า', 'ENJO-PV-120', '0', '16', '<p>You did not select a file to upload.</p>', '', '[\"31\"]', '[\"12\"]', '[\"13\"]', 3, 1),
(177, 'ข้อต่อสามทาง PVC 3/4\" สีฟ้า', 'ENJO-PV-053', '0', '4', '<p>You did not select a file to upload.</p>', '', '[\"31\"]', '[\"12\"]', '[\"13\"]', 3, 1),
(178, 'ข้อต่อสามทาง PVC 1\" สีฟ้า', 'ENJO-PV-054', '0', '1', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"8\"]', '[\"13\"]', 3, 1),
(179, 'ข้อต่อสามทาง PVC 1.1/4\" สีฟ้า', 'ENJO-PV-125', '0', '6', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"8\"]', '[\"13\"]', 3, 1),
(180, 'ข้อต่อสามทาง PVC 1.1/2\" สีฟ้า', 'ENJO-PV-105', '0', '5', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"8\"]', '[\"13\"]', 3, 1),
(181, 'ข้อต่อสามทาง PVC 2\" สีฟ้า', 'ENJO-PV-003', '0', '16', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"8\"]', '[\"13\"]', 3, 1),
(182, 'ข้อต่อสามทาง PVC 2.1/2\" สีฟ้า', 'ENJO-PV-136', '0', '5', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"8\"]', '[\"13\"]', 3, 1),
(183, 'ข้อต่อสามทาง PVC 3\" สีฟ้า', 'ENJO-PV-106', '0', '4', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"8\"]', '[\"13\"]', 3, 1),
(184, 'ข้อต่อสามทาง PVC 4\" สีฟ้า', 'ENJO-PV-107', '0', '2', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"8\"]', '[\"13\"]', 3, 1),
(185, 'หน้าแปลน PVC 2\" สีฟ้า', 'ENJO-PV-009', '0', '14', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"17\"]', '[\"13\"]', 3, 1),
(186, 'หน้าแปลน PVC 4\" สีฟ้า', 'ENJO-PV-042', '0', '4', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"17\"]', '[\"13\"]', 3, 1),
(187, 'หน้าแปลน PVC 3\" สีฟ้า', 'ENJO-PV-128', '0', '2', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"17\"]', '[\"13\"]', 3, 1),
(188, 'หน้าแปลน PVC 5\" สีฟ้า', 'ENJO-PV-049', '0', '5', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"17\"]', '[\"13\"]', 3, 1),
(189, 'ข้อต่อตรง PVC 1/2\" สีฟ้า', 'ENJO-PV-020', '0', '40', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"17\"]', '[\"13\"]', 3, 1),
(190, 'ข้อต่อตรง PVC 3/4\" สีฟ้า', 'ENJO-PV-021', '0', '42', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"5\"]', '[\"13\"]', 3, 1),
(191, 'ข้อต่อตรง PVC 1\" สีฟ้า', 'ENJO-PV-022', '0', '38', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"5\"]', '[\"13\"]', 3, 1),
(192, 'ข้อต่อตรง PVC 1.1/4\" สีฟ้า', 'ENJO-PV-023', '0', '21', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"5\"]', '[\"13\"]', 3, 1),
(193, 'ข้อต่อตรง PVC 1.1/2\" สีฟ้า', 'ENJO-PV-024', '0', '10', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"5\"]', '[\"13\"]', 3, 1),
(194, 'ข้อต่อตรง PVC 2\" สีฟ้า', 'ENJO-PV-025', '0', '10', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"5\"]', '[\"13\"]', 3, 1),
(195, 'ข้อต่อตรง PVC 2.1/2\" สีฟ้า', 'ENJO-PV-131', '0', '4', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"5\"]', '[\"13\"]', 3, 1),
(196, 'ข้อต่อตรง PVC 3\" สีฟ้า', 'ENJO-PV-103', '0', '10', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"5\"]', '[\"13\"]', 3, 1),
(197, 'ข้อต่อตรง PVC 4\" สีฟ้า', 'ENJO-PV-052', '0', '7', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"5\"]', '[\"13\"]', 3, 1),
(198, 'ข้องอ PVC 1/2\" 90 องศา สีฟ้า', 'ENJO-PV-007', '0', '8', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"6\"]', '[\"13\"]', 3, 1),
(199, 'ข้องอ PVC 3/4\" 90 องศา สีฟ้า', 'ENJO-PV-040', '0', '5', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"6\"]', '[\"13\"]', 3, 1),
(200, 'ข้องอ PVC 1\" 90 องศา สีฟ้า', 'ENJO-PV-037', '0', '10', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"6\"]', '[\"13\"]', 3, 1),
(201, 'ข้องอ PVC 1.1/4\" 90 องศา สีฟ้า', 'ENJO-PV-086', '0', '2', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"6\"]', '[\"13\"]', 3, 1),
(202, 'ข้องอ PVC 1.1/2\" 90 องศา สีฟ้า', 'ENJO-PV-072', '0', '14', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"6\"]', '[\"13\"]', 3, 1),
(203, 'ข้องอ PVC 2\" 90 องศา สีฟ้า', 'ENJO-PV-001', '0', '7', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"6\"]', '[\"13\"]', 3, 1),
(204, 'ข้องอ PVC 2.1/2\" 90 องศา สีฟ้า', 'ENJO-PV-145', '0', '0', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"6\"]', '[\"13\"]', 3, 1),
(205, 'ข้องอ PVC 3\" 90 องศา สีฟ้า', 'ENJO-PV-156', '0', '5', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"6\"]', '[\"13\"]', 3, 1),
(206, 'ข้องอ PVC 4\" 90 องศา สีฟ้า', 'ENJO-PV-094', '0', '2', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"6\"]', '[\"13\"]', 3, 1),
(207, 'ข้อต่อตรง 2 นิ้ว เกลียวใน', 'ENJO-PV-002', '0', '7', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"5\"]', '[\"13\"]', 3, 1),
(208, 'ข้อต่อตรง 1*1/2 นิ้ว เกลียวใน', 'ENJO-PV-051', '0', '10', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"5\"]', '[\"13\"]', 3, 1),
(209, 'ข้อต่อตรง 1 นิ้ว เกลียวใน', 'ENJO-PV-006', '0', '8', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"5\"]', '[\"13\"]', 3, 1),
(210, 'ข้อต่อตรง 3/4 นิ้ว เกลียวใน', 'ENJO-PV-005', '0', '16', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"5\"]', '[\"13\"]', 3, 1),
(211, 'ข้อต่อตรง 1/2 นิ้ว เกลียวใน', 'ENJO-PV-004', '0', '31', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"5\"]', '[\"13\"]', 3, 1),
(212, 'ข้อต่อตรง 2*1/2 นิ้ว เกลียวใน', 'ENJO-PV-133', '0', '3', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"5\"]', '[\"13\"]', 3, 1),
(213, 'ปลั๊กอุด PVC 1/2 นิ้ว', 'ENJO-PV-047', '0', '16', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"18\"]', '[\"13\"]', 3, 1),
(214, 'ปลั๊กอุด PVC 3/4 นิ้ว', 'ENJO-PV-100', '0', '16', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"18\"]', '[\"13\"]', 3, 1),
(215, 'ปลั๊กอุด PVC 1 นิ้ว', 'ENJO-PV-048', '0', '16', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"18\"]', '[\"13\"]', 3, 1),
(216, 'ปลั๊กอุด PVC 1*1/2 นิ้ว', 'ENJO-PV-126', '0', '6', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"18\"]', '[\"13\"]', 3, 1),
(217, 'ปลั๊กอุด PVC 2*1/2 นิ้ว', 'ENJO-PV-127', '0', '0', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"18\"]', '[\"13\"]', 3, 1),
(218, 'นิปเปิ้ล PVC 1/2 นิ้ว', 'ENJO-PV-121', '0', '30', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"4\"]', '[\"13\"]', 3, 1),
(219, 'นิปเปิ้ล PVC 3/4 นิ้ว', 'ENJO-PV-123', '0', '39', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"4\"]', '[\"13\"]', 3, 1),
(220, 'นิปเปิ้ล PVC 1 นิ้ว', 'ENJO-PV-122', '0', '9', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"4\"]', '[\"13\"]', 3, 1),
(221, 'หางปลาไหล PVC 3/4 นิ้ว', 'ENJO-PV-076', '0', '1', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"14\"]', '[\"13\"]', 3, 1),
(222, 'ฝาครอบ PVC 2* นิ้ว', 'ENJO-PV-071', '0', '5', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"19\"]', '[\"13\"]', 3, 1),
(223, 'ฝาครอบ PVC 1*1/2 นิ้ว', 'ENJO-PV-091', '0', '17', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"19\"]', '[\"13\"]', 3, 1),
(224, 'ฝาครอบ PVC 1*1/4 นิ้ว', 'ENJO-PV-095', '0', '12', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"19\"]', '[\"13\"]', 3, 1),
(225, 'ฝาครอบ PVC 1 นิ้ว', 'ENJO-PV-061', '0', '20', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"19\"]', '[\"13\"]', 3, 1),
(226, 'ฝาครอบ PVC 3/4 นิ้ว', 'ENJO-PV-062', '0', '18', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"19\"]', '[\"13\"]', 3, 1),
(227, 'ฝาครอบ PVC 1/2 นิ้ว', 'ENJO-PV-102', '0', '20', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"19\"]', '[\"13\"]', 3, 1),
(228, 'ข้องอ PVC 90 องศา 1 นิ้ว เกลียวใน', 'ENJO-PV-060', '0', '21', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"6\"]', '[\"13\"]', 3, 1),
(229, 'ข้องอ PVC 90 องศา 3/4 นิ้ว เกลียวใน', 'ENJO-PV-085', '0', '5', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"6\"]', '[\"13\"]', 3, 1),
(230, 'ข้องอ PVC 90 องศา 1/2 นิ้ว เกลียวใน', 'ENJO-PV-084', '0', '10', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"6\"]', '[\"13\"]', 3, 1),
(231, 'สามทาง 2*1/2 นิ้ว', 'ENJO-PV-124', '0', '5', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"8\"]', '[\"13\"]', 3, 1),
(232, 'สามทาง 1*1/4 นิ้ว', 'ENJO-PV-125', '0', '6', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"8\"]', '[\"13\"]', 3, 1),
(233, 'สามทาง 4 นิ้ว', 'ENJO-PV-107', '0', '2', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"8\"]', '[\"13\"]', 3, 1),
(234, 'สามทาง 3 นิ้ว', 'ENJO-PV-106', '0', '4', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"8\"]', '[\"13\"]', 3, 1),
(235, 'สามทาง 2 นิ้ว', 'ENJO-PV-003', '0', '16', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"8\"]', '[\"13\"]', 3, 1),
(236, 'สามทาง 1*1/2 นิ้ว', 'ENJO-PV-105', '0', '14', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"8\"]', '[\"13\"]', 3, 1),
(237, 'สามทาง 1 นิ้ว', 'ENJO-PV-054', '0', '8', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"8\"]', '[\"13\"]', 3, 1),
(238, 'สามทาง 3/4 นิ้ว', 'ENJO-PV-053', '0', '4', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"8\"]', '[\"13\"]', 3, 1),
(239, 'สามทาง 1/2 นิ้ว', 'ENJO-PV-120', '0', '16', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"8\"]', '[\"13\"]', 3, 1),
(240, 'สามทาง PVC 8 นิ้ว', 'ENJO-PV-034', '0', '1', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"8\"]', '[\"13\"]', 3, 1),
(241, 'สามทางวาย PVC 3 นิ้ว', 'ENJO-PV-030', '0', '2', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"8\"]', '[\"13\"]', 3, 1),
(242, 'สามทางวาย PVC 4 นิ้ว', 'ENJO-PV-036', '0', '2', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"8\"]', '[\"13\"]', 3, 1),
(243, 'สามทางวาย PVC 5 นิ้ว', 'ENJO-PV-130', '0', '1', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"8\"]', '[\"13\"]', 3, 1),
(244, 'สามทางลด 2 นิ้ว เป็น 1 นิ้ว', 'ENJO-PV-065', '0', '3', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"8\"]', '[\"13\"]', 3, 1),
(245, 'สามทางลด 2 นิ้ว เป็น 3/4 นิ้ว', 'ENJO-PV-096', '0', '11', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"8\"]', '[\"13\"]', 3, 1),
(246, 'สามทางลด 2 นิ้ว เป็น 1/2 นิ้ว', 'ENJO-PV-059', '0', '5', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"8\"]', '[\"13\"]', 3, 1),
(247, 'สามทางลด 1*1/2 นิ้ว เป็น 1 นิ้ว', 'ENJO-PV-063', '0', '8', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"8\"]', '[\"13\"]', 3, 1),
(248, 'สามทางลด 1 นิ้ว เป็น 1/2 นิ้ว', 'ENJO-PV-110', '0', '14', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"8\"]', '[\"13\"]', 3, 1),
(249, 'สามทางลด 3 นิ้ว เป็น 2 นิ้ว', 'ENJO-PV-135', '0', '2', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"8\"]', '[\"13\"]', 3, 1),
(250, 'สามทางลด 1*1/2 นิ้ว เป็น 3/4 นิ้ว', 'ENJO-PV-134', '0', '6', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"8\"]', '[\"13\"]', 3, 1),
(251, 'ข้อต่อตรง 3 นิ้ว เกลียวนอก', 'ENJO-PV-111', '0', '3', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"5\"]', '[\"13\"]', 3, 1),
(252, 'ข้อต่อตรง PVC 1/2 นิ้ว เกลียวนอก', 'ENJO-PV-011', '0', '24', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"5\"]', '[\"13\"]', 3, 1),
(253, 'ข้อต่อตรง PVC 3/4 นิ้ว เกลียวนอก', 'ENJO-PV-012', '0', '18', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"5\"]', '[\"13\"]', 3, 1),
(254, 'ข้อต่อตรง PVC 1 นิ้ว เกลียวนอก', 'ENJO-PV-013', '0', '22', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"5\"]', '[\"13\"]', 3, 1),
(255, 'ข้อต่อตรง PVC 1*1/4 นิ้ว เกลียวนอก', 'ENJO-PV-014', '0', '6', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"5\"]', '[\"13\"]', 3, 1),
(256, 'ข้อต่อตรง PVC 1*1/2 นิ้ว เกลียวนอก', 'ENJO-PV-015', '0', '14', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"5\"]', '[\"13\"]', 3, 1),
(257, 'ข้อต่อตรง PVC 2 นิ้ว เกลียวนอก', 'ENJO-PV-016', '0', '5', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"5\"]', '[\"13\"]', 3, 1),
(258, 'ข้อต่อตรง PVC 4 นิ้ว เกลียวนอก', 'ENJO-PV-019', '0', '3', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"5\"]', '[\"13\"]', 3, 1),
(259, 'ข้อลด PVC 3/4 นิ้ว เป็น 1/2 นิ้ว', 'ENJO-PV-114', '0', '7', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"15\"]', '[\"13\"]', 3, 1),
(260, 'ข้อลด PVC 1 นิ้ว เป็น 1/2 นิ้ว', 'ENJO-PV-113', '0', '6', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"15\"]', '[\"13\"]', 3, 1),
(261, 'ข้อต่อลด PVC 1 นิ้ว เป็น 3/4 นิ้ว', 'ENJO-PV-058', '0', '7', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"15\"]', '[\"13\"]', 3, 1),
(262, 'ข้อต่อลด PVC 1*1/2 นิ้ว เป็น 3/4 นิ้ว', 'ENJO-PV-046', '0', '17', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"15\"]', '[\"13\"]', 3, 1),
(263, 'ข้อลด PVC 2 นิ้ว เป็น 1/2 นิ้ว', 'ENJO-PV-082', '0', '7', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"15\"]', '[\"13\"]', 3, 1),
(264, 'ข้อต่อลด PVC 2 นิ้ว เป็น 1*1/2 นิ้ว', 'ENJO-PV-045', '0', '0', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"15\"]', '[\"13\"]', 3, 1),
(265, 'ข้อลด PVC 3 นิ้ว เป็น 2 นิ้ว', 'ENJO-PV-112', '0', '1', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"15\"]', '[\"13\"]', 3, 1),
(266, 'ข้อลด PVC 3 นิ้ว เป็น 2*1/2 นิ้ว', 'ENJO-PV-132', '0', '1', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"15\"]', '[\"13\"]', 3, 1),
(267, 'ข้อลด PVC 4 นิ้ว เป็น 3 นิ้ว', 'ENJO-PV-333', '0', '3', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"15\"]', '[\"13\"]', 3, 1),
(268, 'ข้อลด PVC 2*1/2 นิ้ว เป็น 2 นิ้ว', 'ENJO-PV-329', '0', '0', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"15\"]', '[\"13\"]', 3, 1),
(269, 'ข้อลด PVC 2 นิ้ว เป็น 1 นิ้ว', 'ENJO-PV-334', '0', '0', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"15\"]', '[\"13\"]', 3, 1),
(270, 'ข้องอ PVC 4\" 90 องศา สีฟ้า บาง', 'ENJO-PV-115', '0', '4', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"6\"]', '[\"13\"]', 3, 1),
(271, 'ข้องอ 45 องศา 2 นิ้ว', 'ENJO-PV-008', '0', '11', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"6\"]', '[\"13\"]', 3, 1),
(272, 'ข้องอ 45 องศา 3 นิ้ว', 'ENJO-PV-117', '0', '2', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"6\"]', '[\"13\"]', 3, 1),
(273, 'ข้องอ 45 องศา 4 นิ้ว', 'ENJO-PV-330', '0', '7', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"6\"]', '[\"13\"]', 3, 1),
(274, 'ข้อโค้งงอ 90 องศา 4 นิ้ว 100 mm', 'ENJO-PV-332', '0', '1', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"6\"]', '[\"13\"]', 3, 1),
(275, 'บอลวาล์ว PVC 1/2 นิ้ว', 'ENVA-PV-006', '0', '10', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"20\"]', '[\"13\"]', 3, 1),
(276, 'บอลวาล์ว PVC 3/4 นิ้ว', 'ENVA-PV-004', '0', '10', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"20\"]', '[\"13\"]', 3, 1),
(277, 'บอลวาล์ว PVC 1 นิ้ว', 'ENVA-PV-002', '0', '9', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"20\"]', '[\"13\"]', 3, 1),
(278, 'บอลวาล์ว PVC 1*1/2 นิ้ว เกลียวใน', 'ENVA-PV-003', '0', '2', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"20\"]', '[\"13\"]', 3, 1),
(279, 'บอลวาล์ว PVC 2 นิ้ว แบบสวม', 'ENVA-PV-001', '0', '1', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"20\"]', '[\"13\"]', 3, 1),
(280, 'บอลวาล์ว PVC 2 นิ้ว เกลียวใน', 'ENVA-PV-007', '0', '5', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"20\"]', '[\"13\"]', 3, 1),
(281, 'บอลวาล์ว PVC 1*1/2 นิ้ว แบบสวม', 'ENVA-PV-005', '0', '0', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"20\"]', '[\"13\"]', 3, 1),
(282, 'แค้มก้ามปู PVC 1', 'ENET-EQ-216', '0', '197', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"21\"]', '[\"13\"]', 3, 1),
(283, 'แค้มก้ามปู PVC 1/2\" สีฟ้า', 'ENET-EQ-217', '0', '95', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"21\"]', '[\"13\"]', 3, 1),
(284, 'แค้มก้ามปู PVC 3/4\" สีฟ้า', 'ENET-EQ-218', '0', '97', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"21\"]', '[\"13\"]', 3, 1),
(285, 'ข้อต่อตรง 3/8 นิ้ว สีเหลือง', 'ENJO-PV-092', '0', '59', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"5\"]', '[\"13\"]', 3, 1),
(286, 'ข้อต่อตรง 1/2 นิ้ว สีเหลือง', 'ENJO-PV-073', '0', '11', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"5\"]', '[\"13\"]', 3, 1),
(287, 'ข้อต่อตรง 3/4 นิ้ว สีเหลือง', 'ENJO-PV-044', '0', '32', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"5\"]', '[\"13\"]', 3, 1),
(288, 'ข้อต่อตรง 1 นิ้ว สีเหลือง', 'ENJO-PV-129', '0', '36', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"5\"]', '[\"13\"]', 3, 1),
(289, 'ข้อต่อตรง 1*1/2 นิ้ว สีเหลือง', 'ENJO-PV-078', '0', '5', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"5\"]', '[\"13\"]', 3, 1),
(290, 'ข้อต่อเข้ากล่อง 1/2 นิ้ว สีเหลือง', 'ENJO-PV-051', '0', '9', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"22\"]', '[\"13\"]', 3, 1),
(291, 'ข้อต่อเข้ากล่อง 3/4 นิ้ว สีเหลือง', 'ENJO-PV-150', '0', '53', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"22\"]', '[\"13\"]', 3, 1),
(292, 'ข้อต่อเข้ากล่อง 1*1/2 นิ้ว สีเหลือง', 'ENJO-PV-079', '0', '0', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"22\"]', '[\"13\"]', 3, 1),
(293, 'ข้อต่อเข้ากล่อง 3/8 นิ้ว สีเหลือง', 'ENJO-PV-112', '0', '19', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"22\"]', '[\"13\"]', 3, 1),
(294, 'ข้อต่อเข้ากล่อง 1 นิ้ว สีเหลือง', 'ENJO-PV-086', '0', '33', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"22\"]', '[\"13\"]', 3, 1),
(295, 'ข้อต่อตรง 1*1/2 นิ้ว สีเหลือง', 'ENJO-PV-079', '0', '5', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"5\"]', '[\"13\"]', 3, 1),
(296, 'ข้อต่อตรง 2 นิ้ว สีเหลือง', 'ENJO-PV-147', '0', '4', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"5\"]', '[\"13\"]', 3, 1),
(297, 'ข้องอ 90 องศา 1*1/2 นิ้ว สีเหลือง', 'ENJO-PV-038', '0', '11', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"6\"]', '[\"13\"]', 3, 1),
(298, 'ข้องอ 90 องศา 1 นิ้ว สีเหลือง', 'ENJO-PV-028', '0', '13', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"6\"]', '[\"13\"]', 3, 1),
(299, 'ข้องอ 90 องศา 3/4 นิ้ว สีเหลือง', 'ENJO-PV-152', '0', '4', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"6\"]', '[\"13\"]', 3, 1),
(300, 'ข้องอ 90 องศา 1/2 นิ้ว สีเหลือง', 'ENJO-PV-026', '0', '25', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"6\"]', '[\"13\"]', 3, 1),
(301, 'ข้องอ 90 องศา 3/8 นิ้ว สีเหลือง', 'ENJO-PV-022', '0', '12', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"6\"]', '[\"13\"]', 3, 1),
(302, 'ข้อโค้งงอ 90 องศา 2 นิ้ว สีเหลือง', 'ENJO-PV-331', '0', '6', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"6\"]', '[\"13\"]', 3, 1),
(303, 'ข้องอ 45 องศา 1 นิ้ว สีเหลือง', 'ENJO-PV-149', '0', '0', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"6\"]', '[\"13\"]', 3, 1),
(304, 'ท่อ PVC 3/8\" สีเหลือง', 'ENPI-PV-020', '0', '18', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"12\"]', '[\"13\"]', 3, 1);
INSERT INTO `products` (`id`, `name`, `sku`, `price`, `qty`, `image`, `description`, `attribute_value_id`, `brand_id`, `category_id`, `store_id`, `availability`) VALUES
(305, 'ท่อ PVC 1/2\" สีเหลือง', 'ENPI-PV-015', '0', '17', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"12\"]', '[\"13\"]', 3, 1),
(306, 'ท่อ PVC 3/4\" สีเหลือง', 'ENPI-PV-016', '0', '7', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"12\"]', '[\"13\"]', 3, 1),
(307, 'ท่อ PVC 1\" สีเหลือง', 'ENPI-PV-017', '0', '50', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"12\"]', '[\"13\"]', 3, 1),
(308, 'ท่อ PVC 1*1/2\" สีเหลือง', 'ENPI-PV-023', '0', '5', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"12\"]', '[\"13\"]', 3, 1),
(309, 'ท่อ PVC 2\" สีเหลือง', 'ENPI-PV-018', '0', '14', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"12\"]', '[\"13\"]', 3, 1),
(310, 'แค้มก้ามปู PVC 1\" สีเหลือง', 'ENET-EQ-028', '0', '112', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"21\"]', '[\"13\"]', 3, 1),
(311, 'แค้มก้ามปู PVC 3/4\" สีเหลือง', 'ENET-EQ-027', '0', '184', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"21\"]', '[\"13\"]', 3, 1),
(312, 'แค้มก้ามปู PVC 3/8\" สีเหลือง', 'ENET-EQ-082', '0', '27', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"21\"]', '[\"13\"]', 3, 1),
(313, 'แค้มก้ามปู PVC 1/2\" สีเหลือง', 'ENET-EQ-026', '0', '13', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"21\"]', '[\"13\"]', 3, 1),
(314, 'ท่อ PVC 1/2\" สีขาว', 'ENPI-PV-024', '0', '6', '<p>You did not select a file to upload.</p>', '', '[\"31\"]', '[\"12\"]', '[\"13\"]', 3, 1),
(315, 'ท่อ PVC 3/4\" สีขาว', 'ENPI-PV-025', '0', '20', '<p>You did not select a file to upload.</p>', '', '[\"31\"]', '[\"12\"]', '[\"13\"]', 3, 1),
(316, 'ข้อต่อตรง 1/2\" สีขาว', 'ENJO-PV-101', '0', '14', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"5\"]', '[\"13\"]', 3, 1),
(317, 'ข้อต่อตรง 3/4\" สีขาว', 'ENJO-PV-087', '0', '42', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"5\"]', '[\"13\"]', 3, 1),
(318, 'ข้อต่อเข้ากล่อง 1/2 นิ้ว สีขาว', 'ENJO-PV-081', '0', '31', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"22\"]', '[\"13\"]', 3, 1),
(319, 'ข้อต่อเข้ากล่อง 3/4 นิ้ว สีขาว', 'ENET-EQ-085', '0', '52', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"22\"]', '[\"13\"]', 3, 1),
(320, 'แค้มก้ามปู PVC 1/2\" สีขาว', 'ENET-EQ-023', '0', '140', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"21\"]', '[\"13\"]', 3, 1),
(321, 'แค้มก้ามปู PVC 3/4\" สีขาว', 'ENET-EQ-024', '0', '286', '<p>You did not select a file to upload.</p>', '', '[\"30\"]', '[\"21\"]', '[\"13\"]', 3, 1),
(322, 'สามทาง สแตนเลส 304 3/4” แบบเชื่อม', 'ENJO-SL-157', '0', '20', '<p>You did not select a file to upload.</p>', '', '[\"29\"]', '[\"8\"]', '[\"6\"]', 3, 1),
(323, 'ข้อต่อสามทาง กาวาไนท์ 1/2” เกลียวใน', 'ENJO-KA-051', '0', '3', '<p>You did not select a file to upload.</p>', '', '[\"29\"]', '[\"8\"]', '[\"4\"]', 3, 1),
(324, 'ข้อต่อสามทาง กาวาไนท์ 3/4” เกลียวใน', 'ENJO-KA-020', '0', '5', '<p>You did not select a file to upload.</p>', '', '[\"29\"]', '[\"8\"]', '[\"4\"]', 3, 1),
(325, 'ข้อต่อสามทาง กาวาไนท์ 1” เกลียวใน', 'ENJO-KA-008', '0', '7', '<p>You did not select a file to upload.</p>', '', '[\"29\"]', '[\"8\"]', '[\"4\"]', 3, 1),
(326, 'ข้อต่อสามทาง กาวาไนท์ 1*1/4” เกลียวใน', 'ENJO-KA-052', '0', '2', '<p>You did not select a file to upload.</p>', '', '[\"29\"]', '[\"8\"]', '[\"4\"]', 3, 1),
(327, 'ข้อต่อสามทาง กาวาไนท์ 2” เกลียวใน', 'ENJO-KA-200', '0', '4', '<p>You did not select a file to upload.</p>', '', '[\"29\"]', '[\"8\"]', '[\"4\"]', 3, 1),
(328, 'ข้อต่อสามทาง กาวาไนท์ 2*1/2” เกลียวใน', 'ENJO-KA-041', '0', '1', '<p>You did not select a file to upload.</p>', '', '[\"29\"]', '[\"8\"]', '[\"4\"]', 3, 1),
(329, 'ข้อต่อสามทาง กาวาไนท์ 3” เกลียวใน', 'ENJO-KA-201', '0', '1', '<p>You did not select a file to upload.</p>', '', '[\"29\"]', '[\"8\"]', '[\"4\"]', 3, 1),
(330, 'ท่อ PVC 4” สีฟ้า ปลายบาน', 'ENPI-PV-011', '0', '13', '<p>You did not select a file to upload.</p>', '', '[\"31\"]', '[\"12\"]', '[\"13\"]', 3, 1),
(331, 'ท่อ PVC 2” สีฟ้า ปลายบาน', 'ENPI-PV-008', '0', '15', '<p>You did not select a file to upload.</p>', '', '[\"31\"]', '[\"12\"]', '[\"13\"]', 3, 1),
(332, 'ท่อ PVC 3/4” สีขาว', 'ENPI-PV-025', '0', '20', '<p>You did not select a file to upload.</p>', '', '[\"31\"]', '[\"12\"]', '[\"13\"]', 3, 1),
(333, 'ท่อ PVC 3/8” สีเหลือง', 'ENPI-PV-020', '0', '17', '<p>You did not select a file to upload.</p>', '', '[\"31\"]', '[\"12\"]', '[\"13\"]', 3, 1),
(334, 'ท่อ PVC 1/2” สีเหลือง', 'ENPI-PV-015', '0', '17', '<p>You did not select a file to upload.</p>', '', '[\"31\"]', '[\"12\"]', '[\"13\"]', 3, 1),
(335, 'ท่อ PVC 3/4” สีเหลือง', 'ENPI-PV-016', '0', '8', '<p>You did not select a file to upload.</p>', '', '[\"31\"]', '[\"12\"]', '[\"13\"]', 3, 1),
(336, 'ท่อ PVC 1” สีเหลือง', 'ENPI-PV-017', '0', '37', '<p>You did not select a file to upload.</p>', '', '[\"31\"]', '[\"12\"]', '[\"13\"]', 3, 1),
(337, 'ท่อ PVC 1*1/2” สีเหลือง', 'ENPI-PV-023', '0', '5', '<p>You did not select a file to upload.</p>', '', '[\"31\"]', '[\"12\"]', '[\"13\"]', 3, 1),
(338, 'ท่อ PVC 2” สีเหลือง', 'ENPI-PV-018', '0', '14', '<p>You did not select a file to upload.</p>', '', '[\"31\"]', '[\"12\"]', '[\"13\"]', 3, 1),
(339, 'ท่อ PVC 1/2” สีฟ้า ปลายบาน', 'ENPI-PV-003', '0', '28', '<p>You did not select a file to upload.</p>', '', '[\"31\"]', '[\"12\"]', '[\"13\"]', 3, 1),
(340, 'ท่อ PVC 3/4” สีฟ้า ปลายบาน', 'ENPI-PV-004', '0', '28', '<p>You did not select a file to upload.</p>', '', '[\"31\"]', '[\"12\"]', '[\"13\"]', 3, 1),
(341, 'ท่อ PVC 1”  สีฟ้า ปลายบาน', 'ENPI-PV-005', '0', '18', '<p>You did not select a file to upload.</p>', '', '[\"31\"]', '[\"12\"]', '[\"13\"]', 3, 1),
(342, 'ท่อ PVC 1*1/2” สีฟ้า ปลายบาน', 'ENPI-PV-007', '0', '11', '<p>You did not select a file to upload.</p>', '', '[\"31\"]', '[\"12\"]', '[\"13\"]', 3, 1),
(343, 'ท่อ PVC 1*1/4” สีฟ้า ปลายบาน', 'ENPI-PV-006', '0', '8', '<p>You did not select a file to upload.</p>', '', '[\"31\"]', '[\"12\"]', '[\"13\"]', 3, 1),
(344, 'ท่อ PVC 3” สีฟ้า ปลายบาน', 'ENPI-PV-010', '0', '3', '<p>You did not select a file to upload.</p>', '', '[\"31\"]', '[\"12\"]', '[\"13\"]', 3, 1),
(345, 'ท่อ PVC 2*1/2” สีฟ้า ปลายบาน', 'ENPI-PV-009', '0', '3', '<p>You did not select a file to upload.</p>', '', '[\"31\"]', '[\"12\"]', '[\"13\"]', 3, 1),
(346, 'ข้อต่อสามทางลด กาวาไนท์ 1” เป็น 3/4” เกลียวใน', 'ENJO-KA-038', '0', '2', '<p>You did not select a file to upload.</p>', '', '[\"29\"]', '[\"8\"]', '[\"4\"]', 3, 1),
(347, 'ข้อต่อสามทางลด กาวาไนท์ 1*1/4” เป็น 1/2” เกลียวใน', 'ENJO-KA-210', '0', '1', '<p>You did not select a file to upload.</p>', '', '[\"29\"]', '[\"8\"]', '[\"4\"]', 3, 1),
(348, 'ข้อต่อสามทางลด กาวาไนท์ 2” เป็น 1/2” เกลียวใน', 'ENJO-KA-209', '0', '1', '<p>You did not select a file to upload.</p>', '', '[\"29\"]', '[\"8\"]', '[\"4\"]', 3, 1),
(349, 'ข้อต่อสามทางลด กาวาไนท์ 2” เป็น 1” เกลียวใน', 'ENJO-KA-053', '0', '1', '<p>You did not select a file to upload.</p>', '', '[\"29\"]', '[\"8\"]', '[\"4\"]', 3, 1),
(350, 'ข้อต่อสามทางลด กาวาไนท์ 2*1/2” เป็น 1” เกลียวใน', 'ENJO-KA-039', '0', '2', '<p>You did not select a file to upload.</p>', '', '[\"29\"]', '[\"8\"]', '[\"4\"]', 3, 1),
(351, 'ข้อลดเหลี่ยม กาวาไนท์ 2*1/2” เป็น 1”', 'ENJO-KA-040', '0', '2', '<p>You did not select a file to upload.</p>', '', '[\"29\"]', '[\"16\"]', '[\"4\"]', 3, 1),
(352, 'ข้อลดกลม กาวาไนท์ 1*1/2” เป็น 1*1/4”', 'ENJO-KA-037', '0', '2', '<p>You did not select a file to upload.</p>', '', '[\"29\"]', '[\"15\"]', '[\"4\"]', 3, 1),
(353, 'ข้อลดกลม กาวาไนท์ 1” เป็น 3/4”', 'ENJO-KA-036', '0', '2', '<p>You did not select a file to upload.</p>', '', '[\"29\"]', '[\"15\"]', '[\"4\"]', 3, 1),
(354, 'ข้อลดกลม กาวาไนท์ 3” เป็น 2”', 'ENJO-KA-014', '0', '1', '<p>You did not select a file to upload.</p>', '', '[\"29\"]', '[\"15\"]', '[\"4\"]', 3, 1),
(355, 'ข้อลดกลม กาวาไนท์ 1*1/2” เป็น 1”', 'ENJO-KA-214', '0', '2', '<p>You did not select a file to upload.</p>', '', '[\"29\"]', '[\"15\"]', '[\"4\"]', 3, 1),
(356, 'ข้อลดกลม กาวาไนท์ 2*1/2” เป็น 1 “', 'ENJO-KA-040', '0', '3', '<p>You did not select a file to upload.</p>', '', '[\"29\"]', '[\"15\"]', '[\"4\"]', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
CREATE TABLE IF NOT EXISTS `stores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `name`, `active`) VALUES
(3, 'คลังแผนกวิศวกรรม', 1),
(4, 'คลังสินค้ารวม', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `gender` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `firstname`, `lastname`, `phone`, `gender`) VALUES
(1, 'engineer', '$2y$10$yfi5nUQGXUZtMdl27dWAyOd/jMOmATBpiUvJDmUu9hJ5Ro6BE5wsK', 'admin@admin.com', 'Engineer', 'NFC', '053673985', 1),
(2, 'engineer', '$2y$10$B8F8kb74bgcXHEkWdatlgOO2j7hCeVa5ajTg/62JfYNETAvf87dA6', 'engineer@nfc.com', 'engineer', 'engineer', '26', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

DROP TABLE IF EXISTS `user_group`;
CREATE TABLE IF NOT EXISTS `user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(7, 6, 4),
(8, 2, 5);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
