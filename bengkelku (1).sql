-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 04 Agu 2017 pada 18.04
-- Versi Server: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bengkelku`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftarkendaraan`
--

CREATE TABLE `daftarkendaraan` (
  `id_kendaraan` int(20) NOT NULL,
  `nama_kndrn` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `daftarkendaraan`
--

INSERT INTO `daftarkendaraan` (`id_kendaraan`, `nama_kndrn`) VALUES
(1, 'protonon'),
(3, 'toyota'),
(4, 'aula'),
(5, 'suzuki'),
(6, 'civic'),
(9, 'yamaha');

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftarpelanggan`
--

CREATE TABLE `daftarpelanggan` (
  `id_pelanggan` int(20) NOT NULL,
  `no_kendaraan` varchar(20) NOT NULL,
  `merk` varchar(25) NOT NULL,
  `nama_pelanggan` varchar(40) NOT NULL,
  `alamat` text NOT NULL,
  `no_telepon` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `daftarpelanggan`
--

INSERT INTO `daftarpelanggan` (`id_pelanggan`, `no_kendaraan`, `merk`, `nama_pelanggan`, `alamat`, `no_telepon`) VALUES
(2, '7272', 'hsh', 'didin', 'jhah', 2772),
(12, 'b 145 cg', 'honda', 'juki', 'jalan jombang', 2828),
(152, 'B 124 cgd', 'suzuki', 'didin', 'jalan pbh', 282828);

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftarsparepart`
--

CREATE TABLE `daftarsparepart` (
  `id_spt` int(20) NOT NULL,
  `nama_sparepart` varchar(30) NOT NULL,
  `merk` varchar(25) NOT NULL,
  `keterangan` text NOT NULL,
  `harga` int(20) NOT NULL,
  `stock` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `daftarsparepart`
--

INSERT INTO `daftarsparepart` (`id_spt`, `nama_sparepart`, `merk`, `keterangan`, `harga`, `stock`) VALUES
(12, 'knalpot', 'hrc', 'knalpot racing', 20000, 20);

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftaruser`
--

CREATE TABLE `daftaruser` (
  `id_user` int(10) NOT NULL,
  `nama_user` varchar(20) NOT NULL,
  `password` varchar(8) NOT NULL,
  `hak` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `daftaruser`
--

INSERT INTO `daftaruser` (`id_user`, `nama_user`, `password`, `hak`) VALUES
(13, 'didin', '12345', 1),
(126, 'hasim', '766', 6),
(213, 'posi', 'posi', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daftarkendaraan`
--
ALTER TABLE `daftarkendaraan`
  ADD PRIMARY KEY (`id_kendaraan`);

--
-- Indexes for table `daftarpelanggan`
--
ALTER TABLE `daftarpelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `daftarsparepart`
--
ALTER TABLE `daftarsparepart`
  ADD PRIMARY KEY (`id_spt`);

--
-- Indexes for table `daftaruser`
--
ALTER TABLE `daftaruser`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daftarkendaraan`
--
ALTER TABLE `daftarkendaraan`
  MODIFY `id_kendaraan` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `daftarpelanggan`
--
ALTER TABLE `daftarpelanggan`
  MODIFY `id_pelanggan` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;
--
-- AUTO_INCREMENT for table `daftarsparepart`
--
ALTER TABLE `daftarsparepart`
  MODIFY `id_spt` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `daftaruser`
--
ALTER TABLE `daftaruser`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
