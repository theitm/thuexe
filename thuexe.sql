-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2017 at 06:31 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thuexe`
--

-- --------------------------------------------------------

--
-- Table structure for table `ct_dondatmoi`
--

CREATE TABLE `ct_dondatmoi` (
  `id` int(11) NOT NULL,
  `madonhang` int(11) NOT NULL,
  `loaixe` varchar(100) NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dondatmoi`
--

CREATE TABLE `dondatmoi` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `ngaydat` varchar(20) NOT NULL,
  `tongtien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dondatmoi`
--

INSERT INTO `dondatmoi` (`id`, `username`, `ngaydat`, `tongtien`) VALUES
(1, 'Quân', '22/03/1997', 500000);

-- --------------------------------------------------------

--
-- Table structure for table `donhangxong`
--

CREATE TABLE `donhangxong` (
  `id` int(11) NOT NULL,
  `madonhang` text NOT NULL,
  `tongtien` int(11) NOT NULL,
  `ngaydat` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donhangxong`
--

INSERT INTO `donhangxong` (`id`, `madonhang`, `tongtien`, `ngaydat`) VALUES
(1, 'MH153', 1250000, '22/9/2017'),
(2, 'MH1523', 2250000, '22/8/2017');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `sdt` text NOT NULL,
  `Birthday` text NOT NULL,
  `admin` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `email`, `sdt`, `Birthday`, `admin`) VALUES
(1, 'admin', 'admin', 'Quân', '1', '3', '2', 0),
(2, 'Quân', '123', 'Quân', 'quan@gmail.com', '01642131879', '22/03/1997', 1),
(3, 'tuan1', '123456', 'tuan', 'dsadsadsa@gmail.com', '01647108786', '27/09/1997', 0),
(4, 'Quân Nguyễn', '1', 'Nguyễn Trịnh Hồng Quân', '', '0164213187+9', '', 0),
(5, 'quan', '2', '', '', '', '', 0),
(6, 'quan2', '2', '', '', '', '', 0),
(7, 'quan55', '2', '', '', '', '', 0),
(8, 'quan414', '2', '', '', '', '', 0),
(9, 'vananh98', '123', 'Vân Anh', '', '0164 236 1159', '', 0),
(10, 'kulakum', '123', 'Mã Như Long', '', '0163 226 8945', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `xe`
--

CREATE TABLE `xe` (
  `id` int(10) UNSIGNED NOT NULL,
  `tenxe` varchar(255) NOT NULL,
  `loai` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `gia` int(30) NOT NULL,
  `soluong` text NOT NULL,
  `conlai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `xe`
--

INSERT INTO `xe` (`id`, `tenxe`, `loai`, `gia`, `soluong`, `conlai`) VALUES
(1, 'Yamaha Sirius', 'Xe số', 115, '100', 100),
(2, 'Honda Wave Alpha', 'Xe số', 150, '100', 99),
(3, 'Honda Vision', 'Xe ga', 200, '100', 89),
(4, 'Honda SH125', 'Xe ga', 300, '100', 100),
(5, 'Honda Airblade', 'Xe ga', 200, '100', 80),
(6, 'Yamaha NVX 125', 'Xe số', 300, '100', 90),
(7, 'Honda Airblade Black', 'Xe ga', 300, '100', 80),
(8, 'Dream', 'Xe số', 500, '1', 100),
(9, 'SH Mode (VA)', 'Xe ga', 500, '100', 100);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ct_dondatmoi`
--
ALTER TABLE `ct_dondatmoi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dondatmoi`
--
ALTER TABLE `dondatmoi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `ngaydat` (`ngaydat`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xe`
--
ALTER TABLE `xe`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dondatmoi`
--
ALTER TABLE `dondatmoi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `xe`
--
ALTER TABLE `xe`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
