-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 14, 2024 at 05:51 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `AplikasiTA`
--

-- --------------------------------------------------------

--
-- Table structure for table `dataPenerima`
--

CREATE TABLE `dataPenerima` (
  `NIK` varchar(50) NOT NULL,
  `NW` varchar(100) NOT NULL,
  `PB` varchar(100) NOT NULL,
  `JT` varchar(100) NOT NULL,
  `KR` varchar(100) NOT NULL,
  `TR` varchar(100) NOT NULL,
  `BPB` double NOT NULL,
  `BTJ` double NOT NULL,
  `BKR` double NOT NULL,
  `BT` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dataPenerima`
--

INSERT INTO `dataPenerima` (`NIK`, `NW`, `PB`, `JT`, `KR`, `TR`, `BPB`, `BTJ`, `BKR`, `BT`) VALUES
('321476548902', 'Addaw', 'Rp <= 1.500.000/bulan', '4-5 orang', 'Sewa <= 750rb', 'Transportasi Umum', 4, 3, 2, 4),
('327123458765', 'Bubut', 'Rp <= 2.500.000/bulan', '4-5 orang', 'Sewa <= 750rb', '1 Kendaraan Bermotor', 2, 3, 2, 3),
('354154670987', 'Dodo', 'Rp <= 2.500.000/bulan', '4-5 orang', 'Sewa > 750rb', '2 Kendaraan Bermotor', 2, 3, 1, 2),
('354389085678', 'Joey', 'Rp <= 2.000.000/bulan', '6-7 orang', 'Sewa <= 750rb', 'Transportasi Umum', 3, 4, 2, 4),
('376315432456', 'Toni', 'Rp <= 1.500.000/bulan', '1 orang', 'Sewa <= 750rb', '2 Kendaraan Bermotor', 4, 1, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `hasilAkhir`
--

CREATE TABLE `hasilAkhir` (
  `NO` int(11) NOT NULL,
  `NIK` varchar(100) NOT NULL,
  `NW` varchar(100) NOT NULL,
  `NILAI` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hasilAkhir`
--

INSERT INTO `hasilAkhir` (`NO`, `NIK`, `NW`, `NILAI`) VALUES
(1, '321476548902', 'Addaw', 0.925),
(3, '327123458765', 'Bubut', 0.675),
(5, '354154670987', 'Dodo', 0.575),
(2, '354389085678', 'Joey', 0.9000000000000001),
(4, '376315432456', 'Toni', 0.675);

-- --------------------------------------------------------

--
-- Table structure for table `Kriteria`
--

CREATE TABLE `Kriteria` (
  `ID` varchar(10) NOT NULL,
  `namaKriteria` varchar(50) NOT NULL,
  `sifatKriteria` varchar(10) NOT NULL,
  `bobotPreferensi` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Kriteria`
--

INSERT INTO `Kriteria` (`ID`, `namaKriteria`, `sifatKriteria`, `bobotPreferensi`) VALUES
('C1', 'Pendapatan', 'Benefit', 40),
('C2', 'Jumlah Tanggungan', 'Benefit', 30),
('C3', 'Kepemilikan Rumah', 'Benefit', 10),
('C4', 'Transportasi', 'Benefit', 20);

-- --------------------------------------------------------

--
-- Table structure for table `nilaiBobot`
--

CREATE TABLE `nilaiBobot` (
  `NIK` varchar(100) NOT NULL,
  `NW` varchar(100) NOT NULL,
  `BPB` double NOT NULL,
  `BTJ` double NOT NULL,
  `BKR` double NOT NULL,
  `BT` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nilaiBobot`
--

INSERT INTO `nilaiBobot` (`NIK`, `NW`, `BPB`, `BTJ`, `BKR`, `BT`) VALUES
('321476548902', 'Addaw', 4, 3, 2, 4),
('327123458765', 'Bubut', 2, 3, 2, 3),
('354154670987', 'Dodo', 2, 3, 1, 2),
('354389085678', 'Joey', 3, 4, 2, 4),
('376315432456', 'Toni', 4, 1, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `normalisasi`
--

CREATE TABLE `normalisasi` (
  `NIK` varchar(100) NOT NULL,
  `NW` varchar(100) NOT NULL,
  `BPB` double NOT NULL,
  `BTJ` double NOT NULL,
  `BKR` double NOT NULL,
  `BT` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `normalisasi`
--

INSERT INTO `normalisasi` (`NIK`, `NW`, `BPB`, `BTJ`, `BKR`, `BT`) VALUES
('321476548902', 'Addaw', 1, 0.75, 1, 1),
('327123458765', 'Bubut', 0.5, 0.75, 1, 0.75),
('354154670987', 'Dodo', 0.5, 0.75, 0.5, 0.5),
('354389085678', 'Joey', 0.75, 1, 1, 1),
('376315432456', 'Toni', 1, 0.25, 1, 0.5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dataPenerima`
--
ALTER TABLE `dataPenerima`
  ADD PRIMARY KEY (`NIK`);

--
-- Indexes for table `hasilAkhir`
--
ALTER TABLE `hasilAkhir`
  ADD PRIMARY KEY (`NIK`);

--
-- Indexes for table `Kriteria`
--
ALTER TABLE `Kriteria`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `nilaiBobot`
--
ALTER TABLE `nilaiBobot`
  ADD PRIMARY KEY (`NIK`);

--
-- Indexes for table `normalisasi`
--
ALTER TABLE `normalisasi`
  ADD PRIMARY KEY (`NIK`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
