-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2019 at 09:16 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbratujawa`
--

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `no_hp` int(12) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `no_hp`, `nama`, `username`, `email`, `alamat`, `password`) VALUES
(2, 10, 'Rizal', 'member', 'rizal@gmail.com', 'cangak', 'caf1a3dfb505ffed0d024130f58c5cfa'),
(3, 98, 'Rizal', 'qq', 'aaa@gmail.com', 'cangak', '202cb962ac59075b964b07152d234b70'),
(21, 811, 'Aldisi', 'aldisi', 'aldisi@gmail.com', 'Sragi', '202cb962ac59075b964b07152d234b70'),
(22, 2147483647, 'Aldisi Hasan', 'aldisihasan', 'aldisihasan@gmail.com', 'Tegalontar Sragi', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `tbadmin`
--

CREATE TABLE `tbadmin` (
  `id_admin` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbadmin`
--

INSERT INTO `tbadmin` (`id_admin`, `nama`, `username`, `password`) VALUES
('123', 'Admin', 'Admin', '21232f297a57a5a743894a0e4a801fc3'),
('321', 'Admin', 'admin', 'asd');

-- --------------------------------------------------------

--
-- Table structure for table `tb_boking`
--

CREATE TABLE `tb_boking` (
  `id_boking` char(12) NOT NULL,
  `tanggal` date NOT NULL,
  `id_member` int(11) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(14) NOT NULL,
  `email` varchar(50) NOT NULL,
  `keterangan_item` varchar(50) NOT NULL,
  `status_aktif` enum('0','1','2','3') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_boking`
--

INSERT INTO `tb_boking` (`id_boking`, `tanggal`, `id_member`, `nama_lengkap`, `alamat`, `no_hp`, `email`, `keterangan_item`, `status_aktif`) VALUES
('201908070001', '2019-08-31', 2, 'Hasan', 'Tegalontar', '897878', 'aaa@gmail.com', 'aaa', '2'),
('201908070002', '2019-08-09', 2, 'Siembah', 'Kuburan', '2147483647', 'simbah@gmail.com', 'wq', '2'),
('201908070003', '2019-08-17', 2, 'rizal', 'cangak', '897878', 'aaa@gmail.com', 'a', '2'),
('201908070004', '2019-08-17', 2, 'rizal', 'cangak', '897878', 'aaa@gmail.com', 'a', '2'),
('201908070006', '2019-08-22', 2, 'aaaaa', '', '0', '', '', '2'),
('201908070007', '2019-08-22', 2, 'rizal', '', '0', '', 'Tidak ada', '2'),
('201908070008', '2019-08-22', 2, 'rizal', '', '0', '', 'Tidak ada', '2'),
('201908070009', '2019-08-22', 2, 'rizal', '', '0', '', 'Tidak ada', '2'),
('201908070010', '2019-08-30', 2, 'Siembah', '', '0', '', 'kk', '2'),
('201908070011', '2019-08-29', 2, 'aaaaa', '', '0', '', '', '2'),
('201908070012', '2019-08-28', 2, '', '', '0', '', '', '2'),
('201908070013', '2019-08-28', 2, 'Rizal', '', '0', 'simbah@gmail.com', '', '2'),
('201908070014', '2019-08-28', 2, 'Rizal', '', '0', 'simbah@gmail.com', '', '2'),
('201908070015', '2019-08-28', 2, 'bbb', '', '0', '', '', '2'),
('201908070016', '2019-08-28', 2, 'bbb', '', '0', '', '', '2'),
('201908070017', '2019-08-28', 2, 'mmm', '', '0', '', '', '2'),
('201908070018', '2019-08-28', 2, 'mmm', '', '0', '', '', '0'),
('201908070019', '2019-08-28', 2, '', '', '0', '', '', '2'),
('201908070020', '2019-08-28', 2, '', '', '0', '', '', '2'),
('201908070021', '2019-08-28', 2, '', '', '0', '', '', '2'),
('201908070022', '2019-08-28', 2, '', '', '0', '', '', '2'),
('201908070023', '2019-08-28', 2, '', '', '0', '', '', '2'),
('201908070024', '2019-08-28', 2, '', '', '0', '', '', '2'),
('201908070025', '2019-08-28', 2, '', '', '0', '', '', '2'),
('201908140001', '2019-08-23', 22, 'Aldisi Hasan', 'RT.01/RW.02 Ds.Tegalontar, Kec.Sragi', '085293962044', 'aldisihasan@gmail.com', 'Tidak ada', '2'),
('201908140002', '2019-08-23', 22, 'Aldisi Hasan', 'RT.01/RW.02 Ds.Tegalontar, Kec.Sragi', '085293962044', 'aldisihasan@gmail.com', 'Tidak ada', '0'),
('201908140003', '2019-08-23', 22, '', '', '', '', '', '2'),
('201908140004', '2019-08-23', 22, '', '', '', '', '', '0'),
('201908140005', '2019-08-14', 22, '', '', '', '', '', '0'),
('201908140006', '2019-08-14', 22, '', '', '', '', '', '0'),
('201908140007', '2019-08-14', 22, '', '', '', '', '', '0'),
('201908150001', '2019-08-29', 3, 'Aldisi Hasan', 'RT.01/RW.02 Ds.Tegalontar, Kec.Sragi', '085293962044', 'aldisihasan@gmail.com', 'Tidak ada', '0'),
('201908200001', '2019-08-24', 3, 'Aldisi Hasan', 'RT.01/RW.02 Ds.Tegalontar, Kec.Sragi', '085293962044', 'aldisihasan@gmail.com', '', '0'),
('201908220001', '2020-01-02', 22, 'Hakim', 'RT.01/RW.02 Kec.Doro', '085293962044', 'aldisihasan@gmail.com', 'Tidak ada', '2');

-- --------------------------------------------------------

--
-- Table structure for table `tb_detail_booking`
--

CREATE TABLE `tb_detail_booking` (
  `id_detail` int(11) NOT NULL,
  `id_booking` char(12) NOT NULL,
  `id_item` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_detail_booking`
--

INSERT INTO `tb_detail_booking` (`id_detail`, `id_booking`, `id_item`) VALUES
(51, '201908070001', 46),
(52, '201908070001', 48),
(53, '201908070001', 49),
(54, '201908070002', 42),
(55, '201908070003', 44),
(57, '201908070007', 43),
(58, '201908070008', 43),
(59, '201908070009', 48),
(60, '201908070010', 42),
(61, '201908070011', 42),
(62, '201908070012', 42),
(63, '201908070013', 44),
(64, '201908070014', 44),
(65, '201908070015', 42),
(66, '201908070016', 42),
(67, '201908070017', 42),
(68, '201908070019', 43),
(69, '201908070020', 43),
(70, '201908070021', 42),
(71, '201908070022', 42),
(72, '201908070023', 42),
(73, '201908070024', 43),
(74, '201908070025', 43),
(75, '201908140001', 42),
(76, '201908140001', 47),
(77, '201908140003', 42),
(78, '201908140003', 43),
(79, '201908150001', 43),
(80, '201908200001', 42),
(81, '201908200001', 47),
(82, '201908220001', 48),
(83, '201908220001', 50);

-- --------------------------------------------------------

--
-- Table structure for table `tb_galeri`
--

CREATE TABLE `tb_galeri` (
  `id_galeri` int(4) NOT NULL,
  `judul_galeri` varchar(32) NOT NULL,
  `keterangan` text NOT NULL,
  `foto_galeri` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_galeri`
--

INSERT INTO `tb_galeri` (`id_galeri`, `judul_galeri`, `keterangan`, `foto_galeri`) VALUES
(20, 'Gaun Biru', '', '1112890243.jpg'),
(21, 'Rias', '', '474764256.jpg'),
(22, 'Couple Putih', '', '410009375.jpg'),
(23, 'Couple Hitam', '', '151364122.jpg'),
(25, 'Couple Hitam', '', '1138144151.jpg'),
(26, 'Contoh Rias', '', '202027751.jpg'),
(27, 'Contoh Rias', '', '553285845.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_item`
--

CREATE TABLE `tb_item` (
  `id_item` int(11) NOT NULL,
  `nama_pelayanan` varchar(50) NOT NULL,
  `nama_item` varchar(50) NOT NULL,
  `harga_item` double NOT NULL,
  `deskripsi` text NOT NULL,
  `cover_item` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_item`
--

INSERT INTO `tb_item` (`id_item`, `nama_pelayanan`, `nama_item`, `harga_item`, `deskripsi`, `cover_item`) VALUES
(42, 'Paket', 'Silver A', 17500000, 'Make Up 2 mempelai,\r\nRias Jilbab, resepsi,\r\nMake up kedua orang tua mempelai,\r\n2x ganti baju resepsi,\r\nMake up domas 4 dan baju,\r\nPaket baju ratu jawa untuk kedua mempelai,\r\nPelamian luar panjang 9 meter sd 12 meter,\r\nDekorasi dalam rumah,\r\nDekorasi kamar pengantin,\r\nDekorasi pintu masuk,\r\nPranoto coro,\r\nPaket foto album,\r\nVidio shoting exclusiv 1 camera,\r\n2 sett layos SBY VIP+1 sett layos,\r\nSound system,\r\nHiburan lesehan single,\r\ndll', '18231229.jpg'),
(43, 'Paket', 'Gold A', 25800000, 'Make Up 2 mempelai,\r\nRias midodareni, Ijab, resepsi dan balek kloso,\r\nMake up kedua orang tua mempelai,\r\n2x ganti baju resepsi,\r\nMake up domas 4 dan baju,\r\nPaket baju ratu jawa untuk kedua mempelai,\r\nPelamian luar panjang 9 meter sd 12 meter,\r\nDekorasi dalam rumah,\r\nDekorasi kamar pengantin,\r\nDekorasi pintu masuk,\r\nPranoto coro,\r\nPaket foto album,\r\nVidio shoting exclusiv 1 camera,\r\n3 sett layos SBY VIP+1 sett layos,\r\nSound system 2 hari 2 malam,\r\nHiburan lesehan single,\r\ndll', '1994425892.jpg'),
(44, 'Tambahan', 'Layos', 500000, 'Model luar', '1901837114.jpg'),
(45, 'Tambahan', 'Dekorasi Pelaminan', 500000, 'Eropa', '927656333.jpg'),
(46, 'Tambahan', 'Alat catering', 800000, 'Umum', '742898086.jpg'),
(47, 'Tambahan', 'Rias', 200000, '', '585870547.jpg'),
(48, 'Paket', 'Silver B', 0, '', '45172620.jpg'),
(49, 'Paket', 'Silver B', 500000, '', '2005674755.jpg'),
(50, 'Tambahan', 'Rias', 200000, '', '1515293446.jpg'),
(51, 'Tambahan', 'Bunga', 100000, '', '1066195655.jpg'),
(52, 'Tambahan', 'Bunga', 100000, '', '1694618080.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_keranjang`
--

CREATE TABLE `tb_keranjang` (
  `id_keranjang` int(11) NOT NULL,
  `id_member` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `status_aktif` enum('0','1','2','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_profil`
--

CREATE TABLE `tb_profil` (
  `id_profil` int(11) NOT NULL,
  `nama_perusahaan` varchar(50) NOT NULL,
  `nama_pemilik` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_telepon` varchar(14) NOT NULL,
  `fb` varchar(50) NOT NULL,
  `ig` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_profil`
--

INSERT INTO `tb_profil` (`id_profil`, `nama_perusahaan`, `nama_pemilik`, `alamat`, `email`, `no_telepon`, `fb`, `ig`, `deskripsi`) VALUES
(1, 'RATU JAWA Wedding Organizer', 'LIA FAULINA', 'DESA SUKOSARI KECAMATAN KARANGANYAR KABUPATEN PEKALONGAN (Gang Sebelah Timur Pom Bensin Karanganyar )', 'ratujawa@gmail.com', '085641786669', 'Ratu Jawa', 'ratu_jawa_wedding_decoration', 'Ratu Jawa adalah jasa pernikahan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `tbadmin`
--
ALTER TABLE `tbadmin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tb_boking`
--
ALTER TABLE `tb_boking`
  ADD PRIMARY KEY (`id_boking`),
  ADD KEY `id_member` (`id_member`);

--
-- Indexes for table `tb_detail_booking`
--
ALTER TABLE `tb_detail_booking`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `fk_item_cetak` (`id_item`),
  ADD KEY `fk_boking` (`id_booking`);

--
-- Indexes for table `tb_galeri`
--
ALTER TABLE `tb_galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indexes for table `tb_item`
--
ALTER TABLE `tb_item`
  ADD PRIMARY KEY (`id_item`);

--
-- Indexes for table `tb_keranjang`
--
ALTER TABLE `tb_keranjang`
  ADD PRIMARY KEY (`id_keranjang`),
  ADD KEY `fk_barang` (`id_item`),
  ADD KEY `fk_member` (`id_member`);

--
-- Indexes for table `tb_profil`
--
ALTER TABLE `tb_profil`
  ADD PRIMARY KEY (`id_profil`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tb_detail_booking`
--
ALTER TABLE `tb_detail_booking`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `tb_galeri`
--
ALTER TABLE `tb_galeri`
  MODIFY `id_galeri` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tb_item`
--
ALTER TABLE `tb_item`
  MODIFY `id_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `tb_keranjang`
--
ALTER TABLE `tb_keranjang`
  MODIFY `id_keranjang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `tb_profil`
--
ALTER TABLE `tb_profil`
  MODIFY `id_profil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_boking`
--
ALTER TABLE `tb_boking`
  ADD CONSTRAINT `fk_memberzz` FOREIGN KEY (`id_member`) REFERENCES `member` (`id_member`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_detail_booking`
--
ALTER TABLE `tb_detail_booking`
  ADD CONSTRAINT `fk_boking` FOREIGN KEY (`id_booking`) REFERENCES `tb_boking` (`id_boking`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_item_cetak` FOREIGN KEY (`id_item`) REFERENCES `tb_item` (`id_item`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_keranjang`
--
ALTER TABLE `tb_keranjang`
  ADD CONSTRAINT `fk_barang` FOREIGN KEY (`id_item`) REFERENCES `tb_item` (`id_item`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_member` FOREIGN KEY (`id_member`) REFERENCES `member` (`id_member`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
