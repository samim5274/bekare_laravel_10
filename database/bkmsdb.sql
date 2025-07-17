-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 17, 2025 at 07:56 AM
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
(1, 'Uttara Branch', 'Uttara, Dhaka', '01762164746', 1, '2025-07-16 04:52:05', '2025-07-16 04:52:05'),
(2, 'Gulshan-1 Branch', 'Gulshan-1, Dhaka', '0123654789', 2, '2025-07-16 04:52:37', '2025-07-16 04:54:31');

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
  `quantity` int(11) NOT NULL DEFAULT 1,
  `price` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `reg`, `date`, `user_id`, `product_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 20250716010001, '2025-07-16', 1, 10, 1, 160, '2025-07-16 04:49:38', '2025-07-16 04:49:38'),
(2, 20250716010001, '2025-07-16', 1, 2, 1, 100, '2025-07-16 04:49:39', '2025-07-16 04:49:39'),
(3, 20250716010001, '2025-07-16', 1, 3, 1, 120, '2025-07-16 04:49:39', '2025-07-16 04:49:39'),
(4, 20250716010001, '2025-07-16', 1, 5, 1, 180, '2025-07-16 04:49:40', '2025-07-16 04:49:40'),
(5, 20250716010001, '2025-07-16', 1, 4, 1, 80, '2025-07-16 04:49:40', '2025-07-16 04:49:40'),
(6, 20250716010002, '2025-07-16', 1, 2, 1, 100, '2025-07-16 04:50:17', '2025-07-16 04:50:17'),
(7, 20250716010002, '2025-07-16', 1, 3, 1, 120, '2025-07-16 04:50:17', '2025-07-16 04:50:17'),
(8, 20250716010002, '2025-07-16', 1, 5, 1, 180, '2025-07-16 04:50:18', '2025-07-16 04:50:18'),
(9, 20250716010002, '2025-07-16', 1, 4, 1, 80, '2025-07-16 04:50:18', '2025-07-16 04:50:18'),
(10, 20250716010002, '2025-07-16', 1, 6, 1, 120, '2025-07-16 04:50:19', '2025-07-16 04:50:19'),
(11, 20250717010003, '2025-07-17', 1, 10, 1, 160, '2025-07-17 04:49:52', '2025-07-17 04:49:52'),
(12, 20250717010003, '2025-07-17', 1, 2, 1, 100, '2025-07-17 04:49:53', '2025-07-17 04:49:53'),
(13, 20250717010003, '2025-07-17', 1, 5, 1, 180, '2025-07-17 04:49:53', '2025-07-17 04:49:53'),
(14, 20250717010003, '2025-07-17', 1, 6, 1, 120, '2025-07-17 04:49:54', '2025-07-17 04:49:54'),
(15, 20250717010003, '2025-07-17', 1, 4, 1, 80, '2025-07-17 04:49:55', '2025-07-17 04:49:55'),
(16, 20250717010003, '2025-07-17', 1, 8, 1, 80, '2025-07-17 04:49:56', '2025-07-17 04:49:56'),
(17, 20250717010003, '2025-07-17', 1, 9, 1, 100, '2025-07-17 04:49:57', '2025-07-17 04:49:57'),
(18, 20250717010003, '2025-07-17', 1, 11, 1, 420, '2025-07-17 04:49:59', '2025-07-17 04:49:59');

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
(16, '2025_07_10_062043_create_stocks_table', 2),
(17, '2025_07_10_064132_create_admins_table', 2),
(18, '2025_07_14_040543_create_branches_table', 2),
(19, '2025_07_14_080418_create_purchasecarts_table', 2),
(20, '2025_07_14_095009_create_purchaseorders_table', 2),
(21, '2025_07_10_052213_create_carts_table', 3),
(22, '2025_07_10_054040_create_orders_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
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

INSERT INTO `orders` (`id`, `date`, `user_id`, `reg`, `total`, `discount`, `vat`, `payable`, `pay`, `due`, `status`, `created_at`, `updated_at`) VALUES
(1, '2025-07-16', 1, 20250716010001, 640, 50, 96, 686, 686, 0, 1, '2025-07-16 04:49:56', '2025-07-16 04:50:32'),
(2, '2025-07-16', 1, 20250716010002, 600, 10, 90, 680, 680, 0, 2, '2025-07-16 04:50:25', '2025-07-16 04:50:25'),
(3, '2025-07-17', 1, 20250717010003, 1240, 50, 186, 1376, 1000, 376, 3, '2025-07-17 04:50:12', '2025-07-17 04:50:12');

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
(2, 'Vanilla Cupcake', 2, 7, 100, 16, 'Soft and moist individual cake with sweet vanilla flavor and creamy topping.', 'FD-1752485052.jpg', 1, '1 pcs', 'Flour, Sugar, Eggs, Vanilla essence, Butter, Baking powder', '2025-07-14', '2025-07-17', '2025-07-14 03:24:12', '2025-07-17 04:49:53'),
(3, 'Chocolate Donut', 4, 15, 120, 8, 'Ring-shaped fried dough topped with rich chocolate glaze.', 'FD-1752485100.jpg', 1, '1 pcs', 'Flour, Cocoa powder, Sugar, Yeast, Milk, Butter, Chocolate glaze', '2025-07-14', '2025-07-18', '2025-07-14 03:25:00', '2025-07-16 04:50:17'),
(4, 'Chicken Patties', 5, 19, 80, 6, 'Crispy puff stuffed with spicy chicken filling, ideal for snacks.', 'FD-1752485151.jpg', 1, '1 pcs', 'Flour, Butter, Chicken, Onion, Garlic, Spices', '2025-07-14', '2025-07-18', '2025-07-14 03:25:51', '2025-07-17 04:49:55'),
(5, 'Red Velvet Slice', 2, 6, 180, 16, 'Moist red cake slice layered with smooth cream cheese frosting.', 'FD-1752485194.jpg', 1, '1 pcs', 'Flour, Cocoa, Buttermilk, Vinegar, Sugar, Eggs, Cream cheese frosting', '2025-07-15', '2025-07-21', '2025-07-14 03:26:34', '2025-07-17 04:49:53'),
(6, 'Cheese Bun', 1, 4, 120, 12, 'Soft and fluffy bun filled or topped with melted cheese.', 'FD-1752485249.jpg', 1, '1 pcs', 'Flour, Yeast, Milk, Sugar, Cheese, Butter', '2025-07-14', '2025-07-18', '2025-07-14 03:27:29', '2025-07-17 04:49:54'),
(7, 'Butter Croissant', 4, 15, 140, 14, 'Flaky and buttery French-style crescent-shaped pastry.', 'FD-1752485306.jpg', 1, '1 pcs', 'Laminated dough (Flour, Butter), Yeast, Sugar, Salt', '2025-07-14', '2025-07-18', '2025-07-14 03:28:26', '2025-07-14 03:28:26'),
(8, 'Veg Sandwich', 6, 25, 80, 18, 'Fresh sandwich packed with vegetables and creamy dressing.', 'FD-1752485357.jpg', 1, '10 pcs', 'Bread, Tomato, Cucumber, Lettuce, Cheese, Mayonnaise', '2025-07-14', '2025-07-18', '2025-07-14 03:29:17', '2025-07-17 04:49:56'),
(9, 'Chocolate Cookie', 3, 12, 100, 149, 'Crispy outside, chewy inside, loaded with chocolate chips.', 'FD-1752485413.jpg', 1, '1 pcs', 'Flour, Butter, Eggs, Chocolate chips, Baking soda, Sugar', '2025-07-09', '2025-07-19', '2025-07-14 03:30:13', '2025-07-17 04:49:57'),
(10, 'Garlic Bread', 1, 2, 160, 8, 'Toasted bread slices flavored with garlic butter and herbs.', 'FD-1752485456.jpg', 1, '1 pcs', 'Flour, Garlic, Butter, Herbs, Yeast, Salt', '2025-07-14', '2025-07-18', '2025-07-14 03:30:56', '2025-07-17 04:49:52'),
(11, 'Birthday Cake', 2, 5, 420, 8, 'Classic round cake decorated with cream, ideal for celebrations.', 'FD-1752485498.jpg', 1, '1 LB', 'Flour, Eggs, Sugar, Butter, Milk, Cream, Flavoring, Food color', '2025-07-14', '2025-07-18', '2025-07-14 03:31:38', '2025-07-17 04:49:59');

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
(6, '2025-07-16', '10:40:52', 1, 250716000100000001, 10, 1, 50, 0, 0, 1, 'N/A', 160, 160, '1 pcs', '2025-07-16 04:40:52', '2025-07-16 04:41:53'),
(10, '2025-07-16', '10:40:54', 1, 250716000100000001, 5, 1, 70, 0, 0, 1, 'N/A', 180, 180, '1 pcs', '2025-07-16 04:40:54', '2025-07-16 04:41:51'),
(11, '2025-07-16', '10:40:55', 1, 250716000100000001, 4, 1, 100, 0, 0, 1, 'N/A', 80, 80, '1 pcs', '2025-07-16 04:40:55', '2025-07-16 04:41:56'),
(12, '2025-07-16', '10:46:29', 1, 250716000100000001, 3, 1, 1, 0, 0, 1, 'N/A', 120, 120, '1 pcs', '2025-07-16 04:46:29', '2025-07-16 04:46:29'),
(13, '2025-07-16', '10:46:30', 1, 250716000100000001, 6, 1, 1, 0, 0, 1, 'N/A', 120, 120, '1 pcs', '2025-07-16 04:46:30', '2025-07-16 04:46:30'),
(14, '2025-07-16', '10:46:32', 1, 250716000100000001, 8, 1, 1, 0, 0, 1, 'N/A', 80, 80, '10 pcs', '2025-07-16 04:46:32', '2025-07-16 04:46:32'),
(15, '2025-07-16', '10:48:07', 1, 250716000100000002, 5, 1, 1000, 0, 0, 1, 'N/A', 180, 180, '1 pcs', '2025-07-16 04:48:07', '2025-07-16 04:48:44'),
(16, '2025-07-16', '10:48:08', 1, 250716000100000002, 6, 1, 1000, 0, 0, 1, 'N/A', 120, 120, '1 pcs', '2025-07-16 04:48:08', '2025-07-16 04:48:41'),
(17, '2025-07-16', '10:48:09', 1, 250716000100000002, 8, 1, 700, 0, 0, 1, 'N/A', 80, 80, '10 pcs', '2025-07-16 04:48:09', '2025-07-16 04:48:38'),
(18, '2025-07-16', '10:48:09', 1, 250716000100000002, 10, 1, 1000, 0, 0, 1, 'N/A', 160, 160, '1 pcs', '2025-07-16 04:48:09', '2025-07-16 04:48:47'),
(19, '2025-07-16', '10:48:12', 1, 250716000100000002, 2, 1, 1000, 0, 0, 1, 'N/A', 100, 100, '1 pcs', '2025-07-16 04:48:12', '2025-07-16 04:48:49'),
(20, '2025-07-16', '10:48:14', 1, 250716000100000002, 4, 1, 1000, 0, 0, 1, 'N/A', 80, 80, '1 pcs', '2025-07-16 04:48:14', '2025-07-16 04:48:52'),
(21, '2025-07-16', '10:48:15', 1, 250716000100000002, 7, 1, 1000, 0, 0, 1, 'N/A', 140, 140, '1 pcs', '2025-07-16 04:48:15', '2025-07-16 04:48:55'),
(22, '2025-07-16', '10:48:16', 1, 250716000100000002, 9, 1, 1000, 0, 0, 1, 'N/A', 100, 100, '1 pcs', '2025-07-16 04:48:16', '2025-07-16 04:48:57'),
(23, '2025-07-16', '10:48:18', 1, 250716000100000002, 11, 1, 1000, 0, 0, 1, 'N/A', 420, 420, '1 LB', '2025-07-16 04:48:18', '2025-07-16 04:49:00'),
(24, '2025-07-16', '10:48:29', 1, 250716000100000002, 3, 1, 1000, 0, 0, 1, 'N/A', 120, 120, '1 pcs', '2025-07-16 04:48:29', '2025-07-16 04:49:02'),
(25, '2025-07-16', '11:15:51', 2, 250716000200000003, 10, 2, 1, 0, 0, 1, 'N/A', 160, 160, '1 pcs', '2025-07-16 05:15:51', '2025-07-16 05:15:51'),
(26, '2025-07-16', '11:15:51', 2, 250716000200000003, 2, 2, 1, 0, 0, 1, 'N/A', 100, 100, '1 pcs', '2025-07-16 05:15:51', '2025-07-16 05:15:51'),
(27, '2025-07-16', '11:15:52', 2, 250716000200000003, 3, 2, 1, 0, 0, 1, 'N/A', 120, 120, '1 pcs', '2025-07-16 05:15:52', '2025-07-16 05:15:52'),
(28, '2025-07-16', '11:15:52', 2, 250716000200000003, 5, 2, 1, 0, 0, 1, 'N/A', 180, 180, '1 pcs', '2025-07-16 05:15:52', '2025-07-16 05:15:52'),
(29, '2025-07-16', '11:15:53', 2, 250716000200000003, 6, 2, 1, 0, 0, 1, 'N/A', 120, 120, '1 pcs', '2025-07-16 05:15:53', '2025-07-16 05:15:53'),
(30, '2025-07-16', '11:15:53', 2, 250716000200000003, 4, 2, 1, 0, 0, 1, 'N/A', 80, 80, '1 pcs', '2025-07-16 05:15:53', '2025-07-16 05:15:53'),
(31, '2025-07-16', '11:15:54', 2, 250716000200000003, 8, 2, 1, 0, 0, 1, 'N/A', 80, 80, '10 pcs', '2025-07-16 05:15:54', '2025-07-16 05:15:54'),
(32, '2025-07-16', '11:18:27', 2, 250716000200000004, 5, 2, 1, 0, 0, 1, 'N/A', 180, 180, '1 pcs', '2025-07-16 05:18:27', '2025-07-16 05:18:27'),
(33, '2025-07-16', '11:18:31', 2, 250716000200000004, 6, 2, 1, 0, 0, 1, 'N/A', 120, 120, '1 pcs', '2025-07-16 05:18:31', '2025-07-16 05:18:31'),
(34, '2025-07-16', '11:18:32', 2, 250716000200000004, 9, 2, 1, 0, 0, 1, 'N/A', 100, 100, '1 pcs', '2025-07-16 05:18:32', '2025-07-16 05:18:32'),
(35, '2025-07-16', '11:18:33', 2, 250716000200000004, 11, 2, 1, 0, 0, 1, 'N/A', 420, 420, '1 LB', '2025-07-16 05:18:33', '2025-07-16 05:18:33'),
(36, '2025-07-16', '11:18:34', 2, 250716000200000004, 10, 2, 1, 0, 0, 1, 'N/A', 160, 160, '1 pcs', '2025-07-16 05:18:34', '2025-07-16 05:18:34'),
(37, '2025-07-17', '10:37:43', 1, 250717000100000001, 10, 1, 5, 5, 5, 1, 'N/A', 160, 160, '1 pcs', '2025-07-17 04:37:43', '2025-07-17 04:41:14'),
(38, '2025-07-17', '10:37:44', 1, 250717000100000001, 2, 1, 5, 5, 5, 1, 'N/A', 100, 100, '1 pcs', '2025-07-17 04:37:44', '2025-07-17 04:47:10'),
(39, '2025-07-17', '10:37:45', 1, 250717000100000001, 3, 1, 5, 0, 0, 1, 'N/A', 120, 120, '1 pcs', '2025-07-17 04:37:45', '2025-07-17 04:37:53'),
(40, '2025-07-17', '10:37:45', 1, 250717000100000001, 6, 1, 5, 0, 0, 1, 'N/A', 120, 120, '1 pcs', '2025-07-17 04:37:45', '2025-07-17 04:37:55'),
(41, '2025-07-17', '10:37:46', 1, 250717000100000001, 5, 1, 5, 0, 0, 1, 'N/A', 180, 180, '1 pcs', '2025-07-17 04:37:46', '2025-07-17 04:37:57'),
(42, '2025-07-17', '10:37:46', 1, 250717000100000001, 4, 1, 5, 0, 0, 1, 'N/A', 80, 80, '1 pcs', '2025-07-17 04:37:46', '2025-07-17 04:37:59'),
(43, '2025-07-17', '10:37:46', 1, 250717000100000001, 8, 1, 5, 0, 0, 1, 'N/A', 80, 80, '10 pcs', '2025-07-17 04:37:46', '2025-07-17 04:38:02'),
(44, '2025-07-17', '10:37:47', 1, 250717000100000001, 9, 1, 5, 0, 0, 1, 'N/A', 100, 100, '1 pcs', '2025-07-17 04:37:47', '2025-07-17 04:38:04'),
(45, '2025-07-17', '10:50:36', 1, 250717000100000002, 5, 1, 100, 0, 0, 1, 'N/A', 180, 180, '1 pcs', '2025-07-17 04:50:36', '2025-07-17 04:50:44'),
(46, '2025-07-17', '10:50:37', 1, 250717000100000002, 9, 1, 100, 0, 0, 1, 'N/A', 100, 100, '1 pcs', '2025-07-17 04:50:37', '2025-07-17 04:50:49'),
(47, '2025-07-17', '10:50:37', 1, 250717000100000002, 8, 1, 100, 0, 0, 1, 'N/A', 80, 80, '10 pcs', '2025-07-17 04:50:37', '2025-07-17 04:50:52'),
(48, '2025-07-17', '10:50:38', 1, 250717000100000002, 10, 1, 100, 0, 0, 1, 'N/A', 160, 160, '1 pcs', '2025-07-17 04:50:38', '2025-07-17 04:50:58'),
(49, '2025-07-17', '10:50:39', 1, 250717000100000002, 11, 1, 100, 0, 0, 1, 'N/A', 420, 420, '1 LB', '2025-07-17 04:50:39', '2025-07-17 04:51:00'),
(50, '2025-07-17', '10:50:39', 1, 250717000100000002, 2, 1, 100, 0, 0, 1, 'N/A', 100, 100, '1 pcs', '2025-07-17 04:50:39', '2025-07-17 04:51:03'),
(51, '2025-07-17', '10:50:40', 1, 250717000100000002, 3, 1, 100, 0, 0, 1, 'N/A', 120, 120, '1 pcs', '2025-07-17 04:50:40', '2025-07-17 04:51:06'),
(52, '2025-07-17', '10:50:40', 1, 250717000100000002, 4, 1, 100, 0, 0, 1, 'N/A', 80, 80, '1 pcs', '2025-07-17 04:50:40', '2025-07-17 04:51:08'),
(53, '2025-07-17', '11:35:54', 2, 250717000200000003, 10, 2, 1, 0, 0, 1, 'N/A', 160, 160, '1 pcs', '2025-07-17 05:35:54', '2025-07-17 05:35:54'),
(54, '2025-07-17', '11:35:54', 2, 250717000200000003, 2, 2, 1, 0, 0, 1, 'N/A', 100, 100, '1 pcs', '2025-07-17 05:35:54', '2025-07-17 05:35:54'),
(55, '2025-07-17', '11:35:55', 2, 250717000200000003, 3, 2, 1, 0, 0, 1, 'N/A', 120, 120, '1 pcs', '2025-07-17 05:35:55', '2025-07-17 05:35:55'),
(56, '2025-07-17', '11:35:55', 2, 250717000200000003, 4, 2, 1, 0, 0, 1, 'N/A', 80, 80, '1 pcs', '2025-07-17 05:35:55', '2025-07-17 05:35:55'),
(57, '2025-07-17', '11:35:56', 2, 250717000200000003, 5, 2, 1, 0, 0, 1, 'N/A', 180, 180, '1 pcs', '2025-07-17 05:35:56', '2025-07-17 05:35:56'),
(58, '2025-07-17', '11:35:56', 2, 250717000200000003, 6, 2, 1, 0, 0, 1, 'N/A', 120, 120, '1 pcs', '2025-07-17 05:35:56', '2025-07-17 05:35:56'),
(59, '2025-07-17', '11:35:56', 2, 250717000200000003, 7, 2, 1, 0, 0, 1, 'N/A', 140, 140, '1 pcs', '2025-07-17 05:35:56', '2025-07-17 05:35:56'),
(60, '2025-07-17', '11:35:57', 2, 250717000200000003, 8, 2, 1, 0, 0, 1, 'N/A', 80, 80, '10 pcs', '2025-07-17 05:35:57', '2025-07-17 05:35:57'),
(61, '2025-07-17', '11:35:57', 2, 250717000200000003, 9, 2, 1, 0, 0, 1, 'N/A', 100, 100, '1 pcs', '2025-07-17 05:35:57', '2025-07-17 05:35:57'),
(62, '2025-07-17', '11:36:01', 2, 250717000200000004, 2, 2, 1, 0, 0, 1, 'N/A', 100, 100, '1 pcs', '2025-07-17 05:36:01', '2025-07-17 05:36:01'),
(63, '2025-07-17', '11:36:01', 2, 250717000200000004, 3, 2, 1, 0, 0, 1, 'N/A', 120, 120, '1 pcs', '2025-07-17 05:36:01', '2025-07-17 05:36:01'),
(64, '2025-07-17', '11:36:02', 2, 250717000200000004, 6, 2, 1, 0, 0, 1, 'N/A', 120, 120, '1 pcs', '2025-07-17 05:36:02', '2025-07-17 05:36:02'),
(65, '2025-07-17', '11:36:02', 2, 250717000200000004, 5, 2, 1, 0, 0, 1, 'N/A', 180, 180, '1 pcs', '2025-07-17 05:36:02', '2025-07-17 05:36:02'),
(66, '2025-07-17', '11:36:02', 2, 250717000200000004, 4, 2, 1, 0, 0, 1, 'N/A', 80, 80, '1 pcs', '2025-07-17 05:36:02', '2025-07-17 05:36:02'),
(67, '2025-07-17', '11:36:03', 2, 250717000200000004, 8, 2, 1, 0, 0, 1, 'N/A', 80, 80, '10 pcs', '2025-07-17 05:36:03', '2025-07-17 05:36:03'),
(68, '2025-07-17', '11:36:03', 2, 250717000200000004, 9, 2, 1, 0, 0, 1, 'N/A', 100, 100, '1 pcs', '2025-07-17 05:36:03', '2025-07-17 05:36:03');

-- --------------------------------------------------------

--
-- Table structure for table `purchaseorders`
--

CREATE TABLE `purchaseorders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
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

INSERT INTO `purchaseorders` (`id`, `date`, `time`, `user_id`, `branch`, `chalan_reg`, `total`, `discount`, `vat`, `payable`, `pay`, `due`, `status`, `created_at`, `updated_at`) VALUES
(1, '2025-07-16', '10:46:34', 1, 1, 250716000100000001, 740, 0, 0, 740, 0, 740, 2, '2025-07-16 04:46:34', '2025-07-16 06:44:04'),
(2, '2025-07-16', '10:49:06', 1, 1, 250716000100000002, 1500, 0, 0, 1500, 0, 1500, 1, '2025-07-16 04:49:06', '2025-07-17 04:55:12'),
(3, '2025-07-16', '11:15:55', 2, 2, 250716000200000003, 840, 0, 0, 840, 0, 840, 2, '2025-07-16 05:15:55', '2025-07-17 04:55:01'),
(4, '2025-07-16', '11:18:40', 2, 2, 250716000200000004, 980, 0, 0, 980, 0, 980, 0, '2025-07-16 05:18:40', '2025-07-16 06:44:15'),
(5, '2025-07-17', '10:38:06', 1, 1, 250717000100000001, 940, 0, 0, 940, 0, 940, 4, '2025-07-17 04:38:06', '2025-07-17 05:04:10'),
(6, '2025-07-17', '10:51:10', 1, 1, 250717000100000002, 1240, 0, 0, 1240, 0, 1240, 3, '2025-07-17 04:51:10', '2025-07-17 04:54:22'),
(7, '2025-07-17', '11:35:59', 2, 2, 250717000200000003, 1080, 0, 0, 1080, 0, 1080, 1, '2025-07-17 05:35:59', '2025-07-17 05:35:59'),
(8, '2025-07-17', '11:36:05', 2, 2, 250717000200000004, 780, 0, 0, 780, 0, 780, 1, '2025-07-17 05:36:05', '2025-07-17 05:36:05');

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
(1, 20250716010001, '2025-07-16', 10, 0, 1, 'Out', 1, '2025-07-16 04:49:38', '2025-07-16 04:49:38'),
(2, 20250716010001, '2025-07-16', 2, 0, 1, 'Out', 1, '2025-07-16 04:49:39', '2025-07-16 04:49:39'),
(3, 20250716010001, '2025-07-16', 3, 0, 1, 'Out', 1, '2025-07-16 04:49:39', '2025-07-16 04:49:39'),
(4, 20250716010001, '2025-07-16', 5, 0, 1, 'Out', 1, '2025-07-16 04:49:40', '2025-07-16 04:49:40'),
(5, 20250716010001, '2025-07-16', 4, 0, 1, 'Out', 1, '2025-07-16 04:49:40', '2025-07-16 04:49:40'),
(6, 20250716010002, '2025-07-16', 2, 0, 1, 'Out', 1, '2025-07-16 04:50:17', '2025-07-16 04:50:17'),
(7, 20250716010002, '2025-07-16', 3, 0, 1, 'Out', 1, '2025-07-16 04:50:17', '2025-07-16 04:50:17'),
(8, 20250716010002, '2025-07-16', 5, 0, 1, 'Out', 1, '2025-07-16 04:50:18', '2025-07-16 04:50:18'),
(9, 20250716010002, '2025-07-16', 4, 0, 1, 'Out', 1, '2025-07-16 04:50:18', '2025-07-16 04:50:18'),
(10, 20250716010002, '2025-07-16', 6, 0, 1, 'Out', 1, '2025-07-16 04:50:19', '2025-07-16 04:50:19'),
(11, 20250717010003, '2025-07-17', 10, 0, 1, 'Out', 1, '2025-07-17 04:49:52', '2025-07-17 04:49:52'),
(12, 20250717010003, '2025-07-17', 2, 0, 1, 'Out', 1, '2025-07-17 04:49:53', '2025-07-17 04:49:53'),
(13, 20250717010003, '2025-07-17', 5, 0, 1, 'Out', 1, '2025-07-17 04:49:53', '2025-07-17 04:49:53'),
(14, 20250717010003, '2025-07-17', 6, 0, 1, 'Out', 1, '2025-07-17 04:49:54', '2025-07-17 04:49:54'),
(15, 20250717010003, '2025-07-17', 4, 0, 1, 'Out', 1, '2025-07-17 04:49:55', '2025-07-17 04:49:55'),
(16, 20250717010003, '2025-07-17', 8, 0, 1, 'Out', 1, '2025-07-17 04:49:56', '2025-07-17 04:49:56'),
(17, 20250717010003, '2025-07-17', 9, 0, 1, 'Out', 1, '2025-07-17 04:49:57', '2025-07-17 04:49:57'),
(18, 20250717010003, '2025-07-17', 11, 0, 1, 'Out', 1, '2025-07-17 04:49:59', '2025-07-17 04:49:59');

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
  ADD KEY `carts_product_id_foreign` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `orders_user_id_foreign` (`user_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `purchaseorders`
--
ALTER TABLE `purchaseorders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
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
