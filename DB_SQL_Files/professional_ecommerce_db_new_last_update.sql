-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2024 at 08:12 PM
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
(3, 'Iphone', 'Iphone', 'Iphone', 'Iphone', 'Iphone', 5, 0, 0, '2024-04-08 04:21:09', '2024-04-08 04:24:58'),
(4, 'Hp', 'hp', 'hp', '', '', 5, 0, 0, '2024-04-08 09:34:37', '2024-04-08 09:34:37');

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
(5, 'lightblue', '#3f79ee', 5, 0, 0, '2024-04-08 05:07:25', '2024-04-08 09:31:16'),
(6, 'Red', '#bd2828', 5, 0, 0, '2024-04-08 05:07:47', '2024-04-08 05:28:07'),
(7, 'purple', '#c8019e', 5, 0, 0, '2024-04-08 05:20:22', '2024-04-08 09:30:56'),
(8, 'Cleo Sellers', '#e9f095', 5, 0, 0, '2024-04-15 01:14:15', '2024-04-15 01:14:15');

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
  `sku` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `old_price` double NOT NULL DEFAULT 0,
  `price` double NOT NULL DEFAULT 0,
  `short_description` mediumtext DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `additional_information` mediumtext DEFAULT NULL,
  `shipping_returns` mediumtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `is_delete` tinyint(4) NOT NULL DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `title`, `slug`, `sku`, `category_id`, `sub_category_id`, `brand_id`, `old_price`, `price`, `short_description`, `description`, `additional_information`, `shipping_returns`, `status`, `is_delete`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Sunt tempore corpor', 'sunt-tempore-corpor-1', 'fgfd', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, '2024-04-07 22:16:09', '2024-04-07 22:16:09'),
(2, 'Omnis aute qui sed d', 'omnis-aute-qui-sed-d-2', 'fhg', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 5, '2024-04-07 22:36:15', '2024-04-07 22:36:15'),
(3, 'Sunt tempore corpor', 'sunt-tempore-corpor-3', 'gghfh', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 5, '2024-04-07 22:44:42', '2024-04-07 22:44:42'),
(4, 'Accusamus accusantiu', 'accusamus-accusantiu-4', 'ghg', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 5, '2024-04-08 09:28:49', '2024-04-08 09:28:49'),
(5, 'Accusamus accusantiu', 'accusamus-accusantiu-5', 'rtr', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 5, '2024-04-08 09:29:11', '2024-04-08 09:29:11'),
(6, 'Odio maiores aliquid', 'odio-maiores-aliquid-6', 'ds', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 5, '2024-04-08 11:35:48', '2024-04-08 11:35:48'),
(7, '', '-7', 'jh', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 5, '2024-04-08 16:16:03', '2024-04-08 16:16:03'),
(8, 'Omnis sint deserunt', 'et-aute-molestias-di-8', 'Sit id ratione vol', 3, 5, 3, 350, 709, 'Ex voluptatem culpa', '<p>dfdsf</p>', '<p>sdfsd</p>', '<p>sdfs</p>', 0, 0, 5, '2024-04-08 20:38:40', '2024-04-08 21:43:55'),
(9, 'Est quo exercitatio', 'est-quo-exercitatio-9', 'fsfsd', 3, 5, 4, 5665, 445, 'fdg', '', '<p>dfgdf</p>', '<p>fdg</p>', 1, 0, 5, '2024-04-08 20:41:36', '2024-04-08 20:42:27'),
(10, 'Laboriosam sunt rer', 'laboriosam-sunt-rer-10', 'Laborum cumque rem i', 3, 5, 3, 867, 45, 'hkjh', '<p>gfdfgdf</p>', '<p>kjnjk</p>', '<p>klkjlk</p>', 0, 0, 5, '2024-04-08 21:02:19', '2024-04-08 21:08:53'),
(11, 'In optio ex sed eum', 'in-optio-ex-sed-eum-11', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 5, '2024-04-15 07:11:40', '2024-04-15 07:11:40'),
(12, 'Praesentium rerum om', 'labore-debitis-anim-12', 'Aut corrupti in in', 5, 7, 3, 421, 706, 'Deleniti minima vita', '<p>Dicta et quo culpa a<br></p>', '<p>Dicta et quo culpa a<br></p>', '<p>Dicta et quo culpa a<br></p>', 0, 0, 5, '2024-04-15 07:13:18', '2024-04-15 14:15:59'),
(13, 'Dolore est nisi enim', 'dolore-est-nisi-enim-13', 'Laborum cumque rem i', 3, 5, 4, 40, 34, 'gfdg', '<p>dfgdf</p>', '<p>gdf</p>', '<p>gdffdg</p>', 1, 0, 5, '2024-04-15 07:14:30', '2024-04-15 07:16:13');

-- --------------------------------------------------------

--
-- Table structure for table `product_color`
--

CREATE TABLE `product_color` (
  `id` int(11) NOT NULL,
  `product_id` int(255) DEFAULT NULL,
  `color_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_color`
--

INSERT INTO `product_color` (`id`, `product_id`, `color_id`, `created_at`, `updated_at`) VALUES
(7, 10, NULL, '2024-04-08 21:42:19', '2024-04-08 21:42:19'),
(8, 10, NULL, '2024-04-08 21:42:19', '2024-04-08 21:42:19'),
(11, 8, 5, '2024-04-08 21:47:25', '2024-04-08 21:47:25'),
(12, 8, 6, '2024-04-08 21:47:25', '2024-04-08 21:47:25');

-- --------------------------------------------------------

--
-- Table structure for table `product_image`
--

CREATE TABLE `product_image` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `image_extension` varchar(255) DEFAULT NULL,
  `order_by` int(11) DEFAULT 100,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_image`
--

INSERT INTO `product_image` (`id`, `product_id`, `image_name`, `image_extension`, `order_by`, `created_at`, `updated_at`) VALUES
(4, 12, '125ed0g6ibfurdkdvf8lnx.jpg', 'jpg', 4, '2024-04-15 11:20:38', '2024-04-15 12:12:01'),
(5, 12, '124p5vdcmp7pih4jijt7c6.jpg', 'jpg', 6, '2024-04-15 11:20:38', '2024-04-15 12:12:01'),
(7, 12, '12320t8zuv0xrqylxlorke.jpg', 'jpg', 7, '2024-04-15 11:39:45', '2024-04-15 12:12:01'),
(8, 12, '12asi3wyzlbvctywtawcue.jpg', 'jpg', 1, '2024-04-15 11:39:45', '2024-04-15 12:12:01'),
(9, 12, '12ymumzbtcn6kfup1mnshk.jpg', 'jpg', 3, '2024-04-15 11:39:45', '2024-04-15 12:12:01'),
(10, 12, '12nyqivhfh6luvi7fe4xau.jpg', 'jpg', 5, '2024-04-15 11:39:45', '2024-04-15 12:12:01'),
(11, 12, '12jhw6obhris7fbsub4ahb.jpg', 'jpg', 2, '2024-04-15 11:39:45', '2024-04-15 12:12:01');

-- --------------------------------------------------------

--
-- Table structure for table `product_size`
--

CREATE TABLE `product_size` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `price` float NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_size`
--

INSERT INTO `product_size` (`id`, `product_id`, `name`, `price`, `created_at`, `updated_at`) VALUES
(42, 12, '1.7', 12, '2024-04-15 11:39:45', '2024-04-15 11:39:45'),
(43, 12, '3.3', 12, '2024-04-15 11:39:45', '2024-04-15 11:39:45'),
(44, 12, '1.9', 16, '2024-04-15 11:39:45', '2024-04-15 11:39:45'),
(45, 12, '2.3', 30, '2024-04-15 11:39:45', '2024-04-15 11:39:45'),
(46, 12, '3.4', 40, '2024-04-15 11:39:45', '2024-04-15 11:39:45');

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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`id`, `category_id`, `name`, `slug`, `meta_title`, `meta_description`, `meta_keyword`, `created_by`, `status`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 'Summer Holcomb', 'Doloremque-cupidatat', 'Nulla iste aliquip c', 'Nihil consequat Mol', 'Fugit rem ab repudi', 5, 0, 1, '2024-04-15 14:09:36', '2024-04-15 14:09:36'),
(2, 2, 'Violet Reeves', 'Excepturi-odio-est', 'Mollitia officia sed', 'Eos vero deserunt ip', 'Ducimus dolor itaqu', 5, 0, 1, '2024-04-15 14:09:36', '2024-04-15 14:09:36'),
(3, 5, 'Man shoes', 'shoes-111', 'shoes-111', 'shoes-111', 'shoes-111', 5, 1, 0, '2024-04-15 14:09:36', '2024-04-15 14:09:36'),
(4, 4, 'Man Jackets', 'Man-Jackets', 'Man Jackets', 'Man Jackets', 'Man Jackets', 5, 0, 0, '2024-04-15 14:09:36', '2024-04-15 14:09:36'),
(5, 3, 'Girl Bag', 'Girl-Bag', 'Girl Bag', 'Girl Bag', 'Girl Bag', 5, 0, 0, '2024-04-15 14:09:36', '2024-04-15 14:09:36'),
(6, 5, 'Shoes-d', 'Shoes-d', 'Shoes-d', '', '', 5, 0, 0, '2024-04-15 14:09:36', '2024-04-15 14:09:36'),
(7, 5, 'Shoes-r', 'Shoes-r', 'Shoes-r', '', '', 5, 0, 0, '2024-04-15 14:09:36', '2024-04-15 14:09:36'),
(8, 5, 'Shoes-s', 'Shoes-s', 'Shoes-s', '', '', 5, 0, 0, '2024-04-15 14:09:36', '2024-04-15 14:09:36');

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
(2, 'Aaron Mcdaniel', 'bexa@mailinator.com', NULL, '$2y$12$Cls0O6rwsLhmXkI1RMCnQ.mzGtYhCYVXVK4sHvZgTUWes8FOROKW2', NULL, 1, 1, 1, '2024-04-06 15:57:26', '2024-04-08 09:31:39'),
(3, 'Fuller Lindsey', 'behafama@mailinator.com', NULL, '$2y$12$QXr7b7TMXWJmTI6VzAY8ROf.w8DJ8rwxC64aTpvKQWs9QuR.fjVze', NULL, 0, 1, 0, '2024-04-06 15:57:40', '2024-04-06 15:57:40'),
(4, 'Amrito Bosu', 'amrito@gmail.com', NULL, '$2y$12$LZUz32lRB188QvTDpyz92u332bEAIdTA7.zEkHrhbyd7I.dVe0UIi', NULL, 1, 0, 0, '2024-04-06 15:59:19', '2024-04-08 09:32:22'),
(5, 'Admin', 'admin@gmail.com', NULL, '$2y$12$tJ8ICL/9lcnshHV1DHWnEekukc3RjZrrXcxb.SOnJ9agLFSoi1zA2', 'b01eeVonvsYLNSxkOQdS4TxrkuWCHGDKKHOdZRvQ2DoYirCrLqwY3NEC51pr', 1, 0, 0, '2024-04-06 16:01:04', '2024-04-08 09:31:53'),
(6, 'Bell Munoz', 'pewalu@mailinator.com', NULL, '$2y$12$rYaYksTkgfzdBRIZCyKnWeWTaxdaq7aWhkXvf10Walw6LSFrp/npS', NULL, 1, 1, 1, '2024-04-07 01:28:51', '2024-04-08 09:31:35');

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
-- Indexes for table `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_image`
--
ALTER TABLE `product_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_size`
--
ALTER TABLE `product_size`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `color`
--
ALTER TABLE `color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product_color`
--
ALTER TABLE `product_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `product_image`
--
ALTER TABLE `product_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product_size`
--
ALTER TABLE `product_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
