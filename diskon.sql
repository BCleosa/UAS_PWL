-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2025 at 07:12 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ci4`
--

-- --------------------------------------------------------

--
-- Table structure for table `diskon`
--

CREATE TABLE `diskon` (
  `id` int(11) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `nominal` double NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `diskon`
--

INSERT INTO `diskon` (`id`, `tanggal`, `nominal`, `created_at`, `updated_at`) VALUES
(1, '2025-07-02', 100000, '2025-07-02 12:35:35', '2025-07-03 05:26:28'),
(3, '2025-07-04', 100000, '2025-07-02 12:35:35', '2025-07-02 12:35:35'),
(4, '2025-07-05', 100000, '2025-07-02 12:35:35', '2025-07-02 12:35:35'),
(5, '2025-07-06', 100000, '2025-07-02 12:35:35', '2025-07-02 12:35:35'),
(6, '2025-07-07', 100000, '2025-07-02 12:35:35', '2025-07-02 12:35:35'),
(7, '2025-07-08', 100000, '2025-07-02 12:35:35', '2025-07-02 12:35:35'),
(8, '2025-07-09', 100000, '2025-07-02 12:35:35', '2025-07-02 12:35:35'),
(9, '2025-07-10', 100000, '2025-07-02 12:35:35', '2025-07-02 12:35:35'),
(10, '2025-07-11', 100000, '2025-07-02 12:35:35', '2025-07-02 12:35:35'),
(13, '2025-07-31', 120000, '2025-07-03 05:02:54', '2025-07-03 05:02:54'),
(17, '2025-07-03', 100000, '2025-07-03 15:27:34', '2025-07-03 15:27:34'),
(18, '2025-07-01', 120000, '2025-07-03 16:38:21', '2025-07-03 16:38:21'),
(19, '2025-06-30', 100000, '2025-07-03 16:55:15', '2025-07-03 16:55:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diskon`
--
ALTER TABLE `diskon`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tanggal` (`tanggal`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `diskon`
--
ALTER TABLE `diskon`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
