-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2022 at 07:13 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pentaho`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_play_tennis`
--

CREATE TABLE `tbl_play_tennis` (
  `day` varchar(3) DEFAULT NULL,
  `outlook` varchar(8) DEFAULT NULL,
  `temp` varchar(4) DEFAULT NULL,
  `humidity` varchar(6) DEFAULT NULL,
  `wind` varchar(6) DEFAULT NULL,
  `play` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_play_tennis`
--

INSERT INTO `tbl_play_tennis` (`day`, `outlook`, `temp`, `humidity`, `wind`, `play`) VALUES
('D1', 'Sunny', 'Hot', 'High', 'Weak', 'No'),
('D2', 'Sunny', 'Hot', 'High', 'Strong', 'No'),
('D3', 'Overcast', 'Hot', 'High', 'Weak', 'Yes'),
('D4', 'Rain', 'Mild', 'High', 'Weak', 'Yes'),
('D5', 'Rain', 'Cool', 'Normal', 'Weak', 'Yes'),
('D6', 'Rain', 'Cool', 'Normal', 'Strong', 'No'),
('D7', 'Overcast', 'Cool', 'Normal', 'Strong', 'Yes'),
('D8', 'Sunny', 'Mild', 'High', 'Weak', 'No'),
('D9', 'Sunny', 'Cool', 'Normal', 'Weak', 'Yes'),
('D10', 'Rain', 'Mild', 'Normal', 'Weak', 'Yes'),
('D11', 'Sunny', 'Mild', 'Normal', 'Strong', 'Yes'),
('D12', 'Overcast', 'Mild', 'High', 'Strong', 'Yes'),
('D13', 'Overcast', 'Hot', 'Normal', 'Weak', 'Yes'),
('D14', 'Rain', 'Mild', 'High', 'Strong', 'No');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
