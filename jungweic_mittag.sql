-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- 主機: localhost:3306
-- 產生時間： 2018 年 04 月 28 日 11:15
-- 伺服器版本: 5.6.39-cll-lve
-- PHP 版本： 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `jungweic_mittag`
--

-- --------------------------------------------------------

--
-- 資料表結構 `oc_address`
--

CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL,
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
  `custom_field` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_address`
--

INSERT INTO `oc_address` (`address_id`, `customer_id`, `firstname`, `lastname`, `company`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`, `custom_field`) VALUES
(3, 4, 'James', 'Wu', '', 'Gfdrest gytrews', '', 'Taipei', '', 206, 3137, '[]'),
(18, 21, '詹姆士', '吳', '', '中和區南山路250巷12-1號', '', '新北市', '23570', 206, 3137, ''),
(8, 9, 'wei', 'lin', '', '中和南山路', '', '中和', '', 206, 3137, ''),
(14, 17, 'LingWei', 'Lin', '', '', '', '', '', 0, 0, '');

-- --------------------------------------------------------

--
-- 資料表結構 `oc_affiliate`
--

CREATE TABLE `oc_affiliate` (
  `affiliate_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
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
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_affiliate_activity`
--

CREATE TABLE `oc_affiliate_activity` (
  `affiliate_activity_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_affiliate_login`
--

CREATE TABLE `oc_affiliate_login` (
  `affiliate_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_affiliate_transaction`
--

CREATE TABLE `oc_affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_api`
--

CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_api`
--

INSERT INTO `oc_api` (`api_id`, `name`, `key`, `status`, `date_added`, `date_modified`) VALUES
(1, 'Default', 'txvawFKOKWqjJZJuH5TNjMtGn4vC1KXYLauu35j3vCar7OyiqU7bbkenz1PKQy9lxmSjPbSkvbG7Y9mNK8xi1qmbSdb9jx1vJusJ0BMmTFCrJQRkRAw4afJzlNXyDpCaCPIvA9tMLR0jJPaOAwzQ4mKK8SI4S2HXCSmiQlyk9WYEQibgFxg0IF6rayfXcji6OVaQ6UHVmGsXMmmnLlyGSm7QNN3HYg1XI0upjX15SvJIrRgHf9oBNViuRiBeV4km', 1, '2016-11-05 08:43:30', '2016-11-05 08:43:30');

-- --------------------------------------------------------

--
-- 資料表結構 `oc_api_ip`
--

CREATE TABLE `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_api_ip`
--

INSERT INTO `oc_api_ip` (`api_ip_id`, `api_id`, `ip`) VALUES
(1, 1, '220.135.38.215'),
(2, 1, '223.140.154.40'),
(3, 1, '114.136.36.77');

-- --------------------------------------------------------

--
-- 資料表結構 `oc_api_session`
--

CREATE TABLE `oc_api_session` (
  `api_session_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `token` varchar(32) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `session_name` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_api_session`
--

INSERT INTO `oc_api_session` (`api_session_id`, `api_id`, `token`, `session_id`, `session_name`, `ip`, `date_added`, `date_modified`) VALUES
(20, 1, 'Wfs8vEmZfO8dpT0MtuF1ptFlInue4XZx', 'qp5eebqa0ctnsbmbvckkhhpiq0', '', '220.135.38.215', '2018-02-25 17:09:32', '2018-02-25 17:09:32'),
(19, 1, 'mMx8q1ZlUjLhlDHhnEBZ5muzVDj3mdUE', '1ct2js8tcvqfpa5ccniunovuo0', '', '114.136.36.77', '2018-02-25 13:56:25', '2018-02-25 13:56:25'),
(18, 1, 'DmLUnVf1JxLL1IZR95mPg0as9Ut4YXPH', 'ocj9kum61826u0esgo7p65tfv3', '', '220.135.38.215', '2018-02-10 12:39:54', '2018-02-10 12:39:54'),
(17, 1, '33c1TCzuFXV91Rc7t45q6tyZjb4eaDQL', '98emmnn1ptln31muqul1kvl9s1', '', '220.135.38.215', '2018-02-10 12:39:35', '2018-02-10 12:39:35'),
(16, 1, 'bZu8zplEarmwmHPxO0VWFj1yrqMuxGxC', 'd9j57hdl7miv127r8r3j00aup1', '', '220.135.38.215', '2018-02-10 12:25:32', '2018-02-10 12:25:32'),
(15, 1, 'fisEfUqNYyCM2KuSukpL8T0Gu6y1MozQ', '70dlblb0l9hees93mu8o6qrc07', '', '223.140.154.40', '2018-01-27 11:19:39', '2018-01-27 11:19:39'),
(14, 1, '4hqfQc2Zc0S0vSV4XLC4FvZoFkLvI0pF', '7ecb1p2q1ff4rifbgq2m8kc3p1', '', '223.140.154.40', '2018-01-27 11:19:18', '2018-01-27 11:19:18'),
(13, 1, '7jRn9i8TfCWTfkUFtpxebiJ5B8QBiTNO', '7hmqepq4m7ji41kknevvtvnei4', '', '223.140.154.40', '2018-01-27 11:18:45', '2018-01-27 11:18:45'),
(10, 1, '8mYaAhLBZOeF2FshJPzXGppkd3iyGoJd', '0q71jaurojlcjc07m7qoinm134', '', '223.140.154.40', '2018-01-27 11:15:16', '2018-01-27 11:15:16'),
(11, 1, 'SGujWmbPvmY8Xv83qWsIDxJy1dsrH5I7', 'tsko1ma8o73dg8he5v9jgn3uu7', '', '223.140.154.40', '2018-01-27 11:15:31', '2018-01-27 11:15:31'),
(12, 1, 'yA4VkCZClBK70giRduKv2NVeKBcJSXRD', '94ie9p3h79qmml495rf9bpug20', '', '223.140.154.40', '2018-01-27 11:16:24', '2018-01-27 11:16:45');

-- --------------------------------------------------------

--
-- 資料表結構 `oc_attribute`
--

CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_attribute_description`
--

CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_attribute_group`
--

CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_attribute_group_description`
--

CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_banner`
--

CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(7, 'Home Page Slideshow1', 1),
(9, 'Home Page Slideshow2', 0),
(10, 'home page slideshow3', 0);

-- --------------------------------------------------------

--
-- 資料表結構 `oc_banner_image`
--

CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `language_id`, `title`, `link`, `image`, `sort_order`) VALUES
(398, 7, 1, 'banner2018_packaging_02', 'http://www.mittag.com.tw/index.php?route=information/information&amp;information_id=9', 'catalog/Activities/banners_NOT_AD/banner2018_packaging_02.jpg', 10),
(119, 9, 1, 'nacklace4', 'http://localhost:8081/mittag/upload/index.php?route=product/product&amp;path=20&amp;product_id=42', 'catalog/ring/F8BA6461CEBFEB8EBA1E1D614F36A909C7F4E1C0.jpg', 0),
(118, 9, 1, 'necklace5', 'http://localhost:8081/mittag/upload/index.php?route=product/product&amp;path=20&amp;product_id=42', 'catalog/ring/SB295_1.jpg', 0),
(399, 7, 1, 'banner2018006', 'http://www.mittag.com.tw/index.php?route=product/product&amp;path=18&amp;product_id=214', 'catalog/Activities/banners_NOT_AD/banner2018006.jpg', 11),
(121, 10, 1, 'demo4', 'http://localhost:8081/mittag/upload/index.php?route=product/product&amp;path=20&amp;product_id=42', 'catalog/thumb_big_share_picture_1366260549.jpg', 0),
(120, 10, 1, 'demo3', 'http://localhost:8081/mittag/upload/index.php?route=product/product&amp;path=20&amp;product_id=42', 'catalog/ring/2bc6950d-f2ee-49b6-8032-7ea65921a8ab.jpg', 0),
(397, 7, 1, 'banner2018007', 'http://www.mittag.com.tw/index.php?route=product/category&amp;path=24', 'catalog/Activities/banners_NOT_AD/banner2018007.jpg', 9),
(396, 7, 1, 'banner2018_packaging_01', 'http://www.mittag.com.tw/index.php?route=information/information&amp;information_id=9', 'catalog/Activities/banners_NOT_AD/banner2018_packaging_01.jpg', 8),
(394, 7, 1, 'banner2018003', '', 'catalog/Activities/banners_NOT_AD/banner2018003.jpg', 6),
(395, 7, 1, 'banner2018005', 'http://www.mittag.com.tw/index.php?route=product/product&amp;path=17&amp;product_id=306', 'catalog/Activities/banners_NOT_AD/banner2018005.jpg', 7),
(392, 7, 1, 'banner2018002', '', 'catalog/Activities/banners_NOT_AD/banner2018002.jpg', 4),
(393, 7, 1, 'banner2018004', 'http://www.mittag.com.tw/index.php?route=product/product&amp;path=25&amp;product_id=345', 'catalog/Activities/banners_NOT_AD/banner2018004.jpg', 5),
(389, 7, 1, 'website_readiness_celebration', 'http://www.mittag.com.tw/index.php?route=product/product&amp;path=60&amp;product_id=349', 'catalog/Activities/2018_001_web_celebration/celebration_ad_web_banner_20180307_1.gif', 1),
(391, 7, 1, 'banner2018001', 'http://www.mittag.com.tw/index.php?route=product/product&amp;path=18&amp;product_id=222', 'catalog/Activities/banners_NOT_AD/banner2018001.jpg', 3),
(390, 7, 1, 'banner2018_free_shipping', 'http://www.mittag.com.tw/index.php?route=information/information&amp;information_id=6', 'catalog/Activities/banners_NOT_AD/banner2018_free_shipping.jpg', 2);

-- --------------------------------------------------------

--
-- 資料表結構 `oc_cart`
--

CREATE TABLE `oc_cart` (
  `cart_id` int(11) UNSIGNED NOT NULL,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `extraDetail` varchar(255) NOT NULL,
  `extraDetail1` varchar(255) NOT NULL,
  `extraDetail2` varchar(255) NOT NULL,
  `extraDetail3` varchar(255) NOT NULL,
  `extraDetail4` varchar(255) NOT NULL,
  `extraDetail5` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_cart`
--

INSERT INTO `oc_cart` (`cart_id`, `api_id`, `customer_id`, `session_id`, `extraDetail`, `extraDetail1`, `extraDetail2`, `extraDetail3`, `extraDetail4`, `extraDetail5`, `product_id`, `recurring_id`, `option`, `quantity`, `date_added`) VALUES
(18, 0, 8, 'icmvankqdju32j5shr6nlfcd61', '[]', '請選擇戒圍', '0', '', '0', '', 56, 0, '[]', 1, '2017-09-11 09:00:30'),
(19, 0, 8, 'icmvankqdju32j5shr6nlfcd61', '[]', '請選擇戒圍', '0', '', '0', '', 60, 0, '[]', 1, '2017-09-11 09:00:41'),
(20, 0, 8, 'icmvankqdju32j5shr6nlfcd61', '[]', '14號(1.8cm)', '', '', '', '', 92, 0, '[]', 1, '2017-09-11 09:00:55'),
(31, 0, 6, 'm51mcpf68qahp0o3pith20n1o0', '[]', '4號(1.3cm)', '', '', '', '耳夾式耳環', 81, 0, '[]', 1, '2017-11-04 17:10:54'),
(55, 0, 1, 'fkgcfct2gi79i25vjav9l0oss7', '', '', '', '', '', '', 123, 0, '[]', 1, '2017-12-07 00:03:50'),
(59, 0, 1, 'fkgcfct2gi79i25vjav9l0oss7', '', '', '', '', '', '', 119, 0, '[]', 1, '2017-12-10 14:19:08'),
(67, 0, 18, 'flvfk40lgl8nk3hal33lpgkl72', '', '', '', '', '', '', 122, 0, '[]', 1, '2018-01-28 17:50:14'),
(73, 0, 19, 'flvfk40lgl8nk3hal33lpgkl72', '', '', '', '', '', '', 98, 0, '[]', 1, '2018-01-28 18:50:49'),
(74, 0, 19, 'flvfk40lgl8nk3hal33lpgkl72', '', '', '', '', '', '', 119, 0, '[]', 1, '2018-01-28 18:50:49'),
(79, 0, 20, 'flvfk40lgl8nk3hal33lpgkl72', '', '', '', '', '', '', 117, 0, '[]', 1, '2018-01-28 18:54:18'),
(87, 0, 23, 'rs657d5faum8q97k6bjqj094o2', '[]', '', '', '', '', '', 131, 0, '[]', 1, '2018-02-25 17:12:16');

-- --------------------------------------------------------

--
-- 資料表結構 `oc_category`
--

CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(25, '', 0, 1, 1, 4, 1, '2009-01-31 01:04:25', '2018-03-18 20:56:55'),
(20, '', 0, 1, 1, 5, 1, '2009-01-05 21:49:43', '2018-03-18 20:58:16'),
(24, '', 0, 1, 1, 6, 1, '2009-01-20 02:36:26', '2018-03-18 20:59:25'),
(18, '', 0, 1, 1, 2, 1, '2009-01-05 21:49:15', '2018-03-18 20:55:05'),
(17, '', 0, 1, 1, 3, 1, '2009-01-03 21:08:57', '2018-03-18 20:56:02'),
(33, '', 0, 1, 1, 8, 1, '2009-02-03 14:17:55', '2018-03-18 21:01:20'),
(34, '', 0, 1, 1, 7, 1, '2009-02-03 14:18:11', '2018-03-18 21:00:18'),
(60, '', 0, 1, 1, 9, 1, '2017-09-10 13:34:04', '2018-03-18 21:02:16'),
(61, '', 0, 1, 1, 1, 1, '2018-03-10 22:12:24', '2018-03-18 20:54:02');

-- --------------------------------------------------------

--
-- 資料表結構 `oc_category_description`
--

CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `mouseover` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`, `mouseover`) VALUES
(33, 1, 'silverware', '', 'mittag_silverware', '手做 手作 handmade 銀飾 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 tiffany georg jensen 喬治傑生 dienes', '手做 手作 handmade 銀飾 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 tiffany georg jensen 喬治傑生 dienes', ''),
(20, 1, 'earring', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n', 'mittag_earring', '手做 手作 handmade 銀飾 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 tiffany georg jensen 喬治傑生 dienes', '手做 手作 handmade 銀飾 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 tiffany georg jensen 喬治傑生 dienes', ''),
(34, 1, 'others', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n', 'mittag_others', '手做 手作 handmade 銀飾 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 tiffany georg jensen 喬治傑生 dienes', '手做 手作 handmade 銀飾 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 tiffany georg jensen 喬治傑生 dienes', ''),
(18, 1, 'necklace', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n', 'mittag_necklace', '手做 手作 handmade 銀飾 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 tiffany georg jensen 喬治傑生 dienes', '手做 手作 handmade 銀飾 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 tiffany georg jensen 喬治傑生 dienes', ''),
(24, 1, 'baby shower gift', '', 'mittag_baby_shower_gift', '手做 手作 handmade 銀飾 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 tiffany georg jensen 喬治傑生 dienes', '手做 手作 handmade 銀飾 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 tiffany georg jensen 喬治傑生 dienes', ''),
(60, 1, 'activities', '', 'mittag_activities', '手做 手作 handmade 銀飾 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 tiffany georg jensen 喬治傑生 dienes', '手做 手作 handmade 銀飾 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 tiffany georg jensen 喬治傑生 dienes', ''),
(17, 1, 'bracelet', '', 'mittag_bracelet', '手做 手作 handmade 銀飾 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 tiffany georg jensen 喬治傑生 dienes', '手做 手作 handmade 銀飾 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 tiffany georg jensen 喬治傑生 dienes', ''),
(25, 1, 'ring', '', 'mittag_ring', '手做 手作 handmade 銀飾 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 tiffany georg jensen 喬治傑生 dienes', '手做 手作 handmade 銀飾 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 tiffany georg jensen 喬治傑生 dienes', ''),
(61, 1, 'hot products', '', 'mittag_hot_products', '手做 手作 handmade 銀飾 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 tiffany georg jensen 喬治傑生 dienes', '手做 手作 handmade 銀飾 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 tiffany georg jensen 喬治傑生 dienes', '');

-- --------------------------------------------------------

--
-- 資料表結構 `oc_category_filter`
--

CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_category_path`
--

CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(25, 25, 0),
(20, 20, 0),
(24, 24, 0),
(18, 18, 0),
(17, 17, 0),
(33, 33, 0),
(34, 34, 0),
(60, 60, 0),
(61, 61, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `oc_category_to_layout`
--

CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_category_to_layout`
--

INSERT INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(20, 0, 0),
(18, 0, 0),
(25, 0, 0),
(17, 0, 0),
(24, 0, 0),
(33, 0, 0),
(34, 0, 0),
(60, 0, 14),
(61, 0, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `oc_category_to_store`
--

CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(17, 0),
(18, 0),
(20, 0),
(24, 0),
(25, 0),
(33, 0),
(34, 0),
(60, 0),
(61, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `oc_country`
--

CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '', 0, 1),
(2, 'Albania', 'AL', 'ALB', '', 0, 1),
(3, 'Algeria', 'DZ', 'DZA', '', 0, 1),
(4, 'American Samoa', 'AS', 'ASM', '', 0, 1),
(5, 'Andorra', 'AD', 'AND', '', 0, 1),
(6, 'Angola', 'AO', 'AGO', '', 0, 1),
(7, 'Anguilla', 'AI', 'AIA', '', 0, 1),
(8, 'Antarctica', 'AQ', 'ATA', '', 0, 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 1),
(10, 'Argentina', 'AR', 'ARG', '', 0, 1),
(11, 'Armenia', 'AM', 'ARM', '', 0, 1),
(12, 'Aruba', 'AW', 'ABW', '', 0, 1),
(13, 'Australia', 'AU', 'AUS', '', 0, 1),
(14, 'Austria', 'AT', 'AUT', '', 0, 1),
(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 1),
(16, 'Bahamas', 'BS', 'BHS', '', 0, 1),
(17, 'Bahrain', 'BH', 'BHR', '', 0, 1),
(18, 'Bangladesh', 'BD', 'BGD', '', 0, 1),
(19, 'Barbados', 'BB', 'BRB', '', 0, 1),
(20, 'Belarus', 'BY', 'BLR', '', 0, 1),
(21, 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, 1),
(22, 'Belize', 'BZ', 'BLZ', '', 0, 1),
(23, 'Benin', 'BJ', 'BEN', '', 0, 1),
(24, 'Bermuda', 'BM', 'BMU', '', 0, 1),
(25, 'Bhutan', 'BT', 'BTN', '', 0, 1),
(26, 'Bolivia', 'BO', 'BOL', '', 0, 1),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, 1),
(28, 'Botswana', 'BW', 'BWA', '', 0, 1),
(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 1),
(30, 'Brazil', 'BR', 'BRA', '', 0, 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, 1),
(33, 'Bulgaria', 'BG', 'BGR', '', 0, 1),
(34, 'Burkina Faso', 'BF', 'BFA', '', 0, 1),
(35, 'Burundi', 'BI', 'BDI', '', 0, 1),
(36, 'Cambodia', 'KH', 'KHM', '', 0, 1),
(37, 'Cameroon', 'CM', 'CMR', '', 0, 1),
(38, 'Canada', 'CA', 'CAN', '', 0, 1),
(39, 'Cape Verde', 'CV', 'CPV', '', 0, 1),
(40, 'Cayman Islands', 'KY', 'CYM', '', 0, 1),
(41, 'Central African Republic', 'CF', 'CAF', '', 0, 1),
(42, 'Chad', 'TD', 'TCD', '', 0, 1),
(43, 'Chile', 'CL', 'CHL', '', 0, 1),
(44, 'China', 'CN', 'CHN', '', 0, 1),
(45, 'Christmas Island', 'CX', 'CXR', '', 0, 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 1),
(47, 'Colombia', 'CO', 'COL', '', 0, 1),
(48, 'Comoros', 'KM', 'COM', '', 0, 1),
(49, 'Congo', 'CG', 'COG', '', 0, 1),
(50, 'Cook Islands', 'CK', 'COK', '', 0, 1),
(51, 'Costa Rica', 'CR', 'CRI', '', 0, 1),
(52, 'Cote D\'Ivoire', 'CI', 'CIV', '', 0, 1),
(53, 'Croatia', 'HR', 'HRV', '', 0, 1),
(54, 'Cuba', 'CU', 'CUB', '', 0, 1),
(55, 'Cyprus', 'CY', 'CYP', '', 0, 1),
(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 1),
(57, 'Denmark', 'DK', 'DNK', '', 0, 1),
(58, 'Djibouti', 'DJ', 'DJI', '', 0, 1),
(59, 'Dominica', 'DM', 'DMA', '', 0, 1),
(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 1),
(61, 'East Timor', 'TL', 'TLS', '', 0, 1),
(62, 'Ecuador', 'EC', 'ECU', '', 0, 1),
(63, 'Egypt', 'EG', 'EGY', '', 0, 1),
(64, 'El Salvador', 'SV', 'SLV', '', 0, 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, 1),
(66, 'Eritrea', 'ER', 'ERI', '', 0, 1),
(67, 'Estonia', 'EE', 'EST', '', 0, 1),
(68, 'Ethiopia', 'ET', 'ETH', '', 0, 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, 1),
(70, 'Faroe Islands', 'FO', 'FRO', '', 0, 1),
(71, 'Fiji', 'FJ', 'FJI', '', 0, 1),
(72, 'Finland', 'FI', 'FIN', '', 0, 1),
(74, 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(75, 'French Guiana', 'GF', 'GUF', '', 0, 1),
(76, 'French Polynesia', 'PF', 'PYF', '', 0, 1),
(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 1),
(78, 'Gabon', 'GA', 'GAB', '', 0, 1),
(79, 'Gambia', 'GM', 'GMB', '', 0, 1),
(80, 'Georgia', 'GE', 'GEO', '', 0, 1),
(81, 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(82, 'Ghana', 'GH', 'GHA', '', 0, 1),
(83, 'Gibraltar', 'GI', 'GIB', '', 0, 1),
(84, 'Greece', 'GR', 'GRC', '', 0, 1),
(85, 'Greenland', 'GL', 'GRL', '', 0, 1),
(86, 'Grenada', 'GD', 'GRD', '', 0, 1),
(87, 'Guadeloupe', 'GP', 'GLP', '', 0, 1),
(88, 'Guam', 'GU', 'GUM', '', 0, 1),
(89, 'Guatemala', 'GT', 'GTM', '', 0, 1),
(90, 'Guinea', 'GN', 'GIN', '', 0, 1),
(91, 'Guinea-Bissau', 'GW', 'GNB', '', 0, 1),
(92, 'Guyana', 'GY', 'GUY', '', 0, 1),
(93, 'Haiti', 'HT', 'HTI', '', 0, 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, 1),
(95, 'Honduras', 'HN', 'HND', '', 0, 1),
(96, 'Hong Kong', 'HK', 'HKG', '', 0, 1),
(97, 'Hungary', 'HU', 'HUN', '', 0, 1),
(98, 'Iceland', 'IS', 'ISL', '', 0, 1),
(99, 'India', 'IN', 'IND', '', 0, 1),
(100, 'Indonesia', 'ID', 'IDN', '', 0, 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, 1),
(102, 'Iraq', 'IQ', 'IRQ', '', 0, 1),
(103, 'Ireland', 'IE', 'IRL', '', 0, 1),
(104, 'Israel', 'IL', 'ISR', '', 0, 1),
(105, 'Italy', 'IT', 'ITA', '', 0, 1),
(106, 'Jamaica', 'JM', 'JAM', '', 0, 1),
(107, 'Japan', 'JP', 'JPN', '', 0, 1),
(108, 'Jordan', 'JO', 'JOR', '', 0, 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 1),
(110, 'Kenya', 'KE', 'KEN', '', 0, 1),
(111, 'Kiribati', 'KI', 'KIR', '', 0, 1),
(112, 'North Korea', 'KP', 'PRK', '', 0, 1),
(113, 'South Korea', 'KR', 'KOR', '', 0, 1),
(114, 'Kuwait', 'KW', 'KWT', '', 0, 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 1),
(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO', '', 0, 1),
(117, 'Latvia', 'LV', 'LVA', '', 0, 1),
(118, 'Lebanon', 'LB', 'LBN', '', 0, 1),
(119, 'Lesotho', 'LS', 'LSO', '', 0, 1),
(120, 'Liberia', 'LR', 'LBR', '', 0, 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 1),
(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 1),
(123, 'Lithuania', 'LT', 'LTU', '', 0, 1),
(124, 'Luxembourg', 'LU', 'LUX', '', 0, 1),
(125, 'Macau', 'MO', 'MAC', '', 0, 1),
(126, 'FYROM', 'MK', 'MKD', '', 0, 1),
(127, 'Madagascar', 'MG', 'MDG', '', 0, 1),
(128, 'Malawi', 'MW', 'MWI', '', 0, 1),
(129, 'Malaysia', 'MY', 'MYS', '', 0, 1),
(130, 'Maldives', 'MV', 'MDV', '', 0, 1),
(131, 'Mali', 'ML', 'MLI', '', 0, 1),
(132, 'Malta', 'MT', 'MLT', '', 0, 1),
(133, 'Marshall Islands', 'MH', 'MHL', '', 0, 1),
(134, 'Martinique', 'MQ', 'MTQ', '', 0, 1),
(135, 'Mauritania', 'MR', 'MRT', '', 0, 1),
(136, 'Mauritius', 'MU', 'MUS', '', 0, 1),
(137, 'Mayotte', 'YT', 'MYT', '', 0, 1),
(138, 'Mexico', 'MX', 'MEX', '', 0, 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 1),
(141, 'Monaco', 'MC', 'MCO', '', 0, 1),
(142, 'Mongolia', 'MN', 'MNG', '', 0, 1),
(143, 'Montserrat', 'MS', 'MSR', '', 0, 1),
(144, 'Morocco', 'MA', 'MAR', '', 0, 1),
(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 1),
(146, 'Myanmar', 'MM', 'MMR', '', 0, 1),
(147, 'Namibia', 'NA', 'NAM', '', 0, 1),
(148, 'Nauru', 'NR', 'NRU', '', 0, 1),
(149, 'Nepal', 'NP', 'NPL', '', 0, 1),
(150, 'Netherlands', 'NL', 'NLD', '', 0, 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, 1),
(152, 'New Caledonia', 'NC', 'NCL', '', 0, 1),
(153, 'New Zealand', 'NZ', 'NZL', '', 0, 1),
(154, 'Nicaragua', 'NI', 'NIC', '', 0, 1),
(155, 'Niger', 'NE', 'NER', '', 0, 1),
(156, 'Nigeria', 'NG', 'NGA', '', 0, 1),
(157, 'Niue', 'NU', 'NIU', '', 0, 1),
(158, 'Norfolk Island', 'NF', 'NFK', '', 0, 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 1),
(160, 'Norway', 'NO', 'NOR', '', 0, 1),
(161, 'Oman', 'OM', 'OMN', '', 0, 1),
(162, 'Pakistan', 'PK', 'PAK', '', 0, 1),
(163, 'Palau', 'PW', 'PLW', '', 0, 1),
(164, 'Panama', 'PA', 'PAN', '', 0, 1),
(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, 1),
(166, 'Paraguay', 'PY', 'PRY', '', 0, 1),
(167, 'Peru', 'PE', 'PER', '', 0, 1),
(168, 'Philippines', 'PH', 'PHL', '', 0, 1),
(169, 'Pitcairn', 'PN', 'PCN', '', 0, 1),
(170, 'Poland', 'PL', 'POL', '', 0, 1),
(171, 'Portugal', 'PT', 'PRT', '', 0, 1),
(172, 'Puerto Rico', 'PR', 'PRI', '', 0, 1),
(173, 'Qatar', 'QA', 'QAT', '', 0, 1),
(174, 'Reunion', 'RE', 'REU', '', 0, 1),
(175, 'Romania', 'RO', 'ROM', '', 0, 1),
(176, 'Russian Federation', 'RU', 'RUS', '', 0, 1),
(177, 'Rwanda', 'RW', 'RWA', '', 0, 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, 1),
(179, 'Saint Lucia', 'LC', 'LCA', '', 0, 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 1),
(181, 'Samoa', 'WS', 'WSM', '', 0, 1),
(182, 'San Marino', 'SM', 'SMR', '', 0, 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 1),
(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 1),
(185, 'Senegal', 'SN', 'SEN', '', 0, 1),
(186, 'Seychelles', 'SC', 'SYC', '', 0, 1),
(187, 'Sierra Leone', 'SL', 'SLE', '', 0, 1),
(188, 'Singapore', 'SG', 'SGP', '', 0, 1),
(189, 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, 1),
(190, 'Slovenia', 'SI', 'SVN', '', 0, 1),
(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 1),
(192, 'Somalia', 'SO', 'SOM', '', 0, 1),
(193, 'South Africa', 'ZA', 'ZAF', '', 0, 1),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 1),
(195, 'Spain', 'ES', 'ESP', '', 0, 1),
(196, 'Sri Lanka', 'LK', 'LKA', '', 0, 1),
(197, 'St. Helena', 'SH', 'SHN', '', 0, 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, 1),
(199, 'Sudan', 'SD', 'SDN', '', 0, 1),
(200, 'Suriname', 'SR', 'SUR', '', 0, 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, 1),
(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 1),
(203, 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(204, 'Switzerland', 'CH', 'CHE', '', 0, 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 1),
(206, '台灣', 'TW', 'TWN', '', 0, 1),
(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 1),
(209, 'Thailand', 'TH', 'THA', '', 0, 1),
(210, 'Togo', 'TG', 'TGO', '', 0, 1),
(211, 'Tokelau', 'TK', 'TKL', '', 0, 1),
(212, 'Tonga', 'TO', 'TON', '', 0, 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, 1),
(214, 'Tunisia', 'TN', 'TUN', '', 0, 1),
(215, 'Turkey', 'TR', 'TUR', '', 0, 1),
(216, 'Turkmenistan', 'TM', 'TKM', '', 0, 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 1),
(218, 'Tuvalu', 'TV', 'TUV', '', 0, 1),
(219, 'Uganda', 'UG', 'UGA', '', 0, 1),
(220, 'Ukraine', 'UA', 'UKR', '', 0, 1),
(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, 1),
(222, 'United Kingdom', 'GB', 'GBR', '', 1, 1),
(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, 1),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, 1),
(225, 'Uruguay', 'UY', 'URY', '', 0, 1),
(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, 1),
(227, 'Vanuatu', 'VU', 'VUT', '', 0, 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 1),
(229, 'Venezuela', 'VE', 'VEN', '', 0, 1),
(230, 'Viet Nam', 'VN', 'VNM', '', 0, 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 1),
(234, 'Western Sahara', 'EH', 'ESH', '', 0, 1),
(235, 'Yemen', 'YE', 'YEM', '', 0, 1),
(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 1),
(238, 'Zambia', 'ZM', 'ZMB', '', 0, 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 1),
(242, 'Montenegro', 'ME', 'MNE', '', 0, 1),
(243, 'Serbia', 'RS', 'SRB', '', 0, 1),
(244, 'Aaland Islands', 'AX', 'ALA', '', 0, 1),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, 1),
(246, 'Curacao', 'CW', 'CUW', '', 0, 1),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, 1),
(248, 'South Sudan', 'SS', 'SSD', '', 0, 1),
(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, 1),
(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, 1),
(251, 'Canary Islands', 'IC', 'ICA', '', 0, 1),
(252, 'Ascension Island (British)', 'AC', 'ASC', '', 0, 1),
(253, 'Kosovo, Republic of', 'XK', 'UNK', '', 0, 1),
(254, 'Isle of Man', 'IM', 'IMN', '', 0, 1),
(255, 'Tristan da Cunha', 'TA', 'SHN', '', 0, 1),
(256, 'Guernsey', 'GG', 'GGY', '', 0, 1),
(257, 'Jersey', 'JE', 'JEY', '', 0, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `oc_coupon`
--

CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL,
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
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '折抵10%', '2222', 'P', '10.0000', 0, 0, '0.0000', '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
(5, '免費配送', '3333', 'P', '0.0000', 0, 1, '100.0000', '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, '折抵金額10', '1111', 'F', '10.0000', 0, 0, '10.0000', '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- 資料表結構 `oc_coupon_category`
--

CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_coupon_history`
--

CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_coupon_product`
--

CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_currency`
--

CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(1, '新台幣', 'TWD', 'NT', '', '0', 1.00000000, 1, '2018-04-19 10:24:00'),
(2, '人民幣', 'CNY', '¥', '', '2', 0.21980000, 1, '2017-10-29 16:47:02'),
(3, '港幣', 'HKD', 'HK', '', '2', 0.25799999, 1, '2017-10-29 16:47:02'),
(4, '英鎊', 'GBP', '£', '', '2', 0.02520000, 1, '2017-10-29 16:47:02'),
(5, '美元', 'USD', '$', '', '2', 0.03310000, 1, '2017-10-29 16:47:02'),
(6, '歐元', 'EUR', '', '€', '2', 0.02850000, 1, '2017-10-29 16:47:02');

-- --------------------------------------------------------

--
-- 資料表結構 `oc_customer`
--

CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL,
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
  `approved` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_customer`
--

INSERT INTO `oc_customer` (`customer_id`, `customer_group_id`, `store_id`, `language_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `custom_field`, `ip`, `status`, `approved`, `safe`, `token`, `code`, `date_added`) VALUES
(4, 3, 0, 1, 'James', 'Wu', 'ukjames312@gmail.com', '02-2222222222', '', '9d81cca9f1330bfe73fd1394b5fc14987e2acfdf', 'KwuGCsCqk', NULL, NULL, 0, 3, '', '36.229.134.49', 1, 1, 0, '', '', '2017-05-19 14:33:08'),
(21, 1, 0, 1, '詹姆士', '', 'ukjames312@hotmail.com', '0952829779', '', 'd9f51a94e956d40de769b73fb148b397d1679e05', 'NTkA49UdZ', NULL, NULL, 1, 18, '', '36.229.135.221', 1, 1, 0, '', '', '2018-02-07 21:29:05'),
(9, 1, 0, 1, 'wei', 'lin', 'lingwei005@gmail.com', '0911672251', '', 'a142f940cc36d48497213e25fe274e1cf094214a', 'S4OcgUb6n', NULL, NULL, 1, 8, '{\"1\":\"2017-09-08\",\"4\":\"\",\"2\":\"\",\"3\":\"6\"}', '36.230.99.197', 1, 1, 0, '', '', '2017-09-13 08:33:22'),
(17, 1, 0, 1, 'LingWei', 'Lin', 'fisher_lin_005@hotmail.com', '', '', '5f6a8d2edd6eaedaa4d57d2d4088dc864707298f', '7lpZWo1uQ', NULL, NULL, 0, 14, '', '223.140.238.253', 1, 1, 0, '', '', '2018-01-27 10:30:57');

-- --------------------------------------------------------

--
-- 資料表結構 `oc_customer_activity`
--

CREATE TABLE `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_customer_group`
--

CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1),
(2, 0, 0),
(3, 0, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `oc_customer_group_description`
--

CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test'),
(2, 1, '管理員', 'MITTAG最高管理員'),
(3, 1, '最高管理員', '');

-- --------------------------------------------------------

--
-- 資料表結構 `oc_customer_history`
--

CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_customer_ip`
--

CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_customer_ip`
--

INSERT INTO `oc_customer_ip` (`customer_ip_id`, `customer_id`, `ip`, `date_added`) VALUES
(5, 4, '36.229.150.4', '2017-05-19 14:33:09'),
(6, 4, '36.229.211.100', '2017-05-23 21:56:53'),
(30, 4, '36.229.134.49', '2018-02-05 10:32:43'),
(26, 17, '223.140.238.253', '2018-01-27 10:30:57'),
(12, 4, '61.228.19.76', '2017-09-10 08:17:17'),
(31, 21, '36.229.135.221', '2018-02-07 21:29:05'),
(15, 9, '59.115.237.71', '2017-09-13 08:33:23'),
(18, 9, '61.228.26.132', '2017-11-29 08:53:00'),
(20, 9, '36.229.211.42', '2017-12-12 12:57:23'),
(22, 9, '36.230.99.197', '2018-01-08 10:19:02');

-- --------------------------------------------------------

--
-- 資料表結構 `oc_customer_login`
--

CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_customer_login`
--

INSERT INTO `oc_customer_login` (`customer_login_id`, `email`, `ip`, `total`, `date_added`, `date_modified`) VALUES
(1, 'admin', '220.134.108.49', 6, '2016-11-10 20:36:05', '2016-11-11 06:55:12'),
(2, 'jungwei', '220.134.108.49', 1, '2016-11-10 20:36:13', '2016-11-10 20:36:13'),
(3, '', '220.134.108.49', 1, '2016-11-10 23:46:14', '2016-11-10 23:46:14'),
(4, 'aniki', '223.140.141.91', 1, '2016-11-12 11:04:37', '2016-11-12 11:04:37'),
(5, 'anikiwayne', '220.134.108.49', 5, '2016-11-12 12:13:26', '2016-11-12 12:13:46'),
(6, 'lingwei', '118.163.131.163', 6, '2017-03-13 14:41:35', '2017-03-13 17:29:44'),
(8, 'lingwei', '36.229.150.4', 1, '2017-05-19 14:29:01', '2017-05-19 14:29:01'),
(11, 'lingwei', '36.229.211.100', 5, '2017-05-23 14:43:21', '2017-05-23 14:44:07'),
(27, 'anikiwayne@gmail.com', '220.135.38.215', 8, '2018-02-20 14:03:22', '2018-03-25 22:47:36'),
(12, '', '::1', 2, '2017-08-21 14:17:18', '2017-10-23 14:52:43'),
(14, 'admin', '220.135.38.215', 8, '2017-09-08 20:58:22', '2018-03-25 20:36:20'),
(16, 'ukjames', '61.228.19.76', 2, '2017-09-10 22:33:52', '2017-09-10 22:33:57'),
(18, 'ligwei005@gmail.com', '59.115.237.71', 1, '2017-09-13 09:10:30', '2017-09-13 09:10:30'),
(19, 'admin', '::1', 1, '2017-10-21 13:50:05', '2017-10-21 13:50:05'),
(21, 'lingwei', '36.229.208.124', 1, '2017-11-20 16:13:13', '2017-11-20 16:13:13'),
(22, 'aniki_wayne@yahoo.com.tw', '::1', 3, '2017-11-22 13:08:11', '2017-11-22 13:08:18'),
(23, 'lingwei', '61.228.26.132', 2, '2017-11-29 08:52:01', '2017-11-29 08:52:50'),
(24, 'admin', '223.136.156.241', 1, '2017-12-10 14:18:49', '2017-12-10 14:18:49'),
(25, 'aniki_wayne@yahoo.com.tw', '223.136.156.241', 1, '2017-12-10 14:18:57', '2017-12-10 14:18:57'),
(26, 'limgwei005@gmail.com', '36.230.99.197', 4, '2018-01-08 10:18:41', '2018-01-08 10:18:56'),
(28, 'aniki_wayne@yahoo.com.tw', '220.135.38.215', 1, '2018-02-20 14:03:34', '2018-02-20 14:03:34');

-- --------------------------------------------------------

--
-- 資料表結構 `oc_customer_online`
--

CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_customer_reward`
--

CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_customer_search`
--

CREATE TABLE `oc_customer_search` (
  `customer_search_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_customer_transaction`
--

CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_customer_wishlist`
--

CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_customer_wishlist`
--

INSERT INTO `oc_customer_wishlist` (`customer_id`, `product_id`, `date_added`) VALUES
(3, 41, '2017-05-05 10:42:47'),
(3, 54, '2017-05-05 10:42:55');

-- --------------------------------------------------------

--
-- 資料表結構 `oc_custom_field`
--

CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_custom_field_customer_group`
--

CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_custom_field_description`
--

CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_custom_field_value`
--

CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_custom_field_value_description`
--

CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_download`
--

CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_download_description`
--

CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_easy_blog_article`
--

CREATE TABLE `oc_easy_blog_article` (
  `article_id` int(11) NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_modified` datetime NOT NULL,
  `viewed` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_easy_blog_article_description`
--

CREATE TABLE `oc_easy_blog_article_description` (
  `article_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `intro_text` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `tag` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_event`
--

CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_event`
--

INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`, `date_added`) VALUES
(1, 'voucher', 'catalog/model/checkout/order/addOrderHistory/after', 'extension/total/voucher/send', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- 資料表結構 `oc_extension`
--

CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_extension`
--

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
(20, 'theme', 'theme_default'),
(21, 'dashboard', 'activity'),
(22, 'dashboard', 'sale'),
(23, 'dashboard', 'recent'),
(24, 'dashboard', 'order'),
(25, 'dashboard', 'online'),
(26, 'dashboard', 'map'),
(27, 'dashboard', 'customer'),
(28, 'dashboard', 'chart'),
(29, 'analytics', 'google_analytics'),
(30, 'module', 'html'),
(31, 'payment', 'bank_transfer'),
(32, 'shipping', 'pickup'),
(33, 'module', 'latest'),
(34, 'module', 'bestseller'),
(47, 'payment', 'ecpaylogistic'),
(37, 'shipping', 'free'),
(46, 'shipping', 'ecpaylogistic');

-- --------------------------------------------------------

--
-- 資料表結構 `oc_fb_logins`
--

CREATE TABLE `oc_fb_logins` (
  `id` int(6) UNSIGNED NOT NULL,
  `fb_id` longtext,
  `customer_id` longtext,
  `fb_ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `oc_fb_logins`
--

INSERT INTO `oc_fb_logins` (`id`, `fb_id`, `customer_id`, `fb_ts`) VALUES
(1, '951034951712031', '12', '2017-12-29 15:14:50'),
(2, 'undefined', '13', '2017-12-30 03:10:58');

-- --------------------------------------------------------

--
-- 資料表結構 `oc_filter`
--

CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_filter_description`
--

CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_filter_group`
--

CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_filter_group_description`
--

CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_geo_zone`
--

CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_modified`, `date_added`) VALUES
(3, 'UK VAT Zone', 'UK VAT', '2010-02-26 22:33:24', '2009-01-06 23:26:25'),
(4, 'UK Shipping', 'UK Shipping Zones', '2010-12-15 15:18:13', '2009-06-23 01:14:53');

-- --------------------------------------------------------

--
-- 資料表結構 `oc_information`
--

CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 14, 1),
(4, 1, 1, 1),
(5, 1, 2, 1),
(6, 1, 5, 1),
(7, 1, 3, 1),
(8, 1, 4, 1),
(9, 1, 10, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `oc_information_description`
--

CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(3, 1, '購買注意事項', '&lt;span id=&quot;docs-internal-guid-5ddf155d-c80d-1000-1a5b-ff179b172b68&quot;&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;h4 style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 6pt; text-indent: -24pt; padding: 0pt 0pt 0pt 24pt;&quot;&gt;1.並非所有款式皆有生產各號數尺寸(戒指/手環類)，請先詢問有無現貨。如果沒有現貨，需約2週的等待時間。請務必看清楚商品標示與尺寸是否合適您。&lt;/h4&gt;&lt;p style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 6pt; text-indent: -24pt; padding: 0pt 0pt 0pt 24pt;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;h4 style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 6pt; text-indent: -24pt; padding: 0pt 0pt 0pt 24pt;&quot;&gt;2.商品在拍攝過程中的光線、角度…等因素會產生些微的顏色差距。對於色差要求甚高的買家，建議您多考慮清楚後再購買。&lt;/h4&gt;&lt;p style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 6pt; text-indent: -24pt; padding: 0pt 0pt 0pt 24pt;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;h4 style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 6pt; text-indent: -24pt; padding: 0pt 0pt 0pt 24pt;&quot;&gt;3.全部商品因屬自行設計並手工製作，非國外批貨回國銷售，請勿殺價。&lt;/h4&gt;&lt;p style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 6pt; text-indent: -24pt; padding: 0pt 0pt 0pt 24pt;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;h4 style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 6pt; text-indent: -24pt; padding: 0pt 0pt 0pt 24pt;&quot;&gt;4.商品因為是手工製作所以“並非”每一件設計都能百分之百相同，如果您有顧慮，歡迎先詢問。&lt;/h4&gt;&lt;p style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 6pt; text-indent: -24pt; padding: 0pt 0pt 0pt 24pt;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;h4 style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 6pt; text-indent: -24pt; padding: 0pt 0pt 0pt 24pt;&quot;&gt;5.全產品皆提供mittag品牌包裝（依產品屬性不同，會有原木珠寶盒或真皮皮套的差異）、品牌保證卡、品牌提袋等…&lt;/h4&gt;&lt;p style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 6pt; text-indent: -24pt; padding: 0pt 0pt 0pt 24pt;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;h4 style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 6pt; text-indent: -24pt; padding: 0pt 0pt 0pt 24pt;&quot;&gt;6.項鍊大部分會搭配40cm或45cm的925純銀鍊子，而某些款式的設計會搭配較特殊長度的925純銀鍊子或皮繩。在上游銀鍊廠商生產供貨會有變動的狀況下，mittag保有925純銀鍊子搭配款式的變更權利。&lt;/h4&gt;&lt;p style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 6pt; text-indent: -24pt; padding: 0pt 0pt 0pt 24pt;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;h4 style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 6pt; text-indent: -24pt; padding: 0pt 0pt 0pt 24pt;&quot;&gt;7.手鍊配置長度是：幼兒12cm，女士16cm，男士20cm；若有其他尺寸需求請另提出。 在上游銀鍊廠商生產供貨會有變動的狀況下，mittag保有925純銀鍊子搭配款式的變更權利。&lt;/h4&gt;&lt;p style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 6pt; text-indent: -24pt; padding: 0pt 0pt 0pt 24pt;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;h4 style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 6pt; text-indent: -24pt; padding: 0pt 0pt 0pt 24pt;&quot;&gt;8.買方有商品七天鑑賞期權益，由商品寄出當日起算十日內(含假日)，無條件更換其他商品(更換之產品價金另行退補)，但須由買方負擔更換往來運輸費用，並僅提供一次更換。&lt;/h4&gt;&lt;p style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 6pt; text-indent: -24pt; padding: 0pt 0pt 0pt 24pt;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;h4 style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 6pt; text-indent: -24pt; padding: 0pt 0pt 0pt 24pt;&quot;&gt;9‧收到商品時，請務必在收到七日內(含假日)確認商品內容是否有誤，逾期恕不受理。&lt;/h4&gt;&lt;p style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 6pt; text-indent: -24pt; padding: 0pt 0pt 0pt 24pt;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;h4 style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 6pt; text-indent: -24pt; padding: 0pt 0pt 0pt 24pt;&quot;&gt;10‧若商品出現瑕疵，可提供全額退費或更換商品(更換之產品價金另行退補)，並由mittag全額負擔商品回寄之運輸費用。&lt;/h4&gt;&lt;p style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 6pt; text-indent: -24pt; padding: 0pt 0pt 0pt 24pt;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;h4 style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 6pt; text-indent: -24pt; padding: 0pt 0pt 0pt 24pt;&quot;&gt;11‧商品瑕疵的定義為缺少零件或產品受損或不完整之情形。&lt;/h4&gt;&lt;p style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 6pt; text-indent: -24pt; padding: 0pt 0pt 0pt 24pt;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;h4 style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 6pt; text-indent: -24pt; padding: 0pt 0pt 0pt 24pt;&quot;&gt;12‧若需要辦理退換貨，請於收到貨後七日內(含假日)，寫信至 mittagnatureme@gmail.com 或是line@ID:@xof2871h，我們會有專人和您聯絡退換貨事宜。&lt;/h4&gt;&lt;p style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 6pt; text-indent: -24pt; padding: 0pt 0pt 0pt 24pt;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;h4 style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 6pt; text-indent: -24pt; padding: 0pt 0pt 0pt 24pt;&quot;&gt;13‧退換貨時請將商品包裝妥當寄回，待我們收到貨品確認無誤後，將於七個工作天內退款給您。&lt;/h4&gt;&lt;p style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 6pt; text-indent: -24pt; padding: 0pt 0pt 0pt 24pt;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;h4 style=&quot;line-height: 1.38; margin-top: 0pt; margin-bottom: 6pt; text-indent: -24pt; padding: 0pt 0pt 0pt 24pt;&quot;&gt;14‧若因買家個人因素退貨，商品來回運費以及退款產生的銀行手續費30元，均須由買家負擔。&lt;/h4&gt;&lt;/font&gt;&lt;/span&gt;', '購買注意事項', '', ''),
(5, 1, ' 尺寸測量/對照表: ', '&lt;h4&gt;&lt;/h4&gt;&lt;h3&gt;&lt;font face=&quot;Arial&quot; color=&quot;#636363&quot;&gt;&lt;b&gt;項鍊長： &lt;/b&gt;(以下為mittag標準配置，若有其他需求請於下單前提出，謝謝。)&lt;/font&gt;&lt;/h3&gt;&lt;h4&gt;&lt;font face=&quot;Arial&quot; color=&quot;#636363&quot;&gt;女士項鍊長40cm+5cm延長鍊&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font face=&quot;Arial&quot; color=&quot;#636363&quot;&gt;男士項鍊長45cm+5cm延長鍊&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font face=&quot;Arial&quot; color=&quot;#636363&quot;&gt;其他鍊長會依照墬子設計而有所更動，您可以參考下圖得知各公分數所配帶出來的長度比例。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;img src=&quot;http://www.mittag.com.tw/image/catalog/Brand/Product_Sizing/mittag_necklace_size_run2.jpg&quot; style=&quot;width: 680px;&quot;&gt;&lt;font face=&quot;Arial&quot; color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h3&gt;&lt;font face=&quot;Arial&quot; color=&quot;#636363&quot;&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/font&gt;&lt;/h3&gt;&lt;h3&gt;&lt;font face=&quot;Arial&quot; color=&quot;#636363&quot;&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/font&gt;&lt;/h3&gt;&lt;h3&gt;&lt;font face=&quot;Arial&quot; color=&quot;#636363&quot;&gt;&lt;b&gt;手鍊長：&lt;/b&gt;&lt;/font&gt;&lt;/h3&gt;&lt;h4&gt;&lt;font face=&quot;Arial&quot; color=&quot;#636363&quot;&gt;因為手鍊相較於手環來說較有彈性，您僅需要以捲尺測量您的手圍來確認購買下單時尺寸是符合您的需求。&lt;/font&gt;&lt;/h4&gt;&lt;h4 style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; color: rgb(0, 0, 0);&quot;&gt;&lt;font face=&quot;Arial&quot; color=&quot;#636363&quot;&gt;mittag出廠的固定尺碼如下&lt;/font&gt;&lt;font face=&quot;Arial&quot; color=&quot;#636363&quot;&gt;(以下為mittag標準配置，若有其他需求請於下單前提出，謝謝。)&lt;/font&gt;&lt;font face=&quot;Arial&quot; color=&quot;#636363&quot;&gt;：&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font face=&quot;Arial&quot; color=&quot;#636363&quot;&gt;寶寶手鍊長12cm&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font face=&quot;Arial&quot; color=&quot;#636363&quot;&gt;女士手鍊長16cm&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font face=&quot;Arial&quot; color=&quot;#636363&quot;&gt;男士手鍊長20cm&amp;nbsp;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;img src=&quot;http://www.mittag.com.tw/image/catalog/Brand/Product_Sizing/mittag_bracelet_measuring_steps.jpg&quot; style=&quot;width: 680px;&quot;&gt;&lt;font face=&quot;Arial&quot; color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font face=&quot;Arial&quot; color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h3&gt;&lt;font face=&quot;Arial&quot; color=&quot;#636363&quot;&gt;&lt;b&gt;手環圍：&lt;/b&gt;(請依照下方圖示測量)&lt;/font&gt;&lt;/h3&gt;&lt;h4&gt;&lt;font face=&quot;Arial&quot; color=&quot;#636363&quot;&gt;A. 可用捲尺測量手掌最寬處。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font face=&quot;Arial&quot; color=&quot;#636363&quot;&gt;B. 測量時用拇指壓住捲尺標示為「0」的地方開始計算&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font face=&quot;Arial&quot; color=&quot;#636363&quot;&gt;C. 擠壓您的手掌取得壓縮時的最小手掌長度，這會是您戴手環時手掌能夠捲曲穿過手環的最小體積&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;font color=&quot;#636363&quot;&gt;D. 依照您的尺寸，對照mittag的手環尺寸(S號：手環內直徑5.5cm)(M號：直徑&lt;/font&gt;&lt;font color=&quot;#636363&quot;&gt;手環內直徑6.0cm)(L號：手環內直徑6.5cm)來選擇您適合的大小&lt;/font&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font face=&quot;Arial&quot; color=&quot;#636363&quot;&gt;&amp;nbsp; &amp;nbsp; (若選擇手環尺寸過小，將無法穿戴；若選擇尺寸過大，則寬鬆容易掉落；皆非最佳選擇)。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;img src=&quot;http://www.mittag.com.tw/image/catalog/Brand/Product_Sizing/mittag_bracelet_size_run2.jpg&quot; style=&quot;width: 680px;&quot;&gt;&lt;font face=&quot;Arial&quot; color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font face=&quot;Arial&quot; color=&quot;#636363&quot;&gt;備註1：並非所有款式皆有生產各號數尺寸(戒指/手環類)，請先詢問有無現貨。如果沒有現貨，需約2週的等待時間。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font face=&quot;Arial&quot; color=&quot;#636363&quot;&gt;備註2：若有其他尺寸需求(超出S/M/L範圍)請於下單前提出，需約2週的等待時間，謝謝。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font face=&quot;Arial&quot; color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font face=&quot;Arial&quot; color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h3&gt;&lt;font face=&quot;Arial&quot; color=&quot;#636363&quot;&gt;&lt;b&gt;戒指圍：&lt;/b&gt;(請提供國際圍號數，謝謝。)&lt;/font&gt;&lt;/h3&gt;&lt;h4&gt;&lt;font face=&quot;Arial&quot; color=&quot;#636363&quot;&gt;您可以將已有並穿戴習慣的戒指，以一般的尺量測它的內圍直徑，然後對照下方“戒圍尺寸對照表”的國際圍的尺寸。要注意戒指應能舒適地緊貼您的手指；緊密程度應該足以讓戒指不致掉下，而又鬆得讓它能滑過手指關節。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;img src=&quot;http://www.mittag.com.tw/image/catalog/Brand/Product_Sizing/mittag_ring_measuring_steps.jpg&quot; style=&quot;width: 680px;&quot;&gt;&lt;font face=&quot;Arial&quot; color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font face=&quot;Arial&quot; color=&quot;#636363&quot;&gt;&lt;img src=&quot;http://www.mittag.com.tw/image/catalog/Brand/Product_Sizing/mittag_ring_size_run1.jpg&quot; style=&quot;width: 680px;&quot;&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot; face=&quot;Arial&quot;&gt;備註1：並非所有款式皆有生產各號數尺寸(戒指/手環類)，請先詢問有無現貨。如果沒有現貨，需約2週的等待時間。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;font color=&quot;#636363&quot;&gt;備註&lt;/font&gt;&lt;font color=&quot;#636363&quot;&gt;2：如果您要購買的為寬版戒(戒寬0.8cm以上)，國際戒圍工具量出來的尺寸還要再加半號至1號。(而天氣熱的時候，手指會比平時大上約半號，可以視情況配戴較細的戒指。)&lt;/font&gt;&lt;/font&gt;&lt;/h4&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;\r\n', ' 尺寸測量/對照表: ', '', ''),
(9, 1, '產品包裝', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;全產品皆提供mittag品牌包裝、品牌保證卡、品牌提袋等…&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;產品全包裝皆為台灣製&lt;/font&gt;&lt;/h4&gt;&lt;h4 style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, sans-serif;&quot;&gt;&lt;font color=&quot;#636363&quot; style=&quot;&quot;&gt;如以下四圖所示，&lt;/font&gt;&lt;/h4&gt;&lt;h4 style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, sans-serif;&quot;&gt;&lt;font color=&quot;#636363&quot;&gt;1.&amp;nbsp;真皮皮套僅用於手環產品包裝之用。&lt;/font&gt;&lt;/h4&gt;&lt;h4 style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, sans-serif;&quot;&gt;&lt;font color=&quot;#636363&quot;&gt;2. 原木珠寶盒用於項鍊、手鍊、戒指、耳環產品包裝之用。&lt;/font&gt;&lt;/h4&gt;&lt;h4 style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, sans-serif;&quot;&gt;&lt;font color=&quot;#636363&quot;&gt;3. 其餘如品牌提袋、品牌保證卡、拭銀布等皆同。&lt;/font&gt;&lt;/h4&gt;&lt;h4 style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, sans-serif;&quot;&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;img src=&quot;http://www.mittag.com.tw/image/catalog/Brand/packaging/packaging_style3.jpg&quot; style=&quot;width: 570px;&quot;&gt;&lt;img src=&quot;http://www.mittag.com.tw/image/catalog/Brand/packaging/packaging_style4.jpg&quot; style=&quot;width: 570px;&quot;&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;', '產品包裝', '', ''),
(6, 1, '配送和售後服務說明', '&lt;h4&gt;&lt;img src=&quot;http://www.mittag.com.tw/image/catalog/Brand/after_service_and_delivery/delivery_service.jpg&quot; style=&quot;width: 570px;&quot;&gt;&lt;b&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/b&gt;&lt;/h4&gt;&lt;h3&gt;&lt;b&gt;&lt;font color=&quot;#636363&quot;&gt;配送:&lt;/font&gt;&lt;/b&gt;&lt;/h3&gt;&lt;h4&gt;&lt;ul&gt;&lt;li&gt;&lt;font color=&quot;#636363&quot;&gt;台灣全區超商取貨服務費用由mittag支付，海外地區運費(NT$500)須由買方自行支付。&lt;/font&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li&gt;&lt;font color=&quot;#636363&quot;&gt;若有緊急取貨要求，須搭配快遞、宅配等，運費須由買方自行支付。&lt;/font&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li&gt;&lt;font color=&quot;#636363&quot;&gt;mittag並不提供面交服務。&lt;/font&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;img src=&quot;http://www.mittag.com.tw/image/catalog/Brand/after_service_and_delivery/after_service.jpg&quot; style=&quot;width: 570px;&quot;&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h3&gt;&lt;b&gt;&lt;font color=&quot;#636363&quot;&gt;售後服務:&lt;/font&gt;&lt;/b&gt;&lt;/h3&gt;&lt;h4&gt;&lt;ul&gt;&lt;li&gt;&lt;font color=&quot;#636363&quot;&gt;您所購得的商品享有終身免費清洗服務(不包含因為磨損而需要拋光的情況)。&lt;/font&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li&gt;&lt;font color=&quot;#636363&quot;&gt;商品享有一年保固期(自購買日期起算)。過保固期間若有維修需求(如：尺寸變更)，費用將依所需維修程度酌收，感謝您的體諒。&lt;/font&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li&gt;&lt;font color=&quot;#636363&quot;&gt;由於全部商品皆為mittag自行設計製作之產品，mittag提供完整的售後維修能力，讓您的權益不會受損或打折。&lt;/font&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/h4&gt;', '配送和售後服務說明', '', ''),
(7, 1, 'FAQ', '&lt;h4&gt;&lt;img src=&quot;http://www.mittag.com.tw/image/catalog/Brand/FAQ/FAQ.jpg&quot; style=&quot;width: 570px;&quot;&gt;&lt;b&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/b&gt;&lt;/h4&gt;&lt;h4&gt;&lt;b&gt;&lt;font color=&quot;#636363&quot;&gt;Q：請問是否有實體店面？&lt;/font&gt;&lt;/b&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;b&gt;A：&lt;/b&gt;mittag目前只有網路銷售，沒有實體店面可以現場選購喔。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;b&gt;&lt;font color=&quot;#636363&quot;&gt;Q：我急著送禮給朋友，可否選擇面交或自取？&lt;/font&gt;&lt;/b&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;b&gt;A：&lt;/b&gt;沒有面交或自取服務喔，緊急狀況可以先跟mittag討論應變處理方式，謝謝您！&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;b&gt;&lt;font color=&quot;#636363&quot;&gt;Q：請問接受客製訂單嗎？比如說白金或K金?&lt;/font&gt;&lt;/b&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;b&gt;A：&lt;/b&gt;可以的。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;b&gt;&lt;font color=&quot;#636363&quot;&gt;Q：拭銀布髒了可以清洗嗎？&lt;/font&gt;&lt;/b&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;b&gt;A：&lt;/b&gt;不可以，拭銀布預先添加了銀器的洗滌劑和防汙劑，一旦用水清洗就破壞了拭銀布的功能。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;b&gt;&lt;font color=&quot;#636363&quot;&gt;Q：最佳保養方式？&lt;/font&gt;&lt;/b&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;b&gt;A：飾品類：&lt;/b&gt;純銀飾品最好的保存方法就是常常戴它，愈戴愈亮。不佩戴時可收進密封袋，盡量隔絕空氣和溼氣。絕對不要任意放置於浴室/廚房，導致加速氧化。購買銀飾皆附贈拭銀布一塊，可以自行擦拭。擦拭鍊子請格外小心，銀質地較軟，細銀鍊不當拉扯易斷。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;b&gt;餐具類：&lt;/b&gt;由於植物在腐爛過程中常會產生硫化氫（H2S）氣體，空氣中少量的硫化氫能與銀發生反應，使銀失去光澤帶有黑色。如果把銀餐具與含硫食物（像是雞蛋、洋蔥等）放在一起，這種變黑的過程會進行得很快。所以銀器餐具使用後請洗淨，並擦拭乾淨，與食物分開收納。&lt;/font&gt;&lt;/h4&gt;', 'FAQ', '', ''),
(4, 1, '關於mittag', '&lt;h4&gt;&lt;/h4&gt;&lt;h4&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;b&gt;&lt;font color=&quot;#636363&quot; face=&quot;Arial&quot;&gt;mittag成立於2012，主要產品為銀飾/銀器...館內商品皆mittag自行設計並手工製作。&lt;/font&gt;&lt;/b&gt;&lt;/h4&gt;&lt;h4&gt;&lt;b style=&quot;color: inherit; font-family: inherit;&quot;&gt;&lt;font color=&quot;#636363&quot; face=&quot;Arial&quot;&gt;mittag是2個英文單字的結合：mit &amp;amp; tag → mit brand → 因為，我們是來自台灣的品牌！我們以mit而感到驕傲！我們熱愛mit！我們支持mit！我們堅持全程mit (包含所有包裝) ！&lt;/font&gt;&lt;/b&gt;&lt;/h4&gt;&lt;h4&gt;&lt;img src=&quot;http://www.mittag.com.tw/image/catalog/Brand/About_mittag/designing_handmade3.jpg&quot; style=&quot;width: 570px;&quot;&gt;&lt;img src=&quot;http://www.mittag.com.tw/image/catalog/Brand/About_mittag/design_workshop3.jpg&quot; style=&quot;width: 570px;&quot;&gt;&lt;b style=&quot;color: inherit; font-family: inherit;&quot;&gt;&lt;font color=&quot;#636363&quot; face=&quot;Arial&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/b&gt;&lt;/h4&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h4&gt;&lt;b&gt;&lt;font color=&quot;#636363&quot; face=&quot;Arial&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/b&gt;&lt;/h4&gt;&lt;h4&gt;&lt;b&gt;&lt;font color=&quot;#636363&quot; face=&quot;Arial&quot;&gt;mittag 同時還是德文：lunch break ﹝午間﹞&lt;/font&gt;&lt;/b&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot; face=&quot;Arial&quot;&gt;每天“朝9晚8”在充滿中央空調的高級辦公室辛勤工作的你，是不是已經忘記微風打在臉上時的輕柔，雨滴穿落指間時的冰涼？是不是也很久沒看過夕陽的絢麗，很久沒體驗擁抱家人、朋友時的溫度？是不是已經忘記自己是為了誰而奮鬥，為了甚麼而奮戰？是不是想不起上一次發自內心的笑是何時，因為感動而落淚是何時？是不是已經習慣科技帶來的便利而遺忘手感的溫度與獨特性；我們能完全體會，因為我們也完全經歷...&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot; face=&quot;Arial&quot;&gt;mittag→ lunch break→午間，是整天忙碌工作中的一小小段時間(lunch break)可以完全屬於自己，做自己。在這段lunch break你得以回歸自然(nature)，回歸自我(me)；如同品牌想要傳達的反璞歸真，忠於自我的意境(NatureME)。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;img src=&quot;http://www.mittag.com.tw/image/catalog/Brand/About_mittag/nature_style_branding2.jpg&quot; style=&quot;width: 570px;&quot;&gt;&lt;img src=&quot;http://www.mittag.com.tw/image/catalog/Brand/About_mittag/nature_style_branding3.jpg&quot; style=&quot;width: 570px;&quot;&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;b&gt;&lt;font color=&quot;#636363&quot; face=&quot;Arial&quot;&gt;mittag的設計風格：簡約、自然&lt;/font&gt;&lt;/b&gt;&lt;/h4&gt;&lt;h4 style=&quot;margin-left: 25px;&quot;&gt;&lt;b&gt;&lt;font color=&quot;#636363&quot; face=&quot;Arial&quot;&gt;簡約：不過多的設計、純粹的感動&lt;/font&gt;&lt;/b&gt;&lt;/h4&gt;&lt;h4 style=&quot;margin-left: 25px;&quot;&gt;&lt;b&gt;&lt;font color=&quot;#636363&quot; face=&quot;Arial&quot;&gt;自然：自然的材質、樸實的質感&lt;/font&gt;&lt;/b&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot; face=&quot;Arial&quot;&gt;&amp;nbsp;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot; face=&quot;Arial&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;b&gt;&lt;font color=&quot;#636363&quot; face=&quot;Arial&quot;&gt;mittag的商品保證:&lt;/font&gt;&lt;/b&gt;&lt;/h4&gt;&lt;h4&gt;&lt;ul&gt;&lt;li&gt;&lt;font color=&quot;#636363&quot; face=&quot;Arial&quot;&gt;全商品皆為“mittag自行設計製作”，非國外批貨回國銷售。&lt;/font&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li&gt;&lt;font color=&quot;#636363&quot; face=&quot;Arial&quot;&gt;全商品皆為“手工打造”，表面會有一定手感，無法接受者請勿購買。&lt;/font&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li&gt;&lt;font color=&quot;#636363&quot; face=&quot;Arial&quot;&gt;所有商品出貨前皆經過嚴謹的“手工”拋光，非電鍍處理。&lt;/font&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li&gt;&lt;font color=&quot;#636363&quot; face=&quot;Arial&quot;&gt;“925純銀”，表面沒有電鍍其他合金，不易致過敏。&lt;/font&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li&gt;&lt;font color=&quot;#636363&quot; face=&quot;Arial&quot;&gt;嚴選“天然”寶石，非採用人造或是合成寶石。&lt;/font&gt;&lt;/li&gt;&lt;/ul&gt;&lt;ul&gt;&lt;li&gt;&lt;font color=&quot;#636363&quot; face=&quot;Arial&quot;&gt;全程MIT，包含品牌包裝、提袋等...&lt;/font&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/h4&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '品牌故事', '', ''),
(8, 1, '聯絡mittag', '&lt;p&gt;mittag 聯絡方式&lt;/p&gt;', 'MITTAG CONTACT', '', '');

-- --------------------------------------------------------

--
-- 資料表結構 `oc_information_to_layout`
--

CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_information_to_layout`
--

INSERT INTO `oc_information_to_layout` (`information_id`, `store_id`, `layout_id`) VALUES
(4, 0, 0),
(6, 0, 0),
(3, 0, 0),
(5, 0, 0),
(7, 0, 0),
(8, 0, 0),
(9, 0, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `oc_information_to_store`
--

CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `oc_language`
--

CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(1, '繁體中文', 'zh-TW', 'zh_TW.utf-8,zh-tw,taiwan', 'tw.png', 'zh-TW', 0, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `oc_layout`
--

CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, '首頁(Home)'),
(2, '商品(Product)'),
(3, '目錄(Category)'),
(4, '預設(Default)'),
(5, '品牌(Manufacturer)'),
(6, '帳戶(Account)'),
(7, '結帳(Checkout)'),
(8, '聯絡(Contact)'),
(9, '網站導覽(Sitemap)'),
(10, '推薦帳戶(Affiliate)'),
(11, '商店訊息(Information)'),
(12, '商品比較(Compare)'),
(13, '商品搜尋(Search)'),
(14, 'activity');

-- --------------------------------------------------------

--
-- 資料表結構 `oc_layout_module`
--

CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(2, 4, '0', 'content_top', 0),
(3, 4, '0', 'content_top', 1),
(20, 5, '0', 'column_left', 2),
(69, 10, 'affiliate', 'column_right', 1),
(138, 1, 'latest.37', 'content_top', 3),
(137, 1, 'slideshow.32', 'content_top', 1),
(136, 1, 'slideshow.27', 'content_top', 0);

-- --------------------------------------------------------

--
-- 資料表結構 `oc_layout_route`
--

CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(72, 6, 0, 'account/%'),
(17, 10, 0, 'affiliate/%'),
(71, 3, 0, 'product/category'),
(76, 1, 0, 'common/home'),
(20, 2, 0, 'product/product'),
(64, 11, 0, 'information/information'),
(23, 7, 0, 'checkout/%'),
(31, 8, 0, 'information/contact'),
(32, 9, 0, 'information/sitemap'),
(34, 4, 0, ''),
(45, 5, 0, 'product/manufacturer'),
(52, 12, 0, 'product/compare'),
(53, 13, 0, 'product/search');

-- --------------------------------------------------------

--
-- 資料表結構 `oc_length_class`
--

CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- 資料表結構 `oc_length_class_description`
--

CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, '公分', 'cm'),
(2, 1, '公厘', 'mm'),
(3, 1, '英吋', 'in');

-- --------------------------------------------------------

--
-- 資料表結構 `oc_location`
--

CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_manufacturer`
--

CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_manufacturer`
--

INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(5, 'HTC', 'catalog/demo/htc_logo.jpg', 0),
(6, 'Palm', 'catalog/demo/palm_logo.jpg', 0),
(7, 'Hewlett-Packard', 'catalog/demo/hp_logo.jpg', 0),
(8, 'Apple', 'catalog/demo/apple_logo.jpg', 0),
(9, 'Canon', 'catalog/demo/canon_logo.jpg', 0),
(10, 'Sony', 'catalog/demo/sony_logo.jpg', 0);

-- --------------------------------------------------------

--
-- 資料表結構 `oc_manufacturer_to_store`
--

CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_manufacturer_to_store`
--

INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `oc_marketing`
--

CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_menu`
--

CREATE TABLE `oc_menu` (
  `menu_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `type` varchar(6) NOT NULL,
  `link` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_menu_description`
--

CREATE TABLE `oc_menu_description` (
  `menu_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_menu_module`
--

CREATE TABLE `oc_menu_module` (
  `menu_module_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_modification`
--

CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_modification`
--

INSERT INTO `oc_modification` (`modification_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(1, '无需FTP配置使用OCMOD方式上传安装扩充功能', 'noftp_ocmod', 'opencart.cn', '1.1.1', 'http://www.opencart.cn', '<modification>\r\n    <name>无需FTP配置使用OCMOD方式上传安装扩充功能</name>\r\n	<version>1.1.1</version>\r\n	<link>http://www.opencart.cn</link>\r\n	<author>opencart.cn</author>\r\n	<code>noftp_ocmod</code>\r\n\r\n	<file path=\"admin/controller/extension/installer.php\">\r\n		<operation>\r\n			<search ><![CDATA[\'url\'  => str_replace(\'&amp;\', \'&\', $this->url->link(\'extension/installer/ftp\', \'token=\' . $this->session->data[\'token\'], \'SSL\')),]]></search>\r\n			<add position=\"replace\"><![CDATA[\'url\'  => str_replace(\'&amp;\', \'&\', $this->url->link(\'extension/installer/localcopy\', \'token=\' . $this->session->data[\'token\'], \'SSL\')),]]></add>\r\n		</operation>\r\n\r\n		<operation>\r\n			<search><![CDATA[public function unzip() {]]></search>\r\n			<add position=\"before\"><![CDATA[			\r\n	public function localcopy() {\r\n		$this->load->language(\'extension/installer\');\r\n\r\n		$json = array();\r\n\r\n		if (!$this->user->hasPermission(\'modify\', \'extension/installer\')) {\r\n			$json[\'error\'] = $this->language->get(\'error_permission\');\r\n		}\r\n\r\n        \r\n        $directory = DIR_UPLOAD  . str_replace(array(\'../\', \'..\\\\\', \'..\'), \'\', $this->request->post[\'path\']) . \'/upload/\';\r\n        \r\n\r\n		if (!is_dir($directory)) {\r\n			$json[\'error\'] = $this->language->get(\'error_directory\');\r\n		}\r\n\r\n		if (!$json) {\r\n			// Get a list of files ready to upload\r\n			$files = array();\r\n\r\n			$path = array($directory . \'*\');\r\n\r\n			while (count($path) != 0) {\r\n				$next = array_shift($path);\r\n\r\n				foreach (glob($next) as $file) {\r\n					if (is_dir($file)) {\r\n						$path[] = $file . \'/*\';\r\n					}\r\n\r\n					$files[] = $file;\r\n				}\r\n			}\r\n\r\n			$root = dirname(DIR_APPLICATION).\'/\';\r\n\r\n			foreach ($files as $file) {\r\n				// Upload everything in the upload directory\r\n				$destination = $root.substr($file, strlen($directory));\r\n\r\n				if (is_dir($file)) {\r\n					$list = glob(rtrim($destination, \'/\').\'/*\');\r\n\r\n					if (!file_exists($destination)) {\r\n						if (!mkdir($destination)) {\r\n							$json[\'error\'] = sprintf($this->language->get(\'error_ftp_directory\'), $destination);\r\n						}\r\n					}\r\n				}\r\n\r\n				if (is_file($file)) {\r\n					if (!copy($file, $destination)) {\r\n						$json[\'error\'] = sprintf($this->language->get(\'error_ftp_file\'), $file);\r\n					}\r\n				}\r\n			}\r\n		}\r\n\r\n		$this->response->addHeader(\'Content-Type: application/json\');\r\n		$this->response->setOutput(json_encode($json));\r\n	}]]></add>\r\n		</operation>\r\n	</file>	\r\n</modification>', 1, '2017-10-28 23:03:05'),
(2, 'Local copy OCMOD by iSenseLabs', 'isensealabs_quickfix_ocmod', 'iSenseLabs', '1.3', 'http://isenselabs.com', '<modification>\r\n    <name>Local copy OCMOD by iSenseLabs</name>\r\n	<version>1.3</version>\r\n	<link>http://isenselabs.com</link>\r\n	<author>iSenseLabs</author>\r\n	<code>isensealabs_quickfix_ocmod</code>\r\n\r\n	<file path=\"admin/controller/extension/installer.php\">\r\n		<operation error=\"skip\">\r\n			<search ><![CDATA[\'url\'  => str_replace(\'&amp;\', \'&\', $this->url->link(\'extension/installer/ftp\', \'token=\' . $this->session->data[\'token\'],]]></search>\r\n			<add position=\"replace\"><![CDATA[\'url\'  => str_replace(\'&amp;\', \'&\', $this->url->link(\'extension/installer/localcopy\', \'token=\' . $this->session->data[\'token\'],]]></add>\r\n		</operation>\r\n\r\n		<operation>\r\n			<search><![CDATA[public function unzip() {]]></search>\r\n			<add position=\"before\"><![CDATA[			\r\n	public function localcopy() {\r\n		$this->load->language(\'extension/installer\');\r\n\r\n		$json = array();\r\n\r\n		if (!$this->user->hasPermission(\'modify\', \'extension/installer\')) {\r\n			$json[\'error\'] = $this->language->get(\'error_permission\');\r\n		}\r\n\r\n		if (VERSION == \'2.0.0.0\') {\r\n		    $directory = DIR_DOWNLOAD  . str_replace(array(\'../\', \'..\\\\\', \'..\'), \'\', $this->request->post[\'path\']) . \'/upload/\';\r\n		} else {\r\n		    $directory = DIR_UPLOAD  . str_replace(array(\'../\', \'..\\\\\', \'..\'), \'\', $this->request->post[\'path\']) . \'/upload/\';\r\n		}\r\n\r\n		if (!is_dir($directory)) {\r\n			$json[\'error\'] = $this->language->get(\'error_directory\');\r\n		}\r\n\r\n		if (!$json) {\r\n			// Get a list of files ready to upload\r\n			$files = array();\r\n\r\n			$path = array($directory . \'*\');\r\n\r\n			while (count($path) != 0) {\r\n				$next = array_shift($path);\r\n\r\n				foreach (glob($next) as $file) {\r\n					if (is_dir($file)) {\r\n						$path[] = $file . \'/*\';\r\n					}\r\n\r\n					$files[] = $file;\r\n				}\r\n			}\r\n\r\n			$root = dirname(DIR_APPLICATION).\'/\';\r\n\r\n			foreach ($files as $file) {\r\n				// Upload everything in the upload directory\r\n				$destination = substr($file, strlen($directory));\r\n\r\n				// Update from newer OpenCart versions:\r\n				if (substr($destination, 0, 5) == \'admin\') {\r\n					$destination = DIR_APPLICATION . substr($destination, 5);\r\n				} else if (substr($destination, 0, 7) == \'catalog\') {\r\n					$destination = DIR_CATALOG . substr($destination, 7);\r\n				} else if (substr($destination, 0, 5) == \'image\') {\r\n					$destination = DIR_IMAGE . substr($destination, 5);\r\n				} else if (substr($destination, 0, 6) == \'system\') {\r\n					$destination = DIR_SYSTEM . substr($destination, 6);\r\n				} else {\r\n					$destination = $root.$destination;\r\n				}\r\n\r\n				if (is_dir($file)) {\r\n					if (!file_exists($destination)) {\r\n						if (!mkdir($destination)) {\r\n							$json[\'error\'] = sprintf($this->language->get(\'error_ftp_directory\'), $destination);\r\n						}\r\n					}\r\n				}\r\n\r\n				if (is_file($file)) {\r\n					if (!copy($file, $destination)) {\r\n						$json[\'error\'] = sprintf($this->language->get(\'error_ftp_file\'), $file);\r\n					}\r\n				}\r\n			}\r\n		}\r\n\r\n		$this->response->addHeader(\'Content-Type: application/json\');\r\n		$this->response->setOutput(json_encode($json));\r\n	}]]></add>\r\n		</operation>\r\n	</file>	\r\n</modification>\r\n', 1, '2017-10-28 23:58:12'),
(3, 'Installation without FTP settings', 'no_ftp', 'karapuz (support@ka-station.com)', '1.2.0', 'http://www.opencart.com/index.php?route=extension/extension/info&extension_id=19862', '<modification>\r\n		<id></id>\r\n		<name>Installation without FTP settings</name>\r\n		<code>no_ftp</code>\r\n		<version>1.2.0</version>\r\n		<author>karapuz (support@ka-station.com)</author>\r\n		<link>http://www.opencart.com/index.php?route=extension/extension/info&amp;extension_id=19862</link>\r\n		<file path=\"admin/controller/extension/installer.php\">\n		<operation>\n			<search  index=\"0\"><![CDATA[$data[\'button_continue\'] =]]></search>\n			<add position=\"after\"><![CDATA[//karapuz (no_ftp.ocmod.xml) \n		$data[\'text_upload_without_ftp\'] = $this->language->get(\'text_upload_without_ftp\');\n		$data[\'help_upload_without_ftp\'] = $this->language->get(\'help_upload_without_ftp\');\n		$data[\'upload_without_ftp\'] = false;\n///karapuz (no_ftp.ocmod.xml) ]]></add>\n		</operation>\n		<operation>\n			<search  index=\"0\"><![CDATA[\'extension/installer/ftp\']]></search>\n			<add position=\"replace\"><![CDATA[\'extension/installer/file_tp_wrapper\']]></add>\n		</operation>\n		<operation>\n			<search  index=\"0\"><![CDATA[function ftp(]]></search>\n			<add position=\"before\"><![CDATA[//karapuz (no_ftp.ocmod.xml) \n	static public function cpy($source, $dest) {\n		if(is_dir($source)) {\n			$dir_handle = opendir($source);\n			while ($file = readdir($dir_handle)) {\n				if ($file != \".\" && $file != \"..\") {\n					if (is_dir($source . \"/\" . $file)) {\n						if (!is_dir($dest . \"/\" . $file)) {\n							mkdir($dest . \"/\" . $file);\n						}\n						self::cpy($source . \"/\" . $file, $dest . \"/\" . $file);\n					} else {\n						copy($source . \"/\" . $file, $dest . \"/\" . $file);\n					}\n				}\n			}\n			closedir($dir_handle);\n		} else {\n			copy($source, $dest);\n		}\n	}\n	\n	protected function copyUpload() {\n		$json = array();\n		\n		$directory = DIR_UPLOAD . str_replace(array(\'../\', \'..\\\\\', \'..\'), \'\', $this->request->post[\'path\']) . \'/upload/\';\n\n		if (!is_dir($directory)) {\n			$json[\'error\'] = $this->language->get(\'error_directory\');\n			return $json;\n		}\n\n		self::cpy($directory, dirname(DIR_APPLICATION));\n		\n		return $json;\n	}\n	\n	/*\n		This wrapper is used because some hostings block calls to URLs containing \'/ftp\'. It\n		brokes installation process.\n	*/\n	public function file_tp_wrapper() {\n		return $this->ftp();\n	}\n///karapuz (no_ftp.ocmod.xml) ]]></add>\n		</operation>\n		<operation>\n			<search  index=\"0\"><![CDATA[if (!$this->config->get(\'config_ftp_status\')]]></search>\n			<add position=\"before\"><![CDATA[//karapuz (no_ftp.ocmod.xml) \n		if (!empty($this->request->post[\'upload_without_ftp\'])) {\n			$json = $this->copyUpload();\n			$this->response->addHeader(\'Content-Type: application/json\');\n			$this->response->setOutput(json_encode($json));\n			return;			\n		}\n///karapuz (no_ftp.ocmod.xml) ]]></add>\n		</operation>\n	</file>\n	<file path=\"admin/language/en-gb/extension/installer.php\">\n		<operation>\n			<search  index=\"0\"><![CDATA[$_[\'text_clear\']]]></search>\n			<add position=\"after\"><![CDATA[//karapuz (no_ftp.ocmod.xml) \n$_[\'text_upload_without_ftp\'] = \'Upload Without FTP\';\r\n$_[\'help_upload_without_ftp\'] = \'When the checkbox is set, files from the archive will be unpacked to the store directory directly without connecting to it through FTP\';\n///karapuz (no_ftp.ocmod.xml) ]]></add>\n		</operation>\n	</file>\n	<file path=\"admin/language/english/extension/installer.php\">\n		<operation>\n			<search  index=\"0\"><![CDATA[$_[\'text_clear\']]]></search>\n			<add position=\"after\"><![CDATA[//karapuz (no_ftp.ocmod.xml) \n$_[\'text_upload_without_ftp\'] = \'Upload Without FTP\';\n$_[\'help_upload_without_ftp\'] = \'When the checkbox is set, files from the archive will be unpacked to the store directory directly without connecting to it through FTP\';\n///karapuz (no_ftp.ocmod.xml) ]]></add>\n		</operation>\n	</file>\n	<file path=\"admin/view/template/extension/installer.tpl\">\n		<operation>\n			<search  index=\"0\"><![CDATA[<form class=\"form]]></search>\n			<add position=\"after\"><![CDATA[<?php /* //karapuz (no_ftp.ocmod.xml)  */?>\n					<div class=\"form-group\">\n            <label class=\"col-sm-2 control-label\" for=\"input-upload_without_ftp\"><span data-toggle=\"tooltip\" title=\"<?php echo $help_upload_without_ftp; ?>\"><?php echo $text_upload_without_ftp; ?></span></label>\n            <div class=\"col-sm-10\">\n              <div class=\"checkbox\">\n                <label>\n                  <?php if ($upload_without_ftp) { ?>\n                  <input type=\"checkbox\" name=\"upload_without_ftp\" value=\"1\" checked=\"checked\" id=\"input-upload_without_ftp\" />\n                  <?php } else { ?>\n                  <input type=\"checkbox\" name=\"upload_without_ftp\" value=\"1\" id=\"input-upload_without_ftp\" />\n                  <?php } ?>\n                  &nbsp; </label>\n              </div>\n            </div>\n          </div>\n<?php /* ///karapuz (no_ftp.ocmod.xml)  */?>]]></add>\n		</operation>\n		<operation>\n			<search  index=\"0\"><![CDATA[timer = setInterval(]]></search>\n			<add position=\"before\"><![CDATA[<?php /* //karapuz (no_ftp.ocmod.xml)  */?>\n	if (typeof(timer) != \'undefined\' && timer) {\n		clearInterval(timer);	\n	}\n<?php /* ///karapuz (no_ftp.ocmod.xml)  */?>]]></add>\n		</operation>\n		<operation>\n			<search  index=\"0\"><![CDATA[n next()]]></search>\n			<add position=\"after\"><![CDATA[<?php /* //karapuz (no_ftp.ocmod.xml)  */?>\n		var custom_params = \'\';\n		if ($(\'#input-upload_without_ftp\').prop(\'checked\')) {\n			custom_params = \'&upload_without_ftp=1\';\n		}\n<?php /* ///karapuz (no_ftp.ocmod.xml)  */?>]]></add>\n		</operation>\n		<operation>\n			<search  index=\"0\"><![CDATA[\'path=\' + data.path]]></search>\n			<add position=\"replace\"><![CDATA[\'path=\' + data.path + custom_params]]></add>\n		</operation>\n	</file>\n</modification>', 1, '2017-12-23 00:54:23');

-- --------------------------------------------------------

--
-- 資料表結構 `oc_module`
--

CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(30, 'Category', 'banner', '{\"name\":\"Category\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),
(29, 'Home Page', 'carousel', '{\"name\":\"Home Page\",\"banner_id\":\"8\",\"width\":\"130\",\"height\":\"100\",\"status\":\"1\"}'),
(28, 'Home Page', 'featured', '{\"name\":\"Home Page\",\"product\":[\"43\",\"40\",\"42\",\"30\"],\"limit\":\"4\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}'),
(27, 'Home Page', 'slideshow', '{\"name\":\"Home Page\",\"banner_id\":\"7\",\"width\":\"1140\",\"height\":\"500\",\"status\":\"1\"}'),
(31, 'Banner 1', 'banner', '{\"name\":\"Banner 1\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),
(32, 'Home Page Slideshow2', 'slideshow', '{\"name\":\"Home Page Slideshow2\",\"banner_id\":\"9\",\"width\":\"680\",\"height\":\"380\",\"status\":\"0\"}'),
(33, 'slideshow3', 'slideshow', '{\"name\":\"slideshow3\",\"banner_id\":\"10\",\"width\":\"680\",\"height\":\"380\",\"status\":\"0\"}'),
(36, 'newest', 'bestseller', '{\"name\":\"newest\",\"limit\":\"999\",\"width\":\"200\",\"height\":\"200\",\"status\":\"0\"}'),
(37, 'newest prod', 'latest', '{\"name\":\"newest prod\",\"limit\":\"20\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}'),
(38, 'blog', 'html', '{\"name\":\"blog\",\"module_description\":{\"1\":{\"title\":\"blog\",\"description\":\"&lt;p&gt;sdaffsafsadfsdfdsfsadfdsafdsafsfsafsafsafsafsfsfdd&lt;\\/p&gt;\"}},\"status\":\"1\"}');

-- --------------------------------------------------------

--
-- 資料表結構 `oc_option`
--

CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_option`
--

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
(12, 'date', 11),
(13, 'select', 12),
(14, 'text', 0);

-- --------------------------------------------------------

--
-- 資料表結構 `oc_option_description`
--

CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 1, 'Radio'),
(2, 1, 'Checkbox'),
(4, 1, 'Text'),
(6, 1, '備註'),
(8, 1, 'Date'),
(7, 1, 'File'),
(5, 1, '戒指圍'),
(9, 1, 'Time'),
(10, 1, 'Date &amp; Time'),
(12, 1, 'Delivery Date'),
(11, 1, 'Size'),
(13, 1, '鍊長'),
(14, 1, '材質');

-- --------------------------------------------------------

--
-- 資料表結構 `oc_option_value`
--

CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_option_value`
--

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
(48, 11, '', 3),
(49, 5, '', 5),
(50, 5, '', 6),
(51, 5, '', 7),
(52, 5, '', 8),
(53, 5, '', 9),
(54, 5, '', 10),
(55, 5, '', 11),
(56, 5, '', 12),
(57, 5, '', 13),
(58, 5, '', 14),
(59, 13, '', 1),
(60, 13, '', 2),
(61, 13, '', 3),
(62, 13, '', 4),
(63, 13, '', 5),
(64, 13, '', 6);

-- --------------------------------------------------------

--
-- 資料表結構 `oc_option_value_description`
--

CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(43, 1, 1, 'Large'),
(32, 1, 1, 'Small'),
(45, 1, 2, 'Checkbox 4'),
(44, 1, 2, 'Checkbox 3'),
(31, 1, 1, 'Medium'),
(42, 1, 5, '#7'),
(41, 1, 5, '#6'),
(39, 1, 5, '#4'),
(40, 1, 5, '#5'),
(23, 1, 2, 'Checkbox 1'),
(24, 1, 2, 'Checkbox 2'),
(48, 1, 11, 'Large'),
(47, 1, 11, 'Medium'),
(46, 1, 11, 'Small'),
(49, 1, 5, '#8'),
(50, 1, 5, '#9'),
(51, 1, 5, '#10'),
(52, 1, 5, '#11'),
(53, 1, 5, '#12'),
(54, 1, 5, '#13'),
(55, 1, 5, '#14'),
(56, 1, 5, '#15'),
(57, 1, 5, '#16'),
(58, 1, 5, '#17'),
(59, 1, 13, '#16'),
(60, 1, 13, '#18'),
(61, 1, 13, '#20'),
(62, 1, 13, '#24'),
(63, 1, 13, '#30'),
(64, 1, 13, '#36');

-- --------------------------------------------------------

--
-- 資料表結構 `oc_order`
--

CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL,
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
  `extraShippingFee` int(255) NOT NULL DEFAULT '0',
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
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_order`
--

INSERT INTO `oc_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `custom_field`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_custom_field`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_custom_field`, `shipping_method`, `shipping_code`, `extraShippingFee`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `marketing_id`, `tracking`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
(1, 0, 'INV-2013-00', 0, 'MITTAG', 'http://www.mittag.com.tw/', 0, 1, '林', '先生', 'Anikiwayne@gmail.com', '0932000181', '0932000181', '[]', '林', '先生', '', '中山路中山區', '', '台北市', '10001', '台灣', 206, '台中市', 3143, '', '[]', '貨到付款', 'cod', '林', '先生', '', '中山路中山區', '', '台北市', '10001', '台灣', 206, '台中市', 3143, '', '[]', '固定運費', 'flat.flat', 0, '店家的話', '105.0000', 1, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '223.136.181.231', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_0_1 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) Version/10.0 Mobile/14A403 Safari/602.1', 'zh-tw', '2016-11-11 11:06:36', '2016-11-11 11:06:54'),
(2, 0, 'INV-2013-00', 0, 'MITTAG', 'http://www.mittag.com.tw/', 1, 1, 'Wayne', 'Lin', 'Anikiwayne@gmail.com', '0932000181', '', '', 'Wayne', 'Lin', '', 'Taiwan', '', 'Taipei', '', '台灣', 206, '台北市', 3135, '', '[]', '貨到付款', 'cod', 'Wayne', 'Lin', '', 'Taiwan', '', 'Taipei', '', '台灣', 206, '台北市', 3135, '', '[]', '固定運費', 'flat.flat', 0, '', '105.0000', 1, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '223.140.141.91', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_0_1 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) Version/10.0 Mobile/14A403 Safari/602.1', 'zh-tw', '2016-11-12 11:10:49', '2016-11-12 11:10:55'),
(3, 0, 'INV-2013-00', 0, 'MITTAG', 'http://www.mittag.com.tw/', 0, 1, '容為', '林', 'Anikiwayne@gmail.com', '0932000181', '', '[]', '容為', '林', '', 'Test123', '', 'Taipei', '1000', '台灣', 206, '台北市', 3135, '', '[]', '銀行轉帳', 'bank_transfer', '容為', '林', '', 'Test123', '', 'Taipei', '1000', '台灣', 206, '台北市', 3135, '', '[]', '固定運費', 'flat.flat', 0, '', '99999999999.9999', 0, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '223.136.214.50', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_0_1 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) Version/10.0 Mobile/14A403 Safari/602.1', 'zh-tw', '2017-01-07 14:59:00', '2017-01-07 14:59:00'),
(4, 0, 'INV-2013-00', 0, 'MITTAG', 'http://www.mittag.com.tw/', 0, 1, '尾盤', '這', 'Anikiwayne@gmail.com', '000000000000', '', '[]', '尾盤', '這', '', 'Gggghg', '', 'Taipei', '100', '台灣', 206, '台中市', 3143, '', '[]', '銀行轉帳', 'bank_transfer', '尾盤', '這', '', 'Gggghg', '', 'Taipei', '100', '台灣', 206, '台中市', 3143, '', '[]', '固定運費', 'flat.flat', 0, 'Hiho', '105.0000', 0, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '223.136.44.164', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_0_1 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) Version/10.0 Mobile/14A403 Safari/602.1', 'zh-tw', '2017-01-21 12:18:06', '2017-01-21 12:18:06'),
(5, 0, 'INV-2013-00', 0, 'MITTAG', 'http://www.mittag.com.tw/', 0, 1, '林', '先生', 'aniki1111@yahoo.com', '091111', '', '[]', '林', '先生', '', '100 taipie', '', 'taipei', '100', '台灣', 206, '台北市', 3135, '', '[]', '銀行轉帳', 'bank_transfer', '林', '先生', '', '100 taipie', '', 'taipei', '100', '台灣', 206, '台北市', 3135, '', '[]', '固定運費', 'flat.flat', 0, '', '205.0000', 12, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '223.136.155.206', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-02-04 15:03:52', '2017-02-04 15:04:03'),
(6, 0, 'INV-2013-00', 0, 'MITTAG', 'http://www.jungwei.com.tw/mittag.com.tw/', 3, 1, '榮斌', '吳', 'ukjames312@hotmail.com', '0952829779', '', '', '榮斌', '吳', '', '中和區南山路250巷12-1號', '', '新北市', '', '台灣', 206, '新北市', 3137, '', '[]', '銀行轉帳', 'bank_transfer', '榮斌', '吳', '', '中和區南山路250巷12-1號', '', '新北市', '', '台灣', 206, '新北市', 3137, '', '[]', '固定運費', 'flat.flat', 0, '', '305.0000', 12, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '36.229.222.221', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4', '2017-05-05 11:03:59', '2017-05-05 11:04:12'),
(7, 0, 'INV-2013-00', 0, 'MITTAG', 'http://www.jungwei.com.tw/mittag.com.tw/', 3, 1, '榮斌', '吳', 'ukjames312@hotmail.com', '0952829779', '', '', '榮斌', '吳', '', '中和區南山路250巷12-1號', '', '新北市', '', '台灣', 206, '新北市', 3137, '', '[]', '銀行轉帳', 'bank_transfer', '榮斌', '吳', '', '中和區南山路250巷12-1號', '', '新北市', '', '台灣', 206, '新北市', 3137, '', '[]', '固定運費', 'flat.flat', 0, '', '4755.0000', 12, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '61.228.18.67', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4', '2017-05-09 09:17:44', '2017-05-09 09:19:12'),
(8, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 1, 1, 'Wayne', 'Lin', 'Anikiwayne@gmail.com', '0932000181', '', '', 'Wayne', 'Lin', '', 'Taiwan', '', 'Taipei', '', '台灣', 206, '台北市', 3135, '', '[]', '銀行轉帳', 'bank_transfer', 'Wayne', 'Lin', '', 'Taiwan', '', 'Taipei', '', '台灣', 206, '台北市', 3135, '', '[]', '固定運費', 'flat.flat', 0, '1234', '4705.0000', 12, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-19 15:07:55', '2017-08-19 15:08:14'),
(9, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 1, 1, 'Wayne', 'Lin', 'Anikiwayne@gmail.com', '0932000181', '', '', 'Wayne', 'Lin', '', 'Taiwan', '', 'Taipei', '', '台灣', 206, '台北市', 3135, '', '[]', '銀行轉帳', 'bank_transfer', 'Wayne', 'Lin', '', 'Taiwan', '', 'Taipei', '', '台灣', 206, '台北市', 3135, '', '[]', '固定運費', 'flat.flat', 0, '', '5605.0000', 12, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-19 15:15:29', '2017-08-19 15:15:49'),
(10, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 1, 1, 'Wayne', 'Lin', 'Anikiwayne@gmail.com', '0932000181', '', '', 'Wayne', 'Lin', '', 'Taiwan', '', 'Taipei', '', '台灣', 206, '台北市', 3135, '', '[]', '銀行轉帳', 'bank_transfer', 'Wayne', 'Lin', '', 'Taiwan', '', 'Taipei', '', '台灣', 206, '台北市', 3135, '', '[]', '固定運費', 'flat.flat', 0, '', '2905.0000', 12, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-19 15:18:17', '2017-08-19 15:18:19'),
(11, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 1, 1, 'Wayne', 'Lin', 'Anikiwayne@gmail.com', '0932000181', '', '', 'Wayne', 'Lin', '', 'Taiwan', '', 'Taipei', '', '台灣', 206, '台北市', 3135, '', '[]', '銀行轉帳', 'bank_transfer', 'Wayne', 'Lin', '', 'Taiwan', '', 'Taipei', '', '台灣', 206, '台北市', 3135, '', '[]', '固定運費', 'flat.flat', 0, '', '3205.0000', 12, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-19 15:32:57', '2017-08-19 15:32:59'),
(12, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 1, 1, 'Wayne', 'Lin', 'Anikiwayne@gmail.com', '0932000181', '', '', 'Wayne', 'Lin', '', 'Taiwan', '', 'Taipei', '', '台灣', 206, '台北市', 3135, '', '[]', '銀行轉帳', 'bank_transfer', 'Wayne', 'Lin', '', 'Taiwan', '', 'Taipei', '', '台灣', 206, '台北市', 3135, '', '[]', '固定運費', 'flat.flat', 0, '', '2905.0000', 12, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-19 15:35:09', '2017-08-19 15:35:10'),
(13, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 1, 1, 'Wayne', 'Lin', 'Anikiwayne@gmail.com', '0932000181', '', '', 'Wayne', 'Lin', '', 'Taiwan', '', 'Taipei', '', '台灣', 206, '台北市', 3135, '', '[]', '銀行轉帳', 'bank_transfer', 'Wayne', 'Lin', '', 'Taiwan', '', 'Taipei', '', '台灣', 206, '台北市', 3135, '', '[]', '固定運費', 'flat.flat', 0, '', '3805.0000', 12, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-19 15:41:23', '2017-08-19 15:41:25'),
(14, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 1, 1, 'Wayne', 'Lin', 'Anikiwayne@gmail.com', '0932000181', '', '', 'Wayne', 'Lin', '', 'Taiwan', '', 'Taipei', '', '台灣', 206, '台北市', 3135, '', '[]', '銀行轉帳', 'bank_transfer', 'Wayne', 'Lin', '', 'Taiwan', '', 'Taipei', '', '台灣', 206, '台北市', 3135, '', '[]', '固定運費', 'flat.flat', 0, '', '2905.0000', 0, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-20 01:03:04', '2017-08-20 01:03:04'),
(15, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 1, 1, 'Wayne', 'Lin', 'Anikiwayne@gmail.com', '0932000181', '', '', 'Wayne', 'Lin', '', 'Taiwan', '', 'Taipei', '', '台灣', 206, '台北市', 3135, '', '[]', '銀行轉帳', 'bank_transfer', 'Wayne', 'Lin', '', 'Taiwan', '', 'Taipei', '', '台灣', 206, '台北市', 3135, '', '[]', '固定運費', 'flat.flat', 0, '', '2905.0000', 12, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-20 01:08:51', '2017-08-20 01:11:23'),
(16, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 1, 1, 'Wayne', 'Lin', 'Anikiwayne@gmail.com', '0932000181', '', '', 'Wayne', 'Lin', '', 'Taiwan', '', 'Taipei', '', '台灣', 206, '台北市', 3135, '', '[]', '銀行轉帳', 'bank_transfer', 'Wayne', 'Lin', '', 'Taiwan', '', 'Taipei', '', '台灣', 206, '台北市', 3135, '', '[]', '固定運費', 'flat.flat', 0, '', '3805.0000', 12, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-20 01:32:30', '2017-08-20 01:32:32'),
(17, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '銀行轉帳', 'bank_transfer', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '7105.0000', 12, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-20 15:50:37', '2017-08-20 15:50:57'),
(18, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 1, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-20 15:53:24', '2017-08-20 15:53:25'),
(19, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '銀行轉帳', 'bank_transfer', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '2905.0000', 0, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-20 20:57:50', '2017-08-20 20:57:50'),
(20, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '銀行轉帳', 'bank_transfer', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '2905.0000', 12, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-20 20:59:16', '2017-08-20 21:21:53'),
(21, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '銀行轉帳', 'bank_transfer', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '6655.0000', 12, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-20 21:24:18', '2017-08-20 21:24:20'),
(22, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '銀行轉帳', 'bank_transfer', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '2905.0000', 12, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-20 21:44:35', '2017-08-20 21:44:37'),
(23, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '銀行轉帳', 'bank_transfer', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '2905.0000', 12, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-20 21:46:35', '2017-08-20 21:46:37'),
(24, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '銀行轉帳', 'bank_transfer', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '3205.0000', 12, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-20 21:48:06', '2017-08-20 21:48:07'),
(25, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '銀行轉帳', 'bank_transfer', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '6205.0000', 12, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-20 21:52:16', '2017-08-20 21:52:18'),
(26, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 1, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-20 23:15:24', '2017-08-20 23:15:25'),
(27, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '銀行轉帳', 'bank_transfer', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '2905.0000', 0, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-20 23:19:25', '2017-08-20 23:19:25'),
(28, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '銀行轉帳', 'bank_transfer', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '2905.0000', 12, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-20 23:28:07', '2017-08-20 23:38:46'),
(29, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 0, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-21 20:20:25', '2017-08-21 20:20:25'),
(30, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 0, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-21 20:25:09', '2017-08-21 20:25:09'),
(31, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 0, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-21 20:26:00', '2017-08-21 20:26:00'),
(32, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 1, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-21 20:31:47', '2017-08-21 20:31:47'),
(33, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 0, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-21 20:34:02', '2017-08-21 20:34:02'),
(34, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '銀行轉帳', 'bank_transfer', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '2905.0000', 0, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-21 20:51:00', '2017-08-21 20:51:00'),
(35, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '銀行轉帳', 'bank_transfer', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '2905.0000', 12, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-21 20:51:41', '2017-08-21 20:51:43'),
(36, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 0, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-21 22:05:50', '2017-08-21 22:05:50'),
(37, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 0, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-21 22:29:37', '2017-08-21 22:29:37'),
(38, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 1, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-21 22:30:41', '2017-08-21 22:30:42'),
(39, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '銀行轉帳', 'bank_transfer', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '2905.0000', 12, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-21 22:47:56', '2017-08-21 22:47:58'),
(40, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '銀行轉帳', 'bank_transfer', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '2905.0000', 12, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-21 22:48:23', '2017-08-21 22:55:11'),
(41, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '銀行轉帳', 'bank_transfer', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '2905.0000', 12, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-21 22:55:31', '2017-08-21 22:58:33'),
(42, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '銀行轉帳', 'bank_transfer', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '2905.0000', 12, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-21 23:03:33', '2017-08-21 23:03:36'),
(43, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '銀行轉帳', 'bank_transfer', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '2905.0000', 0, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-21 23:26:35', '2017-08-21 23:26:35'),
(44, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '銀行轉帳', 'bank_transfer', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '2905.0000', 0, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-21 23:30:07', '2017-08-21 23:30:07'),
(45, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '銀行轉帳', 'bank_transfer', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '2905.0000', 0, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-21 23:41:11', '2017-08-21 23:41:11'),
(46, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 0, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-21 23:43:14', '2017-08-21 23:43:14'),
(47, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 1, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-21 23:46:01', '2017-08-21 23:46:04'),
(48, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 1, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-21 23:48:54', '2017-08-21 23:48:55'),
(49, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 0, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-21 23:51:49', '2017-08-21 23:51:49'),
(50, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 0, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-21 23:55:40', '2017-08-21 23:55:40'),
(51, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 1, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-21 23:59:52', '2017-08-21 23:59:53'),
(52, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 1, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-22 00:16:37', '2017-08-22 00:16:38'),
(53, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 0, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-22 00:18:26', '2017-08-22 00:18:26'),
(54, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 1, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-22 00:20:13', '2017-08-22 00:20:14'),
(55, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 0, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-22 00:21:12', '2017-08-22 00:21:12'),
(56, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 0, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-22 00:21:45', '2017-08-22 00:21:45'),
(57, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 0, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-22 00:22:02', '2017-08-22 00:22:02'),
(58, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 0, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-22 00:22:27', '2017-08-22 00:22:27'),
(59, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 0, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-22 00:23:01', '2017-08-22 00:23:01'),
(60, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 1, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-22 00:24:51', '2017-08-22 00:24:52'),
(61, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 1, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-22 00:36:31', '2017-08-22 00:36:32'),
(62, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '銀行轉帳', 'bank_transfer', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '2905.0000', 12, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-24 23:12:10', '2017-08-24 23:12:13'),
(63, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 1, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-24 23:13:29', '2017-08-24 23:13:30'),
(64, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 1, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-24 23:46:38', '2017-08-24 23:46:39'),
(65, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 1, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-25 00:01:57', '2017-08-25 00:01:58'),
(66, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 1, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-25 00:02:47', '2017-08-25 00:02:48'),
(67, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '銀行轉帳', 'bank_transfer', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '2905.0000', 12, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-25 21:50:33', '2017-08-25 21:50:35'),
(68, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '銀行轉帳', 'bank_transfer', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '2905.0000', 12, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-25 21:56:35', '2017-08-25 21:56:36'),
(69, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '銀行轉帳', 'bank_transfer', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '2905.0000', 12, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-25 23:12:16', '2017-08-25 23:12:17'),
(70, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 1, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-25 23:26:03', '2017-08-25 23:26:04'),
(71, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 1, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-25 23:26:47', '2017-08-25 23:26:47'),
(72, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 1, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-25 23:27:53', '2017-08-25 23:27:54'),
(73, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 1, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-25 23:40:10', '2017-08-25 23:40:11'),
(74, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 1, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-25 23:41:49', '2017-08-25 23:41:50'),
(75, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 1, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-25 23:43:36', '2017-08-25 23:43:37'),
(76, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 1, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-25 23:45:26', '2017-08-25 23:45:27');
INSERT INTO `oc_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `custom_field`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_custom_field`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_custom_field`, `shipping_method`, `shipping_code`, `extraShippingFee`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `marketing_id`, `tracking`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
(77, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 1, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-25 23:50:03', '2017-08-25 23:50:04'),
(78, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 0, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-26 00:20:54', '2017-08-26 00:20:54'),
(79, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 1, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-26 00:37:34', '2017-08-26 00:37:35'),
(80, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 0, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-26 00:46:17', '2017-08-26 00:46:17'),
(81, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 0, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-26 00:50:22', '2017-08-26 00:50:22'),
(82, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 1, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-26 00:53:28', '2017-08-26 00:53:30'),
(83, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '銀行轉帳', 'bank_transfer', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '2905.0000', 12, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-26 01:08:43', '2017-08-26 01:08:44'),
(84, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '銀行轉帳', 'bank_transfer', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '2905.0000', 12, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-26 01:10:01', '2017-08-26 01:10:03'),
(85, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 1, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-26 10:39:33', '2017-08-26 10:39:34'),
(86, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 1, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-26 10:40:45', '2017-08-26 10:40:46'),
(87, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 1, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-26 11:15:15', '2017-08-26 11:15:16'),
(88, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 1, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-26 11:16:50', '2017-08-26 11:16:51'),
(89, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 1, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-26 11:18:04', '2017-08-26 11:18:05'),
(90, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 1, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-26 11:22:08', '2017-08-26 11:22:09'),
(91, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 1, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-26 11:23:31', '2017-08-26 11:23:32'),
(92, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '銀行轉帳', 'bank_transfer', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '2855.0000', 12, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-26 12:34:00', '2017-08-26 12:34:01'),
(93, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 1, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-26 12:44:13', '2017-08-26 12:44:14'),
(94, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 1, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-26 12:48:49', '2017-08-26 12:48:50'),
(95, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 1, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-26 12:50:14', '2017-08-26 12:50:15'),
(96, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '銀行轉帳', 'bank_transfer', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '2905.0000', 12, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-26 13:43:53', '2017-08-26 13:43:56'),
(97, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 1, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-26 13:49:56', '2017-08-26 13:49:57'),
(98, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 1, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-26 13:58:27', '2017-08-26 13:58:28'),
(99, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 1, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-26 14:05:04', '2017-08-26 14:05:05'),
(100, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 1, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-26 14:06:32', '2017-08-26 14:06:33'),
(101, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '貨到付款', 'cod', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 0, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-08-28 20:56:48', '2017-08-28 20:56:48'),
(102, 0, 'INV-2013-00', 0, 'MITTAG', 'http://www.mittag.com.tw/', 1, 1, 'Wayne', 'Lin', 'Anikiwayne@gmail.com', '0932000181', '', '', 'Wayne', 'Lin', '', 'Taiwan', '', 'Taipei', '', '台灣', 206, '台北市', 3135, '', '[]', '貨到付款', 'cod', 'Wayne', 'Lin', '', 'Taiwan', '', 'Taipei', '', '台灣', 206, '台北市', 3135, '', '[]', '固定運費', 'flat.flat', 0, '', '5.0000', 1, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '220.135.38.215', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-09-08 20:58:49', '2017-09-08 20:58:50'),
(103, 0, 'INV-2013-00', 0, 'MITTAG', 'http://www.mittag.com.tw/', 4, 1, 'James', 'Wu', 'ukjames312@gmail.com', '02-2222222222', '', '', 'James', 'Wu', '', 'Gfdrest gytrews', '', 'Taipei', '', '台灣', 206, '新北市', 3137, '', '[]', '貨到付款', 'cod', 'James', 'Wu', '', 'Gfdrest gytrews', '', 'Taipei', '', '台灣', 206, '新北市', 3137, '', '[]', '固定運費', 'flat.flat', 0, '', '10555.0000', 1, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '61.228.19.76', '', 'Mozilla/5.0 (iPad; CPU OS 10_3_3 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) CriOS/61.0.3163.73 Mobile/14G60 Safari/602.1', 'zh-tw', '2017-09-10 08:36:35', '2017-09-10 08:36:47'),
(104, 0, 'INV-2013-00', 0, 'MITTAG', 'http://www.mittag.com.tw/', 4, 1, 'James', 'Wu', 'ukjames312@gmail.com', '02-2222222222', '', '', 'James', 'Wu', '', 'Gfdrest gytrews', '', 'Taipei', '', '台灣', 206, '新北市', 3137, '', '[]', '銀行轉帳', 'bank_transfer', 'James', 'Wu', '', 'Gfdrest gytrews', '', 'Taipei', '', '台灣', 206, '新北市', 3137, '', '[]', '固定運費', 'flat.flat', 0, '', '10805.0000', 12, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '61.228.19.76', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4', '2017-09-10 12:00:43', '2017-09-10 12:00:51'),
(105, 0, 'INV-2013-00', 0, 'MITTAG', 'http://www.mittag.com.tw/', 9, 1, 'wei', 'lin', 'lingwei005@gmail.com', '0911672251', '', '{\"1\":\"2017-09-08\",\"4\":\"\",\"2\":\"\",\"3\":\"6\"}', 'wei', 'lin', '', '中和南山路', '', '中和', '', '台灣', 206, '新北市', 3137, '', '[]', '銀行轉帳', 'bank_transfer', 'wei', 'lin', '', '中和南山路', '', '中和', '', '台灣', 206, '新北市', 3137, '', '[]', '固定運費', 'flat.flat', 0, '', '6655.0000', 12, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '59.115.237.71', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4', '2017-09-13 09:11:28', '2017-09-13 09:12:52'),
(106, 0, 'INV-2013-00', 0, 'MITTAG', 'http://www.mittag.com.tw/', 9, 1, 'wei', 'lin', 'lingwei005@gmail.com', '0911672251', '', '{\"1\":\"2017-09-08\",\"4\":\"\",\"2\":\"\",\"3\":\"6\"}', 'wei', 'lin', '', '中和南山路', '', '中和', '', '台灣', 206, '新北市', 3137, '', '[]', '銀行轉帳', 'bank_transfer', 'wei', 'lin', '', '中和南山路', '', '中和', '', '台灣', 206, '新北市', 3137, '', '[]', '固定運費', 'flat.flat', 0, '', '3505.0000', 0, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '59.115.237.71', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4', '2017-09-13 11:22:31', '2017-09-13 11:22:31'),
(107, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag2/', 6, 1, '林', '測試', 'aniki_wayne@yahoo.com.tw', '091111111', '09123123123', '{\"1\":\"2017-07-19 21:22\"}', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '銀行轉帳', 'bank_transfer', '林', '測試', '', '弟只弟只', '', '弟只', '', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '2855.0000', 0, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-10-23 20:52:58', '2017-10-23 20:52:58'),
(108, 0, 'INV-2013-00', 0, 'MITTAG', 'http://localhost/mittag2/', 0, 1, 'test', 'test', 'anikiwayne@gmail.com', '0932000181', '', '{\"4\":\"\",\"3\":\"\"}', 'test', 'test', '', 'dfsfsfs', '', 'Redwood City', '1111', '台灣', 206, '台北市', 3135, '', '[]', '銀行轉帳', 'bank_transfer', 'test', 'test', '', 'dfsfsfs', '', 'Redwood City', '1111', '台灣', 206, '台北市', 3135, '', '[]', '固定運費', 'flat.flat', 0, '', '2405.0000', 12, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'zh-TW,zh;q=0.8,en-US;q=0.6,en;q=0.4,ja;q=0.2', '2017-11-04 17:25:04', '2017-11-04 17:25:06'),
(109, 0, 'INV-2013-00', 0, 'MITTAG', 'http://www.mittag.com.tw/', 1, 1, 'Wayne', 'Lin', 'Anikiwayne@gmail.com', '0932000181', '', '', 'Wayne', 'Lin', '', 'Taiwan', '', 'Taipei', '', '台灣', 206, '台北市', 3135, '', '[]', '銀行轉帳', 'bank_transfer', 'Wayne', 'Lin', '', 'Taiwan', '', 'Taipei', '', '台灣', 206, '台北市', 3135, '', '[]', '固定運費', 'flat.flat', 0, '', '24691361.0000', 12, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '220.135.38.215', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', 'zh-TW,zh;q=0.9,en-US;q=0.8,en;q=0.7,ja;q=0.6', '2017-11-25 01:26:43', '2017-11-25 01:26:48'),
(110, 0, 'INV-2013-00', 0, 'MITTAG', 'http://www.mittag.com.tw/', 1, 1, 'Wayne', 'Lin', 'Anikiwayne@gmail.com', '0932000181', '', '', 'Wayne', 'Lin', '', 'Taiwan', '', 'Taipei', '', '台灣', 206, '台北市', 3135, '', '[]', '銀行轉帳', 'bank_transfer', 'Wayne', 'Lin', '', 'Taiwan', '', 'Taipei', '', '台灣', 206, '台北市', 3135, '', '[]', '固定運費', 'flat.flat', 0, '', '5805.0000', 12, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '220.135.38.215', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', 'zh-TW,zh;q=0.9,en-US;q=0.8,en;q=0.7,ja;q=0.6', '2017-11-25 10:22:57', '2017-11-25 10:23:00'),
(111, 0, 'INV-2013-00', 0, 'MITTAG', 'http://www.mittag.com.tw/', 9, 1, 'wei', 'lin', 'lingwei005@gmail.com', '0911672251', '', '{\"1\":\"2017-09-08\",\"4\":\"\",\"2\":\"\",\"3\":\"6\"}', 'wei', 'lin', '', '中和南山路', '', '中和', '', '台灣', 206, '新北市', 3137, '', '[]', '銀行轉帳', 'bank_transfer', 'wei', 'lin', '', '中和南山路', '', '中和', '', '台灣', 206, '新北市', 3137, '', '[]', '固定運費', 'flat.flat', 0, 'pls ship out asap', '3405.0000', 12, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '61.228.26.132', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', 'zh-TW,zh;q=0.9,en-US;q=0.8,en;q=0.7', '2017-11-29 09:01:20', '2017-11-29 09:05:43'),
(112, 0, 'INV-2013-00', 0, 'MITTAG', 'http://www.mittag.com.tw/', 0, 1, 'lin', 'test', 'testsetes@gmail.com', '09123123', '', '{\"4\":\"\",\"3\":\"\"}', 'lin', 'test', '', '地址台灣中山區', '', '台北', '', '台灣', 206, '澎湖縣', 3151, '', '[]', '貨到付款', 'cod', 'lin', 'test', '', '地址台灣中山區', '', '台北', '', '台灣', 206, '澎湖縣', 3151, '', '[]', '固定運費', 'flat.flat', 0, '', '12345683.0000', 1, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '220.135.38.215', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', 'zh-TW,zh;q=0.9,en-US;q=0.8,en;q=0.7,ja;q=0.6', '2017-12-06 23:25:42', '2017-12-06 23:25:45'),
(113, 1, 'INV-2013-00', 0, 'MITTAG', 'http://www.mittag.com.tw/', 1, 1, 'Wayne', 'Lin', 'Anikiwayne@gmail.com', '0932000181', '', '', 'Wayne', 'Lin', '', 'Taiwan', '', 'Taipei', '', '台灣', 206, '台北市', 3135, '', '[]', '貨到付款', 'cod', 'Wayne', 'Lin', '', 'Taiwan', '', 'Taipei', '', '台灣', 206, '台北市', 3135, '', '[]', '固定運費', 'flat.flat', 0, '', '55.0000', 1, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '220.135.38.215', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', 'zh-TW,zh;q=0.9,en-US;q=0.8,en;q=0.7,ja;q=0.6', '2017-12-06 23:30:18', '2018-01-17 21:58:40'),
(114, 0, 'INV-2013-00', 0, 'MITTAG', 'http://www.mittag.com.tw/', 9, 1, 'wei', 'lin', 'lingwei005@gmail.com', '0911672251', '', '{\"1\":\"2017-09-08\",\"4\":\"\",\"2\":\"\",\"3\":\"6\"}', 'wei', 'lin', '', '中和南山路', '', '中和', '', '台灣', 206, '新北市', 3137, '', '[]', '銀行轉帳', 'bank_transfer', 'wei', 'lin', '', '中和南山路', '', '中和', '', '台灣', 206, '新北市', 3137, '', '[]', '固定運費', 'flat.flat', 123, 'pls ship out asap', '5950.0000', 12, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '36.230.99.197', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', 'zh-TW,zh;q=0.9,en-US;q=0.8,en;q=0.7', '2018-01-08 10:20:44', '2018-01-20 15:07:26'),
(115, 0, 'INV-2013-00', 0, 'MITTAG', 'http://www.mittag.com.tw/', 0, 1, '林', '', 'Anikiwayne@gmail.com', '0932000111', '', '[]', '林', '', '', '', '', '', '', '台灣', 206, '', 0, '', '[]', '銀行轉帳', 'bank_transfer', '林', '', '', '', '', '', '', '台灣', 206, '', 0, '', '[]', '固定運費', 'flat.flat', 123456789, 'Hi', '2940.0000', 12, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '223.140.154.40', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_2 like Mac OS X) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0 Mobile/14C92 Safari/602.1', 'zh-tw', '2018-01-27 09:05:13', '2018-01-27 11:16:45'),
(116, 0, 'INV-2013-00', 0, 'MITTAG', 'http://www.mittag.com.tw/', 0, 1, '測試先生', '', 'anikiwayne@gmail.com', '0932000181', '', '[]', '測試先生', '', '', '', '', '', '', '台灣', 206, '', 0, '', '[]', '銀行轉帳', 'bank_transfer', '測試先生', '', '', '', '', '', '', '台灣', 206, '', 0, '', '[]', '固定運費', 'flat.flat', 0, '', '2750.0000', 12, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '223.140.154.40', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'zh-TW,zh;q=0.9,en-US;q=0.8,en;q=0.7,ja;q=0.6', '2018-01-27 11:40:09', '2018-01-27 11:40:12'),
(117, 0, 'INV-2013-00', 0, 'MITTAG', 'http://www.mittag.com.tw/', 0, 1, '林', '', 'anikiwayne@gmail.com', '0932000181', '', '[]', '林', '', '', '', '', '', '', '台灣', 206, '', 0, '', '[]', '銀行轉帳', 'bank_transfer', '林', '', '', '', '', '', '', '台灣', 206, '', 0, '', '[]', '統一超商取貨', 'ecpaylogistic.unimart', 0, '', '230.0000', 0, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '220.135.38.215', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'zh-TW,zh;q=0.9,en-US;q=0.8,en;q=0.7,ja;q=0.6', '2018-02-04 21:52:47', '2018-02-04 21:52:47'),
(118, 0, 'INV-2013-00', 0, 'MITTAG', 'http://www.mittag.com.tw/', 0, 1, 'lin', '', 'lingwei005@gmail.com', '0911672251', '', '[]', 'lin', '', '', '', '', '', '', '台灣', 206, '', 0, '', '[]', '銀行轉帳', 'bank_transfer', 'lin', '', '', '', '', '', '', '台灣', 206, '', 0, '', '[]', '固定運費', 'flat.flat', 300, 'asap', '2750.0000', 12, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '36.229.134.49', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'zh-TW,zh;q=0.9,en-US;q=0.8,en;q=0.7', '2018-02-05 14:55:57', '2018-02-05 14:58:42'),
(119, 0, 'INV-2013-00', 0, 'MITTAG', 'http://www.mittag.com.tw/', 21, 1, '詹姆士', '', 'ukjames312@hotmail.com', '0952829779', '', '', '詹姆士', '吳', '', '中和區南山路250巷12-1號', '', '新北市', '23570', '台灣', 206, '新北市', 3137, '', '[]', '銀行轉帳', 'bank_transfer', '詹姆士', '吳', '', '中和區南山路250巷12-1號', '', '新北市', '23570', '台灣', 206, '新北市', 3137, '', '[]', '固定運費', 'flat.flat', 2147483647, '可不可以在過年前寄到', '2800.0000', 12, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '36.229.135.221', '', 'Mozilla/5.0 (iPad; CPU OS 11_2_5 like Mac OS X) AppleWebKit/604.1.34 (KHTML, like Gecko) CriOS/64.0.3282.112 Mobile/15D60 Safari/604.1', 'zh-tw', '2018-02-07 21:38:36', '2018-02-25 13:56:24'),
(120, 0, 'INV-2013-00', 0, 'MITTAG', 'http://www.mittag.com.tw/', 0, 1, '林', '', 'anikiwayne@gmail.com', '0932000181', '', '[]', '林', '', '', '', '', '', '', '台灣', 206, '', 0, '', '[]', '銀行轉帳', 'bank_transfer', '林', '', '', '', '', '', '', '台灣', 206, '', 0, '', '[]', '統一超商取貨', 'ecpaylogistic.unimart', 0, '', '180.0000', 0, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '220.135.38.215', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'zh-TW,zh;q=0.9,en-US;q=0.8,en;q=0.7,ja;q=0.6', '2018-02-20 01:32:37', '2018-02-20 01:32:37'),
(121, 0, 'INV-2013-00', 0, 'MITTAG', 'http://www.mittag.com.tw/', 0, 1, '林', '', 'anikiwayne@gmail.com', '0932000181', '', '[]', '林', '', '', '', '', '', '', '台灣', 206, '', 0, '', '[]', '免費', 'free_checkout', '林', '', '', '', '', '', '', '台灣', 206, '', 0, '', '[]', '固定運費', 'flat.flat', 0, '', '0.0000', 0, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '220.135.38.215', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'zh-TW,zh;q=0.9,en-US;q=0.8,en;q=0.7,ja;q=0.6', '2018-02-25 16:58:39', '2018-02-25 16:58:39'),
(122, 0, 'INV-2013-00', 0, 'MITTAG', 'http://www.mittag.com.tw/', 23, 1, '林', '', 'linjohnwayne@gmail.com', '0932000181', '', '', '林', '', '', '', '', '', '', '台灣', 206, '', 0, '', '[]', '免費', 'free_checkout', '林', '', '', '', '', '', '', '台灣', 206, '', 0, '', '[]', '固定運費', 'flat.flat', 0, '', '0.0000', 0, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '220.135.38.215', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'zh-TW,zh;q=0.9,en-US;q=0.8,en;q=0.7,ja;q=0.6', '2018-02-25 17:12:37', '2018-02-25 17:12:37'),
(123, 0, 'INV-2013-00', 0, 'MITTAG', 'http://www.mittag.com.tw/', 0, 1, '林', '', 'anikiwayne@gmail.com', '0932000181', '', '[]', '林', '', '', '', '', '', '', '台灣', 206, '', 0, '', '[]', '銀行轉帳', 'bank_transfer', '林', '', '', '', '', '', '', '台灣', 206, '', 0, '', '[]', '固定運費', 'flat.flat', 0, '', '2750.0000', 0, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '220.135.38.215', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'zh-TW,zh;q=0.9,en-US;q=0.8,en;q=0.7,ja;q=0.6', '2018-03-25 10:48:24', '2018-03-25 10:48:24'),
(124, 0, 'INV-2013-00', 0, 'MITTAG', 'http://www.mittag.com.tw/', 0, 1, '林', 'test', 'anikiwayne@gmail.com', '09123456798', '', '[]', '林', 'test', '', '台北次測試', '', '台北', '1246', '台灣', 206, '花蓮縣', 3154, '', '[]', '銀行轉帳', 'bank_transfer', '林', 'test', '', '台北次測試', '', '台北', '1246', '台灣', 206, '花蓮縣', 3154, '', '[]', '固定運費', 'flat.flat', 0, '', '2500.0000', 0, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '220.135.38.215', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'zh-TW,zh;q=0.9,en-US;q=0.8,en;q=0.7,ja;q=0.6', '2018-04-04 13:04:09', '2018-04-04 13:04:09'),
(125, 0, 'INV-2013-00', 0, 'MITTAG', 'http://www.mittag.com.tw/', 0, 1, '林', 'test', 'anikiwayne@gmail.com', '0923000181', '', '[]', '林', 'test', '', '台北次測試', '', '台北', '123', '台灣', 206, '台南市', 3149, '', '[]', '銀行轉帳', 'bank_transfer', '林', 'test', '', '台北次測試', '', '台北', '123', '台灣', 206, '台南市', 3149, '', '[]', '固定運費', 'flat.flat', 0, '', '9900.0000', 0, 0, '0.0000', 0, '', 1, 1, 'TWD', '1.00000000', '220.135.38.215', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'zh-TW,zh;q=0.9,en-US;q=0.8,en;q=0.7,ja;q=0.6', '2018-04-05 10:14:51', '2018-04-05 10:14:51');

-- --------------------------------------------------------

--
-- 資料表結構 `oc_order_custom_field`
--

CREATE TABLE `oc_order_custom_field` (
  `order_custom_field_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `location` varchar(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_order_history`
--

CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_order_history`
--

INSERT INTO `oc_order_history` (`order_history_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_added`) VALUES
(1, 1, 1, 0, '', '2016-11-11 11:06:54'),
(2, 2, 1, 0, '', '2016-11-12 11:10:55'),
(3, 5, 12, 1, '銀行轉帳付款說明\n\n玉山分行\n\n★確定入帳後，我們會立即幫您處理，感謝您的支持與愛護★', '2017-02-04 15:04:03'),
(4, 6, 12, 1, '銀行轉帳付款說明\n\n玉山分行\n\n★確定入帳後，我們會立即幫您處理，感謝您的支持與愛護★', '2017-05-05 11:04:12'),
(5, 7, 12, 1, '銀行轉帳付款說明\n\n玉山分行\n\n★確定入帳後，我們會立即幫您處理，感謝您的支持與愛護★', '2017-05-09 09:19:12'),
(6, 8, 12, 1, '銀行轉帳付款說明\n\n玉山分行\n\n★確定入帳後，我們會立即幫您處理，感謝您的支持與愛護★', '2017-08-19 15:08:14'),
(7, 9, 12, 1, '銀行轉帳付款說明\n\n玉山分行\n\n★確定入帳後，我們會立即幫您處理，感謝您的支持與愛護★', '2017-08-19 15:15:49'),
(8, 10, 12, 1, '銀行轉帳付款說明\n\n玉山分行\n\n★確定入帳後，我們會立即幫您處理，感謝您的支持與愛護★', '2017-08-19 15:18:19'),
(9, 11, 12, 1, '銀行轉帳付款說明\n\n玉山分行\n\n★確定入帳後，我們會立即幫您處理，感謝您的支持與愛護★', '2017-08-19 15:32:59'),
(10, 12, 12, 1, '銀行轉帳付款說明\n\n玉山分行\n\n★確定入帳後，我們會立即幫您處理，感謝您的支持與愛護★', '2017-08-19 15:35:10'),
(11, 13, 12, 1, '銀行轉帳付款說明\n\n玉山分行\n\n★確定入帳後，我們會立即幫您處理，感謝您的支持與愛護★', '2017-08-19 15:41:25'),
(12, 15, 12, 1, '銀行轉帳付款說明\n\n玉山分行\n\n★確定入帳後，我們會立即幫您處理，感謝您的支持與愛護★', '2017-08-20 01:11:23'),
(13, 16, 12, 1, '銀行轉帳付款說明\n\n玉山分行\n\n★確定入帳後，我們會立即幫您處理，感謝您的支持與愛護★', '2017-08-20 01:32:32'),
(14, 17, 12, 1, '銀行轉帳付款說明\n\n玉山分行\n\n★確定入帳後，我們會立即幫您處理，感謝您的支持與愛護★', '2017-08-20 15:50:57'),
(15, 18, 1, 0, '', '2017-08-20 15:53:25'),
(16, 20, 12, 1, '銀行轉帳付款說明\n\n玉山分行\n\n★確定入帳後，我們會立即幫您處理，感謝您的支持與愛護★', '2017-08-20 21:21:53'),
(17, 21, 12, 1, '銀行轉帳付款說明\n\n玉山分行\n\n★確定入帳後，我們會立即幫您處理，感謝您的支持與愛護★', '2017-08-20 21:24:20'),
(18, 22, 12, 1, '銀行轉帳付款說明\n\n玉山分行\n\n★確定入帳後，我們會立即幫您處理，感謝您的支持與愛護★', '2017-08-20 21:44:37'),
(19, 23, 12, 1, '銀行轉帳付款說明\n\n玉山分行\n\n★確定入帳後，我們會立即幫您處理，感謝您的支持與愛護★', '2017-08-20 21:46:37'),
(20, 24, 12, 1, '銀行轉帳付款說明\n\n玉山分行\n\n★確定入帳後，我們會立即幫您處理，感謝您的支持與愛護★', '2017-08-20 21:48:07'),
(21, 25, 12, 1, '銀行轉帳付款說明\n\n玉山分行\n\n★確定入帳後，我們會立即幫您處理，感謝您的支持與愛護★', '2017-08-20 21:52:18'),
(22, 26, 1, 0, '', '2017-08-20 23:15:25'),
(23, 28, 12, 1, '銀行轉帳付款說明\n\n玉山分行\n\n★確定入帳後，我們會立即幫您處理，感謝您的支持與愛護★', '2017-08-20 23:38:46'),
(24, 32, 1, 0, '', '2017-08-21 20:31:47'),
(25, 35, 12, 1, '銀行轉帳付款說明\n\n玉山分行\n\n★確定入帳後，我們會立即幫您處理，感謝您的支持與愛護★', '2017-08-21 20:51:43'),
(26, 38, 1, 0, '', '2017-08-21 22:30:42'),
(27, 39, 12, 1, '銀行轉帳付款說明\n\n玉山分行\n\n★確定入帳後，我們會立即幫您處理，感謝您的支持與愛護★', '2017-08-21 22:47:58'),
(28, 40, 12, 1, '銀行轉帳付款說明\n\n玉山分行\n\n★確定入帳後，我們會立即幫您處理，感謝您的支持與愛護★', '2017-08-21 22:55:11'),
(29, 41, 12, 1, '銀行轉帳付款說明\n\n玉山分行\n\n★確定入帳後，我們會立即幫您處理，感謝您的支持與愛護★', '2017-08-21 22:58:33'),
(30, 42, 12, 1, '銀行轉帳付款說明\n\n玉山分行\n\n★確定入帳後，我們會立即幫您處理，感謝您的支持與愛護★', '2017-08-21 23:03:36'),
(31, 47, 1, 0, '', '2017-08-21 23:46:04'),
(32, 48, 1, 0, '', '2017-08-21 23:48:55'),
(33, 51, 1, 0, '', '2017-08-21 23:59:53'),
(34, 52, 1, 0, '', '2017-08-22 00:16:38'),
(35, 54, 1, 0, '', '2017-08-22 00:20:14'),
(36, 60, 1, 0, '', '2017-08-22 00:24:52'),
(37, 61, 1, 0, '', '2017-08-22 00:36:32'),
(38, 62, 12, 1, '銀行轉帳付款說明\n\n玉山分行\n\n★確定入帳後，我們會立即幫您處理，感謝您的支持與愛護★', '2017-08-24 23:12:13'),
(39, 63, 1, 0, '', '2017-08-24 23:13:30'),
(40, 64, 1, 0, '', '2017-08-24 23:46:39'),
(41, 65, 1, 0, '', '2017-08-25 00:01:58'),
(42, 66, 1, 0, '', '2017-08-25 00:02:48'),
(43, 67, 12, 1, '銀行轉帳付款說明\n\n玉山分行\n\n★確定入帳後，我們會立即幫您處理，感謝您的支持與愛護★', '2017-08-25 21:50:35'),
(44, 68, 12, 1, '銀行轉帳付款說明\n\n玉山分行\n\n★確定入帳後，我們會立即幫您處理，感謝您的支持與愛護★', '2017-08-25 21:56:36'),
(45, 69, 12, 1, '銀行轉帳付款說明\n\n玉山分行\n\n★確定入帳後，我們會立即幫您處理，感謝您的支持與愛護★', '2017-08-25 23:12:17'),
(46, 70, 1, 0, '', '2017-08-25 23:26:04'),
(47, 71, 1, 0, '', '2017-08-25 23:26:47'),
(48, 72, 1, 0, '', '2017-08-25 23:27:54'),
(49, 73, 1, 0, '', '2017-08-25 23:40:11'),
(50, 74, 1, 0, '', '2017-08-25 23:41:50'),
(51, 75, 1, 0, '', '2017-08-25 23:43:37'),
(52, 76, 1, 0, '', '2017-08-25 23:45:27'),
(53, 77, 1, 0, '', '2017-08-25 23:50:04'),
(54, 79, 1, 0, '', '2017-08-26 00:37:35'),
(55, 82, 1, 0, '', '2017-08-26 00:53:30'),
(56, 83, 12, 1, '銀行轉帳付款說明\n\n玉山分行\n\n★確定入帳後，我們會立即幫您處理，感謝您的支持與愛護★', '2017-08-26 01:08:44'),
(57, 84, 12, 1, '銀行轉帳付款說明\n\n玉山分行\n\n★確定入帳後，我們會立即幫您處理，感謝您的支持與愛護★', '2017-08-26 01:10:03'),
(58, 85, 1, 0, '', '2017-08-26 10:39:34'),
(59, 86, 1, 0, '', '2017-08-26 10:40:46'),
(60, 87, 1, 0, '', '2017-08-26 11:15:16'),
(61, 88, 1, 0, '', '2017-08-26 11:16:51'),
(62, 89, 1, 0, '', '2017-08-26 11:18:05'),
(63, 90, 1, 0, '', '2017-08-26 11:22:09'),
(64, 91, 1, 0, '', '2017-08-26 11:23:32'),
(65, 92, 12, 1, '銀行轉帳付款說明\n\n玉山分行\n\n★確定入帳後，我們會立即幫您處理，感謝您的支持與愛護★', '2017-08-26 12:34:01'),
(66, 93, 1, 0, '', '2017-08-26 12:44:14'),
(67, 94, 1, 0, '', '2017-08-26 12:48:50'),
(68, 95, 1, 0, '', '2017-08-26 12:50:15'),
(69, 96, 12, 1, '銀行轉帳付款說明\n\n玉山分行\n\n★確定入帳後，我們會立即幫您處理，感謝您的支持與愛護★', '2017-08-26 13:43:56'),
(70, 97, 1, 0, '', '2017-08-26 13:49:57'),
(71, 98, 1, 0, '', '2017-08-26 13:58:28'),
(72, 99, 1, 0, '', '2017-08-26 14:05:05'),
(73, 100, 1, 0, '', '2017-08-26 14:06:33'),
(74, 102, 1, 0, '', '2017-09-08 20:58:50'),
(75, 103, 1, 0, '', '2017-09-10 08:36:47'),
(76, 104, 12, 1, '銀行轉帳付款說明\n\n玉山分行\n\n★確定入帳後，我們會立即幫您處理，感謝您的支持與愛護★', '2017-09-10 12:00:51'),
(77, 105, 12, 1, '銀行轉帳付款說明\n\n玉山分行\n\n★確定入帳後，我們會立即幫您處理，感謝您的支持與愛護★', '2017-09-13 09:12:52'),
(78, 108, 12, 1, '銀行轉帳付款說明\n\n玉山分行\n\n★確定入帳後，我們會立即幫您處理，感謝您的支持與愛護★', '2017-11-04 17:25:06'),
(79, 109, 12, 1, '銀行轉帳付款說明\n\n玉山分行\n\n★確定入帳後，我們會立即幫您處理，感謝您的支持與愛護★', '2017-11-25 01:26:48'),
(80, 110, 12, 1, '銀行轉帳付款說明\n\n玉山分行\n\n★確定入帳後，我們會立即幫您處理，感謝您的支持與愛護★', '2017-11-25 10:23:00'),
(81, 111, 12, 1, '銀行轉帳付款說明\n\n玉山分行\n\n★確定入帳後，我們會立即幫您處理，感謝您的支持與愛護★', '2017-11-29 09:05:43'),
(82, 112, 1, 0, '', '2017-12-06 23:25:45'),
(83, 113, 1, 0, '', '2017-12-06 23:30:19'),
(84, 114, 12, 1, '銀行轉帳付款說明\n\n玉山分行\n\n★確定入帳後，我們會立即幫您處理，感謝您的支持與愛護★', '2018-01-08 10:25:11'),
(85, 114, 12, 0, '111111111111111111111111', '2018-01-17 21:52:39'),
(86, 113, 1, 1, 'fdsafsadfdsa', '2018-01-17 21:58:40'),
(87, 115, 12, 1, '銀行轉帳付款說明\n\n台灣銀行(004)\r\n007004753139\r\n\r\n\n\n★確定入帳後，我們會立即幫您處理，感謝您的支持與愛護★', '2018-01-27 09:05:15'),
(88, 115, 12, 1, 'jfisfjoijfiojfdoijiojifojosidfjsjis', '2018-01-27 11:16:45'),
(89, 116, 12, 1, '銀行轉帳付款說明\n\n台灣銀行(004)\r\n007004753139\r\n\r\n\n\n★確定入帳後，我們會立即幫您處理，感謝您的支持與愛護★', '2018-01-27 11:40:12'),
(90, 118, 12, 1, '銀行轉帳付款說明\n\n台灣銀行(004)\r\n007004753139\r\n\r\n\n\n★確定入帳後，我們會立即幫您處理，感謝您的支持與愛護★', '2018-02-05 14:56:19'),
(91, 119, 12, 1, '銀行轉帳付款說明\n\n台灣銀行(004)\r\n007004753139\r\n\r\n\n\n★確定入帳後，我們會立即幫您處理，感謝您的支持與愛護★', '2018-02-07 21:39:27');

-- --------------------------------------------------------

--
-- 資料表結構 `oc_order_option`
--

CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_order_option`
--

INSERT INTO `oc_order_option` (`order_option_id`, `order_id`, `order_product_id`, `product_option_id`, `product_option_value_id`, `name`, `value`, `type`) VALUES
(1, 4, 4, 227, 17, '戒指圍', '#7', 'select'),
(2, 4, 4, 228, 0, '備註', '填寫你要的', 'textarea'),
(3, 4, 4, 230, 19, '鍊長', '#16', 'select'),
(4, 5, 5, 235, 28, '戒指圍', '#14', 'select'),
(5, 5, 5, 234, 26, '鍊長', '#24', 'select'),
(6, 6, 6, 227, 17, '戒指圍', '#7', 'select'),
(7, 6, 6, 228, 0, '備註', '填寫你要的', 'textarea'),
(8, 6, 6, 230, 19, '鍊長', '#16', 'select'),
(9, 6, 7, 235, 28, '戒指圍', '#14', 'select'),
(10, 6, 7, 234, 26, '鍊長', '#24', 'select');

-- --------------------------------------------------------

--
-- 資料表結構 `oc_order_product`
--

CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `extraDetail` varchar(255) NOT NULL,
  `extraDetail1` varchar(255) NOT NULL,
  `extraDetail2` varchar(255) NOT NULL,
  `extraDetail3` varchar(255) NOT NULL,
  `extraDetail4` varchar(255) NOT NULL,
  `extraDetail5` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_order_product`
--

INSERT INTO `oc_order_product` (`order_product_id`, `order_id`, `extraDetail`, `extraDetail1`, `extraDetail2`, `extraDetail3`, `extraDetail4`, `extraDetail5`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
(1, 1, '', '', '', '', '', '', 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(2, 2, '', '', '', '', '', '', 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(3, 3, '', '', '', '', '', '', 52, '經典鍊子', 'a321', 1, '99999999999.9999', '99999999999.9999', '0.0000', 0),
(4, 4, '', '', '', '', '', '', 41, '夏日戒指', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(5, 5, '', '', '', '', '', '', 54, 'test1', 'a1234', 1, '200.0000', '200.0000', '0.0000', 0),
(6, 6, '', '', '', '', '', '', 41, '夏日戒指', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(7, 6, '', '', '', '', '', '', 54, 'test1', 'a1234', 1, '200.0000', '200.0000', '0.0000', 0),
(8, 7, '', '', '', '', '', '', 56, 'chasing ice ring 逐冰戒指', 'RG309', 1, '4750.0000', '4750.0000', '0.0000', 0),
(9, 8, '', '', '', '', '', '', 59, 'snake drei ring 蜿蜒蛇戒指', 'RG304', 1, '4700.0000', '4700.0000', '0.0000', 0),
(10, 9, '', '', '', '', '', '', 58, 'typhoon eye ring 颱風眼戒指', 'RG401', 1, '2600.0000', '2600.0000', '0.0000', 0),
(11, 9, '', '', '', '', '', '', 60, 'firm f ring 堅毅女戒', 'RG314', 1, '3000.0000', '3000.0000', '0.0000', 0),
(12, 10, '', '', '', '', '', '', 67, 'train bracelet 火車手鍊', 'BL313', 1, '2900.0000', '2900.0000', '0.0000', 0),
(13, 11, '', '', '', '', '', '', 63, 'donuts ring 甜甜圈戒指', 'RG305', 1, '3200.0000', '3200.0000', '0.0000', 0),
(14, 12, '', '', '', '', '', '', 67, 'train bracelet 火車手鍊', 'BL313', 1, '2900.0000', '2900.0000', '0.0000', 0),
(15, 13, '', '', '', '', '', '', 66, '指紋項鍊 finger print necklace', 'NL336', 1, '3800.0000', '3800.0000', '0.0000', 0),
(16, 14, '', '', '', '', '', '', 67, 'train bracelet 火車手鍊', 'BL313', 1, '2900.0000', '2900.0000', '0.0000', 0),
(17, 15, '', '', '', '', '', '', 67, 'train bracelet 火車手鍊', 'BL313', 1, '2900.0000', '2900.0000', '0.0000', 0),
(18, 16, '', '', '', '', '', '', 66, '指紋項鍊 finger print necklace', 'NL336', 1, '3800.0000', '3800.0000', '0.0000', 0),
(19, 17, '', '', '', '', '', '', 63, 'donuts ring 甜甜圈戒指', 'RG305', 1, '3200.0000', '3200.0000', '0.0000', 0),
(20, 17, '', '', '', '', '', '', 64, 'super ring 超能戒指', 'RG306', 1, '3900.0000', '3900.0000', '0.0000', 0),
(21, 17, '', '', '', '', '', '', 81, 'test2', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(22, 18, '', '', '', '', '', '', 81, 'test2', 'test1', 3, '0.0000', '0.0000', '0.0000', 0),
(23, 19, '', '', '', '', '', '', 67, 'train bracelet 火車手鍊', 'BL313', 1, '2900.0000', '2900.0000', '0.0000', 0),
(24, 19, '', '', '', '', '', '', 81, 'test2', 'test1', 8, '0.0000', '0.0000', '0.0000', 0),
(25, 20, '', '', '', '', '', '', 67, 'train bracelet 火車手鍊', 'BL313', 1, '2900.0000', '2900.0000', '0.0000', 0),
(26, 20, '', '', '', '', '', '', 81, 'test2', 'test1', 8, '0.0000', '0.0000', '0.0000', 0),
(27, 21, '', '', '', '', '', '', 66, '指紋項鍊 finger print necklace', 'NL336', 1, '3800.0000', '3800.0000', '0.0000', 0),
(28, 21, '', '', '', '', '', '', 68, 'train necklace 火車項鍊', 'NL343', 1, '2850.0000', '2850.0000', '0.0000', 0),
(29, 22, '', '', '', '', '', '', 67, 'train bracelet 火車手鍊', 'BL313', 1, '2900.0000', '2900.0000', '0.0000', 0),
(30, 22, '', '', '', '', '', '', 81, 'test2', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(31, 23, '', '', '', '', '', '', 67, 'train bracelet 火車手鍊', 'BL313', 1, '2900.0000', '2900.0000', '0.0000', 0),
(32, 23, '', '', '', '', '', '', 81, 'test2', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(33, 24, '', '', '', '', '', '', 63, 'donuts ring 甜甜圈戒指', 'RG305', 1, '3200.0000', '3200.0000', '0.0000', 0),
(34, 25, '', '', '', '', '', '', 66, '指紋項鍊 finger print necklace', 'NL336', 1, '3800.0000', '3800.0000', '0.0000', 0),
(35, 25, '', '', '', '', '', '', 69, 'train baby bracelet 火車寶寶手鍊', 'BB307', 1, '2400.0000', '2400.0000', '0.0000', 0),
(36, 26, '', '', '', '', '', '', 81, 'test2', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(37, 28, '', '', '', '', '', '', 67, 'train bracelet 火車手鍊', 'BL313', 1, '2900.0000', '2900.0000', '0.0000', 0),
(38, 28, '', '', '', '', '', '', 81, 'test2', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(39, 32, '', '', '', '', '', '', 81, 'test2', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(40, 34, '', '', '', '', '', '', 67, 'train bracelet 火車手鍊', 'BL313', 1, '2900.0000', '2900.0000', '0.0000', 0),
(41, 34, '', '', '', '', '', '', 81, 'test2', 'test1', 2, '0.0000', '0.0000', '0.0000', 0),
(42, 35, '', '', '', '', '', '', 67, 'train bracelet 火車手鍊', 'BL313', 1, '2900.0000', '2900.0000', '0.0000', 0),
(43, 35, '', '', '', '', '', '', 81, 'test2', 'test1', 2, '0.0000', '0.0000', '0.0000', 0),
(44, 37, '', '', '', '', '', '', 81, 'test2', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(45, 38, '', '', '', '', '', '', 81, 'test2', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(46, 39, '', '', '', '', '', '', 67, 'train bracelet 火車手鍊', 'BL313', 1, '2900.0000', '2900.0000', '0.0000', 0),
(47, 39, '', '', '', '', '', '', 81, 'test2', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(48, 40, '', '', '', '', '', '', 67, 'train bracelet 火車手鍊', 'BL313', 1, '2900.0000', '2900.0000', '0.0000', 0),
(49, 40, '', '', '', '', '', '', 81, 'test2', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(50, 41, '', '', '', '', '', '', 67, 'train bracelet 火車手鍊', 'BL313', 1, '2900.0000', '2900.0000', '0.0000', 0),
(51, 41, '', '', '', '', '', '', 81, 'test2', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(52, 42, '', '', '', '', '', '', 67, 'train bracelet 火車手鍊', 'BL313', 1, '2900.0000', '2900.0000', '0.0000', 0),
(53, 42, '', '', '', '', '', '', 81, 'test2', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(54, 43, '', '', '', '', '', '', 67, 'train bracelet 火車手鍊', 'BL313', 1, '2900.0000', '2900.0000', '0.0000', 0),
(55, 43, '', '', '', '', '', '', 81, 'test2', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(56, 44, '', '', '', '', '', '', 67, 'train bracelet 火車手鍊', 'BL313', 1, '2900.0000', '2900.0000', '0.0000', 0),
(57, 44, '', '', '', '', '', '', 81, 'test2', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(58, 45, '', '', '', '', '', '', 67, 'train bracelet 火車手鍊', 'BL313', 1, '2900.0000', '2900.0000', '0.0000', 0),
(59, 45, '', '', '', '', '', '', 81, 'test2', 'test1', 2, '0.0000', '0.0000', '0.0000', 0),
(60, 46, '', '', '', '', '', '', 81, 'test2', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(61, 47, '', '', '', '', '', '', 81, 'test2', 'test1', 2, '0.0000', '0.0000', '0.0000', 0),
(62, 48, '', '', '', '', '', '', 81, 'test2', 'test1', 2, '0.0000', '0.0000', '0.0000', 0),
(63, 49, '', '', '', '', '', '', 81, 'test2', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(64, 50, '', '', '', '', '', '', 81, 'test2', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(65, 51, '', '', '', '', '', '', 81, 'test2', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(66, 52, '', '', '', '', '', '', 81, 'test2', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(67, 54, '4號(1.3cm)', '', '', '', '', '', 81, 'test2', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(68, 60, '4號(1.3cm)', '', '', '', '', '', 81, 'test2', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(69, 61, '4號(1.3cm)', '', '', '', '', '', 81, 'test2', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(70, 62, '', '', '', '', '', '', 67, 'train bracelet 火車手鍊', 'BL313', 1, '2900.0000', '2900.0000', '0.0000', 0),
(71, 62, '', '', '', '', '', '', 81, 'test2', 'test1', 2, '0.0000', '0.0000', '0.0000', 0),
(72, 63, 'Array', '', '', '', '', '', 81, 'test2', 'test1', 3, '0.0000', '0.0000', '0.0000', 0),
(73, 64, 'Array', '', '', '', '', '', 81, 'test2', 'test1', 2, '0.0000', '0.0000', '0.0000', 0),
(74, 65, 'Array', '', '', '', '', '', 81, 'test2', 'test1', 3, '0.0000', '0.0000', '0.0000', 0),
(75, 66, 'Array', '', '', '', '', '', 81, 'test2', 'test1', 2, '0.0000', '0.0000', '0.0000', 0),
(76, 67, '[\"u8acbu9078u64c7u6212u570d\",\"u624bu934au9577u5ea60\",\"u624bu74b0u5167u570du76f4u5f910\",\"u8033u74b0u5f62u5f0f\"]', '', '', '', '', '', 67, 'train bracelet 火車手鍊', 'BL313', 1, '2900.0000', '2900.0000', '0.0000', 0),
(77, 67, '[\"4u865f(1.3cm)\",\"u624bu934au9577u5ea616\",\"u624bu74b0u5167u570du76f4u5f916.5\",\"u8033u74b0u5f62u5f0fu8033u593eu5f0fu8033u74b0\"]', '', '', '', '', '', 81, 'test2', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(78, 68, '[\"u8acbu9078u64c7u6212u570d\",\"u624bu934au9577u5ea60\",\"u624bu74b0u5167u570du76f4u5f910\",\"u8033u74b0u5f62u5f0f\"]', '', '', '', '', '', 67, 'train bracelet 火車手鍊', 'BL313', 1, '2900.0000', '2900.0000', '0.0000', 0),
(79, 68, '[\"4u865f(1.3cm)\",\"u624bu934au9577u5ea616\",\"u624bu74b0u5167u570du76f4u5f916.5\",\"u8033u74b0u5f62u5f0fu8033u593eu5f0fu8033u74b0\"]', '', '', '', '', '', 81, 'test2', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(80, 69, '[]', '', '', '', '', '', 81, 'test2', 'test1', 2, '0.0000', '0.0000', '0.0000', 0),
(81, 69, '[]', '', '', '', '', '', 81, 'test2', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(82, 69, '[]', '', '', '', '', '', 67, 'train bracelet 火車手鍊', 'BL313', 1, '2900.0000', '2900.0000', '0.0000', 0),
(83, 70, '[]', '', '', '', '', '', 81, 'test2', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(84, 70, '[]', '', '', '', '', '', 81, 'test2', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(85, 71, '[]', '', '', '', '', '', 81, 'test2', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(86, 72, '[]', '', '', '', '', '', 81, 'test2', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(87, 73, '[]', '', '', '', '', '', 81, 'test2', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(88, 74, '[]', '', '', '', '', '', 81, 'test2', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(89, 75, '[]', '', '', '', '', '', 81, 'test2', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(90, 76, '[]', '', '', '', '', '', 81, 'test2', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(91, 77, '[]', '', '', '', '', '', 81, 'test2', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(92, 78, '[]', '', '', '', '', '', 81, 'test2', 'test1', 2, '0.0000', '0.0000', '0.0000', 0),
(93, 79, '[]', '', '', '', '', '', 81, 'test2', 'test1', 3, '0.0000', '0.0000', '0.0000', 0),
(94, 82, '[]', '4號(1.3cm)', '手鍊長度16', '', '手環內圍直徑6.5', '耳環形式耳夾式耳環', 81, 'test2', 'test1', 4, '0.0000', '0.0000', '0.0000', 0),
(95, 83, '[]', '請選擇戒圍', '手鍊長度0', '', '手環內圍直徑0', '耳環形式', 67, 'train bracelet 火車手鍊', 'BL313', 1, '2900.0000', '2900.0000', '0.0000', 0),
(96, 83, '[]', '4號(1.3cm)', '手鍊長度16', '', '手環內圍直徑6.5', '耳環形式耳夾式耳環', 81, 'test2', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(97, 84, '[]', '請選擇戒圍', '手鍊長度0', '', '手環內圍直徑0', '耳環形式', 67, 'train bracelet 火車手鍊', 'BL313', 1, '2900.0000', '2900.0000', '0.0000', 0),
(98, 84, '[]', '4號(1.3cm)', '手鍊長度16', '', '手環內圍直徑6.5', '耳環形式耳夾式耳環', 81, 'test2', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(99, 85, '[]', '4號(1.3cm)', '16', '', '6.5', '耳夾式耳環', 81, 'test2', 'test1', 2, '0.0000', '0.0000', '0.0000', 0),
(100, 86, '[]', '4號(1.3cm)', '16', '', '6.5', '耳夾式耳環', 81, 'test2', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(101, 87, '[]', '4號(1.3cm)', '16', '', '6.5', '耳夾式耳環', 81, 'test2', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(102, 88, '[]', '4號(1.3cm)', '16', '', '6.5', '耳夾式耳環', 81, 'test2', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(103, 89, '[]', '4號(1.3cm)', '16', '', '6.5', '耳夾式耳環', 81, 'test2', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(104, 90, '[]', '4號(1.3cm)', '16', '', '6.5', '耳夾式耳環', 81, 'test2', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(105, 91, '[]', '14號(1.8cm)', '16', '', '6.5', '耳夾式耳環', 81, 'test2', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(106, 92, '[]', '請選擇戒圍', '0', '', '0', '', 68, 'train necklace 火車項鍊', 'NL343', 1, '2850.0000', '2850.0000', '0.0000', 0),
(107, 93, '[]', '4號(1.3cm)', '16', '', '6.5', '耳夾式耳環', 81, 'test2', 'test1', 2, '0.0000', '0.0000', '0.0000', 0),
(108, 94, '[]', '13號(1.75cm)', '16', '', '6.5', '耳夾式耳環', 81, 'test2', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(109, 95, '[]', '4號(1.3cm)', '16', '', '6.5', '耳夾式耳環', 81, 'test2', 'test1', 2, '0.0000', '0.0000', '0.0000', 0),
(110, 96, '[]', '請選擇戒圍', '0', '', '0', '', 67, 'train bracelet 火車手鍊', 'BL313', 1, '2900.0000', '2900.0000', '0.0000', 0),
(111, 96, '[]', '4號(1.3cm)', '16', '50', '6.5', '耳夾式耳環', 81, 'test2', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(112, 97, '[]', '4號(1.3cm)', '16', '50', '6.5', '耳夾式耳環', 81, 'test2', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(113, 97, '[]', '請選擇戒圍', '', '', '', '', 89, 'test2', 'test2', 1, '0.0000', '0.0000', '0.0000', 0),
(114, 98, '[]', '請選擇戒圍', '', '', '', '', 89, 'test2', 'test2', 1, '0.0000', '0.0000', '0.0000', 0),
(115, 99, '[]', '17號(1.95cm)', '16', '50', '6.5', '耳夾式耳環', 81, 'test2', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(116, 99, '[]', '請選擇戒圍', '', '', '', '', 89, 'test2', 'test2', 1, '0.0000', '0.0000', '0.0000', 0),
(117, 100, '[]', '4號(1.3cm)', '', '', '', '耳夾式耳環', 81, 'test2', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(118, 101, '', '', '', '', '', '', 81, 'test2', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(119, 102, '', '', '', '', '', '', 81, 'test2', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(120, 103, '[]', '請選擇戒圍', '0', '', '0', '', 65, '指紋戒指 finger print ring ', 'RG307', 1, '3450.0000', '3450.0000', '0.0000', 0),
(121, 103, '[]', '請選擇戒圍', '0', '', '0', '', 63, 'donuts ring 甜甜圈戒指', 'RG305', 1, '3200.0000', '3200.0000', '0.0000', 0),
(122, 103, '[]', '請選擇戒圍', '0', '', '0', '', 64, 'super ring 超能戒指', 'RG306', 1, '3900.0000', '3900.0000', '0.0000', 0),
(123, 104, '', '', '', '', '', '', 63, 'donuts ring 甜甜圈戒指', 'RG305', 1, '3200.0000', '3200.0000', '0.0000', 0),
(124, 104, '', '', '', '', '', '', 60, 'firm f ring 堅毅女戒', 'RG314', 1, '3000.0000', '3000.0000', '0.0000', 0),
(125, 104, '', '', '', '', '', '', 57, 'firm m  ring 堅毅男戒', 'RG313', 1, '4600.0000', '4600.0000', '0.0000', 0),
(126, 105, '', '', '', '', '', '', 62, 'knot ring 結戒', 'RG308', 1, '3350.0000', '3350.0000', '0.0000', 0),
(127, 105, '', '', '', '', '', '', 92, 'ring test 01', 'RG702', 1, '3300.0000', '3300.0000', '0.0000', 0),
(128, 106, '[]', '請選擇戒圍', '', '', '', '耳針式耳環', 91, 'earring test 01', 'ER777', 1, '3500.0000', '3500.0000', '0.0000', 0),
(129, 107, '', '', '', '', '', '', 68, 'train necklace 火車項鍊', 'NL343', 1, '2850.0000', '2850.0000', '0.0000', 0),
(130, 107, '', '', '', '', '', '', 81, 'test2', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(131, 108, '[]', '請選擇戒圍', '0', '', '0', '', 69, 'train baby bracelet 火車寶寶手鍊', 'BB307', 1, '2400.0000', '2400.0000', '0.0000', 0),
(132, 109, '', '', '', '', '', '', 118, '手鍊全文案填寫測試', 'BR TEST001', 1, '12345678.0000', '12345678.0000', '0.0000', 0),
(133, 109, '[]', '請選擇戒圍', '', '', '', '', 121, '銀器全文案填寫測試', 'SW TEST001', 1, '12345678.0000', '12345678.0000', '0.0000', 0),
(134, 110, '[]', '請選擇戒圍', '', '40', '', '', 108, '鑽石心項鍊', 'NL715', 1, '2650.0000', '2650.0000', '0.0000', 0),
(135, 110, '[]', '請選擇戒圍', '', '40', '', '', 113, '捲紙兔項鍊', 'NL711', 1, '3150.0000', '3150.0000', '0.0000', 0),
(136, 111, '', '', '', '', '', '', 112, '鴨子項鍊', 'NL712', 1, '3400.0000', '3400.0000', '0.0000', 0),
(137, 112, '[]', '請選擇戒圍', '', '', '', '', 120, '彌月禮全資料測試', 'BB TEST001', 1, '12345678.0000', '12345678.0000', '0.0000', 0),
(138, 113, '[]', '請選擇戒圍', '', '', '', '', 125, '德國結戒指', 'RG703', 1, '50.0000', '50.0000', '0.0000', 0),
(139, 114, '', '', '', '', '', '', 107, '小提琴項鍊', 'NL716', 1, '3550.0000', '3550.0000', '0.0000', 0),
(140, 114, '', '', '', '', '', '', 109, '大象項鍊', 'NL714', 1, '2400.0000', '2400.0000', '0.0000', 0),
(141, 115, '[]', '', '', '', '', '', 106, '麥穗項鍊', 'NL717', 1, '2940.0000', '2940.0000', '0.0000', 0),
(142, 116, '[]', '', '', '', '', '', 123, '王冠手鍊', 'NL716', 1, '2750.0000', '2750.0000', '0.0000', 0),
(143, 117, '[]', '', '', '', '', '', 125, '德國結戒指', 'RG703', 3, '50.0000', '150.0000', '0.0000', 0),
(144, 118, '[]', '請選擇戒圍', '16', '', '', '', 123, '王冠手鍊', 'NL716', 1, '2750.0000', '2750.0000', '0.0000', 0),
(145, 119, '[]', '', '', '', '', '', 123, '王冠手鍊', 'NL716', 1, '2750.0000', '2750.0000', '0.0000', 0),
(146, 119, '[]', '', '', '', '', '', 125, '德國結戒指', 'RG703', 1, '50.0000', '50.0000', '0.0000', 0),
(147, 120, '[]', '', '', '', '', '', 125, '德國結戒指', 'RG703', 2, '50.0000', '100.0000', '0.0000', 0),
(148, 121, '[]', '', '', '', '', '', 131, 'test1', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(149, 122, '[]', '', '', '', '', '', 131, 'test1', 'test1', 1, '0.0000', '0.0000', '0.0000', 0),
(150, 123, '[]', '', '', '', '', '', 366, '樹木a項鍊', 'NL809', 1, '2750.0000', '2750.0000', '0.0000', 0),
(151, 124, '[]', '', '', '', '', '', 343, '小汽車手鍊', 'BL805', 1, '2500.0000', '2500.0000', '0.0000', 0),
(152, 125, '[]', '', '', '', '', '', 345, '超能m戒指', 'RG804', 1, '9900.0000', '9900.0000', '0.0000', 0);

-- --------------------------------------------------------

--
-- 資料表結構 `oc_order_recurring`
--

CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL,
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
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_order_recurring_transaction`
--

CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_order_status`
--

CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(2, 1, '處理中'),
(3, 1, '已配送'),
(7, 1, '已取消'),
(5, 1, '已完成'),
(8, 1, '已拒絕'),
(9, 1, '取消恢復'),
(10, 1, '失敗'),
(11, 1, '已返還'),
(12, 1, 'Reversed'),
(13, 1, '已退款'),
(1, 1, '待處理'),
(16, 1, '空訂單'),
(15, 1, '已處理'),
(14, 1, '已過期');

-- --------------------------------------------------------

--
-- 資料表結構 `oc_order_total`
--

CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_order_total`
--

INSERT INTO `oc_order_total` (`order_total_id`, `order_id`, `code`, `title`, `value`, `sort_order`) VALUES
(1, 1, 'sub_total', '商品總計', '100.0000', 1),
(2, 1, 'shipping', '固定運費', '5.0000', 3),
(3, 1, 'total', '帳單總計', '105.0000', 9),
(4, 2, 'sub_total', '商品總計', '100.0000', 1),
(5, 2, 'shipping', '固定運費', '5.0000', 3),
(6, 2, 'total', '帳單總計', '105.0000', 9),
(7, 3, 'sub_total', '商品總計', '99999999999.9999', 1),
(8, 3, 'shipping', '固定運費', '5.0000', 3),
(9, 3, 'total', '帳單總計', '99999999999.9999', 9),
(10, 4, 'sub_total', '商品總計', '100.0000', 1),
(11, 4, 'shipping', '固定運費', '5.0000', 3),
(12, 4, 'total', '帳單總計', '105.0000', 9),
(13, 5, 'sub_total', '商品總計', '200.0000', 1),
(14, 5, 'shipping', '固定運費', '5.0000', 3),
(15, 5, 'total', '帳單總計', '205.0000', 9),
(16, 6, 'sub_total', '商品總計', '300.0000', 1),
(17, 6, 'shipping', '固定運費', '5.0000', 3),
(18, 6, 'total', '帳單總計', '305.0000', 9),
(19, 7, 'sub_total', '商品總計', '4750.0000', 1),
(20, 7, 'shipping', '固定運費', '5.0000', 3),
(21, 7, 'total', '帳單總計', '4755.0000', 9),
(22, 8, 'sub_total', '商品總計', '4700.0000', 1),
(23, 8, 'shipping', '固定運費', '5.0000', 3),
(24, 8, 'total', '帳單總計', '4705.0000', 9),
(25, 9, 'sub_total', '商品總計', '5600.0000', 1),
(26, 9, 'shipping', '固定運費', '5.0000', 3),
(27, 9, 'total', '帳單總計', '5605.0000', 9),
(28, 10, 'sub_total', '商品總計', '2900.0000', 1),
(29, 10, 'shipping', '固定運費', '5.0000', 3),
(30, 10, 'total', '帳單總計', '2905.0000', 9),
(31, 11, 'sub_total', '商品總計', '3200.0000', 1),
(32, 11, 'shipping', '固定運費', '5.0000', 3),
(33, 11, 'total', '帳單總計', '3205.0000', 9),
(34, 12, 'sub_total', '商品總計', '2900.0000', 1),
(35, 12, 'shipping', '固定運費', '5.0000', 3),
(36, 12, 'total', '帳單總計', '2905.0000', 9),
(37, 13, 'sub_total', '商品總計', '3800.0000', 1),
(38, 13, 'shipping', '固定運費', '5.0000', 3),
(39, 13, 'total', '帳單總計', '3805.0000', 9),
(40, 14, 'sub_total', '商品總計', '2900.0000', 1),
(41, 14, 'shipping', '固定運費', '5.0000', 3),
(42, 14, 'total', '帳單總計', '2905.0000', 9),
(43, 15, 'sub_total', '商品總計', '2900.0000', 1),
(44, 15, 'shipping', '固定運費', '5.0000', 3),
(45, 15, 'total', '帳單總計', '2905.0000', 9),
(46, 16, 'sub_total', '商品總計', '3800.0000', 1),
(47, 16, 'shipping', '固定運費', '5.0000', 3),
(48, 16, 'total', '帳單總計', '3805.0000', 9),
(49, 17, 'sub_total', '商品總計', '7100.0000', 1),
(50, 17, 'shipping', '固定運費', '5.0000', 3),
(51, 17, 'total', '帳單總計', '7105.0000', 9),
(52, 18, 'sub_total', '商品總計', '0.0000', 1),
(53, 18, 'shipping', '固定運費', '5.0000', 3),
(54, 18, 'total', '帳單總計', '5.0000', 9),
(55, 19, 'sub_total', '商品總計', '2900.0000', 1),
(56, 19, 'shipping', '固定運費', '5.0000', 3),
(57, 19, 'total', '帳單總計', '2905.0000', 9),
(58, 20, 'sub_total', '商品總計', '2900.0000', 1),
(59, 20, 'shipping', '固定運費', '5.0000', 3),
(60, 20, 'total', '帳單總計', '2905.0000', 9),
(61, 21, 'sub_total', '商品總計', '6650.0000', 1),
(62, 21, 'shipping', '固定運費', '5.0000', 3),
(63, 21, 'total', '帳單總計', '6655.0000', 9),
(64, 22, 'sub_total', '商品總計', '2900.0000', 1),
(65, 22, 'shipping', '固定運費', '5.0000', 3),
(66, 22, 'total', '帳單總計', '2905.0000', 9),
(67, 23, 'sub_total', '商品總計', '2900.0000', 1),
(68, 23, 'shipping', '固定運費', '5.0000', 3),
(69, 23, 'total', '帳單總計', '2905.0000', 9),
(70, 24, 'sub_total', '商品總計', '3200.0000', 1),
(71, 24, 'shipping', '固定運費', '5.0000', 3),
(72, 24, 'total', '帳單總計', '3205.0000', 9),
(73, 25, 'sub_total', '商品總計', '6200.0000', 1),
(74, 25, 'shipping', '固定運費', '5.0000', 3),
(75, 25, 'total', '帳單總計', '6205.0000', 9),
(76, 26, 'sub_total', '商品總計', '0.0000', 1),
(77, 26, 'shipping', '固定運費', '5.0000', 3),
(78, 26, 'total', '帳單總計', '5.0000', 9),
(79, 28, 'sub_total', '商品總計', '2900.0000', 1),
(80, 28, 'shipping', '固定運費', '5.0000', 3),
(81, 28, 'total', '帳單總計', '2905.0000', 9),
(82, 32, 'sub_total', '商品總計', '0.0000', 1),
(83, 32, 'shipping', '固定運費', '5.0000', 3),
(84, 32, 'total', '帳單總計', '5.0000', 9),
(85, 34, 'sub_total', '商品總計', '2900.0000', 1),
(86, 34, 'shipping', '固定運費', '5.0000', 3),
(87, 34, 'total', '帳單總計', '2905.0000', 9),
(88, 35, 'sub_total', '商品總計', '2900.0000', 1),
(89, 35, 'shipping', '固定運費', '5.0000', 3),
(90, 35, 'total', '帳單總計', '2905.0000', 9),
(91, 37, 'sub_total', '商品總計', '0.0000', 1),
(92, 37, 'shipping', '固定運費', '5.0000', 3),
(93, 37, 'total', '帳單總計', '5.0000', 9),
(94, 38, 'sub_total', '商品總計', '0.0000', 1),
(95, 38, 'shipping', '固定運費', '5.0000', 3),
(96, 38, 'total', '帳單總計', '5.0000', 9),
(97, 39, 'sub_total', '商品總計', '2900.0000', 1),
(98, 39, 'shipping', '固定運費', '5.0000', 3),
(99, 39, 'total', '帳單總計', '2905.0000', 9),
(100, 40, 'sub_total', '商品總計', '2900.0000', 1),
(101, 40, 'shipping', '固定運費', '5.0000', 3),
(102, 40, 'total', '帳單總計', '2905.0000', 9),
(103, 41, 'sub_total', '商品總計', '2900.0000', 1),
(104, 41, 'shipping', '固定運費', '5.0000', 3),
(105, 41, 'total', '帳單總計', '2905.0000', 9),
(106, 42, 'sub_total', '商品總計', '2900.0000', 1),
(107, 42, 'shipping', '固定運費', '5.0000', 3),
(108, 42, 'total', '帳單總計', '2905.0000', 9),
(109, 43, 'sub_total', '商品總計', '2900.0000', 1),
(110, 43, 'shipping', '固定運費', '5.0000', 3),
(111, 43, 'total', '帳單總計', '2905.0000', 9),
(112, 44, 'sub_total', '商品總計', '2900.0000', 1),
(113, 44, 'shipping', '固定運費', '5.0000', 3),
(114, 44, 'total', '帳單總計', '2905.0000', 9),
(115, 45, 'sub_total', '商品總計', '2900.0000', 1),
(116, 45, 'shipping', '固定運費', '5.0000', 3),
(117, 45, 'total', '帳單總計', '2905.0000', 9),
(118, 46, 'sub_total', '商品總計', '0.0000', 1),
(119, 46, 'shipping', '固定運費', '5.0000', 3),
(120, 46, 'total', '帳單總計', '5.0000', 9),
(121, 47, 'sub_total', '商品總計', '0.0000', 1),
(122, 47, 'shipping', '固定運費', '5.0000', 3),
(123, 47, 'total', '帳單總計', '5.0000', 9),
(124, 48, 'sub_total', '商品總計', '0.0000', 1),
(125, 48, 'shipping', '固定運費', '5.0000', 3),
(126, 48, 'total', '帳單總計', '5.0000', 9),
(127, 49, 'sub_total', '商品總計', '0.0000', 1),
(128, 49, 'shipping', '固定運費', '5.0000', 3),
(129, 49, 'total', '帳單總計', '5.0000', 9),
(130, 50, 'sub_total', '商品總計', '0.0000', 1),
(131, 50, 'shipping', '固定運費', '5.0000', 3),
(132, 50, 'total', '帳單總計', '5.0000', 9),
(133, 51, 'sub_total', '商品總計', '0.0000', 1),
(134, 51, 'shipping', '固定運費', '5.0000', 3),
(135, 51, 'total', '帳單總計', '5.0000', 9),
(136, 52, 'sub_total', '商品總計', '0.0000', 1),
(137, 52, 'shipping', '固定運費', '5.0000', 3),
(138, 52, 'total', '帳單總計', '5.0000', 9),
(139, 54, 'sub_total', '商品總計', '0.0000', 1),
(140, 54, 'shipping', '固定運費', '5.0000', 3),
(141, 54, 'total', '帳單總計', '5.0000', 9),
(142, 60, 'sub_total', '商品總計', '0.0000', 1),
(143, 60, 'shipping', '固定運費', '5.0000', 3),
(144, 60, 'total', '帳單總計', '5.0000', 9),
(145, 61, 'sub_total', '商品總計', '0.0000', 1),
(146, 61, 'shipping', '固定運費', '5.0000', 3),
(147, 61, 'total', '帳單總計', '5.0000', 9),
(148, 62, 'sub_total', '商品總計', '2900.0000', 1),
(149, 62, 'shipping', '固定運費', '5.0000', 3),
(150, 62, 'total', '帳單總計', '2905.0000', 9),
(151, 63, 'sub_total', '商品總計', '0.0000', 1),
(152, 63, 'shipping', '固定運費', '5.0000', 3),
(153, 63, 'total', '帳單總計', '5.0000', 9),
(154, 64, 'sub_total', '商品總計', '0.0000', 1),
(155, 64, 'shipping', '固定運費', '5.0000', 3),
(156, 64, 'total', '帳單總計', '5.0000', 9),
(157, 65, 'sub_total', '商品總計', '0.0000', 1),
(158, 65, 'shipping', '固定運費', '5.0000', 3),
(159, 65, 'total', '帳單總計', '5.0000', 9),
(160, 66, 'sub_total', '商品總計', '0.0000', 1),
(161, 66, 'shipping', '固定運費', '5.0000', 3),
(162, 66, 'total', '帳單總計', '5.0000', 9),
(163, 67, 'sub_total', '商品總計', '2900.0000', 1),
(164, 67, 'shipping', '固定運費', '5.0000', 3),
(165, 67, 'total', '帳單總計', '2905.0000', 9),
(166, 68, 'sub_total', '商品總計', '2900.0000', 1),
(167, 68, 'shipping', '固定運費', '5.0000', 3),
(168, 68, 'total', '帳單總計', '2905.0000', 9),
(169, 69, 'sub_total', '商品總計', '2900.0000', 1),
(170, 69, 'shipping', '固定運費', '5.0000', 3),
(171, 69, 'total', '帳單總計', '2905.0000', 9),
(172, 70, 'sub_total', '商品總計', '0.0000', 1),
(173, 70, 'shipping', '固定運費', '5.0000', 3),
(174, 70, 'total', '帳單總計', '5.0000', 9),
(175, 71, 'sub_total', '商品總計', '0.0000', 1),
(176, 71, 'shipping', '固定運費', '5.0000', 3),
(177, 71, 'total', '帳單總計', '5.0000', 9),
(178, 72, 'sub_total', '商品總計', '0.0000', 1),
(179, 72, 'shipping', '固定運費', '5.0000', 3),
(180, 72, 'total', '帳單總計', '5.0000', 9),
(181, 73, 'sub_total', '商品總計', '0.0000', 1),
(182, 73, 'shipping', '固定運費', '5.0000', 3),
(183, 73, 'total', '帳單總計', '5.0000', 9),
(184, 74, 'sub_total', '商品總計', '0.0000', 1),
(185, 74, 'shipping', '固定運費', '5.0000', 3),
(186, 74, 'total', '帳單總計', '5.0000', 9),
(187, 75, 'sub_total', '商品總計', '0.0000', 1),
(188, 75, 'shipping', '固定運費', '5.0000', 3),
(189, 75, 'total', '帳單總計', '5.0000', 9),
(190, 76, 'sub_total', '商品總計', '0.0000', 1),
(191, 76, 'shipping', '固定運費', '5.0000', 3),
(192, 76, 'total', '帳單總計', '5.0000', 9),
(193, 77, 'sub_total', '商品總計', '0.0000', 1),
(194, 77, 'shipping', '固定運費', '5.0000', 3),
(195, 77, 'total', '帳單總計', '5.0000', 9),
(196, 78, 'sub_total', '商品總計', '0.0000', 1),
(197, 78, 'shipping', '固定運費', '5.0000', 3),
(198, 78, 'total', '帳單總計', '5.0000', 9),
(199, 79, 'sub_total', '商品總計', '0.0000', 1),
(200, 79, 'shipping', '固定運費', '5.0000', 3),
(201, 79, 'total', '帳單總計', '5.0000', 9),
(202, 82, 'sub_total', '商品總計', '0.0000', 1),
(203, 82, 'shipping', '固定運費', '5.0000', 3),
(204, 82, 'total', '帳單總計', '5.0000', 9),
(205, 83, 'sub_total', '商品總計', '2900.0000', 1),
(206, 83, 'shipping', '固定運費', '5.0000', 3),
(207, 83, 'total', '帳單總計', '2905.0000', 9),
(208, 84, 'sub_total', '商品總計', '2900.0000', 1),
(209, 84, 'shipping', '固定運費', '5.0000', 3),
(210, 84, 'total', '帳單總計', '2905.0000', 9),
(211, 85, 'sub_total', '商品總計', '0.0000', 1),
(212, 85, 'shipping', '固定運費', '5.0000', 3),
(213, 85, 'total', '帳單總計', '5.0000', 9),
(214, 86, 'sub_total', '商品總計', '0.0000', 1),
(215, 86, 'shipping', '固定運費', '5.0000', 3),
(216, 86, 'total', '帳單總計', '5.0000', 9),
(217, 87, 'sub_total', '商品總計', '0.0000', 1),
(218, 87, 'shipping', '固定運費', '5.0000', 3),
(219, 87, 'total', '帳單總計', '5.0000', 9),
(220, 88, 'sub_total', '商品總計', '0.0000', 1),
(221, 88, 'shipping', '固定運費', '5.0000', 3),
(222, 88, 'total', '帳單總計', '5.0000', 9),
(223, 89, 'sub_total', '商品總計', '0.0000', 1),
(224, 89, 'shipping', '固定運費', '5.0000', 3),
(225, 89, 'total', '帳單總計', '5.0000', 9),
(226, 90, 'sub_total', '商品總計', '0.0000', 1),
(227, 90, 'shipping', '固定運費', '5.0000', 3),
(228, 90, 'total', '帳單總計', '5.0000', 9),
(229, 91, 'sub_total', '商品總計', '0.0000', 1),
(230, 91, 'shipping', '固定運費', '5.0000', 3),
(231, 91, 'total', '帳單總計', '5.0000', 9),
(232, 92, 'sub_total', '商品總計', '2850.0000', 1),
(233, 92, 'shipping', '固定運費', '5.0000', 3),
(234, 92, 'total', '帳單總計', '2855.0000', 9),
(235, 93, 'sub_total', '商品總計', '0.0000', 1),
(236, 93, 'shipping', '固定運費', '5.0000', 3),
(237, 93, 'total', '帳單總計', '5.0000', 9),
(238, 94, 'sub_total', '商品總計', '0.0000', 1),
(239, 94, 'shipping', '固定運費', '5.0000', 3),
(240, 94, 'total', '帳單總計', '5.0000', 9),
(241, 95, 'sub_total', '商品總計', '0.0000', 1),
(242, 95, 'shipping', '固定運費', '5.0000', 3),
(243, 95, 'total', '帳單總計', '5.0000', 9),
(244, 96, 'sub_total', '商品總計', '2900.0000', 1),
(245, 96, 'shipping', '固定運費', '5.0000', 3),
(246, 96, 'total', '帳單總計', '2905.0000', 9),
(247, 97, 'sub_total', '商品總計', '0.0000', 1),
(248, 97, 'shipping', '固定運費', '5.0000', 3),
(249, 97, 'total', '帳單總計', '5.0000', 9),
(250, 98, 'sub_total', '商品總計', '0.0000', 1),
(251, 98, 'shipping', '固定運費', '5.0000', 3),
(252, 98, 'total', '帳單總計', '5.0000', 9),
(253, 99, 'sub_total', '商品總計', '0.0000', 1),
(254, 99, 'shipping', '固定運費', '5.0000', 3),
(255, 99, 'total', '帳單總計', '5.0000', 9),
(256, 100, 'sub_total', '商品總計', '0.0000', 1),
(257, 100, 'shipping', '固定運費', '5.0000', 3),
(258, 100, 'total', '帳單總計', '5.0000', 9),
(259, 101, 'sub_total', '商品總計', '0.0000', 1),
(260, 101, 'shipping', '固定運費', '5.0000', 3),
(261, 101, 'total', '帳單總計', '5.0000', 9),
(262, 102, 'sub_total', '商品總計', '0.0000', 1),
(263, 102, 'shipping', '固定運費', '5.0000', 3),
(264, 102, 'total', '帳單總計', '5.0000', 9),
(265, 103, 'sub_total', '商品總計', '10550.0000', 1),
(266, 103, 'shipping', '固定運費', '5.0000', 3),
(267, 103, 'total', '帳單總計', '10555.0000', 9),
(268, 104, 'sub_total', '商品總計', '10800.0000', 1),
(269, 104, 'shipping', '固定運費', '5.0000', 3),
(270, 104, 'total', '帳單總計', '10805.0000', 9),
(271, 105, 'sub_total', '商品總計', '6650.0000', 1),
(272, 105, 'shipping', '固定運費', '5.0000', 3),
(273, 105, 'total', '帳單總計', '6655.0000', 9),
(274, 106, 'sub_total', '商品總計', '3500.0000', 1),
(275, 106, 'shipping', '固定運費', '5.0000', 3),
(276, 106, 'total', '帳單總計', '3505.0000', 9),
(277, 107, 'sub_total', '商品總計', '2850.0000', 1),
(278, 107, 'shipping', '固定運費', '5.0000', 3),
(279, 107, 'total', '帳單總計', '2855.0000', 9),
(280, 108, 'sub_total', '商品總計', '2400.0000', 1),
(281, 108, 'shipping', '固定運費', '5.0000', 3),
(282, 108, 'total', '帳單總計', '2405.0000', 9),
(283, 109, 'sub_total', '商品總計', '24691356.0000', 1),
(284, 109, 'shipping', '固定運費', '5.0000', 3),
(285, 109, 'total', '帳單總計', '24691361.0000', 9),
(286, 110, 'sub_total', '商品總計', '5800.0000', 1),
(287, 110, 'shipping', '固定運費', '5.0000', 3),
(288, 110, 'total', '帳單總計', '5805.0000', 9),
(289, 111, 'sub_total', '商品總計', '3400.0000', 1),
(290, 111, 'shipping', '固定運費', '5.0000', 3),
(291, 111, 'total', '帳單總計', '3405.0000', 9),
(292, 112, 'sub_total', '商品總計', '12345678.0000', 1),
(293, 112, 'shipping', '固定運費', '5.0000', 3),
(294, 112, 'total', '帳單總計', '12345683.0000', 9),
(295, 113, 'sub_total', '商品總計', '50.0000', 1),
(296, 113, 'shipping', '固定運費', '5.0000', 3),
(297, 113, 'total', '帳單總計', '55.0000', 9),
(298, 114, 'sub_total', '商品總計', '5950.0000', 1),
(299, 114, 'shipping', '固定運費', '0.0000', 3),
(300, 114, 'total', '帳單總計', '5950.0000', 9),
(301, 115, 'sub_total', '商品總計', '2940.0000', 1),
(302, 115, 'shipping', '固定運費', '0.0000', 3),
(303, 115, 'total', '帳單總計', '2940.0000', 9),
(304, 116, 'sub_total', '商品總計', '2750.0000', 1),
(305, 116, 'shipping', '固定運費', '0.0000', 3),
(306, 116, 'total', '帳單總計', '2750.0000', 9),
(307, 117, 'sub_total', '商品總計', '150.0000', 1),
(308, 117, 'shipping', '統一超商取貨', '80.0000', 3),
(309, 117, 'total', '帳單總計', '230.0000', 9),
(310, 118, 'sub_total', '商品總計', '2750.0000', 1),
(311, 118, 'shipping', '固定運費', '0.0000', 3),
(312, 118, 'total', '帳單總計', '2750.0000', 9),
(313, 119, 'sub_total', '商品總計', '2800.0000', 1),
(314, 119, 'shipping', '固定運費', '0.0000', 3),
(315, 119, 'total', '帳單總計', '2800.0000', 9),
(316, 120, 'sub_total', '商品總計', '100.0000', 1),
(317, 120, 'shipping', '統一超商取貨', '80.0000', 3),
(318, 120, 'total', '帳單總計', '180.0000', 9),
(319, 121, 'sub_total', '商品總計', '0.0000', 1),
(320, 121, 'shipping', '固定運費', '0.0000', 3),
(321, 121, 'total', '帳單總計', '0.0000', 9),
(322, 122, 'sub_total', '商品總計', '0.0000', 1),
(323, 122, 'shipping', '固定運費', '0.0000', 3),
(324, 122, 'total', '帳單總計', '0.0000', 9),
(325, 123, 'sub_total', '商品總計', '2750.0000', 1),
(326, 123, 'shipping', '固定運費', '0.0000', 3),
(327, 123, 'total', '帳單總計', '2750.0000', 9),
(328, 124, 'sub_total', '商品總計', '2500.0000', 1),
(329, 124, 'shipping', '固定運費', '0.0000', 3),
(330, 124, 'total', '帳單總計', '2500.0000', 9),
(331, 125, 'sub_total', '商品總計', '9900.0000', 1),
(332, 125, 'shipping', '固定運費', '0.0000', 3),
(333, 125, 'total', '帳單總計', '9900.0000', 9);

-- --------------------------------------------------------

--
-- 資料表結構 `oc_order_voucher`
--

CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL,
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
  `amount` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_product`
--

CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `texture` varchar(255) NOT NULL,
  `deliveringTime` varchar(255) NOT NULL DEFAULT '1',
  `deliveringExtra` text NOT NULL,
  `earingType` varchar(255) NOT NULL,
  `extraDetail` varchar(255) NOT NULL,
  `extraDetail2` varchar(255) NOT NULL,
  `extraDetail3` varchar(255) NOT NULL,
  `extraDetail4` varchar(255) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `ringSizeStart` int(11) NOT NULL,
  `ringSizeEnd` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` int(15) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `braceWidth` decimal(15,1) NOT NULL DEFAULT '0.0',
  `braceLong` decimal(15,1) NOT NULL DEFAULT '0.0',
  `braceSeleLen` varchar(100) NOT NULL,
  `braceletDiameter` varchar(11) NOT NULL,
  `braceletDiameterMax` varchar(255) NOT NULL,
  `braceHeight` decimal(15,1) NOT NULL DEFAULT '0.0',
  `necklaceLength` varchar(255) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `braceNote` text NOT NULL,
  `weight` decimal(15,1) NOT NULL DEFAULT '0.0',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,1) NOT NULL DEFAULT '0.0',
  `width` decimal(15,1) NOT NULL DEFAULT '0.0',
  `height` decimal(15,1) NOT NULL DEFAULT '0.0',
  `secondaryNote` varchar(255) NOT NULL,
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `activity_title` varchar(255) NOT NULL,
  `activity_desc` text NOT NULL,
  `eng_name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `texture`, `deliveringTime`, `deliveringExtra`, `earingType`, `extraDetail`, `extraDetail2`, `extraDetail3`, `extraDetail4`, `quantity`, `stock_status_id`, `ringSizeStart`, `ringSizeEnd`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `braceWidth`, `braceLong`, `braceSeleLen`, `braceletDiameter`, `braceletDiameterMax`, `braceHeight`, `necklaceLength`, `date_available`, `braceNote`, `weight`, `weight_class_id`, `length`, `width`, `height`, `secondaryNote`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`, `activity_title`, `activity_desc`, `eng_name`) VALUES
(194, 'NL344', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL344/NL344_02_S.jpg', 0, 1, 2950, 0, 0, '0.0', '0.0', '', '', '', '0.0', '45', '2018-03-02', '                                                            ', '0.0', 1, '1.2', '0.6', '1.7', '', 1, 1, 1, 1, 1, 0, '2018-03-02 16:44:00', '2018-03-11 10:28:24', '', '', 'comma a necklace'),
(195, 'NL345', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL345/NL345_02_S.jpg', 0, 1, 3600, 0, 0, '0.0', '0.0', '', '', '', '0.0', '45', '2018-03-02', '                                        ', '0.0', 1, '2.0', '0.2', '2.0', '', 1, 1, 1, 1, 1, 1, '2018-03-02 16:49:28', '2018-03-07 16:31:45', '', '', 'yearning necklace'),
(180, 'RG309', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 6, 9, 'catalog/Ring(RG)/RG309/RG309_mix.gif', 0, 1, 4750, 0, 0, '0.0', '0.0', '', '', '', '0.0', '', '2018-03-02', '                                                            ', '0.0', 1, '0.0', '0.0', '0.0', '', 1, 1, 1, 1, 1, 0, '2018-03-02 11:28:18', '2018-03-18 14:39:09', '', '', 'chasing ice ring'),
(181, 'NL334', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL334/NL334_01_S.jpg', 0, 1, 4000, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-02', '                                        ', '0.0', 1, '0.9', '0.9', '4.0', '', 1, 1, 1, 1, 1, 1, '2018-03-02 15:24:05', '2018-03-07 16:29:27', '', '', 'chandelier necklace'),
(182, 'NL335', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '本產品可選擇45cm 925純銀項鍊或45cm真皮皮繩，購買時請註明，謝謝！', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL335/NL335_03_S.jpg', 0, 1, 5550, 0, 0, '0.0', '0.0', '', '', '', '0.0', '45', '2018-03-02', '                                                            ', '0.0', 1, '2.8', '0.7', '3.9', '', 1, 1, 1, 1, 1, 0, '2018-03-02 15:33:12', '2018-03-07 16:29:40', '', '', 'shield necklace'),
(183, 'BL312', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/BL312/BL312_mix.gif', 0, 1, 2350, 0, 0, '0.0', '0.0', '16', '', '', '0.0', '', '2018-03-02', '                                                                                ', '0.0', 1, '0.8', '0.2', '1.7', '', 1, 1, 1, 1, 1, 0, '2018-03-02 15:38:36', '2018-03-18 12:45:57', '', '', 'eye bracelet'),
(184, 'NL336', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL336/NL336_mix.gif', 0, 1, 3800, 0, 0, '0.0', '0.0', '', '', '', '0.0', '45', '2018-03-02', '                                                                                                                        ', '0.0', 1, '1.7', '0.4', '3.0', '', 1, 1, 1, 1, 1, 0, '2018-03-02 15:42:12', '2018-03-18 13:44:18', '', '', 'finger print necklace'),
(185, 'NL337', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL337/NL337_01_S.jpg', 0, 1, 6050, 0, 0, '0.0', '0.0', '', '', '', '0.0', '60', '2018-03-02', '                                        ', '0.0', 1, '3.6', '0.3', '3.9', '', 1, 1, 1, 1, 1, 0, '2018-03-02 15:52:55', '2018-03-07 16:30:08', '', '', 'shell necklace'),
(186, 'NL338', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL338/NL338_04_S.jpg', 0, 1, 3300, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-02', '                                                                                ', '0.0', 1, '1.8', '0.5', '1.1', '', 1, 1, 1, 1, 1, 2, '2018-03-02 15:59:15', '2018-03-11 16:13:46', '', '', 'V necklace'),
(187, 'BL313', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/BL313/BL313_mix.gif', 0, 1, 2900, 0, 0, '0.0', '0.0', '16', '', '', '0.0', '', '2018-03-02', '                                                                                                    ', '0.0', 1, '2.4', '0.1', '0.6', '', 1, 1, 1, 1, 1, 0, '2018-03-02 16:04:07', '2018-03-18 12:46:51', '', '', 'train bracelet'),
(188, 'NL339', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL339/NL339_03_S.jpg', 0, 1, 2200, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-02', '                                                            ', '0.0', 1, '0.8', '0.2', '1.7', '', 1, 1, 1, 1, 1, 0, '2018-03-02 16:09:58', '2018-03-11 10:25:01', '', '', 'eye necklace'),
(189, 'NL340', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL340/NL340_mix.gif', 0, 1, 4600, 0, 0, '0.0', '0.0', '', '', '', '0.0', '60', '2018-03-02', '                                                                                ', '0.0', 1, '2.3', '0.5', '2.1', '', 1, 1, 1, 1, 1, 1, '2018-03-02 16:16:44', '2018-03-18 13:45:11', '', '', 'circle necklace'),
(190, 'BL314', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/BL314/BL314_01_S.jpg', 0, 1, 4300, 0, 0, '0.0', '0.0', '16', '', '', '0.0', '', '2018-03-02', '                                                            ', '0.0', 1, '2.0', '0.2', '2.0', '', 1, 1, 1, 1, 1, 0, '2018-03-02 16:21:54', '2018-03-11 10:26:11', '', '', 'yearning bracelet'),
(191, 'NL342', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL342/NL342_02_S.jpg', 0, 1, 2750, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-02', '                                                            ', '0.0', 1, '1.9', '0.4', '2.9', '', 1, 1, 1, 1, 1, 0, '2018-03-02 16:26:17', '2018-03-11 10:26:47', '', '', 'balloon necklace'),
(192, 'BL315', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/BL315/BL315_01_S.jpg', 0, 1, 3400, 0, 0, '0.0', '0.0', '16', '', '', '0.0', '', '2018-03-02', '                                                            ', '0.0', 1, '1.8', '0.5', '1.1', '', 1, 1, 1, 1, 1, 1, '2018-03-02 16:33:13', '2018-03-11 10:27:21', '', '', 'V bracelet'),
(193, 'NL343', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL343/NL343_02_S.jpg', 0, 1, 2850, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-02', '                                                            ', '0.0', 1, '2.4', '0.1', '0.6', '', 1, 1, 1, 1, 1, 1, '2018-03-02 16:38:33', '2018-03-11 16:15:08', '', '', 'train necklace'),
(179, 'NL333', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL333/NL333_mix.gif', 0, 1, 4500, 0, 0, '0.0', '0.0', '', '', '', '0.0', '50', '2018-03-02', '                                                            ', '0.0', 1, '1.1', '0.5', '4.6', '', 1, 1, 1, 1, 1, 1, '2018-03-02 11:23:42', '2018-03-18 13:43:30', '', '', 'feather necklace'),
(132, 'RG301', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 5, 12, 'catalog/Ring(RG)/RG301/RG301_mix.gif', 0, 1, 4950, 0, 0, '0.0', '0.0', '', '', '', '0.0', '', '2018-02-27', '                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ', '0.0', 1, '0.0', '0.0', '0.0', '', 1, 1, 1, 1, 1, 27, '2018-02-27 21:48:31', '2018-03-18 14:34:04', '', '', 'matches ring'),
(133, 'RG302', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 4, 12, 'catalog/Ring(RG)/RG302/RG302_02_S.jpg', 0, 1, 3400, 0, 0, '0.0', '0.0', '', '', '', '0.0', '', '2018-02-27', '                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ', '0.0', 1, '0.0', '0.0', '0.0', '', 1, 1, 1, 1, 1, 40, '2018-02-27 22:10:35', '2018-03-11 09:47:40', '', '', 'snake eins ring'),
(134, 'RG303', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 6, 10, 'catalog/Ring(RG)/RG303/RG303_02_S.jpg', 0, 1, 3000, 0, 0, '0.0', '0.0', '', '', '', '0.0', '', '2018-02-28', '                                                                                                                                                                                                                                                ', '0.0', 1, '0.0', '0.0', '0.0', '', 1, 1, 1, 1, 1, 18, '2018-02-28 12:53:16', '2018-03-11 09:48:02', '', '', 'snake zwei ring'),
(135, 'RG304', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 4, 12, 'catalog/Ring(RG)/RG304/RG304_mix.gif', 0, 1, 4700, 0, 0, '0.0', '0.0', '', '', '', '0.0', '', '2018-02-28', '                                                                                                                                                                                                                                                                                        ', '0.0', 1, '0.0', '0.0', '0.0', '', 1, 1, 1, 1, 1, 15, '2018-02-28 13:37:02', '2018-03-18 14:34:55', '', '', 'snake drei ring'),
(137, 'NL301', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL301/NL301_06_S.jpg', 0, 1, 3100, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-02-28', '                                                                                                                                            ', '0.0', 1, '1.3', '0.5', '0.8', '', 1, 1, 1, 1, 1, 7, '2018-02-28 13:56:21', '2018-03-11 16:06:45', '', '', 'bean heart necklace'),
(138, 'NL302', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL302/NL302_mix.gif', 0, 1, 5900, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-02-28', '                                                                                                                                                                ', '0.0', 1, '1.3', '1.3', '2.3', '', 1, 1, 1, 1, 1, 5, '2018-02-28 14:13:36', '2018-03-18 13:32:17', '', '', 'honeycomb necklace'),
(139, 'NL304', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL304/NL304_02_S.jpg', 0, 1, 2100, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-02-28', '                                                                                                                                                                                    ', '0.0', 1, '0.8', '0.8', '1.4', '', 1, 1, 1, 1, 1, 4, '2018-02-28 14:20:27', '2018-03-11 16:07:15', '', '', 'comma necklace'),
(140, 'BB301', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/BABY(BB)/BB301/BB301_03_S.jpg', 0, 1, 2300, 0, 0, '0.0', '0.0', '12', '', '', '0.0', '', '2018-02-28', '                                                                                                                                                                                                        ', '0.0', 1, '1.5', '0.3', '0.9', '', 1, 1, 1, 1, 1, 19, '2018-02-28 14:35:45', '2018-03-18 21:10:59', '', '', 'bb laughing heart bracelet'),
(141, 'BB302', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/BABY(BB)/BB302/BB302_mix.gif', 0, 1, 2800, 0, 0, '0.0', '0.0', '12', '', '', '0.0', '', '2018-02-28', '                                                                                                                                                                                    ', '0.0', 1, '1.5', '0.3', '0.9', '', 1, 1, 1, 1, 1, 7, '2018-02-28 14:46:54', '2018-03-18 21:12:07', '', '', 'bb seed of hope bracelet'),
(142, 'BB303', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/BABY(BB)/BB303/BB303_mix.gif', 0, 1, 2800, 0, 0, '0.0', '0.0', '12', '', '', '0.0', '', '2018-02-28', '                                                                                                                                                                                                                                                ', '0.0', 1, '1.7', '0.3', '0.9', '', 1, 1, 1, 1, 1, 8, '2018-02-28 14:51:57', '2018-03-18 21:13:08', '', '', 'bb wealthy mountain bracelet'),
(143, 'BB304', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/BABY(BB)/BB304/BB304_01_S.jpg', 0, 1, 2900, 0, 0, '0.0', '0.0', '12', '', '', '0.0', '', '2018-02-28', '                                                                                                                                                                ', '0.0', 1, '1.8', '0.3', '1.2', '', 1, 1, 1, 1, 1, 6, '2018-02-28 15:01:10', '2018-03-18 21:13:54', '', '', 'bb brezel bracelet'),
(144, 'BB305', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/BABY(BB)/BB305/BB305_02_S.jpg', 0, 1, 3200, 0, 0, '0.0', '0.0', '12', '', '', '0.0', '', '2018-02-28', '                                                                                                                                                                ', '0.0', 1, '1.4', '0.4', '2.2', '', 1, 1, 1, 1, 1, 6, '2018-02-28 15:24:00', '2018-03-18 21:14:37', '', '', 'bb infinity snake bracelet'),
(145, 'NL308', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL308/NL308_02_S.jpg', 0, 1, 3400, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-02-28', '                                                                                                                        ', '0.0', 1, '1.8', '0.3', '1.2', '', 1, 1, 1, 1, 1, 2, '2018-02-28 15:32:25', '2018-03-11 09:54:43', '', '', 'brezel necklace'),
(155, 'NL311', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL311/NL311_mix.gif', 0, 1, 3200, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-01', '                                                                                                                                                                ', '0.0', 1, '1.4', '0.4', '1.3', '', 1, 1, 1, 1, 1, 2, '2018-03-01 21:35:07', '2018-03-18 13:34:10', '', '', 'star fruit necklace'),
(147, 'BL302', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/BL302/BL302_03_S.jpg', 0, 1, 2600, 0, 0, '0.0', '0.0', '16', '', '', '0.0', '', '2018-02-28', '                                                                                                                                                                ', '0.0', 1, '1.5', '0.3', '0.9', '', 1, 1, 1, 1, 1, 2, '2018-02-28 15:57:42', '2018-03-11 09:55:54', '', '', 'laughing heart bracelet'),
(148, 'BL303', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/BL303/BL303_mix.gif', 0, 1, 3100, 0, 0, '0.0', '0.0', '16', '', '', '0.0', '', '2018-02-28', '                                                                                                                        ', '0.0', 1, '1.5', '0.3', '0.9', '', 1, 1, 1, 1, 1, 0, '2018-02-28 20:51:22', '2018-03-18 12:40:33', '', '', 'seed of hope bracelet'),
(149, 'BL304', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/BL304/BL304_mix.gif', 0, 1, 3100, 0, 0, '0.0', '0.0', '16', '', '', '0.0', '', '2018-02-28', '                                                                                                    ', '0.0', 1, '1.7', '0.3', '0.9', '', 1, 1, 1, 1, 1, 0, '2018-02-28 20:58:21', '2018-03-18 12:41:25', '', '', 'wealthy mountain bracelet'),
(150, 'BL305', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/BL305/BL305_mix.gif', 0, 1, 3200, 0, 0, '0.0', '0.0', '16', '', '', '0.0', '', '2018-02-28', '                                                                                                                        ', '0.0', 1, '1.8', '0.3', '1.2', '', 1, 1, 1, 1, 1, 0, '2018-02-28 21:11:52', '2018-03-18 12:42:21', '', '', 'brezel bracelet'),
(151, 'BL306', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/BL306/BL306_mix.gif', 0, 1, 3500, 0, 0, '0.0', '0.0', '16', '', '', '0.0', '', '2018-02-28', '                                                                                                                        ', '0.0', 1, '1.4', '0.4', '2.2', '', 1, 1, 1, 1, 1, 1, '2018-02-28 21:22:53', '2018-03-18 12:43:18', '', '', 'infinity snake bracelet'),
(152, 'NL309', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL309/NL309_02_S.jpg', 0, 1, 3000, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-02-28', '                                                                                                    ', '0.0', 1, '1.4', '0.4', '2.2', '', 1, 1, 1, 1, 1, 8, '2018-02-28 21:31:41', '2018-03-11 16:08:32', '', '', 'infinity snake necklace'),
(153, 'NL310', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL310/NL310_03_S.jpg', 0, 1, 3500, 0, 0, '0.0', '0.0', '', '', '', '0.0', '45', '2018-02-28', '                                                                                                    ', '0.0', 1, '1.5', '0.4', '1.5', '', 1, 1, 1, 1, 1, 17, '2018-02-28 21:48:43', '2018-03-11 10:00:22', '', '', 'donuts necklace'),
(213, 'BL401', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/BL401/BL401_mix.gif', 0, 1, 2550, 0, 0, '0.0', '0.0', '16', '', '', '0.0', '', '2018-03-03', '                                                            ', '0.0', 1, '1.3', '0.1', '1.6', '', 1, 1, 1, 1, 1, 0, '2018-03-03 22:23:40', '2018-03-18 12:47:51', '', '', 'lucky charm bracelet'),
(212, 'RG401', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 4, 10, 'catalog/Ring(RG)/RG401/RG401_03_S.jpg', 0, 1, 2600, 0, 0, '0.0', '0.0', '', '', '', '0.0', '', '2018-03-03', '                                        ', '0.0', 1, '0.0', '0.0', '0.0', '', 1, 1, 1, 1, 1, 3, '2018-03-03 22:15:23', '2018-03-07 16:49:41', '', '', 'typhoon eye ring'),
(156, 'BL308', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/BL308/BL308_mix.gif', 0, 1, 3700, 0, 0, '0.0', '0.0', '16', '', '', '0.0', '', '2018-03-01', '                                                                                ', '0.0', 1, '1.4', '0.4', '1.3', '', 1, 1, 1, 1, 1, 2, '2018-03-01 23:27:21', '2018-03-18 12:44:15', '', '', 'star fruit bracelet'),
(157, 'NL312', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL312/NL312_mix.gif', 0, 1, 3500, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-01', '                                                                                                    ', '0.0', 1, '1.8', '0.6', '2.6', '', 1, 1, 1, 1, 1, 0, '2018-03-01 23:33:01', '2018-03-18 13:35:07', '', '', 'cross eins necklace'),
(158, 'NL314', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL314/NL314_03_S.jpg', 0, 1, 3100, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-01', '                                                            ', '0.0', 1, '1.5', '0.5', '0.9', '', 1, 1, 1, 1, 1, 0, '2018-03-01 23:38:33', '2018-03-07 16:25:58', '', '', 'libra necklace'),
(159, 'BL309', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/BL309/BL309_01_S.jpg', 0, 1, 4100, 0, 0, '0.0', '0.0', '16', '', '', '0.0', '', '2018-03-01', '                                                            ', '0.0', 1, '1.5', '0.4', '1.5', '', 1, 1, 1, 1, 1, 1, '2018-03-01 23:44:43', '2018-03-11 10:06:36', '', '', 'donuts zwei bracelet'),
(160, 'RG305', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 6, 11, 'catalog/Ring(RG)/RG305/RG305_mix.gif', 0, 1, 3200, 0, 0, '0.0', '0.0', '', '', '', '0.0', '', '2018-03-01', '                                                                                                    ', '0.0', 1, '0.0', '0.0', '0.0', '', 1, 1, 1, 1, 1, 2, '2018-03-01 23:50:55', '2018-03-18 14:36:01', '', '', 'donuts ring'),
(161, 'NL316', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL316/NL316_mix.gif', 0, 1, 5350, 0, 0, '0.4', '1.5', '', '', '', '1.5', '60', '2018-03-02', '                                                            ', '0.0', 1, '0.0', '0.0', '0.0', '', 1, 1, 1, 1, 1, 1, '2018-03-02 09:00:51', '2018-03-18 13:36:04', '', '', 'donuts waterfall necklace'),
(162, 'NL317', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL317/NL317_mix.gif', 0, 1, 5300, 0, 0, '0.0', '0.0', '', '', '', '0.0', '50', '2018-03-02', '                                                                                                    ', '0.0', 1, '2.6', '0.6', '3.4', '', 1, 1, 1, 1, 1, 0, '2018-03-02 09:06:10', '2018-03-18 13:36:51', '', '', 'cross a necklace'),
(163, 'NL318', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL318/NL318_mix.gif', 0, 1, 4100, 0, 0, '0.0', '0.0', '', '', '', '0.0', '45', '2018-03-02', '                                                                                                    ', '0.0', 1, '2.0', '0.9', '2.9', '', 1, 1, 1, 1, 1, 6, '2018-03-02 09:15:21', '2018-03-18 13:38:22', '', '', 'cross b necklace'),
(164, 'NL320', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL320/NL320_04_S.jpg', 0, 1, 5400, 0, 0, '0.0', '0.0', '', '', '', '0.0', '50', '2018-03-02', '                                        ', '0.0', 1, '1.9', '0.6', '1.8', '', 1, 1, 1, 1, 1, 0, '2018-03-02 09:21:22', '2018-03-07 16:27:05', '', '', 'travel light necklace'),
(165, 'NL322', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL322/NL322_01_S.jpg', 0, 1, 5400, 0, 0, '0.0', '0.0', '', '', '', '0.0', '50', '2018-03-02', '                                                            ', '0.0', 1, '2.4', '0.8', '2.4', '', 1, 1, 1, 1, 1, 1, '2018-03-02 09:36:17', '2018-03-11 10:13:20', '', '', 'cross earth a necklace'),
(166, 'NL323', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL323/NL323_02_S.jpg', 0, 1, 4550, 0, 0, '0.0', '0.0', '', '', '', '0.0', '50', '2018-03-02', '                                        ', '0.0', 1, '2.4', '0.2', '2.4', '', 1, 1, 1, 1, 1, 0, '2018-03-02 09:42:14', '2018-03-07 16:27:38', '', '', 'cross earth b necklace'),
(167, 'NL324', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL324/NL324_mix.gif', 0, 1, 3150, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-02', '                                                                                                    ', '0.0', 1, '0.8', '0.5', '1.6', '', 1, 1, 1, 1, 1, 0, '2018-03-02 09:47:17', '2018-03-18 13:39:47', '', '', 'chasing ice necklace'),
(168, 'NL327', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL327/NL327_mix.gif', 0, 1, 3600, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-02', '                                                                                                    ', '0.0', 1, '2.7', '0.5', '1.1', '', 1, 1, 1, 1, 1, 1, '2018-03-02 09:55:49', '2018-03-18 13:40:52', '', '', 'smile swing necklace'),
(169, 'BL310', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/BL310/BL310_mix.gif', 0, 1, 3450, 0, 0, '0.0', '0.0', '16', '', '', '0.0', '', '2018-03-02', '                                                                                ', '0.0', 1, '0.8', '0.5', '1.6', '', 1, 1, 1, 1, 1, 0, '2018-03-02 10:00:48', '2018-03-18 12:45:09', '', '', 'chasing ice necklace'),
(170, 'NL328', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL328/NL328_01_S.jpg', 0, 1, 6200, 0, 0, '0.0', '0.0', '', '', '', '0.0', '45', '2018-03-02', '                                                            ', '0.0', 1, '2.5', '0.5', '3.5', '', 1, 1, 1, 1, 1, 1, '2018-03-02 10:07:26', '2018-03-07 16:28:24', '', '', 'blast necklace'),
(173, 'RG306', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 4, 13, 'catalog/Ring(RG)/RG306/RG306_mix.gif', 0, 1, 3900, 0, 0, '0.0', '0.0', '', '', '', '0.0', '', '2018-03-02', '                                                                                                                        ', '0.0', 1, '0.0', '0.0', '0.0', '', 1, 1, 1, 1, 1, 3, '2018-03-02 10:47:45', '2018-03-18 14:36:46', '', '', 'super ring'),
(172, 'NL329', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL329/NL329_mix.gif', 0, 1, 3600, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-02', '                                                            ', '0.0', 1, '1.8', '0.4', '1.9', '', 1, 1, 1, 1, 1, 0, '2018-03-02 10:14:16', '2018-03-18 13:41:36', '', '', 'say cheese necklace'),
(174, 'NL330', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL330/NL330_mix.gif', 0, 1, 4650, 0, 0, '0.0', '0.0', '', '', '', '0.0', '45', '2018-03-02', '                                                                                                                                            ', '0.0', 1, '3.3', '0.6', '2.0', '', 1, 1, 1, 1, 1, 2, '2018-03-02 10:55:21', '2018-03-18 13:42:25', '', '', 'paper plane necklace'),
(175, 'RG307', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 5, 13, 'catalog/Ring(RG)/RG307/RG307_mix.gif', 0, 1, 3450, 0, 0, '0.0', '0.0', '', '', '', '0.0', '', '2018-03-02', '                                                                                                                        ', '0.0', 1, '0.0', '0.0', '0.0', '', 1, 1, 1, 1, 1, 1, '2018-03-02 11:02:32', '2018-03-18 14:37:47', '', '', 'finger print ring'),
(176, 'BL311', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/BL311/BL311_01_S.jpg', 0, 1, 3500, 0, 0, '0.0', '0.0', '16', '', '', '0.0', '', '2018-03-02', '                                                                                ', '0.0', 1, '2.7', '0.5', '1.1', '', 1, 1, 1, 1, 1, 0, '2018-03-02 11:08:07', '2018-03-11 16:12:31', '', '', 'smile swing bracelet'),
(177, 'RG308', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 5, 9, 'catalog/Ring(RG)/RG308/RG308_mix.gif', 0, 1, 3350, 0, 0, '0.0', '0.0', '', '', '', '0.0', '', '2018-03-02', '                                                                                ', '0.0', 1, '0.0', '0.0', '0.0', '', 1, 1, 1, 1, 1, 0, '2018-03-02 11:14:10', '2018-03-18 14:38:28', '', '', 'knot ring'),
(178, 'NL332', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL332/NL332_01_S.jpg', 0, 1, 2800, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-02', '                                        ', '0.0', 1, '1.1', '0.5', '1.7', '', 1, 1, 1, 1, 1, 0, '2018-03-02 11:19:19', '2018-03-07 16:29:03', '', '', 'summer field necklace'),
(196, 'RG310', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 9, 14, 'catalog/Ring(RG)/RG310/RG310_01_S.jpg', 0, 1, 3700, 0, 0, '0.0', '0.0', '', '', '', '0.0', '', '2018-03-02', '                                        ', '0.0', 1, '0.0', '0.0', '0.0', '', 1, 1, 1, 1, 1, 0, '2018-03-02 20:55:48', '2018-03-07 16:48:41', '', '', 'eternal m ring'),
(197, 'RG311', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 5, 9, 'catalog/Ring(RG)/RG311/RG311_01_S.jpg', 0, 1, 3050, 0, 0, '0.0', '0.0', '', '', '', '0.0', '', '2018-03-02', '                                                                                ', '0.0', 1, '0.0', '0.0', '0.0', '', 1, 1, 1, 1, 1, 0, '2018-03-02 20:59:42', '2018-03-11 10:30:35', '', '', 'eternal f ring'),
(198, 'BB307', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/BABY(BB)/BB307/BB307_mix.gif', 0, 1, 2400, 0, 0, '0.0', '0.0', '12', '', '', '0.0', '', '2018-03-02', '                                                                                                    ', '0.0', 1, '2.4', '0.1', '0.6', '', 1, 1, 1, 1, 1, 4, '2018-03-02 21:08:06', '2018-03-18 21:15:41', '', '', 'bb train bracelet'),
(199, 'NL347', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL347/NL347_mix.gif', 0, 1, 3100, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-02', '                                                            ', '0.0', 1, '1.5', '0.4', '1.9', '', 1, 1, 1, 1, 1, 4, '2018-03-02 21:12:45', '2018-03-18 13:46:01', '', '', 'sailboat necklace'),
(200, 'NL348', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL348/NL348_02_S.jpg', 0, 1, 4550, 0, 0, '0.0', '0.0', '', '', '', '0.0', '45', '2018-03-02', '                                        ', '0.0', 1, '0.8', '0.8', '3.8', '', 1, 1, 1, 1, 1, 0, '2018-03-02 21:19:05', '2018-03-07 16:32:48', '', '', 'peapod necklace'),
(201, 'RG313', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 1, 18, 'catalog/Ring(RG)/RG313/RG313_mix.gif', 0, 1, 4600, 0, 0, '0.0', '0.0', '', '', '', '0.0', '', '2018-03-02', '                                                                                                    ', '0.0', 1, '0.0', '0.0', '0.0', '', 1, 1, 1, 1, 1, 0, '2018-03-02 21:31:21', '2018-03-18 14:40:06', '', '', 'firm m ring'),
(202, 'RG314', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 1, 18, 'catalog/Ring(RG)/RG314/RG314_mix.gif', 0, 1, 3000, 0, 0, '0.0', '0.0', '', '', '', '0.0', '', '2018-03-02', '                                                                                ', '0.0', 1, '0.0', '0.0', '0.0', '', 1, 1, 1, 1, 1, 0, '2018-03-02 21:38:23', '2018-03-18 14:41:02', '', '', 'firm f ring'),
(203, 'NL350', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL350/NL350_02_S.jpg', 0, 1, 4550, 0, 0, '0.0', '0.0', '', '', '', '0.0', '45', '2018-03-02', '                                        ', '0.0', 1, '2.5', '0.5', '1.6', '', 1, 1, 1, 1, 1, 2, '2018-03-02 21:46:10', '2018-03-07 16:33:03', '', '', 'V a necklace'),
(204, 'NL351', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL351/NL351_02_S.jpg', 0, 1, 3550, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-02', '                                        ', '0.0', 1, '4.0', '0.2', '1.7', '', 1, 1, 1, 1, 1, 1, '2018-03-02 21:49:47', '2018-03-07 16:33:17', '', '', 'plane necklace'),
(205, 'NL354', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL354/NL354_mix.gif', 0, 1, 2400, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-02', '                                                                                ', '0.0', 1, '1.3', '0.1', '1.6', '', 1, 1, 1, 1, 1, 1, '2018-03-02 21:56:02', '2018-03-18 13:46:52', '', '', 'lucky charm necklace'),
(206, 'JNL401', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/JNL401/JNL401_mix.gif', 0, 1, 3950, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-02', '                                                                                                    ', '0.0', 1, '1.1', '0.5', '1.5', '', 1, 1, 1, 1, 1, 0, '2018-03-02 22:02:39', '2018-03-18 13:48:25', '', '', 'dot necklace'),
(207, 'NL401', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL401/NL401_mix.gif', 0, 1, 2650, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-02', '                                                                                ', '0.0', 1, '2.0', '0.4', '1.9', '', 1, 1, 1, 1, 1, 13, '2018-03-02 22:07:03', '2018-03-18 13:50:34', '', '', 'seedling necklace'),
(208, 'NL402', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL402/NL402_04_S.jpg', 0, 1, 3400, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-02', '                                                            ', '0.0', 1, '2.0', '0.8', '2.9', '', 1, 1, 1, 1, 1, 1, '2018-03-02 22:19:17', '2018-03-11 10:37:41', '', '', 'antlers f necklace'),
(209, 'NL403', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL403/NL403_01_S.jpg', 0, 1, 3900, 0, 0, '0.0', '0.0', '', '', '', '0.0', '45', '2018-03-02', '                                        ', '0.0', 1, '2.8', '0.8', '3.6', '', 1, 1, 1, 1, 1, 11, '2018-03-02 22:25:33', '2018-03-07 16:34:28', '', '', 'antlers m necklace'),
(210, 'JER401', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '耳針式耳環', '', '', '', '', 1, 7, 0, 0, 'catalog/Earring(ER)/JER401/JER401_mix.gif', 0, 1, 3400, 0, 0, '0.0', '0.0', '', '', '', '0.0', '', '2018-03-02', '                                                                                ', '0.0', 1, '1.0', '0.5', '1.2', '', 1, 1, 1, 1, 1, 8, '2018-03-02 22:29:57', '2018-03-18 20:48:36', '', '', 'dot earrings'),
(211, 'NL404', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL404/NL404_01_S.jpg', 0, 1, 2100, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-02', '                                                            ', '0.0', 1, '1.2', '0.1', '1.6', '', 1, 1, 1, 1, 1, 5, '2018-03-02 22:37:06', '2018-03-11 10:39:20', '', '', 'brave necklace'),
(214, 'NL405', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL405/NL405_mix.gif', 0, 1, 3300, 0, 0, '0.0', '0.0', '', '', '', '0.0', '45', '2018-03-03', '                                                                                ', '0.0', 1, '1.6', '0.3', '1.7', '', 1, 1, 1, 1, 1, 6, '2018-03-03 22:31:05', '2018-03-18 13:51:29', '', '', 'horseshoe m necklace'),
(215, 'ER401', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '耳針式耳環', '', '', '', '', 1, 7, 0, 0, 'catalog/Earring(ER)/ER401/ER401_mix.gif', 0, 1, 1950, 0, 0, '0.0', '0.0', '', '', '', '0.0', '', '2018-03-04', '                                                            ', '0.0', 1, '0.7', '0.4', '0.7', '', 1, 1, 1, 1, 1, 3, '2018-03-04 08:44:28', '2018-03-18 20:45:04', '', '', '+x earrings'),
(216, 'NL406', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL406/NL406_01_S.jpg', 0, 1, 3100, 0, 0, '0.2', '1.5', '', '', '', '1.5', '40', '2018-03-04', '尺寸為單一圓圈大小，本商品含有兩個圓圈...                                        ', '0.0', 1, '0.0', '0.0', '0.0', '', 1, 1, 1, 1, 1, 3, '2018-03-04 08:55:03', '2018-03-11 10:51:56', '', '', 'complete necklace'),
(217, 'BL402', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/BL402/BL402_01_S.jpg', 0, 1, 2250, 0, 0, '0.0', '0.0', '16', '', '', '0.0', '', '2018-03-04', '                    ', '0.0', 1, '1.2', '0.1', '1.6', '', 1, 1, 1, 1, 1, 1, '2018-03-04 09:02:20', '2018-03-07 16:09:50', '', '', 'brave bracelet'),
(218, 'ER402', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '耳針式耳環', '', '', '', '', 1, 7, 0, 0, 'catalog/Earring(ER)/ER402/ER402_03_S.jpg', 0, 1, 2400, 0, 0, '0.0', '0.0', '', '', '', '0.0', '', '2018-03-04', '                                        ', '0.0', 1, '0.8', '0.2', '1.7', '', 1, 1, 1, 1, 1, 2, '2018-03-04 09:06:33', '2018-03-07 16:19:48', '', '', 'eye earrings'),
(219, 'JBL401', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/JBL401/JBL401_mix.gif', 0, 1, 3400, 0, 0, '0.0', '0.0', '16', '', '', '0.0', '', '2018-03-04', '                                                            ', '0.0', 1, '1.0', '0.5', '1.2', '', 1, 1, 1, 1, 1, 1, '2018-03-04 09:15:00', '2018-03-18 12:52:15', '', '', 'dot bracelet'),
(220, 'ER403', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '耳針式耳環', '', '', '', '', 1, 7, 0, 0, 'catalog/Earring(ER)/ER403/ER403_mix.gif', 0, 1, 1850, 0, 0, '0.0', '0.0', '', '', '', '0.0', '', '2018-03-04', '                                                            ', '0.0', 1, '0.6', '0.3', '0.9', '', 1, 1, 1, 1, 1, 3, '2018-03-04 09:18:44', '2018-03-18 20:46:30', '', '', 'comma earrings'),
(221, 'NL407', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL407/NL407_mix.gif', 0, 1, 3050, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-04', '                                                            ', '0.0', 1, '2.2', '0.3', '2.0', '', 1, 1, 1, 1, 1, 1, '2018-03-04 09:26:49', '2018-03-18 13:52:19', '', '', 'slow living necklace'),
(222, 'NL408', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL408/NL408_mix.gif', 0, 1, 5550, 0, 0, '0.0', '0.0', '', '', '', '0.0', '90', '2018-03-04', '                                        ', '0.0', 1, '4.0', '0.3', '3.3', '', 1, 1, 1, 1, 1, 10, '2018-03-04 09:53:20', '2018-03-18 13:53:10', '', '', 'slow living G necklace'),
(223, 'BL403', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/BL403/BL403_01_S.jpg', 0, 1, 3600, 0, 0, '0.2', '1.5', '16', '', '', '1.5', '', '2018-03-04', '尺寸標示為單一圓圈的大小，本商品內含2個圓圈...                    ', '0.0', 1, '0.0', '0.0', '0.0', '', 1, 1, 1, 1, 1, 2, '2018-03-04 10:04:41', '2018-03-07 16:10:07', '', '', 'complete bracelet'),
(224, 'BL404', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/BL404/BL404_mix.gif', 0, 1, 2600, 0, 0, '0.0', '0.0', '16', '', '', '0.0', '', '2018-03-04', '                                                                                ', '0.0', 1, '1.0', '0.2', '1.4', '', 1, 1, 1, 1, 1, 1, '2018-03-04 10:10:45', '2018-03-18 12:48:39', '', '', 'snowflake bracelet'),
(227, 'ER405', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '耳針式耳環', '', '', '', '', 1, 7, 0, 0, 'catalog/Earring(ER)/ER405/ER405_mix.gif', 0, 1, 1800, 0, 0, '0.0', '0.0', '', '', '', '0.0', '', '2018-03-04', '                                                            ', '0.0', 1, '1.0', '0.2', '1.0', '', 1, 1, 1, 1, 1, 3, '2018-03-04 10:45:18', '2018-03-18 20:45:45', '', '', 'Mr. big earrings'),
(226, 'JRG401', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 3, 10, 'catalog/Ring(RG)/JRG401/JRG401_mix.gif', 0, 1, 4250, 0, 0, '0.0', '0.0', '', '', '', '0.0', '', '2018-03-04', '                                                                                                    ', '0.0', 1, '0.0', '0.0', '0.0', '', 1, 1, 1, 1, 1, 5, '2018-03-04 10:29:29', '2018-03-18 14:42:12', '', '', 'dot ring'),
(228, 'NL410', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL410/NL410_02_S.jpg', 0, 1, 2250, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-04', '                                        ', '0.0', 1, '2.3', '0.3', '1.0', '', 1, 1, 1, 1, 1, 1, '2018-03-04 10:50:54', '2018-03-07 16:35:47', '', '', 'cloud necklace'),
(229, 'JBL402', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/JBL402/JBL402_mix.gif', 0, 1, 4250, 0, 0, '0.0', '0.0', '16', '', '', '0.0', '', '2018-03-04', '                                                            ', '0.0', 1, '1.1', '0.5', '1.9', '', 1, 1, 1, 1, 1, 2, '2018-03-04 10:56:20', '2018-03-18 12:52:57', '', '', 'dot a bracelet'),
(230, 'RG402', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 5, 10, 'catalog/Ring(RG)/RG402/RG402_mix.gif', 0, 1, 3200, 0, 0, '0.0', '0.0', '', '', '', '0.0', '', '2018-03-04', '                                                                                ', '0.0', 1, '0.0', '0.0', '0.0', '', 1, 1, 1, 1, 1, 1, '2018-03-04 11:01:08', '2018-03-18 14:44:08', '', '', 'holding hands ring'),
(231, 'ER406', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '耳針式耳環', '', '', '', '', 1, 7, 0, 0, 'catalog/Earring(ER)/ER406/ER406_02_S.jpg', 0, 1, 2600, 0, 0, '0.0', '0.0', '', '', '', '0.0', '', '2018-03-04', '                                        ', '0.0', 1, '1.0', '0.2', '2.0', '', 1, 1, 1, 1, 1, 2, '2018-03-04 11:06:56', '2018-03-07 16:20:36', '', '', 'finger print earrings'),
(232, 'NL411', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL411/NL411_mix.gif', 0, 1, 2300, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-04', '                                                            ', '0.0', 1, '2.4', '0.2', '1.3', '', 1, 1, 1, 1, 1, 2, '2018-03-04 11:13:06', '2018-03-18 13:53:52', '', '', 'xxx necklace'),
(234, 'JNL402', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '本商品有許多穿戴方式，請注意附圖的照片圖示。', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/JNL402/JNL402_mix.gif', 0, 1, 5650, 0, 0, '0.5', '1.1', '', '', '', '1.9', '90', '2018-03-04', '&lt;div&gt;1. 尺寸標示為單一“點”的尺寸，本商品含有兩個“點”飾品...&lt;/div&gt;&lt;div&gt;2. 本產品使用之寶石為黑色尖晶石&lt;/div&gt;                                                                                                    ', '0.0', 1, '0.0', '0.0', '0.0', '', 1, 1, 1, 1, 1, 3, '2018-03-04 11:57:04', '2018-03-18 13:49:20', '', '', 'dots necklace'),
(235, 'RG403', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '若有其他尺寸需求請先告知...', '', '', '', 1, 7, 3, 6, 'catalog/Ring(RG)/RG403/RG403_04_S.jpg', 0, 1, 3750, 0, 0, '0.0', '0.0', '', '', '', '0.0', '', '2018-03-04', '                    ', '0.0', 1, '0.0', '0.0', '0.0', '', 1, 1, 1, 1, 1, 2, '2018-03-04 12:53:37', '2018-03-07 16:50:08', '', '', 'mirror ring'),
(236, 'NL412', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL412/NL412_mix.gif', 0, 1, 2450, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-04', '                                                                                ', '0.0', 1, '1.0', '0.2', '1.4', '', 1, 1, 1, 1, 1, 0, '2018-03-04 13:03:27', '2018-03-18 13:54:35', '', '', 'snowflake necklace'),
(237, 'BL405', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/BL405/BL405_mix.gif', 0, 1, 3150, 0, 0, '0.0', '0.0', '16', '', '', '0.0', '', '2018-03-04', '                                                            ', '0.0', 1, '1.7', '0.3', '1.1', '', 1, 1, 1, 1, 1, 1, '2018-03-04 13:08:51', '2018-03-18 12:49:27', '', '', 'good lock bracelet'),
(238, 'RG404', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '若有其他尺寸需求，請告知...', '', '', '', 1, 7, 3, 10, 'catalog/Ring(RG)/RG404/RG404_mix.gif', 0, 1, 3400, 0, 0, '0.0', '0.0', '', '', '', '0.0', '', '2018-03-04', '                                                            ', '0.0', 1, '0.0', '0.0', '0.0', '', 1, 1, 1, 1, 1, 0, '2018-03-04 13:14:08', '2018-03-18 14:45:02', '', '', 'thumbtack ring'),
(239, 'NL413', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL413/NL413_mix.gif', 0, 1, 2200, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-04', '                                                                                ', '0.0', 1, '0.8', '0.2', '1.0', '', 1, 1, 1, 1, 1, 1, '2018-03-04 13:18:28', '2018-03-18 13:55:25', '', '', 'horseshoe f necklace'),
(240, 'NL414', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL414/NL414_02_S.jpg', 0, 1, 5000, 0, 0, '0.0', '0.0', '', '', '', '0.0', '45', '2018-03-04', '                                        ', '0.0', 1, '4.2', '0.4', '2.3', '', 1, 1, 1, 1, 1, 1, '2018-03-04 13:23:38', '2018-03-07 16:36:36', '', '', 'rail necklace'),
(241, 'ER407', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '耳針式耳環', '', '', '', '', 1, 7, 0, 0, 'catalog/Earring(ER)/ER407/ER407_03_S.jpg', 0, 1, 3700, 0, 0, '0.3', '1.0', '', '', '', '1.0', '', '2018-03-04', '尺寸標示為單一物件尺寸，本商品共含三個物件，可以每日按照服裝搭配自行挑選配戴。                                        ', '0.0', 1, '0.0', '0.0', '0.0', '', 1, 1, 1, 1, 1, 4, '2018-03-04 13:30:36', '2018-03-07 16:20:48', '', '', 'leaves earrings'),
(242, 'JRG402', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '本商品之寶石為黑色尖晶石', '', '', '', 1, 7, 3, 10, 'catalog/Ring(RG)/JRG402/JRG402_mix.gif', 0, 1, 4300, 0, 0, '0.0', '0.0', '', '', '', '0.0', '', '2018-03-04', '                                        ', '0.0', 1, '0.0', '0.0', '0.0', '', 1, 1, 1, 1, 1, 3, '2018-03-04 13:36:14', '2018-03-18 14:43:08', '', '', 'dot a ring'),
(243, 'NL415', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL415/NL415_mix.gif', 0, 1, 2600, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-04', '                                        ', '0.0', 1, '1.7', '0.3', '1.1', '', 1, 1, 1, 1, 1, 1, '2018-03-04 13:41:46', '2018-03-18 13:56:09', '', '', 'good lock necklace'),
(244, 'RG405', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '若需要其他尺寸，請告知。', '', '', '', 1, 7, 10, 13, 'catalog/Ring(RG)/RG405/RG405_03_S.jpg', 0, 1, 4850, 0, 0, '0.0', '0.0', '', '', '', '0.0', '', '2018-03-04', '                                        ', '0.0', 1, '0.0', '0.0', '0.0', '', 1, 1, 1, 1, 1, 1, '2018-03-04 13:47:41', '2018-03-11 11:10:55', '', '', 'ridge ring'),
(245, 'RG406', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '若需要其他尺寸，請告知。', '', '', '', 1, 7, 9, 12, 'catalog/Ring(RG)/RG406/RG406_mix.gif', 0, 1, 3700, 0, 0, '0.0', '0.0', '', '', '', '0.0', '', '2018-03-04', '                                                            ', '0.0', 1, '0.0', '0.0', '0.0', '', 1, 1, 1, 1, 1, 1, '2018-03-04 13:53:43', '2018-03-18 14:45:41', '', '', 'ridge m ring'),
(246, 'RG407', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '若有需其他尺寸，請告知。', '', '', '', 1, 7, 6, 10, 'catalog/Ring(RG)/RG407/RG407_mix.gif', 0, 1, 2900, 0, 0, '0.0', '0.0', '', '', '', '0.0', '', '2018-03-04', '                                        ', '0.0', 1, '0.0', '0.0', '0.0', '', 1, 1, 1, 1, 1, 0, '2018-03-04 13:58:36', '2018-03-18 14:46:45', '', '', 'ridge f ring'),
(248, 'ER408', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '耳針式耳環', '', '', '', '', 1, 7, 0, 0, 'catalog/Earring(ER)/ER408/ER408_mix.gif', 0, 1, 2600, 0, 0, '0.0', '0.0', '', '', '', '0.0', '', '2018-03-04', '                                                            ', '0.0', 1, '1.0', '0.2', '1.4', '', 1, 1, 1, 1, 1, 3, '2018-03-04 14:18:36', '2018-03-18 20:47:30', '', '', 'snowflake earrings'),
(253, 'ER409', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Earring(ER)/ER409/ER409_01_S.jpg', 0, 1, 2150, 0, 0, '0.0', '0.0', '', '', '', '0.0', '', '2018-03-04', '                    ', '0.0', 1, '1.3', '1.3', '0.1', '', 1, 1, 1, 1, 1, 3, '2018-03-04 15:00:47', '2018-03-07 16:21:12', '', '', 'thumbtack earrings'),
(251, 'NL417', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL417/NL417_mix.gif', 0, 1, 2800, 0, 0, '0.0', '0.0', '', '', '', '0.0', '45', '2018-03-04', '                                        ', '0.0', 1, '4.1', '0.5', '2.3', '', 1, 1, 1, 1, 1, 1, '2018-03-04 14:47:58', '2018-03-18 13:57:00', '', '', 'heartbeat necklace'),
(252, 'RG408', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 3, 10, 'catalog/Ring(RG)/RG408/RG408_mix.gif', 0, 1, 3600, 0, 0, '0.0', '0.0', '', '', '', '0.0', '', '2018-03-04', '                                                            ', '0.0', 1, '0.0', '0.0', '0.0', '', 1, 1, 1, 1, 1, 2, '2018-03-04 14:54:23', '2018-03-18 14:47:29', '', '', 'circle ring');
INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `texture`, `deliveringTime`, `deliveringExtra`, `earingType`, `extraDetail`, `extraDetail2`, `extraDetail3`, `extraDetail4`, `quantity`, `stock_status_id`, `ringSizeStart`, `ringSizeEnd`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `braceWidth`, `braceLong`, `braceSeleLen`, `braceletDiameter`, `braceletDiameterMax`, `braceHeight`, `necklaceLength`, `date_available`, `braceNote`, `weight`, `weight_class_id`, `length`, `width`, `height`, `secondaryNote`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`, `activity_title`, `activity_desc`, `eng_name`) VALUES
(254, 'RG409', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '若有需其他尺寸，請告知。', '', '', '', 1, 7, 7, 12, 'catalog/Ring(RG)/RG409/RG409_03_S.jpg', 0, 1, 3350, 0, 0, '0.0', '0.0', '', '', '', '0.0', '', '2018-03-04', '                    ', '0.0', 1, '0.0', '0.0', '0.0', '', 1, 1, 1, 1, 1, 1, '2018-03-04 15:05:37', '2018-03-07 16:51:29', '', '', 'intersection ring'),
(255, 'NL419', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL419/NL419_mix.gif', 0, 1, 2350, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-04', '                                                            ', '0.0', 1, '1.4', '0.2', '1.3', '', 1, 1, 1, 1, 1, 1, '2018-03-04 15:11:27', '2018-03-18 13:57:53', '', '', 'trees necklace'),
(256, 'RG410', '', '', '', '', '', '', 'Taiwan', '白金/香檳金/玫瑰金', '0', '', '', '若有其他尺寸需求，請告知。', '', '', '', 1, 7, 6, 10, 'catalog/Ring(RG)/RG410/RG410_mix.gif', 0, 1, 38500, 0, 0, '0.0', '0.0', '', '', '', '0.0', '', '2018-03-04', '                                        ', '0.0', 1, '0.0', '0.0', '0.0', '', 1, 1, 1, 1, 1, 2, '2018-03-04 15:18:16', '2018-03-18 14:48:37', '', '', 'triple ring'),
(257, 'BL406', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/BL406/BL406_mix.gif', 0, 1, 3150, 0, 0, '0.0', '0.0', '16', '', '', '0.0', '', '2018-03-04', '                                        ', '0.0', 1, '2.4', '0.2', '1.3', '', 1, 1, 1, 1, 1, 1, '2018-03-04 15:30:58', '2018-03-18 12:50:13', '', '', 'xxx bracelet'),
(258, 'BL407', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/BL407/BL407_04_S.jpg', 0, 1, 2300, 0, 0, '0.0', '0.0', '16', '', '', '0.0', '', '2018-03-04', '                    ', '0.0', 1, '0.8', '0.2', '1.0', '', 1, 1, 1, 1, 1, 1, '2018-03-04 15:35:18', '2018-03-07 16:11:14', '', '', 'horseshoe f bracelet'),
(259, 'NL420', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL420/NL420_01_S.jpg', 0, 1, 2400, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-04', '                    ', '0.0', 1, '0.5', '0.5', '1.8', '', 1, 1, 1, 1, 1, 1, '2018-03-04 15:38:55', '2018-03-07 16:37:29', '', '', 'thorn necklace'),
(260, 'NL421', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL421/NL421_04_S.jpg', 0, 1, 2850, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-04', '                                                            ', '0.0', 1, '2.9', '0.1', '0.6', '', 1, 1, 1, 1, 1, 1, '2018-03-04 15:43:05', '2018-03-11 11:15:31', '', '', 'rectangle necklace'),
(261, 'NL422', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL422/NL422_02_S.jpg', 0, 1, 2850, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-04', '                                                            ', '0.0', 1, '2.8', '0.2', '1.1', '', 1, 1, 1, 1, 1, 1, '2018-03-04 15:48:11', '2018-03-11 11:16:02', '', '', 'bear v necklace'),
(262, 'BL408', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/BL408/BL408_mix.gif', 0, 1, 2900, 0, 0, '0.0', '0.0', '16', '', '', '0.0', '', '2018-03-04', '                                        ', '0.0', 1, '2.9', '0.1', '0.6', '', 1, 1, 1, 1, 1, 1, '2018-03-04 15:54:05', '2018-03-18 12:51:06', '', '', 'rectangle beacelet'),
(263, 'BL409', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/BL409/BL409_02_S.jpg', 0, 1, 2900, 0, 0, '0.0', '0.0', '16', '', '', '0.0', '', '2018-03-04', '                    ', '0.0', 1, '2.8', '0.2', '1.1', '', 1, 1, 1, 1, 1, 1, '2018-03-04 16:00:50', '2018-03-07 16:11:43', '', '', 'bear v bracelet'),
(264, 'NL701', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL701/NL701_05_S.jpg', 0, 1, 2500, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-04', '                                                            ', '0.0', 1, '0.7', '0.4', '1.1', '', 1, 1, 1, 1, 1, 1, '2018-03-04 16:05:29', '2018-03-11 11:16:48', '', '', 'square heart necklace'),
(265, 'NL702', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL702/NL702_mix.gif', 0, 1, 2500, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-04', '                                                                                                    ', '0.0', 1, '0.7', '0.4', '1.1', '', 1, 1, 1, 1, 1, 2, '2018-03-04 16:09:48', '2018-03-18 14:04:24', '', '', 'round heart necklace'),
(266, 'NL703', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL703/NL703_mix.gif', 0, 1, 2800, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-04', '                                                                                ', '0.0', 1, '0.9', '0.4', '1.9', '', 1, 1, 1, 1, 1, 0, '2018-03-04 16:15:59', '2018-03-18 14:05:33', '', '', 'gem rabbit necklace'),
(267, 'NL704', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL704/NL704_mix.gif', 0, 1, 2800, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-04', '                                                                                                    ', '0.0', 1, '1.0', '1.0', '2.0', '', 1, 1, 1, 1, 1, 1, '2018-03-04 16:20:17', '2018-03-18 14:06:29', '', '', 'ballet starfish necklace'),
(268, 'BL701', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/BL701/BL701_mix.gif', 0, 1, 2650, 0, 0, '0.0', '0.0', '16', '', '', '0.0', '', '2018-03-04', '                                                            ', '0.0', 1, '0.7', '0.4', '1.1', '', 1, 1, 1, 1, 1, 1, '2018-03-04 16:27:54', '2018-03-18 12:54:12', '', '', 'square heart bracelet'),
(269, 'BL702', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/BL702/BL702_mix.gif', 0, 1, 2650, 0, 0, '0.0', '0.0', '16', '', '', '0.0', '', '2018-03-04', '                                                            ', '0.0', 1, '0.7', '0.4', '1.1', '', 1, 1, 1, 1, 1, 1, '2018-03-04 16:33:26', '2018-03-18 12:55:18', '', '', 'round heart bracelet'),
(270, 'BL703', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/BL703/BL703_mix.gif', 0, 1, 2950, 0, 0, '0.0', '0.0', '16', '', '', '0.0', '', '2018-03-04', '                                        ', '0.0', 1, '0.9', '0.4', '1.9', '', 1, 1, 1, 1, 1, 2, '2018-03-04 16:38:05', '2018-03-18 12:56:04', '', '', 'gem rabbit bracelet'),
(271, 'BL704', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '&lt;h4&gt;&lt;br&gt;&lt;/h4&gt;', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/BL704/BL704_mix.gif', 0, 1, 2950, 0, 0, '0.0', '0.0', '16', '', '', '0.0', '', '2018-03-04', '                                                            ', '0.0', 1, '1.0', '1.0', '2.0', '', 1, 1, 1, 1, 1, 1, '2018-03-04 16:44:04', '2018-03-18 12:56:45', '', '', 'ballet starfish bracelet'),
(272, 'NL705', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL705/NL705_mix.gif', 0, 1, 2700, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-04', '                                                                                                                        ', '0.0', 1, '1.0', '0.4', '1.3', '', 1, 1, 1, 1, 1, 2, '2018-03-04 16:51:20', '2018-03-18 14:07:21', '', '', 'succulent heart necklace'),
(273, 'BL705', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/BL705/BL705_mix.gif', 0, 1, 2850, 0, 0, '0.0', '0.0', '16', '', '', '0.0', '', '2018-03-04', '                                        ', '0.0', 1, '1.0', '0.4', '1.3', '', 1, 1, 1, 1, 1, 1, '2018-03-04 16:58:42', '2018-03-18 12:57:31', '', '', 'succulent heart bracelet'),
(274, 'NL706', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL706/NL706_04_S.jpg', 0, 1, 2700, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-04', '                                        ', '0.0', 1, '0.8', '0.7', '1.7', '', 1, 1, 1, 1, 1, 1, '2018-03-04 21:12:12', '2018-03-11 11:20:48', '', '', 'petals necklace'),
(275, 'BL706', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/BL706/BL706_mix.gif', 0, 1, 2850, 0, 0, '0.0', '0.0', '16', '', '', '0.0', '', '2018-03-04', '                                                            ', '0.0', 1, '0.8', '0.7', '1.7', '', 1, 1, 1, 1, 1, 1, '2018-03-04 21:17:08', '2018-03-18 12:58:17', '', '', 'petals bracelet'),
(276, 'BB701', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/BABY(BB)/BB701/BB701_03_S.jpg', 0, 1, 2700, 0, 0, '0.0', '0.0', '12', '', '', '0.0', '', '2018-03-04', '                                                                                                    ', '0.0', 1, '1.1', '0.2', '0.8', '', 1, 1, 1, 1, 1, 4, '2018-03-04 21:25:02', '2018-03-18 21:16:31', '', '', 'bb chick bracelet'),
(277, 'BL707', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/BL707/BL707_mix.gif', 0, 1, 3000, 0, 0, '0.0', '0.0', '16', '', '', '0.0', '', '2018-03-04', '                                                                                ', '0.0', 1, '1.1', '0.2', '0.8', '', 1, 1, 1, 1, 1, 1, '2018-03-04 21:30:20', '2018-03-18 13:04:41', '', '', 'chick bracelet'),
(278, 'NL707', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL707/NL707_03_S.jpg', 0, 1, 2850, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-04', '                    ', '0.0', 1, '1.1', '0.2', '0.8', '', 1, 1, 1, 1, 1, 0, '2018-03-04 21:34:26', '2018-03-07 16:40:03', '', '', 'chick necklace'),
(279, 'RG701', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 7, 12, 'catalog/Ring(RG)/RG701/RG701_mix.gif', 0, 1, 3100, 0, 0, '0.0', '0.0', '', '', '', '0.0', '', '2018-03-04', '                                                                                ', '0.0', 1, '0.0', '0.0', '0.0', '', 1, 1, 1, 1, 1, 2, '2018-03-04 21:39:53', '2018-03-18 14:49:37', '', '', 'feather ring'),
(280, 'NL708', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL708/NL708_mix.gif', 0, 1, 3576, 0, 0, '0.0', '0.0', '', '', '', '0.0', '45', '2018-03-04', '                                                                                ', '0.0', 1, '1.2', '0.7', '1.8', '', 1, 1, 1, 1, 1, 2, '2018-03-04 21:45:56', '2018-03-18 14:08:18', '', '', 'balloon a necklace'),
(281, 'NL709', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL709/NL709_mix.gif', 0, 1, 3450, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-04', '                                                                                ', '0.0', 1, '1.5', '0.4', '1.8', '', 1, 1, 1, 1, 1, 1, '2018-03-04 21:54:01', '2018-03-18 14:09:09', '', '', 'lemon necklace'),
(282, 'BL708', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/BL708/BL708_mix.gif', 0, 1, 4250, 0, 0, '0.0', '0.0', '16', '', '', '0.0', '', '2018-03-04', '                                        ', '0.0', 1, '1.5', '0.4', '1.8', '', 1, 1, 1, 1, 1, 2, '2018-03-04 21:58:21', '2018-03-18 13:05:27', '', '', 'lemon bracelet'),
(283, 'NL710', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL710/NL710_mix.gif', 0, 1, 2350, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-05', '                                                                                ', '0.0', 1, '1.8', '0.4', '1.7', '', 1, 1, 1, 1, 1, 2, '2018-03-05 10:42:14', '2018-03-18 14:09:52', '', '', 'bow necklace'),
(284, 'BL709', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/BL709/BL709_mix.gif', 0, 1, 2500, 0, 0, '0.0', '0.0', '16', '', '', '0.0', '', '2018-03-05', '                                                                                ', '0.0', 1, '1.8', '0.4', '1.7', '', 1, 1, 1, 1, 1, 2, '2018-03-05 10:49:51', '2018-03-18 13:06:27', '', '', 'bow bracelet'),
(285, 'RG702', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '若有其他尺寸需求，請告知。', '', '', '', 1, 7, 7, 12, 'catalog/Ring(RG)/RG702/RG702_mix.gif', 0, 1, 3300, 0, 0, '0.0', '0.0', '', '', '', '0.0', '', '2018-03-05', '                                                            ', '0.0', 1, '0.0', '0.0', '0.0', '', 1, 1, 1, 1, 1, 1, '2018-03-05 10:58:49', '2018-03-18 14:50:27', '', '', 'drip ring'),
(286, 'ER701', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '耳針式耳環', '', '', '', '', 1, 7, 0, 0, 'catalog/Earring(ER)/ER701/ER701_02_S.jpg', 0, 1, 3000, 0, 0, '0.0', '0.0', '', '', '', '0.0', '', '2018-03-05', '                                                            ', '0.0', 1, '0.7', '0.4', '0.7', '', 1, 1, 1, 1, 1, 7, '2018-03-05 11:08:42', '2018-03-11 16:20:54', '', '', 'hearts earring'),
(287, 'NL711', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL711/NL711_mix.gif', 0, 1, 3150, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-05', '                                                                                ', '0.0', 1, '1.5', '0.9', '1.1', '', 1, 1, 1, 1, 1, 2, '2018-03-05 11:15:15', '2018-03-18 14:10:35', '', '', 'paper rabbit necklace'),
(288, 'BL710', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/BL710/BL710_mix.gif', 0, 1, 3950, 0, 0, '0.0', '0.0', '16', '', '', '0.0', '', '2018-03-05', '                                        ', '0.0', 1, '1.5', '0.9', '1.1', '', 1, 1, 1, 1, 1, 1, '2018-03-05 11:20:54', '2018-03-18 13:07:22', '', '', 'paper rabbit bracelet'),
(289, 'NL712', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL712/NL712_mix.gif', 0, 1, 3400, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-05', '                                                            ', '0.0', 1, '1.3', '0.6', '1.5', '', 1, 1, 1, 1, 1, 1, '2018-03-05 11:28:00', '2018-03-18 14:11:18', '', '', 'duck necklace'),
(290, 'BL711', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/BL711/BL711_mix.gif', 0, 1, 4200, 0, 0, '0.0', '0.0', '16', '', '', '0.0', '', '2018-03-05', '                                                            ', '0.0', 1, '1.3', '0.6', '1.5', '', 1, 1, 1, 1, 1, 1, '2018-03-05 11:33:17', '2018-03-18 13:08:10', '', '', 'duck bracelet'),
(291, 'RG703', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '若有其他尺寸需求，請告知。', '', '', '', 1, 7, 7, 11, 'catalog/Ring(RG)/RG703/RG703_mix.gif', 0, 1, 2950, 0, 0, '0.0', '0.0', '', '', '', '0.0', '', '2018-03-05', '                                        ', '0.0', 1, '0.0', '0.0', '0.0', '', 1, 1, 1, 1, 1, 1, '2018-03-05 11:39:32', '2018-03-18 14:51:17', '', '', 'brezel ring'),
(292, 'NL713', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL713/NL713_mix.gif', 0, 1, 5500, 0, 0, '0.0', '0.0', '', '', '', '0.0', '60', '2018-03-05', '                                        ', '0.0', 1, '2.3', '0.3', '2.3', '', 1, 1, 1, 1, 1, 1, '2018-03-05 11:45:22', '2018-03-18 14:11:57', '', '', 'lifebuoy necklace'),
(293, 'NL714', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL714/NL714_01_S.jpg', 0, 1, 2400, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-05', '                                                            ', '0.0', 1, '1.3', '0.3', '0.9', '', 1, 1, 1, 1, 1, 4, '2018-03-05 11:49:17', '2018-03-11 16:23:48', '', '', 'elephant necklace'),
(294, 'BL712', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/BL712/BL712_mix.gif', 0, 1, 2550, 0, 0, '0.0', '0.0', '16', '', '', '0.0', '', '2018-03-05', '                                        ', '0.0', 1, '1.3', '0.3', '0.9', '', 1, 1, 1, 1, 1, 2, '2018-03-05 11:53:57', '2018-03-18 13:08:55', '', '', 'elephant bracelet'),
(295, 'NL715', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL715/NL715_04_S.jpg', 0, 1, 2650, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-05', '                                        ', '0.0', 1, '1.0', '0.3', '1.2', '', 1, 1, 1, 1, 1, 2, '2018-03-05 12:46:07', '2018-03-11 11:28:54', '', '', 'diamond heart necklace'),
(296, 'BL713', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/BL713/BL713_01_S.jpg', 0, 1, 2800, 0, 0, '0.0', '0.0', '16', '', '', '0.0', '', '2018-03-05', '                    ', '0.0', 1, '1.0', '0.3', '1.2', '', 1, 1, 1, 1, 1, 1, '2018-03-05 12:53:04', '2018-03-07 16:15:05', '', '', 'diamond heart bracelet'),
(297, 'RG704', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '若有其他尺寸需求，請告知。', '', '', '', 1, 7, 8, 11, 'catalog/Ring(RG)/RG704/RG704_mix.gif', 0, 1, 3800, 0, 0, '0.0', '0.0', '', '', '', '0.0', '', '2018-03-05', '                                                            ', '0.0', 1, '0.0', '0.0', '0.0', '', 1, 1, 1, 1, 1, 1, '2018-03-05 12:59:12', '2018-03-18 14:52:11', '', '', 'breakout ring'),
(298, 'NL716', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL716/NL716_mix.gif', 0, 1, 3550, 0, 0, '0.0', '0.0', '', '', '', '0.0', '45', '2018-03-05', '                                                            ', '0.0', 1, '1.0', '0.5', '3.1', '', 1, 1, 1, 1, 1, 1, '2018-03-05 13:05:11', '2018-03-18 14:13:20', '', '', 'violin necklace'),
(299, 'RG705', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '若有其他尺寸需求，請告知。', '', '', '', 1, 7, 7, 11, 'catalog/Ring(RG)/RG705/RG705_mix.gif', 0, 1, 1950, 0, 0, '0.0', '0.0', '', '', '', '0.0', '', '2018-03-05', '                                                                                ', '0.0', 1, '0.0', '0.0', '0.0', '', 1, 1, 1, 1, 1, 2, '2018-03-05 13:10:31', '2018-03-18 14:52:47', '', '', 'turning ring'),
(300, 'NL717', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL717/NL717_mix.gif', 0, 1, 2600, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-05', '                                                                                                    ', '0.0', 1, '0.9', '0.4', '2.4', '', 1, 1, 1, 1, 1, 2, '2018-03-05 13:17:14', '2018-03-18 14:14:42', '', '', 'wheat necklace'),
(301, 'NL718', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL718/NL718_mix.gif', 0, 1, 2600, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-05', '                                                            ', '0.0', 1, '0.9', '0.4', '2.4', '', 1, 1, 1, 1, 1, 1, '2018-03-05 13:23:04', '2018-03-18 14:15:17', '', '', 'wheat a necklace'),
(302, 'BL714', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/BL714/BL714_mix.gif', 0, 1, 2750, 0, 0, '0.0', '0.0', '16', '', '', '0.0', '', '2018-03-05', '                                        ', '0.0', 1, '0.9', '0.4', '2.4', '', 1, 1, 1, 1, 1, 1, '2018-03-05 13:27:30', '2018-03-18 13:09:42', '', '', 'wheat a bracelet'),
(303, 'NL719', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL719/NL719_mix.gif', 0, 1, 3500, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-05', '                                                            ', '0.0', 1, '0.9', '0.9', '1.8', '', 1, 1, 1, 1, 1, 1, '2018-03-05 13:32:18', '2018-03-18 14:16:02', '', '', 'eggplant necklace'),
(304, 'BL715', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/BL715/BL715_mix.gif', 0, 1, 4250, 0, 0, '0.0', '0.0', '16', '', '', '0.0', '', '2018-03-05', '                                        ', '0.0', 1, '0.9', '0.9', '1.8', '', 1, 1, 1, 1, 1, 0, '2018-03-05 13:36:17', '2018-03-18 13:10:22', '', '', 'eggplant bracelet'),
(305, 'NL720', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL720/NL720_mix.gif', 0, 1, 2600, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-05', '                                                                                ', '0.0', 1, '1.0', '0.3', '1.3', '', 1, 1, 1, 1, 1, 3, '2018-03-05 13:40:48', '2018-03-18 14:16:32', '', '', 'crown necklace'),
(306, 'BL716', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/BL716/BL716_mix.gif', 0, 1, 2750, 0, 0, '0.0', '0.0', '16', '', '', '0.0', '', '2018-03-05', '                                        ', '0.0', 1, '1.0', '0.3', '1.3', '', 1, 1, 1, 1, 1, 6, '2018-03-05 13:44:42', '2018-03-18 13:11:11', '', '', 'crown bracelet'),
(307, 'RG706', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 9, 13, 'catalog/Ring(RG)/RG706/RG706_mix.gif', 0, 1, 5950, 0, 0, '0.0', '0.0', '', '', '', '0.0', '', '2018-03-05', '                                                            ', '0.0', 1, '0.0', '0.0', '0.0', '', 1, 1, 1, 1, 1, 1, '2018-03-05 14:02:04', '2018-03-18 14:53:53', '', '', 'mountains ring'),
(308, 'NL721', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL721/NL721_mix.gif', 0, 1, 3250, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-05', '                                                                                ', '0.0', 1, '1.5', '0.8', '1.2', '', 1, 1, 1, 1, 1, 4, '2018-03-05 14:09:50', '2018-03-18 14:17:24', '', '', 'birdie necklace'),
(309, 'BL717', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/BL717/BL717_mix.gif', 0, 1, 4050, 0, 0, '0.0', '0.0', '16', '', '', '0.0', '', '2018-03-05', '                                        ', '0.0', 1, '1.5', '0.8', '1.2', '', 1, 1, 1, 1, 1, 4, '2018-03-05 14:18:42', '2018-03-18 13:12:01', '', '', 'birdie bracelet'),
(310, 'NL722', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL722/NL722_mix.gif', 0, 1, 2700, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-05', '                                                            ', '0.0', 1, '1.6', '0.4', '0.8', '', 1, 1, 1, 1, 1, 1, '2018-03-05 14:22:48', '2018-03-18 14:18:10', '', '', 'paper plane a necklace'),
(311, 'BL718', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/BL718/BL718_mix.gif', 0, 1, 2850, 0, 0, '0.0', '0.0', '16', '', '', '0.0', '', '2018-03-05', '                                                            ', '0.0', 1, '1.6', '0.4', '0.8', '', 1, 1, 1, 1, 1, 2, '2018-03-05 14:27:44', '2018-03-18 13:12:54', '', '', 'paper plane a bracelet'),
(312, 'RG707', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '若有其他尺寸需求，請告知。', '', '', '', 1, 7, 7, 11, 'catalog/Ring(RG)/RG707/RG707_mix.gif', 0, 1, 2700, 0, 0, '0.0', '0.0', '', '', '', '0.0', '', '2018-03-05', '                                                            ', '0.0', 1, '0.0', '0.0', '0.0', '', 1, 1, 1, 1, 1, 1, '2018-03-05 14:34:10', '2018-03-18 14:54:57', '', '', 'undertone ring'),
(313, 'RG708', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '若有其他尺寸需求，請告知。', '', '', '', 1, 7, 7, 11, 'catalog/Ring(RG)/RG708/RG708_mix.gif', 0, 1, 3900, 0, 0, '0.0', '0.0', '', '', '', '0.0', '', '2018-03-05', '                                        ', '0.0', 1, '0.0', '0.0', '0.0', '', 1, 1, 1, 1, 1, 2, '2018-03-05 14:40:35', '2018-03-18 14:55:47', '', '', 'cutting ring'),
(314, 'NL723', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL723/NL723_mix.gif', 0, 1, 2000, 0, 0, '0.4', '0.5', '', '', '', '1.0', '40', '2018-03-05', '&lt;p&gt;1. 本產品尺寸以字母&quot;O&quot;為例，若有其他字母需求則依所選字母的實際尺寸為主。&lt;/p&gt;&lt;p&gt;2. 本產品有A~Z 26個字母可供選擇。&lt;/p&gt;&lt;p&gt;3. 本產品價格包含A~Z字母中&lt;u&gt;擇一&lt;/u&gt;，並&lt;u&gt;含925純銀項鍊乙條&lt;/u&gt;的價格。&lt;/p&gt;&lt;p&gt;4. 若有需要增加更多的字母，請&lt;a href=&quot;http://www.mittag.com.tw/index.php?route=product/product&amp;amp;path=34&amp;amp;product_id=316&quot; target=&quot;_blank&quot; style=&quot;background-color: rgb(255, 255, 0);&quot;&gt;&lt;font color=&quot;#ff0000&quot;&gt;按此處&lt;/font&gt;&lt;/a&gt;選購。&lt;br&gt;&lt;/p&gt;                                                                                                                                                                ', '0.0', 1, '0.0', '0.0', '0.0', '', 1, 1, 1, 1, 1, 10, '2018-03-05 14:45:50', '2018-03-18 14:18:49', '', '', 'alphabet necklace'),
(315, 'BL719', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/BL719/BL719_mix.gif', 0, 1, 2150, 0, 0, '0.4', '0.5', '16', '', '', '1.0', '', '2018-03-05', '&lt;p&gt;1. 本產品尺寸以字母&quot;J&quot;為例，若有其他字母需求則依所選字母的實際尺寸為主。&lt;/p&gt;&lt;p&gt;2. 本產品有A~Z 26個字母可供選擇。&lt;/p&gt;&lt;p&gt;3. 本產品價格包含A~Z字母中&lt;u&gt;擇一&lt;/u&gt;，並&lt;u&gt;含925純銀手鍊乙條&lt;/u&gt;的價格。&lt;/p&gt;&lt;p&gt;4. 若有需要增加更多的字母，請&lt;a href=&quot;http://www.mittag.com.tw/index.php?route=product/product&amp;amp;path=34&amp;amp;product_id=316&quot; target=&quot;_blank&quot;&gt;&lt;font style=&quot;background-color: rgb(255, 255, 0);&quot; color=&quot;#ff0000&quot;&gt;按此處&lt;/font&gt;&lt;/a&gt;選購。&lt;/p&gt;                                                                                                                                                                ', '0.0', 1, '0.0', '0.0', '0.0', '', 1, 1, 1, 1, 1, 6, '2018-03-05 14:51:56', '2018-03-18 13:13:35', '', '', 'alphabet bracelet'),
(316, 'OT701', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Others(OT)/OT701/OT701_03_S.jpg', 0, 1, 1000, 0, 0, '0.4', '0.5', '', '', '', '1.0', '', '2018-03-05', '                    ', '0.0', 1, '0.0', '0.0', '0.0', '', 1, 1, 1, 1, 1, 7, '2018-03-05 20:41:49', '2018-03-07 16:46:30', '', '', 'alphabet others'),
(317, 'NL724', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL724/NL724_mix.gif', 0, 1, 3135, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-05', '                                                                                ', '0.0', 1, '1.2', '0.5', '1.4', '', 1, 1, 1, 1, 1, 2, '2018-03-05 20:58:47', '2018-03-18 14:19:34', '', '', 'shell necklace necklace'),
(318, 'BL720', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/BL720/BL720_mix.gif', 0, 1, 3300, 0, 0, '0.0', '0.0', '16', '', '', '0.0', '', '2018-03-05', '                                        ', '0.0', 1, '1.2', '0.5', '1.4', '', 1, 1, 1, 1, 1, 3, '2018-03-05 21:04:05', '2018-03-18 13:14:37', '', '', 'shell bracelet'),
(319, 'NL725', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL725/NL725_01_S.jpg', 0, 1, 2600, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-05', '                                        ', '0.0', 1, '1.3', '0.3', '1.6', '', 1, 1, 1, 1, 1, 5, '2018-03-05 21:08:51', '2018-03-11 13:09:42', '', '', 'triangle necklace'),
(320, 'BL721', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/BL721/BL721_mix.gif', 0, 1, 2750, 0, 0, '0.0', '0.0', '16', '', '', '0.0', '', '2018-03-05', '                                        ', '0.0', 1, '1.3', '0.3', '1.6', '', 1, 1, 1, 1, 1, 2, '2018-03-05 21:12:54', '2018-03-18 13:15:26', '', '', 'triangle bracelet'),
(321, 'NL726', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL726/NL726_01_S.jpg', 0, 1, 2000, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-05', '                                                            ', '0.0', 1, '0.9', '0.3', '1.7', '', 1, 1, 1, 1, 1, 1, '2018-03-05 21:18:42', '2018-03-20 22:12:33', '', '', 'pomelo necklace'),
(322, 'BL722', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/BL722/BL722_01_S.jpg', 0, 1, 2150, 0, 0, '0.0', '0.0', '16', '', '', '0.0', '', '2018-03-05', '                    ', '0.0', 1, '0.9', '0.3', '1.7', '', 1, 1, 1, 1, 1, 1, '2018-03-05 21:22:39', '2018-03-07 16:17:43', '', '', 'pomelo bracelet'),
(323, 'RG709', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '若有其他尺寸需求，請告知。', '', '', '', 1, 7, 7, 12, 'catalog/Ring(RG)/RG709/RG709_mix.gif', 0, 1, 2350, 0, 0, '0.0', '0.0', '', '', '', '0.0', '', '2018-03-05', '                                                            ', '0.0', 1, '0.0', '0.0', '0.0', '', 1, 1, 1, 1, 1, 3, '2018-03-05 21:28:20', '2018-03-18 14:56:35', '', '', 'square heart ring'),
(324, 'RG710', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '若有其他尺寸需求，請告知。', '', '', '', 1, 7, 7, 12, 'catalog/Ring(RG)/RG710/RG710_mix.gif', 0, 1, 2350, 0, 0, '0.0', '0.0', '', '', '', '0.0', '', '2018-03-05', '                                        ', '0.0', 1, '0.0', '0.0', '0.0', '', 1, 1, 1, 1, 1, 2, '2018-03-05 21:34:55', '2018-03-18 14:57:29', '', '', 'round heart ring'),
(325, 'NL801', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL801/NL801_mix.gif', 0, 1, 4050, 0, 0, '0.0', '0.0', '', '', '', '0.0', '45', '2018-03-05', '                                                            ', '0.0', 1, '1.0', '1.1', '1.9', '', 1, 1, 1, 1, 1, 2, '2018-03-05 21:54:02', '2018-03-18 14:20:39', '', '', 'tumbler necklace'),
(326, 'BL801', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/BL801/BL801_mix.gif', 0, 1, 4900, 0, 0, '0.0', '0.0', '16', '', '', '0.0', '', '2018-03-05', '                                        ', '0.0', 1, '1.0', '1.1', '1.9', '', 1, 1, 1, 1, 1, 1, '2018-03-05 22:12:05', '2018-03-18 13:16:29', '', '', 'tumbler bracelet'),
(327, 'NL802', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL802/NL802_mix.gif', 0, 1, 2200, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-05', '                                                            ', '0.0', 1, '4.4', '0.3', '1.2', '', 1, 1, 1, 1, 1, 0, '2018-03-05 22:16:13', '2018-03-18 14:21:26', '', '', 'tube necklace'),
(328, 'BL802', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/BL802/BL802_03_S.jpg', 0, 1, 2200, 0, 0, '0.0', '0.0', '16', '', '', '0.0', '', '2018-03-06', '                    ', '0.0', 1, '4.4', '0.3', '1.2', '', 1, 1, 1, 1, 1, 1, '2018-03-06 21:50:34', '2018-03-07 16:18:14', '', '', 'tube bracelet'),
(329, 'NL803', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL803/NL803_mix.gif', 0, 1, 2200, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-06', '                                                            ', '0.0', 1, '4.0', '0.3', '1.0', '', 1, 1, 1, 1, 1, 0, '2018-03-06 21:55:52', '2018-03-18 14:22:12', '', '', 'square tube necklace'),
(330, 'BL803', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/BL803/BL803_mix.gif', 0, 1, 2200, 0, 0, '0.0', '0.0', '16', '', '', '0.0', '', '2018-03-06', '                                        ', '0.0', 1, '4.0', '0.3', '1.0', '', 1, 1, 1, 1, 1, 0, '2018-03-06 21:59:55', '2018-03-18 13:17:17', '', '', 'square tube bracelet'),
(331, 'RG801', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '若有其他尺寸需求，請告知。', '', '', '', 1, 7, 7, 10, 'catalog/Ring(RG)/RG801/RG801_mix.gif', 0, 1, 3400, 0, 0, '0.0', '0.0', '', '', '', '0.0', '', '2018-03-06', '                                        ', '0.0', 1, '0.0', '0.0', '0.0', '', 1, 1, 1, 1, 1, 2, '2018-03-06 22:05:01', '2018-03-18 14:58:55', '', '', 'square ring'),
(332, 'RG802', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 6, 12, 'catalog/Ring(RG)/RG802/RG802_mix.gif', 0, 1, 2800, 0, 0, '0.0', '0.0', '', '', '', '0.0', '', '2018-03-06', '                                                            ', '0.0', 1, '0.0', '0.0', '0.0', '', 1, 1, 1, 1, 1, 2, '2018-03-06 22:11:14', '2018-03-18 14:59:42', '', '', 'ripple ring'),
(333, 'NL804', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL804/NL804_mix.gif', 0, 1, 3050, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-06', '                                                            ', '0.0', 1, '1.7', '0.5', '1.5', '', 1, 1, 1, 1, 1, 1, '2018-03-06 22:18:43', '2018-03-20 22:11:29', '', '', 'tree necklace'),
(334, 'NL805', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL805/NL805_mix.gif', 0, 1, 2600, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-06', '                                                            ', '0.0', 1, '1.1', '0.6', '1.3', '', 1, 1, 1, 1, 1, 1, '2018-03-06 22:27:11', '2018-03-18 14:23:50', '', '', 'lucky charm a necklace'),
(335, 'BL804', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/BL804/BL804_mix.gif', 0, 1, 2750, 0, 0, '0.0', '0.0', '16', '', '', '0.0', '', '2018-03-06', '                                        ', '0.0', 1, '1.1', '0.6', '1.3', '', 1, 1, 1, 1, 1, 1, '2018-03-06 22:31:23', '2018-03-18 13:18:06', '', '', 'lucky charm a bracelet'),
(336, 'RG803', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '若有其他尺寸需求，請告知。', '', '', '', 1, 7, 7, 11, 'catalog/Ring(RG)/RG803/RG803_01_S.jpg', 0, 1, 4100, 0, 0, '0.0', '0.0', '', '', '', '0.0', '', '2018-03-06', '                    ', '0.0', 1, '0.0', '0.0', '0.0', '', 1, 1, 1, 1, 1, 2, '2018-03-06 22:36:41', '2018-03-07 16:54:35', '', '', 'wave ring'),
(337, 'BB801', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/BABY(BB)/BB801/BB801_01_S.jpg', 0, 1, 3150, 0, 0, '0.0', '0.0', '12', '', '', '0.0', '', '2018-03-06', '                                                                                ', '0.0', 1, '1.7', '0.3', '1.1', '', 1, 1, 1, 1, 1, 6, '2018-03-06 22:52:24', '2018-03-18 21:17:18', '', '', 'bb good lock bracelet'),
(338, 'BB802', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/BABY(BB)/BB802/BB802_mix.gif', 0, 1, 2300, 0, 0, '0.0', '0.0', '12', '', '', '0.0', '', '2018-03-06', '                                                                                                    ', '0.0', 1, '0.8', '0.2', '1.0', '', 1, 1, 1, 1, 1, 5, '2018-03-06 22:56:00', '2018-03-18 21:18:11', '', '', 'bb horseshoe f bracelet'),
(339, 'BB803', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/BABY(BB)/BB803/BB803_mix.gif', 0, 1, 2650, 0, 0, '0.0', '0.0', '12', '', '', '0.0', '', '2018-03-06', '                                                                                                    ', '0.0', 1, '0.7', '0.4', '1.1', '', 1, 1, 1, 1, 1, 4, '2018-03-06 22:59:48', '2018-03-18 21:19:21', '', '', 'bb square heart bracelet'),
(340, 'BB804', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/BABY(BB)/BB804/BB804_03_S.jpg', 0, 1, 2650, 0, 0, '0.0', '0.0', '12', '', '', '0.0', '', '2018-03-06', '                                                                                ', '0.0', 1, '0.7', '0.4', '1.1', '', 1, 1, 1, 1, 1, 4, '2018-03-06 23:04:31', '2018-03-18 21:20:04', '', '', 'bb round heart bracelet'),
(341, 'BB805', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/BABY(BB)/BB805/BB805_mix.gif', 0, 1, 2750, 0, 0, '0.0', '0.0', '12', '', '', '0.0', '', '2018-03-06', '                                                                                                    ', '0.0', 1, '1.0', '0.3', '1.3', '', 1, 1, 1, 1, 1, 11, '2018-03-06 23:09:15', '2018-03-18 21:28:17', '', '', 'bb crown bracelet'),
(342, 'NL806', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL806/NL806_01_S.jpg', 0, 1, 2350, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-06', '                                        ', '0.0', 1, '1.2', '0.3', '1.3', '', 1, 1, 1, 1, 1, 4, '2018-03-06 23:17:55', '2018-03-11 13:17:50', '', '', 'car necklace'),
(343, 'BL805', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/BL805/BL805_mix.gif', 0, 1, 2500, 0, 0, '0.0', '0.0', '16', '', '', '0.0', '', '2018-03-06', '                                                            ', '0.0', 1, '1.2', '0.3', '1.3', '', 1, 1, 1, 1, 1, 4, '2018-03-06 23:23:19', '2018-03-18 13:18:54', '', '', 'car bracelet'),
(344, 'BB806', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/BABY(BB)/BB806/BB806_mix.gif', 0, 1, 2500, 0, 0, '0.0', '0.0', '12', '', '', '0.0', '', '2018-03-06', '                                                                                ', '0.0', 1, '1.2', '0.3', '1.3', '', 1, 1, 1, 1, 1, 16, '2018-03-06 23:28:52', '2018-03-18 21:21:09', '', '', 'bb car bracelet'),
(345, 'RG804', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '若有其他尺寸需求，請告知。', '', '', '', 1, 7, 10, 14, 'catalog/Ring(RG)/RG804/RG804_mix.gif', 0, 1, 9900, 0, 0, '0.0', '0.0', '', '', '', '0.0', '', '2018-03-06', '                                        ', '0.0', 1, '0.0', '0.0', '0.0', '', 1, 1, 1, 1, 1, 18, '2018-03-06 23:36:22', '2018-03-18 15:00:27', '', '', 'Super m ring'),
(346, 'NL807', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '本產品配置之項鍊為真皮銀扣項鍊。', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL807/NL807_mix.gif', 0, 1, 3600, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-06', '                                        ', '0.0', 1, '1.7', '0.9', '2.0', '', 1, 1, 1, 1, 1, 10, '2018-03-06 23:42:27', '2018-03-18 14:24:34', '', '', 'curly heart necklace'),
(347, 'NL808', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL808/NL808_mix.gif', 0, 1, 1550, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-06', '                                                            ', '0.0', 1, '0.6', '0.3', '1.3', '', 1, 1, 1, 1, 1, 12, '2018-03-06 23:48:00', '2018-03-18 14:25:18', '', '', 'lotus leaf necklace'),
(348, 'BL806', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/BL806/BL806_1_mix.gif', 0, 1, 1700, 0, 0, '0.0', '0.0', '16', '', '', '0.0', '', '2018-03-06', '                                                                                                    ', '0.0', 1, '0.6', '0.3', '1.3', '', 1, 1, 1, 1, 1, 6, '2018-03-06 23:52:40', '2018-03-18 13:29:22', '', '', 'lotus leaf bracelet'),
(349, 'activity_2018_001', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Activities/2018_001_web_celebration/celebration_ad_web_banner_20180307_icon1.jpg', 0, 1, 0, 0, 0, '0.0', '0.0', '', '', '', '0.0', '', '2018-03-07', '                                                                                                                                                                                                                                                                                                                                                                                                                                                        ', '0.0', 1, '0.0', '0.0', '0.0', '', 1, 1, 1, 1, 1, 47, '2018-03-07 13:23:44', '2018-03-22 10:25:46', 'celebration for mittag website readiness', '&lt;h3&gt;&lt;img src=&quot;http://www.mittag.com.tw/image/catalog/Activities/2018_001_web_celebration/celebration_ad_web_banner_20180307_1.gif&quot; style=&quot;width: 1140px;&quot;&gt;&lt;b style=&quot;color: inherit; font-family: inherit;&quot;&gt;&lt;font color=&quot;#0000ff&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/b&gt;&lt;/h3&gt;&lt;h3&gt;&lt;b style=&quot;color: inherit; font-family: inherit;&quot;&gt;&lt;font color=&quot;#0000ff&quot;&gt;活動內容：&lt;/font&gt;&lt;/b&gt;&lt;/h3&gt;&lt;h4&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;為慶祝官網成立，即日起至2018年5月13日〈母親節〉前在mittag官網完成加入會員並下單購買，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;全品項皆享9折優惠，同時購買2件以上再加送勇敢項鍊乙條。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;可以順道將五月的母親節禮物一起先準備好...&lt;/font&gt;&lt;/h4&gt;&lt;p&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/p&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;b&gt;備註：&lt;/b&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;1. 首先，請您於mittag官網上完成簡單的加入會員。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;2. 優惠活動僅限於mittag官方網站(www.mittag.com.tw)下單，其餘入口網站不在此列。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;3. 活動時間(2018年5月13日)為購買之最後時間，若需於母親節前收到商品，請盡早下單；若有問題請告知。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;4. 選購之產品包含mittag品牌包裝（依產品類別不同，會有原木珠寶盒或真皮皮套的差異）、品牌保證卡、品牌提袋等…。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&amp;nbsp; &amp;nbsp; 詳細可&lt;/font&gt;&lt;a href=&quot;http://www.mittag.com.tw/index.php?route=information/information&amp;amp;information_id=9&quot; target=&quot;_blank&quot; style=&quot;&quot;&gt;&lt;font style=&quot;background-color: rgb(255, 255, 0);&quot; color=&quot;#0000ff&quot;&gt;連結mittag品牌包裝&lt;/font&gt;&lt;/a&gt;&lt;font color=&quot;#636363&quot;&gt;。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;5. 贈品勇敢項鍊也為手工製作與拋光，詳細可&lt;/font&gt;&lt;a href=&quot;http://www.mittag.com.tw/index.php?route=product/product&amp;amp;path=18&amp;amp;product_id=211&quot; target=&quot;_blank&quot; style=&quot;background-color: rgb(255, 255, 0);&quot;&gt;&lt;font color=&quot;#0000ff&quot;&gt;連結商品&lt;/font&gt;&lt;/a&gt;&lt;font color=&quot;#636363&quot;&gt;。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;6. 贈品勇敢項鍊包裝則以簡約包裝隨同購買產品一併出貨，恕不提供品牌包裝〈詳如以下圖示〉。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;img src=&quot;http://www.mittag.com.tw/image/catalog/Activities/2018_001_web_celebration/activity_20180310_simple_packaging.jpg&quot; style=&quot;width: 570px;&quot;&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;', 'celebration for mittag website readiness'),
(366, 'NL809', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL809/NL809.gif', 0, 1, 2750, 0, 0, '0.0', '0.0', '', '', '', '0.0', '40', '2018-03-20', '                                                            ', '0.0', 1, '1.1', '0.6', '2.2', '', 1, 1, 1, 1, 1, 3, '2018-03-20 21:30:50', '2018-03-20 21:44:09', '', '', 'tree a necklace'),
(367, 'BL807', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Bracelet(BL)/BL807/BL807.gif', 0, 1, 3550, 0, 0, '0.0', '0.0', '16', '', '', '0.0', '', '2018-03-20', '                                        ', '0.0', 1, '1.1', '0.6', '2.2', '', 1, 1, 1, 1, 1, 1, '2018-03-20 21:43:11', '2018-03-20 22:10:42', '', '', 'tree a bracelet'),
(368, 'NL810', '', '', '', '', '', '', 'Taiwan', '925銀', '1', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/Necklace(NL)/NL810/NL810.gif', 0, 1, 4950, 0, 0, '0.0', '0.0', '', '', '', '0.0', '45', '2018-03-20', '                                        ', '0.0', 1, '2.5', '0.8', '3.5', '', 1, 1, 1, 1, 1, 4, '2018-03-20 21:56:11', '2018-03-20 22:09:44', '', '', 'cross c necklace'),
(369, 'BB807', '', '', '', '', '', '', 'Taiwan', '925銀', '0', '', '', '', '', '', '', 1, 7, 0, 0, 'catalog/BABY(BB)/BB807/BB807_03_S.jpg', 0, 1, 1750, 0, 0, '0.0', '0.0', '12', '', '', '0.0', '', '2018-03-20', '                    ', '0.0', 1, '0.9', '0.3', '1.7', '', 1, 1, 1, 1, 1, 2, '2018-03-20 22:08:20', '0000-00-00 00:00:00', '', '', 'bb pomelo bracelet');

-- --------------------------------------------------------

--
-- 資料表結構 `oc_product_attribute`
--

CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_product_description`
--

CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(132, 1, '火柴戒指', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;在設計師完成這項設計的試戴期間，總是招來驚艷的目光，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot; face=&quot;Arial&quot;&gt;因為細緻中帶有強烈的個人風格設計，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot; face=&quot;Arial&quot;&gt;許多人在當時看到就下了訂單，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot; face=&quot;Arial&quot;&gt;這可說是mittag的未上市熱門款呢…&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot; face=&quot;Arial&quot;&gt;未來的一年，也要用力幫自己擦出火花，點亮未來喔~&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_RG301_matches_ring', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(148, 1, '希望種子手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;用深藏在內部的love孕育seed of hope！&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_BL303_seed_of_hope_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(134, 1, '盤尾蛇戒指', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;本款是mittag設計師非常喜愛的作品；&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font face=&quot;Arial&quot; color=&quot;#636363&quot;&gt;遠看像是鑲上了寶石的吸引目光焦點，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font face=&quot;Arial&quot; color=&quot;#636363&quot;&gt;近看才發現是生動蜿蜒的snake zwei。&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_RG303_snake_zwei_ring', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(87, 1, '41111111111111111111111', '', '', '11111111111', '', ''),
(158, 1, '天秤項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;開口或沉默？&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;行動或靜止？&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;轉彎或直行？&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;總是像天秤一樣左右搖擺，難以抉擇…&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL314_libra_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(159, 1, '甜甜圈zwei手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;這麼sweet的東西怎麼可以獨享呢！&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;當然要把它戴出門跟大夥一同分享囉~~&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_BL309_donuts_zwei_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(157, 1, '十字架eins項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;如果你跟我們一樣欣賞朱銘，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;相信你也會喜歡這款cross eins。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;本款可以兩面配戴，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;鏡面或刻面就依服裝或心情決定囉…&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL312_cross_eins_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(139, 1, '逗號項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;我們的故事就像逗號的出現，到此刻只寫了一小部分，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font face=&quot;Arial&quot; color=&quot;#636363&quot;&gt;還有許多未完待續的情節發展，等待我們共同攜手寫下去...&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_NL304_comma_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(133, 1, '好奇蛇戒指', '&lt;h4 style=&quot;&quot;&gt;&lt;font color=&quot;#636363&quot;&gt;好奇的揚首顧盼，外頭的世界究竟有多寬廣，多繽紛呢？&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_RG302_snake_eins_ring', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(140, 1, 'bb笑心手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;一個咧嘴而笑的心，看了就有好心情！&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;寶貝戴上了它感覺也將快樂開心都一同戴上了~&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_BB301_bb_laughing_heart_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(141, 1, 'bb希望種子手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;寶貝就像一顆種子，希望它怎麼長成就要怎麼栽培。&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font face=&quot;Arial&quot; color=&quot;#636363&quot;&gt;用心許個願，讓這顆希望種子成長為挺拔、堅定、可靠的大樹！&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_BB302_bb_seed_of_hope_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(142, 1, 'bb元寶山手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;想祝福寶貝有個富裕的未來，無論是財富、知識、健康、幸福、愛…，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font face=&quot;Arial&quot; color=&quot;#636363&quot;&gt;就許一個wealthy mountain給寶貝吧！&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_BB303_bb_wealthy_mountain_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(143, 1, 'bb德國結手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;愛情與麵包不能兩全？&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font face=&quot;Arial&quot; color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font face=&quot;Arial&quot; color=&quot;#636363&quot;&gt;可以！德國結麵包辦到了！&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font face=&quot;Arial&quot; color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font face=&quot;Arial&quot; color=&quot;#636363&quot;&gt;愛心的美貌外表、麵包的務實用途，中間打個結讓彼此牢牢繫住。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font face=&quot;Arial&quot; color=&quot;#636363&quot;&gt;從此愛情與麵包再也不分離…&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_BB304_bb_brezel_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(144, 1, 'bb無限8手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;剛出生的寶寶要送給他/她怎樣的一個吉祥物呢？&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;當然是有無限祝福意義的無限8〈無限發〉手鍊囉~&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_BB305_bb_infinity_snake_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(145, 1, '德國結項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;愛情與麵包不能兩全？&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;p&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/p&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt; 可以！德國結麵包辦到了！&lt;/font&gt;&lt;/h4&gt;&lt;p&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/p&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;愛心的美貌外表、麵包的務實用途，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;中間打個結讓彼此牢牢繫住，從此愛情與麵包再也不分離…&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL308_brezel_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(147, 1, '笑心手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;一個咧嘴而笑的心，看了就有好心情！&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;戴上了它感覺也將快樂開心都一同戴上了~&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_BL302_laughing_heart_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(149, 1, '元寶山手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;無論是財富,知識,健康,幸福,愛…，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;就許一個wealthy mountain給自己吧！&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_BL304_wealthy_mountain_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(150, 1, '德國結手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;愛情與麵包不能兩全？&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;可以！德國結麵包辦到了！&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;愛心的美貌外表、麵包的務實用途，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;中間打個結讓彼此牢牢繫住，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;從此愛情與麵包再也不分離…&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_BL305_brezel_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(138, 1, '蜂窩項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;戴上honeycomb出門總會有人興奮的說：「這不是小熊維尼的最愛嗎？ 」&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font face=&quot;Arial&quot; color=&quot;#636363&quot;&gt;哦！也許，但是確定的是honeycomb可是mittag某設計師的最愛喔...&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font face=&quot;Arial&quot; color=&quot;#636363&quot;&gt;Honeycomb的製作過程是相對的耗時及繁瑣，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font face=&quot;Arial&quot; color=&quot;#636363&quot;&gt;從拉銀線開始再手工慢慢捲曲成型，不斷的再退火再整型，才會出現蜂窩造型，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font face=&quot;Arial&quot; color=&quot;#636363&quot;&gt;之後還必須將“每一條”銀線的間縫處焊接牢，焊完一面再焊牢另一面，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font face=&quot;Arial&quot; color=&quot;#636363&quot;&gt;最後檢查完再焊第三面補強.。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font face=&quot;Arial&quot; color=&quot;#636363&quot;&gt;處理完後再一根一根銀線仔細拋光好，才會將honeycomb交到您手上.。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font face=&quot;Arial&quot; color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font face=&quot;Arial&quot; color=&quot;#636363&quot;&gt;所以，世界上是不會有長得一模一樣的honeycomb喔...&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_NL302_honeycomb_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(151, 1, '無限8手鍊', '&lt;h4&gt;無窮或無限大，數學符號為&lt;span style=&quot;color: rgb(99, 99, 99); font-size: 12pt; font-family: 新細明體, serif;&quot;&gt;∞&lt;/span&gt;&lt;span style=&quot;color: rgb(99, 99, 99); font-family: inherit;&quot;&gt;，&lt;/span&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;span style=&quot;font-family: 新細明體, serif; font-size: 12pt;&quot;&gt;∞&lt;/span&gt;就像不同視野看到的數字8有著“無限8，無限發”的美意。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&quot;To infinity and beyond！到達無窮，超越無窮！&quot;&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_BL306_infinity_snake_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(152, 1, '無限8項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;無窮或無限大，數學符號為&lt;span style=&quot;font-size: 12pt; font-family: 新細明體, serif;&quot;&gt;∞&lt;/span&gt;&lt;span style=&quot;font-family: inherit;&quot;&gt;，&lt;/span&gt;&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;span style=&quot;font-size:12.0pt;mso-bidi-font-size:11.0pt;\r\nfont-family:&amp;quot;新細明體&amp;quot;,serif;mso-ascii-theme-font:minor-fareast;mso-fareast-theme-font:\r\nminor-fareast;mso-hansi-theme-font:minor-fareast;mso-bidi-font-family:&amp;quot;Times New Roman&amp;quot;;\r\nmso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;mso-fareast-language:\r\nZH-TW;mso-bidi-language:AR-SA&quot;&gt;∞&lt;/span&gt;就像不同視野看到的數字8，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;有著&quot;無限8，無限發&quot;的美意... &lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&quot;To infinity and beyond！到達無窮，超越無窮！&quot;&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL309_infinity_snake_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(153, 1, '甜甜圈項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;這麼sweet的東西怎麼可以獨享呢？&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;當然要把它戴出門跟大夥一同分享囉~~&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL310_donuts_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(155, 1, '星果項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;曾有外國朋友說：「台灣有兩種水果好可愛，一種像星星,一種像鈴鐺」；&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;想了好久...&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;啊！原來是楊桃跟蓮霧！！！&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;既然如此，一定要戴上可愛的star fruit切片來宣示一下囉~&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL311_star_fruit_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(137, 1, '豆子心項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;一顆如豆子般鼓鼓的、飽飽的心，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;裏頭裝的是滿滿的思念與愛嗎？&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL301_bean_heart_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(156, 1, '星果手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;曾有外國朋友說：「台灣有兩種水果好可愛，一種像星星，一種像鈴鐺」；&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;想了好久...&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;啊！原來是楊桃跟蓮霧！！！&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;既然如此，一定要戴上可愛的star fruit切片來宣示一下主權囉~&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_BL308_star_fruit_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(135, 1, '蜿蜒蛇戒指', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;整個戒身都是上下蜿蜒弧度，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;加上半霧面半鏡面的表面對比處理，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;讓此款充滿張力的設計更增生命力。&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_RG304_snake_drei_ring', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(160, 1, '甜甜圈戒指', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;這麼sweet的東西怎麼可以獨享呢！&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;當然要把它戴出門跟大夥一同分享囉~&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;甜甜圈戒指在打樣試戴階段就受到許多注目禮與詢問。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;每一個甜甜圈出門前都經過非常繁複的工序才會到您手上喔…&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_RG305_donuts_ring', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(161, 1, '甜甜圈瀑布項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;這麼sweet的東西怎麼可以獨享呢？&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;當然要把它戴出門跟大夥一同分享囉~~&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;2個甜甜圈串起的項鍊，好像瀑布般的滑出夢幻甜點，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;一圈又一圈，連綿不絕的...&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;您還可以發揮創意用不同的方式穿戴它喔~~&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL316_donuts_waterfall_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(162, 1, '十字架a項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;光亮奪目的十字架，內部隱藏著深刻的切紋，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;如同被隱藏在最底層的情感，深刻而內斂..&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL317_cross_a_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(163, 1, '十字架b項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;正反兩面皆可配戴的十字架，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;有鏡面與刻面的佩戴方式可選擇，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;可依服裝或心情決定囉…&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL318_cross_b_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(164, 1, '輕旅行項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;厭煩了一成不變的日子？&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;想提起包包就出發旅行去？&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;想一個人短暫流浪的時候就戴上travel light，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;一起到陽光氾濫的國境之南輕旅行吧！&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_NL320_travel_light_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(165, 1, '十字地球a項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&quot;天下的水要聚在一處，使旱地露出來。事就這樣成了。神稱旱地為地，稱水的聚處為海。&quot; (聖經創世記)&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL322_cross_earth_a_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(166, 1, '十字地球b項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&quot;天下的水要聚在一處，使旱地露出來。事就這樣成了。神稱旱地為地，稱水的聚處為海。&quot; (聖經創世記)&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL323_cross_earth_b_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(167, 1, '逐冰項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;炎炎夏日如何消暑？&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;戴上chasing ice來一趟逐冰之旅為自己降溫一下吧！&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;不規則的多角切面，讓您怎麼轉都bling bling！&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_NL324_chasing_ice_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(168, 1, '微笑鞦韆項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;童年的嬉戲，您最懷念哪一樣？&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;對我們來說，是鞦韆！&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;從小玩到大，到出社會以後每每看到鞦韆還是要用力盪一下，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;因為鞦韆勾起的回憶是純真的，對未來充滿期待的童心...&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;所以既使現在已經&quot;不小&quot;了，還是會奮力盪鞦韆！&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;提醒自己還有夢想，提醒自己不要忘記保有赤子之心。&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL327_smile_swing_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(169, 1, '逐冰手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;氣溫頻頻飆新高，盛夏如何消暑呢？&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;戴上chasing ice來一趟逐冰之旅為自己降溫一下吧！&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;不規則的多角切面設計，讓您怎麼轉都bling bling！&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_BL310_chasing_ice_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(170, 1, '爆破項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;充滿爆炸感的粗曠設計，搭配45cm黑色真皮繩+925純銀扣頭；&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;Polo衫型男必備超man性格單品。&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL328_blast_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(173, 1, '超能戒指', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;戴上Super ring就感覺像超人一樣擁有無限可能！&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;簡約的設計讓男生或女生都可以輕易的super super喔~&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_RG306_Super_ring_超能戒指', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(172, 1, '誰起司項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;以浮雕手法刻出起司切片，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;刻意留下起司切片刀紋，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;看了就好想咬一口！&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;戴上&quot;say cheese&quot;記得要露出拍照時的招牌甜美笑容喔~&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL329_say_cheese_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(174, 1, '紙飛機項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;小時候和同伴們比賽誰折的紙飛機飛得高飛得遠，總會朝著紙飛機頭哈口氣，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;好像這樣就會為紙飛機注入生命與能量，可以勇敢的迎風飛翔~&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;疲累的時候，也別忘記幫自己哈口氣，加個油喔！&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_NL330_paper_plane_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(175, 1, '指紋戒指', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;指紋的獨一無二代表每個獨特的個體。&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;請舉起你的手與我們一同宣示：「我，獨一無二！我，無可取代！」&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_RG307_finger_print_ring', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(176, 1, '微笑鞦韆手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;童年的嬉戲，您最懷念哪一樣？&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;p&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/p&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;對我們來說，是鞦韆！&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;從小玩到大，到出社會以後每每看到鞦韆還是要用力盪一下，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;因為鞦韆勾起的回憶是純真的，對未來充滿期待的...&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;所以既使現在已經&quot;不小&quot;了，還是會奮力盪鞦韆，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;提醒自己還有夢想，提醒自己不要忘記保有赤子之心。&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_BL311_smile_swing_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(177, 1, '結戒指', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;老實說，knot ring並不是新設計，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;只是mittag的米米設計師實在太喜歡戴它了，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;總是焦不離孟,孟不離焦的出席各種場合...&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;既然這麼喜歡，當然不能獨享，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;邀請大夥來發覺knot ring令人迷戀的原因~&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_RG308_knot_ring', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(178, 1, '夏日麥田項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;這幾天的天氣，就是我們心中summer field的景象；&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;絢麗的陽光，涼爽的溫度，微微的風；&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;就連夏日麥田都被風吹拂得舒服的微傾著頭，自在的享受當下...&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL332_summer_field_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(179, 1, '羽毛項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;設計師大山的巧思，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;一邊是羽毛紋濃密排列的質感，一邊是光可鑑人的鏡面處理，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;衝突的對比,讓人想移開視線都難...&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;正反兩面都可以配戴，要不就看當天的風把羽毛吹向哪一邊囉~&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL333_feather_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(180, 1, '逐冰戒指', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;氣溫又升高，夏末秋初如何消暑呢？&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;戴上chasing ice來一趟逐冰之旅為自己降溫一下吧！&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;不規則的多角切面設計，讓您怎麼轉都bling bling！&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_RG309_chasing_ice_ring', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(181, 1, '水晶吊燈項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;有甚麼比夢幻奢華的水晶吊燈，更適合搭配浪漫的燭光晚餐呢？&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;周五的夜晚，就是要戴上它去約會！&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL334_chandelier_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(182, 1, '盾牌項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;盾牌是保護裝備的一種，主要用來阻擋外來攻擊。&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;表面的盾徽設計傳達了身分、階級、血統、功勳等訊息。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;mittag的盾徽設計採用獅子圖騰，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;因為獅子代表的是慷慨、愛、勇氣、智慧、正義、權力、富貴等許多避邪納吉的涵義；&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;一次就把所有祝福都無保留的送給認真、永不放棄的你。&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_NL335_shield_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(183, 1, '眼睛手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;這個設計的演變其實是一個美麗的意外，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;原先的設計是一片極簡的小葉子，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;但是在處理背面的時候，設計師興之所至的隨它的型狀做了一隻眼睛，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;後來越看越有趣的反而讓眼睛喧賓奪主搶了葉子的主位...&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;眼睛或葉子，兩面都可以配戴，感覺大不同喔！&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_BL312_eye_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(184, 1, '指紋項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;指紋的獨一無二代表每個獨特的個體。&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;請挺起胸與我們一同宣示：&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;「我，獨一無二！我，無可取代！」&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL336_finger_print_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(185, 1, '貝殼項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;貝殼，是傳遞浪漫的信物；&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;在海邊拾起貝殼時總覺得這是不是誰從遠方捎來問候…&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;是的，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;我們在貝殼項鍊裏藏了情書，貝殼的中心點是一顆愛心，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;外圍是許多數字9組成的螺旋，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&quot;愛你99&quot;就是mittag偷偷為貝殼項鍊注入的隱藏信息...&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_NL337_shell_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(186, 1, 'V項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;V代表甚麼？&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;勝利(victory)？&amp;nbsp; &amp;nbsp; 情人(valentine)？&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;維納斯(Venus)？&amp;nbsp; &amp;nbsp; 吸血鬼(vampire)？&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;V有各種可能...&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;對我們來說，V像是一個愛心，有著對稱的美，也有著開心的笑臉...&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;正反兩面做不同質感處理，都可以配戴，感覺大不同喔！&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_NL338_V_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(187, 1, '火車手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;童年，快樂那麼垂手可得，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;手裡一部小火材盒汽車就可以環遊世界；&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;長大了，環遊世界的夢想還存在嗎？&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;喚醒你的夢想，環遊世界從環島開始，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;和我們一起搭上環島火車，先好好走遍自家土地，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;就會發現台灣，其實很美。&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_BL313_train_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(188, 1, '眼睛項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;這個設計的演變其實是一個美麗的意外，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;原先的設計是一片極簡的小葉子，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;但是在處理背面的時候，設計師興之所至的隨它的型狀做了一隻眼睛，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;後來越看越有趣的反而讓眼睛喧賓奪主搶了葉子的主位...&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;眼睛或葉子，兩面都可以配戴，感覺大不同喔！&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL339_eye_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(189, 1, '可圈可點項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;小時寫作文，如果老師覺得句子寫得可圈可點，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;就會在句子旁邊用紅色毛筆畫下一整串的圈圈，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;那真是對寫作人最棒的鼓舞了！！&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;有空別忘了時常幫自己或身旁的人也&quot;可圈可點&quot;一下，注入動力喔~&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;此設計有著書寫書法的揮毫感，簡約又詩意！&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_NL340_circle_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(190, 1, '思念手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;鈕扣，總令人思念...&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;p&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/p&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;思念母親一針一線的為我們縫補衣扣；&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;思念好久不見的她/他衣領上有著特別的扣子。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;我們收集每一件舊衣拆下來的鈕扣，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;收集每一件衣裳陪伴我們度過的時光，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;收集每一個鈕扣帶給我們的故事；&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;每一個鈕扣都是回憶與思念…&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_BL314_yearning_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(191, 1, '熱氣球項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;戴上它，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;心情也不知不覺的跟著熱氣球一樣high上天~&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;blue mood，速速退散！&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL342_balloon_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(192, 1, 'V手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;V代表甚麼？&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;勝利(victory)？情人(valentine)？&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;維納斯(Venus)？吸血鬼(vampire)？&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;V有各種可能...&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;對我們來說，V像是一個愛心，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;有著對稱的美，也有著開心的笑臉...&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;正反兩面做不同質感處理，都可以配戴，感覺大不同！&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_BL315_V_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(193, 1, '火車項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;童年，快樂那麼垂手可得，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;手裡一部火柴盒小汽車就可以環遊世界；&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;長大了，環遊世界的夢想還存在嗎？&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;喚醒你的夢想，環遊世界從環島開始，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;和我們一起搭上環島火車，先好好走遍自家土地，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;會發現台灣，其實很美很美。&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_NL343_train_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(194, 1, '逗號a項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;逗號，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;是稍作休息，是為了更長的句子做準備；&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;而我們的故事也只寫到了一半，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;還有許多未完待續的未來，等著我們一起寫下去…&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_NL344_comma_a_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(195, 1, '思念項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;鈕扣，總令人思念...&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;思念母親一針一線的為我們縫補衣扣；&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;思念好久不見的她/他衣領上有著特別的扣子，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;我們收集每一個鈕扣帶給我們的故事與思念，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;回憶每一件衣裳伴我們度過的時光…&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_NL345_yearning_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(196, 1, '永恆男戒', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;越簡單的設計越永恆，Eternal, starts from here...&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;永恆，從這一刻開始...&amp;nbsp;&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_RG310_eternal_m_ring', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(197, 1, '永恆女戒', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;越簡單的設計越永恆，Eternal, starts from here...&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;永恆，從這一刻開始...&amp;nbsp;&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_RG311_eternal_f_ring', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(198, 1, 'bb火車手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;童年，快樂那麼垂手可得，手裡一部小火材盒汽車就可以環遊世界；&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;長大了，環遊世界的夢想還存在嗎？&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;幫寶貝戴上追逐夢想的BB火車手鍊，一起搭上環遊世界的夢想列車吧！&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;本款手鍊結尾可幫寶貝選擇小鈴鐺或是小銀片吊飾~&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_BB307_BB_train_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(199, 1, '帆船項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;其實，你該知道，不只男人的心底住了一個流浪的靈魂…&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;揚帆而起，乘風破浪，開啟一趟屬於自己的冒險…，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;即刻───啟程.&amp;nbsp;&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_NL347_sailboat_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(200, 1, '豌豆夾項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;豌豆夾有著&quot;豐收&quot;的意涵，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;我們想藉此祝福大家有個豐收的旅程，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;無論是在生活上、在家庭裡、在工作上、在社交圈、在興趣創作中，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;都能夠多產、豐收、無虞...&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL348_peapod_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(201, 1, '堅毅男戒', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;六邊型是最堅固的結構，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;所以我們設計最堅固的firm ring給鋼鐵般意志的你；&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;永不妥協，永不放棄，永遠只做自己。&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_RG313_firm_m_ring', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(202, 1, '堅毅女戒', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;六邊型是最堅固的結構，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;所以我們設計最堅固的firm ring給鋼鐵般意志的妳；&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;永不妥協，永不放棄，永遠做自己。&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_RG314_firm_f_ring', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(203, 1, 'V a項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;V代表甚麼？&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;p&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/p&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;勝利(victory)？情人(valentine)？&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;維納斯(Venus)？吸血鬼(vampire)？&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;V有各種可能...&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;對我們來說，V像是一個愛心，有著對稱的美，也有著開心的笑臉...&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;正反兩面做不同質感處理，都可以配戴，感覺大不同！&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_NL350_V_a_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(204, 1, '飛機項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;微微往右上傾的設計，是暗示正要起飛的期待心情...&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;正要起飛的戀情，正要起飛的事業，正要起飛的旅程，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;樣樣都是令人期待的心情。&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_NL351_plane_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(205, 1, '幸運草項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;你知道這四片葉子各代表什麼意思嗎？&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;前三片葉子各代表love(愛情)、faith(信仰)和hope(希望)，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;稀少而珍貴的第四片葉子代表luck(幸運)。&lt;/font&gt;&lt;/h4&gt;&lt;p&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/p&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;所以...&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;找到屬於你的lucky charm了嗎？&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL354_lucky_charm_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(206, 1, '點項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;黑色，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;是低調奢華的顏色，不容忽視的強烈存在感；&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;如標點符號的句點，&quot;small but powerful！&quot;。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;又如同奧黛麗赫本的出現，優雅而經典。&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_JNL401_dot_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(207, 1, '豆苗項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;新的一年，你許下願望了嗎？&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;每一個念頭就像一顆種子，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;你只要將它埋到土裡，動手澆水，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;希望就會發芽成豆苗，夢想也跟著慢慢成真…&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_NL401_seedling_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(208, 1, '鹿角f項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;鹿，有許多好的意涵；&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;鹿在戰鬥時能夠勇猛應對，追求勝利。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;鹿也象徵著長壽，因此被許多長輩喜愛著。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;鹿角代表能將事務加以條理化、分析；&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;因此帶來靈感、理想，象徵充滿活力的人。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;這麼多優點，怎能不趕快帶一個呢？&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_NL402_antlers_f_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(209, 1, '鹿角m項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;比起&quot;antlers f&quot;的柔和，這款(antlers m)是相對剛硬的設計。&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;鹿，有許多好的意涵；&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;鹿在戰鬥時能夠勇猛應對，追求勝利。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;鹿也象徵著長壽，因此被許多長輩喜愛著。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;鹿角代表能將事務加以條理化、分析；&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;因此帶來靈感、理想，象徵充滿活力的人。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;這麼多優點，怎能不趕快帶一個呢？&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_NL403_antlers_m_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(210, 1, '點耳環', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;黑色，低調奢華的顏色。&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;是不容忽視的強烈存在感；&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;如標點符號的句點，&quot;small but powerful&quot;！&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt; 又如同奧黛麗赫本的出現，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;優雅而經典...&lt;/font&gt;&lt;/h4&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;', '', 'mittag_JER401_dot_earrings', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(367, 1, '樹木a手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;直挺的佇立在地球上，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;樹皮上累積的是歲月走過的痕跡...&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;謝謝大樹，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;辛苦撐起重擔，成為我們最大的靠山。&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_BL807_tree_a_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(211, 1, '勇敢項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;隨著閱歷的增長，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;很多時候會不自覺的放棄某些很美好的情感...&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;隨時提醒自己：&lt;/font&gt;&lt;/h4&gt;&lt;p&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/p&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;dare to hope, to believe, to love!&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt; 勇敢希望，勇敢相信，勇敢去愛！&lt;/font&gt;&lt;/h4&gt;&lt;p&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/p&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;每一個墬子都是手工個別敲字喔~&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_NL404_brave_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(212, 1, '颱風眼戒指', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;颱風來時，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;大家都謹慎的做好各項防颱措施以防範它所帶來的災害。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;但是颱風眼區域內通常無狂風亦無暴雨，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;天上只有薄薄的雲，還能看見太陽或星星。 &lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;所以，您說說看這是不是最好的護身符呢？&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;當尾戒也超合適喔...&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_RG401_typhoon_eye_ring', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(213, 1, '幸運草手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;你知道這四片葉子各代表什麼意思嗎？&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;前三片葉子各代表love(愛情)、faith(信仰)和hope(希望)。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;稀少而珍貴的第四片葉子代表luck(幸運)，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;所以...&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;找到屬於你的lucky charm了嗎？&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_BL401_lucky_charm_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(214, 1, '馬蹄鐵m項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;馬代表了力量與活力，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;收到馬蹄鐵形的禮物時也會因此獲得好運連連的祝福。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;現在，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;立馬為自己戴上幸運馬蹄讓自己馬力十足，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;一馬當先！&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_NL405_horseshoe_m_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(215, 1, '加乘耳環', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;戴在耳垂上，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;有時自然呈現&quot;加號&quot;，有時呈現&quot;乘號&quot;，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;又加法又乘法，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;讓新的一年，做什麼都事半功倍，加倍豐收！&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_ER401_+x_earrings', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(216, 1, '圓滿項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;Everything is completed when you are with me.&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;p&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/p&gt;&lt;h4&gt; &lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;兩個各自獨立飽滿的圓緊緊相扣在一起，構成了圓圓滿滿的祝福。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;我們，就是要圓圓滿滿的！&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL406_complete_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(217, 1, '勇敢手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;隨著閱歷的增長，很多時候會不自覺的放棄某些很美好的情感...&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;隨時提醒自己：&lt;/font&gt;&lt;/h4&gt;&lt;p&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/p&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;dare to hope, to believe, to love! &lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;勇敢希望，勇敢相信，勇敢去愛！&lt;/font&gt;&lt;/h4&gt;&lt;p&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/p&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;每一個墬子都是手工個別敲字喔~&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_BL402_brave_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(218, 1, '眼睛耳環', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;這個設計的演變其實是一個美麗的意外，&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;原先的設計是一片極簡的小葉子，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;但是在處理背面的時候，設計師興之所至的隨它的型狀做了一隻眼睛，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;後來反而讓眼睛喧賓奪主搶了葉子的主位...&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;眼睛或葉子，兩面都可以配戴，感覺大不同喔！&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;耳環可以選擇眼睛為正面或反面，或著一正一反喔~&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_ER402_eye_earrings', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(219, 1, '點手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;我們喜歡黑色的點綴，如句點般的精準，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;黑馬般的爆發，奧黛麗赫本般的優雅。&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_JBL401_dot_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(220, 1, '逗號耳環', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;我們的故事就像逗號的出現，只寫了一小部分，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;還有許多未完待續的情節發展，等待我們共同攜手寫下去…&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_ER403_comma_earrings', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(221, 1, '小慢活項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;窗邊的小傢伙，用自己的步伐慢慢走著，&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;還默默的用觸角比著勝利...&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;是不是在宣示牠比我們更懂得活在當下！&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_NL407_slow_living_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(222, 1, '大慢活項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;窗邊的小傢伙，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;用自己的步伐慢慢走著，還默默的用觸角比著勝利...&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;是不是在宣示牠比我們更懂得活在當下？&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_NL408_slow_living_G_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(223, 1, '圓滿手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;Everything is completed when you are with me.&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;兩個各自獨立飽滿的圓緊緊相扣在一起，構成了圓圓滿滿的祝福。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;我們，就是要圓圓滿滿的在一起！&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_BL403_complete_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(224, 1, '雪花手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;雪花，一種美麗而規律的六角型結晶體。&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;有句話說&quot;瑞雪兆豐年&quot;，適時的冬雪預示著豐收之年；&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;快戴上雪花手鍊，許下來年豐收的心願！&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_BL404_snowflake_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(226, 1, '點戒指', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;我們喜歡黑色的點綴，如句點般精準，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;奧黛麗赫本般優雅，黑馬般爆發。&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_JRG401_dot_ring', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(227, 1, '小大人耳環', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;這兩個可愛的小大人，駕著一葉輕舟，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;是要去哪個世外桃源呢？&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;還記得慾望城市裡的mr. big？ &lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;在這裡，你也可以擁有屬於你自己的mr. big。&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_ER405_Mr_big', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(228, 1, '雲朵項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;藍天，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;白雲總讓人的心情一下子放鬆開來。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;當情緒揪成一團時，不妨抬頭看看廣闊的天空與隨風起舞的雲朵...&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;everything is going to be alright.&lt;/font&gt;&lt;/h4&gt;&lt;p&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/p&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;有注意到兩朵雲的處理技法是相異的嗎？&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;一朵是亮面，一朵是顆粒面喔~&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL410_cloud_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(229, 1, '點a手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;我們喜歡黑色的點綴。&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;黑色，是不容忽視的強烈存在感；&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;如句點般精準，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;奧黛麗赫本般優雅，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;黑馬般爆發。&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_JBL402_dot_a_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(230, 1, '牽手戒指', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;十指緊握，是一種歸屬感。&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;年長一輩的人很含蓄，稱自己的另一半叫做&quot;牽手&quot;，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;蘊意很美，不離不棄的相知相守。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;內斂、深沉，不說出口的溫柔。&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_RG402_holding_hands_ring', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(231, 1, '指紋耳環', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;指紋的獨一無二代表每個獨特的個體。&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;請挺起胸與我們一同宣示：&lt;/font&gt;&lt;/h4&gt;&lt;p&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/p&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&quot; 我，獨一無二！我，無可取代！&quot;&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_ER406_finger_print_earrings', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(232, 1, 'xxx項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;在西方書信的結尾，會在自己的名字後面加上oooxxx。&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;o代表著擁抱，x代表親吻，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;所以整個oooxxx的意思就上附上許多擁抱和親吻。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;因此，xxx項鍊就是kiss項鍊喔~&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL411_xxx_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(234, 1, '點點項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;我們喜歡黑色的點綴。&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;黑色，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;是不容忽視的強烈存在感；&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;如句點般精準，奧黛麗赫本般優雅，黑馬般爆發。&lt;/font&gt;&lt;/h4&gt;&lt;p&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/p&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;配置的36&quot;鍊長激發配戴創意,&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;可捲成單圈長項鍊或雙圈短項鍊,或著多圈手鍊喔~&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_JNL402_dots_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(235, 1, '魔鏡戒指', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;“Mirror Mirror on the Wall, Who Is the Fairest of Them All?”&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;戴上魔鏡戒指，這個問題的答案永遠是...&quot;自己&quot;；&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;因為戒指表面的鏡面反射實在是擠不進其他人了，呵呵&amp;nbsp; :P&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;也適合當超性格的尾戒配戴喔~&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_RG403_mirror_ring', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(236, 1, '雪花項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;雪花，一種美麗而規律的六角型結晶體。&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;有句話說&quot;瑞雪兆豐年&quot;，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;適時的冬雪預示著豐收之年；&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;快戴上雪花項鍊，許下來年豐收的心願！&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_NL412_snowflake_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(237, 1, '如意鎖手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&quot;鎖&quot; 在古代是吉利的象徵，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;代表對健康、財富與長壽的祈願。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;如意鎖寓意長命百歲、吉祥如意，是極受歡迎的護身符。 &lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;mittag的如意鎖英文品名取作good lock，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;直譯&quot;好鎖&quot;，諧音為good luck，祝&quot;好運&quot;喔~ &lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;用good lock鎖住夢想與希望，留住美好的事物和情感~&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_BL405_good_lock_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(238, 1, '圖釘戒指', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;像是在辦公室的partition上，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;用圖釘將重要事項釘在顯眼處，提醒自己不能忘記一般...&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;有甚麼事是在你心裡一直不願忘記的？&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;有甚麼人是你想把他牢牢釘在心上的？&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_RG404_thumbtack_ring', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(239, 1, '馬蹄鐵f項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;馬代表了力量與活力，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;收到馬蹄鐵形的禮物時也會因此獲得好運連連的祝福。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;現在，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;立馬為自己戴上幸運馬蹄讓自己馬力十足，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;一馬當先！&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_NL413_horseshoe_f_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(240, 1, '軌道項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;時間就像是單向軌道，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;規律的、默默的往前行駛；&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;軌道上的片片時刻所堆積起來的，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;是珍藏的回憶與故事。&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL414_rail_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(241, 1, '葉子耳環', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;不對稱的設計，一直是我們的心頭好。&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;本款除了不對稱之外，還不成對!?&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;一組三個不同的設計所組成的葉子耳環，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;非但不突兀還相處的超融洽。&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_ER407_leaves_earrings', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(242, 1, '點a戒指', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;戒身設計如豎琴般去拱著寶石臺座，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;一種希臘式的浪漫典雅正悄悄的從指尖透露出來...&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_JRG402_dot_a_ring', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(243, 1, '如意鎖項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;如意鎖寓意長命百歲,吉祥如意，是極受歡迎的護身符。&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;mittag的如意鎖英文品名取作good lock，直譯&quot;好鎖&quot;，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;諧音為good luck，祝&quot;好運&quot;喔~ &lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;用good lock鎖住夢想與希望，留住美好的事物和情感~&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_NL415_good_lock_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(244, 1, '山稜戒指', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;行至水窮處，坐看雲起時。&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;我也許無法改變山的高度，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;但是我可以選擇觀看山的角度。&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_RG405_ridge_ring', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(245, 1, '山稜m戒指', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;人生像爬山，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;就在以為已經到山頂上了，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;才發現前面還有好多高低起伏的山要繼續走下去。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;累了~ 稍停，歇口氣...&lt;/font&gt;&lt;/h4&gt;&lt;p&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/p&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;舉步~ 再接再厲...&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_RG406_ridge_m_ring', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(246, 1, '山稜f戒指', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;像是走在山稜上，一邊向陽，一邊背陽；&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;像是每件事情都一體兩面。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;停下腳步，轉身，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;看到~ 全然不同的景緻。&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_RG407_ridge_f_ring', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(248, 1, '雪花耳環', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;戴在耳垂上，隨著耳勾跟著身體的律動而搖擺，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;像落下的片片雪花，想不令人注意都難...&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_ER408_snowflake_earrings', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(251, 1, '心跳項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;心跳總是誠實訴說著開不了口的話語…&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;如果，沒有言語，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;我們是不是能更了解彼此？&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL417_heartbeat_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(252, 1, '可圈可點戒', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;小時寫作文，如果老師覺得句子寫得可圈可點，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;就會在句子旁邊用紅色毛筆畫下一整串的圈圈，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;那真是對寫作人最棒的鼓舞了！！&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;有空別忘了時常幫自己或身旁的人也&quot;可圈可點&quot;一下，注入動力喔~&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;p&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/p&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;此設計有著書寫書法的揮毫感，簡約又詩意！&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_RG408_circle_ring', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(253, 1, '圖釘耳環', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;像是在辦公室的partition上，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;用圖釘將重要事項釘在顯眼處，提醒自己不能忘記一般...&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;有甚麼事是在你心裡一直不願忘記的？&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;有甚麼人是你想把他牢牢釘在心上的？&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_ER409_thumbtack_earrings', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(254, 1, '交會戒指', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;平行線是令人感傷的，因為永遠不會相逢。&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;而交會戒指是令人期待的，兩個不同方向前進的箭頭，在未來的某一點即將相會。&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_RG409_intersection_ring', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(255, 1, '木木項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;一棵樹是木，兩棵樹是木木。&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;如果你姓林，就必須擁有它；&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;如果你命中缺木，也必須擁有它(疑？)；&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;如果你愛地球，更必須擁有它。&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_NL419_trees_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(256, 1, '三環戒', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;由白金/玫瑰金/香檳金所組成的18K金三環戒，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;可以單獨戴一指當線戒，戴多指表現個性，或者全部戴一指顯現大器。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;多種穿戴法任你發揮~&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_RG410_triple_rings', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(257, 1, 'xxx手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;在西方書信的結尾，會在自己的名字後面加上oooxxx。&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;o代表擁抱，x代表著親吻，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;oooxxx的意思就是附上許多擁抱和親吻。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;所以，xxx項鍊就是kiss項鍊喔~&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_BL406_xxx_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(258, 1, '馬蹄鐵f手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;馬代表了力量與活力，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;收到馬蹄鐵形的禮物時也會因此獲得好運連連的祝福。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;現在，立馬為自己戴上幸運馬蹄讓自己馬力十足，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;一馬當先！&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_BL407_horseshoe_f_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(259, 1, '牙刺項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;帶刺不是為了要傷害別人，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;我只是想要保護自己…&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_NL420_thorn_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(260, 1, '矩框項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;回歸最原始的幾何圖型，一種令人莫名心安的穩定作用…&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;配戴時可隨意將矩框調整成水平或垂直，各顯風情..&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_NL421_rectangle_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(261, 1, '黑熊v項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;會不會跟我們一樣，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;每回看見台灣黑熊頸上的v就覺得好有型？&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;這下不用再羨慕，我們也可以優雅的戴上黑熊v了。&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL422_bear_v_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(262, 1, '矩框手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;不用誰來給我上框架。&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;我自己的框框我自己畫！&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_BL408_rectangle_beacelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(263, 1, '黑熊v手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;會不會跟我們一樣，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;每回看見台灣黑熊頸上的v就覺得好有型？&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;這下不用再羨慕，我們也可以優雅的戴上黑熊v了。&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_BL409_bear_v_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(264, 1, '方心項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;帶上方心請放心；我的芳心只屬於你…&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL701_square_heart_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(265, 1, '圓心項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;圓圓的、厚厚的心，&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;裝載的是我對你未曾減少的思念…&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL702_round_heart_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(266, 1, '寶石兔項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;像一顆圓圓的寶石，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;鏤空出兔子的影像；&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;像愛麗絲夢遊仙境一樣令人充滿想像...&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL703_gem_rabbit_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(267, 1, '芭蕾海星項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;海裡的星星，優雅的舞出芭蕾舞者的跳躍，隨興又自信。&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL704_ballet_starfish_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(268, 1, '方心手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;帶上方心請放心；我的芳心只屬於你…&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_BL701_square_heart_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(269, 1, '圓心手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;圓圓的，厚厚的心，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;裝載的是我對你未曾減少的思念…&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_BL702_round_heart_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(270, 1, '寶石兔手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;像一顆圓圓的寶石，鏤空出兔子的影像；&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;像愛麗絲夢遊仙境一樣令人充滿想像...&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_BL703_gem_rabbit_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(271, 1, '芭蕾海星手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;海裡的星星，優雅的舞出芭蕾舞者的跳躍，隨興又自信...&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_ballet_starfish_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(272, 1, '多肉愛心項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;能在乾旱的氣候下生長，仍有能力保存飽滿的水；&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;多肉愛心最能夠療癒我的心。&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL705_succulent_heart_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(273, 1, '多肉愛心手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;大自然的造物能力與美感總是令人讚嘆；&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;多肉愛心輕易的就能療癒我的心。&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_BL705_succulent_heart_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(274, 1, '三瓣項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;三等份切割一個圓，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;圓弧的光線反射讓你左邊，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;右邊怎麼看都閃閃發亮...&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL706_petals_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(275, 1, '三瓣手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;隨風起舞旋轉落下，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;隨身體律動折射光線，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;想不注視都難...&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_BL706_petals_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(276, 1, 'bb小雞手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;小雞是許多客戶要求開發的產品，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;主要是送給小寶寶的禮品，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;有著誕生與捧在手心上呵護的寓意。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;也有許多媽咪後來買了小雞手鍊送給自己，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;好讓自己與小寶貝帶著同樣的飾品。&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_BB701_bb_chick_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(366, 1, '樹木a項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;在值得紀念的日子，種下一棵樹，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;看著樹愈長大就代表紀念的日子愈長久愈珍貴。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;沒地方種樹時，就在自己胸口戴一棵樹，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;珍貴性不變，卻也能時時刻刻上心。&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL809_tree_a_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(277, 1, '小雞手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;小雞是許多客戶要求開發的產品，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;主要是送給小寶寶的禮品，有著誕生與捧在手心上呵護的寓意。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;也有許多媽咪後來買了小雞手鍊送給自己，好讓自己與小寶貝帶著同樣的飾品。&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_BL707_chick_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(278, 1, '小雞項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;小雞純真的模樣總是討喜，令人忍不住想一直看著、微笑著...&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL707_chick_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(279, 1, '羽毛戒指', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;一邊是羽毛濃密排列的紋路，一邊是光可鑑人的鏡面處理，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;衝突的對比，讓人想移開視線都難...&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_RG701_feather_ring', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(280, 1, '熱氣球a項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;讓簡約版的熱氣球帶你飛越邊界，四處遨遊...&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL708_balloon_a_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(281, 1, '檸檬項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;夏天，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;不能免俗的，就是要來杯檸檬切片加蜂蜜水，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;酸酸甜甜的，退暑好伴侶&lt;/font&gt;...&lt;/h4&gt;', '', 'mittag_NL709_lemon_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(282, 1, '檸檬手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;檸檬總讓人聯結初戀，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;青澀的、酸苦的、難忘的回憶...&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_BL708_lemon_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(283, 1, '蝴蝶結項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;在打結的同時是不是也將一些秘密給藏在心裡了呢？&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL710_bow_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(284, 1, '蝴蝶結手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;每回為禮物打蝴蝶結時總是帶著期待的心情，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;期待看到對方拆開禮物時充滿喜悅的表情，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;自己也就跟著開心不已...&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_BL709_bow_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(285, 1, '滴水戒指', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;滴水穿石是這個戒指的主要設計概念。&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;只要有恆心不斷努力，再困難的事都一定能完成。&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_RG702_drip_ring', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(286, 1, '方圓心耳環', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;可以自由選擇是一對方心或圓心，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;或是一方一圓所搭配而成的耳環喔~&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_ER701_hearts_earring', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(287, 1, '捲紙兔項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;童趣的捲紙裁剪出長長的耳朵，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;兔子的身影一躍而出…&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL711_paper_rabbit_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(288, 1, '捲紙兔手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;跳脫兔子墬飾的設計框架，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;用捲紙的概念勾勒出對兔子的想像…&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_BL710_paper_rabbit_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(289, 1, '鴨子項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;渾圓的鴨子有著穩重的安心感，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;穩定而毫不猶豫的往自己的目標前進。&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL712_duck_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(290, 1, '鴨子手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;不容小覷的自信，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;是鴨子與生俱來的可愛之處。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;無論遇上任何難題，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;都有信心跨越。&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_BL711_duck_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(291, 1, '德國結戒指', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;就像祈禱時雙手交叉的樣子，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;德國結麵包有著充滿想像的樣貌。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;中間打個結讓彼此牢牢繫住，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;從此愛情與麵包再也不分離…&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_RG703_brezel_ring', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(292, 1, '救生圈項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;有時候胸口悶得慌，覺得自己就要淹沒了，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;無助的伸手想要抓住救生圈？&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;每個人都需要一個情感的出口，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;才不會讓過於沉重的情緒淹沒自己…&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_NL713_lifebuoy_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(293, 1, '大象項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;大象忠厚溫順是我們最穩重的靠山，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;默默守護著我們獲得幸運和成功。&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL714_elephant_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(294, 1, '大象手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;大象力大無窮，卻性情溫和，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;是力量與和平的平衡點。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;又因象諧音「祥」，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;因此也被賦予了很多平安吉祥的寓意喔&lt;/font&gt;~&lt;/h4&gt;', '', 'mittag_BL712_elephant_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(295, 1, '鑽石心項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;鑽石般的俐落切割，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;讓這顆愛心簡潔到一句多餘的話都沒有...&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL715_diamond_heart_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(296, 1, '鑽石心手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;鑽石需要經過打磨才能展現她的美，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;銀飾也是一樣的。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;細心手工打磨拋光後才能放心讓它出門到新主人手中。&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_BL713_diamond_heart_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(297, 1, '突破戒指', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;整體內凹的設計，卻在其中一邊轉為外凸，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;提醒自己不要安逸於舒適圈，要勇於突破。&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_RG704_breakout_ring', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(298, 1, '小提琴項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;不僅外形優美，還有極具穿透力的動人音色。&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;內外皆具不愧是樂器中的女王。&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL716_violin_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(299, 1, '轉折戒指', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;走在人生路上，不經意的遇上了誰，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;讀了某本書,轉了哪個路口，整個人生的劇本就跟著改寫。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;戴上轉折戒指，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;帶上改變的勇氣，勇敢寫下自己的劇本。&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_RG705_turning_ring', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(300, 1, '麥穗項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;人生猶如行走在一片漫無邊際的麥田裡，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;每個人都在尋找最大的麥穗，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;但只有把手裡麥穗握緊，才是最珍惜當下的做法。&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_NL717_wheat_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(301, 1, '麥穗a項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;人生猶如行走在一片漫無邊際的麥田裡，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;每個人都在尋找最大的麥穗，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;但只有把手裡麥穗握緊，才是最珍惜當下的做法。&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_NL718_wheat_a_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(302, 1, '麥穗a手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;低頭的麥穗，內在充實飽滿，卻始終低頭，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;不張揚、不炫耀，平穩的踏出每一步。&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_BL714_wheat_a_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(303, 1, '茄子項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;茄子的日文(なす)，發音和達成(成す)相似。&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;所以茄子象徵著願望與理想的實現。&lt;/font&gt;&lt;/h4&gt;&lt;p&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/p&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;無論是健康，快樂還是財富，立馬許自己一顆茄子吧！&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL719_eggplant_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(304, 1, '茄子手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;圓滾滾的茄子看起來就是有種不服輸的淘氣感，&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;戴著它就覺得有滿滿的勇氣...&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_BL715_eggplant_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(305, 1, '王冠項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;王冠是客戶和我們一起設計出來的作品；&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&quot;戴上冠冕，保持信心，專心致志，預備好自己！&quot;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;是客戶與我們分享的註解；&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;感恩的心情與大家共享~&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL720_crown_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(306, 1, '王冠手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;王冠賦予了權利和統治權，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;象徵著自我控制權，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;以及勇於為自己的一切負責的決心。&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_BL716_crown_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(307, 1, '大小山戒指', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;兩兩相望的大山小山，互相期盼著，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;等待著彼此聚首的時刻…&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_RG706_mountains_ring', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(308, 1, '小鳥項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;微微翹的嘴，圓滾滾的肚子，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;自信又淘氣的模樣是我們心目中最可愛的小鳥形象。&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_NL721_birdie_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(309, 1, '小鳥手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;多麼希望自己也能像小鳥一樣，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;自由自在，無拘無束的飛翔著…&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_BL717_birdie_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(310, 1, '紙飛機a項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;小時候和同伴們比賽誰折的紙飛機飛得高飛得遠，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;總會朝著紙飛機頭哈口氣，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;好像這樣就會為紙飛機注入能量，可以勇敢的迎風飛翔~&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;疲累的時候，也別忘記幫自己哈口氣，加個油喔！&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_NL722_paper_plane_a_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(311, 1, '紙飛機a手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;紙飛機載著成千上萬的，我對妳的思念，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;翱翔盤旋在天際；&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;當我抬頭仰望妳時，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;妳是否也會停下腳步對我微笑呢？&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_BL718_paper_plane_a_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(312, 1, '內斂戒指', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;不規則、不等寬的邊緣，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;加上內凹的弧線所勾勒出的內斂戒指，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;低調的宣示與眾不同.&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_RG707_undertone_ring', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(313, 1, '切割戒指', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;簡潔的切割出4個坡面；&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;俐落，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;是戴上這個戒指之後的絕對直覺。&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_RG708_cutting_ring', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(314, 1, '字母項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;帶上屬於自己的幸運字母項鍊，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;專屬的幸運，任誰都搶不走。&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_NL723_alphabet_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(315, 1, '字母手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;我想拼一條我編的密碼手鍊；&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;猜猜看 &quot;I.O.U&quot;是代表&quot;I love you&quot;或是&quot;I owe you&quot;？&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_BL719_alphabet_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(316, 1, '字母單品', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;可以加購字母串在選購的項鍊或手鍊上喔，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;每個字母單價都是1000元呦~&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_OT701_alphabet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(317, 1, '貝殼項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;到海邊總會順手拾起幾個貝殼帶回家，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;可以豐富家中的收藏，也紀念著這趟旅行…&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;看著滿滿的收藏，是不是覺得自己是最富有的人呢？&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_NL724_shell_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(318, 1, '貝殼手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;雖然貝殼​像藝術品一樣美麗，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;但是它​的​形狀​​和​結構卻能​把外來​的​壓力​傳遞​到​自身​最​堅硬​的​部位，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;將受傷​的​可能性​降​到​最​低。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;妳說說看這是不是最棒的幸運符呢？&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_BL720_shell_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(319, 1, '三角鐵項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;三角鐵是個很簡單的樂器，它甚至沒有個特別的名字，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;只是用它的形狀來稱呼，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;但是它的造型簡單反而更加能夠放大演出的細節。&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL725_triangle_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(320, 1, '三角鐵手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;三角鐵是用金屬彎成三角形的打擊樂器，&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;有一角開口，目的是防止它發出任何特異的音高，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;但三角鐵發音色清脆明亮穿透力強，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;在樂隊強奏時，其聲音可輕易的脫穎而出。　&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_BL721_triangle_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(321, 1, '柚子項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;在傳統結婚習俗中，柚子因為諧音「有子」，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;有早生貴子的涵義，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;所以結婚喜慶之時，常以柚子當成祝福新人之吉祥物。&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL726_pomelo_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(322, 1, '柚子手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;柚子渾圓胖胖的造型相當討喜，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;而且柚子與「佑子」諧音，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;有吉祥的意思，也有「保祐」的意思。&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_BL722_pomelo_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(323, 1, '方心戒指', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;簡潔的在方塊中鏤出愛心...&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;方心、芳心、放心，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;是我傳達的訊息...&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_RG709_square_heart_ring', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(324, 1, '圓心戒指', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;像一個圓圓的戒台中間鑲了一顆透明的愛心寶石，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;小巧可愛，令人喜愛...&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_RG710_round_heart_ring', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(369, 1, 'bb柚子手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;柚子渾圓胖胖的造型相當討喜，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;而且柚子與「佑子」諧音，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;有吉祥的意思，也有「保祐」的意思。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;是送給新生寶寶的好禮品喔~&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_BB807_bb_pomelo_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(325, 1, '不倒翁項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;有堅强的意志，不輕易被打倒，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;遇到任何挫折都能微笑面對。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;我，就是不倒翁。&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL801_tumbler_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(326, 1, '不倒翁手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;有堅强的意志，不輕易被打倒，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;遇到任何挫折都能微笑面對。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;我，就是不倒翁。&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_BL801_tumbler_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(327, 1, '圓管項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;微笑的弧度，優雅的寬度，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;難以忽視的長度，百搭設計非我莫屬。&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL802_tube_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(328, 1, '圓管手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;微笑的弧度，優雅的寬度，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;難以忽視的長度，百搭設計非我莫屬。&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_BL802_tube_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(329, 1, '方管項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;穿越時光隧道，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;串起現在和過去的長廊，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;是我對你未曾停歇的思念...&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL803_square_tube_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(330, 1, '方管手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;穿越時光隧道，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;串起現在和過去的長廊，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;是我對你未曾停歇的思念…&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_BL803_square_tube_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(331, 1, '方型戒指', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;中性的正方；&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;又方又正，沒有懸念...&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_RG801_square_ring', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(332, 1, '漣漪戒指', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;如同靜靜的湖水為你泛起了漣漪，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;由內向外一圈一圈的擴散，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;跨越界限，潮涌不絕...&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_RG802_ripple_ring', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(333, 1, '樹木項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;樹木代表綿延的生命力，也有穩定與樂於助人的特質。&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;有篇文章說：「壓力大時就去找一棵樹吧！綠油油的樹木可以降低我們的心跳速率並減輕壓力。」&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;立刻找一顆專屬於自己的樹，並緊緊擁抱它！&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_NL804_tree_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(334, 1, '幸運草a項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;常見的三葉草的每片葉子有其特殊的意義：&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;信仰，希望，與愛。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;如果發現了四葉草都會被視為幸運的象徵…&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;你找到你的幸運草了嗎?&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL805_lucky_charm_a_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(335, 1, '幸運草a手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;隨著風向而搖頭晃腦的幸運草，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;有種隨遇而安的自在感，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;卻又擁有超級強韌的生命力，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;沒甚麼環境難得倒它，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;忍不住要向幸運草致敬。&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_BL804_lucky_charm_a_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(336, 1, '海浪戒指', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;潮起潮落，日復一日，&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;永恆且執著的拍打著沙灘，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;時而猛烈，時而溫柔和平靜，猶如生命中的起跌...&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;海浪，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;讓我學會了平常心面對人生的每一個挑戰。&amp;nbsp;&lt;/font&gt;&amp;nbsp;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_RG803_wave_ring', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(337, 1, 'bb如意鎖手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&quot;鎖&quot; 在古代是吉利的象徵，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;代表對健康，財富與長壽的祈願。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;如意鎖寓意長命百歲，吉祥如意，是極受歡迎的護身符。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;mittag的如意鎖英文品名取作good lock，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;直譯&quot;好鎖&quot;，諧音為good luck，祝&quot;好運&quot;喔~ &lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;用good lock鎖住夢想與希望，留住美好的事物和情感~&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_BB801_bb_good_lock_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(338, 1, 'bb馬蹄鐵f手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;馬代表了力量與活力，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;收到馬蹄鐵形的禮物時也會因此獲得好運連連的祝福。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;馬年立馬為自己戴上幸運馬蹄讓自己馬力十足，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;一馬當先！&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_BB802_bb_horseshoe_f_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(339, 1, 'bb方心手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;帶上方心請放心；我的芳心只屬於你…&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_BB803_bb_square_heart_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(340, 1, 'bb圓心手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;圓圓的、厚厚的心，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;裝載的是我對你未曾減少的思念…&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_BB804_bb_round_heart _bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(341, 1, 'bb王冠手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;王冠賦予了權利和統治權，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;象徵著自我控制權，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;以及勇於為自己的一切負責的決心。&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_BB805_bb_crown_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(342, 1, '小汽車項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;也許你也幻想過自己開著車，帶上一些簡單的行李，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;然後就率性的開往陌生的城市展開不一樣的生活，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;或許是花東，或許是紐澳，或許是歐洲…&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;這個念想，我把它掛在胸口，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;不...忘...記...&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL806_car_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(343, 1, '小汽車手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;就像Vespa一樣，Beetle是太經典的車款，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;要設計小汽車墬飾，也當然要從最經典的Beetle開始發想囉~&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_BL805_car_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(344, 1, 'bb小汽車手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;小朋友最喜愛的玩具之一，火柴盒小汽車，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;握在手裡就能上天下海到處冒險，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;絕對受大人小孩歡迎的彌月禮物！&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_BB806_bb_car_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(345, 1, '超能m戒指', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;戴上Super m ring就感覺像超人一樣擁有無限可能！&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;俐落的線條與難以忽視的存在感...&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;好man!&amp;nbsp;&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_RG804_super_m_ring', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(368, 1, '十字架c項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;如果你跟我們一樣欣賞朱銘，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;相信你也會喜歡這款項鍊。 &lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;本款可以兩面配戴，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;鏡面或刻面就依服裝或心情決定囉…&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_NL810_cross_c_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(346, 1, '愛心捲項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;一圈再一圈，捲捲的愛心，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;有一種甜在心的飽滿幸福感。&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_NL807_curly_heart_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(347, 1, '荷葉項鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;“出淤泥而不染，濯清漣而不妖”，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;有了荷葉的幫襯，才有了荷花出落的如此清新。&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;我願是一片荷葉，雖非目光焦點，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;卻擁有自成一方的小天地，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;自在、灑脫。&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_NL808_lotus_leaf_necklace', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(348, 1, '荷葉手鍊', '&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;小巧細緻的荷葉，&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;讓人忍不住想靠近，&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;一...親...芳...澤...&lt;/font&gt;&lt;br&gt;&lt;/h4&gt;', '', 'mittag_BL806_lotus_leaf_bracelet', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生'),
(349, 1, '與mittag官網同慶(樂)...', '&lt;h4&gt;&lt;font color=&quot;#636363&quot; style=&quot;&quot;&gt;千呼萬喚的mittag官網終於來了！！！&lt;/font&gt;&lt;/h4&gt;&lt;h4&gt;&lt;font color=&quot;#636363&quot;&gt;趕快進來跟我們一起慶祝拿好康吧！&lt;/font&gt;&lt;/h4&gt;', '', 'mittag_website_readiness_celebration', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生', 'mittag 米查 精品 手做 手作 handmade 銀飾 飾品 簡約 台灣品牌 mit 項鍊 necklace 戒指 ring 手鍊 bracelet 手環 bangle 耳環 earring 彌月禮 babyshower 銀器 silverware 禮品 gift present 生日禮物 情人節 tiffany georg jensen 喬治傑生');

-- --------------------------------------------------------

--
-- 資料表結構 `oc_product_discount`
--

CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_product_filter`
--

CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_product_image`
--

CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_product_image`
--

INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
(6964, 157, 'catalog/Necklace(NL)/NL312/NL312_04_S.jpg', 6),
(6963, 157, 'catalog/Necklace(NL)/NL312/NL312_03_S.jpg', 5),
(6962, 157, 'catalog/Necklace(NL)/NL312/NL312_06_S.jpg', 4),
(6773, 156, 'catalog/Bracelet(BL)/BL308/BL308_04_S.jpg', 4),
(6772, 156, 'catalog/Bracelet(BL)/BL308/BL308_03_S.jpg', 3),
(6771, 156, 'catalog/Bracelet(BL)/BL308/BL308_02_S.jpg', 2),
(6769, 151, 'catalog/Bracelet(BL)/BL306/BL306_04_S.jpg', 5),
(6609, 152, 'catalog/Necklace(NL)/NL309/NL309_05_S.jpg', 5),
(6608, 152, 'catalog/Necklace(NL)/NL309/NL309_04_S.jpg', 4),
(6607, 152, 'catalog/Necklace(NL)/NL309/NL309_03_S.jpg', 3),
(6606, 152, 'catalog/Necklace(NL)/NL309/NL309_02_S.jpg', 2),
(6605, 152, 'catalog/Necklace(NL)/NL309/NL309_01_S.jpg', 1),
(6770, 156, 'catalog/Bracelet(BL)/BL308/BL308_01_S.jpg', 1),
(6958, 155, 'catalog/Necklace(NL)/NL311/NL311_05_S.jpg', 5),
(6181, 153, 'catalog/Necklace(NL)/NL310/NL310_01_S.jpg', 3),
(6180, 153, 'catalog/Necklace(NL)/NL310/NL310_03_S.jpg', 2),
(6179, 153, 'catalog/Necklace(NL)/NL310/NL310_02_S.jpg', 1),
(6957, 155, 'catalog/Necklace(NL)/NL311/NL311_04_S.jpg', 4),
(6956, 155, 'catalog/Necklace(NL)/NL311/NL311_03_S.jpg', 3),
(6955, 155, 'catalog/Necklace(NL)/NL311/NL311_01_S.jpg', 2),
(6954, 155, 'catalog/Necklace(NL)/NL311/NL311_02_S.jpg', 1),
(6768, 151, 'catalog/Bracelet(BL)/BL306/BL306_03_S.jpg', 4),
(6767, 151, 'catalog/Bracelet(BL)/BL306/BL306_05_S.jpg', 3),
(6758, 149, 'catalog/Bracelet(BL)/BL304/BL304_03_S.jpg', 5),
(6764, 150, 'catalog/Bracelet(BL)/BL305/BL305_04_S.jpg', 6),
(6763, 150, 'catalog/Bracelet(BL)/BL305/BL305_06_S.jpg', 5),
(6762, 150, 'catalog/Bracelet(BL)/BL305/BL305_05_S.jpg', 4),
(6761, 150, 'catalog/Bracelet(BL)/BL305/BL305_03_S.jpg', 3),
(6760, 150, 'catalog/Bracelet(BL)/BL305/BL305_01_S.jpg', 2),
(6759, 150, 'catalog/Bracelet(BL)/BL305/BL305_02_S.jpg', 1),
(6766, 151, 'catalog/Bracelet(BL)/BL306/BL306_01_S.jpg', 2),
(6765, 151, 'catalog/Bracelet(BL)/BL306/BL306_02_S.jpg', 1),
(6757, 149, 'catalog/Bracelet(BL)/BL304/BL304_02_S.jpg', 4),
(6756, 149, 'catalog/Bracelet(BL)/BL304/BL304_01_S.jpg', 3),
(6755, 149, 'catalog/Bracelet(BL)/BL304/BL304_04_S.jpg', 2),
(6754, 149, 'catalog/Bracelet(BL)/BL304/BL304_05_S.jpg', 1),
(6753, 148, 'catalog/Bracelet(BL)/BL303/BL303_06_S.jpg', 6),
(6752, 148, 'catalog/Bracelet(BL)/BL303/BL303_05_S.jpg', 5),
(6751, 148, 'catalog/Bracelet(BL)/BL303/BL303_03_S.jpg', 4),
(6750, 148, 'catalog/Bracelet(BL)/BL303/BL303_01_S.jpg', 3),
(6749, 148, 'catalog/Bracelet(BL)/BL303/BL303_02_S.jpg', 2),
(6748, 148, 'catalog/Bracelet(BL)/BL303/BL303_04_S.jpg', 1),
(6162, 147, 'catalog/Bracelet(BL)/BL302/BL302_01_S.jpg', 3),
(6161, 147, 'catalog/Bracelet(BL)/BL302/BL302_02_S.jpg', 2),
(6160, 147, 'catalog/Bracelet(BL)/BL302/BL302_03_S.jpg', 1),
(6156, 145, 'catalog/Necklace(NL)/NL308/NL308_01_S.jpg', 3),
(6155, 145, 'catalog/Necklace(NL)/NL308/NL308_02_S.jpg', 2),
(6154, 145, 'catalog/Necklace(NL)/NL308/NL308_03_S.jpg', 1),
(7401, 144, 'catalog/BABY(BB)/BB305/BB305_04_S.jpg', 4),
(7400, 144, 'catalog/BABY(BB)/BB305/BB305_03_S.jpg', 3),
(7399, 144, 'catalog/BABY(BB)/BB305/BB305_02_S.jpg', 2),
(7398, 144, 'catalog/BABY(BB)/BB305/BB305_01_S.jpg', 1),
(7397, 143, 'catalog/BABY(BB)/BB304/BB304_03_S.jpg', 4),
(7396, 143, 'catalog/BABY(BB)/BB304/BB304_04_S.jpg', 3),
(7395, 143, 'catalog/BABY(BB)/BB304/BB304_01_S.jpg', 2),
(7394, 143, 'catalog/BABY(BB)/BB304/BB304_02_S.jpg', 1),
(7393, 142, 'catalog/BABY(BB)/BB303/BB303_05_S.jpg', 3),
(7392, 142, 'catalog/BABY(BB)/BB303/BB303_04_S.jpg', 2),
(7391, 142, 'catalog/BABY(BB)/BB303/BB303_06_S.jpg', 1),
(7390, 141, 'catalog/BABY(BB)/BB302/BB302_06_S.jpg', 6),
(7389, 141, 'catalog/BABY(BB)/BB302/BB302_03_S.jpg', 5),
(7388, 141, 'catalog/BABY(BB)/BB302/BB302_01_S.jpg', 4),
(7387, 141, 'catalog/BABY(BB)/BB302/BB302_05_S.jpg', 3),
(7386, 141, 'catalog/BABY(BB)/BB302/BB302_04_S.jpg', 2),
(7385, 141, 'catalog/BABY(BB)/BB302/BB302_02_S.jpg', 1),
(7384, 140, 'catalog/BABY(BB)/BB301/BB301_02_S.jpg', 3),
(7383, 140, 'catalog/BABY(BB)/BB301/BB301_03_S.jpg', 2),
(7382, 140, 'catalog/BABY(BB)/BB301/BB301_01_S.jpg', 1),
(6598, 139, 'catalog/Necklace(NL)/NL304/NL304_04_S.jpg', 4),
(6597, 139, 'catalog/Necklace(NL)/NL304/NL304_03_S.jpg', 3),
(6596, 139, 'catalog/Necklace(NL)/NL304/NL304_02_S.jpg', 2),
(6595, 139, 'catalog/Necklace(NL)/NL304/NL304_01_S.jpg', 1),
(6953, 138, 'catalog/Necklace(NL)/NL302/NL302_05_S.jpg', 5),
(6952, 138, 'catalog/Necklace(NL)/NL302/NL302_04_S.jpg', 4),
(6951, 138, 'catalog/Necklace(NL)/NL302/NL302_01_S.jpg', 3),
(6950, 138, 'catalog/Necklace(NL)/NL302/NL302_03_S.jpg', 2),
(6949, 138, 'catalog/Necklace(NL)/NL302/NL302_02_S.jpg', 1),
(6594, 137, 'catalog/Necklace(NL)/NL301/NL301_04_S.jpg', 24),
(6593, 137, 'catalog/Necklace(NL)/NL301/NL301_06_S.jpg', 6),
(6592, 137, 'catalog/Necklace(NL)/NL301/NL301_01_S.jpg', 5),
(6591, 137, 'catalog/Necklace(NL)/NL301/NL301_03_S.jpg', 3),
(6590, 137, 'catalog/Necklace(NL)/NL301/NL301_02_S.jpg', 1),
(7235, 132, 'catalog/Ring(RG)/RG301/RG301_04_S.jpg', 5),
(7234, 132, 'catalog/Ring(RG)/RG301/RG301_05_S.jpg', 4),
(7233, 132, 'catalog/Ring(RG)/RG301/RG301_01_S.jpg', 3),
(7232, 132, 'catalog/Ring(RG)/RG301/RG301_03_S.jpg', 2),
(7231, 132, 'catalog/Ring(RG)/RG301/RG301_02_S.jpg', 1),
(6589, 137, 'catalog/Necklace(NL)/NL301/NL301_05_S.jpg', 0),
(6110, 134, 'catalog/Ring(RG)/RG303/RG303_05_S.jpg', 5),
(6109, 134, 'catalog/Ring(RG)/RG303/RG303_04_S.jpg', 4),
(6108, 134, 'catalog/Ring(RG)/RG303/RG303_03_S.jpg', 3),
(6107, 134, 'catalog/Ring(RG)/RG303/RG303_02_S.jpg', 2),
(6106, 134, 'catalog/Ring(RG)/RG303/RG303_01_S.jpg', 1),
(7240, 135, 'catalog/Ring(RG)/RG304/RG304_05_S.jpg', 5),
(7239, 135, 'catalog/Ring(RG)/RG304/RG304_04_S.jpg', 4),
(7238, 135, 'catalog/Ring(RG)/RG304/RG304_03_S.jpg', 3),
(7237, 135, 'catalog/Ring(RG)/RG304/RG304_02_S.jpg', 2),
(7236, 135, 'catalog/Ring(RG)/RG304/RG304_01_S.jpg', 1),
(6105, 133, 'catalog/Ring(RG)/RG302/RG302_04_S.jpg', 3),
(6104, 133, 'catalog/Ring(RG)/RG302/RG302_03_S.jpg', 2),
(6103, 133, 'catalog/Ring(RG)/RG302/RG302_02_S.jpg', 1),
(6961, 157, 'catalog/Necklace(NL)/NL312/NL312_05_S.jpg', 3),
(6960, 157, 'catalog/Necklace(NL)/NL312/NL312_01_S.jpg', 2),
(6959, 157, 'catalog/Necklace(NL)/NL312/NL312_02_S.jpg', 1),
(5468, 158, 'catalog/Necklace(NL)/NL314/NL314_06_S.jpg', 6),
(5467, 158, 'catalog/Necklace(NL)/NL314/NL314_04_S.jpg', 5),
(5466, 158, 'catalog/Necklace(NL)/NL314/NL314_05_S.jpg', 4),
(5465, 158, 'catalog/Necklace(NL)/NL314/NL314_01_S.jpg', 3),
(5464, 158, 'catalog/Necklace(NL)/NL314/NL314_03_S.jpg', 2),
(5463, 158, 'catalog/Necklace(NL)/NL314/NL314_02_S.jpg', 1),
(6195, 159, 'catalog/Bracelet(BL)/BL309/BL309_06_S.jpg', 0),
(6194, 159, 'catalog/Bracelet(BL)/BL309/BL309_02_S.jpg', 0),
(6193, 159, 'catalog/Bracelet(BL)/BL309/BL309_01_S.jpg', 0),
(7245, 160, 'catalog/Ring(RG)/RG305/RG305_03_S.jpg', 5),
(7244, 160, 'catalog/Ring(RG)/RG305/RG305_04_S.jpg', 4),
(7243, 160, 'catalog/Ring(RG)/RG305/RG305_05_S.jpg', 3),
(7242, 160, 'catalog/Ring(RG)/RG305/RG305_01_S.jpg', 2),
(7241, 160, 'catalog/Ring(RG)/RG305/RG305_02_S.jpg', 1),
(6969, 161, 'catalog/Necklace(NL)/NL316/NL316_04_S.jpg', 5),
(6968, 161, 'catalog/Necklace(NL)/NL316/NL316_02_S.jpg', 4),
(6967, 161, 'catalog/Necklace(NL)/NL316/NL316_01_S.jpg', 3),
(6966, 161, 'catalog/Necklace(NL)/NL316/NL316_06_S.jpg', 2),
(6965, 161, 'catalog/Necklace(NL)/NL316/NL316_05_S.jpg', 1),
(6975, 162, 'catalog/Necklace(NL)/NL317/NL317_06_S.jpg', 0),
(6974, 162, 'catalog/Necklace(NL)/NL317/NL317_05_S.jpg', 0),
(6973, 162, 'catalog/Necklace(NL)/NL317/NL317_04_S.jpg', 0),
(6972, 162, 'catalog/Necklace(NL)/NL317/NL317_03_S.jpg', 0),
(6971, 162, 'catalog/Necklace(NL)/NL317/NL317_02_S.jpg', 0),
(6970, 162, 'catalog/Necklace(NL)/NL317/NL317_01_S.jpg', 0),
(6981, 163, 'catalog/Necklace(NL)/NL318/NL318_02_S.jpg', 6),
(6980, 163, 'catalog/Necklace(NL)/NL318/NL318_01_S.jpg', 5),
(6979, 163, 'catalog/Necklace(NL)/NL318/NL318_03_S.jpg', 4),
(6978, 163, 'catalog/Necklace(NL)/NL318/NL318_06_S.jpg', 3),
(6977, 163, 'catalog/Necklace(NL)/NL318/NL318_04_S.jpg', 2),
(6976, 163, 'catalog/Necklace(NL)/NL318/NL318_05_S.jpg', 1),
(5495, 164, 'catalog/Necklace(NL)/NL320/NL320_03_S.jpg', 4),
(5494, 164, 'catalog/Necklace(NL)/NL320/NL320_04_S.jpg', 3),
(5493, 164, 'catalog/Necklace(NL)/NL320/NL320_05_S.jpg', 2),
(5492, 164, 'catalog/Necklace(NL)/NL320/NL320_02_S.jpg', 1),
(6218, 165, 'catalog/Necklace(NL)/NL322/NL322_02_S.jpg', 6),
(6217, 165, 'catalog/Necklace(NL)/NL322/NL322_06_S.jpg', 5),
(6216, 165, 'catalog/Necklace(NL)/NL322/NL322_01_S.jpg', 4),
(6215, 165, 'catalog/Necklace(NL)/NL322/NL322_08_S.jpg', 3),
(6214, 165, 'catalog/Necklace(NL)/NL322/NL322_03_S.jpg', 2),
(6213, 165, 'catalog/Necklace(NL)/NL322/NL322_07_S.jpg', 1),
(5506, 166, 'catalog/Necklace(NL)/NL323/NL323_04_S.jpg', 5),
(5505, 166, 'catalog/Necklace(NL)/NL323/NL323_02_S.jpg', 4),
(5504, 166, 'catalog/Necklace(NL)/NL323/NL323_06_S.jpg', 3),
(5503, 166, 'catalog/Necklace(NL)/NL323/NL323_01_S.jpg', 2),
(5502, 166, 'catalog/Necklace(NL)/NL323/NL323_05_S.jpg', 1),
(6985, 167, 'catalog/Necklace(NL)/NL324/NL324_02_S.jpg', 4),
(6984, 167, 'catalog/Necklace(NL)/NL324/NL324_01_S.jpg', 3),
(6983, 167, 'catalog/Necklace(NL)/NL324/NL324_04_S.jpg', 2),
(6982, 167, 'catalog/Necklace(NL)/NL324/NL324_03_S.jpg', 1),
(6988, 168, 'catalog/Necklace(NL)/NL327/NL327_03_S.jpg', 3),
(6987, 168, 'catalog/Necklace(NL)/NL327/NL327_01_S.jpg', 2),
(6986, 168, 'catalog/Necklace(NL)/NL327/NL327_04_S.jpg', 1),
(6777, 169, 'catalog/Bracelet(BL)/BL310/BL310_04_S.jpg', 4),
(6776, 169, 'catalog/Bracelet(BL)/BL310/BL310_03_S.jpg', 3),
(6775, 169, 'catalog/Bracelet(BL)/BL310/BL310_02_S.jpg', 2),
(6774, 169, 'catalog/Bracelet(BL)/BL310/BL310_01_S.jpg', 1),
(5518, 170, 'catalog/Necklace(NL)/NL328/NL328_06_S.jpg', 5),
(5517, 170, 'catalog/Necklace(NL)/NL328/NL328_02_S.jpg', 4),
(5516, 170, 'catalog/Necklace(NL)/NL328/NL328_03_S.jpg', 3),
(5515, 170, 'catalog/Necklace(NL)/NL328/NL328_01_S.jpg', 2),
(5514, 170, 'catalog/Necklace(NL)/NL328/NL328_04_S.jpg', 1),
(7250, 173, 'catalog/Ring(RG)/RG306/RG306_04_S.jpg', 5),
(7249, 173, 'catalog/Ring(RG)/RG306/RG306_05_S.jpg', 4),
(7248, 173, 'catalog/Ring(RG)/RG306/RG306_03_S.jpg', 3),
(7247, 173, 'catalog/Ring(RG)/RG306/RG306_02_S.jpg', 2),
(7246, 173, 'catalog/Ring(RG)/RG306/RG306_01_S.jpg', 1),
(6993, 172, 'catalog/Necklace(NL)/NL329/NL329_02_S.jpg', 5),
(6992, 172, 'catalog/Necklace(NL)/NL329/NL329_01_S.jpg', 4),
(6991, 172, 'catalog/Necklace(NL)/NL329/NL329_05_S.jpg', 3),
(6990, 172, 'catalog/Necklace(NL)/NL329/NL329_03_S.jpg', 2),
(6989, 172, 'catalog/Necklace(NL)/NL329/NL329_04_S.jpg', 1),
(6999, 174, 'catalog/Necklace(NL)/NL330/NL330_06_S.jpg', 6),
(6998, 174, 'catalog/Necklace(NL)/NL330/NL330_07_S.jpg', 5),
(6997, 174, 'catalog/Necklace(NL)/NL330/NL330_05_S.jpg', 4),
(6996, 174, 'catalog/Necklace(NL)/NL330/NL330_03_S.jpg', 3),
(6995, 174, 'catalog/Necklace(NL)/NL330/NL330_02_S.jpg', 2),
(6994, 174, 'catalog/Necklace(NL)/NL330/NL330_01_S.jpg', 1),
(7256, 175, 'catalog/Ring(RG)/RG307/RG307_05_S.jpg', 6),
(7255, 175, 'catalog/Ring(RG)/RG307/RG307_06_S.jpg', 5),
(7254, 175, 'catalog/Ring(RG)/RG307/RG307_03_S.jpg', 4),
(7253, 175, 'catalog/Ring(RG)/RG307/RG307_02_S.jpg', 3),
(7252, 175, 'catalog/Ring(RG)/RG307/RG307_01_S.jpg', 2),
(7251, 175, 'catalog/Ring(RG)/RG307/RG307_04_S.jpg', 1),
(6641, 176, 'catalog/Bracelet(BL)/BL311/BL311_01_S.jpg', 0),
(6640, 176, 'catalog/Bracelet(BL)/BL311/BL311_02_S.jpg', 0),
(7261, 177, 'catalog/Ring(RG)/RG308/RG308_03_S.jpg', 5),
(7260, 177, 'catalog/Ring(RG)/RG308/RG308_04_S.jpg', 4),
(7259, 177, 'catalog/Ring(RG)/RG308/RG308_05_S.jpg', 3),
(7258, 177, 'catalog/Ring(RG)/RG308/RG308_02_S.jpg', 2),
(7257, 177, 'catalog/Ring(RG)/RG308/RG308_01_S.jpg', 1),
(5534, 178, 'catalog/Necklace(NL)/NL332/NL332_03_S.jpg', 5),
(5533, 178, 'catalog/Necklace(NL)/NL332/NL332_05_S.jpg', 4),
(5532, 178, 'catalog/Necklace(NL)/NL332/NL332_04_S.jpg', 3),
(5531, 178, 'catalog/Necklace(NL)/NL332/NL332_01_S.jpg', 2),
(5530, 178, 'catalog/Necklace(NL)/NL332/NL332_02_S.jpg', 1),
(7004, 179, 'catalog/Necklace(NL)/NL333/NL333_04_S.jpg', 5),
(7003, 179, 'catalog/Necklace(NL)/NL333/NL333_03_S.jpg', 4),
(7002, 179, 'catalog/Necklace(NL)/NL333/NL333_05_S.jpg', 3),
(7001, 179, 'catalog/Necklace(NL)/NL333/NL333_02_S.jpg', 2),
(7000, 179, 'catalog/Necklace(NL)/NL333/NL333_01_S.jpg', 1),
(7265, 180, 'catalog/Ring(RG)/RG309/RG309_03_S.jpg', 4),
(7264, 180, 'catalog/Ring(RG)/RG309/RG309_04_S.jpg', 3),
(7263, 180, 'catalog/Ring(RG)/RG309/RG309_02_S.jpg', 2),
(7262, 180, 'catalog/Ring(RG)/RG309/RG309_01_S.jpg', 1),
(5543, 181, 'catalog/Necklace(NL)/NL334/NL334_03_S.jpg', 4),
(5542, 181, 'catalog/Necklace(NL)/NL334/NL334_04_S.jpg', 3),
(5541, 181, 'catalog/Necklace(NL)/NL334/NL334_01_S.jpg', 2),
(5540, 181, 'catalog/Necklace(NL)/NL334/NL334_02_S.jpg', 1),
(5548, 182, 'catalog/Necklace(NL)/NL335/NL335_05_S.jpg', 5),
(5547, 182, 'catalog/Necklace(NL)/NL335/NL335_06_S.jpg', 4),
(5546, 182, 'catalog/Necklace(NL)/NL335/NL335_04_S.jpg', 3),
(5545, 182, 'catalog/Necklace(NL)/NL335/NL335_02_S.jpg', 2),
(5544, 182, 'catalog/Necklace(NL)/NL335/NL335_03_S.jpg', 1),
(6782, 183, 'catalog/Bracelet(BL)/BL312/BL312_05_S.jpg', 5),
(6781, 183, 'catalog/Bracelet(BL)/BL312/BL312_04_S.jpg', 4),
(6780, 183, 'catalog/Bracelet(BL)/BL312/BL312_03_S.jpg', 3),
(6779, 183, 'catalog/Bracelet(BL)/BL312/BL312_02_S.jpg', 2),
(6778, 183, 'catalog/Bracelet(BL)/BL312/BL312_01_S.jpg', 1),
(7009, 184, 'catalog/Necklace(NL)/NL336/NL336_05_S.jpg', 5),
(7008, 184, 'catalog/Necklace(NL)/NL336/NL336_04_S.jpg', 4),
(7007, 184, 'catalog/Necklace(NL)/NL336/NL336_03_S.jpg', 3),
(7006, 184, 'catalog/Necklace(NL)/NL336/NL336_01_S.jpg', 2),
(7005, 184, 'catalog/Necklace(NL)/NL336/NL336_02_S.jpg', 1),
(5559, 185, 'catalog/Necklace(NL)/NL337/NL337_05_S.jpg', 6),
(5558, 185, 'catalog/Necklace(NL)/NL337/NL337_06_S.jpg', 5),
(5557, 185, 'catalog/Necklace(NL)/NL337/NL337_04_S.jpg', 4),
(5556, 185, 'catalog/Necklace(NL)/NL337/NL337_01_S.jpg', 3),
(5555, 185, 'catalog/Necklace(NL)/NL337/NL337_03_S.jpg', 2),
(5554, 185, 'catalog/Necklace(NL)/NL337/NL337_02_S.jpg', 1),
(6652, 186, 'catalog/Necklace(NL)/NL338/NL338_01_S.jpg', 6),
(6651, 186, 'catalog/Necklace(NL)/NL338/NL338_06_S.jpg', 5),
(6650, 186, 'catalog/Necklace(NL)/NL338/NL338_02_S.jpg', 4),
(6649, 186, 'catalog/Necklace(NL)/NL338/NL338_04_S.jpg', 3),
(6648, 186, 'catalog/Necklace(NL)/NL338/NL338_03_S.jpg', 2),
(6647, 186, 'catalog/Necklace(NL)/NL338/NL338_05_S.jpg', 1),
(6788, 187, 'catalog/Bracelet(BL)/BL313/BL313_06_S.jpg', 6),
(6787, 187, 'catalog/Bracelet(BL)/BL313/BL313_04_S.jpg', 5),
(6786, 187, 'catalog/Bracelet(BL)/BL313/BL313_05_S.jpg', 4),
(6785, 187, 'catalog/Bracelet(BL)/BL313/BL313_01_S.jpg', 3),
(6784, 187, 'catalog/Bracelet(BL)/BL313/BL313_03_S.jpg', 2),
(6783, 187, 'catalog/Bracelet(BL)/BL313/BL313_02_S.jpg', 1),
(6273, 188, 'catalog/Necklace(NL)/NL339/NL339_05_S.jpg', 5),
(6272, 188, 'catalog/Necklace(NL)/NL339/NL339_04_S.jpg', 4),
(6271, 188, 'catalog/Necklace(NL)/NL339/NL339_03_S.jpg', 3),
(6270, 188, 'catalog/Necklace(NL)/NL339/NL339_02_S.jpg', 2),
(6269, 188, 'catalog/Necklace(NL)/NL339/NL339_01_S.jpg', 1),
(7014, 189, 'catalog/Necklace(NL)/NL340/NL340_04_S.jpg', 5),
(7013, 189, 'catalog/Necklace(NL)/NL340/NL340_05_S.jpg', 4),
(7012, 189, 'catalog/Necklace(NL)/NL340/NL340_03_S.jpg', 3),
(7011, 189, 'catalog/Necklace(NL)/NL340/NL340_01_S.jpg', 2),
(7010, 189, 'catalog/Necklace(NL)/NL340/NL340_02_S.jpg', 1),
(6282, 190, 'catalog/Bracelet(BL)/BL314/BL314_02_S.jpg', 4),
(6281, 190, 'catalog/Bracelet(BL)/BL314/BL314_04_S.jpg', 3),
(6280, 190, 'catalog/Bracelet(BL)/BL314/BL314_03_S.jpg', 2),
(6279, 190, 'catalog/Bracelet(BL)/BL314/BL314_01_S.jpg', 1),
(6286, 191, 'catalog/Necklace(NL)/NL342/NL342_04_S.jpg', 0),
(6285, 191, 'catalog/Necklace(NL)/NL342/NL342_03_S.jpg', 0),
(6284, 191, 'catalog/Necklace(NL)/NL342/NL342_02_S.jpg', 0),
(6283, 191, 'catalog/Necklace(NL)/NL342/NL342_01_S.jpg', 0),
(6292, 192, 'catalog/Bracelet(BL)/BL315/BL315_04_S.jpg', 6),
(6291, 192, 'catalog/Bracelet(BL)/BL315/BL315_03_S.jpg', 5),
(6290, 192, 'catalog/Bracelet(BL)/BL315/BL315_06_S.jpg', 4),
(6289, 192, 'catalog/Bracelet(BL)/BL315/BL315_05_S.jpg', 3),
(6288, 192, 'catalog/Bracelet(BL)/BL315/BL315_02_S.jpg', 2),
(6287, 192, 'catalog/Bracelet(BL)/BL315/BL315_01_S.jpg', 1),
(6660, 193, 'catalog/Necklace(NL)/NL343/NL343_01_S.jpg', 2),
(6659, 193, 'catalog/Necklace(NL)/NL343/NL343_02_S.jpg', 1),
(6297, 194, 'catalog/Necklace(NL)/NL344/NL344_05_S.jpg', 5),
(6296, 194, 'catalog/Necklace(NL)/NL344/NL344_03_S.jpg', 4),
(6295, 194, 'catalog/Necklace(NL)/NL344/NL344_04_S.jpg', 3),
(6294, 194, 'catalog/Necklace(NL)/NL344/NL344_01_S.jpg', 2),
(6293, 194, 'catalog/Necklace(NL)/NL344/NL344_02_S.jpg', 1),
(5592, 195, 'catalog/Necklace(NL)/NL345/NL345_06_S.jpg', 6),
(5591, 195, 'catalog/Necklace(NL)/NL345/NL345_04_S.jpg', 5),
(5590, 195, 'catalog/Necklace(NL)/NL345/NL345_05_S.jpg', 4),
(5589, 195, 'catalog/Necklace(NL)/NL345/NL345_01_S.jpg', 3),
(5588, 195, 'catalog/Necklace(NL)/NL345/NL345_03_S.jpg', 2),
(5587, 195, 'catalog/Necklace(NL)/NL345/NL345_02_S.jpg', 1),
(5900, 196, 'catalog/Ring(RG)/RG310/RG310_03_S.jpg', 3),
(5899, 196, 'catalog/Ring(RG)/RG310/RG310_02_S.jpg', 2),
(5898, 196, 'catalog/Ring(RG)/RG310/RG310_01_S.jpg', 1),
(6301, 197, 'catalog/Ring(RG)/RG311/RG311_02_S.jpg', 2),
(6300, 197, 'catalog/Ring(RG)/RG311/RG311_01_S.jpg', 1),
(7404, 198, 'catalog/BABY(BB)/BB307/BB307_03_S.jpg', 3),
(7403, 198, 'catalog/BABY(BB)/BB307/BB307_02_S.jpg', 2),
(7402, 198, 'catalog/BABY(BB)/BB307/BB307_01_S.jpg', 1),
(7017, 199, 'catalog/Necklace(NL)/NL347/NL347_03_S.jpg', 3),
(7016, 199, 'catalog/Necklace(NL)/NL347/NL347_02_S.jpg', 2),
(7015, 199, 'catalog/Necklace(NL)/NL347/NL347_01_S.jpg', 1),
(5604, 200, 'catalog/Necklace(NL)/NL348/NL348_05_S.jpg', 6),
(5603, 200, 'catalog/Necklace(NL)/NL348/NL348_03_S.jpg', 5),
(5602, 200, 'catalog/Necklace(NL)/NL348/NL348_04_S.jpg', 4),
(5601, 200, 'catalog/Necklace(NL)/NL348/NL348_06_S.jpg', 3),
(5600, 200, 'catalog/Necklace(NL)/NL348/NL348_01_S.jpg', 2),
(5599, 200, 'catalog/Necklace(NL)/NL348/NL348_02_S.jpg', 1),
(7269, 201, 'catalog/Ring(RG)/RG313/RG313_03_S.jpg', 4),
(7268, 201, 'catalog/Ring(RG)/RG313/RG313_04_S.jpg', 3),
(7267, 201, 'catalog/Ring(RG)/RG313/RG313_02_S.jpg', 2),
(7266, 201, 'catalog/Ring(RG)/RG313/RG313_01_S.jpg', 1),
(7273, 202, 'catalog/Ring(RG)/RG314/RG314_04_S.jpg', 4),
(7272, 202, 'catalog/Ring(RG)/RG314/RG314_03_S.jpg', 3),
(7271, 202, 'catalog/Ring(RG)/RG314/RG314_01_S.jpg', 2),
(7270, 202, 'catalog/Ring(RG)/RG314/RG314_02_S.jpg', 1),
(5609, 203, 'catalog/Necklace(NL)/NL350/NL350_04_S.jpg', 5),
(5608, 203, 'catalog/Necklace(NL)/NL350/NL350_05_S.jpg', 4),
(5607, 203, 'catalog/Necklace(NL)/NL350/NL350_03_S.jpg', 3),
(5606, 203, 'catalog/Necklace(NL)/NL350/NL350_02_S.jpg', 2),
(5605, 203, 'catalog/Necklace(NL)/NL350/NL350_01_S.jpg', 1),
(5611, 204, 'catalog/Necklace(NL)/NL351/NL351_02_S.jpg', 2),
(5610, 204, 'catalog/Necklace(NL)/NL351/NL351_01_S.jpg', 1),
(7020, 205, 'catalog/Necklace(NL)/NL354/NL354_02_S.jpg', 3),
(7019, 205, 'catalog/Necklace(NL)/NL354/NL354_03_S.jpg', 2),
(7018, 205, 'catalog/Necklace(NL)/NL354/NL354_01_S.jpg', 1),
(7024, 206, 'catalog/Necklace(NL)/JNL401/JNL401_01_S.jpg', 4),
(7023, 206, 'catalog/Necklace(NL)/JNL401/JNL401_04_S.jpg', 3),
(7022, 206, 'catalog/Necklace(NL)/JNL401/JNL401_02_S.jpg', 2),
(7021, 206, 'catalog/Necklace(NL)/JNL401/JNL401_03_S.jpg', 1),
(7031, 207, 'catalog/Necklace(NL)/NL401/NL401_01_S.jpg', 0),
(7030, 207, 'catalog/Necklace(NL)/NL401/NL401_02_S.jpg', 0),
(7029, 207, 'catalog/Necklace(NL)/NL401/NL401_03_S.jpg', 0),
(6319, 208, 'catalog/Necklace(NL)/NL402/NL402_04_S.jpg', 4),
(6318, 208, 'catalog/Necklace(NL)/NL402/NL402_02_S.jpg', 3),
(6317, 208, 'catalog/Necklace(NL)/NL402/NL402_03_S.jpg', 2),
(6316, 208, 'catalog/Necklace(NL)/NL402/NL402_01_S.jpg', 1),
(5625, 209, 'catalog/Necklace(NL)/NL403/NL403_04_S.jpg', 4),
(5624, 209, 'catalog/Necklace(NL)/NL403/NL403_01_S.jpg', 3),
(5623, 209, 'catalog/Necklace(NL)/NL403/NL403_02_S.jpg', 2),
(5622, 209, 'catalog/Necklace(NL)/NL403/NL403_03_S.jpg', 1),
(7381, 210, 'catalog/Earring(ER)/JER401/JER401_02_S.jpg', 2),
(7380, 210, 'catalog/Earring(ER)/JER401/JER401_01_S.jpg', 1),
(6325, 211, 'catalog/Necklace(NL)/NL404/NL404_04_S.jpg', 4),
(6324, 211, 'catalog/Necklace(NL)/NL404/NL404_01_S.jpg', 3),
(6323, 211, 'catalog/Necklace(NL)/NL404/NL404_03_S.jpg', 2),
(6322, 211, 'catalog/Necklace(NL)/NL404/NL404_02_S.jpg', 1),
(5914, 212, 'catalog/Ring(RG)/RG401/RG401_04_S.jpg', 4),
(5913, 212, 'catalog/Ring(RG)/RG401/RG401_01_S.jpg', 3),
(5912, 212, 'catalog/Ring(RG)/RG401/RG401_02_S.jpg', 2),
(5911, 212, 'catalog/Ring(RG)/RG401/RG401_03_S.jpg', 1),
(6791, 213, 'catalog/Bracelet(BL)/BL401/BL401_03_S.jpg', 3),
(6790, 213, 'catalog/Bracelet(BL)/BL401/BL401_02_S.jpg', 2),
(6789, 213, 'catalog/Bracelet(BL)/BL401/BL401_01_S.jpg', 1),
(7036, 214, 'catalog/Necklace(NL)/NL405/NL405_03_S.jpg', 5),
(7035, 214, 'catalog/Necklace(NL)/NL405/NL405_05_S.jpg', 4),
(7034, 214, 'catalog/Necklace(NL)/NL405/NL405_04_S.jpg', 3),
(7033, 214, 'catalog/Necklace(NL)/NL405/NL405_01_S.jpg', 2),
(7032, 214, 'catalog/Necklace(NL)/NL405/NL405_02_S.jpg', 1),
(7371, 215, 'catalog/Earring(ER)/ER401/ER401_03_S.jpg', 3),
(7370, 215, 'catalog/Earring(ER)/ER401/ER401_02_S.jpg', 2),
(7369, 215, 'catalog/Earring(ER)/ER401/ER401_01_S.jpg', 1),
(6337, 216, 'catalog/Necklace(NL)/NL406/NL406_04_S.jpg', 4),
(6336, 216, 'catalog/Necklace(NL)/NL406/NL406_02_S.jpg', 3),
(6335, 216, 'catalog/Necklace(NL)/NL406/NL406_03_S.jpg', 2),
(6334, 216, 'catalog/Necklace(NL)/NL406/NL406_01_S.jpg', 1),
(5222, 217, 'catalog/Bracelet(BL)/BL402/BL402_02_S.jpg', 2),
(5221, 217, 'catalog/Bracelet(BL)/BL402/BL402_01_S.jpg', 1),
(5384, 218, 'catalog/Earring(ER)/ER402/ER402_01_S.jpg', 3),
(5383, 218, 'catalog/Earring(ER)/ER402/ER402_02_S.jpg', 2),
(5382, 218, 'catalog/Earring(ER)/ER402/ER402_03_S.jpg', 1),
(6808, 219, 'catalog/Bracelet(BL)/JBL401/JBL401_02_S.jpg', 3),
(6807, 219, 'catalog/Bracelet(BL)/JBL401/JBL401_03_S.jpg', 2),
(6806, 219, 'catalog/Bracelet(BL)/JBL401/JBL401_01_S.jpg', 1),
(7376, 220, 'catalog/Earring(ER)/ER403/ER403_02_S.jpg', 3),
(7375, 220, 'catalog/Earring(ER)/ER403/ER403_03_S.jpg', 2),
(7374, 220, 'catalog/Earring(ER)/ER403/ER403_01_S.jpg', 1),
(7039, 221, 'catalog/Necklace(NL)/NL407/NL407_02_S.jpg', 3),
(7038, 221, 'catalog/Necklace(NL)/NL407/NL407_03_S.jpg', 2),
(7037, 221, 'catalog/Necklace(NL)/NL407/NL407_01_S.jpg', 1),
(7042, 222, 'catalog/Necklace(NL)/NL408/NL408_03_S.jpg', 3),
(7041, 222, 'catalog/Necklace(NL)/NL408/NL408_02_S.jpg', 2),
(7040, 222, 'catalog/Necklace(NL)/NL408/NL408_01_S.jpg', 1),
(5225, 223, 'catalog/Bracelet(BL)/BL403/BL403_03_S.jpg', 3),
(5224, 223, 'catalog/Bracelet(BL)/BL403/BL403_01_S.jpg', 2),
(5223, 223, 'catalog/Bracelet(BL)/BL403/BL403_02_S.jpg', 1),
(6794, 224, 'catalog/Bracelet(BL)/BL404/BL404_02_S.jpg', 3),
(6793, 224, 'catalog/Bracelet(BL)/BL404/BL404_01_S.jpg', 2),
(6792, 224, 'catalog/Bracelet(BL)/BL404/BL404_03_S.jpg', 1),
(7276, 226, 'catalog/Ring(RG)/JRG401/JRG401_03_S.jpg', 3),
(7275, 226, 'catalog/Ring(RG)/JRG401/JRG401_01_S.jpg', 2),
(7274, 226, 'catalog/Ring(RG)/JRG401/JRG401_02_S.jpg', 1),
(7373, 227, 'catalog/Earring(ER)/ER405/ER405_01_S.jpg', 2),
(7372, 227, 'catalog/Earring(ER)/ER405/ER405_02_S.jpg', 1),
(5647, 228, 'catalog/Necklace(NL)/NL410/NL410_01_S.jpg', 3),
(5646, 228, 'catalog/Necklace(NL)/NL410/NL410_02_S.jpg', 2),
(5645, 228, 'catalog/Necklace(NL)/NL410/NL410_03_S.jpg', 1),
(6811, 229, 'catalog/Bracelet(BL)/JBL402/JBL402_01_S.jpg', 3),
(6810, 229, 'catalog/Bracelet(BL)/JBL402/JBL402_03_S.jpg', 2),
(6809, 229, 'catalog/Bracelet(BL)/JBL402/JBL402_02_S.jpg', 1),
(7283, 230, 'catalog/Ring(RG)/RG402/RG402_01_S.jpg', 4),
(7282, 230, 'catalog/Ring(RG)/RG402/RG402_02_S.jpg', 3),
(7281, 230, 'catalog/Ring(RG)/RG402/RG402_03_S.jpg', 2),
(7280, 230, 'catalog/Ring(RG)/RG402/RG402_04_S.jpg', 1),
(5392, 231, 'catalog/Earring(ER)/ER406/ER406_03_S.jpg', 3),
(5391, 231, 'catalog/Earring(ER)/ER406/ER406_02_S.jpg', 2),
(5390, 231, 'catalog/Earring(ER)/ER406/ER406_01_S.jpg', 1),
(7045, 232, 'catalog/Necklace(NL)/NL411/NL411_03_S.jpg', 3),
(7044, 232, 'catalog/Necklace(NL)/NL411/NL411_02_S.jpg', 2),
(7043, 232, 'catalog/Necklace(NL)/NL411/NL411_01_S.jpg', 1),
(7028, 234, 'catalog/Necklace(NL)/JNL402/JNL402_04_S.jpg', 4),
(7027, 234, 'catalog/Necklace(NL)/JNL402/JNL402_03_S.jpg', 3),
(7026, 234, 'catalog/Necklace(NL)/JNL402/JNL402_02_S.jpg', 2),
(7025, 234, 'catalog/Necklace(NL)/JNL402/JNL402_01_S.jpg', 1),
(5923, 235, 'catalog/Ring(RG)/RG403/RG403_03_S.jpg', 5),
(5922, 235, 'catalog/Ring(RG)/RG403/RG403_02_S.jpg', 4),
(5921, 235, 'catalog/Ring(RG)/RG403/RG403_01_S.jpg', 3),
(5920, 235, 'catalog/Ring(RG)/RG403/RG403_05_S.jpg', 2),
(5919, 235, 'catalog/Ring(RG)/RG403/RG403_04_S.jpg', 1),
(7048, 236, 'catalog/Necklace(NL)/NL412/NL412_03_S.jpg', 3),
(7047, 236, 'catalog/Necklace(NL)/NL412/NL412_02_S.jpg', 2),
(7046, 236, 'catalog/Necklace(NL)/NL412/NL412_01_S.jpg', 1),
(6797, 237, 'catalog/Bracelet(BL)/BL405/BL405_01_S.jpg', 3),
(6796, 237, 'catalog/Bracelet(BL)/BL405/BL405_03_S.jpg', 2),
(6795, 237, 'catalog/Bracelet(BL)/BL405/BL405_02_S.jpg', 1),
(7286, 238, 'catalog/Ring(RG)/RG404/RG404_01_S.jpg', 3),
(7285, 238, 'catalog/Ring(RG)/RG404/RG404_02_S.jpg', 2),
(7284, 238, 'catalog/Ring(RG)/RG404/RG404_03_S.jpg', 1),
(7051, 239, 'catalog/Necklace(NL)/NL413/NL413_01_S.jpg', 3),
(7050, 239, 'catalog/Necklace(NL)/NL413/NL413_02_S.jpg', 2),
(7049, 239, 'catalog/Necklace(NL)/NL413/NL413_03_S.jpg', 1),
(5660, 240, 'catalog/Necklace(NL)/NL414/NL414_01_S.jpg', 4),
(5659, 240, 'catalog/Necklace(NL)/NL414/NL414_04_S.jpg', 3),
(5658, 240, 'catalog/Necklace(NL)/NL414/NL414_03_S.jpg', 2),
(5657, 240, 'catalog/Necklace(NL)/NL414/NL414_02_S.jpg', 1),
(5395, 241, 'catalog/Earring(ER)/ER407/ER407_02_S.jpg', 3),
(5394, 241, 'catalog/Earring(ER)/ER407/ER407_01_S.jpg', 2),
(5393, 241, 'catalog/Earring(ER)/ER407/ER407_03_S.jpg', 1),
(7279, 242, 'catalog/Ring(RG)/JRG402/JRG402_02_S.jpg', 3),
(7278, 242, 'catalog/Ring(RG)/JRG402/JRG402_03_S.jpg', 2),
(7277, 242, 'catalog/Ring(RG)/JRG402/JRG402_01_S.jpg', 1),
(7054, 243, 'catalog/Necklace(NL)/NL415/NL415_01_S.jpg', 0),
(7053, 243, 'catalog/Necklace(NL)/NL415/NL415_02_S.jpg', 0),
(7052, 243, 'catalog/Necklace(NL)/NL415/NL415_03_S.jpg', 0),
(6383, 244, 'catalog/Ring(RG)/RG405/RG405_06_S.jpg', 5),
(6382, 244, 'catalog/Ring(RG)/RG405/RG405_05_S.jpg', 4),
(6381, 244, 'catalog/Ring(RG)/RG405/RG405_02_S.jpg', 3),
(6380, 244, 'catalog/Ring(RG)/RG405/RG405_01_S.jpg', 2),
(6379, 244, 'catalog/Ring(RG)/RG405/RG405_03_S.jpg', 1),
(7289, 245, 'catalog/Ring(RG)/RG406/RG406_02_S.jpg', 3),
(7288, 245, 'catalog/Ring(RG)/RG406/RG406_01_S.jpg', 2),
(7287, 245, 'catalog/Ring(RG)/RG406/RG406_03_S.jpg', 1),
(7292, 246, 'catalog/Ring(RG)/RG407/RG407_01_S.jpg', 3),
(7291, 246, 'catalog/Ring(RG)/RG407/RG407_03_S.jpg', 2),
(7290, 246, 'catalog/Ring(RG)/RG407/RG407_02_S.jpg', 1),
(7059, 251, 'catalog/Necklace(NL)/NL417/NL417_03_S.jpg', 5),
(7379, 248, 'catalog/Earring(ER)/ER408/ER408_01_S.jpg', 3),
(7378, 248, 'catalog/Earring(ER)/ER408/ER408_02_S.jpg', 2),
(7377, 248, 'catalog/Earring(ER)/ER408/ER408_03_S.jpg', 1),
(7058, 251, 'catalog/Necklace(NL)/NL417/NL417_04_S.jpg', 4),
(7057, 251, 'catalog/Necklace(NL)/NL417/NL417_02_S.jpg', 3),
(7056, 251, 'catalog/Necklace(NL)/NL417/NL417_01_S.jpg', 2),
(7055, 251, 'catalog/Necklace(NL)/NL417/NL417_05_S.jpg', 1),
(7296, 252, 'catalog/Ring(RG)/RG408/RG408_01_S.jpg', 4),
(7295, 252, 'catalog/Ring(RG)/RG408/RG408_02_S.jpg', 3),
(7294, 252, 'catalog/Ring(RG)/RG408/RG408_03_S.jpg', 2),
(7293, 252, 'catalog/Ring(RG)/RG408/RG408_04_S.jpg', 1),
(5401, 253, 'catalog/Earring(ER)/ER409/ER409_03_S.jpg', 3),
(5400, 253, 'catalog/Earring(ER)/ER409/ER409_02_S.jpg', 2),
(5399, 253, 'catalog/Earring(ER)/ER409/ER409_01_S.jpg', 1),
(5944, 254, 'catalog/Ring(RG)/RG409/RG409_02_S.jpg', 3),
(5943, 254, 'catalog/Ring(RG)/RG409/RG409_01_S.jpg', 2),
(5942, 254, 'catalog/Ring(RG)/RG409/RG409_03_S.jpg', 1),
(7062, 255, 'catalog/Necklace(NL)/NL419/NL419_03_S.jpg', 3),
(7061, 255, 'catalog/Necklace(NL)/NL419/NL419_01_S.jpg', 2),
(7060, 255, 'catalog/Necklace(NL)/NL419/NL419_02_S.jpg', 1),
(7300, 256, 'catalog/Ring(RG)/RG410/RG410_01_S.jpg', 4),
(7299, 256, 'catalog/Ring(RG)/RG410/RG410_02_S.jpg', 3),
(7298, 256, 'catalog/Ring(RG)/RG410/RG410_04_S.jpg', 2),
(7297, 256, 'catalog/Ring(RG)/RG410/RG410_03_S.jpg', 1),
(6801, 257, 'catalog/Bracelet(BL)/BL406/BL406_01_S.jpg', 4),
(6800, 257, 'catalog/Bracelet(BL)/BL406/BL406_02_S.jpg', 3),
(6799, 257, 'catalog/Bracelet(BL)/BL406/BL406_04_S.jpg', 2),
(6798, 257, 'catalog/Bracelet(BL)/BL406/BL406_03_S.jpg', 1),
(5239, 258, 'catalog/Bracelet(BL)/BL407/BL407_01_S.jpg', 4),
(5238, 258, 'catalog/Bracelet(BL)/BL407/BL407_02_S.jpg', 3),
(5237, 258, 'catalog/Bracelet(BL)/BL407/BL407_03_S.jpg', 2),
(5236, 258, 'catalog/Bracelet(BL)/BL407/BL407_04_S.jpg', 1),
(5674, 259, 'catalog/Necklace(NL)/NL420/NL420_03_S.jpg', 0),
(5673, 259, 'catalog/Necklace(NL)/NL420/NL420_02_S.jpg', 0),
(5672, 259, 'catalog/Necklace(NL)/NL420/NL420_01_S.jpg', 0),
(6390, 260, 'catalog/Necklace(NL)/NL421/NL421_01_S.jpg', 4),
(6389, 260, 'catalog/Necklace(NL)/NL421/NL421_02_S.jpg', 3),
(6388, 260, 'catalog/Necklace(NL)/NL421/NL421_04_S.jpg', 2),
(6387, 260, 'catalog/Necklace(NL)/NL421/NL421_03_S.jpg', 1),
(6393, 261, 'catalog/Necklace(NL)/NL422/NL422_02_S.jpg', 3),
(6394, 261, 'catalog/Necklace(NL)/NL422/NL422_01_S.jpg', 4),
(7461, 368, 'catalog/Necklace(NL)/NL810/NL810_02_S.jpg', 5),
(6392, 261, 'catalog/Necklace(NL)/NL422/NL422_04_S.jpg', 2),
(6391, 261, 'catalog/Necklace(NL)/NL422/NL422_03_S.jpg', 1),
(6805, 262, 'catalog/Bracelet(BL)/BL408/BL408_01_S.jpg', 4),
(6804, 262, 'catalog/Bracelet(BL)/BL408/BL408_02_S.jpg', 3),
(6803, 262, 'catalog/Bracelet(BL)/BL408/BL408_03_S.jpg', 2),
(6802, 262, 'catalog/Bracelet(BL)/BL408/BL408_04_S.jpg', 1),
(5249, 263, 'catalog/Bracelet(BL)/BL409/BL409_06_S.jpg', 6),
(5248, 263, 'catalog/Bracelet(BL)/BL409/BL409_01_S.jpg', 5),
(5247, 263, 'catalog/Bracelet(BL)/BL409/BL409_04_S.jpg', 4),
(5246, 263, 'catalog/Bracelet(BL)/BL409/BL409_05_S.jpg', 3),
(5245, 263, 'catalog/Bracelet(BL)/BL409/BL409_02_S.jpg', 2),
(5244, 263, 'catalog/Bracelet(BL)/BL409/BL409_03_S.jpg', 1),
(6397, 264, 'catalog/Necklace(NL)/NL701/NL701_05_S.jpg', 3),
(6398, 264, 'catalog/Necklace(NL)/NL701/NL701_04_S.jpg', 4),
(6399, 264, 'catalog/Necklace(NL)/NL701/NL701_01_S.jpg', 5),
(7093, 265, 'catalog/Necklace(NL)/NL702/NL702_06_S.jpg', 6),
(7092, 265, 'catalog/Necklace(NL)/NL702/NL702_05_S.jpg', 5),
(7091, 265, 'catalog/Necklace(NL)/NL702/NL702_02_S.jpg', 4),
(7090, 265, 'catalog/Necklace(NL)/NL702/NL702_01_S.jpg', 3),
(7088, 265, 'catalog/Necklace(NL)/NL702/NL702_04_S.jpg', 1),
(7089, 265, 'catalog/Necklace(NL)/NL702/NL702_03_S.jpg', 2),
(7099, 266, 'catalog/Necklace(NL)/NL703/NL703_06_S.jpg', 6),
(7098, 266, 'catalog/Necklace(NL)/NL703/NL703_05_S.jpg', 5),
(7097, 266, 'catalog/Necklace(NL)/NL703/NL703_04_S.jpg', 4),
(7096, 266, 'catalog/Necklace(NL)/NL703/NL703_01_S.jpg', 3),
(7095, 266, 'catalog/Necklace(NL)/NL703/NL703_03_S.jpg', 2),
(7094, 266, 'catalog/Necklace(NL)/NL703/NL703_02_S.jpg', 1),
(7105, 267, 'catalog/Necklace(NL)/NL704/NL704_01_S.jpg', 6),
(7104, 267, 'catalog/Necklace(NL)/NL704/NL704_06_S.jpg', 5),
(7103, 267, 'catalog/Necklace(NL)/NL704/NL704_05_S.jpg', 4),
(7102, 267, 'catalog/Necklace(NL)/NL704/NL704_04_S.jpg', 3),
(7101, 267, 'catalog/Necklace(NL)/NL704/NL704_03_S.jpg', 2),
(7100, 267, 'catalog/Necklace(NL)/NL704/NL704_02_S.jpg', 1),
(6817, 268, 'catalog/Bracelet(BL)/BL701/BL701_06_S.jpg', 0),
(6816, 268, 'catalog/Bracelet(BL)/BL701/BL701_05_S.jpg', 0),
(6815, 268, 'catalog/Bracelet(BL)/BL701/BL701_04_S.jpg', 0),
(6814, 268, 'catalog/Bracelet(BL)/BL701/BL701_03_S.jpg', 0),
(6813, 268, 'catalog/Bracelet(BL)/BL701/BL701_02_S.jpg', 0),
(6812, 268, 'catalog/Bracelet(BL)/BL701/BL701_01_S.jpg', 0),
(6396, 264, 'catalog/Necklace(NL)/NL701/NL701_02_S.jpg', 2),
(6395, 264, 'catalog/Necklace(NL)/NL701/NL701_03_S.jpg', 1),
(6821, 269, 'catalog/Bracelet(BL)/BL702/BL702_04_S.jpg', 4),
(6820, 269, 'catalog/Bracelet(BL)/BL702/BL702_02_S.jpg', 3),
(6819, 269, 'catalog/Bracelet(BL)/BL702/BL702_03_S.jpg', 2),
(6818, 269, 'catalog/Bracelet(BL)/BL702/BL702_01_S.jpg', 1),
(6826, 270, 'catalog/Bracelet(BL)/BL703/BL703_04_S.jpg', 5),
(6825, 270, 'catalog/Bracelet(BL)/BL703/BL703_05_S.jpg', 4),
(6824, 270, 'catalog/Bracelet(BL)/BL703/BL703_03_S.jpg', 3),
(6823, 270, 'catalog/Bracelet(BL)/BL703/BL703_02_S.jpg', 2),
(6822, 270, 'catalog/Bracelet(BL)/BL703/BL703_01_S.jpg', 1),
(6832, 271, 'catalog/Bracelet(BL)/BL704/BL704_06_S.jpg', 6),
(6831, 271, 'catalog/Bracelet(BL)/BL704/BL704_05_S.jpg', 5),
(6830, 271, 'catalog/Bracelet(BL)/BL704/BL704_03_S.jpg', 4),
(6829, 271, 'catalog/Bracelet(BL)/BL704/BL704_01_S.jpg', 3),
(6828, 271, 'catalog/Bracelet(BL)/BL704/BL704_04_S.jpg', 2),
(6827, 271, 'catalog/Bracelet(BL)/BL704/BL704_02_S.jpg', 1),
(7112, 272, 'catalog/Necklace(NL)/NL705/NL705_06_S.jpg', 7),
(7111, 272, 'catalog/Necklace(NL)/NL705/NL705_01_S.jpg', 6),
(7110, 272, 'catalog/Necklace(NL)/NL705/NL705_07_S.jpg', 5),
(7109, 272, 'catalog/Necklace(NL)/NL705/NL705_04_S.jpg', 4),
(7108, 272, 'catalog/Necklace(NL)/NL705/NL705_05_S.jpg', 3),
(7107, 272, 'catalog/Necklace(NL)/NL705/NL705_03_S.jpg', 2),
(7106, 272, 'catalog/Necklace(NL)/NL705/NL705_02_S.jpg', 1),
(6837, 273, 'catalog/Bracelet(BL)/BL705/BL705_01_S.jpg', 5),
(6836, 273, 'catalog/Bracelet(BL)/BL705/BL705_03_S.jpg', 4),
(6835, 273, 'catalog/Bracelet(BL)/BL705/BL705_05_S.jpg', 3),
(6834, 273, 'catalog/Bracelet(BL)/BL705/BL705_04_S.jpg', 2),
(6833, 273, 'catalog/Bracelet(BL)/BL705/BL705_02_S.jpg', 1),
(6440, 274, 'catalog/Necklace(NL)/NL706/NL706_06_S.jpg', 6),
(6439, 274, 'catalog/Necklace(NL)/NL706/NL706_03_S.jpg', 5),
(6438, 274, 'catalog/Necklace(NL)/NL706/NL706_02_S.jpg', 4),
(6437, 274, 'catalog/Necklace(NL)/NL706/NL706_01_S.jpg', 3),
(6436, 274, 'catalog/Necklace(NL)/NL706/NL706_05_S.jpg', 2),
(6435, 274, 'catalog/Necklace(NL)/NL706/NL706_04_S.jpg', 1),
(6844, 275, 'catalog/Bracelet(BL)/BL706/BL706_04_S.jpg', 7),
(6843, 275, 'catalog/Bracelet(BL)/BL706/BL706_05_S.jpg', 6),
(6842, 275, 'catalog/Bracelet(BL)/BL706/BL706_06_S.jpg', 5),
(6841, 275, 'catalog/Bracelet(BL)/BL706/BL706_07_S.jpg', 4),
(6840, 275, 'catalog/Bracelet(BL)/BL706/BL706_03_S.jpg', 3),
(6839, 275, 'catalog/Bracelet(BL)/BL706/BL706_02_S.jpg', 2),
(6838, 275, 'catalog/Bracelet(BL)/BL706/BL706_01_S.jpg', 1),
(7407, 276, 'catalog/BABY(BB)/BB701/BB701_02_S.jpg', 0),
(7406, 276, 'catalog/BABY(BB)/BB701/BB701_03_S.jpg', 0),
(7405, 276, 'catalog/BABY(BB)/BB701/BB701_04_S.jpg', 0),
(6854, 277, 'catalog/Bracelet(BL)/BL707/BL707_04_S.jpg', 5),
(6853, 277, 'catalog/Bracelet(BL)/BL707/BL707_06_S.jpg', 4),
(6852, 277, 'catalog/Bracelet(BL)/BL707/BL707_03_S.jpg', 3),
(6851, 277, 'catalog/Bracelet(BL)/BL707/BL707_01_S.jpg', 2),
(6850, 277, 'catalog/Bracelet(BL)/BL707/BL707_02_S.jpg', 1),
(5722, 278, 'catalog/Necklace(NL)/NL707/NL707_04_S.jpg', 4),
(5721, 278, 'catalog/Necklace(NL)/NL707/NL707_02_S.jpg', 3),
(5720, 278, 'catalog/Necklace(NL)/NL707/NL707_03_S.jpg', 2),
(5719, 278, 'catalog/Necklace(NL)/NL707/NL707_01_S.jpg', 1),
(7447, 366, 'catalog/Necklace(NL)/NL809/NL809_03_S.jpg', 5),
(7306, 279, 'catalog/Ring(RG)/RG701/RG701_06_S.jpg', 6),
(7305, 279, 'catalog/Ring(RG)/RG701/RG701_04_S.jpg', 5),
(7304, 279, 'catalog/Ring(RG)/RG701/RG701_05_S.jpg', 4),
(7303, 279, 'catalog/Ring(RG)/RG701/RG701_03_S.jpg', 3),
(7302, 279, 'catalog/Ring(RG)/RG701/RG701_01_S.jpg', 2),
(7301, 279, 'catalog/Ring(RG)/RG701/RG701_02_S.jpg', 1),
(7117, 280, 'catalog/Necklace(NL)/NL708/NL708_03_S.jpg', 2),
(7118, 280, 'catalog/Necklace(NL)/NL708/NL708_02_S.jpg', 3),
(7116, 280, 'catalog/Necklace(NL)/NL708/NL708_01_S.jpg', 1),
(7123, 281, 'catalog/Necklace(NL)/NL709/NL709_03_S.jpg', 5),
(7122, 281, 'catalog/Necklace(NL)/NL709/NL709_02_S.jpg', 4),
(7121, 281, 'catalog/Necklace(NL)/NL709/NL709_01_S.jpg', 3),
(7120, 281, 'catalog/Necklace(NL)/NL709/NL709_05_S.jpg', 2),
(7119, 281, 'catalog/Necklace(NL)/NL709/NL709_04_S.jpg', 1),
(6858, 282, 'catalog/Bracelet(BL)/BL708/BL708_01_S.jpg', 4),
(6857, 282, 'catalog/Bracelet(BL)/BL708/BL708_04_S.jpg', 3),
(6855, 282, 'catalog/Bracelet(BL)/BL708/BL708_03_S.jpg', 1),
(6856, 282, 'catalog/Bracelet(BL)/BL708/BL708_02_S.jpg', 2),
(7130, 283, 'catalog/Necklace(NL)/NL710/NL710_01_S.jpg', 7),
(7129, 283, 'catalog/Necklace(NL)/NL710/NL710_02_S.jpg', 6),
(7128, 283, 'catalog/Necklace(NL)/NL710/NL710_05_S.jpg', 5),
(7127, 283, 'catalog/Necklace(NL)/NL710/NL710_04_S.jpg', 4),
(7126, 283, 'catalog/Necklace(NL)/NL710/NL710_07_S.jpg', 3),
(7125, 283, 'catalog/Necklace(NL)/NL710/NL710_03_S.jpg', 2),
(7124, 283, 'catalog/Necklace(NL)/NL710/NL710_06_S.jpg', 1),
(6861, 284, 'catalog/Bracelet(BL)/BL709/BL709_04_S.jpg', 3),
(6862, 284, 'catalog/Bracelet(BL)/BL709/BL709_03_S.jpg', 4),
(7444, 366, 'catalog/Necklace(NL)/NL809/NL809_04_S.jpg', 2),
(6860, 284, 'catalog/Bracelet(BL)/BL709/BL709_01_S.jpg', 2),
(6859, 284, 'catalog/Bracelet(BL)/BL709/BL709_02_S.jpg', 1),
(7312, 285, 'catalog/Ring(RG)/RG702/RG702_06_S.jpg', 6),
(7311, 285, 'catalog/Ring(RG)/RG702/RG702_05_S.jpg', 5),
(7310, 285, 'catalog/Ring(RG)/RG702/RG702_04_S.jpg', 4),
(7309, 285, 'catalog/Ring(RG)/RG702/RG702_02_S.jpg', 3),
(7308, 285, 'catalog/Ring(RG)/RG702/RG702_03_S.jpg', 2),
(7307, 285, 'catalog/Ring(RG)/RG702/RG702_01_S.jpg', 1),
(6680, 286, 'catalog/Earring(ER)/ER701/ER701_01_S.jpg', 2),
(6679, 286, 'catalog/Earring(ER)/ER701/ER701_02_S.jpg', 1),
(7135, 287, 'catalog/Necklace(NL)/NL711/NL711_04_S.jpg', 5),
(7134, 287, 'catalog/Necklace(NL)/NL711/NL711_05_S.jpg', 4),
(7133, 287, 'catalog/Necklace(NL)/NL711/NL711_01_S.jpg', 3),
(7132, 287, 'catalog/Necklace(NL)/NL711/NL711_03_S.jpg', 2),
(7131, 287, 'catalog/Necklace(NL)/NL711/NL711_02_S.jpg', 1),
(6870, 288, 'catalog/Bracelet(BL)/BL710/BL710_05_S.jpg', 8),
(6869, 288, 'catalog/Bracelet(BL)/BL710/BL710_04_S.jpg', 7),
(6868, 288, 'catalog/Bracelet(BL)/BL710/BL710_08_S.jpg', 6),
(6867, 288, 'catalog/Bracelet(BL)/BL710/BL710_03_S.jpg', 5),
(6866, 288, 'catalog/Bracelet(BL)/BL710/BL710_02_S.jpg', 4),
(6865, 288, 'catalog/Bracelet(BL)/BL710/BL710_06_S.jpg', 3),
(6864, 288, 'catalog/Bracelet(BL)/BL710/BL710_01_S.jpg', 2),
(6863, 288, 'catalog/Bracelet(BL)/BL710/BL710_07_S.jpg', 1),
(7142, 289, 'catalog/Necklace(NL)/NL712/NL712_05_S.jpg', 7),
(7141, 289, 'catalog/Necklace(NL)/NL712/NL712_04_S.jpg', 6),
(7140, 289, 'catalog/Necklace(NL)/NL712/NL712_06_S.jpg', 5),
(7139, 289, 'catalog/Necklace(NL)/NL712/NL712_03_S.jpg', 4),
(7138, 289, 'catalog/Necklace(NL)/NL712/NL712_07_S.jpg', 3),
(7137, 289, 'catalog/Necklace(NL)/NL712/NL712_02_S.jpg', 2),
(7136, 289, 'catalog/Necklace(NL)/NL712/NL712_01_S.jpg', 1),
(6873, 290, 'catalog/Bracelet(BL)/BL711/BL711_01_S.jpg', 3),
(6874, 290, 'catalog/Bracelet(BL)/BL711/BL711_02_S.jpg', 4),
(6875, 290, 'catalog/Bracelet(BL)/BL711/BL711_05_S.jpg', 5),
(6872, 290, 'catalog/Bracelet(BL)/BL711/BL711_04_S.jpg', 2),
(6871, 290, 'catalog/Bracelet(BL)/BL711/BL711_03_S.jpg', 1),
(7316, 291, 'catalog/Ring(RG)/RG703/RG703_04_S.jpg', 4),
(7315, 291, 'catalog/Ring(RG)/RG703/RG703_02_S.jpg', 3),
(7314, 291, 'catalog/Ring(RG)/RG703/RG703_03_S.jpg', 2),
(7313, 291, 'catalog/Ring(RG)/RG703/RG703_01_S.jpg', 1),
(7147, 292, 'catalog/Necklace(NL)/NL713/NL713_01_S.jpg', 5),
(7146, 292, 'catalog/Necklace(NL)/NL713/NL713_03_S.jpg', 4),
(7145, 292, 'catalog/Necklace(NL)/NL713/NL713_05_S.jpg', 3),
(7144, 292, 'catalog/Necklace(NL)/NL713/NL713_02_S.jpg', 2),
(7143, 292, 'catalog/Necklace(NL)/NL713/NL713_04_S.jpg', 1),
(6700, 293, 'catalog/Necklace(NL)/NL714/NL714_02_S.jpg', 4),
(6699, 293, 'catalog/Necklace(NL)/NL714/NL714_03_S.jpg', 3),
(6698, 293, 'catalog/Necklace(NL)/NL714/NL714_01_S.jpg', 2),
(6697, 293, 'catalog/Necklace(NL)/NL714/NL714_04_S.jpg', 1),
(6880, 294, 'catalog/Bracelet(BL)/BL712/BL712_03_S.jpg', 5),
(6879, 294, 'catalog/Bracelet(BL)/BL712/BL712_02_S.jpg', 4),
(6878, 294, 'catalog/Bracelet(BL)/BL712/BL712_04_S.jpg', 3),
(6877, 294, 'catalog/Bracelet(BL)/BL712/BL712_01_S.jpg', 2),
(6876, 294, 'catalog/Bracelet(BL)/BL712/BL712_05_S.jpg', 1),
(6489, 295, 'catalog/Necklace(NL)/NL715/NL715_05_S.jpg', 5),
(6488, 295, 'catalog/Necklace(NL)/NL715/NL715_02_S.jpg', 4),
(6487, 295, 'catalog/Necklace(NL)/NL715/NL715_04_S.jpg', 3),
(6486, 295, 'catalog/Necklace(NL)/NL715/NL715_01_S.jpg', 2),
(6485, 295, 'catalog/Necklace(NL)/NL715/NL715_03_S.jpg', 1),
(5317, 296, 'catalog/Bracelet(BL)/BL713/BL713_02_S.jpg', 4),
(5316, 296, 'catalog/Bracelet(BL)/BL713/BL713_03_S.jpg', 3),
(5315, 296, 'catalog/Bracelet(BL)/BL713/BL713_01_S.jpg', 2),
(5314, 296, 'catalog/Bracelet(BL)/BL713/BL713_04_S.jpg', 1),
(7323, 297, 'catalog/Ring(RG)/RG704/RG704_07_S.jpg', 7),
(7322, 297, 'catalog/Ring(RG)/RG704/RG704_06_S.jpg', 6),
(7321, 297, 'catalog/Ring(RG)/RG704/RG704_04_S.jpg', 5),
(7320, 297, 'catalog/Ring(RG)/RG704/RG704_02_S.jpg', 4),
(7319, 297, 'catalog/Ring(RG)/RG704/RG704_05_S.jpg', 3),
(7318, 297, 'catalog/Ring(RG)/RG704/RG704_03_S.jpg', 2),
(7317, 297, 'catalog/Ring(RG)/RG704/RG704_01_S.jpg', 1),
(7159, 298, 'catalog/Necklace(NL)/NL716/NL716_02_S.jpg', 6),
(7158, 298, 'catalog/Necklace(NL)/NL716/NL716_05_S.jpg', 5),
(7157, 298, 'catalog/Necklace(NL)/NL716/NL716_03_S.jpg', 4),
(7156, 298, 'catalog/Necklace(NL)/NL716/NL716_04_S.jpg', 3),
(7155, 298, 'catalog/Necklace(NL)/NL716/NL716_01_S.jpg', 2),
(7154, 298, 'catalog/Necklace(NL)/NL716/NL716_06_S.jpg', 1),
(7328, 299, 'catalog/Ring(RG)/RG705/RG705_03_S.jpg', 5),
(7327, 299, 'catalog/Ring(RG)/RG705/RG705_02_S.jpg', 4),
(7326, 299, 'catalog/Ring(RG)/RG705/RG705_05_S.jpg', 3),
(7325, 299, 'catalog/Ring(RG)/RG705/RG705_01_S.jpg', 2),
(7324, 299, 'catalog/Ring(RG)/RG705/RG705_04_S.jpg', 1),
(7165, 300, 'catalog/Necklace(NL)/NL717/NL717_01_S.jpg', 6),
(7164, 300, 'catalog/Necklace(NL)/NL717/NL717_05_S.jpg', 5),
(7163, 300, 'catalog/Necklace(NL)/NL717/NL717_06_S.jpg', 4),
(7162, 300, 'catalog/Necklace(NL)/NL717/NL717_02_S.jpg', 3),
(7161, 300, 'catalog/Necklace(NL)/NL717/NL717_03_S.jpg', 2),
(7160, 300, 'catalog/Necklace(NL)/NL717/NL717_04_S.jpg', 1),
(7169, 301, 'catalog/Necklace(NL)/NL718/NL718_01_S.jpg', 4),
(7168, 301, 'catalog/Necklace(NL)/NL718/NL718_03_S.jpg', 3),
(7167, 301, 'catalog/Necklace(NL)/NL718/NL718_02_S.jpg', 2),
(7166, 301, 'catalog/Necklace(NL)/NL718/NL718_04_S.jpg', 1),
(6884, 302, 'catalog/Bracelet(BL)/BL714/BL714_04_S.jpg', 4),
(6883, 302, 'catalog/Bracelet(BL)/BL714/BL714_03_S.jpg', 3),
(6882, 302, 'catalog/Bracelet(BL)/BL714/BL714_01_S.jpg', 2),
(6881, 302, 'catalog/Bracelet(BL)/BL714/BL714_02_S.jpg', 1),
(7174, 303, 'catalog/Necklace(NL)/NL719/NL719_02_S.jpg', 5),
(7173, 303, 'catalog/Necklace(NL)/NL719/NL719_03_S.jpg', 4),
(7172, 303, 'catalog/Necklace(NL)/NL719/NL719_05_S.jpg', 3),
(7171, 303, 'catalog/Necklace(NL)/NL719/NL719_01_S.jpg', 2),
(7170, 303, 'catalog/Necklace(NL)/NL719/NL719_04_S.jpg', 1),
(6888, 304, 'catalog/Bracelet(BL)/BL715/BL715_02_S.jpg', 4),
(6887, 304, 'catalog/Bracelet(BL)/BL715/BL715_03_S.jpg', 3),
(6886, 304, 'catalog/Bracelet(BL)/BL715/BL715_01_S.jpg', 2),
(6885, 304, 'catalog/Bracelet(BL)/BL715/BL715_04_S.jpg', 1),
(7445, 366, 'catalog/Necklace(NL)/NL809/NL809_02_S.jpg', 3),
(7177, 305, 'catalog/Necklace(NL)/NL720/NL720_02_S.jpg', 3),
(7175, 305, 'catalog/Necklace(NL)/NL720/NL720_03_S.jpg', 1),
(7176, 305, 'catalog/Necklace(NL)/NL720/NL720_01_S.jpg', 2),
(6892, 306, 'catalog/Bracelet(BL)/BL716/BL716_04_S.jpg', 4),
(6889, 306, 'catalog/Bracelet(BL)/BL716/BL716_01_S.jpg', 1),
(6890, 306, 'catalog/Bracelet(BL)/BL716/BL716_03_S.jpg', 2),
(6891, 306, 'catalog/Bracelet(BL)/BL716/BL716_02_S.jpg', 3),
(7331, 307, 'catalog/Ring(RG)/RG706/RG706_02_S.jpg', 3),
(7332, 307, 'catalog/Ring(RG)/RG706/RG706_04_S.jpg', 4),
(7333, 307, 'catalog/Ring(RG)/RG706/RG706_01_S.jpg', 5),
(7330, 307, 'catalog/Ring(RG)/RG706/RG706_03_S.jpg', 2),
(7329, 307, 'catalog/Ring(RG)/RG706/RG706_05_S.jpg', 1),
(7183, 308, 'catalog/Necklace(NL)/NL721/NL721_01_S.jpg', 6),
(7182, 308, 'catalog/Necklace(NL)/NL721/NL721_05_S.jpg', 5),
(7181, 308, 'catalog/Necklace(NL)/NL721/NL721_03_S.jpg', 4),
(7180, 308, 'catalog/Necklace(NL)/NL721/NL721_06_S.jpg', 3),
(7179, 308, 'catalog/Necklace(NL)/NL721/NL721_02_S.jpg', 2),
(7178, 308, 'catalog/Necklace(NL)/NL721/NL721_04_S.jpg', 1),
(6896, 309, 'catalog/Bracelet(BL)/BL717/BL717_04_S.jpg', 4),
(6895, 309, 'catalog/Bracelet(BL)/BL717/BL717_03_S.jpg', 3),
(6894, 309, 'catalog/Bracelet(BL)/BL717/BL717_01_S.jpg', 2),
(6893, 309, 'catalog/Bracelet(BL)/BL717/BL717_02_S.jpg', 1),
(7186, 310, 'catalog/Necklace(NL)/NL722/NL722_03_S.jpg', 3),
(7185, 310, 'catalog/Necklace(NL)/NL722/NL722_02_S.jpg', 2),
(7184, 310, 'catalog/Necklace(NL)/NL722/NL722_01_S.jpg', 1),
(6900, 311, 'catalog/Bracelet(BL)/BL718/BL718_01_S.jpg', 4),
(6899, 311, 'catalog/Bracelet(BL)/BL718/BL718_04_S.jpg', 3),
(6897, 311, 'catalog/Bracelet(BL)/BL718/BL718_03_S.jpg', 1),
(6898, 311, 'catalog/Bracelet(BL)/BL718/BL718_02_S.jpg', 2),
(7340, 312, 'catalog/Ring(RG)/RG707/RG707_05_S.jpg', 7),
(7446, 366, 'catalog/Necklace(NL)/NL809/NL809_05_S.jpg', 4),
(7337, 312, 'catalog/Ring(RG)/RG707/RG707_03_S.jpg', 4),
(7338, 312, 'catalog/Ring(RG)/RG707/RG707_04_S.jpg', 5),
(7339, 312, 'catalog/Ring(RG)/RG707/RG707_02_S.jpg', 6),
(7336, 312, 'catalog/Ring(RG)/RG707/RG707_07_S.jpg', 3),
(7335, 312, 'catalog/Ring(RG)/RG707/RG707_06_S.jpg', 2),
(7334, 312, 'catalog/Ring(RG)/RG707/RG707_01_S.jpg', 1),
(7346, 313, 'catalog/Ring(RG)/RG708/RG708_05_S.jpg', 14),
(7345, 313, 'catalog/Ring(RG)/RG708/RG708_03_S.jpg', 6),
(7344, 313, 'catalog/Ring(RG)/RG708/RG708_04_S.jpg', 5),
(7343, 313, 'catalog/Ring(RG)/RG708/RG708_02_S.jpg', 3),
(7342, 313, 'catalog/Ring(RG)/RG708/RG708_01_S.jpg', 2),
(7341, 313, 'catalog/Ring(RG)/RG708/RG708_06_S.jpg', 0),
(7191, 314, 'catalog/Necklace(NL)/NL723/NL723_03_S.jpg', 5),
(7190, 314, 'catalog/Necklace(NL)/NL723/NL723_02_S.jpg', 4),
(7189, 314, 'catalog/Necklace(NL)/NL723/NL723_05_S.jpg', 3),
(7188, 314, 'catalog/Necklace(NL)/NL723/NL723_01_S.jpg', 2),
(7187, 314, 'catalog/Necklace(NL)/NL723/NL723_04_S.jpg', 1),
(6904, 315, 'catalog/Bracelet(BL)/BL719/BL719_03_S.jpg', 4),
(6903, 315, 'catalog/Bracelet(BL)/BL719/BL719_02_S.jpg', 3),
(6902, 315, 'catalog/Bracelet(BL)/BL719/BL719_04_S.jpg', 2),
(6901, 315, 'catalog/Bracelet(BL)/BL719/BL719_01_S.jpg', 1),
(5854, 316, 'catalog/Others(OT)/OT701/OT701_03_S.jpg', 0),
(5853, 316, 'catalog/Others(OT)/OT701/OT701_02_S.jpg', 0),
(5852, 316, 'catalog/Others(OT)/OT701/OT701_01_S.jpg', 0),
(7196, 317, 'catalog/Necklace(NL)/NL724/NL724_01_S.jpg', 5),
(7195, 317, 'catalog/Necklace(NL)/NL724/NL724_03_S.jpg', 4),
(7194, 317, 'catalog/Necklace(NL)/NL724/NL724_04_S.jpg', 3),
(7193, 317, 'catalog/Necklace(NL)/NL724/NL724_02_S.jpg', 2),
(7192, 317, 'catalog/Necklace(NL)/NL724/NL724_05_S.jpg', 1),
(6909, 318, 'catalog/Bracelet(BL)/BL720/BL720_01_S.jpg', 5),
(6908, 318, 'catalog/Bracelet(BL)/BL720/BL720_03_S.jpg', 4),
(6907, 318, 'catalog/Bracelet(BL)/BL720/BL720_04_S.jpg', 3),
(6906, 318, 'catalog/Bracelet(BL)/BL720/BL720_02_S.jpg', 2),
(6905, 318, 'catalog/Bracelet(BL)/BL720/BL720_05_S.jpg', 1),
(6540, 319, 'catalog/Necklace(NL)/NL725/NL725_01_S.jpg', 3),
(6539, 319, 'catalog/Necklace(NL)/NL725/NL725_02_S.jpg', 2),
(6538, 319, 'catalog/Necklace(NL)/NL725/NL725_03_S.jpg', 1),
(6912, 320, 'catalog/Bracelet(BL)/BL721/BL721_01_S.jpg', 3),
(6911, 320, 'catalog/Bracelet(BL)/BL721/BL721_02_S.jpg', 2),
(6910, 320, 'catalog/Bracelet(BL)/BL721/BL721_03_S.jpg', 1),
(7473, 321, 'catalog/Necklace(NL)/NL726/NL726_01_S.jpg', 3),
(7472, 321, 'catalog/Necklace(NL)/NL726/NL726_02_S.jpg', 2),
(7471, 321, 'catalog/Necklace(NL)/NL726/NL726_03_S.jpg', 1),
(5351, 322, 'catalog/Bracelet(BL)/BL722/BL722_01_S.jpg', 2),
(5350, 322, 'catalog/Bracelet(BL)/BL722/BL722_02_S.jpg', 1),
(7351, 323, 'catalog/Ring(RG)/RG709/RG709_04_S.jpg', 5),
(7350, 323, 'catalog/Ring(RG)/RG709/RG709_01_S.jpg', 4),
(7349, 323, 'catalog/Ring(RG)/RG709/RG709_05_S.jpg', 3),
(7348, 323, 'catalog/Ring(RG)/RG709/RG709_02_S.jpg', 2),
(7347, 323, 'catalog/Ring(RG)/RG709/RG709_03_S.jpg', 1),
(7355, 324, 'catalog/Ring(RG)/RG710/RG710_02_S.jpg', 4),
(7354, 324, 'catalog/Ring(RG)/RG710/RG710_04_S.jpg', 3),
(7353, 324, 'catalog/Ring(RG)/RG710/RG710_01_S.jpg', 2),
(7352, 324, 'catalog/Ring(RG)/RG710/RG710_03_S.jpg', 1),
(7202, 325, 'catalog/Necklace(NL)/NL801/NL801_05_S.jpg', 6),
(7201, 325, 'catalog/Necklace(NL)/NL801/NL801_02_S.jpg', 5),
(7200, 325, 'catalog/Necklace(NL)/NL801/NL801_06_S.jpg', 4),
(7199, 325, 'catalog/Necklace(NL)/NL801/NL801_04_S.jpg', 3),
(7198, 325, 'catalog/Necklace(NL)/NL801/NL801_01_S.jpg', 2),
(7197, 325, 'catalog/Necklace(NL)/NL801/NL801_03_S.jpg', 1),
(6916, 326, 'catalog/Bracelet(BL)/BL801/BL801_03_S.jpg', 4),
(6915, 326, 'catalog/Bracelet(BL)/BL801/BL801_02_S.jpg', 3),
(6914, 326, 'catalog/Bracelet(BL)/BL801/BL801_04_S.jpg', 2),
(6913, 326, 'catalog/Bracelet(BL)/BL801/BL801_01_S.jpg', 1),
(7207, 327, 'catalog/Necklace(NL)/NL802/NL802_02_S.jpg', 5),
(7206, 327, 'catalog/Necklace(NL)/NL802/NL802_01_S.jpg', 4),
(7205, 327, 'catalog/Necklace(NL)/NL802/NL802_05_S.jpg', 3),
(7204, 327, 'catalog/Necklace(NL)/NL802/NL802_04_S.jpg', 2),
(7203, 327, 'catalog/Necklace(NL)/NL802/NL802_03_S.jpg', 1),
(5358, 328, 'catalog/Bracelet(BL)/BL802/BL802_01_S.jpg', 3),
(5357, 328, 'catalog/Bracelet(BL)/BL802/BL802_03_S.jpg', 2),
(5356, 328, 'catalog/Bracelet(BL)/BL802/BL802_02_S.jpg', 1),
(7211, 329, 'catalog/Necklace(NL)/NL803/NL803_03_S.jpg', 4),
(7210, 329, 'catalog/Necklace(NL)/NL803/NL803_04_S.jpg', 3),
(7209, 329, 'catalog/Necklace(NL)/NL803/NL803_02_S.jpg', 2),
(7208, 329, 'catalog/Necklace(NL)/NL803/NL803_01_S.jpg', 1),
(6920, 330, 'catalog/Bracelet(BL)/BL803/BL803_01_S.jpg', 4),
(6919, 330, 'catalog/Bracelet(BL)/BL803/BL803_02_S.jpg', 3),
(6918, 330, 'catalog/Bracelet(BL)/BL803/BL803_04_S.jpg', 2),
(6917, 330, 'catalog/Bracelet(BL)/BL803/BL803_03_S.jpg', 1),
(7359, 331, 'catalog/Ring(RG)/RG801/RG801_02_S.jpg', 4),
(7358, 331, 'catalog/Ring(RG)/RG801/RG801_03_S.jpg', 3),
(7357, 331, 'catalog/Ring(RG)/RG801/RG801_01_S.jpg', 2),
(7356, 331, 'catalog/Ring(RG)/RG801/RG801_04_S.jpg', 1),
(7363, 332, 'catalog/Ring(RG)/RG802/RG802_04_S.jpg', 4),
(7364, 332, 'catalog/Ring(RG)/RG802/RG802_03_S.jpg', 5),
(7362, 332, 'catalog/Ring(RG)/RG802/RG802_02_S.jpg', 3),
(7361, 332, 'catalog/Ring(RG)/RG802/RG802_05_S.jpg', 2),
(7360, 332, 'catalog/Ring(RG)/RG802/RG802_01_S.jpg', 1),
(7470, 333, 'catalog/Necklace(NL)/NL804/NL804_02_S.jpg', 4),
(7469, 333, 'catalog/Necklace(NL)/NL804/NL804_03_S.jpg', 3),
(7468, 333, 'catalog/Necklace(NL)/NL804/NL804_01_S.jpg', 2),
(7467, 333, 'catalog/Necklace(NL)/NL804/NL804_04_S.jpg', 1),
(7219, 334, 'catalog/Necklace(NL)/NL805/NL805_01_S.jpg', 4),
(7218, 334, 'catalog/Necklace(NL)/NL805/NL805_05_S.jpg', 3),
(7217, 334, 'catalog/Necklace(NL)/NL805/NL805_02_S.jpg', 2),
(7216, 334, 'catalog/Necklace(NL)/NL805/NL805_04_S.jpg', 1),
(6924, 335, 'catalog/Bracelet(BL)/BL804/BL804_02_S.jpg', 4),
(6923, 335, 'catalog/Bracelet(BL)/BL804/BL804_01_S.jpg', 3),
(6922, 335, 'catalog/Bracelet(BL)/BL804/BL804_04_S.jpg', 2),
(6921, 335, 'catalog/Bracelet(BL)/BL804/BL804_03_S.jpg', 1),
(6017, 336, 'catalog/Ring(RG)/RG803/RG803_05_S.jpg', 5),
(6016, 336, 'catalog/Ring(RG)/RG803/RG803_02_S.jpg', 4),
(6015, 336, 'catalog/Ring(RG)/RG803/RG803_03_S.jpg', 3),
(6014, 336, 'catalog/Ring(RG)/RG803/RG803_01_S.jpg', 2),
(6013, 336, 'catalog/Ring(RG)/RG803/RG803_04_S.jpg', 1),
(7409, 338, 'catalog/BABY(BB)/BB802/BB802_02_S.jpg', 2),
(7408, 338, 'catalog/BABY(BB)/BB802/BB802_01_S.jpg', 1),
(7412, 339, 'catalog/BABY(BB)/BB803/BB803_06_S.jpg', 3),
(7411, 339, 'catalog/BABY(BB)/BB803/BB803_05_S.jpg', 2),
(7410, 339, 'catalog/BABY(BB)/BB803/BB803_04_S.jpg', 1),
(7414, 340, 'catalog/BABY(BB)/BB804/BB804_03_S.jpg', 2);
INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
(7413, 340, 'catalog/BABY(BB)/BB804/BB804_04_S.jpg', 1),
(7419, 341, 'catalog/BABY(BB)/BB805/BB805_03_S.jpg', 2),
(7418, 341, 'catalog/BABY(BB)/BB805/BB805_04_S.jpg', 1),
(6576, 342, 'catalog/Necklace(NL)/NL806/NL806_03_S.jpg', 5),
(6575, 342, 'catalog/Necklace(NL)/NL806/NL806_01_S.jpg', 4),
(6574, 342, 'catalog/Necklace(NL)/NL806/NL806_05_S.jpg', 3),
(6573, 342, 'catalog/Necklace(NL)/NL806/NL806_02_S.jpg', 2),
(6572, 342, 'catalog/Necklace(NL)/NL806/NL806_04_S.jpg', 1),
(6930, 343, 'catalog/Bracelet(BL)/BL805/BL805_03_S.jpg', 6),
(6929, 343, 'catalog/Bracelet(BL)/BL805/BL805_06_S.jpg', 5),
(6928, 343, 'catalog/Bracelet(BL)/BL805/BL805_02_S.jpg', 4),
(6927, 343, 'catalog/Bracelet(BL)/BL805/BL805_05_S.jpg', 3),
(6926, 343, 'catalog/Bracelet(BL)/BL805/BL805_01_S.jpg', 2),
(6925, 343, 'catalog/Bracelet(BL)/BL805/BL805_04_S.jpg', 1),
(7417, 344, 'catalog/BABY(BB)/BB806/BB806_01_S.jpg', 3),
(7416, 344, 'catalog/BABY(BB)/BB806/BB806_03_S.jpg', 2),
(7415, 344, 'catalog/BABY(BB)/BB806/BB806_02_S.jpg', 1),
(7368, 345, 'catalog/Ring(RG)/RG804/RG804_04_S.jpg', 4),
(7367, 345, 'catalog/Ring(RG)/RG804/RG804_02_S.jpg', 3),
(7366, 345, 'catalog/Ring(RG)/RG804/RG804_03_S.jpg', 2),
(7365, 345, 'catalog/Ring(RG)/RG804/RG804_01_S.jpg', 1),
(7224, 346, 'catalog/Necklace(NL)/NL807/NL807_05_S.jpg', 5),
(7223, 346, 'catalog/Necklace(NL)/NL807/NL807_04_S.jpg', 4),
(7222, 346, 'catalog/Necklace(NL)/NL807/NL807_01_S.jpg', 3),
(7221, 346, 'catalog/Necklace(NL)/NL807/NL807_03_S.jpg', 2),
(7220, 346, 'catalog/Necklace(NL)/NL807/NL807_02_S.jpg', 1),
(7230, 347, 'catalog/Necklace(NL)/NL808/NL808_03_S.jpg', 6),
(7229, 347, 'catalog/Necklace(NL)/NL808/NL808_05_S.jpg', 5),
(7228, 347, 'catalog/Necklace(NL)/NL808/NL808_01_S.jpg', 4),
(7227, 347, 'catalog/Necklace(NL)/NL808/NL808_06_S.jpg', 3),
(7226, 347, 'catalog/Necklace(NL)/NL808/NL808_02_S.jpg', 2),
(7225, 347, 'catalog/Necklace(NL)/NL808/NL808_04_S.jpg', 1),
(6948, 348, 'catalog/Bracelet(BL)/BL806/BL806_03_S.jpg', 6),
(6947, 348, 'catalog/Bracelet(BL)/BL806/BL806_05_S.jpg', 5),
(6946, 348, 'catalog/Bracelet(BL)/BL806/BL806_01_S.jpg', 4),
(6945, 348, 'catalog/Bracelet(BL)/BL806/BL806_04_S.jpg', 3),
(6944, 348, 'catalog/Bracelet(BL)/BL806/BL806_02_S.jpg', 2),
(6943, 348, 'catalog/Bracelet(BL)/BL806/BL806_06_S.jpg', 1),
(7448, 366, 'catalog/Necklace(NL)/NL809/NL809_06_S.jpg', 6),
(7443, 366, 'catalog/Necklace(NL)/NL809/NL809_01_S.jpg', 1),
(7466, 367, 'catalog/Bracelet(BL)/BL807/BL807_05_S.jpg', 5),
(7465, 367, 'catalog/Bracelet(BL)/BL807/BL807_04_S.jpg', 4),
(7464, 367, 'catalog/Bracelet(BL)/BL807/BL807_02_S.jpg', 3),
(7463, 367, 'catalog/Bracelet(BL)/BL807/BL807_03_S.jpg', 2),
(7462, 367, 'catalog/Bracelet(BL)/BL807/BL807_01_S.jpg', 1),
(7460, 368, 'catalog/Necklace(NL)/NL810/NL810_05_S.jpg', 4),
(7459, 368, 'catalog/Necklace(NL)/NL810/NL810_03_S.jpg', 3),
(7458, 368, 'catalog/Necklace(NL)/NL810/NL810_04_S.jpg', 2),
(7457, 368, 'catalog/Necklace(NL)/NL810/NL810_01_S.jpg', 1),
(7454, 369, 'catalog/BABY(BB)/BB807/BB807_01_S.jpg', 1),
(7455, 369, 'catalog/BABY(BB)/BB807/BB807_02_S.jpg', 3),
(7456, 369, 'catalog/BABY(BB)/BB807/BB807_03_S.jpg', 2);

-- --------------------------------------------------------

--
-- 資料表結構 `oc_product_option`
--

CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_product_option_value`
--

CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL,
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
  `weight_prefix` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_product_recurring`
--

CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_product_related`
--

CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_product_related`
--

INSERT INTO `oc_product_related` (`product_id`, `related_id`) VALUES
(139, 194),
(139, 220),
(140, 147),
(141, 148),
(142, 149),
(143, 145),
(143, 150),
(143, 291),
(144, 151),
(144, 152),
(145, 143),
(145, 150),
(145, 291),
(147, 140),
(148, 141),
(149, 142),
(150, 143),
(150, 145),
(150, 291),
(151, 144),
(151, 152),
(152, 144),
(152, 151),
(153, 159),
(153, 160),
(153, 161),
(155, 156),
(156, 155),
(157, 162),
(157, 163),
(157, 165),
(157, 166),
(157, 368),
(159, 153),
(159, 160),
(159, 161),
(160, 153),
(160, 159),
(160, 161),
(161, 153),
(161, 159),
(161, 160),
(162, 157),
(162, 163),
(162, 165),
(162, 166),
(162, 368),
(163, 157),
(163, 162),
(163, 165),
(163, 166),
(163, 368),
(165, 157),
(165, 162),
(165, 163),
(165, 166),
(166, 157),
(166, 162),
(166, 163),
(166, 165),
(167, 169),
(167, 180),
(168, 176),
(169, 167),
(169, 180),
(173, 345),
(174, 310),
(174, 311),
(175, 184),
(175, 231),
(176, 168),
(179, 279),
(180, 167),
(180, 169),
(183, 188),
(183, 218),
(184, 175),
(184, 231),
(186, 192),
(186, 203),
(187, 193),
(187, 198),
(188, 183),
(188, 218),
(189, 252),
(190, 195),
(191, 280),
(192, 186),
(192, 203),
(193, 187),
(193, 198),
(194, 139),
(194, 220),
(195, 190),
(196, 197),
(197, 196),
(198, 187),
(198, 193),
(201, 202),
(202, 201),
(203, 186),
(203, 192),
(205, 213),
(205, 334),
(205, 335),
(206, 210),
(206, 219),
(206, 226),
(206, 229),
(206, 234),
(206, 242),
(208, 209),
(209, 208),
(210, 206),
(210, 219),
(210, 226),
(210, 229),
(210, 234),
(210, 242),
(211, 217),
(213, 205),
(213, 334),
(213, 335),
(214, 239),
(214, 258),
(214, 338),
(216, 223),
(217, 211),
(218, 183),
(218, 188),
(219, 206),
(219, 210),
(219, 226),
(219, 229),
(219, 234),
(219, 242),
(220, 139),
(220, 194),
(221, 222),
(222, 221),
(223, 216),
(224, 236),
(224, 248),
(226, 206),
(226, 210),
(226, 219),
(226, 229),
(226, 234),
(226, 242),
(229, 206),
(229, 210),
(229, 219),
(229, 226),
(229, 234),
(229, 242),
(231, 175),
(231, 184),
(232, 257),
(234, 206),
(234, 210),
(234, 219),
(234, 226),
(234, 229),
(234, 242),
(236, 224),
(236, 248),
(237, 243),
(237, 337),
(238, 253),
(239, 214),
(239, 258),
(239, 338),
(242, 206),
(242, 210),
(242, 219),
(242, 226),
(242, 229),
(242, 234),
(243, 237),
(243, 337),
(244, 245),
(244, 246),
(245, 244),
(245, 246),
(246, 244),
(246, 245),
(248, 224),
(248, 236),
(252, 189),
(253, 238),
(257, 232),
(258, 214),
(258, 239),
(258, 338),
(260, 262),
(261, 261),
(262, 260),
(264, 268),
(264, 286),
(264, 323),
(264, 339),
(265, 269),
(265, 286),
(265, 324),
(265, 340),
(266, 270),
(267, 271),
(268, 264),
(268, 286),
(268, 323),
(268, 339),
(269, 265),
(269, 286),
(269, 324),
(269, 340),
(270, 266),
(271, 267),
(272, 273),
(273, 272),
(274, 275),
(275, 274),
(276, 277),
(276, 278),
(277, 276),
(277, 278),
(278, 276),
(278, 277),
(279, 179),
(280, 191),
(281, 282),
(282, 281),
(283, 284),
(284, 283),
(286, 264),
(286, 265),
(286, 268),
(286, 269),
(286, 323),
(286, 324),
(287, 288),
(288, 287),
(289, 290),
(290, 289),
(291, 143),
(291, 145),
(291, 150),
(293, 294),
(294, 293),
(295, 296),
(296, 295),
(297, 312),
(300, 301),
(300, 302),
(301, 300),
(301, 302),
(302, 300),
(302, 301),
(303, 304),
(304, 303),
(305, 306),
(305, 341),
(306, 305),
(306, 341),
(308, 309),
(309, 308),
(310, 174),
(310, 311),
(311, 174),
(311, 310),
(312, 297),
(314, 315),
(314, 316),
(315, 314),
(315, 316),
(316, 314),
(316, 315),
(317, 318),
(318, 317),
(319, 320),
(320, 319),
(321, 322),
(321, 369),
(322, 321),
(322, 369),
(323, 264),
(323, 268),
(323, 286),
(323, 339),
(324, 265),
(324, 269),
(324, 286),
(324, 340),
(325, 326),
(326, 325),
(327, 328),
(328, 327),
(329, 330),
(330, 329),
(333, 366),
(333, 367),
(334, 205),
(334, 213),
(334, 335),
(335, 205),
(335, 213),
(335, 334),
(337, 237),
(337, 243),
(338, 214),
(338, 239),
(338, 258),
(339, 264),
(339, 268),
(339, 323),
(340, 265),
(340, 269),
(340, 324),
(341, 305),
(341, 306),
(342, 343),
(342, 344),
(343, 342),
(343, 344),
(344, 342),
(344, 343),
(345, 173),
(347, 348),
(348, 347),
(366, 333),
(366, 367),
(367, 333),
(367, 366),
(368, 157),
(368, 162),
(368, 163),
(369, 321),
(369, 322);

-- --------------------------------------------------------

--
-- 資料表結構 `oc_product_reward`
--

CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_product_special`
--

CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_product_to_category`
--

CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(132, 25),
(133, 25),
(134, 25),
(135, 25),
(137, 18),
(137, 61),
(138, 18),
(139, 18),
(139, 61),
(140, 24),
(141, 24),
(142, 24),
(143, 24),
(144, 24),
(145, 18),
(147, 17),
(148, 17),
(149, 17),
(150, 17),
(150, 61),
(151, 17),
(152, 18),
(152, 61),
(153, 18),
(155, 18),
(156, 17),
(157, 18),
(157, 61),
(158, 18),
(159, 17),
(160, 25),
(161, 18),
(162, 18),
(162, 61),
(163, 18),
(164, 18),
(165, 18),
(166, 18),
(167, 18),
(167, 61),
(168, 18),
(168, 61),
(169, 18),
(170, 18),
(172, 18),
(173, 25),
(173, 61),
(174, 18),
(174, 61),
(175, 25),
(176, 17),
(176, 61),
(177, 25),
(177, 61),
(178, 18),
(179, 18),
(180, 25),
(181, 18),
(182, 18),
(183, 17),
(184, 18),
(185, 18),
(186, 18),
(186, 61),
(187, 17),
(187, 61),
(188, 18),
(189, 18),
(190, 17),
(191, 18),
(192, 17),
(193, 18),
(193, 61),
(194, 18),
(195, 18),
(196, 25),
(197, 25),
(198, 24),
(199, 18),
(200, 18),
(201, 25),
(202, 25),
(203, 18),
(204, 18),
(205, 18),
(206, 18),
(207, 18),
(207, 61),
(208, 18),
(209, 18),
(210, 20),
(211, 18),
(212, 25),
(213, 17),
(214, 18),
(214, 61),
(215, 20),
(216, 18),
(217, 17),
(218, 20),
(219, 17),
(220, 20),
(221, 18),
(222, 18),
(223, 17),
(224, 17),
(224, 61),
(226, 25),
(227, 20),
(228, 18),
(229, 17),
(230, 25),
(230, 61),
(231, 20),
(232, 18),
(234, 18),
(235, 25),
(236, 25),
(236, 61),
(237, 17),
(238, 25),
(239, 18),
(239, 61),
(240, 18),
(241, 20),
(242, 25),
(243, 18),
(244, 25),
(245, 25),
(246, 25),
(248, 20),
(251, 18),
(252, 25),
(253, 20),
(254, 25),
(255, 18),
(255, 61),
(256, 25),
(257, 17),
(258, 17),
(259, 18),
(260, 18),
(261, 18),
(262, 17),
(263, 17),
(264, 18),
(265, 18),
(266, 18),
(267, 18),
(268, 17),
(269, 17),
(270, 17),
(271, 17),
(272, 18),
(272, 61),
(273, 17),
(274, 18),
(275, 17),
(276, 24),
(276, 61),
(277, 17),
(278, 18),
(279, 25),
(280, 18),
(281, 18),
(282, 17),
(283, 18),
(284, 17),
(285, 25),
(286, 20),
(286, 61),
(287, 18),
(288, 17),
(289, 18),
(290, 17),
(291, 25),
(292, 18),
(293, 18),
(293, 61),
(294, 17),
(295, 18),
(296, 17),
(297, 25),
(298, 18),
(299, 25),
(299, 61),
(300, 18),
(301, 18),
(302, 17),
(303, 18),
(304, 17),
(305, 18),
(305, 61),
(306, 17),
(307, 25),
(308, 18),
(309, 17),
(310, 18),
(311, 17),
(312, 25),
(313, 25),
(314, 18),
(315, 17),
(316, 34),
(317, 18),
(318, 17),
(319, 18),
(320, 17),
(321, 18),
(322, 17),
(323, 25),
(324, 25),
(325, 18),
(326, 17),
(327, 18),
(328, 17),
(329, 18),
(330, 17),
(331, 25),
(332, 25),
(333, 18),
(334, 18),
(335, 17),
(336, 25),
(337, 24),
(338, 24),
(339, 24),
(340, 24),
(341, 24),
(342, 18),
(343, 17),
(344, 24),
(345, 25),
(346, 18),
(347, 18),
(348, 17),
(349, 60),
(366, 18),
(367, 17),
(368, 18),
(369, 24);

-- --------------------------------------------------------

--
-- 資料表結構 `oc_product_to_download`
--

CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_product_to_layout`
--

CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_product_to_layout`
--

INSERT INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
(132, 0, 0),
(147, 0, 0),
(150, 0, 0),
(157, 0, 0),
(141, 0, 0),
(143, 0, 0),
(139, 0, 0),
(151, 0, 0),
(135, 0, 0),
(153, 0, 0),
(142, 0, 0),
(148, 0, 0),
(144, 0, 0),
(87, 0, 0),
(133, 0, 0),
(140, 0, 0),
(137, 0, 0),
(152, 0, 0),
(158, 0, 0),
(156, 0, 0),
(134, 0, 0),
(149, 0, 0),
(138, 0, 0),
(159, 0, 0),
(145, 0, 0),
(161, 0, 0),
(155, 0, 0),
(162, 0, 0),
(160, 0, 0),
(163, 0, 0),
(164, 0, 0),
(165, 0, 0),
(166, 0, 0),
(167, 0, 0),
(168, 0, 0),
(169, 0, 0),
(170, 0, 0),
(173, 0, 0),
(172, 0, 0),
(174, 0, 0),
(175, 0, 0),
(176, 0, 0),
(177, 0, 0),
(178, 0, 0),
(179, 0, 0),
(180, 0, 0),
(181, 0, 0),
(182, 0, 0),
(183, 0, 0),
(184, 0, 0),
(185, 0, 0),
(186, 0, 0),
(187, 0, 0),
(188, 0, 0),
(189, 0, 0),
(190, 0, 0),
(191, 0, 0),
(192, 0, 0),
(193, 0, 0),
(194, 0, 0),
(195, 0, 0),
(196, 0, 0),
(197, 0, 0),
(198, 0, 0),
(199, 0, 0),
(200, 0, 0),
(201, 0, 0),
(202, 0, 0),
(203, 0, 0),
(204, 0, 0),
(205, 0, 0),
(206, 0, 0),
(207, 0, 0),
(208, 0, 0),
(209, 0, 0),
(210, 0, 0),
(211, 0, 0),
(212, 0, 0),
(213, 0, 0),
(214, 0, 0),
(215, 0, 0),
(216, 0, 0),
(217, 0, 0),
(218, 0, 0),
(219, 0, 0),
(220, 0, 0),
(221, 0, 0),
(222, 0, 0),
(223, 0, 0),
(224, 0, 0),
(226, 0, 0),
(227, 0, 0),
(228, 0, 0),
(229, 0, 0),
(230, 0, 0),
(231, 0, 0),
(232, 0, 0),
(234, 0, 0),
(235, 0, 0),
(236, 0, 0),
(237, 0, 0),
(238, 0, 0),
(239, 0, 0),
(240, 0, 0),
(241, 0, 0),
(242, 0, 0),
(243, 0, 0),
(244, 0, 0),
(245, 0, 0),
(246, 0, 0),
(248, 0, 0),
(251, 0, 0),
(252, 0, 0),
(253, 0, 0),
(254, 0, 0),
(255, 0, 0),
(256, 0, 0),
(257, 0, 0),
(258, 0, 0),
(259, 0, 0),
(260, 0, 0),
(261, 0, 0),
(262, 0, 0),
(263, 0, 0),
(264, 0, 0),
(265, 0, 0),
(266, 0, 0),
(267, 0, 0),
(268, 0, 0),
(269, 0, 0),
(270, 0, 0),
(271, 0, 0),
(272, 0, 0),
(273, 0, 0),
(274, 0, 0),
(275, 0, 0),
(276, 0, 0),
(277, 0, 0),
(278, 0, 0),
(279, 0, 0),
(280, 0, 0),
(281, 0, 0),
(282, 0, 0),
(283, 0, 0),
(284, 0, 0),
(285, 0, 0),
(286, 0, 0),
(287, 0, 0),
(288, 0, 0),
(289, 0, 0),
(290, 0, 0),
(291, 0, 0),
(292, 0, 0),
(293, 0, 0),
(294, 0, 0),
(295, 0, 0),
(296, 0, 0),
(297, 0, 0),
(298, 0, 0),
(299, 0, 0),
(300, 0, 0),
(301, 0, 0),
(302, 0, 0),
(303, 0, 0),
(304, 0, 0),
(305, 0, 0),
(306, 0, 0),
(307, 0, 0),
(308, 0, 0),
(309, 0, 0),
(310, 0, 0),
(311, 0, 0),
(312, 0, 0),
(313, 0, 0),
(314, 0, 0),
(315, 0, 0),
(316, 0, 0),
(317, 0, 0),
(318, 0, 0),
(319, 0, 0),
(320, 0, 0),
(321, 0, 0),
(322, 0, 0),
(323, 0, 0),
(324, 0, 0),
(325, 0, 0),
(326, 0, 0),
(327, 0, 0),
(328, 0, 0),
(329, 0, 0),
(330, 0, 0),
(331, 0, 0),
(332, 0, 0),
(333, 0, 0),
(334, 0, 0),
(335, 0, 0),
(336, 0, 0),
(337, 0, 0),
(338, 0, 0),
(339, 0, 0),
(340, 0, 0),
(341, 0, 0),
(342, 0, 0),
(343, 0, 0),
(344, 0, 0),
(345, 0, 0),
(346, 0, 0),
(347, 0, 0),
(348, 0, 0),
(349, 0, 0),
(369, 0, 0),
(368, 0, 0),
(367, 0, 0),
(366, 0, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `oc_product_to_store`
--

CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(87, 0),
(132, 0),
(133, 0),
(134, 0),
(135, 0),
(137, 0),
(138, 0),
(139, 0),
(140, 0),
(141, 0),
(142, 0),
(143, 0),
(144, 0),
(145, 0),
(147, 0),
(148, 0),
(149, 0),
(150, 0),
(151, 0),
(152, 0),
(153, 0),
(155, 0),
(156, 0),
(157, 0),
(158, 0),
(159, 0),
(160, 0),
(161, 0),
(162, 0),
(163, 0),
(164, 0),
(165, 0),
(166, 0),
(167, 0),
(168, 0),
(169, 0),
(170, 0),
(172, 0),
(173, 0),
(174, 0),
(175, 0),
(176, 0),
(177, 0),
(178, 0),
(179, 0),
(180, 0),
(181, 0),
(182, 0),
(183, 0),
(184, 0),
(185, 0),
(186, 0),
(187, 0),
(188, 0),
(189, 0),
(190, 0),
(191, 0),
(192, 0),
(193, 0),
(194, 0),
(195, 0),
(196, 0),
(197, 0),
(198, 0),
(199, 0),
(200, 0),
(201, 0),
(202, 0),
(203, 0),
(204, 0),
(205, 0),
(206, 0),
(207, 0),
(208, 0),
(209, 0),
(210, 0),
(211, 0),
(212, 0),
(213, 0),
(214, 0),
(215, 0),
(216, 0),
(217, 0),
(218, 0),
(219, 0),
(220, 0),
(221, 0),
(222, 0),
(223, 0),
(224, 0),
(226, 0),
(227, 0),
(228, 0),
(229, 0),
(230, 0),
(231, 0),
(232, 0),
(234, 0),
(235, 0),
(236, 0),
(237, 0),
(238, 0),
(239, 0),
(240, 0),
(241, 0),
(242, 0),
(243, 0),
(244, 0),
(245, 0),
(246, 0),
(248, 0),
(251, 0),
(252, 0),
(253, 0),
(254, 0),
(255, 0),
(256, 0),
(257, 0),
(258, 0),
(259, 0),
(260, 0),
(261, 0),
(262, 0),
(263, 0),
(264, 0),
(265, 0),
(266, 0),
(267, 0),
(268, 0),
(269, 0),
(270, 0),
(271, 0),
(272, 0),
(273, 0),
(274, 0),
(275, 0),
(276, 0),
(277, 0),
(278, 0),
(279, 0),
(280, 0),
(281, 0),
(282, 0),
(283, 0),
(284, 0),
(285, 0),
(286, 0),
(287, 0),
(288, 0),
(289, 0),
(290, 0),
(291, 0),
(292, 0),
(293, 0),
(294, 0),
(295, 0),
(296, 0),
(297, 0),
(298, 0),
(299, 0),
(300, 0),
(301, 0),
(302, 0),
(303, 0),
(304, 0),
(305, 0),
(306, 0),
(307, 0),
(308, 0),
(309, 0),
(310, 0),
(311, 0),
(312, 0),
(313, 0),
(314, 0),
(315, 0),
(316, 0),
(317, 0),
(318, 0),
(319, 0),
(320, 0),
(321, 0),
(322, 0),
(323, 0),
(324, 0),
(325, 0),
(326, 0),
(327, 0),
(328, 0),
(329, 0),
(330, 0),
(331, 0),
(332, 0),
(333, 0),
(334, 0),
(335, 0),
(336, 0),
(337, 0),
(338, 0),
(339, 0),
(340, 0),
(341, 0),
(342, 0),
(343, 0),
(344, 0),
(345, 0),
(346, 0),
(347, 0),
(348, 0),
(349, 0),
(366, 0),
(367, 0),
(368, 0),
(369, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `oc_recurring`
--

CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) UNSIGNED NOT NULL,
  `cycle` int(10) UNSIGNED NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) UNSIGNED NOT NULL,
  `trial_cycle` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_recurring_description`
--

CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_return`
--

CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL,
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
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_return_action`
--

CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, '退款'),
(2, 1, '退款至信用帳戶'),
(3, 1, '更換商品');

-- --------------------------------------------------------

--
-- 資料表結構 `oc_return_history`
--

CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_return_reason`
--

CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, '商品運送途中已毀損'),
(2, 1, '商品不符'),
(3, 1, '訂單有錯誤'),
(4, 1, '故障, 請詳述'),
(5, 1, '其它, 請詳述');

-- --------------------------------------------------------

--
-- 資料表結構 `oc_return_status`
--

CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, '待處理'),
(3, 1, '完成'),
(2, 1, '等待商品到貨');

-- --------------------------------------------------------

--
-- 資料表結構 `oc_review`
--

CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_ring_size`
--

CREATE TABLE `oc_ring_size` (
  `id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `size` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `oc_ring_size`
--

INSERT INTO `oc_ring_size` (`id`, `language_id`, `size`) VALUES
(0, 1, '請選擇戒圍'),
(1, 1, '4號(1.3cm)'),
(2, 1, '5號(1.35cm)'),
(3, 1, '6號(1.4cm)'),
(4, 1, '7號(1.45cm)'),
(5, 1, '8號(1.5cm)'),
(6, 1, '9號(1.55cm)'),
(7, 1, '10號(1.65cm)'),
(8, 1, '11號(1.65cm)'),
(9, 1, '12號(1.7cm)'),
(10, 1, '13號(1.75cm)'),
(11, 1, '14號(1.8cm)'),
(12, 1, '15號(1.85cm)'),
(13, 1, '16號(1.9cm)'),
(14, 1, '17號(1.95cm)'),
(15, 1, '18號(2.0cm)'),
(16, 1, '19號(2.05cm)'),
(17, 1, '20號(2.1cm)'),
(18, 1, '21號(2.15cm)');

-- --------------------------------------------------------

--
-- 資料表結構 `oc_setting`
--

CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(2268, 0, 'bank_transfer', 'bank_transfer_sort_order', '', 0),
(3123, 0, 'config', 'config_error_filename', 'error.log', 0),
(3121, 0, 'config', 'config_error_display', '1', 0),
(3122, 0, 'config', 'config_error_log', '1', 0),
(569, 0, 'voucher', 'voucher_sort_order', '8', 0),
(568, 0, 'voucher', 'voucher_status', '0', 0),
(2267, 0, 'bank_transfer', 'bank_transfer_status', '1', 0),
(2266, 0, 'bank_transfer', 'bank_transfer_geo_zone_id', '0', 0),
(3219, 0, 'ecpaylogistic', 'ecpaylogistic_hilife_collection_status', '1', 0),
(3118, 0, 'config', 'config_file_max_size', '300000', 0),
(3119, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(3120, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
(3105, 0, 'config', 'config_mail_smtp_password', '', 0),
(3106, 0, 'config', 'config_mail_smtp_port', '25', 0),
(3107, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(3108, 0, 'config', 'config_mail_alert', '[\"order\"]', 1),
(3109, 0, 'config', 'config_mail_alert_email', '', 0),
(3110, 0, 'config', 'config_maintenance', '0', 0),
(3111, 0, 'config', 'config_seo_url', '0', 0),
(3112, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(95, 0, 'free_checkout', 'free_checkout_status', '1', 0),
(96, 0, 'free_checkout', 'free_checkout_order_status_id', '1', 0),
(97, 0, 'shipping', 'shipping_sort_order', '3', 0),
(98, 0, 'sub_total', 'sub_total_sort_order', '1', 0),
(99, 0, 'sub_total', 'sub_total_status', '1', 0),
(561, 0, 'tax', 'tax_sort_order', '5', 0),
(101, 0, 'total', 'total_sort_order', '9', 0),
(102, 0, 'total', 'total_status', '1', 0),
(560, 0, 'tax', 'tax_status', '0', 0),
(104, 0, 'free_checkout', 'free_checkout_sort_order', '1', 0),
(1054, 0, 'cod', 'cod_sort_order', '1', 0),
(1053, 0, 'cod', 'cod_status', '0', 0),
(110, 0, 'shipping', 'shipping_status', '1', 0),
(111, 0, 'shipping', 'shipping_estimator', '1', 0),
(567, 0, 'coupon', 'coupon_sort_order', '4', 0),
(566, 0, 'coupon', 'coupon_status', '0', 0),
(2260, 0, 'flat', 'flat_sort_order', '1', 0),
(2259, 0, 'flat', 'flat_status', '1', 0),
(2258, 0, 'flat', 'flat_geo_zone_id', '0', 0),
(2257, 0, 'flat', 'flat_tax_class_id', '0', 0),
(2256, 0, 'flat', 'flat_cost', '0.00', 0),
(565, 0, 'credit', 'credit_sort_order', '7', 0),
(564, 0, 'credit', 'credit_status', '0', 0),
(554, 0, 'reward', 'reward_sort_order', '2', 0),
(553, 0, 'reward', 'reward_status', '0', 0),
(123, 0, 'category', 'category_status', '1', 0),
(124, 0, 'account', 'account_status', '1', 0),
(125, 0, 'affiliate', 'affiliate_status', '1', 0),
(126, 0, 'theme_default', 'theme_default_product_limit', '15', 0),
(127, 0, 'theme_default', 'theme_default_product_description_length', '100', 0),
(128, 0, 'theme_default', 'theme_default_image_thumb_width', '228', 0),
(129, 0, 'theme_default', 'theme_default_image_thumb_height', '228', 0),
(130, 0, 'theme_default', 'theme_default_image_popup_width', '500', 0),
(131, 0, 'theme_default', 'theme_default_image_popup_height', '500', 0),
(132, 0, 'theme_default', 'theme_default_image_category_width', '80', 0),
(133, 0, 'theme_default', 'theme_default_image_category_height', '80', 0),
(134, 0, 'theme_default', 'theme_default_image_product_width', '228', 0),
(135, 0, 'theme_default', 'theme_default_image_product_height', '228', 0),
(136, 0, 'theme_default', 'theme_default_image_additional_width', '74', 0),
(137, 0, 'theme_default', 'theme_default_image_additional_height', '74', 0),
(138, 0, 'theme_default', 'theme_default_image_related_width', '200', 0),
(139, 0, 'theme_default', 'theme_default_image_related_height', '200', 0),
(140, 0, 'theme_default', 'theme_default_image_compare_width', '90', 0),
(141, 0, 'theme_default', 'theme_default_image_compare_height', '90', 0),
(142, 0, 'theme_default', 'theme_default_image_wishlist_width', '47', 0),
(143, 0, 'theme_default', 'theme_default_image_wishlist_height', '47', 0),
(144, 0, 'theme_default', 'theme_default_image_cart_height', '47', 0),
(145, 0, 'theme_default', 'theme_default_image_cart_width', '47', 0),
(146, 0, 'theme_default', 'theme_default_image_location_height', '50', 0),
(147, 0, 'theme_default', 'theme_default_image_location_width', '268', 0),
(148, 0, 'theme_default', 'theme_default_directory', 'default', 0),
(149, 0, 'theme_default', 'theme_default_status', '1', 0),
(150, 0, 'dashboard_activity', 'dashboard_activity_status', '1', 0),
(151, 0, 'dashboard_activity', 'dashboard_activity_sort_order', '7', 0),
(152, 0, 'dashboard_sale', 'dashboard_sale_status', '1', 0),
(153, 0, 'dashboard_sale', 'dashboard_sale_width', '3', 0),
(154, 0, 'dashboard_chart', 'dashboard_chart_status', '1', 0),
(155, 0, 'dashboard_chart', 'dashboard_chart_width', '6', 0),
(156, 0, 'dashboard_customer', 'dashboard_customer_status', '1', 0),
(157, 0, 'dashboard_customer', 'dashboard_customer_width', '3', 0),
(158, 0, 'dashboard_map', 'dashboard_map_status', '1', 0),
(159, 0, 'dashboard_map', 'dashboard_map_width', '6', 0),
(160, 0, 'dashboard_online', 'dashboard_online_status', '1', 0),
(161, 0, 'dashboard_online', 'dashboard_online_width', '3', 0),
(162, 0, 'dashboard_order', 'dashboard_order_sort_order', '1', 0),
(163, 0, 'dashboard_order', 'dashboard_order_status', '1', 0),
(164, 0, 'dashboard_order', 'dashboard_order_width', '3', 0),
(165, 0, 'dashboard_sale', 'dashboard_sale_sort_order', '2', 0),
(166, 0, 'dashboard_customer', 'dashboard_customer_sort_order', '3', 0),
(167, 0, 'dashboard_online', 'dashboard_online_sort_order', '4', 0),
(168, 0, 'dashboard_map', 'dashboard_map_sort_order', '5', 0),
(169, 0, 'dashboard_chart', 'dashboard_chart_sort_order', '6', 0),
(170, 0, 'dashboard_recent', 'dashboard_recent_status', '1', 0),
(171, 0, 'dashboard_recent', 'dashboard_recent_sort_order', '8', 0),
(172, 0, 'dashboard_activity', 'dashboard_activity_width', '4', 0),
(173, 0, 'dashboard_recent', 'dashboard_recent_width', '8', 0),
(3113, 0, 'config', 'config_compression', '0', 0),
(3114, 0, 'config', 'config_secure', '0', 0),
(3115, 0, 'config', 'config_password', '0', 0),
(3116, 0, 'config', 'config_shared', '0', 0),
(3117, 0, 'config', 'config_encryption', 'Go29uBwYFd3rPW0QtVMLA3vVpulY5fMh6VQz3QhY1ls1e4c5pdhXJ5Gpzi3VttbvMjFGEMP0zixOCI7gaJhcJemcsmzPDjAQCSwx4qiIBxIvZBZ0jIOXlcEKncqFWNxVzKv2DQU5tltq4G02sFrDhHy1CYSWo9ruc4BcEcNe5bGdk9RcO3SNlzEuqOZIrU8XCLEL3smc2E1VCQfv5pC6fTJPSwehU8xpWwL3BipoC49oM5UA8uTwhT9A6lYImkEAaPm1DmGfTZvuIPfjD6VibID18bad3LDOLDh9o4N9nsUn3uKvos0bZJHk9qCX6qON3wzKR9KTwSLznEGN9IJ8GpVUhWiJr68L0XTUcnQWr4yB4xKM1AR5l6wx8ZMXz1H90ZdbEbEudAMU5Z0sx3mMpIhIvN5MrSx7IpU3XdJAzq7sDdgjNPNIbEgxGnssmSf1PpkSu808pyexpt4x9yxq4p5MyMAMocFvISELhX14AG1n85R7bs8xFYUKyUk1HpejJyy5AV76oTiexpRYCDTQ8JyH6r6R09PtzsYcIZzJkZPWFMX4ad5bwFx6fj4yIRRH8QQ21zgpCOqjGPdLtmdQ5iiTJlfopU8QtWYbE0ELFJD9Hyd6tUBVWzQKtAhjCfMk4KJjuJMeBmSKoxe7B2agZRqJlQfkuMxnqqR7wa4o7JMpXN3Ygu5WZsZjR4i2q5Jx9nHyVzPs1yLVKvPMC5a9wLyIvyLrFGfnC9TwiyWu9hNsv0uYxR49hCDn3VhuqWW9wz91fa2YmDoHzi71SwIkJ0lkymwoyLEfmFceqD6za9wTeZxMWvR7Lq9VFQXhPzfPZ1sC177Tf6JxhHBJ7mRmpXL8KDdEgxiGtc1tZQVfdmBao9DqNfMZzLPAKUdiHmlauhBmlXlipBqeos9rm8xUv7MIFjrB0MKrm7Oj6cguSDDiO3GZV6vskx6p6ygfYxEVFdag5QjHPY9kXVl0eNMMpedd0rjpuNTqM50vmK6FIu9YJ6VdD0Xtj941N4zxknPX', 0),
(2265, 0, 'bank_transfer', 'bank_transfer_order_status_id', '12', 0),
(2263, 0, 'bank_transfer', 'bank_transfer_bank1', '台灣銀行(004)\r\n007004753139\r\n\r\n', 0),
(555, 0, 'low_order_fee', 'low_order_fee_total', '', 0),
(556, 0, 'low_order_fee', 'low_order_fee_fee', '', 0),
(557, 0, 'low_order_fee', 'low_order_fee_tax_class_id', '0', 0),
(558, 0, 'low_order_fee', 'low_order_fee_status', '0', 0),
(559, 0, 'low_order_fee', 'low_order_fee_sort_order', '', 0),
(3096, 0, 'config', 'config_ftp_port', '21', 0),
(3097, 0, 'config', 'config_ftp_username', 'anikiwayne@mittag.com.tw', 0),
(3098, 0, 'config', 'config_ftp_password', ' Jungweiwayne123', 0),
(3099, 0, 'config', 'config_ftp_root', '/', 0),
(3100, 0, 'config', 'config_ftp_status', '1', 0),
(3101, 0, 'config', 'config_mail_protocol', 'mail', 0),
(3102, 0, 'config', 'config_mail_parameter', '', 0),
(3103, 0, 'config', 'config_mail_smtp_hostname', '', 0),
(3104, 0, 'config', 'config_mail_smtp_username', '', 0),
(3094, 0, 'config', 'config_icon', 'catalog/Brand/web_look_and_feel/web_tab_icon.jpg', 0),
(3095, 0, 'config', 'config_ftp_hostname', 'ftp.jungwei.com.tw', 0),
(1239, 0, 'pickup', 'pickup_sort_order', '', 0),
(1238, 0, 'pickup', 'pickup_status', '0', 0),
(3093, 0, 'config', 'config_logo', 'catalog/mittaglogo.png', 0),
(3092, 0, 'config', 'config_captcha_page', '[\"review\",\"return\",\"contact\"]', 1),
(3091, 0, 'config', 'config_captcha', '', 0),
(3090, 0, 'config', 'config_return_status_id', '2', 0),
(3089, 0, 'config', 'config_return_id', '0', 0),
(3088, 0, 'config', 'config_affiliate_id', '4', 0),
(3087, 0, 'config', 'config_affiliate_commission', '5', 0),
(3086, 0, 'config', 'config_affiliate_auto', '0', 0),
(3085, 0, 'config', 'config_affiliate_approval', '0', 0),
(3084, 0, 'config', 'config_stock_checkout', '0', 0),
(3083, 0, 'config', 'config_stock_warning', '0', 0),
(3082, 0, 'config', 'config_stock_display', '0', 0),
(3081, 0, 'config', 'config_api_id', '1', 0),
(3080, 0, 'config', 'config_fraud_status_id', '12', 0),
(3079, 0, 'config', 'config_complete_status', '[\"5\",\"3\"]', 1),
(3078, 0, 'config', 'config_processing_status', '[\"12\",\"5\",\"3\",\"1\",\"2\"]', 1),
(3077, 0, 'config', 'config_order_status_id', '1', 0),
(3076, 0, 'config', 'config_checkout_id', '3', 0),
(3075, 0, 'config', 'config_checkout_guest', '1', 0),
(3074, 0, 'config', 'config_cart_weight', '1', 0),
(3073, 0, 'config', 'config_invoice_prefix', 'INV-2013-00', 0),
(3072, 0, 'config', 'config_account_id', '3', 0),
(1237, 0, 'pickup', 'pickup_geo_zone_id', '0', 0),
(1052, 0, 'cod', 'cod_geo_zone_id', '0', 0),
(1051, 0, 'cod', 'cod_order_status_id', '1', 0),
(1050, 0, 'cod', 'cod_total', '1', 0),
(2264, 0, 'bank_transfer', 'bank_transfer_total', '100', 0),
(3071, 0, 'config', 'config_login_attempts', '5', 0),
(3070, 0, 'config', 'config_customer_price', '0', 0),
(3069, 0, 'config', 'config_customer_group_display', '[\"1\"]', 1),
(3068, 0, 'config', 'config_customer_group_id', '1', 0),
(3067, 0, 'config', 'config_customer_search', '0', 0),
(3066, 0, 'config', 'config_customer_activity', '0', 0),
(3065, 0, 'config', 'config_customer_online', '0', 0),
(3064, 0, 'config', 'config_tax_customer', '', 0),
(3063, 0, 'config', 'config_tax_default', '', 0),
(3062, 0, 'config', 'config_tax', '0', 0),
(3061, 0, 'config', 'config_voucher_max', '1000', 0),
(3060, 0, 'config', 'config_voucher_min', '1', 0),
(3059, 0, 'config', 'config_review_guest', '1', 0),
(3058, 0, 'config', 'config_review_status', '1', 0),
(3057, 0, 'config', 'config_limit_admin', '20', 0),
(3056, 0, 'config', 'config_product_count', '1', 0),
(3055, 0, 'config', 'config_weight_class_id', '1', 0),
(3054, 0, 'config', 'config_length_class_id', '1', 0),
(3053, 0, 'config', 'config_currency_auto', '1', 0),
(3052, 0, 'config', 'config_currency', 'TWD', 0),
(3051, 0, 'config', 'config_admin_language', 'zh-TW', 0),
(3050, 0, 'config', 'config_language', 'zh-TW', 0),
(3049, 0, 'config', 'config_zone_id', '3135', 0),
(3048, 0, 'config', 'config_country_id', '206', 0),
(3047, 0, 'config', 'config_comment', '', 0),
(3046, 0, 'config', 'config_open', '', 0),
(3045, 0, 'config', 'config_image', 'catalog/mittaglogo.png', 0),
(3044, 0, 'config', 'config_fax', '', 0),
(3043, 0, 'config', 'config_telephone', '02123456789', 0),
(3042, 0, 'config', 'config_email', 'mittagnatureme@gmail.com', 0),
(3041, 0, 'config', 'config_geocode', '', 0),
(3040, 0, 'config', 'config_address', 'TAIPEI TAIWAN', 0),
(3039, 0, 'config', 'config_owner', 'MITTAG', 0),
(3038, 0, 'config', 'config_name', 'MITTAG', 0),
(3037, 0, 'config', 'config_layout_id', '4', 0),
(3036, 0, 'config', 'config_theme', 'theme_default', 0),
(2269, 0, 'google_analytics', 'google_analytics_code', '&lt;!-- Global site tag (gtag.js) - Google Analytics --&gt;\r\n&lt;script async src=&quot;https://www.googletagmanager.com/gtag/js?id=UA-101013550-1&quot;&gt;&lt;/script&gt;\r\n&lt;script&gt;\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'UA-111412642-1\');\r\n&lt;/script&gt;\r\n', 0),
(2270, 0, 'google_analytics', 'google_analytics_status', '1', 0),
(3035, 0, 'config', 'config_meta_keyword', '', 0),
(3034, 0, 'config', 'config_meta_description', 'MITTAG', 0),
(3218, 0, 'ecpaylogistic', 'ecpaylogistic_hilife_collection_fee', '80', 0),
(3212, 0, 'ecpaylogistic', 'ecpaylogistic_fami_fee', '80', 0),
(3213, 0, 'ecpaylogistic', 'ecpaylogistic_fami_status', '1', 0),
(3214, 0, 'ecpaylogistic', 'ecpaylogistic_fami_collection_fee', '80', 0),
(3215, 0, 'ecpaylogistic', 'ecpaylogistic_fami_collection_status', '1', 0),
(3216, 0, 'ecpaylogistic', 'ecpaylogistic_hilife_fee', '80', 0),
(3217, 0, 'ecpaylogistic', 'ecpaylogistic_hilife_status', '1', 0),
(3211, 0, 'ecpaylogistic', 'ecpaylogistic_unimart_collection_status', '1', 0),
(3209, 0, 'ecpaylogistic', 'ecpaylogistic_unimart_status', '1', 0),
(3210, 0, 'ecpaylogistic', 'ecpaylogistic_unimart_collection_fee', '80', 0),
(3208, 0, 'ecpaylogistic', 'ecpaylogistic_unimart_fee', '80', 0),
(3207, 0, 'ecpaylogistic', 'ecpaylogistic_status', '1', 0),
(3206, 0, 'ecpaylogistic', 'ecpaylogistic_geo_zone_id', '0', 0),
(3205, 0, 'ecpaylogistic', 'ecpaylogistic_order_status', '12', 0),
(3204, 0, 'ecpaylogistic', 'ecpaylogistic_max_amount', '200', 0),
(3203, 0, 'ecpaylogistic', 'ecpaylogistic_min_amount', '80', 0),
(3202, 0, 'ecpaylogistic', 'ecpaylogistic_free_shipping_amount', '200', 0),
(3200, 0, 'ecpaylogistic', 'ecpaylogistic_sender_name', '林測試', 0),
(3201, 0, 'ecpaylogistic', 'ecpaylogistic_sender_cellphone', '0932000000', 0),
(3199, 0, 'ecpaylogistic', 'ecpaylogistic_type', 'B2C', 0),
(3198, 0, 'ecpaylogistic', 'ecpaylogistic_hashiv', '3sCugBDpQcJblfaK', 0),
(3197, 0, 'ecpaylogistic', 'ecpaylogistic_hashkey', 'bRgRRlPIqhKxlZN6', 0),
(3196, 0, 'ecpaylogistic', 'ecpaylogistic_mid', '3050400', 0),
(3033, 0, 'config', 'config_meta_title', 'MITTAG', 0);

-- --------------------------------------------------------

--
-- 資料表結構 `oc_stock_status`
--

CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 1, '有貨'),
(8, 1, '預購'),
(5, 1, '缺貨'),
(6, 1, '等待2 - 3天');

-- --------------------------------------------------------

--
-- 資料表結構 `oc_store`
--

CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_tax_class`
--

CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Taxable Goods', 'Taxed goods', '2009-01-06 23:21:53', '2011-09-23 14:07:50'),
(10, 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- --------------------------------------------------------

--
-- 資料表結構 `oc_tax_rate`
--

CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 3, 'VAT (20%)', '20.0000', 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29'),
(87, 3, 'Eco Tax (-2.00)', '2.0000', 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- --------------------------------------------------------

--
-- 資料表結構 `oc_tax_rate_to_customer_group`
--

CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `oc_tax_rule`
--

CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, 'payment', 1),
(120, 10, 87, 'store', 0),
(128, 9, 86, 'shipping', 1),
(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- 資料表結構 `oc_theme`
--

CREATE TABLE `oc_theme` (
  `theme_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_translation`
--

CREATE TABLE `oc_translation` (
  `translation_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_upload`
--

CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_url_alias`
--

CREATE TABLE `oc_url_alias` (
  `url_alias_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_url_alias`
--

INSERT INTO `oc_url_alias` (`url_alias_id`, `query`, `keyword`) VALUES
(1149, 'category_id=20', 'https://goo.gl/FjWkaX'),
(730, 'manufacturer_id=8', 'apple'),
(1160, 'information_id=4', 'https://goo.gl/hVubo8'),
(1151, 'category_id=34', 'https://goo.gl/25qBSf'),
(1146, 'category_id=18', 'https://goo.gl/Vmcni4'),
(1148, 'category_id=25', 'https://goo.gl/x1eUvu'),
(1147, 'category_id=17', 'https://goo.gl/JrU2Er'),
(1152, 'category_id=33', 'https://goo.gl/tmC4Nk'),
(1150, 'category_id=24', 'https://goo.gl/WkE4jw'),
(828, 'manufacturer_id=9', 'canon'),
(829, 'manufacturer_id=5', 'htc'),
(830, 'manufacturer_id=7', 'hewlett-packard'),
(831, 'manufacturer_id=6', 'palm'),
(832, 'manufacturer_id=10', 'sony'),
(1159, 'information_id=6', 'https://goo.gl/RTt88M'),
(1158, 'information_id=3', 'https://goo.gl/L86gbH'),
(1154, 'information_id=5', 'https://goo.gl/2XPXdh'),
(1132, 'product_id=133', 'goo.gl/NC8kB3'),
(1164, 'product_id=142', 'https://goo.gl/YJZ9BP'),
(1145, 'category_id=61', 'https://goo.gl/kP36pu'),
(1153, 'category_id=60', 'https://goo.gl/yEZL51'),
(1155, 'information_id=7', 'https://goo.gl/v56hVz'),
(1156, 'information_id=9', 'https://goo.gl/2YM14y'),
(1157, 'information_id=8', 'https://goo.gl/2gKzgH'),
(1176, 'product_id=349', 'https://goo.gl/Qv8P6H'),
(1162, 'product_id=140', 'https://goo.gl/9Azjun'),
(1163, 'product_id=141', 'https://goo.gl/XtzRq1'),
(1165, 'product_id=143', 'https://goo.gl/nM7t5z'),
(1166, 'product_id=144', 'https://goo.gl/sjtRD3'),
(1167, 'product_id=198', 'https://goo.gl/ReaJre'),
(1168, 'product_id=276', 'https://goo.gl/FFvtgz'),
(1169, 'product_id=337', 'https://goo.gl/HkWQS9'),
(1170, 'product_id=338', 'https://goo.gl/GH9R2V'),
(1171, 'product_id=339', 'https://goo.gl/HGe5yN'),
(1172, 'product_id=340', 'https://goo.gl/k4H155'),
(1173, 'product_id=344', 'https://goo.gl/9CYSJy'),
(1174, 'product_id=341', 'https://goo.gl/itPi79');

-- --------------------------------------------------------

--
-- 資料表結構 `oc_user`
--

CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL,
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
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', '96af685c41ea56b66b22b34de41a11a3a7bfa52c', 'k2RpeBgPf', 'Wayne', 'Lin', 'anikiwayne@gmail.com', '', '', '1.164.142.123', 1, '2016-11-05 08:43:30'),
(2, 11, 'lingwei', '6f44f9bf3b942e98977499e1953e1dcfbfca8880', 'Z6bNRbbzl', 'lin', 'lingwei', 'linjohnwayne@gmail.com', '', '', '61.228.19.76', 1, '2016-11-24 16:34:30'),
(3, 11, 'ukjames', '4e841889c218e0c90765b14b31820bffc984e5bc', '3CH8nYGdP', 'ukjames312312@gmail.com', 'james', 'ukjames312312@gmail.com', '', '', '36.229.1.175', 1, '2017-09-10 12:12:44');

-- --------------------------------------------------------

--
-- 資料表結構 `oc_user_group`
--

CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, '開發者', '{\"access\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/emailthanks\",\"common\\/filemanager\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/language\",\"design\\/layout\",\"design\\/menu\",\"design\\/theme\",\"design\\/translation\",\"event\\/compatibility\",\"event\\/theme\",\"extension\\/analytics\\/google_analytics\",\"extension\\/captcha\\/basic_captcha\",\"extension\\/captcha\\/google_captcha\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/event\",\"extension\\/extension\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/installer\",\"extension\\/modification\",\"extension\\/module\\/account\",\"extension\\/module\\/affiliate\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/worldpay\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/sf_express\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/store\",\"extension\\/theme\\/theme_default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"marketing\\/affiliate\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"payment\\/ecpaylogistic\",\"report\\/affiliate\",\"report\\/affiliate_activity\",\"report\\/affiliate_login\",\"report\\/customer_activity\",\"report\\/customer_credit\",\"report\\/customer_login\",\"report\\/customer_online\",\"report\\/customer_order\",\"report\\/customer_reward\",\"report\\/customer_search\",\"report\\/marketing\",\"report\\/product_purchased\",\"report\\/product_viewed\",\"report\\/sale_coupon\",\"report\\/sale_order\",\"report\\/sale_return\",\"report\\/sale_shipping\",\"report\\/sale_tax\",\"sale\\/ecpaylogistic_order\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"shipping\\/ECPay.Logistics.Integration\",\"shipping\\/ecpaylogistic.inc\",\"shipping\\/ecpaylogistic\",\"startup\\/compatibility\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/shipping\\/ecpaylogistic\",\"extension\\/payment\\/ecpaylogistic\",\"extension\\/shipping\\/ecpaylogistic\",\"extension\\/shipping\\/ecpaylogistic\",\"extension\\/shipping\\/ecpaylogistic\",\"extension\\/payment\\/ecpaylogistic\",\"extension\\/payment\\/ecpaylogistic\",\"extension\\/payment\\/ecpaylogistic\"],\"modify\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/emailthanks\",\"common\\/filemanager\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/language\",\"design\\/layout\",\"design\\/menu\",\"design\\/theme\",\"design\\/translation\",\"event\\/compatibility\",\"event\\/theme\",\"extension\\/analytics\\/google_analytics\",\"extension\\/captcha\\/basic_captcha\",\"extension\\/captcha\\/google_captcha\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/event\",\"extension\\/extension\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/installer\",\"extension\\/modification\",\"extension\\/module\\/account\",\"extension\\/module\\/affiliate\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/worldpay\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/sf_express\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/store\",\"extension\\/theme\\/theme_default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"marketing\\/affiliate\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"payment\\/ecpaylogistic\",\"report\\/affiliate\",\"report\\/affiliate_activity\",\"report\\/affiliate_login\",\"report\\/customer_activity\",\"report\\/customer_credit\",\"report\\/customer_login\",\"report\\/customer_online\",\"report\\/customer_order\",\"report\\/customer_reward\",\"report\\/customer_search\",\"report\\/marketing\",\"report\\/product_purchased\",\"report\\/product_viewed\",\"report\\/sale_coupon\",\"report\\/sale_order\",\"report\\/sale_return\",\"report\\/sale_shipping\",\"report\\/sale_tax\",\"sale\\/ecpaylogistic_order\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"shipping\\/ECPay.Logistics.Integration\",\"shipping\\/ecpaylogistic.inc\",\"shipping\\/ecpaylogistic\",\"startup\\/compatibility\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/shipping\\/ecpaylogistic\",\"extension\\/payment\\/ecpaylogistic\",\"extension\\/shipping\\/ecpaylogistic\",\"extension\\/shipping\\/ecpaylogistic\",\"extension\\/shipping\\/ecpaylogistic\",\"extension\\/payment\\/ecpaylogistic\",\"extension\\/payment\\/ecpaylogistic\",\"extension\\/payment\\/ecpaylogistic\"]}'),
(10, '一般', ''),
(11, '最高管理員', '{\"access\":[\"catalog\\/category\",\"catalog\\/information\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/review\",\"common\\/filemanager\",\"customer\\/customer\",\"design\\/banner\",\"extension\\/analytics\\/google_analytics\",\"extension\\/captcha\\/basic_captcha\",\"extension\\/captcha\\/google_captcha\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/shipping\",\"extension\\/payment\\/bank_transfer\",\"localisation\\/location\",\"localisation\\/stock_status\",\"marketing\\/contact\",\"marketing\\/marketing\",\"report\\/affiliate\",\"report\\/affiliate_activity\",\"report\\/affiliate_login\",\"report\\/customer_activity\",\"report\\/customer_credit\",\"report\\/customer_login\",\"report\\/customer_online\",\"report\\/customer_order\",\"report\\/customer_reward\",\"report\\/customer_search\",\"report\\/marketing\",\"report\\/product_purchased\",\"report\\/product_viewed\",\"report\\/sale_order\",\"report\\/sale_return\",\"report\\/sale_shipping\",\"sale\\/order\",\"sale\\/return\"],\"modify\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/filemanager\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/language\",\"design\\/layout\",\"design\\/menu\",\"design\\/theme\",\"design\\/translation\",\"event\\/compatibility\",\"event\\/theme\",\"extension\\/analytics\\/google_analytics\",\"extension\\/captcha\\/basic_captcha\",\"extension\\/captcha\\/google_captcha\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/event\",\"extension\\/extension\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/installer\",\"extension\\/modification\",\"extension\\/module\\/account\",\"extension\\/module\\/affiliate\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/worldpay\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/sf_express\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/store\",\"extension\\/theme\\/theme_default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"marketing\\/affiliate\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"report\\/affiliate\",\"report\\/affiliate_activity\",\"report\\/affiliate_login\",\"report\\/customer_activity\",\"report\\/customer_credit\",\"report\\/customer_login\",\"report\\/customer_online\",\"report\\/customer_order\",\"report\\/customer_reward\",\"report\\/customer_search\",\"report\\/marketing\",\"report\\/product_purchased\",\"report\\/product_viewed\",\"report\\/sale_coupon\",\"report\\/sale_order\",\"report\\/sale_return\",\"report\\/sale_shipping\",\"report\\/sale_tax\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/compatibility\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\"]}');

-- --------------------------------------------------------

--
-- 資料表結構 `oc_voucher`
--

CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL,
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
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_voucher_history`
--

CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `oc_voucher_theme`
--

CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'catalog/demo/canon_eos_5d_2.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg'),
(6, 'catalog/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- 資料表結構 `oc_voucher_theme_description`
--

CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, '聖誕節'),
(7, 1, '生日'),
(8, 1, '基本');

-- --------------------------------------------------------

--
-- 資料表結構 `oc_weight_class`
--

CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000'),
(5, '2.20460000'),
(6, '35.27400000');

-- --------------------------------------------------------

--
-- 資料表結構 `oc_weight_class_description`
--

CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, '公斤', 'kg'),
(2, 1, '公克', 'g'),
(5, 1, '磅 ', 'lb'),
(6, 1, '盎司', 'oz');

-- --------------------------------------------------------

--
-- 資料表結構 `oc_zone`
--

CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1, 1, 'Badakhshan', 'BDS', 1),
(2, 1, 'Badghis', 'BDG', 1),
(3, 1, 'Baghlan', 'BGL', 1),
(4, 1, 'Balkh', 'BAL', 1),
(5, 1, 'Bamian', 'BAM', 1),
(6, 1, 'Farah', 'FRA', 1),
(7, 1, 'Faryab', 'FYB', 1),
(8, 1, 'Ghazni', 'GHA', 1),
(9, 1, 'Ghowr', 'GHO', 1),
(10, 1, 'Helmand', 'HEL', 1),
(11, 1, 'Herat', 'HER', 1),
(12, 1, 'Jowzjan', 'JOW', 1),
(13, 1, 'Kabul', 'KAB', 1),
(14, 1, 'Kandahar', 'KAN', 1),
(15, 1, 'Kapisa', 'KAP', 1),
(16, 1, 'Khost', 'KHO', 1),
(17, 1, 'Konar', 'KNR', 1),
(18, 1, 'Kondoz', 'KDZ', 1),
(19, 1, 'Laghman', 'LAG', 1),
(20, 1, 'Lowgar', 'LOW', 1),
(21, 1, 'Nangrahar', 'NAN', 1),
(22, 1, 'Nimruz', 'NIM', 1),
(23, 1, 'Nurestan', 'NUR', 1),
(24, 1, 'Oruzgan', 'ORU', 1),
(25, 1, 'Paktia', 'PIA', 1),
(26, 1, 'Paktika', 'PKA', 1),
(27, 1, 'Parwan', 'PAR', 1),
(28, 1, 'Samangan', 'SAM', 1),
(29, 1, 'Sar-e Pol', 'SAR', 1),
(30, 1, 'Takhar', 'TAK', 1),
(31, 1, 'Wardak', 'WAR', 1),
(32, 1, 'Zabol', 'ZAB', 1),
(33, 2, 'Berat', 'BR', 1),
(34, 2, 'Bulqize', 'BU', 1),
(35, 2, 'Delvine', 'DL', 1),
(36, 2, 'Devoll', 'DV', 1),
(37, 2, 'Diber', 'DI', 1),
(38, 2, 'Durres', 'DR', 1),
(39, 2, 'Elbasan', 'EL', 1),
(40, 2, 'Kolonje', 'ER', 1),
(41, 2, 'Fier', 'FR', 1),
(42, 2, 'Gjirokaster', 'GJ', 1),
(43, 2, 'Gramsh', 'GR', 1),
(44, 2, 'Has', 'HA', 1),
(45, 2, 'Kavaje', 'KA', 1),
(46, 2, 'Kurbin', 'KB', 1),
(47, 2, 'Kucove', 'KC', 1),
(48, 2, 'Korce', 'KO', 1),
(49, 2, 'Kruje', 'KR', 1),
(50, 2, 'Kukes', 'KU', 1),
(51, 2, 'Librazhd', 'LB', 1),
(52, 2, 'Lezhe', 'LE', 1),
(53, 2, 'Lushnje', 'LU', 1),
(54, 2, 'Malesi e Madhe', 'MM', 1),
(55, 2, 'Mallakaster', 'MK', 1),
(56, 2, 'Mat', 'MT', 1),
(57, 2, 'Mirdite', 'MR', 1),
(58, 2, 'Peqin', 'PQ', 1),
(59, 2, 'Permet', 'PR', 1),
(60, 2, 'Pogradec', 'PG', 1),
(61, 2, 'Puke', 'PU', 1),
(62, 2, 'Shkoder', 'SH', 1),
(63, 2, 'Skrapar', 'SK', 1),
(64, 2, 'Sarande', 'SR', 1),
(65, 2, 'Tepelene', 'TE', 1),
(66, 2, 'Tropoje', 'TP', 1),
(67, 2, 'Tirane', 'TR', 1),
(68, 2, 'Vlore', 'VL', 1),
(69, 3, 'Adrar', 'ADR', 1),
(70, 3, 'Ain Defla', 'ADE', 1),
(71, 3, 'Ain Temouchent', 'ATE', 1),
(72, 3, 'Alger', 'ALG', 1),
(73, 3, 'Annaba', 'ANN', 1),
(74, 3, 'Batna', 'BAT', 1),
(75, 3, 'Bechar', 'BEC', 1),
(76, 3, 'Bejaia', 'BEJ', 1),
(77, 3, 'Biskra', 'BIS', 1),
(78, 3, 'Blida', 'BLI', 1),
(79, 3, 'Bordj Bou Arreridj', 'BBA', 1),
(80, 3, 'Bouira', 'BOA', 1),
(81, 3, 'Boumerdes', 'BMD', 1),
(82, 3, 'Chlef', 'CHL', 1),
(83, 3, 'Constantine', 'CON', 1),
(84, 3, 'Djelfa', 'DJE', 1),
(85, 3, 'El Bayadh', 'EBA', 1),
(86, 3, 'El Oued', 'EOU', 1),
(87, 3, 'El Tarf', 'ETA', 1),
(88, 3, 'Ghardaia', 'GHA', 1),
(89, 3, 'Guelma', 'GUE', 1),
(90, 3, 'Illizi', 'ILL', 1),
(91, 3, 'Jijel', 'JIJ', 1),
(92, 3, 'Khenchela', 'KHE', 1),
(93, 3, 'Laghouat', 'LAG', 1),
(94, 3, 'Muaskar', 'MUA', 1),
(95, 3, 'Medea', 'MED', 1),
(96, 3, 'Mila', 'MIL', 1),
(97, 3, 'Mostaganem', 'MOS', 1),
(98, 3, 'M\'Sila', 'MSI', 1),
(99, 3, 'Naama', 'NAA', 1),
(100, 3, 'Oran', 'ORA', 1),
(101, 3, 'Ouargla', 'OUA', 1),
(102, 3, 'Oum el-Bouaghi', 'OEB', 1),
(103, 3, 'Relizane', 'REL', 1),
(104, 3, 'Saida', 'SAI', 1),
(105, 3, 'Setif', 'SET', 1),
(106, 3, 'Sidi Bel Abbes', 'SBA', 1),
(107, 3, 'Skikda', 'SKI', 1),
(108, 3, 'Souk Ahras', 'SAH', 1),
(109, 3, 'Tamanghasset', 'TAM', 1),
(110, 3, 'Tebessa', 'TEB', 1),
(111, 3, 'Tiaret', 'TIA', 1),
(112, 3, 'Tindouf', 'TIN', 1),
(113, 3, 'Tipaza', 'TIP', 1),
(114, 3, 'Tissemsilt', 'TIS', 1),
(115, 3, 'Tizi Ouzou', 'TOU', 1),
(116, 3, 'Tlemcen', 'TLE', 1),
(117, 4, 'Eastern', 'E', 1),
(118, 4, 'Manu\'a', 'M', 1),
(119, 4, 'Rose Island', 'R', 1),
(120, 4, 'Swains Island', 'S', 1),
(121, 4, 'Western', 'W', 1),
(122, 5, 'Andorra la Vella', 'ALV', 1),
(123, 5, 'Canillo', 'CAN', 1),
(124, 5, 'Encamp', 'ENC', 1),
(125, 5, 'Escaldes-Engordany', 'ESE', 1),
(126, 5, 'La Massana', 'LMA', 1),
(127, 5, 'Ordino', 'ORD', 1),
(128, 5, 'Sant Julia de Loria', 'SJL', 1),
(129, 6, 'Bengo', 'BGO', 1),
(130, 6, 'Benguela', 'BGU', 1),
(131, 6, 'Bie', 'BIE', 1),
(132, 6, 'Cabinda', 'CAB', 1),
(133, 6, 'Cuando-Cubango', 'CCU', 1),
(134, 6, 'Cuanza Norte', 'CNO', 1),
(135, 6, 'Cuanza Sul', 'CUS', 1),
(136, 6, 'Cunene', 'CNN', 1),
(137, 6, 'Huambo', 'HUA', 1),
(138, 6, 'Huila', 'HUI', 1),
(139, 6, 'Luanda', 'LUA', 1),
(140, 6, 'Lunda Norte', 'LNO', 1),
(141, 6, 'Lunda Sul', 'LSU', 1),
(142, 6, 'Malange', 'MAL', 1),
(143, 6, 'Moxico', 'MOX', 1),
(144, 6, 'Namibe', 'NAM', 1),
(145, 6, 'Uige', 'UIG', 1),
(146, 6, 'Zaire', 'ZAI', 1),
(147, 9, 'Saint George', 'ASG', 1),
(148, 9, 'Saint John', 'ASJ', 1),
(149, 9, 'Saint Mary', 'ASM', 1),
(150, 9, 'Saint Paul', 'ASL', 1),
(151, 9, 'Saint Peter', 'ASR', 1),
(152, 9, 'Saint Philip', 'ASH', 1),
(153, 9, 'Barbuda', 'BAR', 1),
(154, 9, 'Redonda', 'RED', 1),
(155, 10, 'Antartida e Islas del Atlantico', 'AN', 1),
(156, 10, 'Buenos Aires', 'BA', 1),
(157, 10, 'Catamarca', 'CA', 1),
(158, 10, 'Chaco', 'CH', 1),
(159, 10, 'Chubut', 'CU', 1),
(160, 10, 'Cordoba', 'CO', 1),
(161, 10, 'Corrientes', 'CR', 1),
(162, 10, 'Distrito Federal', 'DF', 1),
(163, 10, 'Entre Rios', 'ER', 1),
(164, 10, 'Formosa', 'FO', 1),
(165, 10, 'Jujuy', 'JU', 1),
(166, 10, 'La Pampa', 'LP', 1),
(167, 10, 'La Rioja', 'LR', 1),
(168, 10, 'Mendoza', 'ME', 1),
(169, 10, 'Misiones', 'MI', 1),
(170, 10, 'Neuquen', 'NE', 1),
(171, 10, 'Rio Negro', 'RN', 1),
(172, 10, 'Salta', 'SA', 1),
(173, 10, 'San Juan', 'SJ', 1),
(174, 10, 'San Luis', 'SL', 1),
(175, 10, 'Santa Cruz', 'SC', 1),
(176, 10, 'Santa Fe', 'SF', 1),
(177, 10, 'Santiago del Estero', 'SD', 1),
(178, 10, 'Tierra del Fuego', 'TF', 1),
(179, 10, 'Tucuman', 'TU', 1),
(180, 11, 'Aragatsotn', 'AGT', 1),
(181, 11, 'Ararat', 'ARR', 1),
(182, 11, 'Armavir', 'ARM', 1),
(183, 11, 'Geghark\'unik\'', 'GEG', 1),
(184, 11, 'Kotayk\'', 'KOT', 1),
(185, 11, 'Lorri', 'LOR', 1),
(186, 11, 'Shirak', 'SHI', 1),
(187, 11, 'Syunik\'', 'SYU', 1),
(188, 11, 'Tavush', 'TAV', 1),
(189, 11, 'Vayots\' Dzor', 'VAY', 1),
(190, 11, 'Yerevan', 'YER', 1),
(191, 13, 'Australian Capital Territory', 'ACT', 1),
(192, 13, 'New South Wales', 'NSW', 1),
(193, 13, 'Northern Territory', 'NT', 1),
(194, 13, 'Queensland', 'QLD', 1),
(195, 13, 'South Australia', 'SA', 1),
(196, 13, 'Tasmania', 'TAS', 1),
(197, 13, 'Victoria', 'VIC', 1),
(198, 13, 'Western Australia', 'WA', 1),
(199, 14, 'Burgenland', 'BUR', 1),
(200, 14, 'Kärnten', 'KAR', 1),
(201, 14, 'Niederösterreich', 'NOS', 1),
(202, 14, 'Oberösterreich', 'OOS', 1),
(203, 14, 'Salzburg', 'SAL', 1),
(204, 14, 'Steiermark', 'STE', 1),
(205, 14, 'Tirol', 'TIR', 1),
(206, 14, 'Vorarlberg', 'VOR', 1),
(207, 14, 'Wien', 'WIE', 1),
(208, 15, 'Ali Bayramli', 'AB', 1),
(209, 15, 'Abseron', 'ABS', 1),
(210, 15, 'AgcabAdi', 'AGC', 1),
(211, 15, 'Agdam', 'AGM', 1),
(212, 15, 'Agdas', 'AGS', 1),
(213, 15, 'Agstafa', 'AGA', 1),
(214, 15, 'Agsu', 'AGU', 1),
(215, 15, 'Astara', 'AST', 1),
(216, 15, 'Baki', 'BA', 1),
(217, 15, 'BabAk', 'BAB', 1),
(218, 15, 'BalakAn', 'BAL', 1),
(219, 15, 'BArdA', 'BAR', 1),
(220, 15, 'Beylaqan', 'BEY', 1),
(221, 15, 'Bilasuvar', 'BIL', 1),
(222, 15, 'Cabrayil', 'CAB', 1),
(223, 15, 'Calilabab', 'CAL', 1),
(224, 15, 'Culfa', 'CUL', 1),
(225, 15, 'Daskasan', 'DAS', 1),
(226, 15, 'Davaci', 'DAV', 1),
(227, 15, 'Fuzuli', 'FUZ', 1),
(228, 15, 'Ganca', 'GA', 1),
(229, 15, 'Gadabay', 'GAD', 1),
(230, 15, 'Goranboy', 'GOR', 1),
(231, 15, 'Goycay', 'GOY', 1),
(232, 15, 'Haciqabul', 'HAC', 1),
(233, 15, 'Imisli', 'IMI', 1),
(234, 15, 'Ismayilli', 'ISM', 1),
(235, 15, 'Kalbacar', 'KAL', 1),
(236, 15, 'Kurdamir', 'KUR', 1),
(237, 15, 'Lankaran', 'LA', 1),
(238, 15, 'Lacin', 'LAC', 1),
(239, 15, 'Lankaran', 'LAN', 1),
(240, 15, 'Lerik', 'LER', 1),
(241, 15, 'Masalli', 'MAS', 1),
(242, 15, 'Mingacevir', 'MI', 1),
(243, 15, 'Naftalan', 'NA', 1),
(244, 15, 'Neftcala', 'NEF', 1),
(245, 15, 'Oguz', 'OGU', 1),
(246, 15, 'Ordubad', 'ORD', 1),
(247, 15, 'Qabala', 'QAB', 1),
(248, 15, 'Qax', 'QAX', 1),
(249, 15, 'Qazax', 'QAZ', 1),
(250, 15, 'Qobustan', 'QOB', 1),
(251, 15, 'Quba', 'QBA', 1),
(252, 15, 'Qubadli', 'QBI', 1),
(253, 15, 'Qusar', 'QUS', 1),
(254, 15, 'Saki', 'SA', 1),
(255, 15, 'Saatli', 'SAT', 1),
(256, 15, 'Sabirabad', 'SAB', 1),
(257, 15, 'Sadarak', 'SAD', 1),
(258, 15, 'Sahbuz', 'SAH', 1),
(259, 15, 'Saki', 'SAK', 1),
(260, 15, 'Salyan', 'SAL', 1),
(261, 15, 'Sumqayit', 'SM', 1),
(262, 15, 'Samaxi', 'SMI', 1),
(263, 15, 'Samkir', 'SKR', 1),
(264, 15, 'Samux', 'SMX', 1),
(265, 15, 'Sarur', 'SAR', 1),
(266, 15, 'Siyazan', 'SIY', 1),
(267, 15, 'Susa', 'SS', 1),
(268, 15, 'Susa', 'SUS', 1),
(269, 15, 'Tartar', 'TAR', 1),
(270, 15, 'Tovuz', 'TOV', 1),
(271, 15, 'Ucar', 'UCA', 1),
(272, 15, 'Xankandi', 'XA', 1),
(273, 15, 'Xacmaz', 'XAC', 1),
(274, 15, 'Xanlar', 'XAN', 1),
(275, 15, 'Xizi', 'XIZ', 1),
(276, 15, 'Xocali', 'XCI', 1),
(277, 15, 'Xocavand', 'XVD', 1),
(278, 15, 'Yardimli', 'YAR', 1),
(279, 15, 'Yevlax', 'YEV', 1),
(280, 15, 'Zangilan', 'ZAN', 1),
(281, 15, 'Zaqatala', 'ZAQ', 1),
(282, 15, 'Zardab', 'ZAR', 1),
(283, 15, 'Naxcivan', 'NX', 1),
(284, 16, 'Acklins', 'ACK', 1),
(285, 16, 'Berry Islands', 'BER', 1),
(286, 16, 'Bimini', 'BIM', 1),
(287, 16, 'Black Point', 'BLK', 1),
(288, 16, 'Cat Island', 'CAT', 1),
(289, 16, 'Central Abaco', 'CAB', 1),
(290, 16, 'Central Andros', 'CAN', 1),
(291, 16, 'Central Eleuthera', 'CEL', 1),
(292, 16, 'City of Freeport', 'FRE', 1),
(293, 16, 'Crooked Island', 'CRO', 1),
(294, 16, 'East Grand Bahama', 'EGB', 1),
(295, 16, 'Exuma', 'EXU', 1),
(296, 16, 'Grand Cay', 'GRD', 1),
(297, 16, 'Harbour Island', 'HAR', 1),
(298, 16, 'Hope Town', 'HOP', 1),
(299, 16, 'Inagua', 'INA', 1),
(300, 16, 'Long Island', 'LNG', 1),
(301, 16, 'Mangrove Cay', 'MAN', 1),
(302, 16, 'Mayaguana', 'MAY', 1),
(303, 16, 'Moore\'s Island', 'MOO', 1),
(304, 16, 'North Abaco', 'NAB', 1),
(305, 16, 'North Andros', 'NAN', 1),
(306, 16, 'North Eleuthera', 'NEL', 1),
(307, 16, 'Ragged Island', 'RAG', 1),
(308, 16, 'Rum Cay', 'RUM', 1),
(309, 16, 'San Salvador', 'SAL', 1),
(310, 16, 'South Abaco', 'SAB', 1),
(311, 16, 'South Andros', 'SAN', 1),
(312, 16, 'South Eleuthera', 'SEL', 1),
(313, 16, 'Spanish Wells', 'SWE', 1),
(314, 16, 'West Grand Bahama', 'WGB', 1),
(315, 17, 'Capital', 'CAP', 1),
(316, 17, 'Central', 'CEN', 1),
(317, 17, 'Muharraq', 'MUH', 1),
(318, 17, 'Northern', 'NOR', 1),
(319, 17, 'Southern', 'SOU', 1),
(320, 18, 'Barisal', 'BAR', 1),
(321, 18, 'Chittagong', 'CHI', 1),
(322, 18, 'Dhaka', 'DHA', 1),
(323, 18, 'Khulna', 'KHU', 1),
(324, 18, 'Rajshahi', 'RAJ', 1),
(325, 18, 'Sylhet', 'SYL', 1),
(326, 19, 'Christ Church', 'CC', 1),
(327, 19, 'Saint Andrew', 'AND', 1),
(328, 19, 'Saint George', 'GEO', 1),
(329, 19, 'Saint James', 'JAM', 1),
(330, 19, 'Saint John', 'JOH', 1),
(331, 19, 'Saint Joseph', 'JOS', 1),
(332, 19, 'Saint Lucy', 'LUC', 1),
(333, 19, 'Saint Michael', 'MIC', 1),
(334, 19, 'Saint Peter', 'PET', 1),
(335, 19, 'Saint Philip', 'PHI', 1),
(336, 19, 'Saint Thomas', 'THO', 1),
(337, 20, 'Brestskaya (Brest)', 'BR', 1),
(338, 20, 'Homyel\'skaya (Homyel\')', 'HO', 1),
(339, 20, 'Horad Minsk', 'HM', 1),
(340, 20, 'Hrodzyenskaya (Hrodna)', 'HR', 1),
(341, 20, 'Mahilyowskaya (Mahilyow)', 'MA', 1),
(342, 20, 'Minskaya', 'MI', 1),
(343, 20, 'Vitsyebskaya (Vitsyebsk)', 'VI', 1),
(344, 21, 'Antwerpen', 'VAN', 1),
(345, 21, 'Brabant Wallon', 'WBR', 1),
(346, 21, 'Hainaut', 'WHT', 1),
(347, 21, 'Liège', 'WLG', 1),
(348, 21, 'Limburg', 'VLI', 1),
(349, 21, 'Luxembourg', 'WLX', 1),
(350, 21, 'Namur', 'WNA', 1),
(351, 21, 'Oost-Vlaanderen', 'VOV', 1),
(352, 21, 'Vlaams Brabant', 'VBR', 1),
(353, 21, 'West-Vlaanderen', 'VWV', 1),
(354, 22, 'Belize', 'BZ', 1),
(355, 22, 'Cayo', 'CY', 1),
(356, 22, 'Corozal', 'CR', 1),
(357, 22, 'Orange Walk', 'OW', 1),
(358, 22, 'Stann Creek', 'SC', 1),
(359, 22, 'Toledo', 'TO', 1),
(360, 23, 'Alibori', 'AL', 1),
(361, 23, 'Atakora', 'AK', 1),
(362, 23, 'Atlantique', 'AQ', 1),
(363, 23, 'Borgou', 'BO', 1),
(364, 23, 'Collines', 'CO', 1),
(365, 23, 'Donga', 'DO', 1),
(366, 23, 'Kouffo', 'KO', 1),
(367, 23, 'Littoral', 'LI', 1),
(368, 23, 'Mono', 'MO', 1),
(369, 23, 'Oueme', 'OU', 1),
(370, 23, 'Plateau', 'PL', 1),
(371, 23, 'Zou', 'ZO', 1),
(372, 24, 'Devonshire', 'DS', 1),
(373, 24, 'Hamilton City', 'HC', 1),
(374, 24, 'Hamilton', 'HA', 1),
(375, 24, 'Paget', 'PG', 1),
(376, 24, 'Pembroke', 'PB', 1),
(377, 24, 'Saint George City', 'GC', 1),
(378, 24, 'Saint George\'s', 'SG', 1),
(379, 24, 'Sandys', 'SA', 1),
(380, 24, 'Smith\'s', 'SM', 1),
(381, 24, 'Southampton', 'SH', 1),
(382, 24, 'Warwick', 'WA', 1),
(383, 25, 'Bumthang', 'BUM', 1),
(384, 25, 'Chukha', 'CHU', 1),
(385, 25, 'Dagana', 'DAG', 1),
(386, 25, 'Gasa', 'GAS', 1),
(387, 25, 'Haa', 'HAA', 1),
(388, 25, 'Lhuntse', 'LHU', 1),
(389, 25, 'Mongar', 'MON', 1),
(390, 25, 'Paro', 'PAR', 1),
(391, 25, 'Pemagatshel', 'PEM', 1),
(392, 25, 'Punakha', 'PUN', 1),
(393, 25, 'Samdrup Jongkhar', 'SJO', 1),
(394, 25, 'Samtse', 'SAT', 1),
(395, 25, 'Sarpang', 'SAR', 1),
(396, 25, 'Thimphu', 'THI', 1),
(397, 25, 'Trashigang', 'TRG', 1),
(398, 25, 'Trashiyangste', 'TRY', 1),
(399, 25, 'Trongsa', 'TRO', 1),
(400, 25, 'Tsirang', 'TSI', 1),
(401, 25, 'Wangdue Phodrang', 'WPH', 1),
(402, 25, 'Zhemgang', 'ZHE', 1),
(403, 26, 'Beni', 'BEN', 1),
(404, 26, 'Chuquisaca', 'CHU', 1),
(405, 26, 'Cochabamba', 'COC', 1),
(406, 26, 'La Paz', 'LPZ', 1),
(407, 26, 'Oruro', 'ORU', 1),
(408, 26, 'Pando', 'PAN', 1),
(409, 26, 'Potosi', 'POT', 1),
(410, 26, 'Santa Cruz', 'SCZ', 1),
(411, 26, 'Tarija', 'TAR', 1),
(412, 27, 'Brcko district', 'BRO', 1),
(413, 27, 'Unsko-Sanski Kanton', 'FUS', 1),
(414, 27, 'Posavski Kanton', 'FPO', 1),
(415, 27, 'Tuzlanski Kanton', 'FTU', 1),
(416, 27, 'Zenicko-Dobojski Kanton', 'FZE', 1),
(417, 27, 'Bosanskopodrinjski Kanton', 'FBP', 1),
(418, 27, 'Srednjebosanski Kanton', 'FSB', 1),
(419, 27, 'Hercegovacko-neretvanski Kanton', 'FHN', 1),
(420, 27, 'Zapadnohercegovacka Zupanija', 'FZH', 1),
(421, 27, 'Kanton Sarajevo', 'FSA', 1),
(422, 27, 'Zapadnobosanska', 'FZA', 1),
(423, 27, 'Banja Luka', 'SBL', 1),
(424, 27, 'Doboj', 'SDO', 1),
(425, 27, 'Bijeljina', 'SBI', 1),
(426, 27, 'Vlasenica', 'SVL', 1),
(427, 27, 'Sarajevo-Romanija or Sokolac', 'SSR', 1),
(428, 27, 'Foca', 'SFO', 1),
(429, 27, 'Trebinje', 'STR', 1),
(430, 28, 'Central', 'CE', 1),
(431, 28, 'Ghanzi', 'GH', 1),
(432, 28, 'Kgalagadi', 'KD', 1),
(433, 28, 'Kgatleng', 'KT', 1),
(434, 28, 'Kweneng', 'KW', 1),
(435, 28, 'Ngamiland', 'NG', 1),
(436, 28, 'North East', 'NE', 1),
(437, 28, 'North West', 'NW', 1),
(438, 28, 'South East', 'SE', 1),
(439, 28, 'Southern', 'SO', 1),
(440, 30, 'Acre', 'AC', 1),
(441, 30, 'Alagoas', 'AL', 1),
(442, 30, 'Amapá', 'AP', 1),
(443, 30, 'Amazonas', 'AM', 1),
(444, 30, 'Bahia', 'BA', 1),
(445, 30, 'Ceará', 'CE', 1),
(446, 30, 'Distrito Federal', 'DF', 1),
(447, 30, 'Espírito Santo', 'ES', 1),
(448, 30, 'Goiás', 'GO', 1),
(449, 30, 'Maranhão', 'MA', 1),
(450, 30, 'Mato Grosso', 'MT', 1),
(451, 30, 'Mato Grosso do Sul', 'MS', 1),
(452, 30, 'Minas Gerais', 'MG', 1),
(453, 30, 'Pará', 'PA', 1),
(454, 30, 'Paraíba', 'PB', 1),
(455, 30, 'Paraná', 'PR', 1),
(456, 30, 'Pernambuco', 'PE', 1),
(457, 30, 'Piauí', 'PI', 1),
(458, 30, 'Rio de Janeiro', 'RJ', 1),
(459, 30, 'Rio Grande do Norte', 'RN', 1),
(460, 30, 'Rio Grande do Sul', 'RS', 1),
(461, 30, 'Rondônia', 'RO', 1),
(462, 30, 'Roraima', 'RR', 1),
(463, 30, 'Santa Catarina', 'SC', 1),
(464, 30, 'São Paulo', 'SP', 1),
(465, 30, 'Sergipe', 'SE', 1),
(466, 30, 'Tocantins', 'TO', 1),
(467, 31, 'Peros Banhos', 'PB', 1),
(468, 31, 'Salomon Islands', 'SI', 1),
(469, 31, 'Nelsons Island', 'NI', 1),
(470, 31, 'Three Brothers', 'TB', 1),
(471, 31, 'Eagle Islands', 'EA', 1),
(472, 31, 'Danger Island', 'DI', 1),
(473, 31, 'Egmont Islands', 'EG', 1),
(474, 31, 'Diego Garcia', 'DG', 1),
(475, 32, 'Belait', 'BEL', 1),
(476, 32, 'Brunei and Muara', 'BRM', 1),
(477, 32, 'Temburong', 'TEM', 1),
(478, 32, 'Tutong', 'TUT', 1),
(479, 33, 'Blagoevgrad', '', 1),
(480, 33, 'Burgas', '', 1),
(481, 33, 'Dobrich', '', 1),
(482, 33, 'Gabrovo', '', 1),
(483, 33, 'Haskovo', '', 1),
(484, 33, 'Kardjali', '', 1),
(485, 33, 'Kyustendil', '', 1),
(486, 33, 'Lovech', '', 1),
(487, 33, 'Montana', '', 1),
(488, 33, 'Pazardjik', '', 1),
(489, 33, 'Pernik', '', 1),
(490, 33, 'Pleven', '', 1),
(491, 33, 'Plovdiv', '', 1),
(492, 33, 'Razgrad', '', 1),
(493, 33, 'Shumen', '', 1),
(494, 33, 'Silistra', '', 1),
(495, 33, 'Sliven', '', 1),
(496, 33, 'Smolyan', '', 1),
(497, 33, 'Sofia', '', 1),
(498, 33, 'Sofia - town', '', 1),
(499, 33, 'Stara Zagora', '', 1),
(500, 33, 'Targovishte', '', 1),
(501, 33, 'Varna', '', 1),
(502, 33, 'Veliko Tarnovo', '', 1),
(503, 33, 'Vidin', '', 1),
(504, 33, 'Vratza', '', 1),
(505, 33, 'Yambol', '', 1),
(506, 34, 'Bale', 'BAL', 1),
(507, 34, 'Bam', 'BAM', 1),
(508, 34, 'Banwa', 'BAN', 1),
(509, 34, 'Bazega', 'BAZ', 1),
(510, 34, 'Bougouriba', 'BOR', 1),
(511, 34, 'Boulgou', 'BLG', 1),
(512, 34, 'Boulkiemde', 'BOK', 1),
(513, 34, 'Comoe', 'COM', 1),
(514, 34, 'Ganzourgou', 'GAN', 1),
(515, 34, 'Gnagna', 'GNA', 1),
(516, 34, 'Gourma', 'GOU', 1),
(517, 34, 'Houet', 'HOU', 1),
(518, 34, 'Ioba', 'IOA', 1),
(519, 34, 'Kadiogo', 'KAD', 1),
(520, 34, 'Kenedougou', 'KEN', 1),
(521, 34, 'Komondjari', 'KOD', 1),
(522, 34, 'Kompienga', 'KOP', 1),
(523, 34, 'Kossi', 'KOS', 1),
(524, 34, 'Koulpelogo', 'KOL', 1),
(525, 34, 'Kouritenga', 'KOT', 1),
(526, 34, 'Kourweogo', 'KOW', 1),
(527, 34, 'Leraba', 'LER', 1),
(528, 34, 'Loroum', 'LOR', 1),
(529, 34, 'Mouhoun', 'MOU', 1),
(530, 34, 'Nahouri', 'NAH', 1),
(531, 34, 'Namentenga', 'NAM', 1),
(532, 34, 'Nayala', 'NAY', 1),
(533, 34, 'Noumbiel', 'NOU', 1),
(534, 34, 'Oubritenga', 'OUB', 1),
(535, 34, 'Oudalan', 'OUD', 1),
(536, 34, 'Passore', 'PAS', 1),
(537, 34, 'Poni', 'PON', 1),
(538, 34, 'Sanguie', 'SAG', 1),
(539, 34, 'Sanmatenga', 'SAM', 1),
(540, 34, 'Seno', 'SEN', 1),
(541, 34, 'Sissili', 'SIS', 1),
(542, 34, 'Soum', 'SOM', 1),
(543, 34, 'Sourou', 'SOR', 1),
(544, 34, 'Tapoa', 'TAP', 1),
(545, 34, 'Tuy', 'TUY', 1),
(546, 34, 'Yagha', 'YAG', 1),
(547, 34, 'Yatenga', 'YAT', 1),
(548, 34, 'Ziro', 'ZIR', 1),
(549, 34, 'Zondoma', 'ZOD', 1),
(550, 34, 'Zoundweogo', 'ZOW', 1),
(551, 35, 'Bubanza', 'BB', 1),
(552, 35, 'Bujumbura', 'BJ', 1),
(553, 35, 'Bururi', 'BR', 1),
(554, 35, 'Cankuzo', 'CA', 1),
(555, 35, 'Cibitoke', 'CI', 1),
(556, 35, 'Gitega', 'GI', 1),
(557, 35, 'Karuzi', 'KR', 1),
(558, 35, 'Kayanza', 'KY', 1),
(559, 35, 'Kirundo', 'KI', 1),
(560, 35, 'Makamba', 'MA', 1),
(561, 35, 'Muramvya', 'MU', 1),
(562, 35, 'Muyinga', 'MY', 1),
(563, 35, 'Mwaro', 'MW', 1),
(564, 35, 'Ngozi', 'NG', 1),
(565, 35, 'Rutana', 'RT', 1),
(566, 35, 'Ruyigi', 'RY', 1),
(567, 36, 'Phnom Penh', 'PP', 1),
(568, 36, 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', 1),
(569, 36, 'Pailin', 'PA', 1),
(570, 36, 'Keb', 'KB', 1),
(571, 36, 'Banteay Meanchey', 'BM', 1),
(572, 36, 'Battambang', 'BA', 1),
(573, 36, 'Kampong Cham', 'KM', 1),
(574, 36, 'Kampong Chhnang', 'KN', 1),
(575, 36, 'Kampong Speu', 'KU', 1),
(576, 36, 'Kampong Som', 'KO', 1),
(577, 36, 'Kampong Thom', 'KT', 1),
(578, 36, 'Kampot', 'KP', 1),
(579, 36, 'Kandal', 'KL', 1),
(580, 36, 'Kaoh Kong', 'KK', 1),
(581, 36, 'Kratie', 'KR', 1),
(582, 36, 'Mondul Kiri', 'MK', 1),
(583, 36, 'Oddar Meancheay', 'OM', 1),
(584, 36, 'Pursat', 'PU', 1),
(585, 36, 'Preah Vihear', 'PR', 1),
(586, 36, 'Prey Veng', 'PG', 1),
(587, 36, 'Ratanak Kiri', 'RK', 1),
(588, 36, 'Siemreap', 'SI', 1),
(589, 36, 'Stung Treng', 'ST', 1),
(590, 36, 'Svay Rieng', 'SR', 1),
(591, 36, 'Takeo', 'TK', 1),
(592, 37, 'Adamawa (Adamaoua)', 'ADA', 1),
(593, 37, 'Centre', 'CEN', 1),
(594, 37, 'East (Est)', 'EST', 1),
(595, 37, 'Extreme North (Extreme-Nord)', 'EXN', 1),
(596, 37, 'Littoral', 'LIT', 1),
(597, 37, 'North (Nord)', 'NOR', 1),
(598, 37, 'Northwest (Nord-Ouest)', 'NOT', 1),
(599, 37, 'West (Ouest)', 'OUE', 1),
(600, 37, 'South (Sud)', 'SUD', 1),
(601, 37, 'Southwest (Sud-Ouest).', 'SOU', 1),
(602, 38, 'Alberta', 'AB', 1),
(603, 38, 'British Columbia', 'BC', 1),
(604, 38, 'Manitoba', 'MB', 1),
(605, 38, 'New Brunswick', 'NB', 1),
(606, 38, 'Newfoundland and Labrador', 'NL', 1),
(607, 38, 'Northwest Territories', 'NT', 1),
(608, 38, 'Nova Scotia', 'NS', 1),
(609, 38, 'Nunavut', 'NU', 1),
(610, 38, 'Ontario', 'ON', 1),
(611, 38, 'Prince Edward Island', 'PE', 1),
(612, 38, 'Qu&eacute;bec', 'QC', 1),
(613, 38, 'Saskatchewan', 'SK', 1),
(614, 38, 'Yukon Territory', 'YT', 1),
(615, 39, 'Boa Vista', 'BV', 1),
(616, 39, 'Brava', 'BR', 1),
(617, 39, 'Calheta de Sao Miguel', 'CS', 1),
(618, 39, 'Maio', 'MA', 1),
(619, 39, 'Mosteiros', 'MO', 1),
(620, 39, 'Paul', 'PA', 1),
(621, 39, 'Porto Novo', 'PN', 1),
(622, 39, 'Praia', 'PR', 1),
(623, 39, 'Ribeira Grande', 'RG', 1),
(624, 39, 'Sal', 'SL', 1),
(625, 39, 'Santa Catarina', 'CA', 1),
(626, 39, 'Santa Cruz', 'CR', 1),
(627, 39, 'Sao Domingos', 'SD', 1),
(628, 39, 'Sao Filipe', 'SF', 1),
(629, 39, 'Sao Nicolau', 'SN', 1),
(630, 39, 'Sao Vicente', 'SV', 1),
(631, 39, 'Tarrafal', 'TA', 1),
(632, 40, 'Creek', 'CR', 1),
(633, 40, 'Eastern', 'EA', 1),
(634, 40, 'Midland', 'ML', 1),
(635, 40, 'South Town', 'ST', 1),
(636, 40, 'Spot Bay', 'SP', 1),
(637, 40, 'Stake Bay', 'SK', 1),
(638, 40, 'West End', 'WD', 1),
(639, 40, 'Western', 'WN', 1),
(640, 41, 'Bamingui-Bangoran', 'BBA', 1),
(641, 41, 'Basse-Kotto', 'BKO', 1),
(642, 41, 'Haute-Kotto', 'HKO', 1),
(643, 41, 'Haut-Mbomou', 'HMB', 1),
(644, 41, 'Kemo', 'KEM', 1),
(645, 41, 'Lobaye', 'LOB', 1),
(646, 41, 'Mambere-KadeÔ', 'MKD', 1),
(647, 41, 'Mbomou', 'MBO', 1),
(648, 41, 'Nana-Mambere', 'NMM', 1),
(649, 41, 'Ombella-M\'Poko', 'OMP', 1),
(650, 41, 'Ouaka', 'OUK', 1),
(651, 41, 'Ouham', 'OUH', 1),
(652, 41, 'Ouham-Pende', 'OPE', 1),
(653, 41, 'Vakaga', 'VAK', 1),
(654, 41, 'Nana-Grebizi', 'NGR', 1),
(655, 41, 'Sangha-Mbaere', 'SMB', 1),
(656, 41, 'Bangui', 'BAN', 1),
(657, 42, 'Batha', 'BA', 1),
(658, 42, 'Biltine', 'BI', 1),
(659, 42, 'Borkou-Ennedi-Tibesti', 'BE', 1),
(660, 42, 'Chari-Baguirmi', 'CB', 1),
(661, 42, 'Guera', 'GU', 1),
(662, 42, 'Kanem', 'KA', 1),
(663, 42, 'Lac', 'LA', 1),
(664, 42, 'Logone Occidental', 'LC', 1),
(665, 42, 'Logone Oriental', 'LR', 1),
(666, 42, 'Mayo-Kebbi', 'MK', 1),
(667, 42, 'Moyen-Chari', 'MC', 1),
(668, 42, 'Ouaddai', 'OU', 1),
(669, 42, 'Salamat', 'SA', 1),
(670, 42, 'Tandjile', 'TA', 1),
(671, 43, 'Aisen del General Carlos Ibanez', 'AI', 1),
(672, 43, 'Antofagasta', 'AN', 1),
(673, 43, 'Araucania', 'AR', 1),
(674, 43, 'Atacama', 'AT', 1),
(675, 43, 'Bio-Bio', 'BI', 1),
(676, 43, 'Coquimbo', 'CO', 1),
(677, 43, 'Libertador General Bernardo O\'Higgins', 'LI', 1),
(678, 43, 'Los Lagos', 'LL', 1),
(679, 43, 'Magallanes y de la Antartica Chilena', 'MA', 1),
(680, 43, 'Maule', 'ML', 1),
(681, 43, 'Region Metropolitana', 'RM', 1),
(682, 43, 'Tarapaca', 'TA', 1),
(683, 43, 'Valparaiso', 'VS', 1),
(684, 44, 'Anhui', 'AN', 1),
(685, 44, 'Beijing', 'BE', 1),
(686, 44, 'Chongqing', 'CH', 1),
(687, 44, 'Fujian', 'FU', 1),
(688, 44, 'Gansu', 'GA', 1),
(689, 44, 'Guangdong', 'GU', 1),
(690, 44, 'Guangxi', 'GX', 1),
(691, 44, 'Guizhou', 'GZ', 1),
(692, 44, 'Hainan', 'HA', 1),
(693, 44, 'Hebei', 'HB', 1),
(694, 44, 'Heilongjiang', 'HL', 1),
(695, 44, 'Henan', 'HE', 1),
(696, 44, 'Hong Kong', 'HK', 1),
(697, 44, 'Hubei', 'HU', 1),
(698, 44, 'Hunan', 'HN', 1),
(699, 44, 'Inner Mongolia', 'IM', 1),
(700, 44, 'Jiangsu', 'JI', 1),
(701, 44, 'Jiangxi', 'JX', 1),
(702, 44, 'Jilin', 'JL', 1),
(703, 44, 'Liaoning', 'LI', 1),
(704, 44, 'Macau', 'MA', 1),
(705, 44, 'Ningxia', 'NI', 1),
(706, 44, 'Shaanxi', 'SH', 1),
(707, 44, 'Shandong', 'SA', 1),
(708, 44, 'Shanghai', 'SG', 1),
(709, 44, 'Shanxi', 'SX', 1),
(710, 44, 'Sichuan', 'SI', 1),
(711, 44, 'Tianjin', 'TI', 1),
(712, 44, 'Xinjiang', 'XI', 1),
(713, 44, 'Yunnan', 'YU', 1),
(714, 44, 'Zhejiang', 'ZH', 1),
(715, 46, 'Direction Island', 'D', 1),
(716, 46, 'Home Island', 'H', 1),
(717, 46, 'Horsburgh Island', 'O', 1),
(718, 46, 'South Island', 'S', 1),
(719, 46, 'West Island', 'W', 1),
(720, 47, 'Amazonas', 'AMZ', 1),
(721, 47, 'Antioquia', 'ANT', 1),
(722, 47, 'Arauca', 'ARA', 1),
(723, 47, 'Atlantico', 'ATL', 1),
(724, 47, 'Bogota D.C.', 'BDC', 1),
(725, 47, 'Bolivar', 'BOL', 1),
(726, 47, 'Boyaca', 'BOY', 1),
(727, 47, 'Caldas', 'CAL', 1),
(728, 47, 'Caqueta', 'CAQ', 1),
(729, 47, 'Casanare', 'CAS', 1),
(730, 47, 'Cauca', 'CAU', 1),
(731, 47, 'Cesar', 'CES', 1),
(732, 47, 'Choco', 'CHO', 1),
(733, 47, 'Cordoba', 'COR', 1),
(734, 47, 'Cundinamarca', 'CAM', 1),
(735, 47, 'Guainia', 'GNA', 1),
(736, 47, 'Guajira', 'GJR', 1),
(737, 47, 'Guaviare', 'GVR', 1),
(738, 47, 'Huila', 'HUI', 1),
(739, 47, 'Magdalena', 'MAG', 1),
(740, 47, 'Meta', 'MET', 1),
(741, 47, 'Narino', 'NAR', 1),
(742, 47, 'Norte de Santander', 'NDS', 1),
(743, 47, 'Putumayo', 'PUT', 1),
(744, 47, 'Quindio', 'QUI', 1),
(745, 47, 'Risaralda', 'RIS', 1),
(746, 47, 'San Andres y Providencia', 'SAP', 1),
(747, 47, 'Santander', 'SAN', 1),
(748, 47, 'Sucre', 'SUC', 1),
(749, 47, 'Tolima', 'TOL', 1),
(750, 47, 'Valle del Cauca', 'VDC', 1),
(751, 47, 'Vaupes', 'VAU', 1),
(752, 47, 'Vichada', 'VIC', 1),
(753, 48, 'Grande Comore', 'G', 1),
(754, 48, 'Anjouan', 'A', 1),
(755, 48, 'Moheli', 'M', 1),
(756, 49, 'Bouenza', 'BO', 1),
(757, 49, 'Brazzaville', 'BR', 1),
(758, 49, 'Cuvette', 'CU', 1),
(759, 49, 'Cuvette-Ouest', 'CO', 1),
(760, 49, 'Kouilou', 'KO', 1),
(761, 49, 'Lekoumou', 'LE', 1),
(762, 49, 'Likouala', 'LI', 1),
(763, 49, 'Niari', 'NI', 1),
(764, 49, 'Plateaux', 'PL', 1),
(765, 49, 'Pool', 'PO', 1),
(766, 49, 'Sangha', 'SA', 1),
(767, 50, 'Pukapuka', 'PU', 1),
(768, 50, 'Rakahanga', 'RK', 1),
(769, 50, 'Manihiki', 'MK', 1),
(770, 50, 'Penrhyn', 'PE', 1),
(771, 50, 'Nassau Island', 'NI', 1),
(772, 50, 'Surwarrow', 'SU', 1),
(773, 50, 'Palmerston', 'PA', 1),
(774, 50, 'Aitutaki', 'AI', 1),
(775, 50, 'Manuae', 'MA', 1),
(776, 50, 'Takutea', 'TA', 1),
(777, 50, 'Mitiaro', 'MT', 1),
(778, 50, 'Atiu', 'AT', 1),
(779, 50, 'Mauke', 'MU', 1),
(780, 50, 'Rarotonga', 'RR', 1),
(781, 50, 'Mangaia', 'MG', 1),
(782, 51, 'Alajuela', 'AL', 1),
(783, 51, 'Cartago', 'CA', 1),
(784, 51, 'Guanacaste', 'GU', 1),
(785, 51, 'Heredia', 'HE', 1),
(786, 51, 'Limon', 'LI', 1),
(787, 51, 'Puntarenas', 'PU', 1),
(788, 51, 'San Jose', 'SJ', 1),
(789, 52, 'Abengourou', 'ABE', 1),
(790, 52, 'Abidjan', 'ABI', 1),
(791, 52, 'Aboisso', 'ABO', 1),
(792, 52, 'Adiake', 'ADI', 1),
(793, 52, 'Adzope', 'ADZ', 1),
(794, 52, 'Agboville', 'AGB', 1),
(795, 52, 'Agnibilekrou', 'AGN', 1),
(796, 52, 'Alepe', 'ALE', 1),
(797, 52, 'Bocanda', 'BOC', 1),
(798, 52, 'Bangolo', 'BAN', 1),
(799, 52, 'Beoumi', 'BEO', 1),
(800, 52, 'Biankouma', 'BIA', 1),
(801, 52, 'Bondoukou', 'BDK', 1),
(802, 52, 'Bongouanou', 'BGN', 1),
(803, 52, 'Bouafle', 'BFL', 1),
(804, 52, 'Bouake', 'BKE', 1),
(805, 52, 'Bouna', 'BNA', 1),
(806, 52, 'Boundiali', 'BDL', 1),
(807, 52, 'Dabakala', 'DKL', 1),
(808, 52, 'Dabou', 'DBU', 1),
(809, 52, 'Daloa', 'DAL', 1),
(810, 52, 'Danane', 'DAN', 1),
(811, 52, 'Daoukro', 'DAO', 1),
(812, 52, 'Dimbokro', 'DIM', 1),
(813, 52, 'Divo', 'DIV', 1),
(814, 52, 'Duekoue', 'DUE', 1),
(815, 52, 'Ferkessedougou', 'FER', 1),
(816, 52, 'Gagnoa', 'GAG', 1),
(817, 52, 'Grand-Bassam', 'GBA', 1),
(818, 52, 'Grand-Lahou', 'GLA', 1),
(819, 52, 'Guiglo', 'GUI', 1),
(820, 52, 'Issia', 'ISS', 1),
(821, 52, 'Jacqueville', 'JAC', 1),
(822, 52, 'Katiola', 'KAT', 1),
(823, 52, 'Korhogo', 'KOR', 1),
(824, 52, 'Lakota', 'LAK', 1),
(825, 52, 'Man', 'MAN', 1),
(826, 52, 'Mankono', 'MKN', 1),
(827, 52, 'Mbahiakro', 'MBA', 1),
(828, 52, 'Odienne', 'ODI', 1),
(829, 52, 'Oume', 'OUM', 1),
(830, 52, 'Sakassou', 'SAK', 1),
(831, 52, 'San-Pedro', 'SPE', 1),
(832, 52, 'Sassandra', 'SAS', 1),
(833, 52, 'Seguela', 'SEG', 1),
(834, 52, 'Sinfra', 'SIN', 1),
(835, 52, 'Soubre', 'SOU', 1),
(836, 52, 'Tabou', 'TAB', 1),
(837, 52, 'Tanda', 'TAN', 1),
(838, 52, 'Tiebissou', 'TIE', 1),
(839, 52, 'Tingrela', 'TIN', 1),
(840, 52, 'Tiassale', 'TIA', 1),
(841, 52, 'Touba', 'TBA', 1),
(842, 52, 'Toulepleu', 'TLP', 1),
(843, 52, 'Toumodi', 'TMD', 1),
(844, 52, 'Vavoua', 'VAV', 1),
(845, 52, 'Yamoussoukro', 'YAM', 1),
(846, 52, 'Zuenoula', 'ZUE', 1),
(847, 53, 'Bjelovarsko-bilogorska', 'BB', 1),
(848, 53, 'Grad Zagreb', 'GZ', 1),
(849, 53, 'Dubrovačko-neretvanska', 'DN', 1),
(850, 53, 'Istarska', 'IS', 1),
(851, 53, 'Karlovačka', 'KA', 1),
(852, 53, 'Koprivničko-križevačka', 'KK', 1),
(853, 53, 'Krapinsko-zagorska', 'KZ', 1),
(854, 53, 'Ličko-senjska', 'LS', 1),
(855, 53, 'Međimurska', 'ME', 1),
(856, 53, 'Osječko-baranjska', 'OB', 1),
(857, 53, 'Požeško-slavonska', 'PS', 1),
(858, 53, 'Primorsko-goranska', 'PG', 1),
(859, 53, 'Šibensko-kninska', 'SK', 1),
(860, 53, 'Sisačko-moslavačka', 'SM', 1),
(861, 53, 'Brodsko-posavska', 'BP', 1),
(862, 53, 'Splitsko-dalmatinska', 'SD', 1),
(863, 53, 'Varaždinska', 'VA', 1),
(864, 53, 'Virovitičko-podravska', 'VP', 1),
(865, 53, 'Vukovarsko-srijemska', 'VS', 1),
(866, 53, 'Zadarska', 'ZA', 1),
(867, 53, 'Zagrebačka', 'ZG', 1),
(868, 54, 'Camaguey', 'CA', 1),
(869, 54, 'Ciego de Avila', 'CD', 1),
(870, 54, 'Cienfuegos', 'CI', 1),
(871, 54, 'Ciudad de La Habana', 'CH', 1),
(872, 54, 'Granma', 'GR', 1),
(873, 54, 'Guantanamo', 'GU', 1),
(874, 54, 'Holguin', 'HO', 1),
(875, 54, 'Isla de la Juventud', 'IJ', 1),
(876, 54, 'La Habana', 'LH', 1),
(877, 54, 'Las Tunas', 'LT', 1),
(878, 54, 'Matanzas', 'MA', 1),
(879, 54, 'Pinar del Rio', 'PR', 1),
(880, 54, 'Sancti Spiritus', 'SS', 1),
(881, 54, 'Santiago de Cuba', 'SC', 1),
(882, 54, 'Villa Clara', 'VC', 1),
(883, 55, 'Famagusta', 'F', 1),
(884, 55, 'Kyrenia', 'K', 1),
(885, 55, 'Larnaca', 'A', 1),
(886, 55, 'Limassol', 'I', 1),
(887, 55, 'Nicosia', 'N', 1),
(888, 55, 'Paphos', 'P', 1),
(889, 56, 'Ústecký', 'U', 1),
(890, 56, 'Jihočeský', 'C', 1),
(891, 56, 'Jihomoravský', 'B', 1),
(892, 56, 'Karlovarský', 'K', 1),
(893, 56, 'Královehradecký', 'H', 1),
(894, 56, 'Liberecký', 'L', 1),
(895, 56, 'Moravskoslezský', 'T', 1),
(896, 56, 'Olomoucký', 'M', 1),
(897, 56, 'Pardubický', 'E', 1),
(898, 56, 'Plzeňský', 'P', 1),
(899, 56, 'Praha', 'A', 1),
(900, 56, 'Středočeský', 'S', 1),
(901, 56, 'Vysočina', 'J', 1),
(902, 56, 'Zlínský', 'Z', 1),
(903, 57, 'Arhus', 'AR', 1),
(904, 57, 'Bornholm', 'BH', 1),
(905, 57, 'Copenhagen', 'CO', 1),
(906, 57, 'Faroe Islands', 'FO', 1),
(907, 57, 'Frederiksborg', 'FR', 1),
(908, 57, 'Fyn', 'FY', 1),
(909, 57, 'Kobenhavn', 'KO', 1),
(910, 57, 'Nordjylland', 'NO', 1),
(911, 57, 'Ribe', 'RI', 1),
(912, 57, 'Ringkobing', 'RK', 1),
(913, 57, 'Roskilde', 'RO', 1),
(914, 57, 'Sonderjylland', 'SO', 1),
(915, 57, 'Storstrom', 'ST', 1),
(916, 57, 'Vejle', 'VK', 1),
(917, 57, 'Vestj&aelig;lland', 'VJ', 1),
(918, 57, 'Viborg', 'VB', 1),
(919, 58, '\'Ali Sabih', 'S', 1),
(920, 58, 'Dikhil', 'K', 1),
(921, 58, 'Djibouti', 'J', 1),
(922, 58, 'Obock', 'O', 1),
(923, 58, 'Tadjoura', 'T', 1),
(924, 59, 'Saint Andrew Parish', 'AND', 1),
(925, 59, 'Saint David Parish', 'DAV', 1),
(926, 59, 'Saint George Parish', 'GEO', 1),
(927, 59, 'Saint John Parish', 'JOH', 1),
(928, 59, 'Saint Joseph Parish', 'JOS', 1),
(929, 59, 'Saint Luke Parish', 'LUK', 1),
(930, 59, 'Saint Mark Parish', 'MAR', 1),
(931, 59, 'Saint Patrick Parish', 'PAT', 1),
(932, 59, 'Saint Paul Parish', 'PAU', 1),
(933, 59, 'Saint Peter Parish', 'PET', 1),
(934, 60, 'Distrito Nacional', 'DN', 1),
(935, 60, 'Azua', 'AZ', 1),
(936, 60, 'Baoruco', 'BC', 1),
(937, 60, 'Barahona', 'BH', 1),
(938, 60, 'Dajabon', 'DJ', 1),
(939, 60, 'Duarte', 'DU', 1),
(940, 60, 'Elias Pina', 'EL', 1),
(941, 60, 'El Seybo', 'SY', 1),
(942, 60, 'Espaillat', 'ET', 1),
(943, 60, 'Hato Mayor', 'HM', 1),
(944, 60, 'Independencia', 'IN', 1),
(945, 60, 'La Altagracia', 'AL', 1),
(946, 60, 'La Romana', 'RO', 1),
(947, 60, 'La Vega', 'VE', 1),
(948, 60, 'Maria Trinidad Sanchez', 'MT', 1),
(949, 60, 'Monsenor Nouel', 'MN', 1),
(950, 60, 'Monte Cristi', 'MC', 1),
(951, 60, 'Monte Plata', 'MP', 1),
(952, 60, 'Pedernales', 'PD', 1),
(953, 60, 'Peravia (Bani)', 'PR', 1),
(954, 60, 'Puerto Plata', 'PP', 1),
(955, 60, 'Salcedo', 'SL', 1),
(956, 60, 'Samana', 'SM', 1),
(957, 60, 'Sanchez Ramirez', 'SH', 1),
(958, 60, 'San Cristobal', 'SC', 1),
(959, 60, 'San Jose de Ocoa', 'JO', 1),
(960, 60, 'San Juan', 'SJ', 1),
(961, 60, 'San Pedro de Macoris', 'PM', 1),
(962, 60, 'Santiago', 'SA', 1),
(963, 60, 'Santiago Rodriguez', 'ST', 1),
(964, 60, 'Santo Domingo', 'SD', 1),
(965, 60, 'Valverde', 'VA', 1),
(966, 61, 'Aileu', 'AL', 1),
(967, 61, 'Ainaro', 'AN', 1),
(968, 61, 'Baucau', 'BA', 1),
(969, 61, 'Bobonaro', 'BO', 1),
(970, 61, 'Cova Lima', 'CO', 1),
(971, 61, 'Dili', 'DI', 1),
(972, 61, 'Ermera', 'ER', 1),
(973, 61, 'Lautem', 'LA', 1),
(974, 61, 'Liquica', 'LI', 1),
(975, 61, 'Manatuto', 'MT', 1),
(976, 61, 'Manufahi', 'MF', 1),
(977, 61, 'Oecussi', 'OE', 1),
(978, 61, 'Viqueque', 'VI', 1),
(979, 62, 'Azuay', 'AZU', 1),
(980, 62, 'Bolivar', 'BOL', 1),
(981, 62, 'Ca&ntilde;ar', 'CAN', 1),
(982, 62, 'Carchi', 'CAR', 1),
(983, 62, 'Chimborazo', 'CHI', 1),
(984, 62, 'Cotopaxi', 'COT', 1),
(985, 62, 'El Oro', 'EOR', 1),
(986, 62, 'Esmeraldas', 'ESM', 1),
(987, 62, 'Gal&aacute;pagos', 'GPS', 1),
(988, 62, 'Guayas', 'GUA', 1),
(989, 62, 'Imbabura', 'IMB', 1),
(990, 62, 'Loja', 'LOJ', 1),
(991, 62, 'Los Rios', 'LRO', 1),
(992, 62, 'Manab&iacute;', 'MAN', 1),
(993, 62, 'Morona Santiago', 'MSA', 1),
(994, 62, 'Napo', 'NAP', 1),
(995, 62, 'Orellana', 'ORE', 1),
(996, 62, 'Pastaza', 'PAS', 1),
(997, 62, 'Pichincha', 'PIC', 1),
(998, 62, 'Sucumb&iacute;os', 'SUC', 1),
(999, 62, 'Tungurahua', 'TUN', 1),
(1000, 62, 'Zamora Chinchipe', 'ZCH', 1),
(1001, 63, 'Ad Daqahliyah', 'DHY', 1),
(1002, 63, 'Al Bahr al Ahmar', 'BAM', 1),
(1003, 63, 'Al Buhayrah', 'BHY', 1),
(1004, 63, 'Al Fayyum', 'FYM', 1),
(1005, 63, 'Al Gharbiyah', 'GBY', 1),
(1006, 63, 'Al Iskandariyah', 'IDR', 1),
(1007, 63, 'Al Isma\'iliyah', 'IML', 1),
(1008, 63, 'Al Jizah', 'JZH', 1),
(1009, 63, 'Al Minufiyah', 'MFY', 1),
(1010, 63, 'Al Minya', 'MNY', 1),
(1011, 63, 'Al Qahirah', 'QHR', 1),
(1012, 63, 'Al Qalyubiyah', 'QLY', 1),
(1013, 63, 'Al Wadi al Jadid', 'WJD', 1),
(1014, 63, 'Ash Sharqiyah', 'SHQ', 1),
(1015, 63, 'As Suways', 'SWY', 1),
(1016, 63, 'Aswan', 'ASW', 1),
(1017, 63, 'Asyut', 'ASY', 1),
(1018, 63, 'Bani Suwayf', 'BSW', 1),
(1019, 63, 'Bur Sa\'id', 'BSD', 1),
(1020, 63, 'Dumyat', 'DMY', 1),
(1021, 63, 'Janub Sina\'', 'JNS', 1),
(1022, 63, 'Kafr ash Shaykh', 'KSH', 1),
(1023, 63, 'Matruh', 'MAT', 1),
(1024, 63, 'Qina', 'QIN', 1),
(1025, 63, 'Shamal Sina\'', 'SHS', 1),
(1026, 63, 'Suhaj', 'SUH', 1),
(1027, 64, 'Ahuachapan', 'AH', 1),
(1028, 64, 'Cabanas', 'CA', 1),
(1029, 64, 'Chalatenango', 'CH', 1),
(1030, 64, 'Cuscatlan', 'CU', 1),
(1031, 64, 'La Libertad', 'LB', 1),
(1032, 64, 'La Paz', 'PZ', 1),
(1033, 64, 'La Union', 'UN', 1),
(1034, 64, 'Morazan', 'MO', 1),
(1035, 64, 'San Miguel', 'SM', 1),
(1036, 64, 'San Salvador', 'SS', 1),
(1037, 64, 'San Vicente', 'SV', 1),
(1038, 64, 'Santa Ana', 'SA', 1),
(1039, 64, 'Sonsonate', 'SO', 1),
(1040, 64, 'Usulutan', 'US', 1),
(1041, 65, 'Provincia Annobon', 'AN', 1),
(1042, 65, 'Provincia Bioko Norte', 'BN', 1),
(1043, 65, 'Provincia Bioko Sur', 'BS', 1),
(1044, 65, 'Provincia Centro Sur', 'CS', 1),
(1045, 65, 'Provincia Kie-Ntem', 'KN', 1),
(1046, 65, 'Provincia Litoral', 'LI', 1),
(1047, 65, 'Provincia Wele-Nzas', 'WN', 1),
(1048, 66, 'Central (Maekel)', 'MA', 1),
(1049, 66, 'Anseba (Keren)', 'KE', 1),
(1050, 66, 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', 1),
(1051, 66, 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', 1),
(1052, 66, 'Southern (Debub)', 'DE', 1),
(1053, 66, 'Gash-Barka (Barentu)', 'BR', 1),
(1054, 67, 'Harjumaa (Tallinn)', 'HA', 1),
(1055, 67, 'Hiiumaa (Kardla)', 'HI', 1),
(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 1),
(1057, 67, 'Jarvamaa (Paide)', 'JA', 1),
(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 1),
(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 1),
(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 1),
(1061, 67, 'Parnumaa (Parnu)', 'PA', 1),
(1062, 67, 'Polvamaa (Polva)', 'PO', 1),
(1063, 67, 'Raplamaa (Rapla)', 'RA', 1),
(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 1),
(1065, 67, 'Tartumaa (Tartu)', 'TA', 1),
(1066, 67, 'Valgamaa (Valga)', 'VA', 1),
(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 1),
(1068, 67, 'Vorumaa (Voru)', 'VO', 1),
(1069, 68, 'Afar', 'AF', 1),
(1070, 68, 'Amhara', 'AH', 1),
(1071, 68, 'Benishangul-Gumaz', 'BG', 1),
(1072, 68, 'Gambela', 'GB', 1),
(1073, 68, 'Hariai', 'HR', 1),
(1074, 68, 'Oromia', 'OR', 1),
(1075, 68, 'Somali', 'SM', 1),
(1076, 68, 'Southern Nations - Nationalities and Peoples Region', 'SN', 1),
(1077, 68, 'Tigray', 'TG', 1),
(1078, 68, 'Addis Ababa', 'AA', 1),
(1079, 68, 'Dire Dawa', 'DD', 1),
(1080, 71, 'Central Division', 'C', 1),
(1081, 71, 'Northern Division', 'N', 1),
(1082, 71, 'Eastern Division', 'E', 1),
(1083, 71, 'Western Division', 'W', 1),
(1084, 71, 'Rotuma', 'R', 1),
(1085, 72, 'Ahvenanmaan lääni', 'AL', 1),
(1086, 72, 'Etelä-Suomen lääni', 'ES', 1),
(1087, 72, 'Itä-Suomen lääni', 'IS', 1),
(1088, 72, 'Länsi-Suomen lääni', 'LS', 1),
(1089, 72, 'Lapin lääni', 'LA', 1),
(1090, 72, 'Oulun lääni', 'OU', 1),
(1114, 74, 'Ain', '01', 1),
(1115, 74, 'Aisne', '02', 1),
(1116, 74, 'Allier', '03', 1),
(1117, 74, 'Alpes de Haute Provence', '04', 1),
(1118, 74, 'Hautes-Alpes', '05', 1),
(1119, 74, 'Alpes Maritimes', '06', 1),
(1120, 74, 'Ard&egrave;che', '07', 1),
(1121, 74, 'Ardennes', '08', 1),
(1122, 74, 'Ari&egrave;ge', '09', 1),
(1123, 74, 'Aube', '10', 1),
(1124, 74, 'Aude', '11', 1),
(1125, 74, 'Aveyron', '12', 1),
(1126, 74, 'Bouches du Rh&ocirc;ne', '13', 1),
(1127, 74, 'Calvados', '14', 1),
(1128, 74, 'Cantal', '15', 1),
(1129, 74, 'Charente', '16', 1),
(1130, 74, 'Charente Maritime', '17', 1),
(1131, 74, 'Cher', '18', 1),
(1132, 74, 'Corr&egrave;ze', '19', 1),
(1133, 74, 'Corse du Sud', '2A', 1),
(1134, 74, 'Haute Corse', '2B', 1),
(1135, 74, 'C&ocirc;te d&#039;or', '21', 1),
(1136, 74, 'C&ocirc;tes d&#039;Armor', '22', 1),
(1137, 74, 'Creuse', '23', 1),
(1138, 74, 'Dordogne', '24', 1),
(1139, 74, 'Doubs', '25', 1),
(1140, 74, 'Dr&ocirc;me', '26', 1),
(1141, 74, 'Eure', '27', 1),
(1142, 74, 'Eure et Loir', '28', 1),
(1143, 74, 'Finist&egrave;re', '29', 1),
(1144, 74, 'Gard', '30', 1),
(1145, 74, 'Haute Garonne', '31', 1),
(1146, 74, 'Gers', '32', 1),
(1147, 74, 'Gironde', '33', 1),
(1148, 74, 'H&eacute;rault', '34', 1),
(1149, 74, 'Ille et Vilaine', '35', 1),
(1150, 74, 'Indre', '36', 1),
(1151, 74, 'Indre et Loire', '37', 1),
(1152, 74, 'Is&eacute;re', '38', 1),
(1153, 74, 'Jura', '39', 1),
(1154, 74, 'Landes', '40', 1),
(1155, 74, 'Loir et Cher', '41', 1),
(1156, 74, 'Loire', '42', 1),
(1157, 74, 'Haute Loire', '43', 1),
(1158, 74, 'Loire Atlantique', '44', 1),
(1159, 74, 'Loiret', '45', 1),
(1160, 74, 'Lot', '46', 1),
(1161, 74, 'Lot et Garonne', '47', 1),
(1162, 74, 'Loz&egrave;re', '48', 1),
(1163, 74, 'Maine et Loire', '49', 1),
(1164, 74, 'Manche', '50', 1),
(1165, 74, 'Marne', '51', 1),
(1166, 74, 'Haute Marne', '52', 1),
(1167, 74, 'Mayenne', '53', 1),
(1168, 74, 'Meurthe et Moselle', '54', 1),
(1169, 74, 'Meuse', '55', 1),
(1170, 74, 'Morbihan', '56', 1),
(1171, 74, 'Moselle', '57', 1),
(1172, 74, 'Ni&egrave;vre', '58', 1),
(1173, 74, 'Nord', '59', 1),
(1174, 74, 'Oise', '60', 1),
(1175, 74, 'Orne', '61', 1),
(1176, 74, 'Pas de Calais', '62', 1),
(1177, 74, 'Puy de D&ocirc;me', '63', 1),
(1178, 74, 'Pyr&eacute;n&eacute;es Atlantiques', '64', 1),
(1179, 74, 'Hautes Pyr&eacute;n&eacute;es', '65', 1),
(1180, 74, 'Pyr&eacute;n&eacute;es Orientales', '66', 1),
(1181, 74, 'Bas Rhin', '67', 1),
(1182, 74, 'Haut Rhin', '68', 1),
(1183, 74, 'Rh&ocirc;ne', '69', 1),
(1184, 74, 'Haute Sa&ocirc;ne', '70', 1),
(1185, 74, 'Sa&ocirc;ne et Loire', '71', 1),
(1186, 74, 'Sarthe', '72', 1),
(1187, 74, 'Savoie', '73', 1),
(1188, 74, 'Haute Savoie', '74', 1),
(1189, 74, 'Paris', '75', 1),
(1190, 74, 'Seine Maritime', '76', 1),
(1191, 74, 'Seine et Marne', '77', 1),
(1192, 74, 'Yvelines', '78', 1),
(1193, 74, 'Deux S&egrave;vres', '79', 1),
(1194, 74, 'Somme', '80', 1),
(1195, 74, 'Tarn', '81', 1),
(1196, 74, 'Tarn et Garonne', '82', 1),
(1197, 74, 'Var', '83', 1),
(1198, 74, 'Vaucluse', '84', 1),
(1199, 74, 'Vend&eacute;e', '85', 1),
(1200, 74, 'Vienne', '86', 1),
(1201, 74, 'Haute Vienne', '87', 1),
(1202, 74, 'Vosges', '88', 1),
(1203, 74, 'Yonne', '89', 1),
(1204, 74, 'Territoire de Belfort', '90', 1),
(1205, 74, 'Essonne', '91', 1),
(1206, 74, 'Hauts de Seine', '92', 1),
(1207, 74, 'Seine St-Denis', '93', 1),
(1208, 74, 'Val de Marne', '94', 1),
(1209, 74, 'Val d\'Oise', '95', 1),
(1210, 76, 'Archipel des Marquises', 'M', 1),
(1211, 76, 'Archipel des Tuamotu', 'T', 1),
(1212, 76, 'Archipel des Tubuai', 'I', 1),
(1213, 76, 'Iles du Vent', 'V', 1),
(1214, 76, 'Iles Sous-le-Vent', 'S', 1),
(1215, 77, 'Iles Crozet', 'C', 1),
(1216, 77, 'Iles Kerguelen', 'K', 1),
(1217, 77, 'Ile Amsterdam', 'A', 1),
(1218, 77, 'Ile Saint-Paul', 'P', 1),
(1219, 77, 'Adelie Land', 'D', 1),
(1220, 78, 'Estuaire', 'ES', 1),
(1221, 78, 'Haut-Ogooue', 'HO', 1),
(1222, 78, 'Moyen-Ogooue', 'MO', 1),
(1223, 78, 'Ngounie', 'NG', 1),
(1224, 78, 'Nyanga', 'NY', 1),
(1225, 78, 'Ogooue-Ivindo', 'OI', 1),
(1226, 78, 'Ogooue-Lolo', 'OL', 1),
(1227, 78, 'Ogooue-Maritime', 'OM', 1),
(1228, 78, 'Woleu-Ntem', 'WN', 1),
(1229, 79, 'Banjul', 'BJ', 1),
(1230, 79, 'Basse', 'BS', 1),
(1231, 79, 'Brikama', 'BR', 1),
(1232, 79, 'Janjangbure', 'JA', 1),
(1233, 79, 'Kanifeng', 'KA', 1),
(1234, 79, 'Kerewan', 'KE', 1),
(1235, 79, 'Kuntaur', 'KU', 1),
(1236, 79, 'Mansakonko', 'MA', 1),
(1237, 79, 'Lower River', 'LR', 1),
(1238, 79, 'Central River', 'CR', 1),
(1239, 79, 'North Bank', 'NB', 1),
(1240, 79, 'Upper River', 'UR', 1),
(1241, 79, 'Western', 'WE', 1),
(1242, 80, 'Abkhazia', 'AB', 1),
(1243, 80, 'Ajaria', 'AJ', 1),
(1244, 80, 'Tbilisi', 'TB', 1),
(1245, 80, 'Guria', 'GU', 1),
(1246, 80, 'Imereti', 'IM', 1),
(1247, 80, 'Kakheti', 'KA', 1),
(1248, 80, 'Kvemo Kartli', 'KK', 1),
(1249, 80, 'Mtskheta-Mtianeti', 'MM', 1),
(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
(1252, 80, 'Samtskhe-Javakheti', 'SJ', 1),
(1253, 80, 'Shida Kartli', 'SK', 1),
(1254, 81, 'Baden-Württemberg', 'BAW', 1),
(1255, 81, 'Bayern', 'BAY', 1),
(1256, 81, 'Berlin', 'BER', 1),
(1257, 81, 'Brandenburg', 'BRG', 1),
(1258, 81, 'Bremen', 'BRE', 1),
(1259, 81, 'Hamburg', 'HAM', 1),
(1260, 81, 'Hessen', 'HES', 1),
(1261, 81, 'Mecklenburg-Vorpommern', 'MEC', 1),
(1262, 81, 'Niedersachsen', 'NDS', 1),
(1263, 81, 'Nordrhein-Westfalen', 'NRW', 1),
(1264, 81, 'Rheinland-Pfalz', 'RHE', 1),
(1265, 81, 'Saarland', 'SAR', 1),
(1266, 81, 'Sachsen', 'SAS', 1),
(1267, 81, 'Sachsen-Anhalt', 'SAC', 1),
(1268, 81, 'Schleswig-Holstein', 'SCN', 1),
(1269, 81, 'Thüringen', 'THE', 1),
(1270, 82, 'Ashanti Region', 'AS', 1),
(1271, 82, 'Brong-Ahafo Region', 'BA', 1),
(1272, 82, 'Central Region', 'CE', 1),
(1273, 82, 'Eastern Region', 'EA', 1),
(1274, 82, 'Greater Accra Region', 'GA', 1),
(1275, 82, 'Northern Region', 'NO', 1),
(1276, 82, 'Upper East Region', 'UE', 1),
(1277, 82, 'Upper West Region', 'UW', 1),
(1278, 82, 'Volta Region', 'VO', 1),
(1279, 82, 'Western Region', 'WE', 1),
(1280, 84, 'Attica', 'AT', 1),
(1281, 84, 'Central Greece', 'CN', 1),
(1282, 84, 'Central Macedonia', 'CM', 1),
(1283, 84, 'Crete', 'CR', 1),
(1284, 84, 'East Macedonia and Thrace', 'EM', 1),
(1285, 84, 'Epirus', 'EP', 1),
(1286, 84, 'Ionian Islands', 'II', 1),
(1287, 84, 'North Aegean', 'NA', 1),
(1288, 84, 'Peloponnesos', 'PP', 1),
(1289, 84, 'South Aegean', 'SA', 1),
(1290, 84, 'Thessaly', 'TH', 1),
(1291, 84, 'West Greece', 'WG', 1),
(1292, 84, 'West Macedonia', 'WM', 1),
(1293, 85, 'Avannaa', 'A', 1),
(1294, 85, 'Tunu', 'T', 1),
(1295, 85, 'Kitaa', 'K', 1),
(1296, 86, 'Saint Andrew', 'A', 1),
(1297, 86, 'Saint David', 'D', 1),
(1298, 86, 'Saint George', 'G', 1),
(1299, 86, 'Saint John', 'J', 1),
(1300, 86, 'Saint Mark', 'M', 1),
(1301, 86, 'Saint Patrick', 'P', 1),
(1302, 86, 'Carriacou', 'C', 1),
(1303, 86, 'Petit Martinique', 'Q', 1),
(1304, 89, 'Alta Verapaz', 'AV', 1),
(1305, 89, 'Baja Verapaz', 'BV', 1),
(1306, 89, 'Chimaltenango', 'CM', 1),
(1307, 89, 'Chiquimula', 'CQ', 1),
(1308, 89, 'El Peten', 'PE', 1),
(1309, 89, 'El Progreso', 'PR', 1),
(1310, 89, 'El Quiche', 'QC', 1),
(1311, 89, 'Escuintla', 'ES', 1),
(1312, 89, 'Guatemala', 'GU', 1),
(1313, 89, 'Huehuetenango', 'HU', 1),
(1314, 89, 'Izabal', 'IZ', 1),
(1315, 89, 'Jalapa', 'JA', 1),
(1316, 89, 'Jutiapa', 'JU', 1),
(1317, 89, 'Quetzaltenango', 'QZ', 1),
(1318, 89, 'Retalhuleu', 'RE', 1),
(1319, 89, 'Sacatepequez', 'ST', 1),
(1320, 89, 'San Marcos', 'SM', 1),
(1321, 89, 'Santa Rosa', 'SR', 1),
(1322, 89, 'Solola', 'SO', 1),
(1323, 89, 'Suchitepequez', 'SU', 1),
(1324, 89, 'Totonicapan', 'TO', 1),
(1325, 89, 'Zacapa', 'ZA', 1),
(1326, 90, 'Conakry', 'CNK', 1),
(1327, 90, 'Beyla', 'BYL', 1),
(1328, 90, 'Boffa', 'BFA', 1),
(1329, 90, 'Boke', 'BOK', 1),
(1330, 90, 'Coyah', 'COY', 1),
(1331, 90, 'Dabola', 'DBL', 1),
(1332, 90, 'Dalaba', 'DLB', 1),
(1333, 90, 'Dinguiraye', 'DGR', 1),
(1334, 90, 'Dubreka', 'DBR', 1),
(1335, 90, 'Faranah', 'FRN', 1),
(1336, 90, 'Forecariah', 'FRC', 1),
(1337, 90, 'Fria', 'FRI', 1),
(1338, 90, 'Gaoual', 'GAO', 1),
(1339, 90, 'Gueckedou', 'GCD', 1),
(1340, 90, 'Kankan', 'KNK', 1),
(1341, 90, 'Kerouane', 'KRN', 1),
(1342, 90, 'Kindia', 'KND', 1),
(1343, 90, 'Kissidougou', 'KSD', 1),
(1344, 90, 'Koubia', 'KBA', 1),
(1345, 90, 'Koundara', 'KDA', 1),
(1346, 90, 'Kouroussa', 'KRA', 1),
(1347, 90, 'Labe', 'LAB', 1),
(1348, 90, 'Lelouma', 'LLM', 1),
(1349, 90, 'Lola', 'LOL', 1),
(1350, 90, 'Macenta', 'MCT', 1),
(1351, 90, 'Mali', 'MAL', 1),
(1352, 90, 'Mamou', 'MAM', 1),
(1353, 90, 'Mandiana', 'MAN', 1),
(1354, 90, 'Nzerekore', 'NZR', 1),
(1355, 90, 'Pita', 'PIT', 1),
(1356, 90, 'Siguiri', 'SIG', 1),
(1357, 90, 'Telimele', 'TLM', 1),
(1358, 90, 'Tougue', 'TOG', 1),
(1359, 90, 'Yomou', 'YOM', 1),
(1360, 91, 'Bafata Region', 'BF', 1),
(1361, 91, 'Biombo Region', 'BB', 1),
(1362, 91, 'Bissau Region', 'BS', 1),
(1363, 91, 'Bolama Region', 'BL', 1),
(1364, 91, 'Cacheu Region', 'CA', 1),
(1365, 91, 'Gabu Region', 'GA', 1),
(1366, 91, 'Oio Region', 'OI', 1),
(1367, 91, 'Quinara Region', 'QU', 1),
(1368, 91, 'Tombali Region', 'TO', 1),
(1369, 92, 'Barima-Waini', 'BW', 1),
(1370, 92, 'Cuyuni-Mazaruni', 'CM', 1),
(1371, 92, 'Demerara-Mahaica', 'DM', 1),
(1372, 92, 'East Berbice-Corentyne', 'EC', 1),
(1373, 92, 'Essequibo Islands-West Demerara', 'EW', 1),
(1374, 92, 'Mahaica-Berbice', 'MB', 1),
(1375, 92, 'Pomeroon-Supenaam', 'PM', 1),
(1376, 92, 'Potaro-Siparuni', 'PI', 1),
(1377, 92, 'Upper Demerara-Berbice', 'UD', 1),
(1378, 92, 'Upper Takutu-Upper Essequibo', 'UT', 1),
(1379, 93, 'Artibonite', 'AR', 1),
(1380, 93, 'Centre', 'CE', 1),
(1381, 93, 'Grand\'Anse', 'GA', 1),
(1382, 93, 'Nord', 'ND', 1),
(1383, 93, 'Nord-Est', 'NE', 1),
(1384, 93, 'Nord-Ouest', 'NO', 1),
(1385, 93, 'Ouest', 'OU', 1),
(1386, 93, 'Sud', 'SD', 1),
(1387, 93, 'Sud-Est', 'SE', 1),
(1388, 94, 'Flat Island', 'F', 1),
(1389, 94, 'McDonald Island', 'M', 1),
(1390, 94, 'Shag Island', 'S', 1),
(1391, 94, 'Heard Island', 'H', 1),
(1392, 95, 'Atlantida', 'AT', 1),
(1393, 95, 'Choluteca', 'CH', 1),
(1394, 95, 'Colon', 'CL', 1),
(1395, 95, 'Comayagua', 'CM', 1),
(1396, 95, 'Copan', 'CP', 1),
(1397, 95, 'Cortes', 'CR', 1),
(1398, 95, 'El Paraiso', 'PA', 1),
(1399, 95, 'Francisco Morazan', 'FM', 1),
(1400, 95, 'Gracias a Dios', 'GD', 1),
(1401, 95, 'Intibuca', 'IN', 1),
(1402, 95, 'Islas de la Bahia (Bay Islands)', 'IB', 1),
(1403, 95, 'La Paz', 'PZ', 1),
(1404, 95, 'Lempira', 'LE', 1),
(1405, 95, 'Ocotepeque', 'OC', 1),
(1406, 95, 'Olancho', 'OL', 1),
(1407, 95, 'Santa Barbara', 'SB', 1),
(1408, 95, 'Valle', 'VA', 1),
(1409, 95, 'Yoro', 'YO', 1),
(1410, 96, 'Central and Western Hong Kong Island', 'HCW', 1),
(1411, 96, 'Eastern Hong Kong Island', 'HEA', 1),
(1412, 96, 'Southern Hong Kong Island', 'HSO', 1),
(1413, 96, 'Wan Chai Hong Kong Island', 'HWC', 1),
(1414, 96, 'Kowloon City Kowloon', 'KKC', 1),
(1415, 96, 'Kwun Tong Kowloon', 'KKT', 1),
(1416, 96, 'Sham Shui Po Kowloon', 'KSS', 1),
(1417, 96, 'Wong Tai Sin Kowloon', 'KWT', 1),
(1418, 96, 'Yau Tsim Mong Kowloon', 'KYT', 1),
(1419, 96, 'Islands New Territories', 'NIS', 1),
(1420, 96, 'Kwai Tsing New Territories', 'NKT', 1),
(1421, 96, 'North New Territories', 'NNO', 1),
(1422, 96, 'Sai Kung New Territories', 'NSK', 1),
(1423, 96, 'Sha Tin New Territories', 'NST', 1),
(1424, 96, 'Tai Po New Territories', 'NTP', 1),
(1425, 96, 'Tsuen Wan New Territories', 'NTW', 1),
(1426, 96, 'Tuen Mun New Territories', 'NTM', 1),
(1427, 96, 'Yuen Long New Territories', 'NYL', 1),
(1467, 98, 'Austurland', 'AL', 1),
(1468, 98, 'Hofuoborgarsvaeoi', 'HF', 1),
(1469, 98, 'Norourland eystra', 'NE', 1),
(1470, 98, 'Norourland vestra', 'NV', 1),
(1471, 98, 'Suourland', 'SL', 1),
(1472, 98, 'Suournes', 'SN', 1),
(1473, 98, 'Vestfiroir', 'VF', 1),
(1474, 98, 'Vesturland', 'VL', 1),
(1475, 99, 'Andaman and Nicobar Islands', 'AN', 1),
(1476, 99, 'Andhra Pradesh', 'AP', 1),
(1477, 99, 'Arunachal Pradesh', 'AR', 1),
(1478, 99, 'Assam', 'AS', 1),
(1479, 99, 'Bihar', 'BI', 1),
(1480, 99, 'Chandigarh', 'CH', 1),
(1481, 99, 'Dadra and Nagar Haveli', 'DA', 1),
(1482, 99, 'Daman and Diu', 'DM', 1),
(1483, 99, 'Delhi', 'DE', 1),
(1484, 99, 'Goa', 'GO', 1),
(1485, 99, 'Gujarat', 'GU', 1),
(1486, 99, 'Haryana', 'HA', 1),
(1487, 99, 'Himachal Pradesh', 'HP', 1),
(1488, 99, 'Jammu and Kashmir', 'JA', 1),
(1489, 99, 'Karnataka', 'KA', 1),
(1490, 99, 'Kerala', 'KE', 1),
(1491, 99, 'Lakshadweep Islands', 'LI', 1),
(1492, 99, 'Madhya Pradesh', 'MP', 1),
(1493, 99, 'Maharashtra', 'MA', 1),
(1494, 99, 'Manipur', 'MN', 1),
(1495, 99, 'Meghalaya', 'ME', 1),
(1496, 99, 'Mizoram', 'MI', 1),
(1497, 99, 'Nagaland', 'NA', 1),
(1498, 99, 'Orissa', 'OR', 1),
(1499, 99, 'Puducherry', 'PO', 1),
(1500, 99, 'Punjab', 'PU', 1),
(1501, 99, 'Rajasthan', 'RA', 1),
(1502, 99, 'Sikkim', 'SI', 1),
(1503, 99, 'Tamil Nadu', 'TN', 1),
(1504, 99, 'Tripura', 'TR', 1),
(1505, 99, 'Uttar Pradesh', 'UP', 1),
(1506, 99, 'West Bengal', 'WB', 1),
(1507, 100, 'Aceh', 'AC', 1),
(1508, 100, 'Bali', 'BA', 1),
(1509, 100, 'Banten', 'BT', 1),
(1510, 100, 'Bengkulu', 'BE', 1),
(1511, 100, 'Kalimantan Utara', 'BD', 1),
(1512, 100, 'Gorontalo', 'GO', 1),
(1513, 100, 'Jakarta', 'JK', 1),
(1514, 100, 'Jambi', 'JA', 1),
(1515, 100, 'Jawa Barat', 'JB', 1),
(1516, 100, 'Jawa Tengah', 'JT', 1),
(1517, 100, 'Jawa Timur', 'JI', 1),
(1518, 100, 'Kalimantan Barat', 'KB', 1),
(1519, 100, 'Kalimantan Selatan', 'KS', 1),
(1520, 100, 'Kalimantan Tengah', 'KT', 1),
(1521, 100, 'Kalimantan Timur', 'KI', 1),
(1522, 100, 'Kepulauan Bangka Belitung', 'BB', 1),
(1523, 100, 'Lampung', 'LA', 1),
(1524, 100, 'Maluku', 'MA', 1),
(1525, 100, 'Maluku Utara', 'MU', 1),
(1526, 100, 'Nusa Tenggara Barat', 'NB', 1),
(1527, 100, 'Nusa Tenggara Timur', 'NT', 1),
(1528, 100, 'Papua', 'PA', 1),
(1529, 100, 'Riau', 'RI', 1),
(1530, 100, 'Sulawesi Selatan', 'SN', 1),
(1531, 100, 'Sulawesi Tengah', 'ST', 1),
(1532, 100, 'Sulawesi Tenggara', 'SG', 1),
(1533, 100, 'Sulawesi Utara', 'SA', 1),
(1534, 100, 'Sumatera Barat', 'SB', 1),
(1535, 100, 'Sumatera Selatan', 'SS', 1),
(1536, 100, 'Sumatera Utara', 'SU', 1),
(1537, 100, 'Yogyakarta', 'YO', 1),
(1538, 101, 'Tehran', 'TEH', 1),
(1539, 101, 'Qom', 'QOM', 1),
(1540, 101, 'Markazi', 'MKZ', 1),
(1541, 101, 'Qazvin', 'QAZ', 1),
(1542, 101, 'Gilan', 'GIL', 1),
(1543, 101, 'Ardabil', 'ARD', 1),
(1544, 101, 'Zanjan', 'ZAN', 1),
(1545, 101, 'East Azarbaijan', 'EAZ', 1),
(1546, 101, 'West Azarbaijan', 'WEZ', 1),
(1547, 101, 'Kurdistan', 'KRD', 1),
(1548, 101, 'Hamadan', 'HMD', 1),
(1549, 101, 'Kermanshah', 'KRM', 1),
(1550, 101, 'Ilam', 'ILM', 1),
(1551, 101, 'Lorestan', 'LRS', 1),
(1552, 101, 'Khuzestan', 'KZT', 1),
(1553, 101, 'Chahar Mahaal and Bakhtiari', 'CMB', 1),
(1554, 101, 'Kohkiluyeh and Buyer Ahmad', 'KBA', 1),
(1555, 101, 'Bushehr', 'BSH', 1),
(1556, 101, 'Fars', 'FAR', 1),
(1557, 101, 'Hormozgan', 'HRM', 1),
(1558, 101, 'Sistan and Baluchistan', 'SBL', 1),
(1559, 101, 'Kerman', 'KRB', 1),
(1560, 101, 'Yazd', 'YZD', 1),
(1561, 101, 'Esfahan', 'EFH', 1),
(1562, 101, 'Semnan', 'SMN', 1),
(1563, 101, 'Mazandaran', 'MZD', 1),
(1564, 101, 'Golestan', 'GLS', 1),
(1565, 101, 'North Khorasan', 'NKH', 1),
(1566, 101, 'Razavi Khorasan', 'RKH', 1),
(1567, 101, 'South Khorasan', 'SKH', 1),
(1568, 102, 'Baghdad', 'BD', 1),
(1569, 102, 'Salah ad Din', 'SD', 1),
(1570, 102, 'Diyala', 'DY', 1),
(1571, 102, 'Wasit', 'WS', 1),
(1572, 102, 'Maysan', 'MY', 1),
(1573, 102, 'Al Basrah', 'BA', 1),
(1574, 102, 'Dhi Qar', 'DQ', 1),
(1575, 102, 'Al Muthanna', 'MU', 1),
(1576, 102, 'Al Qadisyah', 'QA', 1),
(1577, 102, 'Babil', 'BB', 1),
(1578, 102, 'Al Karbala', 'KB', 1),
(1579, 102, 'An Najaf', 'NJ', 1),
(1580, 102, 'Al Anbar', 'AB', 1),
(1581, 102, 'Ninawa', 'NN', 1),
(1582, 102, 'Dahuk', 'DH', 1),
(1583, 102, 'Arbil', 'AL', 1),
(1584, 102, 'At Ta\'mim', 'TM', 1),
(1585, 102, 'As Sulaymaniyah', 'SL', 1),
(1586, 103, 'Carlow', 'CA', 1),
(1587, 103, 'Cavan', 'CV', 1),
(1588, 103, 'Clare', 'CL', 1),
(1589, 103, 'Cork', 'CO', 1),
(1590, 103, 'Donegal', 'DO', 1),
(1591, 103, 'Dublin', 'DU', 1),
(1592, 103, 'Galway', 'GA', 1),
(1593, 103, 'Kerry', 'KE', 1),
(1594, 103, 'Kildare', 'KI', 1),
(1595, 103, 'Kilkenny', 'KL', 1),
(1596, 103, 'Laois', 'LA', 1),
(1597, 103, 'Leitrim', 'LE', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1598, 103, 'Limerick', 'LI', 1),
(1599, 103, 'Longford', 'LO', 1),
(1600, 103, 'Louth', 'LU', 1),
(1601, 103, 'Mayo', 'MA', 1),
(1602, 103, 'Meath', 'ME', 1),
(1603, 103, 'Monaghan', 'MO', 1),
(1604, 103, 'Offaly', 'OF', 1),
(1605, 103, 'Roscommon', 'RO', 1),
(1606, 103, 'Sligo', 'SL', 1),
(1607, 103, 'Tipperary', 'TI', 1),
(1608, 103, 'Waterford', 'WA', 1),
(1609, 103, 'Westmeath', 'WE', 1),
(1610, 103, 'Wexford', 'WX', 1),
(1611, 103, 'Wicklow', 'WI', 1),
(1612, 104, 'Be\'er Sheva', 'BS', 1),
(1613, 104, 'Bika\'at Hayarden', 'BH', 1),
(1614, 104, 'Eilat and Arava', 'EA', 1),
(1615, 104, 'Galil', 'GA', 1),
(1616, 104, 'Haifa', 'HA', 1),
(1617, 104, 'Jehuda Mountains', 'JM', 1),
(1618, 104, 'Jerusalem', 'JE', 1),
(1619, 104, 'Negev', 'NE', 1),
(1620, 104, 'Semaria', 'SE', 1),
(1621, 104, 'Sharon', 'SH', 1),
(1622, 104, 'Tel Aviv (Gosh Dan)', 'TA', 1),
(3860, 105, 'Caltanissetta', 'CL', 1),
(3842, 105, 'Agrigento', 'AG', 1),
(3843, 105, 'Alessandria', 'AL', 1),
(3844, 105, 'Ancona', 'AN', 1),
(3845, 105, 'Aosta', 'AO', 1),
(3846, 105, 'Arezzo', 'AR', 1),
(3847, 105, 'Ascoli Piceno', 'AP', 1),
(3848, 105, 'Asti', 'AT', 1),
(3849, 105, 'Avellino', 'AV', 1),
(3850, 105, 'Bari', 'BA', 1),
(3851, 105, 'Belluno', 'BL', 1),
(3852, 105, 'Benevento', 'BN', 1),
(3853, 105, 'Bergamo', 'BG', 1),
(3854, 105, 'Biella', 'BI', 1),
(3855, 105, 'Bologna', 'BO', 1),
(3856, 105, 'Bolzano', 'BZ', 1),
(3857, 105, 'Brescia', 'BS', 1),
(3858, 105, 'Brindisi', 'BR', 1),
(3859, 105, 'Cagliari', 'CA', 1),
(1643, 106, 'Clarendon Parish', 'CLA', 1),
(1644, 106, 'Hanover Parish', 'HAN', 1),
(1645, 106, 'Kingston Parish', 'KIN', 1),
(1646, 106, 'Manchester Parish', 'MAN', 1),
(1647, 106, 'Portland Parish', 'POR', 1),
(1648, 106, 'Saint Andrew Parish', 'AND', 1),
(1649, 106, 'Saint Ann Parish', 'ANN', 1),
(1650, 106, 'Saint Catherine Parish', 'CAT', 1),
(1651, 106, 'Saint Elizabeth Parish', 'ELI', 1),
(1652, 106, 'Saint James Parish', 'JAM', 1),
(1653, 106, 'Saint Mary Parish', 'MAR', 1),
(1654, 106, 'Saint Thomas Parish', 'THO', 1),
(1655, 106, 'Trelawny Parish', 'TRL', 1),
(1656, 106, 'Westmoreland Parish', 'WML', 1),
(1657, 107, 'Aichi', 'AI', 1),
(1658, 107, 'Akita', 'AK', 1),
(1659, 107, 'Aomori', 'AO', 1),
(1660, 107, 'Chiba', 'CH', 1),
(1661, 107, 'Ehime', 'EH', 1),
(1662, 107, 'Fukui', 'FK', 1),
(1663, 107, 'Fukuoka', 'FU', 1),
(1664, 107, 'Fukushima', 'FS', 1),
(1665, 107, 'Gifu', 'GI', 1),
(1666, 107, 'Gumma', 'GU', 1),
(1667, 107, 'Hiroshima', 'HI', 1),
(1668, 107, 'Hokkaido', 'HO', 1),
(1669, 107, 'Hyogo', 'HY', 1),
(1670, 107, 'Ibaraki', 'IB', 1),
(1671, 107, 'Ishikawa', 'IS', 1),
(1672, 107, 'Iwate', 'IW', 1),
(1673, 107, 'Kagawa', 'KA', 1),
(1674, 107, 'Kagoshima', 'KG', 1),
(1675, 107, 'Kanagawa', 'KN', 1),
(1676, 107, 'Kochi', 'KO', 1),
(1677, 107, 'Kumamoto', 'KU', 1),
(1678, 107, 'Kyoto', 'KY', 1),
(1679, 107, 'Mie', 'MI', 1),
(1680, 107, 'Miyagi', 'MY', 1),
(1681, 107, 'Miyazaki', 'MZ', 1),
(1682, 107, 'Nagano', 'NA', 1),
(1683, 107, 'Nagasaki', 'NG', 1),
(1684, 107, 'Nara', 'NR', 1),
(1685, 107, 'Niigata', 'NI', 1),
(1686, 107, 'Oita', 'OI', 1),
(1687, 107, 'Okayama', 'OK', 1),
(1688, 107, 'Okinawa', 'ON', 1),
(1689, 107, 'Osaka', 'OS', 1),
(1690, 107, 'Saga', 'SA', 1),
(1691, 107, 'Saitama', 'SI', 1),
(1692, 107, 'Shiga', 'SH', 1),
(1693, 107, 'Shimane', 'SM', 1),
(1694, 107, 'Shizuoka', 'SZ', 1),
(1695, 107, 'Tochigi', 'TO', 1),
(1696, 107, 'Tokushima', 'TS', 1),
(1697, 107, 'Tokyo', 'TK', 1),
(1698, 107, 'Tottori', 'TT', 1),
(1699, 107, 'Toyama', 'TY', 1),
(1700, 107, 'Wakayama', 'WA', 1),
(1701, 107, 'Yamagata', 'YA', 1),
(1702, 107, 'Yamaguchi', 'YM', 1),
(1703, 107, 'Yamanashi', 'YN', 1),
(1704, 108, '\'Amman', 'AM', 1),
(1705, 108, 'Ajlun', 'AJ', 1),
(1706, 108, 'Al \'Aqabah', 'AA', 1),
(1707, 108, 'Al Balqa\'', 'AB', 1),
(1708, 108, 'Al Karak', 'AK', 1),
(1709, 108, 'Al Mafraq', 'AL', 1),
(1710, 108, 'At Tafilah', 'AT', 1),
(1711, 108, 'Az Zarqa\'', 'AZ', 1),
(1712, 108, 'Irbid', 'IR', 1),
(1713, 108, 'Jarash', 'JA', 1),
(1714, 108, 'Ma\'an', 'MA', 1),
(1715, 108, 'Madaba', 'MD', 1),
(1716, 109, 'Almaty', 'AL', 1),
(1717, 109, 'Almaty City', 'AC', 1),
(1718, 109, 'Aqmola', 'AM', 1),
(1719, 109, 'Aqtobe', 'AQ', 1),
(1720, 109, 'Astana City', 'AS', 1),
(1721, 109, 'Atyrau', 'AT', 1),
(1722, 109, 'Batys Qazaqstan', 'BA', 1),
(1723, 109, 'Bayqongyr City', 'BY', 1),
(1724, 109, 'Mangghystau', 'MA', 1),
(1725, 109, 'Ongtustik Qazaqstan', 'ON', 1),
(1726, 109, 'Pavlodar', 'PA', 1),
(1727, 109, 'Qaraghandy', 'QA', 1),
(1728, 109, 'Qostanay', 'QO', 1),
(1729, 109, 'Qyzylorda', 'QY', 1),
(1730, 109, 'Shyghys Qazaqstan', 'SH', 1),
(1731, 109, 'Soltustik Qazaqstan', 'SO', 1),
(1732, 109, 'Zhambyl', 'ZH', 1),
(1733, 110, 'Central', 'CE', 1),
(1734, 110, 'Coast', 'CO', 1),
(1735, 110, 'Eastern', 'EA', 1),
(1736, 110, 'Nairobi Area', 'NA', 1),
(1737, 110, 'North Eastern', 'NE', 1),
(1738, 110, 'Nyanza', 'NY', 1),
(1739, 110, 'Rift Valley', 'RV', 1),
(1740, 110, 'Western', 'WE', 1),
(1741, 111, 'Abaiang', 'AG', 1),
(1742, 111, 'Abemama', 'AM', 1),
(1743, 111, 'Aranuka', 'AK', 1),
(1744, 111, 'Arorae', 'AO', 1),
(1745, 111, 'Banaba', 'BA', 1),
(1746, 111, 'Beru', 'BE', 1),
(1747, 111, 'Butaritari', 'bT', 1),
(1748, 111, 'Kanton', 'KA', 1),
(1749, 111, 'Kiritimati', 'KR', 1),
(1750, 111, 'Kuria', 'KU', 1),
(1751, 111, 'Maiana', 'MI', 1),
(1752, 111, 'Makin', 'MN', 1),
(1753, 111, 'Marakei', 'ME', 1),
(1754, 111, 'Nikunau', 'NI', 1),
(1755, 111, 'Nonouti', 'NO', 1),
(1756, 111, 'Onotoa', 'ON', 1),
(1757, 111, 'Tabiteuea', 'TT', 1),
(1758, 111, 'Tabuaeran', 'TR', 1),
(1759, 111, 'Tamana', 'TM', 1),
(1760, 111, 'Tarawa', 'TW', 1),
(1761, 111, 'Teraina', 'TE', 1),
(1762, 112, 'Chagang-do', 'CHA', 1),
(1763, 112, 'Hamgyong-bukto', 'HAB', 1),
(1764, 112, 'Hamgyong-namdo', 'HAN', 1),
(1765, 112, 'Hwanghae-bukto', 'HWB', 1),
(1766, 112, 'Hwanghae-namdo', 'HWN', 1),
(1767, 112, 'Kangwon-do', 'KAN', 1),
(1768, 112, 'P\'yongan-bukto', 'PYB', 1),
(1769, 112, 'P\'yongan-namdo', 'PYN', 1),
(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 1),
(1771, 112, 'Rason Directly Governed City', 'NAJ', 1),
(1772, 112, 'P\'yongyang Special City', 'PYO', 1),
(1773, 113, 'Ch\'ungch\'ong-bukto', 'CO', 1),
(1774, 113, 'Ch\'ungch\'ong-namdo', 'CH', 1),
(1775, 113, 'Cheju-do', 'CD', 1),
(1776, 113, 'Cholla-bukto', 'CB', 1),
(1777, 113, 'Cholla-namdo', 'CN', 1),
(1778, 113, 'Inch\'on-gwangyoksi', 'IG', 1),
(1779, 113, 'Kangwon-do', 'KA', 1),
(1780, 113, 'Kwangju-gwangyoksi', 'KG', 1),
(1781, 113, 'Kyonggi-do', 'KD', 1),
(1782, 113, 'Kyongsang-bukto', 'KB', 1),
(1783, 113, 'Kyongsang-namdo', 'KN', 1),
(1784, 113, 'Pusan-gwangyoksi', 'PG', 1),
(1785, 113, 'Soul-t\'ukpyolsi', 'SO', 1),
(1786, 113, 'Taegu-gwangyoksi', 'TA', 1),
(1787, 113, 'Taejon-gwangyoksi', 'TG', 1),
(1788, 114, 'Al \'Asimah', 'AL', 1),
(1789, 114, 'Al Ahmadi', 'AA', 1),
(1790, 114, 'Al Farwaniyah', 'AF', 1),
(1791, 114, 'Al Jahra\'', 'AJ', 1),
(1792, 114, 'Hawalli', 'HA', 1),
(1793, 115, 'Bishkek', 'GB', 1),
(1794, 115, 'Batken', 'B', 1),
(1795, 115, 'Chu', 'C', 1),
(1796, 115, 'Jalal-Abad', 'J', 1),
(1797, 115, 'Naryn', 'N', 1),
(1798, 115, 'Osh', 'O', 1),
(1799, 115, 'Talas', 'T', 1),
(1800, 115, 'Ysyk-Kol', 'Y', 1),
(1801, 116, 'Vientiane', 'VT', 1),
(1802, 116, 'Attapu', 'AT', 1),
(1803, 116, 'Bokeo', 'BK', 1),
(1804, 116, 'Bolikhamxai', 'BL', 1),
(1805, 116, 'Champasak', 'CH', 1),
(1806, 116, 'Houaphan', 'HO', 1),
(1807, 116, 'Khammouan', 'KH', 1),
(1808, 116, 'Louang Namtha', 'LM', 1),
(1809, 116, 'Louangphabang', 'LP', 1),
(1810, 116, 'Oudomxai', 'OU', 1),
(1811, 116, 'Phongsali', 'PH', 1),
(1812, 116, 'Salavan', 'SL', 1),
(1813, 116, 'Savannakhet', 'SV', 1),
(1814, 116, 'Vientiane', 'VI', 1),
(1815, 116, 'Xaignabouli', 'XA', 1),
(1816, 116, 'Xekong', 'XE', 1),
(1817, 116, 'Xiangkhoang', 'XI', 1),
(1818, 116, 'Xaisomboun', 'XN', 1),
(1852, 119, 'Berea', 'BE', 1),
(1853, 119, 'Butha-Buthe', 'BB', 1),
(1854, 119, 'Leribe', 'LE', 1),
(1855, 119, 'Mafeteng', 'MF', 1),
(1856, 119, 'Maseru', 'MS', 1),
(1857, 119, 'Mohale\'s Hoek', 'MH', 1),
(1858, 119, 'Mokhotlong', 'MK', 1),
(1859, 119, 'Qacha\'s Nek', 'QN', 1),
(1860, 119, 'Quthing', 'QT', 1),
(1861, 119, 'Thaba-Tseka', 'TT', 1),
(1862, 120, 'Bomi', 'BI', 1),
(1863, 120, 'Bong', 'BG', 1),
(1864, 120, 'Grand Bassa', 'GB', 1),
(1865, 120, 'Grand Cape Mount', 'CM', 1),
(1866, 120, 'Grand Gedeh', 'GG', 1),
(1867, 120, 'Grand Kru', 'GK', 1),
(1868, 120, 'Lofa', 'LO', 1),
(1869, 120, 'Margibi', 'MG', 1),
(1870, 120, 'Maryland', 'ML', 1),
(1871, 120, 'Montserrado', 'MS', 1),
(1872, 120, 'Nimba', 'NB', 1),
(1873, 120, 'River Cess', 'RC', 1),
(1874, 120, 'Sinoe', 'SN', 1),
(1875, 121, 'Ajdabiya', 'AJ', 1),
(1876, 121, 'Al \'Aziziyah', 'AZ', 1),
(1877, 121, 'Al Fatih', 'FA', 1),
(1878, 121, 'Al Jabal al Akhdar', 'JA', 1),
(1879, 121, 'Al Jufrah', 'JU', 1),
(1880, 121, 'Al Khums', 'KH', 1),
(1881, 121, 'Al Kufrah', 'KU', 1),
(1882, 121, 'An Nuqat al Khams', 'NK', 1),
(1883, 121, 'Ash Shati\'', 'AS', 1),
(1884, 121, 'Awbari', 'AW', 1),
(1885, 121, 'Az Zawiyah', 'ZA', 1),
(1886, 121, 'Banghazi', 'BA', 1),
(1887, 121, 'Darnah', 'DA', 1),
(1888, 121, 'Ghadamis', 'GD', 1),
(1889, 121, 'Gharyan', 'GY', 1),
(1890, 121, 'Misratah', 'MI', 1),
(1891, 121, 'Murzuq', 'MZ', 1),
(1892, 121, 'Sabha', 'SB', 1),
(1893, 121, 'Sawfajjin', 'SW', 1),
(1894, 121, 'Surt', 'SU', 1),
(1895, 121, 'Tarabulus (Tripoli)', 'TL', 1),
(1896, 121, 'Tarhunah', 'TH', 1),
(1897, 121, 'Tubruq', 'TU', 1),
(1898, 121, 'Yafran', 'YA', 1),
(1899, 121, 'Zlitan', 'ZL', 1),
(1900, 122, 'Vaduz', 'V', 1),
(1901, 122, 'Schaan', 'A', 1),
(1902, 122, 'Balzers', 'B', 1),
(1903, 122, 'Triesen', 'N', 1),
(1904, 122, 'Eschen', 'E', 1),
(1905, 122, 'Mauren', 'M', 1),
(1906, 122, 'Triesenberg', 'T', 1),
(1907, 122, 'Ruggell', 'R', 1),
(1908, 122, 'Gamprin', 'G', 1),
(1909, 122, 'Schellenberg', 'L', 1),
(1910, 122, 'Planken', 'P', 1),
(1911, 123, 'Alytus', 'AL', 1),
(1912, 123, 'Kaunas', 'KA', 1),
(1913, 123, 'Klaipeda', 'KL', 1),
(1914, 123, 'Marijampole', 'MA', 1),
(1915, 123, 'Panevezys', 'PA', 1),
(1916, 123, 'Siauliai', 'SI', 1),
(1917, 123, 'Taurage', 'TA', 1),
(1918, 123, 'Telsiai', 'TE', 1),
(1919, 123, 'Utena', 'UT', 1),
(1920, 123, 'Vilnius', 'VI', 1),
(1921, 124, 'Diekirch', 'DD', 1),
(1922, 124, 'Clervaux', 'DC', 1),
(1923, 124, 'Redange', 'DR', 1),
(1924, 124, 'Vianden', 'DV', 1),
(1925, 124, 'Wiltz', 'DW', 1),
(1926, 124, 'Grevenmacher', 'GG', 1),
(1927, 124, 'Echternach', 'GE', 1),
(1928, 124, 'Remich', 'GR', 1),
(1929, 124, 'Luxembourg', 'LL', 1),
(1930, 124, 'Capellen', 'LC', 1),
(1931, 124, 'Esch-sur-Alzette', 'LE', 1),
(1932, 124, 'Mersch', 'LM', 1),
(1933, 125, 'Our Lady Fatima Parish', 'OLF', 1),
(1934, 125, 'St. Anthony Parish', 'ANT', 1),
(1935, 125, 'St. Lazarus Parish', 'LAZ', 1),
(1936, 125, 'Cathedral Parish', 'CAT', 1),
(1937, 125, 'St. Lawrence Parish', 'LAW', 1),
(1938, 127, 'Antananarivo', 'AN', 1),
(1939, 127, 'Antsiranana', 'AS', 1),
(1940, 127, 'Fianarantsoa', 'FN', 1),
(1941, 127, 'Mahajanga', 'MJ', 1),
(1942, 127, 'Toamasina', 'TM', 1),
(1943, 127, 'Toliara', 'TL', 1),
(1944, 128, 'Balaka', 'BLK', 1),
(1945, 128, 'Blantyre', 'BLT', 1),
(1946, 128, 'Chikwawa', 'CKW', 1),
(1947, 128, 'Chiradzulu', 'CRD', 1),
(1948, 128, 'Chitipa', 'CTP', 1),
(1949, 128, 'Dedza', 'DDZ', 1),
(1950, 128, 'Dowa', 'DWA', 1),
(1951, 128, 'Karonga', 'KRG', 1),
(1952, 128, 'Kasungu', 'KSG', 1),
(1953, 128, 'Likoma', 'LKM', 1),
(1954, 128, 'Lilongwe', 'LLG', 1),
(1955, 128, 'Machinga', 'MCG', 1),
(1956, 128, 'Mangochi', 'MGC', 1),
(1957, 128, 'Mchinji', 'MCH', 1),
(1958, 128, 'Mulanje', 'MLJ', 1),
(1959, 128, 'Mwanza', 'MWZ', 1),
(1960, 128, 'Mzimba', 'MZM', 1),
(1961, 128, 'Ntcheu', 'NTU', 1),
(1962, 128, 'Nkhata Bay', 'NKB', 1),
(1963, 128, 'Nkhotakota', 'NKH', 1),
(1964, 128, 'Nsanje', 'NSJ', 1),
(1965, 128, 'Ntchisi', 'NTI', 1),
(1966, 128, 'Phalombe', 'PHL', 1),
(1967, 128, 'Rumphi', 'RMP', 1),
(1968, 128, 'Salima', 'SLM', 1),
(1969, 128, 'Thyolo', 'THY', 1),
(1970, 128, 'Zomba', 'ZBA', 1),
(1971, 129, 'Johor', 'MY-01', 1),
(1972, 129, 'Kedah', 'MY-02', 1),
(1973, 129, 'Kelantan', 'MY-03', 1),
(1974, 129, 'Labuan', 'MY-15', 1),
(1975, 129, 'Melaka', 'MY-04', 1),
(1976, 129, 'Negeri Sembilan', 'MY-05', 1),
(1977, 129, 'Pahang', 'MY-06', 1),
(1978, 129, 'Perak', 'MY-08', 1),
(1979, 129, 'Perlis', 'MY-09', 1),
(1980, 129, 'Pulau Pinang', 'MY-07', 1),
(1981, 129, 'Sabah', 'MY-12', 1),
(1982, 129, 'Sarawak', 'MY-13', 1),
(1983, 129, 'Selangor', 'MY-10', 1),
(1984, 129, 'Terengganu', 'MY-11', 1),
(1985, 129, 'Kuala Lumpur', 'MY-14', 1),
(4035, 129, 'Putrajaya', 'MY-16', 1),
(1986, 130, 'Thiladhunmathi Uthuru', 'THU', 1),
(1987, 130, 'Thiladhunmathi Dhekunu', 'THD', 1),
(1988, 130, 'Miladhunmadulu Uthuru', 'MLU', 1),
(1989, 130, 'Miladhunmadulu Dhekunu', 'MLD', 1),
(1990, 130, 'Maalhosmadulu Uthuru', 'MAU', 1),
(1991, 130, 'Maalhosmadulu Dhekunu', 'MAD', 1),
(1992, 130, 'Faadhippolhu', 'FAA', 1),
(1993, 130, 'Male Atoll', 'MAA', 1),
(1994, 130, 'Ari Atoll Uthuru', 'AAU', 1),
(1995, 130, 'Ari Atoll Dheknu', 'AAD', 1),
(1996, 130, 'Felidhe Atoll', 'FEA', 1),
(1997, 130, 'Mulaku Atoll', 'MUA', 1),
(1998, 130, 'Nilandhe Atoll Uthuru', 'NAU', 1),
(1999, 130, 'Nilandhe Atoll Dhekunu', 'NAD', 1),
(2000, 130, 'Kolhumadulu', 'KLH', 1),
(2001, 130, 'Hadhdhunmathi', 'HDH', 1),
(2002, 130, 'Huvadhu Atoll Uthuru', 'HAU', 1),
(2003, 130, 'Huvadhu Atoll Dhekunu', 'HAD', 1),
(2004, 130, 'Fua Mulaku', 'FMU', 1),
(2005, 130, 'Addu', 'ADD', 1),
(2006, 131, 'Gao', 'GA', 1),
(2007, 131, 'Kayes', 'KY', 1),
(2008, 131, 'Kidal', 'KD', 1),
(2009, 131, 'Koulikoro', 'KL', 1),
(2010, 131, 'Mopti', 'MP', 1),
(2011, 131, 'Segou', 'SG', 1),
(2012, 131, 'Sikasso', 'SK', 1),
(2013, 131, 'Tombouctou', 'TB', 1),
(2014, 131, 'Bamako Capital District', 'CD', 1),
(2015, 132, 'Attard', 'ATT', 1),
(2016, 132, 'Balzan', 'BAL', 1),
(2017, 132, 'Birgu', 'BGU', 1),
(2018, 132, 'Birkirkara', 'BKK', 1),
(2019, 132, 'Birzebbuga', 'BRZ', 1),
(2020, 132, 'Bormla', 'BOR', 1),
(2021, 132, 'Dingli', 'DIN', 1),
(2022, 132, 'Fgura', 'FGU', 1),
(2023, 132, 'Floriana', 'FLO', 1),
(2024, 132, 'Gudja', 'GDJ', 1),
(2025, 132, 'Gzira', 'GZR', 1),
(2026, 132, 'Gargur', 'GRG', 1),
(2027, 132, 'Gaxaq', 'GXQ', 1),
(2028, 132, 'Hamrun', 'HMR', 1),
(2029, 132, 'Iklin', 'IKL', 1),
(2030, 132, 'Isla', 'ISL', 1),
(2031, 132, 'Kalkara', 'KLK', 1),
(2032, 132, 'Kirkop', 'KRK', 1),
(2033, 132, 'Lija', 'LIJ', 1),
(2034, 132, 'Luqa', 'LUQ', 1),
(2035, 132, 'Marsa', 'MRS', 1),
(2036, 132, 'Marsaskala', 'MKL', 1),
(2037, 132, 'Marsaxlokk', 'MXL', 1),
(2038, 132, 'Mdina', 'MDN', 1),
(2039, 132, 'Melliea', 'MEL', 1),
(2040, 132, 'Mgarr', 'MGR', 1),
(2041, 132, 'Mosta', 'MST', 1),
(2042, 132, 'Mqabba', 'MQA', 1),
(2043, 132, 'Msida', 'MSI', 1),
(2044, 132, 'Mtarfa', 'MTF', 1),
(2045, 132, 'Naxxar', 'NAX', 1),
(2046, 132, 'Paola', 'PAO', 1),
(2047, 132, 'Pembroke', 'PEM', 1),
(2048, 132, 'Pieta', 'PIE', 1),
(2049, 132, 'Qormi', 'QOR', 1),
(2050, 132, 'Qrendi', 'QRE', 1),
(2051, 132, 'Rabat', 'RAB', 1),
(2052, 132, 'Safi', 'SAF', 1),
(2053, 132, 'San Giljan', 'SGI', 1),
(2054, 132, 'Santa Lucija', 'SLU', 1),
(2055, 132, 'San Pawl il-Bahar', 'SPB', 1),
(2056, 132, 'San Gwann', 'SGW', 1),
(2057, 132, 'Santa Venera', 'SVE', 1),
(2058, 132, 'Siggiewi', 'SIG', 1),
(2059, 132, 'Sliema', 'SLM', 1),
(2060, 132, 'Swieqi', 'SWQ', 1),
(2061, 132, 'Ta Xbiex', 'TXB', 1),
(2062, 132, 'Tarxien', 'TRX', 1),
(2063, 132, 'Valletta', 'VLT', 1),
(2064, 132, 'Xgajra', 'XGJ', 1),
(2065, 132, 'Zabbar', 'ZBR', 1),
(2066, 132, 'Zebbug', 'ZBG', 1),
(2067, 132, 'Zejtun', 'ZJT', 1),
(2068, 132, 'Zurrieq', 'ZRQ', 1),
(2069, 132, 'Fontana', 'FNT', 1),
(2070, 132, 'Ghajnsielem', 'GHJ', 1),
(2071, 132, 'Gharb', 'GHR', 1),
(2072, 132, 'Ghasri', 'GHS', 1),
(2073, 132, 'Kercem', 'KRC', 1),
(2074, 132, 'Munxar', 'MUN', 1),
(2075, 132, 'Nadur', 'NAD', 1),
(2076, 132, 'Qala', 'QAL', 1),
(2077, 132, 'Victoria', 'VIC', 1),
(2078, 132, 'San Lawrenz', 'SLA', 1),
(2079, 132, 'Sannat', 'SNT', 1),
(2080, 132, 'Xagra', 'ZAG', 1),
(2081, 132, 'Xewkija', 'XEW', 1),
(2082, 132, 'Zebbug', 'ZEB', 1),
(2083, 133, 'Ailinginae', 'ALG', 1),
(2084, 133, 'Ailinglaplap', 'ALL', 1),
(2085, 133, 'Ailuk', 'ALK', 1),
(2086, 133, 'Arno', 'ARN', 1),
(2087, 133, 'Aur', 'AUR', 1),
(2088, 133, 'Bikar', 'BKR', 1),
(2089, 133, 'Bikini', 'BKN', 1),
(2090, 133, 'Bokak', 'BKK', 1),
(2091, 133, 'Ebon', 'EBN', 1),
(2092, 133, 'Enewetak', 'ENT', 1),
(2093, 133, 'Erikub', 'EKB', 1),
(2094, 133, 'Jabat', 'JBT', 1),
(2095, 133, 'Jaluit', 'JLT', 1),
(2096, 133, 'Jemo', 'JEM', 1),
(2097, 133, 'Kili', 'KIL', 1),
(2098, 133, 'Kwajalein', 'KWJ', 1),
(2099, 133, 'Lae', 'LAE', 1),
(2100, 133, 'Lib', 'LIB', 1),
(2101, 133, 'Likiep', 'LKP', 1),
(2102, 133, 'Majuro', 'MJR', 1),
(2103, 133, 'Maloelap', 'MLP', 1),
(2104, 133, 'Mejit', 'MJT', 1),
(2105, 133, 'Mili', 'MIL', 1),
(2106, 133, 'Namorik', 'NMK', 1),
(2107, 133, 'Namu', 'NAM', 1),
(2108, 133, 'Rongelap', 'RGL', 1),
(2109, 133, 'Rongrik', 'RGK', 1),
(2110, 133, 'Toke', 'TOK', 1),
(2111, 133, 'Ujae', 'UJA', 1),
(2112, 133, 'Ujelang', 'UJL', 1),
(2113, 133, 'Utirik', 'UTK', 1),
(2114, 133, 'Wotho', 'WTH', 1),
(2115, 133, 'Wotje', 'WTJ', 1),
(2116, 135, 'Adrar', 'AD', 1),
(2117, 135, 'Assaba', 'AS', 1),
(2118, 135, 'Brakna', 'BR', 1),
(2119, 135, 'Dakhlet Nouadhibou', 'DN', 1),
(2120, 135, 'Gorgol', 'GO', 1),
(2121, 135, 'Guidimaka', 'GM', 1),
(2122, 135, 'Hodh Ech Chargui', 'HC', 1),
(2123, 135, 'Hodh El Gharbi', 'HG', 1),
(2124, 135, 'Inchiri', 'IN', 1),
(2125, 135, 'Tagant', 'TA', 1),
(2126, 135, 'Tiris Zemmour', 'TZ', 1),
(2127, 135, 'Trarza', 'TR', 1),
(2128, 135, 'Nouakchott', 'NO', 1),
(2129, 136, 'Beau Bassin-Rose Hill', 'BR', 1),
(2130, 136, 'Curepipe', 'CU', 1),
(2131, 136, 'Port Louis', 'PU', 1),
(2132, 136, 'Quatre Bornes', 'QB', 1),
(2133, 136, 'Vacoas-Phoenix', 'VP', 1),
(2134, 136, 'Agalega Islands', 'AG', 1),
(2135, 136, 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', 1),
(2136, 136, 'Rodrigues', 'RO', 1),
(2137, 136, 'Black River', 'BL', 1),
(2138, 136, 'Flacq', 'FL', 1),
(2139, 136, 'Grand Port', 'GP', 1),
(2140, 136, 'Moka', 'MO', 1),
(2141, 136, 'Pamplemousses', 'PA', 1),
(2142, 136, 'Plaines Wilhems', 'PW', 1),
(2143, 136, 'Port Louis', 'PL', 1),
(2144, 136, 'Riviere du Rempart', 'RR', 1),
(2145, 136, 'Savanne', 'SA', 1),
(2146, 138, 'Baja California Norte', 'BN', 1),
(2147, 138, 'Baja California Sur', 'BS', 1),
(2148, 138, 'Campeche', 'CA', 1),
(2149, 138, 'Chiapas', 'CI', 1),
(2150, 138, 'Chihuahua', 'CH', 1),
(2151, 138, 'Coahuila de Zaragoza', 'CZ', 1),
(2152, 138, 'Colima', 'CL', 1),
(2153, 138, 'Distrito Federal', 'DF', 1),
(2154, 138, 'Durango', 'DU', 1),
(2155, 138, 'Guanajuato', 'GA', 1),
(2156, 138, 'Guerrero', 'GE', 1),
(2157, 138, 'Hidalgo', 'HI', 1),
(2158, 138, 'Jalisco', 'JA', 1),
(2159, 138, 'Mexico', 'ME', 1),
(2160, 138, 'Michoacan de Ocampo', 'MI', 1),
(2161, 138, 'Morelos', 'MO', 1),
(2162, 138, 'Nayarit', 'NA', 1),
(2163, 138, 'Nuevo Leon', 'NL', 1),
(2164, 138, 'Oaxaca', 'OA', 1),
(2165, 138, 'Puebla', 'PU', 1),
(2166, 138, 'Queretaro de Arteaga', 'QA', 1),
(2167, 138, 'Quintana Roo', 'QR', 1),
(2168, 138, 'San Luis Potosi', 'SA', 1),
(2169, 138, 'Sinaloa', 'SI', 1),
(2170, 138, 'Sonora', 'SO', 1),
(2171, 138, 'Tabasco', 'TB', 1),
(2172, 138, 'Tamaulipas', 'TM', 1),
(2173, 138, 'Tlaxcala', 'TL', 1),
(2174, 138, 'Veracruz-Llave', 'VE', 1),
(2175, 138, 'Yucatan', 'YU', 1),
(2176, 138, 'Zacatecas', 'ZA', 1),
(2177, 139, 'Chuuk', 'C', 1),
(2178, 139, 'Kosrae', 'K', 1),
(2179, 139, 'Pohnpei', 'P', 1),
(2180, 139, 'Yap', 'Y', 1),
(2181, 140, 'Gagauzia', 'GA', 1),
(2182, 140, 'Chisinau', 'CU', 1),
(2183, 140, 'Balti', 'BA', 1),
(2184, 140, 'Cahul', 'CA', 1),
(2185, 140, 'Edinet', 'ED', 1),
(2186, 140, 'Lapusna', 'LA', 1),
(2187, 140, 'Orhei', 'OR', 1),
(2188, 140, 'Soroca', 'SO', 1),
(2189, 140, 'Tighina', 'TI', 1),
(2190, 140, 'Ungheni', 'UN', 1),
(2191, 140, 'St‚nga Nistrului', 'SN', 1),
(2192, 141, 'Fontvieille', 'FV', 1),
(2193, 141, 'La Condamine', 'LC', 1),
(2194, 141, 'Monaco-Ville', 'MV', 1),
(2195, 141, 'Monte-Carlo', 'MC', 1),
(2196, 142, 'Ulanbaatar', '1', 1),
(2197, 142, 'Orhon', '035', 1),
(2198, 142, 'Darhan uul', '037', 1),
(2199, 142, 'Hentiy', '039', 1),
(2200, 142, 'Hovsgol', '041', 1),
(2201, 142, 'Hovd', '043', 1),
(2202, 142, 'Uvs', '046', 1),
(2203, 142, 'Tov', '047', 1),
(2204, 142, 'Selenge', '049', 1),
(2205, 142, 'Suhbaatar', '051', 1),
(2206, 142, 'Omnogovi', '053', 1),
(2207, 142, 'Ovorhangay', '055', 1),
(2208, 142, 'Dzavhan', '057', 1),
(2209, 142, 'DundgovL', '059', 1),
(2210, 142, 'Dornod', '061', 1),
(2211, 142, 'Dornogov', '063', 1),
(2212, 142, 'Govi-Sumber', '064', 1),
(2213, 142, 'Govi-Altay', '065', 1),
(2214, 142, 'Bulgan', '067', 1),
(2215, 142, 'Bayanhongor', '069', 1),
(2216, 142, 'Bayan-Olgiy', '071', 1),
(2217, 142, 'Arhangay', '073', 1),
(2218, 143, 'Saint Anthony', 'A', 1),
(2219, 143, 'Saint Georges', 'G', 1),
(2220, 143, 'Saint Peter', 'P', 1),
(2221, 144, 'Agadir', 'AGD', 1),
(2222, 144, 'Al Hoceima', 'HOC', 1),
(2223, 144, 'Azilal', 'AZI', 1),
(2224, 144, 'Beni Mellal', 'BME', 1),
(2225, 144, 'Ben Slimane', 'BSL', 1),
(2226, 144, 'Boulemane', 'BLM', 1),
(2227, 144, 'Casablanca', 'CBL', 1),
(2228, 144, 'Chaouen', 'CHA', 1),
(2229, 144, 'El Jadida', 'EJA', 1),
(2230, 144, 'El Kelaa des Sraghna', 'EKS', 1),
(2231, 144, 'Er Rachidia', 'ERA', 1),
(2232, 144, 'Essaouira', 'ESS', 1),
(2233, 144, 'Fes', 'FES', 1),
(2234, 144, 'Figuig', 'FIG', 1),
(2235, 144, 'Guelmim', 'GLM', 1),
(2236, 144, 'Ifrane', 'IFR', 1),
(2237, 144, 'Kenitra', 'KEN', 1),
(2238, 144, 'Khemisset', 'KHM', 1),
(2239, 144, 'Khenifra', 'KHN', 1),
(2240, 144, 'Khouribga', 'KHO', 1),
(2241, 144, 'Laayoune', 'LYN', 1),
(2242, 144, 'Larache', 'LAR', 1),
(2243, 144, 'Marrakech', 'MRK', 1),
(2244, 144, 'Meknes', 'MKN', 1),
(2245, 144, 'Nador', 'NAD', 1),
(2246, 144, 'Ouarzazate', 'ORZ', 1),
(2247, 144, 'Oujda', 'OUJ', 1),
(2248, 144, 'Rabat-Sale', 'RSA', 1),
(2249, 144, 'Safi', 'SAF', 1),
(2250, 144, 'Settat', 'SET', 1),
(2251, 144, 'Sidi Kacem', 'SKA', 1),
(2252, 144, 'Tangier', 'TGR', 1),
(2253, 144, 'Tan-Tan', 'TAN', 1),
(2254, 144, 'Taounate', 'TAO', 1),
(2255, 144, 'Taroudannt', 'TRD', 1),
(2256, 144, 'Tata', 'TAT', 1),
(2257, 144, 'Taza', 'TAZ', 1),
(2258, 144, 'Tetouan', 'TET', 1),
(2259, 144, 'Tiznit', 'TIZ', 1),
(2260, 144, 'Ad Dakhla', 'ADK', 1),
(2261, 144, 'Boujdour', 'BJD', 1),
(2262, 144, 'Es Smara', 'ESM', 1),
(2263, 145, 'Cabo Delgado', 'CD', 1),
(2264, 145, 'Gaza', 'GZ', 1),
(2265, 145, 'Inhambane', 'IN', 1),
(2266, 145, 'Manica', 'MN', 1),
(2267, 145, 'Maputo (city)', 'MC', 1),
(2268, 145, 'Maputo', 'MP', 1),
(2269, 145, 'Nampula', 'NA', 1),
(2270, 145, 'Niassa', 'NI', 1),
(2271, 145, 'Sofala', 'SO', 1),
(2272, 145, 'Tete', 'TE', 1),
(2273, 145, 'Zambezia', 'ZA', 1),
(2274, 146, 'Ayeyarwady', 'AY', 1),
(2275, 146, 'Bago', 'BG', 1),
(2276, 146, 'Magway', 'MG', 1),
(2277, 146, 'Mandalay', 'MD', 1),
(2278, 146, 'Sagaing', 'SG', 1),
(2279, 146, 'Tanintharyi', 'TN', 1),
(2280, 146, 'Yangon', 'YG', 1),
(2281, 146, 'Chin State', 'CH', 1),
(2282, 146, 'Kachin State', 'KC', 1),
(2283, 146, 'Kayah State', 'KH', 1),
(2284, 146, 'Kayin State', 'KN', 1),
(2285, 146, 'Mon State', 'MN', 1),
(2286, 146, 'Rakhine State', 'RK', 1),
(2287, 146, 'Shan State', 'SH', 1),
(2288, 147, 'Caprivi', 'CA', 1),
(2289, 147, 'Erongo', 'ER', 1),
(2290, 147, 'Hardap', 'HA', 1),
(2291, 147, 'Karas', 'KR', 1),
(2292, 147, 'Kavango', 'KV', 1),
(2293, 147, 'Khomas', 'KH', 1),
(2294, 147, 'Kunene', 'KU', 1),
(2295, 147, 'Ohangwena', 'OW', 1),
(2296, 147, 'Omaheke', 'OK', 1),
(2297, 147, 'Omusati', 'OT', 1),
(2298, 147, 'Oshana', 'ON', 1),
(2299, 147, 'Oshikoto', 'OO', 1),
(2300, 147, 'Otjozondjupa', 'OJ', 1),
(2301, 148, 'Aiwo', 'AO', 1),
(2302, 148, 'Anabar', 'AA', 1),
(2303, 148, 'Anetan', 'AT', 1),
(2304, 148, 'Anibare', 'AI', 1),
(2305, 148, 'Baiti', 'BA', 1),
(2306, 148, 'Boe', 'BO', 1),
(2307, 148, 'Buada', 'BU', 1),
(2308, 148, 'Denigomodu', 'DE', 1),
(2309, 148, 'Ewa', 'EW', 1),
(2310, 148, 'Ijuw', 'IJ', 1),
(2311, 148, 'Meneng', 'ME', 1),
(2312, 148, 'Nibok', 'NI', 1),
(2313, 148, 'Uaboe', 'UA', 1),
(2314, 148, 'Yaren', 'YA', 1),
(2315, 149, 'Bagmati', 'BA', 1),
(2316, 149, 'Bheri', 'BH', 1),
(2317, 149, 'Dhawalagiri', 'DH', 1),
(2318, 149, 'Gandaki', 'GA', 1),
(2319, 149, 'Janakpur', 'JA', 1),
(2320, 149, 'Karnali', 'KA', 1),
(2321, 149, 'Kosi', 'KO', 1),
(2322, 149, 'Lumbini', 'LU', 1),
(2323, 149, 'Mahakali', 'MA', 1),
(2324, 149, 'Mechi', 'ME', 1),
(2325, 149, 'Narayani', 'NA', 1),
(2326, 149, 'Rapti', 'RA', 1),
(2327, 149, 'Sagarmatha', 'SA', 1),
(2328, 149, 'Seti', 'SE', 1),
(2329, 150, 'Drenthe', 'DR', 1),
(2330, 150, 'Flevoland', 'FL', 1),
(2331, 150, 'Friesland', 'FR', 1),
(2332, 150, 'Gelderland', 'GE', 1),
(2333, 150, 'Groningen', 'GR', 1),
(2334, 150, 'Limburg', 'LI', 1),
(2335, 150, 'Noord-Brabant', 'NB', 1),
(2336, 150, 'Noord-Holland', 'NH', 1),
(2337, 150, 'Overijssel', 'OV', 1),
(2338, 150, 'Utrecht', 'UT', 1),
(2339, 150, 'Zeeland', 'ZE', 1),
(2340, 150, 'Zuid-Holland', 'ZH', 1),
(2341, 152, 'Iles Loyaute', 'L', 1),
(2342, 152, 'Nord', 'N', 1),
(2343, 152, 'Sud', 'S', 1),
(2344, 153, 'Auckland', 'AUK', 1),
(2345, 153, 'Bay of Plenty', 'BOP', 1),
(2346, 153, 'Canterbury', 'CAN', 1),
(2347, 153, 'Coromandel', 'COR', 1),
(2348, 153, 'Gisborne', 'GIS', 1),
(2349, 153, 'Fiordland', 'FIO', 1),
(2350, 153, 'Hawke\'s Bay', 'HKB', 1),
(2351, 153, 'Marlborough', 'MBH', 1),
(2352, 153, 'Manawatu-Wanganui', 'MWT', 1),
(2353, 153, 'Mt Cook-Mackenzie', 'MCM', 1),
(2354, 153, 'Nelson', 'NSN', 1),
(2355, 153, 'Northland', 'NTL', 1),
(2356, 153, 'Otago', 'OTA', 1),
(2357, 153, 'Southland', 'STL', 1),
(2358, 153, 'Taranaki', 'TKI', 1),
(2359, 153, 'Wellington', 'WGN', 1),
(2360, 153, 'Waikato', 'WKO', 1),
(2361, 153, 'Wairarapa', 'WAI', 1),
(2362, 153, 'West Coast', 'WTC', 1),
(2363, 154, 'Atlantico Norte', 'AN', 1),
(2364, 154, 'Atlantico Sur', 'AS', 1),
(2365, 154, 'Boaco', 'BO', 1),
(2366, 154, 'Carazo', 'CA', 1),
(2367, 154, 'Chinandega', 'CI', 1),
(2368, 154, 'Chontales', 'CO', 1),
(2369, 154, 'Esteli', 'ES', 1),
(2370, 154, 'Granada', 'GR', 1),
(2371, 154, 'Jinotega', 'JI', 1),
(2372, 154, 'Leon', 'LE', 1),
(2373, 154, 'Madriz', 'MD', 1),
(2374, 154, 'Managua', 'MN', 1),
(2375, 154, 'Masaya', 'MS', 1),
(2376, 154, 'Matagalpa', 'MT', 1),
(2377, 154, 'Nuevo Segovia', 'NS', 1),
(2378, 154, 'Rio San Juan', 'RS', 1),
(2379, 154, 'Rivas', 'RI', 1),
(2380, 155, 'Agadez', 'AG', 1),
(2381, 155, 'Diffa', 'DF', 1),
(2382, 155, 'Dosso', 'DS', 1),
(2383, 155, 'Maradi', 'MA', 1),
(2384, 155, 'Niamey', 'NM', 1),
(2385, 155, 'Tahoua', 'TH', 1),
(2386, 155, 'Tillaberi', 'TL', 1),
(2387, 155, 'Zinder', 'ZD', 1),
(2388, 156, 'Abia', 'AB', 1),
(2389, 156, 'Abuja Federal Capital Territory', 'CT', 1),
(2390, 156, 'Adamawa', 'AD', 1),
(2391, 156, 'Akwa Ibom', 'AK', 1),
(2392, 156, 'Anambra', 'AN', 1),
(2393, 156, 'Bauchi', 'BC', 1),
(2394, 156, 'Bayelsa', 'BY', 1),
(2395, 156, 'Benue', 'BN', 1),
(2396, 156, 'Borno', 'BO', 1),
(2397, 156, 'Cross River', 'CR', 1),
(2398, 156, 'Delta', 'DE', 1),
(2399, 156, 'Ebonyi', 'EB', 1),
(2400, 156, 'Edo', 'ED', 1),
(2401, 156, 'Ekiti', 'EK', 1),
(2402, 156, 'Enugu', 'EN', 1),
(2403, 156, 'Gombe', 'GO', 1),
(2404, 156, 'Imo', 'IM', 1),
(2405, 156, 'Jigawa', 'JI', 1),
(2406, 156, 'Kaduna', 'KD', 1),
(2407, 156, 'Kano', 'KN', 1),
(2408, 156, 'Katsina', 'KT', 1),
(2409, 156, 'Kebbi', 'KE', 1),
(2410, 156, 'Kogi', 'KO', 1),
(2411, 156, 'Kwara', 'KW', 1),
(2412, 156, 'Lagos', 'LA', 1),
(2413, 156, 'Nassarawa', 'NA', 1),
(2414, 156, 'Niger', 'NI', 1),
(2415, 156, 'Ogun', 'OG', 1),
(2416, 156, 'Ondo', 'ONG', 1),
(2417, 156, 'Osun', 'OS', 1),
(2418, 156, 'Oyo', 'OY', 1),
(2419, 156, 'Plateau', 'PL', 1),
(2420, 156, 'Rivers', 'RI', 1),
(2421, 156, 'Sokoto', 'SO', 1),
(2422, 156, 'Taraba', 'TA', 1),
(2423, 156, 'Yobe', 'YO', 1),
(2424, 156, 'Zamfara', 'ZA', 1),
(2425, 159, 'Northern Islands', 'N', 1),
(2426, 159, 'Rota', 'R', 1),
(2427, 159, 'Saipan', 'S', 1),
(2428, 159, 'Tinian', 'T', 1),
(2429, 160, 'Akershus', 'AK', 1),
(2430, 160, 'Aust-Agder', 'AA', 1),
(2431, 160, 'Buskerud', 'BU', 1),
(2432, 160, 'Finnmark', 'FM', 1),
(2433, 160, 'Hedmark', 'HM', 1),
(2434, 160, 'Hordaland', 'HL', 1),
(2435, 160, 'More og Romdal', 'MR', 1),
(2436, 160, 'Nord-Trondelag', 'NT', 1),
(2437, 160, 'Nordland', 'NL', 1),
(2438, 160, 'Ostfold', 'OF', 1),
(2439, 160, 'Oppland', 'OP', 1),
(2440, 160, 'Oslo', 'OL', 1),
(2441, 160, 'Rogaland', 'RL', 1),
(2442, 160, 'Sor-Trondelag', 'ST', 1),
(2443, 160, 'Sogn og Fjordane', 'SJ', 1),
(2444, 160, 'Svalbard', 'SV', 1),
(2445, 160, 'Telemark', 'TM', 1),
(2446, 160, 'Troms', 'TR', 1),
(2447, 160, 'Vest-Agder', 'VA', 1),
(2448, 160, 'Vestfold', 'VF', 1),
(2449, 161, 'Ad Dakhiliyah', 'DA', 1),
(2450, 161, 'Al Batinah', 'BA', 1),
(2451, 161, 'Al Wusta', 'WU', 1),
(2452, 161, 'Ash Sharqiyah', 'SH', 1),
(2453, 161, 'Az Zahirah', 'ZA', 1),
(2454, 161, 'Masqat', 'MA', 1),
(2455, 161, 'Musandam', 'MU', 1),
(2456, 161, 'Zufar', 'ZU', 1),
(2457, 162, 'Balochistan', 'B', 1),
(2458, 162, 'Federally Administered Tribal Areas', 'T', 1),
(2459, 162, 'Islamabad Capital Territory', 'I', 1),
(2460, 162, 'North-West Frontier', 'N', 1),
(2461, 162, 'Punjab', 'P', 1),
(2462, 162, 'Sindh', 'S', 1),
(2463, 163, 'Aimeliik', 'AM', 1),
(2464, 163, 'Airai', 'AR', 1),
(2465, 163, 'Angaur', 'AN', 1),
(2466, 163, 'Hatohobei', 'HA', 1),
(2467, 163, 'Kayangel', 'KA', 1),
(2468, 163, 'Koror', 'KO', 1),
(2469, 163, 'Melekeok', 'ME', 1),
(2470, 163, 'Ngaraard', 'NA', 1),
(2471, 163, 'Ngarchelong', 'NG', 1),
(2472, 163, 'Ngardmau', 'ND', 1),
(2473, 163, 'Ngatpang', 'NT', 1),
(2474, 163, 'Ngchesar', 'NC', 1),
(2475, 163, 'Ngeremlengui', 'NR', 1),
(2476, 163, 'Ngiwal', 'NW', 1),
(2477, 163, 'Peleliu', 'PE', 1),
(2478, 163, 'Sonsorol', 'SO', 1),
(2479, 164, 'Bocas del Toro', 'BT', 1),
(2480, 164, 'Chiriqui', 'CH', 1),
(2481, 164, 'Cocle', 'CC', 1),
(2482, 164, 'Colon', 'CL', 1),
(2483, 164, 'Darien', 'DA', 1),
(2484, 164, 'Herrera', 'HE', 1),
(2485, 164, 'Los Santos', 'LS', 1),
(2486, 164, 'Panama', 'PA', 1),
(2487, 164, 'San Blas', 'SB', 1),
(2488, 164, 'Veraguas', 'VG', 1),
(2489, 165, 'Bougainville', 'BV', 1),
(2490, 165, 'Central', 'CE', 1),
(2491, 165, 'Chimbu', 'CH', 1),
(2492, 165, 'Eastern Highlands', 'EH', 1),
(2493, 165, 'East New Britain', 'EB', 1),
(2494, 165, 'East Sepik', 'ES', 1),
(2495, 165, 'Enga', 'EN', 1),
(2496, 165, 'Gulf', 'GU', 1),
(2497, 165, 'Madang', 'MD', 1),
(2498, 165, 'Manus', 'MN', 1),
(2499, 165, 'Milne Bay', 'MB', 1),
(2500, 165, 'Morobe', 'MR', 1),
(2501, 165, 'National Capital', 'NC', 1),
(2502, 165, 'New Ireland', 'NI', 1),
(2503, 165, 'Northern', 'NO', 1),
(2504, 165, 'Sandaun', 'SA', 1),
(2505, 165, 'Southern Highlands', 'SH', 1),
(2506, 165, 'Western', 'WE', 1),
(2507, 165, 'Western Highlands', 'WH', 1),
(2508, 165, 'West New Britain', 'WB', 1),
(2509, 166, 'Alto Paraguay', 'AG', 1),
(2510, 166, 'Alto Parana', 'AN', 1),
(2511, 166, 'Amambay', 'AM', 1),
(2512, 166, 'Asuncion', 'AS', 1),
(2513, 166, 'Boqueron', 'BO', 1),
(2514, 166, 'Caaguazu', 'CG', 1),
(2515, 166, 'Caazapa', 'CZ', 1),
(2516, 166, 'Canindeyu', 'CN', 1),
(2517, 166, 'Central', 'CE', 1),
(2518, 166, 'Concepcion', 'CC', 1),
(2519, 166, 'Cordillera', 'CD', 1),
(2520, 166, 'Guaira', 'GU', 1),
(2521, 166, 'Itapua', 'IT', 1),
(2522, 166, 'Misiones', 'MI', 1),
(2523, 166, 'Neembucu', 'NE', 1),
(2524, 166, 'Paraguari', 'PA', 1),
(2525, 166, 'Presidente Hayes', 'PH', 1),
(2526, 166, 'San Pedro', 'SP', 1),
(2527, 167, 'Amazonas', 'AM', 1),
(2528, 167, 'Ancash', 'AN', 1),
(2529, 167, 'Apurimac', 'AP', 1),
(2530, 167, 'Arequipa', 'AR', 1),
(2531, 167, 'Ayacucho', 'AY', 1),
(2532, 167, 'Cajamarca', 'CJ', 1),
(2533, 167, 'Callao', 'CL', 1),
(2534, 167, 'Cusco', 'CU', 1),
(2535, 167, 'Huancavelica', 'HV', 1),
(2536, 167, 'Huanuco', 'HO', 1),
(2537, 167, 'Ica', 'IC', 1),
(2538, 167, 'Junin', 'JU', 1),
(2539, 167, 'La Libertad', 'LD', 1),
(2540, 167, 'Lambayeque', 'LY', 1),
(2541, 167, 'Lima', 'LI', 1),
(2542, 167, 'Loreto', 'LO', 1),
(2543, 167, 'Madre de Dios', 'MD', 1),
(2544, 167, 'Moquegua', 'MO', 1),
(2545, 167, 'Pasco', 'PA', 1),
(2546, 167, 'Piura', 'PI', 1),
(2547, 167, 'Puno', 'PU', 1),
(2548, 167, 'San Martin', 'SM', 1),
(2549, 167, 'Tacna', 'TA', 1),
(2550, 167, 'Tumbes', 'TU', 1),
(2551, 167, 'Ucayali', 'UC', 1),
(2552, 168, 'Abra', 'ABR', 1),
(2553, 168, 'Agusan del Norte', 'ANO', 1),
(2554, 168, 'Agusan del Sur', 'ASU', 1),
(2555, 168, 'Aklan', 'AKL', 1),
(2556, 168, 'Albay', 'ALB', 1),
(2557, 168, 'Antique', 'ANT', 1),
(2558, 168, 'Apayao', 'APY', 1),
(2559, 168, 'Aurora', 'AUR', 1),
(2560, 168, 'Basilan', 'BAS', 1),
(2561, 168, 'Bataan', 'BTA', 1),
(2562, 168, 'Batanes', 'BTE', 1),
(2563, 168, 'Batangas', 'BTG', 1),
(2564, 168, 'Biliran', 'BLR', 1),
(2565, 168, 'Benguet', 'BEN', 1),
(2566, 168, 'Bohol', 'BOL', 1),
(2567, 168, 'Bukidnon', 'BUK', 1),
(2568, 168, 'Bulacan', 'BUL', 1),
(2569, 168, 'Cagayan', 'CAG', 1),
(2570, 168, 'Camarines Norte', 'CNO', 1),
(2571, 168, 'Camarines Sur', 'CSU', 1),
(2572, 168, 'Camiguin', 'CAM', 1),
(2573, 168, 'Capiz', 'CAP', 1),
(2574, 168, 'Catanduanes', 'CAT', 1),
(2575, 168, 'Cavite', 'CAV', 1),
(2576, 168, 'Cebu', 'CEB', 1),
(2577, 168, 'Compostela', 'CMP', 1),
(2578, 168, 'Davao del Norte', 'DNO', 1),
(2579, 168, 'Davao del Sur', 'DSU', 1),
(2580, 168, 'Davao Oriental', 'DOR', 1),
(2581, 168, 'Eastern Samar', 'ESA', 1),
(2582, 168, 'Guimaras', 'GUI', 1),
(2583, 168, 'Ifugao', 'IFU', 1),
(2584, 168, 'Ilocos Norte', 'INO', 1),
(2585, 168, 'Ilocos Sur', 'ISU', 1),
(2586, 168, 'Iloilo', 'ILO', 1),
(2587, 168, 'Isabela', 'ISA', 1),
(2588, 168, 'Kalinga', 'KAL', 1),
(2589, 168, 'Laguna', 'LAG', 1),
(2590, 168, 'Lanao del Norte', 'LNO', 1),
(2591, 168, 'Lanao del Sur', 'LSU', 1),
(2592, 168, 'La Union', 'UNI', 1),
(2593, 168, 'Leyte', 'LEY', 1),
(2594, 168, 'Maguindanao', 'MAG', 1),
(2595, 168, 'Marinduque', 'MRN', 1),
(2596, 168, 'Masbate', 'MSB', 1),
(2597, 168, 'Mindoro Occidental', 'MIC', 1),
(2598, 168, 'Mindoro Oriental', 'MIR', 1),
(2599, 168, 'Misamis Occidental', 'MSC', 1),
(2600, 168, 'Misamis Oriental', 'MOR', 1),
(2601, 168, 'Mountain', 'MOP', 1),
(2602, 168, 'Negros Occidental', 'NOC', 1),
(2603, 168, 'Negros Oriental', 'NOR', 1),
(2604, 168, 'North Cotabato', 'NCT', 1),
(2605, 168, 'Northern Samar', 'NSM', 1),
(2606, 168, 'Nueva Ecija', 'NEC', 1),
(2607, 168, 'Nueva Vizcaya', 'NVZ', 1),
(2608, 168, 'Palawan', 'PLW', 1),
(2609, 168, 'Pampanga', 'PMP', 1),
(2610, 168, 'Pangasinan', 'PNG', 1),
(2611, 168, 'Quezon', 'QZN', 1),
(2612, 168, 'Quirino', 'QRN', 1),
(2613, 168, 'Rizal', 'RIZ', 1),
(2614, 168, 'Romblon', 'ROM', 1),
(2615, 168, 'Samar', 'SMR', 1),
(2616, 168, 'Sarangani', 'SRG', 1),
(2617, 168, 'Siquijor', 'SQJ', 1),
(2618, 168, 'Sorsogon', 'SRS', 1),
(2619, 168, 'South Cotabato', 'SCO', 1),
(2620, 168, 'Southern Leyte', 'SLE', 1),
(2621, 168, 'Sultan Kudarat', 'SKU', 1),
(2622, 168, 'Sulu', 'SLU', 1),
(2623, 168, 'Surigao del Norte', 'SNO', 1),
(2624, 168, 'Surigao del Sur', 'SSU', 1),
(2625, 168, 'Tarlac', 'TAR', 1),
(2626, 168, 'Tawi-Tawi', 'TAW', 1),
(2627, 168, 'Zambales', 'ZBL', 1),
(2628, 168, 'Zamboanga del Norte', 'ZNO', 1),
(2629, 168, 'Zamboanga del Sur', 'ZSU', 1),
(2630, 168, 'Zamboanga Sibugay', 'ZSI', 1),
(2631, 170, 'Dolnoslaskie', 'DO', 1),
(2632, 170, 'Kujawsko-Pomorskie', 'KP', 1),
(2633, 170, 'Lodzkie', 'LO', 1),
(2634, 170, 'Lubelskie', 'LL', 1),
(2635, 170, 'Lubuskie', 'LU', 1),
(2636, 170, 'Malopolskie', 'ML', 1),
(2637, 170, 'Mazowieckie', 'MZ', 1),
(2638, 170, 'Opolskie', 'OP', 1),
(2639, 170, 'Podkarpackie', 'PP', 1),
(2640, 170, 'Podlaskie', 'PL', 1),
(2641, 170, 'Pomorskie', 'PM', 1),
(2642, 170, 'Slaskie', 'SL', 1),
(2643, 170, 'Swietokrzyskie', 'SW', 1),
(2644, 170, 'Warminsko-Mazurskie', 'WM', 1),
(2645, 170, 'Wielkopolskie', 'WP', 1),
(2646, 170, 'Zachodniopomorskie', 'ZA', 1),
(2647, 198, 'Saint Pierre', 'P', 1),
(2648, 198, 'Miquelon', 'M', 1),
(2649, 171, 'A&ccedil;ores', 'AC', 1),
(2650, 171, 'Aveiro', 'AV', 1),
(2651, 171, 'Beja', 'BE', 1),
(2652, 171, 'Braga', 'BR', 1),
(2653, 171, 'Bragan&ccedil;a', 'BA', 1),
(2654, 171, 'Castelo Branco', 'CB', 1),
(2655, 171, 'Coimbra', 'CO', 1),
(2656, 171, '&Eacute;vora', 'EV', 1),
(2657, 171, 'Faro', 'FA', 1),
(2658, 171, 'Guarda', 'GU', 1),
(2659, 171, 'Leiria', 'LE', 1),
(2660, 171, 'Lisboa', 'LI', 1),
(2661, 171, 'Madeira', 'ME', 1),
(2662, 171, 'Portalegre', 'PO', 1),
(2663, 171, 'Porto', 'PR', 1),
(2664, 171, 'Santar&eacute;m', 'SA', 1),
(2665, 171, 'Set&uacute;bal', 'SE', 1),
(2666, 171, 'Viana do Castelo', 'VC', 1),
(2667, 171, 'Vila Real', 'VR', 1),
(2668, 171, 'Viseu', 'VI', 1),
(2669, 173, 'Ad Dawhah', 'DW', 1),
(2670, 173, 'Al Ghuwayriyah', 'GW', 1),
(2671, 173, 'Al Jumayliyah', 'JM', 1),
(2672, 173, 'Al Khawr', 'KR', 1),
(2673, 173, 'Al Wakrah', 'WK', 1),
(2674, 173, 'Ar Rayyan', 'RN', 1),
(2675, 173, 'Jarayan al Batinah', 'JB', 1),
(2676, 173, 'Madinat ash Shamal', 'MS', 1),
(2677, 173, 'Umm Sa\'id', 'UD', 1),
(2678, 173, 'Umm Salal', 'UL', 1),
(2679, 175, 'Alba', 'AB', 1),
(2680, 175, 'Arad', 'AR', 1),
(2681, 175, 'Arges', 'AG', 1),
(2682, 175, 'Bacau', 'BC', 1),
(2683, 175, 'Bihor', 'BH', 1),
(2684, 175, 'Bistrita-Nasaud', 'BN', 1),
(2685, 175, 'Botosani', 'BT', 1),
(2686, 175, 'Brasov', 'BV', 1),
(2687, 175, 'Braila', 'BR', 1),
(2688, 175, 'Bucuresti', 'B', 1),
(2689, 175, 'Buzau', 'BZ', 1),
(2690, 175, 'Caras-Severin', 'CS', 1),
(2691, 175, 'Calarasi', 'CL', 1),
(2692, 175, 'Cluj', 'CJ', 1),
(2693, 175, 'Constanta', 'CT', 1),
(2694, 175, 'Covasna', 'CV', 1),
(2695, 175, 'Dimbovita', 'DB', 1),
(2696, 175, 'Dolj', 'DJ', 1),
(2697, 175, 'Galati', 'GL', 1),
(2698, 175, 'Giurgiu', 'GR', 1),
(2699, 175, 'Gorj', 'GJ', 1),
(2700, 175, 'Harghita', 'HR', 1),
(2701, 175, 'Hunedoara', 'HD', 1),
(2702, 175, 'Ialomita', 'IL', 1),
(2703, 175, 'Iasi', 'IS', 1),
(2704, 175, 'Ilfov', 'IF', 1),
(2705, 175, 'Maramures', 'MM', 1),
(2706, 175, 'Mehedinti', 'MH', 1),
(2707, 175, 'Mures', 'MS', 1),
(2708, 175, 'Neamt', 'NT', 1),
(2709, 175, 'Olt', 'OT', 1),
(2710, 175, 'Prahova', 'PH', 1),
(2711, 175, 'Satu-Mare', 'SM', 1),
(2712, 175, 'Salaj', 'SJ', 1),
(2713, 175, 'Sibiu', 'SB', 1),
(2714, 175, 'Suceava', 'SV', 1),
(2715, 175, 'Teleorman', 'TR', 1),
(2716, 175, 'Timis', 'TM', 1),
(2717, 175, 'Tulcea', 'TL', 1),
(2718, 175, 'Vaslui', 'VS', 1),
(2719, 175, 'Valcea', 'VL', 1),
(2720, 175, 'Vrancea', 'VN', 1),
(2721, 176, 'Abakan', 'AB', 1),
(2722, 176, 'Aginskoye', 'AG', 1),
(2723, 176, 'Anadyr', 'AN', 1),
(2724, 176, 'Arkahangelsk', 'AR', 1),
(2725, 176, 'Astrakhan', 'AS', 1),
(2726, 176, 'Barnaul', 'BA', 1),
(2727, 176, 'Belgorod', 'BE', 1),
(2728, 176, 'Birobidzhan', 'BI', 1),
(2729, 176, 'Blagoveshchensk', 'BL', 1),
(2730, 176, 'Bryansk', 'BR', 1),
(2731, 176, 'Cheboksary', 'CH', 1),
(2732, 176, 'Chelyabinsk', 'CL', 1),
(2733, 176, 'Cherkessk', 'CR', 1),
(2734, 176, 'Chita', 'CI', 1),
(2735, 176, 'Dudinka', 'DU', 1),
(2736, 176, 'Elista', 'EL', 1),
(2738, 176, 'Gorno-Altaysk', 'GA', 1),
(2739, 176, 'Groznyy', 'GR', 1),
(2740, 176, 'Irkutsk', 'IR', 1),
(2741, 176, 'Ivanovo', 'IV', 1),
(2742, 176, 'Izhevsk', 'IZ', 1),
(2743, 176, 'Kalinigrad', 'KA', 1),
(2744, 176, 'Kaluga', 'KL', 1),
(2745, 176, 'Kasnodar', 'KS', 1),
(2746, 176, 'Kazan', 'KZ', 1),
(2747, 176, 'Kemerovo', 'KE', 1),
(2748, 176, 'Khabarovsk', 'KH', 1),
(2749, 176, 'Khanty-Mansiysk', 'KM', 1),
(2750, 176, 'Kostroma', 'KO', 1),
(2751, 176, 'Krasnodar', 'KR', 1),
(2752, 176, 'Krasnoyarsk', 'KN', 1),
(2753, 176, 'Kudymkar', 'KU', 1),
(2754, 176, 'Kurgan', 'KG', 1),
(2755, 176, 'Kursk', 'KK', 1),
(2756, 176, 'Kyzyl', 'KY', 1),
(2757, 176, 'Lipetsk', 'LI', 1),
(2758, 176, 'Magadan', 'MA', 1),
(2759, 176, 'Makhachkala', 'MK', 1),
(2760, 176, 'Maykop', 'MY', 1),
(2761, 176, 'Moscow', 'MO', 1),
(2762, 176, 'Murmansk', 'MU', 1),
(2763, 176, 'Nalchik', 'NA', 1),
(2764, 176, 'Naryan Mar', 'NR', 1),
(2765, 176, 'Nazran', 'NZ', 1),
(2766, 176, 'Nizhniy Novgorod', 'NI', 1),
(2767, 176, 'Novgorod', 'NO', 1),
(2768, 176, 'Novosibirsk', 'NV', 1),
(2769, 176, 'Omsk', 'OM', 1),
(2770, 176, 'Orel', 'OR', 1),
(2771, 176, 'Orenburg', 'OE', 1),
(2772, 176, 'Palana', 'PA', 1),
(2773, 176, 'Penza', 'PE', 1),
(2774, 176, 'Perm', 'PR', 1),
(2775, 176, 'Petropavlovsk-Kamchatskiy', 'PK', 1),
(2776, 176, 'Petrozavodsk', 'PT', 1),
(2777, 176, 'Pskov', 'PS', 1),
(2778, 176, 'Rostov-na-Donu', 'RO', 1),
(2779, 176, 'Ryazan', 'RY', 1),
(2780, 176, 'Salekhard', 'SL', 1),
(2781, 176, 'Samara', 'SA', 1),
(2782, 176, 'Saransk', 'SR', 1),
(2783, 176, 'Saratov', 'SV', 1),
(2784, 176, 'Smolensk', 'SM', 1),
(2785, 176, 'St. Petersburg', 'SP', 1),
(2786, 176, 'Stavropol', 'ST', 1),
(2787, 176, 'Syktyvkar', 'SY', 1),
(2788, 176, 'Tambov', 'TA', 1),
(2789, 176, 'Tomsk', 'TO', 1),
(2790, 176, 'Tula', 'TU', 1),
(2791, 176, 'Tura', 'TR', 1),
(2792, 176, 'Tver', 'TV', 1),
(2793, 176, 'Tyumen', 'TY', 1),
(2794, 176, 'Ufa', 'UF', 1),
(2795, 176, 'Ul\'yanovsk', 'UL', 1),
(2796, 176, 'Ulan-Ude', 'UU', 1),
(2797, 176, 'Ust\'-Ordynskiy', 'US', 1),
(2798, 176, 'Vladikavkaz', 'VL', 1),
(2799, 176, 'Vladimir', 'VA', 1),
(2800, 176, 'Vladivostok', 'VV', 1),
(2801, 176, 'Volgograd', 'VG', 1),
(2802, 176, 'Vologda', 'VD', 1),
(2803, 176, 'Voronezh', 'VO', 1),
(2804, 176, 'Vyatka', 'VY', 1),
(2805, 176, 'Yakutsk', 'YA', 1),
(2806, 176, 'Yaroslavl', 'YR', 1),
(2807, 176, 'Yekaterinburg', 'YE', 1),
(2808, 176, 'Yoshkar-Ola', 'YO', 1),
(2809, 177, 'Butare', 'BU', 1),
(2810, 177, 'Byumba', 'BY', 1),
(2811, 177, 'Cyangugu', 'CY', 1),
(2812, 177, 'Gikongoro', 'GK', 1),
(2813, 177, 'Gisenyi', 'GS', 1),
(2814, 177, 'Gitarama', 'GT', 1),
(2815, 177, 'Kibungo', 'KG', 1),
(2816, 177, 'Kibuye', 'KY', 1),
(2817, 177, 'Kigali Rurale', 'KR', 1),
(2818, 177, 'Kigali-ville', 'KV', 1),
(2819, 177, 'Ruhengeri', 'RU', 1),
(2820, 177, 'Umutara', 'UM', 1),
(2821, 178, 'Christ Church Nichola Town', 'CCN', 1),
(2822, 178, 'Saint Anne Sandy Point', 'SAS', 1),
(2823, 178, 'Saint George Basseterre', 'SGB', 1),
(2824, 178, 'Saint George Gingerland', 'SGG', 1),
(2825, 178, 'Saint James Windward', 'SJW', 1),
(2826, 178, 'Saint John Capesterre', 'SJC', 1),
(2827, 178, 'Saint John Figtree', 'SJF', 1),
(2828, 178, 'Saint Mary Cayon', 'SMC', 1),
(2829, 178, 'Saint Paul Capesterre', 'CAP', 1),
(2830, 178, 'Saint Paul Charlestown', 'CHA', 1),
(2831, 178, 'Saint Peter Basseterre', 'SPB', 1),
(2832, 178, 'Saint Thomas Lowland', 'STL', 1),
(2833, 178, 'Saint Thomas Middle Island', 'STM', 1),
(2834, 178, 'Trinity Palmetto Point', 'TPP', 1),
(2835, 179, 'Anse-la-Raye', 'AR', 1),
(2836, 179, 'Castries', 'CA', 1),
(2837, 179, 'Choiseul', 'CH', 1),
(2838, 179, 'Dauphin', 'DA', 1),
(2839, 179, 'Dennery', 'DE', 1),
(2840, 179, 'Gros-Islet', 'GI', 1),
(2841, 179, 'Laborie', 'LA', 1),
(2842, 179, 'Micoud', 'MI', 1),
(2843, 179, 'Praslin', 'PR', 1),
(2844, 179, 'Soufriere', 'SO', 1),
(2845, 179, 'Vieux-Fort', 'VF', 1),
(2846, 180, 'Charlotte', 'C', 1),
(2847, 180, 'Grenadines', 'R', 1),
(2848, 180, 'Saint Andrew', 'A', 1),
(2849, 180, 'Saint David', 'D', 1),
(2850, 180, 'Saint George', 'G', 1),
(2851, 180, 'Saint Patrick', 'P', 1),
(2852, 181, 'A\'ana', 'AN', 1),
(2853, 181, 'Aiga-i-le-Tai', 'AI', 1),
(2854, 181, 'Atua', 'AT', 1),
(2855, 181, 'Fa\'asaleleaga', 'FA', 1),
(2856, 181, 'Gaga\'emauga', 'GE', 1),
(2857, 181, 'Gagaifomauga', 'GF', 1),
(2858, 181, 'Palauli', 'PA', 1),
(2859, 181, 'Satupa\'itea', 'SA', 1),
(2860, 181, 'Tuamasaga', 'TU', 1),
(2861, 181, 'Va\'a-o-Fonoti', 'VF', 1),
(2862, 181, 'Vaisigano', 'VS', 1),
(2863, 182, 'Acquaviva', 'AC', 1),
(2864, 182, 'Borgo Maggiore', 'BM', 1),
(2865, 182, 'Chiesanuova', 'CH', 1),
(2866, 182, 'Domagnano', 'DO', 1),
(2867, 182, 'Faetano', 'FA', 1),
(2868, 182, 'Fiorentino', 'FI', 1),
(2869, 182, 'Montegiardino', 'MO', 1),
(2870, 182, 'Citta di San Marino', 'SM', 1),
(2871, 182, 'Serravalle', 'SE', 1),
(2872, 183, 'Sao Tome', 'S', 1),
(2873, 183, 'Principe', 'P', 1),
(2874, 184, 'Al Bahah', 'BH', 1),
(2875, 184, 'Al Hudud ash Shamaliyah', 'HS', 1),
(2876, 184, 'Al Jawf', 'JF', 1),
(2877, 184, 'Al Madinah', 'MD', 1),
(2878, 184, 'Al Qasim', 'QS', 1),
(2879, 184, 'Ar Riyad', 'RD', 1),
(2880, 184, 'Ash Sharqiyah (Eastern)', 'AQ', 1),
(2881, 184, '\'Asir', 'AS', 1),
(2882, 184, 'Ha\'il', 'HL', 1),
(2883, 184, 'Jizan', 'JZ', 1),
(2884, 184, 'Makkah', 'ML', 1),
(2885, 184, 'Najran', 'NR', 1),
(2886, 184, 'Tabuk', 'TB', 1),
(2887, 185, 'Dakar', 'DA', 1),
(2888, 185, 'Diourbel', 'DI', 1),
(2889, 185, 'Fatick', 'FA', 1),
(2890, 185, 'Kaolack', 'KA', 1),
(2891, 185, 'Kolda', 'KO', 1),
(2892, 185, 'Louga', 'LO', 1),
(2893, 185, 'Matam', 'MA', 1),
(2894, 185, 'Saint-Louis', 'SL', 1),
(2895, 185, 'Tambacounda', 'TA', 1),
(2896, 185, 'Thies', 'TH', 1),
(2897, 185, 'Ziguinchor', 'ZI', 1),
(2898, 186, 'Anse aux Pins', 'AP', 1),
(2899, 186, 'Anse Boileau', 'AB', 1),
(2900, 186, 'Anse Etoile', 'AE', 1),
(2901, 186, 'Anse Louis', 'AL', 1),
(2902, 186, 'Anse Royale', 'AR', 1),
(2903, 186, 'Baie Lazare', 'BL', 1),
(2904, 186, 'Baie Sainte Anne', 'BS', 1),
(2905, 186, 'Beau Vallon', 'BV', 1),
(2906, 186, 'Bel Air', 'BA', 1),
(2907, 186, 'Bel Ombre', 'BO', 1),
(2908, 186, 'Cascade', 'CA', 1),
(2909, 186, 'Glacis', 'GL', 1),
(2910, 186, 'Grand\' Anse (on Mahe)', 'GM', 1),
(2911, 186, 'Grand\' Anse (on Praslin)', 'GP', 1),
(2912, 186, 'La Digue', 'DG', 1),
(2913, 186, 'La Riviere Anglaise', 'RA', 1),
(2914, 186, 'Mont Buxton', 'MB', 1),
(2915, 186, 'Mont Fleuri', 'MF', 1),
(2916, 186, 'Plaisance', 'PL', 1),
(2917, 186, 'Pointe La Rue', 'PR', 1),
(2918, 186, 'Port Glaud', 'PG', 1),
(2919, 186, 'Saint Louis', 'SL', 1),
(2920, 186, 'Takamaka', 'TA', 1),
(2921, 187, 'Eastern', 'E', 1),
(2922, 187, 'Northern', 'N', 1),
(2923, 187, 'Southern', 'S', 1),
(2924, 187, 'Western', 'W', 1),
(2925, 189, 'Banskobystrický', 'BA', 1),
(2926, 189, 'Bratislavský', 'BR', 1),
(2927, 189, 'Košický', 'KO', 1),
(2928, 189, 'Nitriansky', 'NI', 1),
(2929, 189, 'Prešovský', 'PR', 1),
(2930, 189, 'Trenčiansky', 'TC', 1),
(2931, 189, 'Trnavský', 'TV', 1),
(2932, 189, 'Žilinský', 'ZI', 1),
(2933, 191, 'Central', 'CE', 1),
(2934, 191, 'Choiseul', 'CH', 1),
(2935, 191, 'Guadalcanal', 'GC', 1),
(2936, 191, 'Honiara', 'HO', 1),
(2937, 191, 'Isabel', 'IS', 1),
(2938, 191, 'Makira', 'MK', 1),
(2939, 191, 'Malaita', 'ML', 1),
(2940, 191, 'Rennell and Bellona', 'RB', 1),
(2941, 191, 'Temotu', 'TM', 1),
(2942, 191, 'Western', 'WE', 1),
(2943, 192, 'Awdal', 'AW', 1),
(2944, 192, 'Bakool', 'BK', 1),
(2945, 192, 'Banaadir', 'BN', 1),
(2946, 192, 'Bari', 'BR', 1),
(2947, 192, 'Bay', 'BY', 1),
(2948, 192, 'Galguduud', 'GA', 1),
(2949, 192, 'Gedo', 'GE', 1),
(2950, 192, 'Hiiraan', 'HI', 1),
(2951, 192, 'Jubbada Dhexe', 'JD', 1),
(2952, 192, 'Jubbada Hoose', 'JH', 1),
(2953, 192, 'Mudug', 'MU', 1),
(2954, 192, 'Nugaal', 'NU', 1),
(2955, 192, 'Sanaag', 'SA', 1),
(2956, 192, 'Shabeellaha Dhexe', 'SD', 1),
(2957, 192, 'Shabeellaha Hoose', 'SH', 1),
(2958, 192, 'Sool', 'SL', 1),
(2959, 192, 'Togdheer', 'TO', 1),
(2960, 192, 'Woqooyi Galbeed', 'WG', 1),
(2961, 193, 'Eastern Cape', 'EC', 1),
(2962, 193, 'Free State', 'FS', 1),
(2963, 193, 'Gauteng', 'GT', 1),
(2964, 193, 'KwaZulu-Natal', 'KN', 1),
(2965, 193, 'Limpopo', 'LP', 1),
(2966, 193, 'Mpumalanga', 'MP', 1),
(2967, 193, 'North West', 'NW', 1),
(2968, 193, 'Northern Cape', 'NC', 1),
(2969, 193, 'Western Cape', 'WC', 1),
(2970, 195, 'La Coru&ntilde;a', 'CA', 1),
(2971, 195, '&Aacute;lava', 'AL', 1),
(2972, 195, 'Albacete', 'AB', 1),
(2973, 195, 'Alicante', 'AC', 1),
(2974, 195, 'Almeria', 'AM', 1),
(2975, 195, 'Asturias', 'AS', 1),
(2976, 195, '&Aacute;vila', 'AV', 1),
(2977, 195, 'Badajoz', 'BJ', 1),
(2978, 195, 'Baleares', 'IB', 1),
(2979, 195, 'Barcelona', 'BA', 1),
(2980, 195, 'Burgos', 'BU', 1),
(2981, 195, 'C&aacute;ceres', 'CC', 1),
(2982, 195, 'C&aacute;diz', 'CZ', 1),
(2983, 195, 'Cantabria', 'CT', 1),
(2984, 195, 'Castell&oacute;n', 'CL', 1),
(2985, 195, 'Ceuta', 'CE', 1),
(2986, 195, 'Ciudad Real', 'CR', 1),
(2987, 195, 'C&oacute;rdoba', 'CD', 1),
(2988, 195, 'Cuenca', 'CU', 1),
(2989, 195, 'Girona', 'GI', 1),
(2990, 195, 'Granada', 'GD', 1),
(2991, 195, 'Guadalajara', 'GJ', 1),
(2992, 195, 'Guip&uacute;zcoa', 'GP', 1),
(2993, 195, 'Huelva', 'HL', 1),
(2994, 195, 'Huesca', 'HS', 1),
(2995, 195, 'Ja&eacute;n', 'JN', 1),
(2996, 195, 'La Rioja', 'RJ', 1),
(2997, 195, 'Las Palmas', 'PM', 1),
(2998, 195, 'Leon', 'LE', 1),
(2999, 195, 'Lleida', 'LL', 1),
(3000, 195, 'Lugo', 'LG', 1),
(3001, 195, 'Madrid', 'MD', 1),
(3002, 195, 'Malaga', 'MA', 1),
(3003, 195, 'Melilla', 'ML', 1),
(3004, 195, 'Murcia', 'MU', 1),
(3005, 195, 'Navarra', 'NV', 1),
(3006, 195, 'Ourense', 'OU', 1),
(3007, 195, 'Palencia', 'PL', 1),
(3008, 195, 'Pontevedra', 'PO', 1),
(3009, 195, 'Salamanca', 'SL', 1),
(3010, 195, 'Santa Cruz de Tenerife', 'SC', 1),
(3011, 195, 'Segovia', 'SG', 1),
(3012, 195, 'Sevilla', 'SV', 1),
(3013, 195, 'Soria', 'SO', 1),
(3014, 195, 'Tarragona', 'TA', 1),
(3015, 195, 'Teruel', 'TE', 1),
(3016, 195, 'Toledo', 'TO', 1),
(3017, 195, 'Valencia', 'VC', 1),
(3018, 195, 'Valladolid', 'VD', 1),
(3019, 195, 'Vizcaya', 'VZ', 1),
(3020, 195, 'Zamora', 'ZM', 1),
(3021, 195, 'Zaragoza', 'ZR', 1),
(3022, 196, 'Central', 'CE', 1),
(3023, 196, 'Eastern', 'EA', 1),
(3024, 196, 'North Central', 'NC', 1),
(3025, 196, 'Northern', 'NO', 1),
(3026, 196, 'North Western', 'NW', 1),
(3027, 196, 'Sabaragamuwa', 'SA', 1),
(3028, 196, 'Southern', 'SO', 1),
(3029, 196, 'Uva', 'UV', 1),
(3030, 196, 'Western', 'WE', 1),
(3032, 197, 'Saint Helena', 'S', 1),
(3034, 199, 'A\'ali an Nil', 'ANL', 1),
(3035, 199, 'Al Bahr al Ahmar', 'BAM', 1),
(3036, 199, 'Al Buhayrat', 'BRT', 1),
(3037, 199, 'Al Jazirah', 'JZR', 1),
(3038, 199, 'Al Khartum', 'KRT', 1),
(3039, 199, 'Al Qadarif', 'QDR', 1),
(3040, 199, 'Al Wahdah', 'WDH', 1),
(3041, 199, 'An Nil al Abyad', 'ANB', 1),
(3042, 199, 'An Nil al Azraq', 'ANZ', 1),
(3043, 199, 'Ash Shamaliyah', 'ASH', 1),
(3044, 199, 'Bahr al Jabal', 'BJA', 1),
(3045, 199, 'Gharb al Istiwa\'iyah', 'GIS', 1),
(3046, 199, 'Gharb Bahr al Ghazal', 'GBG', 1),
(3047, 199, 'Gharb Darfur', 'GDA', 1),
(3048, 199, 'Gharb Kurdufan', 'GKU', 1),
(3049, 199, 'Janub Darfur', 'JDA', 1),
(3050, 199, 'Janub Kurdufan', 'JKU', 1),
(3051, 199, 'Junqali', 'JQL', 1),
(3052, 199, 'Kassala', 'KSL', 1),
(3053, 199, 'Nahr an Nil', 'NNL', 1),
(3054, 199, 'Shamal Bahr al Ghazal', 'SBG', 1),
(3055, 199, 'Shamal Darfur', 'SDA', 1),
(3056, 199, 'Shamal Kurdufan', 'SKU', 1),
(3057, 199, 'Sharq al Istiwa\'iyah', 'SIS', 1),
(3058, 199, 'Sinnar', 'SNR', 1),
(3059, 199, 'Warab', 'WRB', 1),
(3060, 200, 'Brokopondo', 'BR', 1),
(3061, 200, 'Commewijne', 'CM', 1),
(3062, 200, 'Coronie', 'CR', 1),
(3063, 200, 'Marowijne', 'MA', 1),
(3064, 200, 'Nickerie', 'NI', 1),
(3065, 200, 'Para', 'PA', 1),
(3066, 200, 'Paramaribo', 'PM', 1),
(3067, 200, 'Saramacca', 'SA', 1),
(3068, 200, 'Sipaliwini', 'SI', 1),
(3069, 200, 'Wanica', 'WA', 1),
(3070, 202, 'Hhohho', 'H', 1),
(3071, 202, 'Lubombo', 'L', 1),
(3072, 202, 'Manzini', 'M', 1),
(3073, 202, 'Shishelweni', 'S', 1),
(3074, 203, 'Blekinge', 'K', 1),
(3075, 203, 'Dalarna', 'W', 1),
(3076, 203, 'Gävleborg', 'X', 1),
(3077, 203, 'Gotland', 'I', 1),
(3078, 203, 'Halland', 'N', 1),
(3079, 203, 'Jämtland', 'Z', 1),
(3080, 203, 'Jönköping', 'F', 1),
(3081, 203, 'Kalmar', 'H', 1),
(3082, 203, 'Kronoberg', 'G', 1),
(3083, 203, 'Norrbotten', 'BD', 1),
(3084, 203, 'Örebro', 'T', 1),
(3085, 203, 'Östergötland', 'E', 1),
(3086, 203, 'Sk&aring;ne', 'M', 1),
(3087, 203, 'Södermanland', 'D', 1),
(3088, 203, 'Stockholm', 'AB', 1),
(3089, 203, 'Uppsala', 'C', 1),
(3090, 203, 'Värmland', 'S', 1),
(3091, 203, 'Västerbotten', 'AC', 1),
(3092, 203, 'Västernorrland', 'Y', 1),
(3093, 203, 'Västmanland', 'U', 1),
(3094, 203, 'Västra Götaland', 'O', 1),
(3095, 204, 'Aargau', 'AG', 1),
(3096, 204, 'Appenzell Ausserrhoden', 'AR', 1),
(3097, 204, 'Appenzell Innerrhoden', 'AI', 1),
(3098, 204, 'Basel-Stadt', 'BS', 1),
(3099, 204, 'Basel-Landschaft', 'BL', 1),
(3100, 204, 'Bern', 'BE', 1),
(3101, 204, 'Fribourg', 'FR', 1),
(3102, 204, 'Gen&egrave;ve', 'GE', 1),
(3103, 204, 'Glarus', 'GL', 1),
(3104, 204, 'Graubünden', 'GR', 1),
(3105, 204, 'Jura', 'JU', 1),
(3106, 204, 'Luzern', 'LU', 1),
(3107, 204, 'Neuch&acirc;tel', 'NE', 1),
(3108, 204, 'Nidwald', 'NW', 1),
(3109, 204, 'Obwald', 'OW', 1),
(3110, 204, 'St. Gallen', 'SG', 1),
(3111, 204, 'Schaffhausen', 'SH', 1),
(3112, 204, 'Schwyz', 'SZ', 1),
(3113, 204, 'Solothurn', 'SO', 1),
(3114, 204, 'Thurgau', 'TG', 1),
(3115, 204, 'Ticino', 'TI', 1),
(3116, 204, 'Uri', 'UR', 1),
(3117, 204, 'Valais', 'VS', 1),
(3118, 204, 'Vaud', 'VD', 1),
(3119, 204, 'Zug', 'ZG', 1),
(3120, 204, 'Zürich', 'ZH', 1),
(3121, 205, 'Al Hasakah', 'HA', 1),
(3122, 205, 'Al Ladhiqiyah', 'LA', 1),
(3123, 205, 'Al Qunaytirah', 'QU', 1),
(3124, 205, 'Ar Raqqah', 'RQ', 1),
(3125, 205, 'As Suwayda', 'SU', 1),
(3126, 205, 'Dara', 'DA', 1),
(3127, 205, 'Dayr az Zawr', 'DZ', 1),
(3128, 205, 'Dimashq', 'DI', 1),
(3129, 205, 'Halab', 'HL', 1),
(3130, 205, 'Hamah', 'HM', 1),
(3131, 205, 'Hims', 'HI', 1),
(3132, 205, 'Idlib', 'ID', 1),
(3133, 205, 'Rif Dimashq', 'RD', 1),
(3134, 205, 'Tartus', 'TA', 1),
(3135, 206, '台北市', 'TPC', 1),
(3136, 206, '基隆市', 'KLC', 1),
(3137, 206, '新北市', 'NPC', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(3138, 206, '宜蘭縣', 'YL', 1),
(3139, 206, '新竹市', 'HCC', 1),
(3140, 206, '新竹縣', 'HC', 1),
(3141, 206, '桃園市', 'TYC', 1),
(3142, 206, '苗栗縣', 'ML', 1),
(3143, 206, '台中市', 'TCC', 1),
(3144, 206, '彰化縣', 'CH', 1),
(3145, 206, '南投縣', 'NT', 1),
(3146, 206, '嘉義市', 'CYC', 1),
(3147, 206, '嘉義縣', 'CY', 1),
(3148, 206, '雲林縣', 'YLI', 1),
(3149, 206, '台南市', 'TNC', 1),
(3150, 206, '高雄市', 'KHC', 1),
(3151, 206, '澎湖縣', 'PH', 1),
(3152, 206, '屏東縣', 'PT', 1),
(3153, 206, '台東縣', 'TT', 1),
(3154, 206, '花蓮縣', 'HL', 1),
(3155, 206, '金門縣', 'KM', 1),
(3156, 206, '連江縣', 'LC', 1),
(3160, 207, 'Gorno-Badakhstan', 'GB', 1),
(3161, 207, 'Khatlon', 'KT', 1),
(3162, 207, 'Sughd', 'SU', 1),
(3163, 208, 'Arusha', 'AR', 1),
(3164, 208, 'Dar es Salaam', 'DS', 1),
(3165, 208, 'Dodoma', 'DO', 1),
(3166, 208, 'Iringa', 'IR', 1),
(3167, 208, 'Kagera', 'KA', 1),
(3168, 208, 'Kigoma', 'KI', 1),
(3169, 208, 'Kilimanjaro', 'KJ', 1),
(3170, 208, 'Lindi', 'LN', 1),
(3171, 208, 'Manyara', 'MY', 1),
(3172, 208, 'Mara', 'MR', 1),
(3173, 208, 'Mbeya', 'MB', 1),
(3174, 208, 'Morogoro', 'MO', 1),
(3175, 208, 'Mtwara', 'MT', 1),
(3176, 208, 'Mwanza', 'MW', 1),
(3177, 208, 'Pemba North', 'PN', 1),
(3178, 208, 'Pemba South', 'PS', 1),
(3179, 208, 'Pwani', 'PW', 1),
(3180, 208, 'Rukwa', 'RK', 1),
(3181, 208, 'Ruvuma', 'RV', 1),
(3182, 208, 'Shinyanga', 'SH', 1),
(3183, 208, 'Singida', 'SI', 1),
(3184, 208, 'Tabora', 'TB', 1),
(3185, 208, 'Tanga', 'TN', 1),
(3186, 208, 'Zanzibar Central/South', 'ZC', 1),
(3187, 208, 'Zanzibar North', 'ZN', 1),
(3188, 208, 'Zanzibar Urban/West', 'ZU', 1),
(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 1),
(3190, 209, 'Ang Thong', 'Ang Thong', 1),
(3191, 209, 'Ayutthaya', 'Ayutthaya', 1),
(3192, 209, 'Bangkok', 'Bangkok', 1),
(3193, 209, 'Buriram', 'Buriram', 1),
(3194, 209, 'Chachoengsao', 'Chachoengsao', 1),
(3195, 209, 'Chai Nat', 'Chai Nat', 1),
(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 1),
(3197, 209, 'Chanthaburi', 'Chanthaburi', 1),
(3198, 209, 'Chiang Mai', 'Chiang Mai', 1),
(3199, 209, 'Chiang Rai', 'Chiang Rai', 1),
(3200, 209, 'Chon Buri', 'Chon Buri', 1),
(3201, 209, 'Chumphon', 'Chumphon', 1),
(3202, 209, 'Kalasin', 'Kalasin', 1),
(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 1),
(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 1),
(3205, 209, 'Khon Kaen', 'Khon Kaen', 1),
(3206, 209, 'Krabi', 'Krabi', 1),
(3207, 209, 'Lampang', 'Lampang', 1),
(3208, 209, 'Lamphun', 'Lamphun', 1),
(3209, 209, 'Loei', 'Loei', 1),
(3210, 209, 'Lop Buri', 'Lop Buri', 1),
(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 1),
(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 1),
(3213, 209, 'Mukdahan', 'Mukdahan', 1),
(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 1),
(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 1),
(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 1),
(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 1),
(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 1),
(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 1),
(3220, 209, 'Nan', 'Nan', 1),
(3221, 209, 'Narathiwat', 'Narathiwat', 1),
(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 1),
(3223, 209, 'Nong Khai', 'Nong Khai', 1),
(3224, 209, 'Nonthaburi', 'Nonthaburi', 1),
(3225, 209, 'Pathum Thani', 'Pathum Thani', 1),
(3226, 209, 'Pattani', 'Pattani', 1),
(3227, 209, 'Phangnga', 'Phangnga', 1),
(3228, 209, 'Phatthalung', 'Phatthalung', 1),
(3229, 209, 'Phayao', 'Phayao', 1),
(3230, 209, 'Phetchabun', 'Phetchabun', 1),
(3231, 209, 'Phetchaburi', 'Phetchaburi', 1),
(3232, 209, 'Phichit', 'Phichit', 1),
(3233, 209, 'Phitsanulok', 'Phitsanulok', 1),
(3234, 209, 'Phrae', 'Phrae', 1),
(3235, 209, 'Phuket', 'Phuket', 1),
(3236, 209, 'Prachin Buri', 'Prachin Buri', 1),
(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 1),
(3238, 209, 'Ranong', 'Ranong', 1),
(3239, 209, 'Ratchaburi', 'Ratchaburi', 1),
(3240, 209, 'Rayong', 'Rayong', 1),
(3241, 209, 'Roi Et', 'Roi Et', 1),
(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 1),
(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 1),
(3244, 209, 'Samut Prakan', 'Samut Prakan', 1),
(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 1),
(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 1),
(3247, 209, 'Sara Buri', 'Sara Buri', 1),
(3248, 209, 'Satun', 'Satun', 1),
(3249, 209, 'Sing Buri', 'Sing Buri', 1),
(3250, 209, 'Sisaket', 'Sisaket', 1),
(3251, 209, 'Songkhla', 'Songkhla', 1),
(3252, 209, 'Sukhothai', 'Sukhothai', 1),
(3253, 209, 'Suphan Buri', 'Suphan Buri', 1),
(3254, 209, 'Surat Thani', 'Surat Thani', 1),
(3255, 209, 'Surin', 'Surin', 1),
(3256, 209, 'Tak', 'Tak', 1),
(3257, 209, 'Trang', 'Trang', 1),
(3258, 209, 'Trat', 'Trat', 1),
(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 1),
(3260, 209, 'Udon Thani', 'Udon Thani', 1),
(3261, 209, 'Uthai Thani', 'Uthai Thani', 1),
(3262, 209, 'Uttaradit', 'Uttaradit', 1),
(3263, 209, 'Yala', 'Yala', 1),
(3264, 209, 'Yasothon', 'Yasothon', 1),
(3265, 210, 'Kara', 'K', 1),
(3266, 210, 'Plateaux', 'P', 1),
(3267, 210, 'Savanes', 'S', 1),
(3268, 210, 'Centrale', 'C', 1),
(3269, 210, 'Maritime', 'M', 1),
(3270, 211, 'Atafu', 'A', 1),
(3271, 211, 'Fakaofo', 'F', 1),
(3272, 211, 'Nukunonu', 'N', 1),
(3273, 212, 'Ha\'apai', 'H', 1),
(3274, 212, 'Tongatapu', 'T', 1),
(3275, 212, 'Vava\'u', 'V', 1),
(3276, 213, 'Couva/Tabaquite/Talparo', 'CT', 1),
(3277, 213, 'Diego Martin', 'DM', 1),
(3278, 213, 'Mayaro/Rio Claro', 'MR', 1),
(3279, 213, 'Penal/Debe', 'PD', 1),
(3280, 213, 'Princes Town', 'PT', 1),
(3281, 213, 'Sangre Grande', 'SG', 1),
(3282, 213, 'San Juan/Laventille', 'SL', 1),
(3283, 213, 'Siparia', 'SI', 1),
(3284, 213, 'Tunapuna/Piarco', 'TP', 1),
(3285, 213, 'Port of Spain', 'PS', 1),
(3286, 213, 'San Fernando', 'SF', 1),
(3287, 213, 'Arima', 'AR', 1),
(3288, 213, 'Point Fortin', 'PF', 1),
(3289, 213, 'Chaguanas', 'CH', 1),
(3290, 213, 'Tobago', 'TO', 1),
(3291, 214, 'Ariana', 'AR', 1),
(3292, 214, 'Beja', 'BJ', 1),
(3293, 214, 'Ben Arous', 'BA', 1),
(3294, 214, 'Bizerte', 'BI', 1),
(3295, 214, 'Gabes', 'GB', 1),
(3296, 214, 'Gafsa', 'GF', 1),
(3297, 214, 'Jendouba', 'JE', 1),
(3298, 214, 'Kairouan', 'KR', 1),
(3299, 214, 'Kasserine', 'KS', 1),
(3300, 214, 'Kebili', 'KB', 1),
(3301, 214, 'Kef', 'KF', 1),
(3302, 214, 'Mahdia', 'MH', 1),
(3303, 214, 'Manouba', 'MN', 1),
(3304, 214, 'Medenine', 'ME', 1),
(3305, 214, 'Monastir', 'MO', 1),
(3306, 214, 'Nabeul', 'NA', 1),
(3307, 214, 'Sfax', 'SF', 1),
(3308, 214, 'Sidi', 'SD', 1),
(3309, 214, 'Siliana', 'SL', 1),
(3310, 214, 'Sousse', 'SO', 1),
(3311, 214, 'Tataouine', 'TA', 1),
(3312, 214, 'Tozeur', 'TO', 1),
(3313, 214, 'Tunis', 'TU', 1),
(3314, 214, 'Zaghouan', 'ZA', 1),
(3315, 215, 'Adana', 'ADA', 1),
(3316, 215, 'Adıyaman', 'ADI', 1),
(3317, 215, 'Afyonkarahisar', 'AFY', 1),
(3318, 215, 'Ağrı', 'AGR', 1),
(3319, 215, 'Aksaray', 'AKS', 1),
(3320, 215, 'Amasya', 'AMA', 1),
(3321, 215, 'Ankara', 'ANK', 1),
(3322, 215, 'Antalya', 'ANT', 1),
(3323, 215, 'Ardahan', 'ARD', 1),
(3324, 215, 'Artvin', 'ART', 1),
(3325, 215, 'Aydın', 'AYI', 1),
(3326, 215, 'Balıkesir', 'BAL', 1),
(3327, 215, 'Bartın', 'BAR', 1),
(3328, 215, 'Batman', 'BAT', 1),
(3329, 215, 'Bayburt', 'BAY', 1),
(3330, 215, 'Bilecik', 'BIL', 1),
(3331, 215, 'Bingöl', 'BIN', 1),
(3332, 215, 'Bitlis', 'BIT', 1),
(3333, 215, 'Bolu', 'BOL', 1),
(3334, 215, 'Burdur', 'BRD', 1),
(3335, 215, 'Bursa', 'BRS', 1),
(3336, 215, 'Çanakkale', 'CKL', 1),
(3337, 215, 'Çankırı', 'CKR', 1),
(3338, 215, 'Çorum', 'COR', 1),
(3339, 215, 'Denizli', 'DEN', 1),
(3340, 215, 'Diyarbakır', 'DIY', 1),
(3341, 215, 'Düzce', 'DUZ', 1),
(3342, 215, 'Edirne', 'EDI', 1),
(3343, 215, 'Elazığ', 'ELA', 1),
(3344, 215, 'Erzincan', 'EZC', 1),
(3345, 215, 'Erzurum', 'EZR', 1),
(3346, 215, 'Eskişehir', 'ESK', 1),
(3347, 215, 'Gaziantep', 'GAZ', 1),
(3348, 215, 'Giresun', 'GIR', 1),
(3349, 215, 'Gümüşhane', 'GMS', 1),
(3350, 215, 'Hakkari', 'HKR', 1),
(3351, 215, 'Hatay', 'HTY', 1),
(3352, 215, 'Iğdır', 'IGD', 1),
(3353, 215, 'Isparta', 'ISP', 1),
(3354, 215, 'İstanbul', 'IST', 1),
(3355, 215, 'İzmir', 'IZM', 1),
(3356, 215, 'Kahramanmaraş', 'KAH', 1),
(3357, 215, 'Karabük', 'KRB', 1),
(3358, 215, 'Karaman', 'KRM', 1),
(3359, 215, 'Kars', 'KRS', 1),
(3360, 215, 'Kastamonu', 'KAS', 1),
(3361, 215, 'Kayseri', 'KAY', 1),
(3362, 215, 'Kilis', 'KLS', 1),
(3363, 215, 'Kırıkkale', 'KRK', 1),
(3364, 215, 'Kırklareli', 'KLR', 1),
(3365, 215, 'Kırşehir', 'KRH', 1),
(3366, 215, 'Kocaeli', 'KOC', 1),
(3367, 215, 'Konya', 'KON', 1),
(3368, 215, 'Kütahya', 'KUT', 1),
(3369, 215, 'Malatya', 'MAL', 1),
(3370, 215, 'Manisa', 'MAN', 1),
(3371, 215, 'Mardin', 'MAR', 1),
(3372, 215, 'Mersin', 'MER', 1),
(3373, 215, 'Muğla', 'MUG', 1),
(3374, 215, 'Muş', 'MUS', 1),
(3375, 215, 'Nevşehir', 'NEV', 1),
(3376, 215, 'Niğde', 'NIG', 1),
(3377, 215, 'Ordu', 'ORD', 1),
(3378, 215, 'Osmaniye', 'OSM', 1),
(3379, 215, 'Rize', 'RIZ', 1),
(3380, 215, 'Sakarya', 'SAK', 1),
(3381, 215, 'Samsun', 'SAM', 1),
(3382, 215, 'Şanlıurfa', 'SAN', 1),
(3383, 215, 'Siirt', 'SII', 1),
(3384, 215, 'Sinop', 'SIN', 1),
(3385, 215, 'Şırnak', 'SIR', 1),
(3386, 215, 'Sivas', 'SIV', 1),
(3387, 215, 'Tekirdağ', 'TEL', 1),
(3388, 215, 'Tokat', 'TOK', 1),
(3389, 215, 'Trabzon', 'TRA', 1),
(3390, 215, 'Tunceli', 'TUN', 1),
(3391, 215, 'Uşak', 'USK', 1),
(3392, 215, 'Van', 'VAN', 1),
(3393, 215, 'Yalova', 'YAL', 1),
(3394, 215, 'Yozgat', 'YOZ', 1),
(3395, 215, 'Zonguldak', 'ZON', 1),
(3396, 216, 'Ahal Welayaty', 'A', 1),
(3397, 216, 'Balkan Welayaty', 'B', 1),
(3398, 216, 'Dashhowuz Welayaty', 'D', 1),
(3399, 216, 'Lebap Welayaty', 'L', 1),
(3400, 216, 'Mary Welayaty', 'M', 1),
(3401, 217, 'Ambergris Cays', 'AC', 1),
(3402, 217, 'Dellis Cay', 'DC', 1),
(3403, 217, 'French Cay', 'FC', 1),
(3404, 217, 'Little Water Cay', 'LW', 1),
(3405, 217, 'Parrot Cay', 'RC', 1),
(3406, 217, 'Pine Cay', 'PN', 1),
(3407, 217, 'Salt Cay', 'SL', 1),
(3408, 217, 'Grand Turk', 'GT', 1),
(3409, 217, 'South Caicos', 'SC', 1),
(3410, 217, 'East Caicos', 'EC', 1),
(3411, 217, 'Middle Caicos', 'MC', 1),
(3412, 217, 'North Caicos', 'NC', 1),
(3413, 217, 'Providenciales', 'PR', 1),
(3414, 217, 'West Caicos', 'WC', 1),
(3415, 218, 'Nanumanga', 'NMG', 1),
(3416, 218, 'Niulakita', 'NLK', 1),
(3417, 218, 'Niutao', 'NTO', 1),
(3418, 218, 'Funafuti', 'FUN', 1),
(3419, 218, 'Nanumea', 'NME', 1),
(3420, 218, 'Nui', 'NUI', 1),
(3421, 218, 'Nukufetau', 'NFT', 1),
(3422, 218, 'Nukulaelae', 'NLL', 1),
(3423, 218, 'Vaitupu', 'VAI', 1),
(3424, 219, 'Kalangala', 'KAL', 1),
(3425, 219, 'Kampala', 'KMP', 1),
(3426, 219, 'Kayunga', 'KAY', 1),
(3427, 219, 'Kiboga', 'KIB', 1),
(3428, 219, 'Luwero', 'LUW', 1),
(3429, 219, 'Masaka', 'MAS', 1),
(3430, 219, 'Mpigi', 'MPI', 1),
(3431, 219, 'Mubende', 'MUB', 1),
(3432, 219, 'Mukono', 'MUK', 1),
(3433, 219, 'Nakasongola', 'NKS', 1),
(3434, 219, 'Rakai', 'RAK', 1),
(3435, 219, 'Sembabule', 'SEM', 1),
(3436, 219, 'Wakiso', 'WAK', 1),
(3437, 219, 'Bugiri', 'BUG', 1),
(3438, 219, 'Busia', 'BUS', 1),
(3439, 219, 'Iganga', 'IGA', 1),
(3440, 219, 'Jinja', 'JIN', 1),
(3441, 219, 'Kaberamaido', 'KAB', 1),
(3442, 219, 'Kamuli', 'KML', 1),
(3443, 219, 'Kapchorwa', 'KPC', 1),
(3444, 219, 'Katakwi', 'KTK', 1),
(3445, 219, 'Kumi', 'KUM', 1),
(3446, 219, 'Mayuge', 'MAY', 1),
(3447, 219, 'Mbale', 'MBA', 1),
(3448, 219, 'Pallisa', 'PAL', 1),
(3449, 219, 'Sironko', 'SIR', 1),
(3450, 219, 'Soroti', 'SOR', 1),
(3451, 219, 'Tororo', 'TOR', 1),
(3452, 219, 'Adjumani', 'ADJ', 1),
(3453, 219, 'Apac', 'APC', 1),
(3454, 219, 'Arua', 'ARU', 1),
(3455, 219, 'Gulu', 'GUL', 1),
(3456, 219, 'Kitgum', 'KIT', 1),
(3457, 219, 'Kotido', 'KOT', 1),
(3458, 219, 'Lira', 'LIR', 1),
(3459, 219, 'Moroto', 'MRT', 1),
(3460, 219, 'Moyo', 'MOY', 1),
(3461, 219, 'Nakapiripirit', 'NAK', 1),
(3462, 219, 'Nebbi', 'NEB', 1),
(3463, 219, 'Pader', 'PAD', 1),
(3464, 219, 'Yumbe', 'YUM', 1),
(3465, 219, 'Bundibugyo', 'BUN', 1),
(3466, 219, 'Bushenyi', 'BSH', 1),
(3467, 219, 'Hoima', 'HOI', 1),
(3468, 219, 'Kabale', 'KBL', 1),
(3469, 219, 'Kabarole', 'KAR', 1),
(3470, 219, 'Kamwenge', 'KAM', 1),
(3471, 219, 'Kanungu', 'KAN', 1),
(3472, 219, 'Kasese', 'KAS', 1),
(3473, 219, 'Kibaale', 'KBA', 1),
(3474, 219, 'Kisoro', 'KIS', 1),
(3475, 219, 'Kyenjojo', 'KYE', 1),
(3476, 219, 'Masindi', 'MSN', 1),
(3477, 219, 'Mbarara', 'MBR', 1),
(3478, 219, 'Ntungamo', 'NTU', 1),
(3479, 219, 'Rukungiri', 'RUK', 1),
(3480, 220, 'Cherkas\'ka Oblast\'', '71', 1),
(3481, 220, 'Chernihivs\'ka Oblast\'', '74', 1),
(3482, 220, 'Chernivets\'ka Oblast\'', '77', 1),
(3483, 220, 'Crimea', '43', 1),
(3484, 220, 'Dnipropetrovs\'ka Oblast\'', '12', 1),
(3485, 220, 'Donets\'ka Oblast\'', '14', 1),
(3486, 220, 'Ivano-Frankivs\'ka Oblast\'', '26', 1),
(3487, 220, 'Khersons\'ka Oblast\'', '65', 1),
(3488, 220, 'Khmel\'nyts\'ka Oblast\'', '68', 1),
(3489, 220, 'Kirovohrads\'ka Oblast\'', '35', 1),
(3490, 220, 'Kyiv', '30', 1),
(3491, 220, 'Kyivs\'ka Oblast\'', '32', 1),
(3492, 220, 'Luhans\'ka Oblast\'', '09', 1),
(3493, 220, 'L\'vivs\'ka Oblast\'', '46', 1),
(3494, 220, 'Mykolayivs\'ka Oblast\'', '48', 1),
(3495, 220, 'Odes\'ka Oblast\'', '51', 1),
(3496, 220, 'Poltavs\'ka Oblast\'', '53', 1),
(3497, 220, 'Rivnens\'ka Oblast\'', '56', 1),
(3498, 220, 'Sevastopol\'', '40', 1),
(3499, 220, 'Sums\'ka Oblast\'', '59', 1),
(3500, 220, 'Ternopil\'s\'ka Oblast\'', '61', 1),
(3501, 220, 'Vinnyts\'ka Oblast\'', '05', 1),
(3502, 220, 'Volyns\'ka Oblast\'', '07', 1),
(3503, 220, 'Zakarpats\'ka Oblast\'', '21', 1),
(3504, 220, 'Zaporiz\'ka Oblast\'', '23', 1),
(3505, 220, 'Zhytomyrs\'ka oblast\'', '18', 1),
(3506, 221, 'Abu Dhabi', 'ADH', 1),
(3507, 221, '\'Ajman', 'AJ', 1),
(3508, 221, 'Al Fujayrah', 'FU', 1),
(3509, 221, 'Ash Shariqah', 'SH', 1),
(3510, 221, 'Dubai', 'DU', 1),
(3511, 221, 'R\'as al Khaymah', 'RK', 1),
(3512, 221, 'Umm al Qaywayn', 'UQ', 1),
(3513, 222, 'Aberdeen', 'ABN', 1),
(3514, 222, 'Aberdeenshire', 'ABNS', 1),
(3515, 222, 'Anglesey', 'ANG', 1),
(3516, 222, 'Angus', 'AGS', 1),
(3517, 222, 'Argyll and Bute', 'ARY', 1),
(3518, 222, 'Bedfordshire', 'BEDS', 1),
(3519, 222, 'Berkshire', 'BERKS', 1),
(3520, 222, 'Blaenau Gwent', 'BLA', 1),
(3521, 222, 'Bridgend', 'BRI', 1),
(3522, 222, 'Bristol', 'BSTL', 1),
(3523, 222, 'Buckinghamshire', 'BUCKS', 1),
(3524, 222, 'Caerphilly', 'CAE', 1),
(3525, 222, 'Cambridgeshire', 'CAMBS', 1),
(3526, 222, 'Cardiff', 'CDF', 1),
(3527, 222, 'Carmarthenshire', 'CARM', 1),
(3528, 222, 'Ceredigion', 'CDGN', 1),
(3529, 222, 'Cheshire', 'CHES', 1),
(3530, 222, 'Clackmannanshire', 'CLACK', 1),
(3531, 222, 'Conwy', 'CON', 1),
(3532, 222, 'Cornwall', 'CORN', 1),
(3533, 222, 'Denbighshire', 'DNBG', 1),
(3534, 222, 'Derbyshire', 'DERBY', 1),
(3535, 222, 'Devon', 'DVN', 1),
(3536, 222, 'Dorset', 'DOR', 1),
(3537, 222, 'Dumfries and Galloway', 'DGL', 1),
(3538, 222, 'Dundee', 'DUND', 1),
(3539, 222, 'Durham', 'DHM', 1),
(3540, 222, 'East Ayrshire', 'ARYE', 1),
(3541, 222, 'East Dunbartonshire', 'DUNBE', 1),
(3542, 222, 'East Lothian', 'LOTE', 1),
(3543, 222, 'East Renfrewshire', 'RENE', 1),
(3544, 222, 'East Riding of Yorkshire', 'ERYS', 1),
(3545, 222, 'East Sussex', 'SXE', 1),
(3546, 222, 'Edinburgh', 'EDIN', 1),
(3547, 222, 'Essex', 'ESX', 1),
(3548, 222, 'Falkirk', 'FALK', 1),
(3549, 222, 'Fife', 'FFE', 1),
(3550, 222, 'Flintshire', 'FLINT', 1),
(3551, 222, 'Glasgow', 'GLAS', 1),
(3552, 222, 'Gloucestershire', 'GLOS', 1),
(3553, 222, 'Greater London', 'LDN', 1),
(3554, 222, 'Greater Manchester', 'MCH', 1),
(3555, 222, 'Gwynedd', 'GDD', 1),
(3556, 222, 'Hampshire', 'HANTS', 1),
(3557, 222, 'Herefordshire', 'HWR', 1),
(3558, 222, 'Hertfordshire', 'HERTS', 1),
(3559, 222, 'Highlands', 'HLD', 1),
(3560, 222, 'Inverclyde', 'IVER', 1),
(3561, 222, 'Isle of Wight', 'IOW', 1),
(3562, 222, 'Kent', 'KNT', 1),
(3563, 222, 'Lancashire', 'LANCS', 1),
(3564, 222, 'Leicestershire', 'LEICS', 1),
(3565, 222, 'Lincolnshire', 'LINCS', 1),
(3566, 222, 'Merseyside', 'MSY', 1),
(3567, 222, 'Merthyr Tydfil', 'MERT', 1),
(3568, 222, 'Midlothian', 'MLOT', 1),
(3569, 222, 'Monmouthshire', 'MMOUTH', 1),
(3570, 222, 'Moray', 'MORAY', 1),
(3571, 222, 'Neath Port Talbot', 'NPRTAL', 1),
(3572, 222, 'Newport', 'NEWPT', 1),
(3573, 222, 'Norfolk', 'NOR', 1),
(3574, 222, 'North Ayrshire', 'ARYN', 1),
(3575, 222, 'North Lanarkshire', 'LANN', 1),
(3576, 222, 'North Yorkshire', 'YSN', 1),
(3577, 222, 'Northamptonshire', 'NHM', 1),
(3578, 222, 'Northumberland', 'NLD', 1),
(3579, 222, 'Nottinghamshire', 'NOT', 1),
(3580, 222, 'Orkney Islands', 'ORK', 1),
(3581, 222, 'Oxfordshire', 'OFE', 1),
(3582, 222, 'Pembrokeshire', 'PEM', 1),
(3583, 222, 'Perth and Kinross', 'PERTH', 1),
(3584, 222, 'Powys', 'PWS', 1),
(3585, 222, 'Renfrewshire', 'REN', 1),
(3586, 222, 'Rhondda Cynon Taff', 'RHON', 1),
(3587, 222, 'Rutland', 'RUT', 1),
(3588, 222, 'Scottish Borders', 'BOR', 1),
(3589, 222, 'Shetland Islands', 'SHET', 1),
(3590, 222, 'Shropshire', 'SPE', 1),
(3591, 222, 'Somerset', 'SOM', 1),
(3592, 222, 'South Ayrshire', 'ARYS', 1),
(3593, 222, 'South Lanarkshire', 'LANS', 1),
(3594, 222, 'South Yorkshire', 'YSS', 1),
(3595, 222, 'Staffordshire', 'SFD', 1),
(3596, 222, 'Stirling', 'STIR', 1),
(3597, 222, 'Suffolk', 'SFK', 1),
(3598, 222, 'Surrey', 'SRY', 1),
(3599, 222, 'Swansea', 'SWAN', 1),
(3600, 222, 'Torfaen', 'TORF', 1),
(3601, 222, 'Tyne and Wear', 'TWR', 1),
(3602, 222, 'Vale of Glamorgan', 'VGLAM', 1),
(3603, 222, 'Warwickshire', 'WARKS', 1),
(3604, 222, 'West Dunbartonshire', 'WDUN', 1),
(3605, 222, 'West Lothian', 'WLOT', 1),
(3606, 222, 'West Midlands', 'WMD', 1),
(3607, 222, 'West Sussex', 'SXW', 1),
(3608, 222, 'West Yorkshire', 'YSW', 1),
(3609, 222, 'Western Isles', 'WIL', 1),
(3610, 222, 'Wiltshire', 'WLT', 1),
(3611, 222, 'Worcestershire', 'WORCS', 1),
(3612, 222, 'Wrexham', 'WRX', 1),
(3613, 223, 'Alabama', 'AL', 1),
(3614, 223, 'Alaska', 'AK', 1),
(3615, 223, 'American Samoa', 'AS', 1),
(3616, 223, 'Arizona', 'AZ', 1),
(3617, 223, 'Arkansas', 'AR', 1),
(3618, 223, 'Armed Forces Africa', 'AF', 1),
(3619, 223, 'Armed Forces Americas', 'AA', 1),
(3620, 223, 'Armed Forces Canada', 'AC', 1),
(3621, 223, 'Armed Forces Europe', 'AE', 1),
(3622, 223, 'Armed Forces Middle East', 'AM', 1),
(3623, 223, 'Armed Forces Pacific', 'AP', 1),
(3624, 223, 'California', 'CA', 1),
(3625, 223, 'Colorado', 'CO', 1),
(3626, 223, 'Connecticut', 'CT', 1),
(3627, 223, 'Delaware', 'DE', 1),
(3628, 223, 'District of Columbia', 'DC', 1),
(3629, 223, 'Federated States Of Micronesia', 'FM', 1),
(3630, 223, 'Florida', 'FL', 1),
(3631, 223, 'Georgia', 'GA', 1),
(3632, 223, 'Guam', 'GU', 1),
(3633, 223, 'Hawaii', 'HI', 1),
(3634, 223, 'Idaho', 'ID', 1),
(3635, 223, 'Illinois', 'IL', 1),
(3636, 223, 'Indiana', 'IN', 1),
(3637, 223, 'Iowa', 'IA', 1),
(3638, 223, 'Kansas', 'KS', 1),
(3639, 223, 'Kentucky', 'KY', 1),
(3640, 223, 'Louisiana', 'LA', 1),
(3641, 223, 'Maine', 'ME', 1),
(3642, 223, 'Marshall Islands', 'MH', 1),
(3643, 223, 'Maryland', 'MD', 1),
(3644, 223, 'Massachusetts', 'MA', 1),
(3645, 223, 'Michigan', 'MI', 1),
(3646, 223, 'Minnesota', 'MN', 1),
(3647, 223, 'Mississippi', 'MS', 1),
(3648, 223, 'Missouri', 'MO', 1),
(3649, 223, 'Montana', 'MT', 1),
(3650, 223, 'Nebraska', 'NE', 1),
(3651, 223, 'Nevada', 'NV', 1),
(3652, 223, 'New Hampshire', 'NH', 1),
(3653, 223, 'New Jersey', 'NJ', 1),
(3654, 223, 'New Mexico', 'NM', 1),
(3655, 223, 'New York', 'NY', 1),
(3656, 223, 'North Carolina', 'NC', 1),
(3657, 223, 'North Dakota', 'ND', 1),
(3658, 223, 'Northern Mariana Islands', 'MP', 1),
(3659, 223, 'Ohio', 'OH', 1),
(3660, 223, 'Oklahoma', 'OK', 1),
(3661, 223, 'Oregon', 'OR', 1),
(3662, 223, 'Palau', 'PW', 1),
(3663, 223, 'Pennsylvania', 'PA', 1),
(3664, 223, 'Puerto Rico', 'PR', 1),
(3665, 223, 'Rhode Island', 'RI', 1),
(3666, 223, 'South Carolina', 'SC', 1),
(3667, 223, 'South Dakota', 'SD', 1),
(3668, 223, 'Tennessee', 'TN', 1),
(3669, 223, 'Texas', 'TX', 1),
(3670, 223, 'Utah', 'UT', 1),
(3671, 223, 'Vermont', 'VT', 1),
(3672, 223, 'Virgin Islands', 'VI', 1),
(3673, 223, 'Virginia', 'VA', 1),
(3674, 223, 'Washington', 'WA', 1),
(3675, 223, 'West Virginia', 'WV', 1),
(3676, 223, 'Wisconsin', 'WI', 1),
(3677, 223, 'Wyoming', 'WY', 1),
(3678, 224, 'Baker Island', 'BI', 1),
(3679, 224, 'Howland Island', 'HI', 1),
(3680, 224, 'Jarvis Island', 'JI', 1),
(3681, 224, 'Johnston Atoll', 'JA', 1),
(3682, 224, 'Kingman Reef', 'KR', 1),
(3683, 224, 'Midway Atoll', 'MA', 1),
(3684, 224, 'Navassa Island', 'NI', 1),
(3685, 224, 'Palmyra Atoll', 'PA', 1),
(3686, 224, 'Wake Island', 'WI', 1),
(3687, 225, 'Artigas', 'AR', 1),
(3688, 225, 'Canelones', 'CA', 1),
(3689, 225, 'Cerro Largo', 'CL', 1),
(3690, 225, 'Colonia', 'CO', 1),
(3691, 225, 'Durazno', 'DU', 1),
(3692, 225, 'Flores', 'FS', 1),
(3693, 225, 'Florida', 'FA', 1),
(3694, 225, 'Lavalleja', 'LA', 1),
(3695, 225, 'Maldonado', 'MA', 1),
(3696, 225, 'Montevideo', 'MO', 1),
(3697, 225, 'Paysandu', 'PA', 1),
(3698, 225, 'Rio Negro', 'RN', 1),
(3699, 225, 'Rivera', 'RV', 1),
(3700, 225, 'Rocha', 'RO', 1),
(3701, 225, 'Salto', 'SL', 1),
(3702, 225, 'San Jose', 'SJ', 1),
(3703, 225, 'Soriano', 'SO', 1),
(3704, 225, 'Tacuarembo', 'TA', 1),
(3705, 225, 'Treinta y Tres', 'TT', 1),
(3706, 226, 'Andijon', 'AN', 1),
(3707, 226, 'Buxoro', 'BU', 1),
(3708, 226, 'Farg\'ona', 'FA', 1),
(3709, 226, 'Jizzax', 'JI', 1),
(3710, 226, 'Namangan', 'NG', 1),
(3711, 226, 'Navoiy', 'NW', 1),
(3712, 226, 'Qashqadaryo', 'QA', 1),
(3713, 226, 'Qoraqalpog\'iston Republikasi', 'QR', 1),
(3714, 226, 'Samarqand', 'SA', 1),
(3715, 226, 'Sirdaryo', 'SI', 1),
(3716, 226, 'Surxondaryo', 'SU', 1),
(3717, 226, 'Toshkent City', 'TK', 1),
(3718, 226, 'Toshkent Region', 'TO', 1),
(3719, 226, 'Xorazm', 'XO', 1),
(3720, 227, 'Malampa', 'MA', 1),
(3721, 227, 'Penama', 'PE', 1),
(3722, 227, 'Sanma', 'SA', 1),
(3723, 227, 'Shefa', 'SH', 1),
(3724, 227, 'Tafea', 'TA', 1),
(3725, 227, 'Torba', 'TO', 1),
(3726, 229, 'Amazonas', 'AM', 1),
(3727, 229, 'Anzoategui', 'AN', 1),
(3728, 229, 'Apure', 'AP', 1),
(3729, 229, 'Aragua', 'AR', 1),
(3730, 229, 'Barinas', 'BA', 1),
(3731, 229, 'Bolivar', 'BO', 1),
(3732, 229, 'Carabobo', 'CA', 1),
(3733, 229, 'Cojedes', 'CO', 1),
(3734, 229, 'Delta Amacuro', 'DA', 1),
(3735, 229, 'Dependencias Federales', 'DF', 1),
(3736, 229, 'Distrito Federal', 'DI', 1),
(3737, 229, 'Falcon', 'FA', 1),
(3738, 229, 'Guarico', 'GU', 1),
(3739, 229, 'Lara', 'LA', 1),
(3740, 229, 'Merida', 'ME', 1),
(3741, 229, 'Miranda', 'MI', 1),
(3742, 229, 'Monagas', 'MO', 1),
(3743, 229, 'Nueva Esparta', 'NE', 1),
(3744, 229, 'Portuguesa', 'PO', 1),
(3745, 229, 'Sucre', 'SU', 1),
(3746, 229, 'Tachira', 'TA', 1),
(3747, 229, 'Trujillo', 'TR', 1),
(3748, 229, 'Vargas', 'VA', 1),
(3749, 229, 'Yaracuy', 'YA', 1),
(3750, 229, 'Zulia', 'ZU', 1),
(3751, 230, 'An Giang', 'AG', 1),
(3752, 230, 'Bac Giang', 'BG', 1),
(3753, 230, 'Bac Kan', 'BK', 1),
(3754, 230, 'Bac Lieu', 'BL', 1),
(3755, 230, 'Bac Ninh', 'BC', 1),
(3756, 230, 'Ba Ria-Vung Tau', 'BR', 1),
(3757, 230, 'Ben Tre', 'BN', 1),
(3758, 230, 'Binh Dinh', 'BH', 1),
(3759, 230, 'Binh Duong', 'BU', 1),
(3760, 230, 'Binh Phuoc', 'BP', 1),
(3761, 230, 'Binh Thuan', 'BT', 1),
(3762, 230, 'Ca Mau', 'CM', 1),
(3763, 230, 'Can Tho', 'CT', 1),
(3764, 230, 'Cao Bang', 'CB', 1),
(3765, 230, 'Dak Lak', 'DL', 1),
(3766, 230, 'Dak Nong', 'DG', 1),
(3767, 230, 'Da Nang', 'DN', 1),
(3768, 230, 'Dien Bien', 'DB', 1),
(3769, 230, 'Dong Nai', 'DI', 1),
(3770, 230, 'Dong Thap', 'DT', 1),
(3771, 230, 'Gia Lai', 'GL', 1),
(3772, 230, 'Ha Giang', 'HG', 1),
(3773, 230, 'Hai Duong', 'HD', 1),
(3774, 230, 'Hai Phong', 'HP', 1),
(3775, 230, 'Ha Nam', 'HM', 1),
(3776, 230, 'Ha Noi', 'HI', 1),
(3777, 230, 'Ha Tay', 'HT', 1),
(3778, 230, 'Ha Tinh', 'HH', 1),
(3779, 230, 'Hoa Binh', 'HB', 1),
(3780, 230, 'Ho Chi Minh City', 'HC', 1),
(3781, 230, 'Hau Giang', 'HU', 1),
(3782, 230, 'Hung Yen', 'HY', 1),
(3783, 232, 'Saint Croix', 'C', 1),
(3784, 232, 'Saint John', 'J', 1),
(3785, 232, 'Saint Thomas', 'T', 1),
(3786, 233, 'Alo', 'A', 1),
(3787, 233, 'Sigave', 'S', 1),
(3788, 233, 'Wallis', 'W', 1),
(3789, 235, 'Abyan', 'AB', 1),
(3790, 235, 'Adan', 'AD', 1),
(3791, 235, 'Amran', 'AM', 1),
(3792, 235, 'Al Bayda', 'BA', 1),
(3793, 235, 'Ad Dali', 'DA', 1),
(3794, 235, 'Dhamar', 'DH', 1),
(3795, 235, 'Hadramawt', 'HD', 1),
(3796, 235, 'Hajjah', 'HJ', 1),
(3797, 235, 'Al Hudaydah', 'HU', 1),
(3798, 235, 'Ibb', 'IB', 1),
(3799, 235, 'Al Jawf', 'JA', 1),
(3800, 235, 'Lahij', 'LA', 1),
(3801, 235, 'Ma\'rib', 'MA', 1),
(3802, 235, 'Al Mahrah', 'MR', 1),
(3803, 235, 'Al Mahwit', 'MW', 1),
(3804, 235, 'Sa\'dah', 'SD', 1),
(3805, 235, 'San\'a', 'SN', 1),
(3806, 235, 'Shabwah', 'SH', 1),
(3807, 235, 'Ta\'izz', 'TA', 1),
(3812, 237, 'Bas-Congo', 'BC', 1),
(3813, 237, 'Bandundu', 'BN', 1),
(3814, 237, 'Equateur', 'EQ', 1),
(3815, 237, 'Katanga', 'KA', 1),
(3816, 237, 'Kasai-Oriental', 'KE', 1),
(3817, 237, 'Kinshasa', 'KN', 1),
(3818, 237, 'Kasai-Occidental', 'KW', 1),
(3819, 237, 'Maniema', 'MA', 1),
(3820, 237, 'Nord-Kivu', 'NK', 1),
(3821, 237, 'Orientale', 'OR', 1),
(3822, 237, 'Sud-Kivu', 'SK', 1),
(3823, 238, 'Central', 'CE', 1),
(3824, 238, 'Copperbelt', 'CB', 1),
(3825, 238, 'Eastern', 'EA', 1),
(3826, 238, 'Luapula', 'LP', 1),
(3827, 238, 'Lusaka', 'LK', 1),
(3828, 238, 'Northern', 'NO', 1),
(3829, 238, 'North-Western', 'NW', 1),
(3830, 238, 'Southern', 'SO', 1),
(3831, 238, 'Western', 'WE', 1),
(3832, 239, 'Bulawayo', 'BU', 1),
(3833, 239, 'Harare', 'HA', 1),
(3834, 239, 'Manicaland', 'ML', 1),
(3835, 239, 'Mashonaland Central', 'MC', 1),
(3836, 239, 'Mashonaland East', 'ME', 1),
(3837, 239, 'Mashonaland West', 'MW', 1),
(3838, 239, 'Masvingo', 'MV', 1),
(3839, 239, 'Matabeleland North', 'MN', 1),
(3840, 239, 'Matabeleland South', 'MS', 1),
(3841, 239, 'Midlands', 'MD', 1),
(3861, 105, 'Campobasso', 'CB', 1),
(3862, 105, 'Carbonia-Iglesias', 'CI', 1),
(3863, 105, 'Caserta', 'CE', 1),
(3864, 105, 'Catania', 'CT', 1),
(3865, 105, 'Catanzaro', 'CZ', 1),
(3866, 105, 'Chieti', 'CH', 1),
(3867, 105, 'Como', 'CO', 1),
(3868, 105, 'Cosenza', 'CS', 1),
(3869, 105, 'Cremona', 'CR', 1),
(3870, 105, 'Crotone', 'KR', 1),
(3871, 105, 'Cuneo', 'CN', 1),
(3872, 105, 'Enna', 'EN', 1),
(3873, 105, 'Ferrara', 'FE', 1),
(3874, 105, 'Firenze', 'FI', 1),
(3875, 105, 'Foggia', 'FG', 1),
(3876, 105, 'Forli-Cesena', 'FC', 1),
(3877, 105, 'Frosinone', 'FR', 1),
(3878, 105, 'Genova', 'GE', 1),
(3879, 105, 'Gorizia', 'GO', 1),
(3880, 105, 'Grosseto', 'GR', 1),
(3881, 105, 'Imperia', 'IM', 1),
(3882, 105, 'Isernia', 'IS', 1),
(3883, 105, 'L&#39;Aquila', 'AQ', 1),
(3884, 105, 'La Spezia', 'SP', 1),
(3885, 105, 'Latina', 'LT', 1),
(3886, 105, 'Lecce', 'LE', 1),
(3887, 105, 'Lecco', 'LC', 1),
(3888, 105, 'Livorno', 'LI', 1),
(3889, 105, 'Lodi', 'LO', 1),
(3890, 105, 'Lucca', 'LU', 1),
(3891, 105, 'Macerata', 'MC', 1),
(3892, 105, 'Mantova', 'MN', 1),
(3893, 105, 'Massa-Carrara', 'MS', 1),
(3894, 105, 'Matera', 'MT', 1),
(3895, 105, 'Medio Campidano', 'VS', 1),
(3896, 105, 'Messina', 'ME', 1),
(3897, 105, 'Milano', 'MI', 1),
(3898, 105, 'Modena', 'MO', 1),
(3899, 105, 'Napoli', 'NA', 1),
(3900, 105, 'Novara', 'NO', 1),
(3901, 105, 'Nuoro', 'NU', 1),
(3902, 105, 'Ogliastra', 'OG', 1),
(3903, 105, 'Olbia-Tempio', 'OT', 1),
(3904, 105, 'Oristano', 'OR', 1),
(3905, 105, 'Padova', 'PD', 1),
(3906, 105, 'Palermo', 'PA', 1),
(3907, 105, 'Parma', 'PR', 1),
(3908, 105, 'Pavia', 'PV', 1),
(3909, 105, 'Perugia', 'PG', 1),
(3910, 105, 'Pesaro e Urbino', 'PU', 1),
(3911, 105, 'Pescara', 'PE', 1),
(3912, 105, 'Piacenza', 'PC', 1),
(3913, 105, 'Pisa', 'PI', 1),
(3914, 105, 'Pistoia', 'PT', 1),
(3915, 105, 'Pordenone', 'PN', 1),
(3916, 105, 'Potenza', 'PZ', 1),
(3917, 105, 'Prato', 'PO', 1),
(3918, 105, 'Ragusa', 'RG', 1),
(3919, 105, 'Ravenna', 'RA', 1),
(3920, 105, 'Reggio Calabria', 'RC', 1),
(3921, 105, 'Reggio Emilia', 'RE', 1),
(3922, 105, 'Rieti', 'RI', 1),
(3923, 105, 'Rimini', 'RN', 1),
(3924, 105, 'Roma', 'RM', 1),
(3925, 105, 'Rovigo', 'RO', 1),
(3926, 105, 'Salerno', 'SA', 1),
(3927, 105, 'Sassari', 'SS', 1),
(3928, 105, 'Savona', 'SV', 1),
(3929, 105, 'Siena', 'SI', 1),
(3930, 105, 'Siracusa', 'SR', 1),
(3931, 105, 'Sondrio', 'SO', 1),
(3932, 105, 'Taranto', 'TA', 1),
(3933, 105, 'Teramo', 'TE', 1),
(3934, 105, 'Terni', 'TR', 1),
(3935, 105, 'Torino', 'TO', 1),
(3936, 105, 'Trapani', 'TP', 1),
(3937, 105, 'Trento', 'TN', 1),
(3938, 105, 'Treviso', 'TV', 1),
(3939, 105, 'Trieste', 'TS', 1),
(3940, 105, 'Udine', 'UD', 1),
(3941, 105, 'Varese', 'VA', 1),
(3942, 105, 'Venezia', 'VE', 1),
(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 1),
(3944, 105, 'Vercelli', 'VC', 1),
(3945, 105, 'Verona', 'VR', 1),
(3946, 105, 'Vibo Valentia', 'VV', 1),
(3947, 105, 'Vicenza', 'VI', 1),
(3948, 105, 'Viterbo', 'VT', 1),
(3949, 222, 'County Antrim', 'ANT', 1),
(3950, 222, 'County Armagh', 'ARM', 1),
(3951, 222, 'County Down', 'DOW', 1),
(3952, 222, 'County Fermanagh', 'FER', 1),
(3953, 222, 'County Londonderry', 'LDY', 1),
(3954, 222, 'County Tyrone', 'TYR', 1),
(3955, 222, 'Cumbria', 'CMA', 1),
(3956, 190, 'Pomurska', '1', 1),
(3957, 190, 'Podravska', '2', 1),
(3958, 190, 'Koroška', '3', 1),
(3959, 190, 'Savinjska', '4', 1),
(3960, 190, 'Zasavska', '5', 1),
(3961, 190, 'Spodnjeposavska', '6', 1),
(3962, 190, 'Jugovzhodna Slovenija', '7', 1),
(3963, 190, 'Osrednjeslovenska', '8', 1),
(3964, 190, 'Gorenjska', '9', 1),
(3965, 190, 'Notranjsko-kraška', '10', 1),
(3966, 190, 'Goriška', '11', 1),
(3967, 190, 'Obalno-kraška', '12', 1),
(3968, 33, 'Ruse', '', 1),
(3969, 101, 'Alborz', 'ALB', 1),
(3970, 21, 'Brussels-Capital Region', 'BRU', 1),
(3971, 138, 'Aguascalientes', 'AG', 1),
(3973, 242, 'Andrijevica', '01', 1),
(3974, 242, 'Bar', '02', 1),
(3975, 242, 'Berane', '03', 1),
(3976, 242, 'Bijelo Polje', '04', 1),
(3977, 242, 'Budva', '05', 1),
(3978, 242, 'Cetinje', '06', 1),
(3979, 242, 'Danilovgrad', '07', 1),
(3980, 242, 'Herceg-Novi', '08', 1),
(3981, 242, 'Kolašin', '09', 1),
(3982, 242, 'Kotor', '10', 1),
(3983, 242, 'Mojkovac', '11', 1),
(3984, 242, 'Nikšić', '12', 1),
(3985, 242, 'Plav', '13', 1),
(3986, 242, 'Pljevlja', '14', 1),
(3987, 242, 'Plužine', '15', 1),
(3988, 242, 'Podgorica', '16', 1),
(3989, 242, 'Rožaje', '17', 1),
(3990, 242, 'Šavnik', '18', 1),
(3991, 242, 'Tivat', '19', 1),
(3992, 242, 'Ulcinj', '20', 1),
(3993, 242, 'Žabljak', '21', 1),
(3994, 243, 'Belgrade', '00', 1),
(3995, 243, 'North Bačka', '01', 1),
(3996, 243, 'Central Banat', '02', 1),
(3997, 243, 'North Banat', '03', 1),
(3998, 243, 'South Banat', '04', 1),
(3999, 243, 'West Bačka', '05', 1),
(4000, 243, 'South Bačka', '06', 1),
(4001, 243, 'Srem', '07', 1),
(4002, 243, 'Mačva', '08', 1),
(4003, 243, 'Kolubara', '09', 1),
(4004, 243, 'Podunavlje', '10', 1),
(4005, 243, 'Braničevo', '11', 1),
(4006, 243, 'Šumadija', '12', 1),
(4007, 243, 'Pomoravlje', '13', 1),
(4008, 243, 'Bor', '14', 1),
(4009, 243, 'Zaječar', '15', 1),
(4010, 243, 'Zlatibor', '16', 1),
(4011, 243, 'Moravica', '17', 1),
(4012, 243, 'Raška', '18', 1),
(4013, 243, 'Rasina', '19', 1),
(4014, 243, 'Nišava', '20', 1),
(4015, 243, 'Toplica', '21', 1),
(4016, 243, 'Pirot', '22', 1),
(4017, 243, 'Jablanica', '23', 1),
(4018, 243, 'Pčinja', '24', 1),
(4020, 245, 'Bonaire', 'BO', 1),
(4021, 245, 'Saba', 'SA', 1),
(4022, 245, 'Sint Eustatius', 'SE', 1),
(4023, 248, 'Central Equatoria', 'EC', 1),
(4024, 248, 'Eastern Equatoria', 'EE', 1),
(4025, 248, 'Jonglei', 'JG', 1),
(4026, 248, 'Lakes', 'LK', 1),
(4027, 248, 'Northern Bahr el-Ghazal', 'BN', 1),
(4028, 248, 'Unity', 'UY', 1),
(4029, 248, 'Upper Nile', 'NU', 1),
(4030, 248, 'Warrap', 'WR', 1),
(4031, 248, 'Western Bahr el-Ghazal', 'BW', 1),
(4032, 248, 'Western Equatoria', 'EW', 1),
(4036, 117, 'Ainaži, Salacgrīvas novads', '0661405', 1),
(4037, 117, 'Aizkraukle, Aizkraukles novads', '0320201', 1),
(4038, 117, 'Aizkraukles novads', '0320200', 1),
(4039, 117, 'Aizpute, Aizputes novads', '0640605', 1),
(4040, 117, 'Aizputes novads', '0640600', 1),
(4041, 117, 'Aknīste, Aknīstes novads', '0560805', 1),
(4042, 117, 'Aknīstes novads', '0560800', 1),
(4043, 117, 'Aloja, Alojas novads', '0661007', 1),
(4044, 117, 'Alojas novads', '0661000', 1),
(4045, 117, 'Alsungas novads', '0624200', 1),
(4046, 117, 'Alūksne, Alūksnes novads', '0360201', 1),
(4047, 117, 'Alūksnes novads', '0360200', 1),
(4048, 117, 'Amatas novads', '0424701', 1),
(4049, 117, 'Ape, Apes novads', '0360805', 1),
(4050, 117, 'Apes novads', '0360800', 1),
(4051, 117, 'Auce, Auces novads', '0460805', 1),
(4052, 117, 'Auces novads', '0460800', 1),
(4053, 117, 'Ādažu novads', '0804400', 1),
(4054, 117, 'Babītes novads', '0804900', 1),
(4055, 117, 'Baldone, Baldones novads', '0800605', 1),
(4056, 117, 'Baldones novads', '0800600', 1),
(4057, 117, 'Baloži, Ķekavas novads', '0800807', 1),
(4058, 117, 'Baltinavas novads', '0384400', 1),
(4059, 117, 'Balvi, Balvu novads', '0380201', 1),
(4060, 117, 'Balvu novads', '0380200', 1),
(4061, 117, 'Bauska, Bauskas novads', '0400201', 1),
(4062, 117, 'Bauskas novads', '0400200', 1),
(4063, 117, 'Beverīnas novads', '0964700', 1),
(4064, 117, 'Brocēni, Brocēnu novads', '0840605', 1),
(4065, 117, 'Brocēnu novads', '0840601', 1),
(4066, 117, 'Burtnieku novads', '0967101', 1),
(4067, 117, 'Carnikavas novads', '0805200', 1),
(4068, 117, 'Cesvaine, Cesvaines novads', '0700807', 1),
(4069, 117, 'Cesvaines novads', '0700800', 1),
(4070, 117, 'Cēsis, Cēsu novads', '0420201', 1),
(4071, 117, 'Cēsu novads', '0420200', 1),
(4072, 117, 'Ciblas novads', '0684901', 1),
(4073, 117, 'Dagda, Dagdas novads', '0601009', 1),
(4074, 117, 'Dagdas novads', '0601000', 1),
(4075, 117, 'Daugavpils', '0050000', 1),
(4076, 117, 'Daugavpils novads', '0440200', 1),
(4077, 117, 'Dobele, Dobeles novads', '0460201', 1),
(4078, 117, 'Dobeles novads', '0460200', 1),
(4079, 117, 'Dundagas novads', '0885100', 1),
(4080, 117, 'Durbe, Durbes novads', '0640807', 1),
(4081, 117, 'Durbes novads', '0640801', 1),
(4082, 117, 'Engures novads', '0905100', 1),
(4083, 117, 'Ērgļu novads', '0705500', 1),
(4084, 117, 'Garkalnes novads', '0806000', 1),
(4085, 117, 'Grobiņa, Grobiņas novads', '0641009', 1),
(4086, 117, 'Grobiņas novads', '0641000', 1),
(4087, 117, 'Gulbene, Gulbenes novads', '0500201', 1),
(4088, 117, 'Gulbenes novads', '0500200', 1),
(4089, 117, 'Iecavas novads', '0406400', 1),
(4090, 117, 'Ikšķile, Ikšķiles novads', '0740605', 1),
(4091, 117, 'Ikšķiles novads', '0740600', 1),
(4092, 117, 'Ilūkste, Ilūkstes novads', '0440807', 1),
(4093, 117, 'Ilūkstes novads', '0440801', 1),
(4094, 117, 'Inčukalna novads', '0801800', 1),
(4095, 117, 'Jaunjelgava, Jaunjelgavas novads', '0321007', 1),
(4096, 117, 'Jaunjelgavas novads', '0321000', 1),
(4097, 117, 'Jaunpiebalgas novads', '0425700', 1),
(4098, 117, 'Jaunpils novads', '0905700', 1),
(4099, 117, 'Jelgava', '0090000', 1),
(4100, 117, 'Jelgavas novads', '0540200', 1),
(4101, 117, 'Jēkabpils', '0110000', 1),
(4102, 117, 'Jēkabpils novads', '0560200', 1),
(4103, 117, 'Jūrmala', '0130000', 1),
(4104, 117, 'Kalnciems, Jelgavas novads', '0540211', 1),
(4105, 117, 'Kandava, Kandavas novads', '0901211', 1),
(4106, 117, 'Kandavas novads', '0901201', 1),
(4107, 117, 'Kārsava, Kārsavas novads', '0681009', 1),
(4108, 117, 'Kārsavas novads', '0681000', 1),
(4109, 117, 'Kocēnu novads ,bij. Valmieras)', '0960200', 1),
(4110, 117, 'Kokneses novads', '0326100', 1),
(4111, 117, 'Krāslava, Krāslavas novads', '0600201', 1),
(4112, 117, 'Krāslavas novads', '0600202', 1),
(4113, 117, 'Krimuldas novads', '0806900', 1),
(4114, 117, 'Krustpils novads', '0566900', 1),
(4115, 117, 'Kuldīga, Kuldīgas novads', '0620201', 1),
(4116, 117, 'Kuldīgas novads', '0620200', 1),
(4117, 117, 'Ķeguma novads', '0741001', 1),
(4118, 117, 'Ķegums, Ķeguma novads', '0741009', 1),
(4119, 117, 'Ķekavas novads', '0800800', 1),
(4120, 117, 'Lielvārde, Lielvārdes novads', '0741413', 1),
(4121, 117, 'Lielvārdes novads', '0741401', 1),
(4122, 117, 'Liepāja', '0170000', 1),
(4123, 117, 'Limbaži, Limbažu novads', '0660201', 1),
(4124, 117, 'Limbažu novads', '0660200', 1),
(4125, 117, 'Līgatne, Līgatnes novads', '0421211', 1),
(4126, 117, 'Līgatnes novads', '0421200', 1),
(4127, 117, 'Līvāni, Līvānu novads', '0761211', 1),
(4128, 117, 'Līvānu novads', '0761201', 1),
(4129, 117, 'Lubāna, Lubānas novads', '0701413', 1),
(4130, 117, 'Lubānas novads', '0701400', 1),
(4131, 117, 'Ludza, Ludzas novads', '0680201', 1),
(4132, 117, 'Ludzas novads', '0680200', 1),
(4133, 117, 'Madona, Madonas novads', '0700201', 1),
(4134, 117, 'Madonas novads', '0700200', 1),
(4135, 117, 'Mazsalaca, Mazsalacas novads', '0961011', 1),
(4136, 117, 'Mazsalacas novads', '0961000', 1),
(4137, 117, 'Mālpils novads', '0807400', 1),
(4138, 117, 'Mārupes novads', '0807600', 1),
(4139, 117, 'Mērsraga novads', '0887600', 1),
(4140, 117, 'Naukšēnu novads', '0967300', 1),
(4141, 117, 'Neretas novads', '0327100', 1),
(4142, 117, 'Nīcas novads', '0647900', 1),
(4143, 117, 'Ogre, Ogres novads', '0740201', 1),
(4144, 117, 'Ogres novads', '0740202', 1),
(4145, 117, 'Olaine, Olaines novads', '0801009', 1),
(4146, 117, 'Olaines novads', '0801000', 1),
(4147, 117, 'Ozolnieku novads', '0546701', 1),
(4148, 117, 'Pārgaujas novads', '0427500', 1),
(4149, 117, 'Pāvilosta, Pāvilostas novads', '0641413', 1),
(4150, 117, 'Pāvilostas novads', '0641401', 1),
(4151, 117, 'Piltene, Ventspils novads', '0980213', 1),
(4152, 117, 'Pļaviņas, Pļaviņu novads', '0321413', 1),
(4153, 117, 'Pļaviņu novads', '0321400', 1),
(4154, 117, 'Preiļi, Preiļu novads', '0760201', 1),
(4155, 117, 'Preiļu novads', '0760202', 1),
(4156, 117, 'Priekule, Priekules novads', '0641615', 1),
(4157, 117, 'Priekules novads', '0641600', 1),
(4158, 117, 'Priekuļu novads', '0427300', 1),
(4159, 117, 'Raunas novads', '0427700', 1),
(4160, 117, 'Rēzekne', '0210000', 1),
(4161, 117, 'Rēzeknes novads', '0780200', 1),
(4162, 117, 'Riebiņu novads', '0766300', 1),
(4163, 117, 'Rīga', '0010000', 1),
(4164, 117, 'Rojas novads', '0888300', 1),
(4165, 117, 'Ropažu novads', '0808400', 1),
(4166, 117, 'Rucavas novads', '0648500', 1),
(4167, 117, 'Rugāju novads', '0387500', 1),
(4168, 117, 'Rundāles novads', '0407700', 1),
(4169, 117, 'Rūjiena, Rūjienas novads', '0961615', 1),
(4170, 117, 'Rūjienas novads', '0961600', 1),
(4171, 117, 'Sabile, Talsu novads', '0880213', 1),
(4172, 117, 'Salacgrīva, Salacgrīvas novads', '0661415', 1),
(4173, 117, 'Salacgrīvas novads', '0661400', 1),
(4174, 117, 'Salas novads', '0568700', 1),
(4175, 117, 'Salaspils novads', '0801200', 1),
(4176, 117, 'Salaspils, Salaspils novads', '0801211', 1),
(4177, 117, 'Saldus novads', '0840200', 1),
(4178, 117, 'Saldus, Saldus novads', '0840201', 1),
(4179, 117, 'Saulkrasti, Saulkrastu novads', '0801413', 1),
(4180, 117, 'Saulkrastu novads', '0801400', 1),
(4181, 117, 'Seda, Strenču novads', '0941813', 1),
(4182, 117, 'Sējas novads', '0809200', 1),
(4183, 117, 'Sigulda, Siguldas novads', '0801615', 1),
(4184, 117, 'Siguldas novads', '0801601', 1),
(4185, 117, 'Skrīveru novads', '0328200', 1),
(4186, 117, 'Skrunda, Skrundas novads', '0621209', 1),
(4187, 117, 'Skrundas novads', '0621200', 1),
(4188, 117, 'Smiltene, Smiltenes novads', '0941615', 1),
(4189, 117, 'Smiltenes novads', '0941600', 1),
(4190, 117, 'Staicele, Alojas novads', '0661017', 1),
(4191, 117, 'Stende, Talsu novads', '0880215', 1),
(4192, 117, 'Stopiņu novads', '0809600', 1),
(4193, 117, 'Strenči, Strenču novads', '0941817', 1),
(4194, 117, 'Strenču novads', '0941800', 1),
(4195, 117, 'Subate, Ilūkstes novads', '0440815', 1),
(4196, 117, 'Talsi, Talsu novads', '0880201', 1),
(4197, 117, 'Talsu novads', '0880200', 1),
(4198, 117, 'Tērvetes novads', '0468900', 1),
(4199, 117, 'Tukuma novads', '0900200', 1),
(4200, 117, 'Tukums, Tukuma novads', '0900201', 1),
(4201, 117, 'Vaiņodes novads', '0649300', 1),
(4202, 117, 'Valdemārpils, Talsu novads', '0880217', 1),
(4203, 117, 'Valka, Valkas novads', '0940201', 1),
(4204, 117, 'Valkas novads', '0940200', 1),
(4205, 117, 'Valmiera', '0250000', 1),
(4206, 117, 'Vangaži, Inčukalna novads', '0801817', 1),
(4207, 117, 'Varakļāni, Varakļānu novads', '0701817', 1),
(4208, 117, 'Varakļānu novads', '0701800', 1),
(4209, 117, 'Vārkavas novads', '0769101', 1),
(4210, 117, 'Vecpiebalgas novads', '0429300', 1),
(4211, 117, 'Vecumnieku novads', '0409500', 1),
(4212, 117, 'Ventspils', '0270000', 1),
(4213, 117, 'Ventspils novads', '0980200', 1),
(4214, 117, 'Viesīte, Viesītes novads', '0561815', 1),
(4215, 117, 'Viesītes novads', '0561800', 1),
(4216, 117, 'Viļaka, Viļakas novads', '0381615', 1),
(4217, 117, 'Viļakas novads', '0381600', 1),
(4218, 117, 'Viļāni, Viļānu novads', '0781817', 1),
(4219, 117, 'Viļānu novads', '0781800', 1),
(4220, 117, 'Zilupe, Zilupes novads', '0681817', 1),
(4221, 117, 'Zilupes novads', '0681801', 1),
(4222, 43, 'Arica y Parinacota', 'AP', 1),
(4223, 43, 'Los Rios', 'LR', 1),
(4224, 220, 'Kharkivs\'ka Oblast\'', '63', 1),
(4225, 118, 'Beirut', 'LB-BR', 1),
(4226, 118, 'Bekaa', 'LB-BE', 1),
(4227, 118, 'Mount Lebanon', 'LB-ML', 1),
(4228, 118, 'Nabatieh', 'LB-NB', 1),
(4229, 118, 'North', 'LB-NR', 1),
(4230, 118, 'South', 'LB-ST', 1),
(4231, 99, 'Telangana', 'TS', 1),
(4232, 44, 'Qinghai', 'QH', 1),
(4233, 100, 'Papua Barat', 'PB', 1),
(4234, 100, 'Sulawesi Barat', 'SR', 1),
(4235, 100, 'Kepulauan Riau', 'KR', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `oc_zone_to_geo_zone`
--

CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(1, 222, 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 222, 3513, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 222, 3514, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 222, 3515, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 222, 3516, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 222, 3517, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 222, 3518, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 222, 3519, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 222, 3520, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 222, 3521, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 222, 3522, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 222, 3523, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 222, 3524, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 222, 3525, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 222, 3526, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 222, 3527, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 222, 3528, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 222, 3529, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 222, 3530, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 222, 3531, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 222, 3532, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 222, 3533, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 222, 3534, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 222, 3535, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 222, 3536, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 222, 3537, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 222, 3538, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 222, 3539, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 222, 3540, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 222, 3541, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 222, 3542, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 222, 3543, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 222, 3544, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 222, 3545, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 222, 3546, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 222, 3547, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 222, 3548, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 222, 3549, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 222, 3550, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 222, 3551, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 222, 3552, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 222, 3553, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 222, 3554, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 222, 3555, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 222, 3556, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 222, 3557, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 222, 3558, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 222, 3559, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 222, 3560, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 222, 3561, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 222, 3562, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 222, 3563, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 222, 3564, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 222, 3565, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 222, 3566, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 222, 3567, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 222, 3568, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 222, 3569, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 222, 3570, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 222, 3571, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 222, 3572, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 222, 3573, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 222, 3574, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 222, 3575, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 222, 3576, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 222, 3577, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 222, 3578, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 222, 3579, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 222, 3580, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 222, 3581, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 222, 3582, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 222, 3583, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 222, 3584, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 222, 3585, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 222, 3586, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 222, 3587, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 222, 3588, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 222, 3589, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 222, 3590, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 222, 3591, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 222, 3592, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 222, 3593, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 222, 3594, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 222, 3595, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 222, 3596, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 222, 3597, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 222, 3598, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 222, 3599, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 222, 3600, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 222, 3601, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 222, 3602, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 222, 3603, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 222, 3604, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 222, 3605, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 222, 3606, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 222, 3607, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 222, 3608, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 222, 3609, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 222, 3610, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 222, 3611, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 222, 3612, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 222, 3949, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 222, 3950, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 222, 3951, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 222, 3952, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 222, 3953, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 222, 3954, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 222, 3955, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 222, 3972, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `oc_address`
--
ALTER TABLE `oc_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- 資料表索引 `oc_affiliate`
--
ALTER TABLE `oc_affiliate`
  ADD PRIMARY KEY (`affiliate_id`);

--
-- 資料表索引 `oc_affiliate_activity`
--
ALTER TABLE `oc_affiliate_activity`
  ADD PRIMARY KEY (`affiliate_activity_id`);

--
-- 資料表索引 `oc_affiliate_login`
--
ALTER TABLE `oc_affiliate_login`
  ADD PRIMARY KEY (`affiliate_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- 資料表索引 `oc_affiliate_transaction`
--
ALTER TABLE `oc_affiliate_transaction`
  ADD PRIMARY KEY (`affiliate_transaction_id`);

--
-- 資料表索引 `oc_api`
--
ALTER TABLE `oc_api`
  ADD PRIMARY KEY (`api_id`);

--
-- 資料表索引 `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  ADD PRIMARY KEY (`api_ip_id`);

--
-- 資料表索引 `oc_api_session`
--
ALTER TABLE `oc_api_session`
  ADD PRIMARY KEY (`api_session_id`);

--
-- 資料表索引 `oc_attribute`
--
ALTER TABLE `oc_attribute`
  ADD PRIMARY KEY (`attribute_id`);

--
-- 資料表索引 `oc_attribute_description`
--
ALTER TABLE `oc_attribute_description`
  ADD PRIMARY KEY (`attribute_id`,`language_id`);

--
-- 資料表索引 `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  ADD PRIMARY KEY (`attribute_group_id`);

--
-- 資料表索引 `oc_attribute_group_description`
--
ALTER TABLE `oc_attribute_group_description`
  ADD PRIMARY KEY (`attribute_group_id`,`language_id`);

--
-- 資料表索引 `oc_banner`
--
ALTER TABLE `oc_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- 資料表索引 `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  ADD PRIMARY KEY (`banner_image_id`);

--
-- 資料表索引 `oc_cart`
--
ALTER TABLE `oc_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`);

--
-- 資料表索引 `oc_category`
--
ALTER TABLE `oc_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- 資料表索引 `oc_category_description`
--
ALTER TABLE `oc_category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- 資料表索引 `oc_category_filter`
--
ALTER TABLE `oc_category_filter`
  ADD PRIMARY KEY (`category_id`,`filter_id`);

--
-- 資料表索引 `oc_category_path`
--
ALTER TABLE `oc_category_path`
  ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- 資料表索引 `oc_category_to_layout`
--
ALTER TABLE `oc_category_to_layout`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- 資料表索引 `oc_category_to_store`
--
ALTER TABLE `oc_category_to_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- 資料表索引 `oc_country`
--
ALTER TABLE `oc_country`
  ADD PRIMARY KEY (`country_id`);

--
-- 資料表索引 `oc_coupon`
--
ALTER TABLE `oc_coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- 資料表索引 `oc_coupon_category`
--
ALTER TABLE `oc_coupon_category`
  ADD PRIMARY KEY (`coupon_id`,`category_id`);

--
-- 資料表索引 `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  ADD PRIMARY KEY (`coupon_history_id`);

--
-- 資料表索引 `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  ADD PRIMARY KEY (`coupon_product_id`);

--
-- 資料表索引 `oc_currency`
--
ALTER TABLE `oc_currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- 資料表索引 `oc_customer`
--
ALTER TABLE `oc_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- 資料表索引 `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  ADD PRIMARY KEY (`customer_activity_id`);

--
-- 資料表索引 `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- 資料表索引 `oc_customer_group_description`
--
ALTER TABLE `oc_customer_group_description`
  ADD PRIMARY KEY (`customer_group_id`,`language_id`);

--
-- 資料表索引 `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  ADD PRIMARY KEY (`customer_history_id`);

--
-- 資料表索引 `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  ADD PRIMARY KEY (`customer_ip_id`),
  ADD KEY `ip` (`ip`);

--
-- 資料表索引 `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  ADD PRIMARY KEY (`customer_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- 資料表索引 `oc_customer_online`
--
ALTER TABLE `oc_customer_online`
  ADD PRIMARY KEY (`ip`);

--
-- 資料表索引 `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  ADD PRIMARY KEY (`customer_reward_id`);

--
-- 資料表索引 `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  ADD PRIMARY KEY (`customer_search_id`);

--
-- 資料表索引 `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  ADD PRIMARY KEY (`customer_transaction_id`);

--
-- 資料表索引 `oc_customer_wishlist`
--
ALTER TABLE `oc_customer_wishlist`
  ADD PRIMARY KEY (`customer_id`,`product_id`);

--
-- 資料表索引 `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  ADD PRIMARY KEY (`custom_field_id`);

--
-- 資料表索引 `oc_custom_field_customer_group`
--
ALTER TABLE `oc_custom_field_customer_group`
  ADD PRIMARY KEY (`custom_field_id`,`customer_group_id`);

--
-- 資料表索引 `oc_custom_field_description`
--
ALTER TABLE `oc_custom_field_description`
  ADD PRIMARY KEY (`custom_field_id`,`language_id`);

--
-- 資料表索引 `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  ADD PRIMARY KEY (`custom_field_value_id`);

--
-- 資料表索引 `oc_custom_field_value_description`
--
ALTER TABLE `oc_custom_field_value_description`
  ADD PRIMARY KEY (`custom_field_value_id`,`language_id`);

--
-- 資料表索引 `oc_download`
--
ALTER TABLE `oc_download`
  ADD PRIMARY KEY (`download_id`);

--
-- 資料表索引 `oc_download_description`
--
ALTER TABLE `oc_download_description`
  ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- 資料表索引 `oc_easy_blog_article`
--
ALTER TABLE `oc_easy_blog_article`
  ADD PRIMARY KEY (`article_id`);

--
-- 資料表索引 `oc_easy_blog_article_description`
--
ALTER TABLE `oc_easy_blog_article_description`
  ADD PRIMARY KEY (`article_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- 資料表索引 `oc_event`
--
ALTER TABLE `oc_event`
  ADD PRIMARY KEY (`event_id`);

--
-- 資料表索引 `oc_extension`
--
ALTER TABLE `oc_extension`
  ADD PRIMARY KEY (`extension_id`);

--
-- 資料表索引 `oc_fb_logins`
--
ALTER TABLE `oc_fb_logins`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `oc_filter`
--
ALTER TABLE `oc_filter`
  ADD PRIMARY KEY (`filter_id`);

--
-- 資料表索引 `oc_filter_description`
--
ALTER TABLE `oc_filter_description`
  ADD PRIMARY KEY (`filter_id`,`language_id`);

--
-- 資料表索引 `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  ADD PRIMARY KEY (`filter_group_id`);

--
-- 資料表索引 `oc_filter_group_description`
--
ALTER TABLE `oc_filter_group_description`
  ADD PRIMARY KEY (`filter_group_id`,`language_id`);

--
-- 資料表索引 `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- 資料表索引 `oc_information`
--
ALTER TABLE `oc_information`
  ADD PRIMARY KEY (`information_id`);

--
-- 資料表索引 `oc_information_description`
--
ALTER TABLE `oc_information_description`
  ADD PRIMARY KEY (`information_id`,`language_id`);

--
-- 資料表索引 `oc_information_to_layout`
--
ALTER TABLE `oc_information_to_layout`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- 資料表索引 `oc_information_to_store`
--
ALTER TABLE `oc_information_to_store`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- 資料表索引 `oc_language`
--
ALTER TABLE `oc_language`
  ADD PRIMARY KEY (`language_id`),
  ADD KEY `name` (`name`);

--
-- 資料表索引 `oc_layout`
--
ALTER TABLE `oc_layout`
  ADD PRIMARY KEY (`layout_id`);

--
-- 資料表索引 `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  ADD PRIMARY KEY (`layout_module_id`);

--
-- 資料表索引 `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  ADD PRIMARY KEY (`layout_route_id`);

--
-- 資料表索引 `oc_length_class`
--
ALTER TABLE `oc_length_class`
  ADD PRIMARY KEY (`length_class_id`);

--
-- 資料表索引 `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
  ADD PRIMARY KEY (`length_class_id`,`language_id`);

--
-- 資料表索引 `oc_location`
--
ALTER TABLE `oc_location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `name` (`name`);

--
-- 資料表索引 `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- 資料表索引 `oc_manufacturer_to_store`
--
ALTER TABLE `oc_manufacturer_to_store`
  ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- 資料表索引 `oc_marketing`
--
ALTER TABLE `oc_marketing`
  ADD PRIMARY KEY (`marketing_id`);

--
-- 資料表索引 `oc_menu`
--
ALTER TABLE `oc_menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- 資料表索引 `oc_menu_description`
--
ALTER TABLE `oc_menu_description`
  ADD PRIMARY KEY (`menu_id`,`language_id`);

--
-- 資料表索引 `oc_menu_module`
--
ALTER TABLE `oc_menu_module`
  ADD PRIMARY KEY (`menu_module_id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- 資料表索引 `oc_modification`
--
ALTER TABLE `oc_modification`
  ADD PRIMARY KEY (`modification_id`);

--
-- 資料表索引 `oc_module`
--
ALTER TABLE `oc_module`
  ADD PRIMARY KEY (`module_id`);

--
-- 資料表索引 `oc_option`
--
ALTER TABLE `oc_option`
  ADD PRIMARY KEY (`option_id`);

--
-- 資料表索引 `oc_option_description`
--
ALTER TABLE `oc_option_description`
  ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- 資料表索引 `oc_option_value`
--
ALTER TABLE `oc_option_value`
  ADD PRIMARY KEY (`option_value_id`);

--
-- 資料表索引 `oc_option_value_description`
--
ALTER TABLE `oc_option_value_description`
  ADD PRIMARY KEY (`option_value_id`,`language_id`);

--
-- 資料表索引 `oc_order`
--
ALTER TABLE `oc_order`
  ADD PRIMARY KEY (`order_id`);

--
-- 資料表索引 `oc_order_custom_field`
--
ALTER TABLE `oc_order_custom_field`
  ADD PRIMARY KEY (`order_custom_field_id`);

--
-- 資料表索引 `oc_order_history`
--
ALTER TABLE `oc_order_history`
  ADD PRIMARY KEY (`order_history_id`);

--
-- 資料表索引 `oc_order_option`
--
ALTER TABLE `oc_order_option`
  ADD PRIMARY KEY (`order_option_id`);

--
-- 資料表索引 `oc_order_product`
--
ALTER TABLE `oc_order_product`
  ADD PRIMARY KEY (`order_product_id`);

--
-- 資料表索引 `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  ADD PRIMARY KEY (`order_recurring_id`);

--
-- 資料表索引 `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  ADD PRIMARY KEY (`order_recurring_transaction_id`);

--
-- 資料表索引 `oc_order_status`
--
ALTER TABLE `oc_order_status`
  ADD PRIMARY KEY (`order_status_id`,`language_id`);

--
-- 資料表索引 `oc_order_total`
--
ALTER TABLE `oc_order_total`
  ADD PRIMARY KEY (`order_total_id`),
  ADD KEY `order_id` (`order_id`);

--
-- 資料表索引 `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  ADD PRIMARY KEY (`order_voucher_id`);

--
-- 資料表索引 `oc_product`
--
ALTER TABLE `oc_product`
  ADD PRIMARY KEY (`product_id`);

--
-- 資料表索引 `oc_product_attribute`
--
ALTER TABLE `oc_product_attribute`
  ADD PRIMARY KEY (`product_id`,`attribute_id`,`language_id`);

--
-- 資料表索引 `oc_product_description`
--
ALTER TABLE `oc_product_description`
  ADD PRIMARY KEY (`product_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- 資料表索引 `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  ADD PRIMARY KEY (`product_discount_id`),
  ADD KEY `product_id` (`product_id`);

--
-- 資料表索引 `oc_product_filter`
--
ALTER TABLE `oc_product_filter`
  ADD PRIMARY KEY (`product_id`,`filter_id`);

--
-- 資料表索引 `oc_product_image`
--
ALTER TABLE `oc_product_image`
  ADD PRIMARY KEY (`product_image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- 資料表索引 `oc_product_option`
--
ALTER TABLE `oc_product_option`
  ADD PRIMARY KEY (`product_option_id`);

--
-- 資料表索引 `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  ADD PRIMARY KEY (`product_option_value_id`);

--
-- 資料表索引 `oc_product_recurring`
--
ALTER TABLE `oc_product_recurring`
  ADD PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`);

--
-- 資料表索引 `oc_product_related`
--
ALTER TABLE `oc_product_related`
  ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- 資料表索引 `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  ADD PRIMARY KEY (`product_reward_id`);

--
-- 資料表索引 `oc_product_special`
--
ALTER TABLE `oc_product_special`
  ADD PRIMARY KEY (`product_special_id`),
  ADD KEY `product_id` (`product_id`);

--
-- 資料表索引 `oc_product_to_category`
--
ALTER TABLE `oc_product_to_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- 資料表索引 `oc_product_to_download`
--
ALTER TABLE `oc_product_to_download`
  ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- 資料表索引 `oc_product_to_layout`
--
ALTER TABLE `oc_product_to_layout`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- 資料表索引 `oc_product_to_store`
--
ALTER TABLE `oc_product_to_store`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- 資料表索引 `oc_recurring`
--
ALTER TABLE `oc_recurring`
  ADD PRIMARY KEY (`recurring_id`);

--
-- 資料表索引 `oc_recurring_description`
--
ALTER TABLE `oc_recurring_description`
  ADD PRIMARY KEY (`recurring_id`,`language_id`);

--
-- 資料表索引 `oc_return`
--
ALTER TABLE `oc_return`
  ADD PRIMARY KEY (`return_id`);

--
-- 資料表索引 `oc_return_action`
--
ALTER TABLE `oc_return_action`
  ADD PRIMARY KEY (`return_action_id`,`language_id`);

--
-- 資料表索引 `oc_return_history`
--
ALTER TABLE `oc_return_history`
  ADD PRIMARY KEY (`return_history_id`);

--
-- 資料表索引 `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  ADD PRIMARY KEY (`return_reason_id`,`language_id`);

--
-- 資料表索引 `oc_return_status`
--
ALTER TABLE `oc_return_status`
  ADD PRIMARY KEY (`return_status_id`,`language_id`);

--
-- 資料表索引 `oc_review`
--
ALTER TABLE `oc_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`);

--
-- 資料表索引 `oc_ring_size`
--
ALTER TABLE `oc_ring_size`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `oc_setting`
--
ALTER TABLE `oc_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- 資料表索引 `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  ADD PRIMARY KEY (`stock_status_id`,`language_id`);

--
-- 資料表索引 `oc_store`
--
ALTER TABLE `oc_store`
  ADD PRIMARY KEY (`store_id`);

--
-- 資料表索引 `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- 資料表索引 `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  ADD PRIMARY KEY (`tax_rate_id`);

--
-- 資料表索引 `oc_tax_rate_to_customer_group`
--
ALTER TABLE `oc_tax_rate_to_customer_group`
  ADD PRIMARY KEY (`tax_rate_id`,`customer_group_id`);

--
-- 資料表索引 `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  ADD PRIMARY KEY (`tax_rule_id`);

--
-- 資料表索引 `oc_theme`
--
ALTER TABLE `oc_theme`
  ADD PRIMARY KEY (`theme_id`);

--
-- 資料表索引 `oc_translation`
--
ALTER TABLE `oc_translation`
  ADD PRIMARY KEY (`translation_id`);

--
-- 資料表索引 `oc_upload`
--
ALTER TABLE `oc_upload`
  ADD PRIMARY KEY (`upload_id`);

--
-- 資料表索引 `oc_url_alias`
--
ALTER TABLE `oc_url_alias`
  ADD PRIMARY KEY (`url_alias_id`),
  ADD KEY `query` (`query`),
  ADD KEY `keyword` (`keyword`);

--
-- 資料表索引 `oc_user`
--
ALTER TABLE `oc_user`
  ADD PRIMARY KEY (`user_id`);

--
-- 資料表索引 `oc_user_group`
--
ALTER TABLE `oc_user_group`
  ADD PRIMARY KEY (`user_group_id`);

--
-- 資料表索引 `oc_voucher`
--
ALTER TABLE `oc_voucher`
  ADD PRIMARY KEY (`voucher_id`);

--
-- 資料表索引 `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  ADD PRIMARY KEY (`voucher_history_id`);

--
-- 資料表索引 `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  ADD PRIMARY KEY (`voucher_theme_id`);

--
-- 資料表索引 `oc_voucher_theme_description`
--
ALTER TABLE `oc_voucher_theme_description`
  ADD PRIMARY KEY (`voucher_theme_id`,`language_id`);

--
-- 資料表索引 `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  ADD PRIMARY KEY (`weight_class_id`);

--
-- 資料表索引 `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
  ADD PRIMARY KEY (`weight_class_id`,`language_id`);

--
-- 資料表索引 `oc_zone`
--
ALTER TABLE `oc_zone`
  ADD PRIMARY KEY (`zone_id`);

--
-- 資料表索引 `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  ADD PRIMARY KEY (`zone_to_geo_zone_id`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `oc_address`
--
ALTER TABLE `oc_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- 使用資料表 AUTO_INCREMENT `oc_affiliate`
--
ALTER TABLE `oc_affiliate`
  MODIFY `affiliate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表 AUTO_INCREMENT `oc_affiliate_activity`
--
ALTER TABLE `oc_affiliate_activity`
  MODIFY `affiliate_activity_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表 AUTO_INCREMENT `oc_affiliate_login`
--
ALTER TABLE `oc_affiliate_login`
  MODIFY `affiliate_login_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表 AUTO_INCREMENT `oc_affiliate_transaction`
--
ALTER TABLE `oc_affiliate_transaction`
  MODIFY `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表 AUTO_INCREMENT `oc_api`
--
ALTER TABLE `oc_api`
  MODIFY `api_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表 AUTO_INCREMENT `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  MODIFY `api_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表 AUTO_INCREMENT `oc_api_session`
--
ALTER TABLE `oc_api_session`
  MODIFY `api_session_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- 使用資料表 AUTO_INCREMENT `oc_attribute`
--
ALTER TABLE `oc_attribute`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- 使用資料表 AUTO_INCREMENT `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  MODIFY `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表 AUTO_INCREMENT `oc_banner`
--
ALTER TABLE `oc_banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- 使用資料表 AUTO_INCREMENT `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  MODIFY `banner_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=400;

--
-- 使用資料表 AUTO_INCREMENT `oc_cart`
--
ALTER TABLE `oc_cart`
  MODIFY `cart_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- 使用資料表 AUTO_INCREMENT `oc_category`
--
ALTER TABLE `oc_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- 使用資料表 AUTO_INCREMENT `oc_country`
--
ALTER TABLE `oc_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- 使用資料表 AUTO_INCREMENT `oc_coupon`
--
ALTER TABLE `oc_coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表 AUTO_INCREMENT `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  MODIFY `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表 AUTO_INCREMENT `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  MODIFY `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表 AUTO_INCREMENT `oc_currency`
--
ALTER TABLE `oc_currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表 AUTO_INCREMENT `oc_customer`
--
ALTER TABLE `oc_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- 使用資料表 AUTO_INCREMENT `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  MODIFY `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表 AUTO_INCREMENT `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  MODIFY `customer_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表 AUTO_INCREMENT `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  MODIFY `customer_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表 AUTO_INCREMENT `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  MODIFY `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- 使用資料表 AUTO_INCREMENT `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  MODIFY `customer_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- 使用資料表 AUTO_INCREMENT `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表 AUTO_INCREMENT `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  MODIFY `customer_search_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表 AUTO_INCREMENT `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  MODIFY `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表 AUTO_INCREMENT `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表 AUTO_INCREMENT `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  MODIFY `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表 AUTO_INCREMENT `oc_download`
--
ALTER TABLE `oc_download`
  MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表 AUTO_INCREMENT `oc_easy_blog_article`
--
ALTER TABLE `oc_easy_blog_article`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表 AUTO_INCREMENT `oc_event`
--
ALTER TABLE `oc_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表 AUTO_INCREMENT `oc_extension`
--
ALTER TABLE `oc_extension`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- 使用資料表 AUTO_INCREMENT `oc_fb_logins`
--
ALTER TABLE `oc_fb_logins`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表 AUTO_INCREMENT `oc_filter`
--
ALTER TABLE `oc_filter`
  MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表 AUTO_INCREMENT `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  MODIFY `filter_group_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表 AUTO_INCREMENT `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表 AUTO_INCREMENT `oc_information`
--
ALTER TABLE `oc_information`
  MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用資料表 AUTO_INCREMENT `oc_language`
--
ALTER TABLE `oc_language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表 AUTO_INCREMENT `oc_layout`
--
ALTER TABLE `oc_layout`
  MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- 使用資料表 AUTO_INCREMENT `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  MODIFY `layout_module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- 使用資料表 AUTO_INCREMENT `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  MODIFY `layout_route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- 使用資料表 AUTO_INCREMENT `oc_length_class`
--
ALTER TABLE `oc_length_class`
  MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表 AUTO_INCREMENT `oc_location`
--
ALTER TABLE `oc_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表 AUTO_INCREMENT `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用資料表 AUTO_INCREMENT `oc_marketing`
--
ALTER TABLE `oc_marketing`
  MODIFY `marketing_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表 AUTO_INCREMENT `oc_menu`
--
ALTER TABLE `oc_menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表 AUTO_INCREMENT `oc_modification`
--
ALTER TABLE `oc_modification`
  MODIFY `modification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表 AUTO_INCREMENT `oc_module`
--
ALTER TABLE `oc_module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- 使用資料表 AUTO_INCREMENT `oc_option`
--
ALTER TABLE `oc_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- 使用資料表 AUTO_INCREMENT `oc_option_value`
--
ALTER TABLE `oc_option_value`
  MODIFY `option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- 使用資料表 AUTO_INCREMENT `oc_order`
--
ALTER TABLE `oc_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- 使用資料表 AUTO_INCREMENT `oc_order_custom_field`
--
ALTER TABLE `oc_order_custom_field`
  MODIFY `order_custom_field_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表 AUTO_INCREMENT `oc_order_history`
--
ALTER TABLE `oc_order_history`
  MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- 使用資料表 AUTO_INCREMENT `oc_order_option`
--
ALTER TABLE `oc_order_option`
  MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用資料表 AUTO_INCREMENT `oc_order_product`
--
ALTER TABLE `oc_order_product`
  MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- 使用資料表 AUTO_INCREMENT `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  MODIFY `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表 AUTO_INCREMENT `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  MODIFY `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表 AUTO_INCREMENT `oc_order_status`
--
ALTER TABLE `oc_order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- 使用資料表 AUTO_INCREMENT `oc_order_total`
--
ALTER TABLE `oc_order_total`
  MODIFY `order_total_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=334;

--
-- 使用資料表 AUTO_INCREMENT `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  MODIFY `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表 AUTO_INCREMENT `oc_product`
--
ALTER TABLE `oc_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=370;

--
-- 使用資料表 AUTO_INCREMENT `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  MODIFY `product_discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=458;

--
-- 使用資料表 AUTO_INCREMENT `oc_product_image`
--
ALTER TABLE `oc_product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7474;

--
-- 使用資料表 AUTO_INCREMENT `oc_product_option`
--
ALTER TABLE `oc_product_option`
  MODIFY `product_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;

--
-- 使用資料表 AUTO_INCREMENT `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  MODIFY `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- 使用資料表 AUTO_INCREMENT `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  MODIFY `product_reward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=550;

--
-- 使用資料表 AUTO_INCREMENT `oc_product_special`
--
ALTER TABLE `oc_product_special`
  MODIFY `product_special_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=445;

--
-- 使用資料表 AUTO_INCREMENT `oc_recurring`
--
ALTER TABLE `oc_recurring`
  MODIFY `recurring_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表 AUTO_INCREMENT `oc_return`
--
ALTER TABLE `oc_return`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表 AUTO_INCREMENT `oc_return_action`
--
ALTER TABLE `oc_return_action`
  MODIFY `return_action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表 AUTO_INCREMENT `oc_return_history`
--
ALTER TABLE `oc_return_history`
  MODIFY `return_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表 AUTO_INCREMENT `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  MODIFY `return_reason_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表 AUTO_INCREMENT `oc_return_status`
--
ALTER TABLE `oc_return_status`
  MODIFY `return_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表 AUTO_INCREMENT `oc_review`
--
ALTER TABLE `oc_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- 使用資料表 AUTO_INCREMENT `oc_setting`
--
ALTER TABLE `oc_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3220;

--
-- 使用資料表 AUTO_INCREMENT `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  MODIFY `stock_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用資料表 AUTO_INCREMENT `oc_store`
--
ALTER TABLE `oc_store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表 AUTO_INCREMENT `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用資料表 AUTO_INCREMENT `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- 使用資料表 AUTO_INCREMENT `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  MODIFY `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- 使用資料表 AUTO_INCREMENT `oc_theme`
--
ALTER TABLE `oc_theme`
  MODIFY `theme_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表 AUTO_INCREMENT `oc_translation`
--
ALTER TABLE `oc_translation`
  MODIFY `translation_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表 AUTO_INCREMENT `oc_upload`
--
ALTER TABLE `oc_upload`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表 AUTO_INCREMENT `oc_url_alias`
--
ALTER TABLE `oc_url_alias`
  MODIFY `url_alias_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1177;

--
-- 使用資料表 AUTO_INCREMENT `oc_user`
--
ALTER TABLE `oc_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表 AUTO_INCREMENT `oc_user_group`
--
ALTER TABLE `oc_user_group`
  MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- 使用資料表 AUTO_INCREMENT `oc_voucher`
--
ALTER TABLE `oc_voucher`
  MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表 AUTO_INCREMENT `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  MODIFY `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表 AUTO_INCREMENT `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  MODIFY `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用資料表 AUTO_INCREMENT `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表 AUTO_INCREMENT `oc_zone`
--
ALTER TABLE `oc_zone`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4236;

--
-- 使用資料表 AUTO_INCREMENT `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  MODIFY `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
