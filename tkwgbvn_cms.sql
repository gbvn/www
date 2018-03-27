-- phpMyAdmin SQL Dump
-- version 4.4.15
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 23, 2018 at 11:06 AM
-- Server version: 5.5.31
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tkwgbvn_cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_password` text COLLATE utf8_unicode_ci,
  `admin_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_note` text COLLATE utf8_unicode_ci,
  `admin_state` int(11) DEFAULT '1',
  `admin_role` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_login`, `admin_password`, `admin_phone`, `admin_email`, `admin_note`, `admin_state`, `admin_role`) VALUES
(1, 'Admin', 'admin', '$2y$10$sYR1CeUP5x0cw2Rwc1N25uglpBtX520qXyolMIggKy.zEt6XUinRu', '', '', '', 1, 1),
(2, 'hpt', 'hpt', '$2y$10$x9RWBVgCWSb9fkQGoh7ESOhYV1SnY5Fn5uwKUS9WfdUV1O4wvIe4a', '0973457689', 'ngobkanh@gmail.com', 'đây là tài khoản test', 1, 2),
(3, 'Trương Quang Tuấn', 'tuan', '$2y$10$sYR1CeUP5x0cw2Rwc1N25uglpBtX520qXyolMIggKy.zEt6XUinRu', '01669', 'tuan@gmail.com', 'test', 1, 2),
(4, NULL, NULL, '$2y$10$02.uMGB26ln3fgNk8MyarOf8hnuaF/hWlukTDKk99Kb9TluOarctq', NULL, NULL, NULL, 1, NULL),
(5, 'cms', 'cms', '$2y$10$FtjsErf.CxMYTl3zt3xOpuvWvPOAHfdCxo/9apf.tw8Aky/udFN6i', '135778', '', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role`
--

CREATE TABLE IF NOT EXISTS `admin_role` (
  `admin_role_id` int(11) NOT NULL,
  `admin_role_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin_role`
--

INSERT INTO `admin_role` (`admin_role_id`, `admin_role_name`) VALUES
(1, 'Admin'),
(2, 'Mod');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `id_cart` int(11) NOT NULL,
  `id_account` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `total_cart` int(11) DEFAULT NULL,
  `date_cart` date DEFAULT NULL,
  `id_orderState` int(11) DEFAULT NULL,
  `note_cart` text COLLATE utf8_unicode_ci,
  `name_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_buyer` text COLLATE utf8_unicode_ci,
  `note_buyer` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id_cart`, `id_account`, `session_id`, `total_price`, `total_cart`, `date_cart`, `id_orderState`, `note_cart`, `name_buyer`, `mail_buyer`, `phone_buyer`, `address_buyer`, `note_buyer`) VALUES
(45, NULL, 'mkrnfu62crnut73tj9ip88k4c0', 4560000, NULL, '0000-00-00', NULL, NULL, 'hang', 'ngockhanh260614@gmail.com', '0973378669', 'Thanh Xuân, Thanh Xuân', 'đơn hàng hằng pt'),
(46, NULL, 'q6hilk5otma71lnmfk4jfe3bo0', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', 'test'),
(47, NULL, '8rg8qp2tib6bhq40siemsl0au1', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(48, NULL, 'p29v6fieekj8qc6r9iei8rkr84', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(49, NULL, 'gibro9jjp7o8r4dhlulet7t2c7', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(50, NULL, 'skgfhmeppmr97bion8qlhv2f24', 7600000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(51, NULL, '14sbco3nbkh6tss6mibu4c63i2', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(52, NULL, 'rdk00s074i1i4seat51nh109d6', 7600000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(53, NULL, 'ibcpu4cam64hh6jvvlqde89v90', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(54, NULL, 'r2hcu630iilbqufhd80udq4eh0', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(55, NULL, 'krsem1sgk8k9smbs1uinikks42', 7600000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(56, NULL, 'gjdbs5hhkns2vjb0juaf6g8i84', 135000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(57, NULL, 'q4asrlk395bqes71q3m1dj7a53', 135000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(58, NULL, 'mfuj32kovfsj87sum11433so15', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(59, NULL, 'o82tantv1gh498mq2giekk0mj1', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(60, NULL, 'vv3bvs960u0efu33mksbikfr02', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(61, NULL, '77v49he85i8nuuet5p2vt9g7r0', 7600000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(62, NULL, 'qs835th55ruep5q2f34fdimdg6', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(63, NULL, '0v3amtlih28cip0bskvi8tr2t7', 7600000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(64, NULL, 's34tnbg59l4psbpbc2jg4ru734', 135000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(65, NULL, 'jna4k52dg50ce0e2euknmpsc53', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(66, NULL, '1mrapf9122qb0n9gd32j94l6f5', 6000, NULL, '0000-00-00', NULL, NULL, 'adf', 'viethung@gmail.com', '01672523165', 'ha nội', 'ghi chú aaa'),
(67, NULL, 'sl6a5d5957d6n37tptrtp29mt4', 2000, NULL, '0000-00-00', NULL, NULL, 'bczcv', 'viethung@gmail.com', 'aasdfas', 'asfas', 'fdasdfasdf');

-- --------------------------------------------------------

--
-- Table structure for table `cartdetail`
--

CREATE TABLE IF NOT EXISTS `cartdetail` (
  `id_cartDetail` int(11) NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price_product` double DEFAULT NULL,
  `qyt_product` int(11) DEFAULT NULL,
  `totalprice_product` double DEFAULT NULL,
  `subInfo1` text COLLATE utf8_unicode_ci,
  `id_color` int(11) DEFAULT NULL,
  `id_size` int(11) DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cart` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cartdetail`
--

INSERT INTO `cartdetail` (`id_cartDetail`, `id_product`, `session_id`, `price_product`, `qyt_product`, `totalprice_product`, `subInfo1`, `id_color`, `id_size`, `color`, `size`, `id_cart`) VALUES
(30, 28, 'mkrnfu62crnut73tj9ip88k4c0', 760000, 4, 3040000, NULL, 0, 0, '', '', 45),
(31, 34, 'mkrnfu62crnut73tj9ip88k4c0', 760000, 2, 1520000, NULL, 0, 0, '', '', 45),
(32, 28, 'q6hilk5otma71lnmfk4jfe3bo0', 760000, 1, 760000, NULL, 0, 0, '', '', 46),
(33, 29, '8rg8qp2tib6bhq40siemsl0au1', 760000, 1, 760000, NULL, 0, 0, '', '', 47),
(34, 27, 'p29v6fieekj8qc6r9iei8rkr84', 760000, 1, 760000, NULL, 0, 0, '', '', 48),
(35, 28, 'gibro9jjp7o8r4dhlulet7t2c7', 760000, 1, 760000, NULL, 0, 0, '', '', 49),
(36, 30, 'skgfhmeppmr97bion8qlhv2f24', 7600000, 1, 7600000, NULL, 0, 0, '', '', 50),
(37, 31, '14sbco3nbkh6tss6mibu4c63i2', 760000, 1, 760000, NULL, 0, 0, '', '', 51),
(38, 32, 'rdk00s074i1i4seat51nh109d6', 7600000, 1, 7600000, NULL, 0, 0, '', '', 52),
(39, 33, 'ibcpu4cam64hh6jvvlqde89v90', 760000, 1, 760000, NULL, 0, 0, '', '', 53),
(40, 35, 'r2hcu630iilbqufhd80udq4eh0', 760000, 1, 760000, NULL, 0, 0, '', '', 54),
(41, 36, 'krsem1sgk8k9smbs1uinikks42', 7600000, 1, 7600000, NULL, 0, 0, '', '', 55),
(42, 37, 'gjdbs5hhkns2vjb0juaf6g8i84', 135000, 1, 135000, NULL, 0, 0, '', '', 56),
(43, 37, 'q4asrlk395bqes71q3m1dj7a53', 135000, 1, 135000, NULL, 0, 0, '', '', 57),
(44, 27, 'mfuj32kovfsj87sum11433so15', 760000, 1, 760000, NULL, 0, 0, '', '', 58),
(45, 28, 'o82tantv1gh498mq2giekk0mj1', 760000, 1, 760000, NULL, 0, 0, '', '', 59),
(46, 29, 'vv3bvs960u0efu33mksbikfr02', 760000, 1, 760000, NULL, 0, 0, '', '', 60),
(47, 30, '77v49he85i8nuuet5p2vt9g7r0', 7600000, 1, 7600000, NULL, 0, 0, '', '', 61),
(48, 35, 'qs835th55ruep5q2f34fdimdg6', 760000, 1, 760000, NULL, 0, 0, '', '', 62),
(49, 36, '0v3amtlih28cip0bskvi8tr2t7', 7600000, 1, 7600000, NULL, 0, 0, '', '', 63),
(50, 37, 's34tnbg59l4psbpbc2jg4ru734', 135000, 1, 135000, NULL, 0, 0, '', '', 64),
(51, 27, 'jna4k52dg50ce0e2euknmpsc53', 760000, 1, 760000, NULL, 0, 0, '', '', 65),
(52, 27, '1mrapf9122qb0n9gd32j94l6f5', 2000, 3, 6000, NULL, 0, 0, '', '', 66),
(53, 27, 'sl6a5d5957d6n37tptrtp29mt4', 2000, 1, 2000, NULL, 0, 0, '', '', 67);

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

CREATE TABLE IF NOT EXISTS `color` (
  `color_id` bigint(20) NOT NULL,
  `color_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color_price` double DEFAULT NULL,
  `color_stock` int(11) DEFAULT NULL,
  `color_img` text COLLATE utf8_unicode_ci,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE IF NOT EXISTS `config` (
  `config_id` int(11) NOT NULL,
  `web_name` text COLLATE utf8_unicode_ci,
  `web_meta` text COLLATE utf8_unicode_ci,
  `web_des` text COLLATE utf8_unicode_ci,
  `web_keyword` text COLLATE utf8_unicode_ci,
  `web_logo` text COLLATE utf8_unicode_ci,
  `web_hotline` text COLLATE utf8_unicode_ci,
  `web_phone` text COLLATE utf8_unicode_ci,
  `web_email` text COLLATE utf8_unicode_ci,
  `content_home1` text COLLATE utf8_unicode_ci,
  `content_home2` text COLLATE utf8_unicode_ci,
  `content_home3` text COLLATE utf8_unicode_ci,
  `content_home4` text COLLATE utf8_unicode_ci,
  `content_home5` text COLLATE utf8_unicode_ci,
  `content_home6` text COLLATE utf8_unicode_ci,
  `content_home7` text COLLATE utf8_unicode_ci,
  `content_home8` text COLLATE utf8_unicode_ci,
  `content_home9` text COLLATE utf8_unicode_ci,
  `content_home10` text COLLATE utf8_unicode_ci,
  `facebook` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `google` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `google_map` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `icon_web` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `slideshow_home` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`config_id`, `web_name`, `web_meta`, `web_des`, `web_keyword`, `web_logo`, `web_hotline`, `web_phone`, `web_email`, `content_home1`, `content_home2`, `content_home3`, `content_home4`, `content_home5`, `content_home6`, `content_home7`, `content_home8`, `content_home9`, `content_home10`, `facebook`, `google`, `twitter`, `google_map`, `youtube`, `icon_web`, `slideshow_home`) VALUES
(1, 'demo.com.vn', '', '', ' Bao cao su, Đồ chơi tình dục nam, Đồ chơi tình dục nữ, Dương vật giả, Âm đạo giả, Búp bê tình dục, Đồ chơi tình dục giá rẻ, do choi tinh duc,am dao gia,duong vat gia,Bao cao su don den,Máy tập to dương vật ,Dương vật giả hàng khủng ,sextoy nữ', 'bigVerticalBlack.png', '', '', '', '189 nguyễn ngọc vũ trung hòa cầu giấy hà nội', 'phamphutuan2017@gmail.com', '01262420111', '', '', '0936959129', '772', '82', '', '', 'https://www.facebook.com/congdongvnexpress/', 'https://plus.google.com/discover', 'twitter', '<p><iframe frameborder="0" height="450" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d59587.97785448771!2d105.80194413492788!3d21.02273601629448!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m', '<p><iframe frameborder="0" height="315" src="https://www.youtube.com/embed/vCIc1g_4JWM" width="560"></iframe></p>\r\n', 'vn.gif', '["{\\"image\\":\\"slide3.jpg\\"}","{\\"image\\":\\"slide2.jpg\\"}","{\\"image\\":\\"slide1.jpg\\"}"]');

-- --------------------------------------------------------

--
-- Table structure for table `config_languages`
--

CREATE TABLE IF NOT EXISTS `config_languages` (
  `id` int(11) NOT NULL,
  `config_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_name` text COLLATE utf8_unicode_ci,
  `lang_web_meta` text COLLATE utf8_unicode_ci,
  `lang_web_des` text COLLATE utf8_unicode_ci,
  `lang_web_keyword` text COLLATE utf8_unicode_ci,
  `lang_web_hotline` text COLLATE utf8_unicode_ci,
  `lang_web_phone` text COLLATE utf8_unicode_ci,
  `lang_web_email` text COLLATE utf8_unicode_ci,
  `lang_content_home1` text COLLATE utf8_unicode_ci,
  `lang_content_home2` text COLLATE utf8_unicode_ci,
  `lang_content_home3` text COLLATE utf8_unicode_ci,
  `lang_content_home4` text COLLATE utf8_unicode_ci,
  `lang_content_home5` text COLLATE utf8_unicode_ci,
  `lang_content_home6` text COLLATE utf8_unicode_ci,
  `lang_content_home7` text COLLATE utf8_unicode_ci,
  `lang_content_home8` text COLLATE utf8_unicode_ci,
  `lang_content_home9` text COLLATE utf8_unicode_ci,
  `lang_content_home10` text COLLATE utf8_unicode_ci,
  `facebook` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `google` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `google_map` text COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(20000) COLLATE utf8_unicode_ci NOT NULL,
  `icon_web` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `edit_state` int(11) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `config_languages`
--

INSERT INTO `config_languages` (`id`, `config_id`, `languages_code`, `lang_web_name`, `lang_web_meta`, `lang_web_des`, `lang_web_keyword`, `lang_web_hotline`, `lang_web_phone`, `lang_web_email`, `lang_content_home1`, `lang_content_home2`, `lang_content_home3`, `lang_content_home4`, `lang_content_home5`, `lang_content_home6`, `lang_content_home7`, `lang_content_home8`, `lang_content_home9`, `lang_content_home10`, `facebook`, `google`, `twitter`, `google_map`, `youtube`, `icon_web`, `edit_state`) VALUES
(1, 1, 'vn', 'demo.com.vn', '', '', ' Bao cao su, Đồ chơi tình dục nam, Đồ chơi tình dục nữ, Dương vật giả, Âm đạo giả, Búp bê tình dục, Đồ chơi tình dục giá rẻ, do choi tinh duc,am dao gia,duong vat gia,Bao cao su don den,Máy tập to dương vật ,Dương vật giả hàng khủng ,sextoy nữ', '', '', '', '189 nguyễn ngọc vũ trung hòa cầu giấy hà nội', 'phamphutuan2017@gmail.com', '01262420111', '', '', '0936959129', '772', '82', '', '', 'https://www.facebook.com/congdongvnexpress/', 'https://plus.google.com/discover', 'twitter', '<p><iframe frameborder="0" height="450" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d59587.97785448771!2d105.80194413492788!3d21.02273601629448!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab9bd9861ca1%3A0xe7887f7b72ca17a9!2zSGFub2ksIEhvw6BuIEtp4bq_bSwgSGFub2k!5e0!3m2!1sen!2s!4v1513235284242" style="border:0" width="600"></iframe></p>\r\n', '<p><iframe frameborder="0" height="315" src="https://www.youtube.com/embed/vCIc1g_4JWM" width="560"></iframe></p>\r\n', '', 1),
(2, 1, 'en', '', '', '', '', '', '', '', 'WHY CHOOSE US?', 'With the operating experiences of plywood factory from 2012, we have supply Good quality Plywood for Packing and Furniture Industry as well as Construction. We are deserved to become your partner to help you have good materials for your production and your trading in plywood industry all over the world. \r\nWe have our team to control all processes of plywood Production very professionally such as Q&C, R&D, Technical team .Moreover, our market is widespread in many foreign countries like Thailand, Korea, Japan, Malaysia, Indonesia, Myamar, Taiwan and others.\r\nComing to us, you wil have many Priorities in Price, Early Delivery as well as in Quality: Strong Density, No Gap, straight side, smooth face....\r\n', '', 'HISTORY', 'Our factory start to operate in 2012, selling to trading companies to bring cargo to foreign countries. And in 2015, we establish our own company to export to customer directly. \r\nOur plywood is exported to Thailand, Indonesia, Korea, Malaysia, Taiwan and other countries.\r\n', 'MAIN PRODUCTS', 'Plywood, Core Veneer, Film faced plywood, Finger Joint , Sawn timber', 'CLIENTS - PARTNERS', 'TIMBER RELATED STORIES', '', '', '', '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE IF NOT EXISTS `currency` (
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_name` text COLLATE utf8_unicode_ci,
  `currency_exchange_rate` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `languages_id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `languages_name` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`languages_id`, `languages_code`, `languages_name`) VALUES
(1, 'vn', 'Tiếng Việt'),
(2, 'en', 'English');

-- --------------------------------------------------------

--
-- Table structure for table `lien_he`
--

CREATE TABLE IF NOT EXISTS `lien_he` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(500) CHARACTER SET utf8 NOT NULL,
  `comment` mediumtext CHARACTER SET utf8 NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lien_he`
--

INSERT INTO `lien_he` (`id`, `name`, `email`, `phone`, `address`, `comment`, `time`) VALUES
(1, 'tuấn', 'tuan@gmail.com', '0245', 'Hà Nội', 'ok', '2017-11-29 12:51:52'),
(2, 'Hang Pham Thuy', 'ngockhanh260614@gmail.com', '973378669', 'Thanh Xuân, Thanh Xuân', 'xfghfghfgh', '2017-12-03 04:06:32'),
(3, 'tuấn', 'tuan@gmail.com', '1234567890', 'Hà Nội', 'ok', '2017-12-29 06:50:13');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_name` text COLLATE utf8_unicode_ci,
  `menu_sort_order` int(11) DEFAULT '0',
  `menu_type_id` int(11) DEFAULT NULL,
  `menu_url` text COLLATE utf8_unicode_ci,
  `productcat_id` int(11) DEFAULT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `news_id` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `menu_parent` int(11) NOT NULL DEFAULT '0',
  `servicecat_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `state_menuHeader` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_name`, `menu_sort_order`, `menu_type_id`, `menu_url`, `productcat_id`, `newscat_id`, `product_id`, `page_id`, `news_id`, `state`, `menu_parent`, `servicecat_id`, `service_id`, `state_menuHeader`) VALUES
(114, 'Trang chủ', 0, 1, '', 0, 0, 0, 0, 0, 1, 188, 0, 0, NULL),
(154, 'Tin Tức', 9, 5, '', 0, 58, 0, 0, 0, 1, 188, 0, 0, NULL),
(155, 'Loại sản phẩm 1', 2, 3, '', 164, 0, 0, 0, 0, 1, 188, 0, 0, NULL),
(158, 'Loại sản phẩm 2', 3, 3, '', 163, 0, 0, 0, 0, 1, 188, 0, 0, NULL),
(161, 'Loại sản phẩm 3', 4, 3, '', 165, 0, 0, 0, 0, 1, 188, 0, 0, NULL),
(162, 'Loại sản phẩm 4', 5, 3, '', 166, 0, 0, 0, 0, 1, 188, 0, 0, NULL),
(165, 'Liên hệ', 10, 8, 'lien-he-1', 0, 0, 0, 0, 0, 1, 188, 0, 0, NULL),
(176, 'Dịch vụ', 6, 12, '', 0, 0, 0, 0, 0, 1, 188, 4, 0, NULL),
(185, 'Loại sản phẩm 4.1', 1, 3, '', 169, 0, 0, 0, 0, 1, 162, 0, 0, NULL),
(186, 'Loại sản phẩm 4.2', 2, 3, '', 170, 0, 0, 0, 0, 1, 162, 0, 0, NULL),
(187, 'Loại sản phẩm 4.3', 3, 3, '', 171, 0, 0, 0, 0, 1, 162, 0, 0, NULL),
(188, 'MainMenu', 0, 1, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(192, 'SubMenu', 0, 1, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(193, 'Giới thiệu', 0, 13, '', 0, 0, 0, 35, 0, 1, 192, 0, 0, NULL),
(194, 'Chính sách', 0, 2, '', 0, 0, 0, 0, 0, 1, 192, 0, 0, NULL),
(196, 'Liên hệ', 0, 8, 'lien-he-1', 0, 0, 0, 0, 0, 1, 192, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu_languages`
--

CREATE TABLE IF NOT EXISTS `menu_languages` (
  `id` bigint(20) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang_menu_name` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `urlFriendly_menu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=371 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu_languages`
--

INSERT INTO `menu_languages` (`id`, `languages_code`, `lang_menu_name`, `edit_state`, `urlFriendly_menu`, `menu_id`) VALUES
(205, 'vn', 'Trang chủ', 1, '', 114),
(206, 'en', 'Trang chủ - vn', 1, '', 114),
(285, 'vn', 'Tin Tức', 1, '', 154),
(286, 'en', 'News', 1, '', 154),
(287, 'vn', 'Loại sản phẩm 1', 0, '', 155),
(288, 'en', 'Loại sản phẩm 1', 0, '', 155),
(293, 'vn', 'Loại sản phẩm 2', 0, '', 158),
(294, 'en', 'Loại sản phẩm 2', 0, '', 158),
(299, 'vn', 'Loại sản phẩm 3', 0, '', 161),
(300, 'en', 'Loại sản phẩm 3', 0, '', 161),
(301, 'vn', 'Loại sản phẩm 4', 0, '', 162),
(302, 'en', 'Loại sản phẩm 4', 0, '', 162),
(307, 'vn', 'Liên hệ', 0, 'lien-he-1', 165),
(308, 'en', 'contact', 0, '', 165),
(329, 'vn', 'Dịch vụ', 1, '', 176),
(330, 'en', 'Service', 1, '', 176),
(347, 'vn', 'Loại sản phẩm 4.1', 0, '', 185),
(348, 'en', 'Loại sản phẩm 4.1', 0, '', 185),
(349, 'vn', 'Loại sản phẩm 4.2', 0, '', 186),
(350, 'en', 'Loại sản phẩm 4.2', 0, '', 186),
(351, 'vn', 'Loại sản phẩm 4.3', 0, '', 187),
(352, 'en', 'Loại sản phẩm 4.3', 0, '', 187),
(353, 'vn', 'MainMenu', 0, '', 188),
(354, 'en', 'MainMenu', 0, '', 188),
(361, 'vn', 'SubMenu', 0, '', 192),
(362, 'en', 'SubMenu', 0, '', 192),
(363, 'vn', 'Giới thiệu', 0, '', 193),
(364, 'en', 'Giới thiệu', 0, '', 193),
(365, 'vn', 'Chính sách', 0, '', 194),
(366, 'en', 'Chính sách', 0, '', 194),
(369, 'vn', 'Liên hệ', 0, 'lien-he-1', 196),
(370, 'en', 'Liên hệ', 0, 'lien-he-1', 196);

-- --------------------------------------------------------

--
-- Table structure for table `menu_type`
--

CREATE TABLE IF NOT EXISTS `menu_type` (
  `menu_type_id` int(11) NOT NULL,
  `menu_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu_type`
--

INSERT INTO `menu_type` (`menu_type_id`, `menu_type_name`, `first_url`) VALUES
(1, 'Trang chủ', ''),
(2, 'Tất cả sản phẩm', 'san-pham'),
(3, 'Danh mục sản phẩm', NULL),
(4, 'Sản phẩm cụ thể', NULL),
(5, 'Danh mục tin tức', NULL),
(6, 'Tất cả bài tin tức', ''),
(7, 'Bài viết tin tức', NULL),
(8, 'Địa chỉ web', NULL),
(9, 'Liên hệ', NULL),
(10, 'Tất cả dịch vụ', NULL),
(11, 'Bài viết dịch vụ', NULL),
(12, 'Danh mục dịch vụ', NULL),
(13, 'Page', NULL),
(14, 'Đăng ký', NULL),
(15, 'Đăng nhập', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu_type_languages`
--

CREATE TABLE IF NOT EXISTS `menu_type_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_type_id` int(11) DEFAULT NULL,
  `menu_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu_type_languages`
--

INSERT INTO `menu_type_languages` (`id`, `languages_code`, `menu_type_id`, `menu_type_name`, `friendly_url`) VALUES
(1, 'vn', 1, 'Trang chủ', ''),
(2, 'en', 1, 'Home', ''),
(3, 'vn', 2, 'Tất cả sản phẩm', 'san-pham'),
(4, 'en', 2, 'All products', 'products'),
(5, 'vn', 3, 'Danh mục sản phẩm', ''),
(6, 'en', 3, 'Catalog product', ''),
(7, 'vn', 4, 'Sản phẩm cụ thể', ''),
(8, 'en', 4, 'Product detail', ''),
(9, 'vn', 5, 'Danh mục tin tức', ''),
(10, 'en', 5, 'Catalog news', ''),
(11, 'vn', 6, 'Tất cả bài tin tức', 'tin-tuc'),
(12, 'en', 6, 'All News', 'news'),
(13, 'vn', 7, 'Bài viết tin tức', ''),
(14, 'en', 7, 'News detail', ''),
(15, 'vn', 8, 'Địa chỉ website', ''),
(16, 'en', 8, 'Website Address', ''),
(17, 'vn', 9, 'Liên hệ', 'lien-he'),
(18, 'en', 9, 'Contact', 'contact'),
(19, 'vn', 10, 'Tất cả dịch vụ', 'dich-vu'),
(20, 'en', 10, 'All Services', 'services'),
(21, 'vn', 11, 'Bài viết dịch vụ', ''),
(22, 'en', 11, 'Service detail', ''),
(23, 'vn', 12, 'Danh mục dịch vụ', ''),
(24, 'en', 12, 'Catalog service', ''),
(25, 'vn', 13, 'Trang nội dung', ''),
(26, 'en', 13, 'Page', ''),
(27, 'vn', 14, 'Đăng ký', 'dang-ky'),
(28, 'en', 14, 'Sign in', 'sign-in'),
(29, 'vn', 15, 'Đăng nhập', 'dang-nhap'),
(30, 'en', 15, 'Log in', 'log-in');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `news_id` int(11) NOT NULL,
  `news_name` text COLLATE utf8_unicode_ci,
  `news_des` text COLLATE utf8_unicode_ci,
  `news_content` text COLLATE utf8_unicode_ci,
  `news_img` text COLLATE utf8_unicode_ci,
  `news_views` int(11) DEFAULT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `news_author` text COLLATE utf8_unicode_ci,
  `news_created_date` datetime DEFAULT NULL,
  `news_update_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `news_sub_info1` text COLLATE utf8_unicode_ci,
  `news_sub_info2` text COLLATE utf8_unicode_ci,
  `news_sub_info3` text COLLATE utf8_unicode_ci,
  `news_sub_info4` text COLLATE utf8_unicode_ci,
  `news_sub_info5` text COLLATE utf8_unicode_ci,
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL,
  `newstag_arr` varchar(10000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `news_name`, `news_des`, `news_content`, `news_img`, `news_views`, `newscat_id`, `news_author`, `news_created_date`, `news_update_date`, `state`, `news_sub_info1`, `news_sub_info2`, `news_sub_info3`, `news_sub_info4`, `news_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `newstag_arr`) VALUES
(25, 'Tin tức 3', 'Thông tin mô tả ngắn cho bài Khuyến mãi 4 vnxfgx', '<p>xfdgsdrf</p>\r\n', 'n5.jpg', 0, 58, '', '2017-07-09 23:07:04', '2017-12-28 19:12:48', 1, '', '', '', '', '', 'Tin tức 3', 'Thông tin mô tả ngắn cho bài Khuyến mãi 4', 'tin-tuc-3', '', 1, ''),
(26, 'Tin tức 2', 'Thông tin mô tả ngắn cho bài Khuyến mãi 5', '<p>Th&ocirc;ng tin m&ocirc; tả ngắn cho b&agrave;i Khuyến m&atilde;i 5</p>\r\n', 'n4.jpg', 0, 58, '', '2017-07-09 23:07:30', '2017-12-03 16:12:50', 1, '', '', '', '', '', 'Tin tức 2', 'Thông tin mô tả ngắn cho bài Khuyến mãi 5', 'tin-tuc-2', '', 1, ''),
(27, 'Tin tức 1', 'Đầu năm 2017, trợ lý ảo Alexa Amazon thực sự trở thành tâm điểm của triển lãm CES 2017 tại Las Vegas (Mỹ), bỏ qua các ứng dụng nhận diện giọng nói của các đối thủ như Apple, Google, Facebook…. Hệ sinh thái Alexa nhanh chóng rộng mở hứa hẹn trở thành trợ lý đắc lực của con người trong tương lai.', '<p>Nhận thấy những điểm ưu việt đ&oacute;, Lumi Việt Nam đ&atilde; nhanh ch&oacute;ng ph&aacute;t triển nghi&ecirc;n cứu, t&iacute;ch hợp Server Amazon kết nối với server của Lumi để đưa ra Giải ph&aacute;p nh&agrave; th&ocirc;ng minh điều khiển bằng giọng n&oacute;i. H&atilde;y h&igrave;nh dung về một thế giới m&agrave; giọng n&oacute;i của bạn trở n&ecirc;n quyền năng.</p>\r\n\r\n<p><img alt="" height="554" src="/image/images/nd1.jpg" width="800" /></p>\r\n\r\n<p style="text-align:center"><em>M&ocirc; h&igrave;nh kết hợp sever của Amazon &amp; sever của Lumi để tạo ra giải ph&aacute;p nh&agrave; th&ocirc;ng minh điều khiển bằng giọng n&oacute;i</em></p>\r\n\r\n<p>C&aacute;ch mạng c&ocirc;ng nghiệp 4.0 v&agrave; mạng lưới vạn vật kết nối internet (IoT) sẽ tạo ra sự thay đổi mạnh mẽ về nguồn lực sản xuất, c&ocirc;ng nghệ thực tế ảo &hellip; IoT . Giải ph&aacute;p nh&agrave; th&ocirc;ng minh &ndash; 1 trong những ứng dụng của IoT, đ&atilde; v&agrave; đang trở th&agrave;nh xu hướng tất yếu trong đời sống.</p>\r\n\r\n<p><img alt="" height="566" src="/image/images/nd2.jpg" width="800" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:center"><em>C&aacute;ch mạng c&ocirc;ng nghiệp 4.0 v&agrave; IoT, &hellip; đang xu thế của tương lai</em></p>\r\n\r\n<p>Lumi Việt Nam đơn vị đầu ti&ecirc;n tại Việt Nam, đ&atilde; nghi&ecirc;n cứu, ứng dụng th&agrave;nh c&ocirc;ng C&ocirc;ng nghệ nhận dạng giọng n&oacute;i v&agrave; cho ra đời giải ph&aacute;p nh&agrave; th&ocirc;ng minh điều khiển bằng giọng n&oacute;i đầu ti&ecirc;n tại Việt Nam. Tất cả c&aacute;c thiết bị của ng&ocirc;i nh&agrave; như chiếu s&aacute;ng, r&egrave;m cửa, b&igrave;nh n&oacute;ng lạnh, điều h&ograve;a, &acirc;m thanh, h&igrave;nh ảnh&hellip; đều c&oacute; thể kết nối với Internet v&agrave; cho ph&eacute;p điều khiển bằng giọng n&oacute;i.</p>\r\n\r\n<p><img alt="" height="531" src="/image/images/nd3.jpg" width="800" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:center"><em>Tại Việt Nam c&ocirc;ng nghệ nhận dạng giọng n&oacute;i đ&atilde; được ứng dụng v&agrave;o đời sống</em></p>\r\n\r\n<p><strong>H&atilde;y h&igrave;nh dung với t&iacute;nh năng bật/tắt hệ thống chiếu s&aacute;ng:</strong>&nbsp;Con bạn c&ograve;n qu&aacute; thấp để với tới c&ocirc;ng tắc đ&egrave;n khi muốn bật/tắt? Thật đơn giản, h&atilde;y ra lệnh với thiết bị nhận diện giọng n&oacute;i &ndash; giải ph&aacute;p gi&uacute;p trẻ điều khiển được thiết bị theo &yacute; muốn nhưng ho&agrave;n to&agrave;n kh&ocirc;ng phải tiếp x&uacute;c điện.</p>\r\n\r\n<p><img alt="" height="510" src="/image/images/nd4.jpg" width="800" /></p>\r\n\r\n<p style="text-align:center"><em>Việc bật/tắt c&aacute;c c&ocirc;ng tắc đ&egrave;n đ&atilde; trở n&ecirc;n an to&agrave;n, dễ d&agrave;ng với trẻ nhỏ</em></p>\r\n\r\n<p><strong>Điều chỉnh chế độ s&aacute;ng của b&oacute;ng đ&egrave;n:</strong>&nbsp;Thường th&igrave; điều chỉnh độ s&aacute;ng của b&oacute;ng đ&egrave;n, bạn cần mất rất nhiều thời gian. Với Amazon bạn chỉ cần n&oacute;i, ngay lập tức đ&atilde; c&oacute; &aacute;nh s&aacute;ng ưng &yacute;, ph&ugrave; hợp với kh&ocirc;ng gian ng&ocirc;i nh&agrave;.</p>\r\n\r\n<p><strong>Thay đổi m&agrave;u sắc đ&egrave;n Led:</strong>&nbsp;Kh&ocirc;ng gian qu&aacute; bừa bộn để t&igrave;m thấy Smartphone điều chỉnh m&agrave;u đ&egrave;n Led trong buổi lễ sinh nhật. Sẽ tiện nghi hơn khi bạn n&oacute;i &ldquo;Blur, Red, Pink&hellip;&rdquo; đ&egrave;n Led ngay lập tức sẽ chuyển sang m&agrave;u bạn y&ecirc;u cầu.</p>\r\n\r\n<p><strong>Thiết lập hoạt cảnh:</strong>&nbsp;Bạn phải đi lần lượt c&aacute;c ph&ograve;ng để kiểm tra c&aacute;c thiết bị điện c&ograve;n bật hay tắt trước khi ngủ? Điều khiển bằng giọng n&oacute;i, chỉ cần nằm tr&ecirc;n giường với một c&acirc;u lệnh, tất cả hệ thống điện trong ng&ocirc;i nh&agrave; sẽ được tắt, ngo&agrave;i ra bạn ho&agrave;n to&agrave;n c&oacute; thể hẹn giờ tự động bật/tắt cho c&aacute;c thiết bị trong nh&agrave;.</p>\r\n\r\n<p><strong>T&iacute;nh năng đ&oacute;ng/mở r&egrave;m:</strong>&nbsp;Bố mẹ bạn đ&atilde; c&oacute; tuổi v&agrave; kh&ocirc;ng tiện đi lại nhiều, để ph&ograve;ng tr&agrave;n ngập &aacute;nh s&aacute;ng mỗi buổi s&aacute;ng, hay đọc s&aacute;ch khi kh&ocirc;ng c&oacute; người gi&uacute;p đỡ. Sẽ thật dễ d&agrave;ng khi &ocirc;ng/b&agrave; ra lệnh với thiết bị nhận diện giọng n&oacute;i để thực hiện c&ocirc;ng việc đ&oacute;.</p>\r\n\r\n<p><img alt="" height="510" src="/image/images/nd5.jpg" width="800" /></p>\r\n\r\n<p style="text-align:center"><em>Đảm bảo sức khỏe, tiện nghi, dễ d&agrave;ng sử dụng đối với mọi lứa tuổi</em></p>\r\n\r\n<p>Điều chỉnh tốc độ quạt: Con bạn đang ngủ nhưng quạt qu&aacute; to, bạn lại đang kh&ocirc;ng tiện sử dụng điện thoại hay rời khỏi. Sẽ dễ d&agrave;ng thực hiện khi ra lệnh cho thiết bị nhận dạng giọng. Vừa đảm bảo được sự k&iacute;nh trọng với kh&aacute;ch v&agrave; sức khỏe cho b&eacute;.</p>\r\n\r\n<p>T&iacute;nh năng &acirc;m thanh: S&aacute;ng m&ugrave;a đ&ocirc;ng, muốn nghe một bản nhạc hay đơn giản l&agrave; xem bộ phim y&ecirc;u th&iacute;ch, nhưng lười kh&ocirc;ng muốn chui ra khỏi c&aacute;i chăn. Với Amazon điều khiển giọng n&oacute;i, c&ocirc;ng việc duy nhất bạn phải l&agrave;m l&agrave; nằm trong chăn v&agrave; n&oacute;i những điều m&igrave;nh th&iacute;ch.</p>\r\n\r\n<p>Sở hữu nh&agrave; th&ocirc;ng minh điều khiển bằng giọng n&oacute;i, đồng nghĩa với việc bạn đang trở th&agrave;nh người ti&ecirc;n phong, nắm bắt c&ocirc;ng nghệ v&agrave; xu thế tương lai.</p>\r\n', 'n3.jpg', 0, 58, '', '2017-07-09 23:07:15', '2017-12-03 16:12:40', 1, '', '', '', '', '', 'Tin tức 1', 'Đầu năm 2017, trợ lý ảo Alexa Amazon thực sự trở thành tâm điểm của triển lãm CES 2017 tại Las Vegas (Mỹ), bỏ qua các ứng dụng nhận diện giọng nói của các đối thủ như Apple, Google, Facebook…. Hệ sinh thái Alexa nhanh chóng rộng mở hứa hẹn trở thành trợ lý đắc lực của con người trong tương lai.', 'tin-tuc-1', '', 1, ''),
(31, 'Tin tức 4', 'Mô tả tin tức 4', '<p>Nội dung tin tức 4</p>\r\n', 'n6.jpg', 0, 0, '', '2017-12-03 16:12:41', '2017-12-03 16:12:55', 1, '', '', '', '', '', 'Tin tức 4', '', 'tin-tuc-4', '', 1, ''),
(32, 'Post 1', '', '', '', 0, 0, '', '2017-12-08 14:12:04', NULL, 1, '', '', '', '', '', 'Post 1', '', 'post-1', '', 1, ''),
(33, 'Post 2', '', '', '', 0, 0, '', '2017-12-08 14:12:14', NULL, 1, '', '', '', '', '', 'Post 2', '', 'post-2', '', 1, ''),
(34, 'Post 3', '', '', '', 0, 0, '', '2017-12-08 14:12:25', NULL, 1, '', '', '', '', '', 'Post 3', '', 'post-3', '', 1, ''),
(35, 'Post 4', '', '', '', 0, 0, '', '2017-12-08 14:12:34', NULL, 1, '', '', '', '', '', 'Post 4', '', 'post-4', '', 1, ''),
(36, 'Post 5', '', '', '', 0, 0, '', '2017-12-08 14:12:15', NULL, 1, '', '', '', '', '', 'Post 5', '', 'post-5', '', 1, ''),
(37, 'Post 6', '', '', '', 0, 0, '', '2017-12-08 14:12:24', NULL, 1, '', '', '', '', '', 'Post 6', '', 'post-6', '', 1, ''),
(38, 'Post 7', '', '', '', 0, 0, '', '2017-12-08 14:12:36', NULL, 1, '', '', '', '', '', 'Post 7', '', 'post-7', '', 1, ''),
(39, 'Post 8', '', '', '', 0, 0, '', '2017-12-08 14:12:45', NULL, 1, '', '', '', '', '', 'Post 8', '', 'post-8', '', 1, ''),
(40, 'Post 9', '', '', '', 0, 0, '', '2017-12-08 14:12:56', NULL, 1, '', '', '', '', '', 'Post 9', '', 'post-9', '', 1, ''),
(41, 'Post 10', '', '', '', 0, 0, '', '2017-12-08 14:12:06', NULL, 1, '', '', '', '', '', 'Post 10', '', 'post-10', '', 1, ''),
(42, 'Post 11', '', '', '', 0, 0, '', '2017-12-08 14:12:15', NULL, 1, '', '', '', '', '', 'Post 11', '', 'post-11', '', 1, ''),
(43, 'Post 12', '', '', '', 0, 0, '', '2017-12-08 14:12:24', NULL, 1, '', '', '', '', '', 'Post 12', '', 'post-12', '', 1, ''),
(44, 'Post 13', '', '', '', 0, 0, '', '2017-12-08 14:12:33', NULL, 1, '', '', '', '', '', 'Post 13', '', 'post-13', '', 1, ''),
(45, 'Post 14', '', '', '', 0, 0, '', '2017-12-08 14:12:42', NULL, 1, '', '', '', '', '', 'Post 14', '', 'post-14', '', 1, ''),
(46, 'Post 15', '', '', '', 0, 0, '', '2017-12-08 14:12:50', NULL, 1, '', '', '', '', '', 'Post 15', '', 'post-15', '', 1, ''),
(47, 'Post 16', '', '', '', 0, 0, '', '2017-12-08 14:12:58', NULL, 1, '', '', '', '', '', 'Post 16', '', 'post-16', '', 1, ''),
(48, 'Post 17', '', '', '', 0, 0, '', '2017-12-08 14:12:07', NULL, 1, '', '', '', '', '', 'Post 17', '', 'post-17', '', 1, ''),
(49, 'Post 18', '', '', NULL, 0, 0, '', '2017-12-08 14:12:15', '2017-12-12 18:12:38', 1, '', '', '', '', '', 'Post 18', '', 'post-18', '', 1, 'a:1:{i:0;s:1:"3";}'),
(50, 'Post 19', '', '', NULL, 0, 0, '', '2017-12-08 14:12:26', '2017-12-12 17:12:15', 1, '', '', '', '', '', 'Post 19', '', 'post-19', '', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `newscat`
--

CREATE TABLE IF NOT EXISTS `newscat` (
  `newscat_id` int(11) NOT NULL,
  `newscat_name` text COLLATE utf8_unicode_ci,
  `newscat_des` text COLLATE utf8_unicode_ci,
  `newscat_content` text COLLATE utf8_unicode_ci,
  `newscat_parent` int(11) DEFAULT NULL,
  `newscat_sort_order` int(11) DEFAULT NULL,
  `newscat_created_date` datetime DEFAULT NULL,
  `newscat_update_date` datetime DEFAULT NULL,
  `state` int(11) DEFAULT '0',
  `newscat_img` text COLLATE utf8_unicode_ci,
  `newscat_sub_info1` text COLLATE utf8_unicode_ci,
  `newscat_sub_info2` text COLLATE utf8_unicode_ci,
  `newscat_sub_info3` text COLLATE utf8_unicode_ci,
  `newscat_sub_info4` text COLLATE utf8_unicode_ci,
  `newscat_sub_info5` text COLLATE utf8_unicode_ci,
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `newscat`
--

INSERT INTO `newscat` (`newscat_id`, `newscat_name`, `newscat_des`, `newscat_content`, `newscat_parent`, `newscat_sort_order`, `newscat_created_date`, `newscat_update_date`, `state`, `newscat_img`, `newscat_sub_info1`, `newscat_sub_info2`, `newscat_sub_info3`, `newscat_sub_info4`, `newscat_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(58, 'Tin tức', '<p>Danh mục tin tức</p>\r\n', '', 0, 0, '2017-12-29 17:12:44', NULL, 1, 'n2.jpg', '', '', '', '', '', 'Tin tức', '', 'tin-tuc', '', 1),
(62, 'Tư vấn', '<p>M&ocirc; tả danh mục tin tức 2</p>\r\n', '', 0, 3, '2017-12-29 14:12:23', NULL, 1, 'n1.jpg', '', '', '', '', '', 'Tư vấn', '', 'tu-van', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `newscat_languages`
--

CREATE TABLE IF NOT EXISTS `newscat_languages` (
  `id` int(11) NOT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_name` text COLLATE utf8_unicode_ci,
  `lang_newscat_des` text COLLATE utf8_unicode_ci,
  `lang_newscat_content` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `newscat_languages`
--

INSERT INTO `newscat_languages` (`id`, `newscat_id`, `languages_code`, `lang_newscat_name`, `lang_newscat_des`, `lang_newscat_content`, `lang_newscat_sub_info1`, `lang_newscat_sub_info2`, `lang_newscat_sub_info3`, `lang_newscat_sub_info4`, `lang_newscat_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(111, 58, 'vn', 'Tin tức', '<p>Danh mục tin tức</p>\r\n', NULL, '', '', '', '', '', 1, 'tin-tuc', '', 'Tin tức', ''),
(112, 58, 'en', 'News', '<p>Danh mục tin tức</p>\r\n', '1', '', '', '', '', '', 1, 'news', '', 'Tin tức', ''),
(119, 62, 'vn', 'Tư vấn', '<p>M&ocirc; tả danh mục tin tức 2</p>\r\n', NULL, '', '', '', '', '', 1, 'tu-van', '', 'Tư vấn', ''),
(120, 62, 'en', 'Danh mục tin tức 2', '<p>M&ocirc; tả danh mục tin tức 2</p>\r\n', '1', '', '', '', '', '', 1, 'danh-muc-tin-tuc-2', '', 'Danh mục tin tức 2', '');

-- --------------------------------------------------------

--
-- Table structure for table `newstag`
--

CREATE TABLE IF NOT EXISTS `newstag` (
  `newstag_id` int(11) NOT NULL,
  `newstag_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sort_order` int(11) NOT NULL,
  `newstag_created_date` datetime NOT NULL,
  `newstag_update_date` datetime NOT NULL,
  `state` int(11) NOT NULL,
  `newstag_img` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sub_info5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `friendly_url` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newstag`
--

INSERT INTO `newstag` (`newstag_id`, `newstag_name`, `newstag_des`, `newstag_content`, `newstag_sort_order`, `newstag_created_date`, `newstag_update_date`, `state`, `newstag_img`, `newstag_sub_info1`, `newstag_sub_info2`, `newstag_sub_info3`, `newstag_sub_info4`, `newstag_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(2, 'sách hot', '<p>M&ocirc; tả s&aacute;ch</p>\r\n', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '', '', '', '', '', '', 'sách hot', 'chuyên sách', 'sach-hot', 'sach', 1),
(3, 'Vở đẹp', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '', '', '', '', '', '', 'Vở đẹp', '', 'vo-dep', '', 1),
(4, 'Butb', '<p>bb</p>\r\n', '', 0, '2017-12-13 11:12:54', '2017-12-13 11:12:11', 1, '', '', '', '', '', '', 'Butb', 'bb', 'butb', 'bb', 1);

-- --------------------------------------------------------

--
-- Table structure for table `newstag_languages`
--

CREATE TABLE IF NOT EXISTS `newstag_languages` (
  `id` int(11) NOT NULL,
  `newstag_id` int(11) NOT NULL,
  `languages_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_content` text CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `lang_newstag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_sub_info5` text CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `edit_state` int(11) NOT NULL,
  `friendly_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_seo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newstag_languages`
--

INSERT INTO `newstag_languages` (`id`, `newstag_id`, `languages_code`, `lang_newstag_name`, `lang_newstag_des`, `lang_newstag_content`, `lang_newstag_sub_info1`, `lang_newstag_sub_info2`, `lang_newstag_sub_info3`, `lang_newstag_sub_info4`, `lang_newstag_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(3, 2, 'vn', 'sách hot', '<p>M&ocirc; tả s&aacute;ch</p>\r\n', '', '', '', '', '', '', 1, 'sach-hot', 'sach', 'sách hot', 'chuyên sách'),
(4, 2, 'en', 'sách en', '<p>M&ocirc; tả s&aacute;ch</p>\r\n', '', '', '', '', '', '', 1, 'sach', 'sach', 'sách', 'chuyên sách'),
(5, 3, 'vn', 'Vở đẹp', '', '', '', '', '', '', '', 1, 'vo-dep', '', 'Vở đẹp', ''),
(6, 3, 'en', 'Vở đẹp', '', '', '', '', '', '', '', 1, 'vo-dep', '', 'Vở đẹp', ''),
(7, 4, 'vn', 'But', '<p>but</p>\r\n', '', '', '', '', '', '', 1, 'butb', 'bb', 'Butb', 'bb'),
(8, 4, 'en', 'pen', '<p>pen</p>\r\n', '', '', '', '', '', '', 1, 'but', 'b', 'But', 'b');

-- --------------------------------------------------------

--
-- Table structure for table `news_languages`
--

CREATE TABLE IF NOT EXISTS `news_languages` (
  `id` bigint(20) NOT NULL,
  `news_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_name` text COLLATE utf8_unicode_ci,
  `lang_news_des` text COLLATE utf8_unicode_ci,
  `lang_news_content` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news_languages`
--

INSERT INTO `news_languages` (`id`, `news_id`, `languages_code`, `lang_news_name`, `lang_news_des`, `lang_news_content`, `lang_news_sub_info1`, `lang_news_sub_info2`, `lang_news_sub_info3`, `lang_news_sub_info4`, `lang_news_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(49, 25, 'vn', 'Tin tức 3', 'Thông tin mô tả ngắn cho bài Khuyến mãi 4', '<p>xfdgsdrf</p>\r\n', '', '', '', '', '', 1, 'tin-tuc-3', 'Tin tức 3', 'Thông tin mô tả ngắn cho bài Khuyến mãi 4', ''),
(50, 25, 'en', 'Khuyến mãi 4', 'Thông tin mô tả ngắn cho bài Khuyến mãi 4 en', '', '', '', '', '', '', 1, 'khuyen-mai-4', 'Khuyến mãi 4', 'Thông tin mô tả ngắn cho bài Khuyến mãi 4', ''),
(51, 26, 'vn', 'Tin tức 2', 'Thông tin mô tả ngắn cho bài Khuyến mãi 5', '<p>Th&ocirc;ng tin m&ocirc; tả ngắn cho b&agrave;i Khuyến m&atilde;i 5</p>\r\n', '', '', '', '', '', 0, 'tin-tuc-2', 'Tin tức 2', 'Thông tin mô tả ngắn cho bài Khuyến mãi 5', ''),
(52, 26, 'en', 'Khuyến mãi 5', 'Thông tin mô tả ngắn cho bài Khuyến mãi 5', '<p>Th&ocirc;ng tin m&ocirc; tả ngắn cho b&agrave;i Khuyến m&atilde;i 5</p>\r\n', '', '', '', '', '', 0, 'khuyen-mai-5', 'Khuyến mãi 5', 'Thông tin mô tả ngắn cho bài Khuyến mãi 5', ''),
(53, 27, 'vn', 'Tin tức 1', 'Đầu năm 2017, trợ lý ảo Alexa Amazon thực sự trở thành tâm điểm của triển lãm CES 2017 tại Las Vegas (Mỹ), bỏ qua các ứng dụng nhận diện giọng nói của các đối thủ như Apple, Google, Facebook…. Hệ sinh thái Alexa nhanh chóng rộng mở hứa hẹn trở thành trợ lý đắc lực của con người trong tương lai.', '<p>Nhận thấy những điểm ưu việt đ&oacute;, Lumi Việt Nam đ&atilde; nhanh ch&oacute;ng ph&aacute;t triển nghi&ecirc;n cứu, t&iacute;ch hợp Server Amazon kết nối với server của Lumi để đưa ra Giải ph&aacute;p nh&agrave; th&ocirc;ng minh điều khiển bằng giọng n&oacute;i. H&atilde;y h&igrave;nh dung về một thế giới m&agrave; giọng n&oacute;i của bạn trở n&ecirc;n quyền năng.</p>\r\n\r\n<p><img alt="" height="554" src="/image/images/nd1.jpg" width="800" /></p>\r\n\r\n<p style="text-align:center"><em>M&ocirc; h&igrave;nh kết hợp sever của Amazon &amp; sever của Lumi để tạo ra giải ph&aacute;p nh&agrave; th&ocirc;ng minh điều khiển bằng giọng n&oacute;i</em></p>\r\n\r\n<p>C&aacute;ch mạng c&ocirc;ng nghiệp 4.0 v&agrave; mạng lưới vạn vật kết nối internet (IoT) sẽ tạo ra sự thay đổi mạnh mẽ về nguồn lực sản xuất, c&ocirc;ng nghệ thực tế ảo &hellip; IoT . Giải ph&aacute;p nh&agrave; th&ocirc;ng minh &ndash; 1 trong những ứng dụng của IoT, đ&atilde; v&agrave; đang trở th&agrave;nh xu hướng tất yếu trong đời sống.</p>\r\n\r\n<p><img alt="" height="566" src="/image/images/nd2.jpg" width="800" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:center"><em>C&aacute;ch mạng c&ocirc;ng nghiệp 4.0 v&agrave; IoT, &hellip; đang xu thế của tương lai</em></p>\r\n\r\n<p>Lumi Việt Nam đơn vị đầu ti&ecirc;n tại Việt Nam, đ&atilde; nghi&ecirc;n cứu, ứng dụng th&agrave;nh c&ocirc;ng C&ocirc;ng nghệ nhận dạng giọng n&oacute;i v&agrave; cho ra đời giải ph&aacute;p nh&agrave; th&ocirc;ng minh điều khiển bằng giọng n&oacute;i đầu ti&ecirc;n tại Việt Nam. Tất cả c&aacute;c thiết bị của ng&ocirc;i nh&agrave; như chiếu s&aacute;ng, r&egrave;m cửa, b&igrave;nh n&oacute;ng lạnh, điều h&ograve;a, &acirc;m thanh, h&igrave;nh ảnh&hellip; đều c&oacute; thể kết nối với Internet v&agrave; cho ph&eacute;p điều khiển bằng giọng n&oacute;i.</p>\r\n\r\n<p><img alt="" height="531" src="/image/images/nd3.jpg" width="800" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:center"><em>Tại Việt Nam c&ocirc;ng nghệ nhận dạng giọng n&oacute;i đ&atilde; được ứng dụng v&agrave;o đời sống</em></p>\r\n\r\n<p><strong>H&atilde;y h&igrave;nh dung với t&iacute;nh năng bật/tắt hệ thống chiếu s&aacute;ng:</strong>&nbsp;Con bạn c&ograve;n qu&aacute; thấp để với tới c&ocirc;ng tắc đ&egrave;n khi muốn bật/tắt? Thật đơn giản, h&atilde;y ra lệnh với thiết bị nhận diện giọng n&oacute;i &ndash; giải ph&aacute;p gi&uacute;p trẻ điều khiển được thiết bị theo &yacute; muốn nhưng ho&agrave;n to&agrave;n kh&ocirc;ng phải tiếp x&uacute;c điện.</p>\r\n\r\n<p><img alt="" height="510" src="/image/images/nd4.jpg" width="800" /></p>\r\n\r\n<p style="text-align:center"><em>Việc bật/tắt c&aacute;c c&ocirc;ng tắc đ&egrave;n đ&atilde; trở n&ecirc;n an to&agrave;n, dễ d&agrave;ng với trẻ nhỏ</em></p>\r\n\r\n<p><strong>Điều chỉnh chế độ s&aacute;ng của b&oacute;ng đ&egrave;n:</strong>&nbsp;Thường th&igrave; điều chỉnh độ s&aacute;ng của b&oacute;ng đ&egrave;n, bạn cần mất rất nhiều thời gian. Với Amazon bạn chỉ cần n&oacute;i, ngay lập tức đ&atilde; c&oacute; &aacute;nh s&aacute;ng ưng &yacute;, ph&ugrave; hợp với kh&ocirc;ng gian ng&ocirc;i nh&agrave;.</p>\r\n\r\n<p><strong>Thay đổi m&agrave;u sắc đ&egrave;n Led:</strong>&nbsp;Kh&ocirc;ng gian qu&aacute; bừa bộn để t&igrave;m thấy Smartphone điều chỉnh m&agrave;u đ&egrave;n Led trong buổi lễ sinh nhật. Sẽ tiện nghi hơn khi bạn n&oacute;i &ldquo;Blur, Red, Pink&hellip;&rdquo; đ&egrave;n Led ngay lập tức sẽ chuyển sang m&agrave;u bạn y&ecirc;u cầu.</p>\r\n\r\n<p><strong>Thiết lập hoạt cảnh:</strong>&nbsp;Bạn phải đi lần lượt c&aacute;c ph&ograve;ng để kiểm tra c&aacute;c thiết bị điện c&ograve;n bật hay tắt trước khi ngủ? Điều khiển bằng giọng n&oacute;i, chỉ cần nằm tr&ecirc;n giường với một c&acirc;u lệnh, tất cả hệ thống điện trong ng&ocirc;i nh&agrave; sẽ được tắt, ngo&agrave;i ra bạn ho&agrave;n to&agrave;n c&oacute; thể hẹn giờ tự động bật/tắt cho c&aacute;c thiết bị trong nh&agrave;.</p>\r\n\r\n<p><strong>T&iacute;nh năng đ&oacute;ng/mở r&egrave;m:</strong>&nbsp;Bố mẹ bạn đ&atilde; c&oacute; tuổi v&agrave; kh&ocirc;ng tiện đi lại nhiều, để ph&ograve;ng tr&agrave;n ngập &aacute;nh s&aacute;ng mỗi buổi s&aacute;ng, hay đọc s&aacute;ch khi kh&ocirc;ng c&oacute; người gi&uacute;p đỡ. Sẽ thật dễ d&agrave;ng khi &ocirc;ng/b&agrave; ra lệnh với thiết bị nhận diện giọng n&oacute;i để thực hiện c&ocirc;ng việc đ&oacute;.</p>\r\n\r\n<p><img alt="" height="510" src="/image/images/nd5.jpg" width="800" /></p>\r\n\r\n<p style="text-align:center"><em>Đảm bảo sức khỏe, tiện nghi, dễ d&agrave;ng sử dụng đối với mọi lứa tuổi</em></p>\r\n\r\n<p>Điều chỉnh tốc độ quạt: Con bạn đang ngủ nhưng quạt qu&aacute; to, bạn lại đang kh&ocirc;ng tiện sử dụng điện thoại hay rời khỏi. Sẽ dễ d&agrave;ng thực hiện khi ra lệnh cho thiết bị nhận dạng giọng. Vừa đảm bảo được sự k&iacute;nh trọng với kh&aacute;ch v&agrave; sức khỏe cho b&eacute;.</p>\r\n\r\n<p>T&iacute;nh năng &acirc;m thanh: S&aacute;ng m&ugrave;a đ&ocirc;ng, muốn nghe một bản nhạc hay đơn giản l&agrave; xem bộ phim y&ecirc;u th&iacute;ch, nhưng lười kh&ocirc;ng muốn chui ra khỏi c&aacute;i chăn. Với Amazon điều khiển giọng n&oacute;i, c&ocirc;ng việc duy nhất bạn phải l&agrave;m l&agrave; nằm trong chăn v&agrave; n&oacute;i những điều m&igrave;nh th&iacute;ch.</p>\r\n\r\n<p>Sở hữu nh&agrave; th&ocirc;ng minh điều khiển bằng giọng n&oacute;i, đồng nghĩa với việc bạn đang trở th&agrave;nh người ti&ecirc;n phong, nắm bắt c&ocirc;ng nghệ v&agrave; xu thế tương lai.</p>\r\n', '', '', '', '', '', 1, 'tin-tuc-1', 'Tin tức 1', 'Đầu năm 2017, trợ lý ảo Alexa Amazon thực sự trở thành tâm điểm của triển lãm CES 2017 tại Las Vegas (Mỹ), bỏ qua các ứng dụng nhận diện giọng nói của các đối thủ như Apple, Google, Facebook…. Hệ sinh thái Alexa nhanh chóng rộng mở hứa hẹn trở thành trợ lý đắc lực của con người trong tương lai.', ''),
(54, 27, 'en', 'Khuyễn mãi 6', 'Thông tin mô tả ngắn cho bài Khuyến mãi 6', '<p>Thông tin mô tả ngắn cho bài Khuyến mãi 6</p>\r\n', '', '', '', '', '', 1, 'khuyen-mai-6', 'Khuyễn mãi 6', 'Thông tin mô tả ngắn cho bài Khuyến mãi 6', ''),
(61, 31, 'vn', 'Tin tức 4', 'Mô tả tin tức 4', '<p>Nội dung tin tức 4 vn</p>\r\n', '', '', '', '', '', 1, 'tin-tuc-4', 'Tin tức 4', '', ''),
(62, 31, 'en', 'Tin tức 4', 'Mô tả tin tức 4', '<p>Nội dung tin tức 4 en</p>\r\n', '', '', '', '', '', 1, 'tin-tuc-4', 'Tin tức 4', '', ''),
(63, 32, 'vn', 'Post 1', '', '', '', '', '', '', '', 0, 'post-1', 'Post 1', '', ''),
(64, 32, 'en', 'Post 1', '', '', '', '', '', '', '', 0, 'post-1', 'Post 1', '', ''),
(65, 33, 'vn', 'Post 2', '', '', '', '', '', '', '', 0, 'post-2', 'Post 2', '', ''),
(66, 33, 'en', 'Post 2', '', '', '', '', '', '', '', 0, 'post-2', 'Post 2', '', ''),
(67, 34, 'vn', 'Post 3', '', '', '', '', '', '', '', 0, 'post-3', 'Post 3', '', ''),
(68, 34, 'en', 'Post 3', '', '', '', '', '', '', '', 0, 'post-3', 'Post 3', '', ''),
(69, 35, 'vn', 'Post 4', '', '', '', '', '', '', '', 0, 'post-4', 'Post 4', '', ''),
(70, 35, 'en', 'Post 4', '', '', '', '', '', '', '', 0, 'post-4', 'Post 4', '', ''),
(71, 36, 'vn', 'Post 5', '', '', '', '', '', '', '', 0, 'post-5', 'Post 5', '', ''),
(72, 36, 'en', 'Post 5', '', '', '', '', '', '', '', 0, 'post-5', 'Post 5', '', ''),
(73, 37, 'vn', 'Post 6', '', '', '', '', '', '', '', 0, 'post-6', 'Post 6', '', ''),
(74, 37, 'en', 'Post 6', '', '', '', '', '', '', '', 0, 'post-6', 'Post 6', '', ''),
(75, 38, 'vn', 'Post 7', '', '', '', '', '', '', '', 0, 'post-7', 'Post 7', '', ''),
(76, 38, 'en', 'Post 7', '', '', '', '', '', '', '', 0, 'post-7', 'Post 7', '', ''),
(77, 39, 'vn', 'Post 8', '', '', '', '', '', '', '', 0, 'post-8', 'Post 8', '', ''),
(78, 39, 'en', 'Post 8', '', '', '', '', '', '', '', 0, 'post-8', 'Post 8', '', ''),
(79, 40, 'vn', 'Post 9', '', '', '', '', '', '', '', 0, 'post-9', 'Post 9', '', ''),
(80, 40, 'en', 'Post 9', '', '', '', '', '', '', '', 0, 'post-9', 'Post 9', '', ''),
(81, 41, 'vn', 'Post 10', '', '', '', '', '', '', '', 0, 'post-10', 'Post 10', '', ''),
(82, 41, 'en', 'Post 10', '', '', '', '', '', '', '', 0, 'post-10', 'Post 10', '', ''),
(83, 42, 'vn', 'Post 11', '', '', '', '', '', '', '', 0, 'post-11', 'Post 11', '', ''),
(84, 42, 'en', 'Post 11', '', '', '', '', '', '', '', 0, 'post-11', 'Post 11', '', ''),
(85, 43, 'vn', 'Post 12', '', '', '', '', '', '', '', 0, 'post-12', 'Post 12', '', ''),
(86, 43, 'en', 'Post 12', '', '', '', '', '', '', '', 0, 'post-12', 'Post 12', '', ''),
(87, 44, 'vn', 'Post 13', '', '', '', '', '', '', '', 0, 'post-13', 'Post 13', '', ''),
(88, 44, 'en', 'Post 13', '', '', '', '', '', '', '', 0, 'post-13', 'Post 13', '', ''),
(89, 45, 'vn', 'Post 14', '', '', '', '', '', '', '', 0, 'post-14', 'Post 14', '', ''),
(90, 45, 'en', 'Post 14', '', '', '', '', '', '', '', 0, 'post-14', 'Post 14', '', ''),
(91, 46, 'vn', 'Post 15', '', '', '', '', '', '', '', 0, 'post-15', 'Post 15', '', ''),
(92, 46, 'en', 'Post 15', '', '', '', '', '', '', '', 0, 'post-15', 'Post 15', '', ''),
(93, 47, 'vn', 'Post 16', '', '', '', '', '', '', '', 0, 'post-16', 'Post 16', '', ''),
(94, 47, 'en', 'Post 16', '', '', '', '', '', '', '', 0, 'post-16', 'Post 16', '', ''),
(95, 48, 'vn', 'Post 17', '', '', '', '', '', '', '', 0, 'post-17', 'Post 17', '', ''),
(96, 48, 'en', 'Post 17', '', '', '', '', '', '', '', 0, 'post-17', 'Post 17', '', ''),
(97, 49, 'vn', 'Post 18', '', '', '', '', '', '', '', 0, 'post-18', 'Post 18', '', ''),
(98, 49, 'en', 'Post 18', '', '', '', '', '', '', '', 0, 'post-18', 'Post 18', '', ''),
(99, 50, 'vn', 'Post 19', '', '', '', '', '', '', '', 1, 'post-19', 'Post 19', '', ''),
(100, 50, 'en', 'Post 19', 'asdf', '', '', '', '', '', '', 1, 'post-19', 'Post 19', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `optionsQ1`
--

CREATE TABLE IF NOT EXISTS `optionsQ1` (
  `optionsQ1_id` int(11) NOT NULL,
  `optionsQ1_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `optionsQ1`
--

INSERT INTO `optionsQ1` (`optionsQ1_id`, `optionsQ1_value`) VALUES
(1, 'Đau rát'),
(2, 'Chảy máu khi đi vệ sinh'),
(3, 'Ngứa ngáy, khó chịu, ẩm ướt có mùi khó chịu'),
(4, 'Búi trĩ sa ra ngoài (nhìn hoặc sờ)'),
(5, 'Không có biểu hiện nào như trên');

-- --------------------------------------------------------

--
-- Table structure for table `optionsQ2`
--

CREATE TABLE IF NOT EXISTS `optionsQ2` (
  `optionsQ2_id` int(11) NOT NULL,
  `optionsQ2_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `optionsQ2`
--

INSERT INTO `optionsQ2` (`optionsQ2_id`, `optionsQ2_value`) VALUES
(1, 'Có'),
(2, 'Không');

-- --------------------------------------------------------

--
-- Table structure for table `optionsQ3`
--

CREATE TABLE IF NOT EXISTS `optionsQ3` (
  `optionsQ3_id` int(11) NOT NULL,
  `optionsQ3_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `optionsQ3`
--

INSERT INTO `optionsQ3` (`optionsQ3_id`, `optionsQ3_value`) VALUES
(1, 'Mới (đang bị)'),
(2, 'Lâu, tái đi tái lại'),
(3, 'Lâu, nhưng giờ đang bình thường');

-- --------------------------------------------------------

--
-- Table structure for table `optionsQ4`
--

CREATE TABLE IF NOT EXISTS `optionsQ4` (
  `optionsQ4_id` int(11) NOT NULL,
  `optionsQ4_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `optionsQ4`
--

INSERT INTO `optionsQ4` (`optionsQ4_id`, `optionsQ4_value`) VALUES
(1, 'Máu dính trên giấy vệ sinh'),
(2, 'Máu dính trên phân hoặc nhỏ giọt'),
(3, 'Máu chảy thành tia'),
(4, 'Không thấy máu');

-- --------------------------------------------------------

--
-- Table structure for table `optionsQ5`
--

CREATE TABLE IF NOT EXISTS `optionsQ5` (
  `optionsQ5_id` int(11) NOT NULL,
  `optionsQ5_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `optionsQ5`
--

INSERT INTO `optionsQ5` (`optionsQ5_id`, `optionsQ5_value`) VALUES
(1, 'Hơi đau, tức hậu môn, khó chịu'),
(2, 'Đau nhiều, rát. đỡ khi nằm'),
(3, 'Rất đau rát, đứng ngồi, nằm không yên'),
(4, 'Không đau, bình thường');

-- --------------------------------------------------------

--
-- Table structure for table `optionsQ6`
--

CREATE TABLE IF NOT EXISTS `optionsQ6` (
  `optionsQ6_id` int(11) NOT NULL,
  `optionsQ6_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `optionsQ6`
--

INSERT INTO `optionsQ6` (`optionsQ6_id`, `optionsQ6_value`) VALUES
(1, 'Ít, lồi ra như hạt ngô'),
(2, 'Nhiều, lồi ra bằng 1/3 đốt ngón tay'),
(3, 'Rất nhiều, dài >2.5cm'),
(4, 'Không sa, bình thường');

-- --------------------------------------------------------

--
-- Table structure for table `optionsQ7`
--

CREATE TABLE IF NOT EXISTS `optionsQ7` (
  `optionsQ7_id` int(11) NOT NULL,
  `optionsQ7_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `optionsQ7`
--

INSERT INTO `optionsQ7` (`optionsQ7_id`, `optionsQ7_value`) VALUES
(1, 'Không tự co vào được, ấn vào lại sa ra, hoặc rặn nhẹ là sa ra'),
(2, 'Tự co lên được sau khi ấn vào nhẹ');

-- --------------------------------------------------------

--
-- Table structure for table `optionsQ8`
--

CREATE TABLE IF NOT EXISTS `optionsQ8` (
  `optionsQ8_id` int(11) NOT NULL,
  `optionsQ8_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `optionsQ8`
--

INSERT INTO `optionsQ8` (`optionsQ8_id`, `optionsQ8_value`) VALUES
(1, 'Khô, thoáng bình thường, không có dịch'),
(2, 'Hơi ẩm, ít mùi'),
(3, 'Ướt, có dịch vào đồ lót, mùi khó chịu');

-- --------------------------------------------------------

--
-- Table structure for table `optionsQ9`
--

CREATE TABLE IF NOT EXISTS `optionsQ9` (
  `optionsQ9_id` int(11) NOT NULL,
  `optionsQ9_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `optionsQ9`
--

INSERT INTO `optionsQ9` (`optionsQ9_id`, `optionsQ9_value`) VALUES
(1, 'Có'),
(2, 'Không'),
(3, 'Có nhưng mức độ 3-4h/ngày');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `orders_id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_receiver_name` text COLLATE utf8_unicode_ci,
  `orders_receiver_email` text COLLATE utf8_unicode_ci,
  `orders_receiver_phone` text COLLATE utf8_unicode_ci,
  `orders_receiver_address` text COLLATE utf8_unicode_ci,
  `orders_receiver_note` text COLLATE utf8_unicode_ci,
  `orders_total_price` float DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `orders_created_date` datetime DEFAULT NULL,
  `orders_state` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE IF NOT EXISTS `order_detail` (
  `order_detail_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `order_detail_quantity` int(11) DEFAULT NULL,
  `order_detail_price` double DEFAULT NULL,
  `order_detail_note` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0',
  `product_name` text COLLATE utf8_unicode_ci,
  `currency_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_state`
--

CREATE TABLE IF NOT EXISTS `order_state` (
  `order_state_id` int(11) NOT NULL,
  `order_state_name` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_state`
--

INSERT INTO `order_state` (`order_state_id`, `order_state_name`, `state`) VALUES
(1, 'Chờ xác nhận', 0),
(2, 'Đã xác nhận', 0),
(3, 'Chờ thanh toán', 0),
(4, 'Đã thanh toán', 0),
(5, 'Chờ gửi hàng', 0),
(6, '	\r\nHủy đơn hàng', 0),
(7, '	\r\nĐã chuyển hàng', 0);

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE IF NOT EXISTS `page` (
  `page_id` int(11) NOT NULL,
  `page_name` text COLLATE utf8_unicode_ci,
  `page_des` text COLLATE utf8_unicode_ci,
  `page_content` text COLLATE utf8_unicode_ci,
  `page_img` text COLLATE utf8_unicode_ci,
  `page_created_date` datetime DEFAULT NULL,
  `page_update_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `page_sub_info1` text COLLATE utf8_unicode_ci,
  `page_sub_info2` text COLLATE utf8_unicode_ci,
  `page_sub_info3` text COLLATE utf8_unicode_ci,
  `page_sub_info4` text COLLATE utf8_unicode_ci,
  `page_sub_info5` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`page_id`, `page_name`, `page_des`, `page_content`, `page_img`, `page_created_date`, `page_update_date`, `state`, `page_sub_info1`, `page_sub_info2`, `page_sub_info3`, `page_sub_info4`, `page_sub_info5`, `keyword`, `title_seo`, `des_seo`, `friendly_url`, `created_id`) VALUES
(35, 'Giới thiệu', 'Lĩnh vực hoạt động: Marketing Online toàn diện - quảng cáo, seo, thiết kế website, email marketing, thiết kế đồ họa, quản trị mạng xã hội, quản trị website,…..', '<p><img alt="" src="../image/slide1.jpg" /></p>\r\n\r\n<p>C&ocirc;ng ty cổ phần DP GREEN- PHAR được th&agrave;nh lập bởi Dược sĩ Đai học Dược H&agrave; Nội Trần Kh&aacute;nh H&ograve;a từ 2015. Trải qua qu&aacute; tr&igrave;nh nghi&ecirc;n cứu &amp; tư vấn điều trị bệnh ngo&agrave;i c&ocirc;ng đồng, DP GREEN- PHAR được th&agrave;nh lập với mục ti&ecirc;u:</p>\r\n\r\n<p>DP GREEN-PHAR trung t&acirc;m tư vấn &amp; t&igrave;m giải ph&aacute;p xử l&yacute; c&aacute;c bệnh ngo&agrave;i cộng đồng.<br />\r\nƯu ti&ecirc;n giải quyết c&aacute;c vấn đề về sức khỏe cho qu&yacute; kh&aacute;ch h&agrave;ng l&agrave; số 1.<br />\r\nKết hợp với đội ngũ Dược Sĩ của nh&agrave; m&aacute;y Armephaco 12- x&iacute; nghiệp dược phẩm 120- Qu&acirc;n đội, nghi&ecirc;n cứu đưa ra những sản phẩm, giải ph&aacute;p chất lượng cao: HIỆU QUẢ- AN TO&Agrave;N với người sử dụng.</p>\r\n\r\n<h2>Th&ocirc;ng tin c&ocirc;ng ty:</h2>\r\n\r\n<p><strong>C&Ocirc;NG TY CỔ PHẦN DP GREEN-PHAR</strong><br />\r\nĐược cấp giấy chứng nhận ĐKKD số 0106800687 do Sở Kế Hoạch v&agrave; Đầu Tư H&agrave; Nội cấp ng&agrave;y 25/04/2015, c&oacute; trụ sở ch&iacute;nh đặt tại số 19, ng&otilde; 4, phố Văn La, H&agrave; Đ&ocirc;ng, H&agrave; Nội</p>\r\n\r\n<h2>C&aacute;c lĩnh vực hoạt động</h2>\r\n\r\n<p>Tư vấn &amp; t&igrave;m giải ph&aacute;p cho c&aacute;c bệnh tại c&ocirc;ng đồng<br />\r\nTham gia nghi&ecirc;n cứu c&ugrave;ng Armephaco 120, t&igrave;m ra c&aacute;c sản phẩm c&oacute; hiệu quả cao, an to&agrave;n với người sử dụng.<br />\r\nTrồng &amp; ph&aacute;t triển v&ugrave;ng dược liệu</p>\r\n\r\n<h2>Sau hơn 2 năm nghi&ecirc;n cứu &amp; s&agrave;ng lọc DP GREEN- PHAR đ&atilde; c&oacute; giải ph&aacute;p cho c&aacute;c vấn đề:</h2>\r\n\r\n<p>Bệnh trĩ, đi cầu ra m&aacute;u, bệnh trĩ sau sinh, Suy gi&atilde;n tĩnh mạch.<br />\r\nTiền đ&igrave;nh, đau đầu, ch&oacute;ng mặt, ngủ kh&ocirc;ng ngon.<br />\r\nBệnh đại tr&agrave;ng cấp, m&atilde;n &amp; đại tr&agrave;ng co thắt.<br />\r\nBệnh vi&ecirc;m gan, tăng men gan do rượu. chức năng gan suy giảm do thuốc, h&oacute;a chất...<br />\r\nC&aacute;c sản phẩm bổ sung yếu tố vi lượng: Ca++, Mg ++, Spirulina, men vi sinh...<br />\r\nĐến với DP GREEN- PHAR qu&yacute; kh&aacute;ch h&agrave;ng sẽ được đội ngũ B&aacute;c sĩ, Dược sĩ Đại học Dược H&agrave; Nội tư vấn &amp; t&igrave;m giải ph&aacute;p cho vấn đề sức khỏe của qu&yacute; kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<h2>Đội ngũ bao gồm:</h2>\r\n\r\n<p>B&aacute;c Sĩ, Thạc Sĩ: Nguyễn Văn Quyết.<br />\r\nDược sĩ Đại Học Dược H&agrave; Nội: Trần Kh&aacute;nh H&ograve;a.<br />\r\nDược sĩ Đại Học Dược H&agrave; Nội: Đo&agrave;n Xu&acirc;n Phan.<br />\r\nDược sĩ Đại Học Dược H&agrave; Nội: L&ecirc; Thị Đĩnh.<br />\r\nDược sĩ Đại Học Dược H&agrave; Nội: L&ecirc; Quang H&ograve;a.<br />\r\nC&aacute;c dược sĩ kh&aacute;c: Nguyễn th&igrave; Dơn, L&ecirc; Thị Gi&aacute;ng Hương, L&ecirc; Thị Th&uacute;y, Nguyễn Thị Nh&agrave;n.<br />\r\nVới mục ti&ecirc;u ưu ti&ecirc;n giải quyết c&aacute;c vấn đề về sức khỏe cho qu&yacute; kh&aacute;ch l&agrave; số 1, DP GREEN-PHAR đ&atilde; v&agrave; đang l&agrave;m tốt. Ch&uacute;ng t&ocirc;i cam kết lu&ocirc;n lu&ocirc;n cố gắng nghi&ecirc;n cứu, ho&agrave;n thiện ch&iacute;nh m&igrave;nh để đem lại những sản phẩm, dịch vụ v&agrave; giải ph&aacute;p tốt nhất cho qu&yacute; kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<h2>C&aacute;c chứng chỉ c&ocirc;ng ty đ&atilde; đạt được do bộ y tế cấp.</h2>\r\n\r\n<p>Nh&agrave; m&aacute;y Armepharco 120: GMP- WHO ( Thực h&agrave;nh sản xuất tốt).<br />\r\nDP GREEN- PHAR: GSP- WHO ( Thực h&agrave;nh bảo quản tốt).<br />\r\nDP GREEN &ndash; PHAR: GDP &ndash; WHO ( Thực h&agrave;nh ph&acirc;n phối tốt.<br />\r\nCảm ơn qu&yacute; kh&aacute;ch đ&atilde; tin d&ugrave;ng dịch vụ của ch&uacute;ng t&ocirc;i, DP GREEN- PHAR cam kết sẽ lu&ocirc;n đưa ra c&aacute;c sản phẩm, dịch vụ v&agrave; giải ph&aacute;p hiệu quả, an to&agrave;n cho qu&yacute; kh&aacute;ch.</p>\r\n', 'pa5.jpg', '2017-05-11 16:05:22', '2017-12-03 17:12:08', 1, '', '', '', '', '', 'Goldbridge Việt Nam', 'Giới thiệu', 'Lĩnh vực hoạt động: Marketing Online toàn diện - quảng cáo, seo, thiết kế website, email marketing, thiết kế đồ họa, quản trị mạng xã hội, quản trị website,…..', 'gioi-thieu', 1),
(36, 'Báo giá', 'Bảng giá dịch thuật công chứng Giá tốt, chất lượng cao, dịch ngay\r\nHơn 8000 CTV Dịch thuật · Hơn 10 năm kinh nghiệm · 100% khách hàng hài lòng', '<h2><strong>PHƯƠNG THỨC GIAO DỊCH ĐỐI VỚI B&Aacute;O GI&Aacute; DỊCH THUẬT</strong></h2>\r\n\r\n<p>1. Ch&uacute;ng t&ocirc;i sẽ giao nhận t&agrave;i liệu tận nơi với những đơn đặt h&agrave;ng tr&ecirc;n 50 trang t&agrave;i liệu.<br />\r\n2. Để tiến h&agrave;nh c&ocirc;ng t&aacute;c dịch thuật v&agrave; phi&ecirc;n dịch Hợp đồng Qu&yacute; kh&aacute;ch cần đặt trước 30% gi&aacute; trị hợp đồng.<br />\r\n3. Nếu qu&yacute; kh&aacute;ch l&agrave; c&ocirc;ng ty c&oacute; nhu cầu dịch thuật dưới 10 trang, Qu&yacute; kh&aacute;ch chỉ cần fax x&aacute;c nhận y&ecirc;u cầu c&oacute; đầy đủ th&ocirc;ng tin li&ecirc;n quan k&egrave;m con dấu, ch&uacute;ng t&ocirc;i sẽ tiến h&agrave;nh thực hiện y&ecirc;u cầu dịch m&agrave; kh&ocirc;ng cần tiền đặt cọc hợp đồng.<br />\r\n4. Đối với kh&aacute;ch h&agrave;ng thường xuy&ecirc;n dịch tại C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i sẽ giao nhận tận nơi miễn ph&iacute;.</p>\r\n\r\n<p><strong>Phần ưu ti&ecirc;n kh&aacute;ch h&agrave;ng dịch với số lượng lớn</strong><br />\r\n1. Giảm 5% với số lượng từ 100 &ndash; 500 trang<br />\r\n2. Giảm 10% với số lượng từ 500 &ndash; 1000 trang<br />\r\n3. Giảm 15% với số lượng 1000 trang trở l&ecirc;n</p>\r\n\r\n<p><strong>Lưu &yacute; quan trọng:</strong></p>\r\n\r\n<ul>\r\n	<li>Gi&aacute; dịch chưa bao gồm VAT (10%).</li>\r\n	<li>Mức gi&aacute; tr&ecirc;n kh&ocirc;ng &aacute;p dụng đối với Kh&aacute;ch h&agrave;ng dịch chuy&ecirc;n ng&agrave;nh, dịch gấp, c&ocirc;ng chứng gấp.</li>\r\n	<li>Văn bản hiệu đ&iacute;nh: Hiệu đ&iacute;nh = 50% tiền dịch. Nếu t&agrave;i liệu hiệu đ&iacute;nh sai tr&ecirc;n 30% th&igrave; bản hiệu đ&iacute;nh đ&oacute; được t&iacute;nh bằng tiền dịch.</li>\r\n	<li>Số lượng từ tr&ecirc;n một trang được quy định dưới 300 từ (D&ugrave;ng hệ thống đếm từ tự động Word Count), trường hợp t&agrave;i liệu của qu&yacute; kh&aacute;ch l&agrave; bản cứng kh&ocirc;ng thể đếm từ được sẽ t&iacute;nh x&aacute;c xuất hoặc t&iacute;nh theo bản dịch l&uacute;c n&agrave;y số lượng từ tr&ecirc;n trang sản phẩm c&oacute; thể quy định lại, th&ocirc;ng thường sẽ giao động 10-20%.</li>\r\n	<li>Gi&aacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y sang tiếng nước ngo&agrave;i kh&aacute;c sẽ bằng chi ph&iacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y ra tiếng Việt cộng với từ tiếng Việt sang tiếng nước ngo&agrave;i thứ hai hoặc sẽ t&iacute;nh ph&iacute; dịch trực tiếp nếu c&oacute; y&ecirc;u cầu người bản địa dịch thuật lại</li>\r\n	<li>Nếu qu&yacute; kh&aacute;ch y&ecirc;u cầu dịch gấp, dịch v&agrave;o ng&agrave;y nghỉ, ng&agrave;y lễ gi&aacute; dịch sẽ tăng 25 %, th&ocirc;ng thường đơn đặt h&agrave;ng tr&ecirc;n 20 trang lấy trong ng&agrave;y được coi l&agrave; gấp. Nếu l&agrave; kh&aacute;ch h&agrave;ng thường xuy&ecirc;n của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; qu&yacute; kh&aacute;ch sẽ được miễn ph&iacute; dịch vụ cộng th&ecirc;m n&agrave;y.</li>\r\n	<li>Đối với t&agrave;i liệu chuy&ecirc;n ng&agrave;nh như: Hợp đồng kinh tế, kỹ thuật, thương mại, t&agrave;i ch&iacute;nh,y học, dược phẩm... th&igrave; ngo&agrave;i tiền dịch + 30% tiền dịch chuy&ecirc;n ng&agrave;nh.</li>\r\n</ul>\r\n\r\n<h3>BẢNG GI&Aacute; DỊCH THUẬT N&Agrave;Y C&Oacute; THỂ THAY ĐỔI PHỤ THUỘC V&Agrave;O NHU CẦU THỰC TẾ CỦA DỰ &Aacute;N, HỢP ĐỒNG V&Agrave; SỰ THỎA THUẬN GIỮA HAI B&Ecirc;N !</h3>\r\n\r\n<p>Chuyển ngữ v&agrave; địa phương h&oacute;a t&agrave;i liệu rất quan trọng n&oacute; c&oacute; ảnh hưởng rất lớn đến c&ocirc;ng việc v&agrave; quyết định trong dự &aacute;n của bạn. Qu&yacute; kh&aacute;ch đang t&igrave;m một đơn vị&nbsp;<a href="https://www.dichthuatchaua.com/bien-phien-dich/dich-thuat/dich-thuat-cong-chung.html" title="Dịch thuật công chứng">Dịch Thuật</a>&nbsp;chuy&ecirc;n nghiệp v&agrave; gi&agrave;u kinh nghiệm trong việc Địa phương h&oacute;a t&agrave;i liệu, đảm bảo thời gian ch&iacute;nh x&aacute;c v&agrave; chất lượng tuyệt đối, chi ph&iacute; hợp l&yacute; nhất. H&atilde;y li&ecirc;n hệ ngay với&nbsp;<a href="https://www.dichthuatchaua.com/gioi-thieu-cong-ty-dich-thuat.html" title="Công ty dịch thuật chuyên nghiệp">C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;</a>&nbsp;để được nhưng chuy&ecirc;n gia tư vấn chuy&ecirc;n nghiệp, gi&agrave;u kinh nghiệm gi&uacute;p Qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p><img alt="" height="800" src="/image/images/55e7557453f13-sierra-fig2.jpg" width="1600" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dự &aacute;n, Hợp đồng của Qu&yacute; kh&aacute;ch h&agrave;ng rất quan trọng, Qu&yacute; kh&aacute;ch h&agrave;ng đang muốn t&igrave;m một đơn vị Dịch thuật c&oacute; thể đảm bảo về thời gian, chất lượng v&agrave; cung cấp gi&aacute; cả tốt nhất, h&atilde;y li&ecirc;n lạc với số Hotline: 0932232318 (H&agrave; Nội) hoặc 0932237939 (TP HCM) của Dich thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; sẽ l&agrave;m Qu&yacute; kh&aacute;ch h&agrave;i l&ograve;ng.</p>\r\n\r\n<p>Cảm ơn Qu&yacute; kh&aacute;ch đ&atilde; ngh&eacute; thăm website của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i lu&ocirc;n cam kết đưa ra mức gi&aacute; cạnh tranh v&agrave; chất lương v&agrave; bảo mật bảo đảm tuyệt đối.</p>\r\n', 'pa4.jpg', '2017-05-11 16:05:03', '2017-12-03 17:12:55', 1, '', '', '', '', '', 'báo giá dịch vụ', 'Báo giá', '"Làm kế toán phải có Tâm với Doanh nghiệp. Đang Tư vấn Miễn Phí. Tìm hiểu ngay!\r\nBảo hành trọn đời · Bảo vệ Doanh Nghiệp"', 'bao-gia', 1),
(37, 'Tuyển Cộng Tác Viên', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!', '<p>1. Nội dung c&ocirc;ng việc :<br />\r\n<br />\r\n. Triển khai c&aacute;c bản vẽ nội thất để sản xuất : tủ, giường, b&agrave;n, ghế.... bằng phần mềm autocad<br />\r\n<br />\r\n. Hỗ trợ kiểm tra đối chiếu bản vẽ với b&ecirc;n sản xuất hoặc tại c&ocirc;ng tr&igrave;nh<br />\r\n<br />\r\n2. Y&ecirc;u cầu :<br />\r\n<br />\r\n. Nam/ nữ c&oacute; kinh nghiệm tối thiểu 1 năm về họa vi&ecirc;n autocad cho c&aacute;c xưởng sản xuất nội thất<br />\r\n<br />\r\n. C&oacute; hiểu biết về kết cấu , kỹ thuật sản phẩm, thao t&aacute;c nhanh tr&ecirc;n phần mềm Autocad<br />\r\n<br />\r\n. C&oacute; phương tiện đi lại<br />\r\n<br />\r\n. C&oacute; thể đi c&ocirc;ng t&aacute;c ngắn hạn.<br />\r\n<br />\r\n. C&oacute; thể tăng ca theo y&ecirc;u cầu<br />\r\n<br />\r\n3. Chế độ :<br />\r\n<br />\r\n. Lương : 6.000.000 VND / th&aacute;ng hoặc thỏa thuận<br />\r\n<br />\r\n. L&agrave;m việc tại showroom 233B B&ugrave;i Thị Xu&acirc;n T&acirc;n B&igrave;nh HCM<br />\r\n<br />\r\n. Lương th&aacute;ng 13. ph&eacute;p năm, thưởng chuy&ecirc;n cần. thưởng lễ tết<br />\r\n<br />\r\n4. Th&ocirc;ng tin kh&aacute;c:<br />\r\n<br />\r\n. Nộp hồ sơ trực tiếp hoặc trực tuyến<br />\r\n<br />\r\n. Hồ sơ c&oacute; c&aacute;c bản vẽ đ&atilde; từng thực hiện<br />\r\n<br />\r\n. Tham khảo th&ecirc;m th&ocirc;ng tin c&ocirc;ng ty tại : www.zenhomes.vn<br />\r\n<br />\r\nLoại h&igrave;nh c&ocirc;ng việc: To&agrave;n thời gian<br />\r\n<br />\r\nLương: ₫6.000.000 /th&aacute;ng<br />\r\n<br />\r\nKinh nghiệm y&ecirc;u cầu:<br />\r\n<br />\r\nkhai triển autocad nội thất: 1 năm</p>\r\n', 'pa3.jpg', '2017-05-18 02:05:05', '2017-12-03 17:12:45', 1, '', '', '', '', '', 'tuyên cộng tác viên', 'Tuyển Cộng Tác Viên ', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!', 'tuyen-cong-tac-vien', 1),
(39, 'Câu hỏi thường gặp', 'Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết', '<h1>Ti&ecirc;u đề tin tức</h1>\r\n\r\n<p style="margin-left:0px; margin-right:0px">M&ocirc; tả ngắn của b&agrave;i viết, m&ocirc; tả ngắn của b&agrave;i viết, m&ocirc; tả ngắn của b&agrave;i viết, m&ocirc; tả ngắn của b&agrave;i viết, m&ocirc; tả ngắn của b&agrave;i viết</p>\r\n\r\n<p><img alt="" src="../image/slide1.jpg" /></p>\r\n\r\n<h2>Thẻ h2</h2>\r\n\r\n<p>Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết. Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết</p>\r\n\r\n<h2>Thẻ h2</h2>\r\n\r\n<p>Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết. Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết</p>\r\n\r\n<p><img alt="" src="../image/formImgCate.jpg" /></p>\r\n', 'pa2.jpg', '2017-07-10 15:07:50', '2017-12-03 17:12:33', 1, '', '', '', '', '', '', 'Câu hỏi thường gặp', 'Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viế', 'cau-hoi-thuong-gap', 1),
(40, 'Chính sách bảo mật', '', '<h2>DP GREEN-PHAR cam kết bảo mật th&ocirc;ng tin c&aacute; nh&acirc;n của tất cả kh&aacute;ch h&agrave;ng.</h2>\r\n\r\n<p>Cảm ơn bạn đ&atilde; truy cập website: www.greenphar.com<br />\r\nCh&uacute;ng t&ocirc;i hiểu r&otilde; tầm quan trọng của sự ri&ecirc;ng tư v&agrave; sẽ giữ b&iacute; mật th&ocirc;ng tin c&aacute; nh&acirc;n của bạn. Xin vui l&ograve;ng đọc bản Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y v&agrave; hiểu c&aacute;c h&agrave;nh động li&ecirc;n quan về th&ocirc;ng tin c&aacute; nh&acirc;n của bạn. Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y c&oacute; thể thay đổi m&agrave; kh&ocirc;ng th&ocirc;ng b&aacute;o trước, do đ&oacute; bạn vui l&ograve;ng thường xuy&ecirc;n r&agrave; so&aacute;t, cập nhật c&aacute;c điều khoản để biết những thay đổi.</p>\r\n\r\n<h2>Điều 1. Mục đ&iacute;ch v&agrave; phạm vi thu thập th&ocirc;ng tin</h2>\r\n\r\n<h3>1.1. Mục đ&iacute;ch thu thập th&ocirc;ng tin:</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i thực hiện việc thu thập th&ocirc;ng tin của bạn th&ocirc;ng qua website n&agrave;y nhằm:<br />\r\nDP GREEN-PHAR trung t&acirc;m tư vấn &amp; t&igrave;m giải ph&aacute;p xử l&yacute; c&aacute;c bệnh ngo&agrave;i cộng đồng.<br />\r\nGiải đ&aacute;p thắc mắc của bạn về vấn đề c&aacute;c bệnh m&agrave; bạn thắc mắc v&agrave; quan t&acirc;m.<br />\r\nGiới thiệu c&aacute;c h&agrave;ng h&oacute;a v&agrave; dịch vụ c&oacute; thể ph&ugrave; hợp với c&aacute;c nhu cầu v&agrave; sở th&iacute;ch của bạn.<br />\r\nCung cấp những th&ocirc;ng tin mới nhất của website.<br />\r\nXem x&eacute;t v&agrave; n&acirc;ng cấp nội dung, giao diện của website.<br />\r\nThực hiện hoạt động khảo s&aacute;t kh&aacute;ch h&agrave;ng.<br />\r\nThực hiện c&aacute;c hoạt động quảng b&aacute; sản phẩm v&agrave; giới thiệu những chương tr&igrave;nh khuyến m&atilde;i.<br />\r\nGiải quyết c&aacute;c vấn đề, tranh chấp ph&aacute;t sinh li&ecirc;n quan đến việc sử dụng website.<br />\r\nCh&uacute;ng t&ocirc;i bảo lưu quyền từ chối tr&aacute;ch nhiệm về bất kỳ thiệt hại n&agrave;o ph&aacute;t sinh nếu th&ocirc;ng tin c&aacute; nh&acirc;n của bạn bị đ&aacute;nh cắp, bị mất hoặc bị thiệt hại do sự cố hoặc bằng bất kỳ c&aacute;ch n&agrave;o kh&aacute;c.</p>\r\n\r\n<h3>1.2. Phạm vi thu thập th&ocirc;ng tin c&aacute; nh&acirc;n:</h3>\r\n\r\n<p>Th&ocirc;ng tin c&aacute; nh&acirc;n m&agrave; ch&uacute;ng t&ocirc;i thu thập của bạn khi bạn gửi thắc mắc về cho ch&uacute;ng t&ocirc;i, bao gồm:<br />\r\nHọ, t&ecirc;n, Năm sinh.<br />\r\nĐịa chỉ li&ecirc;n hệ.<br />\r\nĐiện thoại li&ecirc;n hệ.<br />\r\nEmail.<br />\r\nTh&ocirc;ng tin bệnh l&yacute; v&agrave; những thắc mắc về bệnh học li&ecirc;n quan.</p>\r\n\r\n<h2>Điều 2. Phạm vi sử dụng th&ocirc;ng tin</h2>\r\n\r\n<p>Th&ocirc;ng tin của bạn được sử dụng để ch&uacute;ng t&ocirc;i hoặc c&aacute;c b&ecirc;n c&oacute; li&ecirc;n quan kh&aacute;c c&oacute; thể thực hiện c&aacute;c y&ecirc;u cầu của bạn.<br />\r\nCh&uacute;ng t&ocirc;i c&oacute; thể li&ecirc;n hệ với bạn hoặc giới thiệu bạn đến c&aacute;c cuộc nghi&ecirc;n cứu bao gồm nghi&ecirc;n cứu sự h&agrave;i l&ograve;ng của kh&aacute;ch h&agrave;ng, thị trường, nội dung c&aacute; nh&acirc;n kh&aacute;c, hoặc c&oacute; li&ecirc;n quan đến một số giao dịch nhất định.<br />\r\nCh&uacute;ng t&ocirc;i thu thập th&ocirc;ng tin về truy cập website của bạn gồm những th&ocirc;ng tin c&oacute; thể nhận biết v&agrave; kh&ocirc;ng thể nhận biết để ph&acirc;n t&iacute;ch (v&iacute; dụ: dữ liệu ph&acirc;n t&iacute;ch việc truy cập website, &hellip;).<br />\r\nTh&ocirc;ng tin của bạn được sử dụng để gi&uacute;p cung cấp cho c&aacute;c dịch vụ của ch&uacute;ng t&ocirc;i v&agrave; ch&uacute;ng t&ocirc;i c&oacute; thể cung cấp th&ocirc;ng tin cho c&aacute;c c&ocirc;ng ty đại diện ch&uacute;ng t&ocirc;i. Những c&ocirc;ng ty n&agrave;y cũng chịu sự r&agrave;ng buộc nghi&ecirc;m ngặt bởi Ch&iacute;nh s&aacute;ch Bảo mật của ch&uacute;ng t&ocirc;i.</p>\r\n\r\n<h2>Điều 3. Thời gian lưu trữ th&ocirc;ng tin</h2>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i sẽ lưu trữ c&aacute;c th&ocirc;ng tin c&aacute; nh&acirc;n do kh&aacute;ch h&agrave;ng cung cấp tr&ecirc;n c&aacute;c hệ thống quản l&yacute;, lưu trữ dữ liệu của ch&uacute;ng t&ocirc;i hoặc ch&uacute;ng t&ocirc;i thu&ecirc; trong qu&aacute; tr&igrave;nh cung cấp dịch vụ cho kh&aacute;ch h&agrave;ng cho đến khi ho&agrave;n th&agrave;nh mục đ&iacute;ch thu thập hoặc khi bạn c&oacute; y&ecirc;u cầu hủy c&aacute;c th&ocirc;ng tin đ&atilde; cung cấp.</p>\r\n\r\n<h2>Điều 4. Địa chỉ của đơn vị thu thập v&agrave; quản l&yacute; th&ocirc;ng tin c&aacute; nh&acirc;n</h2>\r\n\r\n<p><strong>C&Ocirc;NG TY CỔ PHẦN DP GREEN-PHAR</strong><br />\r\nĐịa chỉ: Số 19, Ng&otilde; 4, phố Văn La, H&agrave; Đ&ocirc;ng, H&agrave; Nội.<br />\r\nĐiện thoại: (024) 6262.7731<br />\r\nEmail: dpgreenphar@gmail.com</p>\r\n\r\n<h2>Điều 5. Phương tiện v&agrave; c&ocirc;ng cụ để người d&ugrave;ng tiếp cận v&agrave; chỉnh sửa dữ liệu c&aacute; nh&acirc;n của m&igrave;nh.</h2>\r\n\r\n<p>Bạn c&oacute; thể tự đăng nhập v&agrave;o website qua link www.greenphar.com &nbsp;v&agrave; chỉnh sửa c&aacute;c th&ocirc;ng tin c&aacute; nh&acirc;n như: t&ecirc;n, số điện thoại, địa chỉ giao-nhận h&agrave;ng, ...<br />\r\nNếu bạn kh&ocirc;ng quan t&acirc;m hoặc kh&ocirc;ng muốn nhận tin tức, th&ocirc;ng tin, bạn c&oacute; thể thay đổi th&ocirc;ng tin của bạn v&agrave;o bất kỳ l&uacute;c n&agrave;o bằng c&aacute;ch gửi email về cho ch&uacute;ng t&ocirc;i qua địa chỉ email: cskh@greenphar.com</p>\r\n\r\n<h2>Điều 6. Cam kết bảo mật th&ocirc;ng tin c&aacute; nh&acirc;n kh&aacute;ch h&agrave;ng</h2>\r\n\r\n<p>Ngo&agrave;i việc sử dụng c&aacute;c th&ocirc;ng tin của bạn v&agrave;o c&aacute;c mục đ&iacute;ch n&ecirc;u tại Khoản 1.1 Điều 1 của Ch&iacute;nh s&aacute;ch bảo mật n&agrave;y v&agrave; phạm vi n&ecirc;u tại Điều 2 của Ch&iacute;nh s&aacute;ch bảo mật n&agrave;y, Ch&uacute;ng t&ocirc;i sẽ giữ b&iacute; mật th&ocirc;ng tin c&aacute; nh&acirc;n của bạn.&nbsp;Xin vui l&ograve;ng đọc bản Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y v&agrave; hiểu c&aacute;c h&agrave;nh động li&ecirc;n quan về th&ocirc;ng tin c&aacute; nh&acirc;n của bạn. Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y c&oacute; thể thay đổi m&agrave; kh&ocirc;ng th&ocirc;ng b&aacute;o trước, do đ&oacute; bạn vui l&ograve;ng thường xuy&ecirc;n r&agrave; so&aacute;t, cập nhật c&aacute;c điều khoản n&agrave;y để biết những thay đổi.<br />\r\n<strong>Ch&iacute;nh s&aacute;ch bảo mật tại DP GREEN- PHAR</strong><br />\r\n- DP GREEN-PHAR c&oacute; thể thay đổi ch&iacute;nh s&aacute;ch bảo mật v&agrave; mọi thay đổi sẽ được c&ocirc;ng khai tr&ecirc;n website www.greenphar.com<br />\r\n- Tất cả c&aacute;c thay đổi về ch&iacute;nh s&aacute;ch bảo mật ch&uacute;ng t&ocirc;i đều tu&acirc;n thủ theo quy định của Ph&aacute;p Luật Nh&agrave; Nước hiện h&agrave;nh.<br />\r\n- Mọi &yacute; kiến thắc mắc, khiếu nại v&agrave; tranh chấp vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i qua hotline Chăm s&oacute;c kh&aacute;ch h&agrave;ng:&nbsp;<strong>(024) 6262. 7731</strong><br />\r\n<br />\r\nTr&acirc;n trọng,<br />\r\n<strong>DP GREEN- PHAR: Chu Đ&aacute;o, Tin Cậy!</strong></p>\r\n', 'pa1.jpg', '2017-07-10 22:07:44', '2017-12-03 17:12:20', 1, '', '', '', '', '', '', 'Chính sách bảo mật', '', 'chinh-sach-bao-mat', 1),
(41, 'Chính sách đổi - trả', '', '<p>Qu&yacute; kh&aacute;ch vui l&ograve;ng chắc chắn rằng sản phẩm y&ecirc;u cầu đổi (trả) thỏa m&atilde;n điều kiện đổi trả h&agrave;ng của DP GREEN- PHAR tại ch&iacute;nh s&aacute;ch đổi trả h&agrave;ng h&oacute;a như sau:<br />\r\n<strong><em>C&aacute;c trường hợp được quyền đổi - trả sản phẩm:</em></strong><br />\r\nĐổi - trả do đơn h&agrave;ng sai hoặc thiếu sản phẩm so với th&ocirc;ng tin đặt h&agrave;ng.<br />\r\nTrả h&agrave;ng - ho&agrave;n tiền sản phẩm lỗi do qu&aacute; tr&igrave;nh vận chuyển (hộp thuốc bị bể, ẩm mốc,&hellip;).<br />\r\nTrả h&agrave;ng - ho&agrave;n tiền sản phẩm lỗi sản xuất (nh&atilde;n m&aacute;c kh&ocirc;ng r&otilde; chữ, th&ocirc;ng tin tr&ecirc;n bao b&igrave; sản phẩm kh&ocirc;ng ch&iacute;nh x&aacute;c, sản phẩm đ&atilde; bị mở trước khi đến tay kh&aacute;ch h&agrave;ng...).<br />\r\nTrả h&agrave;ng - ho&agrave;n tiền do lỗi giao h&agrave;ng sản phẩm hết hạn sử dụng.<br />\r\n<strong><em>Điều kiện bắt buộc:</em></strong><br />\r\nSản phẩm kh&ocirc;ng c&oacute; dấu hiệu đ&atilde; qua sử dụng, c&ograve;n nguy&ecirc;n hộp, tem, m&aacute;c, seal (seal vỏ hộp v&agrave; seal chai thuốc).<br />\r\nTrong trường hợp Kh&aacute;ch h&agrave;ng đ&atilde; khui seal vỏ hộp v&agrave; ph&aacute;t hiện chai thuốc c&oacute; lỗi sản xuất, vui l&ograve;ng chụp h&igrave;nh v&agrave; gọi Hotline để BP CSKH hướng dẫn th&ecirc;m.<br />\r\nĐối với c&aacute;c sản phẩm đ&atilde; khui seal chai thuốc, DP GREEN- PHAR xin được từ chối đổi trả.<br />\r\nQu&yacute; kh&aacute;ch h&agrave;ng lưu &yacute; lu&ocirc;n lu&ocirc;n kiểm tra kĩ t&igrave;nh trạng sản phẩm sau khi nhận được ngay tại thời điểm nhận h&agrave;ng v&agrave; c&oacute; sự chứng kiến của nh&acirc;n vi&ecirc;n giao h&agrave;ng. C&aacute;c vấn đề như bể vỡ, vỏ hộp chai thuốc bị r&aacute;ch n&aacute;t hoặc seal đ&atilde; bị mở, &hellip; Tất cả những sự cố n&agrave;y sẽ chỉ được đổi trả nếu do lỗi từ ph&iacute;a nh&acirc;n vi&ecirc;n của DP GREEN- PHAR v&agrave; đơn vị vận chuyển ViettelPost.</p>\r\n\r\n<h2>Thời hạn đổi trả h&agrave;ng</h2>\r\n\r\n<p>Sau khi nhận được sản phẩm của kh&aacute;ch h&agrave;ng gửi trả, Bộ phận Chăm s&oacute;c Kh&aacute;ch h&agrave;ng sẽ tiến h&agrave;nh kiểm tra chất lượng sản phẩm ngay lập tức. Quy tr&igrave;nh kiểm tra h&agrave;ng đổi trả được thực hiện trong v&ograve;ng từ 1-3 ng&agrave;y l&agrave;m việc, kết quả kiểm tra sẽ được th&ocirc;ng b&aacute;o đến kh&aacute;ch h&agrave;ng qua email v&agrave; tin nhắn điện thoại sau khi ho&agrave;n tất.<br />\r\nSau khi nhận được email hoặc tin nhắn th&ocirc;ng b&aacute;o từ DP GREEN- PHAR, kh&aacute;ch h&agrave;ng c&oacute; thể kiểm tra t&igrave;nh trạng đổi trả hoặc ho&agrave;n tiền th&ocirc;ng qua c&ocirc;ng cụ kiểm tra đơn h&agrave;ng của&nbsp;<strong>DP GREEN-PHAR</strong>.</p>\r\n\r\n<h2>Phương thức đổi trả h&agrave;ng đ&atilde; mua</h2>\r\n\r\n<p><strong><em>Bước 1:</em></strong> Đăng k&iacute;<br />\r\nKh&aacute;ch h&agrave;ng c&oacute; thể li&ecirc;n hệ với bộ phận chăm s&oacute;c kh&aacute;ch h&agrave;ng của DP GREEN-PHAR qua hotline (024) 6262.7731 hoặc truy cập trang web: WWW.GREENPHAR.COM &nbsp;v&agrave; cung cấp th&ocirc;ng tin chi tiết về sản phẩm lỗi gồm:<br />\r\n- T&ecirc;n sản phẩm<br />\r\n- M&atilde; số đơn h&agrave;ng, l&ocirc; sản xuất, hạn sử dụng<br />\r\n- Lỗi sản phẩm (m&ocirc; tả chi tiết v&agrave; k&egrave;m ảnh chụp)<br />\r\n<strong><em>Bước 2:</em></strong> Nhận tin nhắn x&aacute;c nhận đ&atilde; đăng k&yacute; đổi/trả th&agrave;nh c&ocirc;ng v&agrave; email hướng dẫn đ&oacute;ng g&oacute;i sản phẩm ho&agrave;n trả.<br />\r\nSau khi y&ecirc;u cầu đổi/trả được chấp nhận, DP GREEN-PHAR sẽ gửi đến qu&yacute; kh&aacute;ch một tin nhắn v&agrave; email hướng dẫn c&aacute;ch gửi trả sản phẩm.<br />\r\n<strong><em>Bước 3:</em></strong> Đ&oacute;ng g&oacute;i theo hướng dẫn v&agrave; mang sản phẩm đến Bưu Điện<br />\r\n<strong><em>Bước 4:</em></strong> Gửi trả sản phẩm về DP GREEN-PHAR<br />\r\nKh&aacute;ch h&agrave;ng vui l&ograve;ng gửi sản phẩm qua đường Bưu Điện về DP GREEN-PHAR trong v&ograve;ng 3 ng&agrave;y l&agrave;m việc kể từ khi th&ocirc;ng b&aacute;o với bộ phận Chăm S&oacute;c Kh&aacute;ch H&agrave;ng v&agrave; gửi k&egrave;m:<br />\r\n- H&oacute;a đơn mua h&agrave;ng hoặc đ&iacute;nh k&egrave;m giấy ghi ch&uacute; c&oacute; m&atilde; đơn h&agrave;ng<br />\r\n- H&oacute;a đơn gi&aacute; trị gia tăng (nếu c&oacute;)<br />\r\n- Phụ kiện đi k&egrave;m sản phẩm v&agrave; tặng khuyến m&atilde;i k&egrave;m theo (nếu c&oacute;)<br />\r\n<strong><em>Một số lưu &yacute; khi gửi h&agrave;ng đến bưu điện:</em></strong><br />\r\n- Kh&ocirc;ng ni&ecirc;m phong bề mặt th&ugrave;ng ​trước khi ho&agrave;n tất qu&aacute; tr&igrave;nh gửi h&agrave;ng ​v&igrave; c&oacute; thể bưu điện cần kiểm tra trước khi nhận h&agrave;ng. Đ&oacute;ng g&oacute;i, ch&egrave;n l&oacute;t sản phẩm như ban đầu.<br />\r\n- Cung cấp cho nh&acirc;n vi&ecirc;n bưu điện m&atilde; đơn h&agrave;ng v&agrave; m&atilde; gửi h&agrave;ng b&ecirc;n DP GREEN-PHAR đ&atilde; cung cấp. - Lưu &yacute; kh&ocirc;ng d&aacute;n băng keo trực tiếp l&ecirc;n hộp sản phẩm v&igrave; y&ecirc;u cầu đổi/trả c&oacute; thể sẽ bị từ chối nếu hộp sản phẩm bị hư hỏng.<br />\r\n- Vui l&ograve;ng li&ecirc;n hệ Bộ phận Chăm s&oacute;c Kh&aacute;ch h&agrave;ng của DP GREEN-PHAR &nbsp;(024) 6262. 7731&nbsp;khi c&oacute; bất cứ kh&oacute; khăn xảy ra trong qu&aacute; tr&igrave;nh l&agrave;m việc với bưu điện.<br />\r\n- Điền th&ocirc;ng tin m&atilde; số đơn h&agrave;ng l&ecirc;n th&ugrave;ng h&agrave;ng v&agrave; gửi về DP GREEN- PHAR theo địa chỉ nh&acirc;n vi&ecirc;n chăm s&oacute;c kh&aacute;ch h&agrave;ng đ&atilde; cung cấp.<br />\r\n<strong>Note:</strong>&nbsp;<em>Trong trường hợp kh&ocirc;ng nhớ th&ocirc;ng tin ở bước số 4, qu&yacute; kh&aacute;ch c&oacute; thể xuất tr&igrave;nh tin nhắn hoặc email nhận được từ DP GREEN- PHAR đ&atilde; gửi (ở bước 2) cho nh&acirc;n vi&ecirc;n bưu điện v&agrave; l&agrave;m theo hướng dẫn.</em><br />\r\n<span style="color:#cc0000">Lưu &yacute;:</span> Kh&aacute;ch h&agrave;ng trong qu&aacute; tr&igrave;nh gửi trả sản phẩm về DP GREEN-PHAR sẽ chịu ho&agrave;n to&agrave;n tr&aacute;ch nhiệm về trạng th&aacute;i nguy&ecirc;n vẹn của sản phẩm.<br />\r\nSau khi nhận được sản phẩm kh&aacute;ch h&agrave;ng gửi trả về, DP GREEN- PHAR sẽ phản hồi v&agrave; cập nhật th&ocirc;ng tin tr&ecirc;n từng giai đoạn xử l&yacute; đến kh&aacute;ch h&agrave;ng qua email hoặc sms.</p>\r\n\r\n<h2>C&aacute;ch thức nhận lại tiền khi mua h&agrave;ng online</h2>\r\n\r\n<h3>Kh&aacute;ch h&agrave;ng sẽ nhận được số tiền ho&agrave;n trả sau bao l&acirc;u?</h3>\r\n\r\n<p>DP GREEN- PHAR sẽ ho&agrave;n tiền cho kh&aacute;ch h&agrave;ng trong trường hợp kh&aacute;ch h&agrave;ng trả hay hủy đơn h&agrave;ng.<br />\r\nPhương thức ho&agrave;n tiền bằng c&aacute;ch chuyển khoản ng&acirc;n h&agrave;ng.<br />\r\nTh&ocirc;ng tin sẽ được cập nhật đến cho qu&yacute; kh&aacute;ch bằng email hoặc SMS khi thủ tục ho&agrave;n tiền được tiến h&agrave;nh.<br />\r\n<strong>Phương thức ho&agrave;n tiền:</strong> Chuyển khoản ng&acirc;n h&agrave;ng<br />\r\n<strong>Thời gian ho&agrave;n tiền:</strong> 3 - 5 ng&agrave;y l&agrave;m việc<br />\r\nTrong trường hợp đ&atilde; vượt qu&aacute; c&aacute;c khoảng thời gian ho&agrave;n tiền tr&ecirc;n nhưng kh&aacute;ch h&agrave;ng vẫn chưa nhận được tiền, xin vui l&ograve;ng li&ecirc;n hệ với ng&acirc;n h&agrave;ng để được hỗ trợ hoặc Tổng đ&agrave;i Chăm s&oacute;c Kh&aacute;ch h&agrave;ng của DP GREEN-PHAR&nbsp;<strong>(024) 6262.7731</strong></p>\r\n\r\n<h3>Chi ph&iacute; cho việc đổi trả h&agrave;ng</h3>\r\n\r\n<p>Qu&yacute; Kh&aacute;ch h&agrave;ng vui l&ograve;ng thanh to&aacute;n tiền ph&iacute; vận chuyển khi Kh&aacute;ch h&agrave;ng thực hiện gửi h&agrave;ng tại bưu điện. DP GREEN- PHAR sẽ kh&ocirc;ng ho&agrave;n trả chi ph&iacute; n&agrave;y. Tuy nhi&ecirc;n sẽ giao h&agrave;ng miễn ph&iacute; đối với những đơn h&agrave;ng thuộc nh&oacute;m &ldquo;Đổi h&agrave;ng&quot;. Nếu c&oacute; bất k&igrave; vấn đề g&igrave; ph&aacute;t sinh, qu&yacute; kh&aacute;ch c&oacute; thể li&ecirc;n hệ với bộ phận CSKH của DP GREEN-PHAR theo Hotline&nbsp;<strong>(024) 6262.7731</strong></p>\r\n', 'pa5.jpg', '2017-07-10 22:07:03', '2017-12-03 17:12:06', 1, '', '', '', '', '', '', 'Chính sách đổi - trả', '', 'chinh-sach-doi-tra', 1),
(42, 'Hệ thống nhà thuốc', '', '<p>T&acirc;t cả c&aacute;c sản phẩm của DP GREEN-PHAR&nbsp;đ&atilde; được ph&acirc;n phối tại hơn 1000 nh&agrave; thuốc tại c&aacute;c tỉnh th&agrave;nh tr&ecirc;n khắp miền bắc<br />\r\nVui l&ograve;ng li&ecirc;n hệ tổng đ&agrave;i CSKH: <em><strong>024. 6262.7731</strong></em> để biết địa chỉ nh&agrave; thuốc gần nhất nơi bạn ở.<br />\r\nXin ch&acirc;n th&agrave;nh cảm ơn qu&yacute; kh&aacute;ch đ&atilde; tin d&ugrave;ng sản phẩm của <strong>DP GREEN-PHAR</strong>.</p>\r\n', 'pa4.jpg', '2017-07-10 22:07:22', '2017-12-03 17:12:52', 1, '', '', '', '', '', '', 'Hệ thống nhà thuốc', '', 'he-thong-nha-thuoc', 1),
(43, 'Hình thức giao hàng', '', '<p>Sau khi đặt h&agrave;ng th&agrave;nh c&ocirc;ng, Bộ phận Chăm s&oacute;c Kh&aacute;ch h&agrave;ng của DP GREEN- PHAR sẽ li&ecirc;n hệ với Qu&yacute; kh&aacute;ch để x&aacute;c nhận v&agrave; gửi email/sms về th&ocirc;ng tin đơn h&agrave;ng trong thời gian sớm nhất. Hiện tại DP GREEN-PHAR hợp t&aacute;c với ViettelPost - đơn vị chuyển ph&aacute;t h&agrave;ng đầu tại Việt Nam để thực hiện chuyển ph&aacute;t c&aacute;c sản phẩm tới Qu&yacute; kh&aacute;ch h&agrave;ng.<br />\r\nSau khi x&aacute;c nhận th&agrave;nh c&ocirc;ng, đơn h&agrave;ng sẽ được giao đến Qu&yacute; kh&aacute;ch trong khoảng thời gian sau đ&acirc;y: <strong>Tại Th&agrave;nh phố Hồ Ch&iacute; Minh v&agrave; H&agrave; Nội:</strong> Giao h&agrave;ng sau 1 - 4h l&agrave;m việc<br />\r\n<strong>C&aacute;c khu vực tỉnh, th&agrave;nh c&ograve;n lại:</strong> Giao h&agrave;ng sau 1 - 2 ng&agrave;y l&agrave;m việc<br />\r\n<em>*Lưu &yacute;: thời gian giao h&agrave;ng dự kiến ở tr&ecirc;n chỉ &aacute;p dụng cho c&aacute;c đơn h&agrave;ng trong nước.</em> Tất cả c&aacute;c đơn h&agrave;ng từ khắp cả nước sẽ được chia l&agrave;m 2 khu vực v&agrave; ph&iacute; vận chuyển &aacute;p dụng cho tất cả c&aacute;c đơn h&agrave;ng của Qu&yacute; kh&aacute;ch (trong đ&oacute;, DP GREEN-PHAR đ&atilde; hỗ trợ 50-70% chi ph&iacute; giao h&agrave;ng v&agrave; ph&iacute; thu tiền hộ):<br />\r\n<strong>Khu vực 1:</strong>&nbsp;Th&agrave;nh phố Hồ Ch&iacute; Minh v&agrave; H&agrave; Nội l&agrave; 10.000đ/đơn h&agrave;ng bất kỳ<br />\r\n<strong>Khu vực 2:</strong>&nbsp;C&aacute;c tỉnh, th&agrave;nh phố c&ograve;n lại tr&ecirc;n to&agrave;n quốc l&agrave; 20.000đ/đơn h&agrave;ng bất kỳ<br />\r\n<strong>FREE SHIP NẾU ĐƠN H&Agrave;NG TR&Ecirc;N 600.000 VNĐ.</strong></p>\r\n\r\n<p>Qu&yacute; kh&aacute;ch h&agrave;ng lưu &yacute; lu&ocirc;n lu&ocirc;n kiểm tra kĩ t&igrave;nh trạng sản phẩm sau khi nhận được ngay tại thời điểm nhận h&agrave;ng v&agrave; c&oacute; sự chứng kiến của nh&acirc;n vi&ecirc;n giao h&agrave;ng. C&aacute;c vấn đề như bể vỡ, vỏ hộp chai thuốc bị r&aacute;ch n&aacute;t hoặc seal đ&atilde; bị mở, &hellip; Tất cả những sự cố n&agrave;y sẽ chỉ được đổi trả nếu do lỗi từ ph&iacute;a nh&acirc;n vi&ecirc;n của DP GREEN-PHAR v&agrave; đơn vị vận chuyển ViettelPost.</p>\r\n\r\n<p>Trong qu&aacute; tr&igrave;nh giao h&agrave;ng c&oacute; thể ph&aacute;t sinh những vấn đề ngo&agrave;i &yacute; muốn về ph&iacute;a Kh&aacute;ch h&agrave;ng khiến việc giao h&agrave;ng bị chậm trễ. DP GREEN-PHAR sẽ linh động giải quyết cho Kh&aacute;ch h&agrave;ng trong từng trường hợp như sau:<br />\r\n- Kh&aacute;ch h&agrave;ng kh&ocirc;ng cung cấp ch&iacute;nh x&aacute;c v&agrave; đầy đủ địa chỉ giao h&agrave;ng v&agrave; số điện thoại li&ecirc;n lạc.<br />\r\n- Kh&aacute;ch h&agrave;ng kh&ocirc;ng sẵn s&agrave;ng để nhận h&agrave;ng v&agrave;o thời điểm giao h&agrave;ng.<br />\r\n- DP GREEN- PHAR đ&atilde; giao h&agrave;ng đ&uacute;ng hẹn theo th&ocirc;ng tin giao h&agrave;ng nhưng kh&ocirc;ng li&ecirc;n lạc được với Kh&aacute;ch h&agrave;ng v&agrave; chờ tại địa điểm giao h&agrave;ng qu&aacute; 15 ph&uacute;t, mọi nỗ lực của nh&acirc;n vi&ecirc;n giao h&agrave;ng nhằm li&ecirc;n hệ với Kh&aacute;ch h&agrave;ng đều kh&ocirc;ng th&agrave;nh c&ocirc;ng.<br />\r\n- Những trường hợp bất khả kh&aacute;ng như thi&ecirc;n tai, tai nạn giao th&ocirc;ng, gi&aacute;n đoạn mạng lưới giao th&ocirc;ng, đứt c&aacute;p, hệ thống bị tấn c&ocirc;ng.<br />\r\nC&aacute;c trường hợp kh&aacute;c: Trong trường hợp xảy ra sự cố phức tạp hơn, DP GREEN- PHAR bảo đảm quyền lợi lớn nhất thuộc về Kh&aacute;ch h&agrave;ng.</p>\r\n', 'pa3.jpg', '2017-07-10 22:07:41', '2017-12-03 17:12:42', 1, '', '', '', '', '', '', 'Hình thức giao hàng', '', 'hinh-thuc-giao-hang', 1),
(44, 'Hình thức thanh toán', '', '<h2>DP GREEN- PHAR hỗ trợ 4 phương thức thanh to&aacute;n cho tất cả c&aacute;c đơn h&agrave;ng tr&ecirc;n hệ thống.</h2>\r\n\r\n<p><strong>1. Thanh to&aacute;n khi nhận h&agrave;ng (COD): </strong>Qu&yacute; kh&aacute;ch sẽ thanh to&aacute;n tiền mặt cho nh&acirc;n vi&ecirc;n giao h&agrave;ng ngay sau khi nhận được h&agrave;ng.<br />\r\n<strong>2. Thanh to&aacute;n bằng Internet Banking:</strong> Thẻ/t&agrave;i khoản ATM của qu&yacute; kh&aacute;ch c&oacute; đăng k&iacute; sử dụng dịch vụ internet banking, DP GREEN- PHAR hiện hỗ trợ thanh to&aacute;n cho phần lớn c&aacute;c ng&acirc;n h&agrave;ng tại Việt Nam:<br />\r\n<img alt="" src="../image/pay.jpg" /> <strong>3. Thanh to&aacute;n bằng thẻ quốc tế Visa, Master Card:</strong>&nbsp;Ph&iacute; thanh to&aacute;n t&ugrave;y thuộc v&agrave;o từng loại thẻ qu&yacute; kh&aacute;ch d&ugrave;ng v&agrave; ng&acirc;n h&agrave;ng ph&aacute;t h&agrave;nh thẻ. Vui l&ograve;ng li&ecirc;n hệ với ng&acirc;n h&agrave;ng ph&aacute;t h&agrave;nh thẻ để biết r&otilde; ph&iacute; thanh to&aacute;n ph&aacute;t sinh.<br />\r\n<strong>4. Chuyển khoản trực tiếp tại ng&acirc;n h&agrave;ng:<br />\r\nCHỦ T&Agrave;I KHOẢN: CT CỔ PHẦN DP GREEN PHAR<br />\r\nSTK: 0691000342789<br />\r\nchi nh&aacute;nh h&agrave; t&acirc;y, Vietcombank.</strong><br />\r\n&quot;T&ecirc;n người mua h&agrave;ng, Tỉnh/th&agrave;nh phố&quot; chuyển tiền cho đơn h&agrave;ng ng&agrave;y ... th&aacute;ng ... năm ...<br />\r\n<em>Mọi thắc mắc v&agrave; g&oacute;p &yacute; vui l&ograve;ng li&ecirc;n hệ Hotline Chăm s&oacute;c kh&aacute;ch h&agrave;ng:&nbsp;<strong>(024) 6262.7731</strong></em></p>\r\n', 'pa2.jpg', '2017-07-10 22:07:55', '2017-12-03 17:12:31', 1, '', '', '', '', '', '', 'Hình thức thanh toán', '', 'hinh-thuc-thanh-toan', 1),
(45, 'Điều khoản sử dụng', '', '<h2>1. Giới thiệu</h2>\r\n\r\n<p>Ch&agrave;o mừng bạn đến với trang Thương mại điện tử DP GREEN-PHAR<br />\r\nGREENPHAR.COM l&agrave; trang Thương mại điện tử của C&ocirc;ng ty Cổ phần DP GREEN- PHAR - chuy&ecirc;n ph&acirc;n phối độc quyền c&aacute;c sản phẩm do Armephaco 120- x&iacute; nghiệp dược phẩm 120, qu&acirc;n đội, nghi&ecirc;n cứu v&agrave; sản xuất, được cấp giấy chứng nhận ĐKKD số 0106800687 do Sở Kế Hoạch v&agrave; Đầu Tư H&agrave; Nội cấp ng&agrave;y 25/4/2015<br />\r\nC&ocirc;ng ty CPDP GREEN- PHAR c&oacute; trụ sở ch&iacute;nh đặt tại 19, Ng&otilde; 4, Phố Văn La- H&agrave; Đ&ocirc;ng- H&agrave; Nội.<br />\r\nKhi bạn truy cập v&agrave;o website greenphar.com của ch&uacute;ng t&ocirc;i c&oacute; nghĩa l&agrave; bạn đồng &yacute; với c&aacute;c điều khoản n&agrave;y. Website c&oacute; quyền chỉnh sửa, thay đổi, th&ecirc;m hoặc lược bỏ bất kỳ phần n&agrave;o trong Điều khoản mua b&aacute;n h&agrave;ng h&oacute;a n&agrave;y v&agrave;o bất cứ l&uacute;c n&agrave;o. C&aacute;c thay đổi c&oacute; hiệu lực ngay khi được đăng tr&ecirc;n website m&agrave; kh&ocirc;ng cần th&ocirc;ng b&aacute;o trước. V&agrave; khi bạn tiếp tục sử dụng website, sau khi c&aacute;c thay đổi về Điều khoản n&agrave;y được đăng tải, c&oacute; nghĩa l&agrave; bạn chấp nhận với những thay đổi đ&oacute; của ch&uacute;ng t&ocirc;i.<br />\r\nV&igrave; vậy, bạn vui l&ograve;ng kiểm tra thường xuy&ecirc;n v&agrave; cập nhật những thay đổi trong Điều khoản mua b&aacute;n tr&ecirc;n website của ch&uacute;ng t&ocirc;i để đảm bảo quyền lợi của m&igrave;nh.</p>\r\n\r\n<h2>2. Hướng dẫn sử dụng website</h2>\r\n\r\n<p style="text-align:center"><img alt="" height="450" src="/image/images/Hydrangeas.jpg" width="600" /></p>\r\n\r\n<p>Khi truy cập v&agrave;o website của DP GREEN-PHAR, bạn phải đảm bảo đủ 18 tuổi, hoặc c&oacute; sự gi&aacute;m s&aacute;t của cha mẹ hay người gi&aacute;m hộ hợp ph&aacute;p. Vui l&ograve;ng đảm bảo bạn c&oacute; đầy đủ h&agrave;nh vi d&acirc;n sự để thực hiện c&aacute;c giao dịch mua b&aacute;n h&agrave;ng h&oacute;a theo quy định hiện h&agrave;nh của ph&aacute;p luật Việt Nam.<br />\r\nCh&uacute;ng t&ocirc;i sẽ cũng cấp cho bạn một t&agrave;i khoản (Account) sử dụng để bạn c&oacute; thể mua sắm tr&ecirc;n website greenphar.com trong khu&ocirc;n khổ Điều khoản v&agrave; Điều kiện sử dụng đ&atilde; đề ra.<br />\r\nBạn sẽ phải đăng k&yacute; t&agrave;i khoản với th&ocirc;ng tin c&aacute; nh&acirc;n x&aacute;c thực v&agrave; phải cập nhật nếu c&oacute; bất kỳ thay đổi n&agrave;o trong qu&aacute; tr&igrave;nh sử dụng. Mỗi c&aacute; nh&acirc;n khi truy cập v&agrave;o website của DP GREEN- PHAR phải c&oacute; tr&aacute;ch nhiệm với mật khẩu, t&agrave;i khoản v&agrave; hoạt động của m&igrave;nh tr&ecirc;n web. B&ecirc;n cạnh đ&oacute;, bạn phải th&ocirc;ng b&aacute;o ngay cho ch&uacute;ng t&ocirc;i biết khi t&agrave;i khoản bị truy cập tr&aacute;i ph&eacute;p. Đối với những thiệt hại hoặc mất m&aacute;t g&acirc;y ra do bạn kh&ocirc;ng tu&acirc;n thủ quy định v&agrave; c&aacute;c điều khoản mua b&aacute;n đ&atilde; cam kết ph&iacute;a DP GREEN-PHAR sẽ kh&ocirc;ng chịu bất kỳ tr&aacute;ch nhiệm n&agrave;o, d&ugrave; trực tiếp hay gi&aacute;n tiếp.</p>\r\n\r\n<p style="text-align:center"><img alt="" height="221" src="/image/images/Cataloge%20Rem-File%20OK%2003.jpg" width="600" /></p>\r\n\r\n<p><img alt="" height="900" src="/image/images/11___.png" width="900" /><br />\r\nNghi&ecirc;m cấm sử dụng bất kỳ phần n&agrave;o của website n&agrave;y dưới mọi h&igrave;nh thức với mục đ&iacute;ch thương mại hoặc nh&acirc;n danh bất kỳ đối t&aacute;c thứ ba n&agrave;o nếu kh&ocirc;ng được sự cho ph&eacute;p bằng văn bản từ ph&iacute;a DP GREEN- PHAR. Nếu vi phạm bất cứ điều n&agrave;o trong đ&acirc;y, ch&uacute;ng t&ocirc;i sẽ hủy t&agrave;i khoản của bạn m&agrave; kh&ocirc;ng cần b&aacute;o trước.<br />\r\nBạn sẽ nhận được email quảng c&aacute;o từ website GREENPHAR.COM của ch&uacute;ng t&ocirc;i trong suốt qu&aacute; tr&igrave;nh đăng k&iacute;. Nếu cảm thấy bị l&agrave;m phiền, bạn c&oacute; thể từ chối nhận email bằng c&aacute;ch nhấp v&agrave;o đường link ở dưới c&ugrave;ng trong mọi email quảng c&aacute;o.</p>\r\n\r\n<h2>3. &Yacute; kiến của kh&aacute;ch h&agrave;ng</h2>\r\n\r\n<p>Tất cả nội dung tr&ecirc;n website v&agrave; những &yacute; kiến, nhận x&eacute;t ph&ecirc; b&igrave;nh của qu&yacute; kh&aacute;ch h&agrave;ng đều l&agrave; t&agrave;i sản của DP GREEN-PHAR ch&uacute;ng t&ocirc;i. Nếu ph&aacute;t hiện bất kỳ th&ocirc;ng tin giả mạo n&agrave;o, ch&uacute;ng t&ocirc;i sẽ v&ocirc; hiệu h&oacute;a t&agrave;i khoản của bạn ngay lập tức hoặc &aacute;p dụng c&aacute;c biện ph&aacute;p kh&aacute;c theo quy định của ph&aacute;p luật Việt Nam.</p>\r\n\r\n<h2>4. Chấp nhận đơn h&agrave;ng v&agrave; gi&aacute; cả</h2>\r\n\r\n<p>Với bất kỳ l&yacute; do g&igrave; li&ecirc;n quan đến lỗi kỹ thuật, hệ thống một c&aacute;ch kh&aacute;ch quan v&agrave;o bất kỳ l&uacute;c n&agrave;o, ph&iacute;a DP GREEN-PHAR ch&uacute;ng t&ocirc;i c&oacute; quyền từ chối hoặc hủy đơn h&agrave;ng của qu&yacute; kh&aacute;ch.<br />\r\nTrong qu&aacute; tr&igrave;nh x&aacute;c nhận đơn h&agrave;ng, ch&uacute;ng t&ocirc;i c&oacute; thể hỏi th&ecirc;m về số điện thoại v&agrave; địa chỉ của bạn để thuận tiện cho giao dịch.<br />\r\nDP GREEN-PHAR cam kết sẽ cung cấp th&ocirc;ng tin gi&aacute; cả ch&iacute;nh x&aacute;c nhất cho người ti&ecirc;u d&ugrave;ng. Tuy nhi&ecirc;n, đ&ocirc;i l&uacute;c vẫn c&oacute; sai s&oacute;t xảy ra, v&iacute; dụ như trường hợp gi&aacute; sản phẩm kh&ocirc;ng hiển thị ch&iacute;nh x&aacute;c tr&ecirc;n website hoặc sai gi&aacute;, t&ugrave;y theo từng trường hợp ph&iacute;a DP GREEN-PHAR ch&uacute;ng t&ocirc;i sẽ li&ecirc;n hệ hướng dẫn hoặc th&ocirc;ng b&aacute;o hủy đơn h&agrave;ng đ&oacute; cho qu&yacute; kh&aacute;ch.<br />\r\nDP GREEN-PHAR cũng c&oacute; quyền từ chối hoặc hủy bỏ bất kỳ đơn h&agrave;ng n&agrave;o của qu&yacute; kh&aacute;ch d&ugrave; đơn h&agrave;ng đ&oacute; đ&atilde; hay chưa được x&aacute;c nhận hoặc đ&atilde; thanh to&aacute;n.</p>\r\n\r\n<h2>5. Thay đổi hoặc hủy bỏ giao dịch</h2>\r\n\r\n<p>Trong mọi trường hợp, kh&aacute;ch h&agrave;ng đều c&oacute; quyền chấm dứt giao dịch nếu đ&atilde; thực hiện c&aacute;c biện ph&aacute;p sau đ&acirc;y:<br />\r\nTh&ocirc;ng b&aacute;o cho bộ phận chăm s&oacute;c kh&aacute;ch h&agrave;ng của DP GREEN-PHAR về việc hủy giao dịch qua hotline (024) 6262. 7731</p>\r\n\r\n<h2>6. Giải quyết lỗi nhập sai th&ocirc;ng tin</h2>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng c&oacute; tr&aacute;ch nhiệm cung cấp th&ocirc;ng tin đầy đủ v&agrave; ch&iacute;nh x&aacute;c khi tham gia giao dịch tại website greenphar.com. Trong trường hợp kh&aacute;ch h&agrave;ng nhập sai th&ocirc;ng tin v&agrave; gửi v&agrave;o site thương mại điện tử greenphar.com, ch&uacute;ng t&ocirc;i c&oacute; quyền từ chối thực hiện giao dịch. Ngo&agrave;i ra, trong mọi trường hợp, kh&aacute;ch h&agrave;ng đều c&oacute; quyền đơn phương chấm dứt giao dịch nếu đ&atilde; thực hiện c&aacute;c biện ph&aacute;p sau đ&acirc;y: Li&ecirc;n hệ với bộ phậm CSKH của DP GREEN-PHAR qua hotline (024) 6262. 7731<br />\r\nTrả lại sản phẩm đ&atilde; nhận v&agrave; kh&ocirc;ng c&oacute; dấu hiệu khui mở hoặc đ&atilde; sử dụng.<br />\r\nTrong trường hợp sai th&ocirc;ng tin ph&aacute;t sinh từ ph&iacute;a DP GREEN-PHAR m&agrave; DP GREEN-PHAR c&oacute; thể chứng minh đ&oacute; l&agrave; lỗi của hệ thống, ch&uacute;ng t&ocirc;i sẽ chịu ho&agrave;n to&agrave;n tr&aacute;ch nhiệm v&agrave; đền b&ugrave; cho kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<h2>7. Quyền ph&aacute;p l&yacute;</h2>\r\n\r\n<p>C&aacute;c điều kiện, điều khoản v&agrave; nội dung của website n&agrave;y được điều chỉnh bởi luật ph&aacute;p Việt Nam. T&ograve;a &aacute;n c&oacute; thẩm quyền tại Việt Nam sẽ giải quyết bất kỳ tranh chấp n&agrave;o ph&aacute;t sinh từ việc sử dụng tr&aacute;i ph&eacute;p trang web n&agrave;y.</p>\r\n\r\n<h2>8. Quy định về bảo mật</h2>\r\n\r\n<p>Website GREENPHAR.COM của ch&uacute;ng t&ocirc;i xem trọng việc bảo mật th&ocirc;ng tin, sử dụng c&aacute;c biện ph&aacute;p tốt nhất để bảo mật th&ocirc;ng tin v&agrave; việc thanh to&aacute;n của qu&yacute; kh&aacute;ch. Trong qu&aacute; tr&igrave;nh thanh to&aacute;n, th&ocirc;ng tin của qu&yacute; kh&aacute;ch sẽ được m&atilde; h&oacute;a để đảm bảo an to&agrave;n. Bạn sẽ tho&aacute;t khỏi chế độ an to&agrave;n sau khi ho&agrave;n th&agrave;nh qu&aacute; tr&igrave;nh đặt h&agrave;ng.<br />\r\nQu&yacute; kh&aacute;ch kh&ocirc;ng được sử dụng bất kỳ chương tr&igrave;nh, c&ocirc;ng cụ hay h&igrave;nh thức n&agrave;o kh&aacute;c để can thiệp v&agrave;o hệ thống hay l&agrave;m thay đổi cấu tr&uacute;c dữ liệu. Website greenphar.com cũng nghi&ecirc;m cấm việc ph&aacute;t t&aacute;n, truyền b&aacute; hay cổ vũ cho bất kỳ hoạt động n&agrave;o nhằm can thiệp, ph&aacute; hoại hay x&acirc;m nhập v&agrave;o dữ liệu của hệ thống. C&aacute; nh&acirc;n hay tổ chức vi phạm sẽ bị tước bỏ mọi quyền lợi cũng như sẽ bị truy tố trước ph&aacute;p luật nếu cần thiết.<br />\r\nMọi th&ocirc;ng tin giao dịch sẽ được bảo mật ngoại trừ trong trường hợp cơ quan ph&aacute;p luật y&ecirc;u cầu.</p>\r\n\r\n<h2>9. C&aacute;c phương thức thanh to&aacute;n &aacute;p dụng tại GREENPHAR.COM</h2>\r\n\r\n<p>Qu&yacute; kh&aacute;ch c&oacute; thể tham khảo c&aacute;c phương thức thanh to&aacute;n sau đ&acirc;y v&agrave; lựa chọn &aacute;p dụng phương thức ph&ugrave; hợp:</p>\r\n\r\n<h3>C&aacute;ch 1: Thanh to&aacute;n trực tiếp (T&igrave;m đến chuỗi nh&agrave; thuốc b&aacute;n lẻ)</h3>\r\n\r\n<p>Bước 1: T&igrave;m hiểu th&ocirc;ng tin về sản phẩm<br />\r\nBước 2: Đến địa chỉ nh&agrave; thuốc b&aacute;n lẻ<br />\r\nBước 3: Người mua thanh to&aacute;n v&agrave; nhận h&agrave;ng</p>\r\n\r\n<h3>C&aacute;ch 2: Nhận h&agrave;ng thanh to&aacute;n tiền - COD</h3>\r\n\r\n<p>Bước 1: T&igrave;m hiểu th&ocirc;ng tin về sản phẩm<br />\r\nBước 2: X&aacute;c thực đơn h&agrave;ng (qua điện thoại, tin nhắn, email)<br />\r\nBước 3: Bộ phận CSKH của DP GREEN-PHAR sẽ li&ecirc;n hệ với qu&yacute; kh&aacute;ch để x&aacute;c nhận th&ocirc;ng tin v&agrave; đơn h&agrave;ng, đủ điều kiện đơn h&agrave;ng sẽ được chuyển qua cho bộ phận giao h&agrave;ng<br />\r\nBước 4: Giao h&agrave;ng<br />\r\nBước 5: Nhận h&agrave;ng v&agrave; thanh to&aacute;n</p>\r\n\r\n<h3>C&aacute;ch 3: Thanh to&aacute;n online qua thẻ t&iacute;n dụng, chuyển khoản</h3>\r\n\r\n<p>Bước 1: T&igrave;m hiểu th&ocirc;ng tin về sản phẩm<br />\r\nBước 2: X&aacute;c thực đơn h&agrave;ng (qua điện thoại, tin nhắn, email)<br />\r\nBước 3: Kh&aacute;ch h&agrave;ng thực hiện thanh to&aacute;n 100% gi&aacute; trị đơn h&agrave;ng (đơn h&agrave;ng thanh to&aacute;n th&agrave;nh c&ocirc;ng sẽ b&aacute;o qua điện thoại, tin nhắn, email)<br />\r\nBước 4: Bộ phận CSKH của DP GREEN-PHAR sẽ li&ecirc;n hệ với qu&yacute; kh&aacute;ch để x&aacute;c nhận th&ocirc;ng tin v&agrave; đơn h&agrave;ng, đủ điều kiện đơn h&agrave;ng sẽ được chuyển qua cho bộ phận giao h&agrave;ng<br />\r\nBước 5: Giao h&agrave;ng<br />\r\nBước 6: Kh&aacute;ch h&agrave;ng nhận h&agrave;ng.</p>\r\n\r\n<h2>10. Giải quyết tranh chấp</h2>\r\n\r\n<p>Bất kỳ tranh c&atilde;i, khiếu nại hoặc tranh chấp ph&aacute;t sinh từ hoặc li&ecirc;n quan đến giao dịch tại greenphar.com hoặc c&aacute;c Quy định v&agrave; Điều kiện n&agrave;y đều sẽ được giải quyết bằng h&igrave;nh thức thương lượng, h&ograve;a giải, trọng t&agrave;i v&agrave;/hoặc T&ograve;a &aacute;n theo Luật bảo vệ Người ti&ecirc;u d&ugrave;ng Chương 4 về Giải quyết tranh chấp giữa người ti&ecirc;u d&ugrave;ng v&agrave; tổ chức, c&aacute; nh&acirc;n kinh doanh h&agrave;ng h&oacute;a, dịch vụ.</p>\r\n\r\n<h2>11. Luật ph&aacute;p v&agrave; thẩm quyền tại L&atilde;nh thổ Việt Nam</h2>\r\n\r\n<p>Tất cả c&aacute;c Điều Khoản, Điều Kiện v&agrave; Hợp Đồng n&agrave;y (v&agrave; tất cả nghĩa vụ ph&aacute;t sinh ngo&agrave;i hợp đồng hoặc c&oacute; li&ecirc;n quan) sẽ bị chi phối v&agrave; được hiểu theo luật ph&aacute;p của Việt Nam. Nếu c&oacute; tranh chấp ph&aacute;t sinh bởi c&aacute;c Quy định Sử dụng n&agrave;y, qu&yacute; kh&aacute;ch h&agrave;ng c&oacute; quyền gửi khiếu nại/khiếu kiện l&ecirc;n T&ograve;a &aacute;n c&oacute; thẩm quyền tại Việt Nam để giải quyết.</p>\r\n', 'pa1.jpg', '2017-07-10 22:07:51', '2017-12-03 17:12:21', 1, '', '', '', '', '', '', 'Điều khoản sử dụng', '', 'dieu-khoan-su-dung', 1),
(46, 'page test 1', '', '', '', '2017-12-08 14:12:11', NULL, 1, '', '', '', '', '', '', 'page test 1', '', 'page-test-1', 1),
(47, 'page test 2', '', '', '', '2017-12-08 14:12:24', NULL, 1, '', '', '', '', '', '', 'page test 2', '', 'page-test-2', 1),
(48, 'page test 3', '', '', '', '2017-12-08 14:12:34', NULL, 1, '', '', '', '', '', '', 'page test 3', '', 'page-test-3', 1),
(49, 'page test 4', '', '', '', '2017-12-08 14:12:56', NULL, 1, '', '', '', '', '', '', 'page test 4', '', 'page-test-4', 1),
(50, 'page test 5', '', '', '', '2017-12-08 14:12:09', NULL, 1, '', '', '', '', '', '', 'page test 5', '', 'page-test-5', 1),
(51, 'page test 6', '', '', '', '2017-12-08 14:12:24', NULL, 1, '', '', '', '', '', '', 'page test 6', '', 'page-test-6', 1),
(52, 'page test 7', '', '', '', '2017-12-08 14:12:35', NULL, 1, '', '', '', '', '', '', 'page test 7', '', 'page-test-7', 1),
(53, 'page test 8', '', '', '', '2017-12-08 14:12:46', NULL, 1, '', '', '', '', '', '', 'page test 8', '', 'page-test-8', 1),
(54, 'page test 9', '', '', '', '2017-12-08 14:12:56', NULL, 1, '', '', '', '', '', '', 'page test 9', '', 'page-test-9', 1),
(55, 'page test 10', '', '', '', '2017-12-08 14:12:06', NULL, 1, '', '', '', '', '', '', 'page test 10', '', 'page-test-10', 1),
(56, 'page test 11', '', '', '', '2017-12-08 14:12:15', NULL, 1, '', '', '', '', '', '', 'page test 11', '', 'page-test-11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `page_languages`
--

CREATE TABLE IF NOT EXISTS `page_languages` (
  `id` bigint(20) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_name` text COLLATE utf8_unicode_ci,
  `lang_page_des` text COLLATE utf8_unicode_ci,
  `lang_page_content` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `page_languages`
--

INSERT INTO `page_languages` (`id`, `page_id`, `languages_code`, `lang_page_name`, `lang_page_des`, `lang_page_content`, `lang_page_sub_info1`, `lang_page_sub_info2`, `lang_page_sub_info3`, `lang_page_sub_info4`, `lang_page_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `keyword`, `des_seo`) VALUES
(35, 35, 'vn', 'Giới thiệu', 'Lĩnh vực hoạt động: Marketing Online toàn diện - quảng cáo, seo, thiết kế website, email marketing, thiết kế đồ họa, quản trị mạng xã hội, quản trị website,…..', '<p><img alt="" src="../image/slide1.jpg" /></p>\r\n\r\n<p>C&ocirc;ng ty cổ phần DP GREEN- PHAR được th&agrave;nh lập bởi Dược sĩ Đai học Dược H&agrave; Nội Trần Kh&aacute;nh H&ograve;a từ 2015. Trải qua qu&aacute; tr&igrave;nh nghi&ecirc;n cứu &amp; tư vấn điều trị bệnh ngo&agrave;i c&ocirc;ng đồng, DP GREEN- PHAR được th&agrave;nh lập với mục ti&ecirc;u:</p>\r\n\r\n<p>DP GREEN-PHAR trung t&acirc;m tư vấn &amp; t&igrave;m giải ph&aacute;p xử l&yacute; c&aacute;c bệnh ngo&agrave;i cộng đồng.<br />\r\nƯu ti&ecirc;n giải quyết c&aacute;c vấn đề về sức khỏe cho qu&yacute; kh&aacute;ch h&agrave;ng l&agrave; số 1.<br />\r\nKết hợp với đội ngũ Dược Sĩ của nh&agrave; m&aacute;y Armephaco 12- x&iacute; nghiệp dược phẩm 120- Qu&acirc;n đội, nghi&ecirc;n cứu đưa ra những sản phẩm, giải ph&aacute;p chất lượng cao: HIỆU QUẢ- AN TO&Agrave;N với người sử dụng.</p>\r\n\r\n<h2>Th&ocirc;ng tin c&ocirc;ng ty:</h2>\r\n\r\n<p><strong>C&Ocirc;NG TY CỔ PHẦN DP GREEN-PHAR</strong><br />\r\nĐược cấp giấy chứng nhận ĐKKD số 0106800687 do Sở Kế Hoạch v&agrave; Đầu Tư H&agrave; Nội cấp ng&agrave;y 25/04/2015, c&oacute; trụ sở ch&iacute;nh đặt tại số 19, ng&otilde; 4, phố Văn La, H&agrave; Đ&ocirc;ng, H&agrave; Nội</p>\r\n\r\n<h2>C&aacute;c lĩnh vực hoạt động</h2>\r\n\r\n<p>Tư vấn &amp; t&igrave;m giải ph&aacute;p cho c&aacute;c bệnh tại c&ocirc;ng đồng<br />\r\nTham gia nghi&ecirc;n cứu c&ugrave;ng Armephaco 120, t&igrave;m ra c&aacute;c sản phẩm c&oacute; hiệu quả cao, an to&agrave;n với người sử dụng.<br />\r\nTrồng &amp; ph&aacute;t triển v&ugrave;ng dược liệu</p>\r\n\r\n<h2>Sau hơn 2 năm nghi&ecirc;n cứu &amp; s&agrave;ng lọc DP GREEN- PHAR đ&atilde; c&oacute; giải ph&aacute;p cho c&aacute;c vấn đề:</h2>\r\n\r\n<p>Bệnh trĩ, đi cầu ra m&aacute;u, bệnh trĩ sau sinh, Suy gi&atilde;n tĩnh mạch.<br />\r\nTiền đ&igrave;nh, đau đầu, ch&oacute;ng mặt, ngủ kh&ocirc;ng ngon.<br />\r\nBệnh đại tr&agrave;ng cấp, m&atilde;n &amp; đại tr&agrave;ng co thắt.<br />\r\nBệnh vi&ecirc;m gan, tăng men gan do rượu. chức năng gan suy giảm do thuốc, h&oacute;a chất...<br />\r\nC&aacute;c sản phẩm bổ sung yếu tố vi lượng: Ca++, Mg ++, Spirulina, men vi sinh...<br />\r\nĐến với DP GREEN- PHAR qu&yacute; kh&aacute;ch h&agrave;ng sẽ được đội ngũ B&aacute;c sĩ, Dược sĩ Đại học Dược H&agrave; Nội tư vấn &amp; t&igrave;m giải ph&aacute;p cho vấn đề sức khỏe của qu&yacute; kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<h2>Đội ngũ bao gồm:</h2>\r\n\r\n<p>B&aacute;c Sĩ, Thạc Sĩ: Nguyễn Văn Quyết.<br />\r\nDược sĩ Đại Học Dược H&agrave; Nội: Trần Kh&aacute;nh H&ograve;a.<br />\r\nDược sĩ Đại Học Dược H&agrave; Nội: Đo&agrave;n Xu&acirc;n Phan.<br />\r\nDược sĩ Đại Học Dược H&agrave; Nội: L&ecirc; Thị Đĩnh.<br />\r\nDược sĩ Đại Học Dược H&agrave; Nội: L&ecirc; Quang H&ograve;a.<br />\r\nC&aacute;c dược sĩ kh&aacute;c: Nguyễn th&igrave; Dơn, L&ecirc; Thị Gi&aacute;ng Hương, L&ecirc; Thị Th&uacute;y, Nguyễn Thị Nh&agrave;n.<br />\r\nVới mục ti&ecirc;u ưu ti&ecirc;n giải quyết c&aacute;c vấn đề về sức khỏe cho qu&yacute; kh&aacute;ch l&agrave; số 1, DP GREEN-PHAR đ&atilde; v&agrave; đang l&agrave;m tốt. Ch&uacute;ng t&ocirc;i cam kết lu&ocirc;n lu&ocirc;n cố gắng nghi&ecirc;n cứu, ho&agrave;n thiện ch&iacute;nh m&igrave;nh để đem lại những sản phẩm, dịch vụ v&agrave; giải ph&aacute;p tốt nhất cho qu&yacute; kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<h2>C&aacute;c chứng chỉ c&ocirc;ng ty đ&atilde; đạt được do bộ y tế cấp.</h2>\r\n\r\n<p>Nh&agrave; m&aacute;y Armepharco 120: GMP- WHO ( Thực h&agrave;nh sản xuất tốt).<br />\r\nDP GREEN- PHAR: GSP- WHO ( Thực h&agrave;nh bảo quản tốt).<br />\r\nDP GREEN &ndash; PHAR: GDP &ndash; WHO ( Thực h&agrave;nh ph&acirc;n phối tốt.<br />\r\nCảm ơn qu&yacute; kh&aacute;ch đ&atilde; tin d&ugrave;ng dịch vụ của ch&uacute;ng t&ocirc;i, DP GREEN- PHAR cam kết sẽ lu&ocirc;n đưa ra c&aacute;c sản phẩm, dịch vụ v&agrave; giải ph&aacute;p hiệu quả, an to&agrave;n cho qu&yacute; kh&aacute;ch.</p>\r\n', '', '', '', '', '', 0, 'gioi-thieu', 'Giới thiệu', 'Goldbridge Việt Nam', 'Lĩnh vực hoạt động: Marketing Online toàn diện - quảng cáo, seo, thiết kế website, email marketing, thiết kế đồ họa, quản trị mạng xã hội, quản trị website,…..'),
(36, 35, 'en', 'Giới thiệu', 'Giới thiệu công ty. Được thành lập vào năm 1993, Công ty Cổ Phần Kỹ Thuật Toàn Thắng được biết đến như một nhà cung cấp chuyên nghiệp các giải pháp ...', '<p>Được th&agrave;nh lập v&agrave;o năm 1993, C&ocirc;ng ty Cổ Phần Kỹ Thuật To&agrave;n Thắng được biết đến như một&nbsp; nh&agrave; cung cấp chuy&ecirc;n nghiệp c&aacute;c giải ph&aacute;p thiết bị v&agrave; dịch vụ kỹ thuật chất lượng cao, c&ocirc;ng nghệ ti&ecirc;n tiến&nbsp;cho kh&aacute;ch h&agrave;ng ng&agrave;nh dầu kh&iacute;, điện lực v&agrave; một số ng&agrave;nh c&ocirc;ng nghiệp nặng kh&aacute;c.</p>\r\n\r\n<p>C&ocirc;ng ty c&oacute; văn ph&ograve;ng ch&iacute;nh tại TP. Hồ Ch&iacute; Minh v&agrave; một c&ocirc;ng ty con tại TP. Vũng T&agrave;u. Với đội ngũ chuy&ecirc;n gia, kỹ sư được đ&agrave;o tạo chuy&ecirc;n s&acirc;u, chuy&ecirc;n tr&aacute;ch từng mảng sản phẩm, ch&uacute;ng t&ocirc;i lu&ocirc;n đem đến cho kh&aacute;ch h&agrave;ng những giải ph&aacute;p kỹ thuật, thương mại đa dạng, đ&aacute;p ứng tốt nhu cầu ng&agrave;y c&agrave;ng cao của kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p><img alt="" src="/image/images/670px-conceptualmapfloss(1).png" style="float:right; height:564px; width:670px" /></p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i cũng đảm nhận cung cấp c&aacute;c dịch vụ sau b&aacute;n h&agrave;ng như: Bảo tr&igrave;, đại tu, sửa chữa, đ&agrave;o tạo, hướng dẫn sử dụng, dịch vụ quản l&yacute; t&agrave;i sản &amp; hợp đồng v&agrave; c&aacute;c dịch vụ kh&aacute;c tại c&ocirc;ng trường cho kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 0, 'gioi-thieu', 'Giới thiệu', '', 'Mô tả cho bài viết giới thiệu'),
(37, 36, 'vn', 'Báo giá', 'Bảng giá dịch thuật công chứng Giá tốt, chất lượng cao, dịch ngay\r\nHơn 8000 CTV Dịch thuật · Hơn 10 năm kinh nghiệm · 100% khách hàng hài lòng', '<h2><strong>PHƯƠNG THỨC GIAO DỊCH ĐỐI VỚI B&Aacute;O GI&Aacute; DỊCH THUẬT</strong></h2>\r\n\r\n<p>1. Ch&uacute;ng t&ocirc;i sẽ giao nhận t&agrave;i liệu tận nơi với những đơn đặt h&agrave;ng tr&ecirc;n 50 trang t&agrave;i liệu.<br />\r\n2. Để tiến h&agrave;nh c&ocirc;ng t&aacute;c dịch thuật v&agrave; phi&ecirc;n dịch Hợp đồng Qu&yacute; kh&aacute;ch cần đặt trước 30% gi&aacute; trị hợp đồng.<br />\r\n3. Nếu qu&yacute; kh&aacute;ch l&agrave; c&ocirc;ng ty c&oacute; nhu cầu dịch thuật dưới 10 trang, Qu&yacute; kh&aacute;ch chỉ cần fax x&aacute;c nhận y&ecirc;u cầu c&oacute; đầy đủ th&ocirc;ng tin li&ecirc;n quan k&egrave;m con dấu, ch&uacute;ng t&ocirc;i sẽ tiến h&agrave;nh thực hiện y&ecirc;u cầu dịch m&agrave; kh&ocirc;ng cần tiền đặt cọc hợp đồng.<br />\r\n4. Đối với kh&aacute;ch h&agrave;ng thường xuy&ecirc;n dịch tại C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i sẽ giao nhận tận nơi miễn ph&iacute;.</p>\r\n\r\n<p><strong>Phần ưu ti&ecirc;n kh&aacute;ch h&agrave;ng dịch với số lượng lớn</strong><br />\r\n1. Giảm 5% với số lượng từ 100 &ndash; 500 trang<br />\r\n2. Giảm 10% với số lượng từ 500 &ndash; 1000 trang<br />\r\n3. Giảm 15% với số lượng 1000 trang trở l&ecirc;n</p>\r\n\r\n<p><strong>Lưu &yacute; quan trọng:</strong></p>\r\n\r\n<ul>\r\n	<li>Gi&aacute; dịch chưa bao gồm VAT (10%).</li>\r\n	<li>Mức gi&aacute; tr&ecirc;n kh&ocirc;ng &aacute;p dụng đối với Kh&aacute;ch h&agrave;ng dịch chuy&ecirc;n ng&agrave;nh, dịch gấp, c&ocirc;ng chứng gấp.</li>\r\n	<li>Văn bản hiệu đ&iacute;nh: Hiệu đ&iacute;nh = 50% tiền dịch. Nếu t&agrave;i liệu hiệu đ&iacute;nh sai tr&ecirc;n 30% th&igrave; bản hiệu đ&iacute;nh đ&oacute; được t&iacute;nh bằng tiền dịch.</li>\r\n	<li>Số lượng từ tr&ecirc;n một trang được quy định dưới 300 từ (D&ugrave;ng hệ thống đếm từ tự động Word Count), trường hợp t&agrave;i liệu của qu&yacute; kh&aacute;ch l&agrave; bản cứng kh&ocirc;ng thể đếm từ được sẽ t&iacute;nh x&aacute;c xuất hoặc t&iacute;nh theo bản dịch l&uacute;c n&agrave;y số lượng từ tr&ecirc;n trang sản phẩm c&oacute; thể quy định lại, th&ocirc;ng thường sẽ giao động 10-20%.</li>\r\n	<li>Gi&aacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y sang tiếng nước ngo&agrave;i kh&aacute;c sẽ bằng chi ph&iacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y ra tiếng Việt cộng với từ tiếng Việt sang tiếng nước ngo&agrave;i thứ hai hoặc sẽ t&iacute;nh ph&iacute; dịch trực tiếp nếu c&oacute; y&ecirc;u cầu người bản địa dịch thuật lại</li>\r\n	<li>Nếu qu&yacute; kh&aacute;ch y&ecirc;u cầu dịch gấp, dịch v&agrave;o ng&agrave;y nghỉ, ng&agrave;y lễ gi&aacute; dịch sẽ tăng 25 %, th&ocirc;ng thường đơn đặt h&agrave;ng tr&ecirc;n 20 trang lấy trong ng&agrave;y được coi l&agrave; gấp. Nếu l&agrave; kh&aacute;ch h&agrave;ng thường xuy&ecirc;n của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; qu&yacute; kh&aacute;ch sẽ được miễn ph&iacute; dịch vụ cộng th&ecirc;m n&agrave;y.</li>\r\n	<li>Đối với t&agrave;i liệu chuy&ecirc;n ng&agrave;nh như: Hợp đồng kinh tế, kỹ thuật, thương mại, t&agrave;i ch&iacute;nh,y học, dược phẩm... th&igrave; ngo&agrave;i tiền dịch + 30% tiền dịch chuy&ecirc;n ng&agrave;nh.</li>\r\n</ul>\r\n\r\n<h3>BẢNG GI&Aacute; DỊCH THUẬT N&Agrave;Y C&Oacute; THỂ THAY ĐỔI PHỤ THUỘC V&Agrave;O NHU CẦU THỰC TẾ CỦA DỰ &Aacute;N, HỢP ĐỒNG V&Agrave; SỰ THỎA THUẬN GIỮA HAI B&Ecirc;N !</h3>\r\n\r\n<p>Chuyển ngữ v&agrave; địa phương h&oacute;a t&agrave;i liệu rất quan trọng n&oacute; c&oacute; ảnh hưởng rất lớn đến c&ocirc;ng việc v&agrave; quyết định trong dự &aacute;n của bạn. Qu&yacute; kh&aacute;ch đang t&igrave;m một đơn vị&nbsp;<a href="https://www.dichthuatchaua.com/bien-phien-dich/dich-thuat/dich-thuat-cong-chung.html" title="Dịch thuật công chứng">Dịch Thuật</a>&nbsp;chuy&ecirc;n nghiệp v&agrave; gi&agrave;u kinh nghiệm trong việc Địa phương h&oacute;a t&agrave;i liệu, đảm bảo thời gian ch&iacute;nh x&aacute;c v&agrave; chất lượng tuyệt đối, chi ph&iacute; hợp l&yacute; nhất. H&atilde;y li&ecirc;n hệ ngay với&nbsp;<a href="https://www.dichthuatchaua.com/gioi-thieu-cong-ty-dich-thuat.html" title="Công ty dịch thuật chuyên nghiệp">C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;</a>&nbsp;để được nhưng chuy&ecirc;n gia tư vấn chuy&ecirc;n nghiệp, gi&agrave;u kinh nghiệm gi&uacute;p Qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p><img alt="" height="800" src="/image/images/55e7557453f13-sierra-fig2.jpg" width="1600" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dự &aacute;n, Hợp đồng của Qu&yacute; kh&aacute;ch h&agrave;ng rất quan trọng, Qu&yacute; kh&aacute;ch h&agrave;ng đang muốn t&igrave;m một đơn vị Dịch thuật c&oacute; thể đảm bảo về thời gian, chất lượng v&agrave; cung cấp gi&aacute; cả tốt nhất, h&atilde;y li&ecirc;n lạc với số Hotline: 0932232318 (H&agrave; Nội) hoặc 0932237939 (TP HCM) của Dich thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; sẽ l&agrave;m Qu&yacute; kh&aacute;ch h&agrave;i l&ograve;ng.</p>\r\n\r\n<p>Cảm ơn Qu&yacute; kh&aacute;ch đ&atilde; ngh&eacute; thăm website của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i lu&ocirc;n cam kết đưa ra mức gi&aacute; cạnh tranh v&agrave; chất lương v&agrave; bảo mật bảo đảm tuyệt đối.</p>\r\n', '', '', '', '', '', 0, 'bao-gia', 'Báo giá', 'báo giá dịch vụ', '"Làm kế toán phải có Tâm với Doanh nghiệp. Đang Tư vấn Miễn Phí. Tìm hiểu ngay!\r\nBảo hành trọn đời · Bảo vệ Doanh Nghiệp"'),
(38, 36, 'en', 'Báo giá', 'Bảng giá dịch thuật công chứng Giá tốt, chất lượng cao, dịch ngay\r\nHơn 8000 CTV Dịch thuật · Hơn 10 năm kinh nghiệm · 100% khách hàng hài lòng', '<h2><strong>PHƯƠNG THỨC GIAO DỊCH ĐỐI VỚI B&Aacute;O GI&Aacute; DỊCH THUẬT</strong></h2>\r\n\r\n<p>1. Ch&uacute;ng t&ocirc;i sẽ giao nhận t&agrave;i liệu tận nơi với những đơn đặt h&agrave;ng tr&ecirc;n 50 trang t&agrave;i liệu.<br />\r\n2. Để tiến h&agrave;nh c&ocirc;ng t&aacute;c dịch thuật v&agrave; phi&ecirc;n dịch Hợp đồng Qu&yacute; kh&aacute;ch cần đặt trước 30% gi&aacute; trị hợp đồng.<br />\r\n3. Nếu qu&yacute; kh&aacute;ch l&agrave; c&ocirc;ng ty c&oacute; nhu cầu dịch thuật dưới 10 trang, Qu&yacute; kh&aacute;ch chỉ cần fax x&aacute;c nhận y&ecirc;u cầu c&oacute; đầy đủ th&ocirc;ng tin li&ecirc;n quan k&egrave;m con dấu, ch&uacute;ng t&ocirc;i sẽ tiến h&agrave;nh thực hiện y&ecirc;u cầu dịch m&agrave; kh&ocirc;ng cần tiền đặt cọc hợp đồng.<br />\r\n4. Đối với kh&aacute;ch h&agrave;ng thường xuy&ecirc;n dịch tại C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i sẽ giao nhận tận nơi miễn ph&iacute;.</p>\r\n\r\n<p><strong>Phần ưu ti&ecirc;n kh&aacute;ch h&agrave;ng dịch với số lượng lớn</strong><br />\r\n1. Giảm 5% với số lượng từ 100 &ndash; 500 trang<br />\r\n2. Giảm 10% với số lượng từ 500 &ndash; 1000 trang<br />\r\n3. Giảm 15% với số lượng 1000 trang trở l&ecirc;n</p>\r\n\r\n<p><strong>Lưu &yacute; quan trọng:</strong></p>\r\n\r\n<ul>\r\n	<li>Gi&aacute; dịch chưa bao gồm VAT (10%).</li>\r\n	<li>Mức gi&aacute; tr&ecirc;n kh&ocirc;ng &aacute;p dụng đối với Kh&aacute;ch h&agrave;ng dịch chuy&ecirc;n ng&agrave;nh, dịch gấp, c&ocirc;ng chứng gấp.</li>\r\n	<li>Văn bản hiệu đ&iacute;nh: Hiệu đ&iacute;nh = 50% tiền dịch. Nếu t&agrave;i liệu hiệu đ&iacute;nh sai tr&ecirc;n 30% th&igrave; bản hiệu đ&iacute;nh đ&oacute; được t&iacute;nh bằng tiền dịch.</li>\r\n	<li>Số lượng từ tr&ecirc;n một trang được quy định dưới 300 từ (D&ugrave;ng hệ thống đếm từ tự động Word Count), trường hợp t&agrave;i liệu của qu&yacute; kh&aacute;ch l&agrave; bản cứng kh&ocirc;ng thể đếm từ được sẽ t&iacute;nh x&aacute;c xuất hoặc t&iacute;nh theo bản dịch l&uacute;c n&agrave;y số lượng từ tr&ecirc;n trang sản phẩm c&oacute; thể quy định lại, th&ocirc;ng thường sẽ giao động 10-20%.</li>\r\n	<li>Gi&aacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y sang tiếng nước ngo&agrave;i kh&aacute;c sẽ bằng chi ph&iacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y ra tiếng Việt cộng với từ tiếng Việt sang tiếng nước ngo&agrave;i thứ hai hoặc sẽ t&iacute;nh ph&iacute; dịch trực tiếp nếu c&oacute; y&ecirc;u cầu người bản địa dịch thuật lại</li>\r\n	<li>Nếu qu&yacute; kh&aacute;ch y&ecirc;u cầu dịch gấp, dịch v&agrave;o ng&agrave;y nghỉ, ng&agrave;y lễ gi&aacute; dịch sẽ tăng 25 %, th&ocirc;ng thường đơn đặt h&agrave;ng tr&ecirc;n 20 trang lấy trong ng&agrave;y được coi l&agrave; gấp. Nếu l&agrave; kh&aacute;ch h&agrave;ng thường xuy&ecirc;n của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; qu&yacute; kh&aacute;ch sẽ được miễn ph&iacute; dịch vụ cộng th&ecirc;m n&agrave;y.</li>\r\n	<li>Đối với t&agrave;i liệu chuy&ecirc;n ng&agrave;nh như: Hợp đồng kinh tế, kỹ thuật, thương mại, t&agrave;i ch&iacute;nh,y học, dược phẩm... th&igrave; ngo&agrave;i tiền dịch + 30% tiền dịch chuy&ecirc;n ng&agrave;nh.</li>\r\n</ul>\r\n\r\n<h3>BẢNG GI&Aacute; DỊCH THUẬT N&Agrave;Y C&Oacute; THỂ THAY ĐỔI PHỤ THUỘC V&Agrave;O NHU CẦU THỰC TẾ CỦA DỰ &Aacute;N, HỢP ĐỒNG V&Agrave; SỰ THỎA THUẬN GIỮA HAI B&Ecirc;N !</h3>\r\n\r\n<p>Chuyển ngữ v&agrave; địa phương h&oacute;a t&agrave;i liệu rất quan trọng n&oacute; c&oacute; ảnh hưởng rất lớn đến c&ocirc;ng việc v&agrave; quyết định trong dự &aacute;n của bạn. Qu&yacute; kh&aacute;ch đang t&igrave;m một đơn vị&nbsp;<a href="https://www.dichthuatchaua.com/bien-phien-dich/dich-thuat/dich-thuat-cong-chung.html" title="Dịch thuật công chứng">Dịch Thuật</a>&nbsp;chuy&ecirc;n nghiệp v&agrave; gi&agrave;u kinh nghiệm trong việc Địa phương h&oacute;a t&agrave;i liệu, đảm bảo thời gian ch&iacute;nh x&aacute;c v&agrave; chất lượng tuyệt đối, chi ph&iacute; hợp l&yacute; nhất. H&atilde;y li&ecirc;n hệ ngay với&nbsp;<a href="https://www.dichthuatchaua.com/gioi-thieu-cong-ty-dich-thuat.html" title="Công ty dịch thuật chuyên nghiệp">C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;</a>&nbsp;để được nhưng chuy&ecirc;n gia tư vấn chuy&ecirc;n nghiệp, gi&agrave;u kinh nghiệm gi&uacute;p Qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p><img alt="" src="/image/images/55e7557453f13-sierra-fig2.jpg" style="height:800px; width:1600px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dự &aacute;n, Hợp đồng của Qu&yacute; kh&aacute;ch h&agrave;ng rất quan trọng, Qu&yacute; kh&aacute;ch h&agrave;ng đang muốn t&igrave;m một đơn vị Dịch thuật c&oacute; thể đảm bảo về thời gian, chất lượng v&agrave; cung cấp gi&aacute; cả tốt nhất, h&atilde;y li&ecirc;n lạc với số Hotline: 0932232318 (H&agrave; Nội) hoặc 0932237939 (TP HCM) của Dich thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; sẽ l&agrave;m Qu&yacute; kh&aacute;ch h&agrave;i l&ograve;ng.</p>\r\n\r\n<p>Cảm ơn Qu&yacute; kh&aacute;ch đ&atilde; ngh&eacute; thăm website của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i lu&ocirc;n cam kết đưa ra mức gi&aacute; cạnh tranh v&agrave; chất lương v&agrave; bảo mật bảo đảm tuyệt đối.</p>\r\n', '', '', '', '', '', 0, 'bao-gia', 'Báo giá', '', 'thẻ mô tả của bài viết báo giá'),
(39, 37, 'vn', 'Tuyển Cộng Tác Viên', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!', '<p>1. Nội dung c&ocirc;ng việc :<br />\r\n<br />\r\n. Triển khai c&aacute;c bản vẽ nội thất để sản xuất : tủ, giường, b&agrave;n, ghế.... bằng phần mềm autocad<br />\r\n<br />\r\n. Hỗ trợ kiểm tra đối chiếu bản vẽ với b&ecirc;n sản xuất hoặc tại c&ocirc;ng tr&igrave;nh<br />\r\n<br />\r\n2. Y&ecirc;u cầu :<br />\r\n<br />\r\n. Nam/ nữ c&oacute; kinh nghiệm tối thiểu 1 năm về họa vi&ecirc;n autocad cho c&aacute;c xưởng sản xuất nội thất<br />\r\n<br />\r\n. C&oacute; hiểu biết về kết cấu , kỹ thuật sản phẩm, thao t&aacute;c nhanh tr&ecirc;n phần mềm Autocad<br />\r\n<br />\r\n. C&oacute; phương tiện đi lại<br />\r\n<br />\r\n. C&oacute; thể đi c&ocirc;ng t&aacute;c ngắn hạn.<br />\r\n<br />\r\n. C&oacute; thể tăng ca theo y&ecirc;u cầu<br />\r\n<br />\r\n3. Chế độ :<br />\r\n<br />\r\n. Lương : 6.000.000 VND / th&aacute;ng hoặc thỏa thuận<br />\r\n<br />\r\n. L&agrave;m việc tại showroom 233B B&ugrave;i Thị Xu&acirc;n T&acirc;n B&igrave;nh HCM<br />\r\n<br />\r\n. Lương th&aacute;ng 13. ph&eacute;p năm, thưởng chuy&ecirc;n cần. thưởng lễ tết<br />\r\n<br />\r\n4. Th&ocirc;ng tin kh&aacute;c:<br />\r\n<br />\r\n. Nộp hồ sơ trực tiếp hoặc trực tuyến<br />\r\n<br />\r\n. Hồ sơ c&oacute; c&aacute;c bản vẽ đ&atilde; từng thực hiện<br />\r\n<br />\r\n. Tham khảo th&ecirc;m th&ocirc;ng tin c&ocirc;ng ty tại : www.zenhomes.vn<br />\r\n<br />\r\nLoại h&igrave;nh c&ocirc;ng việc: To&agrave;n thời gian<br />\r\n<br />\r\nLương: ₫6.000.000 /th&aacute;ng<br />\r\n<br />\r\nKinh nghiệm y&ecirc;u cầu:<br />\r\n<br />\r\nkhai triển autocad nội thất: 1 năm</p>\r\n', '', '', '', '', '', 0, 'tuyen-cong-tac-vien', 'Tuyển Cộng Tác Viên ', 'tuyên cộng tác viên', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!'),
(40, 37, 'en', 'Tuyển Cộng Tác Viên ', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!', '<p>1. Nội dung c&ocirc;ng việc :<br />\r\n<br />\r\n. Triển khai c&aacute;c bản vẽ nội thất để sản xuất : tủ, giường, b&agrave;n, ghế.... bằng phần mềm autocad<br />\r\n<br />\r\n. Hỗ trợ kiểm tra đối chiếu bản vẽ với b&ecirc;n sản xuất hoặc tại c&ocirc;ng tr&igrave;nh<br />\r\n<br />\r\n2. Y&ecirc;u cầu :<br />\r\n<br />\r\n. Nam/ nữ c&oacute; kinh nghiệm tối thiểu 1 năm về họa vi&ecirc;n autocad cho c&aacute;c xưởng sản xuất nội thất<br />\r\n<br />\r\n. C&oacute; hiểu biết về kết cấu , kỹ thuật sản phẩm, thao t&aacute;c nhanh tr&ecirc;n phần mềm Autocad<br />\r\n<br />\r\n. C&oacute; phương tiện đi lại<br />\r\n<br />\r\n. C&oacute; thể đi c&ocirc;ng t&aacute;c ngắn hạn.<br />\r\n<br />\r\n. C&oacute; thể tăng ca theo y&ecirc;u cầu<br />\r\n<br />\r\n3. Chế độ :<br />\r\n<br />\r\n. Lương : 6.000.000 VND / th&aacute;ng hoặc thỏa thuận<br />\r\n<br />\r\n. L&agrave;m việc tại showroom 233B B&ugrave;i Thị Xu&acirc;n T&acirc;n B&igrave;nh HCM<br />\r\n<br />\r\n. Lương th&aacute;ng 13. ph&eacute;p năm, thưởng chuy&ecirc;n cần. thưởng lễ tết<br />\r\n<br />\r\n4. Th&ocirc;ng tin kh&aacute;c:<br />\r\n<br />\r\n. Nộp hồ sơ trực tiếp hoặc trực tuyến<br />\r\n<br />\r\n. Hồ sơ c&oacute; c&aacute;c bản vẽ đ&atilde; từng thực hiện<br />\r\n<br />\r\n. Tham khảo th&ecirc;m th&ocirc;ng tin c&ocirc;ng ty tại : www.zenhomes.vn<br />\r\n<br />\r\nLoại h&igrave;nh c&ocirc;ng việc: To&agrave;n thời gian<br />\r\n<br />\r\nLương: ₫6.000.000 /th&aacute;ng<br />\r\n<br />\r\nKinh nghiệm y&ecirc;u cầu:<br />\r\n<br />\r\nkhai triển autocad nội thất: 1 năm</p>\r\n', '', '', '', '', '', 0, 'tuyen-cong-tac-vien', 'Tuyển Cộng Tác Viên ', 'tuyên cộng tác viên', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!'),
(43, 39, 'vn', 'Câu hỏi thường gặp', 'Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết', '<h1>Ti&ecirc;u đề tin tức</h1>\r\n\r\n<p style="margin-left:0px; margin-right:0px">M&ocirc; tả ngắn của b&agrave;i viết, m&ocirc; tả ngắn của b&agrave;i viết, m&ocirc; tả ngắn của b&agrave;i viết, m&ocirc; tả ngắn của b&agrave;i viết, m&ocirc; tả ngắn của b&agrave;i viết</p>\r\n\r\n<p><img alt="" src="../image/slide1.jpg" /></p>\r\n\r\n<h2>Thẻ h2</h2>\r\n\r\n<p>Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết. Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết</p>\r\n\r\n<h2>Thẻ h2</h2>\r\n\r\n<p>Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết. Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết</p>\r\n\r\n<p><img alt="" src="../image/formImgCate.jpg" /></p>\r\n', '', '', '', '', '', 0, 'cau-hoi-thuong-gap', 'Câu hỏi thường gặp', '', 'Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viế'),
(44, 39, 'en', 'Câu hỏi thường gặp', 'Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết', '<h2>THẺ H2</h2>\r\n\r\n<p>Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết. Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết</p>\r\n', '', '', '', '', '', 0, 'cau-hoi-thuong-gap', 'Câu hỏi thường gặp', '', 'Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viế'),
(45, 40, 'vn', 'Chính sách bảo mật', '', '<h2>DP GREEN-PHAR cam kết bảo mật th&ocirc;ng tin c&aacute; nh&acirc;n của tất cả kh&aacute;ch h&agrave;ng.</h2>\r\n\r\n<p>Cảm ơn bạn đ&atilde; truy cập website: www.greenphar.com<br />\r\nCh&uacute;ng t&ocirc;i hiểu r&otilde; tầm quan trọng của sự ri&ecirc;ng tư v&agrave; sẽ giữ b&iacute; mật th&ocirc;ng tin c&aacute; nh&acirc;n của bạn. Xin vui l&ograve;ng đọc bản Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y v&agrave; hiểu c&aacute;c h&agrave;nh động li&ecirc;n quan về th&ocirc;ng tin c&aacute; nh&acirc;n của bạn. Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y c&oacute; thể thay đổi m&agrave; kh&ocirc;ng th&ocirc;ng b&aacute;o trước, do đ&oacute; bạn vui l&ograve;ng thường xuy&ecirc;n r&agrave; so&aacute;t, cập nhật c&aacute;c điều khoản để biết những thay đổi.</p>\r\n\r\n<h2>Điều 1. Mục đ&iacute;ch v&agrave; phạm vi thu thập th&ocirc;ng tin</h2>\r\n\r\n<h3>1.1. Mục đ&iacute;ch thu thập th&ocirc;ng tin:</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i thực hiện việc thu thập th&ocirc;ng tin của bạn th&ocirc;ng qua website n&agrave;y nhằm:<br />\r\nDP GREEN-PHAR trung t&acirc;m tư vấn &amp; t&igrave;m giải ph&aacute;p xử l&yacute; c&aacute;c bệnh ngo&agrave;i cộng đồng.<br />\r\nGiải đ&aacute;p thắc mắc của bạn về vấn đề c&aacute;c bệnh m&agrave; bạn thắc mắc v&agrave; quan t&acirc;m.<br />\r\nGiới thiệu c&aacute;c h&agrave;ng h&oacute;a v&agrave; dịch vụ c&oacute; thể ph&ugrave; hợp với c&aacute;c nhu cầu v&agrave; sở th&iacute;ch của bạn.<br />\r\nCung cấp những th&ocirc;ng tin mới nhất của website.<br />\r\nXem x&eacute;t v&agrave; n&acirc;ng cấp nội dung, giao diện của website.<br />\r\nThực hiện hoạt động khảo s&aacute;t kh&aacute;ch h&agrave;ng.<br />\r\nThực hiện c&aacute;c hoạt động quảng b&aacute; sản phẩm v&agrave; giới thiệu những chương tr&igrave;nh khuyến m&atilde;i.<br />\r\nGiải quyết c&aacute;c vấn đề, tranh chấp ph&aacute;t sinh li&ecirc;n quan đến việc sử dụng website.<br />\r\nCh&uacute;ng t&ocirc;i bảo lưu quyền từ chối tr&aacute;ch nhiệm về bất kỳ thiệt hại n&agrave;o ph&aacute;t sinh nếu th&ocirc;ng tin c&aacute; nh&acirc;n của bạn bị đ&aacute;nh cắp, bị mất hoặc bị thiệt hại do sự cố hoặc bằng bất kỳ c&aacute;ch n&agrave;o kh&aacute;c.</p>\r\n\r\n<h3>1.2. Phạm vi thu thập th&ocirc;ng tin c&aacute; nh&acirc;n:</h3>\r\n\r\n<p>Th&ocirc;ng tin c&aacute; nh&acirc;n m&agrave; ch&uacute;ng t&ocirc;i thu thập của bạn khi bạn gửi thắc mắc về cho ch&uacute;ng t&ocirc;i, bao gồm:<br />\r\nHọ, t&ecirc;n, Năm sinh.<br />\r\nĐịa chỉ li&ecirc;n hệ.<br />\r\nĐiện thoại li&ecirc;n hệ.<br />\r\nEmail.<br />\r\nTh&ocirc;ng tin bệnh l&yacute; v&agrave; những thắc mắc về bệnh học li&ecirc;n quan.</p>\r\n\r\n<h2>Điều 2. Phạm vi sử dụng th&ocirc;ng tin</h2>\r\n\r\n<p>Th&ocirc;ng tin của bạn được sử dụng để ch&uacute;ng t&ocirc;i hoặc c&aacute;c b&ecirc;n c&oacute; li&ecirc;n quan kh&aacute;c c&oacute; thể thực hiện c&aacute;c y&ecirc;u cầu của bạn.<br />\r\nCh&uacute;ng t&ocirc;i c&oacute; thể li&ecirc;n hệ với bạn hoặc giới thiệu bạn đến c&aacute;c cuộc nghi&ecirc;n cứu bao gồm nghi&ecirc;n cứu sự h&agrave;i l&ograve;ng của kh&aacute;ch h&agrave;ng, thị trường, nội dung c&aacute; nh&acirc;n kh&aacute;c, hoặc c&oacute; li&ecirc;n quan đến một số giao dịch nhất định.<br />\r\nCh&uacute;ng t&ocirc;i thu thập th&ocirc;ng tin về truy cập website của bạn gồm những th&ocirc;ng tin c&oacute; thể nhận biết v&agrave; kh&ocirc;ng thể nhận biết để ph&acirc;n t&iacute;ch (v&iacute; dụ: dữ liệu ph&acirc;n t&iacute;ch việc truy cập website, &hellip;).<br />\r\nTh&ocirc;ng tin của bạn được sử dụng để gi&uacute;p cung cấp cho c&aacute;c dịch vụ của ch&uacute;ng t&ocirc;i v&agrave; ch&uacute;ng t&ocirc;i c&oacute; thể cung cấp th&ocirc;ng tin cho c&aacute;c c&ocirc;ng ty đại diện ch&uacute;ng t&ocirc;i. Những c&ocirc;ng ty n&agrave;y cũng chịu sự r&agrave;ng buộc nghi&ecirc;m ngặt bởi Ch&iacute;nh s&aacute;ch Bảo mật của ch&uacute;ng t&ocirc;i.</p>\r\n\r\n<h2>Điều 3. Thời gian lưu trữ th&ocirc;ng tin</h2>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i sẽ lưu trữ c&aacute;c th&ocirc;ng tin c&aacute; nh&acirc;n do kh&aacute;ch h&agrave;ng cung cấp tr&ecirc;n c&aacute;c hệ thống quản l&yacute;, lưu trữ dữ liệu của ch&uacute;ng t&ocirc;i hoặc ch&uacute;ng t&ocirc;i thu&ecirc; trong qu&aacute; tr&igrave;nh cung cấp dịch vụ cho kh&aacute;ch h&agrave;ng cho đến khi ho&agrave;n th&agrave;nh mục đ&iacute;ch thu thập hoặc khi bạn c&oacute; y&ecirc;u cầu hủy c&aacute;c th&ocirc;ng tin đ&atilde; cung cấp.</p>\r\n\r\n<h2>Điều 4. Địa chỉ của đơn vị thu thập v&agrave; quản l&yacute; th&ocirc;ng tin c&aacute; nh&acirc;n</h2>\r\n\r\n<p><strong>C&Ocirc;NG TY CỔ PHẦN DP GREEN-PHAR</strong><br />\r\nĐịa chỉ: Số 19, Ng&otilde; 4, phố Văn La, H&agrave; Đ&ocirc;ng, H&agrave; Nội.<br />\r\nĐiện thoại: (024) 6262.7731<br />\r\nEmail: dpgreenphar@gmail.com</p>\r\n\r\n<h2>Điều 5. Phương tiện v&agrave; c&ocirc;ng cụ để người d&ugrave;ng tiếp cận v&agrave; chỉnh sửa dữ liệu c&aacute; nh&acirc;n của m&igrave;nh.</h2>\r\n\r\n<p>Bạn c&oacute; thể tự đăng nhập v&agrave;o website qua link www.greenphar.com &nbsp;v&agrave; chỉnh sửa c&aacute;c th&ocirc;ng tin c&aacute; nh&acirc;n như: t&ecirc;n, số điện thoại, địa chỉ giao-nhận h&agrave;ng, ...<br />\r\nNếu bạn kh&ocirc;ng quan t&acirc;m hoặc kh&ocirc;ng muốn nhận tin tức, th&ocirc;ng tin, bạn c&oacute; thể thay đổi th&ocirc;ng tin của bạn v&agrave;o bất kỳ l&uacute;c n&agrave;o bằng c&aacute;ch gửi email về cho ch&uacute;ng t&ocirc;i qua địa chỉ email: cskh@greenphar.com</p>\r\n\r\n<h2>Điều 6. Cam kết bảo mật th&ocirc;ng tin c&aacute; nh&acirc;n kh&aacute;ch h&agrave;ng</h2>\r\n\r\n<p>Ngo&agrave;i việc sử dụng c&aacute;c th&ocirc;ng tin của bạn v&agrave;o c&aacute;c mục đ&iacute;ch n&ecirc;u tại Khoản 1.1 Điều 1 của Ch&iacute;nh s&aacute;ch bảo mật n&agrave;y v&agrave; phạm vi n&ecirc;u tại Điều 2 của Ch&iacute;nh s&aacute;ch bảo mật n&agrave;y, Ch&uacute;ng t&ocirc;i sẽ giữ b&iacute; mật th&ocirc;ng tin c&aacute; nh&acirc;n của bạn.&nbsp;Xin vui l&ograve;ng đọc bản Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y v&agrave; hiểu c&aacute;c h&agrave;nh động li&ecirc;n quan về th&ocirc;ng tin c&aacute; nh&acirc;n của bạn. Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y c&oacute; thể thay đổi m&agrave; kh&ocirc;ng th&ocirc;ng b&aacute;o trước, do đ&oacute; bạn vui l&ograve;ng thường xuy&ecirc;n r&agrave; so&aacute;t, cập nhật c&aacute;c điều khoản n&agrave;y để biết những thay đổi.<br />\r\n<strong>Ch&iacute;nh s&aacute;ch bảo mật tại DP GREEN- PHAR</strong><br />\r\n- DP GREEN-PHAR c&oacute; thể thay đổi ch&iacute;nh s&aacute;ch bảo mật v&agrave; mọi thay đổi sẽ được c&ocirc;ng khai tr&ecirc;n website www.greenphar.com<br />\r\n- Tất cả c&aacute;c thay đổi về ch&iacute;nh s&aacute;ch bảo mật ch&uacute;ng t&ocirc;i đều tu&acirc;n thủ theo quy định của Ph&aacute;p Luật Nh&agrave; Nước hiện h&agrave;nh.<br />\r\n- Mọi &yacute; kiến thắc mắc, khiếu nại v&agrave; tranh chấp vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i qua hotline Chăm s&oacute;c kh&aacute;ch h&agrave;ng:&nbsp;<strong>(024) 6262. 7731</strong><br />\r\n<br />\r\nTr&acirc;n trọng,<br />\r\n<strong>DP GREEN- PHAR: Chu Đ&aacute;o, Tin Cậy!</strong></p>\r\n', '', '', '', '', '', 0, 'chinh-sach-bao-mat', 'Chính sách bảo mật', '', ''),
(46, 40, 'en', 'Chính sách bảo mật', '', 'DP GREEN-PHAR CAM KẾT BẢO MẬT THÔNG TIN CÁ NHÂN CỦA TẤT CẢ KHÁCH HÀNG. Cảm ơn bạn đã truy cập website: www.greenphar.com\r\nChúng tôi hiểu rõ tầm quan trọng của sự riêng tư và sẽ giữ bí mật thông tin cá nhân của bạn. Xin vui lòng đọc bản Chính sách bảo mật thông tin này và hiểu các hành động liên quan về thông tin cá nhân của bạn. Chính sách bảo mật thông tin này có thể thay đổi mà không thông báo trước, do đó bạn vui lòng thường xuyên rà soát, cập nhật các điều khoản để biết những thay đổi. ĐIỀU 1. MỤC ĐÍCH VÀ PHẠM VI THU THẬP THÔNG TIN1.1. Mục đích thu thập thông tin:Chúng tôi thực hiện việc thu thập thông tin của bạn thông qua website này nhằm:\r\nDP GREEN-PHAR trung tâm tư vấn & tìm giải pháp xử lý các bệnh ngoài cộng đồng.\r\nGiải đáp thắc mắc của bạn về vấn đề các bệnh mà bạn thắc mắc và quan tâm.\r\nGiới thiệu các hàng hóa và dịch vụ có thể phù hợp với các nhu cầu và sở thích của bạn.\r\nCung cấp những thông tin mới nhất của website.\r\nXem xét và nâng cấp nội dung, giao diện của website.\r\nThực hiện hoạt động khảo sát khách hàng.\r\nThực hiện các hoạt động quảng bá sản phẩm và giới thiệu những chương trình khuyến mãi.\r\nGiải quyết các vấn đề, tranh chấp phát sinh liên quan đến việc sử dụng website.\r\nChúng tôi bảo lưu quyền từ chối trách nhiệm về bất kỳ thiệt hại nào phát sinh nếu thông tin cá nhân của bạn bị đánh cắp, bị mất hoặc bị thiệt hại do sự cố hoặc bằng bất kỳ cách nào khác. 1.2. Phạm vi thu thập thông tin cá nhân:Thông tin cá nhân mà chúng tôi thu thập của bạn khi bạn gửi thắc mắc về cho chúng tôi, bao gồm:\r\nHọ, tên, Năm sinh.\r\nĐịa chỉ liên hệ.\r\nĐiện thoại liên hệ.\r\nEmail.\r\nThông tin bệnh lý và những thắc mắc về bệnh học liên quan. ĐIỀU 2. PHẠM VI SỬ DỤNG THÔNG TINThông tin của bạn được sử dụng để chúng tôi hoặc các bên có liên quan khác có thể thực hiện các yêu cầu của bạn.\r\nChúng tôi có thể liên hệ với bạn hoặc giới thiệu bạn đến các cuộc nghiên cứu bao gồm nghiên cứu sự hài lòng của khách hàng, thị trường, nội dung cá nhân khác, hoặc có liên quan đến một số giao dịch nhất định.\r\nChúng tôi thu thập thông tin về truy cập website của bạn gồm những thông tin có thể nhận biết và không thể nhận biết để phân tích (ví dụ: dữ liệu phân tích việc truy cập website, …).\r\nThông tin của bạn được sử dụng để giúp cung cấp cho các dịch vụ của chúng tôi và chúng tôi có thể cung cấp thông tin cho các công ty đại diện chúng tôi. Những công ty này cũng chịu sự ràng buộc nghiêm ngặt bởi Chính sách Bảo mật của chúng tôi. ĐIỀU 3. THỜI GIAN LƯU TRỮ THÔNG TINChúng tôi sẽ lưu trữ các thông tin cá nhân do khách hàng cung cấp trên các hệ thống quản lý, lưu trữ dữ liệu của chúng tôi hoặc chúng tôi thuê trong quá trình cung cấp dịch vụ cho khách hàng cho đến khi hoàn thành mục đích thu thập hoặc khi bạn có yêu cầu hủy các thông tin đã cung cấp.ĐIỀU 4. ĐỊA CHỈ CỦA ĐƠN VỊ THU THẬP VÀ QUẢN LÝ THÔNG TIN CÁ NHÂNCÔNG TY CỔ PHẦN DP GREEN-PHAR\r\nĐịa chỉ: Số 19, Ngõ 4, phố Văn La, Hà Đông, Hà Nội.\r\nĐiện thoại: (024) 6262.7731\r\nEmail: dpgreenphar@gmail.com ĐIỀU 5. PHƯƠNG TIỆN VÀ CÔNG CỤ ĐỂ NGƯỜI DÙNG TIẾP CẬN VÀ CHỈNH SỬA DỮ LIỆU CÁ NHÂN CỦA MÌNH.Bạn có thể tự đăng nhập vào website qua link www.greenphar.com  và chỉnh sửa các thông tin cá nhân như: tên, số điện thoại, địa chỉ giao-nhận hàng, ...\r\nNếu bạn không quan tâm hoặc không muốn nhận tin tức, thông tin, bạn có thể thay đổi thông tin của bạn vào bất kỳ lúc nào bằng cách gửi email về cho chúng tôi qua địa chỉ email: cskh@greenphar.comĐIỀU 6. CAM KẾT BẢO MẬT THÔNG TIN CÁ NHÂN KHÁCH HÀNGNgoài việc sử dụng các thông tin của bạn vào các mục đích nêu tại Khoản 1.1 Điều 1 của Chính sách bảo mật này và phạm vi nêu tại Điều 2 của Chính sách bảo mật này, Chúng tôi sẽ giữ bí mật thông tin cá nhân của bạn. Xin vui lòng đọc bản Chính sách bảo mật thông tin này và hiểu các hành động liên quan về thông tin cá nhân của bạn. Chính sách bảo mật thông tin này có thể thay đổi mà không thông báo trước, do đó bạn vui lòng thường xuyên rà soát, cập nhật các điều khoản này để biết những thay đổi.\r\nChính sách bảo mật tại DP GREEN- PHAR\r\n- DP GREEN-PHAR có thể thay đổi chính sách bảo mật và mọi thay đổi sẽ được công khai trên website www.greenphar.com\r\n- Tất cả các thay đổi về chính sách bảo mật chúng tôi đều tuân thủ theo quy định của Pháp Luật Nhà Nước hiện hành.\r\n- Mọi ý kiến thắc mắc, khiếu nại và tranh chấp vui lòng liên hệ với chúng tôi qua hotline Chăm sóc khách hàng: (024) 6262. 7731\r\n\r\nTrân trọng,\r\nDP GREEN- PHAR: Chu Đáo, Tin Cậy!', '', '', '', '', '', 0, 'chinh-sach-bao-mat', 'Chính sách bảo mật', '', ''),
(47, 41, 'vn', 'Chính sách đổi - trả', '', '<p>Qu&yacute; kh&aacute;ch vui l&ograve;ng chắc chắn rằng sản phẩm y&ecirc;u cầu đổi (trả) thỏa m&atilde;n điều kiện đổi trả h&agrave;ng của DP GREEN- PHAR tại ch&iacute;nh s&aacute;ch đổi trả h&agrave;ng h&oacute;a như sau:<br />\r\n<strong><em>C&aacute;c trường hợp được quyền đổi - trả sản phẩm:</em></strong><br />\r\nĐổi - trả do đơn h&agrave;ng sai hoặc thiếu sản phẩm so với th&ocirc;ng tin đặt h&agrave;ng.<br />\r\nTrả h&agrave;ng - ho&agrave;n tiền sản phẩm lỗi do qu&aacute; tr&igrave;nh vận chuyển (hộp thuốc bị bể, ẩm mốc,&hellip;).<br />\r\nTrả h&agrave;ng - ho&agrave;n tiền sản phẩm lỗi sản xuất (nh&atilde;n m&aacute;c kh&ocirc;ng r&otilde; chữ, th&ocirc;ng tin tr&ecirc;n bao b&igrave; sản phẩm kh&ocirc;ng ch&iacute;nh x&aacute;c, sản phẩm đ&atilde; bị mở trước khi đến tay kh&aacute;ch h&agrave;ng...).<br />\r\nTrả h&agrave;ng - ho&agrave;n tiền do lỗi giao h&agrave;ng sản phẩm hết hạn sử dụng.<br />\r\n<strong><em>Điều kiện bắt buộc:</em></strong><br />\r\nSản phẩm kh&ocirc;ng c&oacute; dấu hiệu đ&atilde; qua sử dụng, c&ograve;n nguy&ecirc;n hộp, tem, m&aacute;c, seal (seal vỏ hộp v&agrave; seal chai thuốc).<br />\r\nTrong trường hợp Kh&aacute;ch h&agrave;ng đ&atilde; khui seal vỏ hộp v&agrave; ph&aacute;t hiện chai thuốc c&oacute; lỗi sản xuất, vui l&ograve;ng chụp h&igrave;nh v&agrave; gọi Hotline để BP CSKH hướng dẫn th&ecirc;m.<br />\r\nĐối với c&aacute;c sản phẩm đ&atilde; khui seal chai thuốc, DP GREEN- PHAR xin được từ chối đổi trả.<br />\r\nQu&yacute; kh&aacute;ch h&agrave;ng lưu &yacute; lu&ocirc;n lu&ocirc;n kiểm tra kĩ t&igrave;nh trạng sản phẩm sau khi nhận được ngay tại thời điểm nhận h&agrave;ng v&agrave; c&oacute; sự chứng kiến của nh&acirc;n vi&ecirc;n giao h&agrave;ng. C&aacute;c vấn đề như bể vỡ, vỏ hộp chai thuốc bị r&aacute;ch n&aacute;t hoặc seal đ&atilde; bị mở, &hellip; Tất cả những sự cố n&agrave;y sẽ chỉ được đổi trả nếu do lỗi từ ph&iacute;a nh&acirc;n vi&ecirc;n của DP GREEN- PHAR v&agrave; đơn vị vận chuyển ViettelPost.</p>\r\n\r\n<h2>Thời hạn đổi trả h&agrave;ng</h2>\r\n\r\n<p>Sau khi nhận được sản phẩm của kh&aacute;ch h&agrave;ng gửi trả, Bộ phận Chăm s&oacute;c Kh&aacute;ch h&agrave;ng sẽ tiến h&agrave;nh kiểm tra chất lượng sản phẩm ngay lập tức. Quy tr&igrave;nh kiểm tra h&agrave;ng đổi trả được thực hiện trong v&ograve;ng từ 1-3 ng&agrave;y l&agrave;m việc, kết quả kiểm tra sẽ được th&ocirc;ng b&aacute;o đến kh&aacute;ch h&agrave;ng qua email v&agrave; tin nhắn điện thoại sau khi ho&agrave;n tất.<br />\r\nSau khi nhận được email hoặc tin nhắn th&ocirc;ng b&aacute;o từ DP GREEN- PHAR, kh&aacute;ch h&agrave;ng c&oacute; thể kiểm tra t&igrave;nh trạng đổi trả hoặc ho&agrave;n tiền th&ocirc;ng qua c&ocirc;ng cụ kiểm tra đơn h&agrave;ng của&nbsp;<strong>DP GREEN-PHAR</strong>.</p>\r\n\r\n<h2>Phương thức đổi trả h&agrave;ng đ&atilde; mua</h2>\r\n\r\n<p><strong><em>Bước 1:</em></strong> Đăng k&iacute;<br />\r\nKh&aacute;ch h&agrave;ng c&oacute; thể li&ecirc;n hệ với bộ phận chăm s&oacute;c kh&aacute;ch h&agrave;ng của DP GREEN-PHAR qua hotline (024) 6262.7731 hoặc truy cập trang web: WWW.GREENPHAR.COM &nbsp;v&agrave; cung cấp th&ocirc;ng tin chi tiết về sản phẩm lỗi gồm:<br />\r\n- T&ecirc;n sản phẩm<br />\r\n- M&atilde; số đơn h&agrave;ng, l&ocirc; sản xuất, hạn sử dụng<br />\r\n- Lỗi sản phẩm (m&ocirc; tả chi tiết v&agrave; k&egrave;m ảnh chụp)<br />\r\n<strong><em>Bước 2:</em></strong> Nhận tin nhắn x&aacute;c nhận đ&atilde; đăng k&yacute; đổi/trả th&agrave;nh c&ocirc;ng v&agrave; email hướng dẫn đ&oacute;ng g&oacute;i sản phẩm ho&agrave;n trả.<br />\r\nSau khi y&ecirc;u cầu đổi/trả được chấp nhận, DP GREEN-PHAR sẽ gửi đến qu&yacute; kh&aacute;ch một tin nhắn v&agrave; email hướng dẫn c&aacute;ch gửi trả sản phẩm.<br />\r\n<strong><em>Bước 3:</em></strong> Đ&oacute;ng g&oacute;i theo hướng dẫn v&agrave; mang sản phẩm đến Bưu Điện<br />\r\n<strong><em>Bước 4:</em></strong> Gửi trả sản phẩm về DP GREEN-PHAR<br />\r\nKh&aacute;ch h&agrave;ng vui l&ograve;ng gửi sản phẩm qua đường Bưu Điện về DP GREEN-PHAR trong v&ograve;ng 3 ng&agrave;y l&agrave;m việc kể từ khi th&ocirc;ng b&aacute;o với bộ phận Chăm S&oacute;c Kh&aacute;ch H&agrave;ng v&agrave; gửi k&egrave;m:<br />\r\n- H&oacute;a đơn mua h&agrave;ng hoặc đ&iacute;nh k&egrave;m giấy ghi ch&uacute; c&oacute; m&atilde; đơn h&agrave;ng<br />\r\n- H&oacute;a đơn gi&aacute; trị gia tăng (nếu c&oacute;)<br />\r\n- Phụ kiện đi k&egrave;m sản phẩm v&agrave; tặng khuyến m&atilde;i k&egrave;m theo (nếu c&oacute;)<br />\r\n<strong><em>Một số lưu &yacute; khi gửi h&agrave;ng đến bưu điện:</em></strong><br />\r\n- Kh&ocirc;ng ni&ecirc;m phong bề mặt th&ugrave;ng ​trước khi ho&agrave;n tất qu&aacute; tr&igrave;nh gửi h&agrave;ng ​v&igrave; c&oacute; thể bưu điện cần kiểm tra trước khi nhận h&agrave;ng. Đ&oacute;ng g&oacute;i, ch&egrave;n l&oacute;t sản phẩm như ban đầu.<br />\r\n- Cung cấp cho nh&acirc;n vi&ecirc;n bưu điện m&atilde; đơn h&agrave;ng v&agrave; m&atilde; gửi h&agrave;ng b&ecirc;n DP GREEN-PHAR đ&atilde; cung cấp. - Lưu &yacute; kh&ocirc;ng d&aacute;n băng keo trực tiếp l&ecirc;n hộp sản phẩm v&igrave; y&ecirc;u cầu đổi/trả c&oacute; thể sẽ bị từ chối nếu hộp sản phẩm bị hư hỏng.<br />\r\n- Vui l&ograve;ng li&ecirc;n hệ Bộ phận Chăm s&oacute;c Kh&aacute;ch h&agrave;ng của DP GREEN-PHAR &nbsp;(024) 6262. 7731&nbsp;khi c&oacute; bất cứ kh&oacute; khăn xảy ra trong qu&aacute; tr&igrave;nh l&agrave;m việc với bưu điện.<br />\r\n- Điền th&ocirc;ng tin m&atilde; số đơn h&agrave;ng l&ecirc;n th&ugrave;ng h&agrave;ng v&agrave; gửi về DP GREEN- PHAR theo địa chỉ nh&acirc;n vi&ecirc;n chăm s&oacute;c kh&aacute;ch h&agrave;ng đ&atilde; cung cấp.<br />\r\n<strong>Note:</strong>&nbsp;<em>Trong trường hợp kh&ocirc;ng nhớ th&ocirc;ng tin ở bước số 4, qu&yacute; kh&aacute;ch c&oacute; thể xuất tr&igrave;nh tin nhắn hoặc email nhận được từ DP GREEN- PHAR đ&atilde; gửi (ở bước 2) cho nh&acirc;n vi&ecirc;n bưu điện v&agrave; l&agrave;m theo hướng dẫn.</em><br />\r\n<span style="color:#cc0000">Lưu &yacute;:</span> Kh&aacute;ch h&agrave;ng trong qu&aacute; tr&igrave;nh gửi trả sản phẩm về DP GREEN-PHAR sẽ chịu ho&agrave;n to&agrave;n tr&aacute;ch nhiệm về trạng th&aacute;i nguy&ecirc;n vẹn của sản phẩm.<br />\r\nSau khi nhận được sản phẩm kh&aacute;ch h&agrave;ng gửi trả về, DP GREEN- PHAR sẽ phản hồi v&agrave; cập nhật th&ocirc;ng tin tr&ecirc;n từng giai đoạn xử l&yacute; đến kh&aacute;ch h&agrave;ng qua email hoặc sms.</p>\r\n\r\n<h2>C&aacute;ch thức nhận lại tiền khi mua h&agrave;ng online</h2>\r\n\r\n<h3>Kh&aacute;ch h&agrave;ng sẽ nhận được số tiền ho&agrave;n trả sau bao l&acirc;u?</h3>\r\n\r\n<p>DP GREEN- PHAR sẽ ho&agrave;n tiền cho kh&aacute;ch h&agrave;ng trong trường hợp kh&aacute;ch h&agrave;ng trả hay hủy đơn h&agrave;ng.<br />\r\nPhương thức ho&agrave;n tiền bằng c&aacute;ch chuyển khoản ng&acirc;n h&agrave;ng.<br />\r\nTh&ocirc;ng tin sẽ được cập nhật đến cho qu&yacute; kh&aacute;ch bằng email hoặc SMS khi thủ tục ho&agrave;n tiền được tiến h&agrave;nh.<br />\r\n<strong>Phương thức ho&agrave;n tiền:</strong> Chuyển khoản ng&acirc;n h&agrave;ng<br />\r\n<strong>Thời gian ho&agrave;n tiền:</strong> 3 - 5 ng&agrave;y l&agrave;m việc<br />\r\nTrong trường hợp đ&atilde; vượt qu&aacute; c&aacute;c khoảng thời gian ho&agrave;n tiền tr&ecirc;n nhưng kh&aacute;ch h&agrave;ng vẫn chưa nhận được tiền, xin vui l&ograve;ng li&ecirc;n hệ với ng&acirc;n h&agrave;ng để được hỗ trợ hoặc Tổng đ&agrave;i Chăm s&oacute;c Kh&aacute;ch h&agrave;ng của DP GREEN-PHAR&nbsp;<strong>(024) 6262.7731</strong></p>\r\n\r\n<h3>Chi ph&iacute; cho việc đổi trả h&agrave;ng</h3>\r\n\r\n<p>Qu&yacute; Kh&aacute;ch h&agrave;ng vui l&ograve;ng thanh to&aacute;n tiền ph&iacute; vận chuyển khi Kh&aacute;ch h&agrave;ng thực hiện gửi h&agrave;ng tại bưu điện. DP GREEN- PHAR sẽ kh&ocirc;ng ho&agrave;n trả chi ph&iacute; n&agrave;y. Tuy nhi&ecirc;n sẽ giao h&agrave;ng miễn ph&iacute; đối với những đơn h&agrave;ng thuộc nh&oacute;m &ldquo;Đổi h&agrave;ng&quot;. Nếu c&oacute; bất k&igrave; vấn đề g&igrave; ph&aacute;t sinh, qu&yacute; kh&aacute;ch c&oacute; thể li&ecirc;n hệ với bộ phận CSKH của DP GREEN-PHAR theo Hotline&nbsp;<strong>(024) 6262.7731</strong></p>\r\n', '', '', '', '', '', 0, 'chinh-sach-doi-tra', 'Chính sách đổi - trả', '', ''),
(48, 41, 'en', 'Chính sách đổi - trả', '', '<p>Nội dung Ch&iacute;nh s&aacute;ch đổi - trả</p>\r\n', '', '', '', '', '', 0, 'chinh-sach-doi-tra', 'Chính sách đổi - trả', '', ''),
(49, 42, 'vn', 'Hệ thống nhà thuốc', '', '<p>T&acirc;t cả c&aacute;c sản phẩm của DP GREEN-PHAR&nbsp;đ&atilde; được ph&acirc;n phối tại hơn 1000 nh&agrave; thuốc tại c&aacute;c tỉnh th&agrave;nh tr&ecirc;n khắp miền bắc<br />\r\nVui l&ograve;ng li&ecirc;n hệ tổng đ&agrave;i CSKH: <em><strong>024. 6262.7731</strong></em> để biết địa chỉ nh&agrave; thuốc gần nhất nơi bạn ở.<br />\r\nXin ch&acirc;n th&agrave;nh cảm ơn qu&yacute; kh&aacute;ch đ&atilde; tin d&ugrave;ng sản phẩm của <strong>DP GREEN-PHAR</strong>.</p>\r\n', '', '', '', '', '', 0, 'he-thong-nha-thuoc', 'Hệ thống nhà thuốc', '', ''),
(50, 42, 'en', 'Hệ thống nhà thuốc', '', '<p>Nội dung&nbsp;Hệ thống nh&agrave; thuốc</p>\r\n', '', '', '', '', '', 0, 'he-thong-nha-thuoc', 'Hệ thống nhà thuốc', '', ''),
(51, 43, 'vn', 'Hình thức giao hàng', '', '<p>Sau khi đặt h&agrave;ng th&agrave;nh c&ocirc;ng, Bộ phận Chăm s&oacute;c Kh&aacute;ch h&agrave;ng của DP GREEN- PHAR sẽ li&ecirc;n hệ với Qu&yacute; kh&aacute;ch để x&aacute;c nhận v&agrave; gửi email/sms về th&ocirc;ng tin đơn h&agrave;ng trong thời gian sớm nhất. Hiện tại DP GREEN-PHAR hợp t&aacute;c với ViettelPost - đơn vị chuyển ph&aacute;t h&agrave;ng đầu tại Việt Nam để thực hiện chuyển ph&aacute;t c&aacute;c sản phẩm tới Qu&yacute; kh&aacute;ch h&agrave;ng.<br />\r\nSau khi x&aacute;c nhận th&agrave;nh c&ocirc;ng, đơn h&agrave;ng sẽ được giao đến Qu&yacute; kh&aacute;ch trong khoảng thời gian sau đ&acirc;y: <strong>Tại Th&agrave;nh phố Hồ Ch&iacute; Minh v&agrave; H&agrave; Nội:</strong> Giao h&agrave;ng sau 1 - 4h l&agrave;m việc<br />\r\n<strong>C&aacute;c khu vực tỉnh, th&agrave;nh c&ograve;n lại:</strong> Giao h&agrave;ng sau 1 - 2 ng&agrave;y l&agrave;m việc<br />\r\n<em>*Lưu &yacute;: thời gian giao h&agrave;ng dự kiến ở tr&ecirc;n chỉ &aacute;p dụng cho c&aacute;c đơn h&agrave;ng trong nước.</em> Tất cả c&aacute;c đơn h&agrave;ng từ khắp cả nước sẽ được chia l&agrave;m 2 khu vực v&agrave; ph&iacute; vận chuyển &aacute;p dụng cho tất cả c&aacute;c đơn h&agrave;ng của Qu&yacute; kh&aacute;ch (trong đ&oacute;, DP GREEN-PHAR đ&atilde; hỗ trợ 50-70% chi ph&iacute; giao h&agrave;ng v&agrave; ph&iacute; thu tiền hộ):<br />\r\n<strong>Khu vực 1:</strong>&nbsp;Th&agrave;nh phố Hồ Ch&iacute; Minh v&agrave; H&agrave; Nội l&agrave; 10.000đ/đơn h&agrave;ng bất kỳ<br />\r\n<strong>Khu vực 2:</strong>&nbsp;C&aacute;c tỉnh, th&agrave;nh phố c&ograve;n lại tr&ecirc;n to&agrave;n quốc l&agrave; 20.000đ/đơn h&agrave;ng bất kỳ<br />\r\n<strong>FREE SHIP NẾU ĐƠN H&Agrave;NG TR&Ecirc;N 600.000 VNĐ.</strong></p>\r\n\r\n<p>Qu&yacute; kh&aacute;ch h&agrave;ng lưu &yacute; lu&ocirc;n lu&ocirc;n kiểm tra kĩ t&igrave;nh trạng sản phẩm sau khi nhận được ngay tại thời điểm nhận h&agrave;ng v&agrave; c&oacute; sự chứng kiến của nh&acirc;n vi&ecirc;n giao h&agrave;ng. C&aacute;c vấn đề như bể vỡ, vỏ hộp chai thuốc bị r&aacute;ch n&aacute;t hoặc seal đ&atilde; bị mở, &hellip; Tất cả những sự cố n&agrave;y sẽ chỉ được đổi trả nếu do lỗi từ ph&iacute;a nh&acirc;n vi&ecirc;n của DP GREEN-PHAR v&agrave; đơn vị vận chuyển ViettelPost.</p>\r\n\r\n<p>Trong qu&aacute; tr&igrave;nh giao h&agrave;ng c&oacute; thể ph&aacute;t sinh những vấn đề ngo&agrave;i &yacute; muốn về ph&iacute;a Kh&aacute;ch h&agrave;ng khiến việc giao h&agrave;ng bị chậm trễ. DP GREEN-PHAR sẽ linh động giải quyết cho Kh&aacute;ch h&agrave;ng trong từng trường hợp như sau:<br />\r\n- Kh&aacute;ch h&agrave;ng kh&ocirc;ng cung cấp ch&iacute;nh x&aacute;c v&agrave; đầy đủ địa chỉ giao h&agrave;ng v&agrave; số điện thoại li&ecirc;n lạc.<br />\r\n- Kh&aacute;ch h&agrave;ng kh&ocirc;ng sẵn s&agrave;ng để nhận h&agrave;ng v&agrave;o thời điểm giao h&agrave;ng.<br />\r\n- DP GREEN- PHAR đ&atilde; giao h&agrave;ng đ&uacute;ng hẹn theo th&ocirc;ng tin giao h&agrave;ng nhưng kh&ocirc;ng li&ecirc;n lạc được với Kh&aacute;ch h&agrave;ng v&agrave; chờ tại địa điểm giao h&agrave;ng qu&aacute; 15 ph&uacute;t, mọi nỗ lực của nh&acirc;n vi&ecirc;n giao h&agrave;ng nhằm li&ecirc;n hệ với Kh&aacute;ch h&agrave;ng đều kh&ocirc;ng th&agrave;nh c&ocirc;ng.<br />\r\n- Những trường hợp bất khả kh&aacute;ng như thi&ecirc;n tai, tai nạn giao th&ocirc;ng, gi&aacute;n đoạn mạng lưới giao th&ocirc;ng, đứt c&aacute;p, hệ thống bị tấn c&ocirc;ng.<br />\r\nC&aacute;c trường hợp kh&aacute;c: Trong trường hợp xảy ra sự cố phức tạp hơn, DP GREEN- PHAR bảo đảm quyền lợi lớn nhất thuộc về Kh&aacute;ch h&agrave;ng.</p>\r\n', '', '', '', '', '', 0, 'hinh-thuc-giao-hang', 'Hình thức giao hàng', '', ''),
(52, 43, 'en', 'Hình thức giao hàng', '', '<p>Nội dung H&igrave;nh thức giao h&agrave;ng</p>\r\n', '', '', '', '', '', 0, 'hinh-thuc-giao-hang', 'Hình thức giao hàng', '', '');
INSERT INTO `page_languages` (`id`, `page_id`, `languages_code`, `lang_page_name`, `lang_page_des`, `lang_page_content`, `lang_page_sub_info1`, `lang_page_sub_info2`, `lang_page_sub_info3`, `lang_page_sub_info4`, `lang_page_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `keyword`, `des_seo`) VALUES
(53, 44, 'vn', 'Hình thức thanh toán', '', '<h2>DP GREEN- PHAR hỗ trợ 4 phương thức thanh to&aacute;n cho tất cả c&aacute;c đơn h&agrave;ng tr&ecirc;n hệ thống.</h2>\r\n\r\n<p><strong>1. Thanh to&aacute;n khi nhận h&agrave;ng (COD): </strong>Qu&yacute; kh&aacute;ch sẽ thanh to&aacute;n tiền mặt cho nh&acirc;n vi&ecirc;n giao h&agrave;ng ngay sau khi nhận được h&agrave;ng.<br />\r\n<strong>2. Thanh to&aacute;n bằng Internet Banking:</strong> Thẻ/t&agrave;i khoản ATM của qu&yacute; kh&aacute;ch c&oacute; đăng k&iacute; sử dụng dịch vụ internet banking, DP GREEN- PHAR hiện hỗ trợ thanh to&aacute;n cho phần lớn c&aacute;c ng&acirc;n h&agrave;ng tại Việt Nam:<br />\r\n<img alt="" src="../image/pay.jpg" /> <strong>3. Thanh to&aacute;n bằng thẻ quốc tế Visa, Master Card:</strong>&nbsp;Ph&iacute; thanh to&aacute;n t&ugrave;y thuộc v&agrave;o từng loại thẻ qu&yacute; kh&aacute;ch d&ugrave;ng v&agrave; ng&acirc;n h&agrave;ng ph&aacute;t h&agrave;nh thẻ. Vui l&ograve;ng li&ecirc;n hệ với ng&acirc;n h&agrave;ng ph&aacute;t h&agrave;nh thẻ để biết r&otilde; ph&iacute; thanh to&aacute;n ph&aacute;t sinh.<br />\r\n<strong>4. Chuyển khoản trực tiếp tại ng&acirc;n h&agrave;ng:<br />\r\nCHỦ T&Agrave;I KHOẢN: CT CỔ PHẦN DP GREEN PHAR<br />\r\nSTK: 0691000342789<br />\r\nchi nh&aacute;nh h&agrave; t&acirc;y, Vietcombank.</strong><br />\r\n&quot;T&ecirc;n người mua h&agrave;ng, Tỉnh/th&agrave;nh phố&quot; chuyển tiền cho đơn h&agrave;ng ng&agrave;y ... th&aacute;ng ... năm ...<br />\r\n<em>Mọi thắc mắc v&agrave; g&oacute;p &yacute; vui l&ograve;ng li&ecirc;n hệ Hotline Chăm s&oacute;c kh&aacute;ch h&agrave;ng:&nbsp;<strong>(024) 6262.7731</strong></em></p>\r\n', '', '', '', '', '', 0, 'hinh-thuc-thanh-toan', 'Hình thức thanh toán', '', ''),
(54, 44, 'en', 'Hình thức thanh toán', '', '<p>Nội dung&nbsp;H&igrave;nh thức thanh to&aacute;n</p>\r\n', '', '', '', '', '', 0, 'hinh-thuc-thanh-toan', 'Hình thức thanh toán', '', ''),
(55, 45, 'vn', 'Điều khoản sử dụng', '', '<h2>1. Giới thiệu</h2>\r\n\r\n<p>Ch&agrave;o mừng bạn đến với trang Thương mại điện tử DP GREEN-PHAR<br />\r\nGREENPHAR.COM l&agrave; trang Thương mại điện tử của C&ocirc;ng ty Cổ phần DP GREEN- PHAR - chuy&ecirc;n ph&acirc;n phối độc quyền c&aacute;c sản phẩm do Armephaco 120- x&iacute; nghiệp dược phẩm 120, qu&acirc;n đội, nghi&ecirc;n cứu v&agrave; sản xuất, được cấp giấy chứng nhận ĐKKD số 0106800687 do Sở Kế Hoạch v&agrave; Đầu Tư H&agrave; Nội cấp ng&agrave;y 25/4/2015<br />\r\nC&ocirc;ng ty CPDP GREEN- PHAR c&oacute; trụ sở ch&iacute;nh đặt tại 19, Ng&otilde; 4, Phố Văn La- H&agrave; Đ&ocirc;ng- H&agrave; Nội.<br />\r\nKhi bạn truy cập v&agrave;o website greenphar.com của ch&uacute;ng t&ocirc;i c&oacute; nghĩa l&agrave; bạn đồng &yacute; với c&aacute;c điều khoản n&agrave;y. Website c&oacute; quyền chỉnh sửa, thay đổi, th&ecirc;m hoặc lược bỏ bất kỳ phần n&agrave;o trong Điều khoản mua b&aacute;n h&agrave;ng h&oacute;a n&agrave;y v&agrave;o bất cứ l&uacute;c n&agrave;o. C&aacute;c thay đổi c&oacute; hiệu lực ngay khi được đăng tr&ecirc;n website m&agrave; kh&ocirc;ng cần th&ocirc;ng b&aacute;o trước. V&agrave; khi bạn tiếp tục sử dụng website, sau khi c&aacute;c thay đổi về Điều khoản n&agrave;y được đăng tải, c&oacute; nghĩa l&agrave; bạn chấp nhận với những thay đổi đ&oacute; của ch&uacute;ng t&ocirc;i.<br />\r\nV&igrave; vậy, bạn vui l&ograve;ng kiểm tra thường xuy&ecirc;n v&agrave; cập nhật những thay đổi trong Điều khoản mua b&aacute;n tr&ecirc;n website của ch&uacute;ng t&ocirc;i để đảm bảo quyền lợi của m&igrave;nh.</p>\r\n\r\n<h2>2. Hướng dẫn sử dụng website</h2>\r\n\r\n<p style="text-align:center"><img alt="" height="450" src="/image/images/Hydrangeas.jpg" width="600" /></p>\r\n\r\n<p>Khi truy cập v&agrave;o website của DP GREEN-PHAR, bạn phải đảm bảo đủ 18 tuổi, hoặc c&oacute; sự gi&aacute;m s&aacute;t của cha mẹ hay người gi&aacute;m hộ hợp ph&aacute;p. Vui l&ograve;ng đảm bảo bạn c&oacute; đầy đủ h&agrave;nh vi d&acirc;n sự để thực hiện c&aacute;c giao dịch mua b&aacute;n h&agrave;ng h&oacute;a theo quy định hiện h&agrave;nh của ph&aacute;p luật Việt Nam.<br />\r\nCh&uacute;ng t&ocirc;i sẽ cũng cấp cho bạn một t&agrave;i khoản (Account) sử dụng để bạn c&oacute; thể mua sắm tr&ecirc;n website greenphar.com trong khu&ocirc;n khổ Điều khoản v&agrave; Điều kiện sử dụng đ&atilde; đề ra.<br />\r\nBạn sẽ phải đăng k&yacute; t&agrave;i khoản với th&ocirc;ng tin c&aacute; nh&acirc;n x&aacute;c thực v&agrave; phải cập nhật nếu c&oacute; bất kỳ thay đổi n&agrave;o trong qu&aacute; tr&igrave;nh sử dụng. Mỗi c&aacute; nh&acirc;n khi truy cập v&agrave;o website của DP GREEN- PHAR phải c&oacute; tr&aacute;ch nhiệm với mật khẩu, t&agrave;i khoản v&agrave; hoạt động của m&igrave;nh tr&ecirc;n web. B&ecirc;n cạnh đ&oacute;, bạn phải th&ocirc;ng b&aacute;o ngay cho ch&uacute;ng t&ocirc;i biết khi t&agrave;i khoản bị truy cập tr&aacute;i ph&eacute;p. Đối với những thiệt hại hoặc mất m&aacute;t g&acirc;y ra do bạn kh&ocirc;ng tu&acirc;n thủ quy định v&agrave; c&aacute;c điều khoản mua b&aacute;n đ&atilde; cam kết ph&iacute;a DP GREEN-PHAR sẽ kh&ocirc;ng chịu bất kỳ tr&aacute;ch nhiệm n&agrave;o, d&ugrave; trực tiếp hay gi&aacute;n tiếp.</p>\r\n\r\n<p style="text-align:center"><img alt="" height="221" src="/image/images/Cataloge%20Rem-File%20OK%2003.jpg" width="600" /></p>\r\n\r\n<p><img alt="" height="900" src="/image/images/11___.png" width="900" /><br />\r\nNghi&ecirc;m cấm sử dụng bất kỳ phần n&agrave;o của website n&agrave;y dưới mọi h&igrave;nh thức với mục đ&iacute;ch thương mại hoặc nh&acirc;n danh bất kỳ đối t&aacute;c thứ ba n&agrave;o nếu kh&ocirc;ng được sự cho ph&eacute;p bằng văn bản từ ph&iacute;a DP GREEN- PHAR. Nếu vi phạm bất cứ điều n&agrave;o trong đ&acirc;y, ch&uacute;ng t&ocirc;i sẽ hủy t&agrave;i khoản của bạn m&agrave; kh&ocirc;ng cần b&aacute;o trước.<br />\r\nBạn sẽ nhận được email quảng c&aacute;o từ website GREENPHAR.COM của ch&uacute;ng t&ocirc;i trong suốt qu&aacute; tr&igrave;nh đăng k&iacute;. Nếu cảm thấy bị l&agrave;m phiền, bạn c&oacute; thể từ chối nhận email bằng c&aacute;ch nhấp v&agrave;o đường link ở dưới c&ugrave;ng trong mọi email quảng c&aacute;o.</p>\r\n\r\n<h2>3. &Yacute; kiến của kh&aacute;ch h&agrave;ng</h2>\r\n\r\n<p>Tất cả nội dung tr&ecirc;n website v&agrave; những &yacute; kiến, nhận x&eacute;t ph&ecirc; b&igrave;nh của qu&yacute; kh&aacute;ch h&agrave;ng đều l&agrave; t&agrave;i sản của DP GREEN-PHAR ch&uacute;ng t&ocirc;i. Nếu ph&aacute;t hiện bất kỳ th&ocirc;ng tin giả mạo n&agrave;o, ch&uacute;ng t&ocirc;i sẽ v&ocirc; hiệu h&oacute;a t&agrave;i khoản của bạn ngay lập tức hoặc &aacute;p dụng c&aacute;c biện ph&aacute;p kh&aacute;c theo quy định của ph&aacute;p luật Việt Nam.</p>\r\n\r\n<h2>4. Chấp nhận đơn h&agrave;ng v&agrave; gi&aacute; cả</h2>\r\n\r\n<p>Với bất kỳ l&yacute; do g&igrave; li&ecirc;n quan đến lỗi kỹ thuật, hệ thống một c&aacute;ch kh&aacute;ch quan v&agrave;o bất kỳ l&uacute;c n&agrave;o, ph&iacute;a DP GREEN-PHAR ch&uacute;ng t&ocirc;i c&oacute; quyền từ chối hoặc hủy đơn h&agrave;ng của qu&yacute; kh&aacute;ch.<br />\r\nTrong qu&aacute; tr&igrave;nh x&aacute;c nhận đơn h&agrave;ng, ch&uacute;ng t&ocirc;i c&oacute; thể hỏi th&ecirc;m về số điện thoại v&agrave; địa chỉ của bạn để thuận tiện cho giao dịch.<br />\r\nDP GREEN-PHAR cam kết sẽ cung cấp th&ocirc;ng tin gi&aacute; cả ch&iacute;nh x&aacute;c nhất cho người ti&ecirc;u d&ugrave;ng. Tuy nhi&ecirc;n, đ&ocirc;i l&uacute;c vẫn c&oacute; sai s&oacute;t xảy ra, v&iacute; dụ như trường hợp gi&aacute; sản phẩm kh&ocirc;ng hiển thị ch&iacute;nh x&aacute;c tr&ecirc;n website hoặc sai gi&aacute;, t&ugrave;y theo từng trường hợp ph&iacute;a DP GREEN-PHAR ch&uacute;ng t&ocirc;i sẽ li&ecirc;n hệ hướng dẫn hoặc th&ocirc;ng b&aacute;o hủy đơn h&agrave;ng đ&oacute; cho qu&yacute; kh&aacute;ch.<br />\r\nDP GREEN-PHAR cũng c&oacute; quyền từ chối hoặc hủy bỏ bất kỳ đơn h&agrave;ng n&agrave;o của qu&yacute; kh&aacute;ch d&ugrave; đơn h&agrave;ng đ&oacute; đ&atilde; hay chưa được x&aacute;c nhận hoặc đ&atilde; thanh to&aacute;n.</p>\r\n\r\n<h2>5. Thay đổi hoặc hủy bỏ giao dịch</h2>\r\n\r\n<p>Trong mọi trường hợp, kh&aacute;ch h&agrave;ng đều c&oacute; quyền chấm dứt giao dịch nếu đ&atilde; thực hiện c&aacute;c biện ph&aacute;p sau đ&acirc;y:<br />\r\nTh&ocirc;ng b&aacute;o cho bộ phận chăm s&oacute;c kh&aacute;ch h&agrave;ng của DP GREEN-PHAR về việc hủy giao dịch qua hotline (024) 6262. 7731</p>\r\n\r\n<h2>6. Giải quyết lỗi nhập sai th&ocirc;ng tin</h2>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng c&oacute; tr&aacute;ch nhiệm cung cấp th&ocirc;ng tin đầy đủ v&agrave; ch&iacute;nh x&aacute;c khi tham gia giao dịch tại website greenphar.com. Trong trường hợp kh&aacute;ch h&agrave;ng nhập sai th&ocirc;ng tin v&agrave; gửi v&agrave;o site thương mại điện tử greenphar.com, ch&uacute;ng t&ocirc;i c&oacute; quyền từ chối thực hiện giao dịch. Ngo&agrave;i ra, trong mọi trường hợp, kh&aacute;ch h&agrave;ng đều c&oacute; quyền đơn phương chấm dứt giao dịch nếu đ&atilde; thực hiện c&aacute;c biện ph&aacute;p sau đ&acirc;y: Li&ecirc;n hệ với bộ phậm CSKH của DP GREEN-PHAR qua hotline (024) 6262. 7731<br />\r\nTrả lại sản phẩm đ&atilde; nhận v&agrave; kh&ocirc;ng c&oacute; dấu hiệu khui mở hoặc đ&atilde; sử dụng.<br />\r\nTrong trường hợp sai th&ocirc;ng tin ph&aacute;t sinh từ ph&iacute;a DP GREEN-PHAR m&agrave; DP GREEN-PHAR c&oacute; thể chứng minh đ&oacute; l&agrave; lỗi của hệ thống, ch&uacute;ng t&ocirc;i sẽ chịu ho&agrave;n to&agrave;n tr&aacute;ch nhiệm v&agrave; đền b&ugrave; cho kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<h2>7. Quyền ph&aacute;p l&yacute;</h2>\r\n\r\n<p>C&aacute;c điều kiện, điều khoản v&agrave; nội dung của website n&agrave;y được điều chỉnh bởi luật ph&aacute;p Việt Nam. T&ograve;a &aacute;n c&oacute; thẩm quyền tại Việt Nam sẽ giải quyết bất kỳ tranh chấp n&agrave;o ph&aacute;t sinh từ việc sử dụng tr&aacute;i ph&eacute;p trang web n&agrave;y.</p>\r\n\r\n<h2>8. Quy định về bảo mật</h2>\r\n\r\n<p>Website GREENPHAR.COM của ch&uacute;ng t&ocirc;i xem trọng việc bảo mật th&ocirc;ng tin, sử dụng c&aacute;c biện ph&aacute;p tốt nhất để bảo mật th&ocirc;ng tin v&agrave; việc thanh to&aacute;n của qu&yacute; kh&aacute;ch. Trong qu&aacute; tr&igrave;nh thanh to&aacute;n, th&ocirc;ng tin của qu&yacute; kh&aacute;ch sẽ được m&atilde; h&oacute;a để đảm bảo an to&agrave;n. Bạn sẽ tho&aacute;t khỏi chế độ an to&agrave;n sau khi ho&agrave;n th&agrave;nh qu&aacute; tr&igrave;nh đặt h&agrave;ng.<br />\r\nQu&yacute; kh&aacute;ch kh&ocirc;ng được sử dụng bất kỳ chương tr&igrave;nh, c&ocirc;ng cụ hay h&igrave;nh thức n&agrave;o kh&aacute;c để can thiệp v&agrave;o hệ thống hay l&agrave;m thay đổi cấu tr&uacute;c dữ liệu. Website greenphar.com cũng nghi&ecirc;m cấm việc ph&aacute;t t&aacute;n, truyền b&aacute; hay cổ vũ cho bất kỳ hoạt động n&agrave;o nhằm can thiệp, ph&aacute; hoại hay x&acirc;m nhập v&agrave;o dữ liệu của hệ thống. C&aacute; nh&acirc;n hay tổ chức vi phạm sẽ bị tước bỏ mọi quyền lợi cũng như sẽ bị truy tố trước ph&aacute;p luật nếu cần thiết.<br />\r\nMọi th&ocirc;ng tin giao dịch sẽ được bảo mật ngoại trừ trong trường hợp cơ quan ph&aacute;p luật y&ecirc;u cầu.</p>\r\n\r\n<h2>9. C&aacute;c phương thức thanh to&aacute;n &aacute;p dụng tại GREENPHAR.COM</h2>\r\n\r\n<p>Qu&yacute; kh&aacute;ch c&oacute; thể tham khảo c&aacute;c phương thức thanh to&aacute;n sau đ&acirc;y v&agrave; lựa chọn &aacute;p dụng phương thức ph&ugrave; hợp:</p>\r\n\r\n<h3>C&aacute;ch 1: Thanh to&aacute;n trực tiếp (T&igrave;m đến chuỗi nh&agrave; thuốc b&aacute;n lẻ)</h3>\r\n\r\n<p>Bước 1: T&igrave;m hiểu th&ocirc;ng tin về sản phẩm<br />\r\nBước 2: Đến địa chỉ nh&agrave; thuốc b&aacute;n lẻ<br />\r\nBước 3: Người mua thanh to&aacute;n v&agrave; nhận h&agrave;ng</p>\r\n\r\n<h3>C&aacute;ch 2: Nhận h&agrave;ng thanh to&aacute;n tiền - COD</h3>\r\n\r\n<p>Bước 1: T&igrave;m hiểu th&ocirc;ng tin về sản phẩm<br />\r\nBước 2: X&aacute;c thực đơn h&agrave;ng (qua điện thoại, tin nhắn, email)<br />\r\nBước 3: Bộ phận CSKH của DP GREEN-PHAR sẽ li&ecirc;n hệ với qu&yacute; kh&aacute;ch để x&aacute;c nhận th&ocirc;ng tin v&agrave; đơn h&agrave;ng, đủ điều kiện đơn h&agrave;ng sẽ được chuyển qua cho bộ phận giao h&agrave;ng<br />\r\nBước 4: Giao h&agrave;ng<br />\r\nBước 5: Nhận h&agrave;ng v&agrave; thanh to&aacute;n</p>\r\n\r\n<h3>C&aacute;ch 3: Thanh to&aacute;n online qua thẻ t&iacute;n dụng, chuyển khoản</h3>\r\n\r\n<p>Bước 1: T&igrave;m hiểu th&ocirc;ng tin về sản phẩm<br />\r\nBước 2: X&aacute;c thực đơn h&agrave;ng (qua điện thoại, tin nhắn, email)<br />\r\nBước 3: Kh&aacute;ch h&agrave;ng thực hiện thanh to&aacute;n 100% gi&aacute; trị đơn h&agrave;ng (đơn h&agrave;ng thanh to&aacute;n th&agrave;nh c&ocirc;ng sẽ b&aacute;o qua điện thoại, tin nhắn, email)<br />\r\nBước 4: Bộ phận CSKH của DP GREEN-PHAR sẽ li&ecirc;n hệ với qu&yacute; kh&aacute;ch để x&aacute;c nhận th&ocirc;ng tin v&agrave; đơn h&agrave;ng, đủ điều kiện đơn h&agrave;ng sẽ được chuyển qua cho bộ phận giao h&agrave;ng<br />\r\nBước 5: Giao h&agrave;ng<br />\r\nBước 6: Kh&aacute;ch h&agrave;ng nhận h&agrave;ng.</p>\r\n\r\n<h2>10. Giải quyết tranh chấp</h2>\r\n\r\n<p>Bất kỳ tranh c&atilde;i, khiếu nại hoặc tranh chấp ph&aacute;t sinh từ hoặc li&ecirc;n quan đến giao dịch tại greenphar.com hoặc c&aacute;c Quy định v&agrave; Điều kiện n&agrave;y đều sẽ được giải quyết bằng h&igrave;nh thức thương lượng, h&ograve;a giải, trọng t&agrave;i v&agrave;/hoặc T&ograve;a &aacute;n theo Luật bảo vệ Người ti&ecirc;u d&ugrave;ng Chương 4 về Giải quyết tranh chấp giữa người ti&ecirc;u d&ugrave;ng v&agrave; tổ chức, c&aacute; nh&acirc;n kinh doanh h&agrave;ng h&oacute;a, dịch vụ.</p>\r\n\r\n<h2>11. Luật ph&aacute;p v&agrave; thẩm quyền tại L&atilde;nh thổ Việt Nam</h2>\r\n\r\n<p>Tất cả c&aacute;c Điều Khoản, Điều Kiện v&agrave; Hợp Đồng n&agrave;y (v&agrave; tất cả nghĩa vụ ph&aacute;t sinh ngo&agrave;i hợp đồng hoặc c&oacute; li&ecirc;n quan) sẽ bị chi phối v&agrave; được hiểu theo luật ph&aacute;p của Việt Nam. Nếu c&oacute; tranh chấp ph&aacute;t sinh bởi c&aacute;c Quy định Sử dụng n&agrave;y, qu&yacute; kh&aacute;ch h&agrave;ng c&oacute; quyền gửi khiếu nại/khiếu kiện l&ecirc;n T&ograve;a &aacute;n c&oacute; thẩm quyền tại Việt Nam để giải quyết.</p>\r\n', '', '', '', '', '', 0, 'dieu-khoan-su-dung', 'Điều khoản sử dụng', '', ''),
(56, 45, 'en', 'Điều khoản sử dụng', '', '<p>Nội dung&nbsp;Điều khoản sử dụng</p>\r\n', '', '', '', '', '', 0, 'dieu-khoan-su-dung', 'Điều khoản sử dụng', '', ''),
(57, 46, 'vn', 'page test 1', '', '', '', '', '', '', '', 0, 'page-test-1', 'page test 1', '', ''),
(58, 46, 'en', 'page test 1', '', '', '', '', '', '', '', 0, 'page-test-1', 'page test 1', '', ''),
(59, 47, 'vn', 'page test 2', '', '', '', '', '', '', '', 0, 'page-test-2', 'page test 2', '', ''),
(60, 47, 'en', 'page test 2', '', '', '', '', '', '', '', 0, 'page-test-2', 'page test 2', '', ''),
(61, 48, 'vn', 'page test 3', '', '', '', '', '', '', '', 0, 'page-test-3', 'page test 3', '', ''),
(62, 48, 'en', 'page test 3', '', '', '', '', '', '', '', 0, 'page-test-3', 'page test 3', '', ''),
(63, 49, 'vn', 'page test 4', '', '', '', '', '', '', '', 0, 'page-test-4', 'page test 4', '', ''),
(64, 49, 'en', 'page test 4', '', '', '', '', '', '', '', 0, 'page-test-4', 'page test 4', '', ''),
(65, 50, 'vn', 'page test 5', '', '', '', '', '', '', '', 0, 'page-test-5', 'page test 5', '', ''),
(66, 50, 'en', 'page test 5', '', '', '', '', '', '', '', 0, 'page-test-5', 'page test 5', '', ''),
(67, 51, 'vn', 'page test 6', '', '', '', '', '', '', '', 0, 'page-test-6', 'page test 6', '', ''),
(68, 51, 'en', 'page test 6', '', '', '', '', '', '', '', 0, 'page-test-6', 'page test 6', '', ''),
(69, 52, 'vn', 'page test 7', '', '', '', '', '', '', '', 0, 'page-test-7', 'page test 7', '', ''),
(70, 52, 'en', 'page test 7', '', '', '', '', '', '', '', 0, 'page-test-7', 'page test 7', '', ''),
(71, 53, 'vn', 'page test 8', '', '', '', '', '', '', '', 0, 'page-test-8', 'page test 8', '', ''),
(72, 53, 'en', 'page test 8', '', '', '', '', '', '', '', 0, 'page-test-8', 'page test 8', '', ''),
(73, 54, 'vn', 'page test 9', '', '', '', '', '', '', '', 0, 'page-test-9', 'page test 9', '', ''),
(74, 54, 'en', 'page test 9', '', '', '', '', '', '', '', 0, 'page-test-9', 'page test 9', '', ''),
(75, 55, 'vn', 'page test 10', '', '', '', '', '', '', '', 0, 'page-test-10', 'page test 10', '', ''),
(76, 55, 'en', 'page test 10', '', '', '', '', '', '', '', 0, 'page-test-10', 'page test 10', '', ''),
(77, 56, 'vn', 'page test 11', '', '', '', '', '', '', '', 0, 'page-test-11', 'page test 11', '', ''),
(78, 56, 'en', 'page test 11', '', '', '', '', '', '', '', 0, 'page-test-11', 'page test 11', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int(11) NOT NULL,
  `product_name` text COLLATE utf8_unicode_ci,
  `alias` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `product_des` text COLLATE utf8_unicode_ci,
  `product_des2` text COLLATE utf8_unicode_ci,
  `product_des3` text COLLATE utf8_unicode_ci,
  `product_content` text COLLATE utf8_unicode_ci,
  `product_content2` text COLLATE utf8_unicode_ci,
  `product_content3` text COLLATE utf8_unicode_ci,
  `product_price` float DEFAULT NULL,
  `product_price_sale` float DEFAULT NULL,
  `product_discount` float DEFAULT NULL,
  `product_img` text COLLATE utf8_unicode_ci,
  `product_sub_img` text COLLATE utf8_unicode_ci,
  `product_created_date` datetime DEFAULT NULL,
  `product_update_date` datetime DEFAULT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `product_hot` int(11) DEFAULT '0',
  `product_new` int(11) DEFAULT '0',
  `product_sale` int(11) DEFAULT '0',
  `product_code` text COLLATE utf8_unicode_ci,
  `product_original` text COLLATE utf8_unicode_ci,
  `product_size` text COLLATE utf8_unicode_ci,
  `product_package` text COLLATE utf8_unicode_ci,
  `product_delivery` text COLLATE utf8_unicode_ci,
  `product_delivery_time` text COLLATE utf8_unicode_ci,
  `product_payment` text COLLATE utf8_unicode_ci,
  `product_payment_type` text COLLATE utf8_unicode_ci,
  `product_sub_info1` text COLLATE utf8_unicode_ci,
  `product_sub_info2` text COLLATE utf8_unicode_ci,
  `product_sub_info3` text COLLATE utf8_unicode_ci,
  `product_sub_info4` text COLLATE utf8_unicode_ci,
  `product_sub_info5` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0',
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL,
  `product_material` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_shape` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_expiration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_producer` int(11) DEFAULT NULL,
  `product_review` text COLLATE utf8_unicode_ci,
  `productcat_ar` text COLLATE utf8_unicode_ci,
  `producttag_arr` varchar(10000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `alias`, `product_des`, `product_des2`, `product_des3`, `product_content`, `product_content2`, `product_content3`, `product_price`, `product_price_sale`, `product_discount`, `product_img`, `product_sub_img`, `product_created_date`, `product_update_date`, `productcat_id`, `product_hot`, `product_new`, `product_sale`, `product_code`, `product_original`, `product_size`, `product_package`, `product_delivery`, `product_delivery_time`, `product_payment`, `product_payment_type`, `product_sub_info1`, `product_sub_info2`, `product_sub_info3`, `product_sub_info4`, `product_sub_info5`, `state`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `product_material`, `product_shape`, `product_expiration`, `product_producer`, `product_review`, `productcat_ar`, `producttag_arr`) VALUES
(27, 'Sản phẩm 01', '', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<div>\r\n<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n</div>\r\n', '', '', 2000, 0, 0, 'p1.jpg', '["{\\"image\\":\\"7_12.jpg\\"}","{\\"image\\":\\"7_8.jpg\\"}","{\\"image\\":\\"7_6.jpg\\"}","{\\"image\\":\\"7_3_0.jpg\\"}","{\\"image\\":\\"7_2_0.jpg\\"}"]', '2017-05-22 00:05:19', '2018-03-05 18:03:47', 0, 1, 1, 0, '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Sản phẩm 01', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'san-pham-01', 'Rèm vải', NULL, 'Vải bóng', 'Cổ điển', '3 năm', 4, NULL, '164,164', ''),
(28, 'Sản phẩm 02', '', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', 2000, 0, 0, 'p2.jpg', '["{\\"image\\":\\"7_12.jpg\\"}","{\\"image\\":\\"7_8.jpg\\"}","{\\"image\\":\\"7_6.jpg\\"}","{\\"image\\":\\"7_5.jpg\\"}","{\\"image\\":\\"7_3_0.jpg\\"}"]', '2017-05-22 00:05:54', '2018-03-05 18:03:00', 0, 0, 0, 0, '02', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Sản phẩm 02', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'san-pham-02', 'Rèm vải', NULL, 'Vải bóng', 'Cổ điển', '3 năm', 5, NULL, '164,164', ''),
(29, 'Sản phẩm 03', '', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', 760000, 0, 0, 'p3.jpg', '["{\\"image\\":\\"7_12.jpg\\"}","{\\"image\\":\\"7_8.jpg\\"}","{\\"image\\":\\"7_6.jpg\\"}","{\\"image\\":\\"7_5.jpg\\"}","{\\"image\\":\\"7_3_0.jpg\\"}"]', '2017-05-22 00:05:49', '2017-12-30 18:12:27', 0, 1, 1, 0, '03', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Sản phẩm 03', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'san-pham-03', 'Rèm vải', NULL, 'Vải bóng', 'Cổ điển', '3 năm', 3, NULL, '164,164', ''),
(30, 'Sản phẩm 04', '', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', 7600000, 10000000, 0, 'p4.jpg', '[]', '2017-05-22 00:05:38', '2017-12-03 16:12:06', 0, 1, 1, 0, '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Sản phẩm 04', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'san-pham-04', 'Rèm vải', NULL, 'Vải bóng', 'Cổ điển', '3 năm', NULL, NULL, '164,164', ''),
(31, 'Sản phẩm 05', '', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', 760000, 0, 0, 'p5.jpg', '[]', '2017-05-22 00:05:30', '2017-12-03 16:12:17', 0, 1, 1, 0, '05', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Sản phẩm 05', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'san-pham-05', 'Rèm vải', NULL, 'Vải bóng', 'Cổ điển', '3 năm', NULL, NULL, '164,164', ''),
(32, 'Sản phẩm 06', '', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', 7600000, 10000000, 0, 'p6.jpg', '[]', '2017-05-22 00:05:13', '2017-12-03 16:12:29', 0, 0, 0, 0, '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Sản phẩm 06', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'san-pham-06', 'Rèm vải', NULL, 'Vải bóng', 'Cổ điển', '3 năm', NULL, NULL, '164,164', ''),
(33, 'Sản phẩm 07', '', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', 760000, 0, 0, 'p7.jpg', '[]', '2017-05-22 00:05:50', '2017-12-03 16:12:39', 0, 0, 0, 0, '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Sản phẩm 07', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'san-pham-07', 'Rèm vải', NULL, 'Vải bóng', 'Cổ điển', '3 năm', NULL, NULL, '164,164', '');
INSERT INTO `product` (`product_id`, `product_name`, `alias`, `product_des`, `product_des2`, `product_des3`, `product_content`, `product_content2`, `product_content3`, `product_price`, `product_price_sale`, `product_discount`, `product_img`, `product_sub_img`, `product_created_date`, `product_update_date`, `productcat_id`, `product_hot`, `product_new`, `product_sale`, `product_code`, `product_original`, `product_size`, `product_package`, `product_delivery`, `product_delivery_time`, `product_payment`, `product_payment_type`, `product_sub_info1`, `product_sub_info2`, `product_sub_info3`, `product_sub_info4`, `product_sub_info5`, `state`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `product_material`, `product_shape`, `product_expiration`, `product_producer`, `product_review`, `productcat_ar`, `producttag_arr`) VALUES
(34, 'Sản phẩm 08', '', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', 760000, 0, 0, 'p8.jpg', '[]', '2017-05-22 00:05:32', '2017-12-03 16:12:49', 0, 0, 0, 0, '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Sản phẩm 08', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'san-pham-08', 'Rèm vải', NULL, 'Vải bóng', 'Cổ điển', '3 năm', NULL, NULL, '164,164', ''),
(35, 'Sản phẩm 09', '', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', 760000, 0, 0, 'p9.jpg', '[]', '2017-05-22 00:05:17', '2017-12-03 16:12:03', 0, 1, 1, 0, '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Sản phẩm 09', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'san-pham-09', 'Rèm vải', NULL, 'Vải bóng', 'Cổ điển', '3 năm', NULL, NULL, '164,164', ''),
(36, 'Sản phẩm 10', '', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', 7600000, 10000000, 0, 'p10.jpg', '[]', '2017-05-22 00:05:50', '2017-12-03 16:12:12', 0, 0, 0, 0, '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Sản phẩm 10', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'san-pham-10', 'Rèm vải', NULL, 'Vải bóng', 'Cổ điển', '3 năm', 4, NULL, '164,164', ''),
(37, 'Sản phẩm 15', '', '<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t.</p>\r\n', '', '', '<div>\r\n<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t. Có lẽ sự ảnh hưởng của văn hóa Hàn là m&ocirc;̣t trong những lý do làm người Vi&ecirc;̣t ngày càng chu&ocirc;̣ng các sản ph&acirc;̉m từ của Hàn. Tuy nhi&ecirc;n kh&ocirc;ng th&ecirc;̉ phủ nh&acirc;̣n được ch&acirc;́t lượng của các sản ph&acirc;̉m Hàn Qu&ocirc;́c chính hãng có mặt tr&ecirc;n thị trường Vi&ecirc;̣t Nam.B&ecirc;̀ mặt gi&acirc;́y được phủ m&ocirc;̣t lớp vinyl giúp gi&acirc;́y ch&ocirc;́ng xước, ch&ocirc;́ng th&acirc;́m. Bạn có th&ecirc;̉ d&ecirc;̃ dàng sử dụng khăn &acirc;̉m đ&ecirc;̉ làm sạch b&ecirc;̀ mặt gi&acirc;́y hàng ngày mà kh&ocirc;ng lo gi&acirc;́y bị th&acirc;́m ướt, &acirc;̉m m&ocirc;́c</p>\r\n\r\n<p>B&ecirc;̀n màu, có khả năng chịu được các ch&acirc;́t ki&ecirc;̀m và axit.</p>\r\n\r\n<p>Màu sắc đa dạng phù hợp với mọi kh&ocirc;ng gian ki&ecirc;́n trúc. Với gi&acirc;́y dán tường Hàn Qu&ocirc;́c bạn có th&ecirc;̉ thoải mái sáng tạo n&ecirc;n những kh&ocirc;ng gian mà bạn thích có th&ecirc;̉ là m&ocirc;̣t kh&ocirc;ng gian c&acirc;̀n sự sang trọng tinh t&ecirc;́, m&ocirc;̣t kh&ocirc;ng gian lãng mạn, cá tính hay đơn giảnlà m&ocirc;̣t kh&ocirc;ng gian có chút tinh nghịch trẻ thơ.</p>\r\n\r\n<p>Giấy d&aacute;n tường H&agrave;n Quốc&nbsp;có th&ecirc;̉ giúp bạn tạo n&ecirc;n m&ocirc;̣t kh&ocirc;ng gian hoàn toàn mới mẻ cho ng&ocirc;i nhà của bạn. Đ&ocirc;i khi thay đ&ocirc;̉i m&ocirc;̣t chút kh&ocirc;ng gian s&ocirc;́ng từ chính những bức tường cuả ng&ocirc;i nhà có th&ecirc;̉ giúp những thành vi&ecirc;n trong gia đình của bạn xích lại g&acirc;̀n nhau hơn.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<h3>CHẤT LIỆU</h3>\r\n</div>\r\n\r\n<div>\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<p>Khổ giấy 1,06 m X 15,6 m=16,5m2</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<p>Giao động từ 1,150,000-1,450,000/cuộn</p>\r\n\r\n<p>hoặc 110,000-135,000/m2</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n</div>\r\n', '', '', 135000, 0, 0, 'p5.jpg', '["{\\"image\\":\\"7_12.jpg\\"}","{\\"image\\":\\"7_8.jpg\\"}","{\\"image\\":\\"7_6.jpg\\"}","{\\"image\\":\\"7_5.jpg\\"}","{\\"image\\":\\"7_3_0.jpg\\"}"]', '2017-05-22 00:05:55', '2017-12-03 16:12:50', 0, 1, 1, 0, '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Sản phẩm 15', 'Giấy dán tường  là một loại vật liệu trang trí đang rất được ưa chuộng trong mọi loại hình kiến trúc trên khắp thế giới. Ở Việt Nam thì các loại giấy dán tường cao cấp chủ yếu được nhập từ nước ngoài trong đó có loại giấy dán tường Hàn Quốc đang được ưa chuộng nhất.', 'san-pham-15', '4u-1', NULL, 'Giấy dán', 'Khổ đứng', '5 năm', NULL, NULL, '164,164', ''),
(38, 'Sản phẩm 14', '', '<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t.</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t. Có lẽ sự ảnh hưởng của văn hóa Hàn là m&ocirc;̣t trong những lý do làm người Vi&ecirc;̣t ngày càng chu&ocirc;̣ng các sản ph&acirc;̉m từ của Hàn. Tuy nhi&ecirc;n kh&ocirc;ng th&ecirc;̉ phủ nh&acirc;̣n được ch&acirc;́t lượng của các sản ph&acirc;̉m Hàn Qu&ocirc;́c chính hãng có mặt tr&ecirc;n thị trường Vi&ecirc;̣t Nam.B&ecirc;̀ mặt gi&acirc;́y được phủ m&ocirc;̣t lớp vinyl giúp gi&acirc;́y ch&ocirc;́ng xước, ch&ocirc;́ng th&acirc;́m. Bạn có th&ecirc;̉ d&ecirc;̃ dàng sử dụng khăn &acirc;̉m đ&ecirc;̉ làm sạch b&ecirc;̀ mặt gi&acirc;́y hàng ngày mà kh&ocirc;ng lo gi&acirc;́y bị th&acirc;́m ướt, &acirc;̉m m&ocirc;́c</p>\r\n\r\n<p>B&ecirc;̀n màu, có khả năng chịu được các ch&acirc;́t ki&ecirc;̀m và axit.</p>\r\n\r\n<p>Màu sắc đa dạng phù hợp với mọi kh&ocirc;ng gian ki&ecirc;́n trúc. Với gi&acirc;́y dán tường Hàn Qu&ocirc;́c bạn có th&ecirc;̉ thoải mái sáng tạo n&ecirc;n những kh&ocirc;ng gian mà bạn thích có th&ecirc;̉ là m&ocirc;̣t kh&ocirc;ng gian c&acirc;̀n sự sang trọng tinh t&ecirc;́, m&ocirc;̣t kh&ocirc;ng gian lãng mạn, cá tính hay đơn giảnlà m&ocirc;̣t kh&ocirc;ng gian có chút tinh nghịch trẻ thơ.</p>\r\n\r\n<p>Giấy d&aacute;n tường H&agrave;n Quốc&nbsp;có th&ecirc;̉ giúp bạn tạo n&ecirc;n m&ocirc;̣t kh&ocirc;ng gian hoàn toàn mới mẻ cho ng&ocirc;i nhà của bạn. Đ&ocirc;i khi thay đ&ocirc;̉i m&ocirc;̣t chút kh&ocirc;ng gian s&ocirc;́ng từ chính những bức tường cuả ng&ocirc;i nhà có th&ecirc;̉ giúp những thành vi&ecirc;n trong gia đình của bạn xích lại g&acirc;̀n nhau hơn.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Khổ giấy 1,06 m X 15,6 m=16,5m2</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>Giao động từ 1,150,000-1,450,000/cuộn</p>\r\n\r\n<p>hoặc 110,000-135,000/m2</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', 135000, 0, 0, 'p4.jpg', '[]', '2017-05-22 00:05:39', '2017-12-03 16:12:38', 0, 1, 1, 0, '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Sản phẩm 14', 'Giấy dán tường  là một loại vật liệu trang trí đang rất được ưa chuộng trong mọi loại hình kiến trúc trên khắp thế giới. Ở Việt Nam thì các loại giấy dán tường cao cấp chủ yếu được nhập từ nước ngoài trong đó có loại giấy dán tường Hàn Quốc đang được ưa chuộng nhất.', 'san-pham-14', '4u-2', NULL, 'Giấy dán', 'Khổ đứng', '5 năm', NULL, NULL, '164,164', ''),
(65, 'Sản phẩm 11', '', '<p>L&uacute;c 11 giờ 45 ph&uacute;t ng&agrave;y, h&agrave;ng loạt t&agrave;i xế c&ugrave;ng mang tiền mệnh gi&aacute; thấp v&agrave; mệnh gi&aacute; cao để qua trạm BOT Cai Lậy. Ban đầu, một t&agrave;i xế đi xe c&oacute; BKS tỉnh Cần Thơ đ&atilde; đưa nhiều tờ tiền mệnh gi&aacute; thấp, tổng số tiền l&agrave; 25.100 đồng.</p>\r\n\r\n<p>Sau đ&oacute;, nh&acirc;n vi&ecirc;n thối lại 200 đồng. T&agrave;i xế n&agrave;y kh&ocirc;ng đồng &yacute; nhận tiền dư, y&ecirc;u cầu nh&acirc;n vi&ecirc;n phải đưa đ&uacute;ng 100 đồng. Ngo&agrave;i ra, c&oacute; một số t&agrave;i xế đưa tiền mệnh gi&aacute; 500.000 đồng.</p>\r\n\r\n<p>Thấy &ugrave;n tắc, CSGT đ&atilde; y&ecirc;u cầu t&agrave;i xế ra khu vực đưa tiền lẻ. Tuy nhi&ecirc;n, t&agrave;i xế kh&ocirc;ng chịu n&ecirc;n xe cẩu đ&atilde; được huy động đưa xe đi. Sau đ&oacute;, đơn vị quản l&yacute; đ&atilde; phải xả trạm.</p>\r\n\r\n<p>Đại t&aacute; Trương Văn S&aacute;ng, Trưởng C&ocirc;ng an huyện Cai Lậy, cho biết việc tăng cường lực lượng chức năng để tr&aacute;nh t&igrave;nh trạng g&acirc;y rối hoặc &ugrave;n tắc giao th&ocirc;ng. Về việc t&agrave;i xế đưa tiền mệnh gi&aacute; cao hoặc mệnh gi&aacute; thấp th&igrave; c&ocirc;ng an kh&ocirc;ng xử l&yacute;.</p>\r\n\r\n<p><strong>C&ocirc;ng an l&agrave;m việc hai với bảo mẫu bạo h&agrave;nh trẻ</strong></p>\r\n\r\n<p>Ng&agrave;y 29/11, Đại t&aacute; Đo&agrave;n Văn Ph&uacute;c, Trưởng C&ocirc;ng an quận 12 (TP.Hồ Ch&iacute; Minh) cho biết, li&ecirc;n quan đến vụ việc những bảo mẫu ở cơ sở mầm non Mầm Xanh h&agrave;nh hạ trẻ em, bảo mẫu Nguyễn Thị Đ&agrave;o (23 tuổi) đ&atilde; đến c&ocirc;ng an quận 12 tr&igrave;nh diện.</p>\r\n', '', '', '<p>L&uacute;c 11 giờ 45 ph&uacute;t ng&agrave;y, h&agrave;ng loạt t&agrave;i xế c&ugrave;ng mang tiền mệnh gi&aacute; thấp v&agrave; mệnh gi&aacute; cao để qua trạm BOT Cai Lậy. Ban đầu, một t&agrave;i xế đi xe c&oacute; BKS tỉnh Cần Thơ đ&atilde; đưa nhiều tờ tiền mệnh gi&aacute; thấp, tổng số tiền l&agrave; 25.100 đồng.</p>\r\n\r\n<p>Sau đ&oacute;, nh&acirc;n vi&ecirc;n thối lại 200 đồng. T&agrave;i xế n&agrave;y kh&ocirc;ng đồng &yacute; nhận tiền dư, y&ecirc;u cầu nh&acirc;n vi&ecirc;n phải đưa đ&uacute;ng 100 đồng. Ngo&agrave;i ra, c&oacute; một số t&agrave;i xế đưa tiền mệnh gi&aacute; 500.000 đồng.</p>\r\n\r\n<p>Thấy &ugrave;n tắc, CSGT đ&atilde; y&ecirc;u cầu t&agrave;i xế ra khu vực đưa tiền lẻ. Tuy nhi&ecirc;n, t&agrave;i xế kh&ocirc;ng chịu n&ecirc;n xe cẩu đ&atilde; được huy động đưa xe đi. Sau đ&oacute;, đơn vị quản l&yacute; đ&atilde; phải xả trạm.</p>\r\n\r\n<p>Đại t&aacute; Trương Văn S&aacute;ng, Trưởng C&ocirc;ng an huyện Cai Lậy, cho biết việc tăng cường lực lượng chức năng để tr&aacute;nh t&igrave;nh trạng g&acirc;y rối hoặc &ugrave;n tắc giao th&ocirc;ng. Về việc t&agrave;i xế đưa tiền mệnh gi&aacute; cao hoặc mệnh gi&aacute; thấp th&igrave; c&ocirc;ng an kh&ocirc;ng xử l&yacute;.</p>\r\n\r\n<p><strong>C&ocirc;ng an l&agrave;m việc hai với bảo mẫu bạo h&agrave;nh trẻ</strong></p>\r\n\r\n<p>Ng&agrave;y 29/11, Đại t&aacute; Đo&agrave;n Văn Ph&uacute;c, Trưởng C&ocirc;ng an quận 12 (TP.Hồ Ch&iacute; Minh) cho biết, li&ecirc;n quan đến vụ việc những bảo mẫu ở cơ sở mầm non Mầm Xanh h&agrave;nh hạ trẻ em, bảo mẫu Nguyễn Thị Đ&agrave;o (23 tuổi) đ&atilde; đến c&ocirc;ng an quận 12 tr&igrave;nh diện.</p>\r\n', '', '', 0, 0, 0, 'p1.jpg', '[]', '2017-11-30 20:11:47', '2017-12-03 16:12:27', 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Sản phẩm 11', '', 'san-pham-11', '', 1, '', '', '', NULL, NULL, '177,164,164', ''),
(66, 'Sản phẩm 12', '', '<p>L&uacute;c 11 giờ 45 ph&uacute;t ng&agrave;y, h&agrave;ng loạt t&agrave;i xế c&ugrave;ng mang tiền mệnh gi&aacute; thấp v&agrave; mệnh gi&aacute; cao để qua trạm BOT Cai Lậy. Ban đầu, một t&agrave;i xế đi xe c&oacute; BKS tỉnh Cần Thơ đ&atilde; đưa nhiều tờ tiền mệnh gi&aacute; thấp, tổng số tiền l&agrave; 25.100 đồng.</p>\r\n\r\n<p>Sau đ&oacute;, nh&acirc;n vi&ecirc;n thối lại 200 đồng. T&agrave;i xế n&agrave;y kh&ocirc;ng đồng &yacute; nhận tiền dư, y&ecirc;u cầu nh&acirc;n vi&ecirc;n phải đưa đ&uacute;ng 100 đồng. Ngo&agrave;i ra, c&oacute; một số t&agrave;i xế đưa tiền mệnh gi&aacute; 500.000 đồng.</p>\r\n\r\n<p>Thấy &ugrave;n tắc, CSGT đ&atilde; y&ecirc;u cầu t&agrave;i xế ra khu vực đưa tiền lẻ. Tuy nhi&ecirc;n, t&agrave;i xế kh&ocirc;ng chịu n&ecirc;n xe cẩu đ&atilde; được huy động đưa xe đi. Sau đ&oacute;, đơn vị quản l&yacute; đ&atilde; phải xả trạm.</p>\r\n\r\n<p>Đại t&aacute; Trương Văn S&aacute;ng, Trưởng C&ocirc;ng an huyện Cai Lậy, cho biết việc tăng cường lực lượng chức năng để tr&aacute;nh t&igrave;nh trạng g&acirc;y rối hoặc &ugrave;n tắc giao th&ocirc;ng. Về việc t&agrave;i xế đưa tiền mệnh gi&aacute; cao hoặc mệnh gi&aacute; thấp th&igrave; c&ocirc;ng an kh&ocirc;ng xử l&yacute;.</p>\r\n\r\n<p><strong>C&ocirc;ng an l&agrave;m việc hai với bảo mẫu bạo h&agrave;nh trẻ</strong></p>\r\n\r\n<p>Ng&agrave;y 29/11, Đại t&aacute; Đo&agrave;n Văn Ph&uacute;c, Trưởng C&ocirc;ng an quận 12 (TP.Hồ Ch&iacute; Minh) cho biết, li&ecirc;n quan đến vụ việc những bảo mẫu ở cơ sở mầm non Mầm Xanh h&agrave;nh hạ trẻ em, bảo mẫu Nguyễn Thị Đ&agrave;o (23 tuổi) đ&atilde; đến c&ocirc;ng an quận 12 tr&igrave;nh diện.</p>\r\n', '', '', '<p>L&uacute;c 11 giờ 45 ph&uacute;t ng&agrave;y, h&agrave;ng loạt t&agrave;i xế c&ugrave;ng mang tiền mệnh gi&aacute; thấp v&agrave; mệnh gi&aacute; cao để qua trạm BOT Cai Lậy. Ban đầu, một t&agrave;i xế đi xe c&oacute; BKS tỉnh Cần Thơ đ&atilde; đưa nhiều tờ tiền mệnh gi&aacute; thấp, tổng số tiền l&agrave; 25.100 đồng.</p>\r\n\r\n<p>Sau đ&oacute;, nh&acirc;n vi&ecirc;n thối lại 200 đồng. T&agrave;i xế n&agrave;y kh&ocirc;ng đồng &yacute; nhận tiền dư, y&ecirc;u cầu nh&acirc;n vi&ecirc;n phải đưa đ&uacute;ng 100 đồng. Ngo&agrave;i ra, c&oacute; một số t&agrave;i xế đưa tiền mệnh gi&aacute; 500.000 đồng.</p>\r\n\r\n<p>Thấy &ugrave;n tắc, CSGT đ&atilde; y&ecirc;u cầu t&agrave;i xế ra khu vực đưa tiền lẻ. Tuy nhi&ecirc;n, t&agrave;i xế kh&ocirc;ng chịu n&ecirc;n xe cẩu đ&atilde; được huy động đưa xe đi. Sau đ&oacute;, đơn vị quản l&yacute; đ&atilde; phải xả trạm.</p>\r\n\r\n<p>Đại t&aacute; Trương Văn S&aacute;ng, Trưởng C&ocirc;ng an huyện Cai Lậy, cho biết việc tăng cường lực lượng chức năng để tr&aacute;nh t&igrave;nh trạng g&acirc;y rối hoặc &ugrave;n tắc giao th&ocirc;ng. Về việc t&agrave;i xế đưa tiền mệnh gi&aacute; cao hoặc mệnh gi&aacute; thấp th&igrave; c&ocirc;ng an kh&ocirc;ng xử l&yacute;.</p>\r\n\r\n<p><strong>C&ocirc;ng an l&agrave;m việc hai với bảo mẫu bạo h&agrave;nh trẻ</strong></p>\r\n\r\n<p>Ng&agrave;y 29/11, Đại t&aacute; Đo&agrave;n Văn Ph&uacute;c, Trưởng C&ocirc;ng an quận 12 (TP.Hồ Ch&iacute; Minh) cho biết, li&ecirc;n quan đến vụ việc những bảo mẫu ở cơ sở mầm non Mầm Xanh h&agrave;nh hạ trẻ em, bảo mẫu Nguyễn Thị Đ&agrave;o (23 tuổi) đ&atilde; đến c&ocirc;ng an quận 12 tr&igrave;nh diện.</p>\r\n', '', '', 0, 0, 0, 'p2.jpg', '[]', '2017-11-30 20:11:11', '2017-12-03 16:12:39', 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Sản phẩm 12', '', 'san-pham-12', '', 1, '', '', '', NULL, NULL, '164,164', ''),
(67, 'Sản phẩm 13', '', '<p>L&uacute;c 11 giờ 45 ph&uacute;t ng&agrave;y, h&agrave;ng loạt t&agrave;i xế c&ugrave;ng mang tiền mệnh gi&aacute; thấp v&agrave; mệnh gi&aacute; cao để qua trạm BOT Cai Lậy. Ban đầu, một t&agrave;i xế đi xe c&oacute; BKS tỉnh Cần Thơ đ&atilde; đưa nhiều tờ tiền mệnh gi&aacute; thấp, tổng số tiền l&agrave; 25.100 đồng.</p>\r\n\r\n<p>Sau đ&oacute;, nh&acirc;n vi&ecirc;n thối lại 200 đồng. T&agrave;i xế n&agrave;y kh&ocirc;ng đồng &yacute; nhận tiền dư, y&ecirc;u cầu nh&acirc;n vi&ecirc;n phải đưa đ&uacute;ng 100 đồng. Ngo&agrave;i ra, c&oacute; một số t&agrave;i xế đưa tiền mệnh gi&aacute; 500.000 đồng.</p>\r\n\r\n<p>Thấy &ugrave;n tắc, CSGT đ&atilde; y&ecirc;u cầu t&agrave;i xế ra khu vực đưa tiền lẻ. Tuy nhi&ecirc;n, t&agrave;i xế kh&ocirc;ng chịu n&ecirc;n xe cẩu đ&atilde; được huy động đưa xe đi. Sau đ&oacute;, đơn vị quản l&yacute; đ&atilde; phải xả trạm.</p>\r\n\r\n<p style="text-align:center"><img alt="" height="257" src="/image/images/2018-02-06%2016_22_51-Boniza.png" width="600" /></p>\r\n\r\n<p>Đại t&aacute; Trương Văn S&aacute;ng, Trưởng C&ocirc;ng an huyện Cai Lậy, cho biết việc tăng cường lực lượng chức năng để tr&aacute;nh t&igrave;nh trạng g&acirc;y rối hoặc &ugrave;n tắc giao th&ocirc;ng. Về việc t&agrave;i xế đưa tiền mệnh gi&aacute; cao hoặc mệnh gi&aacute; thấp th&igrave; c&ocirc;ng an kh&ocirc;ng xử l&yacute;.</p>\r\n\r\n<p><strong>C&ocirc;ng an l&agrave;m việc hai với bảo mẫu bạo h&agrave;nh trẻ</strong></p>\r\n\r\n<p>Ng&agrave;y 29/11, Đại t&aacute; Đo&agrave;n Văn Ph&uacute;c, Trưởng C&ocirc;ng an quận 12 (TP.Hồ Ch&iacute; Minh) cho biết, li&ecirc;n quan đến vụ việc những bảo mẫu ở cơ sở mầm non Mầm Xanh h&agrave;nh hạ trẻ em, bảo mẫu Nguyễn Thị Đ&agrave;o (23 tuổi) đ&atilde; đến c&ocirc;ng an quận 12 tr&igrave;nh diện.</p>\r\n', '', '', '<p>L&uacute;c 11 giờ 45 ph&uacute;t ng&agrave;y, h&agrave;ng loạt t&agrave;i xế c&ugrave;ng mang tiền mệnh gi&aacute; thấp v&agrave; mệnh gi&aacute; cao để qua trạm BOT Cai Lậy. Ban đầu, một t&agrave;i xế đi xe c&oacute; BKS tỉnh Cần Thơ đ&atilde; đưa nhiều tờ tiền mệnh gi&aacute; thấp, tổng số tiền l&agrave; 25.100 đồng.</p>\r\n\r\n<p>Sau đ&oacute;, nh&acirc;n vi&ecirc;n thối lại 200 đồng. T&agrave;i xế n&agrave;y kh&ocirc;ng đồng &yacute; nhận tiền dư, y&ecirc;u cầu nh&acirc;n vi&ecirc;n phải đưa đ&uacute;ng 100 đồng. Ngo&agrave;i ra, c&oacute; một số t&agrave;i xế đưa tiền mệnh gi&aacute; 500.000 đồng.</p>\r\n\r\n<p style="text-align:center"><img alt="" height="257" src="/image/images/2018-02-06%2016_22_51-Boniza(1).png" width="600" /></p>\r\n\r\n<p>Thấy &ugrave;n tắc, CSGT đ&atilde; y&ecirc;u cầu t&agrave;i xế ra khu vực đưa tiền lẻ. Tuy nhi&ecirc;n, t&agrave;i xế kh&ocirc;ng chịu n&ecirc;n xe cẩu đ&atilde; được huy động đưa xe đi. Sau đ&oacute;, đơn vị quản l&yacute; đ&atilde; phải xả trạm.</p>\r\n\r\n<p>Đại t&aacute; Trương Văn S&aacute;ng, Trưởng C&ocirc;ng an huyện Cai Lậy, cho biết việc tăng cường lực lượng chức năng để tr&aacute;nh t&igrave;nh trạng g&acirc;y rối hoặc &ugrave;n tắc giao th&ocirc;ng. Về việc t&agrave;i xế đưa tiền mệnh gi&aacute; cao hoặc mệnh gi&aacute; thấp th&igrave; c&ocirc;ng an kh&ocirc;ng xử l&yacute;.</p>\r\n\r\n<p><strong>C&ocirc;ng an l&agrave;m việc hai với bảo mẫu bạo h&agrave;nh trẻ</strong></p>\r\n\r\n<p>Ng&agrave;y 29/11, Đại t&aacute; Đo&agrave;n Văn Ph&uacute;c, Trưởng C&ocirc;ng an quận 12 (TP.Hồ Ch&iacute; Minh) cho biết, li&ecirc;n quan đến vụ việc những bảo mẫu ở cơ sở mầm non Mầm Xanh h&agrave;nh hạ trẻ em, bảo mẫu Nguyễn Thị Đ&agrave;o (23 tuổi) đ&atilde; đến c&ocirc;ng an quận 12 tr&igrave;nh diện.</p>\r\n', '', '', 0, 0, 0, 'p3.jpg', '["{\\"image\\":\\"p1.jpg\\"}","{\\"image\\":\\"p9.jpg\\"}","{\\"image\\":\\"p10.jpg\\"}"]', '2017-11-30 20:11:55', '2018-02-23 00:02:36', 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Sản phẩm 13', '', 'san-pham-13', '', 1, '', '', '', NULL, NULL, '164,164', 'a:1:{i:0;s:1:"7";}');

-- --------------------------------------------------------

--
-- Table structure for table `productcat`
--

CREATE TABLE IF NOT EXISTS `productcat` (
  `productcat_id` int(11) NOT NULL,
  `productcat_name` text COLLATE utf8_unicode_ci,
  `productcat_des` text COLLATE utf8_unicode_ci,
  `productcat_content` text COLLATE utf8_unicode_ci,
  `productcat_parent` int(11) NOT NULL DEFAULT '0',
  `productcat_sort_order` int(11) NOT NULL DEFAULT '0',
  `productcat_img` text COLLATE utf8_unicode_ci,
  `productcat_created_date` datetime DEFAULT NULL,
  `productcat_update_date` datetime DEFAULT NULL,
  `productcat_sub_info1` text COLLATE utf8_unicode_ci,
  `productcat_sub_info2` text COLLATE utf8_unicode_ci,
  `productcat_sub_info3` text COLLATE utf8_unicode_ci,
  `productcat_sub_info4` text COLLATE utf8_unicode_ci,
  `productcat_sub_info5` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0',
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `productcat`
--

INSERT INTO `productcat` (`productcat_id`, `productcat_name`, `productcat_des`, `productcat_content`, `productcat_parent`, `productcat_sort_order`, `productcat_img`, `productcat_created_date`, `productcat_update_date`, `productcat_sub_info1`, `productcat_sub_info2`, `productcat_sub_info3`, `productcat_sub_info4`, `productcat_sub_info5`, `state`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(163, 'Danh mục sản phẩm 1', '<p>M&ocirc; tả Danh mục sản phẩm 1</p>\r\n', '<p>Chi tiết danh mục sản phẩm 1</p>\r\n', 0, 0, 'p6.jpg', '2017-12-03 16:12:04', NULL, '', '', '', '', '', 1, 'Danh mục sản phẩm 1', '', 'danh-muc-san-pham-1', '', 1),
(164, 'Danh mục sản phẩm 2', '<p>M&ocirc; tả danh mục sản phẩm 2</p>\r\n', '<p>Chi tiết danh mục san phẩm 2</p>\r\n', 0, 0, 'p5.jpg', '2017-12-03 16:12:55', NULL, '', '', '', '', '', 1, 'Danh mục sản phẩm 2', '', 'danh-muc-san-pham-2', '', 1),
(165, 'Danh mục sản phẩm 3', '<p>M&ocirc; tả Danh mục sản phẩm 3</p>\r\n', '<p>Chi tiết danh mục sản phẩm 3</p>\r\n', 0, 0, 'p4.jpg', '2017-12-03 16:12:44', NULL, '', '', '', '', '', 1, 'Danh mục sản phẩm 3', '', 'danh-muc-san-pham-3', '', 1),
(166, 'Danh mục sản phẩm 4', '<p>M&ocirc; tả danh mục sản phẩm 4</p>\r\n', '<p>Chi tiết Danh mục sản phẩm 4</p>\r\n', 0, 0, 'p8.jpg', '2017-12-03 16:12:32', NULL, '', '', '', '', '', 1, 'Danh mục sản phẩm 4', '', 'danh-muc-san-pham-4', '', 1),
(167, 'Danh mục sản phẩm 5', '<p>M&ocirc; tả Danh mục sản phẩm 5</p>\r\n', '<p>Chi tiết Danh mục sản phẩm 5</p>\r\n', 0, 0, 'p2.jpg', '2017-12-03 16:12:27', NULL, '', '', '', '', '', 1, 'Danh mục sản phẩm 5', '', 'danh-muc-san-pham-5', '', 1),
(168, 'Danh mục sản phẩm 6', '<p>M&ocirc; tả Danh mục sản phẩm 6</p>\r\n', '<p>Chi tiết Danh muc sản phẩm 6</p>\r\n', 0, 1, 'p1.jpg', '2017-12-29 14:12:20', NULL, '', '', '', '', '', 1, 'Danh mục sản phẩm 6', '', 'danh-muc-san-pham-6', '', 1),
(169, 'Danh mục sản phẩm 4.1', '<p>M&ocirc; tả Danh muc sản phẩm 4.1</p>\r\n', '<p>Chi tiết Danh mục sản phẩm 4.2</p>\r\n', 166, 0, 'p3.jpg', '2017-12-03 16:12:33', NULL, '', '', '', '', '', 1, 'Danh mục sản phẩm 4.1', '', 'danh-muc-san-pham-41', '', 1),
(170, 'Danh mục sản phẩm 4.2', '<p>M&ocirc; tả danh mục sản phẩm 4.2</p>\r\n', '<p>Chi tiết Danh mục sản phẩm 4.2</p>\r\n', 166, 0, 'p2.jpg', '2017-12-03 16:12:22', NULL, '', '', '', '', '', 1, 'Danh mục sản phẩm 4.2', '', 'danh-muc-san-pham-42', '', 1),
(171, 'Danh mục sản phẩm 4.3', '<p>M&ocirc; tả Danh mục sản phẩm 4.3</p>\r\n', '<p>Chi tiết Danh mục sản phẩm 4.3</p>\r\n', 166, 0, 'p1.jpg', '2017-12-03 16:12:08', NULL, '', '', '', '', '', 1, 'Danh mục sản phẩm 4.3', '', 'danh-muc-san-pham-43', '', 1),
(172, 'Danh mục sản phẩm 4.4', '<p>M&ocirc; tả Danh s&aacute;ch sản phẩm 4.4</p>\r\n', '<p>Chi tiết Danh mục sản phẩm 4.4</p>\r\n', 166, 0, 'p10.jpg', '2017-12-03 16:12:55', NULL, '', '', '', '', '', 1, 'Danh mục sản phẩm 4.4', '', 'danh-muc-san-pham-44', '', 1),
(173, 'Danh mục sản phẩm 4.5', '<p>M&ocirc; tả Danh mục sản phẩm 4.5</p>\r\n', '<p>Chi tiết Danh mục sản phẩm 4.5</p>\r\n', 166, 0, 'p9.jpg', '2017-12-03 16:12:45', NULL, '', '', '', '', '', 1, 'Danh mục sản phẩm 4.5', '', 'danh-muc-san-pham-45', '', 1),
(174, 'Danh mục sản phẩm 5.1', '<p>M&ocirc; tả Danh mục sản phẩm 5.1</p>\r\n', '<p>Chi tiết Danh mục sản phẩm 5.1</p>\r\n', 167, 0, 'p7.jpg', '2017-12-03 16:12:20', NULL, '', '', '', '', '', 1, 'Danh mục sản phẩm 5.1', '', 'danh-muc-san-pham-51', '', 1),
(175, 'Danh mục sản phẩm 5.2', '<p>M&ocirc; tả Danh mục sản phẩm 5.2</p>\r\n', '<p>Chi tiết Danh mục sản phẩm 5.2</p>\r\n', 167, 0, 'p6.jpg', '2017-12-03 16:12:08', NULL, '', '', '', '', '', 1, 'Danh mục sản phẩm 5.2', '', 'danh-muc-san-pham-52', '', 1),
(176, 'Danh mục sản phẩm 5.3', '<p>M&ocirc; tả Danh mục sản phẩm 5.3</p>\r\n', '<p>Chi tiết Danh muc sản phẩm 5.3</p>\r\n', 167, 0, 'p5.jpg', '2017-12-03 16:12:57', NULL, '', '', '', '', '', 1, 'Danh mục sản phẩm 5.3', '', 'danh-muc-san-pham-53', '', 1),
(177, 'Danh mục sản phẩm 5.4', '<p>M&ocirc; tả Danh mục sản phẩm 5.4</p>\r\n', '<p>Chi tiết Sản phẩm 5.4</p>\r\n', 167, 0, 'p4.jpg', '2017-12-03 16:12:48', NULL, '', '', '', '', '', 1, 'Danh mục sản phẩm 5.4', '', 'danh-muc-san-pham-54', '', 1),
(178, 'Danh mục sản phẩm 5.5', '<p>M&ocirc; tả danh mục sản phẩm 5.5</p>\r\n', '<p>Chi tiết Danh muc sản phẩm 5.5</p>\r\n', 167, 0, 'p3.jpg', '2017-12-03 16:12:38', NULL, '', '', '', '', '', 1, 'Danh mục sản phẩm 5.5', '', 'danh-muc-san-pham-55', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `productcat_languages`
--

CREATE TABLE IF NOT EXISTS `productcat_languages` (
  `id` bigint(20) NOT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `lang_productcat_name` text COLLATE utf8_unicode_ci,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_des` text COLLATE utf8_unicode_ci,
  `lang_productcat_content` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=343 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `productcat_languages`
--

INSERT INTO `productcat_languages` (`id`, `productcat_id`, `lang_productcat_name`, `languages_code`, `lang_productcat_des`, `lang_productcat_content`, `lang_productcat_sub_info1`, `lang_productcat_sub_info2`, `lang_productcat_sub_info3`, `lang_productcat_sub_info4`, `lang_productcat_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(311, 163, 'Danh mục sản phẩm 1', 'vn', '<p>M&ocirc; tả Danh mục sản phẩm 1</p>\r\n', '<p>Chi tiết danh mục sản phẩm 1</p>\r\n', '', '', '', '', '', 0, 'danh-muc-san-pham-1', '', 'Danh mục sản phẩm 1', ''),
(312, 163, 'Danh mục sản phẩm 1', 'en', '<p>M&ocirc; tả Danh mục sản phẩm 1</p>\r\n', '<p>Chi tiết danh mục sản phẩm 1</p>\r\n', '', '', '', '', '', 0, 'danh-muc-san-pham-1', '', 'Danh mục sản phẩm 1', ''),
(313, 164, 'Danh mục sản phẩm 2', 'vn', '<p>Mô tả danh mục sản phẩm 2</p>\r\n', '<p>Chi tiết danh mục san phẩm 2</p>\r\n', '', '', '', '', '', 1, 'danh-muc-san-pham-2', '', 'Danh mục sản phẩm 2', ''),
(314, 164, 'Category Product 2', 'en', '<p>Mô tả danh mục sản phẩm 2</p>\r\n', '<p>Chi tiết danh mục san phẩm 2</p>\r\n', '', '', '', '', '', 1, 'category-product-2', '', 'Danh mục sản phẩm 2', ''),
(315, 165, 'Danh mục sản phẩm 3', 'vn', '<p>M&ocirc; tả Danh mục sản phẩm 3</p>\r\n', '<p>Chi tiết danh mục sản phẩm 3</p>\r\n', '', '', '', '', '', 0, 'danh-muc-san-pham-3', '', 'Danh mục sản phẩm 3', ''),
(316, 165, 'Danh mục sản phẩm 3', 'en', '<p>M&ocirc; tả Danh mục sản phẩm 3</p>\r\n', '<p>Chi tiết danh mục sản phẩm 3</p>\r\n', '', '', '', '', '', 0, 'danh-muc-san-pham-3', '', 'Danh mục sản phẩm 3', ''),
(317, 166, 'Danh mục sản phẩm 4', 'vn', '<p>M&ocirc; tả danh mục sản phẩm 4</p>\r\n', '<p>Chi tiết Danh mục sản phẩm 4</p>\r\n', '', '', '', '', '', 0, 'danh-muc-san-pham-4', '', 'Danh mục sản phẩm 4', ''),
(318, 166, 'Danh mục sản phẩm 4', 'en', '<p>M&ocirc; tả danh mục sản phẩm 4</p>\r\n', '<p>Chi tiết Danh mục sản phẩm 4</p>\r\n', '', '', '', '', '', 0, 'danh-muc-san-pham-4', '', 'Danh mục sản phẩm 4', ''),
(319, 167, 'Danh mục sản phẩm 5', 'vn', '<p>M&ocirc; tả Danh mục sản phẩm 5</p>\r\n', '<p>Chi tiết Danh mục sản phẩm 5</p>\r\n', '', '', '', '', '', 0, 'danh-muc-san-pham-5', '', 'Danh mục sản phẩm 5', ''),
(320, 167, 'Danh mục sản phẩm 5', 'en', '<p>M&ocirc; tả Danh mục sản phẩm 5</p>\r\n', '<p>Chi tiết Danh mục sản phẩm 5</p>\r\n', '', '', '', '', '', 0, 'danh-muc-san-pham-5', '', 'Danh mục sản phẩm 5', ''),
(321, 168, 'Danh mục sản phẩm 6', 'vn', '<p>M&ocirc; tả Danh mục sản phẩm 6</p>\r\n', '<p>Chi tiết Danh muc sản phẩm 6</p>\r\n', '', '', '', '', '', 1, 'danh-muc-san-pham-6', '', 'Danh mục sản phẩm 6', ''),
(322, 168, 'Danh mục sản phẩm 6', 'en', '<p>Mô tả Danh mục sản phẩm 6</p>\r\n', '<p>Chi tiết Danh muc sản phẩm 6</p>\r\n', '', '', '', '', '', 1, 'danh-muc-san-pham-6', '', 'Danh mục sản phẩm 6', ''),
(323, 169, 'Danh mục sản phẩm 4.1', 'vn', '<p>M&ocirc; tả Danh muc sản phẩm 4.1</p>\r\n', '<p>Chi tiết Danh mục sản phẩm 4.2</p>\r\n', '', '', '', '', '', 0, 'danh-muc-san-pham-41', '', 'Danh mục sản phẩm 4.1', ''),
(324, 169, 'Danh mục sản phẩm 4.1', 'en', '<p>M&ocirc; tả Danh muc sản phẩm 4.1</p>\r\n', '<p>Chi tiết Danh mục sản phẩm 4.2</p>\r\n', '', '', '', '', '', 0, 'danh-muc-san-pham-41', '', 'Danh mục sản phẩm 4.1', ''),
(325, 170, 'Danh mục sản phẩm 4.2', 'vn', '<p>M&ocirc; tả danh mục sản phẩm 4.2</p>\r\n', '<p>Chi tiết Danh mục sản phẩm 4.2</p>\r\n', '', '', '', '', '', 0, 'danh-muc-san-pham-42', '', 'Danh mục sản phẩm 4.2', ''),
(326, 170, 'Danh mục sản phẩm 4.2', 'en', '<p>M&ocirc; tả danh mục sản phẩm 4.2</p>\r\n', '<p>Chi tiết Danh mục sản phẩm 4.2</p>\r\n', '', '', '', '', '', 0, 'danh-muc-san-pham-42', '', 'Danh mục sản phẩm 4.2', ''),
(327, 171, 'Danh mục sản phẩm 4.3', 'vn', '<p>M&ocirc; tả Danh mục sản phẩm 4.3</p>\r\n', '<p>Chi tiết Danh mục sản phẩm 4.3</p>\r\n', '', '', '', '', '', 0, 'danh-muc-san-pham-43', '', 'Danh mục sản phẩm 4.3', ''),
(328, 171, 'Danh mục sản phẩm 4.3', 'en', '<p>M&ocirc; tả Danh mục sản phẩm 4.3</p>\r\n', '<p>Chi tiết Danh mục sản phẩm 4.3</p>\r\n', '', '', '', '', '', 0, 'danh-muc-san-pham-43', '', 'Danh mục sản phẩm 4.3', ''),
(329, 172, 'Danh mục sản phẩm 4.4', 'vn', '<p>M&ocirc; tả Danh s&aacute;ch sản phẩm 4.4</p>\r\n', '<p>Chi tiết Danh mục sản phẩm 4.4</p>\r\n', '', '', '', '', '', 0, 'danh-muc-san-pham-44', '', 'Danh mục sản phẩm 4.4', ''),
(330, 172, 'Danh mục sản phẩm 4.4', 'en', '<p>M&ocirc; tả Danh s&aacute;ch sản phẩm 4.4</p>\r\n', '<p>Chi tiết Danh mục sản phẩm 4.4</p>\r\n', '', '', '', '', '', 0, 'danh-muc-san-pham-44', '', 'Danh mục sản phẩm 4.4', ''),
(331, 173, 'Danh mục sản phẩm 4.5', 'vn', '<p>M&ocirc; tả Danh mục sản phẩm 4.5</p>\r\n', '<p>Chi tiết Danh mục sản phẩm 4.5</p>\r\n', '', '', '', '', '', 0, 'danh-muc-san-pham-45', '', 'Danh mục sản phẩm 4.5', ''),
(332, 173, 'Danh mục sản phẩm 4.5', 'en', '<p>M&ocirc; tả Danh mục sản phẩm 4.5</p>\r\n', '<p>Chi tiết Danh mục sản phẩm 4.5</p>\r\n', '', '', '', '', '', 0, 'danh-muc-san-pham-45', '', 'Danh mục sản phẩm 4.5', ''),
(333, 174, 'Danh mục sản phẩm 5.1', 'vn', '<p>M&ocirc; tả Danh mục sản phẩm 5.1</p>\r\n', '<p>Chi tiết Danh mục sản phẩm 5.1</p>\r\n', '', '', '', '', '', 0, 'danh-muc-san-pham-51', '', 'Danh mục sản phẩm 5.1', ''),
(334, 174, 'Danh mục sản phẩm 5.1', 'en', '<p>M&ocirc; tả Danh mục sản phẩm 5.1</p>\r\n', '<p>Chi tiết Danh mục sản phẩm 5.1</p>\r\n', '', '', '', '', '', 0, 'danh-muc-san-pham-51', '', 'Danh mục sản phẩm 5.1', ''),
(335, 175, 'Danh mục sản phẩm 5.2', 'vn', '<p>M&ocirc; tả Danh mục sản phẩm 5.2</p>\r\n', '<p>Chi tiết Danh mục sản phẩm 5.2</p>\r\n', '', '', '', '', '', 0, 'danh-muc-san-pham-52', '', 'Danh mục sản phẩm 5.2', ''),
(336, 175, 'Danh mục sản phẩm 5.2', 'en', '<p>M&ocirc; tả Danh mục sản phẩm 5.2</p>\r\n', '<p>Chi tiết Danh mục sản phẩm 5.2</p>\r\n', '', '', '', '', '', 0, 'danh-muc-san-pham-52', '', 'Danh mục sản phẩm 5.2', ''),
(337, 176, 'Danh mục sản phẩm 5.3', 'vn', '<p>M&ocirc; tả Danh mục sản phẩm 5.3</p>\r\n', '<p>Chi tiết Danh muc sản phẩm 5.3</p>\r\n', '', '', '', '', '', 0, 'danh-muc-san-pham-53', '', 'Danh mục sản phẩm 5.3', ''),
(338, 176, 'Danh mục sản phẩm 5.3', 'en', '<p>M&ocirc; tả Danh mục sản phẩm 5.3</p>\r\n', '<p>Chi tiết Danh muc sản phẩm 5.3</p>\r\n', '', '', '', '', '', 0, 'danh-muc-san-pham-53', '', 'Danh mục sản phẩm 5.3', ''),
(339, 177, 'Danh mục sản phẩm 5.4', 'vn', '<p>M&ocirc; tả Danh mục sản phẩm 5.4</p>\r\n', '<p>Chi tiết Sản phẩm 5.4</p>\r\n', '', '', '', '', '', 0, 'danh-muc-san-pham-54', '', 'Danh mục sản phẩm 5.4', ''),
(340, 177, 'Danh mục sản phẩm 5.4', 'en', '<p>M&ocirc; tả Danh mục sản phẩm 5.4</p>\r\n', '<p>Chi tiết Sản phẩm 5.4</p>\r\n', '', '', '', '', '', 0, 'danh-muc-san-pham-54', '', 'Danh mục sản phẩm 5.4', ''),
(341, 178, 'Danh mục sản phẩm 5.5', 'vn', '<p>M&ocirc; tả danh mục sản phẩm 5.5</p>\r\n', '<p>Chi tiết Danh muc sản phẩm 5.5</p>\r\n', '', '', '', '', '', 0, 'danh-muc-san-pham-55', '', 'Danh mục sản phẩm 5.5', ''),
(342, 178, 'Danh mục sản phẩm 5.5', 'en', '<p>M&ocirc; tả danh mục sản phẩm 5.5</p>\r\n', '<p>Chi tiết Danh muc sản phẩm 5.5</p>\r\n', '', '', '', '', '', 0, 'danh-muc-san-pham-55', '', 'Danh mục sản phẩm 5.5', '');

-- --------------------------------------------------------

--
-- Table structure for table `producttag`
--

CREATE TABLE IF NOT EXISTS `producttag` (
  `producttag_id` int(11) NOT NULL,
  `producttag_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_sort_order` int(11) NOT NULL,
  `producttag_img` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_created_date` datetime NOT NULL,
  `producttag_update_date` datetime NOT NULL,
  `producttag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_sub_info5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `state` int(11) NOT NULL,
  `title_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `friendly_url` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `producttag`
--

INSERT INTO `producttag` (`producttag_id`, `producttag_name`, `producttag_des`, `producttag_content`, `producttag_sort_order`, `producttag_img`, `producttag_created_date`, `producttag_update_date`, `producttag_sub_info1`, `producttag_sub_info2`, `producttag_sub_info3`, `producttag_sub_info4`, `producttag_sub_info5`, `state`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(5, 'đỏ', '<p>des</p>\r\n', '<p>content1</p>\r\n', 0, '', '2017-12-12 19:12:53', '2017-12-13 12:12:30', '', '', '', '', '', 1, 'đỏ', 'a1', 'do', 'a1', 1),
(7, 'Xanh', '', '', 0, '', '2017-12-13 12:12:49', '2017-12-13 12:12:49', '', '', '', '', '', 1, 'Xanh', '', 'xanh', '', 1),
(8, 'Vàng', '', '', 0, '', '2017-12-13 12:12:04', '2017-12-13 17:12:26', '', '', '', '', '', 1, 'Vàng', '', 'vang', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `producttag_languages`
--

CREATE TABLE IF NOT EXISTS `producttag_languages` (
  `id` int(11) NOT NULL,
  `producttag_id` int(11) NOT NULL,
  `lang_producttag_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `languages_code` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_sub_info5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `edit_state` int(11) NOT NULL,
  `friendly_url` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_seo` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `producttag_languages`
--

INSERT INTO `producttag_languages` (`id`, `producttag_id`, `lang_producttag_name`, `languages_code`, `lang_producttag_des`, `lang_producttag_content`, `lang_producttag_sub_info1`, `lang_producttag_sub_info2`, `lang_producttag_sub_info3`, `lang_producttag_sub_info4`, `lang_producttag_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(2, 5, 'đỏ', 'vn', '<p>des</p>\r\n', '<p>content1</p>\r\n', '', '', '', '', '', 1, 'do', 'a1', 'đỏ', 'a1'),
(3, 5, 'tag produnt', 'en', '<p>des</p>\r\n', '<p>content</p>\r\n', '', '', '', '', '', 1, 'tag-produnt', 'a', 'tag produnt', 'a'),
(6, 7, 'Xanh', 'vn', '', '', '', '', '', '', '', 1, 'xanh', '', 'Xanh', ''),
(7, 7, 'Xanh', 'en', '', '', '', '', '', '', '', 1, 'xanh', '', 'Xanh', ''),
(8, 8, 'Vàng', 'vn', '<p>1</p>\r\n', '<p>1</p>\r\n', '', '', '', '', '', 1, 'vang', '', 'Vàng', ''),
(9, 8, 'yellow', 'en', '', '', '', '', '', '', '', 1, 'vang', '', 'Vàng', '');

-- --------------------------------------------------------

--
-- Table structure for table `product_color`
--

CREATE TABLE IF NOT EXISTS `product_color` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_languages`
--

CREATE TABLE IF NOT EXISTS `product_languages` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_name` text COLLATE utf8_unicode_ci,
  `lang_product_des` text COLLATE utf8_unicode_ci,
  `lang_product_des2` text COLLATE utf8_unicode_ci,
  `lang_product_des3` text COLLATE utf8_unicode_ci,
  `lang_product_content` text COLLATE utf8_unicode_ci,
  `lang_product_content2` text COLLATE utf8_unicode_ci,
  `lang_product_content3` text COLLATE utf8_unicode_ci,
  `lang_product_code` text COLLATE utf8_unicode_ci,
  `lang_product_original` text COLLATE utf8_unicode_ci,
  `lang_product_size` text COLLATE utf8_unicode_ci,
  `lang_product_package` text COLLATE utf8_unicode_ci,
  `lang_product_delivery` text COLLATE utf8_unicode_ci,
  `lang_product_delivery_time` text COLLATE utf8_unicode_ci,
  `lang_product_payment` text COLLATE utf8_unicode_ci,
  `lang_product_payment_type` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_languages`
--

INSERT INTO `product_languages` (`id`, `product_id`, `languages_code`, `lang_product_name`, `lang_product_des`, `lang_product_des2`, `lang_product_des3`, `lang_product_content`, `lang_product_content2`, `lang_product_content3`, `lang_product_code`, `lang_product_original`, `lang_product_size`, `lang_product_package`, `lang_product_delivery`, `lang_product_delivery_time`, `lang_product_payment`, `lang_product_payment_type`, `lang_product_sub_info1`, `lang_product_sub_info2`, `lang_product_sub_info3`, `lang_product_sub_info4`, `lang_product_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(41, 27, 'vn', 'Sản phẩm 01', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<div>\r\n<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n</div>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'san-pham-01', 'Sản phẩm 01', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'Rèm vải'),
(42, 27, 'en', 'Rèm vải 01', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<div>\r\n<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n</div>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'rem-vai-01', 'Rèm vải 01', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'Rèm vải'),
(43, 28, 'vn', 'Sản phẩm 02', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '02', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'san-pham-02', 'Sản phẩm 02', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'Rèm vải'),
(44, 28, 'en', 'Rèm vải 02', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '02', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'rem-vai-02', 'Rèm vải 02', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'Rèm vải'),
(45, 29, 'vn', 'Sản phẩm 03', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '03', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'san-pham-03', 'Sản phẩm 03', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'Rèm vải'),
(46, 29, 'en', 'Rèm vải 03', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '03', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'rem-vai-03', 'Rèm vải 03', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'Rèm vải'),
(47, 30, 'vn', 'Sản phẩm 04', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'san-pham-04', 'Sản phẩm 04', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'Rèm vải'),
(48, 30, 'en', 'Rèm vải 04', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'rem-vai-04', 'Rèm vải 04', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'Rèm vải');
INSERT INTO `product_languages` (`id`, `product_id`, `languages_code`, `lang_product_name`, `lang_product_des`, `lang_product_des2`, `lang_product_des3`, `lang_product_content`, `lang_product_content2`, `lang_product_content3`, `lang_product_code`, `lang_product_original`, `lang_product_size`, `lang_product_package`, `lang_product_delivery`, `lang_product_delivery_time`, `lang_product_payment`, `lang_product_payment_type`, `lang_product_sub_info1`, `lang_product_sub_info2`, `lang_product_sub_info3`, `lang_product_sub_info4`, `lang_product_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(49, 31, 'vn', 'Sản phẩm 05', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '05', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'san-pham-05', 'Sản phẩm 05', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'Rèm vải'),
(50, 31, 'en', 'Rèm vải 05', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '05', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'rem-vai-05', 'Rèm vải 05', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'Rèm vải'),
(51, 32, 'vn', 'Sản phẩm 06', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'san-pham-06', 'Sản phẩm 06', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'Rèm vải'),
(52, 32, 'en', 'Rèm vải 06', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'rem-vai-06', 'Rèm vải 06', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'Rèm vải'),
(53, 33, 'vn', 'Sản phẩm 07', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'san-pham-07', 'Sản phẩm 07', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'Rèm vải'),
(54, 33, 'en', 'Rèm vải 07', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'rem-vai-07', 'Rèm vải 07', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'Rèm vải'),
(55, 34, 'vn', 'Sản phẩm 08', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'san-pham-08', 'Sản phẩm 08', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'Rèm vải'),
(56, 34, 'en', 'Rèm vải 08', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'rem-vai-08', 'Rèm vải 08', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'Rèm vải');
INSERT INTO `product_languages` (`id`, `product_id`, `languages_code`, `lang_product_name`, `lang_product_des`, `lang_product_des2`, `lang_product_des3`, `lang_product_content`, `lang_product_content2`, `lang_product_content3`, `lang_product_code`, `lang_product_original`, `lang_product_size`, `lang_product_package`, `lang_product_delivery`, `lang_product_delivery_time`, `lang_product_payment`, `lang_product_payment_type`, `lang_product_sub_info1`, `lang_product_sub_info2`, `lang_product_sub_info3`, `lang_product_sub_info4`, `lang_product_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(57, 35, 'vn', 'Sản phẩm 09', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'san-pham-09', 'Sản phẩm 09', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'Rèm vải'),
(58, 35, 'en', 'Rèm vải 09', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'rem-vai-09', 'Rèm vải 09', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'Rèm vải'),
(59, 36, 'vn', 'Sản phẩm 10', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'san-pham-10', 'Sản phẩm 10', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'Rèm vải'),
(60, 36, 'en', 'Rèm vải 10', '<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i.&nbsp;</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Ngo&agrave;i t&aacute;c dụng điều chỉnh &aacute;nh s&aacute;ng cho căn ph&ograve;ng, r&egrave;m cửa (m&agrave;n cửa) c&ograve;n giữ ấm cho căn ph&ograve;ng khi m&ugrave;a đ&ocirc;ng đến, hạn chế c&aacute;i n&oacute;ng của m&ugrave;a h&egrave;, bụi v&agrave; tiếng ồn b&ecirc;n ngo&agrave;i. Kh&ocirc;ng chỉ c&oacute; thế, với kiểu d&aacute;ng v&agrave; m&agrave;u sắc th&iacute;ch hợp,&nbsp;r&egrave;m cửa&nbsp;c&ograve;n c&oacute; thể tạo khoảng kh&ocirc;ng ri&ecirc;ng tư hoặc th&ecirc;m ch&uacute;t vẻ đẹp sang trọng hay l&atilde;ng mạn cho căn ph&ograve;ng.<br />\r\n&nbsp;&nbsp;<br />\r\nChiếc r&egrave;m cửa kh&ocirc;ng chỉ đơn giản l&agrave; vật chắn s&aacute;ng hay tạo khoảng kh&ocirc;ng ri&ecirc;ng tư, n&oacute; c&ograve;n tạo cho mỗi căn ph&ograve;ng một ấn tượng v&agrave; cảm x&uacute;c kh&aacute;c nhau, t&ugrave;y theo c&aacute;ch chọn lựa của chủ nh&acirc;n.<br />\r\n&nbsp;&nbsp;<br />\r\nC&oacute; rất nhiều loại r&egrave;m kh&aacute;c nhau như r&egrave;m v&eacute;n,&nbsp;r&egrave;m roman&nbsp;(hay c&ograve;n gọi l&agrave; r&egrave;m xếp lớp), r&egrave;m cuốn, r&egrave;m l&aacute;,... Bạn cũng c&oacute; thể d&ugrave;ng r&egrave;m tr&uacute;c, r&egrave;m kim loại nhẹ, r&egrave;m bằng nhựa tổng hợp hay r&egrave;m giấy để trang tr&iacute; nh&agrave; cửa. Tuy nhi&ecirc;n, loại r&egrave;m phổ biến vẫn l&agrave; r&egrave;m vải v&igrave; t&iacute;nh năng dễ giặt tẩy, dễ lắp đặt, m&agrave;u v&agrave; kiểu phong ph&uacute;, hợp với nhiều phong c&aacute;ch nội thất.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<p>C&aacute;c loại vải may&nbsp;r&egrave;m cửa&nbsp;đang c&oacute; tr&ecirc;n thị trường rất đa dạng nhưng phần lớn l&agrave; cotton, polyester. Chất liệu thun, ren gần như kh&ocirc;ng c&ograve;n được ưa chuộng nữa v&igrave; dễ b&aacute;m bụi, mau bị sờn. &ETH;ược nhiều người chọn nhất vẫn l&agrave; c&aacute;c loại vải 65% cotton - 35% polyester hay loại 52% cotton - 48% polyester với nhiều nguồn gốc xuất xứ như Trung Quốc, H&agrave;n Quốc, Anh, Indonesia, Nga v&agrave; h&agrave;ng Việt Nam. Thị trường vải may r&egrave;m cửa kh&aacute; đa dạng với h&agrave;ng trăm mẫu hoa văn v&agrave; m&agrave;u sắc kh&aacute;c nhau. C&aacute;c loại r&egrave;m cửa bằng vải cotton, bố gấm, bố th&ocirc;, vải c&oacute; chất liệu chống thấm v&agrave; &iacute;t b&aacute;m bụi với c&aacute;c hoa văn đơn giản, c&aacute;c loại c&oacute; b&ocirc;ng ở ch&acirc;n may theo nếp gấp, li ống, li đứng đang được nhiều người ưa chuộng. C&aacute;c loại&nbsp;r&egrave;m&nbsp;cửa may theo kiểu b&egrave;o s&ograve; hay c&aacute;c kiểu rườm r&agrave; của một hai năm về trước đ&atilde; kh&ocirc;ng c&ograve;n được ưa chuộng. Xu hướng mới nhất năm nay l&agrave; dựa theo c&aacute;c mẫu đơn giản c&oacute; trong catologue nước ngo&agrave;i. Mẫu đang b&aacute;n chạy l&agrave; mẫu m&agrave;u kem với c&aacute;c hoa văn đơn giản. C&aacute;c loại hoa văn được xem l&agrave; mốt mới trong năm nay l&agrave; c&aacute;c h&igrave;nh lập thể, ca r&ocirc; v&agrave; c&aacute;c mẫu hoa nhỏ.</p>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất đa dạng về kiểu d&aacute;ng, sản phẩm của&nbsp;r&egrave;m nghệ thuật d&ugrave; mang phong c&aacute;ch cổ điển, hiện đại hay được s&aacute;ng tạo&nbsp;ph&aacute; c&aacute;ch v&agrave; đầy ngẫu hứng vẫn lu&ocirc;n đem đến cho người sử dụng cảm gi&aacute;c th&iacute;ch th&uacute; v&agrave; h&agrave;i l&ograve;ng nhất. Ph&aacute;t huy s&aacute;ng tạo vượt mọi r&agrave;o cản r&egrave;m nghệ thuật l&agrave; đỉnh cao của những s&aacute;ng tạo kh&ocirc;ng giới hạn, ch&uacute;ng t&ocirc;i mong muốn mang đến những sản phẩm r&egrave;m cửa tốt nhất, rẻ nhất gi&uacute;p cho bữa cơm gia đ&igrave;nh th&ecirc;m đầm ấm, hạnh ph&uacute;c!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Loại vải b&oacute;ng mượt, mềm mịn đem lại vẻ sang trọng như nhung, gấm, đũi, lụa, voan... thường một m&agrave;u hoặc mang hoa văn, hoạ tiết ch&igrave;m, trang nh&atilde;, hợp với ph&ograve;ng kh&aacute;ch. Những loại vải bề mặt th&ocirc; r&aacute;p cho cảm gi&aacute;c th&acirc;n mật, gần gũi thi&ecirc;n nhi&ecirc;n lại k&eacute;n phong c&aacute;ch b&agrave;i tr&iacute; như vải bạt, bố, th&ocirc;, thổ cẩm... chỉ n&ecirc;n sử dụng trong ph&ograve;ng b&agrave;y đồ đạc m&acirc;y, tre, gỗ mộc, thảm l&ocirc;ng th&uacute;. Vải b&ocirc;ng, lanh c&oacute; nhiều m&agrave;u hoa văn, hợp với nội thất b&igrave;nh thường, nhất l&agrave; ph&ograve;ng trẻ em, ph&ograve;ng ăn, ph&ograve;ng giải tr&iacute;...<br />\r\n<br />\r\nR&egrave;m (m&agrave;n) m&ugrave;a h&egrave; thường l&agrave; những loại&nbsp;r&egrave;m&nbsp;(m&agrave;n) c&oacute; chất liệu nhẹ nh&agrave;ng như: vải th&ocirc; mỏng, voan, lụa, lanh... c&ograve;n r&egrave;m m&ugrave;a đ&ocirc;ng lại cần tạo sự ấm &aacute;p, n&ecirc;n chất liệu chủ yếu l&agrave; nhung, gấm, th&ocirc; dầy v&agrave; thổ cẩm. Tuy nhi&ecirc;n l&agrave; m&ugrave;a đ&ocirc;ng hay m&ugrave;a h&egrave; việc lựa chọn chất liệu cũng phụ thuộc rất nhiều v&agrave;o mức độ chắn s&aacute;ng của &ocirc; cửa trong nh&agrave;.</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>G&iacute;a:</p>\r\n\r\n<p>&nbsp;Khoảng 760.000đ/ 1m ngang ho&agrave;n thiện trở l&ecirc;n (bao gồm c&ocirc;ng, phụ kiện lắp đặt,&nbsp;</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'rem-vai-10', 'Rèm vải 10', 'Ngoài tác dụng điều chỉnh ánh sáng cho căn phòng, rèm cửa (màn cửa) còn giữ ấm cho căn phòng khi mùa đông đến, hạn chế cái nóng của mùa hè, bụi và tiếng ồn bên ngoài. ', 'Rèm vải'),
(61, 37, 'vn', 'Sản phẩm 15', '<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t.</p>\r\n', '', '', '<div>\r\n<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t. Có lẽ sự ảnh hưởng của văn hóa Hàn là m&ocirc;̣t trong những lý do làm người Vi&ecirc;̣t ngày càng chu&ocirc;̣ng các sản ph&acirc;̉m từ của Hàn. Tuy nhi&ecirc;n kh&ocirc;ng th&ecirc;̉ phủ nh&acirc;̣n được ch&acirc;́t lượng của các sản ph&acirc;̉m Hàn Qu&ocirc;́c chính hãng có mặt tr&ecirc;n thị trường Vi&ecirc;̣t Nam.B&ecirc;̀ mặt gi&acirc;́y được phủ m&ocirc;̣t lớp vinyl giúp gi&acirc;́y ch&ocirc;́ng xước, ch&ocirc;́ng th&acirc;́m. Bạn có th&ecirc;̉ d&ecirc;̃ dàng sử dụng khăn &acirc;̉m đ&ecirc;̉ làm sạch b&ecirc;̀ mặt gi&acirc;́y hàng ngày mà kh&ocirc;ng lo gi&acirc;́y bị th&acirc;́m ướt, &acirc;̉m m&ocirc;́c</p>\r\n\r\n<p>B&ecirc;̀n màu, có khả năng chịu được các ch&acirc;́t ki&ecirc;̀m và axit.</p>\r\n\r\n<p>Màu sắc đa dạng phù hợp với mọi kh&ocirc;ng gian ki&ecirc;́n trúc. Với gi&acirc;́y dán tường Hàn Qu&ocirc;́c bạn có th&ecirc;̉ thoải mái sáng tạo n&ecirc;n những kh&ocirc;ng gian mà bạn thích có th&ecirc;̉ là m&ocirc;̣t kh&ocirc;ng gian c&acirc;̀n sự sang trọng tinh t&ecirc;́, m&ocirc;̣t kh&ocirc;ng gian lãng mạn, cá tính hay đơn giảnlà m&ocirc;̣t kh&ocirc;ng gian có chút tinh nghịch trẻ thơ.</p>\r\n\r\n<p>Giấy d&aacute;n tường H&agrave;n Quốc&nbsp;có th&ecirc;̉ giúp bạn tạo n&ecirc;n m&ocirc;̣t kh&ocirc;ng gian hoàn toàn mới mẻ cho ng&ocirc;i nhà của bạn. Đ&ocirc;i khi thay đ&ocirc;̉i m&ocirc;̣t chút kh&ocirc;ng gian s&ocirc;́ng từ chính những bức tường cuả ng&ocirc;i nhà có th&ecirc;̉ giúp những thành vi&ecirc;n trong gia đình của bạn xích lại g&acirc;̀n nhau hơn.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<h3>CHẤT LIỆU</h3>\r\n</div>\r\n\r\n<div>\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<p>Khổ giấy 1,06 m X 15,6 m=16,5m2</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<p>Giao động từ 1,150,000-1,450,000/cuộn</p>\r\n\r\n<p>hoặc 110,000-135,000/m2</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n</div>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'san-pham-15', 'Sản phẩm 15', 'Giấy dán tường  là một loại vật liệu trang trí đang rất được ưa chuộng trong mọi loại hình kiến trúc trên khắp thế giới. Ở Việt Nam thì các loại giấy dán tường cao cấp chủ yếu được nhập từ nước ngoài trong đó có loại giấy dán tường Hàn Quốc đang được ưa chuộng nhất.', '4u-1'),
(62, 37, 'en', '4u-1', '<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t.</p>\r\n', '', '', '<div>\r\n<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t. Có lẽ sự ảnh hưởng của văn hóa Hàn là m&ocirc;̣t trong những lý do làm người Vi&ecirc;̣t ngày càng chu&ocirc;̣ng các sản ph&acirc;̉m từ của Hàn. Tuy nhi&ecirc;n kh&ocirc;ng th&ecirc;̉ phủ nh&acirc;̣n được ch&acirc;́t lượng của các sản ph&acirc;̉m Hàn Qu&ocirc;́c chính hãng có mặt tr&ecirc;n thị trường Vi&ecirc;̣t Nam.B&ecirc;̀ mặt gi&acirc;́y được phủ m&ocirc;̣t lớp vinyl giúp gi&acirc;́y ch&ocirc;́ng xước, ch&ocirc;́ng th&acirc;́m. Bạn có th&ecirc;̉ d&ecirc;̃ dàng sử dụng khăn &acirc;̉m đ&ecirc;̉ làm sạch b&ecirc;̀ mặt gi&acirc;́y hàng ngày mà kh&ocirc;ng lo gi&acirc;́y bị th&acirc;́m ướt, &acirc;̉m m&ocirc;́c</p>\r\n\r\n<p>B&ecirc;̀n màu, có khả năng chịu được các ch&acirc;́t ki&ecirc;̀m và axit.</p>\r\n\r\n<p>Màu sắc đa dạng phù hợp với mọi kh&ocirc;ng gian ki&ecirc;́n trúc. Với gi&acirc;́y dán tường Hàn Qu&ocirc;́c bạn có th&ecirc;̉ thoải mái sáng tạo n&ecirc;n những kh&ocirc;ng gian mà bạn thích có th&ecirc;̉ là m&ocirc;̣t kh&ocirc;ng gian c&acirc;̀n sự sang trọng tinh t&ecirc;́, m&ocirc;̣t kh&ocirc;ng gian lãng mạn, cá tính hay đơn giảnlà m&ocirc;̣t kh&ocirc;ng gian có chút tinh nghịch trẻ thơ.</p>\r\n\r\n<p>Giấy d&aacute;n tường H&agrave;n Quốc&nbsp;có th&ecirc;̉ giúp bạn tạo n&ecirc;n m&ocirc;̣t kh&ocirc;ng gian hoàn toàn mới mẻ cho ng&ocirc;i nhà của bạn. Đ&ocirc;i khi thay đ&ocirc;̉i m&ocirc;̣t chút kh&ocirc;ng gian s&ocirc;́ng từ chính những bức tường cuả ng&ocirc;i nhà có th&ecirc;̉ giúp những thành vi&ecirc;n trong gia đình của bạn xích lại g&acirc;̀n nhau hơn.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<h3>CHẤT LIỆU</h3>\r\n</div>\r\n\r\n<div>\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<p>Khổ giấy 1,06 m X 15,6 m=16,5m2</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<div>\r\n<div>\r\n<div>\r\n<p>Giao động từ 1,150,000-1,450,000/cuộn</p>\r\n\r\n<p>hoặc 110,000-135,000/m2</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n</div>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, '4u-1', '4u-1', 'Giấy dán tường  là một loại vật liệu trang trí đang rất được ưa chuộng trong mọi loại hình kiến trúc trên khắp thế giới. Ở Việt Nam thì các loại giấy dán tường cao cấp chủ yếu được nhập từ nước ngoài trong đó có loại giấy dán tường Hàn Quốc đang được ưa chuộng nhất.', '4u-1'),
(63, 38, 'vn', 'Sản phẩm 14', '<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t.</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t. Có lẽ sự ảnh hưởng của văn hóa Hàn là m&ocirc;̣t trong những lý do làm người Vi&ecirc;̣t ngày càng chu&ocirc;̣ng các sản ph&acirc;̉m từ của Hàn. Tuy nhi&ecirc;n kh&ocirc;ng th&ecirc;̉ phủ nh&acirc;̣n được ch&acirc;́t lượng của các sản ph&acirc;̉m Hàn Qu&ocirc;́c chính hãng có mặt tr&ecirc;n thị trường Vi&ecirc;̣t Nam.B&ecirc;̀ mặt gi&acirc;́y được phủ m&ocirc;̣t lớp vinyl giúp gi&acirc;́y ch&ocirc;́ng xước, ch&ocirc;́ng th&acirc;́m. Bạn có th&ecirc;̉ d&ecirc;̃ dàng sử dụng khăn &acirc;̉m đ&ecirc;̉ làm sạch b&ecirc;̀ mặt gi&acirc;́y hàng ngày mà kh&ocirc;ng lo gi&acirc;́y bị th&acirc;́m ướt, &acirc;̉m m&ocirc;́c</p>\r\n\r\n<p>B&ecirc;̀n màu, có khả năng chịu được các ch&acirc;́t ki&ecirc;̀m và axit.</p>\r\n\r\n<p>Màu sắc đa dạng phù hợp với mọi kh&ocirc;ng gian ki&ecirc;́n trúc. Với gi&acirc;́y dán tường Hàn Qu&ocirc;́c bạn có th&ecirc;̉ thoải mái sáng tạo n&ecirc;n những kh&ocirc;ng gian mà bạn thích có th&ecirc;̉ là m&ocirc;̣t kh&ocirc;ng gian c&acirc;̀n sự sang trọng tinh t&ecirc;́, m&ocirc;̣t kh&ocirc;ng gian lãng mạn, cá tính hay đơn giảnlà m&ocirc;̣t kh&ocirc;ng gian có chút tinh nghịch trẻ thơ.</p>\r\n\r\n<p>Giấy d&aacute;n tường H&agrave;n Quốc&nbsp;có th&ecirc;̉ giúp bạn tạo n&ecirc;n m&ocirc;̣t kh&ocirc;ng gian hoàn toàn mới mẻ cho ng&ocirc;i nhà của bạn. Đ&ocirc;i khi thay đ&ocirc;̉i m&ocirc;̣t chút kh&ocirc;ng gian s&ocirc;́ng từ chính những bức tường cuả ng&ocirc;i nhà có th&ecirc;̉ giúp những thành vi&ecirc;n trong gia đình của bạn xích lại g&acirc;̀n nhau hơn.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Khổ giấy 1,06 m X 15,6 m=16,5m2</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>Giao động từ 1,150,000-1,450,000/cuộn</p>\r\n\r\n<p>hoặc 110,000-135,000/m2</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'san-pham-14', 'Sản phẩm 14', 'Giấy dán tường  là một loại vật liệu trang trí đang rất được ưa chuộng trong mọi loại hình kiến trúc trên khắp thế giới. Ở Việt Nam thì các loại giấy dán tường cao cấp chủ yếu được nhập từ nước ngoài trong đó có loại giấy dán tường Hàn Quốc đang được ưa chuộng nhất.', '4u-2'),
(64, 38, 'en', '4u-2', '<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t.</p>\r\n', '', '', '<h3>M&Ocirc; TẢ SẢN PHẨM</h3>\r\n\r\n<p>Giấy d&aacute;n tường&nbsp;&nbsp;là m&ocirc;̣t loại v&acirc;̣t li&ecirc;̣u trang trí đang r&acirc;́t được ưa chu&ocirc;̣ng trong mọi loại hình ki&ecirc;́n trúc tr&ecirc;n khắp th&ecirc;́ giới. Ở Vi&ecirc;̣t Nam thì các loại gi&acirc;́y dán tường cao c&acirc;́p chủ y&ecirc;́u được nh&acirc;̣p từ nước ngoài trong đó có loại gi&acirc;́y dán tường Hàn Qu&ocirc;́c đang được ưa chu&ocirc;̣ng nh&acirc;́t. Có lẽ sự ảnh hưởng của văn hóa Hàn là m&ocirc;̣t trong những lý do làm người Vi&ecirc;̣t ngày càng chu&ocirc;̣ng các sản ph&acirc;̉m từ của Hàn. Tuy nhi&ecirc;n kh&ocirc;ng th&ecirc;̉ phủ nh&acirc;̣n được ch&acirc;́t lượng của các sản ph&acirc;̉m Hàn Qu&ocirc;́c chính hãng có mặt tr&ecirc;n thị trường Vi&ecirc;̣t Nam.B&ecirc;̀ mặt gi&acirc;́y được phủ m&ocirc;̣t lớp vinyl giúp gi&acirc;́y ch&ocirc;́ng xước, ch&ocirc;́ng th&acirc;́m. Bạn có th&ecirc;̉ d&ecirc;̃ dàng sử dụng khăn &acirc;̉m đ&ecirc;̉ làm sạch b&ecirc;̀ mặt gi&acirc;́y hàng ngày mà kh&ocirc;ng lo gi&acirc;́y bị th&acirc;́m ướt, &acirc;̉m m&ocirc;́c</p>\r\n\r\n<p>B&ecirc;̀n màu, có khả năng chịu được các ch&acirc;́t ki&ecirc;̀m và axit.</p>\r\n\r\n<p>Màu sắc đa dạng phù hợp với mọi kh&ocirc;ng gian ki&ecirc;́n trúc. Với gi&acirc;́y dán tường Hàn Qu&ocirc;́c bạn có th&ecirc;̉ thoải mái sáng tạo n&ecirc;n những kh&ocirc;ng gian mà bạn thích có th&ecirc;̉ là m&ocirc;̣t kh&ocirc;ng gian c&acirc;̀n sự sang trọng tinh t&ecirc;́, m&ocirc;̣t kh&ocirc;ng gian lãng mạn, cá tính hay đơn giảnlà m&ocirc;̣t kh&ocirc;ng gian có chút tinh nghịch trẻ thơ.</p>\r\n\r\n<p>Giấy d&aacute;n tường H&agrave;n Quốc&nbsp;có th&ecirc;̉ giúp bạn tạo n&ecirc;n m&ocirc;̣t kh&ocirc;ng gian hoàn toàn mới mẻ cho ng&ocirc;i nhà của bạn. Đ&ocirc;i khi thay đ&ocirc;̉i m&ocirc;̣t chút kh&ocirc;ng gian s&ocirc;́ng từ chính những bức tường cuả ng&ocirc;i nhà có th&ecirc;̉ giúp những thành vi&ecirc;n trong gia đình của bạn xích lại g&acirc;̀n nhau hơn.</p>\r\n\r\n<h3>CHẤT LIỆU</h3>\r\n\r\n<h3>MẪU M&Atilde;, KIỂU D&Aacute;NG</h3>\r\n\r\n<p>Khổ giấy 1,06 m X 15,6 m=16,5m2</p>\r\n\r\n<h3>GI&Aacute; TH&Agrave;NH</h3>\r\n\r\n<p>Giao động từ 1,150,000-1,450,000/cuộn</p>\r\n\r\n<p>hoặc 110,000-135,000/m2</p>\r\n\r\n<h3>BẢO QUẢN V&Agrave; SỬ DỤNG</h3>\r\n', '', '', '01', '', '', '', '', '', '', '', '', '', '', '', '', 0, '4u-2', '4u-2', 'Giấy dán tường  là một loại vật liệu trang trí đang rất được ưa chuộng trong mọi loại hình kiến trúc trên khắp thế giới. Ở Việt Nam thì các loại giấy dán tường cao cấp chủ yếu được nhập từ nước ngoài trong đó có loại giấy dán tường Hàn Quốc đang được ưa chuộng nhất.', '4u-2'),
(117, 65, 'vn', 'Sản phẩm 11', '<p>L&uacute;c 11 giờ 45 ph&uacute;t ng&agrave;y, h&agrave;ng loạt t&agrave;i xế c&ugrave;ng mang tiền mệnh gi&aacute; thấp v&agrave; mệnh gi&aacute; cao để qua trạm BOT Cai Lậy. Ban đầu, một t&agrave;i xế đi xe c&oacute; BKS tỉnh Cần Thơ đ&atilde; đưa nhiều tờ tiền mệnh gi&aacute; thấp, tổng số tiền l&agrave; 25.100 đồng.</p>\r\n\r\n<p>Sau đ&oacute;, nh&acirc;n vi&ecirc;n thối lại 200 đồng. T&agrave;i xế n&agrave;y kh&ocirc;ng đồng &yacute; nhận tiền dư, y&ecirc;u cầu nh&acirc;n vi&ecirc;n phải đưa đ&uacute;ng 100 đồng. Ngo&agrave;i ra, c&oacute; một số t&agrave;i xế đưa tiền mệnh gi&aacute; 500.000 đồng.</p>\r\n\r\n<p>Thấy &ugrave;n tắc, CSGT đ&atilde; y&ecirc;u cầu t&agrave;i xế ra khu vực đưa tiền lẻ. Tuy nhi&ecirc;n, t&agrave;i xế kh&ocirc;ng chịu n&ecirc;n xe cẩu đ&atilde; được huy động đưa xe đi. Sau đ&oacute;, đơn vị quản l&yacute; đ&atilde; phải xả trạm.</p>\r\n\r\n<p>Đại t&aacute; Trương Văn S&aacute;ng, Trưởng C&ocirc;ng an huyện Cai Lậy, cho biết việc tăng cường lực lượng chức năng để tr&aacute;nh t&igrave;nh trạng g&acirc;y rối hoặc &ugrave;n tắc giao th&ocirc;ng. Về việc t&agrave;i xế đưa tiền mệnh gi&aacute; cao hoặc mệnh gi&aacute; thấp th&igrave; c&ocirc;ng an kh&ocirc;ng xử l&yacute;.</p>\r\n\r\n<p><strong>C&ocirc;ng an l&agrave;m việc hai với bảo mẫu bạo h&agrave;nh trẻ</strong></p>\r\n\r\n<p>Ng&agrave;y 29/11, Đại t&aacute; Đo&agrave;n Văn Ph&uacute;c, Trưởng C&ocirc;ng an quận 12 (TP.Hồ Ch&iacute; Minh) cho biết, li&ecirc;n quan đến vụ việc những bảo mẫu ở cơ sở mầm non Mầm Xanh h&agrave;nh hạ trẻ em, bảo mẫu Nguyễn Thị Đ&agrave;o (23 tuổi) đ&atilde; đến c&ocirc;ng an quận 12 tr&igrave;nh diện.</p>\r\n', '', '', '<p>L&uacute;c 11 giờ 45 ph&uacute;t ng&agrave;y, h&agrave;ng loạt t&agrave;i xế c&ugrave;ng mang tiền mệnh gi&aacute; thấp v&agrave; mệnh gi&aacute; cao để qua trạm BOT Cai Lậy. Ban đầu, một t&agrave;i xế đi xe c&oacute; BKS tỉnh Cần Thơ đ&atilde; đưa nhiều tờ tiền mệnh gi&aacute; thấp, tổng số tiền l&agrave; 25.100 đồng.</p>\r\n\r\n<p>Sau đ&oacute;, nh&acirc;n vi&ecirc;n thối lại 200 đồng. T&agrave;i xế n&agrave;y kh&ocirc;ng đồng &yacute; nhận tiền dư, y&ecirc;u cầu nh&acirc;n vi&ecirc;n phải đưa đ&uacute;ng 100 đồng. Ngo&agrave;i ra, c&oacute; một số t&agrave;i xế đưa tiền mệnh gi&aacute; 500.000 đồng.</p>\r\n\r\n<p>Thấy &ugrave;n tắc, CSGT đ&atilde; y&ecirc;u cầu t&agrave;i xế ra khu vực đưa tiền lẻ. Tuy nhi&ecirc;n, t&agrave;i xế kh&ocirc;ng chịu n&ecirc;n xe cẩu đ&atilde; được huy động đưa xe đi. Sau đ&oacute;, đơn vị quản l&yacute; đ&atilde; phải xả trạm.</p>\r\n\r\n<p>Đại t&aacute; Trương Văn S&aacute;ng, Trưởng C&ocirc;ng an huyện Cai Lậy, cho biết việc tăng cường lực lượng chức năng để tr&aacute;nh t&igrave;nh trạng g&acirc;y rối hoặc &ugrave;n tắc giao th&ocirc;ng. Về việc t&agrave;i xế đưa tiền mệnh gi&aacute; cao hoặc mệnh gi&aacute; thấp th&igrave; c&ocirc;ng an kh&ocirc;ng xử l&yacute;.</p>\r\n\r\n<p><strong>C&ocirc;ng an l&agrave;m việc hai với bảo mẫu bạo h&agrave;nh trẻ</strong></p>\r\n\r\n<p>Ng&agrave;y 29/11, Đại t&aacute; Đo&agrave;n Văn Ph&uacute;c, Trưởng C&ocirc;ng an quận 12 (TP.Hồ Ch&iacute; Minh) cho biết, li&ecirc;n quan đến vụ việc những bảo mẫu ở cơ sở mầm non Mầm Xanh h&agrave;nh hạ trẻ em, bảo mẫu Nguyễn Thị Đ&agrave;o (23 tuổi) đ&atilde; đến c&ocirc;ng an quận 12 tr&igrave;nh diện.</p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'san-pham-11', 'Sản phẩm 11', '', ''),
(118, 65, 'en', 'Sản phẩm 11', '<p>L&uacute;c 11 giờ 45 ph&uacute;t ng&agrave;y, h&agrave;ng loạt t&agrave;i xế c&ugrave;ng mang tiền mệnh gi&aacute; thấp v&agrave; mệnh gi&aacute; cao để qua trạm BOT Cai Lậy. Ban đầu, một t&agrave;i xế đi xe c&oacute; BKS tỉnh Cần Thơ đ&atilde; đưa nhiều tờ tiền mệnh gi&aacute; thấp, tổng số tiền l&agrave; 25.100 đồng.</p>\r\n\r\n<p>Sau đ&oacute;, nh&acirc;n vi&ecirc;n thối lại 200 đồng. T&agrave;i xế n&agrave;y kh&ocirc;ng đồng &yacute; nhận tiền dư, y&ecirc;u cầu nh&acirc;n vi&ecirc;n phải đưa đ&uacute;ng 100 đồng. Ngo&agrave;i ra, c&oacute; một số t&agrave;i xế đưa tiền mệnh gi&aacute; 500.000 đồng.</p>\r\n\r\n<p>Thấy &ugrave;n tắc, CSGT đ&atilde; y&ecirc;u cầu t&agrave;i xế ra khu vực đưa tiền lẻ. Tuy nhi&ecirc;n, t&agrave;i xế kh&ocirc;ng chịu n&ecirc;n xe cẩu đ&atilde; được huy động đưa xe đi. Sau đ&oacute;, đơn vị quản l&yacute; đ&atilde; phải xả trạm.</p>\r\n\r\n<p>Đại t&aacute; Trương Văn S&aacute;ng, Trưởng C&ocirc;ng an huyện Cai Lậy, cho biết việc tăng cường lực lượng chức năng để tr&aacute;nh t&igrave;nh trạng g&acirc;y rối hoặc &ugrave;n tắc giao th&ocirc;ng. Về việc t&agrave;i xế đưa tiền mệnh gi&aacute; cao hoặc mệnh gi&aacute; thấp th&igrave; c&ocirc;ng an kh&ocirc;ng xử l&yacute;.</p>\r\n\r\n<p><strong>C&ocirc;ng an l&agrave;m việc hai với bảo mẫu bạo h&agrave;nh trẻ</strong></p>\r\n\r\n<p>Ng&agrave;y 29/11, Đại t&aacute; Đo&agrave;n Văn Ph&uacute;c, Trưởng C&ocirc;ng an quận 12 (TP.Hồ Ch&iacute; Minh) cho biết, li&ecirc;n quan đến vụ việc những bảo mẫu ở cơ sở mầm non Mầm Xanh h&agrave;nh hạ trẻ em, bảo mẫu Nguyễn Thị Đ&agrave;o (23 tuổi) đ&atilde; đến c&ocirc;ng an quận 12 tr&igrave;nh diện.</p>\r\n', '', '', '<p>L&uacute;c 11 giờ 45 ph&uacute;t ng&agrave;y, h&agrave;ng loạt t&agrave;i xế c&ugrave;ng mang tiền mệnh gi&aacute; thấp v&agrave; mệnh gi&aacute; cao để qua trạm BOT Cai Lậy. Ban đầu, một t&agrave;i xế đi xe c&oacute; BKS tỉnh Cần Thơ đ&atilde; đưa nhiều tờ tiền mệnh gi&aacute; thấp, tổng số tiền l&agrave; 25.100 đồng.</p>\r\n\r\n<p>Sau đ&oacute;, nh&acirc;n vi&ecirc;n thối lại 200 đồng. T&agrave;i xế n&agrave;y kh&ocirc;ng đồng &yacute; nhận tiền dư, y&ecirc;u cầu nh&acirc;n vi&ecirc;n phải đưa đ&uacute;ng 100 đồng. Ngo&agrave;i ra, c&oacute; một số t&agrave;i xế đưa tiền mệnh gi&aacute; 500.000 đồng.</p>\r\n\r\n<p>Thấy &ugrave;n tắc, CSGT đ&atilde; y&ecirc;u cầu t&agrave;i xế ra khu vực đưa tiền lẻ. Tuy nhi&ecirc;n, t&agrave;i xế kh&ocirc;ng chịu n&ecirc;n xe cẩu đ&atilde; được huy động đưa xe đi. Sau đ&oacute;, đơn vị quản l&yacute; đ&atilde; phải xả trạm.</p>\r\n\r\n<p>Đại t&aacute; Trương Văn S&aacute;ng, Trưởng C&ocirc;ng an huyện Cai Lậy, cho biết việc tăng cường lực lượng chức năng để tr&aacute;nh t&igrave;nh trạng g&acirc;y rối hoặc &ugrave;n tắc giao th&ocirc;ng. Về việc t&agrave;i xế đưa tiền mệnh gi&aacute; cao hoặc mệnh gi&aacute; thấp th&igrave; c&ocirc;ng an kh&ocirc;ng xử l&yacute;.</p>\r\n\r\n<p><strong>C&ocirc;ng an l&agrave;m việc hai với bảo mẫu bạo h&agrave;nh trẻ</strong></p>\r\n\r\n<p>Ng&agrave;y 29/11, Đại t&aacute; Đo&agrave;n Văn Ph&uacute;c, Trưởng C&ocirc;ng an quận 12 (TP.Hồ Ch&iacute; Minh) cho biết, li&ecirc;n quan đến vụ việc những bảo mẫu ở cơ sở mầm non Mầm Xanh h&agrave;nh hạ trẻ em, bảo mẫu Nguyễn Thị Đ&agrave;o (23 tuổi) đ&atilde; đến c&ocirc;ng an quận 12 tr&igrave;nh diện.</p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'san-pham-11', 'Sản phẩm 11', '', ''),
(119, 66, 'vn', 'Sản phẩm 12', '<p>L&uacute;c 11 giờ 45 ph&uacute;t ng&agrave;y, h&agrave;ng loạt t&agrave;i xế c&ugrave;ng mang tiền mệnh gi&aacute; thấp v&agrave; mệnh gi&aacute; cao để qua trạm BOT Cai Lậy. Ban đầu, một t&agrave;i xế đi xe c&oacute; BKS tỉnh Cần Thơ đ&atilde; đưa nhiều tờ tiền mệnh gi&aacute; thấp, tổng số tiền l&agrave; 25.100 đồng.</p>\r\n\r\n<p>Sau đ&oacute;, nh&acirc;n vi&ecirc;n thối lại 200 đồng. T&agrave;i xế n&agrave;y kh&ocirc;ng đồng &yacute; nhận tiền dư, y&ecirc;u cầu nh&acirc;n vi&ecirc;n phải đưa đ&uacute;ng 100 đồng. Ngo&agrave;i ra, c&oacute; một số t&agrave;i xế đưa tiền mệnh gi&aacute; 500.000 đồng.</p>\r\n\r\n<p>Thấy &ugrave;n tắc, CSGT đ&atilde; y&ecirc;u cầu t&agrave;i xế ra khu vực đưa tiền lẻ. Tuy nhi&ecirc;n, t&agrave;i xế kh&ocirc;ng chịu n&ecirc;n xe cẩu đ&atilde; được huy động đưa xe đi. Sau đ&oacute;, đơn vị quản l&yacute; đ&atilde; phải xả trạm.</p>\r\n\r\n<p>Đại t&aacute; Trương Văn S&aacute;ng, Trưởng C&ocirc;ng an huyện Cai Lậy, cho biết việc tăng cường lực lượng chức năng để tr&aacute;nh t&igrave;nh trạng g&acirc;y rối hoặc &ugrave;n tắc giao th&ocirc;ng. Về việc t&agrave;i xế đưa tiền mệnh gi&aacute; cao hoặc mệnh gi&aacute; thấp th&igrave; c&ocirc;ng an kh&ocirc;ng xử l&yacute;.</p>\r\n\r\n<p><strong>C&ocirc;ng an l&agrave;m việc hai với bảo mẫu bạo h&agrave;nh trẻ</strong></p>\r\n\r\n<p>Ng&agrave;y 29/11, Đại t&aacute; Đo&agrave;n Văn Ph&uacute;c, Trưởng C&ocirc;ng an quận 12 (TP.Hồ Ch&iacute; Minh) cho biết, li&ecirc;n quan đến vụ việc những bảo mẫu ở cơ sở mầm non Mầm Xanh h&agrave;nh hạ trẻ em, bảo mẫu Nguyễn Thị Đ&agrave;o (23 tuổi) đ&atilde; đến c&ocirc;ng an quận 12 tr&igrave;nh diện.</p>\r\n', '', '', '<p>L&uacute;c 11 giờ 45 ph&uacute;t ng&agrave;y, h&agrave;ng loạt t&agrave;i xế c&ugrave;ng mang tiền mệnh gi&aacute; thấp v&agrave; mệnh gi&aacute; cao để qua trạm BOT Cai Lậy. Ban đầu, một t&agrave;i xế đi xe c&oacute; BKS tỉnh Cần Thơ đ&atilde; đưa nhiều tờ tiền mệnh gi&aacute; thấp, tổng số tiền l&agrave; 25.100 đồng.</p>\r\n\r\n<p>Sau đ&oacute;, nh&acirc;n vi&ecirc;n thối lại 200 đồng. T&agrave;i xế n&agrave;y kh&ocirc;ng đồng &yacute; nhận tiền dư, y&ecirc;u cầu nh&acirc;n vi&ecirc;n phải đưa đ&uacute;ng 100 đồng. Ngo&agrave;i ra, c&oacute; một số t&agrave;i xế đưa tiền mệnh gi&aacute; 500.000 đồng.</p>\r\n\r\n<p>Thấy &ugrave;n tắc, CSGT đ&atilde; y&ecirc;u cầu t&agrave;i xế ra khu vực đưa tiền lẻ. Tuy nhi&ecirc;n, t&agrave;i xế kh&ocirc;ng chịu n&ecirc;n xe cẩu đ&atilde; được huy động đưa xe đi. Sau đ&oacute;, đơn vị quản l&yacute; đ&atilde; phải xả trạm.</p>\r\n\r\n<p>Đại t&aacute; Trương Văn S&aacute;ng, Trưởng C&ocirc;ng an huyện Cai Lậy, cho biết việc tăng cường lực lượng chức năng để tr&aacute;nh t&igrave;nh trạng g&acirc;y rối hoặc &ugrave;n tắc giao th&ocirc;ng. Về việc t&agrave;i xế đưa tiền mệnh gi&aacute; cao hoặc mệnh gi&aacute; thấp th&igrave; c&ocirc;ng an kh&ocirc;ng xử l&yacute;.</p>\r\n\r\n<p><strong>C&ocirc;ng an l&agrave;m việc hai với bảo mẫu bạo h&agrave;nh trẻ</strong></p>\r\n\r\n<p>Ng&agrave;y 29/11, Đại t&aacute; Đo&agrave;n Văn Ph&uacute;c, Trưởng C&ocirc;ng an quận 12 (TP.Hồ Ch&iacute; Minh) cho biết, li&ecirc;n quan đến vụ việc những bảo mẫu ở cơ sở mầm non Mầm Xanh h&agrave;nh hạ trẻ em, bảo mẫu Nguyễn Thị Đ&agrave;o (23 tuổi) đ&atilde; đến c&ocirc;ng an quận 12 tr&igrave;nh diện.</p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'san-pham-12', 'Sản phẩm 12', '', '');
INSERT INTO `product_languages` (`id`, `product_id`, `languages_code`, `lang_product_name`, `lang_product_des`, `lang_product_des2`, `lang_product_des3`, `lang_product_content`, `lang_product_content2`, `lang_product_content3`, `lang_product_code`, `lang_product_original`, `lang_product_size`, `lang_product_package`, `lang_product_delivery`, `lang_product_delivery_time`, `lang_product_payment`, `lang_product_payment_type`, `lang_product_sub_info1`, `lang_product_sub_info2`, `lang_product_sub_info3`, `lang_product_sub_info4`, `lang_product_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(120, 66, 'en', 'Sản phẩm 12', '<p>L&uacute;c 11 giờ 45 ph&uacute;t ng&agrave;y, h&agrave;ng loạt t&agrave;i xế c&ugrave;ng mang tiền mệnh gi&aacute; thấp v&agrave; mệnh gi&aacute; cao để qua trạm BOT Cai Lậy. Ban đầu, một t&agrave;i xế đi xe c&oacute; BKS tỉnh Cần Thơ đ&atilde; đưa nhiều tờ tiền mệnh gi&aacute; thấp, tổng số tiền l&agrave; 25.100 đồng.</p>\r\n\r\n<p>Sau đ&oacute;, nh&acirc;n vi&ecirc;n thối lại 200 đồng. T&agrave;i xế n&agrave;y kh&ocirc;ng đồng &yacute; nhận tiền dư, y&ecirc;u cầu nh&acirc;n vi&ecirc;n phải đưa đ&uacute;ng 100 đồng. Ngo&agrave;i ra, c&oacute; một số t&agrave;i xế đưa tiền mệnh gi&aacute; 500.000 đồng.</p>\r\n\r\n<p>Thấy &ugrave;n tắc, CSGT đ&atilde; y&ecirc;u cầu t&agrave;i xế ra khu vực đưa tiền lẻ. Tuy nhi&ecirc;n, t&agrave;i xế kh&ocirc;ng chịu n&ecirc;n xe cẩu đ&atilde; được huy động đưa xe đi. Sau đ&oacute;, đơn vị quản l&yacute; đ&atilde; phải xả trạm.</p>\r\n\r\n<p>Đại t&aacute; Trương Văn S&aacute;ng, Trưởng C&ocirc;ng an huyện Cai Lậy, cho biết việc tăng cường lực lượng chức năng để tr&aacute;nh t&igrave;nh trạng g&acirc;y rối hoặc &ugrave;n tắc giao th&ocirc;ng. Về việc t&agrave;i xế đưa tiền mệnh gi&aacute; cao hoặc mệnh gi&aacute; thấp th&igrave; c&ocirc;ng an kh&ocirc;ng xử l&yacute;.</p>\r\n\r\n<p><strong>C&ocirc;ng an l&agrave;m việc hai với bảo mẫu bạo h&agrave;nh trẻ</strong></p>\r\n\r\n<p>Ng&agrave;y 29/11, Đại t&aacute; Đo&agrave;n Văn Ph&uacute;c, Trưởng C&ocirc;ng an quận 12 (TP.Hồ Ch&iacute; Minh) cho biết, li&ecirc;n quan đến vụ việc những bảo mẫu ở cơ sở mầm non Mầm Xanh h&agrave;nh hạ trẻ em, bảo mẫu Nguyễn Thị Đ&agrave;o (23 tuổi) đ&atilde; đến c&ocirc;ng an quận 12 tr&igrave;nh diện.</p>\r\n', '', '', '<p>L&uacute;c 11 giờ 45 ph&uacute;t ng&agrave;y, h&agrave;ng loạt t&agrave;i xế c&ugrave;ng mang tiền mệnh gi&aacute; thấp v&agrave; mệnh gi&aacute; cao để qua trạm BOT Cai Lậy. Ban đầu, một t&agrave;i xế đi xe c&oacute; BKS tỉnh Cần Thơ đ&atilde; đưa nhiều tờ tiền mệnh gi&aacute; thấp, tổng số tiền l&agrave; 25.100 đồng.</p>\r\n\r\n<p>Sau đ&oacute;, nh&acirc;n vi&ecirc;n thối lại 200 đồng. T&agrave;i xế n&agrave;y kh&ocirc;ng đồng &yacute; nhận tiền dư, y&ecirc;u cầu nh&acirc;n vi&ecirc;n phải đưa đ&uacute;ng 100 đồng. Ngo&agrave;i ra, c&oacute; một số t&agrave;i xế đưa tiền mệnh gi&aacute; 500.000 đồng.</p>\r\n\r\n<p>Thấy &ugrave;n tắc, CSGT đ&atilde; y&ecirc;u cầu t&agrave;i xế ra khu vực đưa tiền lẻ. Tuy nhi&ecirc;n, t&agrave;i xế kh&ocirc;ng chịu n&ecirc;n xe cẩu đ&atilde; được huy động đưa xe đi. Sau đ&oacute;, đơn vị quản l&yacute; đ&atilde; phải xả trạm.</p>\r\n\r\n<p>Đại t&aacute; Trương Văn S&aacute;ng, Trưởng C&ocirc;ng an huyện Cai Lậy, cho biết việc tăng cường lực lượng chức năng để tr&aacute;nh t&igrave;nh trạng g&acirc;y rối hoặc &ugrave;n tắc giao th&ocirc;ng. Về việc t&agrave;i xế đưa tiền mệnh gi&aacute; cao hoặc mệnh gi&aacute; thấp th&igrave; c&ocirc;ng an kh&ocirc;ng xử l&yacute;.</p>\r\n\r\n<p><strong>C&ocirc;ng an l&agrave;m việc hai với bảo mẫu bạo h&agrave;nh trẻ</strong></p>\r\n\r\n<p>Ng&agrave;y 29/11, Đại t&aacute; Đo&agrave;n Văn Ph&uacute;c, Trưởng C&ocirc;ng an quận 12 (TP.Hồ Ch&iacute; Minh) cho biết, li&ecirc;n quan đến vụ việc những bảo mẫu ở cơ sở mầm non Mầm Xanh h&agrave;nh hạ trẻ em, bảo mẫu Nguyễn Thị Đ&agrave;o (23 tuổi) đ&atilde; đến c&ocirc;ng an quận 12 tr&igrave;nh diện.</p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'san-pham-12', 'Sản phẩm 12', '', ''),
(121, 67, 'vn', 'Sản phẩm 13', '<p>L&uacute;c 11 giờ 45 ph&uacute;t ng&agrave;y, h&agrave;ng loạt t&agrave;i xế c&ugrave;ng mang tiền mệnh gi&aacute; thấp v&agrave; mệnh gi&aacute; cao để qua trạm BOT Cai Lậy. Ban đầu, một t&agrave;i xế đi xe c&oacute; BKS tỉnh Cần Thơ đ&atilde; đưa nhiều tờ tiền mệnh gi&aacute; thấp, tổng số tiền l&agrave; 25.100 đồng.</p>\r\n\r\n<p>Sau đ&oacute;, nh&acirc;n vi&ecirc;n thối lại 200 đồng. T&agrave;i xế n&agrave;y kh&ocirc;ng đồng &yacute; nhận tiền dư, y&ecirc;u cầu nh&acirc;n vi&ecirc;n phải đưa đ&uacute;ng 100 đồng. Ngo&agrave;i ra, c&oacute; một số t&agrave;i xế đưa tiền mệnh gi&aacute; 500.000 đồng.</p>\r\n\r\n<p>Thấy &ugrave;n tắc, CSGT đ&atilde; y&ecirc;u cầu t&agrave;i xế ra khu vực đưa tiền lẻ. Tuy nhi&ecirc;n, t&agrave;i xế kh&ocirc;ng chịu n&ecirc;n xe cẩu đ&atilde; được huy động đưa xe đi. Sau đ&oacute;, đơn vị quản l&yacute; đ&atilde; phải xả trạm.</p>\r\n\r\n<p style="text-align:center"><img alt="" height="257" src="/image/images/2018-02-06%2016_22_51-Boniza.png" width="600" /></p>\r\n\r\n<p>Đại t&aacute; Trương Văn S&aacute;ng, Trưởng C&ocirc;ng an huyện Cai Lậy, cho biết việc tăng cường lực lượng chức năng để tr&aacute;nh t&igrave;nh trạng g&acirc;y rối hoặc &ugrave;n tắc giao th&ocirc;ng. Về việc t&agrave;i xế đưa tiền mệnh gi&aacute; cao hoặc mệnh gi&aacute; thấp th&igrave; c&ocirc;ng an kh&ocirc;ng xử l&yacute;.</p>\r\n\r\n<p><strong>C&ocirc;ng an l&agrave;m việc hai với bảo mẫu bạo h&agrave;nh trẻ</strong></p>\r\n\r\n<p>Ng&agrave;y 29/11, Đại t&aacute; Đo&agrave;n Văn Ph&uacute;c, Trưởng C&ocirc;ng an quận 12 (TP.Hồ Ch&iacute; Minh) cho biết, li&ecirc;n quan đến vụ việc những bảo mẫu ở cơ sở mầm non Mầm Xanh h&agrave;nh hạ trẻ em, bảo mẫu Nguyễn Thị Đ&agrave;o (23 tuổi) đ&atilde; đến c&ocirc;ng an quận 12 tr&igrave;nh diện.</p>\r\n', '', '', '<p>L&uacute;c 11 giờ 45 ph&uacute;t ng&agrave;y, h&agrave;ng loạt t&agrave;i xế c&ugrave;ng mang tiền mệnh gi&aacute; thấp v&agrave; mệnh gi&aacute; cao để qua trạm BOT Cai Lậy. Ban đầu, một t&agrave;i xế đi xe c&oacute; BKS tỉnh Cần Thơ đ&atilde; đưa nhiều tờ tiền mệnh gi&aacute; thấp, tổng số tiền l&agrave; 25.100 đồng.</p>\r\n\r\n<p>Sau đ&oacute;, nh&acirc;n vi&ecirc;n thối lại 200 đồng. T&agrave;i xế n&agrave;y kh&ocirc;ng đồng &yacute; nhận tiền dư, y&ecirc;u cầu nh&acirc;n vi&ecirc;n phải đưa đ&uacute;ng 100 đồng. Ngo&agrave;i ra, c&oacute; một số t&agrave;i xế đưa tiền mệnh gi&aacute; 500.000 đồng.</p>\r\n\r\n<p style="text-align:center"><img alt="" height="257" src="/image/images/2018-02-06%2016_22_51-Boniza(1).png" width="600" /></p>\r\n\r\n<p>Thấy &ugrave;n tắc, CSGT đ&atilde; y&ecirc;u cầu t&agrave;i xế ra khu vực đưa tiền lẻ. Tuy nhi&ecirc;n, t&agrave;i xế kh&ocirc;ng chịu n&ecirc;n xe cẩu đ&atilde; được huy động đưa xe đi. Sau đ&oacute;, đơn vị quản l&yacute; đ&atilde; phải xả trạm.</p>\r\n\r\n<p>Đại t&aacute; Trương Văn S&aacute;ng, Trưởng C&ocirc;ng an huyện Cai Lậy, cho biết việc tăng cường lực lượng chức năng để tr&aacute;nh t&igrave;nh trạng g&acirc;y rối hoặc &ugrave;n tắc giao th&ocirc;ng. Về việc t&agrave;i xế đưa tiền mệnh gi&aacute; cao hoặc mệnh gi&aacute; thấp th&igrave; c&ocirc;ng an kh&ocirc;ng xử l&yacute;.</p>\r\n\r\n<p><strong>C&ocirc;ng an l&agrave;m việc hai với bảo mẫu bạo h&agrave;nh trẻ</strong></p>\r\n\r\n<p>Ng&agrave;y 29/11, Đại t&aacute; Đo&agrave;n Văn Ph&uacute;c, Trưởng C&ocirc;ng an quận 12 (TP.Hồ Ch&iacute; Minh) cho biết, li&ecirc;n quan đến vụ việc những bảo mẫu ở cơ sở mầm non Mầm Xanh h&agrave;nh hạ trẻ em, bảo mẫu Nguyễn Thị Đ&agrave;o (23 tuổi) đ&atilde; đến c&ocirc;ng an quận 12 tr&igrave;nh diện.</p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'san-pham-13', 'Sản phẩm 13', '', ''),
(122, 67, 'en', 'product 13', '<p>đ&acirc;y l&agrave; bản d&agrave;nh cho tiếng anh</p>\r\n\r\n<p>L&uacute;c 11 giờ 45 ph&uacute;t ng&agrave;y, h&agrave;ng loạt t&agrave;i xế c&ugrave;ng mang tiền mệnh gi&aacute; thấp v&agrave; mệnh gi&aacute; cao để qua trạm BOT Cai Lậy. Ban đầu, một t&agrave;i xế đi xe c&oacute; BKS tỉnh Cần Thơ đ&atilde; đưa nhiều tờ tiền mệnh gi&aacute; thấp, tổng số tiền l&agrave; 25.100 đồng.</p>\r\n\r\n<p>Sau đ&oacute;, nh&acirc;n vi&ecirc;n thối lại 200 đồng. T&agrave;i xế n&agrave;y kh&ocirc;ng đồng &yacute; nhận tiền dư, y&ecirc;u cầu nh&acirc;n vi&ecirc;n phải đưa đ&uacute;ng 100 đồng. Ngo&agrave;i ra, c&oacute; một số t&agrave;i xế đưa tiền mệnh gi&aacute; 500.000 đồng.</p>\r\n\r\n<p>Thấy &ugrave;n tắc, CSGT đ&atilde; y&ecirc;u cầu t&agrave;i xế ra khu vực đưa tiền lẻ. Tuy nhi&ecirc;n, t&agrave;i xế kh&ocirc;ng chịu n&ecirc;n xe cẩu đ&atilde; được huy động đưa xe đi. Sau đ&oacute;, đơn vị quản l&yacute; đ&atilde; phải xả trạm.</p>\r\n\r\n<p>Đại t&aacute; Trương Văn S&aacute;ng, Trưởng C&ocirc;ng an huyện Cai Lậy, cho biết việc tăng cường lực lượng chức năng để tr&aacute;nh t&igrave;nh trạng g&acirc;y rối hoặc &ugrave;n tắc giao th&ocirc;ng. Về việc t&agrave;i xế đưa tiền mệnh gi&aacute; cao hoặc mệnh gi&aacute; thấp th&igrave; c&ocirc;ng an kh&ocirc;ng xử l&yacute;.</p>\r\n\r\n<p><strong>C&ocirc;ng an l&agrave;m việc hai với bảo mẫu bạo h&agrave;nh trẻ</strong></p>\r\n\r\n<p>Ng&agrave;y 29/11, Đại t&aacute; Đo&agrave;n Văn Ph&uacute;c, Trưởng C&ocirc;ng an quận 12 (TP.Hồ Ch&iacute; Minh) cho biết, li&ecirc;n quan đến vụ việc những bảo mẫu ở cơ sở mầm non Mầm Xanh h&agrave;nh hạ trẻ em, bảo mẫu Nguyễn Thị Đ&agrave;o (23 tuổi) đ&atilde; đến c&ocirc;ng an quận 12 tr&igrave;nh diện.</p>\r\n', '', '', '<p>đ&acirc;y l&agrave; bản d&agrave;nh cho tiếng anh tuan</p>\r\n\r\n<p>L&uacute;c 11 giờ 45 ph&uacute;t ng&agrave;y, h&agrave;ng loạt t&agrave;i xế c&ugrave;ng mang tiền mệnh gi&aacute; thấp v&agrave; mệnh gi&aacute; cao để qua trạm BOT Cai Lậy. Ban đầu, một t&agrave;i xế đi xe c&oacute; BKS tỉnh Cần Thơ đ&atilde; đưa nhiều tờ tiền mệnh gi&aacute; thấp, tổng số tiền l&agrave; 25.100 đồng.</p>\r\n\r\n<p>Sau đ&oacute;, nh&acirc;n vi&ecirc;n thối lại 200 đồng. T&agrave;i xế n&agrave;y kh&ocirc;ng đồng &yacute; nhận tiền dư, y&ecirc;u cầu nh&acirc;n vi&ecirc;n phải đưa đ&uacute;ng 100 đồng. Ngo&agrave;i ra, c&oacute; một số t&agrave;i xế đưa tiền mệnh gi&aacute; 500.000 đồng.</p>\r\n\r\n<p>Thấy &ugrave;n tắc, CSGT đ&atilde; y&ecirc;u cầu t&agrave;i xế ra khu vực đưa tiền lẻ. Tuy nhi&ecirc;n, t&agrave;i xế kh&ocirc;ng chịu n&ecirc;n xe cẩu đ&atilde; được huy động đưa xe đi. Sau đ&oacute;, đơn vị quản l&yacute; đ&atilde; phải xả trạm.</p>\r\n\r\n<p>Đại t&aacute; Trương Văn S&aacute;ng, Trưởng C&ocirc;ng an huyện Cai Lậy, cho biết việc tăng cường lực lượng chức năng để tr&aacute;nh t&igrave;nh trạng g&acirc;y rối hoặc &ugrave;n tắc giao th&ocirc;ng. Về việc t&agrave;i xế đưa tiền mệnh gi&aacute; cao hoặc mệnh gi&aacute; thấp th&igrave; c&ocirc;ng an kh&ocirc;ng xử l&yacute;.</p>\r\n\r\n<p><strong>C&ocirc;ng an l&agrave;m việc hai với bảo mẫu bạo h&agrave;nh trẻ</strong></p>\r\n\r\n<p>Ng&agrave;y 29/11, Đại t&aacute; Đo&agrave;n Văn Ph&uacute;c, Trưởng C&ocirc;ng an quận 12 (TP.Hồ Ch&iacute; Minh) cho biết, li&ecirc;n quan đến vụ việc những bảo mẫu ở cơ sở mầm non Mầm Xanh h&agrave;nh hạ trẻ em, bảo mẫu Nguyễn Thị Đ&agrave;o (23 tuổi) đ&atilde; đến c&ocirc;ng an quận 12 tr&igrave;nh diện.</p>\r\n', '', '', 'en', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'product-13', 'Sản phẩm 13', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `product_producer`
--

CREATE TABLE IF NOT EXISTS `product_producer` (
  `producer_id` int(11) NOT NULL,
  `producer_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `producer_sort_order` int(11) DEFAULT NULL,
  `producer_parent` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_producer`
--

INSERT INTO `product_producer` (`producer_id`, `producer_name`, `producer_sort_order`, `producer_parent`, `state`) VALUES
(3, 'Donaldson', 1, 0, 1),
(4, 'Komatsu', 2, 0, 1),
(5, 'Fleetguard', 3, 0, 1),
(6, 'Badwin', 4, 0, 1),
(7, 'Huyndai-Mobis', 5, 0, 1),
(8, 'Sakura', 6, 0, 1),
(9, 'Kobelco', 7, 0, 1),
(10, 'Hãng khác', 8, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_producer_languages`
--

CREATE TABLE IF NOT EXISTS `product_producer_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_producer_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `producer_id` int(11) NOT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_producer_languages`
--

INSERT INTO `product_producer_languages` (`id`, `languages_code`, `lang_producer_name`, `producer_id`, `friendly_url`) VALUES
(34, 'vn', 'Donaldson', 3, 'donaldson'),
(35, 'en', 'Donaldson', 3, 'donaldson'),
(36, 'vn', 'Komatsu', 4, 'komatsu'),
(37, 'en', 'Komatsu', 4, 'komatsu'),
(38, 'vn', 'Fleetguard', 5, 'fleetguard'),
(39, 'en', 'Fleetguard', 5, 'fleetguard'),
(40, 'vn', 'Badwin', 6, 'badwin'),
(41, 'en', 'Badwin', 6, 'badwin'),
(42, 'vn', 'Huyndai-Mobis', 7, 'huyndai-mobis'),
(43, 'en', 'Huyndai-Mobis', 7, 'huyndai-mobis'),
(44, 'vn', 'Sakura', 8, 'sakura'),
(45, 'en', 'Sakura', 8, 'sakura'),
(46, 'vn', 'Kobelco', 9, 'kobelco'),
(47, 'en', 'Kobelco', 9, 'kobelco'),
(48, 'vn', 'Hãng khác', 10, 'hang-khac'),
(49, 'en', 'Hãng khác', 10, 'hang-khac');

-- --------------------------------------------------------

--
-- Table structure for table `pro_color`
--

CREATE TABLE IF NOT EXISTS `pro_color` (
  `id` int(11) NOT NULL,
  `color` text COLLATE utf8_unicode_ci,
  `id_product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `regInfor`
--

CREATE TABLE IF NOT EXISTS `regInfor` (
  `regInfor_id` int(11) NOT NULL,
  `regInfor_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_wasBorn` int(11) DEFAULT NULL,
  `regInfor_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_state` int(11) DEFAULT '1',
  `regInfor_createdDate` date DEFAULT NULL,
  `regInfor_answer1` int(11) DEFAULT '1',
  `regInfor_answer2` int(11) DEFAULT '1',
  `regInfor_answer3` int(11) DEFAULT '1',
  `regInfor_answer4` int(11) DEFAULT '1',
  `regInfor_answer5` int(11) DEFAULT '1',
  `regInfor_answer6` int(11) DEFAULT '1',
  `regInfor_answer7` int(11) DEFAULT '1',
  `regInfor_answer8` int(11) DEFAULT '1',
  `regInfor_answer9` int(11) DEFAULT '1',
  `regInfor_sex` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `regInfor`
--

INSERT INTO `regInfor` (`regInfor_id`, `regInfor_name`, `regInfor_phone`, `regInfor_mail`, `regInfor_address`, `regInfor_wasBorn`, `regInfor_code`, `regInfor_state`, `regInfor_createdDate`, `regInfor_answer1`, `regInfor_answer2`, `regInfor_answer3`, `regInfor_answer4`, `regInfor_answer5`, `regInfor_answer6`, `regInfor_answer7`, `regInfor_answer8`, `regInfor_answer9`, `regInfor_sex`) VALUES
(25, 'fgsf', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(26, 'th', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(31, 'thuyhang', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(32, 'thuyhang2', '0967878', NULL, NULL, 1955, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 2, 'nữ'),
(34, 'thdfghgfh', 'dfasdfas', NULL, NULL, 1940, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 2, 1, 1, 'nam'),
(35, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(36, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(37, 'hh', '01669745858', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(38, '', '01669745858', NULL, NULL, 1982, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(39, 'hsdfansdf', '0967878', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(40, '', 'dsfdsfsfs', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(41, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(42, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(43, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(44, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(45, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(46, '', '01669745858', NULL, NULL, 1940, NULL, 1, '2017-06-27', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(47, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(48, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(49, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(50, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(51, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(52, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(53, 'erte', '5657', NULL, NULL, 2345, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '4'),
(54, '', '', NULL, NULL, 0, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(55, 'dryrs', '3426546', NULL, NULL, 25346, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '1'),
(56, 'hangpt', '0973378669', NULL, NULL, 1989, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '4'),
(57, 'fhgh', 'fhfhfh', NULL, NULL, 0, NULL, 1, '2017-07-15', 1, 1, 1, 1, 1, 1, 1, 1, 1, '3'),
(58, 'tgsdfg', '', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(59, 'zxcv', 'sdf', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(60, 'xzc', '35345', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `regMember`
--

CREATE TABLE IF NOT EXISTS `regMember` (
  `regMember_id` int(11) NOT NULL,
  `regMember_mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regMember_createdDate` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `regMember`
--

INSERT INTO `regMember` (`regMember_id`, `regMember_mail`, `regMember_createdDate`) VALUES
(11, 'ádgf', '2017-07-16'),
(12, 'xvdfg', '2017-07-16'),
(13, '', '2017-07-30');

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE IF NOT EXISTS `sale` (
  `sale_id` int(11) NOT NULL,
  `sale_name` text COLLATE utf8_unicode_ci,
  `sale_code` text COLLATE utf8_unicode_ci,
  `sale_total_count` int(11) DEFAULT NULL,
  `sale_type` int(11) DEFAULT NULL,
  `sale_value` float DEFAULT NULL,
  `sale_apply` int(11) DEFAULT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `sale_start_date` datetime DEFAULT NULL,
  `sale_end_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE IF NOT EXISTS `service` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_des` text COLLATE utf8_unicode_ci,
  `service_content` text COLLATE utf8_unicode_ci,
  `service_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_views` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_id` int(11) DEFAULT NULL,
  `service_author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_create_date` date DEFAULT NULL,
  `service_update_date` date DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `service_sub_infor1` text COLLATE utf8_unicode_ci,
  `service_sub_infor2` text COLLATE utf8_unicode_ci,
  `service_sub_infor3` text COLLATE utf8_unicode_ci,
  `service_sub_infor4` text COLLATE utf8_unicode_ci,
  `service_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `servicetag_arr` varchar(10000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`service_id`, `service_name`, `service_des`, `service_content`, `service_img`, `service_views`, `servicecat_id`, `service_author`, `service_create_date`, `service_update_date`, `state`, `service_sub_infor1`, `service_sub_infor2`, `service_sub_infor3`, `service_sub_infor4`, `service_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `servicetag_arr`) VALUES
(57, 'Dịch vụ 3', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', '<h3>CHI TIẾT DỰ &Aacute;N</h3>\r\n\r\n<p>Địa chỉ:&nbsp;số 72A Nguyễn Tr&atilde;i, Thanh Xu&acirc;n, H&agrave; Nội</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The Automotive Aftermarket Business Division is responsible for our replacement parts business worldwide and delivers innovative repair solutions in original-equipment quality. With our four brands LuK, INA, FAG, and Ruville, we offer clutch and release systems, engine and transmission applications, as well as chassis applications. All components are optimally tuned to work together and allow for fast and professional replacement.</p>\r\n\r\n<p><img alt="" height="563" src="/image/images/Ubuntu_wall_4_by_RPMan_Art.png" style="float:left" width="900" /></p>\r\n\r\n<p>What&rsquo;s more, our REPXPERT brand focuses on comprehensive services for garages, such as conducting practical-oriented training courses, providing support for repair with our hotline, our online garage portal and developing special tools</p>\r\n', 'sv7.jpg', '354', 4, 'Minh Công', '2017-05-22', '2017-12-03', 1, NULL, NULL, NULL, NULL, NULL, 'Dịch vụ 3', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'dich-vu-3', 'Thi công rèm', NULL, ''),
(58, 'Dịch vụ 2', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', '<h3>CHI TIẾT DỰ &Aacute;N</h3>\r\n\r\n<p>Địa chỉ:&nbsp;số 72A Nguyễn Tr&atilde;i, Thanh Xu&acirc;n, H&agrave; Nội</p>\r\n', 'sv6.jpg', '354', 3, 'Minh Công', '2017-05-22', '2017-12-03', 1, NULL, NULL, NULL, NULL, NULL, 'Dịch vụ 2', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'dich-vu-2', 'Thi công rèm', NULL, ''),
(59, 'Dịch vụ 1', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', '<h3>CHI TIẾT DỰ &Aacute;N</h3>\r\n\r\n<p>Địa chỉ:&nbsp;số 72A Nguyễn Tr&atilde;i, Thanh Xu&acirc;n, H&agrave; Nội</p>\r\n', 'sv5.jpg', '354', 3, 'Minh Công', '2017-05-22', '2017-12-03', 1, NULL, NULL, NULL, NULL, NULL, 'Dịch vụ 1', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'dich-vu-1', 'Thi công rèm', NULL, ''),
(60, 'Dịch vụ 4', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', '<h3>CHI TIẾT DỰ &Aacute;N</h3>\r\n\r\n<p>Địa chỉ:&nbsp;số 72A Nguyễn Tr&atilde;i, Thanh Xu&acirc;n, H&agrave; Nội</p>\r\n', 'sv4.jpg', '354', 4, 'Minh Công', '2017-05-22', '2017-12-03', 1, NULL, NULL, NULL, NULL, NULL, 'Dịch vụ 4', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'dich-vu-4', 'Thi công rèm', NULL, ''),
(61, 'Dịch vụ 5', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', '<h3>CHI TIẾT DỰ &Aacute;N</h3>\r\n\r\n<p>Địa chỉ:&nbsp;số 72A Nguyễn Tr&atilde;i, Thanh Xu&acirc;n, H&agrave; Nội</p>\r\n', 'sv3.jpg', '354', 4, 'Minh Công', '2017-05-22', '2017-12-03', 1, NULL, NULL, NULL, NULL, NULL, 'Dịch vụ 5', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'dich-vu-5', 'Thi công rèm', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `servicecat`
--

CREATE TABLE IF NOT EXISTS `servicecat` (
  `servicecat_id` int(11) NOT NULL,
  `servicecat_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_des` text COLLATE utf8_unicode_ci,
  `servicecat_content` text COLLATE utf8_unicode_ci,
  `servicecat_parent` int(11) DEFAULT NULL,
  `servicecat_sort_order` int(11) DEFAULT NULL,
  `servicecat_created_date` date DEFAULT NULL,
  `servicecat_update_date` date DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `servicecat_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_sub_infor1` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor2` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor3` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor4` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `servicecat`
--

INSERT INTO `servicecat` (`servicecat_id`, `servicecat_name`, `servicecat_des`, `servicecat_content`, `servicecat_parent`, `servicecat_sort_order`, `servicecat_created_date`, `servicecat_update_date`, `state`, `servicecat_img`, `servicecat_sub_infor1`, `servicecat_sub_infor2`, `servicecat_sub_infor3`, `servicecat_sub_infor4`, `servicecat_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(3, 'Danh mục dịch vụ 1', '<p>M&ocirc; tả Danh mục dịch vụ 1</p>\r\n', '', 0, 0, '2017-12-03', NULL, 1, 'sv2.jpg', NULL, NULL, NULL, NULL, NULL, 'Danh mục dịch vụ 1', '', 'danh-muc-dich-vu-1', '', 1),
(4, 'Danh mục dịch vụ 2', '<p>M&ocirc; tả Danh mục dịch vụ 2</p>\r\n', '', 0, 2, '2017-12-29', NULL, 1, 'sv1.jpg', NULL, NULL, NULL, NULL, NULL, 'Danh mục dịch vụ 2', '', 'danh-muc-dich-vu-2', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `servicecat_languages`
--

CREATE TABLE IF NOT EXISTS `servicecat_languages` (
  `id` int(11) NOT NULL,
  `lang_servicecat_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_des` text COLLATE utf8_unicode_ci,
  `lang_servicecat_content` text COLLATE utf8_unicode_ci,
  `state` int(11) DEFAULT '1',
  `lang_servicecat_sub_infor1` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor2` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor3` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor4` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `servicecat_languages`
--

INSERT INTO `servicecat_languages` (`id`, `lang_servicecat_name`, `lang_servicecat_des`, `lang_servicecat_content`, `state`, `lang_servicecat_sub_infor1`, `lang_servicecat_sub_infor2`, `lang_servicecat_sub_infor3`, `lang_servicecat_sub_infor4`, `lang_servicecat_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `languages_code`, `servicecat_id`) VALUES
(5, 'Danh mục dịch vụ 1', '<p>M&ocirc; tả Danh mục dịch vụ 1</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Danh mục dịch vụ 1', '', 'danh-muc-dich-vu-1', '', NULL, 'vn', 3),
(6, 'Dịch vụ', '', '', 1, NULL, NULL, NULL, NULL, NULL, 'Dịch vụ', '', 'dich-vu', '', NULL, 'en', 3),
(7, 'Danh mục dịch vụ 2', '<p>M&ocirc; tả Danh mục dịch vụ 2</p>\r\n', NULL, 1, '', '', '', '', '', 'Danh mục dịch vụ 2', '', 'danh-muc-dich-vu-2', '', NULL, 'vn', 4),
(8, 'category service 2', '<p>M&ocirc; tả Danh mục dịch vụ 2</p>\r\n', '1', 1, '', '', '', '', '', 'Danh mục dịch vụ 2', '', 'category-service-2', '', NULL, 'en', 4);

-- --------------------------------------------------------

--
-- Table structure for table `servicetag`
--

CREATE TABLE IF NOT EXISTS `servicetag` (
  `servicetag_id` int(11) NOT NULL,
  `servicetag_name` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_sort_order` int(11) NOT NULL,
  `servicetag_created_date` datetime NOT NULL,
  `servicetag_update_date` datetime NOT NULL,
  `state` int(11) NOT NULL,
  `servicetag_img` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicttag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_sub_info5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_seo` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `friendly_url` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `servicetag`
--

INSERT INTO `servicetag` (`servicetag_id`, `servicetag_name`, `servicetag_des`, `servicetag_content`, `servicetag_sort_order`, `servicetag_created_date`, `servicetag_update_date`, `state`, `servicetag_img`, `servicetag_sub_info1`, `servicetag_sub_info2`, `servicttag_sub_info3`, `servicetag_sub_info4`, `servicetag_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(4, 'hot', '', '', 0, '2017-12-13 15:12:00', '2017-12-13 15:12:00', 1, '', '', '', '', '', '', 'hot', '', 'hot', '', 1),
(5, 'sale', '', '', 0, '2017-12-13 15:12:12', '2017-12-13 15:12:12', 1, '', '', '', '', '', '', 'sale', '', 'sale', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `servicetag_languages`
--

CREATE TABLE IF NOT EXISTS `servicetag_languages` (
  `id` int(11) NOT NULL,
  `servicetag_id` int(11) NOT NULL,
  `languages_code` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_name` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_sub_info5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_seo` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `friendly_url` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `servicetag_languages`
--

INSERT INTO `servicetag_languages` (`id`, `servicetag_id`, `languages_code`, `lang_servicetag_name`, `lang_servicetag_des`, `lang_servicetag_content`, `lang_servicetag_sub_info1`, `lang_servicetag_sub_info2`, `lang_servicetag_sub_info3`, `lang_servicetag_sub_info4`, `lang_servicetag_sub_info5`, `title_seo`, `des_seo`, `keyword`, `friendly_url`, `state`) VALUES
(4, 4, 'vn', 'hot', '', '', '', '', '', '', '', 'hot', '', 'keyword', 'hot', 1),
(5, 4, 'en', 'hot', '', '', '', '', '', '', '', 'hot', '', 'keyword', 'hot', 1),
(6, 5, 'vn', 'sale', '<p>1</p>\r\n', '', '', '', '', '', '', 'sale', '', 'keyword', 'sale', 1),
(7, 5, 'en', 'sale', '<p>2</p>\r\n', '', '', '', '', '', '', 'sale', '', 'keyword', 'sale', 1);

-- --------------------------------------------------------

--
-- Table structure for table `service_languages`
--

CREATE TABLE IF NOT EXISTS `service_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_des` text COLLATE utf8_unicode_ci,
  `lang_service_content` text COLLATE utf8_unicode_ci,
  `lang_service_author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `service_sub_infor1` text COLLATE utf8_unicode_ci,
  `service_sub_infor2` text COLLATE utf8_unicode_ci,
  `service_sub_infor3` text COLLATE utf8_unicode_ci,
  `service_sub_infor4` text COLLATE utf8_unicode_ci,
  `service_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `service_languages`
--

INSERT INTO `service_languages` (`id`, `languages_code`, `lang_service_name`, `lang_service_des`, `lang_service_content`, `lang_service_author`, `state`, `service_sub_infor1`, `service_sub_infor2`, `service_sub_infor3`, `service_sub_infor4`, `service_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `service_id`) VALUES
(69, 'vn', 'Dịch vụ 3', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', '<h3>CHI TIẾT DỰ &Aacute;N</h3>\r\n\r\n<p>Địa chỉ:&nbsp;số 72A Nguyễn Tr&atilde;i, Thanh Xu&acirc;n, H&agrave; Nội</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The Automotive Aftermarket Business Division is responsible for our replacement parts business worldwide and delivers innovative repair solutions in original-equipment quality. With our four brands LuK, INA, FAG, and Ruville, we offer clutch and release systems, engine and transmission applications, as well as chassis applications. All components are optimally tuned to work together and allow for fast and professional replacement.</p>\r\n\r\n<p><img alt="" height="563" src="/image/images/Ubuntu_wall_4_by_RPMan_Art.png" style="float:left" width="900" /></p>\r\n\r\n<p>What&rsquo;s more, our REPXPERT brand focuses on comprehensive services for garages, such as conducting practical-oriented training courses, providing support for repair with our hotline, our online garage portal and developing special tools</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Dịch vụ 3', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'dich-vu-3', 'Thi công rèm', NULL, 57),
(70, 'en', 'Thi công rèm chung cư Roal City', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', '<h3>CHI TIẾT DỰ &Aacute;N</h3>\r\n\r\n<p>Địa chỉ:&nbsp;số 72A Nguyễn Tr&atilde;i, Thanh Xu&acirc;n, H&agrave; Nội</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Thi công rèm chung cư Roal City', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'thi-cong-rem-chung-cu-roal-city', 'Thi công rèm', NULL, 57),
(71, 'vn', 'Dịch vụ 2', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', '<h3>CHI TIẾT DỰ &Aacute;N</h3>\r\n\r\n<p>Địa chỉ:&nbsp;số 72A Nguyễn Tr&atilde;i, Thanh Xu&acirc;n, H&agrave; Nội</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Dịch vụ 2', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'dich-vu-2', 'Thi công rèm', NULL, 58),
(72, 'en', 'Thi công rèm chung cư Vimcom Bà Triệu', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', '<h3>CHI TIẾT DỰ &Aacute;N</h3>\r\n\r\n<p>Địa chỉ:&nbsp;số 72A Nguyễn Tr&atilde;i, Thanh Xu&acirc;n, H&agrave; Nội</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Thi công rèm chung cư Vimcom Bà Triệu', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'thi-cong-rem-chung-cu-vimcom-ba-trieu', 'Thi công rèm', NULL, 58),
(73, 'vn', 'Dịch vụ 1', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', '<h3>CHI TIẾT DỰ ÁN</h3>\r\n\r\n<p>Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội</p>\r\n', NULL, 1, '', '', '', '', '', 'Dịch vụ 1', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'dich-vu-1', 'Thi công rèm', NULL, 59),
(74, 'en', 'Thi công rèm khu đô thị Ecopark', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', '<h3>CHI TIẾT DỰ ÁN</h3>\r\n\r\n<p>Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội</p>\r\n', NULL, 1, '', '', '', '', '', 'Thi công rèm khu đô thị Ecopark', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'thi-cong-rem-khu-do-thi-ecopark', 'Thi công rèm', NULL, 59),
(75, 'vn', 'Dịch vụ 4', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', '<h3>CHI TIẾT DỰ &Aacute;N</h3>\r\n\r\n<p>Địa chỉ:&nbsp;số 72A Nguyễn Tr&atilde;i, Thanh Xu&acirc;n, H&agrave; Nội</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Dịch vụ 4', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'dich-vu-4', 'Thi công rèm', NULL, 60),
(76, 'en', 'Thi công rèm khách sạn Thắng Lợi', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', '<h3>CHI TIẾT DỰ &Aacute;N</h3>\r\n\r\n<p>Địa chỉ:&nbsp;số 72A Nguyễn Tr&atilde;i, Thanh Xu&acirc;n, H&agrave; Nội</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Thi công rèm khách sạn Thắng Lợi', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'thi-cong-rem-khach-san-thang-loi', 'Thi công rèm', NULL, 60),
(77, 'vn', 'Dịch vụ 5', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', '<h3>CHI TIẾT DỰ ÁN</h3>\r\n\r\n<p>Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội</p>\r\n', NULL, 1, '', '', '', '', '', 'Dịch vụ 5', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'dich-vu-5', 'Thi công rèm', NULL, 61),
(78, 'en', 'Thi công rèm chung cư Keangnam', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', '<h3>CHI TIẾT DỰ ÁN</h3>\r\n\r\n<p>Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội</p>\r\n', NULL, 1, '', '', '', '', '', 'Thi công rèm chung cư Keangnam', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'thi-cong-rem-chung-cu-keangnam', 'Thi công rèm', NULL, 61);

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE IF NOT EXISTS `size` (
  `size_id` bigint(20) NOT NULL,
  `size_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size_stock` int(11) DEFAULT NULL,
  `size_price` double DEFAULT NULL,
  `color_id` bigint(20) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_address` text COLLATE utf8_unicode_ci,
  `user_password` text COLLATE utf8_unicode_ci,
  `created_date` datetime DEFAULT NULL,
  `state` int(11) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_phone`, `user_address`, `user_password`, `created_date`, `state`) VALUES
(1, 'mystery078', 'tung92.ns@gmail.com', '01658824321', '', '$2y$10$zjlyFYq6vJ6TXeQVsOh/1esNuHFTf23SE62fvXVvyUAYvzxyCNzv6', '2017-03-12 02:03:39', 1),
(2, 'manh', 'manh@gmail.com', '0123434', '', '$2y$10$8JKJKBN1HlCxSIR6nv39pedRpujNWEOOQ9ePRT07j4x2F4blrAfA2', '2017-03-23 15:03:28', 1),
(3, 'tuấn', 'tuan@gmail.com', '01669', 'Hà Nội', 'c4ca4238a0b923820dcc509a6f75849b', NULL, 1),
(4, 'Hùng', 'hung@gmail.com', '01666', 'Hồ chí minh', 'c4ca4238a0b923820dcc509a6f75849b', '2017-11-22 18:05:16', 1),
(5, 'loan', 'loan@gmail.com', '', '', 'c4ca4238a0b923820dcc509a6f75849b', '2017-11-23 10:33:10', 1),
(6, 'anh', 'anh@gmail.com', '', '', 'c4ca4238a0b923820dcc509a6f75849b', '2017-11-26 09:42:49', 1),
(7, 'tuấn', 'tuan1@gmail.com', '', '', 'c4ca4238a0b923820dcc509a6f75849b', '2017-12-14 11:44:52', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_online`
--

CREATE TABLE IF NOT EXISTS `user_online` (
  `tgtmp` int(15) NOT NULL DEFAULT '0',
  `ip` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `local` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE IF NOT EXISTS `wishlist` (
  `wishlist_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `wishlist_created_date` datetime DEFAULT NULL,
  `product_name` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `admin_role` (`admin_role`),
  ADD KEY `admin_state` (`admin_state`);

--
-- Indexes for table `admin_role`
--
ALTER TABLE `admin_role`
  ADD PRIMARY KEY (`admin_role_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Indexes for table `cartdetail`
--
ALTER TABLE `cartdetail`
  ADD PRIMARY KEY (`id_cartDetail`),
  ADD KEY `id_cart` (`id_cart`);

--
-- Indexes for table `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`color_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`config_id`);

--
-- Indexes for table `config_languages`
--
ALTER TABLE `config_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `config_id` (`config_id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`currency_id`),
  ADD UNIQUE KEY `currency_code` (`currency_code`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`languages_id`);

--
-- Indexes for table `lien_he`
--
ALTER TABLE `lien_he`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`),
  ADD KEY `menu_type_id` (`menu_type_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `state` (`state`),
  ADD KEY `menu_parent` (`menu_parent`),
  ADD KEY `productcat_id` (`productcat_id`),
  ADD KEY `newscat_id` (`newscat_id`);

--
-- Indexes for table `menu_languages`
--
ALTER TABLE `menu_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `menu_type`
--
ALTER TABLE `menu_type`
  ADD PRIMARY KEY (`menu_type_id`);

--
-- Indexes for table `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_menu_type` (`menu_type_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Indexes for table `newscat`
--
ALTER TABLE `newscat`
  ADD PRIMARY KEY (`newscat_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Indexes for table `newscat_languages`
--
ALTER TABLE `newscat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `newscat_id` (`newscat_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Indexes for table `newstag`
--
ALTER TABLE `newstag`
  ADD PRIMARY KEY (`newstag_id`);

--
-- Indexes for table `newstag_languages`
--
ALTER TABLE `newstag_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_languages`
--
ALTER TABLE `news_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Indexes for table `optionsQ1`
--
ALTER TABLE `optionsQ1`
  ADD PRIMARY KEY (`optionsQ1_id`);

--
-- Indexes for table `optionsQ2`
--
ALTER TABLE `optionsQ2`
  ADD PRIMARY KEY (`optionsQ2_id`);

--
-- Indexes for table `optionsQ3`
--
ALTER TABLE `optionsQ3`
  ADD PRIMARY KEY (`optionsQ3_id`);

--
-- Indexes for table `optionsQ4`
--
ALTER TABLE `optionsQ4`
  ADD PRIMARY KEY (`optionsQ4_id`);

--
-- Indexes for table `optionsQ5`
--
ALTER TABLE `optionsQ5`
  ADD PRIMARY KEY (`optionsQ5_id`);

--
-- Indexes for table `optionsQ6`
--
ALTER TABLE `optionsQ6`
  ADD PRIMARY KEY (`optionsQ6_id`);

--
-- Indexes for table `optionsQ7`
--
ALTER TABLE `optionsQ7`
  ADD PRIMARY KEY (`optionsQ7_id`);

--
-- Indexes for table `optionsQ8`
--
ALTER TABLE `optionsQ8`
  ADD PRIMARY KEY (`optionsQ8_id`);

--
-- Indexes for table `optionsQ9`
--
ALTER TABLE `optionsQ9`
  ADD PRIMARY KEY (`optionsQ9_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `orders_state` (`orders_state`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Indexes for table `order_state`
--
ALTER TABLE `order_state`
  ADD PRIMARY KEY (`order_state_id`),
  ADD KEY `state` (`state`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`page_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Indexes for table `page_languages`
--
ALTER TABLE `page_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_cat_id` (`productcat_id`),
  ADD KEY `product_hot` (`product_hot`),
  ADD KEY `state` (`state`),
  ADD KEY `product_sale` (`product_sale`),
  ADD KEY `product_new` (`product_new`),
  ADD KEY `created_id` (`created_id`);

--
-- Indexes for table `productcat`
--
ALTER TABLE `productcat`
  ADD PRIMARY KEY (`productcat_id`),
  ADD KEY `productcat_sort_order` (`productcat_sort_order`),
  ADD KEY `productcat_parent` (`productcat_parent`),
  ADD KEY `created_id` (`created_id`);

--
-- Indexes for table `productcat_languages`
--
ALTER TABLE `productcat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_cat_id` (`productcat_id`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Indexes for table `producttag`
--
ALTER TABLE `producttag`
  ADD PRIMARY KEY (`producttag_id`);

--
-- Indexes for table `producttag_languages`
--
ALTER TABLE `producttag_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product_languages`
--
ALTER TABLE `product_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Indexes for table `product_producer`
--
ALTER TABLE `product_producer`
  ADD PRIMARY KEY (`producer_id`);

--
-- Indexes for table `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producer_id` (`producer_id`);

--
-- Indexes for table `pro_color`
--
ALTER TABLE `pro_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `regInfor`
--
ALTER TABLE `regInfor`
  ADD PRIMARY KEY (`regInfor_id`);

--
-- Indexes for table `regMember`
--
ALTER TABLE `regMember`
  ADD PRIMARY KEY (`regMember_id`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`sale_id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `servicecat`
--
ALTER TABLE `servicecat`
  ADD PRIMARY KEY (`servicecat_id`);

--
-- Indexes for table `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_servicecat` (`servicecat_id`);

--
-- Indexes for table `servicetag`
--
ALTER TABLE `servicetag`
  ADD PRIMARY KEY (`servicetag_id`);

--
-- Indexes for table `servicetag_languages`
--
ALTER TABLE `servicetag_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_languages`
--
ALTER TABLE `service_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_service` (`service_id`);

--
-- Indexes for table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`size_id`),
  ADD KEY `color_id` (`color_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_online`
--
ALTER TABLE `user_online`
  ADD PRIMARY KEY (`tgtmp`),
  ADD KEY `ip` (`ip`),
  ADD KEY `local` (`local`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `admin_role`
--
ALTER TABLE `admin_role`
  MODIFY `admin_role_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `cartdetail`
--
ALTER TABLE `cartdetail`
  MODIFY `id_cartDetail` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `color`
--
ALTER TABLE `color`
  MODIFY `color_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `config_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `config_languages`
--
ALTER TABLE `config_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `languages_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `lien_he`
--
ALTER TABLE `lien_he`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=197;
--
-- AUTO_INCREMENT for table `menu_languages`
--
ALTER TABLE `menu_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=371;
--
-- AUTO_INCREMENT for table `menu_type`
--
ALTER TABLE `menu_type`
  MODIFY `menu_type_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `newscat`
--
ALTER TABLE `newscat`
  MODIFY `newscat_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `newscat_languages`
--
ALTER TABLE `newscat_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=121;
--
-- AUTO_INCREMENT for table `newstag`
--
ALTER TABLE `newstag`
  MODIFY `newstag_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `newstag_languages`
--
ALTER TABLE `newstag_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `news_languages`
--
ALTER TABLE `news_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `optionsQ1`
--
ALTER TABLE `optionsQ1`
  MODIFY `optionsQ1_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `optionsQ2`
--
ALTER TABLE `optionsQ2`
  MODIFY `optionsQ2_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `optionsQ3`
--
ALTER TABLE `optionsQ3`
  MODIFY `optionsQ3_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `optionsQ4`
--
ALTER TABLE `optionsQ4`
  MODIFY `optionsQ4_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `optionsQ5`
--
ALTER TABLE `optionsQ5`
  MODIFY `optionsQ5_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `optionsQ6`
--
ALTER TABLE `optionsQ6`
  MODIFY `optionsQ6_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `optionsQ7`
--
ALTER TABLE `optionsQ7`
  MODIFY `optionsQ7_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `optionsQ8`
--
ALTER TABLE `optionsQ8`
  MODIFY `optionsQ8_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `optionsQ9`
--
ALTER TABLE `optionsQ9`
  MODIFY `optionsQ9_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_state`
--
ALTER TABLE `order_state`
  MODIFY `order_state_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `page_languages`
--
ALTER TABLE `page_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `productcat`
--
ALTER TABLE `productcat`
  MODIFY `productcat_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=179;
--
-- AUTO_INCREMENT for table `productcat_languages`
--
ALTER TABLE `productcat_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=343;
--
-- AUTO_INCREMENT for table `producttag`
--
ALTER TABLE `producttag`
  MODIFY `producttag_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `producttag_languages`
--
ALTER TABLE `producttag_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `product_color`
--
ALTER TABLE `product_color`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product_languages`
--
ALTER TABLE `product_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=123;
--
-- AUTO_INCREMENT for table `product_producer`
--
ALTER TABLE `product_producer`
  MODIFY `producer_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `pro_color`
--
ALTER TABLE `pro_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `regInfor`
--
ALTER TABLE `regInfor`
  MODIFY `regInfor_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `regMember`
--
ALTER TABLE `regMember`
  MODIFY `regMember_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `sale`
--
ALTER TABLE `sale`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `servicecat`
--
ALTER TABLE `servicecat`
  MODIFY `servicecat_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `servicetag`
--
ALTER TABLE `servicetag`
  MODIFY `servicetag_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `servicetag_languages`
--
ALTER TABLE `servicetag_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `service_languages`
--
ALTER TABLE `service_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `size`
--
ALTER TABLE `size`
  MODIFY `size_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `cartdetail`
--
ALTER TABLE `cartdetail`
  ADD CONSTRAINT `cartdetail_ibfk_1` FOREIGN KEY (`id_cart`) REFERENCES `cart` (`id_cart`) ON DELETE CASCADE;

--
-- Constraints for table `color`
--
ALTER TABLE `color`
  ADD CONSTRAINT `color_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_languages`
--
ALTER TABLE `menu_languages`
  ADD CONSTRAINT `menu_languages_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`menu_id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  ADD CONSTRAINT `menu_type_languages_ibfk_1` FOREIGN KEY (`menu_type_id`) REFERENCES `menu_type` (`menu_type_id`) ON DELETE CASCADE;

--
-- Constraints for table `newscat_languages`
--
ALTER TABLE `newscat_languages`
  ADD CONSTRAINT `newscat_languages_ibfk_1` FOREIGN KEY (`newscat_id`) REFERENCES `newscat` (`newscat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `news_languages`
--
ALTER TABLE `news_languages`
  ADD CONSTRAINT `news_languages_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`news_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`orders_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `page_languages`
--
ALTER TABLE `page_languages`
  ADD CONSTRAINT `page_languages_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `page` (`page_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `productcat_languages`
--
ALTER TABLE `productcat_languages`
  ADD CONSTRAINT `productcat_languages_ibfk_1` FOREIGN KEY (`productcat_id`) REFERENCES `productcat` (`productcat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_languages`
--
ALTER TABLE `product_languages`
  ADD CONSTRAINT `product_languages_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  ADD CONSTRAINT `product_producer_languages_ibfk_1` FOREIGN KEY (`producer_id`) REFERENCES `product_producer` (`producer_id`) ON DELETE CASCADE;

--
-- Constraints for table `pro_color`
--
ALTER TABLE `pro_color`
  ADD CONSTRAINT `pro_color_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`product_id`) ON DELETE CASCADE;

--
-- Constraints for table `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  ADD CONSTRAINT `servicecat_languages_ibfk_1` FOREIGN KEY (`servicecat_id`) REFERENCES `servicecat` (`servicecat_id`) ON DELETE CASCADE;

--
-- Constraints for table `service_languages`
--
ALTER TABLE `service_languages`
  ADD CONSTRAINT `service_languages_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `service` (`service_id`) ON DELETE CASCADE;

--
-- Constraints for table `size`
--
ALTER TABLE `size`
  ADD CONSTRAINT `size_ibfk_1` FOREIGN KEY (`color_id`) REFERENCES `color` (`color_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
