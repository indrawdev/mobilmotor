-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2018 at 06:10 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mobilmotor`
--

-- --------------------------------------------------------

--
-- Table structure for table `captcha`
--

CREATE TABLE `captcha` (
  `captcha_id` bigint(13) UNSIGNED NOT NULL,
  `captcha_time` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `word` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `config_email`
--

CREATE TABLE `config_email` (
  `email_id` int(1) NOT NULL,
  `category` varchar(1) NOT NULL,
  `smtp_user` varchar(50) NOT NULL,
  `smtp_pass` varchar(30) NOT NULL,
  `smtp_host` varchar(50) NOT NULL,
  `smtp_crypto` varchar(10) NOT NULL,
  `smtp_port` varchar(5) NOT NULL,
  `smtp_timeout` varchar(1) NOT NULL,
  `protocol` varchar(4) NOT NULL,
  `mailtype` varchar(8) DEFAULT NULL,
  `charset` varchar(8) NOT NULL,
  `status` set('1','0') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tb_log`
--

CREATE TABLE `tb_log` (
  `log_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_name` varchar(25) NOT NULL,
  `log_user` varchar(15) NOT NULL,
  `log_message` varchar(220) NOT NULL,
  `ip_address` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tm_area`
--

CREATE TABLE `tm_area` (
  `fs_kode_area` varchar(5) NOT NULL,
  `fs_kode_lokasi` varchar(5) NOT NULL,
  `fs_nama_area` varchar(45) NOT NULL,
  `fd_tanggal_buat` datetime NOT NULL,
  `fs_user_buat` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tm_counter`
--

CREATE TABLE `tm_counter` (
  `fs_jenis` varchar(5) NOT NULL,
  `fs_prefix` varchar(3) NOT NULL,
  `fn_counter` decimal(7,0) NOT NULL,
  `fd_tanggal_buat` datetime NOT NULL,
  `fs_user_buat` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tm_kota`
--

CREATE TABLE `tm_kota` (
  `fs_kode_kota` varchar(5) NOT NULL,
  `fs_kode_area` varchar(5) NOT NULL,
  `fs_kode_lokasi` varchar(5) NOT NULL,
  `fs_nama_kota` varchar(45) NOT NULL,
  `fd_tanggal_buat` datetime NOT NULL,
  `fs_user_buat` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tm_lokasi`
--

CREATE TABLE `tm_lokasi` (
  `fs_kode_lokasi` varchar(5) NOT NULL,
  `fs_nama_lokasi` varchar(45) NOT NULL,
  `fd_tanggal_buat` datetime NOT NULL,
  `fs_user_buat` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tm_merk`
--

CREATE TABLE `tm_merk` (
  `fs_kode_merk` varchar(5) NOT NULL,
  `fs_nama_merk` varchar(45) NOT NULL,
  `fd_tanggal_buat` datetime NOT NULL,
  `fs_tipe` varchar(5) NOT NULL,
  `fs_user_buat` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tm_model`
--

CREATE TABLE `tm_model` (
  `fs_kode_model` varchar(5) NOT NULL,
  `fs_kode_merk` varchar(5) NOT NULL,
  `fs_nama_merk` varchar(45) NOT NULL,
  `fd_tanggal_buat` datetime NOT NULL,
  `fs_user_buat` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tm_profil`
--

CREATE TABLE `tm_profil` (
  `fs_email` varchar(25) NOT NULL,
  `fs_nama_awal` varchar(35) NOT NULL,
  `fs_nama_akhir` varchar(35) NOT NULL,
  `fs_nomor_ktp` varchar(18) NOT NULL,
  `fs_nomor_hp1` varchar(15) NOT NULL,
  `fs_nomor_hp2` varchar(15) DEFAULT NULL,
  `fs_nomor_wa` varchar(15) DEFAULT NULL,
  `fs_pin_bb` varchar(10) DEFAULT NULL,
  `fb_panggilan` enum('1','0') NOT NULL DEFAULT '0',
  `fb_sms` enum('1','0') NOT NULL DEFAULT '0',
  `fb_email` enum('1','0') NOT NULL DEFAULT '0',
  `fb_wa` enum('1','0') NOT NULL DEFAULT '0',
  `fb_bbm` enum('1','0') NOT NULL,
  `fd_tanggal_buat` datetime NOT NULL,
  `fs_user_buat` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tm_referensi`
--

CREATE TABLE `tm_referensi` (
  `fs_kode_referensi` varchar(20) NOT NULL,
  `fs_nilai1_referensi` varchar(15) NOT NULL,
  `fs_nilai2_referensi` varchar(15) NOT NULL,
  `fs_nama_referensi` varchar(50) NOT NULL,
  `fd_tanggal_buat` datetime NOT NULL,
  `fs_user_buat` varchar(25) NOT NULL,
  `fd_tanggal_edit` datetime NOT NULL,
  `fs_user_edit` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tm_user`
--

CREATE TABLE `tm_user` (
  `fs_email` varchar(45) NOT NULL,
  `fs_password` varchar(45) NOT NULL,
  `fs_aktif` enum('1','0') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tx_detail_iklan_daerah`
--

CREATE TABLE `tx_detail_iklan_daerah` (
  `fs_kode_iklan` varchar(5) NOT NULL,
  `fs_nama_lokasi` varchar(25) NOT NULL,
  `fs_nama_area` varchar(25) NOT NULL,
  `fs_nama_kota` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tx_detail_iklan_photo`
--

CREATE TABLE `tx_detail_iklan_photo` (
  `fs_kode_iklan` varchar(5) NOT NULL,
  `fs_upload_photo` varchar(35) NOT NULL,
  `fd_tanggal_buat` datetime NOT NULL,
  `fs_user_buat` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tx_detail_iklan_spesifikasi`
--

CREATE TABLE `tx_detail_iklan_spesifikasi` (
  `fs_kode_iklan` varchar(5) NOT NULL,
  `fs_tipe_kendaraan` varchar(45) DEFAULT NULL,
  `fs_merek_kendaraan` varchar(45) DEFAULT NULL,
  `fs_model_kendaraan` varchar(45) DEFAULT NULL,
  `fs_varian_kendaraan` varchar(45) DEFAULT NULL,
  `fd_tanggal_buat` datetime NOT NULL,
  `fs_user_buat` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tx_iklan_mobil`
--

CREATE TABLE `tx_iklan_mobil` (
  `fs_kode_iklan` varchar(6) NOT NULL,
  `fs_kode_merk` varchar(5) NOT NULL,
  `fs_kode_model` varchar(5) NOT NULL,
  `fn_tahun` int(4) NOT NULL,
  `fs_transmisi` varchar(5) NOT NULL,
  `fs_kapasitas_mesin` varchar(5) NOT NULL,
  `fs_jarak_tempuh` varchar(5) NOT NULL,
  `fs_warna` varchar(5) NOT NULL,
  `fn_harga_jual` decimal(10,0) NOT NULL,
  `fs_judul` varchar(45) NOT NULL,
  `fs_deskripsi` text,
  `fd_tanggal_buat` datetime NOT NULL,
  `fs_user_buat` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tx_iklan_motor`
--

CREATE TABLE `tx_iklan_motor` (
  `fs_kode_iklan` varchar(6) NOT NULL,
  `fs_kode_merk` varchar(5) NOT NULL,
  `fs_kode_model` varchar(5) NOT NULL,
  `fn_tahun` int(4) NOT NULL,
  `fs_transmisi` varchar(5) NOT NULL,
  `fs_kapasitas_mesin` varchar(5) NOT NULL,
  `fs_jarak_tempuh` varchar(5) NOT NULL,
  `fs_warna` varchar(5) NOT NULL,
  `fn_harga_jual` decimal(10,0) NOT NULL,
  `fs_judul` varchar(45) NOT NULL,
  `fs_deskripsi` text,
  `fd_tanggal_buat` datetime NOT NULL,
  `fs_user_buat` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `captcha`
--
ALTER TABLE `captcha`
  ADD PRIMARY KEY (`captcha_id`),
  ADD KEY `word` (`word`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `config_email`
--
ALTER TABLE `config_email`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `tb_log`
--
ALTER TABLE `tb_log`
  ADD PRIMARY KEY (`log_time`);

--
-- Indexes for table `tm_area`
--
ALTER TABLE `tm_area`
  ADD PRIMARY KEY (`fs_kode_area`);

--
-- Indexes for table `tm_counter`
--
ALTER TABLE `tm_counter`
  ADD PRIMARY KEY (`fs_jenis`);

--
-- Indexes for table `tm_kota`
--
ALTER TABLE `tm_kota`
  ADD PRIMARY KEY (`fs_kode_kota`);

--
-- Indexes for table `tm_lokasi`
--
ALTER TABLE `tm_lokasi`
  ADD PRIMARY KEY (`fs_kode_lokasi`);

--
-- Indexes for table `tm_merk`
--
ALTER TABLE `tm_merk`
  ADD PRIMARY KEY (`fs_kode_merk`);

--
-- Indexes for table `tm_model`
--
ALTER TABLE `tm_model`
  ADD PRIMARY KEY (`fs_kode_model`);

--
-- Indexes for table `tm_profil`
--
ALTER TABLE `tm_profil`
  ADD PRIMARY KEY (`fs_email`);

--
-- Indexes for table `tm_referensi`
--
ALTER TABLE `tm_referensi`
  ADD PRIMARY KEY (`fs_kode_referensi`,`fs_nilai1_referensi`);

--
-- Indexes for table `tm_user`
--
ALTER TABLE `tm_user`
  ADD PRIMARY KEY (`fs_email`);

--
-- Indexes for table `tx_iklan_mobil`
--
ALTER TABLE `tx_iklan_mobil`
  ADD PRIMARY KEY (`fs_kode_iklan`);

--
-- Indexes for table `tx_iklan_motor`
--
ALTER TABLE `tx_iklan_motor`
  ADD PRIMARY KEY (`fs_kode_iklan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `captcha`
--
ALTER TABLE `captcha`
  MODIFY `captcha_id` bigint(13) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
