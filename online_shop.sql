-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Jun 2020 pada 11.02
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
  `tipe` varchar(100) NOT NULL,
  `gizi` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_barang`
--

INSERT INTO `tabel_barang` (`id`, `nama_barang`, `keterangan`, `kategori`, `harga`, `stock`, `gambar`, `wilayah`, `manfaat`, `makanan`, `tipe`, `gizi`) VALUES
(1, 'Ikan Lele', 'Ikan Lele merupakan ikan air tawar', 'Ikan Tawar', '25000', 21, 'lele.jpg', 'Ikan lele adalah jenis ikan air tawar dan tidak pernah di temukan di air payau atau air asin. Memiliki habitat di air sungai dengan arus air yang perlahan, rawa, telaga, waduk, sawah yang tergenang air.', 'Lele dianggap lebih sehat dari ikan lain, karena lele biasanya dijual dalam keadaan segar dan hidup sehingga tak ada alasan untuk mengonsumsi lele berformalin. Manfaat ikan lele dikenal kaya akan vitamin, mineral, dan asam lemak omega.Salah satu manfaat ikan lele sebagai makanan sehat adalah ikan ini sangat rendah merkuri. Ikan lele yang diternakkan kemungkinan hanya dibiarkan tumbuh hingga titik tertentu. Ini membuat lele tidak berpotensi menelan merkuri di air yang terkontaminasi.', 'Manggot Ulat,Ikan Rucah,Bekicot,Cacing,Tanaman atau Dedaunan', 'Populer Bulan Ini', 'Kal 204<br> Lemak 12,35g <br>Karb 7,26g <br>Prot 14,93g'),
(2, 'Ikan Gurame', 'Ikan Gurame merupakan air tawar', 'Ikan Tawar', '30000', 11, 'gurame.jpg', 'Gurami semula menyebar di pulau-pulau Sunda Besar (Sumatra, Jawa, dan Kalimantan), tetapi kini telah dipelihara sebagai ikan konsumsi di berbagai negara di Asia (terutama Asia Tenggara dan Asia Selatan) serta di Australia.Di alam, gurami hidup di sungai-sungai, rawa dan kolam, termasuk pula di air payau; namun paling menyukai kolam-kolam dangkal dengan banyak tumbuhan. Sesekali ikan ini muncul ke permukaan untuk bernapas langsung dari udara.Induk gurami, untuk beberapa waktu lamanya, menjaga dan memelihara anak-anaknya. Telurnya dilekatkan di tetumbuhan air atau ditaruh di sarang yang terbuat dari tumbuh-tumbuhan. Gurami terutama adalah pemakan tumbuhan, tetapi mau juga memangsa serangga, ikan lain, dan juga barang-barang yang membusuk di air. di kolam-kolam.', '1.Membantu Perkembangan Otak<br>2.Meminimalisir Kemungkinan Penyakit Degeneratif<br>3.Mengurangi Kemungkinan Penyakit Kwashiorkor<br>4.Mencegah Marasmus<br>5.Membantu Pertumbuhan Otot<br>6.Menghindari Cachexia<br>7.Menghaluskan Kulit<br>8.Sumber Energi', '1.Bekatul atau bisa juga dedak kasar<br>2.Ampas tahu, ampas kedelai, dan ampas kelapa<br>3.Daun pepaya, daun singkong, daun sente, dan daun lamtoro<br>4.Gedebok pisang (dicincang) dan daun pisang<br>5.Kotoran sapi (kering ), kotoran ayam (kering) dan juga kotoran hewan lainnya', 'Populer Bulan Ini', 'Kalori 125<br>Lemak 5,49g<br>Karbohidrat 0g<br>Protein 17,48g'),
(3, 'Ikan Nila', 'Ikan Nila merupakan Air Tawar', 'Ikan Tawar', '35000', 6, 'nila.jpeg', 'Secara alami, ikan nila (dari perkataan Nile, Sungai Nil) ditemukan mulai dari Syria di utara hingga Afrika timur sampai ke Kongo dan Liberia; yaitu di Sungai Nil (Mesir), Danau Tanganyika, Chad, Nigeria, dan Kenya. Diyakini pula bahwa pemeliharaan ikan ini telah berlangsung semenjak peradaban Mesir purba.', '1. Mengandung asam lemak yang baik bagi tubuh<br>2. Sumber protein yang sehat<br>3. Baik untuk tulang<br>4. Baik untuk Anda yang sedang diet<br>5. Mencegah penuaan dini<br>6. Menyehatkan otak<br>7. Bagus untuk pertumbuhan dan perkembangan tubuh<br>8. Membantu cegah kanker', '1. Plankton dan  fitoplankton<br>2. Azolla Pinnata<br>3. Lemna SP<br>4. Wolffia<br>5. Daun Talas<br>6. Kangkung<br> 7. Daun singkong', 'Normal', 'Kal 96<br>Lemak 1,7g<br>Karbohidrat 0g<br>Protein 20,08g'),
(4, 'Ikan Tongkol', 'Ikan Tongkol merupakan ikan laut', 'Ikan Laut', '20000', 31, 'tongkol.jpg', 'Ikan Tongkol menyebar luas di perairan hangat di kawasan Indo-Pasifik Barat, yakni wilayah Samudera Hindia mulai dari pesisir timur Afrika Selatan, Somalia, Laut Merah, Laut Arab, terus ke arah timur ke pesisir anak-benua India, pesisir dan laut-laut pedalaman di Asia Tenggara dan Nusantara, pantai barat Australia; hingga menyeberang ke sisi barat Samudera Pasifik, ke utara sampai ke perairan Jepang bagian selatan, ke selatan sampai ke pesisir timur Austraila, serta ke timur di kepulauan-kepulauan Pasifik hingga Hawaii dan Kepulauan Marquesas.', '1. Kaya vitamin dan mineral<br>\r\n2. Berprotein tinggi<br>\r\n3. Membantu menurunkan berat badan<br>\r\n4. Menjaga kadar elektrolit tubuh<br>\r\n5. Meningkatkan kesehatan kelenjar tiroid<br>\r\n6. Membantu meningkatkan fungsi otak<br>\r\n7. Kaya akan antioksidan<br>\r\n8. Mengurangi peradangan<br>', '1.udang<br> \r\n2.kerabat cumi-cumi dan sotong<br>\r\n3.serta aneka jenis ikan', 'Normal', 'Kal 110<br>\r\nLemak 0,92g<br>\r\nKarbohidrat 0g<br>\r\nProtein 23,87g'),
(5, 'Ikan Tuna', 'Ikan Tuna merupakan ikan laut', 'Ikan Laut', '42000', 5, 'tuna.jpg', 'Daerah penyebaran Ikan Tuna di Indonesia meliputi Laut Banda, Laut Maluku, Laut Flores, Laut Sulawesi, Laut Hindia, Laut Halmahera, perairan utara Aceh, barat Sumatera, selatan Jawa, utara Sulawesi, Teluk Tomini, Teluk Cendrawasih dan Laut Arafura', '1.Mencegah kanker<br>\r\n2.Menjaga kesehatan mata<br>\r\n3.Menyusutkan lemak dalam tubuh<br>\r\n4.Mencegah depresi setelah melahirkan<br>\r\n5.Detoksifikasi<br>\r\n6.Melindungi kesehatan jantung<br>\r\n7.Memperbaiki penampilan kulit dan rambut<br>\r\n8.Melindungi kesehatan otak<br>', '1. IKAN KECIL<br>\r\n2. CACING SUTERA<br>\r\n3. TELUR<br>\r\n4. PELET\r\n', 'Normal', 'Kal 108\r\nLemak 0,95g\r\nKarbohidrat 0g\r\nProt 23,38g'),
(7, 'Ikan Arwana', 'Ikan Arwana merupakan Ikan hias', 'Ikan Hias', '50000', 1, 'arwana.jpg', 'Daerah penyebarannya meliputi Amerika Selatan, Afrika Tengah sampai Afrika Barat, Asia Tenggara, Papua New Guinea, dan Australia bagian utara.', '1.Sebagai Ikan Hias dan Juga Peliharaan<br>2.Dapat di Jadikan Sebagai Lahan Bisnis<br>3.Menambah Banyaknya Relasi<br>4.Hiburan<br>5.Sebagai Pengisi Waktu Luang dan Juga Hobi', '1. Pelet Ikan<br>2. Cicak<br>3. Jangkrik<br>4. Udang<br>5. Kelabang<br>6. Kecoa<br>7. Ikan Kecil', 'Normal', 'Bukan Ikan yang cocok dijadikan makanan'),
(9, 'Ikan Cupang Ndra Arwana', 'Ikan Cupang merupakan ikan hias', 'Ikan Hias', '15000', 17, 'cupang.jpg', 'Ikan Cupang (Betta sp.) adalah ikan air tawar yang habitat asalnya adalah beberapa negara di Asia Tenggara, antara lain Indonesia, Thailand, Malaysia, dan Vietnam. Ikan ini mempunyai bentuk dan karakter yang unik dan cenderung agresif dalam mempertahankan wilayahnya.', 'Menghilangkan pikiran stress dan menetralkan perasaan,Sebagai sumber Inspirasi dan Gagasan,Menyalurkan Hobi dan Menciptakan Peluang Bisnis,Menambah Keindahan Ruang dan Kamar', 'Jentik Nyamuk,Cacing Darah,Cacing Sutra,Kutu Air,Kuning Telur', 'Populer Bulan Ini', 'Bukan Ikan yang cocok dijadikan makanan'),
(20, 'Ikan Salmon', 'Ikan Salmon merupakan ikan laut', 'Ikan Laut', '300000', 2, 'salmon1.jpg', 'Salmon atau salem adalah jenis ikan dari famili Salmonidae. Ikan lain yang berada dalam satu famili dengan salmon adalah Trout. Perbedaan kedua jenis ikan tersebut antara lain: salmon bermigrasi, sedangkan trout hidup menetap. Salmon hidup di Samudra Atlantik dan Samudra Pasifik.', '1.Melindungi kesehatan otak. Sebuah penelitian menunjukkan, ikan salmon dapat meningkatkan kesehatan otak Anda.<br>\r\n2.Sumber Omega-3 yang Baik.<br>\r\n3.Kaya Protein.<br>\r\n4.Dapat Kontrol Berat Badan. <br>\r\n5.Tinggi Potasium. <br>\r\n6.Rendah Lemak.<br>\r\n7.Mengandung Antioksidan Penting.', '1. JENTIK NYAMUK<br>\r\n2. CACING SUTERA<br>\r\n3. KUTU AIR<br>\r\n4. KUNING TELUR', 'Normal', 'Kal 146 <br>\r\nLemak 5,93g<br>\r\nKarbohidrat 0g <br>\r\nProtein 21,62g\r\n'),
(21, 'Ikan Kakap', 'Ikan Kakap merupakan Ikan Laut', 'Ikan Laut', '36000', 7, 'Ikan-Kakap-Merah-03-1-1.jpg', 'Daerah sebaran kakap putih di daerah tropis dan subtropis, daerah pasifik Barat dan Samudera Hindia, yang meliputi : Australia, Papua New Guinea, Indonesia, Philipina, Jepang, China, Vietnam, Kamboja, Thailand, Malaysia, Singapura, Bangladesh, India, Srilangka, Pakistan, Iran, Oman dan negara-negara disekitar laut Arab', '1. Mendukung Pertumbuhan dan Perkembangan Tubuh<br>\r\n2. Berperan Sebagai Antioksidan<br>\r\n3. Mendukung Metabolisme dan Fungsi Kerja Tubuh<br>\r\n4. Meningkatkan Kesehatan Mata dan Mencegah Penyakit<br>\r\n5. Mencegah Anemia<br>\r\n6. Mengurangi Risiko Penyakit Jantung<br>\r\n7. Menurunkan Berat Badan<br>\r\n8. Meningkatkan Kesehatan Otak', 'Udang Putih Besar yang hidup dan segar.<br>\r\nIkan Belanak Kecil yang hidup dan segar.<br>\r\nIkan Bandeng kecil yang hidup dan segar.<br>\r\nIkan Cumi-cumi kecil yang hidup dan segar.', 'Normal', 'Kalori 100\r\nLemak 1,34g\r\nKarbohidrat 0g\r\nProtein 20,51g'),
(23, 'Udang', 'Udang Merupakan Hewan Laut', 'Ikan Laut', '50000', 7, '0e1e995e6e2c92d85fc43e1e2c33773a4.jpg', 'Udang merupakan hewan yang mudah dikembangbiakkan sehingga persebarannya sangat banyak di indonesia.\r\nJawa Timur adalah provinsi penghasil udang terbanyak di Indonesia pada 2017, yakni 156.139 ton.Sementara Riau menempati urutan lima terbawah yakni 339 ton dan Kepulauan Riau sebanyak 42 ton.', '1. Membantu pembentukan sel dan jaringan tubuh<br>\r\n2. Membantu produksi hormon tiroid<br>\r\n3. Menjaga kesehatan tulang dan gigi<br>\r\n4. Menyehatkan jantung\r\n', 'Udang adalah bagian penting dari rantai makanan di laut. Udang adalah omnivora, ini berarti mereka mengkonsumsi banyak jenis makanan di lautan. Biasanya makanan udang adalah seperti ganggang, plankton dan partikel tanaman.\r\n', 'Populer Bulan Ini', 'Kalori 7<br>\r\nLemak 0,12g<br>\r\nKarbohidrat 0,06g<br>\r\nProtein 1,38g');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
