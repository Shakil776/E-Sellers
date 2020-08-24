-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2020 at 09:30 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_esellers`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_profile_photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `mobile`, `admin_profile_photo`, `password`, `status`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Shakil Hossain', 'mdshakilhossain091@gmail.com', '01738620241', NULL, '$2y$10$/LP2TOkJQXLwwpnScUN29uw5TKI6nzD8sE3fR5c7cXOMM.9ntQJTa', 1, NULL, NULL, NULL, NULL),
(5, 'Admin', 'admin@esellers.com', '01738521590', 'uploads/admin-profile-image/app_1585678184.jpg', '$2y$10$61vwFQtSlfvIpWHpJwR3NOaRCvq7C6gGAh9yRbY5H49EJ1DJP3KdW', 1, NULL, 'I4AW2bdl9fdTzrt7FD7RkvuJJsgynEfO4QdBGy9ULeChriLH2Wb9mBfhhurI', '2020-03-31 12:09:44', '2020-03-31 12:09:44');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_icon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `category_name`, `category_description`, `url`, `category_icon`, `publication_status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 0, 'Men\'s Collection', 'Category Description', 'mens-collection', 'uploads/category-icon/ci_1584303834.png', 1, NULL, '2020-03-06 20:39:58', '2020-03-15 14:23:54'),
(2, 0, 'Women\'s Collection', 'Category Description', 'womens-collection', 'uploads/category-icon/ci_1584304151.png', 1, NULL, '2020-03-06 20:40:24', '2020-03-15 14:29:11'),
(3, 0, 'Kid\'s Zone', 'Category Description', 'kids-zone', 'uploads/category-icon/ci_1584304515.png', 1, NULL, '2020-03-06 20:41:09', '2020-03-15 14:35:15'),
(4, 0, 'Cosmetics', 'Category Description', 'cosmetics', 'uploads/category-icon/ci_1584304436.png', 1, NULL, '2020-03-06 20:41:40', '2020-03-15 14:33:56'),
(5, 0, 'Bag & Baggage', 'Category Description', 'bag&baggage', 'uploads/category-icon/ci_1584304025.png', 1, NULL, '2020-03-06 20:42:18', '2020-03-15 14:27:05'),
(6, 0, 'Home Appliance', 'Category Description', 'home-appliance', 'uploads/category-icon/ci_1584304095.png', 1, NULL, '2020-03-06 20:43:04', '2020-03-15 14:28:15'),
(7, 6, 'Cell Phone', 'Category Description', 'cell-phone', 'uploads/category-icon/ci_1584304678.png', 1, NULL, '2020-03-06 20:43:40', '2020-03-15 14:37:58'),
(8, 1, 'Shirt', 'Category Description', 'shirt', '', 1, NULL, '2020-03-08 17:32:19', '2020-03-08 17:32:19'),
(10, 2, 'Women Long Dress', 'Sub Women\'s Collection  Category Description', 'women-long-dress', '', 1, NULL, '2020-03-08 17:39:30', '2020-03-08 17:39:30'),
(11, 10, 'Borkha', 'Sub Sub Category of Women\'s Collection', 'borkha', '', 1, NULL, '2020-03-08 17:41:01', '2020-03-08 17:41:01'),
(12, 8, 'Half-Shirt', 'New Collection - Half Shirt - (Brand-BD)', 'half-shirt', '', 1, NULL, '2020-03-08 17:41:06', '2020-03-08 17:41:06'),
(13, 1, 'T-shirt', 'Sub_Category For T-Shirt', 'tshirt', '', 1, NULL, '2020-03-08 18:02:01', '2020-03-08 18:02:01'),
(14, 1, 'Pant', 'Sub_Pant_Description For Sale', 'pant', '', 1, NULL, '2020-03-08 18:03:45', '2020-03-08 18:03:45'),
(15, 2, 'Sharee', 'Sharee is a sub categories of Women\'s Colletion', 'sharee', '', 1, NULL, '2020-03-08 18:04:32', '2020-03-08 18:04:32'),
(16, 2, 'Kamiz', 'Kamiz is a sub categories of Women\'s Colletion', 'kamiz', '', 1, NULL, '2020-03-08 18:05:05', '2020-03-08 18:05:05'),
(17, 1, 'Punjabi', 'Sub_Category = For Panjabi All Collection', 'punjabi', '', 1, NULL, '2020-03-08 18:05:12', '2020-03-08 18:05:12'),
(18, 2, 'Western', 'Western is a sub category of Women\'s Collection', 'western', '', 1, NULL, '2020-03-08 18:06:35', '2020-03-08 18:06:35'),
(19, 2, 'Purse', 'Purse is a sub category of Women\'s Collection', 'purse', '', 1, NULL, '2020-03-08 18:07:20', '2020-03-08 18:07:20'),
(20, 1, 'Coat', 'Coat is a Sub_Category of men\'s Collection.', 'coat', '', 1, NULL, '2020-03-08 18:07:23', '2020-03-08 18:07:23'),
(21, 1, 'Jacket', 'Jacket is a Sub_Category of Men\'s Collection.', 'jacket', '', 1, NULL, '2020-03-08 18:08:18', '2020-03-08 18:08:18'),
(22, 1, 'Wallet', 'Wallet is a Sub_Category of Men\'s Collection.', 'wallet', '', 1, NULL, '2020-03-08 18:09:23', '2020-03-08 18:09:23'),
(23, 2, 'Shoes', 'Shoes is a sub categories of Women\'s Collection', 'shoes', '', 1, NULL, '2020-03-08 18:10:22', '2020-03-08 18:10:22'),
(24, 2, 'Wedding Dresses', 'Wedding Dresses is a sub categories of Women\'s Collection', 'wedding-dresses', '', 1, NULL, '2020-03-08 18:11:35', '2020-03-08 18:11:35'),
(25, 1, 'Belt', 'Belt is a Sub_Category is Men\'s Collection.', 'belt', '', 1, NULL, '2020-03-08 18:11:37', '2020-03-08 18:11:37'),
(26, 1, 'Shoe', 'Shoe  is a Sub_Category of Men\'s Collection.', 'shoe', '', 1, NULL, '2020-03-08 18:12:35', '2020-03-08 18:12:35'),
(27, 2, 'Accessories', 'Accessories is a sub categories of Women\'s Collection', 'accessories', '', 1, NULL, '2020-03-08 18:13:43', '2020-03-08 18:13:43'),
(28, 2, 'Traditional Clothing', 'Traditional Clothing is a sub categories of Women\'s Collection', 'traditional-clothing', '', 1, NULL, '2020-03-08 18:15:21', '2020-03-08 18:15:21'),
(29, 5, 'Tour Bag', 'Tour bag	 is a Sub_Category of Bag & Baggage.', 'tour-bag', '', 1, NULL, '2020-03-08 18:17:37', '2020-03-08 18:17:37'),
(30, 5, 'Travel bag', 'Travel bag is a Sub_Category of Bag and Baggage.', 'travel-bag', '', 1, NULL, '2020-03-08 18:18:47', '2020-03-08 18:18:47'),
(31, 5, 'Trolley bag', 'Trolley bag is a Sub_Category of Bag & Baggage.', 'trolley-bag', '', 1, NULL, '2020-03-08 18:19:58', '2020-03-08 18:19:58'),
(32, 5, 'School bag', 'School bag is a Sub_Category of Bag & Baggage.', 'school-bag', '', 1, NULL, '2020-03-08 18:21:02', '2020-03-08 18:21:02'),
(33, 5, 'Briefcase', 'Briefcase is a Sub_Category of Bag & Baggage.', 'briefcase', '', 1, NULL, '2020-03-08 18:22:14', '2020-03-08 18:22:14'),
(34, 5, 'Suitcase', 'Suitcase  is a Sub_Category of Bag & Baggage.', 'suitcase', '', 1, NULL, '2020-03-08 18:23:03', '2020-03-08 18:23:03'),
(35, 3, 'Baby Gear', 'Baby Gear is a sub categories of Kid\'s Zone', 'baby-gear', '', 1, NULL, '2020-03-08 18:23:37', '2020-03-08 18:23:37'),
(36, 5, 'Beauty box', 'Beauty box is a Sub_Category of Bag & Baggage.', 'beauty-box', '', 1, NULL, '2020-03-08 18:24:01', '2020-03-08 18:24:01'),
(37, 3, 'Nursery', 'Nursery is a sub categories of Kid\'s Zone', 'nursery', '', 1, NULL, '2020-03-08 18:24:13', '2020-03-08 18:24:13'),
(38, 5, 'Laptop bag', 'Laptop bag is a Sub_Category of Bag & Baggage.', 'laptop-bag', '', 1, NULL, '2020-03-08 18:24:53', '2020-03-08 18:24:53'),
(39, 5, 'Basket', 'Basket is a Sub_Category of Bag & Baggege.', 'basket', '', 1, NULL, '2020-03-08 18:25:42', '2020-03-08 18:25:42'),
(40, 3, 'Baby Personal Care', 'Baby Personal Care is a sub categories of Kid\'s Zone', 'baby-personal-care', '', 1, NULL, '2020-03-08 18:25:45', '2020-03-08 18:25:45'),
(41, 3, 'Clothing & Accessories', 'Clothing & Accessories is a sub categories of Kid\'s Zone', 'clothing-accessories', '', 1, NULL, '2020-03-08 18:26:32', '2020-03-08 18:26:32'),
(42, 3, 'Baby Toys Shop', 'Baby Toys Shop is a sub categories of Kid\'s Zone', 'baby-toys-shop', '', 1, NULL, '2020-03-08 18:27:23', '2020-03-08 18:27:23'),
(43, 3, 'Remote Control Toy', 'Remote Control Toy is a sub categories of Kid\'s Zone', 'remote-control-toy', '', 1, NULL, '2020-03-08 18:28:44', '2020-03-08 18:28:44'),
(44, 3, 'Sports & Outdoor Play', 'Sports & Outdoor Play is a sub categories of Kid\'s Zone', 'sports-outdoor-play', '', 1, NULL, '2020-03-08 18:29:38', '2020-03-08 18:29:38'),
(45, 3, 'Traditional Games', 'Traditional Games is a sub categories of Kid\'s Zone', 'traditional-games', '', 1, NULL, '2020-03-08 18:30:14', '2020-03-08 18:30:14'),
(46, 3, 'Baby Diapers', 'Baby Diapers is a sub categories of Kid\'s Zone', 'baby-diapers', '', 1, NULL, '2020-03-08 18:31:18', '2020-03-08 18:31:18'),
(47, 15, 'Silk Sharee', 'Silk Sharee  is a sub-sub categories of Sharee.', 'silk-sharee', '', 1, NULL, '2020-03-08 18:37:34', '2020-03-08 18:37:34'),
(48, 15, 'Katan Sharee', 'Katan Sharee  is a sub-sub categories of Sharee.', 'Katan Saree', '', 1, NULL, '2020-03-08 18:39:00', '2020-03-08 18:39:00'),
(49, 15, 'Half Silk Sharee', 'Half Silk Sharee  is a sub-sub categories of Sharee.', 'Half-silk-sharee', '', 1, NULL, '2020-03-08 18:40:22', '2020-03-08 18:40:22'),
(50, 15, 'Jorjet Sharee', 'Jorjet Sharee  is a sub-sub categories of Sharee.', 'jorjet-sharee', '', 1, NULL, '2020-03-08 18:41:54', '2020-03-08 18:41:54'),
(51, 15, 'Ruffle Frill Sharee', 'Ruffle Frill Sharee is a sub-sub categories of Sharee.', 'Ruffle-Frill-Sharee', '', 1, NULL, '2020-03-08 18:43:16', '2020-03-08 18:43:16'),
(52, 15, 'Jamdani Sharee', 'Jamdani Sharee is a sub-sub categories of Sharee.', 'jamdani-sharee', '', 1, NULL, '2020-03-08 18:44:09', '2020-03-08 18:44:09'),
(53, 16, 'Cotton Salwar Kamiz', 'Cotton Salwar Kamiz is a sub-sub categories of Kamiz.', 'cotton-salwar-kamiz', '', 1, NULL, '2020-03-08 18:52:55', '2020-07-05 01:52:36'),
(54, 8, 'Full Shirt', 'Full Shirt is a Sub_Sub Category of Shirt Collection.', 'fullshirt', '', 1, NULL, '2020-03-08 18:53:24', '2020-03-08 18:53:24'),
(55, 16, 'Pakistani Lawn Dress', 'Pakistani Lawn Dress  is a sub-sub categories of Kamiz.', 'pakistani-lawn-dress', '', 1, NULL, '2020-03-08 18:53:46', '2020-03-08 18:53:46'),
(56, 16, 'Jorjet Salwar Kamiz', 'Jorjet Salwar Kamiz  is a sub-sub categories of Kamiz.', 'jorjet-salwar-kamiz', '', 1, NULL, '2020-03-08 18:55:13', '2020-03-08 18:55:13'),
(57, 16, 'Embroidery Unstitched kamiz', 'Embroidery Unstitched kamiz  is a sub-sub categories of Kamiz.', 'embroidery-unstitched-kamiz', '', 1, NULL, '2020-03-08 18:56:08', '2020-03-08 18:56:08'),
(58, 16, 'Block Printed Cotton Salwar Kamiz', 'Block Printed Cotton Salwar Kamiz is a sub-sub categories of Kamiz.', 'block-printed-cotton-salwar-kamiz', '', 1, NULL, '2020-03-08 18:57:53', '2020-03-08 18:57:53'),
(59, 18, 'Jeans', 'Jeans  is a sub-sub categories of Western.', 'jeans', '', 1, NULL, '2020-03-08 19:06:47', '2020-03-08 19:06:47'),
(60, 18, 'Tops', 'Tops is a sub-sub categories of Western.', 'tops', '', 1, NULL, '2020-03-08 19:07:33', '2020-03-08 19:07:33'),
(61, 18, 'Party', 'Party is a sub-sub categories of Western.', 'party', '', 1, NULL, '2020-03-08 19:08:14', '2020-03-08 19:08:14'),
(62, 18, 'Skirts', 'Skirts is a sub-sub categories of Western.', 'skirts', '', 1, NULL, '2020-03-08 19:08:57', '2020-03-08 19:08:57'),
(64, 8, 'Formal Shirt', 'Formal Shirt is a Sub_Sub Category of Shirt Collection.', 'formalshirt', '', 1, NULL, '2020-03-08 19:14:23', '2020-03-08 19:14:23'),
(65, 13, 'Full T-Shirt', 'Full T-Shirt is a Sub_Sub Category of Full T-Shirt Collection.', 'fulltshirt', '', 1, NULL, '2020-03-08 19:15:52', '2020-03-08 19:15:52'),
(66, 13, 'Half T-Shirt', 'Half T-Shirt is a Sub_Sub Category of Collection.', 'halftshirt', '', 1, NULL, '2020-03-08 19:17:05', '2020-03-08 19:17:05'),
(67, 13, 'Stylist T-Shirt', 'Stylist T-Shirt is a Sub_Sub Category of T_Shirt', 'stylisttshirt', '', 1, NULL, '2020-03-08 19:18:44', '2020-03-08 19:18:44'),
(68, 19, 'Wallet', 'Wallet is a sub-sub categories of Purse.', 'wallet', '', 1, NULL, '2020-03-08 19:18:53', '2020-03-08 19:18:53'),
(69, 14, 'Full Pant', 'Full Pant is a Sub_Sub Category of Pant.', 'fullpant', '', 1, NULL, '2020-03-08 19:19:32', '2020-03-08 19:19:32'),
(70, 19, 'Card Wallet', 'Card Wallet is a sub-sub categories of Purse.', 'card-wallet', '', 1, NULL, '2020-03-08 19:19:34', '2020-03-08 19:19:34'),
(71, 19, 'Backpack', 'Backpack is a sub-sub categories of Purse.', 'backpack', '', 1, NULL, '2020-03-08 19:20:06', '2020-03-08 19:20:06'),
(72, 14, 'Half-Pant', 'Half-Pant is a Sub_Sub Category of Pant.', 'halfpant', '', 1, NULL, '2020-03-08 19:20:39', '2020-03-08 19:20:39'),
(73, 19, 'Shoulder Hand Bag', 'Shoulder Hand Bag is a sub-sub categories of Purse.', 'shoulder-hand-bag', '', 1, NULL, '2020-03-08 19:21:16', '2020-03-08 19:21:16'),
(75, 19, 'Crossbody Bag', 'Crossbody Bag is a sub-sub categories of Purse.', 'crossbody-bag', '', 1, NULL, '2020-03-08 19:22:06', '2020-03-08 19:22:06'),
(76, 14, 'Jeans Pant', 'Jeans Pant is a Sub-Sub Category of Pant.', 'jeanspant', '', 1, NULL, '2020-03-08 19:22:37', '2020-03-08 19:22:37'),
(77, 19, 'Clutch Purses', 'Clutch Purses Bag is a sub-sub categories of Purse.', 'Clutch Purses', '', 1, NULL, '2020-03-08 19:22:58', '2020-03-08 19:22:58'),
(78, 14, 'Trousers', 'Trousers is a Sub-Sub Category of Pant.', 'trousers', '', 1, NULL, '2020-03-08 19:23:12', '2020-03-08 19:23:12'),
(83, 23, 'Flat Sandals', 'Flat Sandals is a sub-sub categories of Shoes.', 'flat-sandals', '', 1, NULL, '2020-03-08 19:26:18', '2020-03-08 19:26:18'),
(84, 14, 'Leggings', 'Leggings is a sub-sub category of pant.', 'leggings', '', 1, NULL, '2020-03-08 19:26:30', '2020-03-08 19:26:30'),
(85, 23, 'Heels', 'Heels is a sub-sub categories of Shoes.', 'heels', '', 1, NULL, '2020-03-08 19:26:59', '2020-03-08 19:26:59'),
(86, 17, 'Long Panjabi', 'Long Panjabi is sub-sub category of panjabi.', 'longpanjabi', '', 1, NULL, '2020-03-08 19:27:09', '2020-03-08 19:27:09'),
(87, 17, 'Short Panjabi', 'Short Panjabi is a sub-sub Category of panjabi.', 'shortpanjabi', '', 1, NULL, '2020-03-08 19:28:37', '2020-03-08 19:28:37'),
(88, 23, 'Flat Shoes', 'Flat Shoes is a sub-sub categories of Shoes.', 'flat-shoes', '', 1, NULL, '2020-03-08 19:29:05', '2020-03-08 19:29:05'),
(89, 17, 'Fotua', 'Fotua is a sub-sub category of punjabi.', 'fotua', '', 1, NULL, '2020-03-08 19:29:18', '2020-03-08 19:29:18'),
(90, 23, 'Wedges', 'Wedges is a sub-sub categories of Shoes.', 'wedges', '', 1, NULL, '2020-03-08 19:29:38', '2020-03-08 19:29:38'),
(91, 23, 'Flip Flops', 'Flip Flops is a sub-sub categories of Shoes.', 'flip-flops', '', 1, NULL, '2020-03-08 19:30:11', '2020-03-08 19:30:11'),
(92, 20, 'koty', 'koty is a sub-sub category of Coat.', 'koty', '', 1, NULL, '2020-03-08 19:31:38', '2020-03-08 19:31:38'),
(93, 20, 'Blazer', 'Blazer is a sub-sub category of Coat.', 'blazer', '', 1, NULL, '2020-03-08 19:32:12', '2020-03-08 19:32:12'),
(94, 20, 'Waistcoat', 'Waistcoat is a sub-sub Category of Coat.', 'waistcoat', '', 1, NULL, '2020-03-08 19:32:40', '2020-03-08 19:32:40'),
(95, 20, 'Suit', 'Suit is sub-sub Category of Coat.', 'suit', '', 1, NULL, '2020-03-08 19:33:10', '2020-03-08 19:33:10'),
(96, 21, 'Lather Jacket', 'Lather Jacket is a sub-sub category of Jacket.', 'latherjacket', '', 1, NULL, '2020-03-08 19:33:52', '2020-03-08 19:33:52'),
(97, 10, 'Maxi Dress', 'Maxi Dress is a sub-sub categories of Women Long Dress.', 'maxi-dress', '', 1, NULL, '2020-03-08 19:33:52', '2020-03-08 19:33:52'),
(98, 10, 'Grawon', 'Grawon is a sub-sub categories of Women Long Dress.', 'grawon', '', 1, NULL, '2020-03-08 19:34:22', '2020-03-08 19:34:22'),
(99, 21, 'Non Lather Jacket', 'Non Lather Jacket is a sub-sub category of Jacket.', 'nonlatherjacket', '', 1, NULL, '2020-03-08 19:34:49', '2020-03-08 19:34:49'),
(100, 10, 'Party Dress', 'Party Dress is a sub-sub categories of Women Long Dress.', 'party-dress', '', 1, NULL, '2020-03-08 19:35:22', '2020-03-08 19:35:22'),
(101, 21, 'Rexine Jacket', 'Rexine Jacket is sub-sub Category of Jacket.', 'rexinejacket', '', 1, NULL, '2020-03-08 19:35:26', '2020-03-08 19:35:26'),
(102, 21, 'Jeans Jacket', 'Jeans Jacket is a sub- sub category of Jacket.', 'jeansjacket', '', 1, NULL, '2020-03-08 19:36:14', '2020-03-08 19:36:14'),
(103, 22, 'Lather Wallet', 'Lather Wallet is a sub-sub Category of Wallet', 'latherwallet', '', 1, NULL, '2020-03-08 19:36:46', '2020-03-08 19:36:46'),
(104, 22, 'Rexine Wallet', 'Rexine Wallet is sub-sub Category of Wallet.', 'rexinewallet', '', 1, NULL, '2020-03-08 19:37:23', '2020-03-08 19:37:23'),
(105, 25, 'Lather Belt', 'Lather Belt is a Sub-sub Category of Belt.', 'latherbelt', '', 1, NULL, '2020-03-08 19:38:00', '2020-03-08 19:38:00'),
(106, 25, 'Rexine Belt', 'Rexine Belt is a sub-sub Category of Bolt.', 'rexinebelt', '', 1, NULL, '2020-03-08 19:38:34', '2020-03-08 19:38:34'),
(107, 26, 'Lather Shoe', 'Lather Shoe is a sub-sub Category of Shoe.', 'lathershoe', '', 1, NULL, '2020-03-08 19:39:13', '2020-03-08 19:39:13'),
(108, 26, 'Non Lather Shoe', 'Non Lather Shoe is a sub-sub Category of shoe.', 'nonlathershoe', '', 1, NULL, '2020-03-08 19:39:47', '2020-03-08 19:39:47'),
(109, 26, 'Keds', 'Keds is a sub sub Category of Shoe.', 'keds', '', 1, NULL, '2020-03-08 19:40:15', '2020-03-08 19:40:15'),
(110, 26, 'Sports Keds', 'Sports Keds is a sub- sub Category of Shoe.', 'sportskeds', '', 1, NULL, '2020-03-08 19:40:52', '2020-03-08 19:40:52'),
(111, 26, 'Jogging Shoes', 'Jogging Shoes is sub-sub Category of Shoe.', 'joggingshoes', '', 1, NULL, '2020-03-08 19:41:23', '2020-03-08 19:41:23'),
(112, 24, 'Gowns', 'Gowns is a sub-sub categories of Wedding Dresses.', 'gowns', '', 1, NULL, '2020-03-08 19:41:49', '2020-03-08 19:41:49'),
(113, 24, 'Lehenga', 'Lehenga is a sub-sub categories of Wedding Dresses.', 'lehenga', '', 1, NULL, '2020-03-08 19:42:17', '2020-03-08 19:42:17'),
(114, 24, 'Party Dress', 'Party Dress is a sub-sub categories of Wedding Dresses.', 'party-dress', '', 1, NULL, '2020-03-08 19:43:03', '2020-03-08 19:43:03'),
(115, 24, 'Sharara', 'Sharara is a sub-sub categories of Wedding Dresses.', 'sharara', '', 1, NULL, '2020-03-08 19:43:35', '2020-03-08 19:43:35'),
(116, 24, 'Sharee', 'Sharee is a sub-sub categories of Wedding Dresses.', 'sharee', '', 1, NULL, '2020-03-08 19:44:14', '2020-03-08 19:44:14'),
(117, 24, 'Bridal Dupatta', 'Bridal Dupatta is a sub-sub categories of Wedding Dresses.', 'bridal-dupatta', '', 1, NULL, '2020-03-08 19:45:32', '2020-03-08 19:45:32'),
(118, 27, 'Scarves', 'Scarves is a sub-sub categories of Accessories .', 'scarves', '', 1, NULL, '2020-03-08 19:48:33', '2020-03-08 19:48:33'),
(119, 27, 'Jewellery', 'Jewellery is a sub-sub categories of Accessories .', 'Jewellery', '', 1, NULL, '2020-03-08 19:49:11', '2020-03-08 19:49:11'),
(120, 27, 'Hair Accessories', 'Hair Accessories is a sub-sub categories of Accessories .', 'hair-accessories', '', 1, NULL, '2020-03-08 19:50:01', '2020-03-08 19:50:01'),
(121, 27, 'Women\'s Umbrellas', 'Women\'s Umbrellas is a sub-sub categories of Accessories .', 'women-umbrellas', '', 1, NULL, '2020-03-08 19:50:40', '2020-03-08 19:50:40'),
(122, 28, 'Kurti', 'Kurti is a sub-sub categories of Traditional Clothing .', 'kurti', '', 1, NULL, '2020-03-08 19:58:17', '2020-03-08 19:58:17'),
(123, 28, 'Traditional sharee', 'Traditional sharee is a sub-sub categories of Traditional Clothing .', 'traditional-sharee', '', 1, NULL, '2020-03-08 19:59:09', '2020-03-08 19:59:09'),
(124, 28, 'Traditional Kamiz', 'Traditional Kamiz is a sub-sub categories of Traditional Clothing .', 'traditional-kamiz', '', 1, NULL, '2020-03-08 19:59:55', '2020-03-08 19:59:55'),
(125, 35, 'Strollers', 'Strollers is a sub-sub categories of Baby Gear.', 'strollers', '', 1, NULL, '2020-03-08 20:21:31', '2020-03-08 20:21:31'),
(126, 35, 'Swings, Jumpers & Bouncers', 'Swings, Jumpers & Bouncers  is a sub-sub categories of Baby Gear.', 'swings-jumpers-bouncers', '', 1, NULL, '2020-03-08 20:22:12', '2020-03-08 20:22:12'),
(127, 35, 'Backpacks & Carriers', 'Backpacks & Carriers  is a sub-sub categories of Baby Gear.', 'backpacks-carriers', '', 1, NULL, '2020-03-08 20:23:03', '2020-03-08 20:23:03'),
(128, 35, 'Baby Walkers', 'Baby Walkers is a sub-sub categories of Baby Gear.', 'baby-walkers', '', 1, NULL, '2020-03-08 20:23:51', '2020-03-08 20:23:51'),
(129, 37, 'Mattresses & Bedding', 'Mattresses & Bedding is a sub-sub categories of Nursery.', 'mattresses-bedding', '', 1, NULL, '2020-03-08 20:24:49', '2020-03-08 20:24:49'),
(130, 37, 'Baby Bathing Safety', 'Baby Bathing Safety is a sub-sub categories of Nursery.', 'baby-bathing-safety', '', 1, NULL, '2020-03-08 20:25:32', '2020-03-08 20:25:32'),
(131, 40, 'Baby Bath', 'Baby Bath is a sub-sub categories of Baby Personal Care.', 'baby-bath', '', 1, NULL, '2020-03-08 20:26:59', '2020-03-08 20:26:59'),
(132, 40, 'Baby Tube,seats', 'Baby Tube,seats is a sub-sub categories of Baby Personal Care.', 'baby-tube-seats', '', 1, NULL, '2020-03-08 20:28:39', '2020-03-08 20:28:39'),
(133, 40, 'Baby Soap', 'Baby Soap  is a sub-sub categories of Baby Personal Care.', 'baby-soap', '', 1, NULL, '2020-03-08 20:30:19', '2020-03-08 20:30:19'),
(134, 40, 'Baby Shampoo', 'Baby Shampoo is a sub-sub categories of Baby Personal Care.', 'baby-shampoo', '', 1, NULL, '2020-03-08 20:31:07', '2020-03-08 20:31:07'),
(135, 41, 'Girls Dress', 'Girls Dress is a sub-sub categories of Clothing & Accessories.', 'girls -dress', '', 1, NULL, '2020-03-08 20:32:23', '2020-03-08 20:32:23'),
(136, 41, 'Boys Dress', 'Boys Dress is a sub-sub categories of Clothing & Accessories.', 'boys-dress', '', 1, NULL, '2020-03-08 20:33:04', '2020-03-08 20:33:04'),
(137, 41, 'New Born Dress', 'New Born Dress is a sub-sub categories of Clothing & Accessories.', 'new-born-dress', '', 1, NULL, '2020-03-08 20:34:56', '2020-03-08 20:34:56'),
(138, 41, 'Baby Packages', 'Baby Packages is a sub-sub categories of Clothing & Accessories.', 'baby-packages', '', 1, NULL, '2020-03-08 20:35:36', '2020-03-08 20:35:36'),
(139, 42, 'Puzzle', 'Puzzle is a sub-sub categories of Baby Toys Shop.', 'puzzle', '', 1, NULL, '2020-03-08 21:10:48', '2020-03-08 21:10:48'),
(140, 42, 'Doll', 'Doll is a sub-sub categories of Baby Toys Shop.', 'doll', '', 1, NULL, '2020-03-08 21:13:05', '2020-03-08 21:13:05'),
(141, 42, 'Doll House', 'Doll House is a sub-sub categories of Baby Toys Shop.', 'doll-house', '', 1, NULL, '2020-03-08 21:14:14', '2020-03-08 21:14:14'),
(142, 42, 'Robot', 'Robot is a sub-sub categories of Baby Toys Shop.', 'robot', '', 1, NULL, '2020-03-08 21:15:20', '2020-03-08 21:15:20'),
(143, 42, 'Electric Toy', 'Electric Toy is a sub-sub categories of Baby Toys Shop.', 'Electric Toy', '', 1, NULL, '2020-03-08 21:16:26', '2020-03-08 21:16:26'),
(144, 43, 'Car', 'Car is a sub-sub categories of Remote Control Toy .', 'car', '', 1, NULL, '2020-03-08 21:19:50', '2020-03-08 21:19:50'),
(145, 43, 'Helicopter', 'Helicopter is a sub-sub categories of Remote Control Toy .', 'helicopter', '', 1, NULL, '2020-03-08 21:22:54', '2020-03-08 21:22:54'),
(146, 43, 'Bike', 'Bike is a sub-sub categories of Remote Control Toy .', 'bike', '', 1, NULL, '2020-03-08 21:24:09', '2020-03-08 21:24:09'),
(147, 44, 'Kids Tricycles', 'Kids Tricycles is a sub-sub categories of Sports & Outdoor Play.', 'kids-tricycles', '', 1, NULL, '2020-03-08 21:25:20', '2020-03-08 21:25:20'),
(148, 44, 'Boxing', 'Boxing Tricycles is a sub-sub categories of Sports & Outdoor Play.', 'boxing', '', 1, NULL, '2020-03-08 21:26:10', '2020-03-08 21:26:10'),
(149, 44, 'Baby Tent', 'Baby Tent Tricycles is a sub-sub categories of Sports & Outdoor Play.', 'baby-tent', '', 1, NULL, '2020-03-08 21:27:12', '2020-03-08 21:27:12'),
(150, 44, 'Outdoor Toys', 'Outdoor Toys Tricycles is a sub-sub categories of Sports & Outdoor Play.', 'outdoor-toys', '', 1, NULL, '2020-03-08 21:29:39', '2020-03-08 21:29:39'),
(151, 45, 'Board Game', 'Board Game is a sub-sub categories of Traditional Games .', 'board-game', '', 1, NULL, '2020-03-08 21:34:14', '2020-03-08 21:34:14'),
(152, 45, 'Indoor Game', 'Indoor Game is a sub-sub categories of Traditional Games .', 'indoor-game', '', 1, NULL, '2020-03-08 21:35:57', '2020-03-08 21:35:57'),
(153, 46, 'Cloth Diapers & Accessories', 'Cloth Diapers & Accessories is a sub-sub categories of Baby Diapers.', 'cloth-diapers-accessories', '', 1, NULL, '2020-03-08 21:37:05', '2020-03-08 21:37:05'),
(154, 46, 'Diaper Bags', 'Diaper Bags is a sub-sub categories of Baby Diapers.', 'diaper-bags', '', 1, NULL, '2020-03-08 21:39:38', '2020-03-08 21:39:38'),
(155, 46, 'Wipes & Holders', 'Wipes & Holders is a sub-sub categories of Baby Diapers.', 'wipes-holders', '', 1, NULL, '2020-03-08 21:41:12', '2020-03-08 21:41:12'),
(156, 4, 'Oral Hygiene Products', 'Oral Hygiene Products is a sub categories of Cosmetics.', 'oral-hygiene-products', '', 1, NULL, '2020-03-11 23:24:36', '2020-03-11 23:24:36'),
(157, 156, 'Dentifrices', 'Dentifrices is a sub sub categories of Oral Hygiene Products.', 'dentifrices', '', 1, NULL, '2020-03-11 23:26:00', '2020-03-11 23:26:00'),
(158, 156, 'Mouthwashes and Breath Fresheners', 'Mouthwashes and Breath Fresheners is a sub sub categories of Oral Hygiene Products.', 'mouthwashes-and-breath-fresheners', '', 1, NULL, '2020-03-11 23:27:26', '2020-03-11 23:27:26'),
(159, 4, 'Personal Cleanliness', 'Personal Cleanliness is a sub categories of Cosmetics.', 'personal-cleanliness', '', 1, NULL, '2020-03-11 23:29:24', '2020-03-11 23:29:24'),
(160, 159, 'Bath Soaps', 'Bath Soaps is a sub sub categories of Personal Cleanliness.', 'bath-soaps', '', 1, NULL, '2020-03-11 23:35:38', '2020-03-11 23:35:38'),
(161, 159, 'Detergents', 'Detergents is a sub sub categories of Personal Cleanliness.', 'detergents', '', 1, NULL, '2020-03-11 23:36:52', '2020-03-11 23:36:52'),
(162, 159, 'Deodorants (underarm)', 'Deodorants (underarm) is a sub sub categories of Personal Cleanliness.', 'deodorants', '', 1, NULL, '2020-03-11 23:38:36', '2020-03-11 23:38:36'),
(163, 159, 'Feminine Deodorants', 'Feminine Deodorants is a sub sub categories of Personal Cleanliness.', 'feminine-deodorants', '', 1, NULL, '2020-03-11 23:40:25', '2020-03-11 23:40:25'),
(164, 4, 'Fragrance Preparations', 'Fragrance Preparations is a sub categories of Cosmetics.', 'fragrance-preparations', '', 1, NULL, '2020-03-11 23:41:57', '2020-03-11 23:41:57'),
(165, 164, 'Perfumes', 'Perfumes is a sub sub categories of Fragrance Preparations.', 'perfumes', '', 1, NULL, '2020-03-11 23:44:22', '2020-03-11 23:44:22'),
(166, 164, 'Sachets', 'Sachets is a sub sub categories of Fragrance Preparations.', 'sachets', '', 1, NULL, '2020-03-11 23:45:23', '2020-03-11 23:45:23'),
(167, 164, 'Powders', 'Powders is a sub sub categories of Fragrance Preparations.', 'powders', '', 1, NULL, '2020-03-11 23:45:53', '2020-03-11 23:45:53'),
(168, 4, 'Hair Products', 'Hair Products is a sub categories of Cosmetics.', 'hair-products', '', 1, NULL, '2020-03-11 23:47:26', '2020-03-11 23:47:26'),
(169, 168, 'Hair Spray', 'Hair Spray is a sub sub categories of Oral Hair Products.', 'hair-spray', '', 1, NULL, '2020-03-11 23:49:41', '2020-03-11 23:49:41'),
(170, 168, 'Hair Straighteners', 'Hair Straighteners is a sub sub categories of Hair Products.', 'hair-straighteners', '', 1, NULL, '2020-03-11 23:51:03', '2020-03-11 23:51:03'),
(171, 168, 'Shampoos', 'Shampoos is a sub sub categories of Hair Products.', 'shampoos', '', 1, NULL, '2020-03-11 23:52:31', '2020-03-11 23:52:31'),
(172, 168, 'Wave Sets', 'Wave Sets is a sub sub categories of Hair Products.', 'wave-sets', '', 1, NULL, '2020-03-11 23:53:24', '2020-03-11 23:53:24'),
(173, 168, 'Hair Grooming Aids', 'Hair Grooming Aids is a sub sub categories of Hair Products.', 'hair-grooming-aids', '', 1, NULL, '2020-03-11 23:54:17', '2020-03-11 23:54:17'),
(174, 4, 'Skin Care', 'Skin Care is a sub categories of Cosmetics.', 'skin-care', '', 1, NULL, '2020-03-11 23:56:34', '2020-03-11 23:56:34'),
(175, 174, 'Moisturizing', 'Moisturizing is a sub sub categories of Skin Care.', 'moisturizing', '', 1, NULL, '2020-03-11 23:57:23', '2020-03-11 23:57:23'),
(176, 174, 'Foot Powders and Sprays', 'Foot Powders and Sprays is a sub sub categories of Skin Care.', 'Foot-powders-and-sprays', '', 1, NULL, '2020-03-11 23:58:04', '2020-03-11 23:58:04'),
(177, 174, 'Body and Hand', 'Body and Hand is a sub sub categories of Skin Care.', 'body-and-hand', '', 1, NULL, '2020-03-11 23:58:59', '2020-03-11 23:58:59'),
(178, 174, 'Face and Neck', 'Face and Neck is a sub sub categories of Skin Care.', 'face-and-neck', '', 1, NULL, '2020-03-11 23:59:52', '2020-03-11 23:59:52'),
(179, 174, 'Skin Fresheners', 'Skin Fresheners is a sub sub categories of Skin Care.', 'skin-fresheners', '', 1, NULL, '2020-03-12 00:00:32', '2020-03-12 00:00:32'),
(180, 4, 'Shaving', 'Shaving is a sub categories of Cosmetics.', 'shaving', '', 1, NULL, '2020-03-12 00:01:32', '2020-03-12 00:01:32'),
(181, 180, 'Aftershave Lotion', 'Aftershave Lotion is a sub sub categories of Shaving.', 'aftershave-lotion', '', 1, NULL, '2020-03-12 00:03:20', '2020-03-12 00:03:20'),
(182, 180, 'Beard Softeners', 'Beard Softeners is a sub sub categories of Shaving.', 'beard-softeners', '', 1, NULL, '2020-03-12 00:04:07', '2020-03-12 00:04:07'),
(183, 180, 'Shaving Cream', 'Shaving Cream is a sub sub categories of Shaving.', 'shaving-cream', '', 1, NULL, '2020-03-12 00:04:43', '2020-03-12 00:04:43'),
(184, 180, 'Shaving Soap', 'Shaving Soap is a sub sub categories of Shaving.', 'shaving-soap', '', 1, NULL, '2020-03-12 00:05:16', '2020-03-12 00:05:16'),
(185, 4, 'Manicuring', 'Manicuring is a sub categories of Cosmetics.', 'manicuring', '', 1, NULL, '2020-03-12 00:07:42', '2020-03-12 00:07:42'),
(186, 185, 'Nail Creams and Lotions', 'Nail Creams and Lotions  is a sub sub categories of Manicuring.', 'nail-creams and-lotions', '', 1, NULL, '2020-03-12 00:08:55', '2020-03-12 00:08:55'),
(187, 185, 'Nail Extenders', 'Nail Extenders is a sub sub categories of Manicuring.', 'nail-extenders', '', 1, NULL, '2020-03-12 00:09:43', '2020-03-12 00:09:43'),
(188, 185, 'Nail Polish and Enamel', 'Nail Polish and Enamel is a sub sub categories of Manicuring.', 'nail-polish-and-enamel', '', 1, NULL, '2020-03-12 00:11:10', '2020-03-12 00:11:10'),
(189, 185, 'Nail Polish and Enamel', 'Nail Polish and Enamel is a sub sub categories of Manicuring.', 'nail-polish-and-enamel', '', 1, NULL, '2020-03-12 00:14:55', '2020-03-12 00:14:55'),
(190, 185, 'Nail Polish and Enamel Removers', 'Nail Polish and Enamel Removers is a sub sub categories of Manicuring.', 'nail-polish-removers', '', 1, NULL, '2020-03-12 00:15:53', '2020-03-12 00:15:53'),
(191, 4, 'Eye Makeup', 'Eye Makeup Products is a sub categories of Cosmetics.', 'eye-makeup', '', 1, NULL, '2020-03-12 00:18:55', '2020-03-12 00:18:55'),
(192, 191, 'Eyeliner', 'Eyeliner is a sub sub categories of Eye Makeup.', 'eyeliner', '', 1, NULL, '2020-03-12 00:20:03', '2020-03-12 00:20:03'),
(193, 191, 'Eyebrow Pencil', 'Eyebrow Pencil is a sub sub categories of Eye Makeup.', 'eyebrow-pencil', '', 1, NULL, '2020-03-12 00:21:00', '2020-03-12 00:21:00'),
(194, 191, 'Eye Shadow', 'Eye Shadow is a sub sub categories of Eye Makeup.', 'eye-shadow', '', 1, NULL, '2020-03-12 00:23:26', '2020-03-12 00:23:26'),
(195, 191, 'Eye Lotion', 'Eye Lotion is a sub sub categories of Eye Makeup.', 'eye-lotion', '', 1, NULL, '2020-03-12 00:24:14', '2020-03-12 00:24:14'),
(196, 191, 'Mascara', 'Mascara is a sub sub categories of Eye Makeup.', 'Mascara', '', 1, NULL, '2020-03-12 00:25:04', '2020-03-12 00:25:04'),
(197, 4, 'Makeup Products', 'Makeup Products is a sub categories of Cosmetics.', 'makeup-products', '', 1, NULL, '2020-03-12 00:26:40', '2020-03-12 00:26:40'),
(198, 197, 'Foundations', 'Foundations is a sub sub categories of Makeup Products.', 'foundations', '', 1, NULL, '2020-03-12 00:36:33', '2020-03-12 00:36:33'),
(199, 197, 'Face Powders', 'Face Powders is a sub sub categories of Makeup Products.', 'face-powders', '', 1, NULL, '2020-03-12 00:37:04', '2020-03-12 00:37:04'),
(200, 197, 'Makeup Fixatives', 'Makeup Fixatives is a sub sub categories of Makeup Products.', 'makeup-fixatives', '', 1, NULL, '2020-03-12 00:37:59', '2020-03-12 00:37:59'),
(201, 197, 'Makeup Bases', 'Makeup Bases is a sub sub categories of Makeup Products.', 'makeup-bases', '', 1, NULL, '2020-03-12 00:38:29', '2020-03-12 00:38:29'),
(202, 197, 'Lipstick', 'Lipstick is a sub sub categories of Makeup Products.', 'lipstick', '', 1, NULL, '2020-03-12 00:38:58', '2020-03-12 00:38:58'),
(203, 197, 'Blushers', 'Blushers is a sub sub categories of Makeup Products.', 'blushers', '', 1, NULL, '2020-03-12 00:39:23', '2020-03-12 00:39:23'),
(204, 6, 'Televisions', 'TVs always get the final say where the couch goes. We want to shake things up and give you the freedom to decorate the way you want to, not the way you have to. It’s fun, playful and unique, and it goes anywhere.', 'television', '', 1, NULL, '2020-03-13 23:50:22', '2020-03-13 23:50:22'),
(205, 6, 'Home Audio', 'Home Audio is a sub Category .', 'home-audio', '', 1, NULL, '2020-03-13 23:52:21', '2020-03-13 23:52:21'),
(206, 6, 'Large_Appliances', 'Large_Appliances is a sub Categor.', 'large-appliance', '', 1, NULL, '2020-03-13 23:54:09', '2020-03-13 23:54:09'),
(207, 6, 'Kitchen Appliances', 'Kitchen_Appliance is a sub sub category of Home appliance.', 'kitchen-appliance', '', 1, NULL, '2020-03-13 23:56:37', '2020-03-13 23:56:37'),
(208, 6, 'Cooling & Heating', 'Cooling & Heating is a Sub Sub Category of Home Appliance.', 'cooling-heating', '', 1, NULL, '2020-03-13 23:58:25', '2020-03-13 23:58:25'),
(209, 6, 'Ironing & Sewing Machine', 'Ironing & Sewing Machine is a Sub Sub Category of Home Appliance.', 'ironing', '', 1, NULL, '2020-03-14 00:00:25', '2020-03-14 00:00:25'),
(210, 6, 'Vacuums & Floor Care', 'Vacuums & Floor Care is a sub Category of Home Appliance', 'vacuums', '', 1, NULL, '2020-03-14 00:07:42', '2020-03-14 00:07:42'),
(211, 6, 'TV Accessories', 'TV_Accessories is a sub category of Home Appliance', 'tvaccessories', '', 1, NULL, '2020-03-14 00:09:05', '2020-03-14 00:09:05'),
(212, 6, 'Refrigeration', 'Refrigeration is a Sub Category of Home Appliance', 'refrigeration', '', 1, NULL, '2020-03-14 00:11:36', '2020-03-14 00:11:36'),
(213, 7, 'Mobile Phones', 'Mobile Phone is a Sub category of Cell_Phone', 'mobile', '', 1, NULL, '2020-03-14 00:15:09', '2020-03-14 00:15:09'),
(214, 213, 'Xiaomi Mobiles', 'Xiaomi_Mobiles is a Sub Sub Category of Mobile Phones.', 'xiaomi', '', 1, NULL, '2020-03-14 00:20:43', '2020-03-14 00:20:43'),
(215, 213, 'Samsung Mobile', 'Samsung Mobile is a Sub Sub Category of Mobile Phones', 'samsung', '', 1, NULL, '2020-03-14 00:22:30', '2020-03-14 00:22:30'),
(216, 213, 'Nokia Mobile', 'Nokia Mobile is a Sub Sub Category of Mobile phone.', 'nokia', '', 1, NULL, '2020-03-14 00:23:28', '2020-03-14 00:23:28'),
(217, 213, 'Huawei Mobile', 'Huawei Mobile phone is a Sub Sub category of Mobile phone.', 'huawei', '', 1, NULL, '2020-03-14 00:24:21', '2020-03-14 00:24:21'),
(218, 213, 'Huawei Mobile', 'Huawei Mobile phone is a Sub Sub category of Mobile phone.', 'huawei', '', 1, NULL, '2020-03-14 00:24:45', '2020-03-14 00:24:45'),
(219, 213, 'Motorola Mobile Phones', 'Motorola Mobile Phones is a Sub Sub Category of Mobile phone', 'motorola', '', 1, NULL, '2020-03-14 00:25:28', '2020-03-14 00:25:28'),
(220, 213, 'Vivo Mobile Phones', 'Vivo Mobile Phones is a Sub Sub Category of Mobile phone', 'vivo', '', 1, NULL, '2020-03-14 00:28:48', '2020-03-14 00:28:48'),
(221, 204, 'Smart Televisions', 'Smart Televisions is a Sub Sub Category of Television', 'television', '', 1, NULL, '2020-03-14 00:30:11', '2020-03-14 00:30:11'),
(222, 204, 'LED Televisions', 'LED Televisions is a Sub Sub Category of Television', 'ledtele', '', 1, NULL, '2020-03-14 00:31:02', '2020-03-14 00:31:02'),
(223, 205, 'Home Entertainment', 'Home Entertainment is a sub sub category of Home Audio', 'homeen', '', 1, NULL, '2020-03-14 00:32:32', '2020-03-14 00:32:32'),
(224, 205, 'Portable Players', 'Portable Players is a Sub Sub category of Home Audio', 'portable', '', 1, NULL, '2020-03-14 00:33:18', '2020-03-14 00:33:18'),
(225, 206, 'Washing Machines', 'Washing Machines is a sub sub category', 'washing', '', 1, NULL, '2020-03-14 00:34:10', '2020-03-14 00:34:10'),
(226, 206, 'Ovens', 'Ovens is a sub sub category of Ovens', 'ovens', '', 1, NULL, '2020-03-14 00:35:01', '2020-03-14 00:35:01'),
(227, 207, 'Rice Cookers', 'Rice Cookers is a sub sub category of Kitchen Appliances', 'ricecookers', '', 1, NULL, '2020-03-14 00:36:06', '2020-03-14 00:36:06'),
(228, 207, 'Coffee Machines', 'Coffee Machines is a sub sub category of Kitchen Appliances', 'coffeemachin', '', 1, NULL, '2020-03-14 00:37:22', '2020-03-14 00:37:22'),
(229, 207, 'Stovetop Pressure Cookers', 'Stovetop Pressure Cookers sub sub category', 'pressure', '', 1, NULL, '2020-03-14 00:38:08', '2020-03-14 00:38:08'),
(230, 208, 'Fans', 'Fans is sub sub category', 'fans', '', 1, NULL, '2020-03-14 00:38:43', '2020-03-14 00:38:43'),
(231, 208, 'Air Conditioners', 'Air Conditioners is a sub sub category of Cooling & Heating', 'airco', '', 1, NULL, '2020-03-14 00:39:38', '2020-03-14 00:39:38'),
(232, 208, 'Water Heaters', 'Water Heaters is a sub sub category', 'waterheat', '', 1, NULL, '2020-03-14 00:40:20', '2020-03-14 00:40:20'),
(233, 210, 'Vacuum Cleaners', 'Vacuum Cleaners is a sub sub category', 'vacuum', '', 1, NULL, '2020-03-14 00:41:19', '2020-03-14 00:41:19'),
(234, 210, 'Steam Mops', 'Steam Mops sub sub category', 'steammops', '', 1, NULL, '2020-03-14 00:42:06', '2020-03-14 00:42:06'),
(235, 209, 'Irons', 'Irons is sub sub category', 'irons', '', 1, NULL, '2020-03-14 00:43:06', '2020-03-14 00:43:06'),
(236, 211, 'TV Receivers', 'TV Receivers is a sub sub category', 'rerceiv', '', 1, NULL, '2020-03-15 03:53:00', '2020-03-15 03:53:00'),
(237, 211, 'Projectors', 'projector is a sub sub category', 'projector', '', 1, NULL, '2020-03-15 03:53:55', '2020-03-15 03:53:55'),
(238, 212, 'Inverter Refrigerator', 'Inverter Refrigerator is a sub sub category of Refrigeration', 'reftigerator', '', 1, NULL, '2020-03-15 03:57:51', '2020-03-15 03:57:51'),
(239, 212, 'Frost Refrigerator', 'Frost Refrigerator is a sub sub category of  Refrigeration.', 'frostref', '', 1, NULL, '2020-03-15 03:59:13', '2020-03-15 03:59:13'),
(240, 0, 'Sports & Outdoor', 'Sports & Outdoor is a main category', 'sports-outdoor', '', 1, NULL, '2020-07-07 07:34:12', '2020-07-07 07:34:12'),
(241, 240, 'Exercise & Fitness', 'Exercise & Fitness is a sub category', 'exercise-fitness', '', 1, NULL, '2020-07-07 07:37:10', '2020-07-07 07:37:10'),
(242, 240, 'Racket Sports', 'Racket Sports is a sub category', 'racket-sports', '', 1, NULL, '2020-07-07 07:38:35', '2020-07-07 07:38:35'),
(243, 240, 'Team Sports', 'Team Sports is a sub category', 'team-sports', '', 1, NULL, '2020-07-07 07:39:30', '2020-07-07 07:39:30'),
(244, 240, 'Cycling', 'Cycling is a sub category', 'cycling', '', 1, NULL, '2020-07-07 07:40:48', '2020-07-07 07:40:48'),
(245, 241, 'Exercise Bikes', 'Exercise Bikes is a sub sub category', 'exercise-bikes', '', 1, NULL, '2020-07-07 07:42:20', '2020-07-07 07:42:20'),
(246, 241, 'Elliptical Trainers', 'Elliptical Trainers is a sub sub category', 'elliptical-trainers', '', 1, NULL, '2020-07-07 07:43:16', '2020-07-07 07:43:16'),
(247, 242, 'Badminton', 'Badminton is a sub sub category', 'badminton', '', 1, NULL, '2020-07-07 07:44:28', '2020-07-07 07:44:28'),
(248, 242, 'Squash', 'Squash is a sub sub category', 'squash', '', 1, NULL, '2020-07-07 07:45:08', '2020-07-07 07:45:08'),
(249, 243, 'Football', 'Football is a sub sub category', 'football', '', 1, NULL, '2020-07-07 07:46:10', '2020-07-07 07:46:10'),
(250, 243, 'Cricket', 'Cricket is a sub sub category', 'cricket', '', 1, NULL, '2020-07-07 07:46:37', '2020-07-07 07:46:37'),
(251, 244, 'Bicycle', 'Bicycle is a sub sub category', 'bicycle', '', 1, NULL, '2020-07-07 07:47:29', '2020-07-07 07:47:29'),
(252, 244, 'Bicycle Accessories', 'Bicycle Accessories  is a sub sub category', 'bicycle-accessories', '', 1, NULL, '2020-07-07 07:48:28', '2020-07-07 07:48:28');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `manufacturer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manufacturer_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`id`, `manufacturer_name`, `url`, `manufacturer_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'Daraz', 'daraz', 'Manufacturer Description', 1, '2020-03-04 20:29:44', '2020-03-04 20:29:44'),
(2, 'Priyo Shop', 'priyoshop', 'priyo shop', 1, '2020-03-08 20:50:26', '2020-03-08 20:50:26'),
(3, 'Ali Baba', 'alibaba', 'alibaba express', 1, '2020-03-08 20:50:46', '2020-03-08 20:50:46'),
(4, 'Ajker Deal', 'ajker-deal', 'ajker deal', 1, '2020-03-08 20:51:05', '2020-03-08 20:51:05'),
(5, 'ZARA Fashion', 'zara', 'zara fashion', 1, '2020-03-08 20:51:36', '2020-03-08 20:51:36'),
(6, 'Aarong', 'aarong', 'Aarong group', 1, '2020-03-08 20:52:23', '2020-03-08 20:52:23'),
(7, 'Cats Eye', 'cats-eye', 'cats eye', 1, '2020-03-08 20:53:54', '2020-03-08 20:53:54');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(190, '2014_10_12_100000_create_password_resets_table', 1),
(191, '2019_04_20_092247_create_categories_table', 1),
(192, '2019_04_22_094152_create_manufacturers_table', 1),
(193, '2019_11_21_164755_create_products_table', 1),
(196, '2019_11_26_192408_create_payments_table', 1),
(198, '2020_01_09_174456_create_admins_table', 1),
(199, '2020_02_05_135634_create_slider_images_table', 1),
(200, '2020_02_11_044934_create_product_statuses_table', 1),
(201, '2020_02_21_182205_create_products_attributes_table', 1),
(202, '2020_03_01_145159_create_vendors_table', 1),
(203, '2020_03_02_055540_create_permission_tables', 1),
(204, '2020_03_03_052141_create_reviews_table', 1),
(206, '2014_10_12_000000_create_users_table', 2),
(209, '2019_11_26_192345_create_orders_table', 4),
(211, '2019_11_26_181156_create_shippings_table', 5),
(213, '2019_11_26_192442_create_order_details_table', 6),
(214, '2020_07_08_141227_create_wishlists_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `order_total` double(10,2) NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `shipping_id`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(1, 39, 1, 1060.80, 'New', '2020-07-17 09:49:52', '2020-07-17 09:49:52'),
(2, 38, 2, 306.00, 'New', '2020-07-17 12:23:13', '2020-07-17 12:23:13'),
(3, 38, 2, 1060.80, 'New', '2020-07-24 08:47:03', '2020-07-24 08:47:03'),
(4, 38, 2, 6120.00, 'New', '2020-07-24 09:19:26', '2020-07-24 09:19:26'),
(5, 38, 2, 306.00, 'New', '2020-07-24 12:49:12', '2020-07-24 12:49:12'),
(6, 38, 2, 1326.00, 'New', '2020-07-24 13:06:16', '2020-07-24 13:06:16'),
(7, 38, 2, 1275.00, 'New', '2020-07-24 13:25:24', '2020-07-24 13:25:24'),
(8, 38, 2, 2550.00, 'New', '2020-07-24 13:39:19', '2020-07-24 13:39:19'),
(9, 38, 2, 561.00, 'New', '2020-07-24 13:52:33', '2020-07-24 13:52:33'),
(10, 38, 2, 816.00, 'New', '2020-07-24 14:35:22', '2020-07-24 14:35:22'),
(11, 38, 2, 3060.00, 'New', '2020-07-25 08:57:41', '2020-07-25 08:57:41'),
(12, 38, 2, 306.00, 'New', '2020-07-25 09:05:03', '2020-07-25 09:05:03'),
(13, 38, 2, 510.00, 'New', '2020-07-25 09:07:19', '2020-07-25 09:07:19'),
(14, 38, 2, 306.00, 'New', '2020-07-25 09:17:33', '2020-07-25 09:17:33'),
(15, 38, 2, 255.00, 'New', '2020-07-25 09:23:09', '2020-07-25 09:23:09'),
(16, 38, 2, 816.00, 'New', '2020-07-25 09:28:48', '2020-07-25 09:28:48'),
(17, 38, 2, 2448.00, 'New', '2020-07-25 09:31:56', '2020-07-25 09:31:56'),
(18, 38, 2, 4998.00, 'New', '2020-07-25 09:38:45', '2020-07-25 09:38:45'),
(19, 38, 2, 4998.00, 'New', '2020-07-25 09:43:48', '2020-07-25 09:43:48'),
(20, 38, 2, 4998.00, 'New', '2020-07-25 09:49:54', '2020-07-25 09:49:54'),
(21, 38, 2, 1428.00, 'New', '2020-07-25 11:02:45', '2020-07-25 11:02:45'),
(22, 40, 3, 530.40, 'New', '2020-08-19 11:19:34', '2020-08-19 11:19:34'),
(23, 40, 3, 306.00, 'New', '2020-08-21 10:37:13', '2020-08-21 10:37:13'),
(24, 38, 2, 6783.00, 'New', '2020-08-22 02:23:49', '2020-08-22 02:23:49'),
(25, 41, 4, 173.40, 'New', '2020-08-22 11:23:12', '2020-08-22 11:23:12'),
(26, 41, 4, 5814.00, 'New', '2020-08-22 11:38:09', '2020-08-22 11:38:09'),
(27, 41, 4, 2856.00, 'New', '2020-08-22 11:53:54', '2020-08-22 11:53:54'),
(28, 41, 4, 6466.80, 'New', '2020-08-22 12:38:19', '2020-08-22 12:38:19'),
(29, 41, 4, 3978.00, 'New', '2020-08-22 12:47:31', '2020-08-22 12:47:31'),
(30, 41, 4, 12240.00, 'New', '2020-08-22 12:58:18', '2020-08-22 12:58:18'),
(31, 41, 4, 12240.00, 'New', '2020-08-22 12:59:42', '2020-08-22 12:59:42'),
(32, 41, 4, 12240.00, 'New', '2020-08-22 13:02:49', '2020-08-22 13:02:49'),
(33, 41, 4, 12240.00, 'New', '2020-08-22 13:07:29', '2020-08-22 13:07:29'),
(34, 41, 4, 12240.00, 'New', '2020-08-22 13:10:14', '2020-08-22 13:10:14'),
(35, 41, 4, 1836.00, 'New', '2020-08-22 13:18:59', '2020-08-22 13:18:59'),
(36, 41, 4, 1836.00, 'New', '2020-08-22 13:19:24', '2020-08-22 13:19:24'),
(37, 41, 4, 5100.00, 'New', '2020-08-22 13:21:07', '2020-08-22 13:21:07'),
(38, 41, 4, 204.00, 'New', '2020-08-22 13:24:37', '2020-08-22 13:24:37'),
(39, 41, 4, 150960.00, 'New', '2020-08-22 13:28:56', '2020-08-22 13:28:56'),
(40, 41, 4, 79048.00, 'New', '2020-08-23 11:24:26', '2020-08-23 11:24:26'),
(41, 41, 4, 26617.00, 'New', '2020-08-23 11:31:17', '2020-08-23 11:31:17');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `size`, `color`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 11, NULL, NULL, 2, '2020-07-17 09:49:53', '2020-07-17 09:49:53'),
(2, 2, 9, NULL, NULL, 1, '2020-07-17 12:23:13', '2020-07-17 12:23:13'),
(3, 3, 11, NULL, NULL, 2, '2020-07-24 08:47:03', '2020-07-24 08:47:03'),
(4, 4, 123, NULL, NULL, 3, '2020-07-24 09:19:26', '2020-07-24 09:19:26'),
(5, 5, 8, NULL, NULL, 1, '2020-07-24 12:49:12', '2020-07-24 12:49:12'),
(6, 6, 16, NULL, NULL, 2, '2020-07-24 13:06:16', '2020-07-24 13:06:16'),
(7, 7, 7, NULL, NULL, 5, '2020-07-24 13:25:24', '2020-07-24 13:25:24'),
(8, 8, 5, NULL, NULL, 1, '2020-07-24 13:39:19', '2020-07-24 13:39:19'),
(9, 9, 7, NULL, NULL, 1, '2020-07-24 13:52:33', '2020-07-24 13:52:33'),
(10, 9, 8, NULL, NULL, 1, '2020-07-24 13:52:33', '2020-07-24 13:52:33'),
(11, 10, 10, NULL, NULL, 1, '2020-07-24 14:35:22', '2020-07-24 14:35:22'),
(12, 11, 71, NULL, NULL, 1, '2020-07-25 08:57:41', '2020-07-25 08:57:41'),
(13, 12, 8, NULL, NULL, 1, '2020-07-25 09:05:03', '2020-07-25 09:05:03'),
(14, 13, 20, NULL, NULL, 1, '2020-07-25 09:07:19', '2020-07-25 09:07:19'),
(15, 14, 9, NULL, NULL, 1, '2020-07-25 09:17:33', '2020-07-25 09:17:33'),
(16, 15, 7, NULL, NULL, 1, '2020-07-25 09:23:09', '2020-07-25 09:23:09'),
(17, 16, 12, NULL, NULL, 1, '2020-07-25 09:28:48', '2020-07-25 09:28:48'),
(18, 17, 13, NULL, NULL, 2, '2020-07-25 09:31:56', '2020-07-25 09:31:56'),
(19, 18, 13, NULL, NULL, 2, '2020-07-25 09:38:45', '2020-07-25 09:38:45'),
(20, 18, 5, NULL, NULL, 1, '2020-07-25 09:38:45', '2020-07-25 09:38:45'),
(21, 19, 13, NULL, NULL, 2, '2020-07-25 09:43:48', '2020-07-25 09:43:48'),
(22, 19, 5, NULL, NULL, 1, '2020-07-25 09:43:48', '2020-07-25 09:43:48'),
(23, 20, 13, NULL, NULL, 2, '2020-07-25 09:49:54', '2020-07-25 09:49:54'),
(24, 20, 5, NULL, NULL, 1, '2020-07-25 09:49:54', '2020-07-25 09:49:54'),
(25, 21, 40, NULL, NULL, 2, '2020-07-25 11:02:45', '2020-07-25 11:02:45'),
(26, 22, 11, NULL, NULL, 1, '2020-08-19 11:19:34', '2020-08-19 11:19:34'),
(27, 23, 8, NULL, NULL, 1, '2020-08-21 10:37:13', '2020-08-21 10:37:13'),
(28, 24, 16, NULL, NULL, 1, '2020-08-22 02:23:49', '2020-08-22 02:23:49'),
(29, 24, 20, NULL, NULL, 1, '2020-08-22 02:23:49', '2020-08-22 02:23:49'),
(30, 24, 23, NULL, NULL, 1, '2020-08-22 02:23:49', '2020-08-22 02:23:49'),
(31, 24, 24, NULL, NULL, 1, '2020-08-22 02:23:49', '2020-08-22 02:23:49'),
(32, 24, 39, NULL, NULL, 1, '2020-08-22 02:23:49', '2020-08-22 02:23:49'),
(33, 25, 147, NULL, NULL, 1, '2020-08-22 11:23:12', '2020-08-22 11:23:12'),
(34, 26, 183, NULL, NULL, 1, '2020-08-22 11:38:09', '2020-08-22 11:38:09'),
(35, 27, 165, NULL, NULL, 1, '2020-08-22 11:53:54', '2020-08-22 11:53:54'),
(36, 28, 105, NULL, NULL, 1, '2020-08-22 12:38:19', '2020-08-22 12:38:19'),
(37, 28, 177, NULL, NULL, 1, '2020-08-22 12:38:19', '2020-08-22 12:38:19'),
(38, 28, 24, NULL, NULL, 1, '2020-08-22 12:38:19', '2020-08-22 12:38:19'),
(39, 29, 43, NULL, NULL, 1, '2020-08-22 12:47:31', '2020-08-22 12:47:31'),
(40, 29, 125, NULL, NULL, 1, '2020-08-22 12:47:31', '2020-08-22 12:47:31'),
(41, 30, 118, NULL, NULL, 1, '2020-08-22 12:58:18', '2020-08-22 12:58:18'),
(42, 31, 118, NULL, NULL, 1, '2020-08-22 12:59:42', '2020-08-22 12:59:42'),
(43, 32, 118, NULL, NULL, 1, '2020-08-22 13:02:49', '2020-08-22 13:02:49'),
(44, 33, 118, NULL, NULL, 1, '2020-08-22 13:07:29', '2020-08-22 13:07:29'),
(45, 34, 118, NULL, NULL, 1, '2020-08-22 13:10:14', '2020-08-22 13:10:14'),
(46, 35, 152, NULL, NULL, 2, '2020-08-22 13:18:59', '2020-08-22 13:18:59'),
(47, 36, 152, NULL, NULL, 2, '2020-08-22 13:19:24', '2020-08-22 13:19:24'),
(48, 37, 105, NULL, NULL, 1, '2020-08-22 13:21:07', '2020-08-22 13:21:07'),
(49, 38, 61, NULL, NULL, 1, '2020-08-22 13:24:37', '2020-08-22 13:24:37'),
(50, 39, 96, NULL, NULL, 1, '2020-08-22 13:28:56', '2020-08-22 13:28:56'),
(51, 39, 169, NULL, NULL, 1, '2020-08-22 13:28:56', '2020-08-22 13:28:56'),
(52, 40, 93, NULL, NULL, 1, '2020-08-23 11:24:26', '2020-08-23 11:24:26'),
(53, 40, 139, NULL, NULL, 1, '2020-08-23 11:24:26', '2020-08-23 11:24:26'),
(54, 40, 55, NULL, NULL, 1, '2020-08-23 11:24:26', '2020-08-23 11:24:26'),
(55, 40, 107, NULL, NULL, 1, '2020-08-23 11:24:26', '2020-08-23 11:24:26'),
(56, 40, 159, NULL, NULL, 1, '2020-08-23 11:24:26', '2020-08-23 11:24:26'),
(57, 40, 90, NULL, NULL, 1, '2020-08-23 11:24:26', '2020-08-23 11:24:26'),
(58, 40, 138, NULL, NULL, 1, '2020-08-23 11:24:26', '2020-08-23 11:24:26'),
(59, 40, 170, NULL, NULL, 1, '2020-08-23 11:24:26', '2020-08-23 11:24:26'),
(60, 40, 46, NULL, NULL, 1, '2020-08-23 11:24:26', '2020-08-23 11:24:26'),
(61, 40, 95, NULL, NULL, 1, '2020-08-23 11:24:26', '2020-08-23 11:24:26'),
(62, 40, 173, NULL, NULL, 1, '2020-08-23 11:24:26', '2020-08-23 11:24:26'),
(63, 41, 172, NULL, NULL, 1, '2020-08-23 11:31:17', '2020-08-23 11:31:17');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `payment_type`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, 1, 'CoD', 'Pending', '2020-07-17 09:49:53', '2020-07-17 09:49:53'),
(2, 2, 'PayPal', 'Pending', '2020-07-17 12:23:13', '2020-07-17 12:23:13'),
(3, 3, 'CoD', 'Pending', '2020-07-24 08:47:03', '2020-07-24 08:47:03'),
(4, 4, 'CoD', 'Pending', '2020-07-24 09:19:26', '2020-07-24 09:19:26'),
(5, 5, 'CoD', 'Pending', '2020-07-24 12:49:12', '2020-07-24 12:49:12'),
(6, 6, 'Stripe', 'Pending', '2020-07-24 13:06:16', '2020-07-24 13:06:16'),
(7, 7, 'Stripe', 'Pending', '2020-07-24 13:25:24', '2020-07-24 13:25:24'),
(8, 8, 'Stripe', 'Pending', '2020-07-24 13:39:19', '2020-07-24 13:39:19'),
(9, 9, 'Stripe', 'Pending', '2020-07-24 13:52:33', '2020-07-24 13:52:33'),
(10, 10, 'Stripe', 'Pending', '2020-07-24 14:35:22', '2020-07-24 14:35:22'),
(11, 11, 'Stripe', 'Pending', '2020-07-25 08:57:41', '2020-07-25 08:57:41'),
(12, 12, 'Stripe', 'Pending', '2020-07-25 09:05:03', '2020-07-25 09:05:03'),
(13, 13, 'Stripe', 'Pending', '2020-07-25 09:07:19', '2020-07-25 09:07:19'),
(14, 14, 'CoD', 'Pending', '2020-07-25 09:17:33', '2020-07-25 09:17:33'),
(15, 15, 'Stripe', 'Pending', '2020-07-25 09:23:09', '2020-07-25 09:23:09'),
(16, 16, 'Stripe', 'Pending', '2020-07-25 09:28:48', '2020-07-25 09:28:48'),
(17, 17, 'Stripe', 'Pending', '2020-07-25 09:31:56', '2020-07-25 09:31:56'),
(18, 18, 'Stripe', 'Pending', '2020-07-25 09:38:45', '2020-07-25 09:38:45'),
(19, 19, 'Stripe', 'Pending', '2020-07-25 09:43:48', '2020-07-25 09:43:48'),
(20, 20, 'Stripe', 'Pending', '2020-07-25 09:49:54', '2020-07-25 09:49:54'),
(21, 21, 'CoD', 'Pending', '2020-07-25 11:02:45', '2020-07-25 11:02:45'),
(22, 22, 'CoD', 'Pending', '2020-08-19 11:19:34', '2020-08-19 11:19:34'),
(23, 23, 'CoD', 'Pending', '2020-08-21 10:37:13', '2020-08-21 10:37:13'),
(24, 24, 'CoD', 'Pending', '2020-08-22 02:23:49', '2020-08-22 02:23:49'),
(25, 25, 'CoD', 'Pending', '2020-08-22 11:23:12', '2020-08-22 11:23:12'),
(26, 26, 'CoD', 'Pending', '2020-08-22 11:38:09', '2020-08-22 11:38:09'),
(27, 27, 'CoD', 'Pending', '2020-08-22 11:53:54', '2020-08-22 11:53:54'),
(28, 28, 'CoD', 'Pending', '2020-08-22 12:38:19', '2020-08-22 12:38:19'),
(29, 29, 'CoD', 'Pending', '2020-08-22 12:47:31', '2020-08-22 12:47:31'),
(30, 30, 'CoD', 'Pending', '2020-08-22 12:58:18', '2020-08-22 12:58:18'),
(31, 31, 'CoD', 'Pending', '2020-08-22 12:59:42', '2020-08-22 12:59:42'),
(32, 32, 'CoD', 'Pending', '2020-08-22 13:02:49', '2020-08-22 13:02:49'),
(33, 33, 'CoD', 'Pending', '2020-08-22 13:07:29', '2020-08-22 13:07:29'),
(34, 34, 'CoD', 'Pending', '2020-08-22 13:10:14', '2020-08-22 13:10:14'),
(35, 35, 'CoD', 'Pending', '2020-08-22 13:18:59', '2020-08-22 13:18:59'),
(36, 36, 'CoD', 'Pending', '2020-08-22 13:19:24', '2020-08-22 13:19:24'),
(37, 37, 'CoD', 'Pending', '2020-08-22 13:21:07', '2020-08-22 13:21:07'),
(38, 38, 'CoD', 'Pending', '2020-08-22 13:24:37', '2020-08-22 13:24:37'),
(39, 39, 'CoD', 'Pending', '2020-08-22 13:28:56', '2020-08-22 13:28:56'),
(40, 40, 'CoD', 'Pending', '2020-08-23 11:24:26', '2020-08-23 11:24:26'),
(41, 41, 'CoD', 'Pending', '2020-08-23 11:31:17', '2020-08-23 11:31:17');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(10,2) NOT NULL,
  `rating` double(10,2) NOT NULL DEFAULT 0.00,
  `rating_count` int(11) NOT NULL DEFAULT 0,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` int(11) NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `manufacturer_id`, `product_name`, `product_price`, `rating`, `rating_count`, `product_code`, `status_id`, `short_description`, `long_description`, `product_image`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 13, 1, 'Stylish Shirt', 650.00, 3.70, 10, 'ES-101', 1, 'Short Description', 'Long Description', 'uploads/product-image/pi_1583397047.jpg', 1, '2020-03-04 20:30:47', '2020-03-13 13:17:31'),
(2, 13, 7, 'T-Sirt', 140.00, 3.80, 5, '1230', 7, 'Short Description', 'Long Description', 'uploads/product-image/pi_1583398761.jpg', 1, '2020-03-04 20:59:21', '2020-03-13 13:18:30'),
(3, 8, 3, 'half shirt', 1200.00, 4.80, 5, 's1245', 7, 'Short Description', 'Long Description', 'uploads/product-image/pi_1583399149.jpg', 1, '2020-03-04 21:05:49', '2020-03-24 07:16:08'),
(4, 8, 3, 'check shirt', 1500.00, 4.25, 4, 'ee22', 3, 'Short Description', 'Long Description', 'uploads/product-image/pi_1583399990.jpg', 1, '2020-03-04 21:19:51', '2020-03-10 10:38:27'),
(5, 15, 2, 'Shari', 2500.00, 5.00, 1, 'ES-2030', 2, 'Short Description', 'Long Description', 'uploads/product-image/pi_1583434447.jpg', 1, '2020-03-05 06:54:07', '2020-03-10 10:37:10'),
(7, 13, 4, 'Half Sleeve T-Shirt for Men', 250.00, 0.00, 0, 'ES-501', 2, 'Half Sleeve Maroon T-Shirt for Men - EXTS06, is an exclusive and more colorful for any occasion in particular where you, of course, get a positive experience with this t-shirt. It, moreover, makes you smarter and looks gorgeous. Furthermore, the t-shirt is also provided with a decent amount of price.', 'Product Type: T-Shirt.\r\nNeck style: Round Neck.\r\nSleeve: Half Sleeve.\r\nMain Material: 100%Cotton.\r\nStyle: Casual style.\r\nExport Fabric.\r\nGSM 170-180.\r\nSize: M, L, XL, XXL.\r\nMesurement (In inch): M (Chest: 38\", Lenth: 27\'\'); L (Chest: 40\" Lenth: 28\"); XL (Chest: 42\", Lenth: 29\'\'); XXL (Chest: 44\", Lenth: 30\").\r\nColor: Maroon.\r\nNote: Color may vary due to light resolution.', 'uploads/product-image/pi_1583752079.jpeg', 1, '2020-03-08 23:07:59', '2020-03-10 10:49:34'),
(8, 66, 2, 'Navy Blue T-Shirt', 300.00, 0.00, 0, 'ES-5002', 3, 'Half Sleeve Navy Blue T-Shirt for Men, is an exclusive and more colorful for any occasion in particular where you, of course, get a positive experience with this t-shirt. It, moreover, makes you smarter and looks gorgeous. Furthermore, the t-shirt is also provided with a decent amount of price.', 'Product Type: T-Shirt.\r\nNeck style: Round Neck.\r\nSleeve: Half Sleeve.\r\nMain Material: 100%Cotton.\r\nStyle: Casual style.\r\nExport Fabric.\r\nGSM 170-180.\r\nSize: M, L, XL, XXL.\r\nMesurement (In inch): M (Chest: 38\", Lenth: 27\'\'); L (Chest: 40\" Lenth: 28\"); XL (Chest: 42\", Lenth: 29\'\'); XXL (Chest: 44\", Lenth: 30\").\r\nColor: Navy Blue.\r\nNote: Color may vary due to light resolution.', 'uploads/product-image/pi_1583752566.jpeg', 1, '2020-03-08 23:16:06', '2020-03-08 23:16:06'),
(9, 13, 6, 'Tiger Black Ss T-Shirt', 300.00, 0.00, 0, 'ES-601', 7, 'Tiger Black  T-Shirt  is an exclusive and more colorful for any occasion in particular where you, of course, get a positive experience with this t-shirt. It, moreover, makes you smarter and looks gorgeous. Furthermore, the t-shirt is also provided with a decent amount of price.', 'Product Type: T-Shirt.\r\nComfortable casual wear.\r\n100% Cotton.\r\nGSM: 160.\r\nGender: Men.\r\nSize: S, M, L, XL.\r\nMesurement (In inch):  S (Chest: 37\", Length: 26\'\'); M (Chest: 38\", Length: 27\'\'); L (Chest: 39\" Length: 28\"); XL (Chest: 40\", Length: 29\'\').\r\nColor: Black.', 'uploads/product-image/pi_1583753909.jpeg', 1, '2020-03-08 23:38:29', '2020-03-10 10:39:49'),
(10, 14, 4, 'Stretchable Pant', 800.00, 5.00, 1, '701', 1, 'Stretchable Jeans Pant for Men  comes in complete super style. Available in cool color. A perfect blending of fashion and comfort. So, buy this jeans pant at the best price.', 'Stretchable Jeans Pant for Men - TAL105.\r\nProduct Type: Jeans pant.\r\nComfortable casual wear.\r\nMain Material: Denim.\r\nGender: Men.\r\nBest quality product.\r\nStandard design.\r\nComfortable wear.\r\nWaist Size: 28, 30, 32, 34.\r\nMeasurement (In Inch): 28 (Waist 28\", Length 40\"), 30 (Waist 30\", Length 41\"), 32 (Waist 32\", Length 42\"), 34 (Waist 34\", Length 42\").\r\nColor: As same as picture.\r\nNote: Product color may slightly vary due to photographic lighting sources or your monitor settings.', 'uploads/product-image/pi_1583817178.jpeg', 1, '2020-03-09 17:12:59', '2020-04-01 11:21:52'),
(11, 72, 7, 'Green Mens Half Pant', 520.00, 0.00, 0, 'ES-801', 7, 'We are highly acclaimed in the industry for offering an optimum quality range of Mens Half Pant', 'We are one of the prominent Manufacturer of Mens Shirt, Staff Uniforms, Mens T-Shirt, Mens Shorts, etc. Our products are massively appreciated for their fine finishing, high comfort, skin-friendliness and elegant looks.', 'uploads/product-image/pi_1583917524.jpg', 1, '2020-03-11 03:05:27', '2020-03-11 03:05:27'),
(12, 74, 3, 'Pants for Men Slim Fit', 800.00, 4.00, 1, 'ES-901', 1, 'Khaki Twill Gabardine Pants for Men Slim Fit,Long or short, denim, classic or sporty, in tons of models and colours. Check out the entire collection. Classic models for the office, chinos for free time, cargo for more laid-back moments: check out our collection of men\'s pants here.', 'Product details of Khaki Twill Gabardine Pants for Men Slim Fit\r\nBrand Name: Xerox\r\nGender: Man\r\nItem Type: Full Length\r\nPant Style: Straight\r\nStyle: Smart Casual\r\nFit Type:Slim Fit\r\nMaterial: 100% Cotton\r\nClosure Type: Zipper Fly\r\nColour: Khaki\r\nWaist Type: Mid\r\nLength: Full Length\r\nThickness: Lightweight\r\nClosure Type: Drawstring\r\nKhaki Twill Gabardine Pants for Men', 'uploads/product-image/pi_1583918172.jpg', 1, '2020-03-11 03:16:12', '2020-03-24 07:15:19'),
(13, 76, 2, 'Men Jeans Pants', 1200.00, 0.00, 0, 'ES-1001', 2, 'Specifications of Slim-fit Stretchable Denim Jeans Pants', 'Product details of Slim-fit Stretchable Denim Jeans Pants\r\nMain Material: 98% cotton 2% Spandex\r\nGender: Men\r\nColor: old navy\r\nFade: Washed\r\nWaist: Mid-rise\r\nWash & Care: Machine Wash\r\nStretch: Stretchable\r\nFit: Slim-fit', 'uploads/product-image/pi_1583918932.jpg', 1, '2020-03-11 03:28:52', '2020-03-11 03:28:52'),
(14, 78, 2, 'Navy Cotton Side Trouser', 1300.00, 4.00, 1, 'ES-1101', 2, 'A Trouser is a perfect way to do so throughout this chilly time of year.Comfort meets style in these incredibly soft joggers. Perfect for working out or lounging around the house, these pants feature a well traveled design that make them pop in any setting.', 'Product details of Navy Cotton Side Stripe Joggers For Men\r\nProduct Type: Side Stripe Joggers\r\nColor: Navy\r\nMain Material: 95% Cotton 5% Mixed\r\nGender: Men\r\nStyle:Casual\r\nPrice Included with VAT\r\nST:MLTS-91HM2448', 'uploads/product-image/pi_1583919710.jpg', 1, '2020-03-11 03:41:50', '2020-03-24 07:17:45'),
(15, 79, 1, 'Mens Chinos', 350.00, 4.00, 1, 'ES-1201', 2, 'Specifications of New Fashion, Mens Twill Gabardine Pants', 'Product details of New Fashion, Mens Twill Gabardine Pants\r\nProduct Type: Gabardine Pant\r\nColor: Same As Picture\r\nMain Material: Twill\r\nGender: Men\r\nHigh Quality Rich Fabric\r\nDesigned According to Latest Pattern\r\nOffered in Various Size and Colors\r\nEasy to Wash\r\nPerfect Fitting\r\nComfortable and Soft\r\nStylish and Fashiona', 'uploads/product-image/pi_1583920110.jpg', 1, '2020-03-11 03:48:30', '2020-03-24 07:16:56'),
(16, 80, 3, 'Cargo Pant for Men', 650.00, 0.00, 0, 'ES-1301', 1, 'About Laksba BD\r\nThis is one of the popular brands for all type of products at reasonable price. They provide us with different types of products very frequently. Shop your choice from this seller!', 'Product details of Khaki Twill Cargo Pant for Men\r\nProduct Type: Cargo Pant\r\nColor: Khaki\r\nMain Material: Twill\r\nGender: Men', 'uploads/product-image/pi_1583920420.jpg', 1, '2020-03-11 03:53:41', '2020-03-11 03:53:41'),
(17, 81, 3, 'Casual Slim Pleated Pants', 1200.00, 0.00, 0, 'ES-1401', 7, 'Product details of Men Fashion Hip Hop Drawstring Elastic Waist Striped Pleated Stretch Harem Pants Male Casual Slim Feet Pants', 'men Pants\r\nGender: Men\r\nStyle: Fashion, Hip Hop, Casual\r\nStyle: Elastic Waist, Slim Feet Pants Fitness\r\nDecoration: Striped Pleated, Drawstring\r\nPants length: Trousers\r\nColor: Light gray\r\nMaterial: Cotton Blend\r\nsize:\r\nL code (cm/inch) waist 70 - 100 / 27.56 - 39.37 Hip 106 / 41.73 Pants length 100 / 39.37\r\nPackage Contents:\r\n1*Pants', 'uploads/product-image/pi_1583920861.jpg', 1, '2020-03-11 04:01:01', '2020-03-11 04:01:01'),
(18, 82, 6, 'Capri Short For Men', 450.00, 4.00, 1, 'ES-15', 2, 'Pants (American English) are an item of clothing worn from the waist to the ankles, covering both legs separately (rather than with cloth extending across both legs as in robes, skirts, and dresses). In the United Kingdom, the word pants generally means underwear and not trousers', 'Product details of Black Printed Capri Short For Men\r\nProduct Type: Printed Capri Short\r\nColor: Black\r\nBest Quality Product\r\nStandard and Smart Design', 'uploads/product-image/pi_1583921148.jpg', 1, '2020-03-11 04:05:48', '2020-03-31 12:19:00'),
(19, 84, 2, 'Jogging Pants Black', 550.00, 0.00, 0, 'ES-1601', 2, 'Specifications of Fashion Push Up Leggings Women Workout Leggings Slim Leggings Polyester V-Waist Jeggings Women Pencil Pa', 'ype: Leggings\r\nMaterial: Polyester\r\nStyle: Casual,Sport\r\nLength: Ankle-Length\r\nFit Type: Slim\r\nsize:\r\nS code, Waist 60cm/23.62 inch, Hip 80cm/31.49 inch, Pants Length 91cm/35.82 inch\r\nWaist Type: low\r\nElasticity: High elasticity\r\nSeason: All Seasons\r\nCOLOR: Black\r\nInclude: 1 * Leggings\r\nOnly the above package content, other products are not included.\r\nNote: Light shooting and different displays may cause the color of the item in the picture a little different from the real thing. The measurement allowed error is +/- 1-3cm.', 'uploads/product-image/pi_1583921527.jpg', 1, '2020-03-11 04:12:07', '2020-03-11 04:12:07'),
(20, 86, 4, 'Semi Long Punjabi', 500.00, 0.00, 0, 'ES-1701', 3, 'The Panjabi is perfect for the young and smart person which can be worn for any occasion. Made from cotton Panjabi which gives it a distinct identity. Soft material fabrics are used for making Panjabi as it is supposed to be a comfortable loose fitting dress.', 'Product details of Malty Color Semi Long Cotton Punjabi For Men\r\nProduct Type: Panjabi\r\nMain Material: Cotton\r\nGender: Men\r\nStandard and Smart Design\r\nComfortable to wear\r\nStylishand fashionable', 'uploads/product-image/pi_1583922390.jpg', 1, '2020-03-11 04:26:30', '2020-03-11 04:26:30'),
(21, 17, 4, 'Best Short Punjabi', 400.00, 0.00, 0, 'ES-1801', 2, 'Special Men’s Printed Cotton Punjabi By World\r\n\r\nThis cotton semi  panjabi is associated with long sleeve. It will hang on your body, provide comfortable to wear and helps to express yourself in so many ways. The body to keep you comfortable and perfect long sleeve semi panjabi for casual wear.', 'Product details of Special Men’s Printed Cotton Punjabi By Swapon’s World Code- SW417P\r\nBrand : Swapon’s World\r\nProduct Type: Panjabi\r\nFabric: 100% Cotton\r\nStyle: Casual\r\nType: Semi Long Punjabi\r\nFront Part Half Body Print\r\nGender: Men\r\nProduction Country: Bangladesh\r\n100% Export Quality.\r\nColor: White (As Given Picture)\r\nSize: M-38,L- 40,XL- 42, XXL-44\r\nM-38 = Chest 40\" Length 38\"\r\nL-40= Chest: 42\" Length 40\"\r\nXL-42 = Chest 44\" Length 42\"\r\nXXL-44 = Chest 46\" Length 44\"', 'uploads/product-image/pi_1583922731.jpeg', 1, '2020-03-11 04:32:11', '2020-03-11 08:42:01'),
(22, 89, 2, 'Best Fotua', 800.00, 0.00, 0, 'ES-1901', 3, 'This fotua is an exclusive and more colorful to see in particular where you, of course, get a positive experience with this fotua. It, moreover, makes you smarter and looks gorgeous. Furthermore, the shirt is also provided with decent amount of price.', 'Fabric: Cotton.\r\nComfortable to wear.\r\nExclusive design.\r\nStyle: Casual.\r\nBangladeshi product.\r\nSize: M, L, XL.\r\nMeasurement (In Inch): M (Length 29’’, Chest 40’’); L (Length 30’’, Chest 42’’); XL (Length 31’’, Chest 44’’); XXL (Length 32’’, Chest 46’’).\r\nColor: As same as picture.', 'uploads/product-image/pi_1583923130.jpg', 1, '2020-03-11 04:38:50', '2020-03-11 04:38:50'),
(23, 11, 2, 'Irani abaya & borka', 1800.00, 0.00, 0, 'ES1000', 2, 'Material : georgette fabric', 'Material :\r\ngeorgette fabric\r\nBody Size:\r\n40-42-44-46\r\nLength :\r\n50-52-54-56-58', 'uploads/product-image/pi_1583995653.png', 1, '2020-03-12 00:47:33', '2020-03-12 00:47:33'),
(24, 97, 6, 'Print Maxi Dresses', 700.00, 0.00, 0, 'ES1030', 1, '2020 Vintage Print Chiffon Lady Maxi Dresses Autumn Winter 3XL Plus Size Long Sleeve Dress Elegant Women Bodycon Party Vestidos', 'Material: Polyester\r\nSilhouette: A-Line\r\nSeason: Spring\r\nNeckline: O-Neck\r\nSleeve Length(cm): Full\r\nSleeve Style: REGULAR\r\nGender: WOMEN\r\nDecoration: NONE\r\nStyle: Office Lady\r\nWaistline: Natural\r\nPattern Type: Solid\r\nDresses Length: Mid-Calf', 'uploads/product-image/pi_1583995908.jpg', 1, '2020-03-12 00:51:48', '2020-03-12 00:51:48'),
(25, 98, 3, 'New Style Fashion Women', 1300.00, 0.00, 0, 'ES1050', 7, 'Hirigin 2019 Summer New Style Fashion Women Sleeveless Chiffon Casual Beach Long Floral Dress Party Dress', 'Brand Name: hirigin\r\nMaterial: Chiffon\r\nSeason: Summer\r\nStyle: Casual\r\nDecoration: Sashes\r\nSilhouette: Straight\r\nSleeve Length(cm): Sleeveless\r\nPattern Type: Floral\r\nSleeve Style: Spaghetti Strap\r\nWaistline: Natural\r\nNeckline: Strapless\r\nDresses Length: Ankle-Length\r\nPlace Of Origin: China (Mainland)\r\nGender: WOMEN', 'uploads/product-image/pi_1583996137.jpg', 1, '2020-03-12 00:55:37', '2020-03-12 00:55:37'),
(26, 100, 7, 'Mermaid Party Dresses', 6000.00, 0.00, 0, 'ES1150', 6, 'Evening Gowns Silver Sequined Pattern Mermaid Party Dresses O-Neck Short Sleeve Formal Gowns Floor Length Robe De Soiree K178', 'Brand Name: it\'s yiiya\r\nNeckline: O-Neck\r\nActual Images: Yes\r\nTrain: NONE\r\nFashion Element: simple\r\nSleeve Style: REGULAR\r\nSleeve Length(cm): Half\r\nFabric Type: Sequin\r\nDresses Length: Floor-Length\r\nWaistline: empire\r\nOccasion: Formal Evening\r\nBuilt-in Bra: Yes\r\nis_customized: Yes\r\nMaterial: spandex\r\nMaterial: Polyester\r\nMaterial: Acrylic\r\nSilhouette: Trumpet / Mermaid\r\nDecoration: Pattern\r\nDecoration: Sequined', 'uploads/product-image/pi_1583996501.jpg', 1, '2020-03-12 01:01:41', '2020-03-12 01:01:41'),
(27, 47, 4, 'Classy Silk Saree', 5000.00, 0.00, 0, 'ES1250', 1, 'Classy Silk Saree Blouse Design', 'saree size\r\n\r\nSet = top 1 piece + saree 1 piece + petticoat 1 piece\r\n \r\nWide width: 1.14 meters\r\nLength: 5.2 meters', 'uploads/product-image/pi_1583997153.png', 1, '2020-03-12 01:12:33', '2020-03-12 01:12:33'),
(28, 48, 1, 'Originga Katan Sharee', 4000.00, 0.00, 0, 'ES1350', 1, 'Product Type: Sharee\r\nMain Material: Katan\r\nSmooth and soft fabric\r\nComfortable to wear\r\nColor: Same as Picture\r\nAttractive and trendy design', 'Sharee is an unstitched long piece of cloth usually five to six yards sometimes as long as nine yard. Sharee is wrapped around the body with one end tied around the waist .Sharee is a very common dress in Bangladesh. Women look very gorgeous in colorful sharees, and so they love to wear and have luxurious and colorful sarees for different social and cultural functions. The young lady to elderly persons - every woman is fascinated about sarees just because of our culture.', 'uploads/product-image/pi_1583997349.jpg', 1, '2020-03-12 01:15:49', '2020-03-12 01:15:49'),
(29, 50, 2, 'Weight less jorjet sharee', 950.00, 0.00, 0, 'ES1450', 3, 'Material weightless jorjet\r\n12 hat sharee\r\nBlouse pis available\r\nComfortable for all\r\nPerfect for any occasion or party', 'Saree is a very common dress in this subcontinental area like Bangladesh. This saree is made of silk fabrics and also including a matching blouse piece. It is also extremely versatile as it can be successfully incorporated into any look. It is one of the most popular wears for different festivals and weddings occasion. Women look very gorgeous in colorful saree, and so they love to wear and have luxurious and colorful saree for different social and cultural functions. It will keep you looking and feeling good all day long. The young lady to an elderly person every woman is fascinated about saree just because of our culture.', 'uploads/product-image/pi_1583997711.jpg', 1, '2020-03-12 01:21:51', '2020-03-12 01:21:51'),
(30, 51, 3, 'Georgette Ruffle Frill Saree', 800.00, 0.00, 0, 'ES1350', 4, 'Product Type: Saree\r\nColour: Same As Picture\r\nMain Material: Georgette\r\nSaree Style: Regular Saree\r\nLong: 12 Haat Saree\r\nBlouse piece 2 Haat Same Kaporer\r\nHight: 46 Inch\r\nProduct Size : Saree - 5.5 mtrs , Blouse - 0.80 mtrs\r\nSaree with Unstitched Running Blouse Piece\r\nNo Lace Will Be Fitted\r\nOccasion: Casual, Party & Festive\r\nProduct color may slightly vary due to photographic lighting sources or your monitor settings.', 'Saree is a very common dress in this subcontinental area like Bangladesh. This saree is made of georgette fabrics and also including a matching blouse piece. It is also extremely versatile as it can be successfully incorporated into any look. It is one of the most popular wears for different festivals and weddings occasion. Women look very gorgeous in colorful saree, and so they love to wear and have luxurious and colorful saree for different social and cultural functions. It will keep you looking and feeling good all day long. The young lady to an elderly person every woman is fascinated about saree just because of our culture.\r\n\r\nSarees for women are crafted from Georgette. These Sarees will undoubtedly withstand years of use. With its soft fabric, you are assured to stay comfortable for all day long.\r\n\r\nVibrant colors - Sarees for women\'s are available in a wide array of colors. Choose the one that goes well with your needs and desires. Enough length to get classic in Sarees.\r\n\r\nThese versatile and super soft Sarees can be paired up with a wide range of Full length. Comfortable and Fashionable design - Simple and flexible legging is one of the most comfortable and useful piece of apparels that is a perfect addition to your closet. wear this sari and stand out from the crowd', 'uploads/product-image/pi_1583997882.jpg', 1, '2020-03-12 01:24:42', '2020-03-12 01:24:42'),
(31, 52, 5, 'Jamdani Saree', 700.00, 0.00, 0, 'ES1170', 7, 'Product Type: Saree\r\nMain Material: Half Silk\r\nGender: Women\r\nBlouse Piece\r\nVery comfortable to use in any weather', 'Saree is very common dress in this sub continental area like Bangladesh. Women look very gorgeous in colorful sarees, and so they love to wear and have luxurious and colorful sarees for different social and cultural functions. Young lady to elderly person - every woman is fascinated about sarees just because of our culture. Daraz has a massive collection of different types of quality sarees to be sold all the year round to make the buyers happy.', 'uploads/product-image/pi_1583998027.jpg', 1, '2020-03-12 01:27:07', '2020-03-12 01:27:07'),
(32, 53, 6, 'Cotton Salwar Kameez', 600.00, 0.00, 0, 'ES1180', 7, 'Product Type: Salwar Kameez\r\nMain Material: Cotton\r\nWork:Screen Printed\r\nKamiz: Screen Printed\r\nDupatta: Cotton Printed\r\nSalwar: Cotton Voel Cloth.\r\nRegular usable product Gender: Women\r\nCloth: Voel Cloth.\r\nStylish and trendy Perfect and comfortable to use.', 'Shalwar Kameez also spelled salwar kameez or Shalwar Kameez is a traditional outfit originating in the subcontinent. It is a generic term used to describe different styles of dress. The shalwar kameez can be worn by women. The shalwar and the kameez are two garments which are combined to form the shalwar kameez.\r\n\r\nThe seller,Pure Bangla, offers a wide selection of products from renowned brands in Bangladesh with a promise of fast, safe and easy online shopping experience through Daraz. The seller comes closer to the huge customers on this leading online shopping platform of all over Bangladesh and serving to the greater extent of achieving higher customer satisfaction. The brands working with Daraz are not only serving top class products but also are dedicated to acquiring brand loyalty.', 'uploads/product-image/pi_1583998980.jpg', 1, '2020-03-12 01:43:00', '2020-03-12 01:43:00'),
(33, 55, 7, 'Pakistani Cotton Lawn', 1000.00, 0.00, 0, 'ES1190', 6, 'Product Type: Lawn\r\nColor: White and Blue\r\nCountry of Origin: Pakistan\r\nGender: Women\r\n2.5 Meter Printed kameez\r\n2.5 Meter Salwer\r\n2.5 Meter Printed Orna\r\nMain Material: Cotton', 'Lawn is a plain weave textile, originally of linen but now chiefly cotton. Lawn is designed using fine, high count yarns, which results in a silky. The fabric is made using either combed or carded yarns. It is a generic term used to describe different styles of dress. The lawn dress worn by women.\r\nWith Daraz The seller offers a wide selection of products from renowned brands in Bangladesh with a promise of fast, safe and easy online shopping experience. The seller comes closer to the huge customers on this leading online shopping platform of all over Bangladesh and serving to the greater extent for achieving higher customer satisfaction. The brands working with Daraz are not only serving top class products but also are dedicated to acquiring brand loyalty.', 'uploads/product-image/pi_1583999160.jpg', 1, '2020-03-12 01:46:00', '2020-03-12 01:46:00'),
(34, 56, 1, 'Unstitched kamiz', 1200.00, 0.00, 0, 'ES1550', 1, 'Product Type: Single Kamiz\r\nMain Material: Indian Weightless Georgette\r\nDesign: Embroidery And Carcupi\r\nGender: Women\r\nSlive: Long/short/umbrella\r\nlong: 48/50 inchi\r\n3 goj febric\r\nBody : Indian weightless Georgette One Piece', 'Shalwar Kameez also spelled salwar kameez or Shalwar Kameez is a traditional outfit originating in the subcontinent. It is a generic term used to describe different styles of dress. The shalwar kameez can be worn by women. The shalwar and the kameez are two garments which are combined to form the shalwar kameez.\r\n\r\nThe seller,Monstar, offers a wide selection of products from renowned brands in Bangladesh with a promise of fast, safe and easy online shopping experience through Daraz. The seller comes closer to the huge customers on this leading online shopping platform of all over Bangladesh and serving to the greater extent of achieving higher customer satisfaction. The brands working with Daraz are not only serving top class products but also are dedicated to acquiring brand loyalty.', 'uploads/product-image/pi_1583999367.jpg', 1, '2020-03-12 01:49:27', '2020-03-12 01:49:27'),
(35, 57, 7, 'Embroidery kamiz', 2000.00, 0.00, 0, 'ES2030', 2, 'Product Type: Single Kamiz\r\nMain Material: Indian Weightless Georgette\r\nDesign: Embroidery And Carcupi\r\nGender: Women\r\nSlive: Long/short/umbrella\r\nlong: 48/50 inchi\r\n3 goj febric\r\nBody : Indian weightless Georgette One Piece', 'Shalwar Kameez also spelled salwar kameez or Shalwar Kameez is a traditional outfit originating in the subcontinent. It is a generic term used to describe different styles of dress. The shalwar kameez can be worn by women. The shalwar and the kameez are two garments which are combined to form the shalwar kameez.\r\n\r\nThe seller,Monstar, offers a wide selection of products from renowned brands in Bangladesh with a promise of fast, safe and easy online shopping experience through Daraz. The seller comes closer to the huge customers on this leading online shopping platform of all over Bangladesh and serving to the greater extent of achieving higher customer satisfaction. The brands working with Daraz are not only serving top class products but also are dedicated to acquiring brand loyalty.', 'uploads/product-image/pi_1583999527.jpg', 1, '2020-03-12 01:52:07', '2020-03-12 01:52:07'),
(36, 58, 4, 'Printed Shalwar Kameez', 600.00, 0.00, 0, 'ES2450', 6, 'Product Name: Ladies 3 Pieces Shalwar Kameez\r\nColour: Blue\r\nFabric: Cotton\r\nWork: Block And Embroidered\r\nSleeve: Full\r\nLength: Long\r\nCondition: Stitched\r\nOccasion: Festive', 'Grameen Check is synonymous with providing high value, environmentally friendly cotton based products which have mostly been sourced from village based traditional weavers. \r\n\r\nGrameen check was set up by Professor Muhammad Yunus, Chairman of Grameen Bank who was awarded the Nobel Peace Prize for 2006 by The Norwegian Nobel Committee. Today, Grameen Check fabrics are sold through 18 Sales Centers in major locations in Bangladesh.', 'uploads/product-image/pi_1583999738.jpg', 1, '2020-03-12 01:55:38', '2020-03-12 01:55:38'),
(37, 59, 1, 'ladies jeans 2019', 400.00, 0.00, 0, 'ES3050', 1, 'Klacwaya Women fashion boyfriend jeans 2019 ladies patchwork high waist denim mom pants slim Korean girls street-wear trousers', 'Gender: WOMEN\r\nItem Type: JEANS\r\nMaterial: COTTON\r\nLength: Full Length\r\nWash: Light\r\nClosure Type: Zipper Fly\r\nWaist Type: High\r\nDecoration: Button\r\nDecoration: Pockets\r\nDecoration: Fake Zippers\r\nDecoration: Washed\r\nDecoration: Patchwork\r\nDecoration: Vintage\r\nFabric Type: Plaid\r\nFit Type: REGULAR\r\nJeans Style: Pencil Pants\r\nStyle: Streetwear', 'uploads/product-image/pi_1584002579.jpg', 1, '2020-03-12 02:42:59', '2020-03-12 02:42:59'),
(38, 60, 2, 'Embroidered Cotton Top', 700.00, 0.00, 0, 'ES1370', 4, 'Product details of ZANZEA Women Short Sleeve V Neck Casual Loose Tops Summer Beach Shirts Blouse', 'Brand:ZANZEA\r\nMaterial:95% Polyester+5% Spandex\r\nType:Blouse\r\nColor:Black,White', 'uploads/product-image/pi_1584002755.jpg', 1, '2020-03-12 02:45:56', '2020-03-12 02:45:56'),
(39, 61, 5, 'Party Wear Stylish', 3000.00, 0.00, 0, 'ES1390', 2, 'Fashionable and Trendy.\r\n\r\nEasy to wash and wear. Wash only with normal water and detergent/soap.\r\n\r\nColour guaranteed. Quality assured.', 'Product: Western Party dress\r\nColor: Red\r\nMaterial:Viscose\r\nSize: XL\r\nBody: 36\"\r\nNon returnable', 'uploads/product-image/pi_1584002961.jpg', 1, '2020-03-12 02:49:21', '2020-03-12 02:49:21'),
(40, 62, 5, 'Skirt For Women', 700.00, 0.00, 0, 'ES1450', 6, 'Women Skirt Summer Plus Size Lace Elegant Office Skirts Womens Pencil Bandage Skirt For Women Skirts Knee-length High Waist 2020', 'Material: Polyester\r\nAge: Ages 18-35 Years Old\r\nSilhouette: Pencil\r\nDecoration: NONE\r\nGender: WOMEN\r\nModel Number: OR1090\r\nWaistline: empire\r\nPattern Type: Solid\r\nStyle: Casual\r\nDresses Length: Knee-Length\r\nSize: S,M,L,XL,2XL,3XL,4XL,5XL,6XL', 'uploads/product-image/pi_1584003241.jpeg', 1, '2020-03-12 02:54:01', '2020-03-12 02:54:01'),
(41, 68, 4, 'Leather Wallet', 500.00, 0.00, 0, 'ES14150', 4, 'Women Wallet Cat Cartoon Wallet Long Creative Female Card Holder PU Wallet Coin Purses Girls Leather Wallet New Fashion Envelope', 'Item Type: Wallet\r\nMain Material: PU\r\nGender: WOMEN\r\nStyle: Fashion\r\nPattern Type: Animal Prints\r\nClosure Type: zipper\r\nWallets: Standard Wallets\r\nWallet Length: Long\r\nDecoration: Cartoon Printing\r\nDecoration: Appliques\r\nDecoration: Tasse\r\nlItem Height: 3cmItem Length: \r\n18.6cmItem Weight: 0\r\n.', 'uploads/product-image/pi_1584003498.jpg', 1, '2020-03-12 02:58:18', '2020-03-12 02:58:18'),
(42, 70, 3, 'Credit Card Holder', 900.00, 0.00, 0, 'ES1470', 7, 'Men double Aluminum Leather Credit Card Holder RFID Metal Wallet Automatic pop up Anti-theft Purse Business ID Cardholder', 'Brand Name: BAIBU\r\nMain Material: Microfiber Synthetic Leather\r\nGender: Unisex\r\nPattern Type: SolidItem Width: 10cm\r\nModel Number: 12Item Length: 6.8cm\r\nItem Type: Card & ID Holders\r\nUse: Credit Card\r\nItem Weight: 0.11kg\r\nMaterial Composition: PU\r\nClosure Type: Hasp\r\nShape: BoxStyle: Casual', 'uploads/product-image/pi_1584003762.jpg', 1, '2020-03-12 03:02:42', '2020-03-12 03:02:42'),
(43, 32, 4, 'Military Backpack', 3000.00, 0.00, 0, 'ES1550', 2, 'Military Rucksacks 6 Colors 50L/1000D Nylon Waterproof Backpack Outdoor Tactical Sport Camping Hiking Fishing Hunting Bag', 'Brand Name: AOKALI\r\nMain Material: NYLON\r\nTechnics: Jacquard\r\nGender: Unisex\r\nBackpacks Type: Internal Frame\r\nCapacity: 36-55 Litre\r\nInterior: Interior Slot Pocket\r\nInterior: Cell Phone Pocket\r\nInterior: Interior Compartment\r\nHandle/Strap Type: Retractable\r\nDecoration: Reflective Stripe\r\nClosure Type: zipper\r\nRain Cover: No', 'uploads/product-image/pi_1584004031.jpg', 1, '2020-03-12 03:07:11', '2020-03-27 01:46:47'),
(44, 73, 7, 'Girls Shoulder Bag', 3000.00, 0.00, 0, '1600', 2, '2020 New Women Leather Crossbody Bag Small Messenger bags Lady Cute Handbags Girls Shoulder Bag bolsas Sac A Epaule Black Brown', 'Brand Name: DIDA BEAR\r\nShape: Shell\r\nHandbags Type: Shoulder Bags\r\nTypes of bags: Shoulder & Crossbody Bags\r\nMain Material: PUClosure Type: zipper\r\nHardness: Soft\r\nExterior: Silt Pocket\r\nStyle: Fashion\r\nModel Number: D200109\r\nLining Material: Polyester\r\nOccasion: Versatile\r\nGender: WOMEN\r\nPattern Type: Solid\r\nNumber of Handles/Straps: Single\r\nInterior: Interior Slot Pocket\r\nInterior: Cell Phone Pocket', 'uploads/product-image/pi_1584004200.jpg', 1, '2020-03-12 03:10:00', '2020-03-12 03:10:00'),
(45, 75, 4, 'Bag Luxury Designer', 1000.00, 0.00, 0, '1700', 1, 'MABULA Classic Vintage Messenger Bag Simple Luxury Designer Saddle Flap Shoulder Bag Small PU Leather Crossbody Bags For Women', 'Brand Name: MABULA\r\nShape: Saddle\r\nHandbags Type: Messenger Bags\r\nMain Material: PU\r\nClosure Type: Hasp\r\nHardness: Hard\r\nExterior: Flap Pocket\r\nStyle: Japan Style\r\nModel Number: 0\r\nLining Material: None\r\nOccasion: Party\r\nGender: WOMEN\r\nPattern Type: Solid\r\nNumber of Handles/Straps: Single\r\nInterior: Cell Phone Pocket\r\nDecoration: Button\r\nItem Type: Handbags\r\nScenes: Leisure', 'uploads/product-image/pi_1584004548.jpg', 1, '2020-03-12 03:15:48', '2020-03-12 03:15:48'),
(46, 77, 1, 'Party Purse Bag', 2000.00, 0.00, 0, 'ES2000', 1, 'Rhinestone Clutch Bag Women Luxury Gillter Evening Party Purse Box Bag Diamond Female Clutch Crystal Day Wallet Wedding Purse', 'Brand Name: YYW\r\nHandbags Type: Messenger Bags\r\nMain Material: PU\r\nShape: Minaudiere\r\nGender: WOMEN\r\nClosure Type: Hasp\r\nHardness: Soft\r\nPattern Type: Solid\r\nExterior: NONE\r\nNumber of Handles/Straps: Single\r\nStyle: Fashion\r\nInterior: Interior Slot Pocket\r\nInterior: Cell Phone Pocket\r\nModel Number: 181105060021\r\nLining Material: Polyester\r\nDecoration: Diamonds\r\nOccasion: Party\r\nItem Type: Handbags', 'uploads/product-image/pi_1584004967.jpg', 1, '2020-03-12 03:22:47', '2020-03-12 03:22:47'),
(47, 83, 7, 'Beach Sandals', 500.00, 0.00, 0, 'ES3000', 1, 'Summer Belts Flat Heel Women Shoes Beach Sandals Outside Summer Soft Leather Female Slides Transparent Open Toe Sandal', 'Brand Name: zonnebloem\r\nUpper Material: Synthetic\r\nSandal Type: Gladiator\r\nHeel Type: Flat with\r\nLining Material: PU\r\nSide Vamp Type: Open\r\nOutsole Material: Rubber\r\nHeel Height: Flat (≤1cm)\r\nWith Platforms: No', 'uploads/product-image/pi_1584005241.jpg', 1, '2020-03-12 03:27:21', '2020-03-12 03:27:21'),
(48, 85, 3, 'High Heels', 2000.00, 0.00, 0, 'ES3050', 3, 'Yalnn Fashion Simple Thin Hells High Heels Shallow Pointed Toe Hollow Sexy High Hell Pumps Daily Shoes Ladies Pumps Women Shoes', 'Brand Name: YALNN\r\nUpper Material: PU\r\nHeel Height: High (5cm-8cm)\r\nPump Type: Basic\r\nHeel Type: Thin Heels\r\nLining Material: Shearling\r\nFashion Element: Platform\r\nSeason: Spring/Autumn\r\nToe Shape: Round Toe\r\nStyle: Fashion\r\nClosure Type: Slip-On\r\nOccasion: Casual\r\nWith Platforms: Yes\r\nFit: Fits true to size, take your normal size\r\nInsole Material: PU\r\nis_handmade: Yes\r\nOutsole Material: TPU', 'uploads/product-image/pi_1584005506.jpg', 1, '2020-03-12 03:31:46', '2020-03-12 03:31:46'),
(49, 88, 4, 'Women Shoes', 1500.00, 0.00, 0, 'ES4000', 7, 'MUYANG MIE MIE Women Shoes Woman Genuine Leather Flat Shoes Female Casual Work Ballet Flats Women Flats Larger size ladies shoes', 'Brand Name: MUYANG MIE MIE\r\nUpper Material: Genuine Leather\r\nUpper-Genuine Leather Type: Cow Leather\r\nFlats Type: Ballet Flats\r\nLining Material: NONE\r\nFashion Element: Shallow\r\nOutsole Material: Rubber\r\nSeason: Spring/Autumn\r\nClosure Type: Slip-On\r\nInsole Material: PU\r\nPattern Type: Solid\r\nDepartment Name: Adult\r\nToe Shape: Round Toe\r\nFit: Fits true to size, take your normal size\r\nItem Type: Flats\r\nOccasion: Casual\r\nModel Number: 628\r\nSize: 35,36,37,38,39,40,41,42,43\r\nColor: Beige, black, gray, brown', 'uploads/product-image/pi_1584005723.jpg', 1, '2020-03-12 03:35:23', '2020-03-12 03:35:23'),
(50, 90, 3, 'Wedge Woman', 1500.00, 0.00, 0, '2050', 2, 'LCXMND Women Sandals Summer Female Shoes Women\'s Peep Toe Wedge Woman Comfortable Plus Size Female Platform Ladies 2020 New', 'Brand Name: LCXMND\r\nUpper Material: PU\r\nSandal Type: Ankle-Wrap\r\nHeel Type: Wedges\r\nLining Material: PU\r\nSide Vamp Type: Open\r\nOutsole Material: Rubber\r\nItem Type: Sandals\r\nHeel Height: Low (1cm-3cm)With Platforms: Yes\r\nPlatform Height: 0-3cm\r\nOccasion: Casual\r\nClosure Type: Buckle Strap\r\nFit: Fits true to size, take your normal size\r\nBack Counter Type: Back Strap\r\nFashion Element: Narrow Band\r\nStyle: Classics\r\nModel Number: LCX00010\r\nPattern Type: Solid\r\nInsole Material: PU\r\nDepartment Name: Adult', 'uploads/product-image/pi_1584006163.jpg', 1, '2020-03-12 03:42:43', '2020-03-12 03:42:43'),
(51, 91, 6, 'Women Slippers', 1900.00, 0.00, 0, 'ES2150', 6, 'COOLSA Hot Summer Women Slippers Rhinestone Bling Slides Flat Soft Home Flip Flops Female Sparkling Crystal Shoes Beach Sandals', 'Department Name: Adult\r\nItem Type: Slippers\r\nFashion Element: CRYSTAL\r\nUpper Material: Sequined Cloth\r\nHeel Height: Low (1cm-3cm)\r\nOutsole Material: Rubber\r\nModel Number: slides 020\r\nSeason: Summer\r\nApplicable Place: indoor\r\nInsole Material: PU\r\nLining Material: PU\r\nHeel Type: Flat with\r\nWith Platforms: No\r\nFit: Fits true to size, take your normal size\r\nShoes Type: Slides\r\nBrand Name: COOLSA\r\nPattern Type: Solid\r\nColor: Silver/ Golden/ Black\r\nWomen beach sandals: Soft Rubber Thick bottom/ Non-slip\r\nUpper Sparkling: Rhinestone shoes\r\nFashion ladies slippers: Bling bling slides/slippers\r\nCute cartoon slippers: Cat slippers Bulldog', 'uploads/product-image/pi_1584006544.jpg', 1, '2020-03-12 03:49:05', '2020-03-12 03:49:05'),
(52, 203, 1, 'Makeup Blusher', 270.00, 0.00, 0, 'ES4050', 6, 'FOCALLURE Makeup Blusher Top Quality Professional Cheek 6 Colors Baked Blush Bronzer Blusher Face Contour Blusher', 'Features:\r\n- Ultra-luxurious, silky powder\r\n- Mineral oil and paraben-free formulation\r\n- baking technology creates a soft, creamy powder\r\n \r\nHow to\r\nUsing a Retractable Baked Powder Brush, apply and blend from the apples of your cheeks, up towards the hairline.\r\n \r\nIngredients: \r\nMica, Talc, Dimethicone, Glyceryl Ethylhexanoate/Stearate/Adipate, Magnesium Aluminum Silicate, Phenoxyethanol, Sodium Dehydroacetate, Cetearyl Ethylhexanoate, Isopropyl Mirystate, Octyldodecyl Stearyl Stearate, Isopropyl Palmitate, Ethylhexyl Methoxycinnamate, Simmondsia Chinensis (Jojoba) Seed Oil, Tocopheryl Acetate, Retynyl Palmitate, BHT, Zea Mays (Corn) Starch, Polyacrylamide, C13-14 Isoparaffin, Laureth-7, Sorbitan Stearate, Polysorbate 20, Camellia Sinensis Leaf Extract, Centella Asiatica Leaf Extract, Lauroyl Lysine, Titanium Dioxide (CI 77891), Iron Oxides (CI 77491, CI 77492, CI 77499), Chromium Oxide Greens (CI 77288), Red 7 Lake (CI 15850).', 'uploads/product-image/pi_1584007002.jpg', 1, '2020-03-12 03:56:42', '2020-03-12 03:56:42'),
(53, 202, 1, 'Lipstick Red', 100.00, 0.00, 0, 'ES2450', 2, 'Top Quality MYG Matte Lipstick professional Lips Makeup Long-lasting Waterproof Lipstick Red Nude ruby woo honey love Lipstick', 'Features:\r\nRich Vitamin E\r\nMatte, Lustre, Amplified, Satin, Frost \r\nLong lasting\r\n\r\n \r\nDetails:\r\nBrand new\r\nNet Weight:4g / 0.14 oz\r\nWith Retail Package\r\n \r\nINGREDIENTS: \r\nDIMETHICONE,ISOEICOSANE,KAOLIN,CERESIN,PARAFFIN,ISONONYL ISONONANOATE,MICROCRYSTALLINE WAX CERA MICRICRISTALLINA,CIRE MICRICRISTALLINE,SILICA,CAPRYLIC/CAPRIC,TRIGLYCERIDE,COPERNICA CERIFERA(CARNAUBA)WAX CERA CARNAUBA CIRE DE CARNAUBA,HYDROGENATED,POLYISOBUTENE,VANILLN,TOCOPHEROL,GLYCERYL,LINOLEATE,GLYCERYL,LINOLENATE,PVP/HEXADECENE,COPOLYMER,METHICONE,TRIETHOXYCAPRYLYLSILANE,[+/-MICA,TITANIUM DIOXIDE(CI 77891),IRON OXIDES (CI 77491,CI 77492,CI 77499),BLUE 1 LAKE (CI 15850) RED 6 LAKE (CI 15850),RED 7 LAKE (CI 15850),RED 28 LAKE (CI 45410),RED 30 LAKE (CI 73360),RED 33 LAKE (CI 17200)YELLOW 5 LAKE (CI 19140),YELLOW 6 LAKE (CI 15985),YWLLOW 10 LAKE (CI 47005)](ILN30524)', 'uploads/product-image/pi_1584007687.jpg', 1, '2020-03-12 04:08:07', '2020-03-12 04:08:07'),
(54, 201, 4, 'Primer Makeup', 170.00, 0.00, 0, 'ES3150', 4, 'SACE LADY Primer Makeup Oil Control Matte Make Up Face Base Cream 24K Gold Professional Pores Foundation Primer Cosmetic', 'Brand: SACE LADY\r\nOrigin: Guangzhou     Volume:12ml/0.42Fl oz+6ml/0.21Fl oz\r\nQuality:Natural Mineral, Organic Ingredients, Alcohol-free, No sensitive, Safe-tested\r\nSuitable: All Skin Types\r\n \r\nIngredients:\r\n24K Gold Foil,    Polydimethylsiloxane cross-linked polymers, polydimethylsiloxanes, cyclopentadimethylsiloxanes, squalane, methyl benzoate.\r\n\r\nSACE LADY Foundation Primer Makeup Oil Control Matte Make Up Face Base Cream 24K Gold Professional Pores Moisturizing Cosme', 'uploads/product-image/pi_1584007881.jpg', 1, '2020-03-12 04:11:21', '2020-03-12 04:11:21'),
(55, 92, 1, 'Koti for Men', 1500.00, 0.00, 0, 'ES-2001', 2, 'Look smart by wearing this Stylish Koti for Men - 34001138 for you. You can simply wear it with a kurta.', 'Product type: Koti.\r\nFabric: Cotton.\r\nTrendy look.\r\nComfortable to wear.\r\nOccasion: Casual wear/Daily wear/Party wear.\r\nFashionable and attractive design.\r\nGender: Men.\r\nSize: 40, 42, 44.\r\nMeasurement (In Inch): 40 (Chest: 38\", Front Length: 28\", Back Length 27.5\", Collar 16.5\"); 42 (Chest: 40\", Front Length: 28.5\", Back Length 28\", Collar 17.5\"); 44 (Chest: 42\", Front Length: 29\", Back Length 28.5\", Collar 17.5\").\r\nColor: As same as picture.', 'uploads/product-image/pi_1584007952.jpeg', 1, '2020-03-12 04:12:32', '2020-03-12 04:12:32'),
(56, 200, 7, 'Makeup Setting Spray', 400.00, 3.00, 1, 'ES3250', 4, '1Pc Matte Finish Makeup Setting Spray Long Lasting Primer Setting Fine Mist Moisturizer Cosmetics Spray For All Skin Types(30Ml)', 'SPECIFICATION:\r\nColor:Matte\r\nWeight:30ml\r\nQuantity:1pc\r\n\r\nNOTE:\r\nDue to the light and screen setting difference,the item\'s color may be slightly difference from the pictures.\r\nPlease allow slight dimension difference due to different manual measurement.\r\n\r\nPackage included:\r\n\r\n1bottle*makeup Setting Spray', 'uploads/product-image/pi_1584008014.jpg', 1, '2020-03-12 04:13:34', '2020-03-31 16:23:09'),
(57, 199, 5, 'alette Face Concealer', 300.00, 0.00, 0, 'ES3750', 7, 'MISS ROSE Professional 2 color powder 1color Creamy Foundation Face Full Cover Palette Face Concealer with Mirror Powder puff', 'MISS ROSE  2 Color Compact Foundation 1 Color Creamy Foundation with Air Mirror Mirror Makeup Box Portable Cosmetic Case Makeup\r\n\r\n \r\nsize:12.3cm*7.8CM\r\nCOLOR:3  COLORS  N1 N2 N3\r\nADVANTAGE:soft velvet to smudge-resistant\r\n          long lasting.easy to wear\r\nshelf life:3 years', 'uploads/product-image/pi_1584008184.jpg', 1, '2020-03-12 04:16:24', '2020-03-12 04:16:24'),
(58, 198, 4, 'Face Makeup Foundation', 900.00, 0.00, 0, 'ES3550', 6, 'O.TWO.O Foundation Matte Long Lasting Face Makeup Foundation Concealer Naturally Liquid Foundation Cream Cosmetic Foundation', 'About This Product\r\n\r\n \r\n\r\n(1）CREATE A DELICATE MAKEUP - Anti-oil and anti-sweat all day makeup, high concealer, hidden pores! Not afraid of high temperature, excellent effect oil control, from morning to night, the bottom makeup is as beautiful as ever!\r\n \r\n(2）A LIGHTWEIGHT, HYDRATING FOUNDATION - Elevate your skin to flawlessness with this feather-light foundation; Moisturizing effect will help you get a natural finish, in a minimal amount of time.\r\n \r\n(3）CREATE A MOISTURE MAKEUP - The foundation is moist and smooth, with good ductility, and it is evenly spread, especially delicate and light.\r\n \r\n(4）OIL FREE - Clean and refreshing, giving you a comfortable and refined experience,say goodbye to greasy and irritated life.\r\n \r\n(5）AVAILABLE IN 8 COLORS - The color number is diversified, and you can choose the right one for you, if you have any question about the product, please contact with our customer service.', 'uploads/product-image/pi_1584008346.jpg', 1, '2020-03-12 04:19:06', '2020-03-12 04:19:06'),
(59, 196, 1, 'Mascara for eyelashes', 120.00, 0.00, 0, 'ES3950', 2, 'Cost-effective mascara for eyelashes extension long long lasting 4d silk fiber eyelash mascara 4d silk fiber eye makeup', 'Type: Mascara\r\nBenefit: Lengthening\r\nBenefit: Curling\r\nBenefit: Fast/Quick Dry\r\nBenefit: Thick\r\nBenefit: Natural\r\nCertification: GZZZGZZZ: YGZWBZ\r\nQuantity: 1pcs\r\nBrand Name: pudaier\r\nIngredient: Chamomile/beeswax\r\nCertificate Number: 20160481\r\nSize: Full Size\r\nNET WT: 10ml\r\nCountry/Region of Manufacture: China\r\nWaterproof / Water-Resistant: Yes\r\nModel Number: HF1006', 'uploads/product-image/pi_1584008513.jpg', 1, '2020-03-12 04:21:53', '2020-03-12 04:21:53'),
(60, 195, 4, 'Eyes Masks', 300.00, 4.00, 1, 'ES3750', 2, 'MABOX 10pcs=5Pairs Crystal Collagen Eye Mask Anti-Puffiness Dark Circle Moisturizing Eyes Masks Beauty Skin Care', 'The eye mask 2pcs per pack, so you will receive 5packs\r\nEASY TO USE:Wear collagen masks 2-3 times a week for approximately 30 minutes to see effects.\r\nHow To Use:\r\n1) Cleanse and dry your face\r\n2) Peel off the plastic from the eyepatch\r\n3) Place the patches below the eye\r\n4) USE 2-3 times a week, Wear about 30 mins\r\n5) Remove the patches, DO NOT reuse them\r\npackage including:\r\n5 x Pairs Eye Mask', 'uploads/product-image/pi_1584008692.jpg', 1, '2020-03-12 04:24:52', '2020-03-24 04:14:26'),
(61, 194, 5, 'Eyeshadow Palette', 200.00, 0.00, 0, 'ES3850', 2, 'New Arrival Charming Eyeshadow Palette 9 Color Make up Palette Matte Shimmer Pigmented Eye Shadow Powder Beauty Glazed', 'High quality ingredients with silky shine color, can last for all day long\r\nNo dye and will not form a annoying eye shadow mark\r\nAll eyeshadows can be applied seer or build up for a more dramatic effect\r\n \r\nBrand new and high quality\r\nGreat for party / casual / wedding makeup\r\nSmooth and fine powder, Easy to remove, Portable', 'uploads/product-image/pi_1584008845.jpg', 1, '2020-03-12 04:27:25', '2020-03-12 04:27:25'),
(62, 193, 2, 'Eyebrow Pencil', 80.00, 0.00, 0, 'ES3950', 7, 'O.TWO.O Eyebrow Pencil Waterproof Natural Long Lasting Ultra Fine 1.5mm Eye Brow Tint Cosmetics Brown Color Brows Make Up', 'Brand Name: O.TWO.O\r\nFormulation: Pencil\r\nIngredient: Waterproof Eyebrow Pencil\r\nQuantity: 1 piece\r\nModel Number: 9991\r\nWaterproof / Water-Resistant: Yes\r\nSize: Full Size\r\nBenefit: Natural\r\nBenefit: Long-lasting\r\nBenefit: Easy to Wear\r\nType: Eyebrow Enhancer\r\nNET WT: 1.5gCountry/Region of Manufacture: China\r\nCertification: GZZZGZZZ: YGZWBZ\r\nCertificate Number: 2019032102\r\nEyebrow head: 1.5mm\r\nSize: 14.7cm*0.6cm', 'uploads/product-image/pi_1584009030.jpg', 1, '2020-03-12 04:30:30', '2020-03-12 04:30:30'),
(63, 192, 4, 'Eyeliner Pen', 130.00, 0.00, 0, 'ES4250', 4, 'HOJO Starry Diamond Shining Eyeliner Pen Black Waterproof Long Lasting Quick Dry Gold and Silvery Smooth Easy to wear Beauty', 'Brand Name: HOJO\r\nFormulation: Liquid\r\nModel Number: 8051\r\nBenefit: Long-lasting\r\nBenefit: Easy to Wear\r\nBenefit: Fast/Quick Dry\r\nCountry/Region of Manufacture: China\r\nCertification: GZZZGZZZ: YGZWBZ\r\nWaterproof / Water-Resistant: Yes\r\nCertificate Number: YUEZHUANG20160269\r\nNET WT: 1.8g\r\nType: Eyeliner', 'uploads/product-image/pi_1584009277.jpg', 1, '2020-03-12 04:34:37', '2020-03-12 04:34:37'),
(64, 190, 3, 'Nail Polish Remover', 40.00, 0.00, 0, 'ES5050', 2, 'Lint-Free Nail Polish Remover Cotton Wipes UV Gel Tips Remover Cleaner Paper Pad Nails Polish Art Cleaning Manicure Tools', 'Features:\r\n*100% Brand new and high quality\r\n*Soft, absorbent and sanitary\r\n*Great for use Nail Polish Remover finishing wipe, Nail prep and Brush\r\n*Cleaner without leaving   behind any fibres ,nail wipes is lint free\r\n*Use with nail polish remove and nail brush clean', 'uploads/product-image/pi_1584009475.jpg', 1, '2020-03-12 04:37:55', '2020-03-12 04:37:55'),
(65, 189, 2, 'Nail Polish', 130.00, 2.00, 1, 'ES6150', 7, 'NAILCO Blue Series Lucky Gel Nail Polish 150 Pure Colors Long Lasting Lacquer Nail Gel Hybrid Esmalte Nails Design Gel Polish', 'Brand Name: NAILCO\r\nType: Gel Polish\r\nIngredient: Natural Resin\r\nQuantity: 1 piece\r\nModel Number: Blue Colors Nail Polish\r\nPainting gel for nails: Nail Design, Gel nail, Nail polish gel\r\nApplication: Nail salon, Makeup party, Nail design\r\nHigh Quality led nail gel: China nail gel Suppliers\r\nSemi Permanent UV LED Enamel: Gel for nail, Hybrid Lacquer\r\nNail design, Nail Polishes UV LED: UV nail gel polish, Gel nail poliosh 15ml\r\nUV Gel: Non-toxic\r\nShips from: China\r\nCertification: MSDS / SGS\r\nSmell: Almost Flavorless\r\nEffect: Shiny Glitter Nail Gel', 'uploads/product-image/pi_1584009835.jpg', 1, '2020-03-12 04:43:55', '2020-03-28 13:52:49'),
(66, 93, 5, 'Blazer for Men', 5000.00, 0.00, 0, 'ES-2101', 3, 'Slim Fit Blazer for Men - 34001211 is provided with quality as well as with a reasonable price. Class and comfort is guaranteed.', 'Fabrics:-90% Cotton, 10% Woolen.       \r\nAvailable Size: 40, 42.\r\nMeasurement (In Inch): 40 (Front Length 29, Chest 40, Sleeve Length 24.5); 42 (Front Length 29.5, Chest 41, Sleeve Length 25).\r\nColor: As same as picture.', 'uploads/product-image/pi_1584009901.jpeg', 1, '2020-03-12 04:45:01', '2020-03-12 04:45:01'),
(67, 187, 4, 'Nail Polish Extension', 200.00, 0.00, 0, 'ES6650', 6, 'CHUNSHU Transparent UV Gel Builder Gel Acrylic French Extend Nail Art Tips for Gel Nail Polish Extension Gel Primer Poly gel', 'Brand Name: CHUNSHU\r\nItem Type: Nail Gel\r\nVolume: 15ml\r\nNET WT: 15g\r\nType: UV Gel\r\nModel Number: Crystal Gel\r\nIngredient: Resin\r\nQuantity: 1PC\r\nColor: 7 colors\r\nSoak Off: Soak off UV Gel Nail Polish\r\nApplicable Occasions 1: Party/Holiday\r\nApplicable Occasions 2: Sexy club,Bar,Pub\r\nFeature: UV Builder Gel\r\nFunction: Extending Nail Length\r\nTools: UV/Led Lamp Nail Form Nail Art Pen\r\nUse With: Base Coat /Hard Gel/Top Coat', 'uploads/product-image/pi_1584010027.jpg', 1, '2020-03-12 04:47:07', '2020-03-12 04:47:07'),
(68, 94, 3, 'Waistcoat for Men', 2500.00, 0.00, 0, 'ES-2201', 3, 'The waistcoat has a full vertical opening in the front, which fastens with buttons or snaps. Both Single-breasted and Double-breasted waistcoats exist, regardless of the formality of dress, but single-breasted ones are more common. In the three-piece suit, the cloth used matches the jacket and trousers. Waistcoats can also have lapels or revers depending on the style.', 'Product Type: Waistcoat.\r\nGender: Men.\r\nFabric: Polyester.\r\nStylish & comfortable.\r\nFor any occasion.\r\nBest for winter.\r\nAs it is intended as outdoor wear.\r\nSize: S, M, L, XL, XXL.\r\nMeasurement (In inch): S (Chest: 34\", Length: 21.5\"); M (Chest: 36\", Length: 22.5); L (Chest: 38\", Length: 23.5\"); XL (Chest: 40\", Length: 24.5\"); XXL (Chest:42\", Length: 25.17\"). \r\nColor: As same as picture.\r\nMade in Bangladesh.', 'uploads/product-image/pi_1584010097.jpeg', 1, '2020-03-12 04:48:17', '2020-03-12 04:48:17'),
(69, 186, 4, 'Nail Treatment Cream', 300.00, 0.00, 0, 'ES7050', 2, 'Toe Feet From Nail Fungus Treatment Anti-fungal Infection Foot Anti-inflammatory Onychomycosis Chinese Toe Nail Treatment Cream', 'Efficacy:For the care of cracked and rough nails, nail discolorations, nail separation, which are attacked by nail fungus, and stimulate the healthy growth of the nails.\r\n\r\n Instructions:\r\n\r\n1. Soften nails with warm water.\r\n\r\n2. Use a manicure knife to repair the grooves on the nail surface and remove dirt.\r\n\r\n3. Apply 3-4 drops of the nail essence to the infected nails.\r\n\r\n4. Twice a day in the morning and in the evening respectively. After every 2-3 days of use, polish the surface of the nails and then continue to use.', 'uploads/product-image/pi_1584010166.jpg', 1, '2020-03-12 04:49:26', '2020-03-12 04:49:26'),
(70, 184, 1, 'Shaving Soap', 300.00, 0.00, 0, 'ES9050', 7, 'HAWARD Razor Men\'s Shaving Soap High Quality Sheep Shaving Cream Easy To Shave Facial Care Use With Shaving Brush And Razor', 'Features:\r\n1. Suitable for men\'s facial care and for helping them to shave their beards and mustaches.\r\n2. This product can create rich foam that can last for a long time and the special design makes the foam does not dry on the face.\r\n3. It will make the skin become more soft, supple and glossy.\r\n4. The disc-like shape and small size make the soap be easily stored. It is convenient to use.\r\n\r\nSpecifications:\r\nCondition: 100% Brand new\r\nType: Men\'s Shaving Soap\r\nPackage Weight: Approx. 100g\r\nQuantity: 1Pc\r\nColor: As Picture Shows\r\n\r\ningredient\r\n1.P9220 soap granules: 90%\r\n2.Goat milk: 7.8%\r\n3.Tourmaline powder: 0.9%\r\n4.Refined glycerin: 0.6%\r\n5.Vitamin E: 0.3%\r\n6.Distilled water: 0.3%\r\n7.EDTA4Na: 0.1%\r\n\r\nPackage Include:\r\n1 x Men\'s Shaving Soap', 'uploads/product-image/pi_1584010288.jpg', 1, '2020-03-12 04:51:28', '2020-03-12 04:51:28');
INSERT INTO `products` (`id`, `category_id`, `manufacturer_id`, `product_name`, `product_price`, `rating`, `rating_count`, `product_code`, `status_id`, `short_description`, `long_description`, `product_image`, `publication_status`, `created_at`, `updated_at`) VALUES
(71, 41, 4, 'Suit for Kids', 3000.00, 0.00, 0, 'ES-2301', 7, 'Slim Fit Suit for Kids -140 for your son to make him look dashing and feel warm, which can be easily worn on parties and festive celebrations.', 'Style: Party.\r\nSeason: Winter.\r\nGender: Boys.\r\nComfortable to wear.\r\nSuit Include: Coat, Pant, Bow tie, Jacket.\r\nShirt Material: 65% Cotton, 35% Polyseter.\r\nPant Material: Blazer Polyester.\r\nCoat Materail: Blazer Polyeter.\r\nSize (Year): 2y, 3y, 4y, 5y, 6y, 7y.\r\nSize Measurement (In Inch):\r\nCoat Size: 2Y (Length: 15, Chest: 22); 3Y (Length: 15.5, Chest: 25); 4Y (Length: 17, Chest: 26); 5Y (Length: 18.5, Chest: 27); 6Y (Length: 19.5, Chest: 28); 7Y (Length:21, Chest: 29).\r\nPant Size: 2Y (Length: 21.5); 3Y (Length: 23); 4Y (Length: 24.5); 5Y (Length: 26); 6Y (Length: 28.8); 7Y (Length: 30).\r\nColor: Maroon.', 'uploads/product-image/pi_1584010299.jpeg', 1, '2020-03-12 04:51:39', '2020-03-27 01:49:11'),
(72, 183, 5, 'Shaving Cream', 500.00, 0.00, 0, 'ES8750', 7, '1pcs Men\'s Shaving Cream Face Cleaning Gulong Fragrance Shaving Foam Manually Soften Beard Reduce #1069', 'NET WT: 30g\r\nModel Number: Facial Shaving Cream\r\nItem Type: Shaving Cream\r\nIngredient: Shaving Foam', 'uploads/product-image/pi_1584010410.jpg', 1, '2020-03-12 04:53:30', '2020-03-12 04:53:30'),
(73, 96, 2, 'Jacket for Men', 800.00, 0.00, 0, 'ES-2401', 3, 'Premium Quality Jacket for Men - this is stylish and comfortable jacket for men. In addition, it has extraordinary design and is good looking too. Furthermore, this jacket is incredibly comfortable to wear and keeps warmer during the winter.', 'Product type: Jacket.\r\nFabrics: Polyester.\r\n100% authentic product.\r\n100% export quality product.\r\nBest product quality.\r\nFor an effortlessly trendy look.\r\nSleeve: Full.\r\nTrendy look.\r\nComfortable to wear.\r\nGender: Men.\r\nSize: XS, S, M, L.\r\nMeasurement (In Inch): XS (Chest:38\", Length: 25\", Sleeve length: 24\"); S (Chest: 40”, Length 26”, Sleeve length: 25\"); M (Chest: 42\", Length: 27\", Sleeve length: 26\"); L (Chest: 44\", Length: 28”, Sleeve length: 26\").\r\nColor: As same as picture.\r\nThe color of the image and the actual product may vary slightly for your computer resolution and lighting.', 'uploads/product-image/pi_1584010513.jpeg', 1, '2020-03-12 04:55:13', '2020-03-12 04:55:13'),
(74, 182, 2, 'stronger beard wax', 500.00, 0.00, 0, 'ES13050', 7, 'Best sandalwood beard men stronger beard wax odor oil and softener, including nuts, hohoba', 'Item Type: Essential Oil\r\nEssential Oil Type: Compound Essential Oil\r\nBrand Name: MABOX\r\nCountry/Region of Manufacture: China', 'uploads/product-image/pi_1584010663.jpg', 1, '2020-03-12 04:57:43', '2020-03-12 04:57:43'),
(75, 181, 3, 'After-shave Lotion', 400.00, 0.00, 0, 'ES11450', 7, '50ml After-shave Lotion Men Skin Whitening Face Cream Concealer Ointment Cream Nutrition Moisturizing Skin Whitening Cream Skin', 'Brand Name: No\r\nEnName_Null\r\nGender: Male\r\nModel Number: After Shaving Lotion Cream\r\nNET WT: 50g\r\nIngredient: Natural', 'uploads/product-image/pi_1584010810.jpg', 1, '2020-03-12 05:00:10', '2020-03-12 05:00:10'),
(76, 99, 3, 'Non Lather Jacket', 800.00, 0.00, 0, 'ES-2501', 7, 'The color of the image and the actual product may vary slightly for your computer resolution and lighting.\r\nPremium Quality Jacket for Men - (Navy) MJ47, this is stylish and comfortable jacket for men. In addition, it has extraordinary design and is good looking too. Furthermore, this jacket is incredibly comfortable to wear and keeps warmer during the winter.', 'Product type: Jacket.\r\nFabrics: Polyester.\r\n100% authentic product.\r\n100% export quality product.\r\nBest product quality.\r\nFor an effortlessly trendy look.\r\nSleeve: Full.\r\nTrendy look.\r\nComfortable to wear.\r\nGender: Men.\r\nSize: XS, S, M, L.\r\nMeasurement (In Inch): XS (Chest:38\", Length: 25\", Sleeve length: 24\"); S (Chest: 40”, Length 26”, Sleeve length: 25\"); M (Chest: 42\", Length: 27\", Sleeve length: 26\"); L (Chest: 44\", Length: 28”, Sleeve length: 26\").\r\nColor: As same as picture.\r\nThe color of the image and the actual product may vary slightly for your computer resolution and lighting.', 'uploads/product-image/pi_1584011638.jpeg', 1, '2020-03-12 05:13:58', '2020-03-12 05:13:58'),
(77, 101, 4, 'Rexine Jacket Best', 1000.00, 0.00, 0, 'ES-2601', 3, 'Stylish Jacket for Men - MJ-51 is a stylish and comfortable jacket for men. In addition, it has an extraordinary design and is good looking too. Furthermore, this jacket is incredibly comfortable to wear and keeps warmer during the winter.', 'Product Type: Jacket.\r\nFabrics: Synthetic.\r\n100% authentic product.\r\nBest product quality.\r\nFor an effortlessly trendy look.\r\nSleeve: Full.\r\nComfortable to wear.\r\nGender: Men.\r\nSize: XS, S, M, L.\r\nMeasurement (In Inch): XS (Chest: 38\", Length: 25\"); S (Chest: 40”, Length 26”); M (Chest: 42\", Length: 27\"); L (Chest: 44\", Length: 28\").\r\nColor: Multicolor.', 'uploads/product-image/pi_1584011974.jpg', 1, '2020-03-12 05:19:34', '2020-03-12 05:19:34'),
(78, 102, 3, 'Jeans Jacket First', 800.00, 0.00, 0, 'ES-2701', 1, 'Presenting this Denim Blazer Jacket for Men - SMJB01, an absolute stylish as well as comfortable wear for men this winter. It will be perfect for any occasion. So, grab this awesome product at the best price from our PriyoShop.', 'Product Type: Jeans Jacket.\r\nFabric: 100% cotton denim.\r\nStylish & comfortable.\r\nPerfect for the winter season.\r\nIt can be wear in any occasions.\r\nWeight: 500 gm.\r\nSize: M, L.\r\nMeasurement (In inch): M (Chest: 40\", Length: 28\", Sleeve: 25\") L (Chest: 42\", Length: 28\", Sleeve: 25\").\r\nColor: As same as picture.', 'uploads/product-image/pi_1584012190.jpeg', 1, '2020-03-12 05:23:10', '2020-03-12 05:23:10'),
(79, 103, 4, 'Smart Leather Wallet', 800.00, 0.00, 0, 'ES-2801', 3, 'Best quality leather wallet for men at an amazing price. Exclusive design with gorgeous look. Premium quality assured.', 'Smart shaped wallet made from long-lasting leather.\r\nA number of slots that can comfortably accommodate your cash, SIM, cards or coins.\r\nMaterial: PU leather.\r\nColor: As same as picture.', 'uploads/product-image/pi_1584012424.jpeg', 1, '2020-03-12 05:27:05', '2020-03-12 05:27:05'),
(80, 104, 2, 'Rexine Wallet', 700.00, 0.00, 0, 'ES-2901', 3, 'This is the best quality pure leather wallet for men with decent amount of prices. It has an exclusive design with gorgeous look. In addition, it does assure premium quality whereas you can put on your important elements such as money, debit or credit card, and it gives you positive experience.', 'Item type: Wallet.\r\nStyle: Fashion.\r\nGender: Men.\r\nInterior: Photo holder pocket, Interior slot pocket, card holder.\r\nWallets: Standard wallets.\r\nMain Material: Leather.\r\nClosure type: Zipper & hasp.\r\nItem weight: 100 gm.\r\nColor: As same as picture.', 'uploads/product-image/pi_1584012650.jpeg', 1, '2020-03-12 05:30:50', '2020-03-12 05:30:50'),
(81, 105, 3, 'Leather Belt', 250.00, 0.00, 0, 'ES-', 3, 'Formal Artificial Leather Belt for Men - BL 116 is the best quality artificial leather formal and casual belt for men at an amazing price. It has been provided with exclusive design and gorgeous look.', 'Product Type: Waist belt.\r\nMaterials: Artificial leather.\r\nStyle: Formal & casual.\r\nSize: 28 to 38.\r\nWidth: 1.5 inch.\r\nBuckle Color: Silver with cover.\r\nStrap Color: Black.\r\nBest gifts for boyfriend, husband, lover, and friends.\r\nFit for all styles of clothes.\r\nCountry of Origin: Bangladesh.', 'uploads/product-image/pi_1584012882.jpeg', 1, '2020-03-12 05:34:43', '2020-03-12 05:34:43'),
(82, 179, 1, 'Nano Facial Sprayer', 800.00, 0.00, 0, 'ES13150', 2, '30ML Mini Nano Facial Sprayer USB Nebulizer Face Steamer Humidifier Hydrating Anti-aging Wrinkle Women Beauty Skin Care Tools', 'Features:\r\nThis nano water spraryer with large water tank can penetrate deep into the skin and vitalize the skin.\r\nAtomized particles are more delicate and easily absorbed by the buttocks.\r\nIt can moisture without smudging makeup.\r\nPlease use natural mineral water and do not add pure water, distilled water, etc. If the water quality density is too high or too low, it will cause the sprayer to clump or clog.\r\n \r\nProduct Parameters:\r\nType: facial steamer\r\nColor: white\r\nMaterial: plastic\r\nWater tank: about 30ml\r\n \r\nPacking List:\r\n1* Facial Mist Sprayer\r\n1* USB Cable', 'uploads/product-image/pi_1584012948.jpg', 1, '2020-03-12 05:35:49', '2020-03-12 05:35:49'),
(83, 106, 5, 'Rexine Belt', 220.00, 0.00, 0, 'ES-3101', 2, 'Best Quality Fashionable Leather Belt For Men - 008 (Brown) is the best quality artificial leather belt for men at an amazing price. It has been provided with exclusive design and gorgeous look. Moreover, it has been made up of durable metal.', 'Product Type: Formal Belt for Men.\r\nMaterials: Mixed leather.\r\nStyle: Formal and casual.\r\nSize (In inch): 28 to 38\".\r\nWidth (In inch): 1.5\".\r\nBuckle: Silver with leather cover.\r\nStrap Color Brown.\r\nFashionable design.\r\nComfortable to use.\r\nMade in Bangladesh.', 'uploads/product-image/pi_1584013070.jpeg', 1, '2020-03-12 05:37:50', '2020-03-12 05:37:50'),
(84, 178, 7, 'Face Mask', 700.00, 4.00, 1, 'ES3350', 7, '2Pcs Lifting Face Mask V Shape Face Slim Double Chin Check Neck Lift Peel-off Mask V Shaper Face Slimming Bandage Mask Skin Care', 'Features:\r\nAnti the face fiber turning into fat tissue to prevent fat accumulation.\r\nAnti-allergy - No paper, ginger and other stimulation material included,  no skin problems of side effects and skin scorching.\r\nLifting face skin care - Promote blood circulation, stimulate cells regeneration and repair, achieve the change from round face to V face. It can help to reshape and lift up face/neck.\r\nmoisturizing,whitenign - Help to moisten and maintain moisture of your skin, repair and stimulate cells regeneration, help to improve rough and dry skin problem.\r\n\r\n \r\n\r\nHow To Use ?\r\ncleaning you face.\r\nApply a thin layer of mask to the jaw.\r\nLengthen mask and hang to ears.\r\nabout 15-20 minutes remove the mask.\r\nUse palm to massage the face from bottom to the top for a better absorption.', 'uploads/product-image/pi_1584013083.jpg', 1, '2020-03-12 05:38:03', '2020-03-24 05:16:56'),
(85, 107, 3, 'Casual Leather Shoe', 2000.00, 4.00, 2, 'ES-3201', 3, 'Footwear can address your stance. Along these lines, it is imperative to wear strong footwear to improve your stance. Consequently, remembering your needs,presented to you the Casual Leather Shoe for Men - 198549023. Get it at the best cost.', 'Casual Leather Shoe for Men -  198549023.\r\nStylish and comfortable.\r\nBrand: Bay Emporium.\r\nType: Casual Shoe.\r\nGender: Men.\r\nUpper Material: Leather.\r\nSole Material: Rubber.      \r\nSize: 5, 6, 7, 8, 9, 10.', 'uploads/product-image/pi_1584013204.jpeg', 1, '2020-03-12 05:40:04', '2020-03-24 05:12:37'),
(86, 108, 3, 'Non Lather Shoe', 1300.00, 4.00, 3, 'ES-3301', 2, 'Fashionable Sandal for Ladies -with exceptional materials and fine styling, each pair of sandals is an affordable luxury that cleverly combines a youthful outlook with a worldly sensibility. Stylish as well as comfortable sandal at the same time. Grab the latest fashion for your foot.', 'Item Type: Sandal.\r\nModel No: QF681912BL.\r\nMaterial: Artificial Leather.\r\nStyle: Casual.\r\nOccasion: Office, casual.\r\nHeel Height: 1.5 Inch.\r\nSize: 36, 37, 38, 39, 40.\r\nFashionable to wear.\r\nVery soft & comfortable to wear.\r\nLatest design, outstanding quality, and value.\r\nGender: Women.\r\nImported from Thailand.\r\nColor: Black.\r\nDue to the light and screen difference, the item\'s color may be slightly different from the pictures.', 'uploads/product-image/pi_1584013493.jpeg', 1, '2020-03-12 05:44:53', '2020-03-24 05:00:57'),
(88, 177, 3, 'Body Exfoliator Scrub', 600.00, 0.00, 0, 'ES12450', 2, 'Natural Coconut and Avocado Body Exfoliator Scrub Cream For Exfoliating Whitening Brightening Peeling Cream Skin Care Women Men', 'Specification:\r\n\r\nN.W:  320g\r\nShelf Life: 3 Years\r\nSkin Types: All skin type\r\n\r\nIngredients:\r\n\r\nwater, coconut milk, coconut oil, Avocado oil\r\n\r\n(Please be aware that ingredient lists may change or vary from time to time. Please refer to the ingredient list on the product package you receive for the most up to date list of ingredients.)\r\n\r\nEffect:\r\n\r\nAdd plant oil essence, the fine particles full friction with your skin,cleaning your skin and at the same time soften and remove dirt and excess oil,nourish and moisturize the skin, relieve dry skin, make the skin fresh, delicate and shiny.\r\n\r\nPackage Include:\r\n\r\n1*320g Coconut Milk body exfoliating scrub Cream\r\n1*320g Avocado body exfoliating scrub cream', 'uploads/product-image/pi_1584013678.jpg', 1, '2020-03-12 05:47:58', '2020-03-12 05:47:58'),
(89, 109, 2, 'Keds', 350.00, 0.00, 0, 'ES-3401', 3, 'Kids Shirt (Boy) - is made of high quality materials, soft hand feeling, no any harm to your baby\'s skin. Stylish and fashion design make your baby more attractive.', 'Product Type: Kids Shirt.\r\nBrand: SaRa Lifestyle Ltd.\r\nFabric: 100% Cotton.\r\nUnique design.\r\nBest Production quality.\r\nFor an effortlessly trendy look.\r\n100% Authentic Product.\r\n100% Comfortable.\r\nGender: Boy.\r\nColor: As same as picture.\r\nSize: 2 - 3 Years, 4 - 5 Years, 6 - 7 Years.\r\nShirt Measurement (In Inch):  2 - 3 Years (Chest 27”, Sleeve Length 13.5”, Length 17.5”); 4 - 5 Years (Chest 29”, Sleeve Length 14.75”, Length 19”); 6 - 7 Years (Chest 31”, Sleeve Length 16”, Length 20.5”)', 'uploads/product-image/pi_1584013711.jpeg', 1, '2020-03-12 05:48:31', '2020-03-12 05:48:31'),
(90, 176, 2, 'Foot Care Spray', 100.00, 0.00, 0, 'ES12450', 7, 'YIGANERJING Foot Care Spray Antibacterial Deodorant Powder Anti Itch Sweat Odor Feet Liquid Anti-fungi Spray 5.0', 'Use : Foot\r\nModel Number : yiganerjing spray\r\nIngredient : yiganerjing spray\r\nNET WT : 30ml\r\nCertificate Number : yiganerjing spray\r\nCertification : GZZZ\r\nBrand Name : YIGANERJING\r\nCountry/Region of Manufacture : China\r\nGZZZ : ZGZWBZ\r\nType : spray', 'uploads/product-image/pi_1584013912.jpg', 1, '2020-03-12 05:51:52', '2020-03-12 05:51:52'),
(91, 111, 3, 'Jogging Shoes', 2500.00, 0.00, 0, 'ES-3601', 3, 'Footwear can address your status. Along these lines, it is imperative to wear branded and good quality footwear to improve your status. Consequently, remembering your needs, PriyoShop has presented to you the De Der Ankle Warm Boots for Men . Get it at the best cost.', 'Product Type: Shoe.\r\nGender: Men.\r\nLightweight.\r\nComfortable.\r\nDurable Rubber sole.\r\nAnti-skid.\r\nExcellent workmanship.\r\nBreathable.\r\nKorean style.\r\nColor: Black.\r\nSize: 43.', 'uploads/product-image/pi_1584014118.jpg', 1, '2020-03-12 05:55:18', '2020-03-12 05:55:18'),
(92, 175, 2, 'Whitening Mosturizing', 600.00, 0.00, 0, 'ES1950', 7, 'VIBRANT GLAMOUR Vitamin C Face Serum Whitening Mosturizing Remover Acne Anti-Aging Shink Pores Lift Firming Nourish Face Care', 'Brand Name: VIBRANT GLAMOUR\r\nFormulation: Liquid\r\nFeature: Anti-Aging\r\nGender: Female\r\nItem Type: Face Serum', 'uploads/product-image/pi_1584014141.jpg', 1, '2020-03-12 05:55:41', '2020-03-12 05:55:41'),
(93, 6, 3, 'Smart HD LED TV - 32', 10000.00, 0.00, 0, 'ES-1001', 3, 'This TV Quality Color Look, Slim, Quality TV Monitor, No Type Negative 5% Negative Free from Angle\r\nPanel & TECHNOLOGY: Taiwan\r\nparts/Assembly: China', 'Brand: Politron\r\nDisplay Device: Smart /WiFi /Android HD LED TV\r\nResolution1080 x 1366*768 (HD)\r\nAndroid Operating version KitKat 4.4.4 Built-In\r\nVGA Port / Dies Port / Wi-Fi- 802.11 / HDMI / Mouse Supported\r\nUSB / AV Output / Audio Out Port / DVD/CD Port\r\nSpeaker 2 pcs Multimedia Build in\r\nVideo Format FULL HD 4K Supported\r\nWarranty:\r\n1 Year Panel replacement.\r\n1 Year Spare Parts replacement.\r\n6 Years Free Service', 'uploads/product-image/pi_1584169840.jpg', 1, '2020-03-14 01:10:40', '2020-03-14 01:10:40'),
(94, 204, 3, 'Smart Television', 40000.00, 0.00, 0, 'ES-3701', 3, 'This 4K SMART Full HD LED TV - 43X7000F smart television has 43 inch size flat type screen, 4K display resolution, Edge LED, motion flow XR 200, dynamic contrast enhancer, live color technology, TV tuner, 20w sound output, Wi-Fi connectivity, remote control, FM radio, Linux operating system.', 'Screen Size: 43 Inch.\r\nPanel: Flat.\r\nResolution: 4K, 3840 x 2160.\r\nTechnology: Edge LED.\r\n3D Technology: 2D.\r\nResponse Time: 5MS.\r\nRefresh Rate: Motion flow XR 200 (Native 50Hz).\r\nContrast: Dynamic Contrast Enhancer.\r\nBrightness: Live Color Technology.\r\nTV Tuner: Analog and Digital.\r\nSound: 10W + 10W Sound Output.\r\nConnectivity: USB, HDMI, Ethernet, RF, Wi-Fi.\r\nRemote: Yes.\r\nOther Features FM Radio, Linux OS, Clear Audio+.\r\n5 Year Service Warranty without Parts.\r\nDelivery Charge: Inside Dhaka 500 TK, Outside Dhaka 1000 TK.', 'uploads/product-image/pi_1584248687.jpeg', 1, '2020-03-14 23:04:52', '2020-03-14 23:04:52'),
(95, 204, 2, 'LED Television', 12000.00, 0.00, 0, 'ES-3801', 7, 'Television is a medium that improves the world, triggers imagination, raises curiosity, encourages education and gathers millions around common interests. And, to give you the fresh and crystal clear resolution, PriyoShop has brought you the IPLE Basic LED Television - 24 Inch. Grab it at the best price.', 'IPLE Basic LED Television - 24 Inch.\r\nDisplay Size: 24 Inch.\r\nGlossy Frame design.\r\nFrame Color: Black, Silver.\r\nAnalog TV System: PAL, SECAM, NTSC, PAL-M/N.\r\nResolution: 1920*1080.\r\nWith HDMI function @1080p, 720p.\r\nRefresh Frequency: 50/60Hz.\r\nLanguages: English, Spanish, French, Italian, Portuguese, Arabic, Russian.\r\nWith full functional infrared remote control.\r\nPower Consumption: 50-85W.\r\nEnergy Saving Mode: 100-240V AC.\r\nViewing Angle: 178°.\r\nResponse Time: 5ms.\r\nPort: ATV*1 (IEC).\r\nPort: AV In x 2 Ports.\r\nPort: USB3.0 x 2 Ports.\r\nPort: HDMI x 2.\r\nPort: VGA x1\r\nPC Audio: X 1.\r\nEarphone X 1.', 'uploads/product-image/pi_1584249176.jpeg', 1, '2020-03-14 23:12:56', '2020-03-14 23:12:56'),
(96, 205, 2, 'Home Entertainment', 50000.00, 0.00, 0, 'ES-3901', 2, 'Google Mini Wireless Home Control & Voice Assistant Speaker GA00210-AU is the lite or affordable version of Google Home Standard Edition. Get hands-free help in any room. Google home mini is powered by the google assistant, so you can ask it questions and tell it to do things. Just start with \"ok google\" to get answers from Google, tackle your day, enjoy your entertainment, and control your smart home. And when you ask for help, it can tell your voice from others for a more personalized experience. Google home mini works on its own or you can have a few around the house, giving you the power of Google anywhere.', 'Product Type: Speaker.\r\nPort Type: USB.\r\nNumber of Speakers: 1.\r\nSpeaker Type: Voice-Activated Speaker.\r\nProduct Weight: 250 gm.\r\nConnectivity Technology: Wireless (WiFi Internet Required).\r\nCompatible With: All.\r\nShape: Round.\r\nNominal Output: 10 - 20 Watt.', 'uploads/product-image/pi_1584249662.jpg', 1, '2020-03-14 23:21:02', '2020-03-14 23:21:02'),
(97, 205, 3, 'Portable Player', 5000.00, 0.00, 0, 'ES-4001', 3, 'This is a professional condenser micro phone, which adopts the exacting complete electronic circuit control and gold-plate diaphragm capsule, the microphone with a perfect cardioids polar pickup pattern, high output, low self-noise, and the accurate reproduction of even the most subtle sound, suitable especially for studios, recording studios, broadcasting stations, stage performances and computer. Absolutely fulfil the requirement of fine quality for broadcasting and recording.', 'High output, low self-noise, and the accurate reproduction of even the most subtle sound.\r\nSuitable especially for studios, recording studios, broadcasting stations, stage performances and computer.\r\nIt absolutely can fulfil the requirement of fine quality for broadcasting and recording.\r\nMicrophone cover prevents wind noise when you are recording.\r\nDouble audio port; connect the microphone input and earphone/speaker output at the same time.\r\nCan stand much more weight with double-braced arms adding strength.', 'uploads/product-image/pi_1584249898.jpg', 1, '2020-03-14 23:24:58', '2020-03-14 23:24:58'),
(98, 225, 2, 'Washing Machines', 8000.00, 0.00, 0, 'ES-41', 2, 'Product details of Walton Smart Washing Machine SWP60', 'Product details of Walton Smart Washing Machine SWP60\r\n  Transparent window\r\n Low noise motor system\r\n​ Capacity: 6.0 Kg   \r\n Smart design\r\n Hi efficient pulsator', 'uploads/product-image/pi_1584263872.jpg', 1, '2020-03-15 03:17:53', '2020-03-15 03:17:53'),
(99, 226, 3, 'Ovens', 12000.00, 0.00, 0, 'ES-4201', 6, 'Sharp Microwave Oven R-SM-V is available at Esquire Electronics Ltd. – the Authorized Distributor of all the SHARP home appliances in Bangladesh. Get the original SHARP microwave ovens at the most affordable price only at Esquire Electronics and enjoy the Japan quality with the promise of best customer service in Bangladesh.', 'Product details of Sharp-R-72A1(SM)V - Microwave Oven - 25 Liters - Silver\r\nVoucher shall be applicable only when it is higher than the discount value\r\nCapacity: 25 Litres\r\nPowerful Grill Function\r\nEasy-to-use door with handle\r\n8 Auto Menus', 'uploads/product-image/pi_1584264028.jpg', 1, '2020-03-15 03:20:28', '2020-03-15 03:20:28'),
(100, 227, 5, 'Rice Cookers', 4500.00, 4.00, 1, 'ES-4301', 3, 'SHARP Rice Cooker KSH-D40-BL is available at Esquire Electronics Ltd. – the Authorized Distributor of all the SHARP appliances in Bangladesh. Get the original SHARP products at the most affordable price only at Esquire Electronics and enjoy the Japan quality with the promise of best customer service in Bangladesh.', 'Product details of Sharp Rice Cooker KSH-D40-BL\r\n\r\n\r\nCapacity: 3.8 Liters\r\nColor:White (Patterns: BL, RD, TQ)\r\nAutomatic Warm Function\r\nNon-Stick Coating\r\nCook/Warm Light Indicator', 'uploads/product-image/pi_1584264519.jpg', 1, '2020-03-15 03:28:39', '2020-03-31 16:08:21'),
(101, 228, 4, 'Coffee Machines', 2500.00, 0.00, 0, 'ES-4401', 6, 'Coffee Maker S/S  - Black and Silver\r\n\r\nCapacity:. Coffee jug type: Glass aroma jug. Supported coffee types: Ground coffee. Innovative water level indicator with light guides. Drip stop to interrupt the brewing whenever you like. Dishwasher-proof parts. Detachable filter holder.', 'Product details of ocean coffe machine 1.2L s/s\r\nCapacity: 1.2 litres\r\nCoffee jug type: Glass aroma jug\r\nSupported coffee types: Ground coffee\r\nInnovative water level indicator with light guides\r\nDrip stop to interrupt the brewing whenever you like\r\nDishwasher-proof parts\r\nDetachable filter holder', 'uploads/product-image/pi_1584264846.jpg', 1, '2020-03-15 03:34:06', '2020-03-15 03:34:06'),
(102, 229, 5, 'Stovetop Pressure Cookers', 1200.00, 0.00, 0, 'ES-4501', 3, 'About Classic Pressure Cooker 5.5 L With Free Kiam 14CM Non-Stick Frypan – Silver and Black\r\n\r\nHeavy Gauge And High Grade Aluminium:Kiam Pressure Cookers are made of very heavy gauge aluminium which make them absolutely safe and long lasting. The grade of aluminium is as high as 2S, which ensures excellent heat conductivity and thus saves fuel.GRS:Safety is of prime concern while designing any Kiam product', 'Product details of Classic Pressure Cooker 5.5 L With Free Kiam 14CM Non-Stick Frypan – Silver and Black\r\nBrand: Kiam\r\nProduct Type: Pressure Cooker\r\nColor: Black\r\nSize : 5.5 L\r\nCondition : Intact', 'uploads/product-image/pi_1584265082.jpg', 1, '2020-03-15 03:38:02', '2020-03-15 03:38:02'),
(103, 230, 5, 'Fans', 3000.00, 3.00, 1, 'ES-4601', 7, 'Conion Ceiling Fan Signature 56” 4 Blades - Shiny Cream\r\nConion Ceiling Fan Shiny Cream black has 3 blades with 56” sweep. This unique 4 blades fan with sophisticated looks, adds to the room decor and makes your home look like a place out of the storybooks. Powerful motor & Silent Operation gives extra comfort while you sleep. Extra wider blades for better air delivery, so you can rest comfortably during those hot summer months.', 'Product details of Conion Ceiling Fan Signature 56” 4 Blades - Shiny Cream\r\nBlades: 4\r\nRPM: 305\r\nColor: Shiny Cream\r\nEnergy Saving System\r\nUltra High Speed (UHS) Technology\r\nAir Delivery: 280 CBM/min\r\nRibbed Aluminum Blades', 'uploads/product-image/pi_1584265202.jpg', 1, '2020-03-15 03:40:02', '2020-03-31 19:51:42'),
(104, 231, 3, 'Air Conditioners', 80000.00, 0.00, 0, 'ES-4701', 3, '3 -TON AIR CONDITION NON INVERTER MIDEA BRAND CEILINGTYPE\r\nMIDEA Auto Restart Function, Temp Compensation, Turbo Mode, Cold Catalyst Filter, Sleep Mode, Anti-rust Cabinet, Independent Dehumidification, Louber Position Memory Function, Diamond Shape Outdoor.', 'Product details of MIDEA 3 TON AIRCONDITION CEILING TYPE\r\nCopper pipe, angle and other charges may be applicable depending on installation place and height.\r\nBrand=MIDEA\r\n100% Genuine product authentic products\r\nCAPACITY = 3 ton\r\nBTU=36000 ( ENERGY SAVING )\r\nSPACE COVERAZE= 300/350 SCFT\r\nProduct Type: Split Air Conditioner ENERGY SAVING\r\nMax Input consumption: 3750w\r\nELECTRICITY LINE 440 VOLT\r\nCompressor Type: Rotary\r\nRemote Control\r\nNO  Copper Pipe  \r\nCopper Pipe per feet Cost TK 300\r\nINSIDE DHAKA INSTALLED FREE \r\nBased on the Floor Level and Location of Air Conditioner\'s outer unit the installation charges may vary\r\nInstallation available only in Dhaka city after delivery 1 day time . No installation service will be provided by the seller from outside Dhaka\r\n·  For any problems,and installed please contact the warryntee card mobail number\r\n this warryntee card small carton inside', 'uploads/product-image/pi_1584265325.jpg', 1, '2020-03-15 03:42:05', '2020-03-15 03:42:05'),
(105, 232, 2, 'Water Heaters', 5000.00, 0.00, 0, 'ES-4801', 7, 'VISION Geyser 45 L Regular\r\nDescription\r\n\r\nProduct details:\r\n\r\nVISION Geyser 45 L Regular\r\nBrand: VISION\r\nItem code: 823669\r\n45-liter warm watt per one hour\r\nDimension: Ø18\"XH12.5\"\r\nSS Sheet', 'Product details of VISION Geyser 45 L Regular\r\nVISION Geyser 45 L Regular\r\nBrand: VISION\r\nItem code: 823669\r\n45-liter warm watt per one hour\r\nDimension: Ø18\"XH12.5\"\r\nSS Sheet\r\ntake about 25 min for the first time for proper heating\r\nAuto power off after required heating\r\n2 years warranty\r\nLow power consumption\r\n1500Watt Heater\r\nItalian Technology', 'uploads/product-image/pi_1584265439.jpg', 1, '2020-03-15 03:43:59', '2020-03-15 03:43:59'),
(106, 235, 3, 'Irons', 1500.00, 0.00, 0, 'ES-4901', 2, 'Dry Iron\r\nA dry iron, as the name implies, doesn\'t produce any steam of its own. It relies on the cloth underneath being damp to produce the steam. That means you have to hold the iron in place for far longer, and it is a lot heavier than the modern steam irons.', 'Product details of HD1134/28 - Dry Irons -Philips - Black and Silver\r\nLinished coated soleplate\r\nIron temperature-ready light\r\nPower: 750 watts\r\nOperating voltage: 240 volts\r\nCord winder to conveniently store the main cord', 'uploads/product-image/pi_1584265560.jpg', 1, '2020-03-15 03:46:00', '2020-03-15 03:46:00'),
(107, 233, 3, 'Vacuum Cleaners', 7000.00, 0.00, 0, 'ES-5001', 1, 'It has Power-saving, eco-conscious design with a high-performance motor that collects dust quickly. Equipped with higher-suction power motor, it is a time-saving appliance requiring less power than ever before. Enjoy reduced electric bills while contributing to your local environment.\r\nEnjoy the most hygienic steam cleaning results with Vacuum. Panasonic Vacuum kills up to 99.9% of germs and bacteria.', 'Product details of Miyako Vacuum Cleaner - Red\r\nModel: MVC-1625\r\n1600W\r\n21 LITTER\r\nMultifunction Wet/Dry/Blow\r\nFilter made of special material.\r\nSupper suction power.\r\n4.5m cable with VDE plus.\r\n1.5m Hose Assemble.\r\nCommercial Use\r\nHome/Office', 'uploads/product-image/pi_1584265673.jpg', 1, '2020-03-15 03:47:53', '2020-03-15 03:47:53'),
(108, 234, 3, 'Steam Mops', 4000.00, 0.00, 0, 'ES-5101', 3, 'Microfibre Spin Mop\r\nMopping with a traditional mop is tiring enough, especially when you need to manually ring out the mop head with your hands. You can finally ditch the old mop and replace with this easy and effortless map. Introducing the Spin Mop with 2pcs Mop Heads. With rotatable swivel mop head, no more getting your hands dirty or even straining your back.', 'Product details of Microfiber Spin Mop - Green\r\nHanger with strands doubled over the hanger\r\nPlastic claws attached to the strands\r\nThe pouch as with many professional flat mops\r\nScrewing as with the classic yarn mop\r\nVelcro as with many professional flat mops', 'uploads/product-image/pi_1584265792.jpg', 1, '2020-03-15 03:49:52', '2020-03-15 03:49:52'),
(109, 128, 1, 'Baby Walkers', 3500.00, 4.50, 2, 'ES-36654', 7, 'My Child Walk n Rock Musical Baby Walker / Rocker - Cream', 'The My Child Walk n Rock is a fabulous baby walker which can easily be converted to a rocker chair with a few simple adjustments! The height adjustable Walk n Rock includes an electronic interactive play tray with lights, sounds and music to keep baby entertained and also includes a supportive foot pad for use in rocker mode.', 'uploads/product-image/pi_1584452046.jpg', 1, '2020-03-17 07:34:07', '2020-03-27 02:52:59'),
(110, 128, 3, 'YOYO Stroller Pram', 4000.00, 3.43, 2, 'ES-24303', 4, 'Stroller Footrest,Footboard Sleeping Extend Board for Babyzen YOYO YOYO+ Stroller Pram', 'New Version foot rest extend board is specifically designed for your baby to feet support and relax during walking\r\nThe portable, lightweight design easily slips into your carry-on.\r\nEasy to install and adjustable, 6.5 inch cm longer fit for 0-3 years baby\r\nReducing pressure of your baby\'s lower back pain and leg/ankle swelling\r\nStructure has been updated more stronger.', 'uploads/product-image/pi_1584452337.jpg', 1, '2020-03-17 07:38:57', '2020-03-24 05:29:07'),
(111, 112, 7, 'Wedding Gowns', 19000.00, 0.00, 0, 'ES11290', 1, 'White Wedding Gowns', 'Age Group:Adults\r\nDress Type:Evening / Formal Dresses\r\nWaistline:Natural\r\nDresses Length:Floor-Length\r\nMaterial:Spandex / Cotton\r\nSilhouette:Ball Gown\r\nSupply Type:In-Stock Items, In-Stock Items\r\nAvailable Quantity:1000\r\nFabric Type:Velvet\r\nTechnics:Plain Dyed\r\nFeature:Anti-Static, Anti-Wrinkle, Breathable, Eco-Friendly, Plus Size, Washable', 'uploads/product-image/pi_1584802406.jpg', 1, '2020-03-21 08:53:27', '2020-03-21 08:53:27'),
(112, 113, 7, 'Wedding Lehenga Choli', 40000.00, 0.00, 0, 'ES11390', 7, 'Embroidered Red Bridal Lehenga Choli', 'Make a millennial bridal look in this red bridal velvet lehenga adorned with detailed floral zari and resham embroidery enhanced by stone embellishments all over. Paired with a similarly embroidered net choli and red colored net dupatta with matching work lace border and tassels details. Also paired with golden lycra dupatta with similar work lace details. Do Note: All accessories shown are for styling purpose and two dupatta is included in the set. Slight colour variation may occur due to photographic reasons. The unstitched choli can be customised up to 44 inches.', 'uploads/product-image/pi_1584802723.jpg', 1, '2020-03-21 08:58:43', '2020-03-21 08:58:43'),
(113, 114, 6, 'Wedding Evening Gowns', 20000.00, 0.00, 0, 'ES11490', 2, 'pink red wedding dress women wedding party gowns soft satin frock wedding guest dresses', 'Age Group:Adults\r\nDress Type:Evening / Formal Dresses\r\nSleeve Style:Cap Sleeve\r\nWaistline:Dropped, Natural waistline\r\nNeckline:O-Neck\r\nTrain:Court Train\r\nDresses Length:Floor-Length\r\nBuilt-in Bra:Yes\r\nFashion Element:Backless\r\nMaterial:Satin, Polyester / Cotton\r\nSilhouette:A-Line\r\nSleeve Length(cm):Sleeveless\r\nDecoration:Appliques\r\nSupply Type:OEM Service\r\nFabric Type:Satin\r\nTechnics:Embroidered', 'uploads/product-image/pi_1584803124.jpg', 1, '2020-03-21 09:05:24', '2020-03-21 09:05:24'),
(114, 115, 5, 'Wedding Sharara Suit', 50000.00, 0.00, 0, 'ES11590', 1, 'Light Peach Designer Heavy Embroidered Net Wedding Sharara Suit', 'COLOR : Light Peach\r\nFABRIC : Top - Premium Butterfly Net, Inner - Santoon, Bottom - Net, Dupatta - Net\r\nWORK : Heavy Resham Embroidery, Stones, Sequins, Lace Border\r\nOCCASION : Wedding, Reception, Party Wear, Engagement, Festival\r\nREADY-TO-WEAR : No\r\n\r\nNote: There might be a slight color variation due to lighting and flash used during photoshoot. The bright shade seen is the best closer view of fabric\'s color.', 'uploads/product-image/pi_1584803349.jpg', 1, '2020-03-21 09:09:09', '2020-03-21 09:09:09'),
(115, 116, 4, 'Wedding Sharee', 60000.00, 0.00, 0, 'ES11790', 1, 'Pink Color Banarasi Silk Designer Wedding Saree Blouse', 'You will be the center of attention in this attire. make the heads turn when you dress up with this Dazzling Pink Color Banarasi Silk Designer Wedding Saree Blouse. the weaving with jacquard work seems chic and perfect for any occasion.', 'uploads/product-image/pi_1584803554.jpg', 1, '2020-03-21 09:12:34', '2020-03-21 09:12:34'),
(116, 117, 2, 'Wedding Designer Dupatta', 10000.00, 0.00, 0, 'ES11890', 7, 'Bridal Designer Wedding Red Color Silk Lehenga and Silk Blouse and Net Dupatta', 'More Information\r\nDupatta Color-	Red\r\nFabric-Silk\r\nDupatta Fabric-Net\r\nPattern-Resham & Zari Embroidery\r\nDupatta Length-2 mtrs\r\nOccasion	Wedding,Party Wear\r\nWork-Resham & Zari Embroidery and Sequence and Stone Work\r\nColor-Red\r\nWash Care-Dry Clean Only', 'uploads/product-image/pi_1584803903.jpg', 1, '2020-03-21 09:18:23', '2020-03-21 09:18:23'),
(117, 118, 1, 'Square Scarf', 490.00, 0.00, 0, 'ES11990', 7, 'New Fashion Custom Wholesale Women Polyester satin 90*90 Printing Silk Square Scarf', 'Material:Polyester\r\nGender:Women\r\nItem Type:Scarves\r\nPlace of Origin:China\r\nModel Number:FH030504\r\nProduct name:Ladies Beautiful Scarfs\r\nStyle:Newest Scarf', 'uploads/product-image/pi_1584804941.jpg', 1, '2020-03-21 09:35:41', '2020-03-21 09:35:41'),
(118, 119, 1, 'gold diamond jewellary', 12000.00, 0.00, 0, 'ES12190', 1, 'gold diamond jewellary with necklace and earnings', 'Jewelry Type:Jewelry Sets\r\nPlace of Origin:Gujarat, India\r\nBrand Name:vexports\r\nModel Number:800\r\nJewelry Sets Type:Necklace and Earring Sets\r\nJewelry Main Material:Gold\r\nMaterial Type:Rose Gold\r\nMain Stone:Diamond\r\nDiamond shape:Round Brilliant Cut\r\nGender:Women\'s\r\ngold:2000', 'uploads/product-image/pi_1584805304.jpg', 1, '2020-03-21 09:41:45', '2020-03-21 09:41:45'),
(119, 120, 7, 'Hair bling accessories', 900.00, 0.00, 0, 'ES12890', 1, 'Handmade wedding crystal women hair bling accessories MP272', 'Brand Name:cheerfeel\r\nModel Number:SP-21\r\nMaterial:Ribbon, rhinestones\r\nType:wedding crown and tiaras\r\nUsage:wedding hair decoration\r\nMOQ:10PCS\r\nOEM Sevice:OEM Friendly', 'uploads/product-image/pi_1584805733.jpg', 1, '2020-03-21 09:48:53', '2020-03-21 09:48:53'),
(120, 121, 1, 'Transparent Umbrella', 1200.00, 0.00, 0, 'ES13190', 7, 'Portable Changeable Woman Cherry Transparent Umbrella', 'Type:Umbrellas\r\nProduct:Umbrella\r\nFunction:All in 1, Auto open\r\nPattern:Straight Umbrella\r\nControl:Semi-automatic\r\nOpen Diameter:80cm\r\nAge Group:Adults\r\nPanel Material:POE\r\nMaterial:Plastic, 7C clear POE\r\nPlace of Origin:Fujian, China\r\nBrand Name:Obrain\r\nModel Number:OB-CL2001M\r\nSize:23\"*8ribs, diameter 80cm,fold length 85cm\r\nWeight:380g\r\nARC:46\" arc\r\nFrame:Black metal frame with fiberglass long ribs\r\nShaft:8mm black metal shaft\r\nHandle:Matching color curved handle\r\nTips & Top:Plastic tips\r\nFeature:Custom design print', 'uploads/product-image/pi_1584806168.jpg', 1, '2020-03-21 09:56:08', '2020-03-21 09:56:08'),
(121, 124, 7, 'Salwar Kameez', 3000.00, 0.00, 0, 'ES12390', 2, 'Unstitched Blue Cotton Salwar Kameez', 'Salwar Kameez, also spelled Salwar kameez or shalwar qameez, is a traditional outfit originating in the subcontinent. It is a generic term used to describe different styles of dress. The Salwar Kameez can be worn by women. The Salwar and the kameez are two garments which are combined to form the Salwar kameez.This Product is made of good qualities fabrics. It is one of the most popular wears for different festivals and weddings occasion. Women look very gorgeous in colorful dress, and so they love to wear and have a luxurious and colorful dress for different social and cultural functions. It will keep you looking and feeling good all day long. The young lady to an elderly person every woman is fascinated about this.\r\n\r\nNandini\r\n\r\nMay the women be more powerful under the influence of e-commerce! ‘Nandini’- A new project of Daraz to ensure the economic and social advancement for women. We are the actual powerhouse of e-commerce. We are not fictional characters, we are real life ‘Wonder Women’! Observing the active participation and direct contribution pattern of the women in the field of e-commerce for the past 4 years, Daraz has taken the initiative to work with women exclusively through ‘Nandini’ to educate and empower them.', 'uploads/product-image/pi_1584806506.jpeg', 1, '2020-03-21 10:01:46', '2020-03-21 10:01:46'),
(122, 123, 3, 'Silk Saree', 2000.00, 0.00, 0, 'ES13890', 7, 'Silk per achol saree\r\nGender: Women\r\nHigh Quality Fabric\r\nEasy to wash and Perfect fitting\r\nStylish Design, Soft and Comfortable\r\nDesigned according to latest patterns', 'We are very proud to get you with (Kine Dao) us. Please give follow to get notification and stay connected. We promise to give the good product in good price…', 'uploads/product-image/pi_1584806924.jpg', 1, '2020-03-21 10:08:44', '2020-03-21 10:08:44'),
(123, 122, 5, 'Kurti Suit', 2000.00, 0.00, 0, 'ES15190', 3, 'Latest Designed, High Quality Cotton Fabric, Exclusive, Fashionable, Stylish and Comfortable, Salwar Suit for Women', 'Shalwar Kameez, also spelled salwar kameez or shalwar kameez, is a traditional outfit originating in the subcontinent. It is a generic term used to describe different styles of dress. The shalwar kameez can be worn by women. The shalwar and the kameez are two garments which are combined to form the shalwar kameez.\r\n\r\nThe authentic supplier and manufacturer of Daraz, offers a wide selection of products from renowned brands in Bangladesh with a promise of fast, safe and easy online shopping experience through Daraz. The seller comes closer to the huge customers on this leading online shopping platform of all over Bangladesh and serving to the greater extent for achieving higher customer satisfaction. The brands working with Daraz are not only serving top class products but also are dedicated to acquiring brand loyalty....', 'uploads/product-image/pi_1584807174.jpg', 1, '2020-03-21 10:12:54', '2020-03-21 10:12:54'),
(124, 173, 7, 'Hair Growth Therapy', 1000.00, 0.00, 0, 'ES17190', 2, 'Zafran Hair Growth Therapy - 150ml Zafran Hair Growth Therapy - 150ml', 'Hair care accessories are one of the most important parts of your daily routine and without appropriate measures being taken, it can lead to significant concerns about hair. Everyone needs to be more conscious and serious about good quality products for taking care of his/her hair. Including hair care product are shampoo, Conditioner, hair spy, hair oil, hair serum, hair pack, hair protein treatment etc.', 'uploads/product-image/pi_1584809283.jpg', 1, '2020-03-21 10:48:03', '2020-03-21 10:48:03'),
(125, 172, 6, 'Hair Setting Lotion', 900.00, 0.00, 0, 'ES21890', 7, 'Fantasea Hair Setting Lotion', 'No flaking formula\r\nLocks in hairstyles with super body\r\nAlcohol free\r\nVibrant shine\r\nFirm comb through set', 'uploads/product-image/pi_1584809957.jpg', 1, '2020-03-21 10:59:17', '2020-03-21 10:59:17'),
(126, 171, 2, 'Aloxxi Care  Shampoo', 1200.00, 0.00, 0, 'ES91890', 4, 'Aloxxi Care Reparative Shampoo, 10.1 Fl Oz', 'Color care reduces the time it takes to get beautiful color & complete grey coverage. Formulated with Turbo Dye Technology, ANDIAMO Express Permanent Colour delivers complete grey coverage in a fraction of the time.', 'uploads/product-image/pi_1584810430.jpg', 1, '2020-03-21 11:07:10', '2020-03-21 11:07:10'),
(128, 170, 7, 'Flat Iron', 2000.00, 0.00, 0, 'ES111890', 7, 'HOT TOOLS Professional Black Gold Micro-Shine Flat Iron', 'The Hot Tools Professional Black Gold line is the perfect combination of remarkable performance and striking elegance for best-in-class styling', 'uploads/product-image/pi_1584811022.jpg', 1, '2020-03-21 11:17:02', '2020-03-21 11:17:02'),
(129, 169, 2, 'Spray Bottle', 200.00, 0.00, 0, 'ES211790', 3, '600ML Hairdressing Spray Bottle Salon Barber Hair Tools Water Sprayer', 'Material: ABS Item Type: Spray Bottle, Product Capacity: 600ml\r\nIts well-sealed nozzle will spray fine mist, very convenient to operate\r\nSuitable for home use and professional hairdressing salon use', 'uploads/product-image/pi_1584811223.jpeg', 1, '2020-03-21 11:20:23', '2020-03-21 11:20:23'),
(130, 167, 2, 'Talcum Powder', 200.00, 0.00, 1, 'ES311790', 2, 'Ponds Magic Talc , Talcum Powder 100 grams', '>Helps You Stay Fresh & Keep Skin Soft & Smooth Throughout The Day.\r\n>Prevents Body Odour By Absorbing Sweat And Fighting Bacteria\r\n>Soothes & Cools To Give Freshness In Seconds\r\n>Removes Excess Oil Secretion On The Face Leading To An Even Tone Skin.\r\n>Makes Your Face Look Brighter Giving Real Glow In Seconds.', 'uploads/product-image/pi_1584811471.jpg', 1, '2020-03-21 11:24:31', '2020-03-31 15:39:10'),
(131, 166, 3, 'Wooden Board Sachets', 700.00, 0.00, 0, 'ES411790', 6, 'Karma Scents Set of 12 Wooden Board Sachets - Naturally Scented and Long-Lasting - Patchouli, Sandalwood, Rose, Vanilla, Jasmine, Lavender', 'Unique design wooden board essential oils fragrance infused sachet\r\nTwelve (12) Units Included - 2 of each scent - Patchouli, Sandalwood, Rose, Vanilla, Jasmine, Lavender\r\nHook-shaped Holder for Convenient Hanging\r\nEach sachet comes in its own polybag to retain scent.\r\nMany uses - drawers, closets, cars, desks, greeting cards, luggage, bathrooms', 'uploads/product-image/pi_1584811745.jpg', 1, '2020-03-21 11:29:05', '2020-03-21 11:29:05'),
(132, 165, 5, 'Chloe Perfume', 1000.00, 0.00, 0, 'ES911790', 1, 'Chloe Perfume by Karl Lagerfeld EDT Spray for Women 1.7 OZ.', 'Chloe Perfume by Karl Lagerfeld EDT Spray for Women 1.7 OZ.\r\nBrand New with Box, Unused, Unopened\r\n100% Authentic Perfume form Factory, No Additional Charge for \"TAX\"\r\nSHIP OUT WORLDWIDE (Ship in 48 hr.)\r\nFast Speed! Order Delivery 3-7 Days (For USA)', 'uploads/product-image/pi_1584812452.jpg', 1, '2020-03-21 11:40:52', '2020-03-21 11:40:52'),
(133, 163, 3, 'Feminine Deodorant', 290.00, 0.00, 0, 'ES2111790', 1, 'FDS Feminine Deodorant Spray, Baby Powder, 2oz. Per Can (1)', 'Product Dimensions: 6.5 x 1.5 x 1.5 inches ; 3.36 ounces\r\nShipping Weight: 4 ounces', 'uploads/product-image/pi_1584812722.jpg', 1, '2020-03-21 11:45:22', '2020-03-21 11:45:22'),
(134, 162, 4, 'Deodorant Roll-on', 200.00, 0.00, 0, 'ES311790', 2, 'Nivea Extra Whitening Pore Minimizer Antiperspirant Deodorant Roll-on - 50ml X 3 Packs', 'No alcohol, color or preservatives\r\nDouble Pore Minimizing Power\r\nReduces skin darkening\r\nLicorice extracts and Witch Hazel\r\nWhite Bioactive Complex', 'uploads/product-image/pi_1584812948.jpg', 1, '2020-03-21 11:49:08', '2020-03-21 11:49:08'),
(135, 161, 2, 'Detergents', 500.00, 0.00, 0, 'ES8011590', 7, 'Tide Pods Ultra Oxi Liquid Laundry Detergent Pacs, 73 Count, Packaging May Vary', 'Tide Power + Ultra Oxi\r\n10x the cleaning power (Stain Removal of 1 dose vs. 10X doses of the leading liquid bargain brand)\r\n4-in-1 technology: detergent, stain remover, colour protector, built-in pre-treaters\r\nDissolves in both hot & cold water\r\nHelps tackle tough set-in odors', 'uploads/product-image/pi_1584813408.jpg', 1, '2020-03-21 11:56:48', '2020-03-21 11:56:48'),
(136, 160, 2, 'Dove Soap', 90.00, 0.00, 0, 'ES4211590', 7, 'Dove White Original Beauty Soap Bar 4 Oz Each (16 Count)', 'Dove White Beauty Bar doesn’t dry skin like regular soap\r\n#1 Dermatologist Recommended Beauty Bar\r\nWith ¼ moisturizing cream and mild cleansers, Dove bar soap helps your skin maintain its natural moisture\r\nLeaves skin softer, smoother and more radiant-looking vs. ordinary soap\r\nBeauty Bar that is suitable for daily use on face, body and hands', 'uploads/product-image/pi_1584813590.jpg', 1, '2020-03-21 11:59:50', '2020-03-21 11:59:50'),
(137, 158, 6, 'Mouth fresher', 209.00, 0.00, 0, 'ES3311590', 3, 'Listerine Pocketpacks 288 Breath Strips 12-24-Strip Pack Listerine Cool Mint Pocketpacks Breath Strips Kills Bad Breath Germs, Family Size Value Pack Best Seller', 'Listerine Pocketpacks 288 Breath Strips 12-24-Strip Pack Listerine Cool Mint Pocketpacks Breath Strips', 'uploads/product-image/pi_1584813899.jpg', 1, '2020-03-21 12:04:59', '2020-03-21 12:04:59'),
(138, 157, 3, 'Toothpaste', 200.00, 0.00, 0, 'ES8811590', 7, 'Colgate Enamel Health Strengthen & Replenish Toothpaste, Clean Mint, Travel Size 0.85 oz - Pack of 12', 'Replenishes natural calcium and phosphate back into weakened enamel to fill in rough spots\r\nGently polishes the tooth surface so it\'s smoother and bacteria are less likely to stick\r\nUtilizes a unique, active fluoride formula that transforms enamel from rough and weakened to smooth and strong\r\nFreshens bad breath\r\nAnticavity fluoride protection', 'uploads/product-image/pi_1584814336.jpg', 1, '2020-03-21 12:12:16', '2020-03-21 12:12:16'),
(139, 126, 4, 'Hammock Swings', 2000.00, 3.00, 1, 'ES1110000', 2, 'Newborn Photography Props Crochet Hammock Baby Photo Pictures Accessories Knitted Infant Hanging Cocoon Bed Hammock Swings', 'Ages: 0-3 Months\r\n\r\nFeatures: Soft And Safety Material, Novelty Design\r\n\r\nColors: Green, Khaki, Red, Wine red, Pink, Beige, Brown\r\n\r\nItem color displayed in photos may be showing slightly different on your computer monitor since monitors are not calibrated same, plz make sure you can accept it before place an order.Thank U.!!!', 'uploads/product-image/pi_1585200225.jpg', 1, '2020-03-25 23:23:45', '2020-03-27 02:53:30'),
(140, 127, 2, 'Baby Waist Carrier', 4000.00, 0.00, 0, 'ES1111000', 1, 'TYRY.HU Ergonomic Baby Carrier infant baby hipseat carrier Kangaroo Bag for Hipseat Front Facing Baby Holder Baby Waist Carrier', 'Age Range: 0-36 Months  \r\nMaterial: COTTON\r\nLoad Bearing: >20kg\r\nCarriers Type: Front Carry\r\nCarriers Type: Front Facing\r\nCarriers Type: Face-to-Face\r\nCarriers Type: Back Carry\r\nCarriers Type: Side Carry\r\nType: Backpacks & Carriers\r\nPattern Type: Solid\r\nModel Number: STP0002\r\nBrand name: TYRY.HU\r\nColor: Mint, pink,blue ,red , purple\r\nAge range: 0-36 monthL\r\noad Bearing: 36kg\r\nMaterial: cotton\r\nType: Backpacks & Carriers\r\nCarriers Type: multi-function', 'uploads/product-image/pi_1585201087.jpg', 1, '2020-03-25 23:38:07', '2020-03-25 23:38:07'),
(141, 129, 3, 'Baby Bedding Set', 5000.00, 0.00, 0, 'ES1111100', 7, '3Pcs/set Kindergarten Bedding Set Crib Bed Linen Kit Baby Bedding Set Includes Pillowcase Bed Sheet Duvet Cover Without Filler', '3Pcs/set Kindergarten Bedding Set Crib Bed Linen Kit Baby Bedding Set Includes Pillowcase Bed Sheet Duvet Cover Without Filler\r\n\r\nMaterial：Cotton\r\nSize：\r\nPillowcase 30*50cm\r\nQuilt cover 120*150cm\r\nSheets 60*120cm\r\nColor：As picture\r\nFeatures：Soft ,Comfortable,Skin-friendly,Not easy to pilling, No fading\r\n\r\nPlease allow 1-3 cm difference due to manual measurement.\r\nthere may be a little color difference between the photo and the items.', 'uploads/product-image/pi_1585201291.jpg', 1, '2020-03-25 23:41:31', '2020-03-25 23:41:31'),
(143, 130, 3, 'Swim Pool Circle', 2000.00, 0.00, 0, 'ES1111110', 3, 'Infant Swim Pool Circle Angel Inflatable Baby Swimming Ring with Wing Toddler Floatie Trainer Kid Newborn', 'Description:\r\nMade of high quality PVC material, the swimming ring is durable and long lasting to use.\r\nThe deluxe baby float ring will bring your baby a joyful swimming time.\r\nIt is easy to inflate and deflate and also it can fold easily for storage.\r\nThe workmanship and design of the swim ring meets the requirement of toy international safety standard.\r\nLight weight and compcat design, it is easy for you to carry anywhere.\r\nSpecification:\r\nMaterial:PVC\r\nColor:blue.\r\nSize: internal diameter, chest perimeter\r\nS: 15cm, 45-52cm\r\nL: 16cm, 52-59cm\r\nXL: 18cm, 59-66cm\r\nNotes:\r\nPlease note that the baby swim ring is not a life-saving supplies, it is required accompanied by a guardian.\r\nThere might be a bit color distortions due to different computer resolutions.\r\nBecause of the manual measurement, there will be a bit of error here. Please understanding, thank you!\r\nPackage include:\r\n1*baby swim ring.\r\n1*manual blast pump.\r\n1*patch.', 'uploads/product-image/pi_1585202762.jpg', 1, '2020-03-26 00:06:02', '2020-03-26 00:06:02'),
(144, 132, 1, 'Baby Bath Tubs', 2700.00, 0.00, 0, 'ES1111111', 7, 'Inflatable bathtubs portable folding Shower Tubs newborn bath tub kids bath infant child wash swimming pool Baby Bath Tubs bebes', 'S          Age :0-1Years pld            Weight :3-9KG\r\nL          Age :2-3Years old            Weight :10-16KG\r\n\r\nSeller：Dear friend, in order to get the parcel to your hands as soon as possible,we promise to send your parcel within 48 hours after you place the order.', 'uploads/product-image/pi_1585202869.jpg', 1, '2020-03-26 00:07:49', '2020-03-26 00:07:49');
INSERT INTO `products` (`id`, `category_id`, `manufacturer_id`, `product_name`, `product_price`, `rating`, `rating_count`, `product_code`, `status_id`, `short_description`, `long_description`, `product_image`, `publication_status`, `created_at`, `updated_at`) VALUES
(145, 131, 3, 'Digital Baby Bath', 5000.00, 0.00, 0, 'ES2110000', 3, 'The 3-in-1 baby bath tub from Aqua Scale. Complete with patented, innovative technology this new and improved design includes a refreshed design and interface, helping parents monitor their child\'s development as well as providing peace of mind at bath time!', 'Baby bath features:\r\n\r\nThe unique shape of the tub and anti-slip insert safely holds babies for up to 2 years old (or until they can sit up unassisted).\r\nSet the scales to either lbs or oz and simply place baby into the tub for a precise weight reading in either fahrenheit or celsius.\r\nAqua scale has a built-in thermometer gauge that reads the bath water temperature and accurately displays the results on the digital LCD screen – making sure the water is a safe temperature before bath time even begins.\r\nWeighing your baby has never been easier. The aquascale\'s built-in, highly calibrated scales allow you to weigh baby whilst they are relaxed and having fun. The patented software reads and records baby\'s precise weight adjusting for water and movement.\r\nAquascale constantly monitors the temperature throughout bathtime, allowing you to adjust the temperature if and when necessary.\r\nLightweight.\r\nDrainage hole and plug makes emptying easy.\r\nNon-slip base.\r\nEasy clean.\r\nGeneral information:\r\n\r\nSize H25, W49, D80cm.\r\nSuitable from birthmonths to 2 years and over.\r\nAdult supervision required.\r\nManufacturer\'s 2 year guarantee.\r\nEAN: 869054000011.', 'uploads/product-image/pi_1585203219.jpg', 1, '2020-03-26 00:13:39', '2020-03-26 00:13:39'),
(146, 133, 3, 'Baby Bath Soap', 200.00, 0.00, 0, 'ES2210000', 4, 'Infant Skin-Friendly Laundry Soap 80g Baby with Mild Plant Laundry Soap Baby Aiaper Cleansing Soap', '[Name] baby skin-friendly laundry soap\r\n\r\n[Size] 11cm * 6cm * 2 cm\r\n\r\n[Net content] 80g\r\n\r\n[Packaging] Independent packaging\r\n\r\n[Shelf life] three years\r\n\r\n[Product features]\r\n\r\n1. Do not add chemicals, fluorescent agents\r\n\r\n2. Use mild stain removal ingredients to clean infant clothes', 'uploads/product-image/pi_1585203432.jpg', 1, '2020-03-26 00:17:12', '2020-03-26 00:17:12'),
(147, 134, 6, 'Baby Shampoo', 170.00, 0.00, 0, 'ES2220000', 6, 'JOHNSON’S® Baby Shampoo. Pure & gentle daily care. Our mildest formula. As gentle to eyes as pure water. Free from parabens, sulphates and dyes', 'I have suffered from psoriasis for most of my life and found Johnson’s baby shampoo to be one of the best products I have ever used as it has always seemed to be so mild with no adverse effects\r\nSince you have changed the formulation my scalp has been itching and my psoriasis has really flared up\r\nI am not at all bothered by the re-packaging in fact the pump dispenser was quite good to use in the shower\r\nbut now I am searching local shops and markets looking for the old version of this product.\r\nWhy change something that works when it comes to skincare this problem has bugged me all my life as every\r\ntime I find a product that’s suitable they change it.', 'uploads/product-image/pi_1585203600.jpg', 1, '2020-03-26 00:20:00', '2020-03-26 00:20:00'),
(148, 155, 3, 'Wet Wipe Pads', 200.00, 0.00, 0, 'ES2222000', 2, '26 Pcs / Bag Antibacterial Wipes Soft Face Towel Non Woven Cleaning Makeup Remover Wet Wipe Pads', '100% brand new, high quality\r\nFeatures:\r\nRO pure water, aloe vera help keep fur soft while removing dirt between baths.\r\nMade of spunlace non-woven cloth with antibacterial factors,\r\nMild and without skin irritation.\r\nAfter use, do not leave a greasy or dry feeling, but refreshing and comfortable.\r\nSuitable for use on eyes, lips, face and eyelashes, etc.\r\n \r\nSpecifications:\r\nItem Type: Antibacterial Wipes\r\nMaterial: non-woven cloth + antibacterial factor + RO pure water, aloe vera\r\nPackaging Size: approx.10x14cm / 3.94x5.51\r\nColor: As Shown\r\nQuantity: 26 Pcs / Bag\r\n \r\nNote:\r\nNo retail package.\r\nTransition: 1cm = 10mm = 0.39inch.\r\nPlease allow 0-1cm error due to manual measurement. Pls make sure you do not mind before you bid.\r\nDue to the difference between different monitors, the picture may not reflect the actual color of the item. Thank you!\r\n \r\nPackage Includes:\r\n1 Bag x Antibacterial Wipes (other accessories demo in the picture is not included.)', 'uploads/product-image/pi_1585203887.jpg', 1, '2020-03-26 00:24:47', '2020-03-26 00:24:47'),
(149, 154, 3, 'Nursing Bag', 4000.00, 0.00, 0, 'ES222220', 2, 'EASY BIG Portable Mummy Maternity Nappy Bag Large Capacity Baby Bag Travel Backpack Designer Nursing Bag for Baby Care BCS0023', 'Brand Name: EASY BIG\r\nMain Material: Polyester\r\nClosure Type: zipper\r\nStyle: Backpack\r\nSize: (30cm<Max Length<50cm)\r\nModel Number: BCS0023\r\nItem Type: Diaper Bags\r\n\r\nPattern Type: Solid\r\nItem Weight: 0.7kg\r\nItem Width: 21cm\r\nItem Height: 42cm\r\nItem Length: 27cm', 'uploads/product-image/pi_1585204119.jpg', 1, '2020-03-26 00:28:39', '2020-03-26 00:28:39'),
(150, 153, 4, 'Baby Cloth Diaper', 500.00, 0.00, 0, 'ES4444444', 7, '1Pc Reusable Baby Cloth Diaper Cover Washable Nappies Carton Cats Green Nappy Waterproof Pocket Diapers Suit 3-15kg', 'ITEM: Baby Nappy\r\n \r\n   SIZE:   Adjustable (3-13 kg)\r\n \r\n  MATERIAL: \r\n  Outer-A waterproof & breathable PUL\r\n  Inner-Suede cloth (It is an excellent choice next to   baby\'s skin for pocket style cloth diapers. )\r\n  \r\n \r\n  Care Instructions: \r\n  Wash cloth diapers separately from other laundry\r\n  Separate insert from diaper. If soiled, shake off solid   waste into a toilet.\r\n  Rinse in cold water. Machine wash at warm using mild   detergent (recommended Babyhug Laundry   Detergent)\r\n  Hand dry. Do not use fabric softeners, bleach, or   dryer sheets.', 'uploads/product-image/pi_1585204289.jpg', 1, '2020-03-26 00:31:29', '2020-03-26 00:31:29'),
(151, 135, 2, 'Summer Children Dress', 700.00, 0.00, 0, 'ES2110400', 2, 'Baby Dress Summer Children Dress Floral Beach Dresses Party Girl Clothing', 'Baby Dress Summer Children Dress Floral Beach Dresses Party Girl Clothing\r\n\r\n \r\n \r\n \r\n1) Brand: CONICE NINI\r\n\r\n2) Material: 95% Cotton 5% Spandex\r\n\r\n3) Age: 18Month ~ 8Years\r\n\r\n4) Packing: 1Set / Opp\r\n5) Style: Boutique clothing', 'uploads/product-image/pi_1585204681.jpg', 1, '2020-03-26 00:38:01', '2020-03-26 00:38:01'),
(152, 137, 5, 'Cotton Newborn Costume', 900.00, 0.00, 0, 'ES2199990', 6, 'New Arriavl Christmas Ruffle Red Lace Romper Dress Baby Girls Sister Princess Kids Xmas Party Dresses Cotton Newborn Costume', 'Department Name: Baby\r\nGender: Baby Girls\r\nSilhouette: A-Line\r\nSleeve Style: REGULAR\r\nDresses Length: Above Knee, Mini\r\nStyle: Casual\r\nSleeve Length(cm): Sleeveless\r\nDecoration: Lace\r\nDress Style: princess xmas dress\r\nModel Number: kids baby girls xmas rompers dress\r\nCollar: O-neck\r\nFit: Fits true to size, take your normal size\r\nMaterial: COTTON\r\nPattern Type: Solid\r\nMaterial Composition: Cotton Blend\r\nActual Images: yes\r\nBrand Name: pudcoco', 'uploads/product-image/pi_1585205798.jpg', 1, '2020-03-26 00:56:38', '2020-03-26 00:56:38'),
(153, 138, 6, 'mommy and me tshirt', 2600.00, 0.00, 0, 'ES21109999', 2, '2019 summer family matching clothes mommy and me tshirt mother daughter son outfits women mom t-shirt baby girl boys t shirt', 'Item Type: T-Shirts\r\nStyle: Casual\r\nSleeve Length(cm): Short\r\nFit: Fits true to size, take your normal size\r\nMaterial: COTTON\r\nPattern Type: Print', 'uploads/product-image/pi_1585206722.jpg', 1, '2020-03-26 01:12:02', '2020-03-26 01:12:02'),
(154, 152, 7, 'Mini Table Football', 5000.00, 0.00, 0, 'ES9910000', 4, 'Mini Table Football Game Set Soccer Table Kids Portable Game Toy Gift for children', 'Material: Wood\r\nAge Range: > 3 years old\r\nSports: Soccer\r\nDimensions: 34*22*7\r\nType: Hand-pushed Toy Brick Car/Hand-pushed Kada Car\r\nFunction: Communication Ability/Self-confidence Developing\r\nModel Number: soccertable6036\r\nGender: Boys\r\nDesign: car', 'uploads/product-image/pi_1585207219.jpg', 1, '2020-03-26 01:20:19', '2020-03-26 01:20:19'),
(155, 150, 2, 'Badminton Rackets', 1000.00, 0.00, 0, 'ES266110000', 4, '1 Pair Kids Funny Outdoor Sports Game Toys Tennis Racquet Badminton Rackets with 2pcs Balls 1pcs Shuttlecock for Kid Children', 'Plastic Type: PVC\r\nBarcode: No\r\nSports: Tennis\r\nFunction: Grasping/Movement Ability Developing\r\nModel Number: Tennis Badminton Set with 2pcs Rackets 2pcs Balls 1pcs Shuttlecock\r\nType Number: Party Games Competiton Balls Toys for Kids Children\r\nCertification: 3C\r\nDimensions: Rackets Size: 49 x 29cm/19.29 x 11.42inch\r\nWarning: Do Not Eat// Family Fun Table Game Toy\r\nAge Range: > 3 years old\r\nGender: Unisex\r\nMaterial: Plastic', 'uploads/product-image/pi_1585208261.jpg', 1, '2020-03-26 01:37:41', '2020-03-26 01:37:41'),
(156, 149, 2, 'Tent Play House', 4500.00, 0.00, 0, 'ES81110000', 2, 'Folding Tipi Children Tent Play House Teepee Portable Toy Tents for Kids Baby Girl Boy Outdoor Indoor Playhouse Princess Castle', 'Material: Polyester\r\nWarning: far away from fire\r\nType: Tent\r\nAge Range: 5-7 Years\r\nAge Range: 13-24 Months\r\nAge Range: 2-4 Years\r\nModel Number: kid tipi tent\r\nFeatures: Soft\r\nFeatures: Foldable\r\nType: Children Tent\r\nColor: Pink,Blue,Green\r\nSize(L x W x H): 140cmX140cmX135cm\r\nAge range: 1-14 years old', 'uploads/product-image/pi_1585208516.jpg', 1, '2020-03-26 01:41:56', '2020-03-26 01:41:56'),
(157, 148, 3, 'Boxing Gloves', 800.00, 0.00, 0, 'ES2555500', 3, 'Twins 8OZ 10OZ 12OZ 14OZ Men Women Kids a pair PU Leather Kick Boxing Gloves Karate Muay Thai MMA Boxing Gloves E', 'Brand Name: Zooboo\r\nApplicable People: Male\r\nis_customized: Yes\r\nModel Number: 416081751\r\nWeight: 226g (48-67 kg)\r\nMaterial: PU\r\nweight: 226 g (48-67 - kg)The applicable objects: male/female/the youth/lady\r\nColor: black,blue,white,red,pink\r\nsize: 8oz,10oz,12oz,14oz\r\nProduct category: boxing gloves\r\nunit: pairmaterial: PU\r\nPatten: breathable,durable,comfortable', 'uploads/product-image/pi_1585208821.jpg', 1, '2020-03-26 01:47:01', '2020-03-26 01:47:01'),
(159, 147, 2, 'Elephant Baby Bicycles', 5700.00, 0.00, 0, 'ES15678', 2, 'New Music Version Kids Tricycles Kids Bikes Cartoon Elephant Baby Bicycles Pedal Cars Baby Walkers Outdoor Toys Ride On Cars', 'Product Name: Baby Tricycles\r\nMaterial: Environmental protection + Explosion-proof plastic\r\nProduct color: color mix and match\r\nProduct size: 60 x 38 x 50\r\nPackage size: 46 x 20 x 39\r\nDescription:\r\n1.Children\'s tricycle is made of advanced environmental protection, high-strength plastic. Can ensure the baby\'s riding safety.\r\n2.Ergonomic design principles, fine to every detail, in full compliance with 12M-10-year-old children learn to ride.\r\n3.Tricycle using mechanical design, can withstand the weight of 50KG. Non-slip tires designed to ensure safe and stable riding baby.', 'uploads/product-image/pi_1585209178.jpg', 1, '2020-03-26 01:52:58', '2020-03-26 01:52:58'),
(160, 145, 4, 'Remote Control Helicopte', 2000.00, 0.00, 0, 'ES96890', 2, 'Kids Toys 3.5CH Remote Control Helicopte Mini RC Drone Children Gifts Flying Toys Model Outdoor Red Yellow Blue', 'Specifiction\r\n\r\nCharging time: About 45mins ( USB charging )\r\nFlying time: About 6 mins\r\nControlling distance: About 15 m\r\nSize: About 23*16.5*11.3cm\r\nBattery: 3.7V 130mAh Li-poly ( Included )\r\n\r\nColor: Yellow, blue .red \r\nType: RC Helicopters\r\nProduct function: rise, fall, light adjustment, forward and backward, left and right steering, left and right fine adjustment\r\n\r\nPackage Included:\r\n\r\n1 pc x Helicopter\r\n1 pc x Remote Controller\r\n1 pc x USB', 'uploads/product-image/pi_1585209598.jpg', 1, '2020-03-26 01:59:58', '2020-03-26 01:59:58'),
(161, 144, 6, 'Climbing Wall Car', 2600.00, 0.00, 0, 'ES176851', 2, 'RC Climbing Wall Car Infrared Electric Toy RC Car Radio Remote Control Climbing Drifting Gravity Stunt Car Kids Electric Toys', 'Brand Name: Lis\r\nMaterial: ABS\r\nCharging Voltage: --Package \r\nIncludes: Original Box\r\nPackage Includes: Remote Controller\r\nPackage Includes: USB Cable\r\nDimensions: 16*6*3.5cm\r\nCertification: 3C\r\nRemote Control: Yes\r\nBarcode: No', 'uploads/product-image/pi_1585209937.jpg', 1, '2020-03-26 02:05:37', '2020-03-26 02:05:37'),
(162, 139, 4, 'Wooden Puzzle', 220.00, 0.00, 0, 'ES721111', 2, 'Big Size Baby Montessori Wooden Puzzle Hand Grab Board Set Educational Toys Infantil Cartoon number letter Math Puzzle kids Gift', 'Product size: about 30cm*22.5cm*1.7cm  \r\n \r\nColor:as photo \r\nMaterial: Wooden  \r\nFor: < 3 years Children   \r\nThe best gifts for Parent-Child Game\r\n \r\nHow to play: Let your baby know the numbers, letters, and colors on the puzzle, then take out all the numbers on the puzzle, and shuffle them. Let the baby return all the letters one by one according to the shape of the empty space. During the move, parents can give appropriate help and tell the baby the characteristics of the numbers\r\n \r\nThis is a new generation of children\'s enlightenment toys. By grasping objects and matching the numbers to the correct position on the puzzle board, you can exercise your baby\'s \'brain\' in the game to let the baby grow up in a happy game and enrich the baby\'s imagination.', 'uploads/product-image/pi_1585210173.jpg', 1, '2020-03-26 02:09:33', '2020-03-26 02:09:33'),
(163, 140, 3, 'Toys for Girls Children', 170.00, 0.00, 0, 'ES117711', 2, '45cm Kawaii Stuffed Plush Doll Kids Toys for Girls Children Lovely Baby Plush Doll Toys Princess Plush Toys Girls Birthday Gifts', 'Specification:\r\n\r\n1. Height: 45cm (including the length of legs)\r\n2. Color: pink/red/purple/blue\r\n3. Filler: high quality PP cotton\r\n4. Material: Crystal velvet\r\n\r\nNote:\r\n\r\n1. Please allow little size differs due to manual measurement and make sure you do not mind before ordering, thank you!\r\n2. Please understand that colors may exist little chromatic aberration as the different resolution of monitors and the light brightness, etc. thank you!', 'uploads/product-image/pi_1585210626.jpg', 1, '2020-03-26 02:17:06', '2020-03-26 02:17:06'),
(164, 141, 2, 'Toys Play a house', 2800.00, 0.00, 0, 'ES1226111', 3, 'Children play house toys Play a house suit with dolls Safe and fun to accompany the play furniture is complete', 'Age Range: 5-7 Years\r\nAge Range: 8-11 Years\r\nAge Range: 12-15 Years\r\nItem Type: Dollhouses', 'uploads/product-image/pi_1585210783.jpg', 1, '2020-03-26 02:19:43', '2020-03-26 02:19:43'),
(165, 142, 1, 'Reservation robot', 2800.00, 0.00, 0, 'ES128111', 4, 'Spot sales Movie 3 alloy version of dino auto man STF01 dino Transformed toy toy reservation robot', 'Spot sales Movie 3 alloy version of dino auto man STF01 dino transformers toy reservation robot\r\n10 dollars is a deposit,\r\nNon-commodity prices,\r\nExcluding freight costs\r\nPlease note that,\r\nThe deposit is only made for the use of this item,\r\nDo not return other goods\r\nDo not use any other goods,\r\nNot unsubscribe in the middle,\r\nThe deposit needs to be confirmed to the account first.\r\nAfter the arrival of the goods, we will inform the buyer to repair the goods.\r\nPlease see the predetermined instructions of the store.\r\nPlease order again.\r\nThank you for your understanding', 'uploads/product-image/pi_1585210965.jpg', 1, '2020-03-26 02:22:45', '2020-03-26 02:22:45'),
(166, 143, 3, 'Electric Flying Eagle', 280.00, 0.00, 0, 'ES11280000', 2, 'Electric Bird Eagle Electric Flying Eagle Rotation Hanging Eagle Electric Ornaments Kids Toy Realistic Display Simulated', 'Brand Name: Lis\r\nClassification: electronic\r\nCertification: 3C\r\nModel Number: eagle\r\nTheme: electronic\r\nBarcode: No\r\nMaterial: Plastic\r\nWarning: can not eat\r\nBattery: 2AAA\r\nAnimals: Birds\r\nGender: Unisex\r\nFeatures: Battery Operated\r\nAge Range: > 3 years old', 'uploads/product-image/pi_1585211159.jpg', 1, '2020-03-26 02:25:59', '2020-03-26 02:25:59'),
(167, 65, 7, 'Shirt for Men', 980.00, 0.00, 0, 'ES-3265', 2, 'Short Description', 'Long  Description', 'uploads/product-image/pi_1585216708.jpg', 1, '2020-03-26 03:58:28', '2020-03-26 03:58:28'),
(168, 143, 2, 'Remote Control Robot', 2500.00, 0.00, 0, 'ES-221144', 6, 'Flexible Moonwalk: The robot can walk, slid, turn left and right, dance, sing songs, teach knowledge and English words. It is a great Christmas gift for children, great birthday gift for kids boys girls.\r\nIntelligent Remote control : It is an amazing remote control robot toy. Remote control distance can up to 5 meters.\r\nProgrammable actions: Just one key to start the automatic exercise mode quickly. So you can familiar each function of the control. Also you can program it up to 40 programming.\r\nEducational playing: The best idea tool for help to teach teaching concepts in robotics, science, art, and technology to young kids and then develop their creativity ability.\r\nUSB Convenient Charging: Charging time is about 2 hours, which can offer 1.5-3 hours playing time and 15-30 days in standby mode. At the same time, we always reply in 24hrs, and we promise to offer our best services for you If there is anything that you are not satisfied with our item or services.', 'About Glantop Robot:\r\nGlantop robot is a really special little robot that\'s packed with a lot of technology. It communicates through motion, sound, and LED eyes, revealing a responsive personality that\'s really inquisitive.This toy robot can also navigate his surroundings using self-balancing dual wheels. Plus, he is a prominent singer and dancer. It\'s an amazing choice if you\'re looking for a toy robot with advanced features and a fun personality at a fair price.\r\n\r\nSpecification\r\nPackaging Size: 31x11x30.5cm/12.2x4.3x12in\r\nNet Weight: 388g/13.68oz\r\nRobot Colors: Blue\r\n\r\nPlaying Modes:\r\nSpeed Mode – walk and slide\r\nDemo Mode – auto demonstration of music, dance and knowledge\r\nProgramme Mode – preset the different action for robot\r\nKnowledge Mode – simple knowledge about astronomy\r\nEnglish Words Mode – 28 simple words\r\nMusic Mode – 12 classic music\r\nSong Mode – 5 sweet songs\r\nRobot Language Mode – 4 kinds of funny and interesting robot language\r\n\r\nPackage Include:\r\n1* robot toy\r\n1* instruction handbook\r\n1* remote control\r\n1* USB cable\r\nCharging Time: about 2 hours\r\nPlaying Time: 2-3hours in full-power condition\r\nController Battery: require 2*”1.5V, AA” battery. (batteries are not included with item)\r\nControl Distance: 3-5 meters\r\n\r\nWarning:\r\n1, Charging voltage cannot exceed 5 V\r\n2, The children who is under 3 years old should have parental supervision.', 'uploads/product-image/pi_1585308871.jpg', 1, '2020-03-27 05:34:31', '2020-03-27 05:34:31'),
(169, 215, 1, 'Samsung s10', 98000.00, 0.00, 0, 'ES-154646', 1, 'An immersive Cinematic Infinity Display, Pro grade Camera and Wireless PowerShare The next generation is here\r\nUltrasonic in display fingerprint ID protects and unlocks with the first touch\r\nPro grade Camera effortlessly captures epic, pro quality images of the world as you see it\r\nIntelligently accesses power by learning how and when you use your phone. Wi Fi Connectivity 802.11 a/b/g/n/ac/ax 2.4G+5GHz, HE80, MIMO, 1024 QAM. Wi Fi Direct Yes', 'Super Speed Dual PixelRear: 12MP OIS (F1.5/F2.4)Front: 8MP AF (F1.7). *Measured diagonally, the screen size is 5.8\" in the full rectangle and 5.7\" accounting for the rounded corners. **Measured diagonally, the screen size is 6.2\" in the full rectangle and 6.1\" accounting for the rounded corners. ***Water resistant in up to 5 feet of water for up to 30 minutes. Rinse residue/dry after wet. ****MicroSD card sold separately. *****Wireless charger sold separately.', 'uploads/product-image/pi_1585684482.jpg', 1, '2020-03-31 13:54:44', '2020-03-31 13:54:44'),
(170, 245, 1, 'Orbitrac Exercise Cycles', 15000.00, 0.00, 0, 'ES-0010', 1, 'Short Description', 'Long Description', 'uploads/product-image/pi_1594131769.jpg', 1, '2020-07-07 08:22:50', '2020-07-07 08:22:50'),
(171, 245, 1, 'Exercise Cycle - Black', 6999.00, 0.00, 0, 'ES-0011', 1, 'Short Description', 'Long Description', 'uploads/product-image/pi_1594131846.jpg', 1, '2020-07-07 08:24:06', '2020-07-07 08:24:06'),
(172, 246, 1, 'Magnetic Cross Trainer', 26095.00, 0.00, 0, 'ES-0012', 1, 'Short Description', 'Long Description', 'uploads/product-image/pi_1594131925.jpg', 1, '2020-07-07 08:25:25', '2020-07-07 08:25:25'),
(173, 246, 1, 'Crazy Fit Massage Stand', 21998.00, 0.00, 0, 'ES-0013', 1, 'Short Description', 'Long Description', 'uploads/product-image/pi_1594132041.jpg', 1, '2020-07-07 08:27:21', '2020-07-07 08:27:21'),
(174, 247, 1, 'Drive Badminton Racket', 2620.00, 0.00, 0, 'ES-0014', 1, 'Short Description', 'Long Description', 'uploads/product-image/pi_1594132116.jpg', 1, '2020-07-07 08:28:37', '2020-07-07 08:28:37'),
(175, 247, 1, 'Badminton Shuttles', 929.00, 0.00, 0, 'ES-0015', 1, 'Short Description', 'Long Description', 'uploads/product-image/pi_1594132170.jpg', 1, '2020-07-07 08:29:30', '2020-07-07 08:29:30'),
(176, 248, 1, 'Table Tennis Racket', 1050.00, 0.00, 0, 'ES-0016', 1, 'Short Description', 'Long Description', 'uploads/product-image/pi_1594133089.jpg', 1, '2020-07-07 08:44:49', '2020-07-07 08:44:49'),
(177, 248, 1, 'Tennis Ball', 640.00, 0.00, 0, 'ES-0017', 1, 'Short Description', 'Long Description', 'uploads/product-image/pi_1594133154.jpg', 1, '2020-07-07 08:45:54', '2020-07-07 08:45:54'),
(179, 249, 1, 'Football Size 5', 450.00, 0.00, 0, 'ES-0019', 1, 'Short Description', 'Long Description', 'uploads/product-image/pi_1594133325.jpg', 1, '2020-07-07 08:48:45', '2020-07-07 08:48:45'),
(180, 249, 1, 'Anklet-Ninja-N733', 420.00, 0.00, 0, 'ES-0020', 1, 'Short Description', 'Long Description', 'uploads/product-image/pi_1594133405.jpg', 1, '2020-07-07 08:50:06', '2020-07-07 08:50:06'),
(181, 250, 1, 'English Willow Cricket Bat', 3000.00, 0.00, 0, 'ES-0021', 1, 'Short Description', 'Long Description', 'uploads/product-image/pi_1594133498.jpg', 1, '2020-07-07 08:51:38', '2020-07-07 08:51:38'),
(182, 250, 1, 'Cricket Kit Set Size 6 Junior', 5500.00, 0.00, 0, 'ES-0023', 1, 'Short Description', 'Long Description', 'uploads/product-image/pi_1594133616.jpg', 1, '2020-07-07 08:53:36', '2020-07-07 08:53:36'),
(183, 251, 1, 'Duranta CB Ryan 12 Kids', 5700.00, 0.00, 0, 'ES-0028', 1, 'Short Description', 'Long Description', 'uploads/product-image/pi_1594133676.jpg', 1, '2020-07-07 08:54:36', '2020-07-07 08:54:36'),
(184, 251, 1, 'Duranta Gravity-26 Red', 10100.00, 0.00, 0, 'ES-0030', 1, 'Short Description', 'Long Description', 'uploads/product-image/pi_1594133731.jpg', 1, '2020-07-07 08:55:31', '2020-07-07 08:55:31'),
(185, 252, 1, 'Helmet - Multi Color', 1250.00, 0.00, 0, 'ES-0031', 1, 'Short Description', 'Long Description', 'uploads/product-image/pi_1594133788.jpg', 1, '2020-07-07 08:56:28', '2020-07-07 08:56:28'),
(186, 252, 1, 'Fork Cover', 100.00, 0.00, 0, 'ES-0033', 1, 'Short Description', 'Long Description', 'uploads/product-image/pi_1594133838.jpg', 1, '2020-07-07 08:57:18', '2020-07-07 08:57:18');

-- --------------------------------------------------------

--
-- Table structure for table `products_attributes`
--

CREATE TABLE `products_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_attributes`
--

INSERT INTO `products_attributes` (`id`, `product_id`, `sku`, `size`, `color`, `price`, `stock`, `created_at`, `updated_at`) VALUES
(1, 9, 'ES-601', 'Small', 'Black', 300.00, 10, '2020-07-13 08:55:30', '2020-07-13 08:55:30'),
(2, 9, 'ES-601', 'Midium', 'Red', 300.00, 10, '2020-07-13 08:56:15', '2020-07-13 08:56:15'),
(3, 1, 'ES-101', 'Small', 'Red', 650.00, 10, '2020-07-13 08:59:42', '2020-07-13 08:59:42');

-- --------------------------------------------------------

--
-- Table structure for table `product_statuses`
--

CREATE TABLE `product_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_statuses`
--

INSERT INTO `product_statuses` (`id`, `status_name`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'Latest', 1, '2020-03-04 20:29:57', '2020-03-04 20:29:57'),
(2, 'Featured', 1, '2020-03-08 21:02:48', '2020-03-08 21:02:48'),
(3, 'Offer', 1, '2020-03-08 21:02:55', '2020-03-08 21:02:55'),
(4, 'Normal', 1, '2020-03-08 21:03:00', '2020-03-08 21:03:00'),
(5, 'Out Of Stock', 1, '2020-03-08 21:03:21', '2020-03-08 21:03:21'),
(6, 'Upcoming', 1, '2020-03-08 21:03:38', '2020-03-08 21:03:38'),
(7, 'Popular', 1, '2020-03-08 21:07:44', '2020-03-08 21:07:44');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `rating` double(8,2) NOT NULL DEFAULT 0.00,
  `review` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `customer_id`, `rating`, `review`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 4.00, 'Nice', 1, '2020-03-04 14:33:20', '2020-03-04 14:33:20'),
(2, 1, 2, 4.00, 'Very Nice', 1, '2020-03-04 14:41:18', '2020-03-04 14:41:18'),
(3, 1, 3, 3.00, 'Very Nice', 1, '2020-03-04 14:53:09', '2020-03-04 14:53:09'),
(4, 1, 4, 2.00, 'Average', 1, '2020-03-04 14:56:50', '2020-03-04 14:56:50'),
(5, 2, 4, 5.00, 'Very Very Nice', 1, '2020-03-04 15:00:33', '2020-03-04 15:00:33'),
(6, 2, 1, 2.00, 'Not Nice', 1, '2020-03-04 15:01:30', '2020-03-04 15:01:30'),
(7, 3, 1, 5.00, 'Not Nice', 1, '2020-03-04 15:17:22', '2020-03-04 15:17:22'),
(8, 4, 1, 5.00, 'Nice', 1, '2020-03-04 15:20:16', '2020-03-04 15:20:16'),
(9, 4, 2, 4.00, 'Nice', 1, '2020-03-04 15:20:35', '2020-03-04 15:20:35'),
(10, 2, 3, 5.00, 'Nice product', 1, '2020-03-05 22:52:34', '2020-03-05 22:52:34'),
(11, 4, 4, 4.00, 'Beautifull Product', 1, '2020-03-05 23:12:19', '2020-03-05 23:12:19'),
(12, 1, 5, 2.00, 'Test Review', 1, '2020-03-05 23:36:45', '2020-03-05 23:36:45'),
(13, 5, 2, 5.00, 'ok', 1, '2020-03-05 23:42:15', '2020-03-05 23:42:15'),
(14, 2, 5, 3.00, 'Great', 1, '2020-03-05 23:55:16', '2020-03-05 23:55:16'),
(15, 3, 5, 4.00, 'Great product', 1, '2020-03-06 00:00:32', '2020-03-06 00:00:32'),
(16, 86, 3, 4.00, 'fine', 1, '2020-03-23 07:59:43', '2020-03-23 07:59:43'),
(17, 85, 3, 4.00, 'fine', 1, '2020-03-24 03:49:11', '2020-03-24 03:49:11'),
(18, 60, 3, 4.00, 'Very Nice Product', 1, '2020-03-24 04:14:26', '2020-03-24 04:14:26'),
(19, 84, 3, 4.00, 'fine', 1, '2020-03-24 05:16:56', '2020-03-24 05:16:56'),
(20, 110, 3, 2.86, 'very nice product', 1, '2020-03-24 05:24:37', '2020-03-24 05:24:37'),
(21, 109, 3, 5.00, 'fine', 1, '2020-03-24 05:37:20', '2020-03-24 05:37:20'),
(22, 12, 4, 4.00, 'nice pant', 1, '2020-03-24 07:15:19', '2020-03-24 07:15:19'),
(23, 3, 4, 5.00, 'stylish product', 1, '2020-03-24 07:15:55', '2020-03-24 07:15:55'),
(24, 15, 4, 4.00, 'fine', 1, '2020-03-24 07:16:56', '2020-03-24 07:16:56'),
(25, 14, 4, 4.00, 'nice to wear', 1, '2020-03-24 07:17:45', '2020-03-24 07:17:45'),
(26, 139, 3, 3.00, 'good for baby', 1, '2020-03-27 02:53:30', '2020-03-27 02:53:30'),
(27, 65, 3, 2.00, 'good', 1, '2020-03-28 13:52:49', '2020-03-28 13:52:49'),
(28, 18, 3, 4.00, 'fine', 1, '2020-03-31 12:19:00', '2020-03-31 12:19:00'),
(29, 100, 1, 4.00, 'nice', 1, '2020-03-31 16:08:21', '2020-03-31 16:08:21'),
(30, 56, 1, 3.00, 'ok', 1, '2020-03-31 16:23:09', '2020-03-31 16:23:09'),
(31, 103, 15, 3.00, 'fine', 1, '2020-03-31 19:51:42', '2020-03-31 19:51:42'),
(32, 10, 24, 5.00, 'very good service', 1, '2020-04-01 11:21:52', '2020-04-01 11:21:52');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `customer_id`, `shipping_name`, `shipping_email`, `shipping_mobile`, `shipping_address`, `created_at`, `updated_at`) VALUES
(1, 39, 'Mahmudul Hasan', 'mahmudul@gmail.com', '01815750000', 'Rampura bazar- House no-7, Rampura, Dhaka', '2020-07-17 09:49:03', '2020-07-17 09:49:03'),
(2, 38, 'Nila Akter', 'sakil@gmail.com', '01710101010', 'House No 10- Rupnagar residential area., Mirpur, Dhaka', '2020-07-17 12:23:04', '2020-08-22 02:23:27'),
(3, 40, 'Tasnur Islam', 'tasnur@gmail.com', '01815457851', 'House no 10, Dhaka, Kamrangirchar', '2020-08-19 11:18:05', '2020-08-21 10:32:35'),
(4, 41, 'Md. Shakil Hossain', 'mdshakilhossain091@gmail.com', '+8801738620244', 'State guest house- Padma- Meghna- Ramna- Dhaka-1000, Dhaka, Maghbazar', '2020-08-22 11:23:04', '2020-08-22 11:23:04');

-- --------------------------------------------------------

--
-- Table structure for table `slider_images`
--

CREATE TABLE `slider_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider_images`
--

INSERT INTO `slider_images` (`id`, `slider_image`, `publication_status`, `created_at`, `updated_at`) VALUES
(2, 'uploads/slider-image/si_1583851026.jpg', 1, '2020-03-10 02:37:06', '2020-03-10 02:37:06'),
(3, 'uploads/slider-image/si_1583851031.jpg', 1, '2020-03-10 02:37:12', '2020-03-10 02:37:12'),
(4, 'uploads/slider-image/si_1583851036.jpg', 1, '2020-03-10 02:37:16', '2020-03-10 02:37:16'),
(6, 'uploads/slider-image/si_1583851049.jpg', 1, '2020-03-10 02:37:29', '2020-03-10 02:37:29'),
(8, 'uploads/slider-image/si_1584276057.jpg', 1, '2020-03-15 06:40:58', '2020-03-15 06:40:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_profile_photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile`, `user_profile_photo`, `roles`, `address`, `email_verified_at`, `password`, `status`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(24, 'Rahman', 'abdurrahman@gmail.com', '01859628543', NULL, NULL, 'Dhaka, Bangladesh', NULL, '$2y$10$vH2GDwuHerqeV6QEtYzGue1THVY5ivwZgbfE6y/DVRSjPt31Ap/mu', 1, NULL, '2020-04-01 11:09:53', '2020-04-01 11:09:53', NULL),
(26, 'Ahasaun', 'habibahasun019@gmail.com', '01966205647', 'uploads/customer-profile-image/cpp_1585765833.png', NULL, 'Uttara,Dhaka', NULL, '$2y$10$Et2s6uT00yds2DaBv5GfyOlV56t33j5u1s8xCZoqLoyB.auA5QcYe', 1, NULL, '2020-04-01 12:28:44', '2020-04-01 12:30:33', NULL),
(38, 'Shakil Hossain', 'sakil@gmail.com', '01738620241', NULL, NULL, 'State guest house- padma- meghna, Ramna, Dhaka', NULL, '$2y$10$Nw6aqJJaI45OKdyuln8hI.zBsYuYYt5fBy7ZT9rb4DeXUyYudlLAC', 1, NULL, '2020-07-15 10:18:32', '2020-08-22 05:20:33', NULL),
(39, 'Mahmudul Hasan', 'mahmudul@gmail.com', '01815750000', NULL, NULL, 'Rampura bazar- House no-7, Rampura, Dhaka', NULL, '$2y$10$EV.ot4uwGJ1qqox53UJonepKYnO7NWZSS8M8xnNnD4WsAjrq/0MYS', 1, NULL, '2020-07-17 08:52:57', '2020-07-17 09:49:03', NULL),
(40, 'Tasnur Islam', 'tasnur@gmail.com', '01815457851', NULL, NULL, 'House no 10, Dhaka, Kamrangirchar', NULL, '$2y$10$tvOvoDdcJo83BIaz9c7lV.CsvrIOCBn5Sb.qspZh7TK.wAUv5.qyO', 1, NULL, '2020-08-19 11:01:21', '2020-08-19 11:18:05', NULL),
(41, 'Md. Shakil Hossain', 'mdshakilhossain091@gmail.com', '+8801738620244', NULL, NULL, 'State guest house- Padma- Meghna- Ramna- Dhaka-1000, Dhaka, Maghbazar', NULL, '$2y$10$m34ku5Hs9QNUwwbouSUho.mznR6Nz3//0MgqD.q4b1LdhuHKOdKVW', 1, NULL, '2020-08-22 11:22:18', '2020-08-23 11:55:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `product_id`, `customer_id`, `created_at`, `updated_at`) VALUES
(3, 3, 40, '2020-08-20 11:06:16', '2020-08-20 11:06:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_mobile_unique` (`mobile`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_statuses`
--
ALTER TABLE `product_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider_images`
--
ALTER TABLE `slider_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT for table `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_statuses`
--
ALTER TABLE `product_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `slider_images`
--
ALTER TABLE `slider_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
