-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Jun 2020 pada 18.43
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_shop`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_barang`
--

CREATE TABLE `tabel_barang` (
  `id` int(11) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `stock` int(11) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_barang`
--

INSERT INTO `tabel_barang` (`id`, `nama_barang`, `keterangan`, `kategori`, `harga`, `stock`, `gambar`) VALUES
(1, 'Ikan Lele', 'Ikan Lele merupakan ikan air tawar', 'Ikan Tawar', '25000', 24, 'lele.jpg'),
(2, 'Ikan Gurame', 'Ikan Gurame merupakan air tawar', 'Ikan Tawar', '30000', 14, 'gurame.jpg'),
(3, 'Ikan Nila', 'Ikan Nila merupakan Air Tawar', 'Ikan Tawar', '35000', 9, 'nila.jpeg'),
(4, 'Ikan Tongkol', 'Ikan Tongkol merupakan ikan laut', 'Ikan Laut', '20000', 34, 'tongkol.jpg'),
(5, 'Ikan Tuna', 'Ikan Tuna merupakan ikan laut', 'Ikan Laut', '42000', 8, 'tuna.jpg'),
(7, 'Ikan Arwana', 'Ikan Arwana merupakan Ikan hias', 'Ikan Hias', '50000', 4, 'arwana.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tabel_barang`
--
ALTER TABLE `tabel_barang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tabel_barang`
--
ALTER TABLE `tabel_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
