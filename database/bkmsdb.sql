-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 13, 2025 at 12:23 PM
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
  `role` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `facebook_id`, `google_id`, `github_id`, `password`, `photo`, `phone`, `address`, `dob`, `role`, `status`, `created_at`, `updated_at`) VALUES
(1, 'SAMIM-HosseN', 'admin@admin.net', NULL, NULL, NULL, '$2y$10$Rt9POJI6/Ew57gdiXhTbmOO.YUFQhLTyjWUmtYpAOPblCYKYkleRe', NULL, NULL, 'D', NULL, 1, 1, NULL, NULL);

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
(1, 20250711010001, '2025-07-11', 1, 9, 1, 160, '2025-07-11 02:57:10', '2025-07-11 02:57:10'),
(2, 20250711010001, '2025-07-11', 1, 3, 1, 80, '2025-07-11 02:57:10', '2025-07-11 02:57:10'),
(3, 20250711010001, '2025-07-11', 1, 1, 1, 100, '2025-07-11 02:57:11', '2025-07-11 02:57:11'),
(4, 20250711010002, '2025-07-11', 1, 4, 1, 170, '2025-07-11 02:57:54', '2025-07-11 02:57:54'),
(5, 20250711010002, '2025-07-11', 1, 5, 1, 120, '2025-07-11 02:57:57', '2025-07-11 02:57:57'),
(6, 20250711010002, '2025-07-11', 1, 9, 1, 160, '2025-07-11 02:57:59', '2025-07-11 02:57:59'),
(7, 20250711010003, '2025-07-11', 1, 1, 1, 100, '2025-07-11 03:00:22', '2025-07-11 03:00:22'),
(8, 20250711010004, '2025-07-11', 1, 1, 1, 100, '2025-07-11 03:00:33', '2025-07-11 03:00:33'),
(9, 20250711010005, '2025-07-11', 1, 4, 1, 170, '2025-07-11 03:00:43', '2025-07-11 03:00:43'),
(10, 20250711010006, '2025-07-11', 1, 1, 1, 100, '2025-07-11 03:01:15', '2025-07-11 03:01:15'),
(11, 20250711010007, '2025-07-11', 1, 10, 1, 420, '2025-07-11 03:29:58', '2025-07-11 03:29:58'),
(12, 20250711010007, '2025-07-11', 1, 7, 1, 80, '2025-07-11 03:30:00', '2025-07-11 03:30:00'),
(13, 20250711010007, '2025-07-11', 1, 5, 1, 120, '2025-07-11 03:30:02', '2025-07-11 03:30:02'),
(14, 20250711010008, '2025-07-11', 1, 1, 1, 100, '2025-07-11 03:30:24', '2025-07-11 03:30:24'),
(15, 20250711010009, '2025-07-11', 1, 1, 1, 100, '2025-07-11 03:31:39', '2025-07-11 03:31:39'),
(16, 20250711010010, '2025-07-11', 1, 3, 1, 80, '2025-07-11 03:31:50', '2025-07-11 03:31:50'),
(17, 20250711010011, '2025-07-11', 1, 1, 1, 100, '2025-07-11 03:35:02', '2025-07-11 03:35:02'),
(18, 20250711010012, '2025-07-11', 1, 1, 1, 100, '2025-07-11 03:35:59', '2025-07-11 03:35:59'),
(19, 20250711010013, '2025-07-11', 1, 1, 1, 100, '2025-07-11 03:38:07', '2025-07-11 03:38:07'),
(20, 20250711010014, '2025-07-11', 1, 1, 1, 100, '2025-07-11 04:00:17', '2025-07-11 04:00:17'),
(21, 20250711010014, '2025-07-11', 1, 5, 1, 120, '2025-07-11 04:00:20', '2025-07-11 04:00:20'),
(22, 20250711010015, '2025-07-11', 1, 3, 1, 80, '2025-07-11 04:00:34', '2025-07-11 04:00:34'),
(23, 20250711010015, '2025-07-11', 1, 4, 1, 170, '2025-07-11 04:00:34', '2025-07-11 04:00:34'),
(24, 20250711010015, '2025-07-11', 1, 5, 1, 120, '2025-07-11 04:00:36', '2025-07-11 04:00:36'),
(25, 20250711010015, '2025-07-11', 1, 8, 1, 125, '2025-07-11 04:00:37', '2025-07-11 04:00:37'),
(26, 20250711010016, '2025-07-11', 1, 6, 1, 140, '2025-07-11 04:01:35', '2025-07-11 04:01:35'),
(27, 20250711010016, '2025-07-11', 1, 9, 1, 160, '2025-07-11 04:01:37', '2025-07-11 04:01:37'),
(30, 20250711010017, '2025-07-11', 1, 1, 1, 100, '2025-07-11 05:57:32', '2025-07-11 05:57:32'),
(31, 20250711010017, '2025-07-11', 1, 5, 1, 120, '2025-07-11 05:57:35', '2025-07-11 05:57:35'),
(32, 20250711010017, '2025-07-11', 1, 10, 1, 420, '2025-07-11 05:57:39', '2025-07-11 05:57:39'),
(33, 20250711010018, '2025-07-11', 1, 2, 3, 120, '2025-07-11 06:09:56', '2025-07-11 06:09:59'),
(34, 20250711010019, '2025-07-11', 1, 6, 1, 140, '2025-07-11 06:15:04', '2025-07-11 06:15:04'),
(35, 20250712010020, '2025-07-12', 1, 1, 10, 100, '2025-07-11 22:37:41', '2025-07-11 22:38:10'),
(36, 20250712010020, '2025-07-12', 1, 2, 10, 120, '2025-07-11 22:37:42', '2025-07-11 22:38:16'),
(37, 20250712010020, '2025-07-12', 1, 3, 10, 80, '2025-07-11 22:37:42', '2025-07-11 22:38:19'),
(38, 20250712010020, '2025-07-12', 1, 4, 10, 170, '2025-07-11 22:37:43', '2025-07-11 22:38:06'),
(39, 20250712010020, '2025-07-12', 1, 5, 10, 120, '2025-07-11 22:37:45', '2025-07-11 22:38:03'),
(40, 20250712010020, '2025-07-12', 1, 6, 10, 140, '2025-07-11 22:37:46', '2025-07-11 22:38:01'),
(41, 20250712010020, '2025-07-12', 1, 7, 10, 80, '2025-07-11 22:37:47', '2025-07-11 22:38:23'),
(42, 20250712010020, '2025-07-12', 1, 8, 10, 125, '2025-07-11 22:37:49', '2025-07-11 22:38:25'),
(43, 20250712010020, '2025-07-12', 1, 9, 10, 160, '2025-07-11 22:37:51', '2025-07-11 22:38:28'),
(44, 20250712010020, '2025-07-12', 1, 10, 10, 420, '2025-07-11 22:37:54', '2025-07-11 22:38:31'),
(45, 20250712010021, '2025-07-12', 1, 2, 1, 120, '2025-07-11 22:46:29', '2025-07-11 22:46:29'),
(46, 20250712010021, '2025-07-12', 1, 5, 1, 120, '2025-07-11 22:46:33', '2025-07-11 22:48:03'),
(47, 20250712010022, '2025-07-12', 1, 9, 1, 160, '2025-07-11 22:51:31', '2025-07-11 22:51:31'),
(48, 20250712010023, '2025-07-12', 1, 1, 1, 100, '2025-07-11 22:52:33', '2025-07-11 22:52:33'),
(49, 20250712010024, '2025-07-12', 1, 2, 1, 120, '2025-07-11 22:53:10', '2025-07-11 22:53:10'),
(50, 20250712010025, '2025-07-12', 1, 10, 1, 420, '2025-07-11 22:53:42', '2025-07-11 22:53:42'),
(51, 20250712010026, '2025-07-12', 1, 5, 1, 120, '2025-07-11 22:55:05', '2025-07-11 22:55:05'),
(52, 20250712010027, '2025-07-12', 1, 1, 1, 100, '2025-07-11 22:59:52', '2025-07-11 22:59:52'),
(53, 20250712010028, '2025-07-12', 1, 10, 1, 420, '2025-07-11 23:03:45', '2025-07-11 23:03:45'),
(54, 20250712010029, '2025-07-12', 1, 5, 1, 120, '2025-07-11 23:04:55', '2025-07-11 23:04:55'),
(55, 20250712010030, '2025-07-12', 1, 8, 1, 125, '2025-07-11 23:06:37', '2025-07-11 23:06:37'),
(56, 20250712010031, '2025-07-12', 1, 7, 1, 80, '2025-07-11 23:08:32', '2025-07-11 23:08:32'),
(57, 20250712010032, '2025-07-12', 1, 10, 1, 420, '2025-07-11 23:11:21', '2025-07-11 23:11:21'),
(58, 20250712010033, '2025-07-12', 1, 2, 1, 120, '2025-07-11 23:15:28', '2025-07-11 23:15:28'),
(59, 20250712010034, '2025-07-12', 1, 3, 1, 80, '2025-07-11 23:18:05', '2025-07-11 23:18:05'),
(60, 20250712010035, '2025-07-12', 1, 4, 1, 170, '2025-07-11 23:24:56', '2025-07-11 23:24:56'),
(61, 20250712010036, '2025-07-12', 1, 6, 1, 140, '2025-07-11 23:36:02', '2025-07-11 23:36:02'),
(62, 20250712010037, '2025-07-12', 1, 4, 1, 170, '2025-07-11 23:37:18', '2025-07-11 23:37:18'),
(63, 20250712010037, '2025-07-12', 1, 5, 1, 120, '2025-07-11 23:37:19', '2025-07-11 23:37:19'),
(64, 20250712010038, '2025-07-12', 1, 5, 1, 120, '2025-07-11 23:40:32', '2025-07-11 23:40:32'),
(65, 20250712010039, '2025-07-12', 1, 7, 1, 80, '2025-07-11 23:52:26', '2025-07-11 23:52:26'),
(66, 20250712010039, '2025-07-12', 1, 5, 1, 120, '2025-07-11 23:52:28', '2025-07-11 23:52:28'),
(67, 20250712010040, '2025-07-12', 1, 8, 1, 125, '2025-07-11 23:55:44', '2025-07-11 23:55:44'),
(68, 20250712010040, '2025-07-12', 1, 6, 1, 140, '2025-07-11 23:55:47', '2025-07-11 23:55:47'),
(69, 20250712010041, '2025-07-12', 1, 1, 1, 100, '2025-07-11 23:58:12', '2025-07-11 23:58:12'),
(70, 20250712010041, '2025-07-12', 1, 3, 1, 80, '2025-07-11 23:58:16', '2025-07-11 23:58:16'),
(71, 20250712010042, '2025-07-12', 1, 1, 1, 100, '2025-07-11 23:59:18', '2025-07-11 23:59:18'),
(72, 20250712010042, '2025-07-12', 1, 2, 1, 120, '2025-07-11 23:59:21', '2025-07-11 23:59:21'),
(73, 20250712010042, '2025-07-12', 1, 3, 1, 80, '2025-07-12 00:01:02', '2025-07-12 00:01:02'),
(74, 20250712010042, '2025-07-12', 1, 5, 1, 120, '2025-07-12 00:01:04', '2025-07-12 00:01:04'),
(75, 20250712010042, '2025-07-12', 1, 7, 1, 80, '2025-07-12 00:01:06', '2025-07-12 00:01:06'),
(76, 20250712010042, '2025-07-12', 1, 10, 1, 420, '2025-07-12 00:01:08', '2025-07-12 00:01:08'),
(77, 20250712010043, '2025-07-12', 1, 1, 1, 100, '2025-07-12 00:03:10', '2025-07-12 00:03:10'),
(79, 20250712010043, '2025-07-12', 1, 3, 1, 80, '2025-07-12 00:03:14', '2025-07-12 00:03:14'),
(80, 20250712010043, '2025-07-12', 1, 2, 1, 120, '2025-07-12 00:04:05', '2025-07-12 00:04:05'),
(81, 20250712010043, '2025-07-12', 1, 6, 1, 140, '2025-07-12 00:04:30', '2025-07-12 00:04:30'),
(82, 20250712010043, '2025-07-12', 1, 5, 1, 120, '2025-07-12 00:04:31', '2025-07-12 00:04:31'),
(83, 20250712010043, '2025-07-12', 1, 8, 1, 125, '2025-07-12 00:04:32', '2025-07-12 00:04:32'),
(84, 20250712010043, '2025-07-12', 1, 9, 1, 160, '2025-07-12 00:04:33', '2025-07-12 00:04:33'),
(85, 20250712010043, '2025-07-12', 1, 10, 1, 420, '2025-07-12 00:04:33', '2025-07-12 00:04:33'),
(86, 20250712010043, '2025-07-12', 1, 4, 1, 170, '2025-07-12 00:04:45', '2025-07-12 00:04:45'),
(87, 20250712010043, '2025-07-12', 1, 7, 1, 80, '2025-07-12 00:04:56', '2025-07-12 00:04:56'),
(88, 20250712010044, '2025-07-12', 1, 1, 1, 100, '2025-07-12 00:10:48', '2025-07-12 00:13:27'),
(89, 20250712010044, '2025-07-12', 1, 8, 63, 125, '2025-07-12 00:11:26', '2025-07-12 00:14:20'),
(90, 20250712010045, '2025-07-12', 1, 1, 2, 100, '2025-07-12 00:59:56', '2025-07-12 01:00:13'),
(91, 20250712010045, '2025-07-12', 1, 2, 3, 120, '2025-07-12 00:59:56', '2025-07-12 01:00:06'),
(92, 20250712010045, '2025-07-12', 1, 3, 1, 80, '2025-07-12 00:59:57', '2025-07-12 00:59:57'),
(93, 20250712010045, '2025-07-12', 1, 4, 3, 170, '2025-07-12 00:59:58', '2025-07-12 01:00:08'),
(94, 20250712010045, '2025-07-12', 1, 6, 1, 140, '2025-07-12 00:59:58', '2025-07-12 00:59:58'),
(95, 20250712010045, '2025-07-12', 1, 5, 3, 120, '2025-07-12 00:59:59', '2025-07-12 01:00:08'),
(96, 20250712010045, '2025-07-12', 1, 9, 3, 160, '2025-07-12 01:00:00', '2025-07-12 01:00:12'),
(97, 20250712010045, '2025-07-12', 1, 8, 3, 125, '2025-07-12 01:00:00', '2025-07-12 01:00:10'),
(98, 20250712010045, '2025-07-12', 1, 7, 1, 80, '2025-07-12 01:00:01', '2025-07-12 01:00:01'),
(99, 20250712010045, '2025-07-12', 1, 10, 3, 420, '2025-07-12 01:00:01', '2025-07-12 01:00:11'),
(100, 20250713010046, '2025-07-13', 1, 1, 1, 100, '2025-07-12 22:31:16', '2025-07-12 22:31:16'),
(101, 20250713010046, '2025-07-13', 1, 2, 1, 120, '2025-07-12 22:31:17', '2025-07-12 22:31:17'),
(102, 20250713010046, '2025-07-13', 1, 3, 1, 80, '2025-07-12 22:31:17', '2025-07-12 22:31:17'),
(103, 20250713010046, '2025-07-13', 1, 4, 1, 170, '2025-07-12 22:31:18', '2025-07-12 22:31:18'),
(104, 20250713010046, '2025-07-13', 1, 5, 1, 120, '2025-07-12 22:31:18', '2025-07-12 22:31:18'),
(105, 20250713010046, '2025-07-13', 1, 6, 1, 140, '2025-07-12 22:31:19', '2025-07-12 22:31:19'),
(106, 20250713010046, '2025-07-13', 1, 7, 1, 80, '2025-07-12 22:31:19', '2025-07-12 22:31:19'),
(107, 20250713010046, '2025-07-13', 1, 8, 1, 125, '2025-07-12 22:31:20', '2025-07-12 22:31:20'),
(108, 20250713010046, '2025-07-13', 1, 9, 1, 160, '2025-07-12 22:31:20', '2025-07-12 22:31:20'),
(109, 20250713010046, '2025-07-13', 1, 10, 1, 420, '2025-07-12 22:31:21', '2025-07-12 22:31:21'),
(110, 20250713010047, '2025-07-13', 1, 1, 1, 100, '2025-07-12 22:31:50', '2025-07-12 22:31:50'),
(111, 20250713010047, '2025-07-13', 1, 3, 1, 80, '2025-07-12 22:31:51', '2025-07-12 22:31:51'),
(112, 20250713010047, '2025-07-13', 1, 5, 1, 120, '2025-07-12 22:31:51', '2025-07-12 22:31:51'),
(113, 20250713010047, '2025-07-13', 1, 6, 1, 140, '2025-07-12 22:31:52', '2025-07-12 22:31:52'),
(114, 20250713010047, '2025-07-13', 1, 8, 1, 125, '2025-07-12 22:31:52', '2025-07-12 22:31:52'),
(115, 20250713010048, '2025-07-13', 1, 2, 1, 120, '2025-07-12 22:32:25', '2025-07-12 22:32:25'),
(116, 20250713010048, '2025-07-13', 1, 5, 1, 120, '2025-07-12 22:32:28', '2025-07-12 22:32:28'),
(117, 20250713010048, '2025-07-13', 1, 8, 1, 125, '2025-07-12 22:32:30', '2025-07-12 22:32:30'),
(118, 20250713010049, '2025-07-13', 1, 2, 1, 120, '2025-07-12 22:38:10', '2025-07-12 22:38:10'),
(119, 20250713010049, '2025-07-13', 1, 5, 1, 120, '2025-07-12 22:38:11', '2025-07-12 22:38:11'),
(120, 20250713010049, '2025-07-13', 1, 4, 1, 170, '2025-07-12 22:38:11', '2025-07-12 22:38:11'),
(121, 20250713010050, '2025-07-13', 1, 2, 1, 120, '2025-07-12 22:38:48', '2025-07-12 22:38:48'),
(122, 20250713010050, '2025-07-13', 1, 5, 1, 120, '2025-07-12 22:38:48', '2025-07-12 22:38:48'),
(123, 20250713010050, '2025-07-13', 1, 6, 1, 140, '2025-07-12 22:38:49', '2025-07-12 22:38:49'),
(124, 20250713010050, '2025-07-13', 1, 1, 1, 100, '2025-07-12 22:38:51', '2025-07-12 22:38:51'),
(125, 20250713010001, '2025-07-13', 1, 1, 1, 100, '2025-07-13 02:17:24', '2025-07-13 02:17:24'),
(126, 20250713010001, '2025-07-13', 1, 2, 1, 120, '2025-07-13 02:17:25', '2025-07-13 02:17:25'),
(127, 20250713010001, '2025-07-13', 1, 3, 1, 80, '2025-07-13 02:17:25', '2025-07-13 02:17:25'),
(128, 20250713010001, '2025-07-13', 1, 6, 1, 140, '2025-07-13 02:17:26', '2025-07-13 02:17:26'),
(129, 20250713010001, '2025-07-13', 1, 5, 1, 120, '2025-07-13 02:17:26', '2025-07-13 02:17:26'),
(130, 20250713010001, '2025-07-13', 1, 4, 1, 170, '2025-07-13 02:17:27', '2025-07-13 02:17:27'),
(131, 20250713010001, '2025-07-13', 1, 8, 1, 125, '2025-07-13 02:17:27', '2025-07-13 02:17:27'),
(132, 20250713010001, '2025-07-13', 1, 9, 1, 160, '2025-07-13 02:17:28', '2025-07-13 02:17:28'),
(133, 20250713010001, '2025-07-13', 1, 7, 1, 80, '2025-07-13 02:17:28', '2025-07-13 02:17:28'),
(134, 20250713010001, '2025-07-13', 1, 10, 1, 420, '2025-07-13 02:17:29', '2025-07-13 02:17:29'),
(135, 20250713010002, '2025-07-13', 1, 2, 1, 120, '2025-07-13 02:17:42', '2025-07-13 02:17:42'),
(136, 20250713010002, '2025-07-13', 1, 3, 1, 80, '2025-07-13 02:17:42', '2025-07-13 02:17:42'),
(137, 20250713010002, '2025-07-13', 1, 5, 1, 120, '2025-07-13 02:17:42', '2025-07-13 02:17:42'),
(138, 20250713010003, '2025-07-13', 1, 5, 1, 120, '2025-07-13 02:18:04', '2025-07-13 02:18:04'),
(139, 20250713010003, '2025-07-13', 1, 6, 1, 140, '2025-07-13 02:18:05', '2025-07-13 02:18:05'),
(140, 20250713010003, '2025-07-13', 1, 9, 1, 160, '2025-07-13 02:18:05', '2025-07-13 02:18:05'),
(141, 20250713010003, '2025-07-13', 1, 8, 1, 125, '2025-07-13 02:18:06', '2025-07-13 02:18:06'),
(142, 20250713010004, '2025-07-13', 1, 2, 3, 120, '2025-07-13 04:05:18', '2025-07-13 04:05:40'),
(143, 20250713010004, '2025-07-13', 1, 5, 3, 120, '2025-07-13 04:05:18', '2025-07-13 04:05:41'),
(144, 20250713010004, '2025-07-13', 1, 4, 3, 170, '2025-07-13 04:05:19', '2025-07-13 04:05:43'),
(145, 20250713010004, '2025-07-13', 1, 1, 3, 100, '2025-07-13 04:05:36', '2025-07-13 04:05:40'),
(146, 20250713010005, '2025-07-13', 1, 5, 2, 120, '2025-07-13 04:09:14', '2025-07-13 04:09:18'),
(147, 20250713010005, '2025-07-13', 1, 6, 2, 140, '2025-07-13 04:09:15', '2025-07-13 04:09:19'),
(148, 20250713010005, '2025-07-13', 1, 8, 2, 125, '2025-07-13 04:09:16', '2025-07-13 04:09:20'),
(149, 20250713010006, '2025-07-13', 1, 1, 1, 100, '2025-07-13 04:09:59', '2025-07-13 04:09:59'),
(150, 20250713010006, '2025-07-13', 1, 5, 1, 120, '2025-07-13 04:10:00', '2025-07-13 04:10:00'),
(151, 20250713010006, '2025-07-13', 1, 8, 1, 125, '2025-07-13 04:10:01', '2025-07-13 04:10:01'),
(152, 20250713010006, '2025-07-13', 1, 9, 1, 160, '2025-07-13 04:10:01', '2025-07-13 04:10:01'),
(153, 20250713010006, '2025-07-13', 1, 10, 1, 420, '2025-07-13 04:10:03', '2025-07-13 04:10:03');

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
(1, 'Bread', '2025-07-08 17:36:34', '2025-07-08 17:36:34'),
(2, 'Cakes', '2025-07-08 17:36:34', '2025-07-08 17:36:34'),
(3, 'Cookies & Biscuits', '2025-07-08 17:36:34', '2025-07-08 17:36:34'),
(4, 'Pastry', '2025-07-08 17:36:34', '2025-07-08 17:36:34'),
(5, 'Snacks', '2025-07-08 17:36:34', '2025-07-08 17:36:34'),
(6, 'Sweets', '2025-07-08 17:36:34', '2025-07-08 17:36:34'),
(7, 'Dairy Items', '2025-07-08 17:36:34', '2025-07-08 17:36:34'),
(8, 'Beverages', '2025-07-08 17:36:34', '2025-07-08 17:36:34');

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
(32, '2014_10_12_000000_create_users_table', 1),
(33, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(34, '2014_10_12_100000_create_password_resets_table', 1),
(35, '2019_08_19_000000_create_failed_jobs_table', 1),
(36, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(37, '2025_07_09_050619_create_categories_table', 1),
(38, '2025_07_09_051129_create_subcategories_table', 1),
(39, '2025_07_09_051306_create_products_table', 1),
(40, '2025_07_10_064132_create_admins_table', 2),
(68, '2025_07_10_052213_create_carts_table', 3),
(69, '2025_07_10_054040_create_orders_table', 3),
(70, '2025_07_10_062043_create_stocks_table', 3);

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
(51, '2025-07-13', 1, 20250713010001, 1515, 100, 227, 1642, 1642, 0, 2, '2025-07-13 02:17:37', '2025-07-13 02:17:37'),
(52, '2025-07-13', 1, 20250713010002, 320, 10, 48, 358, 358, 0, 2, '2025-07-13 02:18:00', '2025-07-13 02:18:00'),
(53, '2025-07-13', 1, 20250713010003, 545, 127, 82, 500, 500, 0, 2, '2025-07-13 02:18:16', '2025-07-13 04:05:04'),
(54, '2025-07-13', 1, 20250713010004, 1530, 10, 230, 1750, 1500, 250, 3, '2025-07-13 04:05:58', '2025-07-13 04:05:58'),
(55, '2025-07-13', 1, 20250713010005, 770, 85, 116, 801, 801, 0, 2, '2025-07-13 04:09:37', '2025-07-13 04:09:37'),
(56, '2025-07-13', 1, 20250713010006, 925, 38, 139, 1026, 1000, 26, 3, '2025-07-13 04:10:17', '2025-07-13 04:10:17');

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
(1, 'Vanilla Cupcake', 2, 7, 100, 5, 'Soft and moist individual cake with sweet vanilla flavor and creamy topping.', 'FD-1752061810.jpg', 1, '1pcs', 'Flour, Sugar, Eggs, Vanilla essence, Butter, Baking powder', '2025-07-03', '2025-07-11', '2025-07-08 18:44:24', '2025-07-13 04:09:59'),
(2, 'Chocolate Donut', 4, 35, 120, 5, 'Ring-shaped fried dough topped with rich chocolate glaze.', 'FD-1752061967.jpg', 1, '1pcs', 'Flour, Cocoa powder, Sugar, Yeast, Milk, Butter, Chocolate glaze', '2025-07-09', '2025-07-09', '2025-07-08 18:56:01', '2025-07-13 04:05:40'),
(3, 'Chicken Patties', 5, 18, 80, 8, 'Crispy puff stuffed with spicy chicken filling, ideal for snacks.', 'FD-1752062044.jpg', 1, '1kg', 'Flour, Butter, Chicken, Onion, Garlic, Spices', '2025-07-02', '2025-07-31', '2025-07-08 18:59:25', '2025-07-13 02:17:42'),
(4, 'Red Velvet Slice', 2, 7, 170, 6, 'Moist red cake slice layered with smooth cream cheese frosting.', 'FD-1752062227.jpg', 1, '1pcs', 'Flour, Cocoa, Buttermilk, Vinegar, Sugar, Eggs, Cream cheese frosting', '2025-07-09', '2025-07-09', '2025-07-08 23:57:07', '2025-07-13 04:05:43'),
(5, 'Cheese Bun', 1, 4, 120, 1, 'Soft and fluffy bun filled or topped with melted cheese.', 'FD-1752063390.jpg', 1, '1pcs', 'Flour, Yeast, Milk, Sugar, Cheese, Butter', '2025-07-09', '2025-07-09', '2025-07-08 23:58:27', '2025-07-13 04:10:00'),
(6, 'Butter Croissant', 4, 16, 140, 6, 'Flaky and buttery French-style crescent-shaped pastry.', 'FD-1752062492.jpg', 1, '1pcs', 'Laminated dough (Flour, Butter), Yeast, Sugar, Salt', '2025-07-09', '2025-07-23', '2025-07-09 00:01:32', '2025-07-13 04:09:19'),
(7, 'Veg Sandwich', 6, 25, 80, 9, 'Fresh sandwich packed with vegetables and creamy dressing.', 'FD-1752062557.jpg', 1, '1pcs', 'Bread, Tomato, Cucumber, Lettuce, Cheese, Mayonnaise', '2025-07-10', '2025-07-31', '2025-07-09 00:02:37', '2025-07-13 02:17:28'),
(8, 'Chocolate Cookie', 3, 10, 125, 5, 'Crispy outside, chewy inside, loaded with chocolate chips.', 'FD-1752062605.jpg', 1, '1kg', 'Flour, Butter, Eggs, Chocolate chips, Baking soda, Sugar', '2025-07-03', '2025-07-23', '2025-07-09 00:03:25', '2025-07-13 04:10:01'),
(9, 'Garlic Bread', 1, 3, 160, 7, 'Toasted bread slices flavored with garlic butter and herbs.', 'FD-1752062657.jpg', 1, '1pcs', 'Flour, Garlic, Butter, Herbs, Yeast, Salt', '2025-07-09', '2025-07-23', '2025-07-09 00:04:17', '2025-07-13 04:10:01'),
(10, 'Birthday Cake', 2, 5, 420, 8, 'Classic round cake decorated with cream, ideal for celebrations.', 'FD-1752062704.jpg', 1, '1lb', 'Flour, Eggs, Sugar, Butter, Milk, Cream, Flavoring, Food color', '2025-07-08', '2025-07-22', '2025-07-09 00:05:04', '2025-07-13 04:10:02');

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
(144, 0, '2025-07-13', 1, 10, 0, 'In', 2, '2025-07-13 02:16:32', '2025-07-13 02:16:32'),
(145, 0, '2025-07-13', 3, 10, 0, 'In', 2, '2025-07-13 02:16:36', '2025-07-13 02:16:36'),
(146, 0, '2025-07-13', 2, 10, 0, 'In', 2, '2025-07-13 02:16:38', '2025-07-13 02:16:38'),
(147, 0, '2025-07-13', 4, 10, 0, 'In', 2, '2025-07-13 02:16:40', '2025-07-13 02:16:40'),
(148, 0, '2025-07-13', 5, 10, 0, 'In', 2, '2025-07-13 02:16:42', '2025-07-13 02:16:42'),
(149, 0, '2025-07-13', 6, 10, 0, 'In', 2, '2025-07-13 02:16:44', '2025-07-13 02:16:44'),
(150, 0, '2025-07-13', 7, 10, 0, 'In', 2, '2025-07-13 02:16:46', '2025-07-13 02:16:46'),
(151, 0, '2025-07-13', 8, 10, 0, 'In', 2, '2025-07-13 02:16:48', '2025-07-13 02:16:48'),
(152, 0, '2025-07-13', 9, 10, 0, 'In', 2, '2025-07-13 02:16:51', '2025-07-13 02:16:51'),
(153, 0, '2025-07-13', 10, 10, 0, 'In', 2, '2025-07-13 02:16:53', '2025-07-13 02:16:53'),
(154, 20250713010001, '2025-07-13', 1, 0, 1, 'Out', 1, '2025-07-13 02:17:24', '2025-07-13 02:17:24'),
(155, 20250713010001, '2025-07-13', 2, 0, 1, 'Out', 1, '2025-07-13 02:17:25', '2025-07-13 02:17:25'),
(156, 20250713010001, '2025-07-13', 3, 0, 1, 'Out', 1, '2025-07-13 02:17:25', '2025-07-13 02:17:25'),
(157, 20250713010001, '2025-07-13', 6, 0, 1, 'Out', 1, '2025-07-13 02:17:26', '2025-07-13 02:17:26'),
(158, 20250713010001, '2025-07-13', 5, 0, 1, 'Out', 1, '2025-07-13 02:17:26', '2025-07-13 02:17:26'),
(159, 20250713010001, '2025-07-13', 4, 0, 1, 'Out', 1, '2025-07-13 02:17:27', '2025-07-13 02:17:27'),
(160, 20250713010001, '2025-07-13', 8, 0, 1, 'Out', 1, '2025-07-13 02:17:27', '2025-07-13 02:17:27'),
(161, 20250713010001, '2025-07-13', 9, 0, 1, 'Out', 1, '2025-07-13 02:17:28', '2025-07-13 02:17:28'),
(162, 20250713010001, '2025-07-13', 7, 0, 1, 'Out', 1, '2025-07-13 02:17:28', '2025-07-13 02:17:28'),
(163, 20250713010001, '2025-07-13', 10, 0, 1, 'Out', 1, '2025-07-13 02:17:29', '2025-07-13 02:17:29'),
(164, 20250713010002, '2025-07-13', 2, 0, 1, 'Out', 1, '2025-07-13 02:17:42', '2025-07-13 02:17:42'),
(165, 20250713010002, '2025-07-13', 3, 0, 1, 'Out', 1, '2025-07-13 02:17:42', '2025-07-13 02:17:42'),
(166, 20250713010002, '2025-07-13', 5, 0, 1, 'Out', 1, '2025-07-13 02:17:42', '2025-07-13 02:17:42'),
(167, 20250713010003, '2025-07-13', 5, 0, 1, 'Out', 1, '2025-07-13 02:18:04', '2025-07-13 02:18:04'),
(168, 20250713010003, '2025-07-13', 6, 0, 1, 'Out', 1, '2025-07-13 02:18:05', '2025-07-13 02:18:05'),
(169, 20250713010003, '2025-07-13', 9, 0, 1, 'Out', 1, '2025-07-13 02:18:05', '2025-07-13 02:18:05'),
(170, 20250713010003, '2025-07-13', 8, 0, 1, 'Out', 1, '2025-07-13 02:18:06', '2025-07-13 02:18:06'),
(171, 20250713010004, '2025-07-13', 2, 0, 3, 'Out', 1, '2025-07-13 04:05:18', '2025-07-13 04:05:40'),
(172, 20250713010004, '2025-07-13', 5, 0, 3, 'Out', 1, '2025-07-13 04:05:18', '2025-07-13 04:05:41'),
(173, 20250713010004, '2025-07-13', 4, 0, 3, 'Out', 1, '2025-07-13 04:05:19', '2025-07-13 04:05:43'),
(174, 20250713010004, '2025-07-13', 1, 0, 3, 'Out', 1, '2025-07-13 04:05:36', '2025-07-13 04:05:40'),
(175, 20250713010005, '2025-07-13', 5, 0, 2, 'Out', 1, '2025-07-13 04:09:14', '2025-07-13 04:09:18'),
(176, 20250713010005, '2025-07-13', 6, 0, 2, 'Out', 1, '2025-07-13 04:09:15', '2025-07-13 04:09:19'),
(177, 20250713010005, '2025-07-13', 8, 0, 2, 'Out', 1, '2025-07-13 04:09:16', '2025-07-13 04:09:20'),
(178, 20250713010006, '2025-07-13', 1, 0, 1, 'Out', 1, '2025-07-13 04:09:59', '2025-07-13 04:09:59'),
(179, 20250713010006, '2025-07-13', 5, 0, 1, 'Out', 1, '2025-07-13 04:10:00', '2025-07-13 04:10:00'),
(180, 20250713010006, '2025-07-13', 8, 0, 1, 'Out', 1, '2025-07-13 04:10:01', '2025-07-13 04:10:01'),
(181, 20250713010006, '2025-07-13', 9, 0, 1, 'Out', 1, '2025-07-13 04:10:01', '2025-07-13 04:10:01'),
(182, 20250713010006, '2025-07-13', 10, 0, 1, 'Out', 1, '2025-07-13 04:10:03', '2025-07-13 04:10:03');

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
(1, 1, 'White Bread', '2025-07-08 17:36:34', '2025-07-08 17:36:34'),
(2, 1, 'Brown Bread', '2025-07-08 17:36:34', '2025-07-08 17:36:34'),
(3, 1, 'Multigrain Bread', '2025-07-08 17:36:34', '2025-07-08 17:36:34'),
(4, 1, 'Buns & Rolls', '2025-07-08 17:36:34', '2025-07-08 17:36:34'),
(5, 2, 'Birthday Cake', '2025-07-08 17:36:34', '2025-07-08 17:36:34'),
(6, 2, 'Wedding Cake', '2025-07-08 17:36:34', '2025-07-08 17:36:34'),
(7, 2, 'Cupcakes', '2025-07-08 17:36:34', '2025-07-08 17:36:34'),
(8, 2, 'Cheese Cake', '2025-07-08 17:36:34', '2025-07-08 17:36:34'),
(9, 2, 'Chocolate Cake', '2025-07-08 17:36:34', '2025-07-08 17:36:34'),
(10, 3, 'Chocolate Chip Cookies', '2025-07-08 17:36:34', '2025-07-08 17:36:34'),
(11, 3, 'Butter Cookies', '2025-07-08 17:36:34', '2025-07-08 17:36:34'),
(12, 3, 'Oatmeal Cookies', '2025-07-08 17:36:34', '2025-07-08 17:36:34'),
(13, 3, 'Digestive Biscuits', '2025-07-08 17:36:34', '2025-07-08 17:36:34'),
(14, 4, 'Cream Pastry', '2025-07-08 17:36:34', '2025-07-08 17:36:34'),
(15, 4, 'Fruit Pastry', '2025-07-08 17:36:34', '2025-07-08 17:36:34'),
(16, 4, 'Black Forest Pastry', '2025-07-08 17:36:34', '2025-07-08 17:36:34'),
(17, 4, 'Éclair', '2025-07-08 17:36:34', '2025-07-08 17:36:34'),
(18, 5, 'Patties', '2025-07-08 17:36:34', '2025-07-08 17:36:34'),
(19, 5, 'Pies', '2025-07-08 17:36:34', '2025-07-08 17:36:34'),
(20, 5, 'Sandwiches', '2025-07-08 17:36:34', '2025-07-08 17:36:34'),
(21, 5, 'Chicken Roll', '2025-07-08 17:36:34', '2025-07-08 17:36:34'),
(22, 5, 'Samosa', '2025-07-08 17:36:34', '2025-07-08 17:36:34'),
(23, 6, 'Donuts', '2025-07-08 17:36:34', '2025-07-08 17:36:34'),
(24, 6, 'Brownies', '2025-07-08 17:36:34', '2025-07-08 17:36:34'),
(25, 6, 'Muffins', '2025-07-08 17:36:34', '2025-07-08 17:36:34'),
(26, 6, 'Gulab Jamun', '2025-07-08 17:36:34', '2025-07-08 17:36:34'),
(27, 7, 'Fresh Cream', '2025-07-08 17:36:34', '2025-07-08 17:36:34'),
(28, 7, 'Butter', '2025-07-08 17:36:34', '2025-07-08 17:36:34'),
(29, 7, 'Cheese', '2025-07-08 17:36:34', '2025-07-08 17:36:34'),
(30, 7, 'Milk Shake', '2025-07-08 17:36:34', '2025-07-08 17:36:34'),
(31, 8, 'Tea', '2025-07-08 17:36:34', '2025-07-08 17:36:34'),
(32, 8, 'Coffee', '2025-07-08 17:36:34', '2025-07-08 17:36:34'),
(33, 8, 'Juice', '2025-07-08 17:36:34', '2025-07-08 17:36:34'),
(34, 8, 'Soft Drinks', '2025-07-08 17:36:34', '2025-07-08 17:36:34'),
(35, 4, 'Donut', '2025-07-09 05:51:42', '2025-07-09 05:51:42');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

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
