-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2024 at 08:06 PM
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
-- Database: `laravel-blog-project`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('admin@gmail.com|127.0.0.1', 'i:1;', 1730288834),
('admin@gmail.com|127.0.0.1:timer', 'i:1730288834;', 1730288834),
('admin@outlook.com|127.0.0.1', 'i:3;', 1719878554),
('admin@outlook.com|127.0.0.1:timer', 'i:1719878554;', 1719878554),
('colelenting7@gmail.com|127.0.0.1', 'i:1;', 1727968231),
('colelenting7@gmail.com|127.0.0.1:timer', 'i:1727968231;', 1727968231),
('tiger123@gmail.com|127.0.0.1', 'i:2;', 1730317497),
('tiger123@gmail.com|127.0.0.1:timer', 'i:1730317497;', 1730317497),
('tigerfalls1@gmail.com|127.0.0.1', 'i:1;', 1730317387),
('tigerfalls1@gmail.com|127.0.0.1:timer', 'i:1730317387;', 1730317387),
('user@gmail.com|127.0.0.1', 'i:1;', 1719878254),
('user@gmail.com|127.0.0.1:timer', 'i:1719878254;', 1719878254),
('user123@gmail.com|127.0.0.1', 'i:1;', 1719878266),
('user123@gmail.com|127.0.0.1:timer', 'i:1719878266;', 1719878266);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_06_02_015653_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('colelenting7@gmail.com', '$2y$12$9EfXGoM4gI7mVjN3IMiBf.xQ5HFYOcN1D6QhJl5aJ8KhOBLuiakUi', '2024-06-04 13:25:48'),
('user2000@gmail.com', '$2y$12$/sXc1XVwdDrMO9qtLG/y0.3Kwnez4JH4KCIgjs16FAylIC0Q3vLcO', '2024-06-04 13:33:05');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(12, 10, 'Blog Number 2 Test', 'Lorem ipsum odor amet, consectetuer adipiscing elit. Netus nisi placerat; dis nullam diam ac amet nam! Facilisi dignissim cursus commodo fermentum phasellus eleifend justo efficitur. Vestibulum condimentum sociosqu leo molestie litora arcu euismod in litora. Est facilisis ad porttitor dictum ultricies cursus. Senectus montes lorem sociosqu pharetra suscipit maximus blandit. Viverra ut luctus turpis semper magna ipsum.\r\n\r\n\r\nCongue arcu suscipit porta donec magna. Donec mollis interdum suspendisse neque rutrum justo urna nostra. Vestibulum conubia himenaeos interdum sed ultricies mauris ex efficitur. Consectetur fermentum quisque mus accumsan consectetur montes. Libero enim bibendum malesuada condimentum feugiat tempor curae convallis. Aptent libero vivamus cubilia eros ut ipsum? Maecenas velit dis imperdiet interdum feugiat in iaculis curabitur. Elementum vehicula suscipit sodales lorem erat justo, sit suscipit. Ornare netus varius blandit eleifend ornare aliquet. Mauris sollicitudin vel vestibulum mattis ullamcorper; ipsum accumsan.\r\n\r\nSit sit nullam sem eget venenatis nibh maecenas eros litora. Penatibus ligula eu justo aliquam vivamus? Leo potenti lacus, risus donec quis sem. Ligula per euismod nostra aliquet velit dignissim congue? Commodo nulla justo justo etiam maximus pulvinar; maecenas purus pharetra. Nulla dapibus vitae maximus ullamcorper penatibus libero gravida.\r\n\r\nPhasellus massa laoreet nascetur bibendum velit felis aenean netus eleifend. Dapibus ante non risus cras ultricies sed arcu. Neque pellentesque torquent lobortis primis erat volutpat. Senectus leo pretium erat integer mattis class quisque maecenas semper. Netus luctus fusce purus pretium imperdiet primis dictum eleifend. Vulputate elementum ullamcorper facilisis egestas, convallis pellentesque. Nam ut curabitur felis penatibus suspendisse quam conubia.\r\n\r\nRutrum lectus aptent velit libero justo faucibus morbi. Maecenas nullam mattis proin amet potenti odio ut netus hac. Accumsan mattis congue ad metus dapibus eleifend mauris etiam curabitur. Senectus amet efficitur ullamcorper per nam. Curabitur netus ullamcorper hendrerit nam eleifend convallis maecenas malesuada. Tincidunt ultrices metus adipiscing quisque ut etiam. At purus elit dapibus suspendisse tellus penatibus massa. Elementum fames proin nulla amet ridiculus; nisi fusce sollicitudin.', '2024-10-31 20:24:12', '2024-11-02 16:41:14');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1IZirV8TAuBAGehdvjlT0kdzMui1sMjnrx0ImONh', 12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOHRWdmM5UTJ3QWhnc2tIQWJSS2JNQ0h3WUVSc2tFMlB6V2FTS2I0eiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxMjt9', 1730573092),
('cBvqbskH2ZoPqKfbCa7oGYjYoHJ4b68uAxTkVL1O', 10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTUc3bmlZTkJxdkc4SjZwRjFLWEdLU3cyRFoyb05TRkdJc0dtV2FScyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxMDt9', 1730415773),
('OOSt0qAsGF0LSkHFdfUoid8r3d2vkALRYQeBtyrm', 10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoibmd4VVQ1eGU2cWZ0eXBWWWM5NDVocUpaM2NCQ2NNRVZHT2xZZ1FnZyI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI5OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvcHJvZmlsZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjEwO30=', 1730413993);

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'user', 'user@gmail.com', NULL, '$2y$12$iWXg8//8TUG6ssSH19ce/eyWd4ecZ2.o854L0KQwz6bKMNJcQxmFe', NULL, '2024-06-02 16:42:06', '2024-06-02 16:42:06'),
(2, 'cole', 'cole@gmail.com', NULL, '$2y$12$EwiquQljCojKI8UjZ0nIvei61z0zWxdYSFSwrM1Dc1Bm2Tzdq5WDy', NULL, '2024-06-02 18:31:17', '2024-06-02 18:31:17'),
(3, 'Cole Lenting', 'colelenting7@gmail.com', NULL, '$2y$12$mn.uGFbBXt8brWREGhtpF.H5TGRam7e3Q2iCX9uZbFkaUVDpEKVNG', NULL, '2024-06-04 13:25:32', '2024-06-04 13:25:32'),
(4, 'Tiger Falls', 'user2000@gmail.com', NULL, '$2y$12$b7IDhdo..SnlP/IpTAUaluRw17xmUXf0YVFlZ7E/mPj6YHTspi04C', NULL, '2024-06-04 13:28:50', '2024-06-04 13:31:15'),
(5, 'Cole Lenting', 'colelenting@gmail.com', NULL, '$2y$12$FuIx48MHywLDiOfeZuWKJOEO233ORtK8v110ZNTWJySxsZ7eQx5Na', NULL, '2024-06-12 18:37:34', '2024-06-12 18:37:34'),
(6, 'Cole Lenting', 'admin@outlook.com', NULL, '$2y$12$vbwWRaZll9kYSjDCQQhi6uCkWLkGefHjIr.O4go4H06mMzE9zDGc.', NULL, '2024-07-01 21:57:10', '2024-07-01 21:57:10'),
(7, 'Tigerito Burrito', 'tiger@gmail.com', NULL, '$2y$12$l1MWKHDuC2dzbo9OR4BKyeKuF3q3XXtR.Na7chI7m57cIpvnYpx6q', NULL, '2024-07-01 22:02:40', '2024-07-01 22:02:40'),
(8, 'tiger', 'tiger1@gmail.com', NULL, '$2y$12$fSs607/yEh2avMk5YrHkueCUAZC3Gq3XFGGKA4qzcNwVRiuQWk5rG', NULL, '2024-10-03 13:09:59', '2024-10-03 13:09:59'),
(9, 'Cole Lenting', 'tiger123@gmail.com', NULL, '$2y$12$gxe4W4Y38RVmkc4BLRzQOu4FMXMeIT7c0disgRwZ7rG6TGCqSwSgq', NULL, '2024-10-30 09:46:59', '2024-10-30 09:46:59'),
(10, 'Tiger Lenting', '123@gmail.com', NULL, '$2y$12$Ou2X.TUJ5rYk2lUvSK8mU.swxJ7O3B4m30za6aDKRKmSbJikAYwlm', 'uuVUVJNd48qbYrzGirrvUUY12dUayxuzsfLTLkSYJHKUMYobHk8Td7vOx1pA', '2024-10-30 17:45:23', '2024-10-30 17:45:23'),
(11, 'cole lenting', '456@gmail.com', NULL, '$2y$12$7UbWEKZ3S3P42fww19SSJeFJ02t3HalEc0yLqGZ4UEWe7ObexgLDm', NULL, '2024-11-02 16:32:17', '2024-11-02 16:32:17'),
(12, 'Cole Lenting', '789@gmail.com', NULL, '$2y$12$6ctT1EdDPfojXvmpz8X56.vALEx9whqyRlYlq3.sAkNn57hRGL1nO', NULL, '2024-11-02 16:39:23', '2024-11-02 16:42:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
