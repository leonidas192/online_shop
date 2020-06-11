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
-- Struktur dari tabel `tabel_pesanan`
--

CREATE TABLE `tabel_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `jumlah` int(7) NOT NULL,
  `harga` int(20) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_pesanan`
--

INSERT INTO `tabel_pesanan` (`id`, `id_invoice`, `id_barang`, `nama_barang`, `jumlah`, `harga`, `pilihan`) VALUES
(1, 1, 3, 'Ikan Gurame', 1, 30000, ''),
(2, 3, 3, 'Ikan Gurame', 1, 30000, ''),
(3, 3, 4, 'Ikan Nila', 1, 35000, ''),
(4, 3, 5, 'Ikan Tongkol', 1, 20000, ''),
(5, 4, 3, 'Ikan Nila', 1, 35000, ''),
(6, 4, 1, 'Ikan Lele', 1, 25000, ''),
(7, 5, 2, 'Ikan Gurame', 2, 30000, ''),
(8, 5, 1, 'Ikan Lele', 1, 25000, ''),
(9, 6, 3, 'Ikan Nila', 2, 35000, ''),
(10, 6, 5, 'Ikan Tuna', 1, 42000, ''),
(11, 6, 1, 'Ikan Lele', 1, 25000, ''),
(12, 6, 4, 'Ikan Tongkol', 1, 20000, ''),
(13, 6, 2, 'Ikan Gurame', 1, 30000, ''),
(32, 25, 1, 'Ikan Lele', 3, 25000, ''),
(33, 25, 2, 'Ikan Gurame', 1, 30000, ''),
(34, 26, 1, 'Ikan Lele', 1, 25000, ''),
(35, 26, 2, 'Ikan Gurame', 1, 30000, ''),
(36, 26, 3, 'Ikan Nila', 1, 35000, ''),
(37, 26, 5, 'Ikan Tuna', 1, 42000, ''),
(38, 27, 1, 'Ikan Lele', 1, 25000, ''),
(42, 31, 1, 'Ikan Lele', 1, 25000, '');

--
-- Trigger `tabel_pesanan`
--
DELIMITER $$
CREATE TRIGGER `pesanan_penjualan` AFTER INSERT ON `tabel_pesanan` FOR EACH ROW BEGIN
	UPDATE tabel_barang SET stock = stock-NEW.jumlah
    WHERE id = id;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tabel_pesanan`
--
ALTER TABLE `tabel_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tabel_pesanan`
--
ALTER TABLE `tabel_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
