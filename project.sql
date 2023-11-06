-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2023 at 09:38 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `publisher` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `name`, `author`, `publisher`, `created_at`, `updated_at`) VALUES
(3, 'ครอบครัวตึ๋งหนืด', 'Lee,Bong gi', 'NANMEEBOOKS', '2023-10-31 22:50:45', '2023-11-05 15:26:15'),
(4, 'One Piece', 'เออิจิโระ โอดะ', 'SIAM INTER COMICS', '2023-10-31 22:50:46', '2023-11-04 06:05:38'),
(5, 'ไขคดีกับโคนันภายใน 10 นาที เล่ม 1', 'โกโช อาโอยามา', 'NANMEEBOOKS', '2023-10-31 23:03:12', '2023-11-04 06:33:35'),
(6, 'แฮร์รี่ พอตเตอร์ กับศิลาอาถรรพ์ เล่ม 1', 'J.K. Rowling', 'NANMEEBOOKS', '2023-10-31 23:03:42', '2023-11-04 06:32:11'),
(7, 'กระต่ายบนดวงจันทน์', 'แก้ว', 'สีขาว', '2023-10-31 23:07:29', '2023-11-05 14:49:52'),
(9, 'วิทยาศาสตร์แสนสุก', 'วิทยา', 'สีชมพู', '2023-11-03 09:20:32', '2023-11-03 09:20:32'),
(11, 'หนูหิ่น', 'เอ๊าะ', 'มหาสนุก', '2023-11-05 12:28:50', '2023-11-05 12:28:50');

-- --------------------------------------------------------

--
-- Table structure for table `borrowings`
--

CREATE TABLE `borrowings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `borrowed_date` date NOT NULL,
  `returned_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `borrowings`
--

INSERT INTO `borrowings` (`id`, `user_id`, `book_id`, `borrowed_date`, `returned_date`, `created_at`, `updated_at`) VALUES
(15, 3, 3, '2023-11-03', '2023-11-04', '2023-11-03 10:30:13', '2023-11-04 02:23:38'),
(16, 3, 3, '2023-11-03', '2023-11-04', '2023-11-03 10:33:19', '2023-11-04 02:23:52'),
(17, 3, 3, '2023-11-03', '2023-11-04', '2023-11-03 10:42:38', '2023-11-04 02:34:10'),
(18, 3, 3, '2023-11-03', '2023-11-04', '2023-11-03 10:43:54', '2023-11-04 02:34:13'),
(19, 3, 3, '2023-11-03', '2023-11-04', '2023-11-03 10:44:35', '2023-11-04 02:34:36'),
(20, 3, 3, '2023-11-03', '2023-11-04', '2023-11-03 11:00:58', '2023-11-04 02:34:39'),
(21, 3, 3, '2023-11-03', '2023-11-04', '2023-11-03 11:07:00', '2023-11-04 02:34:41'),
(22, 3, 3, '2023-11-03', '2023-11-04', '2023-11-03 11:07:43', '2023-11-04 02:34:42'),
(23, 5, 3, '2023-11-03', '2023-11-04', '2023-11-03 11:12:53', '2023-11-04 02:45:45'),
(24, 5, 3, '2023-11-03', '2023-11-04', '2023-11-03 11:39:31', '2023-11-04 02:45:47'),
(25, 5, 3, '2023-11-03', '2023-11-04', '2023-11-03 11:51:53', '2023-11-04 02:45:48'),
(26, 5, 3, '2023-11-03', '2023-11-04', '2023-11-03 12:01:41', '2023-11-04 02:46:05'),
(27, 5, 3, '2023-11-03', '2023-11-04', '2023-11-03 12:12:08', '2023-11-04 02:46:07'),
(28, 5, 3, '2023-11-03', '2023-11-04', '2023-11-03 12:16:42', '2023-11-04 02:46:08'),
(29, 5, 3, '2023-11-03', '2023-11-04', '2023-11-03 12:24:37', '2023-11-04 02:46:09'),
(30, 5, 4, '2023-11-03', '2023-11-04', '2023-11-03 12:28:57', '2023-11-04 02:46:01'),
(31, 5, 5, '2023-11-03', NULL, '2023-11-03 12:28:59', '2023-11-03 12:28:59'),
(32, 5, 6, '2023-11-03', NULL, '2023-11-03 12:29:01', '2023-11-03 12:29:01'),
(33, 5, 7, '2023-11-03', NULL, '2023-11-03 12:29:02', '2023-11-03 12:29:02'),
(34, 5, 9, '2023-11-03', NULL, '2023-11-03 12:31:00', '2023-11-03 12:31:00'),
(35, 5, 4, '2023-11-03', '2023-11-04', '2023-11-03 12:32:40', '2023-11-04 02:46:02'),
(36, 5, 7, '2023-11-03', NULL, '2023-11-03 12:32:42', '2023-11-03 12:32:42'),
(37, 5, 7, '2023-11-03', NULL, '2023-11-03 12:34:41', '2023-11-03 12:34:41'),
(38, 5, 9, '2023-11-03', NULL, '2023-11-03 13:27:04', '2023-11-03 13:27:04'),
(40, 3, 6, '2023-11-04', '2023-11-04', '2023-11-04 02:45:31', '2023-11-04 02:45:33'),
(41, 3, 3, '2023-11-04', '2023-11-04', '2023-11-04 04:20:29', '2023-11-04 04:22:34'),
(42, 3, 4, '2023-11-04', '2023-11-04', '2023-11-04 04:21:00', '2023-11-04 04:27:17'),
(43, 3, 7, '2023-11-04', '2023-11-04', '2023-11-04 04:21:41', '2023-11-04 04:22:51'),
(44, 3, 3, '2023-11-04', '2023-11-04', '2023-11-04 04:22:00', '2023-11-04 04:22:38'),
(45, 3, 3, '2023-11-04', '2023-11-04', '2023-11-04 04:24:58', '2023-11-04 04:25:31'),
(46, 3, 6, '2023-11-04', '2023-11-04', '2023-11-04 04:25:18', '2023-11-04 04:27:20'),
(47, 3, 3, '2023-11-04', '2023-11-04', '2023-11-04 04:48:20', '2023-11-04 04:48:22'),
(48, 3, 7, '2023-11-04', '2023-11-04', '2023-11-04 05:34:56', '2023-11-04 08:42:06'),
(49, 3, 7, '2023-11-04', '2023-11-06', '2023-11-04 06:41:59', '2023-11-05 17:21:07'),
(50, 3, 9, '2023-11-04', '2023-11-04', '2023-11-04 08:41:03', '2023-11-04 08:41:07'),
(51, 4, 6, '2023-11-05', '2023-11-05', '2023-11-05 04:08:31', '2023-11-05 04:08:50'),
(52, 4, 3, '2023-11-05', '2023-11-05', '2023-11-05 04:08:33', '2023-11-05 04:09:05'),
(53, 3, 3, '2023-11-05', NULL, '2023-11-05 15:04:34', '2023-11-05 15:04:34');

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
(6, '2023_10_31_153557_create_books_table', 2),
(7, '2023_11_01_085846_create_borrowwings_table', 3),
(8, '2023_11_01_092400_add_return_date_to_borrowings', 4),
(10, '2023_11_01_094008_create_borrowings_table', 5),
(11, '2023_11_01_125815_add_column_name_to_table_name', 6),
(12, '2023_11_01_130153_add_column_name_to_borrowings', 7),
(13, '2023_11_01_130844_update_borrowing_table', 8),
(14, '2023_11_01_132146_create_table_name', 9),
(15, '2023_11_01_162814_create_borrowings_table', 10);

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

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('admin@admin.com', '$2y$10$NiVg.nPWSLsNnk5hPPE.EeRIIbhQK3knSlj6C2Y3xUVQhbFeIT0JK', '2023-11-04 05:56:07');

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
-- Table structure for table `table_name`
--

CREATE TABLE `table_name` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `is_admin`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', NULL, 1, '$2y$10$RP2/WtTQJoBiUlC7n3lLOOeZm4sKnuwNGrQXfiVoK5YmQ0bN2Q7dy', NULL, '2023-10-31 06:42:12', '2023-10-31 06:42:12'),
(2, 'User', 'user@user.com', NULL, 0, '$2y$10$iMGysRyXjHVt9./Dkbw0buvVB/k6ypWDa8s0JdKLO6cJqCPG4wCVC', NULL, '2023-10-31 06:42:12', '2023-10-31 06:42:12'),
(3, 'nok', 'nok@gmail.com', NULL, 0, '$2y$10$ilaoTID4n5VPHW6HS4hvqOcObmWg.ZM.AU4VLv0K11wST8WD9nj1i', NULL, '2023-10-31 08:17:17', '2023-10-31 08:17:17'),
(4, 'meng', 'meng@email', NULL, 0, '$2y$10$EuG2/R1fRxGI7kkVS9d54u2PYZMN/mqvdYm7wjDlWbMr6dOBXHSRm', NULL, '2023-10-31 08:18:19', '2023-10-31 08:18:19'),
(5, 'ping', 'ping@gmail.com', NULL, 0, '$2y$10$qf7pPS34ja2x7d816cmj4ODjLZNhb9iJUwQd.pxgdG6.tA0XPAi/m', NULL, '2023-11-01 11:34:47', '2023-11-01 11:34:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `borrowings`
--
ALTER TABLE `borrowings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `borrowings_user_id_foreign` (`user_id`),
  ADD KEY `borrowings_book_id_foreign` (`book_id`);

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
-- Indexes for table `table_name`
--
ALTER TABLE `table_name`
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
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `borrowings`
--
ALTER TABLE `borrowings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_name`
--
ALTER TABLE `table_name`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `borrowings`
--
ALTER TABLE `borrowings`
  ADD CONSTRAINT `borrowings_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `borrowings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
