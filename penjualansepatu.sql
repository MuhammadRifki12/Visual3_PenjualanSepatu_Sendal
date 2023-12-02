-- phpMyAdmin SQL Dump
-- version 6.0.0-dev+20230625.8e3615eca8
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2023 at 08:35 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualansepatu`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(10) NOT NULL,
  `id_supplier` int(20) DEFAULT NULL,
  `nama_barang` varchar(30) DEFAULT NULL,
  `hrg_barang` varchar(30) DEFAULT NULL,
  `stok_barang` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `id_supplier`, `nama_barang`, `hrg_barang`, `stok_barang`) VALUES
(1, 1, 'Sepatu Bola', '300000', '30'),
(2, 2, 'Sepatu Hak Tinggi', '150000', '30'),
(3, 3, 'Sendal', '15000', '50'),
(4, 4, 'Sepatu Kulit', '600000', '32'),
(5, 5, 'Sepatu Kulit Super ', '600000', '50');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(10) NOT NULL,
  `id_user` int(10) DEFAULT NULL,
  `nik` varchar(55) DEFAULT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `jk` varchar(20) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `tmpt_lahir` varchar(50) DEFAULT NULL,
  `alamat` varchar(40) DEFAULT NULL,
  `telpon` varchar(40) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `id_user`, `nik`, `nama`, `jk`, `tgl_lahir`, `tmpt_lahir`, `alamat`, `telpon`, `status`) VALUES
(1, 1, '123456', 'rifki', 'Laki-laki', '2001-12-12', 'Banjarbaru', 'Jln. Pertama', '082145678987', 'Inaktif'),
(2, 2, '999999', 'gilang', 'Laki-laki', '2004-12-08', 'Banjarbaru', 'Jln. Lama', '082109878979', 'Aktif'),
(3, 3, '888888', 'rangga', 'Laki-laki', '2000-07-21', 'Banjarbaru', 'Jln. Peduli', '082178909876', 'Aktif'),
(4, 4, '777777', 'hamdani', 'Laki-laki', '2003-10-15', 'Banjarbaru', 'Jln. Semangat', '082187656798', 'Aktif'),
(5, 5, '666666', 'dimas', 'Laki-laki', '2003-10-21', 'Banjarbaru', 'Jln. Limau', '082167765456', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(20) NOT NULL,
  `nm_pelanggan` varchar(20) DEFAULT NULL,
  `jk` varchar(20) DEFAULT NULL,
  `no_telp` varchar(12) DEFAULT NULL,
  `alamat` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nm_pelanggan`, `jk`, `no_telp`, `alamat`) VALUES
(1, 'Budi', 'Laki-laki', '0821577890', 'Jln. Rampit'),
(2, 'Ramit', 'Laki-laki', '0821789030', 'Jln. Emas'),
(3, 'Masni', 'Perempuan', '0821908998', 'Jln. Tangga'),
(4, 'Kilang', 'Laki-laki', '0821897834', 'Jln. Dilan'),
(5, 'idi', 'Laki-laki', '0821678946', 'Jln. Berlian');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  ` id_supplier` int(20) NOT NULL,
  `nama_supplier` varchar(30) DEFAULT NULL,
  `alamat` varchar(30) DEFAULT NULL,
  `telp` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (` id_supplier`, `nama_supplier`, `alamat`, `telp`) VALUES
(1, 'PT. Rangga Dilang', 'Jln. Mawar', '082198765678'),
(2, 'PT. Pertama Tama', 'Jln. Baru', '082190909876'),
(3, 'PT. Bintang Kejora', 'Jln. Lama', '082187654345'),
(4, 'PT. Gilang Tra', 'Jln. Kenangan', '082134567654'),
(5, 'PT. Tama Tama', 'Jln. Rindangan', '082198765445');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(10) NOT NULL,
  `id_barang` int(10) DEFAULT NULL,
  `id_pelanggan` int(20) DEFAULT NULL,
  `id_karyawan` int(10) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `keterangan` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_barang`, `id_pelanggan`, `id_karyawan`, `tanggal`, `keterangan`) VALUES
(1, 1, 1, 1, '2023-11-15', 'Transaksi Berjalan Lancar'),
(2, 2, 2, 2, '2023-11-11', 'Transaksi Berjalan Lancar'),
(3, 3, 3, 3, '2023-11-20', 'Transaksi Berjalan Lancar'),
(4, 4, 4, 4, '2023-11-27', 'Transaksi Berjalan Lancar'),
(5, 5, 5, 5, '2023-11-01', 'Transaksi Berjalan Lancar');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(10) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`) VALUES
(1, 'rifki', 'admin'),
(2, 'gilang', '123'),
(3, 'rangga', '56789'),
(4, 'hamdani', '798'),
(5, 'dimas', '567');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `id_supplier` (`id_supplier`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (` id_supplier`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_pelanggan` (`id_pelanggan`),
  ADD KEY `id_karyawan` (`id_karyawan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id_supplier`);

--
-- Constraints for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD CONSTRAINT `karyawan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`),
  ADD CONSTRAINT `transaksi_ibfk_3` FOREIGN KEY (`id_karyawan`) REFERENCES `karyawan` (`id_karyawan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
