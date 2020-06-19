-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Jun 2020 pada 00.02
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
  `gambar` text NOT NULL,
  `wilayah` text NOT NULL,
  `manfaat` text NOT NULL,
  `makanan` text NOT NULL,
  `hidup` text NOT NULL,
  `kawin` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_barang`
--

INSERT INTO `tabel_barang` (`id`, `nama_barang`, `keterangan`, `kategori`, `harga`, `stock`, `gambar`, `wilayah`, `manfaat`, `makanan`, `hidup`, `kawin`) VALUES
(1, 'Ikan Lele', 'Ikan Lele merupakan ikan air tawar', 'Ikan Tawar', '25000', 24, 'lele.jpg', 'Ikan lele adalah jenis ikan air tawar dan tidak pernah di temukan di air payau atau air asin. Memiliki habitat di air sungai dengan arus air yang perlahan, rawa, telaga, waduk, sawah yang tergenang air.', 'Lele dianggap lebih sehat dari ikan lain, karena lele biasanya dijual dalam keadaan segar dan hidup sehingga tak ada alasan untuk mengonsumsi lele berformalin. Manfaat ikan lele dikenal kaya akan vitamin, mineral, dan asam lemak omega.Salah satu manfaat ikan lele sebagai makanan sehat adalah ikan ini sangat rendah merkuri. Ikan lele yang diternakkan kemungkinan hanya dibiarkan tumbuh hingga titik tertentu. Ini membuat lele tidak berpotensi menelan merkuri di air yang terkontaminasi.', 'Manggot Ulat,Ikan Rucah,Bekicot,Cacing,Tanaman atau Dedaunan', '40 minggu', '27-30 minggu'),
(2, 'Ikan Gurame', 'Ikan Gurame merupakan air tawar', 'Ikan Tawar', '30000', 14, 'gurame.jpg', '', '', '', '', ''),
(3, 'Ikan Nila', 'Ikan Nila merupakan Air Tawar', 'Ikan Tawar', '35000', 9, 'nila.jpeg', '', '', '', '', ''),
(4, 'Ikan Tongkol', 'Ikan Tongkol merupakan ikan laut', 'Ikan Laut', '20000', 34, 'tongkol.jpg', '', '', '', '', ''),
(5, 'Ikan Tuna', 'Ikan Tuna merupakan ikan laut', 'Ikan Laut', '42000', 8, 'tuna.jpg', '', '', '', '', ''),
(7, 'Ikan Arwana', 'Ikan Arwana merupakan Ikan hias', 'Ikan Hias', '50000', 4, 'arwana.jpg', '', '', '', '', ''),
(9, 'Ikan Cupang Ndra Arwana', 'Ikan Cupang merupakan ikan hias', 'Ikan Hias', '15000', 20, 'cupang.jpg', 'Ikan Cupang (Betta sp.) adalah ikan air tawar yang habitat asalnya adalah beberapa negara di Asia Tenggara, antara lain Indonesia, Thailand, Malaysia, dan Vietnam. Ikan ini mempunyai bentuk dan karakter yang unik dan cenderung agresif dalam mempertahankan wilayahnya.', 'Menghilangkan pikiran stress dan menetralkan perasaan,Sebagai sumber Inspirasi dan Gagasan,Menyalurkan Hobi dan Menciptakan Peluang Bisnis,Menambah Keindahan Ruang dan Kamar', 'Jentik Nyamuk,Cacing Darah,Cacing Sutra,Kutu Air,Kuning Telur', '3 - 5 Tahun', '8 kali dengan interval 2-3 minggu');

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

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_masakan`
--

CREATE TABLE `tabel_masakan` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `bahan` text NOT NULL,
  `langkah` text NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_masakan`
--

INSERT INTO `tabel_masakan` (`id`, `nama`, `bahan`, `langkah`, `gambar`) VALUES
(1, 'Lele Bumbu Rendang', '1.1 Ekor Lele Ukuran Besar<br> 2.1 Bgks Bumbu Rendang Instan<br> 3.1 Bgks Santai Cair Instan <br>4.1 Ruas Jahe<br>5.1 Sdm Minyak Sayur', '1.Cuci bersih ikan dan potong mjd 4-5 bagian. Jika ada jeniper boleh dipakai utk melumuri ikan agar tdk amis...aq lg g d jd pke jahe<br><br>2.Baluri ikan dg bumbu rendang diamkan bbrp saat<br><br>3.Panaskan minyak dan masukkan ikan lelenya,aduk dg api kecil diteflon anti lengket. Tambahkan jahe dan sedikit air agar bumbu meresap<br><br>4.Biarkan hgg daging empuk dan bumbu meresap. Lalu masukkan santan,koreksi rasa jika perlu tambahkan garam,gula ataupun kaldu.Matikan Api dan sajikan', 'masakan-lele.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_pertanyaan`
--

CREATE TABLE `tabel_pertanyaan` (
  `id` int(11) NOT NULL,
  `pertanyaan` text NOT NULL,
  `jawaban` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_pertanyaan`
--

INSERT INTO `tabel_pertanyaan` (`id`, `pertanyaan`, `jawaban`) VALUES
(2, 'Web Apa ini ?', 'Web Untuk Membeli berbagai macam ikan dan lain lain');

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

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_user`
--

CREATE TABLE `tabel_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `hak_akses` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_user`
--

INSERT INTO `tabel_user` (`id`, `nama`, `username`, `password`, `hak_akses`) VALUES
(1, 'admin', 'admin', '123', 1),
(2, 'user', 'user', '123', 2),
(3, 'kevin', 'kevin', '123', 2),
(4, 'Maulana', 'admin', '81dc9bdb52d04dc20036dbd8313ed055', 1),
(5, 'Yanto', 'user12', 'd781eaae8248db6ce1a7b82e58e60435', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tabel_barang`
--
ALTER TABLE `tabel_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tabel_invoice`
--
ALTER TABLE `tabel_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tabel_masakan`
--
ALTER TABLE `tabel_masakan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tabel_pertanyaan`
--
ALTER TABLE `tabel_pertanyaan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tabel_pesanan`
--
ALTER TABLE `tabel_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tabel_user`
--
ALTER TABLE `tabel_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tabel_barang`
--
ALTER TABLE `tabel_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tabel_invoice`
--
ALTER TABLE `tabel_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `tabel_masakan`
--
ALTER TABLE `tabel_masakan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tabel_pertanyaan`
--
ALTER TABLE `tabel_pertanyaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tabel_pesanan`
--
ALTER TABLE `tabel_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `tabel_user`
--
ALTER TABLE `tabel_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
