-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Jun 06, 2020 at 11:13 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentreg`
--

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  `Address` varchar(20) NOT NULL,
  `cnic` bigint(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `Name`, `email`, `password`, `Address`, `cnic`) VALUES
(2, 'saif ali khan', 'saif123@hotmail.com', 'saif123', 'afshan colony rwp', 1222312),
(4, 'sheri', 'sheri123', '12232', 'afshan colony rwp', 131321312),
(5, 'saad', 'gmoja67@gmail.com', '121', 'afshan colony rwp', 112312321),
(6, 'ali', 'ali123', '1234', 'afshan colony rwp', 12442),
(7, 'zaig', 'zaidi123', 'asas', 'afshan colony rwp', 231231),
(8, 'musa', 'musa123@', '123', 'las vegas', 3121232),
(9, 'haider', 'saif123@hotmail.com', '12121', 'las vegas', 12131),
(11, 'admin', 'admin123', 'admin', 'las vegas', 1123123),
(12, 'azfar yar khan', 'gmoja67@gmail.com', '111', 'afshan colony rwp', 131231231),
(13, 'saad ur rehman', 'ducky123@', '121', '', 231312),
(14, 'haider', 'haider123@gmail.com', '121', 'afshan colony rwp', 1231231),
(15, 'admin', 'gmoja67@gmail.com', 'admin', 'afshan colony rwp', 1221);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
