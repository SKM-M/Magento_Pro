-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2018 at 10:32 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dtmn_magnto`
--

-- --------------------------------------------------------

--
-- Table structure for table `report_viewed_product_aggregated_daily`
--

CREATE TABLE `report_viewed_product_aggregated_daily` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating Pos'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Daily';

--
-- Dumping data for table `report_viewed_product_aggregated_daily`
--

INSERT INTO `report_viewed_product_aggregated_daily` (`id`, `period`, `store_id`, `product_id`, `product_name`, `product_price`, `views_num`, `rating_pos`) VALUES
(1, '2018-04-20', 1, 1, 'Dell Inspirion', '24500.0000', 5, 1),
(2, '2018-04-23', 1, 1, 'Dell Inspirion', '24500.0000', 4, 2),
(3, '2018-04-23', 1, 2, 'Lenovo', '85000.0000', 1, 4),
(4, '2018-04-23', 1, 3, 'Accer Aspire', '35000.0000', 5, 1),
(5, '2018-04-23', 1, 15, 'HP', '0.0000', 3, 3),
(6, '2018-04-23', 1, 24, 'Gift', '0.0000', 1, 5),
(7, '2018-04-24', 1, 1, 'Dell Inspirion', '24500.0000', 2, 3),
(8, '2018-04-24', 1, 2, 'Lenovo', '85000.0000', 1, 6),
(9, '2018-04-24', 1, 15, 'HP', '0.0000', 2, 4),
(10, '2018-04-24', 1, 24, 'Gift', '0.0000', 2, 2),
(11, '2018-04-24', 1, 25, 'Addidas T-Shirts', '400.0000', 1, 5),
(12, '2018-04-24', 1, 26, 'Black Trousers', '1800.0000', 5, 1),
(13, '2018-04-25', 1, 1, 'Dell Inspirion', '24500.0000', 17, 1),
(14, '2018-04-25', 1, 2, 'Lenovo', '85000.0000', 1, 8),
(15, '2018-04-25', 1, 3, 'Accer Aspire', '35000.0000', 2, 6),
(16, '2018-04-25', 1, 15, 'HP', '0.0000', 5, 2),
(17, '2018-04-25', 1, 23, 'Sandisk-Pendrive', '700.0000', 1, 7),
(18, '2018-04-25', 1, 24, 'Gift', '0.0000', 2, 5),
(19, '2018-04-25', 1, 27, 'Dell Inspiron 3552 (Z565162HIN9) Notebook', '25440.0000', 4, 4),
(20, '2018-04-25', 1, 28, 'Dell 3467 (A561201UIN9) Notebook', '25990.0000', 5, 3),
(21, '2018-04-26', 1, 24, 'Gift', '0.0000', 1, 1),
(22, '2018-04-27', 1, 2, 'Lenovo', '85000.0000', 2, 3),
(23, '2018-04-27', 1, 24, 'Gift', '0.0000', 5, 1),
(24, '2018-04-27', 1, 25, 'Addidas T-Shirts', '400.0000', 4, 2),
(25, '2018-04-27', 1, 26, 'Black Trousers', '1800.0000', 1, 4),
(26, '2018-04-28', 1, 25, 'Addidas T-Shirts', '400.0000', 4, 1),
(27, '2018-04-30', 1, 2, 'Lenovo', '85000.0000', 2, 1),
(28, '2018-05-01', 1, 1, 'Dell Inspirion', '24500.0000', 1, 3),
(29, '2018-05-01', 1, 28, 'Dell 3467 (A561201UIN9) Notebook', '25990.0000', 4, 1),
(30, '2018-05-01', 1, 33, 'Proteus Fitness Jackshirt-XL-Black', '45.0000', 4, 2),
(31, '2018-05-02', 1, 24, 'Gift', '0.0000', 7, 1),
(32, '2018-05-02', 1, 29, 'Formal Trouser', '1200.0000', 1, 3),
(33, '2018-05-02', 1, 33, 'Proteus Fitness Jackshirt-XL-Black', '45.0000', 3, 2),
(34, '2018-05-03', 1, 32, 'Proteus Fitness Jackshirt-XL-Blue', '45.0000', 2, 1),
(35, '2018-05-04', 1, 1, 'Dell Inspirion', '24500.0000', 2, 1),
(36, '2018-05-04', 1, 27, 'Dell Inspiron 3552 (Z565162HIN9) Notebook', '25440.0000', 2, 2),
(37, '2018-05-16', 1, 1, 'Dell Inspirion', '24500.0000', 6, 1),
(38, '2018-05-16', 1, 28, 'Dell 3467 (A561201UIN9) Notebook', '25990.0000', 1, 2),
(39, '2018-05-16', 1, 29, 'Formal Trouser', '1200.0000', 1, 3),
(40, '2018-05-17', 1, 28, 'Dell 3467 (A561201UIN9) Notebook', '25990.0000', 4, 1),
(41, '2018-05-18', 1, 752, 'Atlas Fitness Tank', '18.0000', 6, 1),
(42, '2018-05-18', 1, 2075, 'Set of Sprite Yoga Straps', '0.0000', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `report_viewed_product_aggregated_monthly`
--

CREATE TABLE `report_viewed_product_aggregated_monthly` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating Pos'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Monthly';

--
-- Dumping data for table `report_viewed_product_aggregated_monthly`
--

INSERT INTO `report_viewed_product_aggregated_monthly` (`id`, `period`, `store_id`, `product_id`, `product_name`, `product_price`, `views_num`, `rating_pos`) VALUES
(1, '2018-04-01', 1, 1, 'Dell Inspirion', '24500.0000', 28, 1),
(2, '2018-04-01', 1, 3, 'Accer Aspire', '35000.0000', 7, 6),
(3, '2018-04-01', 1, 15, 'HP', '0.0000', 10, 3),
(4, '2018-04-01', 1, 24, 'Gift', '0.0000', 11, 2),
(5, '2018-04-01', 1, 2, 'Lenovo', '85000.0000', 7, 5),
(6, '2018-04-01', 1, 26, 'Black Trousers', '1800.0000', 6, 7),
(7, '2018-04-01', 1, 25, 'Addidas T-Shirts', '400.0000', 9, 4),
(8, '2018-04-01', 1, 27, 'Dell Inspiron 3552 (Z565162HIN9) Notebook', '25440.0000', 4, 9),
(9, '2018-04-01', 1, 28, 'Dell 3467 (A561201UIN9) Notebook', '25990.0000', 5, 8),
(10, '2018-04-01', 1, 23, 'Sandisk-Pendrive', '700.0000', 1, 10),
(11, '2018-05-01', 1, 1, 'Dell Inspirion', '24500.0000', 9, 2),
(12, '2018-05-01', 1, 28, 'Dell 3467 (A561201UIN9) Notebook', '25990.0000', 9, 1),
(13, '2018-05-01', 1, 33, 'Proteus Fitness Jackshirt-XL-Black', '45.0000', 7, 3),
(14, '2018-05-01', 1, 24, 'Gift', '0.0000', 7, 4),
(15, '2018-05-01', 1, 29, 'Formal Trouser', '1200.0000', 2, 6),
(17, '2018-05-01', 1, 32, 'Proteus Fitness Jackshirt-XL-Blue', '45.0000', 2, 7),
(23, '2018-05-01', 1, 27, 'Dell Inspiron 3552 (Z565162HIN9) Notebook', '25440.0000', 2, 8),
(26, '2018-05-01', 1, 2075, 'Set of Sprite Yoga Straps', '0.0000', 1, 9),
(27, '2018-05-01', 1, 752, 'Atlas Fitness Tank', '18.0000', 6, 5);

-- --------------------------------------------------------

--
-- Table structure for table `report_viewed_product_aggregated_yearly`
--

CREATE TABLE `report_viewed_product_aggregated_yearly` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating Pos'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Yearly';

--
-- Dumping data for table `report_viewed_product_aggregated_yearly`
--

INSERT INTO `report_viewed_product_aggregated_yearly` (`id`, `period`, `store_id`, `product_id`, `product_name`, `product_price`, `views_num`, `rating_pos`) VALUES
(1, '2018-01-01', 1, 1, 'Dell Inspirion', '24500.0000', 37, 1),
(2, '2018-01-01', 1, 3, 'Accer Aspire', '35000.0000', 7, 7),
(3, '2018-01-01', 1, 15, 'HP', '0.0000', 10, 4),
(4, '2018-01-01', 1, 24, 'Gift', '0.0000', 18, 2),
(5, '2018-01-01', 1, 2, 'Lenovo', '85000.0000', 7, 6),
(6, '2018-01-01', 1, 26, 'Black Trousers', '1800.0000', 6, 9),
(7, '2018-01-01', 1, 25, 'Addidas T-Shirts', '400.0000', 9, 5),
(8, '2018-01-01', 1, 27, 'Dell Inspiron 3552 (Z565162HIN9) Notebook', '25440.0000', 6, 11),
(9, '2018-01-01', 1, 28, 'Dell 3467 (A561201UIN9) Notebook', '25990.0000', 14, 3),
(10, '2018-01-01', 1, 23, 'Sandisk-Pendrive', '700.0000', 1, 15),
(11, '2018-01-01', 1, 33, 'Proteus Fitness Jackshirt-XL-Black', '45.0000', 7, 8),
(12, '2018-01-01', 1, 29, 'Formal Trouser', '1200.0000', 2, 12),
(13, '2018-01-01', 1, 32, 'Proteus Fitness Jackshirt-XL-Blue', '45.0000', 2, 13),
(16, '2018-01-01', 1, 752, 'Atlas Fitness Tank', '18.0000', 6, 10),
(17, '2018-01-01', 1, 2075, 'Set of Sprite Yoga Straps', '0.0000', 1, 14);

-- --------------------------------------------------------

--
-- Table structure for table `report_viewed_product_index`
--

CREATE TABLE `report_viewed_product_index` (
  `index_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Index Id',
  `visitor_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Visitor Id',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer Id',
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product Id',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `added_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Added At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reports Viewed Product Index Table';

--
-- Dumping data for table `report_viewed_product_index`
--

INSERT INTO `report_viewed_product_index` (`index_id`, `visitor_id`, `customer_id`, `product_id`, `store_id`, `added_at`) VALUES
(1, 6, NULL, 1, 1, '2018-04-20 11:06:53'),
(2, 23, NULL, 1, 1, '2018-04-23 08:19:32'),
(6, 36, NULL, 3, 1, '2018-04-23 10:35:21'),
(8, 36, NULL, 2, 1, '2018-04-23 10:49:24'),
(12, 36, NULL, 15, 1, '2018-04-23 11:46:58'),
(15, 36, NULL, 24, 1, '2018-04-23 12:30:29'),
(16, 39, NULL, 15, 1, '2018-04-24 04:33:07'),
(17, 45, NULL, 24, 1, '2018-04-24 04:41:05'),
(18, 47, NULL, 24, 1, '2018-04-24 04:50:32'),
(19, 49, NULL, 15, 1, '2018-04-24 04:50:49'),
(20, 52, NULL, 1, 1, '2018-04-24 04:57:48'),
(21, 52, NULL, 2, 1, '2018-04-24 04:58:11'),
(22, 55, NULL, 1, 1, '2018-04-24 05:27:22'),
(23, 60, NULL, 26, 1, '2018-04-24 12:35:30'),
(26, 60, NULL, 25, 1, '2018-04-24 12:42:40'),
(27, 61, NULL, 1, 1, '2018-04-25 04:30:54'),
(33, 61, NULL, 3, 1, '2018-04-25 04:48:27'),
(35, 61, NULL, 23, 1, '2018-04-25 04:53:12'),
(37, NULL, 1, 1, 1, '2018-04-25 05:42:56'),
(40, 66, NULL, 1, 1, '2018-04-25 05:47:21'),
(42, 66, NULL, 28, 1, '2018-04-25 06:49:38'),
(43, 66, NULL, 27, 1, '2018-04-25 06:50:41'),
(45, NULL, 1, 27, 1, '2018-04-25 08:08:33'),
(47, NULL, 1, 2, 1, '2018-04-25 08:36:12'),
(50, NULL, 1, 28, 1, '2018-04-25 09:15:40'),
(53, 71, NULL, 1, 1, '2018-04-25 09:38:58'),
(55, 71, NULL, 15, 1, '2018-04-25 09:47:09'),
(60, 71, NULL, 24, 1, '2018-04-25 10:19:27'),
(62, 71, NULL, 28, 1, '2018-04-25 12:02:22'),
(63, 87, NULL, 24, 1, '2018-04-26 09:14:29'),
(64, NULL, 1, 24, 1, '2018-04-27 04:56:10'),
(69, NULL, 1, 25, 1, '2018-04-27 08:15:33'),
(73, NULL, 1, 26, 1, '2018-04-27 09:17:52'),
(74, 103, NULL, 25, 1, '2018-04-28 09:00:06'),
(75, 104, NULL, 25, 1, '2018-04-28 13:16:16'),
(76, 133, NULL, 2, 1, '2018-04-30 13:03:17'),
(77, 153, NULL, 1, 1, '2018-05-01 05:40:05'),
(78, 153, NULL, 28, 1, '2018-05-01 06:09:44'),
(79, 162, 1, 33, 1, '2018-05-01 11:16:41'),
(80, 167, NULL, 24, 1, '2018-05-02 08:57:33'),
(87, 167, NULL, 29, 1, '2018-05-02 09:05:02'),
(88, 167, NULL, 33, 1, '2018-05-02 10:10:44'),
(89, 170, NULL, 32, 1, '2018-05-03 04:53:03'),
(90, 176, NULL, 1, 1, '2018-05-04 05:46:54'),
(91, 177, NULL, 1, 1, '2018-05-04 06:30:30'),
(92, 178, NULL, 27, 1, '2018-05-04 09:50:05'),
(93, 0, NULL, 29, 1, '2018-05-16 08:30:15'),
(94, 0, NULL, 1, 1, '2018-05-16 08:30:35'),
(98, 0, NULL, 28, 1, '2018-05-16 11:08:40'),
(99, 195, NULL, 28, 1, '2018-05-17 04:34:29'),
(100, 218, NULL, 2075, 1, '2018-05-18 06:36:18'),
(101, 222, NULL, 752, 1, '2018-05-18 06:41:08');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Review id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Review create date',
  `entity_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity id',
  `entity_pk_value` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product id',
  `status_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Status code'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review base information';

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`review_id`, `created_at`, `entity_id`, `entity_pk_value`, `status_id`) VALUES
(1, '2018-04-25 05:44:11', 1, 1, 1),
(2, '2018-05-18 06:23:46', 1, 34, 1),
(3, '2018-05-18 06:23:47', 1, 34, 1),
(4, '2018-05-18 06:23:47', 1, 39, 1),
(5, '2018-05-18 06:23:47', 1, 39, 1),
(6, '2018-05-18 06:23:48', 1, 39, 1),
(7, '2018-05-18 06:23:49', 1, 36, 1),
(8, '2018-05-18 06:23:49', 1, 36, 1),
(9, '2018-05-18 06:23:49', 1, 36, 1),
(10, '2018-05-18 06:23:50', 1, 35, 1),
(11, '2018-05-18 06:23:51', 1, 35, 1),
(12, '2018-05-18 06:23:51', 1, 37, 1),
(13, '2018-05-18 06:23:51', 1, 37, 1),
(14, '2018-05-18 06:23:51', 1, 37, 1),
(15, '2018-05-18 06:23:52', 1, 38, 1),
(16, '2018-05-18 06:23:52', 1, 38, 1),
(17, '2018-05-18 06:23:52', 1, 70, 1),
(18, '2018-05-18 06:23:52', 1, 70, 1),
(19, '2018-05-18 06:23:52', 1, 70, 1),
(20, '2018-05-18 06:23:53', 1, 73, 1),
(21, '2018-05-18 06:23:53', 1, 73, 1),
(22, '2018-05-18 06:23:53', 1, 73, 1),
(23, '2018-05-18 06:23:53', 1, 71, 1),
(24, '2018-05-18 06:23:54', 1, 71, 1),
(25, '2018-05-18 06:23:54', 1, 71, 1),
(26, '2018-05-18 06:23:54', 1, 69, 1),
(27, '2018-05-18 06:23:54', 1, 69, 1),
(28, '2018-05-18 06:23:54', 1, 72, 1),
(29, '2018-05-18 06:23:55', 1, 72, 1),
(30, '2018-05-18 06:23:55', 1, 72, 1),
(31, '2018-05-18 06:23:55', 1, 72, 1),
(32, '2018-05-18 06:23:55', 1, 308, 1),
(33, '2018-05-18 06:23:55', 1, 308, 1),
(34, '2018-05-18 06:23:56', 1, 324, 1),
(35, '2018-05-18 06:23:57', 1, 324, 1),
(36, '2018-05-18 06:23:57', 1, 452, 1),
(37, '2018-05-18 06:23:57', 1, 452, 1),
(38, '2018-05-18 06:23:57', 1, 452, 1),
(39, '2018-05-18 06:23:57', 1, 340, 1),
(40, '2018-05-18 06:23:57', 1, 340, 1),
(41, '2018-05-18 06:23:58', 1, 340, 1),
(42, '2018-05-18 06:23:58', 1, 436, 1),
(43, '2018-05-18 06:23:58', 1, 436, 1),
(44, '2018-05-18 06:23:58', 1, 436, 1),
(45, '2018-05-18 06:23:59', 1, 356, 1),
(46, '2018-05-18 06:23:59', 1, 356, 1),
(47, '2018-05-18 06:23:59', 1, 372, 1),
(48, '2018-05-18 06:24:00', 1, 372, 1),
(49, '2018-05-18 06:24:00', 1, 372, 1),
(50, '2018-05-18 06:24:00', 1, 388, 1),
(51, '2018-05-18 06:24:00', 1, 388, 1),
(52, '2018-05-18 06:24:01', 1, 404, 1),
(53, '2018-05-18 06:24:01', 1, 404, 1),
(54, '2018-05-18 06:24:01', 1, 771, 1),
(55, '2018-05-18 06:24:01', 1, 771, 1),
(56, '2018-05-18 06:24:02', 1, 771, 1),
(57, '2018-05-18 06:24:02', 1, 784, 1),
(58, '2018-05-18 06:24:02', 1, 784, 1),
(59, '2018-05-18 06:24:03', 1, 784, 1),
(60, '2018-05-18 06:24:04', 1, 797, 1),
(61, '2018-05-18 06:24:04', 1, 797, 1),
(62, '2018-05-18 06:24:04', 1, 810, 1),
(63, '2018-05-18 06:24:05', 1, 810, 1),
(64, '2018-05-18 06:24:05', 1, 810, 1),
(65, '2018-05-18 06:24:05', 1, 823, 1),
(66, '2018-05-18 06:24:06', 1, 823, 1),
(67, '2018-05-18 06:24:06', 1, 823, 1),
(68, '2018-05-18 06:24:06', 1, 592, 1),
(69, '2018-05-18 06:24:06', 1, 592, 1),
(70, '2018-05-18 06:24:06', 1, 592, 1),
(71, '2018-05-18 06:24:07', 1, 608, 1),
(72, '2018-05-18 06:24:07', 1, 608, 1),
(73, '2018-05-18 06:24:07', 1, 560, 1),
(74, '2018-05-18 06:24:07', 1, 560, 1),
(75, '2018-05-18 06:24:08', 1, 480, 1),
(76, '2018-05-18 06:24:08', 1, 480, 1),
(77, '2018-05-18 06:24:08', 1, 480, 1),
(78, '2018-05-18 06:24:08', 1, 496, 1),
(79, '2018-05-18 06:24:09', 1, 496, 1),
(80, '2018-05-18 06:24:09', 1, 496, 1),
(81, '2018-05-18 06:24:09', 1, 576, 1),
(82, '2018-05-18 06:24:10', 1, 576, 1),
(83, '2018-05-18 06:24:10', 1, 640, 1),
(84, '2018-05-18 06:24:11', 1, 640, 1),
(85, '2018-05-18 06:24:11', 1, 640, 1),
(86, '2018-05-18 06:24:12', 1, 656, 1),
(87, '2018-05-18 06:24:12', 1, 656, 1),
(88, '2018-05-18 06:24:12', 1, 656, 1),
(89, '2018-05-18 06:24:13', 1, 656, 1),
(90, '2018-05-18 06:24:13', 1, 512, 1),
(91, '2018-05-18 06:24:13', 1, 512, 1),
(92, '2018-05-18 06:24:13', 1, 512, 1),
(93, '2018-05-18 06:24:14', 1, 624, 1),
(94, '2018-05-18 06:24:14', 1, 624, 1),
(95, '2018-05-18 06:24:14', 1, 624, 1),
(96, '2018-05-18 06:24:15', 1, 528, 1),
(97, '2018-05-18 06:24:15', 1, 528, 1),
(98, '2018-05-18 06:24:15', 1, 528, 1),
(99, '2018-05-18 06:24:16', 1, 544, 1),
(100, '2018-05-18 06:24:16', 1, 544, 1),
(101, '2018-05-18 06:24:16', 1, 544, 1),
(102, '2018-05-18 06:24:17', 1, 927, 1),
(103, '2018-05-18 06:24:17', 1, 927, 1),
(104, '2018-05-18 06:24:17', 1, 927, 1),
(105, '2018-05-18 06:24:18', 1, 945, 1),
(106, '2018-05-18 06:24:18', 1, 945, 1),
(107, '2018-05-18 06:24:19', 1, 945, 1),
(108, '2018-05-18 06:24:19', 1, 958, 1),
(109, '2018-05-18 06:24:22', 1, 958, 1),
(110, '2018-05-18 06:24:22', 1, 958, 1),
(111, '2018-05-18 06:24:22', 1, 971, 1),
(112, '2018-05-18 06:24:22', 1, 971, 1),
(113, '2018-05-18 06:24:23', 1, 971, 1),
(114, '2018-05-18 06:24:23', 1, 984, 1),
(115, '2018-05-18 06:24:23', 1, 984, 1),
(116, '2018-05-18 06:24:23', 1, 997, 1),
(117, '2018-05-18 06:24:24', 1, 997, 1),
(118, '2018-05-18 06:24:24', 1, 997, 1),
(119, '2018-05-18 06:24:24', 1, 1010, 1),
(120, '2018-05-18 06:24:24', 1, 1010, 1),
(121, '2018-05-18 06:24:25', 1, 1023, 1),
(122, '2018-05-18 06:24:25', 1, 1023, 1),
(123, '2018-05-18 06:24:25', 1, 1023, 1),
(124, '2018-05-18 06:24:26', 1, 672, 1),
(125, '2018-05-18 06:24:26', 1, 672, 1),
(126, '2018-05-18 06:24:26', 1, 672, 1),
(127, '2018-05-18 06:24:27', 1, 672, 1),
(128, '2018-05-18 06:24:27', 1, 688, 1),
(129, '2018-05-18 06:24:27', 1, 688, 1),
(130, '2018-05-18 06:24:27', 1, 688, 1),
(131, '2018-05-18 06:24:27', 1, 704, 1),
(132, '2018-05-18 06:24:28', 1, 704, 1),
(133, '2018-05-18 06:24:28', 1, 704, 1),
(134, '2018-05-18 06:24:29', 1, 710, 1),
(135, '2018-05-18 06:24:29', 1, 710, 1),
(136, '2018-05-18 06:24:29', 1, 710, 1),
(137, '2018-05-18 06:24:29', 1, 710, 1),
(138, '2018-05-18 06:24:29', 1, 40, 1),
(139, '2018-05-18 06:24:30', 1, 40, 1),
(140, '2018-05-18 06:24:30', 1, 40, 1),
(141, '2018-05-18 06:24:30', 1, 53, 1),
(142, '2018-05-18 06:24:30', 1, 53, 1),
(143, '2018-05-18 06:24:31', 1, 53, 1),
(144, '2018-05-18 06:24:31', 1, 51, 1),
(145, '2018-05-18 06:24:31', 1, 51, 1),
(146, '2018-05-18 06:24:31', 1, 56, 1),
(147, '2018-05-18 06:24:32', 1, 56, 1),
(148, '2018-05-18 06:24:32', 1, 56, 1),
(149, '2018-05-18 06:24:32', 1, 50, 1),
(150, '2018-05-18 06:24:33', 1, 50, 1),
(151, '2018-05-18 06:24:33', 1, 50, 1),
(152, '2018-05-18 06:24:33', 1, 52, 1),
(153, '2018-05-18 06:24:33', 1, 52, 1),
(154, '2018-05-18 06:24:33', 1, 52, 1),
(155, '2018-05-18 06:24:34', 1, 48, 1),
(156, '2018-05-18 06:24:34', 1, 49, 1),
(157, '2018-05-18 06:24:35', 1, 49, 1),
(158, '2018-05-18 06:24:35', 1, 41, 1),
(159, '2018-05-18 06:24:36', 1, 41, 1),
(160, '2018-05-18 06:24:36', 1, 41, 1),
(161, '2018-05-18 06:24:37', 1, 42, 1),
(162, '2018-05-18 06:24:37', 1, 42, 1),
(163, '2018-05-18 06:24:37', 1, 45, 1),
(164, '2018-05-18 06:24:37', 1, 45, 1),
(165, '2018-05-18 06:24:37', 1, 47, 1),
(166, '2018-05-18 06:24:38', 1, 47, 1),
(167, '2018-05-18 06:24:38', 1, 47, 1),
(168, '2018-05-18 06:24:38', 1, 43, 1),
(169, '2018-05-18 06:24:38', 1, 43, 1),
(170, '2018-05-18 06:24:39', 1, 44, 1),
(171, '2018-05-18 06:24:39', 1, 44, 1),
(172, '2018-05-18 06:24:39', 1, 44, 1),
(173, '2018-05-18 06:24:39', 1, 46, 1),
(174, '2018-05-18 06:24:39', 1, 46, 1),
(175, '2018-05-18 06:24:40', 1, 46, 1),
(176, '2018-05-18 06:24:40', 1, 75, 1),
(177, '2018-05-18 06:24:40', 1, 75, 1),
(178, '2018-05-18 06:24:40', 1, 75, 1),
(179, '2018-05-18 06:24:41', 1, 77, 1),
(180, '2018-05-18 06:24:41', 1, 77, 1),
(181, '2018-05-18 06:24:41', 1, 76, 1),
(182, '2018-05-18 06:24:41', 1, 76, 1),
(183, '2018-05-18 06:24:42', 1, 76, 1),
(184, '2018-05-18 06:24:43', 1, 74, 1),
(185, '2018-05-18 06:24:43', 1, 74, 1),
(186, '2018-05-18 06:24:43', 1, 1078, 1),
(187, '2018-05-18 06:24:44', 1, 1078, 1),
(188, '2018-05-18 06:24:44', 1, 1078, 1),
(189, '2018-05-18 06:24:44', 1, 1094, 1),
(190, '2018-05-18 06:24:44', 1, 1094, 1),
(191, '2018-05-18 06:24:45', 1, 1094, 1),
(192, '2018-05-18 06:24:45', 1, 1110, 1),
(193, '2018-05-18 06:24:45', 1, 1110, 1),
(194, '2018-05-18 06:24:45', 1, 1110, 1),
(195, '2018-05-18 06:24:45', 1, 1126, 1),
(196, '2018-05-18 06:24:46', 1, 1126, 1),
(197, '2018-05-18 06:24:46', 1, 1126, 1),
(198, '2018-05-18 06:24:46', 1, 1142, 1),
(199, '2018-05-18 06:24:46', 1, 1142, 1),
(200, '2018-05-18 06:24:47', 1, 1142, 1),
(201, '2018-05-18 06:24:47', 1, 1148, 1),
(202, '2018-05-18 06:24:47', 1, 1148, 1),
(203, '2018-05-18 06:24:47', 1, 1254, 1),
(204, '2018-05-18 06:24:47', 1, 1254, 1),
(205, '2018-05-18 06:24:48', 1, 1254, 1),
(206, '2018-05-18 06:24:48', 1, 1270, 1),
(207, '2018-05-18 06:24:49', 1, 1270, 1),
(208, '2018-05-18 06:24:49', 1, 1270, 1),
(209, '2018-05-18 06:24:49', 1, 1270, 1),
(210, '2018-05-18 06:24:49', 1, 1286, 1),
(211, '2018-05-18 06:24:50', 1, 1286, 1),
(212, '2018-05-18 06:24:50', 1, 1286, 1),
(213, '2018-05-18 06:24:50', 1, 1302, 1),
(214, '2018-05-18 06:24:50', 1, 1302, 1),
(215, '2018-05-18 06:24:51', 1, 1318, 1),
(216, '2018-05-18 06:24:51', 1, 1318, 1),
(217, '2018-05-18 06:24:51', 1, 1318, 1),
(218, '2018-05-18 06:24:51', 1, 1414, 1),
(219, '2018-05-18 06:24:52', 1, 1414, 1),
(220, '2018-05-18 06:24:52', 1, 1414, 1),
(221, '2018-05-18 06:24:52', 1, 1334, 1),
(222, '2018-05-18 06:24:53', 1, 1334, 1),
(223, '2018-05-18 06:24:53', 1, 1334, 1),
(224, '2018-05-18 06:24:53', 1, 1350, 1),
(225, '2018-05-18 06:24:53', 1, 1350, 1),
(226, '2018-05-18 06:24:54', 1, 1366, 1),
(227, '2018-05-18 06:24:54', 1, 1366, 1),
(228, '2018-05-18 06:24:54', 1, 1366, 1),
(229, '2018-05-18 06:24:55', 1, 1382, 1),
(230, '2018-05-18 06:24:56', 1, 1382, 1),
(231, '2018-05-18 06:24:56', 1, 1382, 1),
(232, '2018-05-18 06:24:56', 1, 1398, 1),
(233, '2018-05-18 06:24:56', 1, 1398, 1),
(234, '2018-05-18 06:24:57', 1, 1398, 1),
(235, '2018-05-18 06:24:57', 1, 1853, 1),
(236, '2018-05-18 06:24:57', 1, 1853, 1),
(237, '2018-05-18 06:24:57', 1, 1860, 1),
(238, '2018-05-18 06:24:57', 1, 1860, 1),
(239, '2018-05-18 06:24:58', 1, 1860, 1),
(240, '2018-05-18 06:24:58', 1, 1867, 1),
(241, '2018-05-18 06:24:58', 1, 1867, 1),
(242, '2018-05-18 06:24:58', 1, 1867, 1),
(243, '2018-05-18 06:24:59', 1, 1874, 1),
(244, '2018-05-18 06:24:59', 1, 1874, 1),
(245, '2018-05-18 06:24:59', 1, 1874, 1),
(246, '2018-05-18 06:24:59', 1, 1874, 1),
(247, '2018-05-18 06:25:00', 1, 1881, 1),
(248, '2018-05-18 06:25:00', 1, 1881, 1),
(249, '2018-05-18 06:25:00', 1, 1888, 1),
(250, '2018-05-18 06:25:00', 1, 1888, 1),
(251, '2018-05-18 06:25:00', 1, 1888, 1),
(252, '2018-05-18 06:25:01', 1, 1606, 1),
(253, '2018-05-18 06:25:01', 1, 1606, 1),
(254, '2018-05-18 06:25:02', 1, 1606, 1),
(255, '2018-05-18 06:25:04', 1, 1446, 1),
(256, '2018-05-18 06:25:04', 1, 1446, 1),
(257, '2018-05-18 06:25:05', 1, 1446, 1),
(258, '2018-05-18 06:25:05', 1, 1462, 1),
(259, '2018-05-18 06:25:05', 1, 1462, 1),
(260, '2018-05-18 06:25:05', 1, 1462, 1),
(261, '2018-05-18 06:25:06', 1, 1462, 1),
(262, '2018-05-18 06:25:06', 1, 1478, 1),
(263, '2018-05-18 06:25:06', 1, 1478, 1),
(264, '2018-05-18 06:25:07', 1, 1622, 1),
(265, '2018-05-18 06:25:07', 1, 1622, 1),
(266, '2018-05-18 06:25:07', 1, 1622, 1),
(267, '2018-05-18 06:25:08', 1, 1510, 1),
(268, '2018-05-18 06:25:08', 1, 1510, 1),
(269, '2018-05-18 06:25:08', 1, 1526, 1),
(270, '2018-05-18 06:25:08', 1, 1526, 1),
(271, '2018-05-18 06:25:09', 1, 1526, 1),
(272, '2018-05-18 06:25:09', 1, 1542, 1),
(273, '2018-05-18 06:25:09', 1, 1542, 1),
(274, '2018-05-18 06:25:09', 1, 1542, 1),
(275, '2018-05-18 06:25:10', 1, 1558, 1),
(276, '2018-05-18 06:25:10', 1, 1558, 1),
(277, '2018-05-18 06:25:11', 1, 1558, 1),
(278, '2018-05-18 06:25:11', 1, 1574, 1),
(279, '2018-05-18 06:25:11', 1, 1574, 1),
(280, '2018-05-18 06:25:12', 1, 1574, 1),
(281, '2018-05-18 06:25:12', 1, 1590, 1),
(282, '2018-05-18 06:25:12', 1, 1590, 1),
(283, '2018-05-18 06:25:12', 1, 1590, 1),
(284, '2018-05-18 06:25:13', 1, 1953, 1),
(285, '2018-05-18 06:25:13', 1, 1953, 1),
(286, '2018-05-18 06:25:13', 1, 1953, 1),
(287, '2018-05-18 06:25:13', 1, 1969, 1),
(288, '2018-05-18 06:25:14', 1, 1969, 1),
(289, '2018-05-18 06:25:14', 1, 1969, 1),
(290, '2018-05-18 06:25:14', 1, 1985, 1),
(291, '2018-05-18 06:25:14', 1, 1985, 1),
(292, '2018-05-18 06:25:14', 1, 2001, 1),
(293, '2018-05-18 06:25:15', 1, 2001, 1),
(294, '2018-05-18 06:25:15', 1, 2017, 1),
(295, '2018-05-18 06:25:15', 1, 2017, 1),
(296, '2018-05-18 06:25:15', 1, 2017, 1),
(297, '2018-05-18 06:25:16', 1, 2024, 1),
(298, '2018-05-18 06:25:17', 1, 2024, 1),
(299, '2018-05-18 06:25:17', 1, 2031, 1),
(300, '2018-05-18 06:25:18', 1, 2031, 1),
(301, '2018-05-18 06:25:18', 1, 2031, 1),
(302, '2018-05-18 06:25:19', 1, 2037, 1),
(303, '2018-05-18 06:25:19', 1, 2037, 1),
(304, '2018-05-18 06:25:20', 1, 2037, 1),
(305, '2018-05-18 06:25:20', 1, 2044, 1),
(306, '2018-05-18 06:25:20', 1, 2044, 1),
(307, '2018-05-18 06:25:20', 1, 2044, 1),
(308, '2018-05-18 06:25:21', 1, 2051, 1),
(309, '2018-05-18 06:25:21', 1, 2051, 1),
(310, '2018-05-18 06:25:21', 1, 2051, 1),
(311, '2018-05-18 06:25:21', 1, 2058, 1),
(312, '2018-05-18 06:25:22', 1, 2058, 1),
(313, '2018-05-18 06:25:22', 1, 2058, 1),
(314, '2018-05-18 06:25:22', 1, 2074, 1),
(315, '2018-05-18 06:25:23', 1, 2074, 1),
(316, '2018-05-18 06:25:23', 1, 2074, 1),
(317, '2018-05-18 06:25:24', 1, 1638, 1),
(318, '2018-05-18 06:25:24', 1, 1638, 1),
(319, '2018-05-18 06:25:24', 1, 1638, 1),
(320, '2018-05-18 06:25:25', 1, 1638, 1),
(321, '2018-05-18 06:25:25', 1, 1654, 1),
(322, '2018-05-18 06:25:25', 1, 1654, 1),
(323, '2018-05-18 06:25:26', 1, 1654, 1),
(324, '2018-05-18 06:25:26', 1, 1654, 1),
(325, '2018-05-18 06:25:26', 1, 1670, 1),
(326, '2018-05-18 06:25:27', 1, 1670, 1),
(327, '2018-05-18 06:25:27', 1, 1670, 1),
(328, '2018-05-18 06:25:27', 1, 1686, 1),
(329, '2018-05-18 06:25:28', 1, 1686, 1),
(330, '2018-05-18 06:25:28', 1, 1686, 1),
(331, '2018-05-18 06:25:28', 1, 1702, 1),
(332, '2018-05-18 06:25:28', 1, 1702, 1),
(333, '2018-05-18 06:25:29', 1, 1702, 1),
(334, '2018-05-18 06:25:29', 1, 1798, 1),
(335, '2018-05-18 06:25:29', 1, 1798, 1),
(336, '2018-05-18 06:25:29', 1, 1798, 1),
(337, '2018-05-18 06:25:30', 1, 1814, 1),
(338, '2018-05-18 06:25:30', 1, 1830, 1),
(339, '2018-05-18 06:25:30', 1, 1830, 1),
(340, '2018-05-18 06:25:31', 1, 1830, 1),
(341, '2018-05-18 06:25:31', 1, 1846, 1),
(342, '2018-05-18 06:25:31', 1, 1846, 1),
(343, '2018-05-18 06:25:31', 1, 1718, 1),
(344, '2018-05-18 06:25:31', 1, 1718, 1),
(345, '2018-05-18 06:25:32', 1, 1734, 1),
(346, '2018-05-18 06:25:32', 1, 1734, 1),
(347, '2018-05-18 06:25:32', 1, 1734, 1);

-- --------------------------------------------------------

--
-- Table structure for table `review_detail`
--

CREATE TABLE `review_detail` (
  `detail_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Review detail id',
  `review_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Review id',
  `store_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Store id',
  `title` varchar(255) NOT NULL COMMENT 'Title',
  `detail` text NOT NULL COMMENT 'Detail description',
  `nickname` varchar(128) NOT NULL COMMENT 'User nickname',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review detail information';

--
-- Dumping data for table `review_detail`
--

INSERT INTO `review_detail` (`detail_id`, `review_id`, `store_id`, `title`, `detail`, `nickname`, `customer_id`) VALUES
(1, 1, 1, 'Dell inspirion laptop Product feedback', 'Good in price and long term use', 'Ajay', 1),
(2, 2, 1, 'I prefer more compartments', 'I prefer more compartments. If you don''t mind putting everything in one space, it''s fine. Good for the gym.', 'Chi', NULL),
(3, 3, 1, 'I use it a lot ', 'It''s a good size and I use it a lot. My only issue with it was I wanted the handles to be longer so I can wear it on my back.', 'Filiberto', NULL),
(4, 4, 1, 'I''ve had this thing for really long', 'I''ve had this thing for a really long time and it barely shows any signs of wear and tear. It''s really big, too! I''ve taken it on day trips as well as short vacations and usually have no trouble finding room for my stuff.', 'Herb', NULL),
(5, 5, 1, 'Decent bag', 'Decent bag. I keep my stuff in it for work and the gym. It''s nice and roomy. I wish it had a more sophisticated design, though. Kinda looks like it''s for kids.', 'Craig', NULL),
(6, 6, 1, 'Screwed up my back', 'I can''t believe they''re claiming these straps are "padded." Wearing this thing to class for a semester totally screwed up my back, and my shoulders would start to ache after a few minutes where the straps dug in.', 'Orville', NULL),
(7, 7, 1, 'Awesome bag', 'Awesome bag but I found it to be smaller than I thought. I haven''t felt any additional strain on my back and I use it all day long for my job.', 'Marty', NULL),
(8, 8, 1, 'The back needs more padding', 'If the back had more padding I would recommend it for everyone. You can tell the material is strong and not cheap so it''s definitely worth it.', 'Chase', NULL),
(9, 9, 1, 'I bought this backpack for my son', 'I bought this backpack for my son to take to school, but he carries it like a suitcase now! It''s also really good for airplane travel.', 'Kennith', NULL),
(10, 10, 1, 'awesome for going back and forth', 'This is awesome for going back and forth to class. I live off campus and it''s a longer walk, but this pack fits comfortably and I can even store my laptop in the main compartment.', 'Gaston', NULL),
(11, 11, 1, 'comfy and i don''t feel like a loser', 'comfy and i don''t feel like a loser carrying it.', 'Issac', NULL),
(12, 12, 1, 'The shoulder strap broke ', 'The shoulder strap broke the first time I used it. Awesome.', 'Daren', NULL),
(13, 13, 1, 'Good for work. Holds everything ', 'This is good for work. Holds everything I need. The fabric doesn''t seem that strong, but so far so good.', 'Garry', NULL),
(14, 14, 1, 'Great bag! I use it for everything! ', 'Great bag! I use it for everything! Not sure what happened with the person who said the strap broke because mine is perfect. Maybe it was fluke? I''d return it and try another. It''s been awesome for me!', 'Quinn', NULL),
(15, 15, 1, 'This bag is really cool', 'This bag is really cool. I''m an art major, so I have tons of supplies that I have to lug back and forth every day for class. I didn''t think this would be big enough, but surprisingly it can hold just about all my stuff. I really like the way it looks too.', 'Jame', NULL),
(16, 16, 1, 'Color is weird', 'I wanted to like this bag, and it is definitely good quality, but the color is so weird in real life. From a distance it kind of looks like I just found it in a dumpster. Shame because that is the only drawback.', 'Adalberto', NULL),
(17, 17, 1, 'I am OBSESSED with these', 'I run 5 times a day and am OBSESSED with this watch! It tracks and calculates all the things my brain can''t because I hate maths. PS I know this is a men''s watch and I am not a man, but I have large wrists!', 'Refugio', NULL),
(18, 18, 1, 'This thing is awesome ', 'This thing is awesome and remembers all the stuff I''ve stored. ', 'Jewel', NULL),
(19, 19, 1, 'It slides around on my wrist', 'It slides around on my wrist when I sweat. I''ve tried making it smaller but that doesn''t seem to help.', 'Brice', NULL),
(20, 20, 1, 'Working flawlessly', 'I recently replace my 25 year old watch with this one, so it had high expectations to live up to. So far all the features are working flawlessly, I only hope it lasts as long as my old one.', 'Billy', NULL),
(21, 21, 1, 'offers a lot of technology', 'can''t say this is the coolest looking watch I''ve ever owned (it''s no FAMOUS DESIGNER or anything) but it has a lot to offer technology-wise', 'Marc', NULL),
(22, 22, 1, 'Hydration alarm', 'This was given as a gift to me and it wasn''t the one I asked for, but I''m starting to like the different perks like the hydration alarm', 'Luther', NULL),
(23, 23, 1, 'It works ok but the ugliness is blinding', 'It works ok but the ugliness is blinding I am literally blinded', 'Leon', NULL),
(24, 24, 1, 'Watch too tight', 'Watch too tight please email how to loosen it or I''ll leave bad review', 'Max', NULL),
(25, 25, 1, 'No ticktock', 'I got it because I thought it would still make a ticktick noise even though it''s digital, but it doesn''t!', 'Chuck', NULL),
(26, 26, 1, 'Not a bad watch for the price', 'Not a bad watch for the price. Wish it had actual numbers instead of marks, though.', 'Robert', NULL),
(27, 27, 1, 'the only watch I wear', 'Hands down, it''s the only watch I wear when I''m out on a run. The strap is soft and smooth, and the face even glows in the dark.', 'Noe', NULL),
(28, 28, 1, 'Dual time zone settings', 'When I''m in another country, I hate not knowing what time it really is back home so the dual time zone settings are awesome!', 'Frank', NULL),
(29, 29, 1, 'Really perfect for travel ', 'Really perfect for my needs. I travel a ton, so I''ll always know what time to give my wife a call back home.', 'Jamie', NULL),
(30, 30, 1, 'I really like the modern look', 'I really like the modern look of this watch, but I could only get one time zone to work. I hope it has a warranty because I''m sending it back!', 'Bobby', NULL),
(31, 31, 1, 'This watch is so tight', 'This watch is so tight around my wrist! I don''t care if it''s adjustable, it cuts off my circulation.', 'Tommie', NULL),
(32, 32, 1, 'My favorite layers', 'This is one of my favorite layers for running in the winter, it keeps me warm but it''s not super bulky.', 'Markus', NULL),
(33, 33, 1, 'Weird looking pocket', 'I where it when I''m coaching football so I can run up and down the sidelines and yell without getting to hot. The pocket on the chest is weird looking tho.', 'Xavier', NULL),
(34, 34, 1, 'Perfect layer for the game', 'Perfect layer for wearing to the game, it doesn''t shed all over your clothes like a regular hoodie.', 'Mike', NULL),
(35, 35, 1, 'The fabric is great', 'the fabric is great, it keeps me warm but it''s not bulky like my other hoodies. Runs large, though.', 'Emory', NULL),
(36, 36, 1, 'This jacket isn''t keeping me warm', 'This jacket isn''t keeping me warm', 'Jon', NULL),
(37, 37, 1, 'I don''t feel protected', 'Not sure exactly what "elements" they''re talking about here. I don''t feel protected from any "elements" in this throw-away.', 'Homer', NULL),
(38, 38, 1, 'avid hiker/snowboarder', 'I''m an avid hiker/snowboarder and know quality when I see it. Please don''t be fooled by the thin feel of this jacket - I always feel very comfortable and only rarely feel too warm, and then it''s only because I wear insulating base layers. You will not be disappointed, especially if you''re into winter sports or outdoor activities at higher elevations. My only issue with it is the zipper, which broke and had to be replaced.', 'Wilbur', NULL),
(39, 39, 1, 'Has never let me down', 'This jacket is going to be by my side for the rest of my life. It''s never let me down once in a rainstorm, always keeping me dry as I bike back and forth to work. ', 'Long', NULL),
(40, 40, 1, 'Practically perferct', 'I have to say this is a practically perfect rain jacket. I do wish it was heavier though since it only works for me in spring and summer rainstorms. ', 'Lindsay', NULL),
(41, 41, 1, 'Excellent quality. I actually love', 'Excellent quality. I actually love when it rains because I get a lot of compliments whenever I wear this jacket. ', 'Randell', NULL),
(42, 42, 1, 'I just live for this track jacket', 'I just live for this track jacket. Because it''s solid, I can put it on over any t-shirt and look really athletic. I may not exercise all the time, but wearing this jacket makes other people think I do!', 'Wyatt', NULL),
(43, 43, 1, 'Not 100% sure how I feel', 'Not 100% sure how I feel about this yet so I''m going to number it right in the middle. It keeps me warm but the fleece is kind of itchy. It definitely has to go on top of another layer or you''ll spend all day itching!', 'Glen', NULL),
(44, 44, 1, 'fleece lining', 'The fleece lining is what sold me! I hate being cold and this jacket really helps me not to be. Almost perfect-the hem slightly unraveled which is preventing me from giving it a 5.', 'Shon', NULL),
(45, 45, 1, 'I didn''t think it was that warm', 'I didn''t think it was that warm at all and it needs a hood. I wouldn''t wear it in the winter that''s for sure. ', 'Neal', NULL),
(46, 46, 1, 'for my son to wear to school ', 'I got this for my son to wear to school and it''s treated him very well. Not too bulky and the reversible design is a very nice touch!', 'Herschel', NULL),
(47, 47, 1, 'Kinda bulky', 'Kinda bulky when you wear both, but they still let me move ok. Great for football games.', 'Rudolf', NULL),
(48, 48, 1, 'easy to take apart', 'I like this one. It''s easy to take apart when you want to wear the quilted part and zips back in no problem. If you''re a big guy its fits a little tight under the arms though.', 'Emmett', NULL),
(49, 49, 1, 'does everything it''s suppose', 'This jacket does everything it''s supposed to do. Keeps me warm and has lots of room for my stuff. Good buy!', 'Burl', NULL),
(50, 50, 1, 'Love it; don''t have to take off gloves', 'Love it; don''t have to take my gloves off and dig around in my pocket for my ipod', 'Carol', NULL),
(51, 51, 1, 'Wish buttons were on sleeve', 'Wish the buttons were on the sleeve but still very cool. Jacket is way warm too', 'Ronald', NULL),
(52, 52, 1, 'Great on my evening ride', 'I went back to the site and snagged another in a different color - they''re great on my evening rides. I usually prefer raglan sleeves but I am always comfortable in this design, and the mesh works wonders for keeping my temperature down. ', 'Arden', NULL),
(53, 53, 1, 'Loop thing broke', 'I''d give it 4 or 5 stars if it wasn''t for the fact that the effing  loop thing broke. It wasn''t stretchy enough and now im back to carrying my fone and sweating on it ughghg! ', 'Jessie', NULL),
(54, 54, 1, 'They chafed me!', 'They chafed me!', 'Rashad', NULL),
(55, 55, 1, 'They are comfy', 'Don''t know why people on here are so negative about these pants. They are comfy and feel very lightweight and soft. The internal pocket is great for cash when I need to refeul during runs! ', 'Barrett', NULL),
(56, 56, 1, 'Saggy pants', 'After running in these saggy pants I just wanted to crawl into a hole a die. ', 'Davis', NULL),
(57, 57, 1, 'These are really bulky', 'These are really bulky and not very flattering at all. It looks like I have a big bulge at my stomach. I wear them around the house but I wouldn''t go out in public with them on.', 'Donte', NULL),
(58, 58, 1, 'Inseam is WAY too long', 'Either I''m too short or this inseam is way off. WAY too long! I trip constantly in these.', 'Reyes', NULL),
(59, 59, 1, 'Keeping me warm before games', 'They do the job of keeping me warm before a game. I wear them then and only then-wouldn''t wear them anywhere else.', 'Harold', NULL),
(60, 60, 1, 'There''s nothing to dislike', 'There''s nothing to dislike about these track pants bc they do everything you want??blocks the wind and keeps you warm. Very happy I got them!', 'Darius', NULL),
(61, 61, 1, 'The mesh lining sometimes snags', 'The mesh lining sometimes snags when your taking them off but that''s pretty common I think. Like them and would recommend.', 'Armando', NULL),
(62, 62, 1, 'These are great!', 'These are great! Major major points for the two-tone design plus all those technologies - I never feel gross after my runs. A must have for anyone serious about their body! ', 'Hershel', NULL),
(63, 63, 1, 'I bought these for my man.', 'I bought these for my man. What can I say, these pants keep him comfortable and dry. Never heard any complaints except that he wishes they stretched more. Good buy! ', 'Hans', NULL),
(64, 64, 1, 'I like them', 'I like them, they keep my sweat on the down low. They are stretchy. And I like the pockets. They look cool, too. So yeah. Go buy them.', 'Kenny', NULL),
(65, 65, 1, 'THESE PANTS KEEP ME WARM', 'THESE PANTS KEEP ME WARM WHEN IM BENCHED AT MY GAME! I DON''T GET TO PLAY A LOT. LOL', 'Nicky', NULL),
(66, 66, 1, 'Good dog walking pants', 'Good dog walking pants', 'Mark', NULL),
(67, 67, 1, 'The draw string is more like half a draw', 'The draw string is more like half a draw string. Dosent stay so pants fall of my butt. I think they run too big.', 'Margarito', NULL),
(68, 68, 1, 'I got this for running', 'I got this for running, but the fit is kind of funny so I just end up wearing it for yard work. It''s light enough, just nothing special.', 'Tyree', NULL),
(69, 69, 1, 'Nice and light. ', 'Nice and light. I like that there''s no obnoxious design.', 'Weston', NULL),
(70, 70, 1, 'I bought 5 of the same color!', 'People at the gym probably think I don''t wwas my cloths because I wear this evryday but I just bought 5 of the same color because it''s awesome!', 'Jude', NULL),
(71, 71, 1, 'my new favorite CrossFit shirt', 'Fits great. It''s my new favorite CrossFit shirt.', 'Leigh', NULL),
(72, 72, 1, 'Works for the gym', 'Works for the gym and even as an undershirt.', 'Roland', NULL),
(73, 73, 1, 'I like the crew neck', 'I got this shirt in the v-neck version too and I like the crew a lot better. It seems to fit better and I think the fabric is lighter. This one doesn''t have the mesh inserts but allover the fabric feels better.', 'Edison', NULL),
(74, 74, 1, 'Hate the fabric', 'Why is this kind of fabric all the rage? I know it''s supposed to be the best thing since sliced bread with the moisture wicking crap but I feel like I sweat MORE than with just regular cotton. I''m over paying an arm and a leg for the "technology." give me a 5 dollar tshirt from the dollar store!', 'Hai', NULL),
(75, 75, 1, 'Ready to hit the gym', 'As soon as I put this shirt on I feel ready to hit the gym, even on my laziest days. Something about the way it feels just gets me psyched up!', 'Cletus', NULL),
(76, 76, 1, 'Too small ', 'I''m a bodybuilder with extremely large, buff muscles and this shirt simply does not accommodate my bulk. Even with the V neck it''s too tight around my neck, and the sleeve openings were practically cutting off circulation to my biceps and triceps! I had to send it back but I have to admit that felt good ;)', 'Gustavo', NULL),
(77, 77, 1, 'it says moisturewicking?', 'it says moisturewicking but i still sweat when i wear this shirt, don''t trust what you read on the internet', 'Filiberto', NULL),
(78, 78, 1, 'This shirt is a dream come true', 'This shirt is a dream come true for a sweat bucket like me. Love the material and I don''t look like I got stuck in the rain when I''m done working out.', 'Nathan', NULL),
(79, 79, 1, 'Awesome tee! Not cheap.', 'Awesome tee! Not the cheapest though.', 'Darwin', NULL),
(80, 80, 1, 'Liked the way it fit mostly', 'Liked the way it fit mostly. But the collar was weird. I guess it kept me dry?', 'Jonas', NULL),
(81, 81, 1, 'Keeps me cool', 'I like this shirt, it keeps me cool when I''m lifting. Would like a tighter fit though.', 'Warren', NULL),
(82, 82, 1, 'Gets the job done. Even when I''m pouring', 'Gets the job done. Even when I''m pouring sweat, this shirt maintains a nice dry feel. I think the sizing runs a little large, so order accordingly.', 'Jerome', NULL),
(83, 83, 1, 'I sweat SO much.', 'I sweat SO much. This top is fine when I don''t intend to exert myself, but BOY does it NOT work for people with hyperhydrosis!', 'Alfonzo', NULL),
(84, 84, 1, 'This shirt is too tight and too thin.', 'This shirt is too tight and too thin. REALLY emphasizes the fact that I do not have clearly defined pectorals.', 'Sergio', NULL),
(85, 85, 1, 'Great training top. ', 'Great training top. I like that it also has UV protection because I''m outdoors all the time. Seems are a little weird tho.', 'Donnell', NULL),
(86, 86, 1, 'I love this shirt. Perfect fit', 'I love this shirt. Perfect fit, perfect price. My dad plays on a softball team and I got one for him and he is very happy too. has my vote! ', 'Erwin', NULL),
(87, 87, 1, 'Comfortable and soft', 'On the plus side, it''s definitely comfortble and soft,  and yes it does keep you dry  no matter how much you sweat. However, I found the cuffs to be too tight and the material is a little too sheer for my tastes. But it''s not the most expensive on the shelf, so whatever.', 'Don', NULL),
(88, 88, 1, 'It''s okay, a little boring. ', 'It''s okay, a little boring. ', 'Maynard', NULL),
(89, 89, 1, 'Very comfy but wears thin', 'It is very comfy but wears thin - I won''t be able to get much more use out it as it now is revealing my bra I think. I have the white one so I will switch to a darker color if I decide to by another 1. Very embarrassing when your at the gym. ', 'Hiram', NULL),
(90, 90, 1, 'I''ve lost 50 pounds in 5 months', 'I''ve lost 50 pounds in 5 months and this shirt kept me comfortable since day one. I would recommend it to anyone serious about workout. Sizes run small tho so order a size up. ', 'Darwin', NULL),
(91, 91, 1, 'Fell apart in wash', 'I don''t even know where to begin. It fell apart during the third wash. Whoever says this is a good-quality piece of gear is lying through their teeth! ', 'Chung', NULL),
(92, 92, 1, 'Fantastic shirt for the price!', 'This is a fantastic shirt for the price!', 'Jae', NULL),
(93, 93, 1, 'Luma got it right with this one.', 'Luma got it right with this one. I don''t care about looking stylish, I just want a shirt that will still feel good after an hour at the gym, and that''s what I got.', 'Alfred', NULL),
(94, 94, 1, 'Ripped the FIRST TIME I wore ', 'This shirt ripped the FIRST TIME I wore it.', 'Carlo', NULL),
(95, 95, 1, 'Really comfy shirt', 'Really comfy shirt, sometimes clings a bit but at least it dries fast.', 'Gus', NULL),
(96, 96, 1, 'I work out a lot', 'I work out a lot and my shoulders are really big, most tank tops are too tight in the armholes but this one is great.', 'Harry', NULL),
(97, 97, 1, 'Nice fit and fabric', 'Nice fit and fabric, but the inserts are in weird places.', 'Damon', NULL),
(98, 98, 1, 'I purchased this tank top for my son', 'I purchased this tank top for my son when he''s working out in the gym after school. It fits great and he loves it!', 'Duncan', NULL),
(99, 99, 1, 'Yea. This pilled imeddiately', 'Yea. This pilled imeddiately after I washed it. Definatly returning.', 'Wendell', NULL),
(100, 100, 1, 'Why can''t you make this in my size?', 'Why can''t you make this in my size? Thank you for the color at least. ', 'Harold', NULL),
(101, 101, 1, 'Wear this on evening runs', 'Wear this on evening runs. I absolutely adore it and will probably buy more.', 'Kasey', NULL),
(102, 102, 1, 'Great for baoting ', 'We go boating a lot and these are great for when I''m putting our boat in the water. Those tiny rocks and pebbles can be super sharp but I never feel a single one of them. ', 'Manual', NULL),
(103, 103, 1, 'These do drain well', 'These do drain well and are really comfortable but the bottoms can still be slippery if you''re walking on wet rocks. Just be careful!', 'Milton', NULL),
(104, 104, 1, 'They work great in water', 'They work great in water but I also like to wear em on hotter days if we''re walking around and regular sandals will let too much debris get in.', 'Antwan', NULL),
(105, 105, 1, 'The only things I care about when I''m ru', 'The only things I care about when I''m running are comfort and speed. These are definitely comfortable but I don''t think their lightweight enough to give me great speed. And the search continues.', 'Lamont', NULL),
(106, 106, 1, 'Great! I wear these almost every day-esp', 'Great! I wear these almost every day-especially love that I don''t have to worry about the laces.', 'Gerald', NULL),
(107, 107, 1, 'These sit in my foyer waiting for my eve', 'These sit in my foyer waiting for my everyday run. Sometimes I run 5 miles in them, sometimes 10. They never let me down.', 'Ike', NULL),
(108, 108, 1, 'Running in these are imPOSSible!! I only', 'Running in these are imPOSSible!! I only can run 23 minutes at a time, but these hurt when I even do that. They look pretty snazzy though, lots of compliments from the ladies on my route.', 'Hugh', NULL),
(109, 109, 1, 'Pretty average cts. Their comfrtable whe', 'Pretty average cts. Their comfrtable when I first start but don''t try working out too hard in them. You''re feet will definitely start to hurt!', 'Judson', NULL),
(110, 110, 1, 'I wear these to my gym daily. I go hard ', 'I wear these to my gym daily. I go hard on the treadmill and these don''t let me down.', 'Carlo', NULL),
(111, 111, 1, 'Love, love, love - did I say love? It wa', 'Love, love, love - did I say love? It was totally worth it to wait for Luma to come out with a trail running shoe. Very comfortable.', 'Jerold', NULL),
(112, 112, 1, 'I slipped on a rock on these shoes and I', 'I slipped on a rock on these shoes and I could feel all the pain. I would go out running on a regular day in these but not if it''s been previously raining.', 'Ezra', NULL),
(113, 113, 1, 'The only thing I don''t like about these ', 'The only thing I don''t like about these shoes are the weird toes. They point upward making it look really strange on a guy. Otherwise very good.', 'Simon', NULL),
(114, 114, 1, 'These are really good to play tennis in ', 'These are really good to play tennis in too. They fit a little narrow in the heel which was fine for me but might be a problem for others.', 'Noah', NULL),
(115, 115, 1, 'I wore these until they finally gave out', 'I wore these until they finally gave out! Great running shoes..very comfortable and light and I could feel the difference the Torsion system makes. Highly recommended for anyone going out 4 to 5 times a week.', 'Joey', NULL),
(116, 116, 1, 'How awesome is it to find a product that', 'How awesome is it to find a product that works exactly as advertised! These seriously felt like I''d been wearing them forever, the first time I put them on. The way it molds to your foot is amazing. I have run two full marathons in these with barely a blister. GO LUMA!', 'King', NULL),
(117, 117, 1, 'I wouldn''t be a runner if it wasn''t for ', 'I wouldn''t be a runner if it wasn''t for these shoes. I used to get really bad shin splints, blisters and pulled muscles no matter how much I stretched. Once I bought these it got so much eaiser. It is true that they are not that stylish but if you are serious about running, who cares?', 'Irwin', NULL),
(118, 118, 1, 'I wear these for a variety of sports and', 'I wear these for a variety of sports and they are very comfortable, no complaints there. I''m not crazy about the design though. In person they look kind of feminine. Plus the color is no bueno. They somehow looked dirty and old even fresh out of the box.', 'Monroe', NULL),
(119, 119, 1, 'Awesome shoes!! I didn''t realize how muc', 'Awesome shoes!! I didn''t realize how much I''d been missing by wearing other shoes without a lot of heel cushioning. I''m sticking with these from now on.', 'Josh', NULL),
(120, 120, 1, 'They ran too narrow for me and the mater', 'They ran too narrow for me and the material was almost too light - seemed pretty flimsy and I don''t think they would last very long.', 'Leslie', NULL),
(121, 121, 1, 'These are really REALLY LIGHT! Not much ', 'These are really REALLY LIGHT! Not much shoe or cushioning. My calves were sore after running in them 5 miles the first time.', 'Jody', NULL),
(122, 122, 1, 'Not great on slippery grass. I wear them', 'Not great on slippery grass. I wear them mostly for walking around.', 'Chad', NULL),
(123, 123, 1, 'I used these as racing flats and they we', 'I used these as racing flats and they were awesome. ', 'Anibal', NULL),
(124, 124, 1, 'Unflattering', 'Honestly, could this be any more unflattering? The cut is really bad and I can''t see anyone looking good in this unless they''re really muscular.', 'Dominic', NULL),
(125, 125, 1, 'Keeps me comfortable', 'I''ve only worn it a few times so far, but it really keeps me comfortable at the gym. I throw on a pair of athletic shorts and call it a day.', 'Mervin', NULL),
(126, 126, 1, 'Nothing to write home about', 'I agree with the reviewer above. You can get this same tank in a million other stores, nothing to write home about. Do like the top stitching though-really adds some athleticsm.', 'Trey', NULL),
(127, 127, 1, 'Average tank', 'It''s just an average tank. Nothing really to say about it. I rarely work out so I can''t speak to the moisture-wicking part.', 'Edmund', NULL),
(128, 128, 1, 'NOT for skinny dudes ', 'Unless ur really muscular this won''t look good. I''m keeping it cuz it''s motivation to keep working out. But skinny dudes be warned.', 'Tracey', NULL),
(129, 129, 1, 'Keeps me feeling dry', 'The fabric is great when I''m sweating hard. It keeps me feeling dry. Wish there was more ventilation.', 'Archie', NULL),
(130, 130, 1, 'I feel awesome when I wear this', 'I feel awesome when I wear this to hit the gym!!!  The cut makes my triceps look huge. It''s so rewarding to look in the mirror after a really tough workout. My girlfriend says I look like a lunkhead but I know she loves it!!', 'Eldon', NULL),
(131, 131, 1, 'Comfortable', 'Not as lightweight as it seems but it was ok. Comfortable.', 'Joey', NULL),
(132, 132, 1, 'I bought a few of these for my husband. ', 'I bought a few of these for my husband. He likes them but they did shrink when washed. I just don''t put them in the dryer anymore and it''s fine!', 'Matthew', NULL),
(133, 133, 1, 'TINY neck hole??', 'Why is the neck opening so small??? Didn''t fit right.', 'Monroe', NULL),
(134, 134, 1, 'Shirt can stink after', 'Ok, MAYBE this is just me but I sweat a LOT when I run, and I''ve noticed that this shirt really retains odor.  I washed it three times and it still stank so I had to just throw it away. Which sucks because I really liked it, but come on!', 'Scotty', NULL),
(135, 135, 1, 'Wish it was longer', 'wish it was longer. i''m 5''11 with a long torso and it''s too short.', 'Alexander', NULL),
(136, 136, 1, 'Razorback version?', 'I''d prefer if it was Racerback, but otherwise it''s a great shirt. The Mesh zones are where you need them when you really get Sweaty.', 'Graham', NULL),
(137, 137, 1, 'Fits true to size, feels great.', 'Fits true to size, feels great. I bought three and I won''t wear anything else when I''m training.', 'Patrick', NULL),
(138, 138, 1, 'I bought this bag for my daughter', 'I bought this bag for my daughter because she travels all the time and she loves it! It''s easy for her to roll and carry by herself even when full. ', 'Shella', NULL),
(139, 139, 1, 'Goes everywhere with me', 'I''ve taken this bag to so many places and everything still works. I hate when the threads start to come apart and the zipper gets caught after like 2 uses. So far so good!', 'Crissy', NULL),
(140, 140, 1, 'The material is a little thin', 'The material is a little thin so I''m afraid it won''t last long. The zippers slide really nice and the wheels are good on the pavement. Overall a good purchase.', 'Alene', NULL),
(141, 141, 1, 'OBSESSED with this!', 'OBSESSED with this! I love that it''s adjustable! A bit more expensive than I wanted, but TOTALLY worth it.', 'Cliff', NULL),
(142, 142, 1, 'Great but pricey', 'This totally makes me feel like I''m actually working my muscles. The adjustable thing is awesome. A bit pricey though.', 'Fiona', NULL),
(143, 143, 1, 'I hate working out...This does not help.', 'I hate working out...This does not help.it gets tangled really easily.can''t even get threw 1 work out with it. Returning.', 'Ardith', NULL),
(144, 144, 1, 'Want more resistance', 'Its great to be able to work out at home and sometimes on my lunch break at work - I wish this provided more resistance, though.', 'Randy', NULL),
(145, 145, 1, 'Agreed. More resistance', 'Agreed. I can do plenty of exercises with it and its awesome for when I can''t make it to the gym, but I''d like more resistance, too.', 'Keren', NULL),
(146, 146, 1, 'Too lazy to go to gym', 'I use these when I''m too lazy to go to the gym. Really helps me stay in shape. I have already adjusted several times to increase the tension because I''m getting stronger!', 'Madeleine', NULL),
(147, 147, 1, 'Do not buy!', 'Tried to adjust one and the plastic part just snapped in half. Very Disappointed. Do not buy!', 'Ricky', NULL),
(148, 148, 1, 'They work, nothing special. ', 'They work, nothing special. I had a set that I liked better but my ex stole it.   ', 'Krystle', NULL),
(149, 149, 1, 'Good value for the price', 'pretty satisfied with this jump rope. good value for the price', 'Lavonia', NULL),
(150, 150, 1, 'I BRING THIS TO ALL MY MEETS!', 'I BRING THIS TO ALL MY MEETS FOR WARMUP!!! BARELY TAKES UP ANY SPACE IN MY BAG', 'Andy', NULL),
(151, 151, 1, 'perfect for when I''m too lazy', 'this is so perfect for when I''m too lazy to go to the gym. I do a few pushups and then whip out the jump rope and work on my cardio. It''s a quick workout that makes me feel greaat and I don''t even have to leave the house', 'Orville', NULL),
(152, 152, 1, 'PURPLES', 'I bought these pushup grips because they came in purple!! my boyfriend has his own and I love using them but the purple was so perfect for me because I''m a girly girl at heart', 'Toya', NULL),
(153, 153, 1, 'these are ok', 'these are ok, but my brother has the military ones and I like them loads better', 'Johanne', NULL),
(154, 154, 1, 'Will whip you into shape!', 'these things whip you into shape! a month after I got them and used them several times aeach week I could see a huge difference in my muscle tone. very happy with the results!!!  :)', 'Ashlea', NULL),
(155, 155, 1, 'Easy to clean', 'Wide mouth opening makes it easy to clean! ', 'Olimpia', NULL),
(156, 156, 1, 'Perfect weight', 'I always found 10 lb weights too light and 20 lb too heavy. This is just right!', 'Danielle', NULL),
(157, 157, 1, 'should''ve got a while ago', 'I don''t know why I didn''t get this years ago. I''ve been diligently doing ab workouts every day with little effect. Incorporated this into my routine and BAM! I can see my love handles melting away!', 'Keith', NULL),
(158, 158, 1, 'I love this bag! It''s cute', 'I love this bag! It''s cute and doesn''t advertise that I''m going to the gym like a duffel bag.', 'Dodie', NULL),
(159, 159, 1, 'I pack a TON of stuff', 'I take a TON of stuff to the gym and yoga studio. Way more than I should but this bag still allows me to carry a bunch of it. I like taking it better than any other bag.', 'Tara', NULL),
(160, 160, 1, 'Wish there were pockets ', 'I like it but I wish there were pockets on the inside instead of just one big space. I didn''t think it would fit inside my locker but it did.', 'Chasidy', NULL),
(161, 161, 1, 'Motivated by this Bag!', 'I purchased this bag hoping it would give me more motivation to go to the gym and it has! Not too big, sized just right for me and all my friends love it :)', 'Tamisha', NULL),
(162, 162, 1, 'Wish it had more pocket', 'Wish it had more pockets, but it''s still good. A shoulder strap would also have been nice.', 'Lidia', NULL),
(163, 163, 1, 'Fits tons of gear', 'I take this along whenever I head up to my cabin. Fits tons of gear plus a few of my favorite electronics. And duct tape.', 'Elizabeth', NULL),
(164, 164, 1, 'ok bag for a day''s hike', 'ok bag for a day''s hike around Hawk Mountain. Needs a sturdier top handle tho, things ripped', 'Sueann', NULL),
(165, 165, 1, 'I bike four miles a day to work and back', 'I bike four miles a day to work and back and I love this thing. It''s a good size and it''s pretty comfortable to wear across my back while I ride. So far I have not noticed much wear and tear on the fabric and I''ve had it for 6 months.', 'Sadye', NULL),
(166, 166, 1, 'I would love this bag EXCEPT . . .', 'I would love this bag EXCEPT with the case on my Iphone won''t fit in the cell phone pocket! Why make a pocket for cell phones if it''s not going to fit an Iphone.', 'Adena', NULL),
(167, 167, 1, 'it''s really ugly,', 'Its fine I guess but it''s really ugly, I picked out a really cute bag for college but my mom got me this one instead.', 'Tracee', NULL),
(168, 168, 1, 'What''s not to like about this bag?!!', 'What''s not to like about this bag?!! It''s simple, clean and modern, and it fits me perfeclty. The roominess is a big plus when I make multiple trips to the gym then the grocery store then wherever else. LOVE IT! ', 'Anglea', NULL),
(169, 169, 1, 'Did I get floor model?', 'I must have a floor model or soemthin cuz when I ordered it it came all stained up, some brown crust or somethin. Gross. I requested a refund so we''ll see. Other than that I think it''s a quality bag, just disappointed with mine. ', 'Lasandra', NULL),
(170, 170, 1, 'I bought this backpack for my daughter', 'I bought this backpack for my daughter who''s going to college this year. Her campus is huge and I was concerned that she would hurt her back lugging all those books around. It seems like there''s enough padding!', 'Francesca', NULL),
(171, 171, 1, 'I heart this backpack so hard. ', 'I heart this backpack so hard. The colors are soooo cute and there''s enough room for all my stuff xoxo ', 'Susy', NULL),
(172, 172, 1, 'Can I give zero stars?', 'I would give this bag zero stars if I could!!!  All of the zippers fell off the first tim I used it!!!  DON''T BUY THIS ', 'Ingeborg', NULL),
(173, 173, 1, 'Um, not actually waterproof', 'This bag is definitely not waterproof. I accidentally left it outside in a downpour, and my clothes got soaked. I''m disappointed!', 'Aiko', NULL),
(174, 174, 1, 'A roomy duffle', 'I really love how roomy the duffle is. I''m a clotheshorse, so I like to take a lot of outfits with me when I go away. I have no problem stuffing it all in. It''s not a very stylish bag, but it serves its purpose.', 'Dollie', NULL),
(175, 175, 1, 'doesn''t hold that much', 'It doesn''t hold that much, so it''s really just good for a night or two away. It''s also pretty plain looking, so for those who like bells and whistles, look elsewhere.', 'Caroyln', NULL),
(176, 176, 1, 'Good bank for small hand', 'I bought this watch specifically for its band because I have really small wrists and have a hard time finding watches that fit, even ones that say women''s. This one fit wonderfully and I could even make it smaller!', 'Desiree', NULL),
(177, 177, 1, 'Super sleek, love it. ', 'Super sleek, love it. I''m buying another as a gift!', 'Cecelia', NULL),
(178, 178, 1, 'My mom loves it', 'I bought this watch for my mom to workout with and she loves it. It''s not too difficult for her to set and she uses it all the time now.', 'Natosha', NULL),
(179, 179, 1, 'Not classical but cool', 'Even though I''m a fan of classic/traditional styles, I bought this watch for something different since it''s fun and I could really use for tracking my sprints. I have no complaints!', 'Pok', NULL),
(180, 180, 1, 'Buckle BROKE', 'my buckle BROKE off the 2nd time I wore it. And then I had issues getting a replacement even with the warranty. Luma needs to stick to clothing basics because they clearly are out of their league with the more technical stuff. UGH', 'Grace', NULL),
(181, 181, 1, 'It died after  a week', 'It died after  a week of infuriating malfunctionality! First that little plastic screen that houses the numbers - yeah. it popped off in 24 hours. Okay, no problem i thought, i''ll just not touch any thing vital. Then the metal back popped off and landed in the toilet so there was just no recovering that. THEN  the buckle broke! In the trash it went!', 'Nadia', NULL),
(182, 182, 1, 'The strap broke', 'The strap broke, which made me think I have fat wrists but I don''t.', 'Laronda', NULL),
(183, 183, 1, 'Pieces kept coming off', 'Pieces kept coming off.', 'Colleen', NULL),
(184, 184, 1, 'Keeps excellent time and is pretty tough', 'Keeps excellent time and is pretty tough! Still no scratches or scuffs after a year of wearing it.', 'Denese', NULL),
(185, 185, 1, 'Has been through quite a few adventures ', 'Has been through quite a few adventures and vacations with me and still looks and runs great. That includes plenty of trips to water parks with the kids! ', 'Joette', NULL),
(186, 186, 1, 'Rides up during workouts', 'Rides up a bit during workouts but otherwise it''s pretty comfy! I like the hood.', 'Gala', NULL),
(187, 187, 1, 'Great for cooler runs. ', 'Great for cooler runs. ', 'Shonta', NULL),
(188, 188, 1, 'I literally wear this everywhere', 'I literally wear this everywhere even out to dinner!', 'Kathrine', NULL),
(189, 189, 1, 'I can''t get enough of this hoodie', 'I can''t get enough of this hoodie. It''s so comfortable, I hate taking it off! I''m buying it in more colors now so that I can wear it more without people realizing that I wear the same thing every day ;)', 'Olene', NULL),
(190, 190, 1, 'Not really flattering', 'Not really flattering for my body type', 'Scarlet', NULL),
(191, 191, 1, 'Softest hoodie ever', 'This hoodie may be the softest thing I''ve ever touched! It''s so perfect for curling up on a chilly day. I wore it hiking on a really cold day last November and it kept me really warm. My only issue is that it''s kind of plain and unflattering. I would love to wear it all the time but it makes me look a little frumpy. Luma, I need this fabric with a more stylish design!', 'Martina', NULL),
(192, 192, 1, 'The fabric stains easily', 'The fabric stains easily but otherwise I''m a big fan. I don''t usually like to wear pullovers but the zipper makes it easy to get on and off.', 'Elly', NULL),
(193, 193, 1, 'I wear it to class', 'I usually just wear it to class but it''s definitely comfortable and light enough that you could work out in it.', 'Temeka', NULL),
(194, 194, 1, 'Zipper is goofy', 'Honestly this hoodie is okay but I do not get thezipper. Why not just make a full length zipper? I would rather have no zipper.', 'Julieann', NULL),
(195, 195, 1, 'Needs long sleeves please', 'The fleece fabric is really nice, but I hate the short-sleeve design. Can you please make this with long sleeves? It''ll keep me warmer!', 'Louisa', NULL),
(196, 196, 1, 'My favorite hoodie', 'This is definitely my favorite hoodie in my closet. I wouldn''t wear it if it was freezing out, but it''s a great extra layer on normal mornings.', 'Joelle', NULL),
(197, 197, 1, 'Not very stylish', 'It''s kinda average and I don''t know if I would get it again. With the right color combination, it might look ok, but the combo I have and the short sleeve style doesn''t make it very stylish.', 'Jonna', NULL),
(198, 198, 1, 'Kept me warm', 'So I borrowed this from my mom and I have to say It''s not my style but I was super cold and it did the job. ', 'Jeanelle', NULL),
(199, 199, 1, 'Great value', 'The sleeves are definitely thicker than you realize, which is a good thing! The photo is a little misleading because it makes the hoodie look thin but it''s really quite substantial! Great value. ', 'Oma', NULL),
(200, 200, 1, 'Best hoodies I''ve owned.', 'im planning on buying another one of these in another color. the best hoodie ive ever owned.', 'Beatris', NULL),
(201, 201, 1, 'Love it!', 'Walking our St. Benard is pretty serious exercise - you WILL sweat trying to keep up with him. This hoodie keeps me just warm enough and doesn''t get bogged down with sweat. Love it! ', 'Georgeann', NULL),
(202, 202, 1, 'Fall weather jogs or walks', 'Perfect for fall weather jogs or walks on cool evenings. The sweat-wicking fabric works wonders, keeps the hoodie dry after you''ve cooled down so you''re not cold and wet (which I can''t stand).', 'Stefany', NULL),
(203, 203, 1, 'Soft but not wrm', 'Definitely not as warm as I hoped, but its super soft. I''ll wear it when I need another layer.', 'Lilliam', NULL),
(204, 204, 1, 'Ultra comfy', 'This is my go-to jacket when I''m running in the morning. It keeps me warm and is ultra comfy.', 'Sadye', NULL),
(205, 205, 1, 'Pocket too small for mp3', 'The mp3 pocket barely fits my device. I was hoping for a slightly larger pocket.', 'Rolande', NULL),
(206, 206, 1, 'Fitted, awesome', 'Can I please wear this every day?! Would that be weird? It''s fitted, which is awesome because I hate frumpy sweatshirts. And the fleece is a dream!', 'Elvina', NULL),
(207, 207, 1, 'Shrinks a lot', 'Mine shrunk to! :( I gave it to my little sister.', 'Alesha', NULL),
(208, 208, 1, 'Shrunk right away!', 'So annoyed! I loved this, but then it shrunk after I washed it once! It''s adorable but now the sleeves are too short. Returning. :(', 'Tennille', NULL),
(209, 209, 1, 'my new fave zip up', 'OMG, I''ve found my new fave zip up!! I live in this thing! I''m just mad their arent more colors.', 'Lakeesha', NULL),
(210, 210, 1, 'Only shirt I wear anywmore', 'I wear this to class so often, my friend asked me if I actually own any other shirts!', 'Charlyn', NULL),
(211, 211, 1, 'it''s so light and really long!', 'it''s so light and really long! I wear it with jeans, yoga pants, whatever!', 'Regenia', NULL),
(212, 212, 1, 'Wish I''d bought the tshirt', 'Love the material, but the hood kind of flops around. I should have bought the t-shirt instead of the hoodie.', 'Juliette', NULL),
(213, 213, 1, 'Fleece inside, sweater outside', 'I love wearing fleece, but I hate how it pills and picks up fluff and cat hair. This hoodie is perfect, because it''s a fleece on the inside and a sweater on the outside. I wear it around the house all the time in the winter.', 'Anamaria', NULL),
(214, 214, 1, 'Great for hiking and camping', 'Great hoodie for hiking and camping in the fall. I really wish the pockets were bigger, though, I can''t get my hands in them when I''m wearing gloves.', 'Tiffiny', NULL),
(215, 215, 1, 'Super warm.', 'Super warm. My mom bought this for me for when I have to go watch my stupid brother play middle school football in 30 degree weather.', 'Cara', NULL),
(216, 216, 1, 'This is REALLY comfortable!', 'This is REALLY comfortable! It''s a little too bulky to run or bike in, but for cold-weather hikes it''s awesome.', 'Nadene', NULL),
(217, 217, 1, 'Thumb holes rock!', 'Thumb holes rock!', 'Tawny', NULL),
(218, 218, 1, 'REALLY lightweight.', 'OK this jacket is REALLY lightweight. But if it''s really cold, you have to wear it with baselayers or you''ll freeze. It''s a good buy, but be prepared!', 'Illa', NULL),
(219, 219, 1, 'Nice for skiing', 'Looks good and feels good. It''s nice for skiing because it blocks the wind and keeps you warm, but doesn''t get too hot after you start sweating.', 'Ela', NULL),
(220, 220, 1, 'Most comfortable jacket', 'I have never worn such a comfortable jacket!!!  It''s really thin and moves well with your body, I have no idea how it manages to keep you so warm. And if you''ll be in really cold weather, you can easily add some extra layers underneath and still be comfortable.', 'Kecia', NULL),
(221, 221, 1, 'a little short for me', 'It''s a little short for my loooooooooooooong torso, but it''s still comfy and cute. Good for short runs.', 'Johna', NULL),
(222, 222, 1, 'Square shape', 'Makes me look like a square. Literally, like a square shape.', 'Jessi', NULL),
(223, 223, 1, 'This is my go-to jacket', 'This is my go-to jacket when I''m running in the rain or cold! It''s warm but lightweight, totally waterproof, and I love the colors!', 'Kellye', NULL),
(224, 224, 1, 'I wear this pretty much every day!', 'I wear this pretty much every day! The material is really soft and it goes with everything!', 'Marvella', NULL),
(225, 225, 1, 'Horrible unflatterung design', 'It''s called not making clothes that are boxy and unflattering. Heard of it?', 'May', NULL),
(226, 226, 1, 'The actual color is brighter', 'The actual color is brighter than it looks in the photo, but thats why I like it for jogging in the neighborhood at night ', 'Chasidy', NULL),
(227, 227, 1, 'Big back pocket', 'my fave part is the back pocket. I needed a place to keep my cell phone safe when I run', 'Wava', NULL),
(228, 228, 1, 'Everyone loves this jacket on me', 'I got this jacket for tennis practice since its in my schools color and everyone on the team loves it!!', 'Kristyn', NULL),
(229, 229, 1, 'Rain proof?', 'I don''t know if this jacket would be good for a whole day outside in the snow. It says waterproof but mine got pretty soaked one day when it was raining. ', 'Janna', NULL),
(230, 230, 1, 'Overheated', 'I agree with that other reviewer. I get very overheated while wearing this jacket while shoveling snow. ', 'Venetta', NULL),
(231, 231, 1, 'Great colors!', 'I''m into the colors cause they''re great for night skiing-but I overheated really fast in this jacket', 'Demetrice', NULL),
(232, 232, 1, 'This is the most dependable piece I own.', 'This is the most dependable piece I own. You''ll rarely me without this on. (except in the summer)', 'Mathilde', NULL),
(233, 233, 1, 'Not for cold weather', 'This really doesn''t deliver on the insulating part. I can''t say I would throw this on in really chilly temperatures-need a coat.', 'Eda', NULL),
(234, 234, 1, 'Perfect, perfect, perfect in every way. ', 'Perfect, perfect, perfect in every way. I love the quilting and it keeps me toasty warm.', 'Denyse', NULL),
(235, 235, 1, 'Awesome bottoms ', 'Awesome bottoms for working out or just relaxing at the house.', 'Ashlee', NULL),
(236, 236, 1, 'Great for yoga', 'I''m not a fan of really tight or compressed pants so I love these for my yoga classes (not so much for hot yoga, though). ', 'Nyla', NULL),
(237, 237, 1, 'Yoga is for hippees', 'I bought these to hang out in not for yoga. yoga is for hippees!', 'Judith', NULL),
(238, 238, 1, 'I can''t stop lookin in the mirror! ', 'I can''t stop lookin in the mirror! ', 'Isadora', NULL),
(239, 239, 1, 'Want more colors', 'Guys. I have like 10 pairs of these cause they''re so comfy, natch! Please make more colors!', 'Isela', NULL),
(240, 240, 1, 'I have 5 pairs', 'I literally have about 5 pairs of these in my drawer. I don''t just wear them to yoga though. Oh no! I wear them on a normal Saturday around town. Love them!', 'Dannielle', NULL),
(241, 241, 1, 'These pants move so well!', 'These pants move so well! They provide nice coverage so when I''m in Downward Dog, I don''t have to worry. I don''t know about this Cooltech technology though. I sweat in them, so they definitely don''t keep me dry. They''re pretty warm!', 'Deloise', NULL),
(242, 242, 1, 'Seams separated righth away', 'I wear them once and the seams started to separate! Not constructed well at all. With the kazillion other yoga pants out there, there''s no excuse for this!', 'Rosann', NULL),
(243, 243, 1, 'high waistband, no muffin top!', 'Love the cut and the high waistband. Bye bye, muffin top!', 'Lily', NULL),
(244, 244, 1, 'Relaxing', 'My favorite part of the day is when I get to come home, take my work pants off and slip these on. Sooo soft and perfect for relaxing.', 'Brittany', NULL),
(245, 245, 1, 'LOVE, LOVE, LOVE.  ', 'LOVE, LOVE, LOVE. They are so comfy and good for anything. I have two toddlers, so I rarely get a chance to finish my morning stretches and yoga, let alone get changed afterward before I get interrupted by my kids. Sometimes I will be making lunch and realize that I''m still wearing these! They''re so comfy and good for anything. It''s nice to know that if I need to run out on a quick errand, I won''t look like a total bum even if I forgot to change.', 'Brittni', NULL),
(246, 246, 1, 'NOT flattering.', 'NOT flattering. My boyfriend bought me these cuz he loves the way yoga pants look. I wore them once and he said I should return them then we broke up :(', 'Pamela', NULL),
(247, 247, 1, 'These are soft and stretchy', 'These are soft and stretchy enough but don''t draw sweat away. ', 'Tarra', NULL),
(248, 248, 1, 'I bought these for yoga', 'I bought these for yoga but they make better pajama bottoms. I like a tighter fit for yoga.', 'Lue', NULL),
(249, 249, 1, 'These pants are so cute!', 'These pants are so cute! I like them better for lounging than exercising, though. The material gets a little too hot when I''m working out.', 'Mavis', NULL),
(250, 250, 1, 'good for PJs but that''s about it', 'good for PJs but that''s about it', 'Kemberly', NULL),
(251, 251, 1, 'These are my favorite pants. ', 'These are my favorite pants. Super cute and soooo comfy.', 'Tashina', NULL),
(252, 252, 1, 'Soooooooooooooo light!', 'Soooooooooooooo light!', 'Beverlee', NULL),
(253, 253, 1, 'Cute.', 'Cute.', 'Latarsha', NULL),
(254, 254, 1, 'I really dig this shirt for races', 'I really dig this shirt for races, it makes me feel like I''m flying.', 'Lorena', NULL),
(255, 255, 1, 'This shirt is decent for running', 'This shirt is pretty good! I''m a long distance runner and it keeps me pretty comfortable, although these companies always act like their shirts are magical and really it''s just pretty basic stuff. Still it''s a decent shirt and I would recommend it. Just don''t expect it to change your life.', 'Allyson', NULL),
(256, 256, 1, 'Wish it was longer', 'fits kind of awkward wish it was longer', 'Chloe', NULL),
(257, 257, 1, 'Fits my large head TG', 'So I have a really large head and I love this shirt bc the neckline is so stretchy! Honestly I have gotten stuck in other running shirts with the really small collar hahahahaha so embarrassing!!! !!', 'Hsiu', NULL),
(258, 258, 1, 'Flatters my big build', 'I have broad, strong shoulders and this top is one of the very few that flatters my build. 5 stars for sure!', 'Annamaria', NULL),
(259, 259, 1, 'Fits my fiancee better', 'My fiance accidentally put this on when he was getting dressed and it fit him better than it fits me?? ', 'Lang', NULL);
INSERT INTO `review_detail` (`detail_id`, `review_id`, `store_id`, `title`, `detail`, `nickname`, `customer_id`) VALUES
(260, 260, 1, 'Fabric is great for sport', 'I do think the fabric is great for sports but the cut and style are weeeird.', 'Becki', NULL),
(261, 261, 1, 'Doesn''t help my figure one bit', 'The contored design is NOT really contored. I rarely wear this top out because it doesn''t do anything for my figure.', 'Hellen', NULL),
(262, 262, 1, 'What''s with the sleeve cut?', 'What''s with the sleeve cut? I don''t even have linebacker shoulders but I feel like the sleeves are cutting off circulation to my arms!', 'Pearle', NULL),
(263, 263, 1, 'Light, comfy', 'Light, comfy, does a good job shedding sweat.', 'Slyvia', NULL),
(264, 264, 1, 'Light but tight', 'This shirt is very light but a TIGHT fit! Almost compression-tight.', 'Nell', NULL),
(265, 265, 1, 'Looks and feels aweseom ', 'Really like the seams. Looks and feels awesome!', 'Skye', NULL),
(266, 266, 1, 'Really close-fitting. Do not love.', 'Really close-fitting. Do not love.', 'Amberly', NULL),
(267, 267, 1, 'Not at all soft', 'There''s a ton of other t-shirts I''d choose over this one. It''s not soft at all and the fabric feels like sandpaper next to my skin-was really hoping for better.', 'Ashli', NULL),
(268, 268, 1, 'This T is a no brainer-solid color', 'This T is a no brainer-solid color, pairs with everything, and keeps me cool. What more could I want during my run?', 'Ruth', NULL),
(269, 269, 1, 'Thank you! ', 'Thank you! I''m so sick of inappropriate workout clothes. This is exactly what I was looking for. Cover yourselves up, ladies!', 'Sonja', NULL),
(270, 270, 1, 'Um, NOT flattering at ALL.', 'Um, NOT flattering at ALL. Too tight and short.', 'Candie', NULL),
(271, 271, 1, 'Like the color .sleeves were too tight. ', 'Like the color .sleeves were too tight. felt constricted.', 'Elmira', NULL),
(272, 272, 1, 'Sooooooooooo soft! ', 'Sooooooooooo soft! Nice and long too.', 'Nyla', NULL),
(273, 273, 1, 'Cute, comfy. ', 'Cute, comfy. A little overpriced though.', 'Hollie', NULL),
(274, 274, 1, 'I love that it''s so lightweight. ', 'I love that it''s so lightweight. I can wear it under jackets and vests without feeling like a stuffed sausage.', 'Celestine', NULL),
(275, 275, 1, 'who doesn''t love a racerback, amiright?!', 'who doesn''t love a racerback, amiright?!', 'Irma', NULL),
(276, 276, 1, 'I where this AAALLLLL the time', 'I where this AAALLLLL the time to workout! Its so comfy and cute! I just wish it was a little longer.', 'Gidget', NULL),
(277, 277, 1, 'soft but a little tight', 'soft but a little tight for my liking.', 'Tatiana', NULL),
(278, 278, 1, 'Love the fabric, but it''s huge!', 'Love the fabric, but it''s huge! I look like a homeless person in it.', 'Maisie', NULL),
(279, 279, 1, 'Soft', 'seriously, I can''t get over how soft this tank top is. Do you have anything else made with it?', 'Karine', NULL),
(280, 280, 1, 'omg I love this tank top, it''s perfect', 'omg I love this tank top, it''s perfect for running and yoga. The fabric is so soft and stretchy!', 'Bree', NULL),
(281, 281, 1, 'cool and dry', 'What I rally love here is that it does the job of keeping me cool and dry.  I''m a big guy and sweat A LOT! Even after a day of gulf, I''m still dry and comfortable. The problem is that the sleeves are very tight - actually bought a second shirt because i split the armpit/sleeve area of the first. Do yourself a favor and order a size bigger.  ', 'Lakeisha', NULL),
(282, 282, 1, 'Not great', 'Not great - buttons are too small and hurt my fingers trying to button it. I''ve seen better designs...', 'Collette', NULL),
(283, 283, 1, 'What a versatile shirt!', 'What a versatile shirt! Not only does it feel very soft compared to my old worn out polos, but it also does the job promised. I like going out after my gamefor drinks so I look good then too and don''t need to change into something fresh. ', 'Adaline', NULL),
(284, 284, 1, 'So comfortable I almost feel barefoot. T', 'So comfortable I almost feel barefoot. The treads on these is so intricate and deep, so they can be hard to clean. ', 'Karisa', NULL),
(285, 285, 1, 'On the plus side, the perforated cushion', 'On the plus side, the perforated cushioning  is really soft and reduces friction. However, they seem to absorb sweat and don''t dry very quickly, which causes a lot of odor. ', 'Evelyn', NULL),
(286, 286, 1, 'I threw them out when the mushy lining s', 'I threw them out when the mushy lining started to ooze. ', 'Markita', NULL),
(287, 287, 1, 'Beyond perfection! I always get tons of ', 'Beyond perfection! I always get tons of compliments when I wear these out.', 'Manuela', NULL),
(288, 288, 1, 'These look awesome with EVERYTHING! Hone', 'These look awesome with EVERYTHING! Honestly, there''s nothing you can wear that won''t look perfect with these. Preppy and retro! Love them!', 'Gwen', NULL),
(289, 289, 1, 'The suede upper makes these pretty hard ', 'The suede upper makes these pretty hard to wear if its raining outside! The sneaker designers really weren''t thinking on this one. Cute design though!', 'Jovan', NULL),
(290, 290, 1, 'Love a preppy sneaker! These are still a', 'Love a preppy sneaker! These are still adorable but not as casual as running shoes! Love them!', 'Shellie', NULL),
(291, 291, 1, 'These are my favorite new pair of sneake', 'These are my favorite new pair of sneakers! I just hate that they get dirty really fast.', 'Dena', NULL),
(292, 292, 1, 'Have had these for quite a while and the', 'Have had these for quite a while and they''re still my go-to pair for every morning jog. Really hold up well and still feel good.', 'Evalyn', NULL),
(293, 293, 1, 'Really comfy and awesome for running or ', 'Really comfy and awesome for running or checking out trails at the park. ', 'Adele', NULL),
(294, 294, 1, 'Velcro straps?? Are you kidding me? Am I', 'Velcro straps?? Are you kidding me? Am I two years old? The bottom is cool though!', 'Star', NULL),
(295, 295, 1, 'Cool-looking kicks! I''d wear them anywhe', 'Cool-looking kicks! I''d wear them anywhere not just the gym or running. They''ll look great with everything!', 'Nikki', NULL),
(296, 296, 1, 'I absolutely love these trainers. I can ', 'I absolutely love these trainers. I can get on the gym floor so quick becuz i don''t have to tie any annoying ties.', 'Rosy', NULL),
(297, 297, 1, 'Don''t like the strap on top; gets too lo', 'Don''t like the strap on top; gets too loose sometimes', 'Aleen', NULL),
(298, 298, 1, 'Love the no laces and they feel really g', 'Love the no laces and they feel really good- wear em all the time!', 'Dannette', NULL),
(299, 299, 1, 'I love these for when I walk the boardwa', 'I love these for when I walk the boardwalk with my grandaughter. They seem pretty hip and I got lots of compliments on them from the ladies at the bingo night', 'Lita', NULL),
(300, 300, 1, 'These looked really ugly on my feet when', 'These looked really ugly on my feet when I got them. The picture online is much more flattering than the reality. I''m bummed. ', 'Joyce', NULL),
(301, 301, 1, 'I can appreciate the concept, but I thin', 'I can appreciate the concept, but I think I''ll be going back to regular laced sneakers from now on, they just didn''t seem to fit my feet as well I guess because my feet are so narrow. People with narrow feet shouldn''t buy these!', 'Gertrud', NULL),
(302, 302, 1, 'I couldn''t live without these. I wear th', 'I couldn''t live without these. I wear them everywhere, not just running. They feel like I don''t have anything on my feet, and their so, so comfortble.', 'Leonia', NULL),
(303, 303, 1, 'These are really well made and so lightw', 'These are really well made and so lightweight. I''ll definitely be buying more of these.', 'Nadene', NULL),
(304, 304, 1, 'Want these in every single color Luma ma', 'Want these in every single color Luma makes! I am the first to say that I''m a couch potatoe, I don''t run at all. I wear these to the mall for shopping instead. :)', 'Min', NULL),
(305, 305, 1, 'Ummm, fashion? If you say so. They''re co', 'Ummm, fashion? If you say so. They''re comfy and all, but these shoes are hideous.', 'Katy', NULL),
(306, 306, 1, 'Cute and comfortable definitely. The ela', 'Cute and comfortable definitely. The elastic streteched out a bit too much but I still wear them.', 'Laurice', NULL),
(307, 307, 1, 'Love love LOVE!!!  I can''t get enough of ', 'Love love LOVE!!!  I can''t get enough of these shoes. They are SUPER comfy and go with everything!', 'Kara', NULL),
(308, 308, 1, 'It was really hard to find the right siz', 'It was really hard to find the right size for these. I had to send them back 3 times before I got a pair that fit. Really aggravating!!!  I ended up having to get two sizes larger than I usually wear and a wide, which I''ve never worn before in my life. Sizing is messed up do yourself a favor, go to the store and try them on.', 'Angeline', NULL),
(309, 309, 1, 'VERY LIGHTWEIGHT COMFY-GOOD SHOES', 'VERY LIGHTWEIGHT COMFY-GOOD SHOES', 'Marita', NULL),
(310, 310, 1, 'Wore these for a year and they started f', 'Wore these for a year and they started falling apart. For the price I guess I''ll just get another pair cuz I do like them. But I think a shoe should last longer. It''s not like I can take my sneakers to a cobbler haha', 'Pura', NULL),
(311, 311, 1, 'I am in love with these shoes and will b', 'I am in love with these shoes and will buy them until they don''t make them anymore. I run every day in them and I''m still on my first pair after a whole year. They''re SO comfy.', 'Natashia', NULL),
(312, 312, 1, 'Design is adorable-when you have cute wo', 'Design is adorable-when you have cute workout gear, exercising is fun. I''d buy these again.', 'Brigitte', NULL),
(313, 313, 1, 'Have no idea what all the fuss is about ', 'Have no idea what all the fuss is about with these. I don''t know, maybe I just bought the wrong size, but these are so uncomfortable. They dig into my toes and I always end up with blisters. Their cute but will look elsewhere.', 'Roseline', NULL),
(314, 314, 1, 'Pic is WAY different then the real thing', 'Pic is WAY different then the real thing! My mom wouldn''t even wear these there so ugly! Can I give a 0 rating?', 'Garnett', NULL),
(315, 315, 1, 'Meh, I''m not hating them, but I''m not in', 'Meh, I''m not hating them, but I''m not in love. The eyelet part looks way different online and the elastic band felt really tight. They are pretty comfy other than that.', 'Eugena', NULL),
(316, 316, 1, 'I''m a mom on the go and I love these sho', 'I''m a mom on the go and I love these shoes! They''re comfy, cute and easy to slip on. What more could you ask for?', 'Elina', NULL),
(317, 317, 1, 'Not exactly true to size', 'Not exactly true to size but still very comfortable. ', 'Mistie', NULL),
(318, 318, 1, 'Snug fit without being too tight', 'Snug fit without being too tight and no irritation or chafing. ', 'Ming', NULL),
(319, 319, 1, 'bra stays comfy and dry', 'I play field hockey and it gets crazy hot outside - bra stays comfy and pretty dry. Recommended!', 'Mei', NULL),
(320, 320, 1, 'One of my favorites b/c no chafing!', 'One of my favorites b/c no chafing!', 'Bernetta', NULL),
(321, 321, 1, 'Doesn''t fit me. Luma fail.', 'Doesn''t fit me. Luma fail.', 'Roxie', NULL),
(322, 322, 1, 'does not fit. worthless.', 'does not fit. worthless.', 'Ardelia', NULL),
(323, 323, 1, 'So, so awesome. Great Support!', 'So, so awesome. Great Support! I just can''t wait for the day that I''m comfortable enough with my midriff to wear this sans shirt, because the pattern is really cute!!', 'Dorcas', NULL),
(324, 324, 1, 'I love this bra', 'I have a B cup and I love how this bra feels! It has a really firm fit but it doesn''t feel too tight. I wish every bra felt like this!', 'Cayla', NULL),
(325, 325, 1, 'So comfortable', 'If I could wear this sports bra every day, I definitely would. It''s so so comfortable and washes well.', 'Tonya', NULL),
(326, 326, 1, 'It''s an average bra', 'It''s an average bra-nothing to write home about. I don''t like how the straps dig into my shoulders, and it really doesn''t provide that much support.', 'Eartha', NULL),
(327, 327, 1, 'Make this with patterns', 'I wish they made this bra with patterns because I like to look good at the gym. This is a little blah, but still cute. I would never wear it by itself.', 'Jammie', NULL),
(328, 328, 1, 'Cute gym top', 'So, it doesn''t say that theres no shelf bra. BEWARE! Other than that, cute gym top.', 'Lorena', NULL),
(329, 329, 1, 'Cute, stretchy top!', 'Cute, stretchy top! Perfect for people with zero body fat.', 'Modesta', NULL),
(330, 330, 1, 'I got every color', 'I am a compulsive hoarder of workout gear so of course I had to have this in every color. I feel better after I buy them all because it''s a good price!', 'Ayanna', NULL),
(331, 331, 1, 'unflattering. Ugh.', 'unflattering. Ugh. The elastic was literaly digging into my skin. I got my exact size so I thought I''d be good. All set.', 'Avelina', NULL),
(332, 332, 1, 'Training bra?', 'Makes me feel like I''m wearing a training bra. Comfy though.', 'Maribel', NULL),
(333, 333, 1, 'Sizes are off', 'I had to order 3 sizes before I found my fit. The sizes do NOT line up. I did like it in the end. Just took too long to get there.', 'Krystina', NULL),
(334, 334, 1, 'Makes me feel so snug! WHOO! ', 'Makes me feel so snug! WHOO! ', 'Concepcion', NULL),
(335, 335, 1, 'Could be flirtier.', 'Could be flirtier.', 'Emerald', NULL),
(336, 336, 1, 'Not for non-petite', 'Watch out if you''re shapely like me - this tiny thing makes it hard to breath! ', 'Teofila', NULL),
(337, 337, 1, 'one of my favorites', 'I do a lot of different exercises and this tank - I have 2 of them - is one of my favorites. It''s really soft and stays drier than other tops I''ve had.', 'Elza', NULL),
(338, 338, 1, 'Zero support/modesty', 'I would never wear this bra to anything but a low impact class like yoga. There''s zero support and absolutely no modesty. Was hoping for better!', 'Shaunte', NULL),
(339, 339, 1, 'Not for high impact', 'Definitely not good for anything high-impact, but it''s very stylish for yoga or something else low impact.', 'Merrie', NULL),
(340, 340, 1, 'A regular or me', 'This is in regular rotation at the gym. Its colorful and looks kinda cute under my exercise tanks.', 'Pearl', NULL),
(341, 341, 1, 'Great fit - love the v-neck design! ', 'Great fit - love the v-neck design! ', 'Thalia', NULL),
(342, 342, 1, 'The seams bother me', 'Some of the seams bother me during certain workouts but otherwise very comfortable', 'Carma', NULL),
(343, 343, 1, 'A sweet n sporty look for the gym', 'Always a sweet n sporty look for the gym! Keeps me cool and the seams don''t rub up against me like some of my other tanks.', 'Maryanna', NULL),
(344, 344, 1, 'Good choice for working out', 'Good choice for working out and stylin'' enough to wear when I''m hanging with friends on hot days. Also washes really well! ', 'Elfriede', NULL),
(345, 345, 1, 'I love the look', 'I love the look of this top, but I wasn''t too crazy about the fit. The medium was too big in my opinion.', 'Yan', NULL),
(346, 346, 1, 'Huge arm holes??', 'I don''t know why the arm holes are so big. It looked ok in the photo but in person they''re really wide. It''s really comfortable but that bugs me.', 'Valorie', NULL),
(347, 347, 1, 'Super cute!!!  I love it', 'Super cute!!!  I love it and want more colors. I really like running in this tank because it''s not too tight.', 'Mikkel', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `review_entity`
--

CREATE TABLE `review_entity` (
  `entity_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Review entity id',
  `entity_code` varchar(32) NOT NULL COMMENT 'Review entity code'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review entities';

--
-- Dumping data for table `review_entity`
--

INSERT INTO `review_entity` (`entity_id`, `entity_code`) VALUES
(1, 'product'),
(2, 'customer'),
(3, 'category');

-- --------------------------------------------------------

--
-- Table structure for table `review_entity_summary`
--

CREATE TABLE `review_entity_summary` (
  `primary_id` bigint(20) NOT NULL COMMENT 'Summary review entity id',
  `entity_pk_value` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Product id',
  `entity_type` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Entity type id',
  `reviews_count` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Qty of reviews',
  `rating_summary` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Summarized rating',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review aggregates';

--
-- Dumping data for table `review_entity_summary`
--

INSERT INTO `review_entity_summary` (`primary_id`, `entity_pk_value`, `entity_type`, `reviews_count`, `rating_summary`, `store_id`) VALUES
(1, 1, 1, 1, 80, 1),
(2, 1, 1, 1, 80, 0),
(3, 34, 1, 2, 50, 0),
(4, 34, 1, 2, 50, 1),
(5, 39, 1, 3, 67, 0),
(6, 39, 1, 3, 67, 1),
(7, 36, 1, 3, 67, 0),
(8, 36, 1, 3, 67, 1),
(9, 35, 1, 2, 90, 0),
(10, 35, 1, 2, 90, 1),
(11, 37, 1, 3, 67, 0),
(12, 37, 1, 3, 67, 1),
(13, 38, 1, 2, 70, 0),
(14, 38, 1, 2, 70, 1),
(15, 70, 1, 3, 87, 0),
(16, 70, 1, 3, 87, 1),
(17, 73, 1, 3, 73, 0),
(18, 73, 1, 3, 73, 1),
(19, 71, 1, 3, 47, 0),
(20, 71, 1, 3, 47, 1),
(21, 69, 1, 2, 80, 0),
(22, 69, 1, 2, 80, 1),
(23, 72, 1, 4, 65, 0),
(24, 72, 1, 4, 65, 1),
(25, 308, 1, 2, 90, 0),
(26, 308, 1, 2, 90, 1),
(27, 324, 1, 2, 90, 0),
(28, 324, 1, 2, 90, 1),
(29, 452, 1, 3, 53, 0),
(30, 452, 1, 3, 53, 1),
(31, 340, 1, 3, 93, 0),
(32, 340, 1, 3, 93, 1),
(33, 436, 1, 3, 80, 0),
(34, 436, 1, 3, 80, 1),
(35, 356, 1, 2, 50, 0),
(36, 356, 1, 2, 50, 1),
(37, 372, 1, 3, 67, 0),
(38, 372, 1, 3, 67, 1),
(39, 388, 1, 2, 70, 0),
(40, 388, 1, 2, 70, 1),
(41, 404, 1, 2, 70, 0),
(42, 404, 1, 2, 70, 1),
(43, 771, 1, 3, 47, 0),
(44, 771, 1, 3, 47, 1),
(45, 784, 1, 3, 47, 0),
(46, 784, 1, 3, 47, 1),
(47, 797, 1, 2, 70, 0),
(48, 797, 1, 2, 70, 1),
(49, 810, 1, 3, 87, 0),
(50, 810, 1, 3, 87, 1),
(51, 823, 1, 3, 73, 0),
(52, 823, 1, 3, 73, 1),
(53, 592, 1, 3, 80, 0),
(54, 592, 1, 3, 80, 1),
(55, 608, 1, 2, 90, 0),
(56, 608, 1, 2, 90, 1),
(57, 560, 1, 2, 60, 0),
(58, 560, 1, 2, 60, 1),
(59, 480, 1, 3, 67, 0),
(60, 480, 1, 3, 67, 1),
(61, 496, 1, 3, 80, 0),
(62, 496, 1, 3, 80, 1),
(63, 576, 1, 2, 70, 0),
(64, 576, 1, 2, 70, 1),
(65, 640, 1, 3, 67, 0),
(66, 640, 1, 3, 67, 1),
(67, 656, 1, 4, 65, 0),
(68, 656, 1, 4, 65, 1),
(69, 512, 1, 3, 73, 0),
(70, 512, 1, 3, 73, 1),
(71, 624, 1, 3, 60, 0),
(72, 624, 1, 3, 60, 1),
(73, 528, 1, 3, 80, 0),
(74, 528, 1, 3, 80, 1),
(75, 544, 1, 3, 53, 0),
(76, 544, 1, 3, 53, 1),
(77, 927, 1, 3, 80, 0),
(78, 927, 1, 3, 80, 1),
(79, 945, 1, 3, 73, 0),
(80, 945, 1, 3, 73, 1),
(81, 958, 1, 3, 60, 0),
(82, 958, 1, 3, 60, 1),
(83, 971, 1, 3, 73, 0),
(84, 971, 1, 3, 73, 1),
(85, 984, 1, 2, 70, 0),
(86, 984, 1, 2, 70, 1),
(87, 997, 1, 3, 87, 0),
(88, 997, 1, 3, 87, 1),
(89, 1010, 1, 2, 60, 0),
(90, 1010, 1, 2, 60, 1),
(91, 1023, 1, 3, 67, 0),
(92, 1023, 1, 3, 67, 1),
(93, 672, 1, 4, 55, 0),
(94, 672, 1, 4, 55, 1),
(95, 688, 1, 3, 80, 0),
(96, 688, 1, 3, 80, 1),
(97, 704, 1, 3, 53, 0),
(98, 704, 1, 3, 53, 1),
(99, 710, 1, 4, 70, 0),
(100, 710, 1, 4, 70, 1),
(101, 40, 1, 3, 80, 0),
(102, 40, 1, 3, 80, 1),
(103, 53, 1, 3, 67, 0),
(104, 53, 1, 3, 67, 1),
(105, 51, 1, 2, 60, 0),
(106, 51, 1, 2, 60, 1),
(107, 56, 1, 3, 60, 0),
(108, 56, 1, 3, 60, 1),
(109, 50, 1, 3, 93, 0),
(110, 50, 1, 3, 93, 1),
(111, 52, 1, 3, 87, 0),
(112, 52, 1, 3, 87, 1),
(113, 48, 1, 1, 60, 0),
(114, 48, 1, 1, 60, 1),
(115, 49, 1, 2, 100, 0),
(116, 49, 1, 2, 100, 1),
(117, 41, 1, 3, 67, 0),
(118, 41, 1, 3, 67, 1),
(119, 42, 1, 2, 70, 0),
(120, 42, 1, 2, 70, 1),
(121, 45, 1, 2, 90, 0),
(122, 45, 1, 2, 90, 1),
(123, 47, 1, 3, 67, 0),
(124, 47, 1, 3, 67, 1),
(125, 43, 1, 2, 80, 0),
(126, 43, 1, 2, 80, 1),
(127, 44, 1, 3, 73, 0),
(128, 44, 1, 3, 73, 1),
(129, 46, 1, 3, 60, 0),
(130, 46, 1, 3, 60, 1),
(131, 75, 1, 3, 67, 0),
(132, 75, 1, 3, 67, 1),
(133, 77, 1, 2, 70, 0),
(134, 77, 1, 2, 70, 1),
(135, 76, 1, 3, 53, 0),
(136, 76, 1, 3, 53, 1),
(137, 74, 1, 2, 80, 0),
(138, 74, 1, 2, 80, 1),
(139, 1078, 1, 3, 87, 0),
(140, 1078, 1, 3, 87, 1),
(141, 1094, 1, 3, 67, 0),
(142, 1094, 1, 3, 67, 1),
(143, 1110, 1, 3, 60, 0),
(144, 1110, 1, 3, 60, 1),
(145, 1126, 1, 3, 60, 0),
(146, 1126, 1, 3, 60, 1),
(147, 1142, 1, 3, 80, 0),
(148, 1142, 1, 3, 80, 1),
(149, 1148, 1, 2, 80, 0),
(150, 1148, 1, 2, 80, 1),
(151, 1254, 1, 3, 67, 0),
(152, 1254, 1, 3, 67, 1),
(153, 1270, 1, 4, 70, 0),
(154, 1270, 1, 4, 70, 1),
(155, 1286, 1, 3, 87, 0),
(156, 1286, 1, 3, 87, 1),
(157, 1302, 1, 2, 90, 0),
(158, 1302, 1, 2, 90, 1),
(159, 1318, 1, 3, 87, 0),
(160, 1318, 1, 3, 87, 1),
(161, 1414, 1, 3, 87, 0),
(162, 1414, 1, 3, 87, 1),
(163, 1334, 1, 3, 67, 0),
(164, 1334, 1, 3, 67, 1),
(165, 1350, 1, 2, 60, 0),
(166, 1350, 1, 2, 60, 1),
(167, 1366, 1, 3, 87, 0),
(168, 1366, 1, 3, 87, 1),
(169, 1382, 1, 3, 60, 0),
(170, 1382, 1, 3, 60, 1),
(171, 1398, 1, 3, 87, 0),
(172, 1398, 1, 3, 87, 1),
(173, 1853, 1, 2, 80, 0),
(174, 1853, 1, 2, 80, 1),
(175, 1860, 1, 3, 93, 0),
(176, 1860, 1, 3, 93, 1),
(177, 1867, 1, 3, 67, 0),
(178, 1867, 1, 3, 67, 1),
(179, 1874, 1, 4, 80, 0),
(180, 1874, 1, 4, 80, 1),
(181, 1881, 1, 2, 60, 0),
(182, 1881, 1, 2, 60, 1),
(183, 1888, 1, 3, 67, 0),
(184, 1888, 1, 3, 67, 1),
(185, 1606, 1, 3, 87, 0),
(186, 1606, 1, 3, 87, 1),
(187, 1446, 1, 3, 73, 0),
(188, 1446, 1, 3, 73, 1),
(189, 1462, 1, 4, 60, 0),
(190, 1462, 1, 4, 60, 1),
(191, 1478, 1, 2, 60, 0),
(192, 1478, 1, 2, 60, 1),
(193, 1622, 1, 3, 73, 0),
(194, 1622, 1, 3, 73, 1),
(195, 1510, 1, 2, 60, 0),
(196, 1510, 1, 2, 60, 1),
(197, 1526, 1, 3, 47, 0),
(198, 1526, 1, 3, 47, 1),
(199, 1542, 1, 3, 73, 0),
(200, 1542, 1, 3, 73, 1),
(201, 1558, 1, 3, 80, 0),
(202, 1558, 1, 3, 80, 1),
(203, 1574, 1, 3, 87, 0),
(204, 1574, 1, 3, 87, 1),
(205, 1590, 1, 3, 60, 0),
(206, 1590, 1, 3, 60, 1),
(207, 1953, 1, 3, 60, 0),
(208, 1953, 1, 3, 60, 1),
(209, 1969, 1, 3, 80, 0),
(210, 1969, 1, 3, 80, 1),
(211, 1985, 1, 2, 90, 0),
(212, 1985, 1, 2, 90, 1),
(213, 2001, 1, 2, 80, 0),
(214, 2001, 1, 2, 80, 1),
(215, 2017, 1, 3, 73, 0),
(216, 2017, 1, 3, 73, 1),
(217, 2024, 1, 2, 70, 0),
(218, 2024, 1, 2, 70, 1),
(219, 2031, 1, 3, 67, 0),
(220, 2031, 1, 3, 67, 1),
(221, 2037, 1, 3, 93, 0),
(222, 2037, 1, 3, 93, 1),
(223, 2044, 1, 3, 67, 0),
(224, 2044, 1, 3, 67, 1),
(225, 2051, 1, 3, 80, 0),
(226, 2051, 1, 3, 80, 1),
(227, 2058, 1, 3, 73, 0),
(228, 2058, 1, 3, 73, 1),
(229, 2074, 1, 3, 60, 0),
(230, 2074, 1, 3, 60, 1),
(231, 1638, 1, 4, 75, 0),
(232, 1638, 1, 4, 75, 1),
(233, 1654, 1, 4, 60, 0),
(234, 1654, 1, 4, 60, 1),
(235, 1670, 1, 3, 67, 0),
(236, 1670, 1, 3, 67, 1),
(237, 1686, 1, 3, 60, 0),
(238, 1686, 1, 3, 60, 1),
(239, 1702, 1, 3, 40, 0),
(240, 1702, 1, 3, 40, 1),
(241, 1798, 1, 3, 73, 0),
(242, 1798, 1, 3, 73, 1),
(243, 1814, 1, 1, 80, 0),
(244, 1814, 1, 1, 80, 1),
(245, 1830, 1, 3, 60, 0),
(246, 1830, 1, 3, 60, 1),
(247, 1846, 1, 2, 70, 0),
(248, 1846, 1, 2, 70, 1),
(249, 1718, 1, 2, 80, 0),
(250, 1718, 1, 2, 80, 1),
(251, 1734, 1, 3, 53, 0),
(252, 1734, 1, 3, 53, 1);

-- --------------------------------------------------------

--
-- Table structure for table `review_status`
--

CREATE TABLE `review_status` (
  `status_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Status id',
  `status_code` varchar(32) NOT NULL COMMENT 'Status code'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review statuses';

--
-- Dumping data for table `review_status`
--

INSERT INTO `review_status` (`status_id`, `status_code`) VALUES
(1, 'Approved'),
(2, 'Pending'),
(3, 'Not Approved');

-- --------------------------------------------------------

--
-- Table structure for table `review_store`
--

CREATE TABLE `review_store` (
  `review_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Review Id',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review Store';

--
-- Dumping data for table `review_store`
--

INSERT INTO `review_store` (`review_id`, `store_id`) VALUES
(1, 0),
(1, 1),
(2, 0),
(2, 1),
(3, 0),
(3, 1),
(4, 0),
(4, 1),
(5, 0),
(5, 1),
(6, 0),
(6, 1),
(7, 0),
(7, 1),
(8, 0),
(8, 1),
(9, 0),
(9, 1),
(10, 0),
(10, 1),
(11, 0),
(11, 1),
(12, 0),
(12, 1),
(13, 0),
(13, 1),
(14, 0),
(14, 1),
(15, 0),
(15, 1),
(16, 0),
(16, 1),
(17, 0),
(17, 1),
(18, 0),
(18, 1),
(19, 0),
(19, 1),
(20, 0),
(20, 1),
(21, 0),
(21, 1),
(22, 0),
(22, 1),
(23, 0),
(23, 1),
(24, 0),
(24, 1),
(25, 0),
(25, 1),
(26, 0),
(26, 1),
(27, 0),
(27, 1),
(28, 0),
(28, 1),
(29, 0),
(29, 1),
(30, 0),
(30, 1),
(31, 0),
(31, 1),
(32, 0),
(32, 1),
(33, 0),
(33, 1),
(34, 0),
(34, 1),
(35, 0),
(35, 1),
(36, 0),
(36, 1),
(37, 0),
(37, 1),
(38, 0),
(38, 1),
(39, 0),
(39, 1),
(40, 0),
(40, 1),
(41, 0),
(41, 1),
(42, 0),
(42, 1),
(43, 0),
(43, 1),
(44, 0),
(44, 1),
(45, 0),
(45, 1),
(46, 0),
(46, 1),
(47, 0),
(47, 1),
(48, 0),
(48, 1),
(49, 0),
(49, 1),
(50, 0),
(50, 1),
(51, 0),
(51, 1),
(52, 0),
(52, 1),
(53, 0),
(53, 1),
(54, 0),
(54, 1),
(55, 0),
(55, 1),
(56, 0),
(56, 1),
(57, 0),
(57, 1),
(58, 0),
(58, 1),
(59, 0),
(59, 1),
(60, 0),
(60, 1),
(61, 0),
(61, 1),
(62, 0),
(62, 1),
(63, 0),
(63, 1),
(64, 0),
(64, 1),
(65, 0),
(65, 1),
(66, 0),
(66, 1),
(67, 0),
(67, 1),
(68, 0),
(68, 1),
(69, 0),
(69, 1),
(70, 0),
(70, 1),
(71, 0),
(71, 1),
(72, 0),
(72, 1),
(73, 0),
(73, 1),
(74, 0),
(74, 1),
(75, 0),
(75, 1),
(76, 0),
(76, 1),
(77, 0),
(77, 1),
(78, 0),
(78, 1),
(79, 0),
(79, 1),
(80, 0),
(80, 1),
(81, 0),
(81, 1),
(82, 0),
(82, 1),
(83, 0),
(83, 1),
(84, 0),
(84, 1),
(85, 0),
(85, 1),
(86, 0),
(86, 1),
(87, 0),
(87, 1),
(88, 0),
(88, 1),
(89, 0),
(89, 1),
(90, 0),
(90, 1),
(91, 0),
(91, 1),
(92, 0),
(92, 1),
(93, 0),
(93, 1),
(94, 0),
(94, 1),
(95, 0),
(95, 1),
(96, 0),
(96, 1),
(97, 0),
(97, 1),
(98, 0),
(98, 1),
(99, 0),
(99, 1),
(100, 0),
(100, 1),
(101, 0),
(101, 1),
(102, 0),
(102, 1),
(103, 0),
(103, 1),
(104, 0),
(104, 1),
(105, 0),
(105, 1),
(106, 0),
(106, 1),
(107, 0),
(107, 1),
(108, 0),
(108, 1),
(109, 0),
(109, 1),
(110, 0),
(110, 1),
(111, 0),
(111, 1),
(112, 0),
(112, 1),
(113, 0),
(113, 1),
(114, 0),
(114, 1),
(115, 0),
(115, 1),
(116, 0),
(116, 1),
(117, 0),
(117, 1),
(118, 0),
(118, 1),
(119, 0),
(119, 1),
(120, 0),
(120, 1),
(121, 0),
(121, 1),
(122, 0),
(122, 1),
(123, 0),
(123, 1),
(124, 0),
(124, 1),
(125, 0),
(125, 1),
(126, 0),
(126, 1),
(127, 0),
(127, 1),
(128, 0),
(128, 1),
(129, 0),
(129, 1),
(130, 0),
(130, 1),
(131, 0),
(131, 1),
(132, 0),
(132, 1),
(133, 0),
(133, 1),
(134, 0),
(134, 1),
(135, 0),
(135, 1),
(136, 0),
(136, 1),
(137, 0),
(137, 1),
(138, 0),
(138, 1),
(139, 0),
(139, 1),
(140, 0),
(140, 1),
(141, 0),
(141, 1),
(142, 0),
(142, 1),
(143, 0),
(143, 1),
(144, 0),
(144, 1),
(145, 0),
(145, 1),
(146, 0),
(146, 1),
(147, 0),
(147, 1),
(148, 0),
(148, 1),
(149, 0),
(149, 1),
(150, 0),
(150, 1),
(151, 0),
(151, 1),
(152, 0),
(152, 1),
(153, 0),
(153, 1),
(154, 0),
(154, 1),
(155, 0),
(155, 1),
(156, 0),
(156, 1),
(157, 0),
(157, 1),
(158, 0),
(158, 1),
(159, 0),
(159, 1),
(160, 0),
(160, 1),
(161, 0),
(161, 1),
(162, 0),
(162, 1),
(163, 0),
(163, 1),
(164, 0),
(164, 1),
(165, 0),
(165, 1),
(166, 0),
(166, 1),
(167, 0),
(167, 1),
(168, 0),
(168, 1),
(169, 0),
(169, 1),
(170, 0),
(170, 1),
(171, 0),
(171, 1),
(172, 0),
(172, 1),
(173, 0),
(173, 1),
(174, 0),
(174, 1),
(175, 0),
(175, 1),
(176, 0),
(176, 1),
(177, 0),
(177, 1),
(178, 0),
(178, 1),
(179, 0),
(179, 1),
(180, 0),
(180, 1),
(181, 0),
(181, 1),
(182, 0),
(182, 1),
(183, 0),
(183, 1),
(184, 0),
(184, 1),
(185, 0),
(185, 1),
(186, 0),
(186, 1),
(187, 0),
(187, 1),
(188, 0),
(188, 1),
(189, 0),
(189, 1),
(190, 0),
(190, 1),
(191, 0),
(191, 1),
(192, 0),
(192, 1),
(193, 0),
(193, 1),
(194, 0),
(194, 1),
(195, 0),
(195, 1),
(196, 0),
(196, 1),
(197, 0),
(197, 1),
(198, 0),
(198, 1),
(199, 0),
(199, 1),
(200, 0),
(200, 1),
(201, 0),
(201, 1),
(202, 0),
(202, 1),
(203, 0),
(203, 1),
(204, 0),
(204, 1),
(205, 0),
(205, 1),
(206, 0),
(206, 1),
(207, 0),
(207, 1),
(208, 0),
(208, 1),
(209, 0),
(209, 1),
(210, 0),
(210, 1),
(211, 0),
(211, 1),
(212, 0),
(212, 1),
(213, 0),
(213, 1),
(214, 0),
(214, 1),
(215, 0),
(215, 1),
(216, 0),
(216, 1),
(217, 0),
(217, 1),
(218, 0),
(218, 1),
(219, 0),
(219, 1),
(220, 0),
(220, 1),
(221, 0),
(221, 1),
(222, 0),
(222, 1),
(223, 0),
(223, 1),
(224, 0),
(224, 1),
(225, 0),
(225, 1),
(226, 0),
(226, 1),
(227, 0),
(227, 1),
(228, 0),
(228, 1),
(229, 0),
(229, 1),
(230, 0),
(230, 1),
(231, 0),
(231, 1),
(232, 0),
(232, 1),
(233, 0),
(233, 1),
(234, 0),
(234, 1),
(235, 0),
(235, 1),
(236, 0),
(236, 1),
(237, 0),
(237, 1),
(238, 0),
(238, 1),
(239, 0),
(239, 1),
(240, 0),
(240, 1),
(241, 0),
(241, 1),
(242, 0),
(242, 1),
(243, 0),
(243, 1),
(244, 0),
(244, 1),
(245, 0),
(245, 1),
(246, 0),
(246, 1),
(247, 0),
(247, 1),
(248, 0),
(248, 1),
(249, 0),
(249, 1),
(250, 0),
(250, 1),
(251, 0),
(251, 1),
(252, 0),
(252, 1),
(253, 0),
(253, 1),
(254, 0),
(254, 1),
(255, 0),
(255, 1),
(256, 0),
(256, 1),
(257, 0),
(257, 1),
(258, 0),
(258, 1),
(259, 0),
(259, 1),
(260, 0),
(260, 1),
(261, 0),
(261, 1),
(262, 0),
(262, 1),
(263, 0),
(263, 1),
(264, 0),
(264, 1),
(265, 0),
(265, 1),
(266, 0),
(266, 1),
(267, 0),
(267, 1),
(268, 0),
(268, 1),
(269, 0),
(269, 1),
(270, 0),
(270, 1),
(271, 0),
(271, 1),
(272, 0),
(272, 1),
(273, 0),
(273, 1),
(274, 0),
(274, 1),
(275, 0),
(275, 1),
(276, 0),
(276, 1),
(277, 0),
(277, 1),
(278, 0),
(278, 1),
(279, 0),
(279, 1),
(280, 0),
(280, 1),
(281, 0),
(281, 1),
(282, 0),
(282, 1),
(283, 0),
(283, 1),
(284, 0),
(284, 1),
(285, 0),
(285, 1),
(286, 0),
(286, 1),
(287, 0),
(287, 1),
(288, 0),
(288, 1),
(289, 0),
(289, 1),
(290, 0),
(290, 1),
(291, 0),
(291, 1),
(292, 0),
(292, 1),
(293, 0),
(293, 1),
(294, 0),
(294, 1),
(295, 0),
(295, 1),
(296, 0),
(296, 1),
(297, 0),
(297, 1),
(298, 0),
(298, 1),
(299, 0),
(299, 1),
(300, 0),
(300, 1),
(301, 0),
(301, 1),
(302, 0),
(302, 1),
(303, 0),
(303, 1),
(304, 0),
(304, 1),
(305, 0),
(305, 1),
(306, 0),
(306, 1),
(307, 0),
(307, 1),
(308, 0),
(308, 1),
(309, 0),
(309, 1),
(310, 0),
(310, 1),
(311, 0),
(311, 1),
(312, 0),
(312, 1),
(313, 0),
(313, 1),
(314, 0),
(314, 1),
(315, 0),
(315, 1),
(316, 0),
(316, 1),
(317, 0),
(317, 1),
(318, 0),
(318, 1),
(319, 0),
(319, 1),
(320, 0),
(320, 1),
(321, 0),
(321, 1),
(322, 0),
(322, 1),
(323, 0),
(323, 1),
(324, 0),
(324, 1),
(325, 0),
(325, 1),
(326, 0),
(326, 1),
(327, 0),
(327, 1),
(328, 0),
(328, 1),
(329, 0),
(329, 1),
(330, 0),
(330, 1),
(331, 0),
(331, 1),
(332, 0),
(332, 1),
(333, 0),
(333, 1),
(334, 0),
(334, 1),
(335, 0),
(335, 1),
(336, 0),
(336, 1),
(337, 0),
(337, 1),
(338, 0),
(338, 1),
(339, 0),
(339, 1),
(340, 0),
(340, 1),
(341, 0),
(341, 1),
(342, 0),
(342, 1),
(343, 0),
(343, 1),
(344, 0),
(344, 1),
(345, 0),
(345, 1),
(346, 0),
(346, 1),
(347, 0),
(347, 1);

-- --------------------------------------------------------

--
-- Table structure for table `salesrule`
--

CREATE TABLE `salesrule` (
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `from_date` date DEFAULT NULL COMMENT 'From',
  `to_date` date DEFAULT NULL COMMENT 'To',
  `uses_per_customer` int(11) NOT NULL DEFAULT '0' COMMENT 'Uses Per Customer',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `conditions_serialized` mediumtext COMMENT 'Conditions Serialized',
  `actions_serialized` mediumtext COMMENT 'Actions Serialized',
  `stop_rules_processing` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Stop Rules Processing',
  `is_advanced` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Is Advanced',
  `product_ids` text COMMENT 'Product Ids',
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `discount_qty` decimal(12,4) DEFAULT NULL COMMENT 'Discount Qty',
  `discount_step` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Discount Step',
  `apply_to_shipping` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Apply To Shipping',
  `times_used` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Times Used',
  `is_rss` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Rss',
  `coupon_type` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Coupon Type',
  `use_auto_generation` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Use Auto Generation',
  `uses_per_coupon` int(11) NOT NULL DEFAULT '0' COMMENT 'User Per Coupon',
  `simple_free_shipping` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Simple Free Shipping'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule';

--
-- Dumping data for table `salesrule`
--

INSERT INTO `salesrule` (`rule_id`, `name`, `description`, `from_date`, `to_date`, `uses_per_customer`, `is_active`, `conditions_serialized`, `actions_serialized`, `stop_rules_processing`, `is_advanced`, `product_ids`, `sort_order`, `simple_action`, `discount_amount`, `discount_qty`, `discount_step`, `apply_to_shipping`, `times_used`, `is_rss`, `coupon_type`, `use_auto_generation`, `uses_per_coupon`, `simple_free_shipping`) VALUES
(1, 'Buy 3 tee shirts and get the 4th free', 'Buy 3 tee shirts and get the 4th free', NULL, NULL, 0, 1, '{"type":"Magento\\\\SalesRule\\\\Model\\\\Rule\\\\Condition\\\\Combine","attribute":null,"operator":null,"value":"1","is_value_processed":null,"aggregator":"all","conditions":[{"type":"Magento\\\\SalesRule\\\\Model\\\\Rule\\\\Condition\\\\Product\\\\Found","attribute":null,"operator":null,"value":"1","is_value_processed":null,"aggregator":"all","conditions":[{"type":"Magento\\\\SalesRule\\\\Model\\\\Rule\\\\Condition\\\\Product","attribute":"category_ids","operator":"()","value":"38,29","is_value_processed":false}]}]}', '{"type":"Magento\\\\SalesRule\\\\Model\\\\Rule\\\\Condition\\\\Product\\\\Combine","attribute":null,"operator":null,"value":"1","is_value_processed":null,"aggregator":"all"}', 0, 1, NULL, 0, 'buy_x_get_y', '1.0000', NULL, 3, 0, 0, 1, 1, 0, 0, 0),
(2, 'Spend $50 or more - shipping is free!', 'Free shipping on any purchase over $50', NULL, NULL, 0, 1, '{"type":"Magento\\\\SalesRule\\\\Model\\\\Rule\\\\Condition\\\\Combine","attribute":null,"operator":null,"value":"1","is_value_processed":null,"aggregator":"all","conditions":[{"type":"Magento\\\\SalesRule\\\\Model\\\\Rule\\\\Condition\\\\Address","attribute":"base_subtotal","operator":">=","value":"50","is_value_processed":false}]}', '{"type":"Magento\\\\SalesRule\\\\Model\\\\Rule\\\\Condition\\\\Product\\\\Combine","attribute":null,"operator":null,"value":"1","is_value_processed":null,"aggregator":"all"}', 0, 1, NULL, 0, 'by_percent', '0.0000', NULL, 0, 0, 0, 1, 1, 0, 0, 2),
(3, '20% OFF Ever $200-plus purchase!*', 'Shopping cart price rule for the cart over $200. Does not applied on other sales items', NULL, NULL, 0, 1, '{"type":"Magento\\\\SalesRule\\\\Model\\\\Rule\\\\Condition\\\\Combine","attribute":null,"operator":null,"value":"1","is_value_processed":null,"aggregator":"all","conditions":[{"type":"Magento\\\\SalesRule\\\\Model\\\\Rule\\\\Condition\\\\Address","attribute":"base_subtotal","operator":">=","value":"200","is_value_processed":false}]}', '{"type":"Magento\\\\SalesRule\\\\Model\\\\Rule\\\\Condition\\\\Product\\\\Combine","attribute":null,"operator":null,"value":"1","is_value_processed":null,"aggregator":"all","conditions":[{"type":"Magento\\\\SalesRule\\\\Model\\\\Rule\\\\Condition\\\\Product\\\\Combine","attribute":null,"operator":null,"value":"0","is_value_processed":null,"aggregator":"all","conditions":[{"type":"Magento\\\\SalesRule\\\\Model\\\\Rule\\\\Condition\\\\Product","attribute":"category_ids","operator":"==","value":"20","is_value_processed":false},{"type":"Magento\\\\SalesRule\\\\Model\\\\Rule\\\\Condition\\\\Product","attribute":"sale","operator":"==","value":"1","is_value_processed":false}]}]}', 0, 1, NULL, 0, 'by_percent', '20.0000', NULL, 0, 0, 0, 1, 1, 0, 0, 0),
(4, '$4 Luma water bottle (save 70%)', 'Use promo code H20 at checkout', NULL, NULL, 1, 1, '{"type":"Magento\\\\SalesRule\\\\Model\\\\Rule\\\\Condition\\\\Combine","attribute":null,"operator":null,"value":"1","is_value_processed":null,"aggregator":"all","conditions":[{"type":"Magento\\\\SalesRule\\\\Model\\\\Rule\\\\Condition\\\\Product\\\\Found","attribute":null,"operator":null,"value":"1","is_value_processed":null,"aggregator":"all"}]}', '{"type":"Magento\\\\SalesRule\\\\Model\\\\Rule\\\\Condition\\\\Product\\\\Combine","attribute":null,"operator":null,"value":"1","is_value_processed":null,"aggregator":"all","conditions":[{"type":"Magento\\\\SalesRule\\\\Model\\\\Rule\\\\Condition\\\\Product","attribute":"sku","operator":"==","value":"24-UG06","is_value_processed":false}]}', 0, 1, NULL, 0, 'by_percent', '70.0000', NULL, 0, 0, 0, 1, 2, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `salesrule_coupon`
--

CREATE TABLE `salesrule_coupon` (
  `coupon_id` int(10) UNSIGNED NOT NULL COMMENT 'Coupon Id',
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `usage_limit` int(10) UNSIGNED DEFAULT NULL COMMENT 'Usage Limit',
  `usage_per_customer` int(10) UNSIGNED DEFAULT NULL COMMENT 'Usage Per Customer',
  `times_used` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Times Used',
  `expiration_date` timestamp NULL DEFAULT NULL COMMENT 'Expiration Date',
  `is_primary` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Primary',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Coupon Code Creation Date',
  `type` smallint(6) DEFAULT '0' COMMENT 'Coupon Code Type',
  `generated_by_dotmailer` smallint(6) DEFAULT NULL COMMENT '1 = Generated by dotmailer'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Coupon';

--
-- Dumping data for table `salesrule_coupon`
--

INSERT INTO `salesrule_coupon` (`coupon_id`, `rule_id`, `code`, `usage_limit`, `usage_per_customer`, `times_used`, `expiration_date`, `is_primary`, `created_at`, `type`, `generated_by_dotmailer`) VALUES
(1, 4, 'H20', NULL, 1, 0, NULL, 1, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `salesrule_coupon_aggregated`
--

CREATE TABLE `salesrule_coupon_aggregated` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `subtotal_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount Actual',
  `discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount Actual',
  `total_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount Actual',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Coupon Aggregated';

-- --------------------------------------------------------

--
-- Table structure for table `salesrule_coupon_aggregated_order`
--

CREATE TABLE `salesrule_coupon_aggregated_order` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Coupon Aggregated Order';

-- --------------------------------------------------------

--
-- Table structure for table `salesrule_coupon_aggregated_updated`
--

CREATE TABLE `salesrule_coupon_aggregated_updated` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `subtotal_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount Actual',
  `discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount Actual',
  `total_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount Actual',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Coupon Aggregated Updated';

-- --------------------------------------------------------

--
-- Table structure for table `salesrule_coupon_usage`
--

CREATE TABLE `salesrule_coupon_usage` (
  `coupon_id` int(10) UNSIGNED NOT NULL COMMENT 'Coupon Id',
  `customer_id` int(10) UNSIGNED NOT NULL COMMENT 'Customer Id',
  `times_used` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Times Used'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Coupon Usage';

-- --------------------------------------------------------

--
-- Table structure for table `salesrule_customer`
--

CREATE TABLE `salesrule_customer` (
  `rule_customer_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Customer Id',
  `rule_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `customer_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Id',
  `times_used` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Times Used'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Customer';

-- --------------------------------------------------------

--
-- Table structure for table `salesrule_customer_group`
--

CREATE TABLE `salesrule_customer_group` (
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Id',
  `customer_group_id` int(10) UNSIGNED NOT NULL COMMENT 'Customer Group Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Rules To Customer Groups Relations';

--
-- Dumping data for table `salesrule_customer_group`
--

INSERT INTO `salesrule_customer_group` (`rule_id`, `customer_group_id`) VALUES
(1, 0),
(1, 1),
(1, 2),
(1, 3),
(2, 0),
(2, 1),
(2, 2),
(2, 3),
(3, 0),
(3, 1),
(3, 2),
(3, 3),
(4, 0),
(4, 1),
(4, 2),
(4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `salesrule_label`
--

CREATE TABLE `salesrule_label` (
  `label_id` int(10) UNSIGNED NOT NULL COMMENT 'Label Id',
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Id',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id',
  `label` varchar(255) DEFAULT NULL COMMENT 'Label'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Label';

-- --------------------------------------------------------

--
-- Table structure for table `salesrule_product_attribute`
--

CREATE TABLE `salesrule_product_attribute` (
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `customer_group_id` int(10) UNSIGNED NOT NULL COMMENT 'Customer Group Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Product Attribute';

--
-- Dumping data for table `salesrule_product_attribute`
--

INSERT INTO `salesrule_product_attribute` (`rule_id`, `website_id`, `customer_group_id`, `attribute_id`) VALUES
(1, 1, 0, 105),
(1, 1, 1, 105),
(1, 1, 2, 105),
(1, 1, 3, 105),
(3, 1, 0, 105),
(3, 1, 0, 170),
(3, 1, 1, 105),
(3, 1, 1, 170),
(3, 1, 2, 105),
(3, 1, 2, 170),
(3, 1, 3, 105),
(3, 1, 3, 170),
(4, 1, 0, 74),
(4, 1, 1, 74),
(4, 1, 2, 74),
(4, 1, 3, 74);

-- --------------------------------------------------------

--
-- Table structure for table `salesrule_website`
--

CREATE TABLE `salesrule_website` (
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Rules To Websites Relations';

--
-- Dumping data for table `salesrule_website`
--

INSERT INTO `salesrule_website` (`rule_id`, `website_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales_bestsellers_aggregated_daily`
--

CREATE TABLE `sales_bestsellers_aggregated_daily` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating Pos'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Daily';

-- --------------------------------------------------------

--
-- Table structure for table `sales_bestsellers_aggregated_monthly`
--

CREATE TABLE `sales_bestsellers_aggregated_monthly` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating Pos'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Monthly';

-- --------------------------------------------------------

--
-- Table structure for table `sales_bestsellers_aggregated_yearly`
--

CREATE TABLE `sales_bestsellers_aggregated_yearly` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating Pos'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Yearly';

-- --------------------------------------------------------

--
-- Table structure for table `sales_creditmemo`
--

CREATE TABLE `sales_creditmemo` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Positive',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `base_adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Negative',
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Negative',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_adjustment` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `adjustment` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Positive',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'Order Id',
  `email_sent` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Email Sent',
  `send_email` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Send Email',
  `creditmemo_status` int(11) DEFAULT NULL COMMENT 'Creditmemo Status',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `invoice_id` int(11) DEFAULT NULL COMMENT 'Invoice Id',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `transaction_id` varchar(255) DEFAULT NULL COMMENT 'Transaction Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `shipping_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Tax Compensation Amount',
  `base_shipping_discount_tax_compensation_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Tax Compensation Amount',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `customer_note` text COMMENT 'Customer Note',
  `customer_note_notify` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Customer Note Notify'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo';

-- --------------------------------------------------------

--
-- Table structure for table `sales_creditmemo_comment`
--

CREATE TABLE `sales_creditmemo_comment` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Comment';

-- --------------------------------------------------------

--
-- Table structure for table `sales_creditmemo_grid`
--

CREATE TABLE `sales_creditmemo_grid` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'Order Id',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment Id',
  `order_created_at` timestamp NULL DEFAULT NULL COMMENT 'Order Created At',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  `state` int(11) DEFAULT NULL COMMENT 'Status',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `order_status` varchar(32) DEFAULT NULL COMMENT 'Order Status',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `billing_address` varchar(255) DEFAULT NULL COMMENT 'Billing Address',
  `shipping_address` varchar(255) DEFAULT NULL COMMENT 'Shipping Address',
  `customer_name` varchar(128) NOT NULL COMMENT 'Customer Name',
  `customer_email` varchar(128) DEFAULT NULL COMMENT 'Customer Email',
  `customer_group_id` smallint(6) DEFAULT NULL COMMENT 'Customer Group Id',
  `payment_method` varchar(32) DEFAULT NULL COMMENT 'Payment Method',
  `shipping_information` varchar(255) DEFAULT NULL COMMENT 'Shipping Method Name',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `shipping_and_handling` decimal(12,4) DEFAULT NULL COMMENT 'Shipping and handling amount',
  `adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Positive',
  `adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Negative',
  `order_base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Order Grand Total'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Grid';

-- --------------------------------------------------------

--
-- Table structure for table `sales_creditmemo_item`
--

CREATE TABLE `sales_creditmemo_item` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent Id',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_row_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `row_total` decimal(12,4) DEFAULT NULL COMMENT 'Row Total',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item Id',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `tax_ratio` text COMMENT 'Ratio of tax in the creditmemo item over tax of the order item',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Item';

-- --------------------------------------------------------

--
-- Table structure for table `sales_invoice`
--

CREATE TABLE `sales_invoice` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `is_used_for_refund` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Used For Refund',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'Order Id',
  `email_sent` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Email Sent',
  `send_email` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Send Email',
  `can_void_flag` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Can Void Flag',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `transaction_id` varchar(255) DEFAULT NULL COMMENT 'Transaction Id',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `shipping_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Tax Compensation Amount',
  `base_shipping_discount_tax_compensation_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Tax Compensation Amount',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `base_total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Refunded',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `customer_note` text COMMENT 'Customer Note',
  `customer_note_notify` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Customer Note Notify'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice';

-- --------------------------------------------------------

--
-- Table structure for table `sales_invoiced_aggregated`
--

CREATE TABLE `sales_invoiced_aggregated` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `orders_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Orders Invoiced',
  `invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced',
  `invoiced_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Captured',
  `invoiced_not_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Not Captured'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Invoiced Aggregated';

-- --------------------------------------------------------

--
-- Table structure for table `sales_invoiced_aggregated_order`
--

CREATE TABLE `sales_invoiced_aggregated_order` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `orders_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Orders Invoiced',
  `invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced',
  `invoiced_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Captured',
  `invoiced_not_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Not Captured'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Invoiced Aggregated Order';

-- --------------------------------------------------------

--
-- Table structure for table `sales_invoice_comment`
--

CREATE TABLE `sales_invoice_comment` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Comment';

-- --------------------------------------------------------

--
-- Table structure for table `sales_invoice_grid`
--

CREATE TABLE `sales_invoice_grid` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `store_name` varchar(255) DEFAULT NULL COMMENT 'Store Name',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'Order Id',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment Id',
  `order_created_at` timestamp NULL DEFAULT NULL COMMENT 'Order Created At',
  `customer_name` varchar(255) DEFAULT NULL COMMENT 'Customer Name',
  `customer_email` varchar(255) DEFAULT NULL COMMENT 'Customer Email',
  `customer_group_id` int(11) DEFAULT NULL,
  `payment_method` varchar(128) DEFAULT NULL COMMENT 'Payment Method',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  `billing_address` varchar(255) DEFAULT NULL COMMENT 'Billing Address',
  `shipping_address` varchar(255) DEFAULT NULL COMMENT 'Shipping Address',
  `shipping_information` varchar(255) DEFAULT NULL COMMENT 'Shipping Method Name',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `shipping_and_handling` decimal(12,4) DEFAULT NULL COMMENT 'Shipping and handling amount',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Grid';

-- --------------------------------------------------------

--
-- Table structure for table `sales_invoice_item`
--

CREATE TABLE `sales_invoice_item` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent Id',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_row_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `row_total` decimal(12,4) DEFAULT NULL COMMENT 'Row Total',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item Id',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `tax_ratio` text COMMENT 'Ratio of tax invoiced over tax of the order item',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Item';

-- --------------------------------------------------------

--
-- Table structure for table `sales_order`
--

CREATE TABLE `sales_order` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `state` varchar(32) DEFAULT NULL COMMENT 'State',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `coupon_code` varchar(255) DEFAULT NULL COMMENT 'Coupon Code',
  `protect_code` varchar(255) DEFAULT NULL COMMENT 'Protect Code',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `is_virtual` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Virtual',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer Id',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_discount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Canceled',
  `base_discount_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Invoiced',
  `base_discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Refunded',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `base_shipping_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Canceled',
  `base_shipping_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Invoiced',
  `base_shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Refunded',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `base_shipping_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Refunded',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `base_subtotal_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Canceled',
  `base_subtotal_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Invoiced',
  `base_subtotal_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Refunded',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Canceled',
  `base_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Invoiced',
  `base_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Refunded',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `base_total_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Canceled',
  `base_total_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Invoiced',
  `base_total_invoiced_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Invoiced Cost',
  `base_total_offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Offline Refunded',
  `base_total_online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Online Refunded',
  `base_total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Paid',
  `base_total_qty_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Qty Ordered',
  `base_total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Refunded',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `discount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Discount Canceled',
  `discount_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Discount Invoiced',
  `discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Discount Refunded',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `shipping_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Canceled',
  `shipping_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Invoiced',
  `shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Refunded',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `shipping_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Refunded',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `subtotal_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Canceled',
  `subtotal_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Invoiced',
  `subtotal_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Refunded',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Tax Canceled',
  `tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Tax Invoiced',
  `tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Tax Refunded',
  `total_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Total Canceled',
  `total_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Total Invoiced',
  `total_offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Offline Refunded',
  `total_online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Online Refunded',
  `total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Total Paid',
  `total_qty_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty Ordered',
  `total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Refunded',
  `can_ship_partially` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Can Ship Partially',
  `can_ship_partially_item` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Can Ship Partially Item',
  `customer_is_guest` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Customer Is Guest',
  `customer_note_notify` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Customer Note Notify',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `customer_group_id` int(11) DEFAULT NULL,
  `edit_increment` int(11) DEFAULT NULL COMMENT 'Edit Increment',
  `email_sent` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Email Sent',
  `send_email` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Send Email',
  `forced_shipment_with_invoice` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Forced Do Shipment With Invoice',
  `payment_auth_expiration` int(11) DEFAULT NULL COMMENT 'Payment Authorization Expiration',
  `quote_address_id` int(11) DEFAULT NULL COMMENT 'Quote Address Id',
  `quote_id` int(11) DEFAULT NULL COMMENT 'Quote Id',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Negative',
  `adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Positive',
  `base_adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Negative',
  `base_adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Positive',
  `base_shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Amount',
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `base_total_due` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Due',
  `payment_authorization_amount` decimal(12,4) DEFAULT NULL COMMENT 'Payment Authorization Amount',
  `shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `total_due` decimal(12,4) DEFAULT NULL COMMENT 'Total Due',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `customer_dob` datetime DEFAULT NULL COMMENT 'Customer Dob',
  `increment_id` varchar(32) DEFAULT NULL COMMENT 'Increment Id',
  `applied_rule_ids` varchar(128) DEFAULT NULL COMMENT 'Applied Rule Ids',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `customer_email` varchar(128) DEFAULT NULL COMMENT 'Customer Email',
  `customer_firstname` varchar(128) DEFAULT NULL COMMENT 'Customer Firstname',
  `customer_lastname` varchar(128) DEFAULT NULL COMMENT 'Customer Lastname',
  `customer_middlename` varchar(128) DEFAULT NULL COMMENT 'Customer Middlename',
  `customer_prefix` varchar(32) DEFAULT NULL COMMENT 'Customer Prefix',
  `customer_suffix` varchar(32) DEFAULT NULL COMMENT 'Customer Suffix',
  `customer_taxvat` varchar(32) DEFAULT NULL COMMENT 'Customer Taxvat',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `ext_customer_id` varchar(32) DEFAULT NULL COMMENT 'Ext Customer Id',
  `ext_order_id` varchar(32) DEFAULT NULL COMMENT 'Ext Order Id',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `hold_before_state` varchar(32) DEFAULT NULL COMMENT 'Hold Before State',
  `hold_before_status` varchar(32) DEFAULT NULL COMMENT 'Hold Before Status',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `original_increment_id` varchar(32) DEFAULT NULL COMMENT 'Original Increment Id',
  `relation_child_id` varchar(32) DEFAULT NULL COMMENT 'Relation Child Id',
  `relation_child_real_id` varchar(32) DEFAULT NULL COMMENT 'Relation Child Real Id',
  `relation_parent_id` varchar(32) DEFAULT NULL COMMENT 'Relation Parent Id',
  `relation_parent_real_id` varchar(32) DEFAULT NULL COMMENT 'Relation Parent Real Id',
  `remote_ip` varchar(32) DEFAULT NULL COMMENT 'Remote Ip',
  `shipping_method` varchar(120) DEFAULT NULL,
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `store_name` varchar(32) DEFAULT NULL COMMENT 'Store Name',
  `x_forwarded_for` varchar(32) DEFAULT NULL COMMENT 'X Forwarded For',
  `customer_note` text COMMENT 'Customer Note',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `total_item_count` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Total Item Count',
  `customer_gender` int(11) DEFAULT NULL COMMENT 'Customer Gender',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `shipping_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Tax Compensation Amount',
  `base_shipping_discount_tax_compensation_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Tax Compensation Amount',
  `discount_tax_compensation_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Invoiced',
  `base_discount_tax_compensation_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Invoiced',
  `discount_tax_compensation_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Refunded',
  `base_discount_tax_compensation_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Refunded',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `coupon_rule_name` varchar(255) DEFAULT NULL COMMENT 'Coupon Sales Rule Name',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `paypal_ipn_customer_notified` int(11) DEFAULT '0' COMMENT 'Paypal Ipn Customer Notified'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order';

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_address`
--

CREATE TABLE `sales_order_address` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `parent_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Parent Id',
  `customer_address_id` int(11) DEFAULT NULL COMMENT 'Customer Address Id',
  `quote_address_id` int(11) DEFAULT NULL COMMENT 'Quote Address Id',
  `region_id` int(11) DEFAULT NULL COMMENT 'Region Id',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer Id',
  `fax` varchar(255) DEFAULT NULL COMMENT 'Fax',
  `region` varchar(255) DEFAULT NULL COMMENT 'Region',
  `postcode` varchar(255) DEFAULT NULL COMMENT 'Postcode',
  `lastname` varchar(255) DEFAULT NULL COMMENT 'Lastname',
  `street` varchar(255) DEFAULT NULL COMMENT 'Street',
  `city` varchar(255) DEFAULT NULL COMMENT 'City',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `telephone` varchar(255) DEFAULT NULL COMMENT 'Phone Number',
  `country_id` varchar(2) DEFAULT NULL COMMENT 'Country Id',
  `firstname` varchar(255) DEFAULT NULL COMMENT 'Firstname',
  `address_type` varchar(255) DEFAULT NULL COMMENT 'Address Type',
  `prefix` varchar(255) DEFAULT NULL COMMENT 'Prefix',
  `middlename` varchar(255) DEFAULT NULL COMMENT 'Middlename',
  `suffix` varchar(255) DEFAULT NULL COMMENT 'Suffix',
  `company` varchar(255) DEFAULT NULL COMMENT 'Company',
  `vat_id` text COMMENT 'Vat Id',
  `vat_is_valid` smallint(6) DEFAULT NULL COMMENT 'Vat Is Valid',
  `vat_request_id` text COMMENT 'Vat Request Id',
  `vat_request_date` text COMMENT 'Vat Request Date',
  `vat_request_success` smallint(6) DEFAULT NULL COMMENT 'Vat Request Success'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Address';

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_aggregated_created`
--

CREATE TABLE `sales_order_aggregated_created` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Ordered',
  `total_qty_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Invoiced',
  `total_income_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Income Amount',
  `total_revenue_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Revenue Amount',
  `total_profit_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Profit Amount',
  `total_invoiced_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Invoiced Amount',
  `total_canceled_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Canceled Amount',
  `total_paid_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Paid Amount',
  `total_refunded_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Refunded Amount',
  `total_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount',
  `total_tax_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount Actual',
  `total_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount',
  `total_shipping_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount Actual',
  `total_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount',
  `total_discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount Actual'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Aggregated Created';

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_aggregated_updated`
--

CREATE TABLE `sales_order_aggregated_updated` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Ordered',
  `total_qty_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Invoiced',
  `total_income_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Income Amount',
  `total_revenue_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Revenue Amount',
  `total_profit_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Profit Amount',
  `total_invoiced_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Invoiced Amount',
  `total_canceled_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Canceled Amount',
  `total_paid_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Paid Amount',
  `total_refunded_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Refunded Amount',
  `total_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount',
  `total_tax_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount Actual',
  `total_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount',
  `total_shipping_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount Actual',
  `total_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount',
  `total_discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount Actual'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Aggregated Updated';

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_grid`
--

CREATE TABLE `sales_order_grid` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `store_name` varchar(255) DEFAULT NULL COMMENT 'Store Name',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer Id',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Paid',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Total Paid',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `order_currency_code` varchar(255) DEFAULT NULL COMMENT 'Order Currency Code',
  `shipping_name` varchar(255) DEFAULT NULL COMMENT 'Shipping Name',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `billing_address` varchar(255) DEFAULT NULL COMMENT 'Billing Address',
  `shipping_address` varchar(255) DEFAULT NULL COMMENT 'Shipping Address',
  `shipping_information` varchar(255) DEFAULT NULL COMMENT 'Shipping Method Name',
  `customer_email` varchar(255) DEFAULT NULL COMMENT 'Customer Email',
  `customer_group` varchar(255) DEFAULT NULL COMMENT 'Customer Group',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `shipping_and_handling` decimal(12,4) DEFAULT NULL COMMENT 'Shipping and handling amount',
  `customer_name` varchar(255) DEFAULT NULL COMMENT 'Customer Name',
  `payment_method` varchar(255) DEFAULT NULL COMMENT 'Payment Method',
  `total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Refunded',
  `signifyd_guarantee_status` varchar(32) DEFAULT NULL COMMENT 'Signifyd Guarantee Disposition Status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Grid';

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_item`
--

CREATE TABLE `sales_order_item` (
  `item_id` int(10) UNSIGNED NOT NULL COMMENT 'Item Id',
  `order_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Order Id',
  `parent_item_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Parent Item Id',
  `quote_item_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Quote Item Id',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Product Id',
  `product_type` varchar(255) DEFAULT NULL COMMENT 'Product Type',
  `product_options` text COMMENT 'Product Options',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `is_virtual` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Virtual',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `is_qty_decimal` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Qty Decimal',
  `no_discount` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'No Discount',
  `qty_backordered` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Backordered',
  `qty_canceled` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Canceled',
  `qty_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Invoiced',
  `qty_ordered` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `qty_refunded` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Refunded',
  `qty_shipped` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Shipped',
  `base_cost` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Cost',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Price',
  `original_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `base_original_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Original Price',
  `tax_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Percent',
  `tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `tax_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Invoiced',
  `base_tax_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Invoiced',
  `discount_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Percent',
  `discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `discount_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Invoiced',
  `base_discount_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Invoiced',
  `amount_refunded` decimal(12,4) DEFAULT '0.0000' COMMENT 'Amount Refunded',
  `base_amount_refunded` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Amount Refunded',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Invoiced',
  `base_row_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Invoiced',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `base_tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Before Discount',
  `tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Before Discount',
  `ext_order_item_id` varchar(255) DEFAULT NULL COMMENT 'Ext Order Item Id',
  `locked_do_invoice` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Locked Do Invoice',
  `locked_do_ship` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Locked Do Ship',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `discount_tax_compensation_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Invoiced',
  `base_discount_tax_compensation_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Invoiced',
  `discount_tax_compensation_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Refunded',
  `base_discount_tax_compensation_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Refunded',
  `tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Tax Canceled',
  `discount_tax_compensation_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Canceled',
  `tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Tax Refunded',
  `base_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Refunded',
  `discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Discount Refunded',
  `base_discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Refunded',
  `free_shipping` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Free Shipping',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `gift_message_available` int(11) DEFAULT NULL COMMENT 'Gift Message Available',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Item';

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_payment`
--

CREATE TABLE `sales_order_payment` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent Id',
  `base_shipping_captured` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Captured',
  `shipping_captured` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Captured',
  `amount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Amount Refunded',
  `base_amount_paid` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Paid',
  `amount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Amount Canceled',
  `base_amount_authorized` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Authorized',
  `base_amount_paid_online` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Paid Online',
  `base_amount_refunded_online` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Refunded Online',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `amount_paid` decimal(12,4) DEFAULT NULL COMMENT 'Amount Paid',
  `amount_authorized` decimal(12,4) DEFAULT NULL COMMENT 'Amount Authorized',
  `base_amount_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Ordered',
  `base_shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Refunded',
  `shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Refunded',
  `base_amount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Refunded',
  `amount_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Amount Ordered',
  `base_amount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Canceled',
  `quote_payment_id` int(11) DEFAULT NULL COMMENT 'Quote Payment Id',
  `additional_data` text COMMENT 'Additional Data',
  `cc_exp_month` varchar(12) DEFAULT NULL COMMENT 'Cc Exp Month',
  `cc_ss_start_year` varchar(12) DEFAULT NULL COMMENT 'Cc Ss Start Year',
  `echeck_bank_name` varchar(128) DEFAULT NULL COMMENT 'Echeck Bank Name',
  `method` varchar(128) DEFAULT NULL COMMENT 'Method',
  `cc_debug_request_body` varchar(32) DEFAULT NULL COMMENT 'Cc Debug Request Body',
  `cc_secure_verify` varchar(32) DEFAULT NULL COMMENT 'Cc Secure Verify',
  `protection_eligibility` varchar(32) DEFAULT NULL COMMENT 'Protection Eligibility',
  `cc_approval` varchar(32) DEFAULT NULL COMMENT 'Cc Approval',
  `cc_last_4` varchar(100) DEFAULT NULL COMMENT 'Cc Last 4',
  `cc_status_description` varchar(32) DEFAULT NULL COMMENT 'Cc Status Description',
  `echeck_type` varchar(32) DEFAULT NULL COMMENT 'Echeck Type',
  `cc_debug_response_serialized` varchar(32) DEFAULT NULL COMMENT 'Cc Debug Response Serialized',
  `cc_ss_start_month` varchar(128) DEFAULT NULL COMMENT 'Cc Ss Start Month',
  `echeck_account_type` varchar(255) DEFAULT NULL COMMENT 'Echeck Account Type',
  `last_trans_id` varchar(32) DEFAULT NULL COMMENT 'Last Trans Id',
  `cc_cid_status` varchar(32) DEFAULT NULL COMMENT 'Cc Cid Status',
  `cc_owner` varchar(128) DEFAULT NULL COMMENT 'Cc Owner',
  `cc_type` varchar(32) DEFAULT NULL COMMENT 'Cc Type',
  `po_number` varchar(32) DEFAULT NULL COMMENT 'Po Number',
  `cc_exp_year` varchar(4) DEFAULT NULL COMMENT 'Cc Exp Year',
  `cc_status` varchar(4) DEFAULT NULL COMMENT 'Cc Status',
  `echeck_routing_number` varchar(32) DEFAULT NULL COMMENT 'Echeck Routing Number',
  `account_status` varchar(32) DEFAULT NULL COMMENT 'Account Status',
  `anet_trans_method` varchar(32) DEFAULT NULL COMMENT 'Anet Trans Method',
  `cc_debug_response_body` varchar(32) DEFAULT NULL COMMENT 'Cc Debug Response Body',
  `cc_ss_issue` varchar(32) DEFAULT NULL COMMENT 'Cc Ss Issue',
  `echeck_account_name` varchar(32) DEFAULT NULL COMMENT 'Echeck Account Name',
  `cc_avs_status` varchar(32) DEFAULT NULL COMMENT 'Cc Avs Status',
  `cc_number_enc` varchar(128) DEFAULT NULL,
  `cc_trans_id` varchar(32) DEFAULT NULL COMMENT 'Cc Trans Id',
  `address_status` varchar(32) DEFAULT NULL COMMENT 'Address Status',
  `additional_information` text COMMENT 'Additional Information'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Payment';

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_status`
--

CREATE TABLE `sales_order_status` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `label` varchar(128) NOT NULL COMMENT 'Label'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Table';

--
-- Dumping data for table `sales_order_status`
--

INSERT INTO `sales_order_status` (`status`, `label`) VALUES
('canceled', 'Canceled'),
('closed', 'Closed'),
('complete', 'Complete'),
('fraud', 'Suspected Fraud'),
('holded', 'On Hold'),
('payment_review', 'Payment Review'),
('paypal_canceled_reversal', 'PayPal Canceled Reversal'),
('paypal_reversed', 'PayPal Reversed'),
('pending', 'Pending'),
('pending_payment', 'Pending Payment'),
('pending_paypal', 'Pending PayPal'),
('processing', 'Processing');

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_status_history`
--

CREATE TABLE `sales_order_status_history` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `entity_name` varchar(32) DEFAULT NULL COMMENT 'Shows what entity history is bind to.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Status History';

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_status_label`
--

CREATE TABLE `sales_order_status_label` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id',
  `label` varchar(128) NOT NULL COMMENT 'Label'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Label Table';

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_status_state`
--

CREATE TABLE `sales_order_status_state` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `state` varchar(32) NOT NULL COMMENT 'Label',
  `is_default` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Default',
  `visible_on_front` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Visible on front'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Table';

--
-- Dumping data for table `sales_order_status_state`
--

INSERT INTO `sales_order_status_state` (`status`, `state`, `is_default`, `visible_on_front`) VALUES
('canceled', 'canceled', 1, 1),
('closed', 'closed', 1, 1),
('complete', 'complete', 1, 1),
('fraud', 'payment_review', 0, 1),
('fraud', 'processing', 0, 1),
('holded', 'holded', 1, 1),
('payment_review', 'payment_review', 1, 1),
('pending', 'new', 1, 1),
('pending_payment', 'pending_payment', 1, 0),
('processing', 'processing', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_tax`
--

CREATE TABLE `sales_order_tax` (
  `tax_id` int(10) UNSIGNED NOT NULL COMMENT 'Tax Id',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'Order Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `percent` decimal(12,4) DEFAULT NULL COMMENT 'Percent',
  `amount` decimal(12,4) DEFAULT NULL COMMENT 'Amount',
  `priority` int(11) NOT NULL COMMENT 'Priority',
  `position` int(11) NOT NULL COMMENT 'Position',
  `base_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount',
  `process` smallint(6) NOT NULL COMMENT 'Process',
  `base_real_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Real Amount'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Tax Table';

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_tax_item`
--

CREATE TABLE `sales_order_tax_item` (
  `tax_item_id` int(10) UNSIGNED NOT NULL COMMENT 'Tax Item Id',
  `tax_id` int(10) UNSIGNED NOT NULL COMMENT 'Tax Id',
  `item_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Item Id',
  `tax_percent` decimal(12,4) NOT NULL COMMENT 'Real Tax Percent For Item',
  `amount` decimal(12,4) NOT NULL COMMENT 'Tax amount for the item and tax rate',
  `base_amount` decimal(12,4) NOT NULL COMMENT 'Base tax amount for the item and tax rate',
  `real_amount` decimal(12,4) NOT NULL COMMENT 'Real tax amount for the item and tax rate',
  `real_base_amount` decimal(12,4) NOT NULL COMMENT 'Real base tax amount for the item and tax rate',
  `associated_item_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Id of the associated item',
  `taxable_item_type` varchar(32) NOT NULL COMMENT 'Type of the taxable item'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Tax Item';

-- --------------------------------------------------------

--
-- Table structure for table `sales_payment_transaction`
--

CREATE TABLE `sales_payment_transaction` (
  `transaction_id` int(10) UNSIGNED NOT NULL COMMENT 'Transaction Id',
  `parent_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Parent Id',
  `order_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Order Id',
  `payment_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Payment Id',
  `txn_id` varchar(100) DEFAULT NULL COMMENT 'Txn Id',
  `parent_txn_id` varchar(100) DEFAULT NULL COMMENT 'Parent Txn Id',
  `txn_type` varchar(15) DEFAULT NULL COMMENT 'Txn Type',
  `is_closed` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Is Closed',
  `additional_information` blob COMMENT 'Additional Information',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Payment Transaction';

-- --------------------------------------------------------

--
-- Table structure for table `sales_refunded_aggregated`
--

CREATE TABLE `sales_refunded_aggregated` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `refunded` decimal(12,4) DEFAULT NULL COMMENT 'Refunded',
  `online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Online Refunded',
  `offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Offline Refunded'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Refunded Aggregated';

-- --------------------------------------------------------

--
-- Table structure for table `sales_refunded_aggregated_order`
--

CREATE TABLE `sales_refunded_aggregated_order` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `refunded` decimal(12,4) DEFAULT NULL COMMENT 'Refunded',
  `online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Online Refunded',
  `offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Offline Refunded'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Refunded Aggregated Order';

-- --------------------------------------------------------

--
-- Table structure for table `sales_sequence_meta`
--

CREATE TABLE `sales_sequence_meta` (
  `meta_id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `entity_type` varchar(32) NOT NULL COMMENT 'Prefix',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id',
  `sequence_table` varchar(32) NOT NULL COMMENT 'table for sequence'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='sales_sequence_meta';

--
-- Dumping data for table `sales_sequence_meta`
--

INSERT INTO `sales_sequence_meta` (`meta_id`, `entity_type`, `store_id`, `sequence_table`) VALUES
(1, 'order', 0, 'sequence_order_0'),
(2, 'invoice', 0, 'sequence_invoice_0'),
(3, 'creditmemo', 0, 'sequence_creditmemo_0'),
(4, 'shipment', 0, 'sequence_shipment_0'),
(5, 'order', 1, 'sequence_order_1'),
(6, 'invoice', 1, 'sequence_invoice_1'),
(7, 'creditmemo', 1, 'sequence_creditmemo_1'),
(8, 'shipment', 1, 'sequence_shipment_1');

-- --------------------------------------------------------

--
-- Table structure for table `sales_sequence_profile`
--

CREATE TABLE `sales_sequence_profile` (
  `profile_id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `meta_id` int(10) UNSIGNED NOT NULL COMMENT 'Meta_id',
  `prefix` varchar(32) DEFAULT NULL COMMENT 'Prefix',
  `suffix` varchar(32) DEFAULT NULL COMMENT 'Suffix',
  `start_value` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Start value for sequence',
  `step` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Step for sequence',
  `max_value` int(10) UNSIGNED NOT NULL COMMENT 'MaxValue for sequence',
  `warning_value` int(10) UNSIGNED NOT NULL COMMENT 'WarningValue for sequence',
  `is_active` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'isActive flag'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='sales_sequence_profile';

--
-- Dumping data for table `sales_sequence_profile`
--

INSERT INTO `sales_sequence_profile` (`profile_id`, `meta_id`, `prefix`, `suffix`, `start_value`, `step`, `max_value`, `warning_value`, `is_active`) VALUES
(1, 1, NULL, NULL, 1, 1, 0, 0, 1),
(2, 2, NULL, NULL, 1, 1, 0, 0, 1),
(3, 3, NULL, NULL, 1, 1, 0, 0, 1),
(4, 4, NULL, NULL, 1, 1, 0, 0, 1),
(5, 5, NULL, NULL, 1, 1, 0, 0, 1),
(6, 6, NULL, NULL, 1, 1, 0, 0, 1),
(7, 7, NULL, NULL, 1, 1, 0, 0, 1),
(8, 8, NULL, NULL, 1, 1, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales_shipment`
--

CREATE TABLE `sales_shipment` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `total_weight` decimal(12,4) DEFAULT NULL COMMENT 'Total Weight',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `email_sent` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Email Sent',
  `send_email` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Send Email',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'Order Id',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer Id',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `shipment_status` int(11) DEFAULT NULL COMMENT 'Shipment Status',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `packages` text COMMENT 'Packed Products in Packages',
  `shipping_label` mediumblob COMMENT 'Shipping Label Content',
  `customer_note` text COMMENT 'Customer Note',
  `customer_note_notify` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Customer Note Notify'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment';

-- --------------------------------------------------------

--
-- Table structure for table `sales_shipment_comment`
--

CREATE TABLE `sales_shipment_comment` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Comment';

-- --------------------------------------------------------

--
-- Table structure for table `sales_shipment_grid`
--

CREATE TABLE `sales_shipment_grid` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `order_increment_id` varchar(32) NOT NULL COMMENT 'Order Increment Id',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'Order Id',
  `order_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Order Increment Id',
  `customer_name` varchar(128) NOT NULL COMMENT 'Customer Name',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `shipment_status` int(11) DEFAULT NULL COMMENT 'Shipment Status',
  `order_status` varchar(32) DEFAULT NULL COMMENT 'Order',
  `billing_address` varchar(255) DEFAULT NULL COMMENT 'Billing Address',
  `shipping_address` varchar(255) DEFAULT NULL COMMENT 'Shipping Address',
  `billing_name` varchar(128) DEFAULT NULL COMMENT 'Billing Name',
  `shipping_name` varchar(128) DEFAULT NULL COMMENT 'Shipping Name',
  `customer_email` varchar(128) DEFAULT NULL COMMENT 'Customer Email',
  `customer_group_id` int(11) DEFAULT NULL,
  `payment_method` varchar(32) DEFAULT NULL COMMENT 'Payment Method',
  `shipping_information` varchar(255) DEFAULT NULL COMMENT 'Shipping Method Name',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Grid';

-- --------------------------------------------------------

--
-- Table structure for table `sales_shipment_item`
--

CREATE TABLE `sales_shipment_item` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent Id',
  `row_total` decimal(12,4) DEFAULT NULL COMMENT 'Row Total',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item Id',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Item';

-- --------------------------------------------------------

--
-- Table structure for table `sales_shipment_track`
--

CREATE TABLE `sales_shipment_track` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent Id',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'Order Id',
  `track_number` text COMMENT 'Number',
  `description` text COMMENT 'Description',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `carrier_code` varchar(32) DEFAULT NULL COMMENT 'Carrier Code',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Track';

-- --------------------------------------------------------

--
-- Table structure for table `sales_shipping_aggregated`
--

CREATE TABLE `sales_shipping_aggregated` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_shipping` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping',
  `total_shipping_actual` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping Actual'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Shipping Aggregated';

-- --------------------------------------------------------

--
-- Table structure for table `sales_shipping_aggregated_order`
--

CREATE TABLE `sales_shipping_aggregated_order` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_shipping` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping',
  `total_shipping_actual` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping Actual'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Shipping Aggregated Order';

-- --------------------------------------------------------

--
-- Table structure for table `search_query`
--

CREATE TABLE `search_query` (
  `query_id` int(10) UNSIGNED NOT NULL COMMENT 'Query ID',
  `query_text` varchar(255) DEFAULT NULL COMMENT 'Query text',
  `num_results` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Num results',
  `popularity` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Popularity',
  `redirect` varchar(255) DEFAULT NULL COMMENT 'Redirect',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `display_in_terms` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Display in terms',
  `is_active` smallint(6) DEFAULT '1' COMMENT 'Active status',
  `is_processed` smallint(6) DEFAULT '0' COMMENT 'Processed status',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated at'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Search query table';

--
-- Dumping data for table `search_query`
--

INSERT INTO `search_query` (`query_id`, `query_text`, `num_results`, `popularity`, `redirect`, `store_id`, `display_in_terms`, `is_active`, `is_processed`, `updated_at`) VALUES
(1, 'Dell', 4, 32, NULL, 1, 1, 1, 0, '2018-04-28 09:16:11'),
(5, 'Dell inspirion', 1, 3, NULL, 1, 1, 1, 0, '2018-04-20 11:57:29'),
(10, 'laptop', 4, 81, NULL, 1, 1, 1, 0, '2018-05-16 09:49:31'),
(27, 'lenovo', 2, 5, NULL, 1, 1, 1, 0, '2018-04-25 08:22:44'),
(37, 'accer', 1, 6, NULL, 1, 1, 1, 0, '2018-05-02 12:53:55'),
(86, 'acer', 3, 0, NULL, 1, 1, 1, 0, '2018-04-23 10:38:20'),
(105, 'core', 6, 2, NULL, 1, 1, 1, 0, '2018-04-27 08:45:36'),
(106, 'hp', 0, 1, NULL, 1, 1, 1, 0, '2018-04-27 06:58:30'),
(112, 'gift', 4, 0, NULL, 1, 1, 1, 0, '2018-04-23 12:29:33'),
(113, 'pendrive', 1, 6, NULL, 1, 1, 1, 0, '2018-04-27 08:46:27'),
(140, 't-shirts', 1, 5, NULL, 1, 1, 1, 0, '2018-04-24 12:49:21'),
(142, 'Men', 6, 25, NULL, 1, 1, 1, 0, '2018-05-02 12:54:27'),
(154, 'T-shirt', 0, 1, NULL, 1, 1, 1, 0, '2018-04-24 11:17:14'),
(156, 'Addidas', 1, 3, NULL, 1, 1, 1, 0, '2018-04-24 11:47:15'),
(167, 'Clothes', 0, 3, NULL, 1, 1, 1, 0, '2018-04-24 12:24:06'),
(171, 'Black', 1, 5, NULL, 1, 1, 1, 0, '2018-04-24 13:08:22'),
(173, 'Trousers', 0, 1, NULL, 1, 1, 1, 0, '2018-04-24 12:06:30'),
(175, 'Addid', 1, 1, NULL, 1, 1, 1, 0, '2018-04-24 12:18:35'),
(197, 'T-sh', 0, 1, NULL, 1, 1, 1, 0, '2018-04-24 12:45:02'),
(216, 'sandisk', 1, 1, NULL, 1, 1, 1, 0, '2018-04-27 08:47:14'),
(236, 'pen', 2, 4, NULL, 1, 1, 1, 0, '2018-04-27 10:16:46'),
(237, 'dell insp', 4, 2, NULL, 1, 1, 1, 0, '2018-04-30 08:51:47'),
(238, 'jackets', 0, 7, NULL, 1, 1, 1, 0, '2018-05-01 10:50:48'),
(252, 'Jack', 4, 12, NULL, 1, 1, 1, 0, '2018-05-01 11:23:39');

-- --------------------------------------------------------

--
-- Table structure for table `search_synonyms`
--

CREATE TABLE `search_synonyms` (
  `group_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Synonyms Group Id',
  `synonyms` text NOT NULL COMMENT 'list of synonyms making up this group',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id - identifies the store view these synonyms belong to',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website Id - identifies the website id these synonyms belong to'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='table storing various synonyms groups';

-- --------------------------------------------------------

--
-- Table structure for table `sendfriend_log`
--

CREATE TABLE `sendfriend_log` (
  `log_id` int(10) UNSIGNED NOT NULL COMMENT 'Log ID',
  `ip` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer IP address',
  `time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Log time',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Send to friend function log storage table';

-- --------------------------------------------------------

--
-- Table structure for table `sequence_creditmemo_0`
--

CREATE TABLE `sequence_creditmemo_0` (
  `sequence_value` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sequence_creditmemo_1`
--

CREATE TABLE `sequence_creditmemo_1` (
  `sequence_value` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sequence_invoice_0`
--

CREATE TABLE `sequence_invoice_0` (
  `sequence_value` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sequence_invoice_1`
--

CREATE TABLE `sequence_invoice_1` (
  `sequence_value` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sequence_order_0`
--

CREATE TABLE `sequence_order_0` (
  `sequence_value` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sequence_order_1`
--

CREATE TABLE `sequence_order_1` (
  `sequence_value` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sequence_shipment_0`
--

CREATE TABLE `sequence_shipment_0` (
  `sequence_value` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sequence_shipment_1`
--

CREATE TABLE `sequence_shipment_1` (
  `sequence_value` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `session_id` varchar(255) NOT NULL COMMENT 'Session Id',
  `session_expires` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Date of Session Expiration',
  `session_data` mediumblob NOT NULL COMMENT 'Session Data'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Database Sessions Storage';

-- --------------------------------------------------------

--
-- Table structure for table `setup_module`
--

CREATE TABLE `setup_module` (
  `module` varchar(50) NOT NULL COMMENT 'Module',
  `schema_version` varchar(50) DEFAULT NULL COMMENT 'Schema Version',
  `data_version` varchar(50) DEFAULT NULL COMMENT 'Data Version'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Module versions registry';

--
-- Dumping data for table `setup_module`
--

INSERT INTO `setup_module` (`module`, `schema_version`, `data_version`) VALUES
('Dotdigitalgroup_Email', '2.4.9', '2.4.9'),
('Jnext_Megamenu', '1.0.0', '1.0.0'),
('Magento_AdminNotification', '2.0.0', '2.0.0'),
('Magento_AdvancedPricingImportExport', '2.0.0', '2.0.0'),
('Magento_Analytics', '2.0.0', '2.0.0'),
('Magento_Authorization', '2.0.0', '2.0.0'),
('Magento_Authorizenet', '2.0.0', '2.0.0'),
('Magento_Backend', '2.0.0', '2.0.0'),
('Magento_Backup', '2.0.0', '2.0.0'),
('Magento_Braintree', '2.0.1', '2.0.1'),
('Magento_Bundle', '2.0.4', '2.0.4'),
('Magento_BundleImportExport', '2.0.0', '2.0.0'),
('Magento_BundleSampleData', '2.0.0', '2.0.0'),
('Magento_CacheInvalidate', '2.0.0', '2.0.0'),
('Magento_Captcha', '2.0.0', '2.0.0'),
('Magento_Catalog', '2.2.3', '2.2.3'),
('Magento_CatalogAnalytics', '2.0.0', '2.0.0'),
('Magento_CatalogImportExport', '2.0.0', '2.0.0'),
('Magento_CatalogInventory', '2.3.0', '2.3.0'),
('Magento_CatalogRule', '2.1.0', '2.1.0'),
('Magento_CatalogRuleConfigurable', '2.0.0', '2.0.0'),
('Magento_CatalogRuleSampleData', '2.0.0', '2.0.0'),
('Magento_CatalogSampleData', '2.0.0', '2.0.0'),
('Magento_CatalogSearch', '2.0.0', '2.0.0'),
('Magento_CatalogUrlRewrite', '2.0.0', '2.0.0'),
('Magento_CatalogWidget', '2.0.0', '2.0.0'),
('Magento_Checkout', '2.0.0', '2.0.0'),
('Magento_CheckoutAgreements', '2.2.0', '2.2.0'),
('Magento_Cms', '2.0.2', '2.0.2'),
('Magento_CmsSampleData', '2.0.0', '2.0.0'),
('Magento_CmsUrlRewrite', '2.0.0', '2.0.0'),
('Magento_Config', '2.0.0', '2.0.0'),
('Magento_ConfigurableImportExport', '2.0.0', '2.0.0'),
('Magento_ConfigurableProduct', '2.2.0', '2.2.0'),
('Magento_ConfigurableProductSales', '2.2.0', '2.2.0'),
('Magento_ConfigurableSampleData', '2.0.0', '2.0.0'),
('Magento_Contact', '2.0.0', '2.0.0'),
('Magento_Cookie', '2.0.0', '2.0.0'),
('Magento_Cron', '2.0.0', '2.0.0'),
('Magento_CurrencySymbol', '2.0.1', '2.0.1'),
('Magento_Customer', '2.0.12', '2.0.12'),
('Magento_CustomerAnalytics', '2.0.0', '2.0.0'),
('Magento_CustomerImportExport', '2.0.0', '2.0.0'),
('Magento_CustomerSampleData', '2.0.0', '2.0.0'),
('Magento_Deploy', '2.0.0', '2.0.0'),
('Magento_Developer', '2.0.0', '2.0.0'),
('Magento_Dhl', '2.0.0', '2.0.0'),
('Magento_Directory', '2.0.1', '2.0.1'),
('Magento_Downloadable', '2.0.2', '2.0.2'),
('Magento_DownloadableImportExport', '2.0.0', '2.0.0'),
('Magento_DownloadableSampleData', '2.0.0', '2.0.0'),
('Magento_Eav', '2.1.1', '2.1.1'),
('Magento_Email', '2.0.0', '2.0.0'),
('Magento_EncryptionKey', '2.0.0', '2.0.0'),
('Magento_Fedex', '2.0.0', '2.0.0'),
('Magento_GiftMessage', '2.0.1', '2.0.1'),
('Magento_GoogleAdwords', '2.0.0', '2.0.0'),
('Magento_GoogleAnalytics', '2.0.0', '2.0.0'),
('Magento_GoogleOptimizer', '2.0.0', '2.0.0'),
('Magento_GroupedImportExport', '2.0.0', '2.0.0'),
('Magento_GroupedProduct', '2.0.1', '2.0.1'),
('Magento_GroupedProductSampleData', '2.0.0', '2.0.0'),
('Magento_ImportExport', '2.0.1', '2.0.1'),
('Magento_Indexer', '2.1.0', '2.1.0'),
('Magento_InstantPurchase', '1.0.0', '1.0.0'),
('Magento_Integration', '2.2.0', '2.2.0'),
('Magento_LayeredNavigation', '2.0.0', '2.0.0'),
('Magento_Marketplace', '1.0.0', '1.0.0'),
('Magento_MediaStorage', '2.0.0', '2.0.0'),
('Magento_Msrp', '2.1.3', '2.1.3'),
('Magento_MsrpSampleData', '2.0.0', '2.0.0'),
('Magento_Multishipping', '2.0.0', '2.0.0'),
('Magento_NewRelicReporting', '2.0.1', '2.0.1'),
('Magento_Newsletter', '2.0.0', '2.0.0'),
('Magento_OfflinePayments', '2.0.0', '2.0.0'),
('Magento_OfflineShipping', '2.0.1', '2.0.1'),
('Magento_OfflineShippingSampleData', '2.0.0', '2.0.0'),
('Magento_PageCache', '2.0.0', '2.0.0'),
('Magento_Payment', '2.0.0', '2.0.0'),
('Magento_Paypal', '2.0.1', '2.0.1'),
('Magento_Persistent', '2.0.0', '2.0.0'),
('Magento_ProductAlert', '2.0.0', '2.0.0'),
('Magento_ProductLinksSampleData', '2.0.0', '2.0.0'),
('Magento_ProductVideo', '2.0.0.2', '2.0.0.2'),
('Magento_Quote', '2.0.6', '2.0.6'),
('Magento_QuoteAnalytics', '2.0.0', '2.0.0'),
('Magento_ReleaseNotification', '2.2.0', '2.2.0'),
('Magento_Reports', '2.0.0', '2.0.0'),
('Magento_RequireJs', '2.0.0', '2.0.0'),
('Magento_Review', '2.0.0', '2.0.0'),
('Magento_ReviewAnalytics', '2.0.0', '2.0.0'),
('Magento_ReviewSampleData', '2.0.0', '2.0.0'),
('Magento_Robots', '2.0.0', '2.0.0'),
('Magento_Rss', '2.0.0', '2.0.0'),
('Magento_Rule', '2.0.0', '2.0.0'),
('Magento_Sales', '2.0.7', '2.0.7'),
('Magento_SalesAnalytics', '2.0.0', '2.0.0'),
('Magento_SalesInventory', '1.0.0', '1.0.0'),
('Magento_SalesRule', '2.0.3', '2.0.3'),
('Magento_SalesRuleSampleData', '2.0.0', '2.0.0'),
('Magento_SalesSampleData', '2.0.0', '2.0.0'),
('Magento_SalesSequence', '2.0.0', '2.0.0'),
('Magento_SampleData', '2.0.0', '2.0.0'),
('Magento_Search', '2.0.4', '2.0.4'),
('Magento_Security', '2.0.1', '2.0.1'),
('Magento_SendFriend', '2.0.0', '2.0.0'),
('Magento_Shipping', '2.0.0', '2.0.0'),
('Magento_Signifyd', '2.2.0', '2.2.0'),
('Magento_Sitemap', '2.0.0', '2.0.0'),
('Magento_Store', '2.1.0', '2.1.0'),
('Magento_Swagger', '2.0.0', '2.0.0'),
('Magento_Swatches', '2.0.3', '2.0.3'),
('Magento_SwatchesLayeredNavigation', '2.0.0', '2.0.0'),
('Magento_SwatchesSampleData', '2.0.0', '2.0.0'),
('Magento_Tax', '2.0.3', '2.0.3'),
('Magento_TaxImportExport', '2.0.0', '2.0.0'),
('Magento_TaxSampleData', '2.0.0', '2.0.0'),
('Magento_Theme', '2.0.2', '2.0.2'),
('Magento_ThemeSampleData', '2.0.0', '2.0.0'),
('Magento_Translation', '2.0.0', '2.0.0'),
('Magento_Ui', '2.0.0', '2.0.0'),
('Magento_Ups', '2.0.0', '2.0.0'),
('Magento_UrlRewrite', '2.0.1', '2.0.1'),
('Magento_User', '2.0.3', '2.0.3'),
('Magento_Usps', '2.0.1', '2.0.1'),
('Magento_Variable', '2.0.0', '2.0.0'),
('Magento_Vault', '2.0.2', '2.0.2'),
('Magento_Version', '2.0.0', '2.0.0'),
('Magento_Webapi', '2.0.0', '2.0.0'),
('Magento_WebapiSecurity', '2.0.0', '2.0.0'),
('Magento_Weee', '2.0.0', '2.0.0'),
('Magento_Widget', '2.0.1', '2.0.1'),
('Magento_WidgetSampleData', '2.0.0', '2.0.0'),
('Magento_Wishlist', '2.0.1', '2.0.1'),
('Magento_WishlistAnalytics', '2.0.0', '2.0.0'),
('Magento_WishlistSampleData', '2.0.0', '2.0.0'),
('Mageplaza_HelloWorld', '1.2.0', '1.2.0'),
('Mageplaza_Productslider', '1.0.0', '1.0.0'),
('Renouard_Megamenu', '1.0.0', '1.0.0'),
('Sebwite_Sidebar', '2.0.3', '2.0.3'),
('Shesh_Blog', '0.1.0', '0.1.0'),
('Shesh_Helloworld', '1.0.0', '1.0.0'),
('Shesh_Modulecontact', '1.0.1', '1.0.1'),
('Shopial_Facebook', '1.0.0', '1.0.0'),
('Solwin_Cpanel', '1.0.6', '1.0.6'),
('Solwin_ScrolltoTop', '1.0.3', '1.0.3'),
('Solwin_Soldout', '1.0.2', '1.0.2'),
('Swissup_Core', '1.2.1', '1.2.1'),
('Swissup_FontAwesome', '1.0.0', '1.0.0'),
('Swissup_SlickCarousel', '1.0.0', '1.0.0'),
('Swissup_ThemeEditor', '1.0.0', '1.0.0'),
('Swissup_ThemeEditorSwissupAbsolute', '1.0.0', '1.0.0'),
('Temando_Shipping', '1.1.0', '1.1.0'),
('Trive_Core', '1.0.0', '1.0.0'),
('Trive_Revo', '1.0.2', '1.0.2'),
('Tutorial_Example', '1.0.0', '1.0.0'),
('Tutorial_SimpleNews', '1.0.1', '1.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `shesh_blog_post`
--

CREATE TABLE `shesh_blog_post` (
  `post_id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `title` text NOT NULL COMMENT 'Title',
  `content` text NOT NULL COMMENT 'Content',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Toptal Blog - Posts';

--
-- Dumping data for table `shesh_blog_post`
--

INSERT INTO `shesh_blog_post` (`post_id`, `title`, `content`, `created_at`) VALUES
(1, 'Post 1 Title', 'Content of the first post.', '2018-04-24 08:14:01'),
(2, 'Post 2 Title', 'Content of the second post.', '2018-04-24 08:14:01');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_tablerate`
--

CREATE TABLE `shipping_tablerate` (
  `pk` int(10) UNSIGNED NOT NULL COMMENT 'Primary key',
  `website_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `dest_country_id` varchar(4) NOT NULL DEFAULT '0' COMMENT 'Destination coutry ISO/2 or ISO/3 code',
  `dest_region_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Destination Region Id',
  `dest_zip` varchar(10) NOT NULL DEFAULT '*' COMMENT 'Destination Post Code (Zip)',
  `condition_name` varchar(20) NOT NULL COMMENT 'Rate Condition name',
  `condition_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Rate condition value',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `cost` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Cost'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Shipping Tablerate';

--
-- Dumping data for table `shipping_tablerate`
--

INSERT INTO `shipping_tablerate` (`pk`, `website_id`, `dest_country_id`, `dest_region_id`, `dest_zip`, `condition_name`, `condition_value`, `price`, `cost`) VALUES
(1, 1, 'US', 0, '*', 'package_value', '0.0000', '15.0000', '0.0000'),
(2, 1, 'US', 0, '*', 'package_value', '50.0000', '10.0000', '0.0000'),
(3, 1, 'US', 0, '*', 'package_value', '100.0000', '5.0000', '0.0000'),
(4, 1, 'US', 2, '*', 'package_value', '0.0000', '20.0000', '0.0000'),
(5, 1, 'US', 2, '*', 'package_value', '50.0000', '15.0000', '0.0000'),
(6, 1, 'US', 2, '*', 'package_value', '100.0000', '10.0000', '0.0000'),
(7, 1, 'US', 21, '*', 'package_value', '0.0000', '20.0000', '0.0000'),
(8, 1, 'US', 21, '*', 'package_value', '50.0000', '15.0000', '0.0000'),
(9, 1, 'US', 21, '*', 'package_value', '100.0000', '10.0000', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `signifyd_case`
--

CREATE TABLE `signifyd_case` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity_id',
  `order_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Order_id',
  `case_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Case_id',
  `guarantee_eligible` tinyint(1) DEFAULT NULL COMMENT 'Guarantee_eligible',
  `guarantee_disposition` varchar(32) DEFAULT 'PENDING' COMMENT 'Guarantee_disposition',
  `status` varchar(32) DEFAULT 'PENDING' COMMENT 'Status',
  `score` int(10) UNSIGNED DEFAULT NULL COMMENT 'Score',
  `associated_team` text COMMENT 'Associated_team',
  `review_disposition` varchar(32) DEFAULT NULL COMMENT 'Review_disposition',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created_at',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated_at'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='signifyd_case';

-- --------------------------------------------------------

--
-- Table structure for table `sitemap`
--

CREATE TABLE `sitemap` (
  `sitemap_id` int(10) UNSIGNED NOT NULL COMMENT 'Sitemap Id',
  `sitemap_type` varchar(32) DEFAULT NULL COMMENT 'Sitemap Type',
  `sitemap_filename` varchar(32) DEFAULT NULL COMMENT 'Sitemap Filename',
  `sitemap_path` varchar(255) DEFAULT NULL COMMENT 'Sitemap Path',
  `sitemap_time` timestamp NULL DEFAULT NULL COMMENT 'Sitemap Time',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='XML Sitemap';

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `group_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Group Id',
  `name` varchar(255) NOT NULL COMMENT 'Store Name',
  `sort_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Sort Order',
  `is_active` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Activity'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores';

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`store_id`, `code`, `website_id`, `group_id`, `name`, `sort_order`, `is_active`) VALUES
(0, 'admin', 0, 0, 'Admin', 0, 1),
(1, 'default', 1, 1, 'Default Store View', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `store_group`
--

CREATE TABLE `store_group` (
  `group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Group Id',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `code` varchar(32) DEFAULT NULL COMMENT 'Store group unique code',
  `name` varchar(255) NOT NULL COMMENT 'Store Group Name',
  `root_category_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Root Category Id',
  `default_store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Default Store Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Store Groups';

--
-- Dumping data for table `store_group`
--

INSERT INTO `store_group` (`group_id`, `website_id`, `code`, `name`, `root_category_id`, `default_store_id`) VALUES
(0, 0, 'default', 'Default', 0, 0),
(1, 1, 'main_website_store', 'Main Website Store', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `store_website`
--

CREATE TABLE `store_website` (
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  `name` varchar(64) DEFAULT NULL COMMENT 'Website Name',
  `sort_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `default_group_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Default Group Id',
  `is_default` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Defines Is Website Default'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Websites';

--
-- Dumping data for table `store_website`
--

INSERT INTO `store_website` (`website_id`, `code`, `name`, `sort_order`, `default_group_id`, `is_default`) VALUES
(0, 'admin', 'Admin', 0, 0, 0),
(1, 'base', 'Main Website', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `swissup_core_module`
--

CREATE TABLE `swissup_core_module` (
  `code` varchar(50) NOT NULL COMMENT 'Code',
  `name` varchar(50) DEFAULT NULL COMMENT 'Package Name',
  `description` varchar(255) DEFAULT NULL COMMENT 'Package Description',
  `keywords` varchar(255) DEFAULT NULL COMMENT 'Keywords',
  `data_version` varchar(50) DEFAULT NULL COMMENT 'Data_version',
  `identity_key` varchar(255) DEFAULT NULL COMMENT 'Identity_key',
  `store_ids` varchar(64) DEFAULT NULL COMMENT 'Store_ids',
  `type` varchar(32) DEFAULT NULL COMMENT 'Package Type',
  `version` varchar(50) DEFAULT NULL COMMENT 'Version',
  `latest_version` varchar(50) DEFAULT NULL COMMENT 'Latest Version',
  `release_date` datetime DEFAULT NULL COMMENT 'Release Date',
  `link` varchar(255) DEFAULT NULL COMMENT 'Module Homepage',
  `download_link` varchar(255) DEFAULT NULL COMMENT 'Module Download Link',
  `identity_key_link` varchar(255) DEFAULT NULL COMMENT 'Identity Key Link'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='swissup_core_module';

--
-- Dumping data for table `swissup_core_module`
--

INSERT INTO `swissup_core_module` (`code`, `name`, `description`, `keywords`, `data_version`, `identity_key`, `store_ids`, `type`, `version`, `latest_version`, `release_date`, `link`, `download_link`, `identity_key_link`) VALUES
('Swissup_AddressAutocomplete', 'swissup/address-autocomplete', 'Magento 2 module for address autocompleting', 'address,autocomplete,google', NULL, NULL, NULL, 'magento2-module', NULL, '1.0.7', '2018-04-26 10:36:27', NULL, NULL, NULL),
('Swissup_AddressFieldManager', 'swissup/address-field-manager', 'Address field manager for Magento 2', 'address attributes,address fields,attribute manager,fields manager', NULL, NULL, NULL, 'magento2-module', NULL, '1.3.0', '2018-04-25 06:23:41', NULL, NULL, NULL),
('Swissup_Ajaxlayerednavigation', 'swissup/ajaxlayerednavigation', 'Advanced catalog filters with ajax and seo support', 'ajaxlayerednavigation,filters,layered navigation,seo layered navigation', NULL, NULL, NULL, 'magento2-module', NULL, '1.2.1', '2018-04-04 08:38:42', NULL, NULL, NULL),
('Swissup_Ajaxpro', 'swissup/ajaxpro', 'Ajax functionality for Add to Cart, Add to Compare, and Add to Wishlist actions', NULL, NULL, NULL, NULL, 'magento2-module', NULL, '1.2.7', '2018-05-10 06:58:57', NULL, NULL, NULL),
('Swissup_Ajaxsearch', 'swissup/ajaxsearch', 'Advanced ajax search', 'ajaxsearch,search', NULL, NULL, NULL, 'magento2-module', NULL, '1.3.0', '2018-05-10 06:51:57', 'https://swissuplabs.com/', NULL, NULL),
('Swissup_Akismet', 'swissup/akismet', 'Akismet integration', NULL, NULL, NULL, NULL, 'magento2-module', NULL, '1.0.1', '2017-10-24 09:13:35', NULL, NULL, NULL),
('Swissup_Askit', 'swissup/askit', 'Product, Category, Cms Page questions and comments', 'answers,comments,faq,page comments,product questions,questions', NULL, NULL, NULL, 'magento2-module', NULL, '1.2.14', '2018-03-29 08:30:43', 'https://swissuplabs.com/product-question-extension-for-magento-2.html', NULL, NULL),
('Swissup_Attributepages', 'swissup/attributepages', 'Attribute Pages extension from Swissup', 'attribute page,attributepages,brand page', NULL, NULL, NULL, 'magento2-module', NULL, '1.0.8', '2018-05-08 12:05:01', 'https://swissuplabs.com/attributes-and-brands-pages-for-magento-2.html', 'https://swissuplabs.com/subscription/customer/products/', NULL),
('Swissup_Checkout', 'swissup/checkout', 'Dummy checkout module. It''s purpose is to add swissup menu and config sections.', NULL, NULL, NULL, NULL, 'magento2-module', NULL, '0.0.1', '2017-01-20 08:31:32', NULL, NULL, NULL),
('Swissup_CheckoutCart', 'swissup/checkout-cart', 'Magento 2 checkout cart', 'cart,checkout', NULL, NULL, NULL, 'magento2-module', NULL, '1.1.4', '2018-04-23 13:20:45', NULL, NULL, NULL),
('Swissup_CheckoutFields', 'swissup/checkout-fields', 'Magento 2 Checkout Fields', 'checkout,fields', NULL, NULL, NULL, 'magento2-module', NULL, '1.0.4', '2018-03-13 12:29:37', NULL, NULL, NULL),
('Swissup_CheckoutSuccess', 'swissup/checkout-success', 'Magento 2 checkout success page', 'checkout,success page', NULL, NULL, NULL, 'magento2-module', NULL, '1.1.3', '2018-04-23 13:29:46', NULL, NULL, NULL),
('Swissup_Command', 'swissup/command', 'Magento 2 module gives your possibility to run custom commands', NULL, NULL, NULL, NULL, 'magento2-module', NULL, 'dev-master', '2017-03-24 13:36:29', NULL, NULL, NULL),
('Swissup_Core', 'swissup/core', 'Swissup core module. It''s purpose is to add menu and config placeholders', 'core,installer,module manager,notifier,popup messenger,swissup services', NULL, NULL, NULL, 'magento2-module', '1.4.7', '1.6.1', '2018-04-23 11:46:08', NULL, NULL, NULL),
('Swissup_Countdowntimer', 'swissup/countdowntimer', 'Countdown timer widgets', NULL, NULL, NULL, NULL, 'magento2-module', NULL, '0.9.0', '2016-04-18 14:31:28', NULL, NULL, NULL),
('Swissup_CustomerFieldManager', 'swissup/customer-field-manager', 'Customer Field manager for Magento 2', 'attribute manager,customer attributes,customer fields,fields manager', NULL, NULL, NULL, 'magento2-module', NULL, '1.0.0', '2018-04-25 06:21:37', NULL, NULL, NULL),
('Swissup_Dailydeals', 'swissup/dailydeals', 'N/A', NULL, NULL, NULL, NULL, 'magento2-module', NULL, 'dev-master', '2016-03-02 07:58:42', NULL, NULL, NULL),
('Swissup_DataMigration', 'swissup/data-migration', 'Data Migration for Swissup Labs modules', 'data migration,migration from m1 to m2', NULL, NULL, NULL, 'magento2-module', NULL, '1.0.0', '2017-07-10 13:35:33', NULL, NULL, NULL),
('Swissup_DeliveryDate', 'swissup/delivery-date', 'Magento 2 module gives your customers possibility to choose the delivery date', NULL, NULL, NULL, NULL, 'magento2-module', NULL, '1.1.3', '2018-04-24 13:44:15', NULL, NULL, NULL),
('Swissup_DockerizeMagento2', 'swissup/dockerize-magento2', 'Docker infrastructure definitions for Magento 2', NULL, NULL, NULL, NULL, 'magento2-component', NULL, 'dev-develop', '2018-03-01 15:39:18', NULL, NULL, NULL),
('Swissup_Easybanner', 'swissup/easybanner', 'Magento banners and blocks', 'advertising,awesomebar,banner,block,easybanner,lightbox', NULL, NULL, NULL, 'magento2-module', NULL, '1.2.1', '2018-03-30 07:46:47', 'https://swissuplabs.com/magento-2-banners-and-custom-blocks-extension.html', 'https://swissuplabs.com/subscription/customer/products/', NULL),
('Swissup_Easycatalogimg', 'swissup/easycatalogimg', 'Easy Catalog Images extension from Swissup', 'category thumbnail,easycatalogimages,subcategory listing', NULL, NULL, NULL, 'magento2-module', NULL, '1.2.0', '2018-03-23 15:35:30', 'https://swissuplabs.com/magento-2-easy-catalog-images.html', 'https://swissuplabs.com/subscription/customer/products/', NULL),
('Swissup_Easyflags', 'swissup/easyflags', 'Module replaces default store switcher with flag images', NULL, NULL, NULL, NULL, 'magento2-module', NULL, '1.0.1', '2017-01-30 08:51:19', NULL, NULL, NULL),
('Swissup_EasySlide', 'swissup/easy-slide', 'Create and manage Magento sliders', 'easyslide,slider', NULL, NULL, NULL, 'magento2-module', NULL, '1.1.4', '2017-09-22 13:39:19', 'https://swissuplabs.com/magento-2-slider-extension.html', 'https://swissuplabs.com/subscription/customer/products/', NULL),
('Swissup_Easytabs', 'swissup/easytabs', 'Easy Tabs extension from Swissup', 'easytabs,homepage tabs,product tabs,tabs', NULL, NULL, NULL, 'magento2-module', NULL, '1.3.1', '2018-05-08 12:05:54', 'https://swissuplabs.com/product-tabs-magento-2-extension.html', 'https://swissuplabs.com/subscription/customer/products/', NULL),
('Swissup_Email', 'swissup/email', 'Magento2 email providers integration (smtp, mandrill, amazon ses)', 'amazon ses,email,gmail,mandrill,sendmail,smtp', NULL, NULL, NULL, 'magento2-module', NULL, '0.1.2', '2016-11-01 15:33:37', NULL, NULL, NULL),
('Swissup_Fblike', 'swissup/fblike', 'Facebook Like Button for Magento 2', NULL, NULL, NULL, NULL, 'magento2-module', NULL, '1.1.2', '2018-05-10 06:51:05', NULL, NULL, NULL),
('Swissup_FeaturedAttributes', 'swissup/featured-attributes', 'Featured attributes extension from Swissup', 'attributes on category page,featured attributes', NULL, NULL, NULL, 'magento2-module', NULL, '1.0.0', '2018-03-22 13:52:24', NULL, 'https://github.com/swissup/featured-attributes', NULL),
('Swissup_FieldManager', 'swissup/field-manager', 'Field manager for Magento 2', 'attribute manager,customer attributes,customer fields,fields manager', NULL, NULL, NULL, 'magento2-module', NULL, '1.0.0', '2018-04-25 06:19:40', NULL, NULL, NULL),
('Swissup_Firecheckout', 'swissup/firecheckout', 'Onestep checkout extension for Magento2', 'checkout,firecheckout,onestep checkout', NULL, NULL, NULL, 'magento2-module', NULL, '1.10.0', '2018-04-26 11:41:57', 'https://www.firecheckout.net/order', 'https://www.firecheckout.net/subscription/customer/products/', 'https://www.firecheckout.net/license/customer/identity/'),
('Swissup_FirecheckoutIntegrations', 'swissup/firecheckout-integrations', 'Code for third-party modules that requires additional logic at firecheckout page', 'firecheckout', NULL, NULL, NULL, 'magento2-module', NULL, '1.0.0', '2018-04-13 07:26:24', NULL, NULL, NULL),
('Swissup_FontAwesome', 'swissup/font-awesome', 'FontAwesome for Magento2', 'font,font awesome,font-awesome,fontawesome,icons', NULL, NULL, NULL, 'magento2-module', '1.2.1', '1.2.1', '2017-05-29 11:38:38', NULL, NULL, NULL),
('Swissup_Geoip', 'swissup/geoip', 'Magento 2 module for geo location detecting by ip', 'address detection,city,country,geoip,postcode', NULL, NULL, NULL, 'magento2-module', NULL, '1.0.3', '2017-01-26 15:51:54', NULL, NULL, NULL),
('Swissup_Highlight', 'swissup/highlight', 'Product listing widgets, ajax carousel with flexible filters', 'bestsellers,featured products,highlight,new products,onsale products,popular products,product listing,products carousel', NULL, NULL, NULL, 'magento2-module', NULL, '1.2.2', '2018-05-04 06:42:13', 'https://swissuplabs.com/magento-extensions/magento-custom-product-list-extension.html', 'https://swissuplabs.com/subscription/customer/products/', NULL),
('Swissup_HoverGallery', 'swissup/hover-gallery', 'Product image hover gallery for Magento 2.x e-commerce', NULL, NULL, NULL, NULL, 'magento2-module', NULL, '1.0.0', '2017-08-29 08:10:49', NULL, NULL, NULL),
('Swissup_Instaframe', 'swissup/instaframe', 'Instagram feed widget', 'feed,instagram,social', NULL, NULL, NULL, 'magento2-module', NULL, '0.9.0', '2017-09-15 06:44:29', 'https://swissuplabs.com/', NULL, NULL),
('Swissup_Lightboxpro', 'swissup/lightboxpro', 'Lightbox Pro module for Magento 2', 'lightbox,product image,zoom', NULL, NULL, NULL, 'magento2-module', NULL, '1.0.2', '2018-05-10 06:50:18', NULL, NULL, NULL),
('Swissup_Maintenance', 'swissup/maintenance', 'Maintenance store extension', NULL, NULL, NULL, NULL, 'magento2-module', NULL, '1.0.1', '2017-01-12 13:33:58', NULL, NULL, NULL),
('Swissup_Navigationpro', 'swissup/navigationpro', 'Create beautiful menus for Magento 2', 'amazon menu,megamenu,menu,navigation,sidebar menu', NULL, NULL, NULL, 'magento2-module', NULL, '1.4.1', '2018-05-08 12:06:38', NULL, NULL, NULL),
('Swissup_Orderattachment', 'swissup/orderattachment', 'Order Attachment Magento 2 extension', NULL, NULL, NULL, NULL, 'magento2-module', NULL, '1.1.1', '2018-04-13 09:09:06', NULL, NULL, NULL),
('Swissup_ProLabels', 'swissup/pro-labels', 'Product labels and badges', NULL, NULL, NULL, NULL, 'magento2-module', NULL, '1.0.23', '2018-05-10 06:49:39', NULL, NULL, NULL),
('Swissup_QuantitySwitcher', 'swissup/quantity-switcher', 'Quantity Switcher extension for Magento 2.x e-commerce', 'quantity,switcher', NULL, NULL, NULL, 'magento2-module', NULL, 'dev-master', '2017-09-29 12:51:04', NULL, NULL, NULL),
('Swissup_Recaptcha', 'swissup/recaptcha', 'Recaptcha for M2', NULL, NULL, NULL, NULL, 'magento2-module', NULL, '1.0.0', '2016-09-12 07:58:25', NULL, NULL, NULL),
('Swissup_Reviewreminder', 'swissup/reviewreminder', 'Review Reminder extension from Swissup', NULL, NULL, NULL, NULL, 'magento2-module', NULL, '1.0.11', '2018-02-08 15:53:25', NULL, NULL, NULL),
('Swissup_RichSnippets', 'swissup/rich-snippets', 'Structured data markup for Google''s crawlers', NULL, NULL, NULL, NULL, 'magento2-module', NULL, '1.1.1', '2018-03-29 08:28:05', NULL, NULL, NULL),
('Swissup_Rtl', 'swissup/rtl', 'Magento2 RTL detection', 'rtl', NULL, NULL, NULL, 'magento2-module', NULL, '1.0.0', '2018-03-26 08:59:09', NULL, NULL, NULL),
('Swissup_SeoCore', 'swissup/seo-core', 'SEO core module. It adds swissup menu and config sections.', NULL, NULL, NULL, NULL, 'magento2-module', NULL, '1.0.1', '2018-01-29 12:49:18', NULL, NULL, NULL),
('Swissup_SeoHtmlSitemap', 'swissup/seo-html-sitemap', 'Advanced HTML Sitemap for Magento 2.x e-commerce ', 'seo,sitemap', NULL, NULL, NULL, 'magento2-module', NULL, '1.0.0', '2017-12-13 13:11:30', NULL, NULL, NULL),
('Swissup_SeoPager', 'swissup/seo-pager', 'Improved Magento 2 pagination', 'better pagination,seo pagination', NULL, NULL, NULL, 'magento2-module', NULL, '1.0.0', '2018-01-29 12:57:44', NULL, NULL, NULL),
('Swissup_SeoTemplates', 'swissup/seo-templates', 'Generate product and category metadata for Magento 2.x', 'autogenerate metadata', NULL, NULL, NULL, 'magento2-module', NULL, 'dev-master', '2018-05-04 08:39:47', NULL, NULL, NULL),
('Swissup_SeoUrls', 'swissup/seo-urls', 'Improved Magento 2 urls', 'better ursl,seo urls', NULL, NULL, NULL, 'magento2-module', NULL, '1.1.2', '2018-05-10 06:48:13', NULL, NULL, NULL),
('Swissup_SlickCarousel', 'swissup/slick-carousel', 'the last carousel you''ll ever need for magento2', 'carousel,slick carousel,slider', NULL, NULL, NULL, 'magento2-module', '1.1.0', '1.1.3', '2018-05-04 06:41:36', NULL, NULL, NULL),
('Swissup_SoldTogether', 'swissup/sold-together', 'Sold Together for Magento 2', NULL, NULL, NULL, NULL, 'magento2-module', NULL, '1.2.6', '2018-05-10 06:49:04', NULL, NULL, NULL),
('Swissup_SubscribeAtCheckout', 'swissup/subscribe-at-checkout', 'Subscribe to newsletter directly from checkout page', 'newsletter,subscribe,subscription', NULL, NULL, NULL, 'magento2-module', NULL, '1.0.1', '2017-11-09 08:51:19', NULL, NULL, NULL),
('Swissup_Subscription', 'swissup/subscription', 'SwissUpLabs Modules Subscription', NULL, NULL, NULL, NULL, 'subscription-plan', NULL, NULL, NULL, 'https://swissuplabs.com', 'https://swissuplabs.com/subscription/customer/products/', 'https://swissuplabs.com/license/customer/identity/'),
('Swissup_SubscriptionChecker', 'swissup/subscription-checker', 'Client-side subscription validation', NULL, NULL, NULL, NULL, 'magento2-module', NULL, '1.1.0', '2018-04-23 11:47:31', NULL, NULL, NULL),
('Swissup_Suggestpage', 'swissup/suggestpage', 'The Magento 2 module Suggest Page gives your customers custom page, shown after product was added to shopping cart', NULL, NULL, NULL, NULL, 'magento2-module', NULL, '1.1.0', '2017-08-21 11:48:41', NULL, NULL, NULL),
('Swissup_Taxvat', 'swissup/taxvat', 'Magento 2 Checkout Tax VAT', NULL, NULL, NULL, NULL, 'magento2-module', NULL, '1.0.4', '2017-11-21 07:49:30', NULL, NULL, NULL),
('Swissup_Testimonials', 'swissup/testimonials', 'Testimonials extension from Swissup', 'reviews,testimonials', NULL, NULL, NULL, 'magento2-module', NULL, '1.0.10', '2018-03-29 11:10:13', 'https://swissuplabs.com/testimonials-for-magento-2.html', 'https://swissuplabs.com/subscription/customer/products/', NULL),
('Swissup_Tfa', 'swissup/tfa', 'Two Factor Authentication Extension for Magento 2', NULL, NULL, NULL, NULL, 'magento2-module', NULL, 'dev-master', '2018-04-23 08:47:26', NULL, NULL, NULL),
('Swissup_ThemeEditor', 'swissup/theme-editor', 'Theme styles editing extension from Swissup', NULL, NULL, NULL, NULL, 'magento2-module', '1.3.0', '1.4.2', '2018-03-29 08:14:34', NULL, NULL, NULL),
('Swissup_ThemeEditorArgentoEssence', 'swissup/theme-editor-argento-essence', 'Theme styles for Argento Essence theme', NULL, NULL, NULL, NULL, 'magento2-module', NULL, '1.2.5', '2018-03-29 08:06:03', NULL, NULL, NULL),
('Swissup_ThemeEditorArgentoFlat', 'swissup/theme-editor-argento-flat', 'Theme styles for Argento Flat theme', NULL, NULL, NULL, NULL, 'magento2-module', NULL, '1.2.5', '2018-03-29 08:06:54', NULL, NULL, NULL),
('Swissup_ThemeEditorArgentoLuxury', 'swissup/theme-editor-argento-luxury', 'Theme styles for Argento Luxury theme', NULL, NULL, NULL, NULL, 'magento2-module', NULL, '1.2.5', '2018-03-29 08:02:27', NULL, NULL, NULL),
('Swissup_ThemeEditorArgentoMall', 'swissup/theme-editor-argento-mall', 'Theme styles for Argento Mall theme', NULL, NULL, NULL, NULL, 'magento2-module', NULL, '1.2.5', '2018-03-29 08:08:01', NULL, NULL, NULL),
('Swissup_ThemeEditorArgentoPure2', 'swissup/theme-editor-argento-pure2', 'Theme styles for Argento Pure2 theme', NULL, NULL, NULL, NULL, 'magento2-module', NULL, '1.2.5', '2018-03-29 08:10:57', NULL, NULL, NULL),
('Swissup_ThemeEditorArgentoStripes', 'swissup/theme-editor-argento-stripes', 'Theme styles for Argento Stripes theme', NULL, NULL, NULL, NULL, 'magento2-module', NULL, '1.2.5', '2018-03-29 08:12:29', NULL, NULL, NULL),
('Swissup_ThemeEditorSwissupAbsolute', 'swissup/theme-editor-swissup-absolute', 'Theme styles for Swissup Absolute theme', NULL, NULL, NULL, NULL, 'magento2-module', '1.0.1', '1.0.1', '2017-06-23 08:53:58', NULL, NULL, NULL),
('Swissup_ThemeFrontendAbsolute', 'swissup/theme-frontend-absolute', 'Absolute Theme for Magento 2', 'absolute,free theme,responsive template,responsive theme,template,theme', '1.0.0', NULL, '0,1', 'magento2-theme', '1.1.2', '1.1.2', '2017-06-23 08:52:23', 'https://swissuplabs.com/free-magento-2-theme-absolute.html', NULL, NULL),
('Swissup_ThemeFrontendArgentoBlank', 'swissup/theme-frontend-argento-blank', 'Basic theme for all Argento themes', 'argento,blank,responsive template,responsive theme,template,theme', NULL, NULL, NULL, 'magento2-theme', NULL, '1.3.1', '2018-05-08 12:10:25', NULL, NULL, NULL),
('Swissup_ThemeFrontendArgentoEssence', 'swissup/theme-frontend-argento-essence', 'Most advanced responsive theme for Magento', 'argento,essence,responsive template,responsive theme,template,theme', NULL, NULL, NULL, 'magento2-theme', NULL, '1.3.1', '2018-05-08 12:11:33', 'http://argentotheme.com/', 'https://argentotheme.com/downloadable/customer/products/', 'https://argentotheme.com/license/customer/activation/'),
('Swissup_ThemeFrontendArgentoFlat', 'swissup/theme-frontend-argento-flat', 'Most advanced responsive theme for Magento', 'argento,flat,responsive template,responsive theme,template,theme', NULL, NULL, NULL, 'magento2-theme', NULL, '1.3.1', '2018-05-08 12:12:13', 'http://argentotheme.com/', 'https://argentotheme.com/downloadable/customer/products/', 'https://argentotheme.com/license/customer/activation/'),
('Swissup_ThemeFrontendArgentoLuxury', 'swissup/theme-frontend-argento-luxury', 'Most advanced responsive theme for Magento', 'argento,luxury,responsive template,responsive theme,template,theme', NULL, NULL, NULL, 'magento2-theme', NULL, '1.3.1', '2018-05-08 12:12:46', 'http://argentotheme.com/', 'https://argentotheme.com/downloadable/customer/products/', 'https://argentotheme.com/license/customer/activation/'),
('Swissup_ThemeFrontendArgentoMall', 'swissup/theme-frontend-argento-mall', 'Most advanced responsive theme for Magento', 'argento,mall,responsive template,responsive theme,template,theme', NULL, NULL, NULL, 'magento2-theme', NULL, '1.3.1', '2018-05-08 12:14:01', 'http://argentotheme.com/', 'https://argentotheme.com/downloadable/customer/products/', 'https://argentotheme.com/license/customer/activation/'),
('Swissup_ThemeFrontendArgentoPure2', 'swissup/theme-frontend-argento-pure2', 'Most advanced responsive theme for Magento', 'argento,pure2,responsive template,responsive theme,template,theme', NULL, NULL, NULL, 'magento2-theme', NULL, '1.3.1', '2018-05-08 12:14:32', 'http://argentotheme.com/', 'https://argentotheme.com/downloadable/customer/products/', 'https://argentotheme.com/license/customer/activation/'),
('Swissup_ThemeFrontendArgentoStripes', 'swissup/theme-frontend-argento-stripes', 'Most advanced responsive theme for Magento', 'argento,responsive template,responsive theme,stripes,template,theme', NULL, NULL, NULL, 'magento2-theme', NULL, '1.3.1', '2018-05-08 12:15:03', 'http://argentotheme.com/', 'https://argentotheme.com/downloadable/customer/products/', 'https://argentotheme.com/license/customer/activation/');

-- --------------------------------------------------------

--
-- Table structure for table `tax_calculation`
--

CREATE TABLE `tax_calculation` (
  `tax_calculation_id` int(11) NOT NULL COMMENT 'Tax Calculation Id',
  `tax_calculation_rate_id` int(11) NOT NULL COMMENT 'Tax Calculation Rate Id',
  `tax_calculation_rule_id` int(11) NOT NULL COMMENT 'Tax Calculation Rule Id',
  `customer_tax_class_id` smallint(6) NOT NULL COMMENT 'Customer Tax Class Id',
  `product_tax_class_id` smallint(6) NOT NULL COMMENT 'Product Tax Class Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Calculation';

--
-- Dumping data for table `tax_calculation`
--

INSERT INTO `tax_calculation` (`tax_calculation_id`, `tax_calculation_rate_id`, `tax_calculation_rule_id`, `customer_tax_class_id`, `product_tax_class_id`) VALUES
(1, 3, 1, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tax_calculation_rate`
--

CREATE TABLE `tax_calculation_rate` (
  `tax_calculation_rate_id` int(11) NOT NULL COMMENT 'Tax Calculation Rate Id',
  `tax_country_id` varchar(2) NOT NULL COMMENT 'Tax Country Id',
  `tax_region_id` int(11) NOT NULL COMMENT 'Tax Region Id',
  `tax_postcode` varchar(21) DEFAULT NULL COMMENT 'Tax Postcode',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `rate` decimal(12,4) NOT NULL COMMENT 'Rate',
  `zip_is_range` smallint(6) DEFAULT NULL COMMENT 'Zip Is Range',
  `zip_from` int(10) UNSIGNED DEFAULT NULL COMMENT 'Zip From',
  `zip_to` int(10) UNSIGNED DEFAULT NULL COMMENT 'Zip To'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rate';

--
-- Dumping data for table `tax_calculation_rate`
--

INSERT INTO `tax_calculation_rate` (`tax_calculation_rate_id`, `tax_country_id`, `tax_region_id`, `tax_postcode`, `code`, `rate`, `zip_is_range`, `zip_from`, `zip_to`) VALUES
(1, 'US', 12, '*', 'US-CA-*-Rate 1', '8.2500', NULL, NULL, NULL),
(2, 'US', 43, '*', 'US-NY-*-Rate 1', '8.3750', NULL, NULL, NULL),
(3, 'US', 33, '*', 'US-MI-*-Rate 1', '8.2500', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tax_calculation_rate_title`
--

CREATE TABLE `tax_calculation_rate_title` (
  `tax_calculation_rate_title_id` int(11) NOT NULL COMMENT 'Tax Calculation Rate Title Id',
  `tax_calculation_rate_id` int(11) NOT NULL COMMENT 'Tax Calculation Rate Id',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id',
  `value` varchar(255) NOT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rate Title';

-- --------------------------------------------------------

--
-- Table structure for table `tax_calculation_rule`
--

CREATE TABLE `tax_calculation_rule` (
  `tax_calculation_rule_id` int(11) NOT NULL COMMENT 'Tax Calculation Rule Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `priority` int(11) NOT NULL COMMENT 'Priority',
  `position` int(11) NOT NULL COMMENT 'Position',
  `calculate_subtotal` int(11) NOT NULL COMMENT 'Calculate off subtotal option'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rule';

--
-- Dumping data for table `tax_calculation_rule`
--

INSERT INTO `tax_calculation_rule` (`tax_calculation_rule_id`, `code`, `priority`, `position`, `calculate_subtotal`) VALUES
(1, 'Rule1', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tax_class`
--

CREATE TABLE `tax_class` (
  `class_id` smallint(6) NOT NULL COMMENT 'Class Id',
  `class_name` varchar(255) NOT NULL COMMENT 'Class Name',
  `class_type` varchar(8) NOT NULL DEFAULT 'CUSTOMER' COMMENT 'Class Type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Class';

--
-- Dumping data for table `tax_class`
--

INSERT INTO `tax_class` (`class_id`, `class_name`, `class_type`) VALUES
(2, 'Taxable Goods', 'PRODUCT'),
(3, 'Retail Customer', 'CUSTOMER');

-- --------------------------------------------------------

--
-- Table structure for table `tax_order_aggregated_created`
--

CREATE TABLE `tax_order_aggregated_created` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `percent` float DEFAULT NULL COMMENT 'Percent',
  `orders_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `tax_base_amount_sum` float DEFAULT NULL COMMENT 'Tax Base Amount Sum'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Order Aggregation';

-- --------------------------------------------------------

--
-- Table structure for table `tax_order_aggregated_updated`
--

CREATE TABLE `tax_order_aggregated_updated` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `percent` float DEFAULT NULL COMMENT 'Percent',
  `orders_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `tax_base_amount_sum` float DEFAULT NULL COMMENT 'Tax Base Amount Sum'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Order Aggregated Updated';

-- --------------------------------------------------------

--
-- Table structure for table `temando_checkout_address`
--

CREATE TABLE `temando_checkout_address` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `shipping_address_id` int(10) UNSIGNED NOT NULL COMMENT 'Magento Quote Address Id',
  `service_selection` text COMMENT 'Value Added Services'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Temando Checkout Address';

-- --------------------------------------------------------

--
-- Table structure for table `temando_order`
--

CREATE TABLE `temando_order` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'Magento Order Id',
  `ext_order_id` varchar(64) NOT NULL COMMENT 'Temando Order Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Temando Order';

-- --------------------------------------------------------

--
-- Table structure for table `temando_shipment`
--

CREATE TABLE `temando_shipment` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `shipment_id` int(10) UNSIGNED NOT NULL COMMENT 'Magento Shipment Id',
  `ext_shipment_id` varchar(64) NOT NULL COMMENT 'External Shipment Id',
  `ext_location_id` varchar(64) DEFAULT NULL,
  `ext_tracking_url` varchar(255) DEFAULT NULL COMMENT 'External Tracking Url',
  `ext_tracking_reference` varchar(255) DEFAULT NULL COMMENT 'External Tracking Reference'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Temando Shipment';

-- --------------------------------------------------------

--
-- Table structure for table `theme`
--

CREATE TABLE `theme` (
  `theme_id` int(10) UNSIGNED NOT NULL COMMENT 'Theme identifier',
  `parent_id` int(11) DEFAULT NULL COMMENT 'Parent Id',
  `theme_path` varchar(255) DEFAULT NULL COMMENT 'Theme Path',
  `theme_title` varchar(255) NOT NULL COMMENT 'Theme Title',
  `preview_image` varchar(255) DEFAULT NULL COMMENT 'Preview Image',
  `is_featured` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Is Theme Featured',
  `area` varchar(255) NOT NULL COMMENT 'Theme Area',
  `type` smallint(6) NOT NULL COMMENT 'Theme type: 0:physical, 1:virtual, 2:staging',
  `code` text COMMENT 'Full theme code, including package'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Core theme';

--
-- Dumping data for table `theme`
--

INSERT INTO `theme` (`theme_id`, `parent_id`, `theme_path`, `theme_title`, `preview_image`, `is_featured`, `area`, `type`, `code`) VALUES
(1, NULL, 'Magento/blank', 'Magento Blank', 'preview_image_5ad9a5316252a.jpeg', 1, 'frontend', 0, 'Magento/blank'),
(2, 1, 'Magento/luma', 'Magento Luma', 'preview_image_5ad9a531cc02e.jpeg', 1, 'frontend', 0, 'Magento/luma'),
(3, NULL, 'Magento/backend', 'Magento 2 backend', NULL, 1, 'adminhtml', 0, 'Magento/backend'),
(15, 2, 'Swissup/absolute', 'Absolute', 'preview_image_5afbfcb1289c1.png', 0, 'frontend', 0, 'Swissup/absolute');

-- --------------------------------------------------------

--
-- Table structure for table `theme_file`
--

CREATE TABLE `theme_file` (
  `theme_files_id` int(10) UNSIGNED NOT NULL COMMENT 'Theme files identifier',
  `theme_id` int(10) UNSIGNED NOT NULL COMMENT 'Theme Id',
  `file_path` varchar(255) DEFAULT NULL COMMENT 'Relative path to file',
  `file_type` varchar(32) NOT NULL COMMENT 'File Type',
  `content` longtext NOT NULL COMMENT 'File Content',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `is_temporary` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Is Temporary File'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Core theme files';

-- --------------------------------------------------------

--
-- Table structure for table `translation`
--

CREATE TABLE `translation` (
  `key_id` int(10) UNSIGNED NOT NULL COMMENT 'Key Id of Translation',
  `string` varchar(255) NOT NULL DEFAULT 'Translate String' COMMENT 'Translation String',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `translate` varchar(255) DEFAULT NULL COMMENT 'Translate',
  `locale` varchar(20) NOT NULL DEFAULT 'en_US' COMMENT 'Locale',
  `crc_string` bigint(20) NOT NULL DEFAULT '1591228201' COMMENT 'Translation String CRC32 Hash'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Translations';

-- --------------------------------------------------------

--
-- Table structure for table `trive_revo`
--

CREATE TABLE `trive_revo` (
  `slider_id` int(10) UNSIGNED NOT NULL COMMENT 'Slider ID',
  `title` text COMMENT 'Slider title',
  `display_title` smallint(6) DEFAULT NULL COMMENT 'Display title',
  `status` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Slider status',
  `description` text COMMENT 'Description',
  `type` text COMMENT 'Slyder type',
  `grid` smallint(6) DEFAULT NULL COMMENT 'Display items grid',
  `exclude_from_cart` smallint(6) DEFAULT NULL COMMENT 'Don''t display slider on cart page ',
  `exclude_from_checkout` smallint(6) DEFAULT NULL COMMENT 'Don''t display slider on checkout ',
  `location` text COMMENT 'Slider location',
  `start_time` datetime DEFAULT NULL COMMENT 'Slider start time',
  `end_time` datetime DEFAULT NULL COMMENT 'Slider end time',
  `navigation` smallint(6) DEFAULT NULL COMMENT 'Navigation dots',
  `infinite` tinyint(1) DEFAULT NULL COMMENT 'Infinite loop',
  `slides_to_show` smallint(6) DEFAULT NULL COMMENT 'Slides to show',
  `slides_to_scroll` smallint(6) DEFAULT NULL COMMENT 'Slides to scroll',
  `speed` smallint(6) DEFAULT NULL COMMENT 'Speed',
  `autoplay` tinyint(1) DEFAULT NULL COMMENT 'Autoplay',
  `autoplay_speed` smallint(6) DEFAULT NULL COMMENT 'Autoplay speed',
  `rtl` tinyint(1) DEFAULT NULL COMMENT 'Right to left',
  `breakpoint_large` smallint(6) DEFAULT NULL COMMENT 'Large breakpoint',
  `large_slides_to_show` smallint(6) DEFAULT NULL COMMENT 'Slides to show for large',
  `large_slides_to_scroll` smallint(6) DEFAULT NULL COMMENT 'Slides to scroll for large',
  `breakpoint_medium` smallint(6) DEFAULT NULL COMMENT 'Medium breakpoint',
  `medium_slides_to_show` smallint(6) DEFAULT NULL COMMENT 'Slides to show for medium',
  `medium_slides_to_scroll` smallint(6) DEFAULT NULL COMMENT 'Slides to scroll for Medium',
  `breakpoint_small` smallint(6) DEFAULT NULL COMMENT 'Small breakpoint',
  `small_slides_to_show` smallint(6) DEFAULT NULL COMMENT 'Slides to show for small',
  `small_slides_to_scroll` smallint(6) DEFAULT NULL COMMENT 'Slides to scroll for small',
  `display_price` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Display product price',
  `display_cart` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Display add to cart button',
  `display_wishlist` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Display add to wish list',
  `display_compare` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Display add to compare',
  `products_number` smallint(5) UNSIGNED NOT NULL COMMENT 'Number of products in slider',
  `enable_swatches` smallint(5) UNSIGNED NOT NULL COMMENT 'Enable color swatches',
  `enable_ajaxcart` smallint(5) UNSIGNED NOT NULL COMMENT 'Enable ajax add to cart'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Trive Main Product Slider Table';

--
-- Dumping data for table `trive_revo`
--

INSERT INTO `trive_revo` (`slider_id`, `title`, `display_title`, `status`, `description`, `type`, `grid`, `exclude_from_cart`, `exclude_from_checkout`, `location`, `start_time`, `end_time`, `navigation`, `infinite`, `slides_to_show`, `slides_to_scroll`, `speed`, `autoplay`, `autoplay_speed`, `rtl`, `breakpoint_large`, `large_slides_to_show`, `large_slides_to_scroll`, `breakpoint_medium`, `medium_slides_to_show`, `medium_slides_to_scroll`, `breakpoint_small`, `small_slides_to_show`, `small_slides_to_scroll`, `display_price`, `display_cart`, `display_wishlist`, `display_compare`, `products_number`, `enable_swatches`, `enable_ajaxcart`) VALUES
(1, 'Home Page Product Slider', 0, 1, 'Home Page Slider', 'autorelated', 0, 0, 0, 'homepage-content-top', NULL, NULL, 0, 1, 4, 2, 1000, 1, 1500, 0, 1024, 3, 2, 768, 2, 1, 480, 1, 1, 1, 1, 1, 1, 9, 0, 0),
(2, 'Cateogry Page Product Slider', 0, 1, 'Cateogry Page Product Slider', 'autorelated', 0, 0, 0, 'category-content-top', NULL, NULL, 0, 1, 4, 2, 1000, 1, 1500, 0, 1024, 3, 2, 768, 2, 1, 480, 1, 1, 1, 1, 1, 1, 9, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `trive_revo_products`
--

CREATE TABLE `trive_revo_products` (
  `slider_id` int(10) UNSIGNED NOT NULL COMMENT 'Slider ID',
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Slider Linkage Table';

--
-- Dumping data for table `trive_revo_products`
--

INSERT INTO `trive_revo_products` (`slider_id`, `product_id`, `position`) VALUES
(1, 1, 1),
(1, 2, 1),
(1, 3, 1),
(1, 15, 1),
(1, 23, 1),
(1, 24, 1),
(1, 25, 1),
(1, 26, 1),
(1, 27, 1),
(1, 28, 1),
(1, 29, 0),
(1, 30, 1),
(1, 31, 1),
(1, 32, 1),
(1, 33, 1);

-- --------------------------------------------------------

--
-- Table structure for table `trive_revo_stores`
--

CREATE TABLE `trive_revo_stores` (
  `slider_id` int(10) UNSIGNED NOT NULL COMMENT 'Slider ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Revo store table';

--
-- Dumping data for table `trive_revo_stores`
--

INSERT INTO `trive_revo_stores` (`slider_id`, `store_id`) VALUES
(1, 0),
(2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tutorial_simplenews`
--

CREATE TABLE `tutorial_simplenews` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `title` text NOT NULL COMMENT 'Title',
  `summary` text NOT NULL COMMENT 'Summary',
  `description` text NOT NULL COMMENT 'Description',
  `created_at` datetime NOT NULL COMMENT 'Created At',
  `status` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='News Table';

--
-- Dumping data for table `tutorial_simplenews`
--

INSERT INTO `tutorial_simplenews` (`id`, `title`, `summary`, `description`, `created_at`, `status`) VALUES
(1, 'How to create a simple module', 'The summary', 'The description', '2018-05-07 05:57:41', 1),
(2, 'Create a module with custom database table', 'The summary', 'The description', '2018-05-07 05:57:41', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ui_bookmark`
--

CREATE TABLE `ui_bookmark` (
  `bookmark_id` int(10) UNSIGNED NOT NULL COMMENT 'Bookmark identifier',
  `user_id` int(10) UNSIGNED NOT NULL COMMENT 'User Id',
  `namespace` varchar(255) NOT NULL COMMENT 'Bookmark namespace',
  `identifier` varchar(255) NOT NULL COMMENT 'Bookmark Identifier',
  `current` smallint(6) NOT NULL COMMENT 'Mark current bookmark per user and identifier',
  `title` varchar(255) DEFAULT NULL COMMENT 'Bookmark title',
  `config` longtext COMMENT 'Bookmark config',
  `created_at` datetime NOT NULL COMMENT 'Bookmark created at',
  `updated_at` datetime NOT NULL COMMENT 'Bookmark updated at'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Bookmark';

--
-- Dumping data for table `ui_bookmark`
--

INSERT INTO `ui_bookmark` (`bookmark_id`, `user_id`, `namespace`, `identifier`, `current`, `title`, `config`, `created_at`, `updated_at`) VALUES
(1, 1, 'product_listing', 'default', 1, 'Default View', '{"views":{"default":{"label":"Default View","index":"default","editable":false,"data":{"columns":{"entity_id":{"visible":true,"sorting":"asc"},"name":{"visible":true,"sorting":false},"sku":{"visible":true,"sorting":false},"price":{"visible":true,"sorting":false},"websites":{"visible":true,"sorting":false},"qty":{"visible":true,"sorting":false},"short_description":{"visible":false,"sorting":false},"special_price":{"visible":false,"sorting":false},"cost":{"visible":false,"sorting":false},"weight":{"visible":false,"sorting":false},"meta_title":{"visible":false,"sorting":false},"meta_keyword":{"visible":false,"sorting":false},"meta_description":{"visible":false,"sorting":false},"url_key":{"visible":false,"sorting":false},"msrp":{"visible":false,"sorting":false},"touchscreen":{"visible":false,"sorting":false},"ids":{"visible":true,"sorting":false},"type_id":{"visible":true,"sorting":false},"attribute_set_id":{"visible":true,"sorting":false},"visibility":{"visible":true,"sorting":false},"status":{"visible":true,"sorting":false},"manufacturer":{"visible":false,"sorting":false},"color":{"visible":false,"sorting":false},"custom_design":{"visible":false,"sorting":false},"page_layout":{"visible":false,"sorting":false},"country_of_manufacture":{"visible":false,"sorting":false},"custom_layout":{"visible":false,"sorting":false},"gift_message_available":{"visible":false,"sorting":false},"tax_class_id":{"visible":false,"sorting":false},"core_hp":{"visible":true,"sorting":false},"size":{"visible":true,"sorting":false},"special_from_date":{"visible":false,"sorting":false},"special_to_date":{"visible":false,"sorting":false},"news_from_date":{"visible":false,"sorting":false},"news_to_date":{"visible":false,"sorting":false},"custom_design_from":{"visible":false,"sorting":false},"custom_design_to":{"visible":false,"sorting":false},"actions":{"visible":true,"sorting":false},"thumbnail":{"visible":true,"sorting":false}},"filters":{"applied":{"placeholder":true}},"displayMode":"grid","paging":{"options":{"20":{"value":20,"label":20},"30":{"value":30,"label":30},"50":{"value":50,"label":50},"100":{"value":100,"label":100},"200":{"value":200,"label":200}},"value":20},"positions":{"ids":0,"entity_id":1,"thumbnail":2,"name":3,"type_id":4,"attribute_set_id":5,"sku":6,"price":7,"qty":8,"visibility":9,"status":10,"websites":11,"short_description":12,"special_price":13,"special_from_date":14,"special_to_date":15,"cost":16,"weight":17,"manufacturer":18,"meta_title":19,"meta_keyword":20,"meta_description":21,"color":22,"news_from_date":23,"news_to_date":24,"custom_design":25,"custom_design_from":26,"custom_design_to":27,"page_layout":28,"country_of_manufacture":29,"custom_layout":30,"url_key":31,"msrp":32,"gift_message_available":33,"tax_class_id":34,"touchscreen":35,"core_hp":36,"size":37,"actions":38}},"value":"Default View"}}}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 'product_listing', 'current', 0, NULL, '{"current":{"columns":{"entity_id":{"visible":true,"sorting":"asc"},"name":{"visible":true,"sorting":false},"sku":{"visible":true,"sorting":false},"price":{"visible":true,"sorting":false},"websites":{"visible":true,"sorting":false},"qty":{"visible":true,"sorting":false},"short_description":{"visible":false,"sorting":false},"special_price":{"visible":false,"sorting":false},"cost":{"visible":false,"sorting":false},"weight":{"visible":false,"sorting":false},"meta_title":{"visible":false,"sorting":false},"meta_keyword":{"visible":false,"sorting":false},"meta_description":{"visible":false,"sorting":false},"url_key":{"visible":false,"sorting":false},"msrp":{"visible":false,"sorting":false},"touchscreen":{"visible":false,"sorting":false},"ids":{"visible":true,"sorting":false},"type_id":{"visible":true,"sorting":false},"attribute_set_id":{"visible":true,"sorting":false},"visibility":{"visible":true,"sorting":false},"status":{"visible":true,"sorting":false},"manufacturer":{"visible":false,"sorting":false},"color":{"visible":false,"sorting":false},"custom_design":{"visible":false,"sorting":false},"page_layout":{"visible":false,"sorting":false},"country_of_manufacture":{"visible":false,"sorting":false},"custom_layout":{"visible":false,"sorting":false},"gift_message_available":{"visible":false,"sorting":false},"tax_class_id":{"visible":false,"sorting":false},"core_hp":{"visible":true,"sorting":false},"size":{"visible":true,"sorting":false},"special_from_date":{"visible":false,"sorting":false},"special_to_date":{"visible":false,"sorting":false},"news_from_date":{"visible":false,"sorting":false},"news_to_date":{"visible":false,"sorting":false},"custom_design_from":{"visible":false,"sorting":false},"custom_design_to":{"visible":false,"sorting":false},"actions":{"visible":true,"sorting":false},"thumbnail":{"visible":true,"sorting":false}},"filters":{"applied":{"placeholder":true}},"displayMode":"grid","paging":{"options":{"20":{"value":20,"label":20},"30":{"value":30,"label":30},"50":{"value":50,"label":50},"100":{"value":100,"label":100},"200":{"value":200,"label":200}},"value":20},"positions":{"ids":0,"entity_id":1,"thumbnail":2,"name":3,"type_id":4,"attribute_set_id":5,"sku":6,"price":7,"qty":8,"visibility":9,"status":10,"websites":11,"short_description":12,"special_price":13,"special_from_date":14,"special_to_date":15,"cost":16,"weight":17,"manufacturer":18,"meta_title":19,"meta_keyword":20,"meta_description":21,"color":22,"news_from_date":23,"news_to_date":24,"custom_design":25,"custom_design_from":26,"custom_design_to":27,"page_layout":28,"country_of_manufacture":29,"custom_layout":30,"url_key":31,"msrp":32,"gift_message_available":33,"tax_class_id":34,"touchscreen":35,"core_hp":36,"size":37,"actions":38}}}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 1, 'design_config_listing', 'default', 1, 'Default View', '{"views":{"default":{"label":"Default View","index":"default","editable":false,"data":{"filters":{"applied":{"placeholder":true}},"columns":{"theme_theme_id":{"visible":true,"sorting":false},"store_website_id":{"visible":true,"sorting":false},"store_group_id":{"visible":true,"sorting":false},"store_id":{"visible":true,"sorting":false},"actions":{"visible":true,"sorting":false},"default":{"visible":true,"sorting":false}},"displayMode":"grid","paging":{"options":{"20":{"value":20,"label":20},"30":{"value":30,"label":30},"50":{"value":50,"label":50},"100":{"value":100,"label":100},"200":{"value":200,"label":200}},"value":20},"positions":{"default":0,"store_website_id":1,"store_group_id":2,"store_id":3,"theme_theme_id":4,"actions":5}},"value":"Default View"}}}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 1, 'design_config_listing', 'current', 0, NULL, '{"current":{"filters":{"applied":{"placeholder":true}},"columns":{"theme_theme_id":{"visible":true,"sorting":false},"store_website_id":{"visible":true,"sorting":false},"store_group_id":{"visible":true,"sorting":false},"store_id":{"visible":true,"sorting":false},"actions":{"visible":true,"sorting":false},"default":{"visible":true,"sorting":false}},"displayMode":"grid","paging":{"options":{"20":{"value":20,"label":20},"30":{"value":30,"label":30},"50":{"value":50,"label":50},"100":{"value":100,"label":100},"200":{"value":200,"label":200}},"value":20},"positions":{"default":0,"store_website_id":1,"store_group_id":2,"store_id":3,"theme_theme_id":4,"actions":5}}}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 1, 'swissup_installer_listing', 'default', 1, 'Default View', '{"views":{"default":{"label":"Default View","index":"default","editable":false,"data":{"filters":{"applied":{"placeholder":true}},"columns":{"release_date":{"visible":true,"sorting":"desc"},"actions":{"visible":true,"sorting":false},"code":{"visible":true,"sorting":false},"version":{"visible":true,"sorting":false}},"paging":{"options":{"20":{"value":20,"label":20},"30":{"value":30,"label":30},"50":{"value":50,"label":50},"100":{"value":100,"label":100},"200":{"value":200,"label":200}},"value":20},"positions":{"code":0,"version":1,"release_date":2,"actions":3},"displayMode":"grid","search":{"value":""}},"value":"Default View"}}}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 1, 'swissup_installer_listing', 'current', 0, NULL, '{"current":{"filters":{"applied":{"placeholder":true}},"columns":{"release_date":{"visible":true,"sorting":"desc"},"actions":{"visible":true,"sorting":false},"code":{"visible":true,"sorting":false},"version":{"visible":true,"sorting":false}},"paging":{"options":{"20":{"value":20,"label":20},"30":{"value":30,"label":30},"50":{"value":50,"label":50},"100":{"value":100,"label":100},"200":{"value":200,"label":200}},"value":20},"positions":{"code":0,"version":1,"release_date":2,"actions":3},"displayMode":"grid","search":{"value":""}}}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 1, 'cms_page_listing', 'default', 1, 'Default View', '{"views":{"default":{"label":"Default View","index":"default","editable":false,"data":{"filters":{"applied":{"placeholder":true}},"search":{"value":""},"columns":{"page_id":{"visible":true,"sorting":"asc"},"title":{"visible":true,"sorting":false},"identifier":{"visible":true,"sorting":false},"store_id":{"visible":true,"sorting":false},"meta_title":{"visible":false,"sorting":false},"meta_keywords":{"visible":false,"sorting":false},"meta_description":{"visible":false,"sorting":false},"ids":{"visible":true,"sorting":false},"creation_time":{"visible":true,"sorting":false},"update_time":{"visible":true,"sorting":false},"custom_theme_from":{"visible":false,"sorting":false},"custom_theme_to":{"visible":false,"sorting":false},"actions":{"visible":true,"sorting":false},"page_layout":{"visible":true,"sorting":false},"is_active":{"visible":true,"sorting":false},"custom_theme":{"visible":false,"sorting":false},"custom_root_template":{"visible":false,"sorting":false}},"displayMode":"grid","paging":{"options":{"20":{"value":20,"label":20},"30":{"value":30,"label":30},"50":{"value":50,"label":50},"100":{"value":100,"label":100},"200":{"value":200,"label":200}},"value":20},"positions":{"ids":0,"page_id":1,"title":2,"identifier":3,"page_layout":4,"store_id":5,"is_active":6,"creation_time":7,"update_time":8,"custom_theme_from":9,"custom_theme_to":10,"custom_theme":11,"custom_root_template":12,"meta_title":13,"meta_keywords":14,"meta_description":15,"actions":16}},"value":"Default View"}}}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 1, 'cms_page_listing', 'current', 0, NULL, '{"current":{"filters":{"applied":{"placeholder":true}},"search":{"value":""},"columns":{"page_id":{"visible":true,"sorting":"asc"},"title":{"visible":true,"sorting":false},"identifier":{"visible":true,"sorting":false},"store_id":{"visible":true,"sorting":false},"meta_title":{"visible":false,"sorting":false},"meta_keywords":{"visible":false,"sorting":false},"meta_description":{"visible":false,"sorting":false},"ids":{"visible":true,"sorting":false},"creation_time":{"visible":true,"sorting":false},"update_time":{"visible":true,"sorting":false},"custom_theme_from":{"visible":false,"sorting":false},"custom_theme_to":{"visible":false,"sorting":false},"actions":{"visible":true,"sorting":false},"page_layout":{"visible":true,"sorting":false},"is_active":{"visible":true,"sorting":false},"custom_theme":{"visible":false,"sorting":false},"custom_root_template":{"visible":false,"sorting":false}},"displayMode":"grid","paging":{"options":{"20":{"value":20,"label":20},"30":{"value":30,"label":30},"50":{"value":50,"label":50},"100":{"value":100,"label":100},"200":{"value":200,"label":200}},"value":20},"positions":{"ids":0,"page_id":1,"title":2,"identifier":3,"page_layout":4,"store_id":5,"is_active":6,"creation_time":7,"update_time":8,"custom_theme_from":9,"custom_theme_to":10,"custom_theme":11,"custom_root_template":12,"meta_title":13,"meta_keywords":14,"meta_description":15,"actions":16}}}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 1, 'cms_block_listing', 'default', 1, 'Default View', '{"views":{"default":{"label":"Default View","index":"default","editable":false,"data":{"search":{"value":""},"filters":{"applied":{"placeholder":true}},"columns":{"block_id":{"visible":true,"sorting":"asc"},"title":{"visible":true,"sorting":false},"identifier":{"visible":true,"sorting":false},"store_id":{"visible":true,"sorting":false},"actions":{"visible":true,"sorting":false},"ids":{"visible":true,"sorting":false},"is_active":{"visible":true,"sorting":false},"creation_time":{"visible":true,"sorting":false},"update_time":{"visible":true,"sorting":false}},"displayMode":"grid","paging":{"options":{"20":{"value":20,"label":20},"30":{"value":30,"label":30},"50":{"value":50,"label":50},"100":{"value":100,"label":100},"200":{"value":200,"label":200}},"value":20},"positions":{"ids":0,"block_id":1,"title":2,"identifier":3,"store_id":4,"is_active":5,"creation_time":6,"update_time":7,"actions":8}},"value":"Default View"}}}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 1, 'cms_block_listing', 'current', 0, NULL, '{"current":{"search":{"value":""},"filters":{"applied":{"placeholder":true}},"columns":{"block_id":{"visible":true,"sorting":"asc"},"title":{"visible":true,"sorting":false},"identifier":{"visible":true,"sorting":false},"store_id":{"visible":true,"sorting":false},"actions":{"visible":true,"sorting":false},"ids":{"visible":true,"sorting":false},"is_active":{"visible":true,"sorting":false},"creation_time":{"visible":true,"sorting":false},"update_time":{"visible":true,"sorting":false}},"displayMode":"grid","paging":{"options":{"20":{"value":20,"label":20},"30":{"value":30,"label":30},"50":{"value":50,"label":50},"100":{"value":100,"label":100},"200":{"value":200,"label":200}},"value":20},"positions":{"ids":0,"block_id":1,"title":2,"identifier":3,"store_id":4,"is_active":5,"creation_time":6,"update_time":7,"actions":8}}}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 1, 'customer_online_grid', 'default', 1, 'Default View', '{"views":{"default":{"label":"Default View","index":"default","editable":false,"data":{"filters":{"applied":{"placeholder":true}},"columns":{"customer_id":{"visible":true,"sorting":"asc"},"firstname":{"visible":true,"sorting":false},"lastname":{"visible":true,"sorting":false},"email":{"visible":true,"sorting":false},"last_visit_at":{"visible":true,"sorting":false},"visitor_type":{"visible":true,"sorting":false}},"displayMode":"grid","positions":{"customer_id":0,"firstname":1,"lastname":2,"email":3,"last_visit_at":4,"visitor_type":5},"paging":{"options":{"20":{"value":20,"label":20},"30":{"value":30,"label":30},"50":{"value":50,"label":50},"100":{"value":100,"label":100},"200":{"value":200,"label":200}},"value":20}},"value":"Default View"}}}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 1, 'customer_online_grid', 'current', 0, NULL, '{"current":{"filters":{"applied":{"placeholder":true}},"columns":{"customer_id":{"visible":true,"sorting":"asc"},"firstname":{"visible":true,"sorting":false},"lastname":{"visible":true,"sorting":false},"email":{"visible":true,"sorting":false},"last_visit_at":{"visible":true,"sorting":false},"visitor_type":{"visible":true,"sorting":false}},"displayMode":"grid","positions":{"customer_id":0,"firstname":1,"lastname":2,"email":3,"last_visit_at":4,"visitor_type":5},"paging":{"options":{"20":{"value":20,"label":20},"30":{"value":30,"label":30},"50":{"value":50,"label":50},"100":{"value":100,"label":100},"200":{"value":200,"label":200}},"value":20}}}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 1, 'customer_listing', 'default', 1, 'Default View', '{"views":{"default":{"label":"Default View","index":"default","editable":false,"data":{"filters":{"applied":{"placeholder":true}},"columns":{"entity_id":{"visible":true,"sorting":"asc"},"name":{"visible":true,"sorting":false},"email":{"visible":true,"sorting":false},"billing_telephone":{"visible":true,"sorting":false},"billing_postcode":{"visible":true,"sorting":false},"billing_region":{"visible":true,"sorting":false},"confirmation":{"visible":true,"sorting":false},"created_in":{"visible":true,"sorting":false},"billing_full":{"visible":false,"sorting":false},"shipping_full":{"visible":false,"sorting":false},"taxvat":{"visible":true,"sorting":false},"billing_street":{"visible":false,"sorting":false},"billing_city":{"visible":false,"sorting":false},"billing_fax":{"visible":false,"sorting":false},"billing_vat_id":{"visible":false,"sorting":false},"billing_company":{"visible":false,"sorting":false},"billing_firstname":{"visible":false,"sorting":false},"billing_lastname":{"visible":false,"sorting":false},"lock_expires":{"visible":false,"sorting":false},"group_id":{"visible":true,"sorting":false},"billing_country_id":{"visible":true,"sorting":false},"website_id":{"visible":true,"sorting":false},"gender":{"visible":true,"sorting":false},"created_at":{"visible":true,"sorting":false},"dob":{"visible":true,"sorting":false},"ids":{"visible":true,"sorting":false},"actions":{"visible":true,"sorting":false}},"search":{"value":""},"displayMode":"grid","paging":{"options":{"20":{"value":20,"label":20},"30":{"value":30,"label":30},"50":{"value":50,"label":50},"100":{"value":100,"label":100},"200":{"value":200,"label":200}},"value":20},"positions":{"ids":0,"entity_id":1,"name":2,"email":3,"group_id":4,"billing_telephone":5,"billing_postcode":6,"billing_country_id":7,"billing_region":8,"created_at":9,"website_id":10,"confirmation":11,"created_in":12,"billing_full":13,"shipping_full":14,"dob":15,"taxvat":16,"gender":17,"billing_street":18,"billing_city":19,"billing_fax":20,"billing_vat_id":21,"billing_company":22,"billing_firstname":23,"billing_lastname":24,"lock_expires":25,"actions":26}},"value":"Default View"}}}', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 1, 'customer_listing', 'current', 0, NULL, '{"current":{"filters":{"applied":{"placeholder":true}},"columns":{"entity_id":{"visible":true,"sorting":"asc"},"name":{"visible":true,"sorting":false},"email":{"visible":true,"sorting":false},"billing_telephone":{"visible":true,"sorting":false},"billing_postcode":{"visible":true,"sorting":false},"billing_region":{"visible":true,"sorting":false},"confirmation":{"visible":true,"sorting":false},"created_in":{"visible":true,"sorting":false},"billing_full":{"visible":false,"sorting":false},"shipping_full":{"visible":false,"sorting":false},"taxvat":{"visible":true,"sorting":false},"billing_street":{"visible":false,"sorting":false},"billing_city":{"visible":false,"sorting":false},"billing_fax":{"visible":false,"sorting":false},"billing_vat_id":{"visible":false,"sorting":false},"billing_company":{"visible":false,"sorting":false},"billing_firstname":{"visible":false,"sorting":false},"billing_lastname":{"visible":false,"sorting":false},"lock_expires":{"visible":false,"sorting":false},"group_id":{"visible":true,"sorting":false},"billing_country_id":{"visible":true,"sorting":false},"website_id":{"visible":true,"sorting":false},"gender":{"visible":true,"sorting":false},"created_at":{"visible":true,"sorting":false},"dob":{"visible":true,"sorting":false},"ids":{"visible":true,"sorting":false},"actions":{"visible":true,"sorting":false}},"search":{"value":""},"displayMode":"grid","paging":{"options":{"20":{"value":20,"label":20},"30":{"value":30,"label":30},"50":{"value":50,"label":50},"100":{"value":100,"label":100},"200":{"value":200,"label":200}},"value":20},"positions":{"ids":0,"entity_id":1,"name":2,"email":3,"group_id":4,"billing_telephone":5,"billing_postcode":6,"billing_country_id":7,"billing_region":8,"created_at":9,"website_id":10,"confirmation":11,"created_in":12,"billing_full":13,"shipping_full":14,"dob":15,"taxvat":16,"gender":17,"billing_street":18,"billing_city":19,"billing_fax":20,"billing_vat_id":21,"billing_company":22,"billing_firstname":23,"billing_lastname":24,"lock_expires":25,"actions":26}}}', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `url_rewrite`
--

CREATE TABLE `url_rewrite` (
  `url_rewrite_id` int(10) UNSIGNED NOT NULL COMMENT 'Rewrite Id',
  `entity_type` varchar(32) NOT NULL COMMENT 'Entity type code',
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `request_path` varchar(255) DEFAULT NULL COMMENT 'Request Path',
  `target_path` varchar(255) DEFAULT NULL COMMENT 'Target Path',
  `redirect_type` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Redirect Type',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id',
  `description` varchar(255) DEFAULT NULL COMMENT 'Description',
  `is_autogenerated` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is rewrite generated automatically flag',
  `metadata` varchar(255) DEFAULT NULL COMMENT 'Meta data for url rewrite'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Url Rewrites';

--
-- Dumping data for table `url_rewrite`
--

INSERT INTO `url_rewrite` (`url_rewrite_id`, `entity_type`, `entity_id`, `request_path`, `target_path`, `redirect_type`, `store_id`, `description`, `is_autogenerated`, `metadata`) VALUES
(113, 'category', 10, 'men.html', 'catalog/category/view/id/10', 0, 1, NULL, 1, NULL),
(124, 'category', 11, 'men/trouser.html', 'catalog/category/view/id/11', 0, 1, NULL, 1, NULL),
(132, 'category', 12, 'men/t-shirts.html', 'catalog/category/view/id/12', 0, 1, NULL, 1, NULL),
(174, 'category', 14, 'laptop.html', 'catalog/category/view/id/14', 0, 1, NULL, 1, NULL),
(187, 'category', 15, 'laptop/dell.html', 'catalog/category/view/id/15', 0, 1, NULL, 1, NULL),
(198, 'category', 16, 'men/jackets-men.html', 'catalog/category/view/id/16', 0, 1, NULL, 1, NULL),
(273, 'product', 31, 'proteus-fitness-jackshirt-xl-orange.html', 'catalog/product/view/id/31', 0, 1, NULL, 1, NULL),
(274, 'product', 31, 'men/jackets-men/proteus-fitness-jackshirt-xl-orange.html', 'catalog/product/view/id/31/category/16', 0, 1, NULL, 1, '{"category_id":"16"}'),
(275, 'product', 31, 'men/proteus-fitness-jackshirt-xl-orange.html', 'catalog/product/view/id/31/category/10', 0, 1, NULL, 1, '{"category_id":"10"}'),
(276, 'product', 32, 'proteus-fitness-jackshirt-xl-blue.html', 'catalog/product/view/id/32', 0, 1, NULL, 1, NULL),
(277, 'product', 32, 'men/jackets-men/proteus-fitness-jackshirt-xl-blue.html', 'catalog/product/view/id/32/category/16', 0, 1, NULL, 1, '{"category_id":"16"}'),
(278, 'product', 32, 'men/proteus-fitness-jackshirt-xl-blue.html', 'catalog/product/view/id/32/category/10', 0, 1, NULL, 1, '{"category_id":"10"}'),
(279, 'product', 33, 'proteus-fitness-jackshirt-xl-black.html', 'catalog/product/view/id/33', 0, 1, NULL, 1, NULL),
(280, 'product', 33, 'men/jackets-men/proteus-fitness-jackshirt-xl-black.html', 'catalog/product/view/id/33/category/16', 0, 1, NULL, 1, '{"category_id":"16"}'),
(281, 'product', 33, 'men/proteus-fitness-jackshirt-xl-black.html', 'catalog/product/view/id/33/category/10', 0, 1, NULL, 1, '{"category_id":"10"}'),
(288, 'cms-page', 7, 'home', 'cms/page/view/page_id/7', 0, 1, NULL, 1, NULL),
(289, 'product', 1, 'dell-inspirion.html', 'catalog/product/view/id/1', 0, 1, NULL, 1, NULL),
(290, 'product', 1, 'laptop/dell/dell-inspirion.html', 'catalog/product/view/id/1/category/15', 0, 1, NULL, 1, '{"category_id":"15"}'),
(291, 'product', 1, 'laptop/dell-inspirion.html', 'catalog/product/view/id/1/category/14', 0, 1, NULL, 1, '{"category_id":"14"}'),
(292, 'product', 2, 'lenovo.html', 'catalog/product/view/id/2', 0, 1, NULL, 1, NULL),
(293, 'product', 2, 'laptop/lenovo.html', 'catalog/product/view/id/2/category/14', 0, 1, NULL, 1, '{"category_id":"14"}'),
(294, 'product', 3, 'acer-aspire.html', 'catalog/product/view/id/3', 0, 1, NULL, 1, NULL),
(295, 'product', 3, 'laptop/acer-aspire.html', 'catalog/product/view/id/3/category/14', 0, 1, NULL, 1, '{"category_id":"14"}'),
(296, 'product', 15, 'hp.html', 'catalog/product/view/id/15', 0, 1, NULL, 1, NULL),
(297, 'product', 15, 'laptop/hp.html', 'catalog/product/view/id/15/category/14', 0, 1, NULL, 1, '{"category_id":"14"}'),
(298, 'product', 24, 'gift.html', 'catalog/product/view/id/24', 0, 1, NULL, 1, NULL),
(299, 'product', 25, 'addidas-t-shirts.html', 'catalog/product/view/id/25', 0, 1, NULL, 1, NULL),
(300, 'product', 25, 'men/t-shirts/addidas-t-shirts.html', 'catalog/product/view/id/25/category/12', 0, 1, NULL, 1, '{"category_id":"12"}'),
(301, 'product', 25, 'men/addidas-t-shirts.html', 'catalog/product/view/id/25/category/10', 0, 1, NULL, 1, '{"category_id":"10"}'),
(302, 'product', 26, 'black-trousers.html', 'catalog/product/view/id/26', 0, 1, NULL, 1, NULL),
(303, 'product', 26, 'men/trouser/black-trousers.html', 'catalog/product/view/id/26/category/11', 0, 1, NULL, 1, '{"category_id":"11"}'),
(304, 'product', 26, 'men/black-trousers.html', 'catalog/product/view/id/26/category/10', 0, 1, NULL, 1, '{"category_id":"10"}'),
(305, 'product', 27, 'dell-inspiron-3552-z565162hin9-notebook.html', 'catalog/product/view/id/27', 0, 1, NULL, 1, NULL),
(306, 'product', 27, 'laptop/dell/dell-inspiron-3552-z565162hin9-notebook.html', 'catalog/product/view/id/27/category/15', 0, 1, NULL, 1, '{"category_id":"15"}'),
(307, 'product', 27, 'laptop/dell-inspiron-3552-z565162hin9-notebook.html', 'catalog/product/view/id/27/category/14', 0, 1, NULL, 1, '{"category_id":"14"}'),
(308, 'product', 28, 'dell-3467-a561201uin9-notebook.html', 'catalog/product/view/id/28', 0, 1, NULL, 1, NULL),
(309, 'product', 28, 'laptop/dell/dell-3467-a561201uin9-notebook.html', 'catalog/product/view/id/28/category/15', 0, 1, NULL, 1, '{"category_id":"15"}'),
(310, 'product', 28, 'laptop/dell-3467-a561201uin9-notebook.html', 'catalog/product/view/id/28/category/14', 0, 1, NULL, 1, '{"category_id":"14"}'),
(311, 'product', 29, 'formal-trouser.html', 'catalog/product/view/id/29', 0, 1, NULL, 1, NULL),
(312, 'product', 29, 'men/trouser/formal-trouser.html', 'catalog/product/view/id/29/category/11', 0, 1, NULL, 1, '{"category_id":"11"}'),
(313, 'product', 29, 'men/formal-trouser.html', 'catalog/product/view/id/29/category/10', 0, 1, NULL, 1, '{"category_id":"10"}'),
(314, 'category', 17, 'gear.html', 'catalog/category/view/id/17', 0, 1, NULL, 1, NULL),
(315, 'category', 18, 'gear/bags.html', 'catalog/category/view/id/18', 0, 1, NULL, 1, NULL),
(316, 'category', 19, 'gear/fitness-equipment.html', 'catalog/category/view/id/19', 0, 1, NULL, 1, NULL),
(317, 'category', 20, 'gear/watches.html', 'catalog/category/view/id/20', 0, 1, NULL, 1, NULL),
(318, 'category', 21, 'collections.html', 'catalog/category/view/id/21', 0, 1, NULL, 1, NULL),
(319, 'category', 22, 'collections/yoga-new.html', 'catalog/category/view/id/22', 0, 1, NULL, 1, NULL),
(320, 'product', 34, 'joust-duffle-bag.html', 'catalog/product/view/id/34', 0, 1, NULL, 1, NULL),
(321, 'product', 34, 'gear/joust-duffle-bag.html', 'catalog/product/view/id/34/category/17', 0, 1, NULL, 1, '{"category_id":"17"}'),
(322, 'product', 34, 'gear/bags/joust-duffle-bag.html', 'catalog/product/view/id/34/category/18', 0, 1, NULL, 1, '{"category_id":"18"}'),
(323, 'product', 35, 'strive-shoulder-pack.html', 'catalog/product/view/id/35', 0, 1, NULL, 1, NULL),
(324, 'product', 35, 'gear/strive-shoulder-pack.html', 'catalog/product/view/id/35/category/17', 0, 1, NULL, 1, '{"category_id":"17"}'),
(325, 'product', 35, 'gear/bags/strive-shoulder-pack.html', 'catalog/product/view/id/35/category/18', 0, 1, NULL, 1, '{"category_id":"18"}'),
(326, 'product', 35, 'collections/strive-shoulder-pack.html', 'catalog/product/view/id/35/category/21', 0, 1, NULL, 1, '{"category_id":"21"}'),
(327, 'product', 36, 'crown-summit-backpack.html', 'catalog/product/view/id/36', 0, 1, NULL, 1, NULL),
(328, 'product', 36, 'gear/crown-summit-backpack.html', 'catalog/product/view/id/36/category/17', 0, 1, NULL, 1, '{"category_id":"17"}'),
(329, 'product', 36, 'gear/bags/crown-summit-backpack.html', 'catalog/product/view/id/36/category/18', 0, 1, NULL, 1, '{"category_id":"18"}'),
(330, 'product', 37, 'wayfarer-messenger-bag.html', 'catalog/product/view/id/37', 0, 1, NULL, 1, NULL),
(331, 'product', 37, 'gear/wayfarer-messenger-bag.html', 'catalog/product/view/id/37/category/17', 0, 1, NULL, 1, '{"category_id":"17"}'),
(332, 'product', 37, 'collections/wayfarer-messenger-bag.html', 'catalog/product/view/id/37/category/21', 0, 1, NULL, 1, '{"category_id":"21"}'),
(333, 'product', 37, 'gear/bags/wayfarer-messenger-bag.html', 'catalog/product/view/id/37/category/18', 0, 1, NULL, 1, '{"category_id":"18"}'),
(334, 'product', 37, 'collections/yoga-new/wayfarer-messenger-bag.html', 'catalog/product/view/id/37/category/22', 0, 1, NULL, 1, '{"category_id":"22"}'),
(335, 'product', 38, 'rival-field-messenger.html', 'catalog/product/view/id/38', 0, 1, NULL, 1, NULL),
(336, 'product', 38, 'gear/rival-field-messenger.html', 'catalog/product/view/id/38/category/17', 0, 1, NULL, 1, '{"category_id":"17"}'),
(337, 'product', 38, 'collections/rival-field-messenger.html', 'catalog/product/view/id/38/category/21', 0, 1, NULL, 1, '{"category_id":"21"}'),
(338, 'product', 38, 'gear/bags/rival-field-messenger.html', 'catalog/product/view/id/38/category/18', 0, 1, NULL, 1, '{"category_id":"18"}'),
(339, 'product', 38, 'collections/yoga-new/rival-field-messenger.html', 'catalog/product/view/id/38/category/22', 0, 1, NULL, 1, '{"category_id":"22"}'),
(340, 'product', 39, 'fusion-backpack.html', 'catalog/product/view/id/39', 0, 1, NULL, 1, NULL),
(341, 'product', 39, 'gear/fusion-backpack.html', 'catalog/product/view/id/39/category/17', 0, 1, NULL, 1, '{"category_id":"17"}'),
(342, 'product', 39, 'gear/bags/fusion-backpack.html', 'catalog/product/view/id/39/category/18', 0, 1, NULL, 1, '{"category_id":"18"}'),
(343, 'product', 40, 'impulse-duffle.html', 'catalog/product/view/id/40', 0, 1, NULL, 1, NULL),
(344, 'product', 40, 'gear/impulse-duffle.html', 'catalog/product/view/id/40/category/17', 0, 1, NULL, 1, '{"category_id":"17"}'),
(345, 'product', 40, 'gear/bags/impulse-duffle.html', 'catalog/product/view/id/40/category/18', 0, 1, NULL, 1, '{"category_id":"18"}'),
(346, 'product', 41, 'voyage-yoga-bag.html', 'catalog/product/view/id/41', 0, 1, NULL, 1, NULL),
(347, 'product', 41, 'gear/voyage-yoga-bag.html', 'catalog/product/view/id/41/category/17', 0, 1, NULL, 1, '{"category_id":"17"}'),
(348, 'product', 41, 'gear/bags/voyage-yoga-bag.html', 'catalog/product/view/id/41/category/18', 0, 1, NULL, 1, '{"category_id":"18"}'),
(349, 'product', 42, 'compete-track-tote.html', 'catalog/product/view/id/42', 0, 1, NULL, 1, NULL),
(350, 'product', 42, 'gear/compete-track-tote.html', 'catalog/product/view/id/42/category/17', 0, 1, NULL, 1, '{"category_id":"17"}'),
(351, 'product', 42, 'gear/bags/compete-track-tote.html', 'catalog/product/view/id/42/category/18', 0, 1, NULL, 1, '{"category_id":"18"}'),
(352, 'product', 43, 'savvy-shoulder-tote.html', 'catalog/product/view/id/43', 0, 1, NULL, 1, NULL),
(353, 'product', 43, 'gear/savvy-shoulder-tote.html', 'catalog/product/view/id/43/category/17', 0, 1, NULL, 1, '{"category_id":"17"}'),
(354, 'product', 43, 'gear/bags/savvy-shoulder-tote.html', 'catalog/product/view/id/43/category/18', 0, 1, NULL, 1, '{"category_id":"18"}'),
(355, 'product', 43, 'collections/savvy-shoulder-tote.html', 'catalog/product/view/id/43/category/21', 0, 1, NULL, 1, '{"category_id":"21"}'),
(356, 'product', 44, 'endeavor-daytrip-backpack.html', 'catalog/product/view/id/44', 0, 1, NULL, 1, NULL),
(357, 'product', 44, 'gear/endeavor-daytrip-backpack.html', 'catalog/product/view/id/44/category/17', 0, 1, NULL, 1, '{"category_id":"17"}'),
(358, 'product', 44, 'gear/bags/endeavor-daytrip-backpack.html', 'catalog/product/view/id/44/category/18', 0, 1, NULL, 1, '{"category_id":"18"}'),
(359, 'product', 44, 'collections/endeavor-daytrip-backpack.html', 'catalog/product/view/id/44/category/21', 0, 1, NULL, 1, '{"category_id":"21"}'),
(360, 'product', 45, 'driven-backpack.html', 'catalog/product/view/id/45', 0, 1, NULL, 1, NULL),
(361, 'product', 45, 'gear/driven-backpack.html', 'catalog/product/view/id/45/category/17', 0, 1, NULL, 1, '{"category_id":"17"}'),
(362, 'product', 45, 'gear/bags/driven-backpack.html', 'catalog/product/view/id/45/category/18', 0, 1, NULL, 1, '{"category_id":"18"}'),
(363, 'product', 46, 'overnight-duffle.html', 'catalog/product/view/id/46', 0, 1, NULL, 1, NULL),
(364, 'product', 46, 'gear/overnight-duffle.html', 'catalog/product/view/id/46/category/17', 0, 1, NULL, 1, '{"category_id":"17"}'),
(365, 'product', 46, 'collections/overnight-duffle.html', 'catalog/product/view/id/46/category/21', 0, 1, NULL, 1, '{"category_id":"21"}'),
(366, 'product', 46, 'gear/bags/overnight-duffle.html', 'catalog/product/view/id/46/category/18', 0, 1, NULL, 1, '{"category_id":"18"}'),
(367, 'product', 46, 'collections/yoga-new/overnight-duffle.html', 'catalog/product/view/id/46/category/22', 0, 1, NULL, 1, '{"category_id":"22"}'),
(368, 'product', 47, 'push-it-messenger-bag.html', 'catalog/product/view/id/47', 0, 1, NULL, 1, NULL),
(369, 'product', 47, 'gear/push-it-messenger-bag.html', 'catalog/product/view/id/47/category/17', 0, 1, NULL, 1, '{"category_id":"17"}'),
(370, 'product', 47, 'gear/bags/push-it-messenger-bag.html', 'catalog/product/view/id/47/category/18', 0, 1, NULL, 1, '{"category_id":"18"}'),
(371, 'product', 47, 'collections/push-it-messenger-bag.html', 'catalog/product/view/id/47/category/21', 0, 1, NULL, 1, '{"category_id":"21"}'),
(372, 'product', 48, 'affirm-water-bottle.html', 'catalog/product/view/id/48', 0, 1, NULL, 1, NULL),
(373, 'product', 48, 'gear/affirm-water-bottle.html', 'catalog/product/view/id/48/category/17', 0, 1, NULL, 1, '{"category_id":"17"}'),
(374, 'product', 48, 'gear/fitness-equipment/affirm-water-bottle.html', 'catalog/product/view/id/48/category/19', 0, 1, NULL, 1, '{"category_id":"19"}'),
(375, 'product', 49, 'dual-handle-cardio-ball.html', 'catalog/product/view/id/49', 0, 1, NULL, 1, NULL),
(376, 'product', 49, 'gear/dual-handle-cardio-ball.html', 'catalog/product/view/id/49/category/17', 0, 1, NULL, 1, '{"category_id":"17"}'),
(377, 'product', 49, 'gear/fitness-equipment/dual-handle-cardio-ball.html', 'catalog/product/view/id/49/category/19', 0, 1, NULL, 1, '{"category_id":"19"}'),
(378, 'product', 49, 'collections/dual-handle-cardio-ball.html', 'catalog/product/view/id/49/category/21', 0, 1, NULL, 1, '{"category_id":"21"}'),
(379, 'product', 50, 'zing-jump-rope.html', 'catalog/product/view/id/50', 0, 1, NULL, 1, NULL),
(380, 'product', 50, 'gear/zing-jump-rope.html', 'catalog/product/view/id/50/category/17', 0, 1, NULL, 1, '{"category_id":"17"}'),
(381, 'product', 50, 'gear/fitness-equipment/zing-jump-rope.html', 'catalog/product/view/id/50/category/19', 0, 1, NULL, 1, '{"category_id":"19"}'),
(382, 'product', 51, 'pursuit-lumaflex-trade-tone-band.html', 'catalog/product/view/id/51', 0, 1, NULL, 1, NULL),
(383, 'product', 51, 'gear/pursuit-lumaflex-trade-tone-band.html', 'catalog/product/view/id/51/category/17', 0, 1, NULL, 1, '{"category_id":"17"}'),
(384, 'product', 51, 'gear/fitness-equipment/pursuit-lumaflex-trade-tone-band.html', 'catalog/product/view/id/51/category/19', 0, 1, NULL, 1, '{"category_id":"19"}'),
(385, 'product', 52, 'go-get-r-pushup-grips.html', 'catalog/product/view/id/52', 0, 1, NULL, 1, NULL),
(386, 'product', 52, 'gear/go-get-r-pushup-grips.html', 'catalog/product/view/id/52/category/17', 0, 1, NULL, 1, '{"category_id":"17"}'),
(387, 'product', 52, 'collections/go-get-r-pushup-grips.html', 'catalog/product/view/id/52/category/21', 0, 1, NULL, 1, '{"category_id":"21"}'),
(388, 'product', 52, 'gear/fitness-equipment/go-get-r-pushup-grips.html', 'catalog/product/view/id/52/category/19', 0, 1, NULL, 1, '{"category_id":"19"}'),
(389, 'product', 52, 'collections/yoga-new/go-get-r-pushup-grips.html', 'catalog/product/view/id/52/category/22', 0, 1, NULL, 1, '{"category_id":"22"}'),
(390, 'product', 53, 'quest-lumaflex-trade-band.html', 'catalog/product/view/id/53', 0, 1, NULL, 1, NULL),
(391, 'product', 53, 'gear/quest-lumaflex-trade-band.html', 'catalog/product/view/id/53/category/17', 0, 1, NULL, 1, '{"category_id":"17"}'),
(392, 'product', 53, 'gear/fitness-equipment/quest-lumaflex-trade-band.html', 'catalog/product/view/id/53/category/19', 0, 1, NULL, 1, '{"category_id":"19"}'),
(393, 'product', 54, 'sprite-foam-yoga-brick.html', 'catalog/product/view/id/54', 0, 1, NULL, 1, NULL),
(394, 'product', 54, 'gear/sprite-foam-yoga-brick.html', 'catalog/product/view/id/54/category/17', 0, 1, NULL, 1, '{"category_id":"17"}'),
(395, 'product', 54, 'gear/fitness-equipment/sprite-foam-yoga-brick.html', 'catalog/product/view/id/54/category/19', 0, 1, NULL, 1, '{"category_id":"19"}'),
(396, 'product', 55, 'sprite-foam-roller.html', 'catalog/product/view/id/55', 0, 1, NULL, 1, NULL),
(397, 'product', 55, 'gear/sprite-foam-roller.html', 'catalog/product/view/id/55/category/17', 0, 1, NULL, 1, '{"category_id":"17"}'),
(398, 'product', 55, 'gear/fitness-equipment/sprite-foam-roller.html', 'catalog/product/view/id/55/category/19', 0, 1, NULL, 1, '{"category_id":"19"}'),
(399, 'product', 56, 'harmony-lumaflex-trade-strength-band-kit.html', 'catalog/product/view/id/56', 0, 1, NULL, 1, NULL),
(400, 'product', 56, 'gear/harmony-lumaflex-trade-strength-band-kit.html', 'catalog/product/view/id/56/category/17', 0, 1, NULL, 1, '{"category_id":"17"}'),
(401, 'product', 56, 'gear/fitness-equipment/harmony-lumaflex-trade-strength-band-kit.html', 'catalog/product/view/id/56/category/19', 0, 1, NULL, 1, '{"category_id":"19"}'),
(402, 'product', 69, 'aim-analog-watch.html', 'catalog/product/view/id/69', 0, 1, NULL, 1, NULL),
(403, 'product', 69, 'gear/aim-analog-watch.html', 'catalog/product/view/id/69/category/17', 0, 1, NULL, 1, '{"category_id":"17"}'),
(404, 'product', 69, 'gear/watches/aim-analog-watch.html', 'catalog/product/view/id/69/category/20', 0, 1, NULL, 1, '{"category_id":"20"}'),
(405, 'product', 70, 'endurance-watch.html', 'catalog/product/view/id/70', 0, 1, NULL, 1, NULL),
(406, 'product', 70, 'gear/endurance-watch.html', 'catalog/product/view/id/70/category/17', 0, 1, NULL, 1, '{"category_id":"17"}'),
(407, 'product', 70, 'gear/watches/endurance-watch.html', 'catalog/product/view/id/70/category/20', 0, 1, NULL, 1, '{"category_id":"20"}'),
(408, 'product', 71, 'summit-watch.html', 'catalog/product/view/id/71', 0, 1, NULL, 1, NULL),
(409, 'product', 71, 'gear/summit-watch.html', 'catalog/product/view/id/71/category/17', 0, 1, NULL, 1, '{"category_id":"17"}'),
(410, 'product', 71, 'collections/summit-watch.html', 'catalog/product/view/id/71/category/21', 0, 1, NULL, 1, '{"category_id":"21"}'),
(411, 'product', 71, 'gear/watches/summit-watch.html', 'catalog/product/view/id/71/category/20', 0, 1, NULL, 1, '{"category_id":"20"}'),
(412, 'product', 71, 'collections/yoga-new/summit-watch.html', 'catalog/product/view/id/71/category/22', 0, 1, NULL, 1, '{"category_id":"22"}'),
(413, 'product', 72, 'cruise-dual-analog-watch.html', 'catalog/product/view/id/72', 0, 1, NULL, 1, NULL),
(414, 'product', 72, 'gear/cruise-dual-analog-watch.html', 'catalog/product/view/id/72/category/17', 0, 1, NULL, 1, '{"category_id":"17"}'),
(415, 'product', 72, 'collections/cruise-dual-analog-watch.html', 'catalog/product/view/id/72/category/21', 0, 1, NULL, 1, '{"category_id":"21"}'),
(416, 'product', 72, 'gear/watches/cruise-dual-analog-watch.html', 'catalog/product/view/id/72/category/20', 0, 1, NULL, 1, '{"category_id":"20"}'),
(417, 'product', 72, 'collections/yoga-new/cruise-dual-analog-watch.html', 'catalog/product/view/id/72/category/22', 0, 1, NULL, 1, '{"category_id":"22"}'),
(418, 'product', 73, 'dash-digital-watch.html', 'catalog/product/view/id/73', 0, 1, NULL, 1, NULL),
(419, 'product', 73, 'gear/dash-digital-watch.html', 'catalog/product/view/id/73/category/17', 0, 1, NULL, 1, '{"category_id":"17"}'),
(420, 'product', 73, 'collections/dash-digital-watch.html', 'catalog/product/view/id/73/category/21', 0, 1, NULL, 1, '{"category_id":"21"}'),
(421, 'product', 73, 'gear/watches/dash-digital-watch.html', 'catalog/product/view/id/73/category/20', 0, 1, NULL, 1, '{"category_id":"20"}'),
(422, 'product', 73, 'collections/yoga-new/dash-digital-watch.html', 'catalog/product/view/id/73/category/22', 0, 1, NULL, 1, '{"category_id":"22"}'),
(423, 'product', 74, 'luma-analog-watch.html', 'catalog/product/view/id/74', 0, 1, NULL, 1, NULL),
(424, 'product', 74, 'gear/luma-analog-watch.html', 'catalog/product/view/id/74/category/17', 0, 1, NULL, 1, '{"category_id":"17"}'),
(425, 'product', 74, 'gear/watches/luma-analog-watch.html', 'catalog/product/view/id/74/category/20', 0, 1, NULL, 1, '{"category_id":"20"}'),
(426, 'product', 75, 'bolo-sport-watch.html', 'catalog/product/view/id/75', 0, 1, NULL, 1, NULL),
(427, 'product', 75, 'gear/bolo-sport-watch.html', 'catalog/product/view/id/75/category/17', 0, 1, NULL, 1, '{"category_id":"17"}'),
(428, 'product', 75, 'gear/watches/bolo-sport-watch.html', 'catalog/product/view/id/75/category/20', 0, 1, NULL, 1, '{"category_id":"20"}'),
(429, 'product', 76, 'clamber-watch.html', 'catalog/product/view/id/76', 0, 1, NULL, 1, NULL),
(430, 'product', 76, 'gear/clamber-watch.html', 'catalog/product/view/id/76/category/17', 0, 1, NULL, 1, '{"category_id":"17"}'),
(431, 'product', 76, 'gear/watches/clamber-watch.html', 'catalog/product/view/id/76/category/20', 0, 1, NULL, 1, '{"category_id":"20"}'),
(432, 'product', 77, 'didi-sport-watch.html', 'catalog/product/view/id/77', 0, 1, NULL, 1, NULL),
(433, 'product', 77, 'gear/didi-sport-watch.html', 'catalog/product/view/id/77/category/17', 0, 1, NULL, 1, '{"category_id":"17"}'),
(434, 'product', 77, 'collections/didi-sport-watch.html', 'catalog/product/view/id/77/category/21', 0, 1, NULL, 1, '{"category_id":"21"}'),
(435, 'product', 77, 'gear/watches/didi-sport-watch.html', 'catalog/product/view/id/77/category/20', 0, 1, NULL, 1, '{"category_id":"20"}'),
(436, 'product', 77, 'collections/yoga-new/didi-sport-watch.html', 'catalog/product/view/id/77/category/22', 0, 1, NULL, 1, '{"category_id":"22"}'),
(437, 'category', 23, 'training.html', 'catalog/category/view/id/23', 0, 1, NULL, 1, NULL),
(438, 'category', 24, 'training/training-video.html', 'catalog/category/view/id/24', 0, 1, NULL, 1, NULL),
(439, 'product', 78, 'beginner-s-yoga.html', 'catalog/product/view/id/78', 0, 1, NULL, 1, NULL),
(440, 'product', 78, 'training/beginner-s-yoga.html', 'catalog/product/view/id/78/category/23', 0, 1, NULL, 1, '{"category_id":"23"}'),
(441, 'product', 78, 'training/training-video/beginner-s-yoga.html', 'catalog/product/view/id/78/category/24', 0, 1, NULL, 1, '{"category_id":"24"}'),
(442, 'product', 79, 'lifelong-fitness-iv.html', 'catalog/product/view/id/79', 0, 1, NULL, 1, NULL),
(443, 'product', 79, 'training/lifelong-fitness-iv.html', 'catalog/product/view/id/79/category/23', 0, 1, NULL, 1, '{"category_id":"23"}'),
(444, 'product', 79, 'training/training-video/lifelong-fitness-iv.html', 'catalog/product/view/id/79/category/24', 0, 1, NULL, 1, '{"category_id":"24"}'),
(445, 'product', 80, 'yoga-adventure.html', 'catalog/product/view/id/80', 0, 1, NULL, 1, NULL),
(446, 'product', 80, 'training/yoga-adventure.html', 'catalog/product/view/id/80/category/23', 0, 1, NULL, 1, '{"category_id":"23"}'),
(447, 'product', 80, 'training/training-video/yoga-adventure.html', 'catalog/product/view/id/80/category/24', 0, 1, NULL, 1, '{"category_id":"24"}'),
(448, 'product', 81, 'solo-power-circuit.html', 'catalog/product/view/id/81', 0, 1, NULL, 1, NULL),
(449, 'product', 81, 'training/solo-power-circuit.html', 'catalog/product/view/id/81/category/23', 0, 1, NULL, 1, '{"category_id":"23"}'),
(450, 'product', 81, 'training/training-video/solo-power-circuit.html', 'catalog/product/view/id/81/category/24', 0, 1, NULL, 1, '{"category_id":"24"}'),
(451, 'product', 82, 'advanced-pilates-yoga-strength.html', 'catalog/product/view/id/82', 0, 1, NULL, 1, NULL),
(452, 'product', 82, 'training/advanced-pilates-yoga-strength.html', 'catalog/product/view/id/82/category/23', 0, 1, NULL, 1, '{"category_id":"23"}'),
(453, 'product', 82, 'training/training-video/advanced-pilates-yoga-strength.html', 'catalog/product/view/id/82/category/24', 0, 1, NULL, 1, '{"category_id":"24"}'),
(454, 'product', 83, 'luma-yoga-for-life.html', 'catalog/product/view/id/83', 0, 1, NULL, 1, NULL),
(455, 'product', 83, 'training/luma-yoga-for-life.html', 'catalog/product/view/id/83/category/23', 0, 1, NULL, 1, '{"category_id":"23"}'),
(456, 'product', 83, 'training/training-video/luma-yoga-for-life.html', 'catalog/product/view/id/83/category/24', 0, 1, NULL, 1, '{"category_id":"24"}'),
(457, 'product', 84, 'sprite-yoga-companion-kit.html', 'catalog/product/view/id/84', 0, 1, NULL, 1, NULL),
(458, 'product', 84, 'gear/sprite-yoga-companion-kit.html', 'catalog/product/view/id/84/category/17', 0, 1, NULL, 1, '{"category_id":"17"}'),
(459, 'product', 84, 'gear/fitness-equipment/sprite-yoga-companion-kit.html', 'catalog/product/view/id/84/category/19', 0, 1, NULL, 1, '{"category_id":"19"}'),
(460, 'category', 25, 'men/tops-men.html', 'catalog/category/view/id/25', 0, 1, NULL, 1, NULL),
(461, 'category', 26, 'men/bottoms-men.html', 'catalog/category/view/id/26', 0, 1, NULL, 1, NULL),
(462, 'category', 27, 'men/tops-men/jackets-men.html', 'catalog/category/view/id/27', 0, 1, NULL, 1, NULL),
(463, 'category', 28, 'men/tops-men/hoodies-and-sweatshirts-men.html', 'catalog/category/view/id/28', 0, 1, NULL, 1, NULL),
(464, 'category', 29, 'men/tops-men/tees-men.html', 'catalog/category/view/id/29', 0, 1, NULL, 1, NULL),
(465, 'category', 30, 'men/tops-men/tanks-men.html', 'catalog/category/view/id/30', 0, 1, NULL, 1, NULL),
(466, 'category', 31, 'men/bottoms-men/pants-men.html', 'catalog/category/view/id/31', 0, 1, NULL, 1, NULL),
(467, 'category', 32, 'men/bottoms-men/shorts-men.html', 'catalog/category/view/id/32', 0, 1, NULL, 1, NULL),
(468, 'category', 33, 'women.html', 'catalog/category/view/id/33', 0, 1, NULL, 1, NULL),
(469, 'category', 34, 'women/tops-women.html', 'catalog/category/view/id/34', 0, 1, NULL, 1, NULL),
(470, 'category', 35, 'women/bottoms-women.html', 'catalog/category/view/id/35', 0, 1, NULL, 1, NULL),
(471, 'category', 36, 'women/tops-women/jackets-women.html', 'catalog/category/view/id/36', 0, 1, NULL, 1, NULL),
(472, 'category', 37, 'women/tops-women/hoodies-and-sweatshirts-women.html', 'catalog/category/view/id/37', 0, 1, NULL, 1, NULL),
(473, 'category', 38, 'women/tops-women/tees-women.html', 'catalog/category/view/id/38', 0, 1, NULL, 1, NULL),
(474, 'category', 39, 'women/tops-women/tanks-women.html', 'catalog/category/view/id/39', 0, 1, NULL, 1, NULL),
(475, 'category', 40, 'women/bottoms-women/pants-women.html', 'catalog/category/view/id/40', 0, 1, NULL, 1, NULL),
(476, 'category', 41, 'women/bottoms-women/shorts-women.html', 'catalog/category/view/id/41', 0, 1, NULL, 1, NULL),
(477, 'category', 42, 'promotions.html', 'catalog/category/view/id/42', 0, 1, NULL, 1, NULL),
(478, 'category', 43, 'promotions/women-sale.html', 'catalog/category/view/id/43', 0, 1, NULL, 1, NULL),
(479, 'category', 44, 'promotions/men-sale.html', 'catalog/category/view/id/44', 0, 1, NULL, 1, NULL),
(480, 'category', 45, 'promotions/pants-all.html', 'catalog/category/view/id/45', 0, 1, NULL, 1, NULL),
(481, 'category', 46, 'promotions/tees-all.html', 'catalog/category/view/id/46', 0, 1, NULL, 1, NULL),
(482, 'category', 47, 'collections/erin-recommends.html', 'catalog/category/view/id/47', 0, 1, NULL, 1, NULL),
(483, 'category', 48, 'collections/performance-fabrics.html', 'catalog/category/view/id/48', 0, 1, NULL, 1, NULL),
(484, 'category', 49, 'collections/eco-friendly.html', 'catalog/category/view/id/49', 0, 1, NULL, 1, NULL),
(485, 'product', 100, 'chaz-kangeroo-hoodie.html', 'catalog/product/view/id/100', 0, 1, NULL, 1, NULL),
(486, 'product', 116, 'teton-pullover-hoodie.html', 'catalog/product/view/id/116', 0, 1, NULL, 1, NULL),
(487, 'product', 132, 'bruno-compete-hoodie.html', 'catalog/product/view/id/132', 0, 1, NULL, 1, NULL),
(488, 'product', 148, 'frankie-sweatshirt.html', 'catalog/product/view/id/148', 0, 1, NULL, 1, NULL),
(489, 'product', 164, 'hollister-backyard-sweatshirt.html', 'catalog/product/view/id/164', 0, 1, NULL, 1, NULL),
(490, 'product', 180, 'stark-fundamental-hoodie.html', 'catalog/product/view/id/180', 0, 1, NULL, 1, NULL),
(491, 'product', 100, 'men/tops-men/hoodies-and-sweatshirts-men/chaz-kangeroo-hoodie.html', 'catalog/product/view/id/100/category/28', 0, 1, NULL, 1, '{"category_id":"28"}'),
(492, 'product', 100, 'collections/eco-friendly/chaz-kangeroo-hoodie.html', 'catalog/product/view/id/100/category/49', 0, 1, NULL, 1, '{"category_id":"49"}'),
(493, 'product', 116, 'men/tops-men/hoodies-and-sweatshirts-men/teton-pullover-hoodie.html', 'catalog/product/view/id/116/category/28', 0, 1, NULL, 1, '{"category_id":"28"}'),
(494, 'product', 132, 'men/tops-men/hoodies-and-sweatshirts-men/bruno-compete-hoodie.html', 'catalog/product/view/id/132/category/28', 0, 1, NULL, 1, '{"category_id":"28"}'),
(495, 'product', 132, 'collections/eco-friendly/bruno-compete-hoodie.html', 'catalog/product/view/id/132/category/49', 0, 1, NULL, 1, '{"category_id":"49"}'),
(496, 'product', 148, 'men/tops-men/hoodies-and-sweatshirts-men/frankie-sweatshirt.html', 'catalog/product/view/id/148/category/28', 0, 1, NULL, 1, '{"category_id":"28"}'),
(497, 'product', 148, 'collections/eco-friendly/frankie-sweatshirt.html', 'catalog/product/view/id/148/category/49', 0, 1, NULL, 1, '{"category_id":"49"}'),
(498, 'product', 164, 'men/tops-men/hoodies-and-sweatshirts-men/hollister-backyard-sweatshirt.html', 'catalog/product/view/id/164/category/28', 0, 1, NULL, 1, '{"category_id":"28"}'),
(499, 'product', 180, 'men/tops-men/hoodies-and-sweatshirts-men/stark-fundamental-hoodie.html', 'catalog/product/view/id/180/category/28', 0, 1, NULL, 1, '{"category_id":"28"}'),
(500, 'product', 196, 'hero-hoodie.html', 'catalog/product/view/id/196', 0, 1, NULL, 1, NULL),
(501, 'product', 212, 'oslo-trek-hoodie.html', 'catalog/product/view/id/212', 0, 1, NULL, 1, NULL),
(502, 'product', 228, 'abominable-hoodie.html', 'catalog/product/view/id/228', 0, 1, NULL, 1, NULL),
(503, 'product', 244, 'mach-street-sweatshirt.html', 'catalog/product/view/id/244', 0, 1, NULL, 1, NULL),
(504, 'product', 260, 'grayson-crewneck-sweatshirt.html', 'catalog/product/view/id/260', 0, 1, NULL, 1, NULL),
(505, 'product', 276, 'ajax-full-zip-sweatshirt.html', 'catalog/product/view/id/276', 0, 1, NULL, 1, NULL),
(506, 'product', 196, 'men/tops-men/hoodies-and-sweatshirts-men/hero-hoodie.html', 'catalog/product/view/id/196/category/28', 0, 1, NULL, 1, '{"category_id":"28"}'),
(507, 'product', 212, 'men/tops-men/hoodies-and-sweatshirts-men/oslo-trek-hoodie.html', 'catalog/product/view/id/212/category/28', 0, 1, NULL, 1, '{"category_id":"28"}'),
(508, 'product', 228, 'men/tops-men/hoodies-and-sweatshirts-men/abominable-hoodie.html', 'catalog/product/view/id/228/category/28', 0, 1, NULL, 1, '{"category_id":"28"}'),
(509, 'product', 244, 'men/tops-men/hoodies-and-sweatshirts-men/mach-street-sweatshirt.html', 'catalog/product/view/id/244/category/28', 0, 1, NULL, 1, '{"category_id":"28"}'),
(510, 'product', 260, 'men/tops-men/hoodies-and-sweatshirts-men/grayson-crewneck-sweatshirt.html', 'catalog/product/view/id/260/category/28', 0, 1, NULL, 1, '{"category_id":"28"}'),
(511, 'product', 276, 'men/tops-men/hoodies-and-sweatshirts-men/ajax-full-zip-sweatshirt.html', 'catalog/product/view/id/276/category/28', 0, 1, NULL, 1, '{"category_id":"28"}'),
(512, 'product', 292, 'marco-lightweight-active-hoodie.html', 'catalog/product/view/id/292', 0, 1, NULL, 1, NULL),
(513, 'product', 308, 'beaumont-summit-kit.html', 'catalog/product/view/id/308', 0, 1, NULL, 1, NULL),
(514, 'product', 324, 'hyperion-elements-jacket.html', 'catalog/product/view/id/324', 0, 1, NULL, 1, NULL),
(515, 'product', 340, 'kenobi-trail-jacket.html', 'catalog/product/view/id/340', 0, 1, NULL, 1, NULL),
(516, 'product', 356, 'orion-two-tone-fitted-jacket.html', 'catalog/product/view/id/356', 0, 1, NULL, 1, NULL),
(517, 'product', 372, 'lando-gym-jacket.html', 'catalog/product/view/id/372', 0, 1, NULL, 1, NULL),
(518, 'product', 292, 'men/tops-men/hoodies-and-sweatshirts-men/marco-lightweight-active-hoodie.html', 'catalog/product/view/id/292/category/28', 0, 1, NULL, 1, '{"category_id":"28"}'),
(519, 'product', 308, 'men/tops-men/jackets-men/beaumont-summit-kit.html', 'catalog/product/view/id/308/category/27', 0, 1, NULL, 1, '{"category_id":"27"}'),
(520, 'product', 324, 'men/tops-men/jackets-men/hyperion-elements-jacket.html', 'catalog/product/view/id/324/category/27', 0, 1, NULL, 1, '{"category_id":"27"}'),
(521, 'product', 340, 'men/tops-men/jackets-men/kenobi-trail-jacket.html', 'catalog/product/view/id/340/category/27', 0, 1, NULL, 1, '{"category_id":"27"}'),
(522, 'product', 340, 'collections/eco-friendly/kenobi-trail-jacket.html', 'catalog/product/view/id/340/category/49', 0, 1, NULL, 1, '{"category_id":"49"}'),
(523, 'product', 356, 'men/tops-men/jackets-men/orion-two-tone-fitted-jacket.html', 'catalog/product/view/id/356/category/27', 0, 1, NULL, 1, '{"category_id":"27"}'),
(524, 'product', 372, 'men/tops-men/jackets-men/lando-gym-jacket.html', 'catalog/product/view/id/372/category/27', 0, 1, NULL, 1, '{"category_id":"27"}'),
(525, 'product', 388, 'taurus-elements-shell.html', 'catalog/product/view/id/388', 0, 1, NULL, 1, NULL),
(526, 'product', 404, 'mars-heattech-trade-pullover.html', 'catalog/product/view/id/404', 0, 1, NULL, 1, NULL),
(527, 'product', 420, 'typhon-performance-fleece-lined-jacket.html', 'catalog/product/view/id/420', 0, 1, NULL, 1, NULL),
(528, 'product', 436, 'jupiter-all-weather-trainer.html', 'catalog/product/view/id/436', 0, 1, NULL, 1, NULL),
(529, 'product', 452, 'montana-wind-jacket.html', 'catalog/product/view/id/452', 0, 1, NULL, 1, NULL),
(530, 'product', 30, 'proteus-fitness-jackshirt.html', 'catalog/product/view/id/30', 0, 1, NULL, 1, NULL),
(531, 'product', 480, 'gobi-heattec-reg-tee.html', 'catalog/product/view/id/480', 0, 1, NULL, 1, NULL),
(532, 'product', 388, 'men/tops-men/jackets-men/taurus-elements-shell.html', 'catalog/product/view/id/388/category/27', 0, 1, NULL, 1, '{"category_id":"27"}'),
(533, 'product', 404, 'men/tops-men/jackets-men/mars-heattech-trade-pullover.html', 'catalog/product/view/id/404/category/27', 0, 1, NULL, 1, '{"category_id":"27"}'),
(534, 'product', 420, 'men/tops-men/jackets-men/typhon-performance-fleece-lined-jacket.html', 'catalog/product/view/id/420/category/27', 0, 1, NULL, 1, '{"category_id":"27"}'),
(535, 'product', 436, 'men/tops-men/jackets-men/jupiter-all-weather-trainer.html', 'catalog/product/view/id/436/category/27', 0, 1, NULL, 1, '{"category_id":"27"}'),
(536, 'product', 436, 'collections/eco-friendly/jupiter-all-weather-trainer.html', 'catalog/product/view/id/436/category/49', 0, 1, NULL, 1, '{"category_id":"49"}'),
(537, 'product', 452, 'men/tops-men/jackets-men/montana-wind-jacket.html', 'catalog/product/view/id/452/category/27', 0, 1, NULL, 1, '{"category_id":"27"}'),
(538, 'product', 30, 'men/tops-men/jackets-men/proteus-fitness-jackshirt.html', 'catalog/product/view/id/30/category/27', 0, 1, NULL, 1, '{"category_id":"27"}'),
(539, 'product', 480, 'men/tops-men/tees-men/gobi-heattec-reg-tee.html', 'catalog/product/view/id/480/category/29', 0, 1, NULL, 1, '{"category_id":"29"}'),
(540, 'product', 496, 'helios-evercool-trade-tee.html', 'catalog/product/view/id/496', 0, 1, NULL, 1, NULL),
(541, 'product', 512, 'ryker-lumatech-trade-tee-crew-neck.html', 'catalog/product/view/id/512', 0, 1, NULL, 1, NULL),
(542, 'product', 528, 'atomic-endurance-running-tee-v-neck.html', 'catalog/product/view/id/528', 0, 1, NULL, 1, NULL),
(543, 'product', 544, 'atomic-endurance-running-tee-crew-neck.html', 'catalog/product/view/id/544', 0, 1, NULL, 1, NULL),
(544, 'product', 560, 'balboa-persistence-tee.html', 'catalog/product/view/id/560', 0, 1, NULL, 1, NULL),
(545, 'product', 576, 'zoltan-gym-tee.html', 'catalog/product/view/id/576', 0, 1, NULL, 1, NULL),
(546, 'product', 496, 'men/tops-men/tees-men/helios-evercool-trade-tee.html', 'catalog/product/view/id/496/category/29', 0, 1, NULL, 1, '{"category_id":"29"}'),
(547, 'product', 496, 'collections/eco-friendly/helios-evercool-trade-tee.html', 'catalog/product/view/id/496/category/49', 0, 1, NULL, 1, '{"category_id":"49"}'),
(548, 'product', 512, 'men/tops-men/tees-men/ryker-lumatech-trade-tee-crew-neck.html', 'catalog/product/view/id/512/category/29', 0, 1, NULL, 1, '{"category_id":"29"}'),
(549, 'product', 528, 'men/tops-men/tees-men/atomic-endurance-running-tee-v-neck.html', 'catalog/product/view/id/528/category/29', 0, 1, NULL, 1, '{"category_id":"29"}'),
(550, 'product', 544, 'men/tops-men/tees-men/atomic-endurance-running-tee-crew-neck.html', 'catalog/product/view/id/544/category/29', 0, 1, NULL, 1, '{"category_id":"29"}'),
(551, 'product', 560, 'men/tops-men/tees-men/balboa-persistence-tee.html', 'catalog/product/view/id/560/category/29', 0, 1, NULL, 1, '{"category_id":"29"}'),
(552, 'product', 576, 'men/tops-men/tees-men/zoltan-gym-tee.html', 'catalog/product/view/id/576/category/29', 0, 1, NULL, 1, '{"category_id":"29"}'),
(553, 'product', 592, 'aero-daily-fitness-tee.html', 'catalog/product/view/id/592', 0, 1, NULL, 1, NULL),
(554, 'product', 608, 'ryker-lumatech-trade-tee-v-neck.html', 'catalog/product/view/id/608', 0, 1, NULL, 1, NULL),
(555, 'product', 624, 'logan-heattec-reg-tee.html', 'catalog/product/view/id/624', 0, 1, NULL, 1, NULL),
(556, 'product', 640, 'deion-long-sleeve-evercool-trade-tee.html', 'catalog/product/view/id/640', 0, 1, NULL, 1, NULL),
(557, 'product', 656, 'strike-endurance-tee.html', 'catalog/product/view/id/656', 0, 1, NULL, 1, NULL),
(558, 'product', 672, 'erikssen-cooltech-trade-fitness-tank.html', 'catalog/product/view/id/672', 0, 1, NULL, 1, NULL),
(559, 'product', 592, 'men/tops-men/tees-men/aero-daily-fitness-tee.html', 'catalog/product/view/id/592/category/29', 0, 1, NULL, 1, '{"category_id":"29"}'),
(560, 'product', 608, 'men/tops-men/tees-men/ryker-lumatech-trade-tee-v-neck.html', 'catalog/product/view/id/608/category/29', 0, 1, NULL, 1, '{"category_id":"29"}'),
(561, 'product', 624, 'men/tops-men/tees-men/logan-heattec-reg-tee.html', 'catalog/product/view/id/624/category/29', 0, 1, NULL, 1, '{"category_id":"29"}'),
(562, 'product', 640, 'men/tops-men/tees-men/deion-long-sleeve-evercool-trade-tee.html', 'catalog/product/view/id/640/category/29', 0, 1, NULL, 1, '{"category_id":"29"}'),
(563, 'product', 656, 'men/tops-men/tees-men/strike-endurance-tee.html', 'catalog/product/view/id/656/category/29', 0, 1, NULL, 1, '{"category_id":"29"}'),
(564, 'product', 672, 'men/tops-men/tanks-men/erikssen-cooltech-trade-fitness-tank.html', 'catalog/product/view/id/672/category/30', 0, 1, NULL, 1, '{"category_id":"30"}'),
(565, 'product', 688, 'tristan-endurance-tank.html', 'catalog/product/view/id/688', 0, 1, NULL, 1, NULL),
(566, 'product', 704, 'primo-endurance-tank.html', 'catalog/product/view/id/704', 0, 1, NULL, 1, NULL),
(567, 'product', 710, 'helios-endurance-tank.html', 'catalog/product/view/id/710', 0, 1, NULL, 1, NULL),
(568, 'product', 716, 'rocco-gym-tank.html', 'catalog/product/view/id/716', 0, 1, NULL, 1, NULL),
(569, 'product', 722, 'vulcan-weightlifting-tank.html', 'catalog/product/view/id/722', 0, 1, NULL, 1, NULL),
(570, 'product', 728, 'argus-all-weather-tank.html', 'catalog/product/view/id/728', 0, 1, NULL, 1, NULL),
(571, 'product', 734, 'sparta-gym-tank.html', 'catalog/product/view/id/734', 0, 1, NULL, 1, NULL),
(572, 'product', 740, 'sinbad-fitness-tank.html', 'catalog/product/view/id/740', 0, 1, NULL, 1, NULL),
(573, 'product', 746, 'tiberius-gym-tank.html', 'catalog/product/view/id/746', 0, 1, NULL, 1, NULL),
(574, 'product', 752, 'atlas-fitness-tank.html', 'catalog/product/view/id/752', 0, 1, NULL, 1, NULL),
(575, 'product', 758, 'cassius-sparring-tank.html', 'catalog/product/view/id/758', 0, 1, NULL, 1, NULL),
(576, 'product', 771, 'caesar-warm-up-pant.html', 'catalog/product/view/id/771', 0, 1, NULL, 1, NULL),
(577, 'product', 688, 'men/tops-men/tanks-men/tristan-endurance-tank.html', 'catalog/product/view/id/688/category/30', 0, 1, NULL, 1, '{"category_id":"30"}'),
(578, 'product', 704, 'men/tops-men/tanks-men/primo-endurance-tank.html', 'catalog/product/view/id/704/category/30', 0, 1, NULL, 1, '{"category_id":"30"}'),
(579, 'product', 710, 'men/tops-men/tanks-men/helios-endurance-tank.html', 'catalog/product/view/id/710/category/30', 0, 1, NULL, 1, '{"category_id":"30"}'),
(580, 'product', 716, 'men/tops-men/tanks-men/rocco-gym-tank.html', 'catalog/product/view/id/716/category/30', 0, 1, NULL, 1, '{"category_id":"30"}'),
(581, 'product', 722, 'men/tops-men/tanks-men/vulcan-weightlifting-tank.html', 'catalog/product/view/id/722/category/30', 0, 1, NULL, 1, '{"category_id":"30"}'),
(582, 'product', 728, 'men/tops-men/tanks-men/argus-all-weather-tank.html', 'catalog/product/view/id/728/category/30', 0, 1, NULL, 1, '{"category_id":"30"}'),
(583, 'product', 728, 'collections/eco-friendly/argus-all-weather-tank.html', 'catalog/product/view/id/728/category/49', 0, 1, NULL, 1, '{"category_id":"49"}'),
(584, 'product', 734, 'men/tops-men/tanks-men/sparta-gym-tank.html', 'catalog/product/view/id/734/category/30', 0, 1, NULL, 1, '{"category_id":"30"}'),
(585, 'product', 740, 'men/tops-men/tanks-men/sinbad-fitness-tank.html', 'catalog/product/view/id/740/category/30', 0, 1, NULL, 1, '{"category_id":"30"}'),
(586, 'product', 746, 'men/tops-men/tanks-men/tiberius-gym-tank.html', 'catalog/product/view/id/746/category/30', 0, 1, NULL, 1, '{"category_id":"30"}'),
(587, 'product', 752, 'men/tops-men/tanks-men/atlas-fitness-tank.html', 'catalog/product/view/id/752/category/30', 0, 1, NULL, 1, '{"category_id":"30"}'),
(588, 'product', 752, 'collections/eco-friendly/atlas-fitness-tank.html', 'catalog/product/view/id/752/category/49', 0, 1, NULL, 1, '{"category_id":"49"}'),
(589, 'product', 758, 'men/tops-men/tanks-men/cassius-sparring-tank.html', 'catalog/product/view/id/758/category/30', 0, 1, NULL, 1, '{"category_id":"30"}'),
(590, 'product', 771, 'men/bottoms-men/pants-men/caesar-warm-up-pant.html', 'catalog/product/view/id/771/category/31', 0, 1, NULL, 1, '{"category_id":"31"}'),
(591, 'product', 771, 'promotions/pants-all/caesar-warm-up-pant.html', 'catalog/product/view/id/771/category/45', 0, 1, NULL, 1, '{"category_id":"45"}'),
(592, 'product', 784, 'viktor-lumatech-trade-pant.html', 'catalog/product/view/id/784', 0, 1, NULL, 1, NULL),
(593, 'product', 797, 'geo-insulated-jogging-pant.html', 'catalog/product/view/id/797', 0, 1, NULL, 1, NULL),
(594, 'product', 810, 'supernova-sport-pant.html', 'catalog/product/view/id/810', 0, 1, NULL, 1, NULL),
(595, 'product', 823, 'kratos-gym-pant.html', 'catalog/product/view/id/823', 0, 1, NULL, 1, NULL),
(596, 'product', 836, 'mithra-warmup-pant.html', 'catalog/product/view/id/836', 0, 1, NULL, 1, NULL),
(597, 'product', 849, 'thorpe-track-pant.html', 'catalog/product/view/id/849', 0, 1, NULL, 1, NULL),
(598, 'product', 862, 'zeppelin-yoga-pant.html', 'catalog/product/view/id/862', 0, 1, NULL, 1, NULL),
(599, 'product', 875, 'livingston-all-purpose-tight.html', 'catalog/product/view/id/875', 0, 1, NULL, 1, NULL),
(600, 'product', 784, 'men/bottoms-men/pants-men/viktor-lumatech-trade-pant.html', 'catalog/product/view/id/784/category/31', 0, 1, NULL, 1, '{"category_id":"31"}'),
(601, 'product', 784, 'promotions/pants-all/viktor-lumatech-trade-pant.html', 'catalog/product/view/id/784/category/45', 0, 1, NULL, 1, '{"category_id":"45"}'),
(602, 'product', 784, 'collections/performance-fabrics/viktor-lumatech-trade-pant.html', 'catalog/product/view/id/784/category/48', 0, 1, NULL, 1, '{"category_id":"48"}'),
(603, 'product', 797, 'men/bottoms-men/pants-men/geo-insulated-jogging-pant.html', 'catalog/product/view/id/797/category/31', 0, 1, NULL, 1, '{"category_id":"31"}'),
(604, 'product', 797, 'promotions/pants-all/geo-insulated-jogging-pant.html', 'catalog/product/view/id/797/category/45', 0, 1, NULL, 1, '{"category_id":"45"}'),
(605, 'product', 797, 'collections/yoga-new/geo-insulated-jogging-pant.html', 'catalog/product/view/id/797/category/22', 0, 1, NULL, 1, '{"category_id":"22"}'),
(606, 'product', 810, 'men/bottoms-men/pants-men/supernova-sport-pant.html', 'catalog/product/view/id/810/category/31', 0, 1, NULL, 1, '{"category_id":"31"}'),
(607, 'product', 810, 'promotions/pants-all/supernova-sport-pant.html', 'catalog/product/view/id/810/category/45', 0, 1, NULL, 1, '{"category_id":"45"}'),
(608, 'product', 823, 'men/bottoms-men/pants-men/kratos-gym-pant.html', 'catalog/product/view/id/823/category/31', 0, 1, NULL, 1, '{"category_id":"31"}'),
(609, 'product', 823, 'promotions/pants-all/kratos-gym-pant.html', 'catalog/product/view/id/823/category/45', 0, 1, NULL, 1, '{"category_id":"45"}'),
(610, 'product', 823, 'collections/yoga-new/kratos-gym-pant.html', 'catalog/product/view/id/823/category/22', 0, 1, NULL, 1, '{"category_id":"22"}'),
(611, 'product', 836, 'men/bottoms-men/pants-men/mithra-warmup-pant.html', 'catalog/product/view/id/836/category/31', 0, 1, NULL, 1, '{"category_id":"31"}'),
(612, 'product', 836, 'promotions/pants-all/mithra-warmup-pant.html', 'catalog/product/view/id/836/category/45', 0, 1, NULL, 1, '{"category_id":"45"}'),
(613, 'product', 836, 'collections/eco-friendly/mithra-warmup-pant.html', 'catalog/product/view/id/836/category/49', 0, 1, NULL, 1, '{"category_id":"49"}'),
(614, 'product', 849, 'men/bottoms-men/pants-men/thorpe-track-pant.html', 'catalog/product/view/id/849/category/31', 0, 1, NULL, 1, '{"category_id":"31"}'),
(615, 'product', 849, 'promotions/pants-all/thorpe-track-pant.html', 'catalog/product/view/id/849/category/45', 0, 1, NULL, 1, '{"category_id":"45"}'),
(616, 'product', 849, 'collections/yoga-new/thorpe-track-pant.html', 'catalog/product/view/id/849/category/22', 0, 1, NULL, 1, '{"category_id":"22"}'),
(617, 'product', 862, 'men/bottoms-men/pants-men/zeppelin-yoga-pant.html', 'catalog/product/view/id/862/category/31', 0, 1, NULL, 1, '{"category_id":"31"}'),
(618, 'product', 862, 'promotions/pants-all/zeppelin-yoga-pant.html', 'catalog/product/view/id/862/category/45', 0, 1, NULL, 1, '{"category_id":"45"}'),
(619, 'product', 862, 'collections/yoga-new/zeppelin-yoga-pant.html', 'catalog/product/view/id/862/category/22', 0, 1, NULL, 1, '{"category_id":"22"}'),
(620, 'product', 875, 'men/bottoms-men/pants-men/livingston-all-purpose-tight.html', 'catalog/product/view/id/875/category/31', 0, 1, NULL, 1, '{"category_id":"31"}'),
(621, 'product', 875, 'promotions/pants-all/livingston-all-purpose-tight.html', 'catalog/product/view/id/875/category/45', 0, 1, NULL, 1, '{"category_id":"45"}'),
(622, 'product', 875, 'collections/yoga-new/livingston-all-purpose-tight.html', 'catalog/product/view/id/875/category/22', 0, 1, NULL, 1, '{"category_id":"22"}'),
(623, 'product', 875, 'collections/erin-recommends/livingston-all-purpose-tight.html', 'catalog/product/view/id/875/category/47', 0, 1, NULL, 1, '{"category_id":"47"}'),
(624, 'product', 888, 'orestes-yoga-pant.html', 'catalog/product/view/id/888', 0, 1, NULL, 1, NULL),
(625, 'product', 901, 'aether-gym-pant.html', 'catalog/product/view/id/901', 0, 1, NULL, 1, NULL),
(626, 'product', 914, 'cronus-yoga-pant.html', 'catalog/product/view/id/914', 0, 1, NULL, 1, NULL),
(627, 'product', 927, 'cobalt-cooltech-trade-fitness-short.html', 'catalog/product/view/id/927', 0, 1, NULL, 1, NULL),
(628, 'product', 932, 'apollo-running-short.html', 'catalog/product/view/id/932', 0, 1, NULL, 1, NULL),
(629, 'product', 945, 'meteor-workout-short.html', 'catalog/product/view/id/945', 0, 1, NULL, 1, NULL),
(630, 'product', 958, 'torque-power-short.html', 'catalog/product/view/id/958', 0, 1, NULL, 1, NULL),
(631, 'product', 971, 'hawkeye-yoga-short.html', 'catalog/product/view/id/971', 0, 1, NULL, 1, NULL),
(632, 'product', 888, 'men/bottoms-men/pants-men/orestes-yoga-pant.html', 'catalog/product/view/id/888/category/31', 0, 1, NULL, 1, '{"category_id":"31"}'),
(633, 'product', 888, 'promotions/pants-all/orestes-yoga-pant.html', 'catalog/product/view/id/888/category/45', 0, 1, NULL, 1, '{"category_id":"45"}'),
(634, 'product', 888, 'collections/erin-recommends/orestes-yoga-pant.html', 'catalog/product/view/id/888/category/47', 0, 1, NULL, 1, '{"category_id":"47"}'),
(635, 'product', 901, 'men/bottoms-men/pants-men/aether-gym-pant.html', 'catalog/product/view/id/901/category/31', 0, 1, NULL, 1, '{"category_id":"31"}'),
(636, 'product', 901, 'promotions/pants-all/aether-gym-pant.html', 'catalog/product/view/id/901/category/45', 0, 1, NULL, 1, '{"category_id":"45"}'),
(637, 'product', 901, 'collections/erin-recommends/aether-gym-pant.html', 'catalog/product/view/id/901/category/47', 0, 1, NULL, 1, '{"category_id":"47"}'),
(638, 'product', 914, 'men/bottoms-men/pants-men/cronus-yoga-pant.html', 'catalog/product/view/id/914/category/31', 0, 1, NULL, 1, '{"category_id":"31"}'),
(639, 'product', 914, 'promotions/pants-all/cronus-yoga-pant.html', 'catalog/product/view/id/914/category/45', 0, 1, NULL, 1, '{"category_id":"45"}'),
(640, 'product', 927, 'men/bottoms-men/shorts-men/cobalt-cooltech-trade-fitness-short.html', 'catalog/product/view/id/927/category/32', 0, 1, NULL, 1, '{"category_id":"32"}'),
(641, 'product', 927, 'collections/erin-recommends/cobalt-cooltech-trade-fitness-short.html', 'catalog/product/view/id/927/category/47', 0, 1, NULL, 1, '{"category_id":"47"}'),
(642, 'product', 932, 'men/bottoms-men/shorts-men/apollo-running-short.html', 'catalog/product/view/id/932/category/32', 0, 1, NULL, 1, '{"category_id":"32"}'),
(643, 'product', 945, 'men/bottoms-men/shorts-men/meteor-workout-short.html', 'catalog/product/view/id/945/category/32', 0, 1, NULL, 1, '{"category_id":"32"}'),
(644, 'product', 945, 'collections/performance-fabrics/meteor-workout-short.html', 'catalog/product/view/id/945/category/48', 0, 1, NULL, 1, '{"category_id":"48"}'),
(645, 'product', 958, 'men/bottoms-men/shorts-men/torque-power-short.html', 'catalog/product/view/id/958/category/32', 0, 1, NULL, 1, '{"category_id":"32"}'),
(646, 'product', 971, 'men/bottoms-men/shorts-men/hawkeye-yoga-short.html', 'catalog/product/view/id/971/category/32', 0, 1, NULL, 1, '{"category_id":"32"}'),
(647, 'product', 971, 'collections/performance-fabrics/hawkeye-yoga-short.html', 'catalog/product/view/id/971/category/48', 0, 1, NULL, 1, '{"category_id":"48"}'),
(648, 'product', 984, 'lono-yoga-short.html', 'catalog/product/view/id/984', 0, 1, NULL, 1, NULL),
(649, 'product', 997, 'rapha-sports-short.html', 'catalog/product/view/id/997', 0, 1, NULL, 1, NULL),
(650, 'product', 1010, 'orestes-fitness-short.html', 'catalog/product/view/id/1010', 0, 1, NULL, 1, NULL),
(651, 'product', 1023, 'troy-yoga-short.html', 'catalog/product/view/id/1023', 0, 1, NULL, 1, NULL),
(652, 'product', 1036, 'sol-active-short.html', 'catalog/product/view/id/1036', 0, 1, NULL, 1, NULL),
(653, 'product', 1049, 'arcadio-gym-short.html', 'catalog/product/view/id/1049', 0, 1, NULL, 1, NULL),
(654, 'product', 1062, 'pierce-gym-short.html', 'catalog/product/view/id/1062', 0, 1, NULL, 1, NULL),
(655, 'product', 1078, 'mona-pullover-hoodlie.html', 'catalog/product/view/id/1078', 0, 1, NULL, 1, NULL),
(656, 'product', 984, 'men/bottoms-men/shorts-men/lono-yoga-short.html', 'catalog/product/view/id/984/category/32', 0, 1, NULL, 1, '{"category_id":"32"}'),
(657, 'product', 984, 'collections/yoga-new/lono-yoga-short.html', 'catalog/product/view/id/984/category/22', 0, 1, NULL, 1, '{"category_id":"22"}');
INSERT INTO `url_rewrite` (`url_rewrite_id`, `entity_type`, `entity_id`, `request_path`, `target_path`, `redirect_type`, `store_id`, `description`, `is_autogenerated`, `metadata`) VALUES
(658, 'product', 997, 'men/bottoms-men/shorts-men/rapha-sports-short.html', 'catalog/product/view/id/997/category/32', 0, 1, NULL, 1, '{"category_id":"32"}'),
(659, 'product', 997, 'promotions/men-sale/rapha-sports-short.html', 'catalog/product/view/id/997/category/44', 0, 1, NULL, 1, '{"category_id":"44"}'),
(660, 'product', 997, 'collections/erin-recommends/rapha-sports-short.html', 'catalog/product/view/id/997/category/47', 0, 1, NULL, 1, '{"category_id":"47"}'),
(661, 'product', 1010, 'men/bottoms-men/shorts-men/orestes-fitness-short.html', 'catalog/product/view/id/1010/category/32', 0, 1, NULL, 1, '{"category_id":"32"}'),
(662, 'product', 1010, 'promotions/men-sale/orestes-fitness-short.html', 'catalog/product/view/id/1010/category/44', 0, 1, NULL, 1, '{"category_id":"44"}'),
(663, 'product', 1023, 'men/bottoms-men/shorts-men/troy-yoga-short.html', 'catalog/product/view/id/1023/category/32', 0, 1, NULL, 1, '{"category_id":"32"}'),
(664, 'product', 1023, 'collections/performance-fabrics/troy-yoga-short.html', 'catalog/product/view/id/1023/category/48', 0, 1, NULL, 1, '{"category_id":"48"}'),
(665, 'product', 1036, 'men/bottoms-men/shorts-men/sol-active-short.html', 'catalog/product/view/id/1036/category/32', 0, 1, NULL, 1, '{"category_id":"32"}'),
(666, 'product', 1036, 'collections/yoga-new/sol-active-short.html', 'catalog/product/view/id/1036/category/22', 0, 1, NULL, 1, '{"category_id":"22"}'),
(667, 'product', 1049, 'men/bottoms-men/shorts-men/arcadio-gym-short.html', 'catalog/product/view/id/1049/category/32', 0, 1, NULL, 1, '{"category_id":"32"}'),
(668, 'product', 1062, 'men/bottoms-men/shorts-men/pierce-gym-short.html', 'catalog/product/view/id/1062/category/32', 0, 1, NULL, 1, '{"category_id":"32"}'),
(669, 'product', 1062, 'promotions/men-sale/pierce-gym-short.html', 'catalog/product/view/id/1062/category/44', 0, 1, NULL, 1, '{"category_id":"44"}'),
(670, 'product', 1078, 'women/tops-women/hoodies-and-sweatshirts-women/mona-pullover-hoodlie.html', 'catalog/product/view/id/1078/category/37', 0, 1, NULL, 1, '{"category_id":"37"}'),
(671, 'product', 1078, 'collections/yoga-new/mona-pullover-hoodlie.html', 'catalog/product/view/id/1078/category/22', 0, 1, NULL, 1, '{"category_id":"22"}'),
(672, 'product', 1078, 'collections/erin-recommends/mona-pullover-hoodlie.html', 'catalog/product/view/id/1078/category/47', 0, 1, NULL, 1, '{"category_id":"47"}'),
(673, 'product', 1094, 'hera-pullover-hoodie.html', 'catalog/product/view/id/1094', 0, 1, NULL, 1, NULL),
(674, 'product', 1110, 'autumn-pullie.html', 'catalog/product/view/id/1110', 0, 1, NULL, 1, NULL),
(675, 'product', 1126, 'miko-pullover-hoodie.html', 'catalog/product/view/id/1126', 0, 1, NULL, 1, NULL),
(676, 'product', 1142, 'selene-yoga-hoodie.html', 'catalog/product/view/id/1142', 0, 1, NULL, 1, NULL),
(677, 'product', 1148, 'daphne-full-zip-hoodie.html', 'catalog/product/view/id/1148', 0, 1, NULL, 1, NULL),
(678, 'product', 1164, 'phoebe-zipper-sweatshirt.html', 'catalog/product/view/id/1164', 0, 1, NULL, 1, NULL),
(679, 'product', 1180, 'cassia-funnel-sweatshirt.html', 'catalog/product/view/id/1180', 0, 1, NULL, 1, NULL),
(680, 'product', 1094, 'women/tops-women/hoodies-and-sweatshirts-women/hera-pullover-hoodie.html', 'catalog/product/view/id/1094/category/37', 0, 1, NULL, 1, '{"category_id":"37"}'),
(681, 'product', 1094, 'promotions/women-sale/hera-pullover-hoodie.html', 'catalog/product/view/id/1094/category/43', 0, 1, NULL, 1, '{"category_id":"43"}'),
(682, 'product', 1110, 'women/tops-women/hoodies-and-sweatshirts-women/autumn-pullie.html', 'catalog/product/view/id/1110/category/37', 0, 1, NULL, 1, '{"category_id":"37"}'),
(683, 'product', 1126, 'women/tops-women/hoodies-and-sweatshirts-women/miko-pullover-hoodie.html', 'catalog/product/view/id/1126/category/37', 0, 1, NULL, 1, '{"category_id":"37"}'),
(684, 'product', 1142, 'women/tops-women/hoodies-and-sweatshirts-women/selene-yoga-hoodie.html', 'catalog/product/view/id/1142/category/37', 0, 1, NULL, 1, '{"category_id":"37"}'),
(685, 'product', 1148, 'women/tops-women/hoodies-and-sweatshirts-women/daphne-full-zip-hoodie.html', 'catalog/product/view/id/1148/category/37', 0, 1, NULL, 1, '{"category_id":"37"}'),
(686, 'product', 1164, 'women/tops-women/hoodies-and-sweatshirts-women/phoebe-zipper-sweatshirt.html', 'catalog/product/view/id/1164/category/37', 0, 1, NULL, 1, '{"category_id":"37"}'),
(687, 'product', 1164, 'collections/yoga-new/phoebe-zipper-sweatshirt.html', 'catalog/product/view/id/1164/category/22', 0, 1, NULL, 1, '{"category_id":"22"}'),
(688, 'product', 1164, 'collections/erin-recommends/phoebe-zipper-sweatshirt.html', 'catalog/product/view/id/1164/category/47', 0, 1, NULL, 1, '{"category_id":"47"}'),
(689, 'product', 1180, 'women/tops-women/hoodies-and-sweatshirts-women/cassia-funnel-sweatshirt.html', 'catalog/product/view/id/1180/category/37', 0, 1, NULL, 1, '{"category_id":"37"}'),
(690, 'product', 1180, 'promotions/women-sale/cassia-funnel-sweatshirt.html', 'catalog/product/view/id/1180/category/43', 0, 1, NULL, 1, '{"category_id":"43"}'),
(691, 'product', 1180, 'collections/performance-fabrics/cassia-funnel-sweatshirt.html', 'catalog/product/view/id/1180/category/48', 0, 1, NULL, 1, '{"category_id":"48"}'),
(692, 'product', 1196, 'ariel-roll-sleeve-sweatshirt.html', 'catalog/product/view/id/1196', 0, 1, NULL, 1, NULL),
(693, 'product', 1212, 'helena-hooded-fleece.html', 'catalog/product/view/id/1212', 0, 1, NULL, 1, NULL),
(694, 'product', 1228, 'eos-v-neck-hoodie.html', 'catalog/product/view/id/1228', 0, 1, NULL, 1, NULL),
(695, 'product', 1244, 'circe-hooded-ice-fleece.html', 'catalog/product/view/id/1244', 0, 1, NULL, 1, NULL),
(696, 'product', 1254, 'stellar-solar-jacket.html', 'catalog/product/view/id/1254', 0, 1, NULL, 1, NULL),
(697, 'product', 1270, 'josie-yoga-jacket.html', 'catalog/product/view/id/1270', 0, 1, NULL, 1, NULL),
(698, 'product', 1196, 'women/tops-women/hoodies-and-sweatshirts-women/ariel-roll-sleeve-sweatshirt.html', 'catalog/product/view/id/1196/category/37', 0, 1, NULL, 1, '{"category_id":"37"}'),
(699, 'product', 1196, 'collections/eco-friendly/ariel-roll-sleeve-sweatshirt.html', 'catalog/product/view/id/1196/category/49', 0, 1, NULL, 1, '{"category_id":"49"}'),
(700, 'product', 1212, 'women/tops-women/hoodies-and-sweatshirts-women/helena-hooded-fleece.html', 'catalog/product/view/id/1212/category/37', 0, 1, NULL, 1, '{"category_id":"37"}'),
(701, 'product', 1212, 'collections/yoga-new/helena-hooded-fleece.html', 'catalog/product/view/id/1212/category/22', 0, 1, NULL, 1, '{"category_id":"22"}'),
(702, 'product', 1228, 'women/tops-women/hoodies-and-sweatshirts-women/eos-v-neck-hoodie.html', 'catalog/product/view/id/1228/category/37', 0, 1, NULL, 1, '{"category_id":"37"}'),
(703, 'product', 1228, 'collections/erin-recommends/eos-v-neck-hoodie.html', 'catalog/product/view/id/1228/category/47', 0, 1, NULL, 1, '{"category_id":"47"}'),
(704, 'product', 1244, 'women/tops-women/hoodies-and-sweatshirts-women/circe-hooded-ice-fleece.html', 'catalog/product/view/id/1244/category/37', 0, 1, NULL, 1, '{"category_id":"37"}'),
(705, 'product', 1244, 'collections/performance-fabrics/circe-hooded-ice-fleece.html', 'catalog/product/view/id/1244/category/48', 0, 1, NULL, 1, '{"category_id":"48"}'),
(706, 'product', 1254, 'women/tops-women/jackets-women/stellar-solar-jacket.html', 'catalog/product/view/id/1254/category/36', 0, 1, NULL, 1, '{"category_id":"36"}'),
(707, 'product', 1254, 'collections/yoga-new/stellar-solar-jacket.html', 'catalog/product/view/id/1254/category/22', 0, 1, NULL, 1, '{"category_id":"22"}'),
(708, 'product', 1254, 'collections/erin-recommends/stellar-solar-jacket.html', 'catalog/product/view/id/1254/category/47', 0, 1, NULL, 1, '{"category_id":"47"}'),
(709, 'product', 1270, 'women/tops-women/jackets-women/josie-yoga-jacket.html', 'catalog/product/view/id/1270/category/36', 0, 1, NULL, 1, '{"category_id":"36"}'),
(710, 'product', 1270, 'promotions/women-sale/josie-yoga-jacket.html', 'catalog/product/view/id/1270/category/43', 0, 1, NULL, 1, '{"category_id":"43"}'),
(711, 'product', 1286, 'augusta-pullover-jacket.html', 'catalog/product/view/id/1286', 0, 1, NULL, 1, NULL),
(712, 'product', 1302, 'ingrid-running-jacket.html', 'catalog/product/view/id/1302', 0, 1, NULL, 1, NULL),
(713, 'product', 1318, 'riona-full-zip-jacket.html', 'catalog/product/view/id/1318', 0, 1, NULL, 1, NULL),
(714, 'product', 1334, 'inez-full-zip-jacket.html', 'catalog/product/view/id/1334', 0, 1, NULL, 1, NULL),
(715, 'product', 1350, 'adrienne-trek-jacket.html', 'catalog/product/view/id/1350', 0, 1, NULL, 1, NULL),
(716, 'product', 1366, 'jade-yoga-jacket.html', 'catalog/product/view/id/1366', 0, 1, NULL, 1, NULL),
(717, 'product', 1286, 'women/tops-women/jackets-women/augusta-pullover-jacket.html', 'catalog/product/view/id/1286/category/36', 0, 1, NULL, 1, '{"category_id":"36"}'),
(718, 'product', 1302, 'women/tops-women/jackets-women/ingrid-running-jacket.html', 'catalog/product/view/id/1302/category/36', 0, 1, NULL, 1, '{"category_id":"36"}'),
(719, 'product', 1302, 'collections/yoga-new/ingrid-running-jacket.html', 'catalog/product/view/id/1302/category/22', 0, 1, NULL, 1, '{"category_id":"22"}'),
(720, 'product', 1302, 'collections/performance-fabrics/ingrid-running-jacket.html', 'catalog/product/view/id/1302/category/48', 0, 1, NULL, 1, '{"category_id":"48"}'),
(721, 'product', 1318, 'women/tops-women/jackets-women/riona-full-zip-jacket.html', 'catalog/product/view/id/1318/category/36', 0, 1, NULL, 1, '{"category_id":"36"}'),
(722, 'product', 1334, 'women/tops-women/jackets-women/inez-full-zip-jacket.html', 'catalog/product/view/id/1334/category/36', 0, 1, NULL, 1, '{"category_id":"36"}'),
(723, 'product', 1350, 'women/tops-women/jackets-women/adrienne-trek-jacket.html', 'catalog/product/view/id/1350/category/36', 0, 1, NULL, 1, '{"category_id":"36"}'),
(724, 'product', 1350, 'promotions/women-sale/adrienne-trek-jacket.html', 'catalog/product/view/id/1350/category/43', 0, 1, NULL, 1, '{"category_id":"43"}'),
(725, 'product', 1350, 'collections/erin-recommends/adrienne-trek-jacket.html', 'catalog/product/view/id/1350/category/47', 0, 1, NULL, 1, '{"category_id":"47"}'),
(726, 'product', 1366, 'women/tops-women/jackets-women/jade-yoga-jacket.html', 'catalog/product/view/id/1366/category/36', 0, 1, NULL, 1, '{"category_id":"36"}'),
(727, 'product', 1366, 'collections/erin-recommends/jade-yoga-jacket.html', 'catalog/product/view/id/1366/category/47', 0, 1, NULL, 1, '{"category_id":"47"}'),
(728, 'product', 1382, 'nadia-elements-shell.html', 'catalog/product/view/id/1382', 0, 1, NULL, 1, NULL),
(729, 'product', 1398, 'neve-studio-dance-jacket.html', 'catalog/product/view/id/1398', 0, 1, NULL, 1, NULL),
(730, 'product', 1414, 'juno-jacket.html', 'catalog/product/view/id/1414', 0, 1, NULL, 1, NULL),
(731, 'product', 1430, 'olivia-1-4-zip-light-jacket.html', 'catalog/product/view/id/1430', 0, 1, NULL, 1, NULL),
(732, 'product', 1446, 'gabrielle-micro-sleeve-top.html', 'catalog/product/view/id/1446', 0, 1, NULL, 1, NULL),
(733, 'product', 1462, 'iris-workout-top.html', 'catalog/product/view/id/1462', 0, 1, NULL, 1, NULL),
(734, 'product', 1478, 'layla-tee.html', 'catalog/product/view/id/1478', 0, 1, NULL, 1, NULL),
(735, 'product', 1382, 'women/tops-women/jackets-women/nadia-elements-shell.html', 'catalog/product/view/id/1382/category/36', 0, 1, NULL, 1, '{"category_id":"36"}'),
(736, 'product', 1382, 'collections/yoga-new/nadia-elements-shell.html', 'catalog/product/view/id/1382/category/22', 0, 1, NULL, 1, '{"category_id":"22"}'),
(737, 'product', 1382, 'collections/performance-fabrics/nadia-elements-shell.html', 'catalog/product/view/id/1382/category/48', 0, 1, NULL, 1, '{"category_id":"48"}'),
(738, 'product', 1398, 'women/tops-women/jackets-women/neve-studio-dance-jacket.html', 'catalog/product/view/id/1398/category/36', 0, 1, NULL, 1, '{"category_id":"36"}'),
(739, 'product', 1398, 'collections/yoga-new/neve-studio-dance-jacket.html', 'catalog/product/view/id/1398/category/22', 0, 1, NULL, 1, '{"category_id":"22"}'),
(740, 'product', 1414, 'women/tops-women/jackets-women/juno-jacket.html', 'catalog/product/view/id/1414/category/36', 0, 1, NULL, 1, '{"category_id":"36"}'),
(741, 'product', 1414, 'promotions/women-sale/juno-jacket.html', 'catalog/product/view/id/1414/category/43', 0, 1, NULL, 1, '{"category_id":"43"}'),
(742, 'product', 1414, 'collections/performance-fabrics/juno-jacket.html', 'catalog/product/view/id/1414/category/48', 0, 1, NULL, 1, '{"category_id":"48"}'),
(743, 'product', 1430, 'women/tops-women/jackets-women/olivia-1-4-zip-light-jacket.html', 'catalog/product/view/id/1430/category/36', 0, 1, NULL, 1, '{"category_id":"36"}'),
(744, 'product', 1430, 'promotions/women-sale/olivia-1-4-zip-light-jacket.html', 'catalog/product/view/id/1430/category/43', 0, 1, NULL, 1, '{"category_id":"43"}'),
(745, 'product', 1430, 'collections/performance-fabrics/olivia-1-4-zip-light-jacket.html', 'catalog/product/view/id/1430/category/48', 0, 1, NULL, 1, '{"category_id":"48"}'),
(746, 'product', 1446, 'women/tops-women/tees-women/gabrielle-micro-sleeve-top.html', 'catalog/product/view/id/1446/category/38', 0, 1, NULL, 1, '{"category_id":"38"}'),
(747, 'product', 1446, 'promotions/tees-all/gabrielle-micro-sleeve-top.html', 'catalog/product/view/id/1446/category/46', 0, 1, NULL, 1, '{"category_id":"46"}'),
(748, 'product', 1446, 'collections/yoga-new/gabrielle-micro-sleeve-top.html', 'catalog/product/view/id/1446/category/22', 0, 1, NULL, 1, '{"category_id":"22"}'),
(749, 'product', 1462, 'women/tops-women/tees-women/iris-workout-top.html', 'catalog/product/view/id/1462/category/38', 0, 1, NULL, 1, '{"category_id":"38"}'),
(750, 'product', 1462, 'promotions/tees-all/iris-workout-top.html', 'catalog/product/view/id/1462/category/46', 0, 1, NULL, 1, '{"category_id":"46"}'),
(751, 'product', 1462, 'collections/performance-fabrics/iris-workout-top.html', 'catalog/product/view/id/1462/category/48', 0, 1, NULL, 1, '{"category_id":"48"}'),
(752, 'product', 1478, 'women/tops-women/tees-women/layla-tee.html', 'catalog/product/view/id/1478/category/38', 0, 1, NULL, 1, '{"category_id":"38"}'),
(753, 'product', 1478, 'promotions/tees-all/layla-tee.html', 'catalog/product/view/id/1478/category/46', 0, 1, NULL, 1, '{"category_id":"46"}'),
(754, 'product', 1478, 'collections/yoga-new/layla-tee.html', 'catalog/product/view/id/1478/category/22', 0, 1, NULL, 1, '{"category_id":"22"}'),
(755, 'product', 1478, 'collections/eco-friendly/layla-tee.html', 'catalog/product/view/id/1478/category/49', 0, 1, NULL, 1, '{"category_id":"49"}'),
(756, 'product', 1494, 'elisa-evercool-trade-tee.html', 'catalog/product/view/id/1494', 0, 1, NULL, 1, NULL),
(757, 'product', 1510, 'juliana-short-sleeve-tee.html', 'catalog/product/view/id/1510', 0, 1, NULL, 1, NULL),
(758, 'product', 1526, 'minerva-lumatech-trade-v-tee.html', 'catalog/product/view/id/1526', 0, 1, NULL, 1, NULL),
(759, 'product', 1542, 'tiffany-fitness-tee.html', 'catalog/product/view/id/1542', 0, 1, NULL, 1, NULL),
(760, 'product', 1558, 'karissa-v-neck-tee.html', 'catalog/product/view/id/1558', 0, 1, NULL, 1, NULL),
(761, 'product', 1574, 'diva-gym-tee.html', 'catalog/product/view/id/1574', 0, 1, NULL, 1, NULL),
(762, 'product', 1494, 'women/tops-women/tees-women/elisa-evercool-trade-tee.html', 'catalog/product/view/id/1494/category/38', 0, 1, NULL, 1, '{"category_id":"38"}'),
(763, 'product', 1494, 'promotions/tees-all/elisa-evercool-trade-tee.html', 'catalog/product/view/id/1494/category/46', 0, 1, NULL, 1, '{"category_id":"46"}'),
(764, 'product', 1494, 'collections/yoga-new/elisa-evercool-trade-tee.html', 'catalog/product/view/id/1494/category/22', 0, 1, NULL, 1, '{"category_id":"22"}'),
(765, 'product', 1494, 'collections/eco-friendly/elisa-evercool-trade-tee.html', 'catalog/product/view/id/1494/category/49', 0, 1, NULL, 1, '{"category_id":"49"}'),
(766, 'product', 1510, 'women/tops-women/tees-women/juliana-short-sleeve-tee.html', 'catalog/product/view/id/1510/category/38', 0, 1, NULL, 1, '{"category_id":"38"}'),
(767, 'product', 1510, 'promotions/tees-all/juliana-short-sleeve-tee.html', 'catalog/product/view/id/1510/category/46', 0, 1, NULL, 1, '{"category_id":"46"}'),
(768, 'product', 1510, 'collections/yoga-new/juliana-short-sleeve-tee.html', 'catalog/product/view/id/1510/category/22', 0, 1, NULL, 1, '{"category_id":"22"}'),
(769, 'product', 1510, 'collections/erin-recommends/juliana-short-sleeve-tee.html', 'catalog/product/view/id/1510/category/47', 0, 1, NULL, 1, '{"category_id":"47"}'),
(770, 'product', 1526, 'women/tops-women/tees-women/minerva-lumatech-trade-v-tee.html', 'catalog/product/view/id/1526/category/38', 0, 1, NULL, 1, '{"category_id":"38"}'),
(771, 'product', 1526, 'promotions/tees-all/minerva-lumatech-trade-v-tee.html', 'catalog/product/view/id/1526/category/46', 0, 1, NULL, 1, '{"category_id":"46"}'),
(772, 'product', 1526, 'promotions/women-sale/minerva-lumatech-trade-v-tee.html', 'catalog/product/view/id/1526/category/43', 0, 1, NULL, 1, '{"category_id":"43"}'),
(773, 'product', 1542, 'women/tops-women/tees-women/tiffany-fitness-tee.html', 'catalog/product/view/id/1542/category/38', 0, 1, NULL, 1, '{"category_id":"38"}'),
(774, 'product', 1542, 'promotions/tees-all/tiffany-fitness-tee.html', 'catalog/product/view/id/1542/category/46', 0, 1, NULL, 1, '{"category_id":"46"}'),
(775, 'product', 1542, 'promotions/women-sale/tiffany-fitness-tee.html', 'catalog/product/view/id/1542/category/43', 0, 1, NULL, 1, '{"category_id":"43"}'),
(776, 'product', 1542, 'collections/eco-friendly/tiffany-fitness-tee.html', 'catalog/product/view/id/1542/category/49', 0, 1, NULL, 1, '{"category_id":"49"}'),
(777, 'product', 1558, 'women/tops-women/tees-women/karissa-v-neck-tee.html', 'catalog/product/view/id/1558/category/38', 0, 1, NULL, 1, '{"category_id":"38"}'),
(778, 'product', 1558, 'promotions/tees-all/karissa-v-neck-tee.html', 'catalog/product/view/id/1558/category/46', 0, 1, NULL, 1, '{"category_id":"46"}'),
(779, 'product', 1558, 'collections/performance-fabrics/karissa-v-neck-tee.html', 'catalog/product/view/id/1558/category/48', 0, 1, NULL, 1, '{"category_id":"48"}'),
(780, 'product', 1574, 'women/tops-women/tees-women/diva-gym-tee.html', 'catalog/product/view/id/1574/category/38', 0, 1, NULL, 1, '{"category_id":"38"}'),
(781, 'product', 1574, 'promotions/tees-all/diva-gym-tee.html', 'catalog/product/view/id/1574/category/46', 0, 1, NULL, 1, '{"category_id":"46"}'),
(782, 'product', 1574, 'promotions/women-sale/diva-gym-tee.html', 'catalog/product/view/id/1574/category/43', 0, 1, NULL, 1, '{"category_id":"43"}'),
(783, 'product', 1574, 'collections/erin-recommends/diva-gym-tee.html', 'catalog/product/view/id/1574/category/47', 0, 1, NULL, 1, '{"category_id":"47"}'),
(784, 'product', 1590, 'radiant-tee.html', 'catalog/product/view/id/1590', 0, 1, NULL, 1, NULL),
(785, 'product', 1606, 'gwyn-endurance-tee.html', 'catalog/product/view/id/1606', 0, 1, NULL, 1, NULL),
(786, 'product', 1622, 'desiree-fitness-tee.html', 'catalog/product/view/id/1622', 0, 1, NULL, 1, NULL),
(787, 'product', 1638, 'electra-bra-top.html', 'catalog/product/view/id/1638', 0, 1, NULL, 1, NULL),
(788, 'product', 1654, 'erica-evercool-sports-bra.html', 'catalog/product/view/id/1654', 0, 1, NULL, 1, NULL),
(789, 'product', 1670, 'celeste-sports-bra.html', 'catalog/product/view/id/1670', 0, 1, NULL, 1, NULL),
(790, 'product', 1590, 'women/tops-women/tees-women/radiant-tee.html', 'catalog/product/view/id/1590/category/38', 0, 1, NULL, 1, '{"category_id":"38"}'),
(791, 'product', 1590, 'promotions/tees-all/radiant-tee.html', 'catalog/product/view/id/1590/category/46', 0, 1, NULL, 1, '{"category_id":"46"}'),
(792, 'product', 1590, 'collections/performance-fabrics/radiant-tee.html', 'catalog/product/view/id/1590/category/48', 0, 1, NULL, 1, '{"category_id":"48"}'),
(793, 'product', 1606, 'women/tops-women/tees-women/gwyn-endurance-tee.html', 'catalog/product/view/id/1606/category/38', 0, 1, NULL, 1, '{"category_id":"38"}'),
(794, 'product', 1606, 'promotions/tees-all/gwyn-endurance-tee.html', 'catalog/product/view/id/1606/category/46', 0, 1, NULL, 1, '{"category_id":"46"}'),
(795, 'product', 1622, 'women/tops-women/tees-women/desiree-fitness-tee.html', 'catalog/product/view/id/1622/category/38', 0, 1, NULL, 1, '{"category_id":"38"}'),
(796, 'product', 1622, 'promotions/tees-all/desiree-fitness-tee.html', 'catalog/product/view/id/1622/category/46', 0, 1, NULL, 1, '{"category_id":"46"}'),
(797, 'product', 1638, 'women/tops-women/tanks-women/electra-bra-top.html', 'catalog/product/view/id/1638/category/39', 0, 1, NULL, 1, '{"category_id":"39"}'),
(798, 'product', 1638, 'promotions/women-sale/electra-bra-top.html', 'catalog/product/view/id/1638/category/43', 0, 1, NULL, 1, '{"category_id":"43"}'),
(799, 'product', 1638, 'collections/eco-friendly/electra-bra-top.html', 'catalog/product/view/id/1638/category/49', 0, 1, NULL, 1, '{"category_id":"49"}'),
(800, 'product', 1654, 'women/tops-women/tanks-women/erica-evercool-sports-bra.html', 'catalog/product/view/id/1654/category/39', 0, 1, NULL, 1, '{"category_id":"39"}'),
(801, 'product', 1670, 'women/tops-women/tanks-women/celeste-sports-bra.html', 'catalog/product/view/id/1670/category/39', 0, 1, NULL, 1, '{"category_id":"39"}'),
(802, 'product', 1670, 'collections/yoga-new/celeste-sports-bra.html', 'catalog/product/view/id/1670/category/22', 0, 1, NULL, 1, '{"category_id":"22"}'),
(803, 'product', 1670, 'collections/performance-fabrics/celeste-sports-bra.html', 'catalog/product/view/id/1670/category/48', 0, 1, NULL, 1, '{"category_id":"48"}'),
(804, 'product', 1686, 'prima-compete-bra-top.html', 'catalog/product/view/id/1686', 0, 1, NULL, 1, NULL),
(805, 'product', 1702, 'lucia-cross-fit-bra.html', 'catalog/product/view/id/1702', 0, 1, NULL, 1, NULL),
(806, 'product', 1718, 'bella-tank.html', 'catalog/product/view/id/1718', 0, 1, NULL, 1, NULL),
(807, 'product', 1734, 'zoe-tank.html', 'catalog/product/view/id/1734', 0, 1, NULL, 1, NULL),
(808, 'product', 1750, 'nora-practice-tank.html', 'catalog/product/view/id/1750', 0, 1, NULL, 1, NULL),
(809, 'product', 1766, 'nona-fitness-tank.html', 'catalog/product/view/id/1766', 0, 1, NULL, 1, NULL),
(810, 'product', 1686, 'women/tops-women/tanks-women/prima-compete-bra-top.html', 'catalog/product/view/id/1686/category/39', 0, 1, NULL, 1, '{"category_id":"39"}'),
(811, 'product', 1702, 'women/tops-women/tanks-women/lucia-cross-fit-bra.html', 'catalog/product/view/id/1702/category/39', 0, 1, NULL, 1, '{"category_id":"39"}'),
(812, 'product', 1718, 'women/tops-women/tanks-women/bella-tank.html', 'catalog/product/view/id/1718/category/39', 0, 1, NULL, 1, '{"category_id":"39"}'),
(813, 'product', 1718, 'collections/eco-friendly/bella-tank.html', 'catalog/product/view/id/1718/category/49', 0, 1, NULL, 1, '{"category_id":"49"}'),
(814, 'product', 1734, 'women/tops-women/tanks-women/zoe-tank.html', 'catalog/product/view/id/1734/category/39', 0, 1, NULL, 1, '{"category_id":"39"}'),
(815, 'product', 1750, 'women/tops-women/tanks-women/nora-practice-tank.html', 'catalog/product/view/id/1750/category/39', 0, 1, NULL, 1, '{"category_id":"39"}'),
(816, 'product', 1750, 'collections/yoga-new/nora-practice-tank.html', 'catalog/product/view/id/1750/category/22', 0, 1, NULL, 1, '{"category_id":"22"}'),
(817, 'product', 1750, 'collections/erin-recommends/nora-practice-tank.html', 'catalog/product/view/id/1750/category/47', 0, 1, NULL, 1, '{"category_id":"47"}'),
(818, 'product', 1766, 'women/tops-women/tanks-women/nona-fitness-tank.html', 'catalog/product/view/id/1766/category/39', 0, 1, NULL, 1, '{"category_id":"39"}'),
(819, 'product', 1766, 'collections/performance-fabrics/nona-fitness-tank.html', 'catalog/product/view/id/1766/category/48', 0, 1, NULL, 1, '{"category_id":"48"}'),
(820, 'product', 1782, 'leah-yoga-top.html', 'catalog/product/view/id/1782', 0, 1, NULL, 1, NULL),
(821, 'product', 1798, 'chloe-compete-tank.html', 'catalog/product/view/id/1798', 0, 1, NULL, 1, NULL),
(822, 'product', 1814, 'maya-tunic.html', 'catalog/product/view/id/1814', 0, 1, NULL, 1, NULL),
(823, 'product', 1830, 'antonia-racer-tank.html', 'catalog/product/view/id/1830', 0, 1, NULL, 1, NULL),
(824, 'product', 1846, 'breathe-easy-tank.html', 'catalog/product/view/id/1846', 0, 1, NULL, 1, NULL),
(825, 'product', 1853, 'karmen-yoga-pant.html', 'catalog/product/view/id/1853', 0, 1, NULL, 1, NULL),
(826, 'product', 1860, 'emma-leggings.html', 'catalog/product/view/id/1860', 0, 1, NULL, 1, NULL),
(827, 'product', 1867, 'ida-workout-parachute-pant.html', 'catalog/product/view/id/1867', 0, 1, NULL, 1, NULL),
(828, 'product', 1874, 'cora-parachute-pant.html', 'catalog/product/view/id/1874', 0, 1, NULL, 1, NULL),
(829, 'product', 1782, 'women/tops-women/tanks-women/leah-yoga-top.html', 'catalog/product/view/id/1782/category/39', 0, 1, NULL, 1, '{"category_id":"39"}'),
(830, 'product', 1782, 'collections/erin-recommends/leah-yoga-top.html', 'catalog/product/view/id/1782/category/47', 0, 1, NULL, 1, '{"category_id":"47"}'),
(831, 'product', 1798, 'women/tops-women/tanks-women/chloe-compete-tank.html', 'catalog/product/view/id/1798/category/39', 0, 1, NULL, 1, '{"category_id":"39"}'),
(832, 'product', 1814, 'women/tops-women/tanks-women/maya-tunic.html', 'catalog/product/view/id/1814/category/39', 0, 1, NULL, 1, '{"category_id":"39"}'),
(833, 'product', 1814, 'collections/performance-fabrics/maya-tunic.html', 'catalog/product/view/id/1814/category/48', 0, 1, NULL, 1, '{"category_id":"48"}'),
(834, 'product', 1830, 'women/tops-women/tanks-women/antonia-racer-tank.html', 'catalog/product/view/id/1830/category/39', 0, 1, NULL, 1, '{"category_id":"39"}'),
(835, 'product', 1830, 'promotions/women-sale/antonia-racer-tank.html', 'catalog/product/view/id/1830/category/43', 0, 1, NULL, 1, '{"category_id":"43"}'),
(836, 'product', 1830, 'collections/performance-fabrics/antonia-racer-tank.html', 'catalog/product/view/id/1830/category/48', 0, 1, NULL, 1, '{"category_id":"48"}'),
(837, 'product', 1846, 'women/tops-women/tanks-women/breathe-easy-tank.html', 'catalog/product/view/id/1846/category/39', 0, 1, NULL, 1, '{"category_id":"39"}'),
(838, 'product', 1846, 'promotions/women-sale/breathe-easy-tank.html', 'catalog/product/view/id/1846/category/43', 0, 1, NULL, 1, '{"category_id":"43"}'),
(839, 'product', 1846, 'collections/erin-recommends/breathe-easy-tank.html', 'catalog/product/view/id/1846/category/47', 0, 1, NULL, 1, '{"category_id":"47"}'),
(840, 'product', 1853, 'women/bottoms-women/pants-women/karmen-yoga-pant.html', 'catalog/product/view/id/1853/category/40', 0, 1, NULL, 1, '{"category_id":"40"}'),
(841, 'product', 1853, 'promotions/pants-all/karmen-yoga-pant.html', 'catalog/product/view/id/1853/category/45', 0, 1, NULL, 1, '{"category_id":"45"}'),
(842, 'product', 1853, 'collections/performance-fabrics/karmen-yoga-pant.html', 'catalog/product/view/id/1853/category/48', 0, 1, NULL, 1, '{"category_id":"48"}'),
(843, 'product', 1860, 'women/bottoms-women/pants-women/emma-leggings.html', 'catalog/product/view/id/1860/category/40', 0, 1, NULL, 1, '{"category_id":"40"}'),
(844, 'product', 1860, 'promotions/pants-all/emma-leggings.html', 'catalog/product/view/id/1860/category/45', 0, 1, NULL, 1, '{"category_id":"45"}'),
(845, 'product', 1860, 'collections/performance-fabrics/emma-leggings.html', 'catalog/product/view/id/1860/category/48', 0, 1, NULL, 1, '{"category_id":"48"}'),
(846, 'product', 1867, 'women/bottoms-women/pants-women/ida-workout-parachute-pant.html', 'catalog/product/view/id/1867/category/40', 0, 1, NULL, 1, '{"category_id":"40"}'),
(847, 'product', 1867, 'promotions/pants-all/ida-workout-parachute-pant.html', 'catalog/product/view/id/1867/category/45', 0, 1, NULL, 1, '{"category_id":"45"}'),
(848, 'product', 1867, 'collections/yoga-new/ida-workout-parachute-pant.html', 'catalog/product/view/id/1867/category/22', 0, 1, NULL, 1, '{"category_id":"22"}'),
(849, 'product', 1874, 'women/bottoms-women/pants-women/cora-parachute-pant.html', 'catalog/product/view/id/1874/category/40', 0, 1, NULL, 1, '{"category_id":"40"}'),
(850, 'product', 1874, 'promotions/pants-all/cora-parachute-pant.html', 'catalog/product/view/id/1874/category/45', 0, 1, NULL, 1, '{"category_id":"45"}'),
(851, 'product', 1881, 'sahara-leggings.html', 'catalog/product/view/id/1881', 0, 1, NULL, 1, NULL),
(852, 'product', 1888, 'diana-tights.html', 'catalog/product/view/id/1888', 0, 1, NULL, 1, NULL),
(853, 'product', 1895, 'aeon-capri.html', 'catalog/product/view/id/1895', 0, 1, NULL, 1, NULL),
(854, 'product', 1902, 'bardot-capri.html', 'catalog/product/view/id/1902', 0, 1, NULL, 1, NULL),
(855, 'product', 1909, 'carina-basic-capri.html', 'catalog/product/view/id/1909', 0, 1, NULL, 1, NULL),
(856, 'product', 1916, 'daria-bikram-pant.html', 'catalog/product/view/id/1916', 0, 1, NULL, 1, NULL),
(857, 'product', 1923, 'sylvia-capri.html', 'catalog/product/view/id/1923', 0, 1, NULL, 1, NULL),
(858, 'product', 1930, 'deirdre-relaxed-fit-capri.html', 'catalog/product/view/id/1930', 0, 1, NULL, 1, NULL),
(859, 'product', 1937, 'portia-capri.html', 'catalog/product/view/id/1937', 0, 1, NULL, 1, NULL),
(860, 'product', 1953, 'fiona-fitness-short.html', 'catalog/product/view/id/1953', 0, 1, NULL, 1, NULL),
(861, 'product', 1969, 'maxima-drawstring-short.html', 'catalog/product/view/id/1969', 0, 1, NULL, 1, NULL),
(862, 'product', 1881, 'women/bottoms-women/pants-women/sahara-leggings.html', 'catalog/product/view/id/1881/category/40', 0, 1, NULL, 1, '{"category_id":"40"}'),
(863, 'product', 1881, 'promotions/pants-all/sahara-leggings.html', 'catalog/product/view/id/1881/category/45', 0, 1, NULL, 1, '{"category_id":"45"}'),
(864, 'product', 1881, 'collections/erin-recommends/sahara-leggings.html', 'catalog/product/view/id/1881/category/47', 0, 1, NULL, 1, '{"category_id":"47"}'),
(865, 'product', 1888, 'women/bottoms-women/pants-women/diana-tights.html', 'catalog/product/view/id/1888/category/40', 0, 1, NULL, 1, '{"category_id":"40"}'),
(866, 'product', 1888, 'promotions/pants-all/diana-tights.html', 'catalog/product/view/id/1888/category/45', 0, 1, NULL, 1, '{"category_id":"45"}'),
(867, 'product', 1888, 'collections/erin-recommends/diana-tights.html', 'catalog/product/view/id/1888/category/47', 0, 1, NULL, 1, '{"category_id":"47"}'),
(868, 'product', 1895, 'women/bottoms-women/pants-women/aeon-capri.html', 'catalog/product/view/id/1895/category/40', 0, 1, NULL, 1, '{"category_id":"40"}'),
(869, 'product', 1895, 'promotions/pants-all/aeon-capri.html', 'catalog/product/view/id/1895/category/45', 0, 1, NULL, 1, '{"category_id":"45"}'),
(870, 'product', 1895, 'collections/performance-fabrics/aeon-capri.html', 'catalog/product/view/id/1895/category/48', 0, 1, NULL, 1, '{"category_id":"48"}'),
(871, 'product', 1902, 'women/bottoms-women/pants-women/bardot-capri.html', 'catalog/product/view/id/1902/category/40', 0, 1, NULL, 1, '{"category_id":"40"}'),
(872, 'product', 1902, 'promotions/pants-all/bardot-capri.html', 'catalog/product/view/id/1902/category/45', 0, 1, NULL, 1, '{"category_id":"45"}'),
(873, 'product', 1909, 'women/bottoms-women/pants-women/carina-basic-capri.html', 'catalog/product/view/id/1909/category/40', 0, 1, NULL, 1, '{"category_id":"40"}'),
(874, 'product', 1909, 'promotions/pants-all/carina-basic-capri.html', 'catalog/product/view/id/1909/category/45', 0, 1, NULL, 1, '{"category_id":"45"}'),
(875, 'product', 1916, 'women/bottoms-women/pants-women/daria-bikram-pant.html', 'catalog/product/view/id/1916/category/40', 0, 1, NULL, 1, '{"category_id":"40"}'),
(876, 'product', 1916, 'promotions/pants-all/daria-bikram-pant.html', 'catalog/product/view/id/1916/category/45', 0, 1, NULL, 1, '{"category_id":"45"}'),
(877, 'product', 1916, 'collections/eco-friendly/daria-bikram-pant.html', 'catalog/product/view/id/1916/category/49', 0, 1, NULL, 1, '{"category_id":"49"}'),
(878, 'product', 1923, 'women/bottoms-women/pants-women/sylvia-capri.html', 'catalog/product/view/id/1923/category/40', 0, 1, NULL, 1, '{"category_id":"40"}'),
(879, 'product', 1923, 'promotions/pants-all/sylvia-capri.html', 'catalog/product/view/id/1923/category/45', 0, 1, NULL, 1, '{"category_id":"45"}'),
(880, 'product', 1930, 'women/bottoms-women/pants-women/deirdre-relaxed-fit-capri.html', 'catalog/product/view/id/1930/category/40', 0, 1, NULL, 1, '{"category_id":"40"}'),
(881, 'product', 1930, 'promotions/pants-all/deirdre-relaxed-fit-capri.html', 'catalog/product/view/id/1930/category/45', 0, 1, NULL, 1, '{"category_id":"45"}'),
(882, 'product', 1930, 'collections/performance-fabrics/deirdre-relaxed-fit-capri.html', 'catalog/product/view/id/1930/category/48', 0, 1, NULL, 1, '{"category_id":"48"}'),
(883, 'product', 1937, 'women/bottoms-women/pants-women/portia-capri.html', 'catalog/product/view/id/1937/category/40', 0, 1, NULL, 1, '{"category_id":"40"}'),
(884, 'product', 1937, 'promotions/pants-all/portia-capri.html', 'catalog/product/view/id/1937/category/45', 0, 1, NULL, 1, '{"category_id":"45"}'),
(885, 'product', 1937, 'collections/erin-recommends/portia-capri.html', 'catalog/product/view/id/1937/category/47', 0, 1, NULL, 1, '{"category_id":"47"}'),
(886, 'product', 1953, 'women/bottoms-women/shorts-women/fiona-fitness-short.html', 'catalog/product/view/id/1953/category/41', 0, 1, NULL, 1, '{"category_id":"41"}'),
(887, 'product', 1953, 'collections/yoga-new/fiona-fitness-short.html', 'catalog/product/view/id/1953/category/22', 0, 1, NULL, 1, '{"category_id":"22"}'),
(888, 'product', 1953, 'collections/eco-friendly/fiona-fitness-short.html', 'catalog/product/view/id/1953/category/49', 0, 1, NULL, 1, '{"category_id":"49"}'),
(889, 'product', 1969, 'women/bottoms-women/shorts-women/maxima-drawstring-short.html', 'catalog/product/view/id/1969/category/41', 0, 1, NULL, 1, '{"category_id":"41"}'),
(890, 'product', 1969, 'promotions/women-sale/maxima-drawstring-short.html', 'catalog/product/view/id/1969/category/43', 0, 1, NULL, 1, '{"category_id":"43"}'),
(891, 'product', 1985, 'gwen-drawstring-bike-short.html', 'catalog/product/view/id/1985', 0, 1, NULL, 1, NULL),
(892, 'product', 2001, 'artemis-running-short.html', 'catalog/product/view/id/2001', 0, 1, NULL, 1, NULL),
(893, 'product', 2017, 'bess-yoga-short.html', 'catalog/product/view/id/2017', 0, 1, NULL, 1, NULL),
(894, 'product', 2024, 'angel-light-running-short.html', 'catalog/product/view/id/2024', 0, 1, NULL, 1, NULL),
(895, 'product', 2031, 'echo-fit-compression-short.html', 'catalog/product/view/id/2031', 0, 1, NULL, 1, NULL),
(896, 'product', 2037, 'sybil-running-short.html', 'catalog/product/view/id/2037', 0, 1, NULL, 1, NULL),
(897, 'product', 2044, 'mimi-all-purpose-short.html', 'catalog/product/view/id/2044', 0, 1, NULL, 1, NULL),
(898, 'product', 2051, 'ana-running-short.html', 'catalog/product/view/id/2051', 0, 1, NULL, 1, NULL),
(899, 'product', 2058, 'ina-compression-short.html', 'catalog/product/view/id/2058', 0, 1, NULL, 1, NULL),
(900, 'product', 2074, 'erika-running-short.html', 'catalog/product/view/id/2074', 0, 1, NULL, 1, NULL),
(901, 'product', 1985, 'women/bottoms-women/shorts-women/gwen-drawstring-bike-short.html', 'catalog/product/view/id/1985/category/41', 0, 1, NULL, 1, '{"category_id":"41"}'),
(902, 'product', 1985, 'collections/yoga-new/gwen-drawstring-bike-short.html', 'catalog/product/view/id/1985/category/22', 0, 1, NULL, 1, '{"category_id":"22"}'),
(903, 'product', 1985, 'collections/performance-fabrics/gwen-drawstring-bike-short.html', 'catalog/product/view/id/1985/category/48', 0, 1, NULL, 1, '{"category_id":"48"}'),
(904, 'product', 2001, 'women/bottoms-women/shorts-women/artemis-running-short.html', 'catalog/product/view/id/2001/category/41', 0, 1, NULL, 1, '{"category_id":"41"}'),
(905, 'product', 2017, 'women/bottoms-women/shorts-women/bess-yoga-short.html', 'catalog/product/view/id/2017/category/41', 0, 1, NULL, 1, '{"category_id":"41"}'),
(906, 'product', 2017, 'promotions/women-sale/bess-yoga-short.html', 'catalog/product/view/id/2017/category/43', 0, 1, NULL, 1, '{"category_id":"43"}'),
(907, 'product', 2024, 'women/bottoms-women/shorts-women/angel-light-running-short.html', 'catalog/product/view/id/2024/category/41', 0, 1, NULL, 1, '{"category_id":"41"}'),
(908, 'product', 2031, 'women/bottoms-women/shorts-women/echo-fit-compression-short.html', 'catalog/product/view/id/2031/category/41', 0, 1, NULL, 1, '{"category_id":"41"}'),
(909, 'product', 2031, 'collections/yoga-new/echo-fit-compression-short.html', 'catalog/product/view/id/2031/category/22', 0, 1, NULL, 1, '{"category_id":"22"}'),
(910, 'product', 2037, 'women/bottoms-women/shorts-women/sybil-running-short.html', 'catalog/product/view/id/2037/category/41', 0, 1, NULL, 1, '{"category_id":"41"}'),
(911, 'product', 2037, 'collections/performance-fabrics/sybil-running-short.html', 'catalog/product/view/id/2037/category/48', 0, 1, NULL, 1, '{"category_id":"48"}'),
(912, 'product', 2044, 'women/bottoms-women/shorts-women/mimi-all-purpose-short.html', 'catalog/product/view/id/2044/category/41', 0, 1, NULL, 1, '{"category_id":"41"}'),
(913, 'product', 2051, 'women/bottoms-women/shorts-women/ana-running-short.html', 'catalog/product/view/id/2051/category/41', 0, 1, NULL, 1, '{"category_id":"41"}'),
(914, 'product', 2051, 'collections/eco-friendly/ana-running-short.html', 'catalog/product/view/id/2051/category/49', 0, 1, NULL, 1, '{"category_id":"49"}'),
(915, 'product', 2058, 'women/bottoms-women/shorts-women/ina-compression-short.html', 'catalog/product/view/id/2058/category/41', 0, 1, NULL, 1, '{"category_id":"41"}'),
(916, 'product', 2058, 'collections/erin-recommends/ina-compression-short.html', 'catalog/product/view/id/2058/category/47', 0, 1, NULL, 1, '{"category_id":"47"}'),
(917, 'product', 2074, 'women/bottoms-women/shorts-women/erika-running-short.html', 'catalog/product/view/id/2074/category/41', 0, 1, NULL, 1, '{"category_id":"41"}'),
(918, 'product', 2074, 'collections/erin-recommends/erika-running-short.html', 'catalog/product/view/id/2074/category/47', 0, 1, NULL, 1, '{"category_id":"47"}'),
(919, 'category', 50, 'sale.html', 'catalog/category/view/id/50', 0, 1, NULL, 1, NULL),
(920, 'category', 51, 'what-is-new.html', 'catalog/category/view/id/51', 0, 1, NULL, 1, NULL),
(921, 'category', 52, 'collections/performance-new.html', 'catalog/category/view/id/52', 0, 1, NULL, 1, NULL),
(922, 'category', 53, 'collections/eco-new.html', 'catalog/category/view/id/53', 0, 1, NULL, 1, NULL),
(923, 'cms-page', 8, 'about-us', 'cms/page/view/page_id/8', 0, 1, NULL, 1, NULL),
(924, 'cms-page', 9, 'customer-service', 'cms/page/view/page_id/9', 0, 1, NULL, 1, NULL),
(925, 'product', 2075, 'set-of-sprite-yoga-straps.html', 'catalog/product/view/id/2075', 0, 1, NULL, 1, NULL),
(926, 'product', 2075, 'gear/set-of-sprite-yoga-straps.html', 'catalog/product/view/id/2075/category/17', 0, 1, NULL, 1, '{"category_id":"17"}'),
(927, 'product', 2075, 'gear/fitness-equipment/set-of-sprite-yoga-straps.html', 'catalog/product/view/id/2075/category/19', 0, 1, NULL, 1, '{"category_id":"19"}');

-- --------------------------------------------------------

--
-- Table structure for table `variable`
--

CREATE TABLE `variable` (
  `variable_id` int(10) UNSIGNED NOT NULL COMMENT 'Variable Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Variable Code',
  `name` varchar(255) DEFAULT NULL COMMENT 'Variable Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Variables';

-- --------------------------------------------------------

--
-- Table structure for table `variable_value`
--

CREATE TABLE `variable_value` (
  `value_id` int(10) UNSIGNED NOT NULL COMMENT 'Variable Value Id',
  `variable_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Variable Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `plain_value` text COMMENT 'Plain Text Value',
  `html_value` text COMMENT 'Html Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Variable Value';

-- --------------------------------------------------------

--
-- Table structure for table `vault_payment_token`
--

CREATE TABLE `vault_payment_token` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer Id',
  `public_hash` varchar(128) NOT NULL COMMENT 'Hash code for using on frontend',
  `payment_method_code` varchar(128) NOT NULL COMMENT 'Payment method code',
  `type` varchar(128) NOT NULL COMMENT 'Type',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `expires_at` timestamp NULL DEFAULT NULL COMMENT 'Expires At',
  `gateway_token` varchar(255) NOT NULL COMMENT 'Gateway Token',
  `details` text COMMENT 'Details',
  `is_active` tinyint(1) NOT NULL COMMENT 'Is active flag',
  `is_visible` tinyint(1) NOT NULL COMMENT 'Is visible flag'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Vault tokens of payment';

-- --------------------------------------------------------

--
-- Table structure for table `vault_payment_token_order_payment_link`
--

CREATE TABLE `vault_payment_token_order_payment_link` (
  `order_payment_id` int(10) UNSIGNED NOT NULL COMMENT 'Order payment Id',
  `payment_token_id` int(10) UNSIGNED NOT NULL COMMENT 'Payment token Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Order payments to vault token';

-- --------------------------------------------------------

--
-- Table structure for table `weee_tax`
--

CREATE TABLE `weee_tax` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `country` varchar(2) DEFAULT NULL COMMENT 'Country',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  `state` int(11) NOT NULL DEFAULT '0' COMMENT 'State',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Weee Tax';

-- --------------------------------------------------------

--
-- Table structure for table `widget`
--

CREATE TABLE `widget` (
  `widget_id` int(10) UNSIGNED NOT NULL COMMENT 'Widget Id',
  `widget_code` varchar(255) DEFAULT NULL COMMENT 'Widget code for template directive',
  `widget_type` varchar(255) DEFAULT NULL COMMENT 'Widget Type',
  `parameters` text COMMENT 'Parameters'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Preconfigured Widgets';

-- --------------------------------------------------------

--
-- Table structure for table `widget_instance`
--

CREATE TABLE `widget_instance` (
  `instance_id` int(10) UNSIGNED NOT NULL COMMENT 'Instance Id',
  `instance_type` varchar(255) DEFAULT NULL COMMENT 'Instance Type',
  `theme_id` int(10) UNSIGNED NOT NULL COMMENT 'Theme id',
  `title` varchar(255) DEFAULT NULL COMMENT 'Widget Title',
  `store_ids` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Store ids',
  `widget_parameters` text COMMENT 'Widget parameters',
  `sort_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Instances of Widget for Package Theme';

--
-- Dumping data for table `widget_instance`
--

INSERT INTO `widget_instance` (`instance_id`, `instance_type`, `theme_id`, `title`, `store_ids`, `widget_parameters`, `sort_order`) VALUES
(2, 'Trive\\Revo\\Block\\Slider', 15, 'Home-Page-widget', '1', '{"widget_slider_id":"1"}', 0),
(3, 'Magento\\Cms\\Block\\Widget\\Block', 2, 'Contact us info', '0', '{"block_id":"2"}', 0),
(4, 'Magento\\Cms\\Block\\Widget\\Block', 2, 'Footer Links', '0', '{"block_id":"23"}', 0),
(5, 'Magento\\Cms\\Block\\Widget\\Block', 2, 'Sale Left Menu', '0', '{"block_id":"34"}', 0),
(6, 'Magento\\Cms\\Block\\Widget\\Block', 2, 'Gear Left Menu', '0', '{"block_id":"35"}', 0),
(7, 'Magento\\Cms\\Block\\Widget\\Block', 2, 'Men''s Left Menu', '0', '{"block_id":"36"}', 0),
(8, 'Magento\\Cms\\Block\\Widget\\Block', 2, 'Women''s Left Menu', '0', '{"block_id":"37"}', 0),
(9, 'Magento\\Cms\\Block\\Widget\\Block', 2, 'What''s New Left Menu', '0', '{"block_id":"38"}', 0),
(10, 'Magento\\Cms\\Block\\Widget\\Block', 2, 'Women Category Content', '0', '{"block_id":"39"}', 0),
(11, 'Magento\\Cms\\Block\\Widget\\Block', 2, 'Training Category Content', '0', '{"block_id":"40"}', 0),
(12, 'Magento\\Cms\\Block\\Widget\\Block', 2, 'Men Category Content', '0', '{"block_id":"41"}', 0),
(13, 'Magento\\Cms\\Block\\Widget\\Block', 2, 'Gear Category Content', '0', '{"block_id":"42"}', 0),
(14, 'Magento\\Cms\\Block\\Widget\\Block', 2, 'New Products Category Content', '0', '{"block_id":"44"}', 0),
(15, 'Magento\\Cms\\Block\\Widget\\Block', 2, 'Sale Category Content', '0', '{"block_id":"43"}', 0),
(16, 'Magento\\Cms\\Block\\Widget\\Block', 2, 'Home Page', '0', '{"block_id":"1"}', 0),
(17, 'Magento\\Cms\\Block\\Widget\\Block', 2, 'Performance Fabrics', '0', '{"block_id":"45"}', 0),
(18, 'Magento\\Cms\\Block\\Widget\\Block', 2, 'Eco Friendly', '0', '{"block_id":"46"}', 0),
(19, 'Magento\\Cms\\Block\\Widget\\Block', 2, 'Login Info', '0', '{"block_id":"48"}', 0),
(20, 'Magento\\Cms\\Block\\Widget\\Block', 2, 'Giftcard Category Content', '0', '{"block_id":"47"}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `widget_instance_page`
--

CREATE TABLE `widget_instance_page` (
  `page_id` int(10) UNSIGNED NOT NULL COMMENT 'Page Id',
  `instance_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Instance Id',
  `page_group` varchar(25) DEFAULT NULL COMMENT 'Block Group Type',
  `layout_handle` varchar(255) DEFAULT NULL COMMENT 'Layout Handle',
  `block_reference` varchar(255) DEFAULT NULL COMMENT 'Container',
  `page_for` varchar(25) DEFAULT NULL COMMENT 'For instance entities',
  `entities` text COMMENT 'Catalog entities (comma separated)',
  `page_template` varchar(255) DEFAULT NULL COMMENT 'Path to widget template'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Instance of Widget on Page';

--
-- Dumping data for table `widget_instance_page`
--

INSERT INTO `widget_instance_page` (`page_id`, `instance_id`, `page_group`, `layout_handle`, `block_reference`, `page_for`, `entities`, `page_template`) VALUES
(1, 3, 'pages', 'contact_index_index', 'content.top', 'all', '', 'widget/static_block/default.phtml'),
(2, 4, 'all_pages', 'default', 'cms_footer_links_container', 'all', '', 'widget/static_block/default.phtml'),
(3, 5, 'anchor_categories', 'catalog_category_view_type_layered', 'sidebar.main', 'specific', '50', 'widget/static_block/default.phtml'),
(4, 6, 'anchor_categories', 'catalog_category_view_type_layered', 'sidebar.main', 'specific', '17', 'widget/static_block/default.phtml'),
(5, 7, 'anchor_categories', 'catalog_category_view_type_layered', 'sidebar.main', 'specific', '10', 'widget/static_block/default.phtml'),
(6, 8, 'anchor_categories', 'catalog_category_view_type_layered', 'sidebar.main', 'specific', '33', 'widget/static_block/default.phtml'),
(7, 9, 'anchor_categories', 'catalog_category_view_type_layered', 'sidebar.main', 'specific', '51', 'widget/static_block/default.phtml'),
(8, 10, 'anchor_categories', 'catalog_category_view_type_layered', 'content.top', 'specific', '33', 'widget/static_block/default.phtml'),
(9, 11, 'anchor_categories', 'catalog_category_view_type_layered', 'content.top', 'specific', '23', 'widget/static_block/default.phtml'),
(10, 12, 'anchor_categories', 'catalog_category_view_type_layered', 'content.top', 'specific', '10', 'widget/static_block/default.phtml'),
(11, 13, 'anchor_categories', 'catalog_category_view_type_layered', 'content.top', 'specific', '17', 'widget/static_block/default.phtml'),
(12, 14, 'anchor_categories', 'catalog_category_view_type_layered', 'content.top', 'specific', '51', 'widget/static_block/default.phtml'),
(13, 15, 'anchor_categories', 'catalog_category_view_type_layered', 'content.top', 'specific', '50', 'widget/static_block/default.phtml'),
(14, 16, 'pages', 'cms_index_index', 'content', 'all', '', 'widget/static_block/default.phtml'),
(15, 17, 'anchor_categories', 'catalog_category_view_type_layered', 'content.top', 'specific', '52', 'widget/static_block/default.phtml'),
(16, 18, 'anchor_categories', 'catalog_category_view_type_layered', 'content.top', 'specific', '53', 'widget/static_block/default.phtml'),
(17, 19, 'pages', 'customer_account_login', 'customer.login.container', 'all', '', 'widget/static_block/default.phtml'),
(18, 20, 'anchor_categories', 'catalog_category_view_type_layered', 'content.top', 'specific', NULL, 'widget/static_block/default.phtml');

-- --------------------------------------------------------

--
-- Table structure for table `widget_instance_page_layout`
--

CREATE TABLE `widget_instance_page_layout` (
  `page_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Page Id',
  `layout_update_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Layout Update Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout updates';

--
-- Dumping data for table `widget_instance_page_layout`
--

INSERT INTO `widget_instance_page_layout` (`page_id`, `layout_update_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(10) UNSIGNED NOT NULL COMMENT 'Wishlist ID',
  `customer_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer ID',
  `shared` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sharing flag (0 or 1)',
  `sharing_code` varchar(32) DEFAULT NULL COMMENT 'Sharing encrypted code',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Last updated date'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Wishlist main Table';

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`wishlist_id`, `customer_id`, `shared`, `sharing_code`, `updated_at`) VALUES
(1, 1, 0, 'd6fa1fdbe86256d52ee08c44b673ff0c', '2018-04-27 08:52:19'),
(2, 2, 0, 'cde3380eb79c9556392166d5fde736ea', '2018-05-18 06:26:00');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist_item`
--

CREATE TABLE `wishlist_item` (
  `wishlist_item_id` int(10) UNSIGNED NOT NULL COMMENT 'Wishlist item ID',
  `wishlist_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Wishlist ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store ID',
  `added_at` timestamp NULL DEFAULT NULL COMMENT 'Add date and time',
  `description` text COMMENT 'Short description of wish list item',
  `qty` decimal(12,4) NOT NULL COMMENT 'Qty'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Wishlist items';

--
-- Dumping data for table `wishlist_item`
--

INSERT INTO `wishlist_item` (`wishlist_item_id`, `wishlist_id`, `product_id`, `store_id`, `added_at`, `description`, `qty`) VALUES
(1, 1, 2, 1, '2018-04-27 08:51:05', NULL, '1.0000'),
(2, 1, 25, 1, '2018-04-27 08:52:19', NULL, '1.0000'),
(3, 2, 46, 1, '2018-05-18 06:25:57', NULL, '1.0000'),
(4, 2, 43, 1, '2018-05-18 06:25:57', NULL, '1.0000'),
(5, 2, 44, 1, '2018-05-18 06:25:57', NULL, '1.0000'),
(6, 2, 1126, 1, '2018-05-18 06:25:59', NULL, '1.0000'),
(7, 2, 1254, 1, '2018-05-18 06:25:59', NULL, '1.0000'),
(8, 2, 1750, 1, '2018-05-18 06:26:00', NULL, '1.0000'),
(9, 2, 1718, 1, '2018-05-18 06:26:00', NULL, '1.0000');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist_item_option`
--

CREATE TABLE `wishlist_item_option` (
  `option_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Id',
  `wishlist_item_id` int(10) UNSIGNED NOT NULL COMMENT 'Wishlist Item Id',
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `value` text COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Wishlist Item Option Table';

--
-- Dumping data for table `wishlist_item_option`
--

INSERT INTO `wishlist_item_option` (`option_id`, `wishlist_item_id`, `product_id`, `code`, `value`) VALUES
(1, 1, 2, 'info_buyRequest', '{"product":"2","uenc":"aHR0cDovL2xvY2FsaG9zdC9EdG1uX21nbnRvL2xlbm92by5odG1s","form_key":"iNYdPDim60QmhuDv"}'),
(2, 2, 25, 'info_buyRequest', '{"product":"25","uenc":"aHR0cDovL2xvY2FsaG9zdC9EdG1uX21nbnRvL2FkZGlkYXMtdC1zaGlydHMuaHRtbA,,","form_key":"iNYdPDim60QmhuDv"}'),
(3, 3, 46, 'info_buyRequest', '{"product":"46","qty":1}'),
(4, 4, 43, 'info_buyRequest', '{"product":"43","qty":1}'),
(5, 5, 44, 'info_buyRequest', '{"product":"44","qty":1}'),
(6, 6, 1126, 'info_buyRequest', '{"product":1126,"qty":1,"super_attribute":{"138":"179","93":"69"}}'),
(7, 6, 1126, 'attributes', '{"138":"179","93":"69"}'),
(8, 6, 1113, 'product_qty_1113', '1'),
(9, 6, 1113, 'simple_product', '1113'),
(10, 7, 1254, 'info_buyRequest', '{"product":1254,"qty":1,"super_attribute":{"138":"12","93":"72"}}'),
(11, 7, 1254, 'attributes', '{"138":"12","93":"72"}'),
(12, 7, 1247, 'product_qty_1247', '1'),
(13, 7, 1247, 'simple_product', '1247'),
(14, 8, 1750, 'info_buyRequest', '{"product":1750,"qty":1,"super_attribute":{"138":"179","93":"70"}}'),
(15, 8, 1750, 'attributes', '{"138":"179","93":"70"}'),
(16, 8, 1737, 'product_qty_1737', '1'),
(17, 8, 1737, 'simple_product', '1737'),
(18, 9, 1718, 'info_buyRequest', '{"product":1718,"qty":1,"super_attribute":{"138":"179","93":"62"}}'),
(19, 9, 1718, 'attributes', '{"138":"179","93":"62"}'),
(20, 9, 1704, 'product_qty_1704', '1'),
(21, 9, 1704, 'simple_product', '1704');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `report_viewed_product_aggregated_daily`
--
ALTER TABLE `report_viewed_product_aggregated_daily`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `REPORT_VIEWED_PRD_AGGRED_DAILY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  ADD KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_DAILY_STORE_ID` (`store_id`),
  ADD KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_DAILY_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `report_viewed_product_aggregated_monthly`
--
ALTER TABLE `report_viewed_product_aggregated_monthly`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `REPORT_VIEWED_PRD_AGGRED_MONTHLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  ADD KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_MONTHLY_STORE_ID` (`store_id`),
  ADD KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_MONTHLY_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `report_viewed_product_aggregated_yearly`
--
ALTER TABLE `report_viewed_product_aggregated_yearly`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `REPORT_VIEWED_PRD_AGGRED_YEARLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  ADD KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_YEARLY_STORE_ID` (`store_id`),
  ADD KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_YEARLY_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `report_viewed_product_index`
--
ALTER TABLE `report_viewed_product_index`
  ADD PRIMARY KEY (`index_id`),
  ADD UNIQUE KEY `REPORT_VIEWED_PRODUCT_INDEX_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  ADD UNIQUE KEY `REPORT_VIEWED_PRODUCT_INDEX_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  ADD KEY `REPORT_VIEWED_PRODUCT_INDEX_STORE_ID` (`store_id`),
  ADD KEY `REPORT_VIEWED_PRODUCT_INDEX_ADDED_AT` (`added_at`),
  ADD KEY `REPORT_VIEWED_PRODUCT_INDEX_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `REVIEW_ENTITY_ID` (`entity_id`),
  ADD KEY `REVIEW_STATUS_ID` (`status_id`),
  ADD KEY `REVIEW_ENTITY_PK_VALUE` (`entity_pk_value`);

--
-- Indexes for table `review_detail`
--
ALTER TABLE `review_detail`
  ADD PRIMARY KEY (`detail_id`),
  ADD KEY `REVIEW_DETAIL_REVIEW_ID` (`review_id`),
  ADD KEY `REVIEW_DETAIL_STORE_ID` (`store_id`),
  ADD KEY `REVIEW_DETAIL_CUSTOMER_ID` (`customer_id`);

--
-- Indexes for table `review_entity`
--
ALTER TABLE `review_entity`
  ADD PRIMARY KEY (`entity_id`);

--
-- Indexes for table `review_entity_summary`
--
ALTER TABLE `review_entity_summary`
  ADD PRIMARY KEY (`primary_id`),
  ADD KEY `REVIEW_ENTITY_SUMMARY_STORE_ID` (`store_id`);

--
-- Indexes for table `review_status`
--
ALTER TABLE `review_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `review_store`
--
ALTER TABLE `review_store`
  ADD PRIMARY KEY (`review_id`,`store_id`),
  ADD KEY `REVIEW_STORE_STORE_ID` (`store_id`);

--
-- Indexes for table `salesrule`
--
ALTER TABLE `salesrule`
  ADD PRIMARY KEY (`rule_id`),
  ADD KEY `SALESRULE_IS_ACTIVE_SORT_ORDER_TO_DATE_FROM_DATE` (`is_active`,`sort_order`,`to_date`,`from_date`);

--
-- Indexes for table `salesrule_coupon`
--
ALTER TABLE `salesrule_coupon`
  ADD PRIMARY KEY (`coupon_id`),
  ADD UNIQUE KEY `SALESRULE_COUPON_CODE` (`code`),
  ADD UNIQUE KEY `SALESRULE_COUPON_RULE_ID_IS_PRIMARY` (`rule_id`,`is_primary`),
  ADD KEY `SALESRULE_COUPON_RULE_ID` (`rule_id`);

--
-- Indexes for table `salesrule_coupon_aggregated`
--
ALTER TABLE `salesrule_coupon_aggregated`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `SALESRULE_COUPON_AGGRED_PERIOD_STORE_ID_ORDER_STS_COUPON_CODE` (`period`,`store_id`,`order_status`,`coupon_code`),
  ADD KEY `SALESRULE_COUPON_AGGREGATED_STORE_ID` (`store_id`),
  ADD KEY `SALESRULE_COUPON_AGGREGATED_RULE_NAME` (`rule_name`);

--
-- Indexes for table `salesrule_coupon_aggregated_order`
--
ALTER TABLE `salesrule_coupon_aggregated_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNQ_1094D1FBBCBB11704A29DEF3ACC37D2B` (`period`,`store_id`,`order_status`,`coupon_code`),
  ADD KEY `SALESRULE_COUPON_AGGREGATED_ORDER_STORE_ID` (`store_id`),
  ADD KEY `SALESRULE_COUPON_AGGREGATED_ORDER_RULE_NAME` (`rule_name`);

--
-- Indexes for table `salesrule_coupon_aggregated_updated`
--
ALTER TABLE `salesrule_coupon_aggregated_updated`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNQ_7196FA120A4F0F84E1B66605E87E213E` (`period`,`store_id`,`order_status`,`coupon_code`),
  ADD KEY `SALESRULE_COUPON_AGGREGATED_UPDATED_STORE_ID` (`store_id`),
  ADD KEY `SALESRULE_COUPON_AGGREGATED_UPDATED_RULE_NAME` (`rule_name`);

--
-- Indexes for table `salesrule_coupon_usage`
--
ALTER TABLE `salesrule_coupon_usage`
  ADD PRIMARY KEY (`coupon_id`,`customer_id`),
  ADD KEY `SALESRULE_COUPON_USAGE_CUSTOMER_ID` (`customer_id`);

--
-- Indexes for table `salesrule_customer`
--
ALTER TABLE `salesrule_customer`
  ADD PRIMARY KEY (`rule_customer_id`),
  ADD KEY `SALESRULE_CUSTOMER_RULE_ID_CUSTOMER_ID` (`rule_id`,`customer_id`),
  ADD KEY `SALESRULE_CUSTOMER_CUSTOMER_ID_RULE_ID` (`customer_id`,`rule_id`);

--
-- Indexes for table `salesrule_customer_group`
--
ALTER TABLE `salesrule_customer_group`
  ADD PRIMARY KEY (`rule_id`,`customer_group_id`),
  ADD KEY `SALESRULE_CUSTOMER_GROUP_CUSTOMER_GROUP_ID` (`customer_group_id`);

--
-- Indexes for table `salesrule_label`
--
ALTER TABLE `salesrule_label`
  ADD PRIMARY KEY (`label_id`),
  ADD UNIQUE KEY `SALESRULE_LABEL_RULE_ID_STORE_ID` (`rule_id`,`store_id`),
  ADD KEY `SALESRULE_LABEL_STORE_ID` (`store_id`);

--
-- Indexes for table `salesrule_product_attribute`
--
ALTER TABLE `salesrule_product_attribute`
  ADD PRIMARY KEY (`rule_id`,`website_id`,`customer_group_id`,`attribute_id`),
  ADD KEY `SALESRULE_PRODUCT_ATTRIBUTE_WEBSITE_ID` (`website_id`),
  ADD KEY `SALESRULE_PRODUCT_ATTRIBUTE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `SALESRULE_PRODUCT_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`);

--
-- Indexes for table `salesrule_website`
--
ALTER TABLE `salesrule_website`
  ADD PRIMARY KEY (`rule_id`,`website_id`),
  ADD KEY `SALESRULE_WEBSITE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `sales_bestsellers_aggregated_daily`
--
ALTER TABLE `sales_bestsellers_aggregated_daily`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `SALES_BESTSELLERS_AGGREGATED_DAILY_PERIOD_STORE_ID_PRODUCT_ID` (`period`,`store_id`,`product_id`),
  ADD KEY `SALES_BESTSELLERS_AGGREGATED_DAILY_STORE_ID` (`store_id`),
  ADD KEY `SALES_BESTSELLERS_AGGREGATED_DAILY_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `sales_bestsellers_aggregated_monthly`
--
ALTER TABLE `sales_bestsellers_aggregated_monthly`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `SALES_BESTSELLERS_AGGREGATED_MONTHLY_PERIOD_STORE_ID_PRODUCT_ID` (`period`,`store_id`,`product_id`),
  ADD KEY `SALES_BESTSELLERS_AGGREGATED_MONTHLY_STORE_ID` (`store_id`),
  ADD KEY `SALES_BESTSELLERS_AGGREGATED_MONTHLY_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `sales_bestsellers_aggregated_yearly`
--
ALTER TABLE `sales_bestsellers_aggregated_yearly`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `SALES_BESTSELLERS_AGGREGATED_YEARLY_PERIOD_STORE_ID_PRODUCT_ID` (`period`,`store_id`,`product_id`),
  ADD KEY `SALES_BESTSELLERS_AGGREGATED_YEARLY_STORE_ID` (`store_id`),
  ADD KEY `SALES_BESTSELLERS_AGGREGATED_YEARLY_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `sales_creditmemo`
--
ALTER TABLE `sales_creditmemo`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `SALES_CREDITMEMO_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  ADD KEY `SALES_CREDITMEMO_STORE_ID` (`store_id`),
  ADD KEY `SALES_CREDITMEMO_ORDER_ID` (`order_id`),
  ADD KEY `SALES_CREDITMEMO_CREDITMEMO_STATUS` (`creditmemo_status`),
  ADD KEY `SALES_CREDITMEMO_STATE` (`state`),
  ADD KEY `SALES_CREDITMEMO_CREATED_AT` (`created_at`),
  ADD KEY `SALES_CREDITMEMO_UPDATED_AT` (`updated_at`),
  ADD KEY `SALES_CREDITMEMO_SEND_EMAIL` (`send_email`),
  ADD KEY `SALES_CREDITMEMO_EMAIL_SENT` (`email_sent`);

--
-- Indexes for table `sales_creditmemo_comment`
--
ALTER TABLE `sales_creditmemo_comment`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `SALES_CREDITMEMO_COMMENT_CREATED_AT` (`created_at`),
  ADD KEY `SALES_CREDITMEMO_COMMENT_PARENT_ID` (`parent_id`);

--
-- Indexes for table `sales_creditmemo_grid`
--
ALTER TABLE `sales_creditmemo_grid`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `SALES_CREDITMEMO_GRID_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  ADD KEY `SALES_CREDITMEMO_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  ADD KEY `SALES_CREDITMEMO_GRID_CREATED_AT` (`created_at`),
  ADD KEY `SALES_CREDITMEMO_GRID_UPDATED_AT` (`updated_at`),
  ADD KEY `SALES_CREDITMEMO_GRID_ORDER_CREATED_AT` (`order_created_at`),
  ADD KEY `SALES_CREDITMEMO_GRID_STATE` (`state`),
  ADD KEY `SALES_CREDITMEMO_GRID_BILLING_NAME` (`billing_name`),
  ADD KEY `SALES_CREDITMEMO_GRID_ORDER_STATUS` (`order_status`),
  ADD KEY `SALES_CREDITMEMO_GRID_BASE_GRAND_TOTAL` (`base_grand_total`),
  ADD KEY `SALES_CREDITMEMO_GRID_STORE_ID` (`store_id`),
  ADD KEY `SALES_CREDITMEMO_GRID_ORDER_BASE_GRAND_TOTAL` (`order_base_grand_total`),
  ADD KEY `SALES_CREDITMEMO_GRID_ORDER_ID` (`order_id`);
ALTER TABLE `sales_creditmemo_grid` ADD FULLTEXT KEY `FTI_32B7BA885941A8254EE84AE650ABDC86` (`increment_id`,`order_increment_id`,`billing_name`,`billing_address`,`shipping_address`,`customer_name`,`customer_email`);

--
-- Indexes for table `sales_creditmemo_item`
--
ALTER TABLE `sales_creditmemo_item`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `SALES_CREDITMEMO_ITEM_PARENT_ID` (`parent_id`);

--
-- Indexes for table `sales_invoice`
--
ALTER TABLE `sales_invoice`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `SALES_INVOICE_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  ADD KEY `SALES_INVOICE_STORE_ID` (`store_id`),
  ADD KEY `SALES_INVOICE_GRAND_TOTAL` (`grand_total`),
  ADD KEY `SALES_INVOICE_ORDER_ID` (`order_id`),
  ADD KEY `SALES_INVOICE_STATE` (`state`),
  ADD KEY `SALES_INVOICE_CREATED_AT` (`created_at`),
  ADD KEY `SALES_INVOICE_UPDATED_AT` (`updated_at`),
  ADD KEY `SALES_INVOICE_SEND_EMAIL` (`send_email`),
  ADD KEY `SALES_INVOICE_EMAIL_SENT` (`email_sent`);

--
-- Indexes for table `sales_invoiced_aggregated`
--
ALTER TABLE `sales_invoiced_aggregated`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `SALES_INVOICED_AGGREGATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  ADD KEY `SALES_INVOICED_AGGREGATED_STORE_ID` (`store_id`);

--
-- Indexes for table `sales_invoiced_aggregated_order`
--
ALTER TABLE `sales_invoiced_aggregated_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `SALES_INVOICED_AGGREGATED_ORDER_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  ADD KEY `SALES_INVOICED_AGGREGATED_ORDER_STORE_ID` (`store_id`);

--
-- Indexes for table `sales_invoice_comment`
--
ALTER TABLE `sales_invoice_comment`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `SALES_INVOICE_COMMENT_CREATED_AT` (`created_at`),
  ADD KEY `SALES_INVOICE_COMMENT_PARENT_ID` (`parent_id`);

--
-- Indexes for table `sales_invoice_grid`
--
ALTER TABLE `sales_invoice_grid`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `SALES_INVOICE_GRID_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  ADD KEY `SALES_INVOICE_GRID_STORE_ID` (`store_id`),
  ADD KEY `SALES_INVOICE_GRID_GRAND_TOTAL` (`grand_total`),
  ADD KEY `SALES_INVOICE_GRID_ORDER_ID` (`order_id`),
  ADD KEY `SALES_INVOICE_GRID_STATE` (`state`),
  ADD KEY `SALES_INVOICE_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  ADD KEY `SALES_INVOICE_GRID_CREATED_AT` (`created_at`),
  ADD KEY `SALES_INVOICE_GRID_UPDATED_AT` (`updated_at`),
  ADD KEY `SALES_INVOICE_GRID_ORDER_CREATED_AT` (`order_created_at`),
  ADD KEY `SALES_INVOICE_GRID_BILLING_NAME` (`billing_name`),
  ADD KEY `SALES_INVOICE_GRID_BASE_GRAND_TOTAL` (`base_grand_total`);
ALTER TABLE `sales_invoice_grid` ADD FULLTEXT KEY `FTI_95D9C924DD6A8734EB8B5D01D60F90DE` (`increment_id`,`order_increment_id`,`billing_name`,`billing_address`,`shipping_address`,`customer_name`,`customer_email`);

--
-- Indexes for table `sales_invoice_item`
--
ALTER TABLE `sales_invoice_item`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `SALES_INVOICE_ITEM_PARENT_ID` (`parent_id`);

--
-- Indexes for table `sales_order`
--
ALTER TABLE `sales_order`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `SALES_ORDER_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  ADD KEY `SALES_ORDER_STATUS` (`status`),
  ADD KEY `SALES_ORDER_STATE` (`state`),
  ADD KEY `SALES_ORDER_STORE_ID` (`store_id`),
  ADD KEY `SALES_ORDER_CREATED_AT` (`created_at`),
  ADD KEY `SALES_ORDER_CUSTOMER_ID` (`customer_id`),
  ADD KEY `SALES_ORDER_EXT_ORDER_ID` (`ext_order_id`),
  ADD KEY `SALES_ORDER_QUOTE_ID` (`quote_id`),
  ADD KEY `SALES_ORDER_UPDATED_AT` (`updated_at`),
  ADD KEY `SALES_ORDER_SEND_EMAIL` (`send_email`),
  ADD KEY `SALES_ORDER_EMAIL_SENT` (`email_sent`);

--
-- Indexes for table `sales_order_address`
--
ALTER TABLE `sales_order_address`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `SALES_ORDER_ADDRESS_PARENT_ID` (`parent_id`);

--
-- Indexes for table `sales_order_aggregated_created`
--
ALTER TABLE `sales_order_aggregated_created`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `SALES_ORDER_AGGREGATED_CREATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  ADD KEY `SALES_ORDER_AGGREGATED_CREATED_STORE_ID` (`store_id`);

--
-- Indexes for table `sales_order_aggregated_updated`
--
ALTER TABLE `sales_order_aggregated_updated`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `SALES_ORDER_AGGREGATED_UPDATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  ADD KEY `SALES_ORDER_AGGREGATED_UPDATED_STORE_ID` (`store_id`);

--
-- Indexes for table `sales_order_grid`
--
ALTER TABLE `sales_order_grid`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `SALES_ORDER_GRID_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  ADD KEY `SALES_ORDER_GRID_STATUS` (`status`),
  ADD KEY `SALES_ORDER_GRID_STORE_ID` (`store_id`),
  ADD KEY `SALES_ORDER_GRID_BASE_GRAND_TOTAL` (`base_grand_total`),
  ADD KEY `SALES_ORDER_GRID_BASE_TOTAL_PAID` (`base_total_paid`),
  ADD KEY `SALES_ORDER_GRID_GRAND_TOTAL` (`grand_total`),
  ADD KEY `SALES_ORDER_GRID_TOTAL_PAID` (`total_paid`),
  ADD KEY `SALES_ORDER_GRID_SHIPPING_NAME` (`shipping_name`),
  ADD KEY `SALES_ORDER_GRID_BILLING_NAME` (`billing_name`),
  ADD KEY `SALES_ORDER_GRID_CREATED_AT` (`created_at`),
  ADD KEY `SALES_ORDER_GRID_CUSTOMER_ID` (`customer_id`),
  ADD KEY `SALES_ORDER_GRID_UPDATED_AT` (`updated_at`);
ALTER TABLE `sales_order_grid` ADD FULLTEXT KEY `FTI_65B9E9925EC58F0C7C2E2F6379C233E7` (`increment_id`,`billing_name`,`shipping_name`,`shipping_address`,`billing_address`,`customer_name`,`customer_email`);

--
-- Indexes for table `sales_order_item`
--
ALTER TABLE `sales_order_item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `SALES_ORDER_ITEM_ORDER_ID` (`order_id`),
  ADD KEY `SALES_ORDER_ITEM_STORE_ID` (`store_id`);

--
-- Indexes for table `sales_order_payment`
--
ALTER TABLE `sales_order_payment`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `SALES_ORDER_PAYMENT_PARENT_ID` (`parent_id`);

--
-- Indexes for table `sales_order_status`
--
ALTER TABLE `sales_order_status`
  ADD PRIMARY KEY (`status`);

--
-- Indexes for table `sales_order_status_history`
--
ALTER TABLE `sales_order_status_history`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `SALES_ORDER_STATUS_HISTORY_PARENT_ID` (`parent_id`),
  ADD KEY `SALES_ORDER_STATUS_HISTORY_CREATED_AT` (`created_at`);

--
-- Indexes for table `sales_order_status_label`
--
ALTER TABLE `sales_order_status_label`
  ADD PRIMARY KEY (`status`,`store_id`),
  ADD KEY `SALES_ORDER_STATUS_LABEL_STORE_ID` (`store_id`);

--
-- Indexes for table `sales_order_status_state`
--
ALTER TABLE `sales_order_status_state`
  ADD PRIMARY KEY (`status`,`state`);

--
-- Indexes for table `sales_order_tax`
--
ALTER TABLE `sales_order_tax`
  ADD PRIMARY KEY (`tax_id`),
  ADD KEY `SALES_ORDER_TAX_ORDER_ID_PRIORITY_POSITION` (`order_id`,`priority`,`position`);

--
-- Indexes for table `sales_order_tax_item`
--
ALTER TABLE `sales_order_tax_item`
  ADD PRIMARY KEY (`tax_item_id`),
  ADD UNIQUE KEY `SALES_ORDER_TAX_ITEM_TAX_ID_ITEM_ID` (`tax_id`,`item_id`),
  ADD KEY `SALES_ORDER_TAX_ITEM_ITEM_ID` (`item_id`),
  ADD KEY `SALES_ORDER_TAX_ITEM_ASSOCIATED_ITEM_ID_SALES_ORDER_ITEM_ITEM_ID` (`associated_item_id`);

--
-- Indexes for table `sales_payment_transaction`
--
ALTER TABLE `sales_payment_transaction`
  ADD PRIMARY KEY (`transaction_id`),
  ADD UNIQUE KEY `SALES_PAYMENT_TRANSACTION_ORDER_ID_PAYMENT_ID_TXN_ID` (`order_id`,`payment_id`,`txn_id`),
  ADD KEY `SALES_PAYMENT_TRANSACTION_PARENT_ID` (`parent_id`),
  ADD KEY `SALES_PAYMENT_TRANSACTION_PAYMENT_ID` (`payment_id`);

--
-- Indexes for table `sales_refunded_aggregated`
--
ALTER TABLE `sales_refunded_aggregated`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `SALES_REFUNDED_AGGREGATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  ADD KEY `SALES_REFUNDED_AGGREGATED_STORE_ID` (`store_id`);

--
-- Indexes for table `sales_refunded_aggregated_order`
--
ALTER TABLE `sales_refunded_aggregated_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `SALES_REFUNDED_AGGREGATED_ORDER_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  ADD KEY `SALES_REFUNDED_AGGREGATED_ORDER_STORE_ID` (`store_id`);

--
-- Indexes for table `sales_sequence_meta`
--
ALTER TABLE `sales_sequence_meta`
  ADD PRIMARY KEY (`meta_id`),
  ADD UNIQUE KEY `SALES_SEQUENCE_META_ENTITY_TYPE_STORE_ID` (`entity_type`,`store_id`);

--
-- Indexes for table `sales_sequence_profile`
--
ALTER TABLE `sales_sequence_profile`
  ADD PRIMARY KEY (`profile_id`),
  ADD UNIQUE KEY `SALES_SEQUENCE_PROFILE_META_ID_PREFIX_SUFFIX` (`meta_id`,`prefix`,`suffix`);

--
-- Indexes for table `sales_shipment`
--
ALTER TABLE `sales_shipment`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `SALES_SHIPMENT_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  ADD KEY `SALES_SHIPMENT_STORE_ID` (`store_id`),
  ADD KEY `SALES_SHIPMENT_TOTAL_QTY` (`total_qty`),
  ADD KEY `SALES_SHIPMENT_ORDER_ID` (`order_id`),
  ADD KEY `SALES_SHIPMENT_CREATED_AT` (`created_at`),
  ADD KEY `SALES_SHIPMENT_UPDATED_AT` (`updated_at`),
  ADD KEY `SALES_SHIPMENT_SEND_EMAIL` (`send_email`),
  ADD KEY `SALES_SHIPMENT_EMAIL_SENT` (`email_sent`);

--
-- Indexes for table `sales_shipment_comment`
--
ALTER TABLE `sales_shipment_comment`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `SALES_SHIPMENT_COMMENT_CREATED_AT` (`created_at`),
  ADD KEY `SALES_SHIPMENT_COMMENT_PARENT_ID` (`parent_id`);

--
-- Indexes for table `sales_shipment_grid`
--
ALTER TABLE `sales_shipment_grid`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `SALES_SHIPMENT_GRID_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  ADD KEY `SALES_SHIPMENT_GRID_STORE_ID` (`store_id`),
  ADD KEY `SALES_SHIPMENT_GRID_TOTAL_QTY` (`total_qty`),
  ADD KEY `SALES_SHIPMENT_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  ADD KEY `SALES_SHIPMENT_GRID_SHIPMENT_STATUS` (`shipment_status`),
  ADD KEY `SALES_SHIPMENT_GRID_ORDER_STATUS` (`order_status`),
  ADD KEY `SALES_SHIPMENT_GRID_CREATED_AT` (`created_at`),
  ADD KEY `SALES_SHIPMENT_GRID_UPDATED_AT` (`updated_at`),
  ADD KEY `SALES_SHIPMENT_GRID_ORDER_CREATED_AT` (`order_created_at`),
  ADD KEY `SALES_SHIPMENT_GRID_SHIPPING_NAME` (`shipping_name`),
  ADD KEY `SALES_SHIPMENT_GRID_BILLING_NAME` (`billing_name`);
ALTER TABLE `sales_shipment_grid` ADD FULLTEXT KEY `FTI_086B40C8955F167B8EA76653437879B4` (`increment_id`,`order_increment_id`,`shipping_name`,`customer_name`,`customer_email`,`billing_address`,`shipping_address`);

--
-- Indexes for table `sales_shipment_item`
--
ALTER TABLE `sales_shipment_item`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `SALES_SHIPMENT_ITEM_PARENT_ID` (`parent_id`);

--
-- Indexes for table `sales_shipment_track`
--
ALTER TABLE `sales_shipment_track`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `SALES_SHIPMENT_TRACK_PARENT_ID` (`parent_id`),
  ADD KEY `SALES_SHIPMENT_TRACK_ORDER_ID` (`order_id`),
  ADD KEY `SALES_SHIPMENT_TRACK_CREATED_AT` (`created_at`);

--
-- Indexes for table `sales_shipping_aggregated`
--
ALTER TABLE `sales_shipping_aggregated`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `SALES_SHPP_AGGRED_PERIOD_STORE_ID_ORDER_STS_SHPP_DESCRIPTION` (`period`,`store_id`,`order_status`,`shipping_description`),
  ADD KEY `SALES_SHIPPING_AGGREGATED_STORE_ID` (`store_id`);

--
-- Indexes for table `sales_shipping_aggregated_order`
--
ALTER TABLE `sales_shipping_aggregated_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNQ_C05FAE47282EEA68654D0924E946761F` (`period`,`store_id`,`order_status`,`shipping_description`),
  ADD KEY `SALES_SHIPPING_AGGREGATED_ORDER_STORE_ID` (`store_id`);

--
-- Indexes for table `search_query`
--
ALTER TABLE `search_query`
  ADD PRIMARY KEY (`query_id`),
  ADD UNIQUE KEY `SEARCH_QUERY_QUERY_TEXT_STORE_ID` (`query_text`,`store_id`),
  ADD KEY `SEARCH_QUERY_QUERY_TEXT_STORE_ID_POPULARITY` (`query_text`,`store_id`,`popularity`),
  ADD KEY `SEARCH_QUERY_STORE_ID` (`store_id`),
  ADD KEY `SEARCH_QUERY_IS_PROCESSED` (`is_processed`);

--
-- Indexes for table `search_synonyms`
--
ALTER TABLE `search_synonyms`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `SEARCH_SYNONYMS_STORE_ID` (`store_id`),
  ADD KEY `SEARCH_SYNONYMS_WEBSITE_ID` (`website_id`);
ALTER TABLE `search_synonyms` ADD FULLTEXT KEY `SEARCH_SYNONYMS_SYNONYMS` (`synonyms`);

--
-- Indexes for table `sendfriend_log`
--
ALTER TABLE `sendfriend_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `SENDFRIEND_LOG_IP` (`ip`),
  ADD KEY `SENDFRIEND_LOG_TIME` (`time`);

--
-- Indexes for table `sequence_creditmemo_0`
--
ALTER TABLE `sequence_creditmemo_0`
  ADD PRIMARY KEY (`sequence_value`);

--
-- Indexes for table `sequence_creditmemo_1`
--
ALTER TABLE `sequence_creditmemo_1`
  ADD PRIMARY KEY (`sequence_value`);

--
-- Indexes for table `sequence_invoice_0`
--
ALTER TABLE `sequence_invoice_0`
  ADD PRIMARY KEY (`sequence_value`);

--
-- Indexes for table `sequence_invoice_1`
--
ALTER TABLE `sequence_invoice_1`
  ADD PRIMARY KEY (`sequence_value`);

--
-- Indexes for table `sequence_order_0`
--
ALTER TABLE `sequence_order_0`
  ADD PRIMARY KEY (`sequence_value`);

--
-- Indexes for table `sequence_order_1`
--
ALTER TABLE `sequence_order_1`
  ADD PRIMARY KEY (`sequence_value`);

--
-- Indexes for table `sequence_shipment_0`
--
ALTER TABLE `sequence_shipment_0`
  ADD PRIMARY KEY (`sequence_value`);

--
-- Indexes for table `sequence_shipment_1`
--
ALTER TABLE `sequence_shipment_1`
  ADD PRIMARY KEY (`sequence_value`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `setup_module`
--
ALTER TABLE `setup_module`
  ADD PRIMARY KEY (`module`);

--
-- Indexes for table `shesh_blog_post`
--
ALTER TABLE `shesh_blog_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `shipping_tablerate`
--
ALTER TABLE `shipping_tablerate`
  ADD PRIMARY KEY (`pk`),
  ADD UNIQUE KEY `UNQ_D60821CDB2AFACEE1566CFC02D0D4CAA` (`website_id`,`dest_country_id`,`dest_region_id`,`dest_zip`,`condition_name`,`condition_value`);

--
-- Indexes for table `signifyd_case`
--
ALTER TABLE `signifyd_case`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `SIGNIFYD_CASE_ORDER_ID` (`order_id`),
  ADD UNIQUE KEY `SIGNIFYD_CASE_CASE_ID` (`case_id`);

--
-- Indexes for table `sitemap`
--
ALTER TABLE `sitemap`
  ADD PRIMARY KEY (`sitemap_id`),
  ADD KEY `SITEMAP_STORE_ID` (`store_id`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`store_id`),
  ADD UNIQUE KEY `STORE_CODE` (`code`),
  ADD KEY `STORE_WEBSITE_ID` (`website_id`),
  ADD KEY `STORE_IS_ACTIVE_SORT_ORDER` (`is_active`,`sort_order`),
  ADD KEY `STORE_GROUP_ID` (`group_id`);

--
-- Indexes for table `store_group`
--
ALTER TABLE `store_group`
  ADD PRIMARY KEY (`group_id`),
  ADD UNIQUE KEY `STORE_GROUP_CODE` (`code`),
  ADD KEY `STORE_GROUP_WEBSITE_ID` (`website_id`),
  ADD KEY `STORE_GROUP_DEFAULT_STORE_ID` (`default_store_id`);

--
-- Indexes for table `store_website`
--
ALTER TABLE `store_website`
  ADD PRIMARY KEY (`website_id`),
  ADD UNIQUE KEY `STORE_WEBSITE_CODE` (`code`),
  ADD KEY `STORE_WEBSITE_SORT_ORDER` (`sort_order`),
  ADD KEY `STORE_WEBSITE_DEFAULT_GROUP_ID` (`default_group_id`);

--
-- Indexes for table `swissup_core_module`
--
ALTER TABLE `swissup_core_module`
  ADD PRIMARY KEY (`code`);
ALTER TABLE `swissup_core_module` ADD FULLTEXT KEY `SWISSUP_CORE_MODULE_CODE_NAME_DESCRIPTION_KEYWORDS` (`code`,`name`,`description`,`keywords`);

--
-- Indexes for table `tax_calculation`
--
ALTER TABLE `tax_calculation`
  ADD PRIMARY KEY (`tax_calculation_id`),
  ADD KEY `TAX_CALCULATION_TAX_CALCULATION_RULE_ID` (`tax_calculation_rule_id`),
  ADD KEY `TAX_CALCULATION_CUSTOMER_TAX_CLASS_ID` (`customer_tax_class_id`),
  ADD KEY `TAX_CALCULATION_PRODUCT_TAX_CLASS_ID` (`product_tax_class_id`),
  ADD KEY `TAX_CALC_TAX_CALC_RATE_ID_CSTR_TAX_CLASS_ID_PRD_TAX_CLASS_ID` (`tax_calculation_rate_id`,`customer_tax_class_id`,`product_tax_class_id`);

--
-- Indexes for table `tax_calculation_rate`
--
ALTER TABLE `tax_calculation_rate`
  ADD PRIMARY KEY (`tax_calculation_rate_id`),
  ADD KEY `TAX_CALCULATION_RATE_TAX_COUNTRY_ID_TAX_REGION_ID_TAX_POSTCODE` (`tax_country_id`,`tax_region_id`,`tax_postcode`),
  ADD KEY `TAX_CALCULATION_RATE_CODE` (`code`),
  ADD KEY `IDX_CA799F1E2CB843495F601E56C84A626D` (`tax_calculation_rate_id`,`tax_country_id`,`tax_region_id`,`zip_is_range`,`tax_postcode`);

--
-- Indexes for table `tax_calculation_rate_title`
--
ALTER TABLE `tax_calculation_rate_title`
  ADD PRIMARY KEY (`tax_calculation_rate_title_id`),
  ADD KEY `TAX_CALCULATION_RATE_TITLE_TAX_CALCULATION_RATE_ID_STORE_ID` (`tax_calculation_rate_id`,`store_id`),
  ADD KEY `TAX_CALCULATION_RATE_TITLE_STORE_ID` (`store_id`);

--
-- Indexes for table `tax_calculation_rule`
--
ALTER TABLE `tax_calculation_rule`
  ADD PRIMARY KEY (`tax_calculation_rule_id`),
  ADD KEY `TAX_CALCULATION_RULE_PRIORITY_POSITION` (`priority`,`position`),
  ADD KEY `TAX_CALCULATION_RULE_CODE` (`code`);

--
-- Indexes for table `tax_class`
--
ALTER TABLE `tax_class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `tax_order_aggregated_created`
--
ALTER TABLE `tax_order_aggregated_created`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `TAX_ORDER_AGGRED_CREATED_PERIOD_STORE_ID_CODE_PERCENT_ORDER_STS` (`period`,`store_id`,`code`,`percent`,`order_status`),
  ADD KEY `TAX_ORDER_AGGREGATED_CREATED_STORE_ID` (`store_id`);

--
-- Indexes for table `tax_order_aggregated_updated`
--
ALTER TABLE `tax_order_aggregated_updated`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `TAX_ORDER_AGGRED_UPDATED_PERIOD_STORE_ID_CODE_PERCENT_ORDER_STS` (`period`,`store_id`,`code`,`percent`,`order_status`),
  ADD KEY `TAX_ORDER_AGGREGATED_UPDATED_STORE_ID` (`store_id`);

--
-- Indexes for table `temando_checkout_address`
--
ALTER TABLE `temando_checkout_address`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `TEMANDO_CHKT_ADDR_SHPP_ADDR_ID_QUOTE_ADDR_ADDR_ID` (`shipping_address_id`);

--
-- Indexes for table `temando_order`
--
ALTER TABLE `temando_order`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `TEMANDO_ORDER_ORDER_ID_SALES_ORDER_ENTITY_ID` (`order_id`);

--
-- Indexes for table `temando_shipment`
--
ALTER TABLE `temando_shipment`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `TEMANDO_SHIPMENT_SHIPMENT_ID_EXT_SHIPMENT_ID` (`shipment_id`,`ext_shipment_id`);

--
-- Indexes for table `theme`
--
ALTER TABLE `theme`
  ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `theme_file`
--
ALTER TABLE `theme_file`
  ADD PRIMARY KEY (`theme_files_id`),
  ADD KEY `THEME_FILE_THEME_ID_THEME_THEME_ID` (`theme_id`);

--
-- Indexes for table `translation`
--
ALTER TABLE `translation`
  ADD PRIMARY KEY (`key_id`),
  ADD UNIQUE KEY `TRANSLATION_STORE_ID_LOCALE_CRC_STRING_STRING` (`store_id`,`locale`,`crc_string`,`string`);

--
-- Indexes for table `trive_revo`
--
ALTER TABLE `trive_revo`
  ADD PRIMARY KEY (`slider_id`),
  ADD KEY `TRIVE_REVO_SLIDER_ID` (`slider_id`);

--
-- Indexes for table `trive_revo_products`
--
ALTER TABLE `trive_revo_products`
  ADD PRIMARY KEY (`slider_id`,`product_id`),
  ADD KEY `TRIVE_REVO_PRODUCTS_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `trive_revo_stores`
--
ALTER TABLE `trive_revo_stores`
  ADD PRIMARY KEY (`slider_id`,`store_id`),
  ADD KEY `TRIVE_REVO_STORES_STORE_ID` (`store_id`);

--
-- Indexes for table `tutorial_simplenews`
--
ALTER TABLE `tutorial_simplenews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ui_bookmark`
--
ALTER TABLE `ui_bookmark`
  ADD PRIMARY KEY (`bookmark_id`),
  ADD KEY `UI_BOOKMARK_USER_ID_NAMESPACE_IDENTIFIER` (`user_id`,`namespace`,`identifier`);

--
-- Indexes for table `url_rewrite`
--
ALTER TABLE `url_rewrite`
  ADD PRIMARY KEY (`url_rewrite_id`),
  ADD UNIQUE KEY `URL_REWRITE_REQUEST_PATH_STORE_ID` (`request_path`,`store_id`),
  ADD KEY `URL_REWRITE_TARGET_PATH` (`target_path`),
  ADD KEY `URL_REWRITE_STORE_ID_ENTITY_ID` (`store_id`,`entity_id`);

--
-- Indexes for table `variable`
--
ALTER TABLE `variable`
  ADD PRIMARY KEY (`variable_id`),
  ADD UNIQUE KEY `VARIABLE_CODE` (`code`);

--
-- Indexes for table `variable_value`
--
ALTER TABLE `variable_value`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `VARIABLE_VALUE_VARIABLE_ID_STORE_ID` (`variable_id`,`store_id`),
  ADD KEY `VARIABLE_VALUE_STORE_ID` (`store_id`);

--
-- Indexes for table `vault_payment_token`
--
ALTER TABLE `vault_payment_token`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `VAULT_PAYMENT_TOKEN_HASH_UNIQUE_INDEX_PUBLIC_HASH` (`public_hash`),
  ADD UNIQUE KEY `UNQ_54DCE14AEAEA03B587F9EF723EB10A10` (`payment_method_code`,`customer_id`,`gateway_token`),
  ADD KEY `VAULT_PAYMENT_TOKEN_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` (`customer_id`);

--
-- Indexes for table `vault_payment_token_order_payment_link`
--
ALTER TABLE `vault_payment_token_order_payment_link`
  ADD PRIMARY KEY (`order_payment_id`,`payment_token_id`),
  ADD KEY `FK_4ED894655446D385894580BECA993862` (`payment_token_id`);

--
-- Indexes for table `weee_tax`
--
ALTER TABLE `weee_tax`
  ADD PRIMARY KEY (`value_id`),
  ADD KEY `WEEE_TAX_WEBSITE_ID` (`website_id`),
  ADD KEY `WEEE_TAX_ENTITY_ID` (`entity_id`),
  ADD KEY `WEEE_TAX_COUNTRY` (`country`),
  ADD KEY `WEEE_TAX_ATTRIBUTE_ID` (`attribute_id`);

--
-- Indexes for table `widget`
--
ALTER TABLE `widget`
  ADD PRIMARY KEY (`widget_id`),
  ADD KEY `WIDGET_WIDGET_CODE` (`widget_code`);

--
-- Indexes for table `widget_instance`
--
ALTER TABLE `widget_instance`
  ADD PRIMARY KEY (`instance_id`),
  ADD KEY `WIDGET_INSTANCE_THEME_ID_THEME_THEME_ID` (`theme_id`);

--
-- Indexes for table `widget_instance_page`
--
ALTER TABLE `widget_instance_page`
  ADD PRIMARY KEY (`page_id`),
  ADD KEY `WIDGET_INSTANCE_PAGE_INSTANCE_ID` (`instance_id`);

--
-- Indexes for table `widget_instance_page_layout`
--
ALTER TABLE `widget_instance_page_layout`
  ADD UNIQUE KEY `WIDGET_INSTANCE_PAGE_LAYOUT_LAYOUT_UPDATE_ID_PAGE_ID` (`layout_update_id`,`page_id`),
  ADD KEY `WIDGET_INSTANCE_PAGE_LAYOUT_PAGE_ID` (`page_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`),
  ADD UNIQUE KEY `WISHLIST_CUSTOMER_ID` (`customer_id`),
  ADD KEY `WISHLIST_SHARED` (`shared`);

--
-- Indexes for table `wishlist_item`
--
ALTER TABLE `wishlist_item`
  ADD PRIMARY KEY (`wishlist_item_id`),
  ADD KEY `WISHLIST_ITEM_WISHLIST_ID` (`wishlist_id`),
  ADD KEY `WISHLIST_ITEM_PRODUCT_ID` (`product_id`),
  ADD KEY `WISHLIST_ITEM_STORE_ID` (`store_id`);

--
-- Indexes for table `wishlist_item_option`
--
ALTER TABLE `wishlist_item_option`
  ADD PRIMARY KEY (`option_id`),
  ADD KEY `FK_A014B30B04B72DD0EAB3EECD779728D6` (`wishlist_item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `report_viewed_product_aggregated_daily`
--
ALTER TABLE `report_viewed_product_aggregated_daily`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id', AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `report_viewed_product_aggregated_monthly`
--
ALTER TABLE `report_viewed_product_aggregated_monthly`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id', AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `report_viewed_product_aggregated_yearly`
--
ALTER TABLE `report_viewed_product_aggregated_yearly`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id', AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `report_viewed_product_index`
--
ALTER TABLE `report_viewed_product_index`
  MODIFY `index_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Index Id', AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Review id', AUTO_INCREMENT=348;
--
-- AUTO_INCREMENT for table `review_detail`
--
ALTER TABLE `review_detail`
  MODIFY `detail_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Review detail id', AUTO_INCREMENT=348;
--
-- AUTO_INCREMENT for table `review_entity`
--
ALTER TABLE `review_entity`
  MODIFY `entity_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Review entity id', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `review_entity_summary`
--
ALTER TABLE `review_entity_summary`
  MODIFY `primary_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Summary review entity id', AUTO_INCREMENT=253;
--
-- AUTO_INCREMENT for table `review_status`
--
ALTER TABLE `review_status`
  MODIFY `status_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Status id', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `salesrule`
--
ALTER TABLE `salesrule`
  MODIFY `rule_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rule Id', AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `salesrule_coupon`
--
ALTER TABLE `salesrule_coupon`
  MODIFY `coupon_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Coupon Id', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `salesrule_coupon_aggregated`
--
ALTER TABLE `salesrule_coupon_aggregated`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `salesrule_coupon_aggregated_order`
--
ALTER TABLE `salesrule_coupon_aggregated_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `salesrule_coupon_aggregated_updated`
--
ALTER TABLE `salesrule_coupon_aggregated_updated`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `salesrule_customer`
--
ALTER TABLE `salesrule_customer`
  MODIFY `rule_customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rule Customer Id';
--
-- AUTO_INCREMENT for table `salesrule_label`
--
ALTER TABLE `salesrule_label`
  MODIFY `label_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Label Id';
--
-- AUTO_INCREMENT for table `sales_bestsellers_aggregated_daily`
--
ALTER TABLE `sales_bestsellers_aggregated_daily`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `sales_bestsellers_aggregated_monthly`
--
ALTER TABLE `sales_bestsellers_aggregated_monthly`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `sales_bestsellers_aggregated_yearly`
--
ALTER TABLE `sales_bestsellers_aggregated_yearly`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `sales_creditmemo`
--
ALTER TABLE `sales_creditmemo`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `sales_creditmemo_comment`
--
ALTER TABLE `sales_creditmemo_comment`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `sales_creditmemo_item`
--
ALTER TABLE `sales_creditmemo_item`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `sales_invoice`
--
ALTER TABLE `sales_invoice`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `sales_invoiced_aggregated`
--
ALTER TABLE `sales_invoiced_aggregated`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `sales_invoiced_aggregated_order`
--
ALTER TABLE `sales_invoiced_aggregated_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `sales_invoice_comment`
--
ALTER TABLE `sales_invoice_comment`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `sales_invoice_item`
--
ALTER TABLE `sales_invoice_item`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `sales_order`
--
ALTER TABLE `sales_order`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `sales_order_address`
--
ALTER TABLE `sales_order_address`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `sales_order_aggregated_created`
--
ALTER TABLE `sales_order_aggregated_created`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `sales_order_aggregated_updated`
--
ALTER TABLE `sales_order_aggregated_updated`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `sales_order_item`
--
ALTER TABLE `sales_order_item`
  MODIFY `item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Item Id';
--
-- AUTO_INCREMENT for table `sales_order_payment`
--
ALTER TABLE `sales_order_payment`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `sales_order_status_history`
--
ALTER TABLE `sales_order_status_history`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `sales_order_tax`
--
ALTER TABLE `sales_order_tax`
  MODIFY `tax_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Tax Id';
--
-- AUTO_INCREMENT for table `sales_order_tax_item`
--
ALTER TABLE `sales_order_tax_item`
  MODIFY `tax_item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Tax Item Id';
--
-- AUTO_INCREMENT for table `sales_payment_transaction`
--
ALTER TABLE `sales_payment_transaction`
  MODIFY `transaction_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Transaction Id';
--
-- AUTO_INCREMENT for table `sales_refunded_aggregated`
--
ALTER TABLE `sales_refunded_aggregated`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `sales_refunded_aggregated_order`
--
ALTER TABLE `sales_refunded_aggregated_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `sales_sequence_meta`
--
ALTER TABLE `sales_sequence_meta`
  MODIFY `meta_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id', AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `sales_sequence_profile`
--
ALTER TABLE `sales_sequence_profile`
  MODIFY `profile_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id', AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `sales_shipment`
--
ALTER TABLE `sales_shipment`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `sales_shipment_comment`
--
ALTER TABLE `sales_shipment_comment`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `sales_shipment_item`
--
ALTER TABLE `sales_shipment_item`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `sales_shipment_track`
--
ALTER TABLE `sales_shipment_track`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `sales_shipping_aggregated`
--
ALTER TABLE `sales_shipping_aggregated`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `sales_shipping_aggregated_order`
--
ALTER TABLE `sales_shipping_aggregated_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `search_query`
--
ALTER TABLE `search_query`
  MODIFY `query_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Query ID', AUTO_INCREMENT=253;
--
-- AUTO_INCREMENT for table `search_synonyms`
--
ALTER TABLE `search_synonyms`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Synonyms Group Id';
--
-- AUTO_INCREMENT for table `sendfriend_log`
--
ALTER TABLE `sendfriend_log`
  MODIFY `log_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Log ID';
--
-- AUTO_INCREMENT for table `sequence_creditmemo_0`
--
ALTER TABLE `sequence_creditmemo_0`
  MODIFY `sequence_value` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sequence_creditmemo_1`
--
ALTER TABLE `sequence_creditmemo_1`
  MODIFY `sequence_value` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sequence_invoice_0`
--
ALTER TABLE `sequence_invoice_0`
  MODIFY `sequence_value` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sequence_invoice_1`
--
ALTER TABLE `sequence_invoice_1`
  MODIFY `sequence_value` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sequence_order_0`
--
ALTER TABLE `sequence_order_0`
  MODIFY `sequence_value` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sequence_order_1`
--
ALTER TABLE `sequence_order_1`
  MODIFY `sequence_value` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sequence_shipment_0`
--
ALTER TABLE `sequence_shipment_0`
  MODIFY `sequence_value` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sequence_shipment_1`
--
ALTER TABLE `sequence_shipment_1`
  MODIFY `sequence_value` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `shesh_blog_post`
--
ALTER TABLE `shesh_blog_post`
  MODIFY `post_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `shipping_tablerate`
--
ALTER TABLE `shipping_tablerate`
  MODIFY `pk` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key', AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `signifyd_case`
--
ALTER TABLE `signifyd_case`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity_id';
--
-- AUTO_INCREMENT for table `sitemap`
--
ALTER TABLE `sitemap`
  MODIFY `sitemap_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Sitemap Id';
--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `store_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Store Id', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `store_group`
--
ALTER TABLE `store_group`
  MODIFY `group_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Group Id', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `store_website`
--
ALTER TABLE `store_website`
  MODIFY `website_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Website Id', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tax_calculation`
--
ALTER TABLE `tax_calculation`
  MODIFY `tax_calculation_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Id', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tax_calculation_rate`
--
ALTER TABLE `tax_calculation_rate`
  MODIFY `tax_calculation_rate_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rate Id', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tax_calculation_rate_title`
--
ALTER TABLE `tax_calculation_rate_title`
  MODIFY `tax_calculation_rate_title_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rate Title Id';
--
-- AUTO_INCREMENT for table `tax_calculation_rule`
--
ALTER TABLE `tax_calculation_rule`
  MODIFY `tax_calculation_rule_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rule Id', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tax_class`
--
ALTER TABLE `tax_class`
  MODIFY `class_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Class Id', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tax_order_aggregated_created`
--
ALTER TABLE `tax_order_aggregated_created`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `tax_order_aggregated_updated`
--
ALTER TABLE `tax_order_aggregated_updated`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `temando_checkout_address`
--
ALTER TABLE `temando_checkout_address`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `temando_order`
--
ALTER TABLE `temando_order`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `temando_shipment`
--
ALTER TABLE `temando_shipment`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `theme`
--
ALTER TABLE `theme`
  MODIFY `theme_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Theme identifier', AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `theme_file`
--
ALTER TABLE `theme_file`
  MODIFY `theme_files_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Theme files identifier';
--
-- AUTO_INCREMENT for table `translation`
--
ALTER TABLE `translation`
  MODIFY `key_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Key Id of Translation';
--
-- AUTO_INCREMENT for table `trive_revo`
--
ALTER TABLE `trive_revo`
  MODIFY `slider_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Slider ID', AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tutorial_simplenews`
--
ALTER TABLE `tutorial_simplenews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ui_bookmark`
--
ALTER TABLE `ui_bookmark`
  MODIFY `bookmark_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Bookmark identifier', AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `url_rewrite`
--
ALTER TABLE `url_rewrite`
  MODIFY `url_rewrite_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rewrite Id', AUTO_INCREMENT=928;
--
-- AUTO_INCREMENT for table `variable`
--
ALTER TABLE `variable`
  MODIFY `variable_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Variable Id';
--
-- AUTO_INCREMENT for table `variable_value`
--
ALTER TABLE `variable_value`
  MODIFY `value_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Variable Value Id';
--
-- AUTO_INCREMENT for table `vault_payment_token`
--
ALTER TABLE `vault_payment_token`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `weee_tax`
--
ALTER TABLE `weee_tax`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `widget`
--
ALTER TABLE `widget`
  MODIFY `widget_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Widget Id';
--
-- AUTO_INCREMENT for table `widget_instance`
--
ALTER TABLE `widget_instance`
  MODIFY `instance_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Instance Id', AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `widget_instance_page`
--
ALTER TABLE `widget_instance_page`
  MODIFY `page_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Page Id', AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Wishlist ID', AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wishlist_item`
--
ALTER TABLE `wishlist_item`
  MODIFY `wishlist_item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Wishlist item ID', AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `wishlist_item_option`
--
ALTER TABLE `wishlist_item_option`
  MODIFY `option_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Option Id', AUTO_INCREMENT=22;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `report_viewed_product_aggregated_daily`
--
ALTER TABLE `report_viewed_product_aggregated_daily`
  ADD CONSTRAINT `REPORT_VIEWED_PRD_AGGRED_DAILY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_VIEWED_PRODUCT_AGGREGATED_DAILY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `report_viewed_product_aggregated_monthly`
--
ALTER TABLE `report_viewed_product_aggregated_monthly`
  ADD CONSTRAINT `REPORT_VIEWED_PRD_AGGRED_MONTHLY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_VIEWED_PRODUCT_AGGREGATED_MONTHLY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `report_viewed_product_aggregated_yearly`
--
ALTER TABLE `report_viewed_product_aggregated_yearly`
  ADD CONSTRAINT `REPORT_VIEWED_PRD_AGGRED_YEARLY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_VIEWED_PRODUCT_AGGREGATED_YEARLY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `report_viewed_product_index`
--
ALTER TABLE `report_viewed_product_index`
  ADD CONSTRAINT `REPORT_VIEWED_PRD_IDX_CSTR_ID_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_VIEWED_PRD_IDX_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_VIEWED_PRODUCT_INDEX_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `REVIEW_ENTITY_ID_REVIEW_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `review_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REVIEW_STATUS_ID_REVIEW_STATUS_STATUS_ID` FOREIGN KEY (`status_id`) REFERENCES `review_status` (`status_id`) ON DELETE NO ACTION;

--
-- Constraints for table `review_detail`
--
ALTER TABLE `review_detail`
  ADD CONSTRAINT `REVIEW_DETAIL_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `REVIEW_DETAIL_REVIEW_ID_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REVIEW_DETAIL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `review_entity_summary`
--
ALTER TABLE `review_entity_summary`
  ADD CONSTRAINT `REVIEW_ENTITY_SUMMARY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `review_store`
--
ALTER TABLE `review_store`
  ADD CONSTRAINT `REVIEW_STORE_REVIEW_ID_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REVIEW_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `salesrule_coupon`
--
ALTER TABLE `salesrule_coupon`
  ADD CONSTRAINT `SALESRULE_COUPON_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE;

--
-- Constraints for table `salesrule_coupon_aggregated`
--
ALTER TABLE `salesrule_coupon_aggregated`
  ADD CONSTRAINT `SALESRULE_COUPON_AGGREGATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `salesrule_coupon_aggregated_order`
--
ALTER TABLE `salesrule_coupon_aggregated_order`
  ADD CONSTRAINT `SALESRULE_COUPON_AGGREGATED_ORDER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `salesrule_coupon_aggregated_updated`
--
ALTER TABLE `salesrule_coupon_aggregated_updated`
  ADD CONSTRAINT `SALESRULE_COUPON_AGGREGATED_UPDATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `salesrule_coupon_usage`
--
ALTER TABLE `salesrule_coupon_usage`
  ADD CONSTRAINT `SALESRULE_COUPON_USAGE_COUPON_ID_SALESRULE_COUPON_COUPON_ID` FOREIGN KEY (`coupon_id`) REFERENCES `salesrule_coupon` (`coupon_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_COUPON_USAGE_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `salesrule_customer`
--
ALTER TABLE `salesrule_customer`
  ADD CONSTRAINT `SALESRULE_CUSTOMER_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_CUSTOMER_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE;

--
-- Constraints for table `salesrule_customer_group`
--
ALTER TABLE `salesrule_customer_group`
  ADD CONSTRAINT `SALESRULE_CSTR_GROUP_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_CUSTOMER_GROUP_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE;

--
-- Constraints for table `salesrule_label`
--
ALTER TABLE `salesrule_label`
  ADD CONSTRAINT `SALESRULE_LABEL_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_LABEL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `salesrule_product_attribute`
--
ALTER TABLE `salesrule_product_attribute`
  ADD CONSTRAINT `SALESRULE_PRD_ATTR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_PRD_ATTR_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_PRODUCT_ATTRIBUTE_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_PRODUCT_ATTRIBUTE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `salesrule_website`
--
ALTER TABLE `salesrule_website`
  ADD CONSTRAINT `SALESRULE_WEBSITE_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_WEBSITE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_bestsellers_aggregated_daily`
--
ALTER TABLE `sales_bestsellers_aggregated_daily`
  ADD CONSTRAINT `SALES_BESTSELLERS_AGGREGATED_DAILY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_bestsellers_aggregated_monthly`
--
ALTER TABLE `sales_bestsellers_aggregated_monthly`
  ADD CONSTRAINT `SALES_BESTSELLERS_AGGREGATED_MONTHLY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_bestsellers_aggregated_yearly`
--
ALTER TABLE `sales_bestsellers_aggregated_yearly`
  ADD CONSTRAINT `SALES_BESTSELLERS_AGGREGATED_YEARLY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_creditmemo`
--
ALTER TABLE `sales_creditmemo`
  ADD CONSTRAINT `SALES_CREDITMEMO_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_CREDITMEMO_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `sales_creditmemo_comment`
--
ALTER TABLE `sales_creditmemo_comment`
  ADD CONSTRAINT `SALES_CREDITMEMO_COMMENT_PARENT_ID_SALES_CREDITMEMO_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_creditmemo` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_creditmemo_item`
--
ALTER TABLE `sales_creditmemo_item`
  ADD CONSTRAINT `SALES_CREDITMEMO_ITEM_PARENT_ID_SALES_CREDITMEMO_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_creditmemo` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_invoice`
--
ALTER TABLE `sales_invoice`
  ADD CONSTRAINT `SALES_INVOICE_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_INVOICE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `sales_invoiced_aggregated`
--
ALTER TABLE `sales_invoiced_aggregated`
  ADD CONSTRAINT `SALES_INVOICED_AGGREGATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `sales_invoiced_aggregated_order`
--
ALTER TABLE `sales_invoiced_aggregated_order`
  ADD CONSTRAINT `SALES_INVOICED_AGGREGATED_ORDER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `sales_invoice_comment`
--
ALTER TABLE `sales_invoice_comment`
  ADD CONSTRAINT `SALES_INVOICE_COMMENT_PARENT_ID_SALES_INVOICE_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_invoice` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_invoice_item`
--
ALTER TABLE `sales_invoice_item`
  ADD CONSTRAINT `SALES_INVOICE_ITEM_PARENT_ID_SALES_INVOICE_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_invoice` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_order`
--
ALTER TABLE `sales_order`
  ADD CONSTRAINT `SALES_ORDER_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `SALES_ORDER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `sales_order_address`
--
ALTER TABLE `sales_order_address`
  ADD CONSTRAINT `SALES_ORDER_ADDRESS_PARENT_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_order_aggregated_created`
--
ALTER TABLE `sales_order_aggregated_created`
  ADD CONSTRAINT `SALES_ORDER_AGGREGATED_CREATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `sales_order_aggregated_updated`
--
ALTER TABLE `sales_order_aggregated_updated`
  ADD CONSTRAINT `SALES_ORDER_AGGREGATED_UPDATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `sales_order_item`
--
ALTER TABLE `sales_order_item`
  ADD CONSTRAINT `SALES_ORDER_ITEM_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_ORDER_ITEM_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `sales_order_payment`
--
ALTER TABLE `sales_order_payment`
  ADD CONSTRAINT `SALES_ORDER_PAYMENT_PARENT_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_order_status_history`
--
ALTER TABLE `sales_order_status_history`
  ADD CONSTRAINT `SALES_ORDER_STATUS_HISTORY_PARENT_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_order_status_label`
--
ALTER TABLE `sales_order_status_label`
  ADD CONSTRAINT `SALES_ORDER_STATUS_LABEL_STATUS_SALES_ORDER_STATUS_STATUS` FOREIGN KEY (`status`) REFERENCES `sales_order_status` (`status`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_ORDER_STATUS_LABEL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_order_status_state`
--
ALTER TABLE `sales_order_status_state`
  ADD CONSTRAINT `SALES_ORDER_STATUS_STATE_STATUS_SALES_ORDER_STATUS_STATUS` FOREIGN KEY (`status`) REFERENCES `sales_order_status` (`status`) ON DELETE CASCADE;

--
-- Constraints for table `sales_order_tax_item`
--
ALTER TABLE `sales_order_tax_item`
  ADD CONSTRAINT `SALES_ORDER_TAX_ITEM_ASSOCIATED_ITEM_ID_SALES_ORDER_ITEM_ITEM_ID` FOREIGN KEY (`associated_item_id`) REFERENCES `sales_order_item` (`item_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_ORDER_TAX_ITEM_ITEM_ID_SALES_ORDER_ITEM_ITEM_ID` FOREIGN KEY (`item_id`) REFERENCES `sales_order_item` (`item_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_ORDER_TAX_ITEM_TAX_ID_SALES_ORDER_TAX_TAX_ID` FOREIGN KEY (`tax_id`) REFERENCES `sales_order_tax` (`tax_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_payment_transaction`
--
ALTER TABLE `sales_payment_transaction`
  ADD CONSTRAINT `FK_B99FF1A06402D725EBDB0F3A7ECD47A2` FOREIGN KEY (`parent_id`) REFERENCES `sales_payment_transaction` (`transaction_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_PAYMENT_TRANSACTION_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_PAYMENT_TRANSACTION_PAYMENT_ID_SALES_ORDER_PAYMENT_ENTT_ID` FOREIGN KEY (`payment_id`) REFERENCES `sales_order_payment` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_refunded_aggregated`
--
ALTER TABLE `sales_refunded_aggregated`
  ADD CONSTRAINT `SALES_REFUNDED_AGGREGATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `sales_refunded_aggregated_order`
--
ALTER TABLE `sales_refunded_aggregated_order`
  ADD CONSTRAINT `SALES_REFUNDED_AGGREGATED_ORDER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `sales_sequence_profile`
--
ALTER TABLE `sales_sequence_profile`
  ADD CONSTRAINT `SALES_SEQUENCE_PROFILE_META_ID_SALES_SEQUENCE_META_META_ID` FOREIGN KEY (`meta_id`) REFERENCES `sales_sequence_meta` (`meta_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_shipment`
--
ALTER TABLE `sales_shipment`
  ADD CONSTRAINT `SALES_SHIPMENT_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_SHIPMENT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `sales_shipment_comment`
--
ALTER TABLE `sales_shipment_comment`
  ADD CONSTRAINT `SALES_SHIPMENT_COMMENT_PARENT_ID_SALES_SHIPMENT_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_shipment` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_shipment_item`
--
ALTER TABLE `sales_shipment_item`
  ADD CONSTRAINT `SALES_SHIPMENT_ITEM_PARENT_ID_SALES_SHIPMENT_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_shipment` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_shipment_track`
--
ALTER TABLE `sales_shipment_track`
  ADD CONSTRAINT `SALES_SHIPMENT_TRACK_PARENT_ID_SALES_SHIPMENT_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_shipment` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_shipping_aggregated`
--
ALTER TABLE `sales_shipping_aggregated`
  ADD CONSTRAINT `SALES_SHIPPING_AGGREGATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `sales_shipping_aggregated_order`
--
ALTER TABLE `sales_shipping_aggregated_order`
  ADD CONSTRAINT `SALES_SHIPPING_AGGREGATED_ORDER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `search_query`
--
ALTER TABLE `search_query`
  ADD CONSTRAINT `SEARCH_QUERY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `search_synonyms`
--
ALTER TABLE `search_synonyms`
  ADD CONSTRAINT `SEARCH_SYNONYMS_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SEARCH_SYNONYMS_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `signifyd_case`
--
ALTER TABLE `signifyd_case`
  ADD CONSTRAINT `SIGNIFYD_CASE_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE SET NULL;

--
-- Constraints for table `sitemap`
--
ALTER TABLE `sitemap`
  ADD CONSTRAINT `SITEMAP_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `store`
--
ALTER TABLE `store`
  ADD CONSTRAINT `STORE_GROUP_ID_STORE_GROUP_GROUP_ID` FOREIGN KEY (`group_id`) REFERENCES `store_group` (`group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `STORE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `store_group`
--
ALTER TABLE `store_group`
  ADD CONSTRAINT `STORE_GROUP_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `tax_calculation`
--
ALTER TABLE `tax_calculation`
  ADD CONSTRAINT `TAX_CALCULATION_CUSTOMER_TAX_CLASS_ID_TAX_CLASS_CLASS_ID` FOREIGN KEY (`customer_tax_class_id`) REFERENCES `tax_class` (`class_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `TAX_CALCULATION_PRODUCT_TAX_CLASS_ID_TAX_CLASS_CLASS_ID` FOREIGN KEY (`product_tax_class_id`) REFERENCES `tax_class` (`class_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `TAX_CALC_TAX_CALC_RATE_ID_TAX_CALC_RATE_TAX_CALC_RATE_ID` FOREIGN KEY (`tax_calculation_rate_id`) REFERENCES `tax_calculation_rate` (`tax_calculation_rate_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `TAX_CALC_TAX_CALC_RULE_ID_TAX_CALC_RULE_TAX_CALC_RULE_ID` FOREIGN KEY (`tax_calculation_rule_id`) REFERENCES `tax_calculation_rule` (`tax_calculation_rule_id`) ON DELETE CASCADE;

--
-- Constraints for table `tax_calculation_rate_title`
--
ALTER TABLE `tax_calculation_rate_title`
  ADD CONSTRAINT `FK_37FB965F786AD5897BB3AE90470C42AB` FOREIGN KEY (`tax_calculation_rate_id`) REFERENCES `tax_calculation_rate` (`tax_calculation_rate_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `TAX_CALCULATION_RATE_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `tax_order_aggregated_created`
--
ALTER TABLE `tax_order_aggregated_created`
  ADD CONSTRAINT `TAX_ORDER_AGGREGATED_CREATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `tax_order_aggregated_updated`
--
ALTER TABLE `tax_order_aggregated_updated`
  ADD CONSTRAINT `TAX_ORDER_AGGREGATED_UPDATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `temando_checkout_address`
--
ALTER TABLE `temando_checkout_address`
  ADD CONSTRAINT `TEMANDO_CHKT_ADDR_SHPP_ADDR_ID_QUOTE_ADDR_ADDR_ID` FOREIGN KEY (`shipping_address_id`) REFERENCES `quote_address` (`address_id`) ON DELETE CASCADE;

--
-- Constraints for table `temando_order`
--
ALTER TABLE `temando_order`
  ADD CONSTRAINT `TEMANDO_ORDER_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `temando_shipment`
--
ALTER TABLE `temando_shipment`
  ADD CONSTRAINT `TEMANDO_SHIPMENT_SHIPMENT_ID_SALES_SHIPMENT_ENTITY_ID` FOREIGN KEY (`shipment_id`) REFERENCES `sales_shipment` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `theme_file`
--
ALTER TABLE `theme_file`
  ADD CONSTRAINT `THEME_FILE_THEME_ID_THEME_THEME_ID` FOREIGN KEY (`theme_id`) REFERENCES `theme` (`theme_id`) ON DELETE CASCADE;

--
-- Constraints for table `translation`
--
ALTER TABLE `translation`
  ADD CONSTRAINT `TRANSLATION_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `trive_revo_products`
--
ALTER TABLE `trive_revo_products`
  ADD CONSTRAINT `TRIVE_REVO_PRODUCTS_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `TRIVE_REVO_PRODUCTS_SLIDER_ID_TRIVE_REVO_SLIDER_ID` FOREIGN KEY (`slider_id`) REFERENCES `trive_revo` (`slider_id`) ON DELETE CASCADE;

--
-- Constraints for table `trive_revo_stores`
--
ALTER TABLE `trive_revo_stores`
  ADD CONSTRAINT `TRIVE_REVO_STORES_SLIDER_ID_TRIVE_REVO_SLIDER_ID` FOREIGN KEY (`slider_id`) REFERENCES `trive_revo` (`slider_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `TRIVE_REVO_STORES_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `ui_bookmark`
--
ALTER TABLE `ui_bookmark`
  ADD CONSTRAINT `UI_BOOKMARK_USER_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `variable_value`
--
ALTER TABLE `variable_value`
  ADD CONSTRAINT `VARIABLE_VALUE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `VARIABLE_VALUE_VARIABLE_ID_VARIABLE_VARIABLE_ID` FOREIGN KEY (`variable_id`) REFERENCES `variable` (`variable_id`) ON DELETE CASCADE;

--
-- Constraints for table `vault_payment_token`
--
ALTER TABLE `vault_payment_token`
  ADD CONSTRAINT `VAULT_PAYMENT_TOKEN_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `vault_payment_token_order_payment_link`
--
ALTER TABLE `vault_payment_token_order_payment_link`
  ADD CONSTRAINT `FK_4ED894655446D385894580BECA993862` FOREIGN KEY (`payment_token_id`) REFERENCES `vault_payment_token` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_CF37B9D854256534BE23C818F6291CA2` FOREIGN KEY (`order_payment_id`) REFERENCES `sales_order_payment` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `weee_tax`
--
ALTER TABLE `weee_tax`
  ADD CONSTRAINT `WEEE_TAX_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `WEEE_TAX_COUNTRY_DIRECTORY_COUNTRY_COUNTRY_ID` FOREIGN KEY (`country`) REFERENCES `directory_country` (`country_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `WEEE_TAX_ENTITY_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `WEEE_TAX_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `widget_instance`
--
ALTER TABLE `widget_instance`
  ADD CONSTRAINT `WIDGET_INSTANCE_THEME_ID_THEME_THEME_ID` FOREIGN KEY (`theme_id`) REFERENCES `theme` (`theme_id`) ON DELETE CASCADE;

--
-- Constraints for table `widget_instance_page`
--
ALTER TABLE `widget_instance_page`
  ADD CONSTRAINT `WIDGET_INSTANCE_PAGE_INSTANCE_ID_WIDGET_INSTANCE_INSTANCE_ID` FOREIGN KEY (`instance_id`) REFERENCES `widget_instance` (`instance_id`) ON DELETE CASCADE;

--
-- Constraints for table `widget_instance_page_layout`
--
ALTER TABLE `widget_instance_page_layout`
  ADD CONSTRAINT `WIDGET_INSTANCE_PAGE_LAYOUT_PAGE_ID_WIDGET_INSTANCE_PAGE_PAGE_ID` FOREIGN KEY (`page_id`) REFERENCES `widget_instance_page` (`page_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `WIDGET_INSTANCE_PAGE_LYT_LYT_UPDATE_ID_LYT_UPDATE_LYT_UPDATE_ID` FOREIGN KEY (`layout_update_id`) REFERENCES `layout_update` (`layout_update_id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `WISHLIST_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlist_item`
--
ALTER TABLE `wishlist_item`
  ADD CONSTRAINT `WISHLIST_ITEM_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `WISHLIST_ITEM_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `WISHLIST_ITEM_WISHLIST_ID_WISHLIST_WISHLIST_ID` FOREIGN KEY (`wishlist_id`) REFERENCES `wishlist` (`wishlist_id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlist_item_option`
--
ALTER TABLE `wishlist_item_option`
  ADD CONSTRAINT `FK_A014B30B04B72DD0EAB3EECD779728D6` FOREIGN KEY (`wishlist_item_id`) REFERENCES `wishlist_item` (`wishlist_item_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
