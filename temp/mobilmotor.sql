-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2018 at 05:51 PM
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

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('0f3n43u4gbpoi0g6s7f3ft2oho5afl4d', '::1', 1515725589, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353732353538393b),
('0ib1t2bmsd5icn9a1un7j4vn2j2g9sso', '::1', 1515754037, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353735343031353b6c6f67696e7c623a313b757365727c733a3139323a223839636135613762356561663065653636373937623938356231353066373030313930346432376636316661363437663438396633303261623134373932336332373139323565353334316432323830333532323334623038383534626539363531633135353935333733313364333164653866643430656232646330383837536d372f57464171466137575a734a4c6f44744b737a523173514c76387779755a504251493350463075773464416764414d497a4a6e31535959343576326e53223b6c6576656c7c733a3137323a2261663961643233363236393334363039323734353938653130393137663830363439656138613032366531666262373535626532353538313635383536363261343864353333663935633965623863336534646639646235613230306437393166313030646138646561356637393632393362616464623564613131663532394264642f34376941474f5239737055657279696a4a75676d785438674441614e664e543851556a477233493d223b),
('0tba5o258l29t6ipf7d1ok7n81921f0g', '::1', 1515641802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353634313830323b),
('1438lcc4v03i7b53khtdj9jr8mok9rbo', '::1', 1515643279, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353634333237393b),
('17n596d7mkpc880fg5sab9ns80kbqepe', '::1', 1515741207, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353734313230373b),
('35u52oise04290kithtlgu0q27p386qo', '::1', 1515753268, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353735333236383b),
('3897r8rolbg1uk8fnsqdir5po1cmhv85', '::1', 1515736798, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353733363739383b),
('3qd21f86nal24v8su1ojkqr95qlvukfp', '::1', 1515643312, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353634333237393b),
('4ftsne4qr0ehvb0luhj5v32alu8295jt', '::1', 1515745005, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353734353030353b),
('4ucb9vgn0sblgkiq13orgjdotq0n49pl', '::1', 1515642632, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353634323633323b),
('4ufaraimsp17oriv9me4es0l4q4o9683', '::1', 1515570730, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353537303733303b),
('7bor85ovfjvp8l5cp5rqlem6fm53e2er', '::1', 1515745356, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353734353335363b),
('804tfh5koumn157qp92b8pkfap2uaoib', '::1', 1515570420, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353537303432303b),
('85rj6vsmchgjc46146m4202cthvln0is', '::1', 1515737731, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353733373733313b),
('9p5uck1q432v7u89vpgo7262e8qmr9m6', '::1', 1515727745, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353732373734353b),
('9r8gt49d187b5mnl9isfd762d1tpa12n', '::1', 1515743535, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353734333533353b),
('9s4sn5tkenlune36rn6oe61k8ket63nm', '::1', 1515726407, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353732363430373b),
('ci7leu89ofhecge40f3jf5nv4tk7ib4a', '::1', 1515642951, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353634323935313b),
('efj8ojn113g5d8klk89q0bu72t7an43m', '::1', 1515740536, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353734303533363b),
('fjlfqp3n8e2dav1ocalnvau6tks6g81m', '::1', 1515754014, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353735343031343b6c6f67696e7c623a313b757365727c733a3139323a226536336431633865663838376532353333316130333563386330343835643536363765623035353537626334313138303731643739353365343431343336613161623366633731633863633262656537636438613531653232363238326337623937623630313361333638353839643565633763653330613938393537616362536630416b3548443030334264636a4d5175384c386c7836746339356e54586b48722b435a7078704a54486c6563503756432f544f37384a6862584b46593051223b6c6576656c7c733a3137323a2235303436313762656332613631656239313264333933353966343163623635643236663038346461646463623237343333333539633965373333363164623834306364366438636237613639363831396339643937623330636364393737383539643162326263353934323432323164393830393137363861663562326339635774744a7867315254456e635146356b69554e2f4432464b697a466a486c4f426252634367717837554c513d223b),
('h89m6rtnstvsi9559fdvlhs549988j30', '::1', 1515729755, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353732393735353b),
('hvqu0a9lam9onj0il4ls6msr4rfcmo0c', '::1', 1515741756, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353734313735363b),
('k4tkk0as2h59udmuc06qta6jq38ap8nj', '::1', 1515727151, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353732373135313b),
('n1frj1okamtu9m10t9dpbm3sgvj9gk98', '::1', 1515570735, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353537303733303b),
('oc9huc9bkeul7v9r336bp3msdbll2tfh', '::1', 1515744186, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353734343138363b),
('qj550u5t54uf068nr6m0u1t6ijt8rpl6', '::1', 1515751831, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353735313833313b),
('qnr6ta62k0rmg1qta6jmojqosfnv2gsp', '::1', 1515752884, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353735323838343b),
('qvpj32qobo37dgfcolpkhpabuu5762k0', '::1', 1515743151, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353734333135313b),
('rra88j7q7o0pb3rbldqlga1h5d6nf5f3', '::1', 1515726754, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353732363735343b),
('sf4sre61jg3tbs2tqpp6kgvssd0gsojo', '::1', 1515642168, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353634323136383b),
('u6tvnegg9c5igfmmvjejj3rdlku9h3b4', '::1', 1515641484, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353634313438343b),
('ujo3n2ats6l7e9citaob5fga10a1bqg2', '::1', 1515753621, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353735333632313b),
('ulnmqlarut7htptfodh4ni9lcb06pvq6', '::1', 1515742223, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353734323232333b),
('va5m3c773umrbbfm8qgj1ea4dvq7jhb6', '::1', 1515750897, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353735303839373b),
('vu63888aber8gbbg35n951itccabp2kj', '::1', 1515752325, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353735323332353b);

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

--
-- Dumping data for table `config_email`
--

INSERT INTO `config_email` (`email_id`, `category`, `smtp_user`, `smtp_pass`, `smtp_host`, `smtp_crypto`, `smtp_port`, `smtp_timeout`, `protocol`, `mailtype`, `charset`, `status`) VALUES
(1, 'N', 'reporting@mandirifinance.com', 'mfiamggroup2017', 'mail.mandirifinance.com', '', '587', '3', 'smtp', 'html', 'utf-8', '1');

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
  `fs_tipe` varchar(20) NOT NULL,
  `fs_aktif` enum('1','0') NOT NULL DEFAULT '0',
  `fd_tanggal_buat` datetime NOT NULL,
  `fd_tanggal_aktif` datetime NOT NULL,
  `fs_ip_address` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tm_user`
--

INSERT INTO `tm_user` (`fs_email`, `fs_password`, `fs_tipe`, `fs_aktif`, `fd_tanggal_buat`, `fd_tanggal_aktif`, `fs_ip_address`) VALUES
('indra@ide.web.id', '5d5d1387f517a206626fe8ee5ee637e2', 'individu', '1', '2018-01-12 15:21:23', '2018-01-12 15:22:36', '::1');

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
