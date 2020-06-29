-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Jun 2020 pada 11.08
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
(32, 'Keivn', 'Jl.Jalanan', '2020-06-24 08:29:25', '2020-06-25 08:29:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_keluhan`
--

CREATE TABLE `tabel_keluhan` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pertanyaan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_keluhan`
--

INSERT INTO `tabel_keluhan` (`id`, `email`, `pertanyaan`) VALUES
(1, 'kevinmaulana914@gmail.com', 'Cara Comment Gimana yaa ?'),
(2, 'kevinafriyanto8@gmail.com', 'Saya lupa Password saya'),
(3, 'kevinmaulana914@gmail.com', 'saya siapa yaa ?');

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
(1, 'Lele Bumbu Rendang', '1 Ekor Lele Ukuran Besar<br> 1 Bgks Bumbu Rendang Instan<br> 1 Bgks Santai Cair Instan <br>1 Ruas Jahe<br>1 Sdm Minyak Sayur', '1.Cuci bersih ikan dan potong mjd 4-5 bagian. Jika ada jeniper boleh dipakai utk melumuri ikan agar tdk amis...aq lg g d jd pke jahe<br><br>2.Baluri ikan dg bumbu rendang diamkan bbrp saat<br><br>3.Panaskan minyak dan masukkan ikan lelenya,aduk dg api kecil diteflon anti lengket. Tambahkan jahe dan sedikit air agar bumbu meresap<br><br>4.Biarkan hgg daging empuk dan bumbu meresap. Lalu masukkan santan,koreksi rasa jika perlu tambahkan garam,gula ataupun kaldu.Matikan Api dan sajikan', 'masakan-lele.jpg'),
(4, 'Gurame Saus Tiram', '<strong>Bahan Utama </strong><br>1 kg Ikan Gurameh<br><strong>Bahan untuk marinasi</strong><br>1 buah jeruk lemon<br>secukupnya Garam<br><strong>Bumbu saus tiram</strong><br>3 siung bawang putih<br>4 cabe merah<br>2 cabe kriting/cabe setan<br>1 buah Bawang Bombay<br>5 sdm saus tiram<br>1 sdm Kaldu Jamur<br>secukupnya Gula pasir<br>secukupnya Garam<br>2 batang Sereh<br>5 cm lengkuas<br>3 sdm kecap manis<br>3 sdm saus tomat<br>secukupnya Daun bawang', '1.Marinasi ikan dengan garam dan jeruk lemon selama 30menit, lebih baik ditaruh di kulkas biar bumbu cepat meresap<br><br>2.Setelah dimarinasi,,goreng ikan hingga warna berubah menjadi kecoklatan, kemudian tiriskan<br><br>3.Oseng bawang putih, bawang bombay,cabe,sereh dan lengkuas hingga harum... Setelah harum tambahkan saus tomat kemudian diberi air secukupnya dan masukan bumbu lainnya..<br><br>4.Setelah dicicip rasa sudah pas baru masukan gurameh yg telah digoreng tadi dan diberikan irisan daun bawang saat mau dipindahkan kepiring...<br><br>5.Selamaatt mencobaa ^_^ <br><br>', 'gurameh-saus-tiram-foto-resep-utama.jpg'),
(5, 'Nila Asam Manis Pedas', '<strong>Bahan-bahan</strong><br>\r\n2 ekor ikan nila segar<br>\r\nbumbu racik ikan goreng<br>\r\n1 buah wortel<br>\r\n1 buah tomat<br>\r\ndaun bawang<br>\r\n3 sachet saus sambel<br>\r\n1 sdm saus tiram<br>\r\n<strong>bumbu iris:</strong><br>\r\n3 siung bawang merah<br>\r\n1 siung bawang putih<br>\r\n1 buah bawang bombay<br>\r\n2 buah cabe merah<br>\r\n6 buah cabe setan<br>\r\ngaram<br>\r\ngula<br>\r\nminyam goreng untk menumis<br>', '1.Bersihkan ikan lalu lumuri dengan bumbu racik,kemudian goreng.<br><br>\r\n\r\n2.Iris daun bawang dan wortel kecil2 memanjang(wortel bisa pakai serutan)<br><br>\r\n\r\n3.Iris semua bahan bumbu.kemudian tumis hingga wangi<br><br>\r\n\r\n4.Tambahkan saus sambel,saus tiram,gula dan garam.beri sedikit air kemudian masukan irisan wortel,daun bawang dan tomat<br><br>\r\n\r\n5.Tunggu hingga air agak menyusut dan mengental..<br><br>\r\n\r\n6.Setelah matang tuangkan diatas ikan yg sudah digoreng.siap disajikan', 'nila-asam-manis-pedas-foto-resep-utama.jpg'),
(6, 'Sambal Terong Ikan Tongkol', '500 gr terong ungu<br> 2 ekor ikan tongkol <br>10 siung bawang merah <br>3 siung bawang putih <br>3 buah tomat (ukuran sedang)<br> 2 buah cabe merah besar <br>12 buah cabe rawit(sesuai selera) <br>secukupnya Garam <br>secukupnya Gula pasir <br>Terasi secukupnya(bagi yg suka terasi) <br>secukupnya Penyedap rasa <br>Minyak goreng', '1.Cuci bersih terong & ikan, potong terong sesuai selera(kulit tidak perlu dikupas), setelah itu pisahkan ikan dari durinya<br><br>2.Panaskan minyak, goreng terong dengan api agak besar sampai kecoklatan angkat tiriskan. Setelah itu goreng ikan sampai matang tiriskan (ikan belah jadi 4 bagian atau sesuai selera)<br><br>3.Kupas bawang merah, putih cuci bersih semua bumbu, potong kasar bawang merah bawang putih, cabe besar. Belah tomat jadi 2 bagian setelah semua selesai goreng sebentar semua bahan agak layu angkat tiriskan<br><br>4.Ulek semua bumbu, tambahkan terasi, garam, gula pasir, penyedap rasa secukupnya. Kalau saya suka sambal agak kasar tapi sesuai selera, jangan lupa cicipin rasa<br><br>5.Panaskan wajan kasih minyak sedikit saja oseng bumbu kasih air sedikit test rasa kalau sudah ????masukan ikan aduk2, masukan terong aduk pelan2 sampai rata angkat.<br><br>6.Siap disajikan bersama nasi yang hangat????kalau saya bisa nambah nasi lagi???? ???? Selamat mencoba bunda-bunda tersayang????', 'sambal-terong-ikan-tongkol-foto-resep-utama.jpg'),
(7, 'Tuna Pedes Segerr', '<strong>Bahan-Bahan</strong><br>\r\n1 ekor ikan tuna dipotong 5<br>\r\n1 sdt garam<br>\r\n1 sdt gula<br>\r\n1 sdt saos tiram<br>\r\n1/2 sdt kecap asin<br>\r\n1/2 buah jeruk nipis<br>\r\n500 ml air<br>\r\nMinyak goreng (secukupnya)<br>\r\nMerica (secukupnya)<br>\r\n<strong>Bumbu Halus</strong><br>\r\n15 buah cabai merah<br>\r\n10 buah cabai rawit<br>\r\n5 siung bawang merah<br>\r\n2 siung bawang putih<br>\r\n3 cm kunyit<br>\r\n3 cm jahe<br>\r\n1 buah tomat<br>\r\n<strong>Pelengkap</strong><br>\r\nDaun bawang<br>\r\n5 cabai rawit<br>\r\n1/2 buah jeruk nipis<br>', '1.Bersihkan ikan, buang insangnya, cuci bersih lalu potong sesuai keinginan (saya 5 potong), kemudian taburi perasan jeruk nipis, garam, merica secukupnya.<br><br>\r\n\r\n2.Campurkan semua bahan bumbu halus serta 1 sdt garam dan 1 sdt gula, lalu uleg atau blender. (Saya suka diuleg supaya bumbunya kasar).<br><br>\r\n\r\n3.Goreng 1/2 matang dulu ikan tuna. Tiriskan.<br><br>\r\n\r\n4.Tumis bumbu halus, tambahkan 1/2 sdt kecap asin dan 1 sdt saos tiram, aduk2 sampai harum. Kemudian masukkan ikan tuna yg sudah digoreng tadi, biarkan meresap sebentar lalu tambahkan 500 ml air (boleh lebih) dan cabai rawit (belah 2). Tunggu sampai mendidih.<br><br>\r\n\r\n5.Setelah mendidih masukkan daun bawang dan perasan jeruk nipis. Aduk sedikit, koreksi rasa (jika kurang asin tambahkan garam secukupnya). Hidangkan selagi panas lebih enak dan segar ????????<br><br>', 'tuna-pedas-segerrrr-foto-resep-utama.jpg'),
(8, 'Salmon Teriyaki', '2 fillet daging ikan salmon<br>\r\n3 buah cabe rawit<br>\r\n1 ruas jahe<br>\r\n3 siung bawang putih<br>\r\n1/2 buah bawang bombay<br>\r\n2 batang bawang daun<br>\r\n<strong>Saus:</strong>\r\n1/4 sdm gula<br>\r\n1/4 sdm bubuk cabe<br>\r\n2 sdm kecap asin<br>\r\n2 Sdm madu<br>\r\n2 sdm air', '1.Campurkan saus dalam satu wadah, masukkan irisan jahe dan bawang putih, marinasi selama 15 menit<br><br>\r\n\r\n2.Panaskan pan, tanpa minyak, panggang bagian kulit salmon hingga kering selama 5 menit api sedang. Balik bagian daging, panggang selama 3 menit.<br><br>\r\n\r\n3.Masukkan bombay, bawang daun, dan cabe. Masukkan saus.<br><br>\r\n\r\n4.Masak hingga saus mengental. Balik hingga bagian daging dan kulit terlapisi saus.<br><br>\r\n\r\n5.Sajikan salmon serta tuang bumbu diatasnya. Dan beri taburan bawang daun serta wijen sangrai.', 'salmon-teriyaki-foto-resep-utama.jpg'),
(9, 'Kakap merah fillet crispy saus asam manis', '500 gr kakap merah <br><strong>Adonan basah & kering untuk crispy</strong><br>1 1/2 Bks Sasa tepung bumbu serbaguna<br>1 butir telur<br><strong>Saus asam manis</strong><br>saus tomat<br>1 sachet Saori saus mentega<br>secukupnya Air<br>5 bh bawang merah<br>2 bh bawang putih<br>1 batang serai<br>1 lembar daun salam<br>1 batang daun bawang<br>', '1.Langkah membuat crispy : Adonan basah cukup kocok 1 butir telur, masukan fillet kakap ke adonan basah setelah itu Masukan ke tepung bumbu, lalu goreng.<br><br>2.Untuk sausnya, tumis bawang merah bawang putih sampai harum, masukan serai dan daun salam.<br><br>3.Masukan air sedikit supaya ga terlalu kental, terus saus tomat, saus mentega, lalu daun bawang.<br><br>4.Masak sampai terasa pas sesuai selera yaa.<br><br>5.Selamat mencoba', 'kakap-merah-fillet-crispy-saus-asam-manis-foto-resep-utama.jpg'),
(10, 'Udang Saus Tiram', '200 g udang segar<br>\r\n3 batang sosis<br>\r\n5 butir bakso<br>\r\n1/4 tempe<br>\r\n6 siung bawang merah<br>\r\n3 siung bawang putih<br>\r\n1/4 sdt garam (sejumput)<br>\r\n8 cabe rawit<br>\r\n5 cabe merah keriting<br>\r\n2 sdm saos tiram<br>\r\n1 sdm kecap manis<br>\r\n1 sdm saos tomat<br>\r\n1 sdt lada hitam<br>\r\n1/2 bawang Bombay<br>\r\nSecukupnya kaldu penyedap (jika dirasa agak kurang - boleh skip)', '1.Siapkan bahan-bahan dan bersihkan udang dari kotorannya. Beri perasan jeruk atau lemon untuk yg gak suka bau amisnya dan taburi sdkit garam, sembari menunggu perasan jeruk meresap. Boleh haluskan bumbu² duo bawang, cabe, garam sejumput<br><br>\r\n\r\n2.Lalu goreng udang atau panggang sampai sedikit memerah bila ada pakai margarin supaya udangnya juga memiliki rasa yg gurih sebelum dicampur bumbu lain yg lebih sedap.<br><br>\r\n\r\n3.Kemudian potong sosis, bakso, tempe dan bawang Bombay sesuai selera.<br><br>\r\n\r\n4.Lanjut dg menumis bumbu halus dan masukan irisan bombay tunggu sampai harum, kemudian tuang air secukupnya sesuai keinginan mau berkuah atau kering. Lalu msukan saos tiram, saos, kecap dan lada aduk rata. lalu masukan bakso, sosis dan tempe. Terus diaduk beri bumbu penyedap jika kurang pas, lalu masukan udang dan masak hingga semua matang sempurna.<br><br>\r\n\r\n5.Sajikan, selamat mencoba!!!', 'udang-saos-tiram-foto-resep-utama.jpg');

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
(2, 'Web Apa ini ?', 'Web Untuk Membeli berbagai macam ikan dan lain lain'),
(3, 'Berapa Lama Waktu Pengiriman', 'Untuk lamanya proses tergantung dengan jarak pembeli dan penjual ikan dan juga tergantung ketersediaan stok'),
(4, 'Daerah Mana Saja yang dilayani Toko Ikan', 'Sekitaran Semarang saja'),
(5, 'Apa saja yang dijual dalam web Toko Ikan', 'Toko Ikan menjual berbagai macam ikan,dari ikan laut,ikan tawar dan ikan hias'),
(6, 'Berapa besar biaya pengiriman Toko Ikan', 'Tergantung dari jarak pembeli dan penjual');

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
(42, 31, 1, 'Ikan Lele', 1, 25000, ''),
(43, 32, 5, 'Ikan Tuna', 1, 42000, ''),
(44, 32, 9, 'Ikan Cupang Ndra Arwana', 1, 15000, ''),
(45, 32, 7, 'Ikan Arwana', 1, 50000, '');

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

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_api`
--

CREATE TABLE `user_api` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `auth` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_api`
--

INSERT INTO `user_api` (`id`, `nama`, `auth`) VALUES
(1, 'kevin', 'maulana13'),
(2, 'kevin', 'fadngsadeqr'),
(3, 'maulana', 'greanj12e1');

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
-- Indeks untuk tabel `tabel_keluhan`
--
ALTER TABLE `tabel_keluhan`
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
-- Indeks untuk tabel `user_api`
--
ALTER TABLE `user_api`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tabel_barang`
--
ALTER TABLE `tabel_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `tabel_invoice`
--
ALTER TABLE `tabel_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `tabel_keluhan`
--
ALTER TABLE `tabel_keluhan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tabel_masakan`
--
ALTER TABLE `tabel_masakan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tabel_pertanyaan`
--
ALTER TABLE `tabel_pertanyaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tabel_pesanan`
--
ALTER TABLE `tabel_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT untuk tabel `tabel_user`
--
ALTER TABLE `tabel_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `user_api`
--
ALTER TABLE `user_api`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
