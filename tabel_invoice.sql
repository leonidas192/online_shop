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
-- Struktur dari tabel `tabel_invoice`
--

CREATE TABLE `tabel_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_invoice`
--

INSERT INTO `tabel_invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(1, 'Dyatlov', 'Jl.Chernobyl', '2020-06-08 22:09:28', '2020-06-09 22:09:28'),
(6, 'Kevin', 'jl.kalilangse no 428', '2020-06-09 13:25:03', '2020-06-10 13:25:03'),
(7, 'Bagus', 'Jl.Kemayoran Baru No 56', '2020-06-11 15:53:33', '2020-06-12 15:53:33'),
(8, 'Bagus', 'Jl.Kemayoran Baru No 56', '2020-06-11 15:53:58', '2020-06-12 15:53:58'),
(9, 'Bagus', 'Jl.Kemayoran Baru No 56', '2020-06-11 15:55:01', '2020-06-12 15:55:01'),
(10, 'Bagus', 'Jl.Kemayoran Baru No 56', '2020-06-11 15:56:33', '2020-06-12 15:56:33'),
(11, 'Bagus', 'Semarang', '2020-06-11 15:57:21', '2020-06-12 15:57:21'),
(12, 'Bagus', 'Semarang', '2020-06-11 15:58:02', '2020-06-12 15:58:02'),
(13, 'Bagus', 'Semarang', '2020-06-11 15:58:04', '2020-06-12 15:58:04'),
(24, 'Bagus', 'Jl.Kemayoran Baru No 56', '2020-06-11 16:03:52', '2020-06-12 16:03:52'),
(25, 'Bagus', 'Jl.Kemayoran Baru No 56', '2020-06-11 16:04:41', '2020-06-12 16:04:41'),
(26, 'Bagus', 'Baker Street No 476', '2020-06-11 16:05:39', '2020-06-12 16:05:39'),
(27, 'fsdf', 'gsjhjk', '2020-06-11 16:06:57', '2020-06-12 16:06:57'),
(30, '', '', '2020-06-11 16:12:45', '2020-06-12 16:12:45'),
(31, '', '', '2020-06-11 16:12:54', '2020-06-12 16:12:54');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tabel_invoice`
--
ALTER TABLE `tabel_invoice`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tabel_invoice`
--
ALTER TABLE `tabel_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
