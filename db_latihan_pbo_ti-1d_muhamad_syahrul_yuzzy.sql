-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 11, 2026 at 11:36 AM
-- Server version: 8.0.44
-- PHP Version: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_latihan_pbo_ti-1d_muhamad_syahrul_yuzzy`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_tiket`
--

CREATE TABLE `tabel_tiket` (
  `id_tiket` int NOT NULL,
  `nama_film` varchar(100) NOT NULL,
  `jadwal_tayang` datetime NOT NULL,
  `jumlah_kursi` int NOT NULL,
  `harga_dasar_tiket` decimal(10,2) NOT NULL,
  `jenis_studio` enum('Regular','IMAX','Velvet') NOT NULL,
  `tipe_audio` varchar(30) DEFAULT NULL,
  `lokasi_baris` char(2) DEFAULT NULL,
  `kacamata_3d_id` varchar(50) DEFAULT NULL,
  `efek_gerak_fitur` tinyint(1) DEFAULT NULL,
  `bantal_selimut_pack` tinyint(1) DEFAULT NULL,
  `layanan_butler` tinyint(1) DEFAULT NULL
) ;

--
-- Dumping data for table `tabel_tiket`
--

INSERT INTO `tabel_tiket` (`id_tiket`, `nama_film`, `jadwal_tayang`, `jumlah_kursi`, `harga_dasar_tiket`, `jenis_studio`, `tipe_audio`, `lokasi_baris`, `kacamata_3d_id`, `efek_gerak_fitur`, `bantal_selimut_pack`, `layanan_butler`) VALUES
(1, 'Dune: Part Two', '2025-08-01 13:00:00', 120, 50000.00, 'Regular', 'Stereo', NULL, NULL, NULL, NULL, NULL),
(2, 'Deadpool 3', '2025-08-01 15:30:00', 120, 50000.00, 'Regular', 'Stereo', NULL, NULL, NULL, NULL, NULL),
(3, 'Inside Out 2', '2025-08-02 10:00:00', 120, 45000.00, 'Regular', 'Stereo', NULL, NULL, NULL, NULL, NULL),
(4, 'Kung Fu Panda 4', '2025-08-02 12:15:00', 120, 45000.00, 'Regular', 'Stereo', NULL, NULL, NULL, NULL, NULL),
(5, 'John Wick 4', '2025-08-03 18:00:00', 120, 55000.00, 'Regular', 'Dolby Digital', NULL, NULL, NULL, NULL, NULL),
(6, 'The Fall Guy', '2025-08-03 20:45:00', 120, 55000.00, 'Regular', 'Dolby Digital', NULL, NULL, NULL, NULL, NULL),
(7, 'Furiosa', '2025-08-04 14:20:00', 120, 50000.00, 'Regular', 'Stereo', NULL, NULL, NULL, NULL, NULL),
(8, 'Garfield Movie', '2025-08-04 16:30:00', 120, 45000.00, 'Regular', 'Stereo', NULL, NULL, NULL, NULL, NULL),
(9, 'Oppenheimer', '2025-08-01 19:00:00', 90, 150000.00, 'IMAX', 'IMAX 12-ch', NULL, 'IMAX3D-101', 1, NULL, NULL),
(10, 'Dune: Part Two', '2025-08-02 19:30:00', 90, 160000.00, 'IMAX', 'IMAX 12-ch', NULL, 'IMAX3D-102', 1, NULL, NULL),
(11, 'Top Gun: Maverick', '2025-08-03 20:00:00', 90, 140000.00, 'IMAX', 'IMAX 12-ch', NULL, NULL, 1, NULL, NULL),
(12, 'Interstellar (Re-release)', '2025-08-04 21:00:00', 90, 155000.00, 'IMAX', 'IMAX 12-ch', NULL, NULL, 1, NULL, NULL),
(13, 'Avatar: The Way of Water', '2025-08-05 18:30:00', 90, 170000.00, 'IMAX', 'IMAX 12-ch', NULL, 'IMAX3D-103', 1, NULL, NULL),
(14, 'The Batman', '2025-08-05 21:15:00', 90, 145000.00, 'IMAX', 'IMAX 12-ch', NULL, NULL, 0, NULL, NULL),
(15, 'The Lion King (Live Action)', '2025-08-01 15:00:00', 30, 275000.00, 'Velvet', NULL, 'C3', NULL, NULL, 1, 1),
(16, 'Barbie', '2025-08-01 18:30:00', 30, 260000.00, 'Velvet', NULL, 'B2', NULL, NULL, 1, 1),
(17, 'Wonka', '2025-08-02 14:00:00', 30, 250000.00, 'Velvet', NULL, 'A1', NULL, NULL, 1, 1),
(18, 'Mufasa: The Lion King', '2025-08-03 20:00:00', 30, 280000.00, 'Velvet', NULL, 'D4', NULL, NULL, 1, 1),
(19, 'Priscilla', '2025-08-04 16:45:00', 30, 240000.00, 'Velvet', NULL, 'E5', NULL, NULL, 1, 0),
(20, 'A Quiet Place: Day One', '2025-08-05 19:15:00', 30, 265000.00, 'Velvet', NULL, 'F6', NULL, NULL, 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_tiket`
--
ALTER TABLE `tabel_tiket`
  ADD PRIMARY KEY (`id_tiket`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_tiket`
--
ALTER TABLE `tabel_tiket`
  MODIFY `id_tiket` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
