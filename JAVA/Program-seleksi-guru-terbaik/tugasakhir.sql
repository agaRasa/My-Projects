-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2024 at 04:46 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugasakhir`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `level` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `username`, `password`, `level`) VALUES
(1, 'admin', 'admin123', 'admin'),
(2, 'user', 'user123', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `databobot`
--

CREATE TABLE `databobot` (
  `idbobot` varchar(10) NOT NULL,
  `idnilai` varchar(10) NOT NULL,
  `ba1` double NOT NULL,
  `bpm1` double NOT NULL,
  `bi1` double NOT NULL,
  `bs1` double NOT NULL,
  `ba2` float DEFAULT NULL,
  `bpm2` float DEFAULT NULL,
  `bi2` float DEFAULT NULL,
  `bs2` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `databobot`
--

INSERT INTO `databobot` (`idbobot`, `idnilai`, `ba1`, `bpm1`, `bi1`, `bs1`, `ba2`, `bpm2`, `bi2`, `bs2`) VALUES
('B1', 'N1', 3, 4, 4, 4, 1, 1, 1, 1),
('B2', 'N2', 3, 2, 3, 3, 1, 0.5, 0.75, 0.75),
('B3', 'N3', 2, 2, 3, 3, 0.666667, 0.5, 0.75, 0.75),
('B4', 'N4', 2, 2, 2, 2, 0.666667, 0.5, 0.5, 0.5),
('B5', 'N5', 2, 3, 1, 3, 0.666667, 0.75, 0.25, 0.75),
('B6', 'N6', 2, 2, 1, 4, 0.666667, 0.5, 0.25, 1),
('B7', 'N7', 3, 3, 4, 2, 1, 0.75, 1, 0.5);

-- --------------------------------------------------------

--
-- Table structure for table `dataguru`
--

CREATE TABLE `dataguru` (
  `nip` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jk` varchar(10) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dataguru`
--

INSERT INTO `dataguru` (`nip`, `nama`, `jk`, `alamat`, `telp`) VALUES
('0001', 'Fauzan Riyadi, S.S', 'Laki-laki', 'Depok', '082189450245'),
('0002', 'Arief Setiawan, S.Pd', 'Laki-laki', 'Depok', '083867821439'),
('0003', 'Lelasari, S.Pd.I', 'Perempuan', 'Jakarta', '082466781546'),
('0004', 'Muhamad Usnan, S.Pd', 'Laki-laki', 'Bogor', '089677412689'),
('0005', 'Muzdalifah, S.S', 'Perempuan', 'Jakarta', '085267843279'),
('0006', 'Maryam, S.Pd.I', 'Perempuan', 'Depok', '089592134573'),
('0007', 'Tanih, A.Md', 'Laki-laki', 'Bogor', '082164738921');

-- --------------------------------------------------------

--
-- Table structure for table `datahasil`
--

CREATE TABLE `datahasil` (
  `idhasil` varchar(10) NOT NULL,
  `idnormal` varchar(10) NOT NULL,
  `nilai` float NOT NULL,
  `peringkat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `datahasil`
--

INSERT INTO `datahasil` (`idhasil`, `idnormal`, `nilai`, `peringkat`) VALUES
('H1', 'ID1', 1, 1),
('H2', 'ID2', 0.77, 3),
('H3', 'ID3', 0.67, 4),
('H4', 'ID4', 0.56, 7),
('H5', 'ID5', 0.6, 5),
('H6', 'ID6', 0.59, 6);

-- --------------------------------------------------------

--
-- Table structure for table `datakriteria`
--

CREATE TABLE `datakriteria` (
  `idkrit` varchar(10) NOT NULL,
  `nk` varchar(50) NOT NULL,
  `bobot` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `datakriteria`
--

INSERT INTO `datakriteria` (`idkrit`, `nk`, `bobot`) VALUES
('C1', 'Absensi', '30%'),
('C2', 'Penguasaan Materi', '25%'),
('C3', 'Interaksi', '25%'),
('C4', 'Sikap', '20%');

-- --------------------------------------------------------

--
-- Table structure for table `datanilai`
--

CREATE TABLE `datanilai` (
  `idnilai` varchar(10) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `absen` varchar(5) NOT NULL,
  `pm` varchar(5) NOT NULL,
  `interaksi` varchar(5) NOT NULL,
  `sikap` varchar(5) NOT NULL,
  `ba` double NOT NULL,
  `bpm` double NOT NULL,
  `bi` double NOT NULL,
  `bs` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `datanilai`
--

INSERT INTO `datanilai` (`idnilai`, `nip`, `absen`, `pm`, `interaksi`, `sikap`, `ba`, `bpm`, `bi`, `bs`) VALUES
('N1', '0001', '1', '90', '92', 'A', 3, 4, 4, 4),
('N2', '0002', '2', '78', '87', 'B', 3, 2, 3, 3),
('N3', '0003', '3', '79', '82', 'B', 2, 2, 3, 3),
('N4', '0004', '3', '75', '72', 'C', 2, 2, 2, 2),
('N5', '0005', '3', '85', '68', 'B', 2, 3, 1, 3),
('N6', '0006', '4', '79', '65', 'A', 2, 2, 1, 4),
('N7', '0007', '2', '80', '90', 'C', 3, 3, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `datanormalisasi`
--

CREATE TABLE `datanormalisasi` (
  `idnormal` varchar(10) NOT NULL,
  `idbobot` varchar(10) NOT NULL,
  `ba3` double NOT NULL,
  `bpm3` double NOT NULL,
  `bi3` double NOT NULL,
  `bs3` double NOT NULL,
  `total` float DEFAULT NULL,
  `rank` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `datanormalisasi`
--

INSERT INTO `datanormalisasi` (`idnormal`, `idbobot`, `ba3`, `bpm3`, `bi3`, `bs3`, `total`, `rank`) VALUES
('ID1', 'B1', 1, 1, 1, 1, 1, 1),
('ID2', 'B2', 1, 0.5, 0.75, 0.75, 0.77, 3),
('ID3', 'B3', 0.666667, 0.5, 0.75, 0.75, 0.67, 4),
('ID4', 'B4', 0.666667, 0.5, 0.5, 0.5, 0.56, 7),
('ID5', 'B5', 0.666667, 0.75, 0.25, 0.75, 0.6, 5),
('ID6', 'B6', 0.666667, 0.5, 0.25, 1, 0.59, 6),
('ID7', 'B7', 1, 0.75, 1, 0.5, 0.84, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `databobot`
--
ALTER TABLE `databobot`
  ADD PRIMARY KEY (`idbobot`),
  ADD KEY `idnilai` (`idnilai`);

--
-- Indexes for table `dataguru`
--
ALTER TABLE `dataguru`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `datahasil`
--
ALTER TABLE `datahasil`
  ADD PRIMARY KEY (`idhasil`),
  ADD KEY `idnormal` (`idnormal`);

--
-- Indexes for table `datanilai`
--
ALTER TABLE `datanilai`
  ADD PRIMARY KEY (`idnilai`),
  ADD KEY `nip` (`nip`);

--
-- Indexes for table `datanormalisasi`
--
ALTER TABLE `datanormalisasi`
  ADD PRIMARY KEY (`idnormal`),
  ADD KEY `idbobot` (`idbobot`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `databobot`
--
ALTER TABLE `databobot`
  ADD CONSTRAINT `databobot_ibfk_1` FOREIGN KEY (`idnilai`) REFERENCES `datanilai` (`idnilai`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `datahasil`
--
ALTER TABLE `datahasil`
  ADD CONSTRAINT `datahasil_ibfk_1` FOREIGN KEY (`idnormal`) REFERENCES `datanormalisasi` (`idnormal`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `datanilai`
--
ALTER TABLE `datanilai`
  ADD CONSTRAINT `datanilai_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `dataguru` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `datanormalisasi`
--
ALTER TABLE `datanormalisasi`
  ADD CONSTRAINT `datanormalisasi_ibfk_1` FOREIGN KEY (`idbobot`) REFERENCES `databobot` (`idbobot`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
