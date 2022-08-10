-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2022 at 10:52 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spp_zibran`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `nama` text NOT NULL,
  `kontak` text NOT NULL,
  `tstamp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `nama`, `kontak`, `tstamp`) VALUES
(2, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin SPP', '+6281332456712', 'tstamp');

-- --------------------------------------------------------

--
-- Table structure for table `resp_hps_adm`
--

CREATE TABLE `resp_hps_adm` (
  `id` int(11) NOT NULL,
  `nama` text NOT NULL,
  `keterangan` text NOT NULL,
  `tstamp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_bayar`
--

CREATE TABLE `tb_bayar` (
  `id` int(11) NOT NULL,
  `nis` text NOT NULL,
  `nama` text NOT NULL,
  `kelas` text NOT NULL,
  `tapel` text NOT NULL,
  `bayar` text NOT NULL,
  `bulan` text NOT NULL,
  `tstamp` text NOT NULL,
  `admin` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_bayar`
--

INSERT INTO `tb_bayar` (`id`, `nis`, `nama`, `kelas`, `tapel`, `bayar`, `bulan`, `tstamp`, `admin`) VALUES
(21, '19120021912', 'Muhamad Zibran F', 'XII', '2020 / 2021', '90000', '12', '20-12-2020 05:59:00 pm', 'Admin SPP'),
(25, '177013', 'Djoko Sandi', 'X', '2020 / 2021', '250000', '12', '20-12-2020 06:51:10 pm', 'Admin SPP'),
(26, '100022929', 'Muhamad Zibran', 'X', '2020 / 2021', '250000', '12', '20-12-2020 06:53:02 pm', 'Admin SPP'),
(35, '12345678', 'V. Tchaivovksy', 'X', '2020 / 2021', '270000', '12', '21-12-2020 10:48:32 am', 'Admin SPP'),
(36, '10001', 'Victor Indra Kususma', 'X', '2020 / 2021', '250.000,00', '08', '07-08-2022 03:18:19 pm', 'Admin SPP'),
(37, '10002', 'Hamdan Hasbullah', 'X', '2020 / 2021', '250.000,00', '08', '07-08-2022 03:27:34 pm', 'Admin SPP'),
(38, '10011', 'Agung Setiawan', 'XII', '2020 / 2021', '90.000,00', '08', '07-08-2022 03:30:58 pm', 'Admin SPP'),
(39, '10006', 'Yoga Saputra', 'XI', '2020 / 2021', '200.000,00', '08', '07-08-2022 03:50:40 pm', 'Admin SPP');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jenis_pembayaran`
--

CREATE TABLE `tb_jenis_pembayaran` (
  `id` int(11) NOT NULL,
  `tapel` text NOT NULL,
  `kelas` text NOT NULL,
  `nominal` text NOT NULL,
  `tstamp` text NOT NULL,
  `admin` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_jenis_pembayaran`
--

INSERT INTO `tb_jenis_pembayaran` (`id`, `tapel`, `kelas`, `nominal`, `tstamp`, `admin`) VALUES
(2, '2020 / 2021', 'X', '250000', '15-12-2020 08:33:13 pm', 'Admin SPP'),
(5, '2020 / 2021', 'XII', '90000', '16-12-2020 08:29:23 am', 'Admin SPP'),
(6, '2020 / 2021', 'XI', '200000', '20-12-2020 06:58:44 pm', 'Admin SPP');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `id` int(11) NOT NULL,
  `kelas` text NOT NULL,
  `tstamp` text NOT NULL,
  `admin` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_kelas`
--

INSERT INTO `tb_kelas` (`id`, `kelas`, `tstamp`, `admin`) VALUES
(2, 'X', '15-12-2020 08:03:06 am', 'Admin SPP'),
(3, 'XI', '16-12-2020 08:27:16 am', 'Admin SPP'),
(4, 'XII', '16-12-2020 08:28:10 am', 'Admin SPP');

-- --------------------------------------------------------

--
-- Table structure for table `tb_prodi`
--

CREATE TABLE `tb_prodi` (
  `id` int(11) NOT NULL,
  `prodi` text NOT NULL COMMENT 'program studi',
  `tstamp` text NOT NULL,
  `admin` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_prodi`
--

INSERT INTO `tb_prodi` (`id`, `prodi`, `tstamp`, `admin`) VALUES
(1, 'IPA', '07-08-2022 03:15:54 pm', 'Admin SPP'),
(3, 'IPS', '07-08-2022 03:16:01 pm', 'Admin SPP'),
(4, 'Bahasa', '07-08-2022 03:16:09 pm', 'Admin SPP');

-- --------------------------------------------------------

--
-- Table structure for table `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `id` int(11) NOT NULL,
  `nis` text NOT NULL,
  `nama` text NOT NULL,
  `kelas` text NOT NULL,
  `prodi` text NOT NULL,
  `tstamp` text NOT NULL,
  `admin` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_siswa`
--

INSERT INTO `tb_siswa` (`id`, `nis`, `nama`, `kelas`, `prodi`, `tstamp`, `admin`) VALUES
(10, '10001', 'Victor Indra Kususma', 'X', 'IPA', '07-08-2022 03:16:25 pm', 'Admin SPP'),
(11, '10002', 'Hamdan Hasbullah', 'X', 'IPA', '07-08-2022 03:16:30 pm', 'Admin SPP'),
(12, '10003', 'Djoko Sandi', 'X', 'IPA', '07-08-2022 03:16:34 pm', 'Admin SPP'),
(13, '10004', 'Muhammad Bakti', 'X', 'IPA', '07-08-2022 03:16:38 pm', 'Admin SPP'),
(14, '10005', 'Burhan Yusuf', 'X', 'IPA', '07-08-2022 03:16:43 pm', 'Admin SPP'),
(16, '10006', 'Yoga Saputra', 'XI', 'IPS', '07-08-2022 03:16:51 pm', 'Admin SPP'),
(17, '10007', 'bayu wijayakusuma', 'XI', 'IPS', '07-08-2022 03:16:55 pm', 'Admin SPP'),
(18, '10008', 'Jihan salsabila', 'XI', 'IPS', '07-08-2022 03:16:59 pm', 'Admin SPP'),
(19, '10009', 'Widya Prastika', 'XI', 'IPS', '07-08-2022 03:17:03 pm', 'Admin SPP'),
(20, '10010', 'Zidan Firmansyah', 'XI', 'IPS', '07-08-2022 03:17:08 pm', 'Admin SPP'),
(21, '10011', 'Agung Setiawan', 'XII', 'Bahasa', '07-08-2022 03:17:14 pm', 'Admin SPP'),
(22, '10012', 'Bagus indra kusuma', 'XII', 'Bahasa', '07-08-2022 03:17:18 pm', 'Admin SPP'),
(23, '10013', 'Putri Indarwati', 'XII', 'Bahasa', '07-08-2022 03:17:24 pm', 'Admin SPP'),
(24, '10014', 'Tegar Bagus Ardiansyah', 'XII', 'Bahasa', '07-08-2022 03:17:29 pm', 'Admin SPP'),
(25, '10015', 'Tristan Bayu Saputra', 'XII', 'Bahasa', '07-08-2022 03:17:33 pm', 'Admin SPP');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tagihan`
--

CREATE TABLE `tb_tagihan` (
  `id` int(11) NOT NULL,
  `nis` text NOT NULL,
  `nama` text NOT NULL,
  `kelas` text NOT NULL,
  `prodi` text NOT NULL,
  `bulan` text NOT NULL,
  `keterangan` text NOT NULL,
  `tstamp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_tagihan`
--

INSERT INTO `tb_tagihan` (`id`, `nis`, `nama`, `kelas`, `prodi`, `bulan`, `keterangan`, `tstamp`) VALUES
(12, '10006', 'Yoga Saputra', 'XI', 'IPS', '08', 'lunas', '07-08-2022 03:10 pm'),
(13, '10007', 'bayu wijayakusuma', 'XI', 'IPS', '-', 'belum lunas', '07-08-2022 03:11 pm'),
(14, '10008', 'Jihan salsabila', 'XI', 'IPS', '-', 'belum lunas', '07-08-2022 03:11 pm'),
(15, '10009', 'Widya Prastika', 'XI', 'IPS', '-', 'belum lunas', '07-08-2022 03:12 pm'),
(16, '10010', 'Zidan Firmansyah', 'XI', 'IPS', '-', 'belum lunas', '07-08-2022 03:12 pm'),
(17, '10011', 'Agung Setiawan', 'XII', 'Bahasa', '08', 'lunas', '07-08-2022 03:12 pm'),
(18, '10012', 'Bagus indra kusuma', 'XII', 'Bahasa', '-', 'belum lunas', '07-08-2022 03:13 pm'),
(19, '10013', 'Putri Indarwati', 'XII', 'Bahasa', '-', 'belum lunas', '07-08-2022 03:14 pm'),
(20, '10014', 'Tegar Bagus Ardiansyah', 'XII', 'Bahasa', '-', 'belum lunas', '07-08-2022 03:14 pm'),
(21, '10015', 'Tristan Bayu Saputra', 'XII', 'Bahasa', '-', 'belum lunas', '07-08-2022 03:15 pm');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tahun_ajaran`
--

CREATE TABLE `tb_tahun_ajaran` (
  `id` int(11) NOT NULL,
  `tapel` text NOT NULL,
  `tstamp` text NOT NULL,
  `admin` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_tahun_ajaran`
--

INSERT INTO `tb_tahun_ajaran` (`id`, `tapel`, `tstamp`, `admin`) VALUES
(3, '2020 / 2021', '15-12-2020 06:52:40 pm', 'Admin SPP'),
(4, '2019 / 2020', '15-12-2020 06:56:31 pm', 'Admin SPP');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tapel`
--

CREATE TABLE `tb_tapel` (
  `id` int(11) NOT NULL,
  `tapel` int(11) NOT NULL COMMENT 'tahun pelajaran',
  `tstamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resp_hps_adm`
--
ALTER TABLE `resp_hps_adm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_bayar`
--
ALTER TABLE `tb_bayar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_jenis_pembayaran`
--
ALTER TABLE `tb_jenis_pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_prodi`
--
ALTER TABLE `tb_prodi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_tagihan`
--
ALTER TABLE `tb_tagihan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_tahun_ajaran`
--
ALTER TABLE `tb_tahun_ajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_tapel`
--
ALTER TABLE `tb_tapel`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `resp_hps_adm`
--
ALTER TABLE `resp_hps_adm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_bayar`
--
ALTER TABLE `tb_bayar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tb_jenis_pembayaran`
--
ALTER TABLE `tb_jenis_pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_prodi`
--
ALTER TABLE `tb_prodi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tb_tagihan`
--
ALTER TABLE `tb_tagihan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tb_tahun_ajaran`
--
ALTER TABLE `tb_tahun_ajaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_tapel`
--
ALTER TABLE `tb_tapel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
