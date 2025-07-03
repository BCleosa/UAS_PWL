-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jul 2025 pada 16.28
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.1.25

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
-- Struktur dari tabel `diskon`
--

CREATE TABLE `diskon` (
  `id` int(11) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `nominal` double NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `diskon`
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
(14, '2025-07-03', 150000, '2025-07-03 14:01:48', '2025-07-03 14:01:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2025-05-24-171640', 'App\\Database\\Migrations\\User', 'default', 'App', 1748107115, 1),
(2, '2025-05-24-171709', 'App\\Database\\Migrations\\Product', 'default', 'App', 1748107115, 1),
(3, '2025-05-24-171725', 'App\\Database\\Migrations\\Transaction', 'default', 'App', 1748107115, 1),
(4, '2025-05-24-171733', 'App\\Database\\Migrations\\TransactionDetail', 'default', 'App', 1748107115, 1),
(7, '2025-05-24-173348', 'App\\Database\\Migrations\\ProductCategory', 'default', 'App', 1748108163, 2),
(8, '2025-07-02-123303', 'App\\Database\\Migrations\\CreateDiskonTable', 'default', 'App', 1751459620, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` double NOT NULL,
  `jumlah` int(5) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`id`, `nama`, `harga`, `jumlah`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'ASUS TUF A15 FA506NF', 10899000, 5, 'asus_tuf_a15.jpg', '2025-05-24 17:19:54', NULL),
(2, 'Asus Vivobook 14 A1404ZA', 6899000, 7, 'asus_vivobook_14.jpg', '2025-05-24 17:19:54', NULL),
(3, 'Lenovo IdeaPad Slim 3-14IAU7', 6299000, 5, 'lenovo_idepad_slim_3.jpg', '2025-05-24 17:19:54', NULL),
(5, 'ASUS TUF A15 FA506NF', 10899000, 5, 'asus_tuf_a15.jpg', '2025-07-01 02:33:30', NULL),
(6, 'Asus Vivobook 14 A1404ZA', 6899000, 7, 'asus_vivobook_14.jpg', '2025-07-01 02:33:30', NULL),
(7, 'Lenovo IdeaPad Slim 3-14IAU7', 6299000, 5, 'lenovo_idepad_slim_3.jpg', '2025-07-01 02:33:30', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_category`
--

CREATE TABLE `product_category` (
  `id` int(5) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `product_category`
--

INSERT INTO `product_category` (`id`, `name`, `category`, `created_at`, `updated_at`) VALUES
(1, 'Laptop Entry Level', 'Laptop dengan spesifikasi dasar untuk keperluan ringan seperti browsing, mengetik, dan kuliah.', '2025-05-24 17:40:07', '2025-05-24 17:40:07'),
(2, 'Laptop Gaming', 'Laptop dengan spesifikasi tinggi untuk bermain game berat dan rendering.', '2025-05-24 17:40:07', '2025-05-24 17:40:07'),
(3, 'Laptop Bisnis', 'Laptop dengan build quality tinggi dan keamanan ekstra untuk kebutuhan profesional.', '2025-05-24 17:40:07', '2025-05-24 17:40:07'),
(4, 'Aksesoris Laptop', 'Tas laptop, cooling pad, mouse, keyboard, dan perangkat pendukung lainnya.', '2025-05-24 17:40:07', '2025-05-24 17:40:07'),
(5, 'Laptop Premium/Ultrabook', 'Laptop tipis, ringan, dan elegan untuk mobilitas tinggi dan tampilan profesional.', '2025-05-24 17:40:07', '2025-05-24 17:40:07'),
(7, 'Laptop Random', 'Super Random', '2025-05-27 09:00:02', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `total_harga` double NOT NULL,
  `alamat` text NOT NULL,
  `ongkir` double DEFAULT NULL,
  `status` int(1) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaction`
--

INSERT INTO `transaction` (`id`, `username`, `total_harga`, `alamat`, `ongkir`, `status`, `created_at`, `updated_at`) VALUES
(1, 'csudiati', 17798000, 'Semarang', 0, 0, '2025-07-02 11:41:38', '2025-07-02 11:41:38'),
(2, 'csudiati', 31196000, 'Semarang', 200000, 0, '2025-07-02 12:00:10', '2025-07-02 12:00:10'),
(3, 'csudiati', 28406000, 'Semarang', 9000, 0, '2025-07-03 05:42:35', '2025-07-03 05:42:35'),
(4, 'csudiati', 6208000, 'semarang', 9000, 0, '2025-07-03 05:51:26', '2025-07-03 05:51:26'),
(5, 'csudiati', 17709000, 'semarang', 11000, 0, '2025-07-03 12:35:24', '2025-07-03 12:35:24'),
(6, 'jane09', 17723000, 'semarang', 25000, 0, '2025-07-03 13:24:35', '2025-07-03 13:24:35'),
(7, 'jane09', 11099000, 'semarang', 350000, 0, '2025-07-03 14:07:54', '2025-07-03 14:07:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction_detail`
--

CREATE TABLE `transaction_detail` (
  `id` int(11) UNSIGNED NOT NULL,
  `transaction_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `jumlah` int(5) NOT NULL,
  `diskon` double DEFAULT NULL,
  `subtotal_harga` double NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaction_detail`
--

INSERT INTO `transaction_detail` (`id`, `transaction_id`, `product_id`, `jumlah`, `diskon`, `subtotal_harga`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 0, 10899000, '2025-07-02 11:41:38', '2025-07-02 11:41:38'),
(2, 1, 2, 1, 0, 6899000, '2025-07-02 11:41:38', '2025-07-02 11:41:38'),
(3, 2, 1, 1, 0, 10899000, '2025-07-02 12:00:10', '2025-07-02 12:00:10'),
(4, 2, 2, 2, 0, 13798000, '2025-07-02 12:00:10', '2025-07-02 12:00:10'),
(5, 2, 3, 1, 0, 6299000, '2025-07-02 12:00:10', '2025-07-02 12:00:10'),
(6, 3, 1, 1, 0, 10799000, '2025-07-03 05:42:35', '2025-07-03 05:42:35'),
(7, 3, 2, 1, 0, 6799000, '2025-07-03 05:42:35', '2025-07-03 05:42:35'),
(8, 3, 5, 1, 0, 10799000, '2025-07-03 05:42:35', '2025-07-03 05:42:35'),
(9, 4, 3, 1, 0, 6199000, '2025-07-03 05:51:26', '2025-07-03 05:51:26'),
(10, 5, 1, 1, 0, 10849000, '2025-07-03 12:35:24', '2025-07-03 12:35:24'),
(11, 5, 2, 1, 0, 6849000, '2025-07-03 12:35:24', '2025-07-03 12:35:24'),
(12, 6, 1, 1, 0, 10849000, '2025-07-03 13:24:35', '2025-07-03 13:24:35'),
(13, 6, 2, 1, 0, 6849000, '2025-07-03 13:24:35', '2025-07-03 13:24:35'),
(14, 7, 1, 1, 0, 10749000, '2025-07-03 14:07:54', '2025-07-03 14:07:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `role`, `created_at`, `updated_at`) VALUES
(1, 'kurnia.fujiati', 'amelia96@saragih.biz', '$2y$10$IExN2FmyeHDA84Li7ArNq.ndBqecdVf18BP4eum6vlU1BcRmQsPwK', 'guest', '2025-05-24 17:21:03', NULL),
(3, 'hartana.nainggolan', 'hakim.prabawa@yahoo.com', '$2y$10$Z0/AIN9uIjkO9BKLDE9Pf.J75VDyBYIw2SigTa8HyPBBe3av/kXiC', 'guest', '2025-05-24 17:21:03', NULL),
(4, 'dwi.wulandari', 'damu.andriani@gmail.com', '$2y$10$PLkQv1Utn4Fxohv6NmfjMeoMpJs5mkgloEBabX4g.0N7IqFRehmMi', 'admin', '2025-05-24 17:21:04', NULL),
(5, 'csudiati', 'yulianti.yuni@lestari.or.id', '$2y$10$TYAv7YkJapMj6lslYuKyE.22NYRmuKkOOzU3KlhSoN1C4z5qEY18e', 'admin', '2025-05-24 17:21:04', NULL),
(6, 'jane09', 'yuniar.rachel@gmail.com', '$2y$10$WgaMoB3EKW8iMxkW46cy.OO2rikC0ppjvKLZh2C7vOH4yaOpyi.mu', 'guest', '2025-05-24 17:21:04', NULL),
(7, 'sakura.nurdiyanti', 'uchita99@mansur.co.id', '$2y$10$noGo5ujCXSNG4AEr1l63TeVcV9wjM.cTPIsziFdviBF3U75xMdSwC', 'guest', '2025-05-24 17:21:04', NULL),
(8, 'bmulyani', 'xgunarto@anggriawan.in', '$2y$10$Pt8CAzefUid/wGj1eN9dtOBOWA9kiK40EnkcsXuWh5Q/p6Kb3Va92', 'guest', '2025-05-24 17:21:04', NULL),
(9, 'pradana.ani', 'gangsa.dongoran@fujiati.co.id', '$2y$10$.Js0BFp7ZmghlOjsf37cB.8x0PGxIKTp9G0itCRVpeen9Y6B7MJeC', 'admin', '2025-05-24 17:21:04', NULL),
(10, 'asirwada.samosir', 'among32@gmail.co.id', '$2y$10$nGmK9H/K2K7B4X/TZMUV8O91aUrI3mlb9mKavca4D0AymHkURpQqq', 'admin', '2025-05-24 17:21:04', NULL),
(11, 'harsaya31', 'darman25@nababan.com', '$2y$10$Q4cUSH68mBfAq92JlXK6Uej0zq8hXK8d9gX1kMIHscIrLMJ7r.EO6', 'admin', '2025-05-24 18:16:57', NULL),
(12, 'darmanto.yulianti', 'zulaika.ilsa@permadi.tv', '$2y$10$ICGGJswEEE7FJN.AJz5wqe2zQ.uJKQEbWA7G.1rt3dmLgEyxqBYAG', 'admin', '2025-05-24 18:16:58', NULL),
(13, 'suwarno.kunthara', 'melinda80@yahoo.co.id', '$2y$10$M5E77LrlDKinJ3482mf.Ku.IRMnjvbtPgClbGH3m3E5nin5CttPVO', 'admin', '2025-05-24 18:16:58', NULL),
(14, 'suryatmi.suci', 'lsuryatmi@sitompul.co.id', '$2y$10$O8mzDgpGpJT/60Tw83LFdOKIYII2z7WxxS.n1taHzmDEq/8FPx9ii', 'admin', '2025-05-24 18:16:58', NULL),
(15, 'suci43', 'jarwadi.mansur@safitri.id', '$2y$10$iF6AhieNVEVwSFrmZP4n3OeQqs/SboOdAtzvh6rSXlUzDMJ/hWX0G', 'guest', '2025-05-24 18:16:58', NULL),
(16, 'elvin.napitupulu', 'nasyidah.victoria@yahoo.com', '$2y$10$K/WHt1.FzOnpPbE0eNEQBePRpSIub/6HiImn/88UPvsyVILRwq97W', 'admin', '2025-05-24 18:16:58', NULL),
(17, 'situmorang.olivia', 'lsantoso@widodo.org', '$2y$10$u/2WeQBk7k2lcpWkJTq6iuAPVmvUs9GWLWWLwv8XGez5yjzmbmWEK', 'admin', '2025-05-24 18:16:58', NULL),
(18, 'yuniar.damar', 'ardianto.iriana@nababan.asia', '$2y$10$o/RkzngWIMP8ic2DDhaun.Hoy1ycqFEosuX2CHcw6FYEhATc4CjAG', 'guest', '2025-05-24 18:16:58', NULL),
(19, 'imangunsong', 'gamani.widiastuti@kusmawati.info', '$2y$10$S.lx0DmREkyJidiARo2sMepYCfBkR0dxBTxVyUgL/7.n3cUMTW9Ci', 'guest', '2025-05-24 18:16:58', NULL),
(20, 'ilaksmiwati', 'zsimbolon@hutagalung.asia', '$2y$10$QwViF2A3NzJtnhRYwK1R4OtRD0bos.m3FqNClJqJ4gD.qrc5aLbU2', 'admin', '2025-05-24 18:16:58', NULL),
(21, 'candrakanta90', 'limar04@gmail.com', '$2y$10$YdJjqjNNCwHRMdJOaX7Fuu9lnDebu8KpIX3Vg8ZZjApjG2wG1TI82', 'guest', '2025-07-01 02:33:39', NULL),
(22, 'jamalia68', 'wprakasa@waluyo.info', '$2y$10$BHguplCAQjmdg02NKCnlAucd1tDL2LIjbBq0v4MB3lasUwELPmOBW', 'guest', '2025-07-01 02:33:39', NULL),
(23, 'ikhsan.farida', 'mulyono83@yahoo.com', '$2y$10$o5AkR/zgzFa5AR1fMVcaO.rpBOZAduy.pwrwdBEfCEAT1UJFmB2VG', 'guest', '2025-07-01 02:33:39', NULL),
(24, 'gunawan.maria', 'xutami@lestari.in', '$2y$10$l3jsxjCDfikls/iabx.fP.yYGla7zr4EjlIE.b1uvL8cqOm8R73km', 'guest', '2025-07-01 02:33:39', NULL),
(25, 'ohandayani', 'darsirah.nurdiyanti@gmail.co.id', '$2y$10$1hubKH17zmKqiU8wh7mPnuCrQubHNUwj5kpoER7gzYLBJIhKH5pJC', 'admin', '2025-07-01 02:33:39', NULL),
(26, 'fpadmasari', 'gantar.firmansyah@gmail.co.id', '$2y$10$Y0lgrFDlE0EZnrH66v0JBeUlVAp9BjFbTQ/Um1nLJY.Hj0WGmIoiC', 'guest', '2025-07-01 02:33:39', NULL),
(27, 'adriansyah.danu', 'alaksmiwati@gmail.com', '$2y$10$fGQhz1DLNeUEz3aorwqOoO/xbOOycIqVr.Z/qpIi1ZDnjsYXKL4O2', 'admin', '2025-07-01 02:33:39', NULL),
(28, 'ahassanah', 'garan.hutasoit@palastri.or.id', '$2y$10$6pvKy/cXlPdRv8rCjSyjg.K2TLngkzN7TWfyVQp9zcoXCx5kVCm02', 'admin', '2025-07-01 02:33:39', NULL),
(29, 'mustofa.erik', 'joko40@widiastuti.name', '$2y$10$x3mRKCMD1FyPXM3hsFILNewYnY45xqSWyZ5RN/rwxyvj8SwMLI.Ai', 'admin', '2025-07-01 02:33:39', NULL),
(30, 'nyana93', 'pranowo.edi@wijayanti.co.id', '$2y$10$qvOlUVHyXBDgXa/l7oZQke7L/G5BEFY0pKBH0bY8.bDFqrkW1auDq', 'admin', '2025-07-01 02:33:39', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `diskon`
--
ALTER TABLE `diskon`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tanggal` (`tanggal`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaction_detail`
--
ALTER TABLE `transaction_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `diskon`
--
ALTER TABLE `diskon`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `transaction_detail`
--
ALTER TABLE `transaction_detail`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
