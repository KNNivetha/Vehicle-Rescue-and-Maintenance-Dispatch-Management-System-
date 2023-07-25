-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2022 at 05:07 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vbs`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '16.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `location`, `gender`, `email`, `email_verified_at`, `avatar`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'kpm', 'Male', 'admin@gmail.com', NULL, '16.png', '$2a$10$Vu1l0ry1aeksv76WPAGLueQe6CMzkym.UPpVtiwtEbY5Xn4cjqG9O', NULL, '2020-08-09 02:59:34', '2020-08-09 02:59:34');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(5) NOT NULL,
  `request_id` int(5) NOT NULL,
  `send_by_mechanic_id` int(5) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `request_id`, `send_by_mechanic_id`, `description`, `created_at`, `updated_at`) VALUES
(1, 4, 12, 'request is accepted', '2020-08-09 02:56:24', '2020-08-09 02:56:24'),
(2, 1, 11, 'request is accepted', '2022-12-03 22:28:34', '2022-12-03 22:28:34');

-- --------------------------------------------------------

--
-- Table structure for table `mechanics`
--

CREATE TABLE `mechanics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(12) DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '16.png',
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `servicetype` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mechanics`
--

INSERT INTO `mechanics` (`id`, `name`, `email`, `location`, `phone`, `avatar`, `gender`, `servicetype`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'kasun', 'mechanic@gmail.com', 'matara', NULL, '16.png', 'Male', NULL, NULL, '$2a$10$Vu1l0ry1aeksv76WPAGLueQe6CMzkym.UPpVtiwtEbY5Xn4cjqG9O', NULL, '2023-05-30 01:27:20', '2023-05-30 01:27:20'),
(5, 'kasun', 's@gmail.com', 'matara', NULL, '16.png', 'Male', NULL, NULL, '$2y$10$Tid2zkHg8HUME/jhkVcK3eJxR5qqgWssaQky/MLjOtF/RVEDoKOty', NULL, '2023-05-30 01:31:00', '2023-05-30 01:31:00'),
(11, 'dinesh ranga', 'kar@gmail.com', 'hvhv', 710235233, '11_avatar1596957537.jpg', 'Male', '2 Wheeler', NULL, '$2a$10$Vu1l0ry1aeksv76WPAGLueQe6CMzkym.UPpVtiwtEbY5Xn4cjqG9O', NULL, '2023-05-30 01:42:55', '2023-05-30 01:49:43'),
(12, 'dinesh ranga', 'aafh@gmail.com', 'errn', NULL, '16.png', 'Male', NULL, NULL, '$2y$10$vuKNjngW/LH/Xkknb7.vnebRKomMxezRKnJPxefRjDWIw1vqLOHRa', NULL, '2023-05-30 02:18:30', '2023-05-30 02:18:30');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_02_20_110837_create_admins_table', 1),
(4, '2020_02_20_111011_create_mechanics_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `mechanic_id` int(10) UNSIGNED DEFAULT NULL,
  `mechanic_email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Is_requested` tinyint(1) NOT NULL DEFAULT 0,
  `Is_accepted` tinyint(1) NOT NULL DEFAULT 0,
  `Is_solved` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `user_id`, `mechanic_id`, `mechanic_email`, `Is_requested`, `Is_accepted`, `Is_solved`, `created_at`, `updated_at`) VALUES
(1, 1, 11, 'kar@gmail.com', 0, 1, 0, '2023-05-30 01:42:55', '2023-05-30 22:28:34'),
(2, 1, 12, 'aafh@gmail.com', 0, 0, 0, '2023-05-30 02:18:30', '2023-05-30 02:44:21'),
(3, 2, 11, 'kar@gmail.com', 0, 0, 0, '2023-05-30 02:44:57', '2023-05-30 02:45:43'),
(4, 2, 12, 'aafh@gmail.com', 0, 1, 0, '2023-05-30 02:45:11', '2023-05-30 02:48:50');
INSERT INTO requests (mechanic_id, mechanic_email, Is_accepted, updated_at, created_at) 
VALUES (13, 'mech@gmail.com', 0, '2023-05-01 15:11:12', '2023-05-01 15:11:12');



-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '16.png',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `location`, `gender`, `email`, `email_verified_at`, `password`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'kasun', 'matara', 'Male', 'user@gmail.com', NULL, '$2a$10$Vu1l0ry1aeksv76WPAGLueQe6CMzkym.UPpVtiwtEbY5Xn4cjqG9O', '16.png', NULL, '2023-05-30 01:08:21', '2023-05-30 01:08:21'),
(2, 'Ilakiya', 'Chidambaram', 'Female', 'drillakiya@gmail.com', NULL, '$2y$10$l/G.ZI7ywqGmuiJ.U88Un.rzsLt3CcDkc5.BdKXufAEX9khoQJWDa', '16.png', NULL, '2020-08-09 02:35:57', '2023-05-30 02:35:57'),
(3,'divya','mysore','Female','divya@gmail.com',NULL,'$2y$10$mS1JC.TzELiT0.k7q8vUfOv1s2Zjmdx2cthsVHq3hf6g1JRYZYjiS','Female.png',NULL,'2023-05-16 09:58:21','2023-05-16 09:58:21');

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
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mechanics`
--
ALTER TABLE `mechanics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mechanics_email_unique` (`email`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mechanics`
--
ALTER TABLE `mechanics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
