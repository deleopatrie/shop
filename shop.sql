-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2018 at 12:58 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama_lengkap`) VALUES
(1, 'superadmin', 'superadmin', 'farhanrizki');

-- --------------------------------------------------------

--
-- Table structure for table `ongkir`
--

CREATE TABLE `ongkir` (
  `id_ongkir` int(5) NOT NULL,
  `nama_kota` varchar(100) NOT NULL,
  `tarif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ongkir`
--

INSERT INTO `ongkir` (`id_ongkir`, `nama_kota`, `tarif`) VALUES
(1, 'Bekasi', 13000),
(2, 'Jakarta', 16000);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `email_pelanggan` varchar(100) NOT NULL,
  `password_pelanggan` varchar(50) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `telepon_pelanggan` varchar(25) NOT NULL,
  `alamat_pelanggan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `email_pelanggan`, `password_pelanggan`, `nama_pelanggan`, `telepon_pelanggan`, `alamat_pelanggan`) VALUES
(2, 'test@test.co', 'test', 'superman', '001', ''),
(3, 'deleo@mail.com', 'test', 'admin', '1912', ''),
(5, 'test2@test.co', '1912', 'test22', '09888777777', 'Jl.Imam bonjol no.123');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `id_ongkir` int(11) NOT NULL,
  `tanggal_pembelian` date NOT NULL,
  `total_pembelian` int(11) NOT NULL,
  `nama_kota` varchar(100) NOT NULL,
  `tarif` int(11) NOT NULL,
  `alamat_pengiriman` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `id_pelanggan`, `id_ongkir`, `tanggal_pembelian`, `total_pembelian`, `nama_kota`, `tarif`, `alamat_pengiriman`) VALUES
(1, 4, 1, '2018-07-02', 1700000, '', 0, ''),
(2, 4, 1, '2018-07-19', 800000, '', 0, ''),
(4, 3, 1, '2018-07-18', 95000, '', 0, ''),
(5, 3, 1, '2018-07-18', 95000, '', 0, ''),
(6, 3, 1, '2018-07-18', 95000, '', 0, ''),
(7, 3, 0, '2018-07-18', 95000, '', 0, ''),
(8, 3, 1, '2018-07-18', 95000, '', 0, ''),
(9, 3, 2, '2018-07-18', 95000, '', 0, ''),
(10, 3, 2, '2018-07-18', 95000, '', 0, ''),
(11, 3, 2, '2018-07-18', 95000, '', 0, ''),
(12, 3, 2, '2018-07-18', 95000, '', 0, ''),
(13, 3, 2, '2018-07-18', 95000, '', 0, ''),
(14, 3, 2, '2018-07-18', 95000, '', 0, ''),
(15, 2, 2, '2018-07-18', 200000, '', 0, ''),
(16, 2, 2, '2018-07-18', 295000, '', 0, ''),
(17, 2, 0, '2018-07-18', 95000, '', 0, ''),
(18, 2, 2, '2018-07-18', 200000, '', 0, ''),
(19, 3, 2, '2018-07-18', 200000, '', 0, ''),
(20, 2, 2, '2018-07-18', 200000, '', 0, ''),
(21, 3, 2, '2018-07-18', 200000, '', 0, ''),
(22, 2, 2, '2018-07-18', 341000, '', 16000, ''),
(23, 2, 2, '2018-07-18', 341000, 'Jakarta', 16000, ''),
(24, 2, 0, '2018-07-18', 200000, '', 0, 'Jl .Itik 4 no.55\r\nPerum.Pondok Timur indah'),
(25, 2, 2, '2018-07-18', 216000, 'Jakarta', 16000, 'Jl .Itik 4 no.55\r\nPerum.Pondok Timur indah'),
(26, 2, 2, '2018-07-18', 111000, 'Jakarta', 16000, 'Jl .Itik 4 no.55\r\nPerum.Pondok Timur indah'),
(27, 2, 2, '2018-07-19', 1110000, 'Jakarta', 16000, 'sadsdsdsadasdasdasdasdsa');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_produk`
--

CREATE TABLE `pembelian_produk` (
  `id_pembelian_produk` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `berat` int(11) NOT NULL,
  `subberat` int(11) NOT NULL,
  `subharga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembelian_produk`
--

INSERT INTO `pembelian_produk` (`id_pembelian_produk`, `id_pembelian`, `id_produk`, `jumlah`, `nama`, `harga`, `berat`, `subberat`, `subharga`) VALUES
(1, 1, 1, 1, '', 0, 0, 0, 0),
(2, 1, 2, 3, '', 0, 0, 0, 0),
(3, 12, 5, 1, '', 0, 0, 0, 0),
(4, 13, 5, 1, '', 0, 0, 0, 0),
(5, 14, 5, 1, '', 0, 0, 0, 0),
(6, 15, 5, 1, '', 0, 0, 0, 0),
(7, 15, 6, 1, '', 0, 0, 0, 0),
(8, 18, 5, 1, '', 0, 0, 0, 0),
(9, 18, 6, 1, '', 0, 0, 0, 0),
(10, 19, 5, 1, '', 0, 0, 0, 0),
(11, 19, 6, 1, '', 0, 0, 0, 0),
(12, 20, 5, 1, 'Action Figure Dota 2 Tidehunter', 95000, 1, 1, 95000),
(13, 20, 6, 1, 'Action Figure Dota 2 Captain Kunkka', 105000, 1, 1, 105000),
(14, 21, 5, 1, 'Action Figure Dota 2 Tidehunter', 95000, 1, 1, 95000),
(15, 21, 6, 1, 'Action Figure Dota 2 Captain Kunkka', 105000, 1, 1, 105000),
(16, 22, 5, 1, 'Action Figure Dota 2 Tidehunter', 95000, 1, 1, 95000),
(17, 22, 6, 1, 'Action Figure Dota 2 Captain Kunkka', 105000, 1, 1, 105000),
(18, 22, 7, 1, 'Action Figure Dota 2 Faceless Void', 125000, 1, 1, 125000),
(19, 23, 5, 1, 'Action Figure Dota 2 Tidehunter', 95000, 1, 1, 95000),
(20, 23, 6, 1, 'Action Figure Dota 2 Captain Kunkka', 105000, 1, 1, 105000),
(21, 23, 7, 1, 'Action Figure Dota 2 Faceless Void', 125000, 1, 1, 125000),
(22, 24, 5, 1, 'Action Figure Dota 2 Tidehunter', 95000, 1, 1, 95000),
(23, 24, 6, 1, 'Action Figure Dota 2 Captain Kunkka', 105000, 1, 1, 105000),
(24, 25, 5, 1, 'Action Figure Dota 2 Tidehunter', 95000, 1, 1, 95000),
(25, 25, 6, 1, 'Action Figure Dota 2 Captain Kunkka', 105000, 1, 1, 105000),
(26, 26, 5, 1, 'Action Figure Dota 2 Tidehunter', 95000, 1, 1, 95000),
(27, 27, 5, 1, 'Action Figure Dota 2 Tidehunter', 95000, 1, 1, 95000),
(28, 27, 9, 2, 'Spirit Breaker Plush', 499500, 1, 2, 999000);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `berat_produk` int(11) NOT NULL,
  `foto_produk` varchar(100) NOT NULL,
  `deskripsi_produk` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `harga_produk`, `berat_produk`, `foto_produk`, `deskripsi_produk`) VALUES
(5, 'Action Figure Dota 2 Tidehunter', 95000, 1, 'action-figure-dota-2-tidehunter-22.jpg', 'Tidehunter yang dikenal sebagai Leviathan monster laut yang pernah menjadi juara Lembah Sunken. Dia menguntit air dangkal sekarang untuk mencari pria atau merchant yang tersesat ke jalannya, dan dengan kebencian tertentu terhadap Laksamana Kunkka, yang telah lama menjadi musuh bebuyutannya karena alasan yang hilang di parit laut yang terdalam.		'),
(6, 'Action Figure Dota 2 Captain Kunkka', 105000, 1, 'action-figure-dota-2-captain-kunkka-40.jpg', 'Kunkka dikenal sebagai Laksamana Angkatan Laut Claddish yang perkasa, Kunkka didakwa melindungi pulau-pulau di tanah airnya ketika Demons of the Cataract melakukan penyerangan bersama di tanah manusia.		'),
(7, 'Action Figure Dota 2 Faceless Void', 125000, 1, 'action-figure-dota-2-faceless-void-105.jpg', 'Darkterror the Faceless Void adalah pengunjung dari Claszureme, sebuah wilayah di luar waktu. Tampaknya merupakan gangguan keseimbangan kekuatan di dunia ini berakibat pada dimensi waktu yang berdekatan. Waktu tidak ada artinya bagi Darkterror, kecuali sebagai cara untuk menggagalkan musuh-musuhnya.		'),
(8, 'Action Figure Dota 2 Captain Lina The Slayer', 124500, 1, 'action-figure-dota-2-captain-lina-the-slayer-49.jpg', 'Lina the Slayer, dan adik perempuannya Rylai, the Crystal Maiden, adalah barang legenda di wilayah beriklim sedang di mana mereka menghabiskan masa kecil mereka yang suka bertengkar bersama. Semangat Lina yang berapi-api dipenuhi oleh kepintaran dan berkomplot. Lina bangga dan percaya diri, dan tidak ada yang bisa meredam nyala api.'),
(9, 'Spirit Breaker Plush', 499500, 1, 'SpiritBreaker_ThreeQuarter-1000x1000.png', 'Dota 2 Spirit Breaker Plush Designed by Workshop Contributor Olivi. Size: 7.8\" X 9.5\" (19.81cm X 24.13cm)'),
(10, 'Tidehunter Mug', 249500, 1, 'TideHunterMug_Front_2-1000x1000.png', '- Designed by Workshop Contributor Chroneco\r\n\r\n- Fully sculpted Tidehunter character mug\r\n\r\n- Glossy glaze finish\r\n\r\n- Holds 20 oz of fluid		');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `ongkir`
--
ALTER TABLE `ongkir`
  ADD PRIMARY KEY (`id_ongkir`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indexes for table `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  ADD PRIMARY KEY (`id_pembelian_produk`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ongkir`
--
ALTER TABLE `ongkir`
  MODIFY `id_ongkir` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  MODIFY `id_pembelian_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
