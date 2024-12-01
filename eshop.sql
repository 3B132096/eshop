-- Adminer 4.8.1 MySQL 5.7.11 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `cart_items`;
CREATE TABLE `cart_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `cart_items` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1,	1,	2,	'2024-12-01 09:36:25',	'2024-12-01 09:36:25'),
(2,	1,	3,	'2024-12-01 09:37:02',	'2024-12-01 09:37:02'),
(3,	1,	6,	'2024-12-01 09:37:31',	'2024-12-01 09:37:31'),
(4,	2,	16,	'2024-12-01 09:37:54',	'2024-12-01 09:37:54'),
(5,	2,	18,	'2024-12-01 09:38:06',	'2024-12-01 09:38:06'),
(6,	2,	19,	'2024-12-01 09:38:29',	'2024-12-01 09:38:29'),
(7,	3,	20,	'2024-12-01 09:38:52',	'2024-12-01 09:38:52'),
(8,	3,	23,	'2024-12-01 09:39:16',	'2024-12-01 09:39:16'),
(9,	3,	24,	'2024-12-01 09:39:34',	'2024-12-01 09:39:34');

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1,	'Drinks',	'2024-12-01 04:39:26',	'2024-12-01 04:39:26'),
(2,	'Snacks',	'2024-12-01 04:41:27',	'2024-12-01 04:41:27'),
(3,	'Live Stock',	'2024-12-01 04:43:09',	'2024-12-01 04:43:09'),
(4,	'Vegetables',	'2024-12-01 04:43:26',	'2024-12-01 04:43:26'),
(5,	'Fruits',	'2024-12-01 04:43:40',	'2024-12-01 04:43:40');

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1,	'2014_10_12_000000_create_users_table',	1),
(2,	'2014_10_12_100000_create_password_reset_tokens_table',	1),
(3,	'2019_08_19_000000_create_failed_jobs_table',	1),
(4,	'2019_12_14_000001_create_personal_access_tokens_table',	1),
(5,	'2024_11_30_152708_create_posts_table',	1),
(6,	'2024_11_30_152724_create_categories_table',	1),
(7,	'2024_11_30_152736_create_staff_table',	1),
(8,	'2024_11_30_152744_create_cart_items_table',	1),
(9,	'2024_11_30_152755_create_order_items_table',	1),
(10,	'2024_11_30_153524_create_products_table',	1),
(11,	'2024_11_30_153538_create_orders_table',	1);

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(1,	1,	'2024-12-01 08:34:59',	'2024-12-01 08:34:59'),
(2,	1,	'2024-12-01 09:07:37',	'2024-12-01 09:07:37'),
(3,	1,	'2024-12-01 09:08:08',	'2024-12-01 09:08:08'),
(4,	2,	'2024-12-01 09:08:17',	'2024-12-01 09:08:17'),
(5,	2,	'2024-12-01 09:08:41',	'2024-12-01 09:08:41'),
(6,	2,	'2024-12-01 09:09:58',	'2024-12-01 09:09:58'),
(7,	3,	'2024-12-01 09:10:23',	'2024-12-01 09:10:23'),
(8,	3,	'2024-12-01 09:10:44',	'2024-12-01 09:10:44'),
(9,	3,	'2024-12-01 09:11:19',	'2024-12-01 09:11:19');

DROP TABLE IF EXISTS `order_items`;
CREATE TABLE `order_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1,	1,	2,	'2024-12-01 09:15:31',	'2024-12-01 09:15:31'),
(2,	1,	3,	'2024-12-01 09:16:14',	'2024-12-01 09:16:14'),
(3,	1,	6,	'2024-12-01 09:16:50',	'2024-12-01 09:16:50'),
(4,	2,	4,	'2024-12-01 09:17:26',	'2024-12-01 09:17:26'),
(5,	2,	12,	'2024-12-01 09:17:50',	'2024-12-01 09:17:50'),
(6,	2,	22,	'2024-12-01 09:19:05',	'2024-12-01 09:19:05'),
(7,	3,	1,	'2024-12-01 09:26:18',	'2024-12-01 09:26:18'),
(8,	3,	25,	'2024-12-01 09:26:50',	'2024-12-01 09:26:50'),
(9,	3,	15,	'2024-12-01 09:27:14',	'2024-12-01 09:27:14'),
(10,	4,	5,	'2024-12-01 09:27:37',	'2024-12-01 09:27:37'),
(11,	4,	7,	'2024-12-01 09:28:03',	'2024-12-01 09:28:03'),
(12,	4,	8,	'2024-12-01 09:28:22',	'2024-12-01 09:28:22'),
(13,	5,	9,	'2024-12-01 09:28:59',	'2024-12-01 09:28:59'),
(14,	5,	10,	'2024-12-01 09:29:18',	'2024-12-01 09:29:18'),
(15,	5,	6,	'2024-12-01 09:29:44',	'2024-12-01 09:29:44'),
(16,	6,	11,	'2024-12-01 09:30:10',	'2024-12-01 09:30:10'),
(17,	6,	12,	'2024-12-01 09:30:40',	'2024-12-01 09:30:40'),
(18,	6,	13,	'2024-12-01 09:30:57',	'2024-12-01 09:30:57'),
(19,	7,	16,	'2024-12-01 09:31:38',	'2024-12-01 09:31:38'),
(20,	7,	18,	'2024-12-01 09:32:00',	'2024-12-01 09:32:00'),
(21,	7,	19,	'2024-12-01 09:32:21',	'2024-12-01 09:32:21'),
(22,	8,	20,	'2024-12-01 09:32:39',	'2024-12-01 09:32:39'),
(23,	8,	23,	'2024-12-01 09:32:54',	'2024-12-01 09:32:54'),
(24,	8,	24,	'2024-12-01 09:33:10',	'2024-12-01 09:33:10'),
(25,	9,	2,	'2024-12-01 09:33:41',	'2024-12-01 09:33:41'),
(26,	9,	13,	'2024-12-01 09:34:27',	'2024-12-01 09:34:27'),
(27,	9,	18,	'2024-12-01 09:34:51',	'2024-12-01 09:34:51');

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `products` (`id`, `name`, `category_id`, `created_at`, `updated_at`) VALUES
(1,	'Black Tea',	1,	'2024-12-01 04:45:05',	'2024-12-01 04:45:05'),
(2,	'Cola',	1,	'2024-12-01 04:45:34',	'2024-12-01 04:45:34'),
(3,	'Coffee',	1,	'2024-12-01 04:46:04',	'2024-12-01 04:46:04'),
(4,	'Milk',	1,	'2024-12-01 04:46:22',	'2024-12-01 04:46:22'),
(5,	'Water',	1,	'2024-12-01 04:46:39',	'2024-12-01 04:46:39'),
(6,	'Chocolate',	2,	'2024-12-01 04:49:18',	'2024-12-01 04:49:18'),
(7,	'Jelly',	2,	'2024-12-01 04:50:00',	'2024-12-01 04:50:00'),
(8,	'Cookie',	2,	'2024-12-01 04:51:17',	'2024-12-01 04:51:17'),
(9,	'Nuts',	2,	'2024-12-01 04:51:47',	'2024-12-01 04:51:47'),
(10,	'Candy ',	2,	'2024-12-01 04:52:19',	'2024-12-01 04:52:19'),
(11,	'Duck',	3,	'2024-12-01 04:53:35',	'2024-12-01 04:53:35'),
(12,	'Chicken ',	3,	'2024-12-01 04:53:51',	'2024-12-01 04:53:51'),
(13,	'Beef ',	3,	'2024-12-01 04:54:07',	'2024-12-01 04:54:07'),
(14,	'Lamb',	3,	'2024-12-01 04:54:21',	'2024-12-01 04:54:21'),
(15,	'Egg',	3,	'2024-12-01 04:54:34',	'2024-12-01 04:54:34'),
(16,	'Onion',	4,	'2024-12-01 04:55:12',	'2024-12-01 04:55:12'),
(17,	'Corn',	4,	'2024-12-01 04:55:33',	'2024-12-01 04:55:33'),
(18,	'Brocoli',	4,	'2024-12-01 04:56:29',	'2024-12-01 04:56:29'),
(19,	'Cabbage',	4,	'2024-12-01 04:56:56',	'2024-12-01 04:56:56'),
(20,	'Spinach',	4,	'2024-12-01 04:57:59',	'2024-12-01 04:57:59'),
(21,	'Mango ',	5,	'2024-12-01 04:58:37',	'2024-12-01 04:58:37'),
(22,	'Banana ',	5,	'2024-12-01 04:59:56',	'2024-12-01 04:59:56'),
(23,	'Grape',	5,	'2024-12-01 05:00:09',	'2024-12-01 05:00:09'),
(24,	'Lemon',	5,	'2024-12-01 05:00:24',	'2024-12-01 05:00:24'),
(25,	'Orange',	5,	'2024-12-01 05:00:38',	'2024-12-01 05:00:38');

DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `staff_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1,	'3B132096',	'3b132096@gm.student.ncut.edu.tw',	NULL,	'$2y$12$.Mz3vucek95zX7HB2vccU.vq6cqySBvFywXkvPXtpHh7.cc/dlHM6',	NULL,	'2024-11-30 19:28:28',	'2024-11-30 19:28:28'),
(2,	'user1',	'user1@gm.student.ncut.edu.tw',	NULL,	'$2y$12$pXb8aiVJW1TU5lgaWs6BlOi9Npd1cqDZ/rzXbj2fBXiqHNA0txzJG',	NULL,	'2024-11-30 21:02:20',	'2024-11-30 21:02:20'),
(3,	'user2',	'user2@gm.student.ncut.edu.tw',	NULL,	'$2y$12$pBxE4pgBqUHtHIGQEUbOR.LFw2U.JQeIJtla0d58B9W0Gqc0fqn.6',	NULL,	'2024-11-30 21:03:40',	'2024-11-30 21:03:40');

-- 2024-12-01 09:41:25
