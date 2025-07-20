-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 20, 2025 at 11:27 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bkmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `facebook_id` varchar(255) DEFAULT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `github_id` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `branch` int(11) NOT NULL DEFAULT 0,
  `role` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `facebook_id`, `google_id`, `github_id`, `password`, `photo`, `phone`, `address`, `dob`, `branch`, `role`, `status`, `created_at`, `updated_at`) VALUES
(1, 'SAMIM-HosseN', 'admin@admin.net', NULL, NULL, NULL, '$2y$10$Rt9POJI6/Ew57gdiXhTbmOO.YUFQhLTyjWUmtYpAOPblCYKYkleRe', NULL, NULL, 'D', NULL, 1, 1, 1, NULL, NULL),
(2, 'Akter Hossain', 'akter@admin.net', NULL, NULL, NULL, '$2y$10$Rt9POJI6/Ew57gdiXhTbmOO.YUFQhLTyjWUmtYpAOPblCYKYkleRe', NULL, NULL, 'D', NULL, 2, 2, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `manager_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `name`, `location`, `phone`, `manager_id`, `created_at`, `updated_at`) VALUES
(1, 'Uttara Branch', 'Uttara, Dhaka', '01762164746', 1, '2025-07-15 22:52:05', '2025-07-15 22:52:05'),
(2, 'Gulshan-1 Branch', 'Gulshan-1, Dhaka', '0123654789', 2, '2025-07-15 22:52:37', '2025-07-15 22:54:31');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reg` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `price` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `reg`, `date`, `user_id`, `product_id`, `branch_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 20250718010001, '2025-07-18', 1, 2, 1, 1, 100, '2025-07-18 12:24:40', '2025-07-18 12:24:40'),
(2, 20250718010001, '2025-07-18', 1, 3, 1, 1, 120, '2025-07-18 12:24:40', '2025-07-18 12:24:40'),
(3, 20250718010001, '2025-07-18', 1, 4, 1, 1, 80, '2025-07-18 12:24:41', '2025-07-18 12:24:41'),
(4, 20250718010001, '2025-07-18', 1, 5, 1, 1, 180, '2025-07-18 12:24:42', '2025-07-18 12:24:42'),
(5, 20250718010002, '2025-07-18', 1, 2, 1, 1, 100, '2025-07-18 12:35:39', '2025-07-18 12:35:39'),
(6, 20250718010002, '2025-07-18', 1, 5, 1, 1, 180, '2025-07-18 12:35:39', '2025-07-18 12:35:39'),
(7, 20250718010002, '2025-07-18', 1, 6, 1, 1, 120, '2025-07-18 12:35:40', '2025-07-18 12:35:40'),
(8, 20250718010002, '2025-07-18', 1, 4, 1, 1, 80, '2025-07-18 12:35:40', '2025-07-18 12:35:40'),
(9, 20250718010002, '2025-07-18', 1, 3, 1, 1, 120, '2025-07-18 12:35:41', '2025-07-18 12:35:41'),
(10, 20250718010003, '2025-07-18', 1, 6, 1, 1, 120, '2025-07-18 12:35:49', '2025-07-18 12:35:49'),
(11, 20250718010003, '2025-07-18', 1, 5, 1, 1, 180, '2025-07-18 12:35:49', '2025-07-18 12:35:49'),
(12, 20250718010003, '2025-07-18', 1, 4, 1, 1, 80, '2025-07-18 12:35:50', '2025-07-18 12:35:50'),
(13, 20250718010003, '2025-07-18', 1, 2, 1, 1, 100, '2025-07-18 12:35:50', '2025-07-18 12:35:50'),
(14, 20250718010003, '2025-07-18', 1, 3, 1, 1, 120, '2025-07-18 12:35:51', '2025-07-18 12:35:51'),
(33, 20250718010004, '2025-07-18', 1, 5, 1, 1, 180, '2025-07-18 12:42:08', '2025-07-18 12:42:08'),
(34, 20250718010004, '2025-07-18', 1, 9, 1, 1, 100, '2025-07-18 12:42:11', '2025-07-18 12:42:11'),
(35, 20250718010005, '2025-07-18', 1, 7, 1, 3, 140, '2025-07-18 13:51:34', '2025-07-18 13:51:42'),
(36, 20250718010005, '2025-07-18', 1, 8, 1, 3, 80, '2025-07-18 13:51:35', '2025-07-18 13:51:41'),
(37, 20250718010005, '2025-07-18', 1, 9, 1, 3, 100, '2025-07-18 13:51:36', '2025-07-18 13:51:44'),
(38, 20250718010005, '2025-07-18', 1, 6, 1, 3, 120, '2025-07-18 13:51:38', '2025-07-18 13:51:43'),
(39, 20250720010006, '2025-07-20', 1, 10, 1, 5, 160, '2025-07-20 04:29:41', '2025-07-20 04:30:26'),
(40, 20250720010006, '2025-07-20', 1, 2, 1, 4, 100, '2025-07-20 04:29:41', '2025-07-20 04:30:28'),
(41, 20250720010006, '2025-07-20', 1, 4, 1, 4, 80, '2025-07-20 04:29:43', '2025-07-20 04:30:29'),
(42, 20250720010006, '2025-07-20', 1, 6, 1, 5, 120, '2025-07-20 04:29:44', '2025-07-20 04:30:31'),
(43, 20250720010007, '2025-07-20', 1, 6, 1, 3, 120, '2025-07-20 04:31:08', '2025-07-20 04:31:12'),
(44, 20250720010007, '2025-07-20', 1, 4, 1, 3, 80, '2025-07-20 04:31:09', '2025-07-20 04:31:13'),
(45, 20250720010007, '2025-07-20', 1, 9, 1, 3, 100, '2025-07-20 04:31:10', '2025-07-20 04:31:14'),
(46, 20250720010007, '2025-07-20', 1, 7, 1, 3, 140, '2025-07-20 04:31:10', '2025-07-20 04:31:15');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Bread', '2025-07-14 03:21:20', '2025-07-14 03:21:20'),
(2, 'Cakes', '2025-07-14 03:21:20', '2025-07-14 03:21:20'),
(3, 'Cookies & Biscuits', '2025-07-14 03:21:20', '2025-07-14 03:21:20'),
(4, 'Pastry', '2025-07-14 03:21:20', '2025-07-14 03:21:20'),
(5, 'Snacks', '2025-07-14 03:21:20', '2025-07-14 03:21:20'),
(6, 'Sweets', '2025-07-14 03:21:20', '2025-07-14 03:21:20'),
(7, 'Dairy Items', '2025-07-14 03:21:20', '2025-07-14 03:21:20'),
(8, 'Beverages', '2025-07-14 03:21:20', '2025-07-14 03:21:20');

-- --------------------------------------------------------

--
-- Table structure for table `excategories`
--

CREATE TABLE `excategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `excategories`
--

INSERT INTO `excategories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Raw Materials / Ingredients', NULL, NULL),
(2, 'Packaging Materials', NULL, NULL),
(3, 'Staff & Wages', NULL, NULL),
(4, 'Utilities', NULL, NULL),
(5, 'Maintenance & Repairs', NULL, NULL),
(6, 'Marketing & Advertising', NULL, NULL),
(7, 'Rent & Licenses', NULL, NULL),
(8, 'Equipment Purchase', NULL, NULL),
(9, 'Other Operational Costs', NULL, NULL),
(10, 'Transportation & Delivery', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `catId` bigint(20) UNSIGNED NOT NULL,
  `subcatId` bigint(20) UNSIGNED NOT NULL,
  `userId` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `amount` int(11) NOT NULL,
  `remark` text NOT NULL DEFAULT 'N/A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `catId`, `subcatId`, `userId`, `date`, `amount`, `remark`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2025-07-20', 500, 'N/A', '2025-07-20 07:28:35', '2025-07-20 07:28:35'),
(2, 1, 2, 1, '2025-07-20', 240, 'N/A', '2025-07-20 07:36:00', '2025-07-20 07:36:00'),
(3, 3, 18, 1, '2025-07-20', 150, 'N/A', '2025-07-20 07:41:07', '2025-07-20 07:41:07'),
(4, 5, 26, 1, '2025-07-20', 460, 'N/A', '2025-07-20 08:40:57', '2025-07-20 08:40:57'),
(5, 7, 36, 1, '2025-07-20', 1200, 'N/A', '2025-07-20 08:43:52', '2025-07-20 08:43:52'),
(6, 8, 40, 1, '2025-07-20', 4500, 'N/A', '2025-07-20 08:44:03', '2025-07-20 08:44:03');

-- --------------------------------------------------------

--
-- Table structure for table `exsubcategories`
--

CREATE TABLE `exsubcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exsubcategories`
--

INSERT INTO `exsubcategories` (`id`, `cat_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Flour', NULL, NULL),
(2, 1, 'Sugar', NULL, NULL),
(3, 1, 'Butter / Margarine', NULL, NULL),
(4, 1, 'Eggs', NULL, NULL),
(5, 1, 'Milk / Cream', NULL, NULL),
(6, 1, 'Chocolate / Cocoa', NULL, NULL),
(7, 1, 'Yeast / Baking Powder', NULL, NULL),
(8, 1, 'Dry Fruits / Nuts', NULL, NULL),
(9, 1, 'Food Colors & Flavors', NULL, NULL),
(10, 2, 'Bread Bags', NULL, NULL),
(11, 2, 'Cake Boxes', NULL, NULL),
(12, 2, 'Pastry Trays', NULL, NULL),
(13, 2, 'Stickers / Labels', NULL, NULL),
(14, 2, 'Wrapping Paper', NULL, NULL),
(15, 2, 'Disposable Cutlery', NULL, NULL),
(16, 3, 'Bakers\' Salaries', NULL, NULL),
(17, 3, 'Helpers / Assistants', NULL, NULL),
(18, 3, 'Delivery Staff', NULL, NULL),
(19, 3, 'Cashier / Sales Staff', NULL, NULL),
(20, 3, 'Bonuses', NULL, NULL),
(21, 4, 'Electricity', NULL, NULL),
(22, 4, 'Gas', NULL, NULL),
(23, 4, 'Water', NULL, NULL),
(24, 4, 'Internet', NULL, NULL),
(25, 4, 'Generator Fuel', NULL, NULL),
(26, 5, 'Oven Repair', NULL, NULL),
(27, 5, 'Refrigerator Maintenance', NULL, NULL),
(28, 5, 'Cleaning Supplies', NULL, NULL),
(29, 5, 'Electrical Repair', NULL, NULL),
(30, 5, 'Furniture Repair', NULL, NULL),
(31, 6, 'Facebook Ads', NULL, NULL),
(32, 6, 'Flyers / Posters', NULL, NULL),
(33, 6, 'Online Marketing', NULL, NULL),
(34, 6, 'Branding Materials', NULL, NULL),
(35, 6, 'Loyalty Cards', NULL, NULL),
(36, 7, 'Shop Rent', NULL, NULL),
(37, 7, 'Trade License', NULL, NULL),
(38, 7, 'Food Safety License', NULL, NULL),
(39, 7, 'Fire Safety Certificate', NULL, NULL),
(40, 8, 'Oven', NULL, NULL),
(41, 8, 'Mixers', NULL, NULL),
(42, 8, 'Display Showcase', NULL, NULL),
(43, 8, 'Freezer', NULL, NULL),
(44, 8, 'Weighing Machine', NULL, NULL),
(45, 9, 'POS Software', NULL, NULL),
(46, 9, 'Uniforms', NULL, NULL),
(47, 9, 'Mobile Recharge', NULL, NULL),
(48, 9, 'Staff Meals', NULL, NULL),
(49, 9, 'Waste Disposal', NULL, NULL),
(50, 10, 'Fuel', NULL, NULL),
(51, 10, 'Vehicle Maintenance', NULL, NULL),
(52, 10, 'Courier Services', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2025_07_09_050619_create_categories_table', 1),
(7, '2025_07_09_051129_create_subcategories_table', 1),
(8, '2025_07_09_051306_create_products_table', 1),
(23, '2025_07_10_062043_create_stocks_table', 2),
(24, '2025_07_10_064132_create_admins_table', 2),
(25, '2025_07_14_040543_create_branches_table', 2),
(26, '2025_07_14_080418_create_purchasecarts_table', 2),
(27, '2025_07_14_095009_create_purchaseorders_table', 2),
(31, '2025_07_10_054040_create_orders_table', 3),
(32, '2025_07_10_052213_create_carts_table', 4),
(33, '2025_07_20_105349_create_excategories_table', 5),
(34, '2025_07_20_105356_create_exsubcategories_table', 5),
(35, '2025_07_20_105407_create_expenses_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `reg` bigint(20) UNSIGNED NOT NULL,
  `total` bigint(20) UNSIGNED DEFAULT NULL,
  `discount` bigint(20) UNSIGNED DEFAULT NULL,
  `vat` bigint(20) UNSIGNED DEFAULT NULL,
  `payable` bigint(20) UNSIGNED DEFAULT NULL,
  `pay` bigint(20) UNSIGNED DEFAULT NULL,
  `due` bigint(20) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `date`, `user_id`, `branch_id`, `reg`, `total`, `discount`, `vat`, `payable`, `pay`, `due`, `status`, `created_at`, `updated_at`) VALUES
(1, '2025-07-18', 1, 1, 20250718010001, 480, 0, 0, 480, 480, 0, 2, '2025-07-18 12:24:54', '2025-07-18 12:24:54'),
(2, '2025-07-18', 1, 1, 20250718010002, 600, 0, 0, 600, 500, 100, 3, '2025-07-18 12:35:45', '2025-07-18 12:35:45'),
(3, '2025-07-18', 1, 1, 20250718010003, 600, 0, 0, 600, 500, 100, 3, '2025-07-18 12:35:54', '2025-07-18 12:35:54'),
(4, '2025-07-18', 1, 1, 20250718010004, 280, 0, 0, 280, 200, 80, 3, '2025-07-18 12:52:06', '2025-07-18 12:52:06'),
(5, '2025-07-18', 1, 1, 20250718010005, 1320, 50, 198, 1468, 1468, 0, 2, '2025-07-18 13:51:54', '2025-07-18 13:51:54'),
(6, '2025-07-20', 1, 1, 20250720010006, 2120, 50, 318, 2388, 2388, 0, 2, '2025-07-20 04:30:59', '2025-07-20 04:30:59'),
(7, '2025-07-20', 1, 1, 20250720010007, 1320, 20, 198, 1498, 1200, 298, 3, '2025-07-20 04:31:25', '2025-07-20 04:31:25');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `availability` tinyint(1) NOT NULL DEFAULT 1,
  `size` varchar(255) DEFAULT NULL,
  `ingredients` varchar(255) DEFAULT NULL,
  `manufactured` date DEFAULT NULL,
  `expired` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category_id`, `subcategory_id`, `price`, `stock`, `description`, `image`, `availability`, `size`, `ingredients`, `manufactured`, `expired`, `created_at`, `updated_at`) VALUES
(2, 'Vanilla Cupcake', 2, 7, 100, 12, 'Soft and moist individual cake with sweet vanilla flavor and creamy topping.', 'FD-1752485052.jpg', 1, '1 pcs', 'Flour, Sugar, Eggs, Vanilla essence, Butter, Baking powder', '2025-07-14', '2025-07-31', '2025-07-14 03:24:12', '2025-07-20 04:30:28'),
(3, 'Chocolate Donut', 4, 15, 120, 16, 'Ring-shaped fried dough topped with rich chocolate glaze.', 'FD-1752485100.jpg', 1, '1 pcs', 'Flour, Cocoa powder, Sugar, Yeast, Milk, Butter, Chocolate glaze', '2025-07-14', '2025-07-20', '2025-07-14 03:25:00', '2025-07-18 12:42:38'),
(4, 'Chicken Patties', 5, 19, 80, 9, 'Crispy puff stuffed with spicy chicken filling, ideal for snacks.', 'FD-1752485151.jpg', 1, '1 pcs', 'Flour, Butter, Chicken, Onion, Garlic, Spices', '2025-07-14', '2025-07-31', '2025-07-14 03:25:51', '2025-07-20 04:31:13'),
(5, 'Red Velvet Slice', 2, 6, 180, 12, 'Moist red cake slice layered with smooth cream cheese frosting.', 'FD-1752485194.jpg', 1, '1 pcs', 'Flour, Cocoa, Buttermilk, Vinegar, Sugar, Eggs, Cream cheese frosting', '2025-07-15', '2025-07-20', '2025-07-14 03:26:34', '2025-07-18 12:45:38'),
(6, 'Cheese Bun', 1, 4, 120, 3, 'Soft and fluffy bun filled or topped with melted cheese.', 'FD-1752485249.jpg', 1, '1 pcs', 'Flour, Yeast, Milk, Sugar, Cheese, Butter', '2025-07-14', '2025-07-31', '2025-07-14 03:27:29', '2025-07-20 04:31:12'),
(7, 'Butter Croissant', 4, 15, 140, 18, 'Flaky and buttery French-style crescent-shaped pastry.', 'FD-1752485306.jpg', 1, '1 pcs', 'Laminated dough (Flour, Butter), Yeast, Sugar, Salt', '2025-07-14', '2025-07-31', '2025-07-14 03:28:26', '2025-07-20 04:31:15'),
(8, 'Veg Sandwich', 6, 25, 80, 19, 'Fresh sandwich packed with vegetables and creamy dressing.', 'FD-1752485357.jpg', 1, '10 pcs', 'Bread, Tomato, Cucumber, Lettuce, Cheese, Mayonnaise', '2025-07-14', '2025-07-20', '2025-07-14 03:29:17', '2025-07-18 13:53:14'),
(9, 'Chocolate Cookie', 3, 12, 100, 11, 'Crispy outside, chewy inside, loaded with chocolate chips.', 'FD-1752485413.jpg', 1, '1 pcs', 'Flour, Butter, Eggs, Chocolate chips, Baking soda, Sugar', '2025-07-09', '2025-07-31', '2025-07-14 03:30:13', '2025-07-20 04:31:14'),
(10, 'Garlic Bread', 1, 2, 160, 22, 'Toasted bread slices flavored with garlic butter and herbs.', 'FD-1752485456.jpg', 1, '1 pcs', 'Flour, Garlic, Butter, Herbs, Yeast, Salt', '2025-07-14', '2025-07-31', '2025-07-14 03:30:56', '2025-07-20 04:30:26'),
(11, 'Birthday Cake', 2, 5, 420, 25, 'Classic round cake decorated with cream, ideal for celebrations.', 'FD-1752485498.jpg', 1, '1 LB', 'Flour, Eggs, Sugar, Butter, Milk, Cream, Flavoring, Food color', '2025-07-14', '2025-07-31', '2025-07-14 03:31:38', '2025-07-18 13:53:16');

-- --------------------------------------------------------

--
-- Table structure for table `purchasecarts`
--

CREATE TABLE `purchasecarts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `time` time DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `chalan_reg` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `branch` int(11) NOT NULL DEFAULT 0,
  `order_qty` int(11) NOT NULL DEFAULT 1,
  `ready_qty` int(11) NOT NULL DEFAULT 0,
  `delivery_qty` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `remark` varchar(255) DEFAULT NULL,
  `unit_price` int(11) DEFAULT NULL,
  `total_price` int(11) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchasecarts`
--

INSERT INTO `purchasecarts` (`id`, `date`, `time`, `user_id`, `chalan_reg`, `product_id`, `branch`, `order_qty`, `ready_qty`, `delivery_qty`, `status`, `remark`, `unit_price`, `total_price`, `unit`, `created_at`, `updated_at`) VALUES
(1, '2025-07-18', '12:35:19', 1, 250718000100000001, 2, 1, 5, 0, 0, 1, 'N/A', 100, 100, '1 pcs', '2025-07-18 06:35:19', '2025-07-18 06:35:25'),
(2, '2025-07-18', '12:35:20', 1, 250718000100000001, 3, 1, 5, 0, 0, 1, 'N/A', 120, 120, '1 pcs', '2025-07-18 06:35:20', '2025-07-18 06:35:27'),
(3, '2025-07-18', '12:35:21', 1, 250718000100000001, 6, 1, 5, 0, 0, 1, 'N/A', 120, 120, '1 pcs', '2025-07-18 06:35:21', '2025-07-18 06:35:30'),
(4, '2025-07-18', '12:35:33', 1, 250718000100000002, 11, 1, 4, 4, 4, 2, 'N/A', 420, 420, '1 LB', '2025-07-18 06:35:33', '2025-07-18 09:02:32'),
(5, '2025-07-18', '12:35:37', 1, 250718000100000002, 10, 1, 4, 4, 4, 2, 'N/A', 160, 160, '1 pcs', '2025-07-18 06:35:37', '2025-07-18 09:02:36'),
(6, '2025-07-18', '12:35:40', 1, 250718000100000002, 8, 1, 4, 4, 4, 2, 'N/A', 80, 80, '10 pcs', '2025-07-18 06:35:40', '2025-07-18 09:02:33'),
(7, '2025-07-18', '12:35:41', 1, 250718000100000002, 7, 1, 4, 4, 4, 2, 'N/A', 140, 140, '1 pcs', '2025-07-18 06:35:41', '2025-07-18 09:02:35'),
(8, '2025-07-18', '12:35:52', 1, 250718000100000003, 10, 1, 3, 3, 3, 2, 'N/A', 160, 160, '1 pcs', '2025-07-18 06:35:52', '2025-07-18 06:43:50'),
(9, '2025-07-18', '12:35:52', 1, 250718000100000003, 2, 1, 3, 3, 3, 2, 'N/A', 100, 100, '1 pcs', '2025-07-18 06:35:52', '2025-07-18 06:43:53'),
(10, '2025-07-18', '12:35:52', 1, 250718000100000003, 3, 1, 3, 3, 3, 2, 'N/A', 120, 120, '1 pcs', '2025-07-18 06:35:52', '2025-07-18 06:43:56'),
(11, '2025-07-18', '12:35:53', 1, 250718000100000003, 4, 1, 3, 3, 3, 2, 'N/A', 80, 80, '1 pcs', '2025-07-18 06:35:53', '2025-07-18 06:44:03'),
(12, '2025-07-18', '12:35:53', 1, 250718000100000003, 5, 1, 3, 3, 3, 2, 'N/A', 180, 180, '1 pcs', '2025-07-18 06:35:53', '2025-07-18 06:44:06'),
(13, '2025-07-18', '12:35:54', 1, 250718000100000003, 6, 1, 3, 3, 3, 2, 'N/A', 120, 360, '1 pcs', '2025-07-18 06:35:54', '2025-07-18 09:44:31'),
(14, '2025-07-18', '15:19:33', 1, 250718000100000004, 2, 1, 20, 0, 0, 1, 'N/A', 100, 2000, '1 pcs', '2025-07-18 09:19:33', '2025-07-18 09:37:12'),
(15, '2025-07-18', '15:19:34', 1, 250718000100000004, 3, 1, 20, 0, 0, 1, 'N/A', 120, 2400, '1 pcs', '2025-07-18 09:19:34', '2025-07-18 09:37:16'),
(16, '2025-07-18', '15:19:35', 1, 250718000100000004, 5, 1, 8, 0, 0, 1, 'N/A', 180, 1440, '1 pcs', '2025-07-18 09:19:35', '2025-07-18 13:59:34'),
(24, '2025-07-18', '19:52:05', 1, 250718000100000005, 8, 1, 1, 1, 1, 2, 'N/A', 80, 80, '10 pcs', '2025-07-18 13:52:05', '2025-07-18 13:53:14'),
(25, '2025-07-18', '19:52:06', 1, 250718000100000005, 9, 1, 1, 1, 1, 2, 'N/A', 100, 100, '1 pcs', '2025-07-18 13:52:06', '2025-07-18 13:53:15'),
(26, '2025-07-18', '19:52:06', 1, 250718000100000005, 11, 1, 1, 1, 1, 2, 'N/A', 420, 420, '1 LB', '2025-07-18 13:52:06', '2025-07-18 13:53:16'),
(27, '2025-07-20', '11:10:47', 1, 250720000100000001, 5, 1, 100, 0, 0, 1, 'N/A', 180, 180, '1 pcs', '2025-07-20 05:10:47', '2025-07-20 05:10:52'),
(28, '2025-07-20', '11:10:48', 1, 250720000100000001, 6, 1, 100, 0, 0, 1, 'N/A', 120, 120, '1 pcs', '2025-07-20 05:10:48', '2025-07-20 05:10:54');

-- --------------------------------------------------------

--
-- Table structure for table `purchaseorders`
--

CREATE TABLE `purchaseorders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `delivary_date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `branch` int(11) NOT NULL DEFAULT 0,
  `chalan_reg` bigint(20) UNSIGNED NOT NULL,
  `total` bigint(20) UNSIGNED DEFAULT NULL,
  `discount` bigint(20) UNSIGNED DEFAULT NULL,
  `vat` bigint(20) UNSIGNED DEFAULT NULL,
  `payable` bigint(20) UNSIGNED DEFAULT NULL,
  `pay` bigint(20) UNSIGNED DEFAULT NULL,
  `due` bigint(20) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchaseorders`
--

INSERT INTO `purchaseorders` (`id`, `date`, `delivary_date`, `time`, `user_id`, `branch`, `chalan_reg`, `total`, `discount`, `vat`, `payable`, `pay`, `due`, `status`, `created_at`, `updated_at`) VALUES
(1, '2025-07-18', NULL, '12:35:30', 1, 1, 250718000100000001, 340, 0, 0, 340, 0, 340, 2, '2025-07-18 06:35:30', '2025-07-18 06:36:30'),
(2, '2025-07-18', NULL, '12:35:50', 1, 1, 250718000100000002, 800, 0, 0, 800, 0, 800, 4, '2025-07-18 06:35:50', '2025-07-18 08:58:13'),
(3, '2025-07-18', NULL, '12:36:05', 1, 1, 250718000100000003, 760, 0, 0, 760, 0, 760, 4, '2025-07-18 06:36:05', '2025-07-18 06:44:18'),
(4, '2025-07-18', NULL, '15:19:37', 1, 1, 250718000100000004, 400, 0, 0, 400, 0, 400, 2, '2025-07-18 09:19:37', '2025-07-18 13:59:42'),
(5, '2025-07-18', NULL, '19:52:16', 1, 1, 250718000100000005, 600, 0, 0, 600, 0, 600, 4, '2025-07-18 13:52:16', '2025-07-18 13:53:00'),
(6, '2025-07-20', NULL, '11:10:55', 1, 1, 250720000100000001, 300, 0, 0, 300, 0, 300, 1, '2025-07-20 05:10:55', '2025-07-20 05:10:55');

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reg` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `date` date NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `stockIn` int(11) NOT NULL DEFAULT 0,
  `stockOut` int(11) NOT NULL DEFAULT 0,
  `remark` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `reg`, `date`, `product_id`, `stockIn`, `stockOut`, `remark`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, '2025-07-18', 2, 20, 0, 'In', 2, '2025-07-18 06:34:36', '2025-07-18 06:34:36'),
(2, 0, '2025-07-18', 3, 20, 0, 'In', 2, '2025-07-18 06:34:43', '2025-07-18 06:34:43'),
(3, 0, '2025-07-18', 4, 20, 0, 'In', 2, '2025-07-18 06:34:46', '2025-07-18 06:34:46'),
(4, 0, '2025-07-18', 5, 20, 0, 'In', 2, '2025-07-18 06:34:50', '2025-07-18 06:34:50'),
(5, 0, '2025-07-18', 6, 20, 0, 'In', 2, '2025-07-18 06:34:54', '2025-07-18 06:34:54'),
(6, 0, '2025-07-18', 7, 20, 0, 'In', 2, '2025-07-18 06:34:57', '2025-07-18 06:34:57'),
(7, 0, '2025-07-18', 8, 20, 0, 'In', 2, '2025-07-18 06:35:00', '2025-07-18 06:35:00'),
(8, 0, '2025-07-18', 9, 20, 0, 'In', 2, '2025-07-18 06:35:04', '2025-07-18 06:35:04'),
(9, 0, '2025-07-18', 10, 20, 0, 'In', 2, '2025-07-18 06:35:07', '2025-07-18 06:35:07'),
(10, 0, '2025-07-18', 11, 20, 0, 'In', 2, '2025-07-18 06:35:11', '2025-07-18 06:35:11'),
(11, 250718000100000003, '2025-07-18', 10, 3, 0, 'In from Factory.', 2, '2025-07-18 08:53:41', '2025-07-18 08:53:41'),
(12, 250718000100000003, '2025-07-18', 2, 3, 0, 'In from Factory.', 2, '2025-07-18 08:53:46', '2025-07-18 08:53:46'),
(13, 250718000100000003, '2025-07-18', 3, 3, 0, 'In from Factory.', 2, '2025-07-18 08:53:48', '2025-07-18 08:53:48'),
(14, 250718000100000003, '2025-07-18', 4, 3, 0, 'In from Factory.', 2, '2025-07-18 08:53:49', '2025-07-18 08:53:49'),
(15, 250718000100000003, '2025-07-18', 5, 3, 0, 'In from Factory.', 2, '2025-07-18 08:53:49', '2025-07-18 08:53:49'),
(16, 250718000100000003, '2025-07-18', 6, 3, 0, 'In from Factory.', 2, '2025-07-18 08:54:28', '2025-07-18 08:54:28'),
(17, 250718000100000002, '2025-07-18', 11, 4, 0, 'In from Factory.', 2, '2025-07-18 09:02:32', '2025-07-18 09:02:32'),
(18, 250718000100000002, '2025-07-18', 8, 4, 0, 'In from Factory.', 2, '2025-07-18 09:02:33', '2025-07-18 09:02:33'),
(19, 250718000100000002, '2025-07-18', 7, 4, 0, 'In from Factory.', 2, '2025-07-18 09:02:35', '2025-07-18 09:02:35'),
(20, 250718000100000002, '2025-07-18', 10, 4, 0, 'In from Factory.', 2, '2025-07-18 09:02:36', '2025-07-18 09:02:36'),
(21, 20250718010001, '2025-07-18', 2, 0, 4, 'Out', 1, '2025-07-18 11:21:46', '2025-07-18 11:21:50'),
(22, 20250718010001, '2025-07-18', 3, 0, 4, 'Out', 1, '2025-07-18 11:21:47', '2025-07-18 11:21:51'),
(23, 20250718010001, '2025-07-18', 6, 0, 4, 'Out', 1, '2025-07-18 11:21:47', '2025-07-18 11:21:52'),
(24, 20250718010001, '2025-07-18', 5, 0, 4, 'Out', 1, '2025-07-18 11:21:47', '2025-07-18 11:21:54'),
(25, 20250718010001, '2025-07-18', 4, 0, 4, 'Out', 1, '2025-07-18 11:21:48', '2025-07-18 11:21:55'),
(26, 20250718010002, '2025-07-18', 5, 0, 3, 'Out', 1, '2025-07-18 11:22:07', '2025-07-18 11:22:11'),
(27, 20250718010002, '2025-07-18', 6, 0, 3, 'Out', 1, '2025-07-18 11:22:07', '2025-07-18 11:22:10'),
(28, 20250718010002, '2025-07-18', 9, 0, 3, 'Out', 1, '2025-07-18 11:22:08', '2025-07-18 11:22:13'),
(29, 20250718010002, '2025-07-18', 8, 0, 3, 'Out', 1, '2025-07-18 11:22:08', '2025-07-18 11:22:12'),
(30, 20250718010001, '2025-07-18', 2, 0, 1, 'Out', 1, '2025-07-18 12:24:40', '2025-07-18 12:24:40'),
(31, 20250718010001, '2025-07-18', 3, 0, 1, 'Out', 1, '2025-07-18 12:24:40', '2025-07-18 12:24:40'),
(32, 20250718010001, '2025-07-18', 4, 0, 1, 'Out', 1, '2025-07-18 12:24:41', '2025-07-18 12:24:41'),
(33, 20250718010001, '2025-07-18', 5, 0, 1, 'Out', 1, '2025-07-18 12:24:42', '2025-07-18 12:24:42'),
(34, 20250718010002, '2025-07-18', 2, 0, 1, 'Out', 1, '2025-07-18 12:35:39', '2025-07-18 12:35:39'),
(35, 20250718010002, '2025-07-18', 5, 0, 1, 'Out', 1, '2025-07-18 12:35:39', '2025-07-18 12:35:39'),
(36, 20250718010002, '2025-07-18', 6, 0, 1, 'Out', 1, '2025-07-18 12:35:40', '2025-07-18 12:35:40'),
(37, 20250718010002, '2025-07-18', 4, 0, 1, 'Out', 1, '2025-07-18 12:35:40', '2025-07-18 12:35:40'),
(38, 20250718010002, '2025-07-18', 3, 0, 1, 'Out', 1, '2025-07-18 12:35:41', '2025-07-18 12:35:41'),
(39, 20250718010003, '2025-07-18', 6, 0, 1, 'Out', 1, '2025-07-18 12:35:49', '2025-07-18 12:35:49'),
(40, 20250718010003, '2025-07-18', 5, 0, 1, 'Out', 1, '2025-07-18 12:35:49', '2025-07-18 12:35:49'),
(41, 20250718010003, '2025-07-18', 4, 0, 1, 'Out', 1, '2025-07-18 12:35:50', '2025-07-18 12:35:50'),
(42, 20250718010003, '2025-07-18', 2, 0, 1, 'Out', 1, '2025-07-18 12:35:50', '2025-07-18 12:35:50'),
(43, 20250718010003, '2025-07-18', 3, 0, 1, 'Out', 1, '2025-07-18 12:35:51', '2025-07-18 12:35:51'),
(62, 20250718010004, '2025-07-18', 5, 0, 1, 'Out', 1, '2025-07-18 12:42:08', '2025-07-18 12:42:08'),
(63, 20250718010004, '2025-07-18', 9, 0, 1, 'Out', 1, '2025-07-18 12:42:11', '2025-07-18 12:42:11'),
(64, 20250718010005, '2025-07-18', 7, 0, 3, 'Out', 1, '2025-07-18 13:51:34', '2025-07-18 13:51:42'),
(65, 20250718010005, '2025-07-18', 8, 0, 3, 'Out', 1, '2025-07-18 13:51:35', '2025-07-18 13:51:41'),
(66, 20250718010005, '2025-07-18', 9, 0, 3, 'Out', 1, '2025-07-18 13:51:36', '2025-07-18 13:51:44'),
(67, 20250718010005, '2025-07-18', 6, 0, 3, 'Out', 1, '2025-07-18 13:51:38', '2025-07-18 13:51:43'),
(68, 250718000100000005, '2025-07-18', 8, 1, 0, 'In from Factory.', 2, '2025-07-18 13:53:14', '2025-07-18 13:53:14'),
(69, 250718000100000005, '2025-07-18', 9, 1, 0, 'In from Factory.', 2, '2025-07-18 13:53:15', '2025-07-18 13:53:15'),
(70, 250718000100000005, '2025-07-18', 11, 1, 0, 'In from Factory.', 2, '2025-07-18 13:53:16', '2025-07-18 13:53:16'),
(71, 20250720010006, '2025-07-20', 10, 0, 5, 'Out', 1, '2025-07-20 04:29:41', '2025-07-20 04:30:26'),
(72, 20250720010006, '2025-07-20', 2, 0, 4, 'Out', 1, '2025-07-20 04:29:41', '2025-07-20 04:30:28'),
(73, 20250720010006, '2025-07-20', 4, 0, 4, 'Out', 1, '2025-07-20 04:29:43', '2025-07-20 04:30:29'),
(74, 20250720010006, '2025-07-20', 6, 0, 5, 'Out', 1, '2025-07-20 04:29:44', '2025-07-20 04:30:31'),
(75, 20250720010007, '2025-07-20', 6, 0, 3, 'Out', 1, '2025-07-20 04:31:08', '2025-07-20 04:31:12'),
(76, 20250720010007, '2025-07-20', 4, 0, 3, 'Out', 1, '2025-07-20 04:31:09', '2025-07-20 04:31:13'),
(77, 20250720010007, '2025-07-20', 9, 0, 3, 'Out', 1, '2025-07-20 04:31:10', '2025-07-20 04:31:14'),
(78, 20250720010007, '2025-07-20', 7, 0, 3, 'Out', 1, '2025-07-20 04:31:10', '2025-07-20 04:31:15');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'White Bread', '2025-07-14 03:21:20', '2025-07-14 03:21:20'),
(2, 1, 'Brown Bread', '2025-07-14 03:21:20', '2025-07-14 03:21:20'),
(3, 1, 'Multigrain Bread', '2025-07-14 03:21:20', '2025-07-14 03:21:20'),
(4, 1, 'Buns & Rolls', '2025-07-14 03:21:20', '2025-07-14 03:21:20'),
(5, 2, 'Birthday Cake', '2025-07-14 03:21:20', '2025-07-14 03:21:20'),
(6, 2, 'Wedding Cake', '2025-07-14 03:21:20', '2025-07-14 03:21:20'),
(7, 2, 'Cupcakes', '2025-07-14 03:21:20', '2025-07-14 03:21:20'),
(8, 2, 'Cheese Cake', '2025-07-14 03:21:20', '2025-07-14 03:21:20'),
(9, 2, 'Chocolate Cake', '2025-07-14 03:21:20', '2025-07-14 03:21:20'),
(10, 3, 'Chocolate Chip Cookies', '2025-07-14 03:21:20', '2025-07-14 03:21:20'),
(11, 3, 'Butter Cookies', '2025-07-14 03:21:20', '2025-07-14 03:21:20'),
(12, 3, 'Oatmeal Cookies', '2025-07-14 03:21:20', '2025-07-14 03:21:20'),
(13, 3, 'Digestive Biscuits', '2025-07-14 03:21:20', '2025-07-14 03:21:20'),
(14, 4, 'Cream Pastry', '2025-07-14 03:21:20', '2025-07-14 03:21:20'),
(15, 4, 'Fruit Pastry', '2025-07-14 03:21:20', '2025-07-14 03:21:20'),
(16, 4, 'Black Forest Pastry', '2025-07-14 03:21:20', '2025-07-14 03:21:20'),
(17, 4, 'Éclair', '2025-07-14 03:21:20', '2025-07-14 03:21:20'),
(18, 5, 'Patties', '2025-07-14 03:21:20', '2025-07-14 03:21:20'),
(19, 5, 'Pies', '2025-07-14 03:21:20', '2025-07-14 03:21:20'),
(20, 5, 'Sandwiches', '2025-07-14 03:21:20', '2025-07-14 03:21:20'),
(21, 5, 'Chicken Roll', '2025-07-14 03:21:20', '2025-07-14 03:21:20'),
(22, 5, 'Samosa', '2025-07-14 03:21:20', '2025-07-14 03:21:20'),
(23, 6, 'Donuts', '2025-07-14 03:21:20', '2025-07-14 03:21:20'),
(24, 6, 'Brownies', '2025-07-14 03:21:20', '2025-07-14 03:21:20'),
(25, 6, 'Muffins', '2025-07-14 03:21:20', '2025-07-14 03:21:20'),
(26, 6, 'Gulab Jamun', '2025-07-14 03:21:20', '2025-07-14 03:21:20'),
(27, 7, 'Fresh Cream', '2025-07-14 03:21:20', '2025-07-14 03:21:20'),
(28, 7, 'Butter', '2025-07-14 03:21:20', '2025-07-14 03:21:20'),
(29, 7, 'Cheese', '2025-07-14 03:21:20', '2025-07-14 03:21:20'),
(30, 7, 'Milk Shake', '2025-07-14 03:21:20', '2025-07-14 03:21:20'),
(31, 8, 'Tea', '2025-07-14 03:21:20', '2025-07-14 03:21:20'),
(32, 8, 'Coffee', '2025-07-14 03:21:20', '2025-07-14 03:21:20'),
(33, 8, 'Juice', '2025-07-14 03:21:20', '2025-07-14 03:21:20'),
(34, 8, 'Soft Drinks', '2025-07-14 03:21:20', '2025-07-14 03:21:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`),
  ADD KEY `carts_branch_id_foreign` (`branch_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `excategories`
--
ALTER TABLE `excategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_catid_foreign` (`catId`),
  ADD KEY `expenses_subcatid_foreign` (`subcatId`),
  ADD KEY `expenses_userid_foreign` (`userId`);

--
-- Indexes for table `exsubcategories`
--
ALTER TABLE `exsubcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exsubcategories_cat_id_foreign` (`cat_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_reg_unique` (`reg`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_branch_id_foreign` (`branch_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_subcategory_id_foreign` (`subcategory_id`);

--
-- Indexes for table `purchasecarts`
--
ALTER TABLE `purchasecarts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchaseorders`
--
ALTER TABLE `purchaseorders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `purchaseorders_chalan_reg_unique` (`chalan_reg`),
  ADD KEY `purchaseorders_user_id_foreign` (`user_id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stocks_product_id_foreign` (`product_id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `excategories`
--
ALTER TABLE `excategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `exsubcategories`
--
ALTER TABLE `exsubcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `purchasecarts`
--
ALTER TABLE `purchasecarts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `purchaseorders`
--
ALTER TABLE `purchaseorders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_catid_foreign` FOREIGN KEY (`catId`) REFERENCES `excategories` (`id`),
  ADD CONSTRAINT `expenses_subcatid_foreign` FOREIGN KEY (`subcatId`) REFERENCES `exsubcategories` (`id`),
  ADD CONSTRAINT `expenses_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `admins` (`id`);

--
-- Constraints for table `exsubcategories`
--
ALTER TABLE `exsubcategories`
  ADD CONSTRAINT `exsubcategories_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `excategories` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`);

--
-- Constraints for table `purchaseorders`
--
ALTER TABLE `purchaseorders`
  ADD CONSTRAINT `purchaseorders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `stocks`
--
ALTER TABLE `stocks`
  ADD CONSTRAINT `stocks_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
