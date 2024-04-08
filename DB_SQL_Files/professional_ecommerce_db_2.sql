-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2024 at 02:00 PM
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
-- Database: `professional_ecommerce_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `meta_keyword` mediumtext DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `is_delete` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `name`, `slug`, `meta_title`, `meta_description`, `meta_keyword`, `created_by`, `status`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'Stella Decker', 'Aliquam ullam sint', 'Autem minus ea corpo', 'Temporibus mollit es', 'Qui deserunt do maxi', 5, 1, 1, '2024-04-08 04:14:02', '2024-04-08 04:26:44'),
(2, 'Len Sampson', 'Explicabo Molestias', 'Enim temporibus veni', 'Sit dolore dolore e', 'Quam quia fugit opt', 5, 1, 1, '2024-04-08 04:14:16', '2024-04-08 04:27:04'),
(3, 'Iphone', 'Iphone', 'Iphone', 'Iphone', 'Iphone', 5, 0, 0, '2024-04-08 04:21:09', '2024-04-08 04:24:58');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` mediumtext DEFAULT NULL,
  `meta_keyword` mediumtext DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `is_delete` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `meta_title`, `meta_description`, `meta_keyword`, `created_by`, `status`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'T-shirts', 'T-shirts', 'T-shirts', 'T-shirts', 'T-shirts', 5, 0, 1, '2024-04-08 04:33:30', '2024-04-07 22:33:30'),
(2, 'Dresses', 'Dresses', 'Dresses', 'Dresses', 'Dresses', 5, 0, 0, '2024-04-08 00:21:09', '2024-04-07 18:21:09'),
(3, 'Bags', 'Bags', 'Bags', 'Bags', 'Bags', 5, 0, 0, '2024-04-07 18:21:50', '2024-04-07 18:21:50'),
(4, 'Jackets', 'Jackets', 'Jackets', 'Jackets', 'Jackets', 5, 0, 0, '2024-04-07 18:22:07', '2024-04-07 18:22:07'),
(5, 'Shoes', 'Shoes', 'Shoes', 'Shoes', 'Shoes', 5, 0, 0, '2024-04-07 18:22:24', '2024-04-07 18:22:24'),
(6, 'Jumpers', 'Jumpers', 'Jumpers', 'Jumpers', 'Jumpers', 5, 0, 0, '2024-04-07 18:22:40', '2024-04-07 18:22:40');

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

CREATE TABLE `color` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `is_delete` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `color`
--

INSERT INTO `color` (`id`, `name`, `code`, `created_by`, `status`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'Stella Decker', NULL, 5, 1, 1, '2024-04-08 04:14:02', '2024-04-08 04:26:44'),
(2, 'Len Sampson', NULL, 5, 1, 1, '2024-04-08 04:14:16', '2024-04-08 04:27:04'),
(3, 'Iphone', NULL, 5, 0, 1, '2024-04-08 04:21:09', '2024-04-08 05:28:58'),
(4, 'Indigo Herrera', NULL, 5, 1, 1, '2024-04-08 04:54:37', '2024-04-08 05:29:02'),
(5, 'Pascale Cohen', '#3f79ee', 5, 0, 0, '2024-04-08 05:07:25', '2024-04-08 05:07:25'),
(6, 'Red', '#bd2828', 5, 0, 0, '2024-04-08 05:07:47', '2024-04-08 05:28:07'),
(7, 'Alec Morton', '#c8019e', 5, 0, 0, '2024-04-08 05:20:22', '2024-04-08 05:20:22');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `old_price` double NOT NULL DEFAULT 0,
  `price` double NOT NULL DEFAULT 0,
  `short_description` mediumtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `additional_information` mediumtext DEFAULT NULL,
  `shipping_returns` mediumtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `is_delete` tinyint(4) NOT NULL DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `title`, `slug`, `category_id`, `sub_category_id`, `brand_id`, `old_price`, `price`, `short_description`, `description`, `additional_information`, `shipping_returns`, `status`, `is_delete`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Sunt tempore corpor', 'sunt-tempore-corpor-1', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, '2024-04-07 16:16:09', '2024-04-07 16:16:09'),
(2, 'Omnis aute qui sed d', 'omnis-aute-qui-sed-d-2', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 5, '2024-04-07 16:36:15', '2024-04-07 16:36:15'),
(3, 'Sunt tempore corpor', 'sunt-tempore-corpor-3', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 5, '2024-04-07 16:44:42', '2024-04-07 16:44:42'),
(4, 'Accusamus accusantiu', 'accusamus-accusantiu-4', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 5, '2024-04-08 03:28:49', '2024-04-08 03:28:49'),
(5, 'Accusamus accusantiu', 'accusamus-accusantiu-5', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 5, '2024-04-08 03:29:11', '2024-04-08 03:29:11'),
(6, 'Odio maiores aliquid', 'odio-maiores-aliquid-6', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 5, '2024-04-08 05:35:48', '2024-04-08 05:35:48');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` mediumtext DEFAULT NULL,
  `meta_keyword` mediumtext DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `is_delete` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`id`, `category_id`, `name`, `slug`, `meta_title`, `meta_description`, `meta_keyword`, `created_by`, `status`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 'Summer Holcomb', 'Doloremque-cupidatat', 'Nulla iste aliquip c', 'Nihil consequat Mol', 'Fugit rem ab repudi', 5, 0, 1, '2024-04-08 01:23:03', '2024-04-07 19:23:03'),
(2, 2, 'Violet Reeves', 'Excepturi-odio-est', 'Mollitia officia sed', 'Eos vero deserunt ip', 'Ducimus dolor itaqu', 5, 0, 1, '2024-04-08 01:23:08', '2024-04-07 19:23:08'),
(3, 5, 'shoes-111', 'shoes-111', 'shoes-111', 'shoes-111', 'shoes-111', 5, 1, 0, '2024-04-08 01:08:38', '2024-04-07 19:08:38'),
(4, 4, 'Man Jackets', 'Man-Jackets', 'Man Jackets', 'Man Jackets', 'Man Jackets', 5, 0, 0, '2024-04-07 18:47:59', '2024-04-07 18:47:59'),
(5, 3, 'Cadman Yang', 'Dolore sit et except', 'Soluta ullamco conse', 'Consequatur possimu', 'Sit ut sed qui aute', 5, 1, 0, '2024-04-07 18:49:09', '2024-04-07 18:49:09');

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
  `is_admin` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:customer, 1: admin',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:active, 1:inactive',
  `is_delete` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:not, 1:deleted',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `is_admin`, `status`, `is_delete`, `created_at`, `updated_at`) VALUES
(2, 'Aaron Mcdaniel', 'bexa@mailinator.com', NULL, '$2y$12$Cls0O6rwsLhmXkI1RMCnQ.mzGtYhCYVXVK4sHvZgTUWes8FOROKW2', NULL, 1, 1, 0, '2024-04-06 15:57:26', '2024-04-07 01:22:23'),
(3, 'Fuller Lindsey', 'behafama@mailinator.com', NULL, '$2y$12$QXr7b7TMXWJmTI6VzAY8ROf.w8DJ8rwxC64aTpvKQWs9QuR.fjVze', NULL, 0, 1, 0, '2024-04-06 15:57:40', '2024-04-06 15:57:40'),
(4, 'Admin-1', 'admin1@gmail.com', NULL, '$2y$12$zbTqUgDeUwk9ej3fZOTcK.cnKePys8dbYxSq0xTtgOvFyUla.U2TS', NULL, 1, 0, 0, '2024-04-06 15:59:19', '2024-04-07 14:36:05'),
(5, 'Admin', 'admin@gmail.com', NULL, '$2y$12$ui7RM.1CTkc5cPtHvRuOT.76tHESjGvjTgIXa0ukGYgLqF5KgD266', NULL, 1, 0, 0, '2024-04-06 16:01:04', '2024-04-07 14:35:55'),
(6, 'Bell Munoz', 'pewalu@mailinator.com', NULL, '$2y$12$rYaYksTkgfzdBRIZCyKnWeWTaxdaq7aWhkXvf10Walw6LSFrp/npS', NULL, 1, 1, 0, '2024-04-07 01:28:51', '2024-04-07 14:35:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `color`
--
ALTER TABLE `color`
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
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
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
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `color`
--
ALTER TABLE `color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
