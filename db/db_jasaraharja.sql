-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2021 at 01:06 PM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_jasaraharja`
--
CREATE DATABASE IF NOT EXISTS `db_jasaraharja` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_jasaraharja`;

-- --------------------------------------------------------

--
-- Table structure for table `asuransi`
--

CREATE TABLE `asuransi` (
  `id` int(5) NOT NULL,
  `no_asuransi` varchar(25) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_kendaraan` varchar(20) NOT NULL,
  `no_ktp` varchar(25) NOT NULL,
  `tgl_buat` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asuransi`
--

INSERT INTO `asuransi` (`id`, `no_asuransi`, `nama`, `alamat`, `no_kendaraan`, `no_ktp`, `tgl_buat`) VALUES
(6, '113', 'Jhonny', 'jl. turi 3', 'Bk 3737 zz', '46376374', '2020/12/04'),
(11, '143', 'gaja', 'jl . lalala', 'bkk 0098 zz', '12343', '2020/12/04'),
(17, '5353', 's', 's', 's', 's', '2020/12/04'),
(18, 'asn12', 'anto', 'desa. namek', 'bk 7878 ll', '299292', '2021/01/04'),
(19, 'asn1', 'rudi', 'desa. cemara', 'bk 9090 dr', '76545', '2021/01/04'),
(20, 'asn9', 'bayu', 'jl.bakti', 'bo 0909', '44567', '2021/01/04'),
(21, 'klo123', 'rama', 'desa. tehe', 'bk. koko', '299292', '2021/01/04');

-- --------------------------------------------------------

--
-- Table structure for table `kecelakaan`
--

CREATE TABLE `kecelakaan` (
  `no_asuransi` varchar(50) NOT NULL,
  `tempat` varchar(50) NOT NULL,
  `tgl_kecelakaan` varchar(25) NOT NULL,
  `korban` varchar(4) NOT NULL,
  `id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kecelakaan`
--

INSERT INTO `kecelakaan` (`no_asuransi`, `tempat`, `tgl_kecelakaan`, `korban`, `id`) VALUES
('143', 'jl. rubika', '2020-12-14', '1', 7),
('5353', 'jl. raya 11', '2020-12-03', '1', 9);

-- --------------------------------------------------------

--
-- Table structure for table `korban`
--

CREATE TABLE `korban` (
  `id_korban` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `tgl_lhr` varchar(20) NOT NULL,
  `tmpt_lhr` varchar(20) NOT NULL,
  `cacat` varchar(10) NOT NULL,
  `meninggal` varchar(10) NOT NULL,
  `id_kecelakaan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `korban`
--

INSERT INTO `korban` (`id_korban`, `nama`, `alamat`, `tgl_lhr`, `tmpt_lhr`, `cacat`, `meninggal`, `id_kecelakaan`) VALUES
(4, 'Diwapedi', 'jl. bakti setiop', '2020-12-09', 'desa. salahin', 'ya', 'tidak', '9');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(25) NOT NULL,
  `paswd` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `level` int(1) NOT NULL,
  `ket` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `paswd`, `email`, `nama`, `level`, `ket`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'devk@gmail.com', 'Developer Kampoeng', 1, 'Staff Kepaniteraan Hukum');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `asuransi`
--
ALTER TABLE `asuransi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kecelakaan`
--
ALTER TABLE `kecelakaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `korban`
--
ALTER TABLE `korban`
  ADD PRIMARY KEY (`id_korban`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `asuransi`
--
ALTER TABLE `asuransi`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `kecelakaan`
--
ALTER TABLE `kecelakaan`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `korban`
--
ALTER TABLE `korban`
  MODIFY `id_korban` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
