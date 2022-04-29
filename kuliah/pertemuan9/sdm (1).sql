-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2022 at 05:29 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sdm`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `kesatuan` varchar(50) NOT NULL,
  `pangkat` varchar(50) NOT NULL,
  `nrp` varchar(25) NOT NULL,
  `tempat` varchar(20) NOT NULL,
  `tgl` date NOT NULL,
  `tmt_satker` date NOT NULL,
  `tmt_jabatan` date NOT NULL,
  `status` varchar(5) NOT NULL,
  `nama_file` varchar(100) NOT NULL DEFAULT 'avatar.png',
  `hak` varchar(10) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nama`, `jabatan`, `kesatuan`, `pangkat`, `nrp`, `tempat`, `tgl`, `tmt_satker`, `tmt_jabatan`, `status`, `nama_file`, `hak`) VALUES
(3, 'Admin', '-', '-', '-', '123456', '-', '2022-01-01', '2022-01-01', '2022-01-01', '', '', 'admin'),
(7, 'Muhammad Iqbal Ibrahim', 'Banum Taud Sespim', 'Sespim Lemdiklat Polri', 'Brigadir Polisi Dua', '98120458', 'Surakarta', '1998-12-13', '2019-03-04', '2019-03-22', 'Polri', '1648367267.jpg', 'user'),
(9, 'Reza Fahlevi', 'ngehe', 'Sespimmen Sespim Lemdiklat Polri', 'Penata', '95051001', 'Bandung', '1995-11-10', '2022-03-16', '2022-03-23', 'PNS', 'pp-removebg-preview.png', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `id_anggota` int(11) NOT NULL,
  `jabatan` int(11) NOT NULL,
  `tahun` int(11) NOT NULL,
  `satker` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pangkat`
--

CREATE TABLE `pangkat` (
  `id` int(11) NOT NULL,
  `pangkat` varchar(50) NOT NULL,
  `kat` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pangkat`
--

INSERT INTO `pangkat` (`id`, `pangkat`, `kat`) VALUES
(1, 'Inspektur Jenderal Polisi', 'Polri'),
(2, 'Brigadir Jenderal Polisi', 'Polri'),
(3, 'Komisaris Besar Polisi', 'Polri'),
(4, 'Ajun Komisaris Besar Polisi', 'Polri'),
(5, 'Komisaris Polisi', 'Polri'),
(6, 'Ajun Komisaris Polisi', 'Polri'),
(7, 'Inspektur Polisi Satu', 'Polri'),
(8, 'Inspektur Polisi Dua', 'Polri'),
(9, 'Ajun Inspektur Polisi Satu', 'Polri'),
(10, 'Ajun Inspektur Polisi Dua', 'Polri'),
(11, 'Brigadir Polisi Kepala', 'Polri'),
(12, 'Brigadir Polisi', 'Polri'),
(13, 'Brigadir Polisi Satu', 'Polri'),
(14, 'Brigadir Polisi Dua', 'Polri'),
(15, 'Ajun Brigadir Polisi', 'Polri'),
(16, 'Ajun Brigadir Polisi Satu', 'Polri'),
(17, 'Ajun Brigadir Polisi Dua', 'Polri'),
(18, 'Bhayangkara Kepala', 'Polri'),
(19, 'Bhayangkara Satu', 'Polri'),
(20, 'Bhayangkara Dua', 'Polri'),
(21, 'Pembina Utama', 'PNS'),
(22, 'Pembina Utama Madya', 'PNS'),
(23, 'Pembina Utama Muda', 'PNS'),
(24, 'Pembina Tingkat I', 'PNS'),
(25, 'Pembina', 'PNS'),
(26, 'Penata Tingkat I', 'PNS'),
(27, 'Penata', 'PNS'),
(28, 'Penata Muda Tingkat I', 'PNS'),
(31, 'Penata Muda', 'PNS'),
(32, 'Pengatur Tingkat I', 'PNS'),
(33, 'Pengatur', 'PNS'),
(34, 'Pengatur Muda Tingkat I', 'PNS'),
(35, 'Pengatur Muda', 'PNS'),
(36, 'Juru Tingkat I', 'PNS'),
(37, 'Juru', 'PNS'),
(38, 'Juru Muda Tingkat I', 'PNS'),
(39, 'Juru Muda', 'PNS');

-- --------------------------------------------------------

--
-- Table structure for table `syarat_pangkat`
--

CREATE TABLE `syarat_pangkat` (
  `id` int(11) NOT NULL,
  `anggota_id` int(11) DEFAULT NULL,
  `rh` varchar(100) DEFAULT NULL,
  `smk` varchar(100) DEFAULT NULL,
  `skep_pertama` varchar(100) DEFAULT NULL,
  `skep_terakhir` varchar(100) DEFAULT NULL,
  `skep_gaji_t` varchar(100) DEFAULT NULL,
  `ijazah_dikpolri` varchar(100) DEFAULT NULL,
  `ijazah_dikum_t` varchar(100) DEFAULT NULL,
  `ijazah_dikjur` varchar(100) DEFAULT NULL,
  `skhp` varchar(100) DEFAULT NULL,
  `sket_lulus_beladiri` varchar(100) DEFAULT NULL,
  `skep_perwira` varchar(100) DEFAULT NULL,
  `skep_jabatan` varchar(100) DEFAULT NULL,
  `sprinlak_jabatan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `syarat_pangkat`
--

INSERT INTO `syarat_pangkat` (`id`, `anggota_id`, `rh`, `smk`, `skep_pertama`, `skep_terakhir`, `skep_gaji_t`, `ijazah_dikpolri`, `ijazah_dikum_t`, `ijazah_dikjur`, `skhp`, `sket_lulus_beladiri`, `skep_perwira`, `skep_jabatan`, `sprinlak_jabatan`) VALUES
(1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`),
  ADD KEY `id_anggota` (`id_anggota`);

--
-- Indexes for table `pangkat`
--
ALTER TABLE `pangkat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `syarat_pangkat`
--
ALTER TABLE `syarat_pangkat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `anggota_id` (`anggota_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pangkat`
--
ALTER TABLE `pangkat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `syarat_pangkat`
--
ALTER TABLE `syarat_pangkat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD CONSTRAINT `jabatan_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `anggota` (`id_anggota`);

--
-- Constraints for table `syarat_pangkat`
--
ALTER TABLE `syarat_pangkat`
  ADD CONSTRAINT `syarat_pangkat_ibfk_1` FOREIGN KEY (`anggota_id`) REFERENCES `anggota` (`id_anggota`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
