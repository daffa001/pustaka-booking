-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2023 at 03:25 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pustaka`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `judul_buku` varchar(128) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `pengarang` varchar(64) CHARACTER SET latin1 NOT NULL,
  `penerbit` varchar(64) NOT NULL,
  `tahun_terbit` year(4) NOT NULL,
  `isbn` varchar(64) NOT NULL,
  `stok` int(11) NOT NULL,
  `dipinjam` int(11) NOT NULL,
  `dibooking` int(11) NOT NULL,
  `image` varchar(256) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `judul_buku`, `id_kategori`, `pengarang`, `penerbit`, `tahun_terbit`, `isbn`, `stok`, `dipinjam`, `dibooking`, `image`) VALUES
(2, 'Mudah Belajar Komputer untuk Anak', 1, 'Bambang Agus Setiawan', 'Huta Media', 2017, '9786025118500', 5, 3, 1, 'img1557402397.jpg\r\n'),
(5, 'PHP Komplet ', 1, 'Jubilee', ' Ce Naaa', 2017, '8346753547', 5, 1, 1, 'img1555522493 jpg\r\n'),
(10, 'Detektif Conan Ep 200', 9, 'Okigawa sasuke', 'Cultura ', 2016, '874387583987', 5, 0, 0, 'img1557401465.jpg\r\n'),
(14, 'Bahasa Indonesia', 2, 'Umri Nuraini dan Indriyani ', 'Pusat Perbukuan ', 2015, '757254724884', 3, 0, 0, 'img1557402703.ipg\r\n'),
(15, 'Komunikasi Lintas Budaya', 5, 'Dr. Dedy Kumia', 'Published ', 2015, '878674646488 ', 5, 0, 0, 'img1557403156.jpg\r\n'),
(16, 'Kolaborasi Codeigniter dan Ajax dalam Perancangan', 1, 'Anton Subagia', 'Elex Media komputindo', 2017, '43345356577', 5, 0, 0, 'img1557403502 jpg\r\n'),
(19, 'Rahasia Keajaiban Bumi', 3, 'Nurulihsan', 'Luxima', 2014, '5657156565768868', 5, 0, 0, 'img1557404689.jpg'),
(21, 'naruto shipuden', 3, 'masashi', 'shonen', 2009, '123123123213', 2, 0, 0, 'img1701102105.jpeg'),
(23, 'dsaadadsdas', 3, 'dsaadas', '12313', 2007, '1231212', 1, 0, 0, 'img1701104181.jpg'),
(27, 'asd', 3, 'ads', 'dsa', 2009, '111', 10, 0, 0, 'img1701488727.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(45) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(4, 'Hobby'),
(5, 'Komunikasi'),
(6, 'Hukum'),
(7, 'Agama'),
(8, 'Populer'),
(9, 'Komik'),
(10, 'Komputer'),
(11, 'Bahasa'),
(13, 'Hobby'),
(14, 'Komunikasi'),
(16, 'Agama');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'administrator'),
(2, 'member');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) CHARACTER SET latin1 NOT NULL,
  `email` varchar(128) CHARACTER SET latin1 NOT NULL,
  `image` varchar(128) CHARACTER SET latin1 NOT NULL,
  `password` varchar(256) CHARACTER SET latin1 NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `tanggal_input` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `image`, `password`, `role_id`, `is_active`, `tanggal_input`) VALUES
(13, 'Mohammad Daffa Abhinaya Daelami', 'daffa@gmail.com', 'pro1701672013.jpg', '$2y$10$f2FaRYOFhI.cT1NZYvuaSOSTE82QghC8iCaHDlCvfRfPqMwtNHSlS', 2, 1, 1701669853),
(14, 'Mohammad Daffa Abhinaya Daelami', 'nexdtoko@gmail.com', 'default.jpg', '$2y$10$3UGS4o/IWo9ts7Sv/TGpUOynQVNxwj74S7Rw.aFLTEqNdYKg1gukm', 2, 0, 1702220415),
(15, 'Daffa', 'lancelotm45c@gmail.com', 'default.jpg', '$2y$10$uddF1/TuSGCt9LVprykBeuLYPZ1QoFoWQJCGheZ7rgDpUB9M.fxE6', 2, 0, 1702220458);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
