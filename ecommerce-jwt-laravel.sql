-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2023 at 10:45 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce-jwt-laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `salary`, `created_at`, `updated_at`) VALUES
(1, 'First Employee', 45000, '2023-02-06 07:18:59', '2023-02-06 07:18:59'),
(2, 'Second Employee', 47500, '2023-02-06 07:18:59', '2023-02-06 07:18:59'),
(3, 'Third Employee', 50500, '2023-02-06 07:18:59', '2023-02-06 07:18:59'),
(4, 'Fourth Employee', 55000, '2023-02-06 07:18:59', '2023-02-06 07:18:59');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `filters`
--

CREATE TABLE `filters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `filter_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `filters`
--

INSERT INTO `filters` (`id`, `filter_type`, `created_at`, `updated_at`) VALUES
(4, 'Color', '2023-02-06 08:24:46', '2023-02-06 08:24:46'),
(5, 'Storage', '2023-02-06 08:24:46', '2023-02-06 08:24:46');

-- --------------------------------------------------------

--
-- Table structure for table `filter_attributes`
--

CREATE TABLE `filter_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `filter_id` bigint(20) UNSIGNED NOT NULL,
  `attribute` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `filter_attributes`
--

INSERT INTO `filter_attributes` (`id`, `filter_id`, `attribute`, `created_at`, `updated_at`) VALUES
(1, 4, 'Gold', '2023-02-06 08:24:46', '2023-02-06 08:24:46'),
(2, 4, 'Silver', '2023-02-06 08:24:46', '2023-02-06 08:24:46'),
(3, 4, 'Pacific Blue', '2023-02-06 08:24:46', '2023-02-06 08:24:46'),
(4, 5, '128GB', '2023-02-06 08:24:46', '2023-02-06 08:24:46'),
(5, 5, '256GB', '2023-02-06 08:24:46', '2023-02-06 08:24:46'),
(6, 5, '512GB', '2023-02-06 08:24:46', '2023-02-06 08:24:46');

-- --------------------------------------------------------

--
-- Table structure for table `filter_mobiles`
--

CREATE TABLE `filter_mobiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mobile_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `filter_mobiles`
--

INSERT INTO `filter_mobiles` (`id`, `mobile_id`, `attribute_id`, `created_at`, `updated_at`) VALUES
(1, 4, 4, '2023-02-06 11:59:53', '2023-02-06 11:59:53'),
(2, 5, 2, '2023-02-06 11:59:53', '2023-02-06 11:59:53'),
(3, 6, 6, '2023-02-06 11:59:53', '2023-02-06 11:59:53'),
(4, 7, 6, '2023-02-06 11:59:53', '2023-02-06 11:59:53'),
(5, 4, 2, '2023-02-06 11:59:53', '2023-02-06 11:59:53'),
(6, 6, 1, NULL, NULL);

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
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2023_02_04_172254_create_employees_table', 1),
(11, '2023_02_06_051901_create_mobiles_table', 2),
(12, '2023_02_06_052253_create_filters_table', 2),
(13, '2023_02_06_052324_create_filter_attributes_table', 2),
(14, '2023_02_06_052350_create_filter_mobiles_table', 2),
(15, '2023_02_06_142021_add_unique_constraint_to_mobiles_table', 3),
(16, '2023_02_06_142142_add_unique_constraint_to_filters_table', 3),
(17, '2023_02_06_142236_add_unique_constraint_to_filter_attributes_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `mobiles`
--

CREATE TABLE `mobiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mobile_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mobiles`
--

INSERT INTO `mobiles` (`id`, `mobile_name`, `mobile_photo`, `created_at`, `updated_at`) VALUES
(4, 'Samsung Galaxy A5', 'samsung-a5-1.jpg', '2023-02-06 11:59:53', '2023-02-06 11:59:53'),
(5, 'OPPO A5', 'Oppo-A5-2020-500x500.jpg', '2023-02-06 11:59:53', '2023-02-06 11:59:53'),
(6, 'Vivo 5G', 'Vivo-Y55s-5G-2023-Gradient-300x300.jpg', '2023-02-06 11:59:53', '2023-02-06 11:59:53'),
(7, 'Test Phone', 'samsung-a5-1.jpg', '2023-02-06 11:59:53', '2023-02-06 11:59:53');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rokan Chowdhury Onick', 'hello@rokanbd.cf', NULL, '$2y$10$Kb2Qopua/ByDkl9RgcSLEeQbv7rGDGNiLHyU/.Z3l0d5dF/Wy/Vvm', NULL, '2023-02-06 00:02:22', '2023-02-06 00:02:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `filters`
--
ALTER TABLE `filters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `filters_filter_type_unique` (`filter_type`);

--
-- Indexes for table `filter_attributes`
--
ALTER TABLE `filter_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `filter_attributes_attribute_unique` (`attribute`),
  ADD KEY `filter_attributes_filter_id_foreign` (`filter_id`);

--
-- Indexes for table `filter_mobiles`
--
ALTER TABLE `filter_mobiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filter_mobiles_mobile_id_foreign` (`mobile_id`),
  ADD KEY `filter_mobiles_attribute_id_foreign` (`attribute_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mobiles`
--
ALTER TABLE `mobiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mobiles_mobile_name_unique` (`mobile_name`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `filters`
--
ALTER TABLE `filters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `filter_attributes`
--
ALTER TABLE `filter_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `filter_mobiles`
--
ALTER TABLE `filter_mobiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `mobiles`
--
ALTER TABLE `mobiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `filter_attributes`
--
ALTER TABLE `filter_attributes`
  ADD CONSTRAINT `filter_attributes_filter_id_foreign` FOREIGN KEY (`filter_id`) REFERENCES `filters` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `filter_mobiles`
--
ALTER TABLE `filter_mobiles`
  ADD CONSTRAINT `filter_mobiles_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `filter_attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `filter_mobiles_mobile_id_foreign` FOREIGN KEY (`mobile_id`) REFERENCES `mobiles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
