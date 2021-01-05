-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2020 at 01:35 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pertemuan_5`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `berat` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `stok` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `id_user`, `nama_produk`, `harga`, `berat`, `deskripsi`, `stok`, `created_at`, `updated_at`) VALUES
(5, NULL, 'nasi komplit', 15000, 5, 'Cerita ramadhan kemarin. Udah lama gak makan nasi uduk karena gak ada yang jual selama ramadhan, tetiba anak2 request buka puasa pakek nasi komplit. Tring...mama kabulkan permintaan anak2...hehehe. Jadilah ini nasi uduk ala mamika komplit dengan lauk pauknya. Kata pak suami, rasanya mirip nasi komplit ...', 100, '2020-11-15 01:39:29', '2020-11-19 03:26:12'),
(6, NULL, 'nasi komplit ayam', 20000, 5, 'Cerita ramadhan kemarin. Udah lama gak makan nasi uduk karena gak ada yang jual selama ramadhan, tetiba anak2 request buka puasa pakek nasi uduk. Tring...mama kabulkan permintaan anak2...hehehe. Jadilah ini nasi uduk ala mamika komplit dengan lauk pauknya. Kata pak suami, rasanya mirip nasi uduk ...', 600, '2020-11-15 01:40:08', '2020-11-20 04:45:33'),
(8, NULL, 'nasi komplit uduk', 25000, 5, 'Cerita ramadhan kemarin. Udah lama gak makan nasi uduk karena gak ada yang jual selama ramadhan, tetiba anak2 request buka puasa pakek nasi uduk. Tring...mama kabulkan permintaan anak2...hehehe. Jadilah ini nasi uduk ala mamika komplit dengan lauk pauknya. Kata pak suami, rasanya mirip nasi uduk ...', 500, '2020-11-15 01:44:29', '2020-11-20 04:45:03'),
(10, NULL, 'nasi komplit ayam bakar', 10000, 5, 'Cerita ramadhan kemarin. Udah lama gak makan nasi uduk karena gak ada yang jual selama ramadhan, tetiba anak2 request buka puasa pakek nasi uduk. Tring...mama kabulkan permintaan anak2...hehehe. Jadilah ini nasi uduk ala mamika komplit dengan lauk pauknya. Kata pak suami, rasanya mirip nasi uduk ...', 300, '2020-11-15 09:20:18', '2020-11-20 04:46:05'),
(11, 1, 'nasi goreng', 20000, 5, 'Nasi goreng adalah sebuah makanan berupa nasi yang digoreng dan diaduk dalam minyak goreng, margarin atau mentega, biasanya ditambah kecap manis, bawang merah, bawang putih, asam jawa, lada dan bumbu-bumbu lainnya, seperti telur, ayam, dan kerupuk', 300, '2020-11-23 01:38:42', '2020-11-23 02:11:00'),
(12, 1, 'nasi padang', 15000, 5, 'Nasi Padang adalah nasi putih yang disajikan dengan berbagai macam lauk pauk khas Indonesia. Padang merujuk pada ibu kota provinsi Sumatra Barat, kampung halaman orang Minangkabau', 200, '2020-11-23 01:55:55', '2020-11-23 02:09:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `username` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `remember_token` varchar(225) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `username`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Meti Lamitasari', 'meti', 'metilamitasari@gmail.com', '$2y$10$WXbrhHzwVCUgbPgNigzRHu1sWjnnxEhRH2LGdVL4erf2rmA29Q8uS', NULL, '2020-11-17 09:06:39', '2020-11-17 02:06:39'),
(2, 'test', 'test', 'test@gmail.com', '$2y$10$tmIuSMpUyK5d2hTg178eieTYc3s0k.wDwBwzPlxjs3mjJ1iKNqP3u', NULL, '2020-11-17 02:20:46', '2020-11-17 02:20:46'),
(4, 'sari', 'sari', 'metilamitasari@gmail.com', '$2y$10$.kMDmhCuhmY3qT4jpXAu8uBMglqcQmfOfrw26c6sdVAJPo2f3y30W', NULL, '2020-11-17 17:11:22', '2020-11-17 10:11:21'),
(10, 'meti', 'mita', 'mita@gmail.com', '$2y$10$U19CQo3nxjORnPryFoAyb.2glBwtbRxWqjFmTaAIQenCshP37CnFC', NULL, '2020-11-22 22:37:31', '2020-11-22 22:37:31');

-- --------------------------------------------------------

--
-- Table structure for table `user_detail`
--

CREATE TABLE `user_detail` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `no_handphone` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_detail`
--

INSERT INTO `user_detail` (`id`, `id_user`, `no_handphone`, `created_at`, `updated_at`) VALUES
(1, 10, '+621528979846', '2020-11-22 22:37:31', '2020-11-22 22:37:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_detail`
--
ALTER TABLE `user_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_detail`
--
ALTER TABLE `user_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
