-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2023 at 06:27 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api`
--

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 4, 'Personal Access Token', '7225deee0212ae04a59933950b9a407e8e687b7f97c2259a729100d2e5c3f1e1', '[\"*\"]', NULL, NULL, '2023-11-15 02:06:05', '2023-11-15 02:06:05'),
(2, 'App\\Models\\User', 4, 'Personal Access Token', '178db6a967429d50602a14f72616a1a160233723b97fcd7be2add932d1aebeba', '[\"*\"]', NULL, NULL, '2023-11-15 02:10:23', '2023-11-15 02:10:23'),
(3, 'App\\Models\\User', 13, 'Personal Access Token', '5c35bfe84562728bfb5bdc2cbcc9975d5b02e7f65791ed74090a063091abc346', '[\"*\"]', NULL, NULL, '2023-11-15 02:24:00', '2023-11-15 02:24:00'),
(4, 'App\\Models\\User', 13, 'Personal Access Token', 'faf6b3bc88871a3c31a20a20518165db3ff69c34f410c9b9f658d61d958c43b4', '[\"*\"]', NULL, NULL, '2023-11-15 02:24:47', '2023-11-15 02:24:47'),
(5, 'App\\Models\\User', 13, 'Personal Access Token', '18befde90b8bc3f8f353c34ae1ef56a69c068fae8b80cd07d1616108989408bf', '[\"*\"]', NULL, NULL, '2023-11-15 02:25:45', '2023-11-15 02:25:45'),
(6, 'App\\Models\\User', 13, 'Personal Access Token', 'dd675e960d7086dfb5b873929ba080b034f184b5bbe5623fb1533d7a8c1ad654', '[\"*\"]', NULL, NULL, '2023-11-15 02:25:53', '2023-11-15 02:25:53'),
(7, 'App\\Models\\User', 13, 'Personal Access Token', 'f9697ae22eb6c3d5bd4425da1084a23b61f720ebcf64eafd81b29339175164a2', '[\"*\"]', NULL, NULL, '2023-11-15 02:26:02', '2023-11-15 02:26:02'),
(8, 'App\\Models\\User', 13, 'Personal Access Token', '8d4632614dafcb2ed70e270312cf3e2c431665b75585659bb02213dbc02de04d', '[\"*\"]', NULL, NULL, '2023-11-15 02:26:06', '2023-11-15 02:26:06'),
(9, 'App\\Models\\User', 13, 'Personal Access Token', '2ad4385e12fb0b37ae2a47c7d84d651ee2f3662e765ba2cc4ba4c93ae2b9e694', '[\"*\"]', NULL, NULL, '2023-11-15 02:38:22', '2023-11-15 02:38:22'),
(10, 'App\\Models\\User', 16, 'Personal Access Token', '3f5ca39409f55c9de235710ae38060580d98b64e1ceb9f6e1cf1df98c0414d2b', '[\"*\"]', NULL, NULL, '2023-11-17 23:17:48', '2023-11-17 23:17:48'),
(11, 'App\\Models\\User', 17, 'Personal Access Token', '3175432b4ea00baefa7f01d79ef6c1fe96bf8d1afb3ccb42f2d29b8a8ac319d6', '[\"*\"]', NULL, NULL, '2023-11-17 23:18:58', '2023-11-17 23:18:58'),
(12, 'App\\Models\\User', 18, 'Personal Access Token', 'e7b07e9aa3d5d32d92be9c25d3aeb980dade383806f6d487626203c2cae9e35c', '[\"*\"]', NULL, NULL, '2023-11-17 23:21:41', '2023-11-17 23:21:41'),
(13, 'App\\Models\\User', 18, 'Personal Access Token', '1e000458ccd72ca3c1cde7c57600ef328b925ea0a85e74b42590cc21d6cbd320', '[\"*\"]', NULL, NULL, '2023-11-17 23:21:52', '2023-11-17 23:21:52'),
(14, 'App\\Models\\User', 19, 'Personal Access Token', '88726884c68128aedfb44654fad7cebb5e664fb146030727b59a393fefdb9c3c', '[\"*\"]', NULL, NULL, '2023-11-17 23:22:25', '2023-11-17 23:22:25'),
(15, 'App\\Models\\User', 20, 'Personal Access Token', '9e26b3e7027afa99c35d9c99e8ba31471343fbe8561302d8f29e4ee78458dda5', '[\"*\"]', NULL, NULL, '2023-11-19 19:33:17', '2023-11-19 19:33:17'),
(16, 'App\\Models\\User', 21, 'Personal Access Token', 'b690a07dc83d1b6d18cd18938c4f4f8a092db42b256de19519abfeeedc298774', '[\"*\"]', NULL, NULL, '2023-11-19 19:42:40', '2023-11-19 19:42:40'),
(17, 'App\\Models\\User', 22, 'Personal Access Token', 'ccc24751e3f25e29c4f6dbc8e449dfd6fbea84f5ecc3dad1bc251c7cbcf44253', '[\"*\"]', NULL, NULL, '2023-11-19 19:58:32', '2023-11-19 19:58:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(13, 'zuko', 'solda@gmail.com', '$2y$12$wpqKWZ75lmTUX4ffv8nK3u9JPupzPFQDiw5EQxlnAtd5m8uMs7CGG', NULL, '2023-11-15 02:23:28', '2023-11-15 02:23:28'),
(22, 'ayam', 'ayam@gmail.com', '$2y$12$23kyPz1Ix5D0GKteLFm/HekIjNqgirzlEI9cNJQwBKgtJ7jpYTLhe', NULL, '2023-11-19 19:58:32', '2023-11-19 19:58:32');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
