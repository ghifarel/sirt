-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2021 at 04:04 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wblokodinasv1`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `id_agenda` int(5) NOT NULL,
  `tema` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tema_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_agenda` text COLLATE latin1_general_ci NOT NULL,
  `tempat` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pengirim` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `tgl_posting` date NOT NULL,
  `jam` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT 1,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `agenda`
--

INSERT INTO `agenda` (`id_agenda`, `tema`, `tema_seo`, `isi_agenda`, `tempat`, `pengirim`, `gambar`, `tgl_mulai`, `tgl_selesai`, `tgl_posting`, `jam`, `dibaca`, `username`) VALUES
(64, 'Kerja Bakti Warga RT 01 RW 07', 'kerja-bakti-warga-rt-01-rw-07', '<p>Kepada Yth. : Seluruh Warga RT 003 RW 01<br />\r\nPerum. Griya Indah Permai Selalu<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>Assalamualaikum Wr Wb.</p>\r\n\r\n<p>Mengingat pentingnya menjaga kebersihan lingkungan khususnya di RT. 01, oleh karena itu pengurus RT. 01&nbsp;mengundang Bapak dan Ibu sekalian untuk melakukan kerja bakti bersama agar lingkungan kita tetap bersih dan nyaman, yang Insya Allah akan dilaksanakan pada :</p>\r\n\r\n<p><br />\r\nHari, tanggal &nbsp;:&nbsp; Minggu<br />\r\nWaktu &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : 08.00 &ndash; Selesai.<br />\r\nTempat &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : Aula RT 01<br />\r\nAgenda &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: Kerja Bakti di lingkungan RT 01<br />\r\n&nbsp;</p>\r\n\r\n<p>Demikian undangan ini kami sampaikan, atas kerjasama yang baik dan semangat kekeluargaan dalam menjaga lingkungan yang aman dan sehat, kami ucapkan terima kasih.</p>\r\n\r\n<p style=\"text-align:justify\"><br />\r\n<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; Mengetahui&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Ketua RT 01&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; (&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; )</p>\r\n', 'Aula RT 01 ', 'Ketua RT 01', 'kerja.jpg', '2020-12-13', '2020-12-13', '2012-08-20', '08.00 - Selesai', 155, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id_album` int(5) NOT NULL,
  `jdl_album` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `album_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_album` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `hits_album` int(5) NOT NULL DEFAULT 1,
  `tgl_posting` date NOT NULL,
  `jam` time NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id_album`, `jdl_album`, `album_seo`, `keterangan`, `gbr_album`, `aktif`, `hits_album`, `tgl_posting`, `jam`, `hari`, `username`) VALUES
(51, 'Foto Kegiatan Warga', 'foto-kegiatan-warga', '<p>Kumpulan Foto Kegiatan Warga RT 01</p>\r\n', 'bks.jpg', 'Y', 0, '2020-12-10', '14:05:33', 'Kamis', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `background`
--

CREATE TABLE `background` (
  `id_background` int(5) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `background`
--

INSERT INTO `background` (`id_background`, `gambar`) VALUES
(1, 'blue');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id_banner` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `deskripsi` text COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id_banner`, `judul`, `url`, `gambar`, `tgl_posting`, `deskripsi`) VALUES
(19, 'CLEAN', '', 'TAMARA_22.PNG', '2020-12-10', 'Dikelola secara profesional, menghindari benturan kepentingan, tidak menoleransi suap, menjunjung tinggi kepercayaan dan integritas. Berpedoman pada asas tata kelola korporasi yang baik.'),
(20, 'SECURITY', 'http://www.lokomedia.web.id', 'TAMARA_31.PNG', '2020-12-10', 'Menjaga keamanan lingkungan sekitar dari berbagai macam kejahatan.'),
(22, 'COMPETITIVE', 'http://www.lokomedia.web.id', 'TAMARA_11.PNG', '2020-12-10', 'Mampu berkompetisi dalam skala regional maupun internasional, membangun budaya sadar biaya dan menghargai kinerja');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(5) NOT NULL,
  `id_kategori` int(5) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `sub_judul` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `youtube` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `judul_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `headline` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `utama` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `isi_berita` longtext CHARACTER SET latin1 NOT NULL,
  `keterangan_gambar` text COLLATE latin1_general_ci NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT 1,
  `tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `id_kategori`, `username`, `judul`, `sub_judul`, `youtube`, `judul_seo`, `headline`, `aktif`, `utama`, `isi_berita`, `keterangan_gambar`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`, `status`) VALUES
(694, 61, 'admin', '32 Pekerja di Kabupaten Bekasi Terinfeksi COVID-19', 'Gugus Tugas Percepatan Penanganan COVID-19 Kabupaten Bekasi, Jawa Barat, menyatakan bahwa ada 32 pekerja asal Kabupaten Bekasi yang dikonfirmasi tertular virus Covid-19', '', '32-pekerja-di-kabupaten-bekasi-terinfeksi-covid19', 'Y', 'Y', 'Y', '<p>berdasarkan hasil pemeriksaan massal yang digelar akhir pekan lalu. &quot;Dari dua ribuan buruh yang ikut tes usap massal kemarin, 32 orang yang positif tercatat sebagai warga kita,&quot; kata juru bicara Gugus Tugas Percepatan Penanganan&nbsp;COVID-19 Kabupaten Bekasi Alamsyah di Cikarang, Rabu, 9 Desember 2020.</p>\r\n\r\n<p>Mereka yang dinyatakan&nbsp;<a href=\"https://www.tempo.co/tag/positif-covid-19\">positif Covid-19</a>&nbsp;itu tanpa gejala. &ldquo;Kami isolasi mereka di tempat isolasi terpusat.&quot;</p>\r\n\r\n<p>Secara keseluruhan ada 77 pekerja yang dinyatakan positif terinfeksi Covid-19 berdasarkan hasil pemeriksaan massal yang dilakukan di kawasan industri MM2100 di&nbsp;Desa Danau Indah, Kecamatan Cikarang Barat, Kabupaten Bekasi.</p>\r\n\r\n<p>Sebanyak 45 dari pekerja yang dinyatakan positif COVID-19 merupakan warga dari luar wilayah&nbsp;<a href=\"https://metro.tempo.co/read/1412678/kabupaten-bekasi-siapkan-sekolah-tatap-muka-tahun-depan\">Kabupaten Bekasi</a>. &quot;Mereka beridentitas warga DKI Jakarta, Kabupaten Karawang, dan Kota Bekasi,&rdquo; kata Alamsyah.</p>\r\n\r\n<p>Pemeriksaan untuk mendeteksi penularan COVID-19 di kawasan industri&nbsp;MM2100 merupakan tahap pertama dari pemeriksaan terhadap 12 ribu pekerja di kawasan industri Kabupaten Bekasi. &quot;Pekan depan kami lanjutkan kembali, kemungkinan di kawasan industri lain di wilayah kita,&quot;ujar .</p>\r\n\r\n<p>Alamsyah berharap pemeriksaan massal bisa menekan risiko penularan COVID-19 di kalangan pekerja di kawasan industri. Dia juga mengingatkan kembali para pekerja, warga, dan pelaku usaha untuk disiplin menerapkan&nbsp;<a href=\"https://www.tempo.co/tag/protokol-kesehatan\">protokol kesehatan</a>.</p>\r\n\r\n<p>&quot;Jangan kendur, jangan lalai, tetap disiplin memakai masker, mencuci tangan, dan menjaga jarak. Jangan lupa juga wajib imun, wajib aman, dan wajib iman,&quot; kata dia</p>\r\n', '', 'Kamis', '2020-12-10', '13:27:51', 'cocd.jpg', 0, 'kesehatan', 'Y'),
(693, 63, 'admin', 'Audi Merilis Sport Hatchback Listrik Seharga Rp 700 Jutaan, Begini Kehebatan Performanya', 'Untuk menggebrak pasar mobil listrik, Audi akhirnya memperkenalkan A3 Sportback 45 TFSI e', '', 'audi-merilis-sport-hatchback-listrik-seharga-rp-700-jutaan-begini-kehebatan-performanya', 'Y', 'Y', 'Y', '<p>Audi A3 Sportback 40 TFSI e memiliki total&nbsp;output&nbsp;245 PS dan 400 Nm, sedangkan untuk A3 Sportback 45 TFSI e baru adalah 41 ps&nbsp;dan 50 Nm&nbsp;lebih bertenaga dari 40 TFSI e.</p>\r\n\r\n<p>Seperti dikutip dari siaran pers di website Audi, catatan waktu yang ditorehkan oleh mobil ini dapat berlari&nbsp;dari 0 hingga 100 km / jam (0-62 mph) hanya dalam 6,8 detik, peningkatan 0,8 detik dengan kecepatan maksimal mencapai 232 km / jam (144 mph).</p>\r\n\r\n<p>Menggunakan baterai lithium-ion 13 kWh ke soket konvensional dan akan mengisi ulang sepenuhnya dalam waktu sekitar 5 jam. Memungkinkan, mobil dapat melaju sejauh 63 km (39 mil) dengan emisi nol pada siklus WLTP dengan kecepatan maksimum 140 km / jam (87 mph).</p>\r\n\r\n<p>A3 Sportback 45 TFSI e yang baru memiliki fitur paket gaya hitam, inlay hitam gloss tinggi untuk bagian gril rangka tunggal, velg 17 inci, rem lebih besar dari pada 40 TFSI e dengan kaliper merah, pilihan drive Audi, jendela belakang berwarna, dua -Zona kontrol iklim, kunci kenyamanan serta lampu depan Matrix LED bersifat opsional</p>\r\n\r\n<p>Harga di Jerman, untuk A3 listrik terbaru mulai dari 41.440 Euro (setara dengan&nbsp;Rp 711.338 juta) termasuk pajak, dan pelanggan berhak untuk mendapatkan subsidi dari negara sebesar 6.750&nbsp; Euro (Rp 115 juta)</p>\r\n', 'A3 Sportback 45 TFSI e', 'Kamis', '2020-12-10', '13:21:11', 'audi-a3-sportback-45-tfsi-e-2021.jpg', 0, 'otomotif,teknologi', 'Y'),
(692, 63, 'admin', 'UPDATE: Bertambah 6.058, Kasus Covid-19 Indonesia Kini 592.900 Orang', 'Pemerintah memperlihatkan bahwa penularan virus corona hingga Rabu (9/12/2020) ini masih terjadi di masyarakat ', '', 'update-bertambah-6058-kasus-covid19-indonesia-kini-592900-orang', 'Y', 'Y', 'Y', '<p>bertambahnya pasien Covid-19 berdasarkan data yang masuk hingga Rabu pukul 12.00 WIB. Data pemerintah menunjukkan bahwa ada 6.058 kasus baru Covid-19 dalam 24 jam terakhir. Penambahan itu menyebabkan jumlah kasus Covid-19 di Indonesia saat ini mencapai 592.900 orang, terhitung sejak diumumkannya pasien pertama pada 2 Maret 2020.</p>\r\n\r\n<p>Informasi ini diungkap Satuan Tugas Penanganan Covid-19 melalui data yang diterima Kompas.com pada Rabu sore. Data juga bisa diakses publik melalui situs Covid19.go.id dan Kemkes.go.id, dengan update yang diberikan setiap sore. Pasien sembuh dan meninggal Meskipun jumlah kasus terus bertambah, harapan muncul dengan semakin banyaknya pasien Covid-19 yang sembuh.</p>\r\n\r\n<p>Dalam waktu 24 jam terakhir, diketahui ada penambahan 3.948 pasien Covid-19 yang sembuh dan dianggap tidak lagi terinfeksi virus corona. Mereka dinyatakan sembuh berdasarkan pemeriksaan dengan metode polymerase chain reaction (PCR) yang memperlihatkan hasil negatif virus corona. Dengan demikian, total pasien Covid-19 yang sembuh kini mencapai 487.445 orang sejak awal pandemi.</p>\r\n\r\n<p>Namun, kabar duka kembali muncul dengan bertambahnya pasien Covid-19 yang meninggal dunia. Pada periode 8-9 Desember 2020, ada 171 pasien yang tutup usia setelah terinfeksi virus corona. Sehingga, angka kematian akibat Covid-19 di Indonesia mencapai 18.171 orang. Dengan data tersebut, maka kasus aktif Covid-19 di Indonesia kini ada 87.284 orang. Mereka adalah pasien yang masih menjalani perawatan atau isolasi mandiri. Selain kasus positif, diketahui ada 69.879 orang yang saat ini berstatus suspek terkait penularan virus corona</p>\r\n\r\n<p>Sebanyak 6.058 kasus baru Covid-19 diketahui setelah pemerintah melakukan pemeriksaan terhadap 56.034 spesimen dalam sehari. Pada periode yang sama, ada 30.514 orang yang diambil sampelnya untuk menjalani pemeriksaan spesimen. Total, pemerintah sudah memeriksa 6.168.268 spesimen dari 4.143.604 orang yang diambil sampelnya.</p>\r\n\r\n<p>Sebagai catatan, satu orang bisa menjalani pemeriksaan spesimen lebih dari satu kali. Baca juga: Testing Tinggi tetapi Kasus Covid-19 Naik, Satgas Khawatirkan Tingkat Penularan Kasus Covid-19 saat ini sudah tercatat di semua provinsi di Indonesia, dari Aceh hingga Papua. Secara lebih rinci, ada 510 kabupaten/kota dari 34 provinsi yang mencatat pasien akibat terinfeksi virus corona. Artinya, lebih dari 99 persen wilayah di Indonesia sudah terdampak pandemi Covid-19.<br />\r\n&nbsp;</p>\r\n', '', 'Kamis', '2020-12-10', '13:16:49', 'cvdd.png', 0, 'kesehatan', 'Y'),
(691, 63, 'admin', 'Sudah Lengkap, Inilah Peserta 16 Besar Liga Champions 2020/21', 'Peserta 16 besar Liga Champions musim ini sudah lengkap.', '', 'sudah-lengkap-inilah-peserta-16-besar-liga-champions-202021', 'Y', 'Y', 'Y', '<p>Fase grup&nbsp;<a href=\"https://www.detik.com/tag/liga-champions-2020/2021\">Liga Champions 2020/21</a>&nbsp;sudah berakhir, menghasilkan 16 tim yang melaju ke babak selanjutnya dan 8 tim yang tergusur ke babak 32 besar&nbsp;<a href=\"https://www.detik.com/tag/liga-europa\">Liga Europa</a>. Siapa saja?</p>\r\n\r\n<p>Di Grup A, ada&nbsp;<a href=\"https://www.detik.com/tag/bayern-munich\">Bayern Munich</a>&nbsp;dan&nbsp;<a href=\"https://www.detik.com/tag/atletico-madrid\">Atletico Madrid</a>&nbsp;yang melaju ke babak knockout. Sedangkan jatah ke Liga Europa diambil oleh Red Bull Salzburg, yang kalah 0-2 dari Atletico di laga terakhir,</p>\r\n\r\n<p>Selanjutnya di Grup B,&nbsp;<a href=\"https://www.detik.com/tag/real-madrid\">Real Madrid&nbsp;</a>dan&nbsp;<a href=\"https://www.detik.com/tag/borussia-moenchengladbach\">Borussia Moenchengladbach</a>&nbsp;melangkah bersama ke fase gugur. Sementara itu, Shakhtar Donetsk mendapat hadiah hiburan ke Liga Europa usai menahan imbang Inter Milan tanpa gol.</p>\r\n\r\n<p>Masuk ke Grup C,&nbsp;<a href=\"https://www.detik.com/tag/manchester-city\">Manchester City</a>&nbsp;juga sudah lolos ke 16 besar sejak matchday keempat, sementara&nbsp;<a href=\"https://www.detik.com/tag/porto\">Porto</a>&nbsp;memastikan diri ke babak selanjutnya di matchday kelima. Hasil di matchday keenam dipakai untuk menentukan siapa yang pindah ke Liga Europa, yang akhirnya jatuh ke tangan Olympiakos.</p>\r\n\r\n<p>Lalu di Grup D, duet&nbsp;<a href=\"https://www.detik.com/tag/atalanta\">Atalanta</a>&nbsp;dan&nbsp;<a href=\"https://www.detik.com/tag/liverpool\">Liverpool&nbsp;</a>berhasil menembus perdelapan final. Sementara Ajax Amsterdam harus puas ke Liga Europa karena kalah 0-1 dari Atalanta di matchday terakhir.</p>\r\n\r\n<p>Di Grup E,&nbsp;<a href=\"https://www.detik.com/tag/chelsea\">Chelsea</a>&nbsp;dan&nbsp;<a href=\"https://www.detik.com/tag/sevilla\">Sevilla</a>&nbsp;sudah memastikan diri ke 16 besar sejak matchday keempat. Sementara slot ke Liga Europa jatuh kepada wakil Rusia, FC Krasnodar.</p>\r\n\r\n<p>Lanjut ke Grup F,&nbsp;<a href=\"https://www.detik.com/tag/lazio\">Lazio</a>&nbsp;kembali melaju ke 16 besar setelah 21 tahun lamanya. Mereka menemani sang juara grup,&nbsp;<a href=\"https://www.detik.com/tag/borussia-dortmund\">Borussia Dortmund</a>. Sementara itu, tiket ke Liga Europa didapat juara Liga Belgia, Club Brugge.</p>\r\n\r\n<p>Kemudian di Grup G,&nbsp;<a href=\"https://www.detik.com/tag/juventus\">Juventus</a>&nbsp;dan&nbsp;<a href=\"https://www.detik.com/tag/barcelona\">Barcelona</a>&nbsp;juga telah memastikan diri ke fase gugur sejak matchday keempat. Sementara Dynamo Kiev baru memastikan diri ke Liga Europa usai menaklukkan Ferencvaros 1-0 di matchday terakhir.</p>\r\n\r\n<p>Terakhir, di Grup H yang disebut-sebut sebagai &#39;grup neraka&#39; diwakili oleh&nbsp;<a href=\"https://www.detik.com/tag/rb-leipzig\">RB Leipzig</a>&nbsp;dan&nbsp;<a href=\"https://www.detik.com/tag/paris-saint_germain\">Paris-Saint Germain</a>. Keduanya menyingkirkan Manchester United, yang harus puas kembali ke &#39;liga malam Jumat&#39;</p>\r\n\r\n<p>Undian 16 besar akan dilaksanakan pada Senin (14/12/2020) pukul 18.00 WIB di Nyon, Swiss, dan live streaming-nya bisa disaksikan langsung di situs resmi&nbsp;<a href=\"https://www.detik.com/tag/uefa\">UEFA</a>. Tiap juara grup akan berhadapan dengan runner-up grup, namun tak boleh dari grup ataupun negara yang sama.</p>\r\n\r\n<p><strong>Peserta 16 besar Liga Champions</strong>&nbsp;<strong>2020/21</strong></p>\r\n\r\n<p><strong>Grup A:&nbsp;</strong>Bayern Munich, Atletico Madrid</p>\r\n\r\n<p><strong>Grup B:&nbsp;</strong>Real Madrid, Borussia Moenchengladbach</p>\r\n\r\n<p><strong>Grup C:&nbsp;</strong>Manchester City, Porto</p>\r\n\r\n<p><strong>Grup D:&nbsp;</strong>Liverpool, Atalanta</p>\r\n\r\n<p><strong>Grup E:&nbsp;</strong>Chelsea, Sevilla</p>\r\n\r\n<p><strong>Grup F:</strong>&nbsp;Borussia Dortmund, Lazio</p>\r\n\r\n<p><strong>Grup G:</strong>&nbsp;Juventus, Barcelona</p>\r\n\r\n<p><strong>Grup H:&nbsp;</strong>Paris Saint-Germain, RB Leipzig</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Yang terlempar ke 32 Besar Liga Europa</strong></p>\r\n\r\n<p>Red Bull Salzburg, Shakhtar Donetsk, Olympiakos, Ajax Amsterdam, Krasnodar, Club Brugge, Dynamo Kiev, Manchester United</p>\r\n', '', 'Kamis', '2020-12-10', '13:05:25', 'ucl.jpg', 0, 'bola', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE `download` (
  `id_download` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `nama_file` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `hits` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id_download`, `judul`, `nama_file`, `tgl_posting`, `hits`) VALUES
(11, 'Total Biaya Pembuatan Aplikasi Simpeg', 'Contoh_File_Download_1.txt', '2014-09-23', 8),
(12, 'Type atau Jenis Join di MySQL', 'Contoh_File_Download_1.txt', '2014-09-23', 68),
(13, 'Kegiatan Monev Tgl. 14-17 Oktober 2014 (SAKPA)', 'Contoh_File_Download_1.txt', '2014-09-23', 34),
(14, 'Pembayaran Tunjangan Remunerasi', 'Contoh_File_Download_1.txt', '2014-09-23', 24),
(15, 'Target PNBP Umum & PNBP Fungsional TA.2015', 'Contoh_File_Download_1.txt', '2014-09-23', 3),
(16, 'Pelaksanaan Disiplin Pasca Idul Fitri 1435', 'Contoh_File_Download_1.txt', '2014-09-23', 90),
(17, 'Kegiatan Akurasi Data Semester I TA. 2014', 'Contoh_File_Download_1.txt', '2014-09-23', 14),
(18, 'Rapat Koordinasi dan Konsultasi', 'Contoh_File_Download_1.txt', '2014-09-23', 5),
(19, 'Lomba dan Penilaian SIMPEG dan E-DOCu', 'Contoh_File_Download_1.txt', '2014-09-23', 90),
(20, 'Pemanggilan Peserta Bimtek Hakim Tahun 2014', 'Contoh_File_Download_1.txt', '2014-09-23', 33),
(21, 'Penyusunan PAGU Indikatif Tahun Anggaran 2015', 'Contoh_File_Download_1.txt', '2014-09-23', 57),
(22, 'Revisi Tata Cara Restore Backup SAKPA13 Audited', 'Contoh_File_Download_1.txt', '2014-09-23', 44),
(23, 'Penyusunan RKAKL Alokasi Anggaran DIPA (04)', 'Contoh_File_Download_1.txt', '2014-09-23', 24),
(24, 'Tindaklanjut Temuan Pemeriksaan BPK RI', 'Contoh_File_Download_1.txt', '2014-09-23', 12),
(25, 'Verifikasi Kewajaran Nilai Tanah SIMAK-BMN', 'Contoh_File_Download_1.txt', '2014-09-23', 3),
(26, 'Instruksi Ketua Umum IPASPI Pusat (new)', 'Contoh_File_Download_1.txt', '2014-09-23', 24),
(27, 'Relaas Perkara No.0081/Pdt.G/2013/PA.Stg', 'Contoh_File_Download_1.txt', '2014-09-23', 6),
(31, 'sdfdfsdf', 'lndex.php', '2017-01-27', 7),
(32, 'xxxx', 'lndex.php', '2017-10-11', 0);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id_gallery` int(5) NOT NULL,
  `id_album` int(5) NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `jdl_gallery` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gallery_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_gallery` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id_gallery`, `id_album`, `username`, `jdl_gallery`, `gallery_seo`, `keterangan`, `gbr_gallery`) VALUES
(254, 1, 'admin', 'Screenshot 1 ', 'screenshot-1-', 'Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 ', '911.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `halamanstatis`
--

CREATE TABLE `halamanstatis` (
  `id_halaman` int(5) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `judul_seo` varchar(100) NOT NULL,
  `isi_halaman` text NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT 1,
  `jam` time NOT NULL,
  `hari` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `halamanstatis`
--

INSERT INTO `halamanstatis` (`id_halaman`, `judul`, `judul_seo`, `isi_halaman`, `tgl_posting`, `gambar`, `username`, `dibaca`, `jam`, `hari`) VALUES
(52, 'Struktur Organisasi', 'struktur-organisasi', '<p style=\"text-align:center\"><strong>STRUKTUR ORGANISASI RT 01</strong></p>\r\n', '2019-02-11', 'rt.png', 'admin', 80, '15:21:50', 'Senin'),
(56, 'Rencana Kerja', 'rencana-kerja', '<p><strong>PROGRAM KERJA PENGURUS RT &nbsp;:</strong></p>\r\n\r\n<p>Dalam melaksanakan tugasnya, para pengurus RT mengutamakan asas musyawarah untuk mufakat;<br />\r\nKetua RT bertanggung jawab kepada masyarakat dilingkungan RT melalui laporan kegiatan dalam rapat musyawarah;<br />\r\nWakil Ketua, Sekretaris, Bendahara dan Seksi bertanggungjawab kepada Ketua.<br />\r\nTugas dan Kewajiban Pengurus RT.</p>\r\n\r\n<p><strong>Pengurus RT mempunyai kewajiban :</strong></p>\r\n\r\n<p>- Melaksanakan tugas dan fungsi RT;<br />\r\n- Melaksanakan keputusan anggota;<br />\r\n- Membina kerukunan;<br />\r\n- Membuat laporan mengenai kegiatan organisasi paling sedikit 1 tahun sekali;<br />\r\n- Melaporkan hal-hal yang terjadi dalam masyarakat yang dianggap perlu mendapatkan penyelesaian oleh Pemerintah Daerah kepada Lurah;<br />\r\n- Melaporkan data penduduk beberapa bulan sekali kepada Lurah melalui Ketua RW.</p>\r\n\r\n<p><strong>KETUA RT :</strong><br />\r\n- Pembenahan administrasi ke-RT-an<br />\r\n- Memimpin rapat warga dan rapat pengurus secara rutin dan berkala<br />\r\n- Pembagian tugas dan fungsi pengurus secara jelas<br />\r\n- Koordinasi antar pengurus secara intensif</p>\r\n\r\n<p><strong>KESEKRETARIATAN :</strong><br />\r\n- Pemutakhiran data kependudukan warga<br />\r\n- Pembuatan denah wilayah RT<br />\r\n- Pembuatan media komunikasi warga : mading, buletin, selebaran<br />\r\n- Pembenahan sistem administrasi dan laporan (termasuk sarana penunjang administrasi)</p>\r\n\r\n<p><strong>PERBENDAHAARAAN :</strong><br />\r\n- Penyusunan Laporan Keuangan secara rutin dan berkala<br />\r\n- Pembenahan administrasi keuangan : formulir iuran warga, kwitansi serta tanda terima<br />\r\n- Perencanaan alokasi keuangan sesuai pos yang sudah dianggarkan</p>\r\n\r\n<p><strong>KEAMANAN DAN KETERTIBAN :</strong><br />\r\n- Mengiatkan siskamling<br />\r\n- Perbaikan dan pemeliharaan sarana : pos kamling, portal, senter, pentungan<br />\r\n- Wajib lapor bagi tamu yang menginap atau menetap sementara<br />\r\n- Memantau portal dan penerangan jalan<br />\r\n- Membuat jadual jaga<br />\r\n- Penyebaran brosur tentang tata tertib dan jadual jaga</p>\r\n\r\n<p><strong>SENI BUDAYA DAN OLAHRAGA :</strong><br />\r\n- Mengaktifkan kegiatan seni : Music dan lainnya sesuai minat dan bakat masyarakat<br />\r\n- Mengaktifkan kegiatan olahraga : bulutangkis,volley, catur<br />\r\n- Menjalin kerjasama dengan RT lain di wilayah RW 07&nbsp;tentang penggunaan lapangan<br />\r\n- Penyebaran brosur tentang kegiatan/lomba seni budaya dan olahraga</p>\r\n\r\n<p><strong>KEREMAJAAN:</strong><br />\r\nPemberdayaan remaja dilingkungan RT<br />\r\nMembuat organisasi keremajaan<br />\r\nMenjalin kerjasama dengan pihak lain tentang keremajaan</p>\r\n\r\n<p><strong>PEMBANGUNAN, KEBERSIHAN DAN PRASARANA LINGKUNGAN :</strong><br />\r\n- Kerja bhakti secara rutin : jalan, saluran air, taman, fasilitas umum<br />\r\n- Penghijauan/penanaman pohon buah<br />\r\n- Penggadaan sarana kebersihan : cangkul, sabit<br />\r\n- Penyemprotan nyamuk<br />\r\n- Penyebaran brosur tentang kebersihan lingkungan secara rutin</p>\r\n\r\n<p><strong>SOSIAL :</strong><br />\r\n- Pengelolaan Dana Sosial<br />\r\n- Santunan kematian, kecelakaan, sakit/rawat inap<br />\r\n- Peringatan hari besar keagamaan<br />\r\n- Peringatan hari besar nasional</p>\r\n\r\n<p><strong>PEMBERDAYAAN WARGA:</strong><br />\r\n- Melaksanakan kegiatan untuk membantu usaha-usaha peningkatan taraf hidup keluarga dan pelaksanaan program keluarga berencana;<br />\r\n- Mengkoordinasikan kegiatan partisipasi wanita dalam pembangunan keluarga;<br />\r\n- Melaksanakan usaha-usaha di kalangan keluarga dan masyarakat;<br />\r\n- Memberikan bimbingan dan penyuluhan kepada ibu-ibu rumah tangga mengenai program peningkatan peranan wanita dalam pembangunan;<br />\r\n- Meningkatkan pengetahuan keluarga di bidang pendidikan, kesehatan, lingkungan, keagamaan, pemuda, olahraga, kesenian dan kesejahteraan sosial;<br />\r\n- Membuat pelatihan dan pendidikan bagi warga (demo masak, jahit, atau ketrampilan tangan)<br />\r\n- Mengadakan kerjasama dengan pihak lain tentang pelatihan dan pendidikan</p>\r\n\r\n<p><strong>PERLENGKAPAN / PRASARANA</strong><br />\r\n- Pembuatan buku inventaris barang warga<br />\r\n- Pembuatan kerangka acuan perawatan dan pemeliharaan barang<br />\r\n- Pembelian barang warga yang diusulkan dalam rapat warga</p>\r\n', '2020-12-11', '', 'admin', 46, '21:59:55', 'Jumat'),
(53, 'Sejarah', 'sejarah', '<p><strong>Rukun Tetangga</strong>&nbsp;(<strong>RT</strong>) adalah pembagian wilayah di&nbsp;<a href=\"https://id.wikipedia.org/wiki/Indonesia\">Indonesia</a>&nbsp;di bawah&nbsp;<a href=\"https://id.wikipedia.org/wiki/Rukun_Warga\">Rukun Warga</a>. Rukun Tetangga bukanlah termasuk pembagian&nbsp;<a href=\"https://id.wikipedia.org/wiki/Administrasi\">administrasi</a>&nbsp;pemerintahan, dan pembentukannya adalah melalui&nbsp;<a href=\"https://id.wikipedia.org/wiki/Musyawarah\">musyawarah</a>&nbsp;masyarakat setempat dalam rangka pelayanan kemasyarakatan yang ditetapkan oleh&nbsp;<a href=\"https://id.wikipedia.org/wiki/Desa\">Desa</a>&nbsp;atau&nbsp;<a href=\"https://id.wikipedia.org/wiki/Kelurahan\">Kelurahan</a>. Rukun Tetangga dipimpin oleh Ketua RT yang dipilih oleh warganya. Sebuah RT terdiri atas sejumlah rumah atau KK (kepala keluarga). Dalam sistem birokrasi di Indonesia, biasanya RT (Rukun Tetangga) berada di bawah&nbsp;<a href=\"https://id.wikipedia.org/wiki/RW\">RW</a>&nbsp;(Rukun Warga).</p>\r\n\r\n<p>Rukun tetangga merupakan organisasi masyarakat yang diakui dan dibina oleh pemerintah untuk memelihara dan melestarikan nilai-nilai kehidupan masyarakat Indonesia yang berdasarkan kegotongroyongan dan kekeluargaan serta untuk membantu meningkatkan kelancaran tugas pemerintahan, pembangunan, dan kemasyarakatan di desa dan kelurahan. Setiap RT sebanyak-banyaknya terdiri dari 30 KK untuk desa dan sebanyak-banyaknya 50 KK untuk kelurahan yang dibentuk</p>\r\n', '2019-02-13', '', 'admin', 32, '14:43:03', 'Rabu'),
(54, 'Visi dan Misi', 'visi-dan-misi', '<p style=\"text-align:center\"><span style=\"font-size:16px\"><strong>VISI DAN MISI<br />\r\nKETUA RT 01/07 Desa Taman Rahayu<br />\r\nPERIODE 2016 - 2021</strong></span></p>\r\n\r\n<p style=\"text-align:center\"><br />\r\n<strong>VISI :</strong><br />\r\nMembentuk kerukunan warga RT 01&nbsp;dan memelihara lingkungan yang nyaman, aman, tentram, bersih, sehat serta membangun kerjasama lingkungan antar warga dalam pelaksanaan tanggung jawab<br />\r\n<strong>MISI :</strong><br />\r\n1. Menajaga kerukunan antar warga, khususnya warga RT 01.<br />\r\n2. Melayani warga dalam hal administrasi kependudukan.<br />\r\n3. Memfasilitasi keinginan warga dalam berbagai kegiatan sosial.<br />\r\n4. Bersama-sama seluruh warga menjaga keamanan, ketertiban, kebersihan, dan keasrian.<br />\r\n5. Menjalin kerja sama yang bermanfaat dengan berbagai lembaga eksternal.</p>\r\n', '2019-02-13', '', 'admin', 23, '16:17:33', 'Rabu');

-- --------------------------------------------------------

--
-- Table structure for table `header`
--

CREATE TABLE `header` (
  `id_header` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `header`
--

INSERT INTO `header` (`id_header`, `judul`, `url`, `gambar`, `tgl_posting`) VALUES
(31, 'Header3', '', 'header3.jpg', '2011-04-06'),
(32, 'Header2', '', 'header1.jpg', '2011-04-06'),
(33, 'Header1', '', 'header2.jpg', '2011-04-06');

-- --------------------------------------------------------

--
-- Table structure for table `hubungi`
--

CREATE TABLE `hubungi` (
  `id_hubungi` int(5) NOT NULL,
  `nama` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `subjek` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pesan` text COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `dibaca` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `identitas`
--

CREATE TABLE `identitas` (
  `id_identitas` int(5) NOT NULL,
  `nama_website` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `url` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `facebook` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `rekening` varchar(100) NOT NULL,
  `no_telp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `meta_deskripsi` varchar(250) NOT NULL,
  `meta_keyword` varchar(250) NOT NULL,
  `favicon` varchar(50) NOT NULL,
  `maps` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `identitas`
--

INSERT INTO `identitas` (`id_identitas`, `nama_website`, `email`, `url`, `facebook`, `rekening`, `no_telp`, `meta_deskripsi`, `meta_keyword`, `favicon`, `maps`) VALUES
(1, 'Sistem Informasi RT 01', 'tamanrahayu2@gmail.com', 'http://localhost/sirt', 'http://localhost/sirt', '07566978', '089619985643', 'Berita Indonesia terkini terpercaya, dan terpopuler, politik, ekonomi, tekno, otomotif, dan olahraga ditulis lengkap dan akurat.', 'berita, internasional, nasional, daerah, olahraga, otomotif, teknologi, news, hiburan, entertainment, indonesia, swarakalibata, lokomedia', 'bekasi1.png', 'https://www.google.co.id/maps/place/Perum+Taman+Rahayu+II/@-6.3637839,106.9931348,18.5z/data=!4m5!3m4!1s0x2e6993efc017b2cd:0x384c3a1d830f3795!8m2!3d-6.363443!4d106.9932693');

-- --------------------------------------------------------

--
-- Table structure for table `iklanatas`
--

CREATE TABLE `iklanatas` (
  `id_iklanatas` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `iklanatas`
--

INSERT INTO `iklanatas` (`id_iklanatas`, `judul`, `username`, `url`, `gambar`, `tgl_posting`) VALUES
(1, 'Jasa Pembuatan Website murah', 'admin', 'http://www.lokomedia.web.id', 'banner_asiangames.jpg', '2018-08-31');

-- --------------------------------------------------------

--
-- Table structure for table `iklantengah`
--

CREATE TABLE `iklantengah` (
  `id_iklantengah` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `katajelek`
--

CREATE TABLE `katajelek` (
  `id_jelek` int(11) NOT NULL,
  `kata` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `ganti` varchar(60) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `katajelek`
--

INSERT INTO `katajelek` (`id_jelek`, `kata`, `username`, `ganti`) VALUES
(4, 'sex', '', 's**'),
(2, 'bajingan', '', 'b*******'),
(3, 'bangsat', '', 'b******'),
(5, 'fuck', 'admin', 'f**k'),
(6, 'pantat', 'admin', 'p****t');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `kategori_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `sidebar` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `username`, `kategori_seo`, `aktif`, `sidebar`) VALUES
(61, 'Berita Daerah', 'admin', 'berita-daerah', 'Y', 1),
(62, 'Berita OPD', 'admin', 'berita-opd', 'Y', 2),
(63, 'Berita Umum', 'admin', 'berita-umum', 'Y', 3);

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(5) NOT NULL,
  `id_berita` int(5) NOT NULL,
  `nama_komentar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_komentar` text COLLATE latin1_general_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam_komentar` time NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `id_berita`, `nama_komentar`, `url`, `isi_komentar`, `tgl`, `jam_komentar`, `aktif`, `email`) VALUES
(84, 650, 'Agung Wicaksana', 'dankrez48@gmail.com', 'Nice  story, Roy suryo dan Susilo bambang yudhoyono memang cucak rowo. :)   ', '2012-01-05', '00:15:45', 'N', 'dankrez48@gmail.com'),
(88, 650, 'Udin Sedunia', 'www.belajarkonseling.com', ' hm...  kae.x  perlu  juga  ne  bantuan  dari  para  konselor...:)		   ', '2012-01-13', '20:09:07', 'Y', 'www.belajarkonseling.com'),
(90, 650, 'Rizal Faizal', 'www.rizal-online.co.cc', ' asyik  aja  dehh...   ', '2012-02-25', '15:01:40', 'Y', 'www.rizal-online.co.cc'),
(91, 645, 'Eka Praja W', 'komputerkampus.com', ' makin  parah  aja  nih  ...\r\nmudah2n  bisa  berbenah  negeri  ku  yg  q  banggakan   ', '2012-03-08', '20:06:07', 'Y', 'komputerkampus.com'),
(137, 650, 'Lukmanul Hakim', '', ' saya  yakin  PHP  juga  bisa  bertahan  sampai  2030   ', '2013-01-19', '18:56:25', 'Y', 'lukmanul.haskim@gmai;.com'),
(146, 645, 'Tommy Utama', 'tommy.utama@gmail.com', ' Calon  hakim  agung  Muhammad  Daming  Sanusi  menyatakan,  hukuman  mati  tidak  layak  diberlakukan  bagi  pelaku  pemerkosaan.   ', '2014-07-21', '21:03:04', 'Y', 'tommy.utama@gmail.com'),
(147, 655, 'Agung Wicaksana', 'dankrez48@gmail.com', 'Mudah-mudahan  windows  8.2  tampilannya  lebih  keren  lagi  dari  windows  8.1 sebelumnya  yang  kurang  enak  di gunakan.  heheheee   ', '2014-07-22', '08:33:04', 'Y', 'dankrez48@gmail.com'),
(144, 650, 'Tommy Utama', 'tommy.utama@gmail.com', 'Pengamat  politik  dari  Charta  Politika,  Yunarto  Wijaya  mempertanyakan  dasar  keputusan  SBY  menunjuk  Roy  Suryo  sebagai  Menpora.   ', '2014-07-21', '20:59:16', 'Y', 'tommy.utama@gmail.com'),
(143, 650, 'Udin Sedunia', 'udin.sedunia@gmail.com', 'Menurut  Yunarto,  Roy  selama  ini  lebih  dikenal  sebagai  pakar  foto  digital  dan  video  serta  dosen  di  sebuah  perguruan  tinggi  negeri.   ', '2014-07-21', '20:57:52', 'Y', 'udin.sedunia@gmail.com'),
(148, 662, 'Agung Wicaksana', 'dankrez48@gmail.com', 'pantat negara yahudi yang sangat perlu untuk dihancurkan /  musnahkan  dan  bantai  seluruh  warga israel..!!!   ', '2014-07-24', '09:29:20', 'Y', 'dankrez48@gmail.com'),
(149, 662, 'Edo Ikfianda', 'edomuhammad90@gmail.com', 'Setelah membentuk Timnas, PSSI versi KLB pimpinan La Nyalla Mahmud Matalitti menunjuk Alfred Riedl sebagai pelatihnya.', '2014-08-09', '17:34:35', 'Y', 'edomuhammad90@gmail.com'),
(152, 650, 'Dewi Safitriir', 'dewi_safitri@gmail.com', 'Peremimpin  tertinggi  Iran,  Ayatollah  Ali  Khamenei  menyampaikan  pernyataan  kontroversial  terkait  ketegangan  di  Gaza.Israele.   ', '2014-08-17', '17:46:28', 'Y', 'dewi_safitri@gmail.com'),
(153, 662, 'Agung Wicaksana', 'ww.phpmu.com', 'Anda penyuka Transformer? Tentu hal yang paling menarik saat menonton film Transformer salah satunya adalah saat adegan transformasi yang begitu keren dari sebuah mobil atau truk menjadi robot yang gagah.\r\n\r\nAnda penyuka Transformer? Tentu hal yang paling menarik saat menonton film Transformer salah satunya adalah saat adegan transformasi yang begitu keren dari sebuah mobil atau truk menjadi robot yang gagah.', '2015-03-25', '06:10:12', 'Y', 'dankrez48@gmail.com'),
(154, 642, 'Tommy Utama', 'tommyutama.com', ' Para  pengunjuk  rasa  membawa  bendera-bendera  Palestina  dan  foro-foto  pemimpin  tertinggi  Iran,  Ayatollah  Ali  Khamenei.   ', '2016-11-24', '10:24:15', 'Y', 'tommy.utama@gmail.com'),
(162, 687, 'mas marno', '', 'maju terus indonesia', '2017-10-04', '14:32:56', 'Y', 'marnosudrajat@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `komentarvid`
--

CREATE TABLE `komentarvid` (
  `id_komentar` int(5) NOT NULL,
  `id_video` int(5) NOT NULL,
  `nama_komentar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_komentar` text COLLATE latin1_general_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam_komentar` time NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `komentarvid`
--

INSERT INTO `komentarvid` (`id_komentar`, `id_video`, `nama_komentar`, `url`, `isi_komentar`, `tgl`, `jam_komentar`, `aktif`) VALUES
(107, 160, 'Prabowo Subianto', 'Prabowo@gmail.com', ' Your  email  address  will  not  be  published.  Required  fields  are  marked', '2014-07-21', '13:29:29', 'N'),
(108, 163, 'Lukman Hakim', 'dankrez48@gmail.com', ' Kita  memang  harus  selamatkan  hutan  indonesia,  walau  apapun  yang  terjadi.   ', '2014-07-21', '13:31:10', 'Y'),
(109, 160, 'Lukman Hakim', 'dankrez48@gmail.com', ' Swarakalibata  V.3 sekarang  hadir  dengan  tampilan  baru  yang  pastinya  sudah  jauh  lebih  maju  dari  versi  sebelumnya.', '2014-07-21', '21:09:31', 'Y'),
(112, 166, 'Lukman Hakim', 'dankrez48@gmail.com', 'Exclusive Di IDAFF Acedemy - &quot;Social Blogging Mastery 2&quot; - Workshop 2 Hari Yang Akan Merubah Hidup Anda Di Tahun 2017. Di Bongkar Oleh Ahlinya Cara Paling Mudah Memiliki Penghasillan Sampingan Lewat Internet Hingga Jutaan Rupiah Setiap Bulannya.', '2017-01-25', '09:40:01', 'Y'),
(113, 166, 'Dewiit Safitri', 'dewiit.safitri@gmail.com', 'Pemimpin tertinggi Iran, Ayatollah Ali Khamenei menyampaikan pernyataan kontroversial terkait ketegangan di Gaza. Khamenei mendorong agar Palestina terus melawan Israel. &quot;Salah satu cara untuk menghentikan rezim kurang ajar ini adalah melanjutkan perlawanan dan dan perjuangan bersenjata harus diperluas ke Tepi Barat,&quot; sebut Khamenei, seperti dikutip dari IRNA.', '2017-01-25', '09:40:55', 'Y'),
(116, 162, 'bandug atmawijaya', 'bandung_api@yahoo.com', 'tidak berprikemanusiaan', '2017-10-04', '10:56:44', 'Y'),
(118, 162, 'maskomen', 'maskomen@ojolali.com', 'komentar testing', '2017-10-04', '13:13:55', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `link`
--

CREATE TABLE `link` (
  `id_link` int(5) NOT NULL,
  `id_parent` int(5) NOT NULL DEFAULT 0,
  `nama_menu` varchar(30) NOT NULL,
  `link` varchar(100) DEFAULT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL DEFAULT 'Ya',
  `groupname` varchar(20) DEFAULT NULL,
  `urutan` int(3) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `gambar` varchar(30) DEFAULT NULL,
  `icon` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `link`
--

INSERT INTO `link` (`id_link`, `id_parent`, `nama_menu`, `link`, `aktif`, `groupname`, `urutan`, `deskripsi`, `gambar`, `icon`) VALUES
(1, 0, 'BISNIS KAMI', '', 'Ya', 'satu', 1, NULL, NULL, NULL),
(2, 1, 'Produk Kami', '', 'Ya', '', 1, 'Kegiatan PERTAMINI dalam menyelenggarakan usaha di bidang energi dan petrokimia, terbagi ke dalam dua sector, yaitu Hulu dan Hilir, serta ditunjang oleh kegiatan Anak-Anak Perusahaan dan Perusahaan Patungan.', 'SPBU.jpg', NULL),
(5, 1, 'Pemegang Saham', '', 'Ya', '', 3, 'Pertamini adalah perusahaan energi nasional yang sahamnya 100% dimiliki oleh Pemerintah Republik Indonesia melalui kementerian Badan usaha milik negara(BUMN) selaku pemegang saham.', 'investor_relation.jpg', ''),
(4, 1, 'Energi Terbarukan', '', 'Ya', '', 2, 'Pertamini mengembangkan energi terbarukan seperti solar photovoltaic (solar cell), mikrohidro, green diesel, bio LNG dan lainnya.', 'renew_energy_PGE.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `id_logo` int(5) NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id_logo`, `gambar`) VALUES
(15, 'bekasi1.png');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(5) NOT NULL,
  `id_parent` int(5) NOT NULL DEFAULT 0,
  `nama_menu` varchar(30) NOT NULL,
  `link` varchar(100) NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL DEFAULT 'Ya',
  `position` enum('Top','Bottom') DEFAULT 'Bottom',
  `urutan` int(3) NOT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `id_parent`, `nama_menu`, `link`, `aktif`, `position`, `urutan`, `deskripsi`) VALUES
(129, 0, 'Profil', '#', 'Ya', 'Bottom', 1, ''),
(150, 0, 'Program', '#', 'Ya', 'Bottom', 2, ''),
(151, 153, 'Rencana Kerja', 'halaman/detail/rencana-kerja', 'Ya', 'Bottom', 1, ''),
(149, 134, 'Struktur Organisasi', 'halaman/detail/struktur-organisasi', 'Ya', 'Bottom', 1, ''),
(131, 134, 'Sejarah', 'halaman/detail/sejarah-instansi', 'Ya', 'Bottom', 2, ''),
(132, 134, 'Visi dan Misi', 'halaman/detail/visi-dan-misi', 'Ya', 'Bottom', 3, ''),
(153, 150, 'Program Dinas', '#', 'Ya', 'Bottom', 1, ''),
(134, 129, 'Profil Dinas', '#', 'Ya', 'Bottom', 4, ''),
(138, 135, 'BBM Industri', '#', 'Ya', 'Bottom', 2, NULL),
(139, 135, 'BBM Pesawat Udara', '#', 'Ya', 'Bottom', 3, NULL),
(142, 0, 'MEDIA & INFORMASI', '#', 'Ya', 'Bottom', 3, ''),
(143, 142, 'Berita & Artikel', '#', 'Ya', 'Bottom', 1, ''),
(144, 142, 'AGENDA', '#', 'Ya', 'Bottom', 2, ''),
(145, 144, 'Agenda Kegiatan', 'agenda', 'Ya', 'Bottom', 1, ''),
(146, 143, 'Berita', 'berita', 'Ya', 'Bottom', 1, ''),
(147, 143, 'Galeri', 'albums', 'Ya', 'Bottom', 2, ''),
(148, 143, 'Video', 'playlist', 'Ya', 'Bottom', 3, ''),
(152, 153, 'Rencana Strategis', '#', 'Ya', 'Bottom', 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE `modul` (
  `id_modul` int(5) NOT NULL,
  `nama_modul` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `link` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `static_content` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `publish` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `status` enum('user','admin') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `urutan` int(5) NOT NULL,
  `link_seo` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`id_modul`, `nama_modul`, `username`, `link`, `static_content`, `gambar`, `publish`, `status`, `aktif`, `urutan`, `link_seo`) VALUES
(2, 'Manajemen User', 'admin', 'manajemenuser', '', '', 'Y', 'user', 'Y', 0, ''),
(18, 'Berita', 'admin', 'listberita', '', '', 'Y', 'user', 'Y', 0, ''),
(71, 'Background Website', 'admin', 'background', '', '', 'N', 'admin', 'N', 0, ''),
(10, 'Manajemen Modul', 'admin', 'manajemenmodul', '', '', 'Y', 'user', 'Y', 0, ''),
(31, 'Kategori Berita ', 'admin', 'kategorikategori', '', '', 'Y', 'user', 'Y', 0, ''),
(33, 'Jajak Pendapat', 'admin', 'jajakpendapat', '', '', 'Y', 'user', 'Y', 0, ''),
(34, 'Tag Berita', 'admin', 'tagberita', '', '', 'Y', 'user', 'Y', 0, ''),
(35, 'Komentar Berita', 'admin', 'komentarberita', '', '', 'Y', 'user', 'Y', 0, ''),
(41, 'Agenda', 'admin', 'agenda', '', '', 'Y', 'user', 'Y', 0, ''),
(43, 'Berita Foto', 'admin', 'album', '', '', 'Y', 'user', 'Y', 0, ''),
(44, 'Galeri Berita Foto', 'admin', 'gallery', '', '', 'Y', 'user', 'Y', 0, ''),
(45, 'Template Website', 'admin', 'templatewebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(46, 'Sensor Kata', 'admin', 'sensorkomentar', '', '', 'Y', 'user', 'Y', 0, ''),
(61, 'Identitas Website', 'admin', 'identitaswebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(57, 'Menu Website', 'admin', 'menuwebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(59, 'Halaman Baru', 'admin', 'halamanbaru', '', '', 'Y', 'user', 'Y', 0, ''),
(62, 'Video', 'admin', 'video', '', '', 'Y', 'user', 'Y', 0, ''),
(63, 'Playlist Video', 'admin', 'playlist', '', '', 'Y', 'user', 'Y', 0, ''),
(64, 'Tag Video', 'admin', 'tagvideo', '', '', 'Y', 'user', 'Y', 0, ''),
(65, 'Komentar Video', 'admin', 'komentarvideo', '', '', 'Y', 'user', 'Y', 0, ''),
(66, 'Logo Website', 'admin', 'logowebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(67, 'Iklan Sidebar', 'admin', 'iklansidebar', '', '', 'N', 'admin', 'N', 0, ''),
(68, 'Iklan Home', 'admin', 'iklanhome', '', '', 'N', 'admin', 'N', 0, ''),
(69, 'Iklan Atas', 'admin', 'iklanatas', '', '', 'N', 'admin', 'N', 0, ''),
(70, 'Pesan Masuk', 'admin', 'pesanmasuk', '', '', 'Y', 'user', 'Y', 0, ''),
(72, 'Sekilas Info', 'admin', 'sekilasinfo', '', '', 'N', 'admin', 'N', 0, ''),
(73, 'Yahoo Messanger', 'admin', 'ym', '', '', 'N', 'admin', 'N', 0, ''),
(74, 'Download Area', 'admin', 'download', '', '', 'Y', 'admin', 'Y', 0, ''),
(75, 'Alamat Kontak', 'admin', 'alamat', '', '', 'Y', 'admin', 'Y', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `mod_alamat`
--

CREATE TABLE `mod_alamat` (
  `id_alamat` int(5) NOT NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mod_alamat`
--

INSERT INTO `mod_alamat` (`id_alamat`, `alamat`) VALUES
(1, '<p><strong>Alamat : Perumahan Taman Rahayu Regency 2, Kec.Setu, Kab.Bekasi</strong></p>\r\n\r\n<p><strong>Telpon :</strong> 123</p>\r\n\r\n<p><strong>Fax :</strong> 123</p>\r\n\r\n<p><strong>email : tamanrahayu2</strong>@gmail.com</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `mod_ym`
--

CREATE TABLE `mod_ym` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `ym_icon` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pasangiklan`
--

CREATE TABLE `pasangiklan` (
  `id_pasangiklan` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `id_playlist` int(5) NOT NULL,
  `jdl_playlist` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `playlist_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gbr_playlist` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`id_playlist`, `jdl_playlist`, `username`, `playlist_seo`, `gbr_playlist`, `aktif`) VALUES
(60, 'Kegiatan Warga', 'admin', 'kegiatan-warga', 'bks.jpg', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `poling`
--

CREATE TABLE `poling` (
  `id_poling` int(5) NOT NULL,
  `pilihan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `rating` int(5) NOT NULL DEFAULT 0,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `poling`
--

INSERT INTO `poling` (`id_poling`, `pilihan`, `status`, `username`, `rating`, `aktif`) VALUES
(41, 'Kurang Puas', 'Jawaban', 'admin', 0, 'Y'),
(40, 'Cukup Puas', 'Jawaban', 'admin', 0, 'Y'),
(39, 'Sangat Puas', 'Jawaban', 'admin', 0, 'Y'),
(38, 'Seberapa puas anda dengan sistem informasi RT 01? ', 'Pertanyaan', 'admin', 0, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `sekilasinfo`
--

CREATE TABLE `sekilasinfo` (
  `id_sekilas` int(5) NOT NULL,
  `info` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `sekilasinfo`
--

INSERT INTO `sekilasinfo` (`id_sekilas`, `info`, `tgl_posting`, `gambar`, `aktif`) VALUES
(1, 'Anak yang mengalami gangguan tidur, cenderung memakai obat2an dan alkohol berlebih saat dewasa.', '2015-04-11', '', 'Y'),
(2, 'WHO merilis, 30 persen anak di dunia kecanduan komputer dan menonton televisi.', '2015-03-16', '', 'Y'),
(3, 'Menurut peneliti di Detroit, orang yang selalu tersenyum lebar cenderung hidup lama.', '2015-04-17', '', 'Y'),
(4, 'Menurut United Stated Trade Representatives, 25% obat yang beredar di adalah palsu.', '2015-04-17', '', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `statistik`
--

CREATE TABLE `statistik` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `tanggal` date NOT NULL,
  `hits` int(10) NOT NULL DEFAULT 1,
  `online` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statistik`
--

INSERT INTO `statistik` (`ip`, `tanggal`, `hits`, `online`) VALUES
('223.255.231.148', '2014-05-06', 1, '1399357334'),
('223.255.231.147', '2014-05-15', 3, '1400119147'),
('223.255.224.73', '2014-05-15', 12, '1400123797'),
('223.255.224.69', '2014-05-16', 2, '1400215103'),
('118.96.51.231', '2014-05-16', 19, '1400233044'),
('223.255.231.146', '2014-05-16', 2, '1400228049'),
('::1', '2014-06-20', 2, '1403230579'),
('::1', '2014-06-22', 8, '1403436591'),
('223.255.231.154', '2014-06-26', 1, '1403739948'),
('223.255.231.148', '2014-06-26', 6, '1403745715'),
('223.255.224.74', '2014-06-26', 1, '1403748060'),
('223.255.224.69', '2014-06-26', 1, '1403753239'),
('223.255.224.77', '2014-06-29', 1, '1404039342'),
('::1', '2014-07-02', 6, '1404277263'),
('127.0.0.1', '2014-07-17', 2, '1405582494'),
('127.0.0.1', '2014-07-21', 1, '1405929828'),
('36.76.60.43', '2014-07-21', 1, '1405951864'),
('223.255.231.154', '2014-07-21', 2, '1405957200'),
('223.255.227.21', '2014-07-22', 1, '1405995171'),
('223.255.231.146', '2014-07-22', 1, '1405997152'),
('223.255.227.21', '2014-07-23', 1, '1406100212'),
('223.255.227.17', '2014-07-23', 1, '1406104552'),
('223.255.227.23', '2014-07-24', 1, '1406168095'),
('223.255.231.153', '2014-07-24', 1, '1406204439'),
('223.255.231.146', '2014-07-25', 1, '1406268985'),
('180.76.5.193', '2014-08-06', 1, '1407302738'),
('180.76.5.23', '2014-08-06', 1, '1407304739'),
('202.67.36.241', '2014-08-06', 1, '1407305643'),
('198.148.27.22', '2014-08-06', 1, '1407306703'),
('180.251.170.42', '2014-08-06', 7, '1407310167'),
('128.199.171.191', '2014-08-06', 3, '1407323435'),
('223.255.231.149', '2014-08-06', 2, '1407309879'),
('223.255.227.28', '2014-08-06', 8, '1407311801'),
('103.24.49.242', '2014-08-06', 1, '1407312326'),
('223.255.231.146', '2014-08-06', 1, '1407313297'),
('180.214.233.34', '2014-08-06', 1, '1407321063'),
('66.249.77.87', '2014-08-06', 1, '1407323509'),
('223.255.227.30', '2014-08-06', 1, '1407325862'),
('180.254.207.13', '2014-08-06', 5, '1407330687'),
('114.79.13.199', '2014-08-06', 1, '1407336900'),
('202.152.199.34', '2014-08-06', 7, '1407337100'),
('180.76.6.21', '2014-08-07', 1, '1407347753'),
('114.79.13.55', '2014-08-07', 3, '1407354277'),
('114.125.41.136', '2014-08-07', 1, '1407352625'),
('180.76.6.147', '2014-08-07', 1, '1407355344'),
('180.76.6.64', '2014-08-07', 1, '1407367237'),
('69.171.247.116', '2014-08-07', 1, '1407379834'),
('69.171.247.119', '2014-08-07', 1, '1407379834'),
('69.171.247.114', '2014-08-07', 1, '1407379834'),
('69.171.247.115', '2014-08-07', 1, '1407379834'),
('202.67.34.29', '2014-08-07', 2, '1407380415'),
('36.76.52.112', '2014-08-07', 1, '1407380496'),
('223.255.231.145', '2014-08-07', 5, '1407387045'),
('223.255.231.153', '2014-08-07', 2, '1407388883'),
('223.255.227.27', '2014-08-07', 1, '1407393087'),
('180.76.5.25', '2014-08-07', 1, '1407394749'),
('223.255.231.146', '2014-08-07', 1, '1407397183'),
('157.55.39.248', '2014-08-07', 1, '1407397231'),
('180.254.200.55', '2014-08-07', 2, '1407399466'),
('110.139.67.15', '2014-08-07', 8, '1407399221'),
('180.242.17.64', '2014-08-07', 11, '1407414373'),
('141.0.8.59', '2014-08-07', 1, '1407412384'),
('110.76.149.91', '2014-08-07', 1, '1407422367'),
('223.255.231.151', '2014-08-07', 3, '1407426943'),
('82.145.209.206', '2014-08-07', 1, '1407430369'),
('223.255.227.28', '2014-08-08', 3, '1407469589'),
('66.93.156.50', '2014-08-08', 1, '1407472340'),
('202.62.17.47', '2014-08-08', 1, '1407484393'),
('36.70.135.163', '2014-08-08', 6, '1407485987'),
('173.252.74.115', '2014-08-08', 1, '1407485153'),
('118.96.58.136', '2014-08-08', 2, '1407486347'),
('114.79.29.68', '2014-08-08', 1, '1407502537'),
('66.220.156.113', '2014-08-08', 1, '1407503375'),
('112.215.66.79', '2014-08-08', 1, '1407503381'),
('125.163.113.156', '2014-08-08', 9, '1407508824'),
('180.76.5.94', '2014-08-08', 1, '1407508624'),
('120.172.9.192', '2014-08-08', 1, '1407515634'),
('202.67.41.51', '2014-08-08', 1, '1407515702'),
('180.253.243.222', '2014-08-09', 1, '1407542724'),
('36.75.224.20', '2014-08-09', 1, '1407548005'),
('180.76.5.65', '2014-08-09', 1, '1407548865'),
('66.249.77.77', '2014-08-09', 2, '1407582711'),
('180.76.6.137', '2014-08-09', 1, '1407553037'),
('66.249.77.87', '2014-08-09', 1, '1407554836'),
('66.249.77.97', '2014-08-09', 2, '1407562640'),
('120.177.44.126', '2014-08-09', 2, '1407558625'),
('223.255.231.145', '2014-08-09', 3, '1407558663'),
('36.73.64.113', '2014-08-09', 1, '1407558640'),
('36.72.187.12', '2014-08-09', 1, '1407560351'),
('202.67.41.51', '2014-08-09', 1, '1407561096'),
('114.125.60.68', '2014-08-09', 4, '1407561514'),
('202.67.40.50', '2014-08-09', 1, '1407562007'),
('180.76.6.136', '2014-08-09', 1, '1407562581'),
('110.232.81.2', '2014-08-09', 5, '1407563275'),
('146.185.28.59', '2014-08-09', 1, '1407564768'),
('120.174.157.139', '2014-08-09', 1, '1407568139'),
('223.255.227.23', '2014-08-09', 2, '1407570163'),
('193.105.210.119', '2014-08-09', 1, '1407577518'),
('125.162.57.66', '2014-08-09', 2, '1407579822'),
('180.241.163.1', '2014-08-09', 8, '1407580493'),
('36.76.44.163', '2014-08-09', 6, '1407603574'),
('180.76.5.144', '2014-08-09', 1, '1407582757'),
('107.167.103.40', '2014-08-09', 1, '1407586189'),
('36.68.48.23', '2014-08-09', 1, '1407586974'),
('192.99.218.151', '2014-08-09', 4, '1407587574'),
('36.74.55.24', '2014-08-09', 3, '1407589161'),
('118.97.212.184', '2014-08-09', 8, '1407595169'),
('36.72.114.118', '2014-08-09', 2, '1407597684'),
('180.76.5.153', '2014-08-09', 1, '1407602870'),
('180.76.5.59', '2014-08-09', 1, '1407603153'),
('180.76.5.18', '2014-08-10', 1, '1407606581'),
('180.254.155.156', '2014-08-10', 2, '1407607003'),
('180.76.6.42', '2014-08-10', 1, '1407608363'),
('36.68.242.217', '2014-08-10', 5, '1407627100'),
('66.249.77.77', '2014-08-10', 2, '1407633623'),
('202.67.44.64', '2014-08-10', 1, '1407629598'),
('180.76.6.43', '2014-08-10', 1, '1407631270'),
('118.97.212.182', '2014-08-10', 4, '1407632228'),
('139.0.102.140', '2014-08-10', 1, '1407633944'),
('66.249.77.87', '2014-08-10', 1, '1407636902'),
('66.249.77.97', '2014-08-10', 1, '1407639983'),
('180.76.6.159', '2014-08-10', 1, '1407640798'),
('118.97.212.181', '2014-08-10', 3, '1407642556'),
('36.68.46.37', '2014-08-10', 2, '1407642940'),
('180.76.5.69', '2014-08-10', 1, '1407645158'),
('180.76.5.80', '2014-08-10', 1, '1407648268'),
('180.76.5.143', '2014-08-10', 1, '1407650068'),
('223.255.231.145', '2014-08-10', 1, '1407650216'),
('180.76.6.149', '2014-08-10', 1, '1407657020'),
('36.77.183.218', '2014-08-10', 2, '1407657119'),
('127.0.0.1', '2014-08-10', 2, '1407660057'),
('127.0.0.1', '2014-08-11', 2, '1407725194'),
('127.0.0.1', '2014-08-12', 1, '1407862185'),
('127.0.0.1', '2014-08-13', 1, '1407899819'),
('127.0.0.1', '2014-08-17', 44, '1408287630'),
('127.0.0.1', '2014-08-18', 253, '1408372590'),
('127.0.0.1', '2014-08-19', 4, '1408413702'),
('::1', '2014-08-19', 90, '1408433250'),
('::1', '2014-08-31', 1, '1409487043'),
('::1', '2015-03-11', 11, '1426061663'),
('::1', '2015-03-12', 1, '1426114982'),
('::1', '2015-03-15', 32, '1426430637'),
('::1', '2015-03-18', 137, '1426666506'),
('::1', '2015-03-19', 143, '1426751746'),
('::1', '2015-03-21', 198, '1426912294'),
('::1', '2015-03-22', 554, '1427039069'),
('127.0.0.1', '2015-03-22', 1, '1427030317'),
('::1', '2015-03-23', 275, '1427093113'),
('::1', '2015-03-24', 42, '1427179474'),
('::1', '2015-03-25', 45, '1427251499'),
('39.225.164.2', '2015-05-14', 7, '1431584409'),
('119.110.72.130', '2015-05-14', 30, '1431595368'),
('89.145.95.2', '2015-05-14', 1, '1431582645'),
('66.220.158.118', '2015-05-14', 1, '1431582842'),
('66.220.158.115', '2015-05-14', 1, '1431582852'),
('66.220.158.112', '2015-05-14', 3, '1431595371'),
('66.220.158.119', '2015-05-14', 1, '1431582942'),
('114.125.43.185', '2015-05-14', 5, '1431602132'),
('119.110.72.130', '2015-05-15', 1, '1431673658'),
('114.125.45.206', '2015-05-16', 18, '1431741581'),
('66.220.158.116', '2015-05-16', 1, '1431741049'),
('66.220.158.118', '2015-05-16', 1, '1431741224'),
('66.220.158.114', '2015-05-16', 1, '1431741233'),
('39.229.6.148', '2015-05-16', 11, '1431791037'),
('39.225.236.155', '2015-05-17', 8, '1431862096'),
('119.110.72.130', '2015-05-19', 6, '1432006569'),
('89.145.95.42', '2015-05-19', 2, '1432006661'),
('114.121.133.117', '2015-05-19', 3, '1432046663'),
('124.195.114.65', '2015-05-28', 16, '1432832381'),
('66.220.158.119', '2015-05-28', 1, '1432831000'),
('66.220.158.115', '2015-05-28', 1, '1432831013'),
('66.220.158.116', '2015-05-28', 1, '1432832385'),
('124.195.114.65', '2015-05-29', 77, '1432836214'),
('66.220.158.113', '2015-05-29', 1, '1432835961'),
('66.249.84.178', '2015-05-29', 1, '1432836220'),
('103.246.200.14', '2015-05-29', 1, '1432851867'),
('103.246.200.59', '2015-05-29', 1, '1432851916'),
('114.124.5.250', '2015-05-29', 6, '1432852876'),
('173.252.105.114', '2015-05-29', 1, '1432852770'),
('120.180.175.150', '2015-05-29', 36, '1432864082'),
('103.246.200.50', '2015-05-29', 1, '1432863615'),
('103.246.200.1', '2015-05-29', 1, '1432863650'),
('103.246.200.33', '2015-05-29', 1, '1432863711'),
('103.246.200.44', '2015-05-29', 1, '1432863795'),
('120.174.144.115', '2015-05-29', 1, '1432908445'),
('119.110.72.130', '2015-05-29', 27, '1432912022'),
('173.252.90.117', '2015-05-29', 1, '1432910852'),
('173.252.90.116', '2015-05-29', 1, '1432910873'),
('173.252.90.118', '2015-05-29', 1, '1432911344'),
('173.252.90.122', '2015-05-29', 1, '1432911470'),
('66.249.84.190', '2015-05-30', 1, '1432945579'),
('39.254.117.222', '2015-05-30', 1, '1432991226'),
('66.249.84.178', '2015-05-31', 1, '1433037242'),
('120.176.92.190', '2015-06-01', 3, '1433128955'),
('66.102.6.210', '2015-06-01', 1, '1433134430'),
('120.164.44.28', '2015-06-01', 13, '1433149419'),
('124.195.118.227', '2015-06-01', 1, '1433170960'),
('120.177.28.244', '2015-06-02', 8, '1433220043'),
('66.249.84.190', '2015-06-02', 1, '1433247837'),
('120.190.75.179', '2015-06-03', 7, '1433302768'),
('119.110.72.130', '2015-06-03', 4, '1433302761'),
('89.145.95.2', '2015-06-03', 1, '1433302690'),
('66.249.71.147', '2015-06-07', 46, '1433696370'),
('66.249.71.130', '2015-06-07', 30, '1433696150'),
('66.249.71.164', '2015-06-07', 37, '1433696154'),
('173.252.74.113', '2015-06-07', 8, '1433694061'),
('173.252.74.117', '2015-06-07', 3, '1433676319'),
('66.249.64.57', '2015-06-07', 1, '1433674283'),
('173.252.88.89', '2015-06-07', 5, '1433677999'),
('173.252.88.86', '2015-06-07', 2, '1433677597'),
('173.252.74.119', '2015-06-07', 7, '1433694862'),
('66.249.79.117', '2015-06-07', 1, '1433674983'),
('173.252.88.84', '2015-06-07', 2, '1433676738'),
('173.252.74.115', '2015-06-07', 3, '1433676460'),
('173.252.74.114', '2015-06-07', 2, '1433694204'),
('173.252.74.118', '2015-06-07', 3, '1433676180'),
('173.252.74.112', '2015-06-07', 5, '1433695314'),
('173.252.88.85', '2015-06-07', 2, '1433677804'),
('173.252.88.90', '2015-06-07', 1, '1433676251'),
('173.252.74.116', '2015-06-07', 5, '1433695249'),
('173.252.88.87', '2015-06-07', 2, '1433677488'),
('173.252.88.88', '2015-06-07', 1, '1433677370'),
('66.249.79.130', '2015-06-07', 1, '1433694848'),
('66.220.156.116', '2015-06-07', 2, '1433696197'),
('66.249.67.104', '2015-06-07', 1, '1433696147'),
('66.220.156.112', '2015-06-07', 2, '1433696173'),
('66.220.146.22', '2015-06-07', 1, '1433696162'),
('66.249.67.117', '2015-06-07', 1, '1433696288'),
('66.220.156.114', '2015-06-07', 1, '1433696309'),
('66.220.156.117', '2015-06-08', 3, '1433711204'),
('66.249.71.164', '2015-06-08', 32, '1433779112'),
('66.220.146.25', '2015-06-08', 2, '1433736854'),
('66.220.156.116', '2015-06-08', 2, '1433709422'),
('66.249.71.147', '2015-06-08', 29, '1433748751'),
('66.220.156.112', '2015-06-08', 4, '1433715007'),
('66.220.146.20', '2015-06-08', 1, '1433696744'),
('66.249.71.130', '2015-06-08', 38, '1433777391'),
('66.220.156.118', '2015-06-08', 2, '1433712628'),
('66.220.146.27', '2015-06-08', 1, '1433712556'),
('66.220.146.26', '2015-06-08', 1, '1433712746'),
('66.249.67.104', '2015-06-08', 4, '1433746797'),
('66.220.146.22', '2015-06-08', 1, '1433714244'),
('66.220.156.115', '2015-06-08', 2, '1433714821'),
('66.249.67.117', '2015-06-08', 2, '1433780504'),
('120.176.251.49', '2015-06-08', 2, '1433737104'),
('66.220.156.119', '2015-06-08', 1, '1433737457'),
('66.249.71.147', '2015-06-09', 3, '1433836081'),
('66.249.71.130', '2015-06-09', 4, '1433835126'),
('66.249.67.104', '2015-06-09', 1, '1433788622'),
('66.249.71.164', '2015-06-09', 1, '1433823064'),
('66.249.71.130', '2015-06-10', 5, '1433953790'),
('66.249.67.117', '2015-06-10', 1, '1433911605'),
('66.249.71.164', '2015-06-10', 3, '1433954890'),
('66.249.71.147', '2015-06-10', 2, '1433953573'),
('66.249.71.147', '2015-06-11', 1, '1433957808'),
('66.249.71.164', '2015-06-11', 2, '1433990805'),
('68.180.228.104', '2015-06-11', 1, '1433975257'),
('66.249.71.130', '2015-06-11', 1, '1433991891'),
('36.68.28.19', '2015-06-14', 5, '1434224041'),
('120.164.46.127', '2015-06-14', 2, '1434239557'),
('66.249.67.248', '2015-06-15', 1, '1434362861'),
('104.193.10.50', '2015-06-15', 3, '1434372762'),
('104.193.10.50', '2015-06-16', 2, '1434454308'),
('36.80.234.114', '2015-06-16', 4, '1434443273'),
('173.252.74.115', '2015-06-16', 1, '1434443264'),
('173.252.74.114', '2015-06-16', 1, '1434443279'),
('119.110.72.130', '2015-06-16', 1, '1434467216'),
('124.195.116.71', '2015-06-17', 3, '1434551738'),
('120.184.130.21', '2015-06-27', 1, '1435386862'),
('66.249.84.246', '2015-06-27', 1, '1435387150'),
('120.176.176.106', '2015-06-28', 7, '1435461088'),
('66.220.158.114', '2015-06-28', 1, '1435461007'),
('66.249.84.129', '2015-06-28', 1, '1435466083'),
('66.249.84.246', '2015-06-29', 2, '1435563211'),
('66.249.84.252', '2015-06-29', 1, '1435563206'),
('66.249.84.246', '2015-06-30', 3, '1435677685'),
('66.249.84.252', '2015-06-30', 1, '1435645799'),
('66.249.84.252', '2015-07-01', 1, '1435710707'),
('66.249.84.129', '2015-07-01', 1, '1435711780'),
('120.177.18.200', '2015-07-02', 1, '1435824891'),
('::1', '2015-11-25', 15, '1448407930'),
('::1', '2015-12-01', 12, '1448944568'),
('::1', '2015-12-03', 9, '1449138520'),
('::1', '2015-12-05', 26, '1449279360'),
('::1', '2015-12-07', 4, '1449442678'),
('::1', '2015-12-08', 8, '1449532582'),
('::1', '2015-12-13', 31, '1449974628'),
('::1', '2015-12-18', 9, '1450418535'),
('::1', '2015-12-21', 10, '1450654644'),
('::1', '2015-12-24', 3, '1450917714'),
('::1', '2015-12-25', 4, '1451037761'),
('::1', '2015-12-26', 5, '1451086546'),
('::1', '2016-01-01', 1, '1451626224'),
('::1', '2016-01-12', 2, '1452564572'),
('::1', '2016-01-16', 7, '1452913899'),
('::1', '2016-01-17', 150, '1453036730'),
('::1', '2016-07-24', 24, '1469318037'),
('::1', '2016-07-29', 1, '1469767572'),
('::1', '2016-07-31', 1, '1469936872'),
('::1', '2016-08-01', 14, '1470019073'),
('::1', '2016-08-12', 4, '1470940786'),
('::1', '2016-08-14', 3, '1471191885'),
('::1', '2016-08-22', 5, '1471851644'),
('::1', '2016-08-26', 4, '1472207940'),
('::1', '2016-08-29', 9, '1472475500'),
('::1', '2016-08-30', 1, '1472531831'),
('::1', '2016-09-13', 4, '1473760584'),
('::1', '2016-09-16', 7, '1473998550'),
('::1', '2016-09-17', 3, '1474076080'),
('::1', '2016-09-20', 4, '1474335445'),
('::1', '2016-09-21', 5, '1474470987'),
('::1', '2016-09-26', 8, '1474866854'),
('::1', '2016-11-21', 20, '1479719811'),
('::1', '2016-11-22', 26, '1479795839'),
('::1', '2016-12-24', 1, '1482592503'),
('::1', '2016-12-23', 2, '1482451494'),
('::1', '2016-12-20', 7, '1482205377'),
('::1', '2016-12-14', 4, '1481717872'),
('::1', '2016-12-13', 24, '1481593512'),
('::1', '2016-12-09', 1, '1481243159'),
('::1', '2016-12-03', 3, '1480741491'),
('::1', '2016-11-28', 32, '1480303392'),
('::1', '2016-11-27', 2, '1480224412'),
('::1', '2016-11-24', 403, '1479984680'),
('::1', '2016-11-23', 2, '1479913316'),
('::1', '2017-01-03', 9, '1483421812'),
('::1', '2017-01-04', 2, '1483534977'),
('::1', '2017-01-05', 3, '1483627230'),
('::1', '2017-01-14', 1, '1484352852'),
('::1', '2017-01-17', 3, '1484663823'),
('::1', '2017-01-25', 12, '1485359750'),
('::1', '2017-01-26', 37, '1485414680'),
('::1', '2017-01-27', 70, '1485508785'),
('::1', '2017-01-28', 1, '1485567010'),
('::1', '2017-02-04', 1, '1486213804'),
('::1', '2017-02-09', 14, '1486659480'),
('::1', '2017-02-10', 3, '1486684650'),
('::1', '2017-02-11', 11, '1486773431'),
('::1', '2017-02-12', 6, '1486869838'),
('::1', '2017-02-13', 5, '1486995163'),
('::1', '2017-02-15', 3, '1487123924'),
('::1', '2017-02-21', 1, '1487659967'),
('::1', '2017-02-23', 7, '1487832476'),
('::1', '2017-02-26', 4, '1488064851'),
('::1', '2017-03-13', 44, '1489366890'),
('::1', '2017-03-17', 24, '1489744337'),
('::1', '2017-03-20', 1, '1489988038'),
('::1', '2017-03-25', 1, '1490413626'),
('::1', '2017-03-29', 7, '1490744633'),
('::1', '2017-04-02', 1, '1491122695'),
('::1', '2017-04-06', 56, '1491462329'),
('::1', '2017-04-07', 59, '1491524075'),
('::1', '2017-04-09', 20, '1491711058'),
('::1', '2017-04-11', 9, '1491877995'),
('::1', '2017-04-12', 124, '1492006218'),
('::1', '2017-04-13', 53, '1492088580'),
('::1', '2017-05-14', 133, '1494767093'),
('::1', '2017-05-20', 167, '1495299592'),
('::1', '2017-05-21', 234, '1495359950'),
('::1', '2017-05-29', 1, '1496031966'),
('::1', '2017-08-04', 2, '1501862778'),
('::1', '2017-08-05', 3, '1501890677'),
('::1', '2017-09-13', 5, '1505272460'),
('::1', '2017-09-22', 5, '1506065936'),
('::1', '2017-09-24', 6, '1506263121'),
('::1', '2017-09-27', 1, '1506491577'),
('::1', '2017-09-28', 20, '1506614988'),
('::1', '2017-09-29', 308, '1506696202'),
('::1', '2017-09-30', 495, '1506783608'),
('::1', '2017-10-01', 77, '1506868529'),
('::1', '2017-10-02', 353, '1506962237'),
('::1', '2017-10-03', 16, '1507035971'),
('::1', '2017-10-04', 159, '1507123395'),
('::1', '2017-10-05', 38, '1507218119'),
('::1', '2017-10-06', 68, '1507275289'),
('::1', '2017-10-07', 1, '1507361033'),
('::1', '2017-10-08', 1, '1507413903'),
('::1', '2017-10-11', 4, '1507704206'),
('::1', '2017-10-31', 8, '1509435169'),
('::1', '2017-11-11', 1, '1510417532'),
('::1', '2017-11-12', 45, '1510481123'),
('::1', '2017-11-13', 38, '1510568837'),
('::1', '2018-08-25', 30, '1535191969'),
('::1', '2018-08-26', 2, '1535246562'),
('::1', '2018-08-27', 7, '1535378738'),
('::1', '2018-08-30', 1, '1535576820'),
('::1', '2018-08-31', 9, '1535732014'),
('110.138.150.110', '2018-12-03', 2, '1543855812'),
('110.138.150.110', '2018-12-04', 11, '1543857572'),
('115.178.251.153', '2018-12-08', 1, '1544231764'),
('141.8.142.101', '2018-12-13', 1, '1544651736'),
('::1', '2018-12-15', 3, '1544864222'),
('::1', '2018-12-20', 47, '1545303770'),
('202.150.144.150', '2018-12-20', 2, '1545304092'),
('125.161.84.181', '2018-12-20', 10, '1545322660'),
('66.96.228.105', '2018-12-21', 1, '1545355325'),
('125.161.84.181', '2018-12-22', 4, '1545434346'),
('182.0.180.19', '2018-12-22', 2, '1545441562'),
('182.0.204.171', '2018-12-22', 1, '1545494525'),
('118.96.92.133', '2018-12-23', 6, '1545515886'),
('114.124.174.146', '2018-12-23', 1, '1545542696'),
('125.161.84.181', '2018-12-23', 2, '1545578365'),
('66.96.228.105', '2018-12-25', 1, '1545723398'),
('66.249.71.76', '2018-12-26', 1, '1545771742'),
('66.249.71.82', '2018-12-26', 1, '1545776597'),
('103.22.251.190', '2018-12-27', 20, '1545898631'),
('180.244.165.111', '2018-12-27', 2, '1545919245'),
('110.138.150.46', '2018-12-27', 6, '1545923315'),
('54.209.60.63', '2018-12-27', 4, '1545923686'),
('54.86.66.252', '2018-12-27', 2, '1545923641'),
('54.175.74.27', '2018-12-27', 2, '1545922745'),
('103.22.251.190', '2018-12-28', 3, '1545958383'),
('103.44.37.205', '2018-12-28', 1, '1546008406'),
('114.124.200.121', '2018-12-28', 1, '1546014138'),
('66.249.71.74', '2018-12-29', 4, '1546093329'),
('95.108.181.111', '2018-12-29', 1, '1546083508'),
('66.249.71.76', '2018-12-29', 3, '1546094904'),
('66.249.71.78', '2018-12-29', 1, '1546088814'),
('66.249.71.80', '2018-12-29', 1, '1546102275'),
('66.249.71.78', '2018-12-30', 7, '1546180864'),
('66.249.71.74', '2018-12-30', 3, '1546133664'),
('66.249.71.76', '2018-12-30', 3, '1546184016'),
('66.249.71.82', '2018-12-30', 3, '1546138236'),
('66.249.71.84', '2018-12-30', 1, '1546135653'),
('180.252.123.89', '2018-12-30', 40, '1546161736'),
('54.209.60.63', '2018-12-30', 5, '1546162023'),
('120.188.83.157', '2018-12-30', 6, '1546144279'),
('54.86.66.252', '2018-12-30', 5, '1546161946'),
('184.72.115.35', '2018-12-30', 4, '1546161969'),
('66.249.71.78', '2018-12-31', 5, '1546271778'),
('103.22.251.190', '2018-12-31', 4, '1546221825'),
('180.252.123.89', '2018-12-31', 15, '1546245979'),
('54.175.74.27', '2018-12-31', 1, '1546242394'),
('66.249.71.76', '2018-12-31', 2, '1546275362'),
('66.249.71.74', '2018-12-31', 4, '1546271554'),
('66.249.71.76', '2019-01-01', 3, '1546281298'),
('66.249.71.78', '2019-01-01', 3, '1546358903'),
('66.249.71.80', '2019-01-01', 2, '1546358238'),
('141.8.142.118', '2019-01-01', 1, '1546290175'),
('37.9.113.33', '2019-01-01', 1, '1546290440'),
('66.249.71.74', '2019-01-01', 2, '1546359634'),
('66.249.71.82', '2019-01-01', 1, '1546351958'),
('66.249.71.78', '2019-01-02', 9, '1546381496'),
('66.249.79.10', '2019-01-02', 1, '1546367648'),
('66.249.71.76', '2019-01-02', 11, '1546382015'),
('66.249.71.74', '2019-01-02', 7, '1546382234'),
('141.8.142.101', '2019-01-02', 1, '1546372600'),
('103.22.251.190', '2019-01-02', 3, '1546420295'),
('202.150.144.150', '2019-01-02', 57, '1546426821'),
('54.209.60.63', '2019-01-02', 2, '1546425896'),
('178.154.171.43', '2019-01-02', 1, '1546412093'),
('54.86.66.252', '2019-01-02', 2, '1546425896'),
('52.71.155.178', '2019-01-02', 1, '1546422347'),
('180.243.245.25', '2019-01-02', 3, '1546444927'),
('180.243.245.25', '2019-01-03', 4, '1546453402'),
('115.178.212.29', '2019-01-03', 2, '1546473425'),
('87.228.16.238', '2019-01-03', 1, '1546471759'),
('103.22.251.190', '2019-01-03', 1, '1546475762'),
('66.249.71.76', '2019-01-03', 1, '1546512495'),
('120.188.81.189', '2019-01-03', 4, '1546518823'),
('66.249.71.78', '2019-01-03', 2, '1546532293'),
('95.108.181.108', '2019-01-03', 1, '1546519335'),
('66.249.71.82', '2019-01-03', 1, '1546519914'),
('66.249.71.74', '2019-01-03', 2, '1546527893'),
('66.249.71.84', '2019-01-03', 3, '1546528804'),
('66.249.71.80', '2019-01-03', 3, '1546532408'),
('66.249.71.78', '2019-01-04', 1, '1546534824'),
('104.248.145.107', '2019-01-04', 1, '1546557103'),
('178.154.171.43', '2019-01-04', 1, '1546557759'),
('66.249.71.76', '2019-01-04', 2, '1546619005'),
('103.22.251.190', '2019-01-04', 1, '1546564131'),
('202.150.144.150', '2019-01-04', 1, '1546581657'),
('37.9.113.33', '2019-01-04', 2, '1546620746'),
('66.249.71.74', '2019-01-04', 2, '1546614909'),
('141.8.142.101', '2019-01-04', 1, '1546620720'),
('180.251.137.168', '2019-01-04', 1, '1546621034'),
('180.251.137.168', '2019-01-05', 25, '1546683617'),
('115.178.216.75', '2019-01-05', 1, '1546623156'),
('66.249.71.74', '2019-01-05', 6, '1546704536'),
('66.249.71.78', '2019-01-05', 4, '1546704014'),
('66.249.71.76', '2019-01-05', 8, '1546703841'),
('66.249.71.80', '2019-01-05', 2, '1546694494'),
('104.248.145.116', '2019-01-05', 1, '1546657479'),
('114.124.182.232', '2019-01-05', 1, '1546659127'),
('5.164.160.213', '2019-01-05', 1, '1546666662'),
('188.166.231.101', '2019-01-05', 1, '1546666747'),
('110.138.149.80', '2019-01-05', 11, '1546668934'),
('52.71.155.178', '2019-01-05', 1, '1546667125'),
('184.72.115.35', '2019-01-05', 3, '1546680722'),
('54.209.60.63', '2019-01-05', 1, '1546680108'),
('128.199.120.251', '2019-01-05', 1, '1546680849'),
('46.0.128.100', '2019-01-05', 1, '1546699582'),
('66.249.71.128', '2019-01-05', 1, '1546704884'),
('66.249.71.76', '2019-01-06', 2, '1546714454'),
('66.249.71.78', '2019-01-06', 1, '1546710191'),
('66.249.71.74', '2019-01-06', 1, '1546714541'),
('180.251.137.168', '2019-01-06', 3, '1546785568'),
('141.8.142.101', '2019-01-06', 1, '1546729850'),
('120.188.80.197', '2019-01-06', 2, '1546755787'),
('66.249.71.82', '2019-01-06', 1, '1546757963'),
('52.71.155.178', '2019-01-06', 1, '1546769595'),
('23.237.4.26', '2019-01-06', 2, '1546775616'),
('37.9.113.33', '2019-01-06', 1, '1546779451'),
('141.8.142.118', '2019-01-06', 1, '1546779452'),
('103.22.251.190', '2019-01-07', 1, '1546826016'),
('202.150.144.150', '2019-01-07', 38, '1546859174'),
('54.209.60.63', '2019-01-07', 1, '1546827241'),
('83.217.214.72', '2019-01-07', 1, '1546846866'),
('52.71.155.178', '2019-01-07', 3, '1546859561'),
('54.175.74.27', '2019-01-07', 2, '1546874023'),
('54.86.66.252', '2019-01-07', 1, '1546859682'),
('180.251.137.168', '2019-01-07', 4, '1546880192'),
('64.62.232.44', '2019-01-07', 2, '1546878448'),
('184.72.115.35', '2019-01-07', 1, '1546880294'),
('180.251.137.168', '2019-01-08', 5, '1546880656'),
('184.72.115.35', '2019-01-08', 2, '1546881582'),
('54.175.74.27', '2019-01-08', 1, '1546881571'),
('52.71.155.178', '2019-01-08', 2, '1546881574'),
('95.220.210.29', '2019-01-08', 1, '1546903469'),
('37.9.113.160', '2019-01-08', 1, '1546926519'),
('180.251.137.168', '2019-01-09', 33, '1546985750'),
('54.209.60.63', '2019-01-09', 6, '1547026088'),
('52.71.155.178', '2019-01-09', 5, '1547026077'),
('54.86.66.252', '2019-01-09', 6, '1547017403'),
('141.8.142.101', '2019-01-09', 1, '1546983406'),
('89.179.106.247', '2019-01-09', 1, '1546986303'),
('66.249.71.84', '2019-01-09', 1, '1546991500'),
('202.150.144.150', '2019-01-09', 13, '1547016954'),
('184.72.115.35', '2019-01-09', 1, '1547017333'),
('103.22.251.190', '2019-01-09', 2, '1547022365'),
('54.175.74.27', '2019-01-09', 2, '1547026082'),
('37.9.113.33', '2019-01-09', 1, '1547049359'),
('37.9.113.33', '2019-01-10', 1, '1547090069'),
('141.8.142.101', '2019-01-10', 1, '1547093177'),
('37.146.193.228', '2019-01-10', 1, '1547127127'),
('141.8.142.101', '2019-01-11', 2, '1547209800'),
('202.150.144.150', '2019-01-11', 1, '1547172971'),
('52.71.155.178', '2019-01-11', 1, '1547173755'),
('23.237.4.26', '2019-01-11', 3, '1547199054'),
('109.173.101.59', '2019-01-11', 1, '1547199506'),
('128.69.144.84', '2019-01-11', 1, '1547214129'),
('110.138.148.38', '2019-01-11', 16, '1547225754'),
('54.86.66.252', '2019-01-11', 1, '1547219107'),
('110.138.148.38', '2019-01-12', 20, '1547303273'),
('52.71.155.178', '2019-01-12', 4, '1547228730'),
('54.86.66.252', '2019-01-12', 5, '1547232009'),
('184.72.115.35', '2019-01-12', 3, '1547229560'),
('89.178.225.19', '2019-01-12', 1, '1547248233'),
('182.1.119.89', '2019-01-12', 5, '1547249832'),
('37.204.142.87', '2019-01-12', 1, '1547277032'),
('176.15.231.136', '2019-01-12', 1, '1547289512'),
('128.204.21.113', '2019-01-12', 1, '1547306851'),
('87.228.16.238', '2019-01-13', 1, '1547320904'),
('37.9.113.14', '2019-01-13', 1, '1547324807'),
('178.154.171.37', '2019-01-13', 1, '1547351095'),
('128.204.35.230', '2019-01-13', 1, '1547366690'),
('87.240.53.31', '2019-01-14', 1, '1547404303'),
('37.110.50.217', '2019-01-14', 1, '1547404303'),
('46.42.160.194', '2019-01-14', 1, '1547422958'),
('202.150.144.150', '2019-01-14', 1, '1547432637'),
('104.194.2.5', '2019-01-14', 2, '1547432689'),
('54.86.66.252', '2019-01-14', 1, '1547433211'),
('110.138.149.40', '2019-01-14', 9, '1547447218'),
('54.209.60.63', '2019-01-14', 1, '1547458935'),
('110.138.148.38', '2019-01-14', 1, '1547461372'),
('141.8.142.101', '2019-01-14', 1, '1547479426'),
('128.68.218.162', '2019-01-15', 1, '1547498440'),
('37.9.113.14', '2019-01-15', 1, '1547520494'),
('222.124.217.26', '2019-01-16', 1, '1547629265'),
('46.188.24.155', '2019-01-16', 1, '1547631248'),
('141.8.142.101', '2019-01-16', 1, '1547638678'),
('37.9.113.33', '2019-01-16', 1, '1547649522'),
('141.8.142.101', '2019-01-17', 2, '1547735025'),
('37.146.193.228', '2019-01-17', 1, '1547665797'),
('36.70.60.2', '2019-01-17', 6, '1547713187'),
('202.150.144.150', '2019-01-17', 3, '1547711426'),
('110.138.148.230', '2019-01-17', 1, '1547730077'),
('5.45.207.60', '2019-01-17', 1, '1547735136'),
('110.138.148.230', '2019-01-18', 1, '1547759471'),
('128.68.218.162', '2019-01-18', 1, '1547766416'),
('202.150.144.150', '2019-01-18', 1, '1547775804'),
('180.252.140.255', '2019-01-22', 1, '1548109830'),
('54.175.74.27', '2019-01-22', 1, '1548110013'),
('87.250.224.114', '2019-01-22', 1, '1548120027'),
('141.8.142.162', '2019-01-22', 1, '1548121656'),
('141.8.142.101', '2019-01-22', 1, '1548156434'),
('87.250.224.124', '2019-01-26', 2, '1548487746'),
('141.8.142.192', '2019-01-26', 1, '1548447970'),
('141.8.142.127', '2019-01-26', 1, '1548480194'),
('213.180.203.29', '2019-01-26', 1, '1548480197'),
('5.255.253.3', '2019-01-26', 1, '1548486810'),
('178.154.244.18', '2019-01-26', 1, '1548487113'),
('66.249.71.76', '2019-01-27', 1, '1548565319'),
('66.249.71.78', '2019-01-28', 1, '1548629575'),
('141.8.142.101', '2019-01-28', 1, '1548680146'),
('115.178.209.32', '2019-01-29', 5, '1548706917'),
('114.6.76.2', '2019-01-29', 1, '1548724521'),
('125.161.106.233', '2019-01-29', 1, '1548728754'),
('103.14.44.130', '2019-01-29', 2, '1548766351'),
('103.233.154.10', '2019-01-29', 3, '1548740261'),
('36.78.75.90', '2019-01-29', 1, '1548746371'),
('163.53.186.2', '2019-01-29', 1, '1548748507'),
('125.161.169.211', '2019-01-29', 1, '1548778687'),
('5.165.47.86', '2019-01-30', 1, '1548794580'),
('37.9.113.86', '2019-01-30', 1, '1548837487'),
('37.9.113.107', '2019-01-30', 1, '1548838129'),
('37.9.113.33', '2019-01-31', 1, '1548874682'),
('95.27.251.93', '2019-01-31', 1, '1548878629'),
('66.249.71.76', '2019-02-02', 2, '1549117511'),
('37.9.113.199', '2019-02-03', 1, '1549204947'),
('141.8.142.103', '2019-02-04', 1, '1549218715'),
('141.8.142.101', '2019-02-04', 1, '1549287944'),
('37.9.113.33', '2019-02-05', 2, '1549345856'),
('66.249.71.76', '2019-02-07', 1, '1549542013'),
('66.249.71.74', '2019-02-08', 1, '1549604666'),
('95.108.181.102', '2019-02-10', 1, '1549804400'),
('37.9.113.14', '2019-02-10', 1, '1549817280'),
('202.150.144.150', '2019-02-11', 9, '1549873334'),
('141.8.142.101', '2019-02-11', 1, '1549892166'),
('202.150.144.150', '2019-02-12', 2, '1549945353'),
('66.249.71.74', '2019-02-13', 1, '1550028418'),
('202.150.144.150', '2019-02-13', 43, '1550055129'),
('141.8.142.101', '2019-02-14', 1, '1550083200'),
('110.137.195.236', '2019-02-14', 47, '1550099094'),
('66.249.71.78', '2019-02-14', 1, '1550094440'),
('141.8.142.101', '2019-02-15', 2, '1550201773'),
('37.9.113.33', '2019-02-15', 1, '1550218437'),
('66.249.71.74', '2019-02-19', 1, '1550517907'),
('141.8.142.103', '2019-02-19', 1, '1550571550'),
('66.249.71.76', '2019-02-19', 1, '1550582647'),
('110.138.148.170', '2019-02-20', 25, '1550654978'),
('202.150.144.150', '2019-02-21', 121, '1550745556'),
('37.9.113.33', '2019-02-21', 1, '1550729109'),
('178.154.244.55', '2019-02-21', 1, '1550750575'),
('37.9.113.107', '2019-02-21', 1, '1550755252'),
('180.243.245.175', '2019-02-21', 4, '1550764556'),
('180.243.245.175', '2019-02-22', 3, '1550770295'),
('202.150.144.150', '2019-02-22', 2, '1550823447'),
('114.124.202.143', '2019-02-22', 1, '1550826428'),
('95.27.184.26', '2019-02-23', 1, '1550889254'),
('110.137.209.112', '2019-02-23', 1, '1550932503'),
('110.138.150.224', '2019-02-24', 15, '1551017356'),
('104.194.2.5', '2019-02-24', 2, '1550944886'),
('66.220.149.5', '2019-02-24', 1, '1550945541'),
('66.220.149.9', '2019-02-24', 1, '1550945541'),
('36.73.145.133', '2019-02-24', 1, '1550945567'),
('125.163.229.7', '2019-02-24', 5, '1550945629'),
('178.128.50.28', '2019-02-24', 1, '1550945644'),
('118.96.153.223', '2019-02-24', 1, '1550945691'),
('36.77.128.166', '2019-02-24', 1, '1550945792'),
('115.164.93.39', '2019-02-24', 3, '1550946546'),
('95.70.207.154', '2019-02-24', 1, '1550945813'),
('36.82.102.60', '2019-02-24', 3, '1550945882'),
('112.215.173.73', '2019-02-24', 5, '1550945916'),
('114.4.216.0', '2019-02-24', 1, '1550945881'),
('223.255.230.71', '2019-02-24', 1, '1550945895'),
('36.74.181.176', '2019-02-24', 3, '1550945949'),
('46.104.40.216', '2019-02-24', 1, '1550945910'),
('223.164.5.161', '2019-02-24', 2, '1550946116'),
('116.206.9.56', '2019-02-24', 6, '1550946174'),
('36.69.139.128', '2019-02-24', 1, '1550946106'),
('182.1.10.196', '2019-02-24', 1, '1550946110'),
('1.200.221.143', '2019-02-24', 1, '1550946115'),
('140.213.4.240', '2019-02-24', 1, '1550946168'),
('180.241.202.99', '2019-02-24', 2, '1550946193'),
('182.0.146.119', '2019-02-24', 3, '1550946300'),
('36.70.185.61', '2019-02-24', 1, '1550946273'),
('182.0.215.119', '2019-02-24', 5, '1550946450'),
('182.1.201.159', '2019-02-24', 1, '1550946507'),
('114.125.11.85', '2019-02-24', 1, '1550946540'),
('139.193.10.41', '2019-02-24', 2, '1550946692'),
('182.253.48.62', '2019-02-24', 6, '1550946780'),
('182.0.242.147', '2019-02-24', 3, '1550946786'),
('182.30.199.223', '2019-02-24', 2, '1550946814'),
('114.125.230.46', '2019-02-24', 1, '1550947037'),
('180.214.232.30', '2019-02-24', 1, '1550947092'),
('180.246.151.206', '2019-02-24', 1, '1550947189'),
('203.78.118.57', '2019-02-24', 4, '1550947289'),
('114.142.172.37', '2019-02-24', 1, '1550947241'),
('114.4.82.33', '2019-02-24', 1, '1550947315'),
('202.80.217.72', '2019-02-24', 16, '1550947603'),
('216.162.47.69', '2019-02-24', 1, '1550947374'),
('139.192.106.123', '2019-02-24', 1, '1550947493'),
('103.44.37.175', '2019-02-24', 1, '1550947498'),
('114.124.235.202', '2019-02-24', 1, '1550947553'),
('202.67.37.2', '2019-02-24', 5, '1550947640'),
('223.255.230.25', '2019-02-24', 3, '1550947770'),
('36.65.226.4', '2019-02-24', 1, '1550947753'),
('120.188.93.55', '2019-02-24', 2, '1550948012'),
('114.124.228.152', '2019-02-24', 3, '1550948281'),
('202.67.35.27', '2019-02-24', 6, '1550948935'),
('36.80.223.16', '2019-02-24', 2, '1550948948'),
('125.166.117.179', '2019-02-24', 2, '1550948756'),
('182.0.173.192', '2019-02-24', 2, '1550948844'),
('180.241.170.165', '2019-02-24', 1, '1550948861'),
('180.249.181.14', '2019-02-24', 1, '1550948923'),
('36.70.245.116', '2019-02-24', 1, '1550948971'),
('54.209.60.63', '2019-02-24', 4, '1550949278'),
('54.86.66.252', '2019-02-24', 5, '1550997517'),
('54.175.74.27', '2019-02-24', 2, '1550949213'),
('36.68.16.165', '2019-02-24', 1, '1550949231'),
('52.71.155.178', '2019-02-24', 3, '1551022410'),
('180.242.22.193', '2019-02-24', 2, '1550949499'),
('116.206.30.38', '2019-02-24', 3, '1550950249'),
('72.14.199.114', '2019-02-24', 1, '1550950278'),
('180.246.134.132', '2019-02-24', 3, '1550950724'),
('36.72.168.229', '2019-02-24', 1, '1550950766'),
('116.206.14.59', '2019-02-24', 1, '1550950790'),
('182.1.202.63', '2019-02-24', 4, '1550951277'),
('111.94.43.162', '2019-02-24', 7, '1550951352'),
('182.1.219.52', '2019-02-24', 1, '1550951310'),
('182.1.216.121', '2019-02-24', 1, '1550951349'),
('103.213.128.96', '2019-02-24', 1, '1550951463'),
('139.193.100.182', '2019-02-24', 3, '1550951632'),
('36.79.101.211', '2019-02-24', 6, '1550951738'),
('114.124.214.231', '2019-02-24', 4, '1550952311'),
('36.73.168.208', '2019-02-24', 2, '1550952499'),
('120.188.37.133', '2019-02-24', 3, '1550952604'),
('36.79.221.145', '2019-02-24', 1, '1550953110'),
('36.75.156.219', '2019-02-24', 7, '1550959856'),
('114.124.241.177', '2019-02-24', 1, '1550953873'),
('114.124.204.176', '2019-02-24', 5, '1550953932'),
('182.1.108.154', '2019-02-24', 4, '1550954741'),
('120.188.74.146', '2019-02-24', 2, '1550954541'),
('180.243.173.1', '2019-02-24', 3, '1550954854'),
('114.125.86.184', '2019-02-24', 4, '1550955135'),
('114.125.86.108', '2019-02-24', 3, '1550955362'),
('114.125.86.164', '2019-02-24', 4, '1550955498'),
('36.83.100.38', '2019-02-24', 2, '1550955635'),
('36.74.38.12', '2019-02-24', 1, '1550955626'),
('182.1.166.176', '2019-02-24', 1, '1550956187'),
('140.213.1.196', '2019-02-24', 1, '1550956284'),
('114.125.26.18', '2019-02-24', 1, '1550956820'),
('180.211.93.218', '2019-02-24', 3, '1550957433'),
('36.65.227.23', '2019-02-24', 1, '1550957624'),
('139.192.201.7', '2019-02-24', 2, '1551004659'),
('182.1.76.5', '2019-02-24', 1, '1550958067'),
('114.125.29.111', '2019-02-24', 1, '1550958120'),
('111.94.201.150', '2019-02-24', 1, '1550958173'),
('114.4.83.150', '2019-02-24', 2, '1550958320'),
('36.70.10.237', '2019-02-24', 1, '1550958673'),
('182.0.151.52', '2019-02-24', 2, '1550958844'),
('114.125.167.78', '2019-02-24', 1, '1550959013'),
('114.125.170.54', '2019-02-24', 1, '1550959139'),
('180.253.150.202', '2019-02-24', 1, '1550959339'),
('182.1.197.90', '2019-02-24', 1, '1550959632'),
('180.243.250.100', '2019-02-24', 2, '1550960076'),
('112.215.219.170', '2019-02-24', 1, '1550960094'),
('203.78.121.125', '2019-02-24', 1, '1550960336'),
('114.4.217.153', '2019-02-24', 4, '1550960658'),
('116.206.8.58', '2019-02-24', 2, '1550960763'),
('61.94.246.246', '2019-02-24', 1, '1550960737'),
('36.83.131.85', '2019-02-24', 1, '1550961032'),
('66.220.149.22', '2019-02-24', 1, '1550961106'),
('114.124.132.14', '2019-02-24', 1, '1550961257'),
('110.138.151.0', '2019-02-24', 1, '1550961264'),
('114.124.200.115', '2019-02-24', 1, '1550961354'),
('36.74.153.128', '2019-02-24', 1, '1550961480'),
('180.244.235.118', '2019-02-24', 8, '1550961662'),
('114.142.172.22', '2019-02-24', 1, '1550961605'),
('115.178.254.42', '2019-02-24', 1, '1550961650'),
('114.5.144.190', '2019-02-24', 4, '1550961852'),
('116.206.42.78', '2019-02-24', 2, '1550961951'),
('114.124.176.190', '2019-02-24', 2, '1550962157'),
('36.73.142.126', '2019-02-24', 1, '1550962325'),
('114.125.39.59', '2019-02-24', 1, '1550962360'),
('182.1.8.237', '2019-02-24', 2, '1550962672'),
('182.1.94.225', '2019-02-24', 1, '1550962722'),
('115.178.223.136', '2019-02-24', 1, '1550962938'),
('180.251.133.244', '2019-02-24', 1, '1550963023'),
('120.188.65.239', '2019-02-24', 1, '1550963037'),
('180.246.150.188', '2019-02-24', 2, '1550963140'),
('182.1.92.211', '2019-02-24', 1, '1550963390'),
('36.71.232.66', '2019-02-24', 1, '1550963413'),
('202.67.45.22', '2019-02-24', 3, '1550963482'),
('116.206.9.26', '2019-02-24', 3, '1551021984'),
('36.80.107.105', '2019-02-24', 1, '1550963725'),
('120.188.66.65', '2019-02-24', 1, '1550963726'),
('36.82.235.134', '2019-02-24', 4, '1550963853'),
('182.1.32.182', '2019-02-24', 1, '1550963918'),
('114.124.177.233', '2019-02-24', 3, '1550963978'),
('116.206.14.49', '2019-02-24', 3, '1550964057'),
('112.215.244.76', '2019-02-24', 1, '1550963991'),
('114.142.168.22', '2019-02-24', 2, '1550964701'),
('114.125.58.200', '2019-02-24', 1, '1550964338'),
('180.253.183.124', '2019-02-24', 1, '1550964340'),
('114.4.213.105', '2019-02-24', 1, '1550964374'),
('182.1.179.84', '2019-02-24', 5, '1550964534'),
('114.5.212.95', '2019-02-24', 2, '1550964669'),
('112.215.239.159', '2019-02-24', 3, '1550964831'),
('202.67.46.237', '2019-02-24', 3, '1550965054'),
('114.124.247.137', '2019-02-24', 1, '1550965214'),
('116.206.29.89', '2019-02-24', 1, '1550965280'),
('112.215.242.204', '2019-02-24', 8, '1550965446'),
('114.124.174.33', '2019-02-24', 1, '1550965428'),
('180.244.235.208', '2019-02-24', 1, '1550965643'),
('125.167.173.218', '2019-02-24', 3, '1550965822'),
('182.1.25.73', '2019-02-24', 2, '1550965941'),
('180.245.113.166', '2019-02-24', 1, '1550966049'),
('120.188.32.62', '2019-02-24', 1, '1550966081'),
('115.178.236.157', '2019-02-24', 1, '1550966180'),
('182.0.139.158', '2019-02-24', 2, '1550966275'),
('114.125.120.142', '2019-02-24', 2, '1550966231'),
('114.124.206.154', '2019-02-24', 1, '1550966309'),
('36.84.227.223', '2019-02-24', 2, '1550966374'),
('173.252.87.21', '2019-02-24', 1, '1550966367'),
('141.0.8.78', '2019-02-24', 2, '1550966642'),
('36.72.251.188', '2019-02-24', 2, '1550966695'),
('114.4.216.210', '2019-02-24', 2, '1550966718'),
('115.178.252.233', '2019-02-24', 1, '1550966780'),
('114.125.54.160', '2019-02-24', 3, '1550967008'),
('114.5.209.52', '2019-02-24', 2, '1550966976'),
('114.4.219.203', '2019-02-24', 1, '1550967002'),
('114.4.212.243', '2019-02-24', 3, '1550967055'),
('182.1.39.246', '2019-02-24', 1, '1550967039'),
('36.81.5.142', '2019-02-24', 2, '1550967361'),
('114.124.177.183', '2019-02-24', 2, '1550967455'),
('140.213.31.175', '2019-02-24', 3, '1550967567'),
('182.1.39.47', '2019-02-24', 2, '1550967660'),
('180.244.88.11', '2019-02-24', 3, '1550967781'),
('36.68.6.154', '2019-02-24', 3, '1550967903'),
('202.67.43.44', '2019-02-24', 2, '1550968001'),
('125.166.177.193', '2019-02-24', 1, '1550968048'),
('114.125.108.116', '2019-02-24', 3, '1550968333'),
('141.0.8.53', '2019-02-24', 1, '1550968153'),
('36.77.84.37', '2019-02-24', 3, '1550968309'),
('114.125.59.236', '2019-02-24', 2, '1550968409'),
('36.90.44.72', '2019-02-24', 1, '1550968389'),
('114.4.221.83', '2019-02-24', 3, '1550968801'),
('114.125.168.45', '2019-02-24', 1, '1550968852'),
('112.215.220.114', '2019-02-24', 3, '1550975644'),
('203.78.119.119', '2019-02-24', 7, '1550969507'),
('180.243.231.91', '2019-02-24', 1, '1550969210'),
('114.124.150.216', '2019-02-24', 1, '1550969519'),
('114.125.100.56', '2019-02-24', 3, '1550969609'),
('36.75.187.65', '2019-02-24', 1, '1550969579'),
('103.10.67.170', '2019-02-24', 2, '1550969651'),
('202.80.216.157', '2019-02-24', 5, '1550969642'),
('36.83.62.155', '2019-02-24', 1, '1550969635'),
('116.206.40.112', '2019-02-24', 1, '1550969640'),
('125.160.79.38', '2019-02-24', 3, '1550969770'),
('180.241.131.21', '2019-02-24', 3, '1550981781'),
('203.78.121.209', '2019-02-24', 4, '1550969866'),
('120.188.37.84', '2019-02-24', 1, '1550969948'),
('114.125.188.116', '2019-02-24', 1, '1550970247'),
('202.67.34.13', '2019-02-24', 5, '1550978470'),
('182.0.142.232', '2019-02-24', 1, '1550970304'),
('114.124.181.130', '2019-02-24', 1, '1550970377'),
('180.249.88.111', '2019-02-24', 2, '1550971824'),
('222.124.59.92', '2019-02-24', 18, '1550970645'),
('111.68.25.33', '2019-02-24', 1, '1550970661'),
('182.1.41.119', '2019-02-24', 7, '1550971265'),
('182.1.42.200', '2019-02-24', 3, '1550971836'),
('182.1.111.250', '2019-02-24', 1, '1550971002'),
('64.233.173.179', '2019-02-24', 1, '1550971075'),
('114.125.215.72', '2019-02-24', 1, '1550971079'),
('64.233.173.183', '2019-02-24', 1, '1550971082'),
('182.1.61.7', '2019-02-24', 1, '1550971188'),
('182.1.47.59', '2019-02-24', 1, '1550971226'),
('125.161.71.105', '2019-02-24', 1, '1550971395'),
('182.0.137.153', '2019-02-24', 1, '1550971773'),
('182.0.146.231', '2019-02-24', 6, '1550971888'),
('115.178.206.2', '2019-02-24', 1, '1550971897'),
('182.1.55.209', '2019-02-24', 1, '1550972017'),
('180.214.232.51', '2019-02-24', 1, '1550972080'),
('114.125.38.59', '2019-02-24', 4, '1550972350'),
('114.4.215.52', '2019-02-24', 1, '1550972113'),
('115.178.205.108', '2019-02-24', 3, '1550972238'),
('180.243.149.235', '2019-02-24', 1, '1550972460'),
('223.255.227.13', '2019-02-24', 4, '1550972638'),
('114.125.189.79', '2019-02-24', 1, '1550972655'),
('115.178.196.253', '2019-02-24', 2, '1550972963'),
('223.255.231.158', '2019-02-24', 1, '1550972938'),
('140.213.0.136', '2019-02-24', 5, '1550973077'),
('180.242.81.164', '2019-02-24', 2, '1550973251'),
('115.178.250.225', '2019-02-24', 2, '1550975778'),
('36.79.10.189', '2019-02-24', 1, '1550973602'),
('182.1.162.18', '2019-02-24', 2, '1550973640'),
('182.1.21.122', '2019-02-24', 2, '1550973653'),
('182.1.24.146', '2019-02-24', 1, '1550973664'),
('103.44.39.75', '2019-02-24', 1, '1550973708'),
('120.188.65.80', '2019-02-24', 1, '1550973713'),
('103.233.145.82', '2019-02-24', 1, '1550973832'),
('36.68.118.121', '2019-02-24', 1, '1550974003'),
('120.188.92.255', '2019-02-24', 1, '1550974069'),
('114.5.213.30', '2019-02-24', 2, '1550974148'),
('115.178.255.0', '2019-02-24', 1, '1550974143'),
('114.125.42.138', '2019-02-24', 2, '1550974275'),
('180.249.202.74', '2019-02-24', 1, '1550974336'),
('125.162.166.143', '2019-02-24', 1, '1550974385'),
('115.132.137.5', '2019-02-24', 1, '1550974419'),
('120.188.67.229', '2019-02-24', 1, '1550974701'),
('116.206.14.55', '2019-02-24', 1, '1550974871'),
('36.82.103.21', '2019-02-24', 1, '1550974901'),
('36.79.248.4', '2019-02-24', 2, '1550975038'),
('36.70.120.57', '2019-02-24', 1, '1550975033'),
('110.136.164.121', '2019-02-24', 1, '1550975083'),
('36.81.62.42', '2019-02-24', 1, '1550975406'),
('36.90.153.67', '2019-02-24', 1, '1550975421'),
('180.253.222.57', '2019-02-24', 2, '1550975573'),
('114.142.172.55', '2019-02-24', 5, '1550976153'),
('36.78.52.110', '2019-02-24', 1, '1550975878'),
('36.78.201.27', '2019-02-24', 1, '1550976123'),
('36.84.240.115', '2019-02-24', 1, '1550976515'),
('180.246.89.78', '2019-02-24', 1, '1550976517'),
('223.255.228.84', '2019-02-24', 1, '1550976749'),
('61.5.120.125', '2019-02-24', 2, '1550979848'),
('101.255.86.66', '2019-02-24', 3, '1550977408'),
('114.4.213.35', '2019-02-24', 2, '1550977418'),
('140.213.18.137', '2019-02-24', 2, '1550977620'),
('182.0.139.26', '2019-02-24', 3, '1550977795'),
('115.178.195.137', '2019-02-24', 1, '1550977969'),
('180.241.191.250', '2019-02-24', 4, '1550978121'),
('125.161.139.224', '2019-02-24', 4, '1550978230'),
('115.178.254.162', '2019-02-24', 1, '1550978324'),
('116.206.8.54', '2019-02-24', 1, '1550978527'),
('182.1.33.168', '2019-02-24', 1, '1550978635'),
('203.190.113.60', '2019-02-24', 1, '1550978841'),
('182.1.85.150', '2019-02-24', 3, '1550978967'),
('36.85.50.90', '2019-02-24', 1, '1550979089'),
('115.178.252.85', '2019-02-24', 2, '1550981137'),
('112.215.173.113', '2019-02-24', 3, '1550979470'),
('140.213.44.204', '2019-02-24', 2, '1550979453'),
('182.1.0.16', '2019-02-24', 3, '1550979520'),
('140.213.7.36', '2019-02-24', 1, '1550979456'),
('36.73.32.209', '2019-02-24', 1, '1550979556'),
('180.244.8.67', '2019-02-24', 1, '1550980101'),
('120.188.83.9', '2019-02-24', 1, '1550980422'),
('114.124.170.110', '2019-02-24', 1, '1550980478'),
('36.90.13.138', '2019-02-24', 2, '1550980536'),
('114.124.230.117', '2019-02-24', 1, '1550980512'),
('110.138.73.66', '2019-02-24', 3, '1550980999'),
('125.167.248.241', '2019-02-24', 2, '1550981229'),
('115.178.218.106', '2019-02-24', 1, '1550981271'),
('114.125.171.49', '2019-02-24', 2, '1550981868'),
('125.160.93.220', '2019-02-24', 5, '1550982372'),
('64.233.173.181', '2019-02-24', 1, '1550982172'),
('125.166.126.194', '2019-02-24', 3, '1550982478'),
('192.99.100.98', '2019-02-24', 1, '1550982472'),
('223.164.5.156', '2019-02-24', 1, '1550982498'),
('36.71.224.91', '2019-02-24', 2, '1550982618'),
('182.1.188.146', '2019-02-24', 4, '1550982761'),
('180.254.122.85', '2019-02-24', 1, '1550982788'),
('182.1.28.156', '2019-02-24', 1, '1550982953'),
('36.73.27.60', '2019-02-24', 1, '1550983097'),
('110.137.116.24', '2019-02-24', 1, '1550983098'),
('180.246.205.3', '2019-02-24', 1, '1550983172'),
('112.215.230.82', '2019-02-24', 1, '1550983223'),
('182.0.211.177', '2019-02-24', 7, '1550983350'),
('125.167.125.42', '2019-02-24', 6, '1550983472'),
('120.188.36.66', '2019-02-24', 1, '1550983733'),
('125.160.196.176', '2019-02-24', 1, '1550983878'),
('36.90.18.69', '2019-02-24', 1, '1550984081'),
('36.65.32.218', '2019-02-24', 1, '1550984476'),
('36.84.62.12', '2019-02-24', 1, '1550984723'),
('180.249.201.238', '2019-02-24', 1, '1550984858'),
('125.165.188.184', '2019-02-24', 1, '1550984890'),
('125.161.136.179', '2019-02-24', 4, '1550985176'),
('36.82.97.208', '2019-02-24', 4, '1550985639'),
('120.188.4.77', '2019-02-24', 1, '1550985564'),
('180.241.228.195', '2019-02-24', 1, '1550985869'),
('223.255.230.50', '2019-02-24', 1, '1550986998'),
('125.161.138.36', '2019-02-24', 2, '1550987242'),
('139.195.13.204', '2019-02-24', 1, '1550987501'),
('110.137.74.239', '2019-02-24', 1, '1550987729'),
('112.215.219.4', '2019-02-24', 3, '1550987911'),
('182.1.19.68', '2019-02-24', 1, '1550987831'),
('114.125.175.106', '2019-02-24', 1, '1550988041'),
('116.206.30.36', '2019-02-24', 1, '1550988230'),
('158.140.187.199', '2019-02-24', 4, '1551022132'),
('182.1.113.24', '2019-02-24', 12, '1550989003'),
('125.162.35.233', '2019-02-24', 3, '1550989210'),
('66.220.149.35', '2019-02-24', 1, '1550989243'),
('66.220.149.20', '2019-02-24', 2, '1551021718'),
('31.13.115.13', '2019-02-24', 1, '1550989266'),
('182.1.54.227', '2019-02-24', 1, '1550989350'),
('180.254.89.184', '2019-02-24', 1, '1550989543'),
('36.71.234.151', '2019-02-24', 8, '1550991440'),
('36.72.28.116', '2019-02-24', 1, '1550990115'),
('36.84.225.226', '2019-02-24', 5, '1550990904'),
('112.215.151.126', '2019-02-24', 1, '1550990874'),
('36.75.223.5', '2019-02-24', 2, '1550992430'),
('36.90.71.71', '2019-02-24', 2, '1550992939'),
('180.245.190.160', '2019-02-24', 3, '1550994154'),
('140.213.13.173', '2019-02-24', 1, '1550996262'),
('114.124.139.115', '2019-02-24', 10, '1550996841'),
('114.125.6.131', '2019-02-24', 1, '1550996642'),
('115.178.198.4', '2019-02-24', 1, '1550996728'),
('114.5.209.93', '2019-02-24', 2, '1550996949'),
('182.1.79.248', '2019-02-24', 2, '1550997144'),
('140.213.47.207', '2019-02-24', 6, '1550998308'),
('112.215.174.112', '2019-02-24', 2, '1551021046'),
('140.213.58.58', '2019-02-24', 3, '1550997733'),
('111.95.224.105', '2019-02-24', 4, '1550997759'),
('180.241.203.178', '2019-02-24', 3, '1550998230'),
('36.76.173.213', '2019-02-24', 1, '1550998695'),
('116.206.14.44', '2019-02-24', 1, '1550998949'),
('114.124.168.182', '2019-02-24', 5, '1550999145'),
('182.1.106.240', '2019-02-24', 2, '1550999852'),
('140.213.3.33', '2019-02-24', 1, '1550999826'),
('182.1.40.230', '2019-02-24', 3, '1550999994'),
('182.1.174.202', '2019-02-24', 3, '1551000080'),
('223.255.230.54', '2019-02-24', 3, '1551000447'),
('114.4.212.73', '2019-02-24', 1, '1551000483'),
('114.4.222.247', '2019-02-24', 1, '1551000578'),
('36.65.217.125', '2019-02-24', 1, '1551001019'),
('36.84.228.238', '2019-02-24', 4, '1551001123'),
('182.253.150.166', '2019-02-24', 2, '1551001174'),
('36.70.228.75', '2019-02-24', 6, '1551001239'),
('180.254.91.0', '2019-02-24', 3, '1551001265'),
('110.138.148.21', '2019-02-24', 1, '1551001890'),
('114.142.169.43', '2019-02-24', 1, '1551001924'),
('114.124.244.186', '2019-02-24', 1, '1551001992'),
('114.125.68.85', '2019-02-24', 1, '1551002198'),
('182.0.196.126', '2019-02-24', 1, '1551002405'),
('182.0.231.133', '2019-02-24', 2, '1551002510'),
('36.85.235.121', '2019-02-24', 2, '1551002677'),
('140.213.13.168', '2019-02-24', 1, '1551002721'),
('182.1.76.127', '2019-02-24', 1, '1551002779'),
('114.124.136.247', '2019-02-24', 1, '1551003044'),
('36.70.17.154', '2019-02-24', 1, '1551003180'),
('114.124.173.226', '2019-02-24', 1, '1551003255'),
('182.0.205.177', '2019-02-24', 1, '1551004123'),
('203.78.119.157', '2019-02-24', 1, '1551004127'),
('203.78.117.20', '2019-02-24', 3, '1551004217'),
('120.188.34.52', '2019-02-24', 2, '1551004510'),
('36.84.228.150', '2019-02-24', 1, '1551004432'),
('66.249.71.84', '2019-02-24', 1, '1551004539'),
('36.81.190.37', '2019-02-24', 1, '1551005167'),
('36.79.248.59', '2019-02-24', 1, '1551005271'),
('182.1.33.36', '2019-02-24', 1, '1551005294'),
('180.243.230.186', '2019-02-24', 1, '1551005676'),
('114.124.213.137', '2019-02-24', 1, '1551005791'),
('115.178.237.252', '2019-02-24', 1, '1551005819'),
('140.213.46.65', '2019-02-24', 2, '1551006045'),
('61.5.94.112', '2019-02-24', 1, '1551006164'),
('182.253.62.80', '2019-02-24', 1, '1551006221'),
('114.124.145.1', '2019-02-24', 1, '1551006265'),
('140.213.58.6', '2019-02-24', 1, '1551006432'),
('180.241.35.226', '2019-02-24', 2, '1551023968'),
('140.213.17.115', '2019-02-24', 1, '1551006518'),
('182.1.37.80', '2019-02-24', 1, '1551006730'),
('173.252.87.15', '2019-02-24', 1, '1551006968'),
('36.90.41.180', '2019-02-24', 1, '1551007410'),
('158.140.187.208', '2019-02-24', 5, '1551007534'),
('36.72.255.34', '2019-02-24', 2, '1551007793'),
('182.1.74.98', '2019-02-24', 1, '1551007780'),
('36.83.75.180', '2019-02-24', 3, '1551007921'),
('120.188.33.9', '2019-02-24', 2, '1551008214'),
('114.125.7.83', '2019-02-24', 1, '1551008220'),
('115.178.253.126', '2019-02-24', 1, '1551008291'),
('116.206.29.36', '2019-02-24', 1, '1551008333'),
('36.70.106.29', '2019-02-24', 2, '1551008782'),
('36.75.52.133', '2019-02-24', 1, '1551008542'),
('111.94.216.185', '2019-02-24', 2, '1551008640'),
('125.167.43.78', '2019-02-24', 1, '1551008706'),
('36.85.28.157', '2019-02-24', 8, '1551008919'),
('118.98.121.66', '2019-02-24', 1, '1551009045'),
('36.73.118.86', '2019-02-24', 1, '1551009076'),
('114.124.136.168', '2019-02-24', 1, '1551009151'),
('182.253.163.35', '2019-02-24', 1, '1551009480');
INSERT INTO `statistik` (`ip`, `tanggal`, `hits`, `online`) VALUES
('125.161.130.120', '2019-02-24', 3, '1551009570'),
('103.114.35.2', '2019-02-24', 5, '1551010232'),
('36.68.148.151', '2019-02-24', 1, '1551010219'),
('114.124.182.58', '2019-02-24', 2, '1551010418'),
('114.125.7.23', '2019-02-24', 5, '1551011104'),
('125.161.136.35', '2019-02-24', 1, '1551010809'),
('36.69.210.179', '2019-02-24', 10, '1551012123'),
('114.125.189.67', '2019-02-24', 2, '1551011230'),
('182.1.194.142', '2019-02-24', 1, '1551011534'),
('120.188.74.179', '2019-02-24', 1, '1551011638'),
('203.78.114.250', '2019-02-24', 1, '1551011644'),
('118.136.140.206', '2019-02-24', 1, '1551011678'),
('114.125.190.187', '2019-02-24', 1, '1551011777'),
('120.188.64.18', '2019-02-24', 7, '1551011964'),
('203.78.117.59', '2019-02-24', 2, '1551012039'),
('182.0.247.92', '2019-02-24', 1, '1551012213'),
('182.1.38.231', '2019-02-24', 3, '1551012589'),
('27.54.118.178', '2019-02-24', 3, '1551012768'),
('36.74.40.116', '2019-02-24', 1, '1551012808'),
('182.1.106.93', '2019-02-24', 1, '1551012890'),
('36.82.98.83', '2019-02-24', 1, '1551012950'),
('112.215.235.194', '2019-02-24', 8, '1551013379'),
('202.80.214.192', '2019-02-24', 2, '1551013140'),
('115.178.209.179', '2019-02-24', 1, '1551013162'),
('158.140.187.210', '2019-02-24', 1, '1551013461'),
('114.125.38.91', '2019-02-24', 3, '1551013513'),
('125.167.58.134', '2019-02-24', 1, '1551013491'),
('114.125.7.227', '2019-02-24', 1, '1551013594'),
('180.253.61.164', '2019-02-24', 5, '1551014308'),
('158.140.187.213', '2019-02-24', 1, '1551013807'),
('139.193.69.81', '2019-02-24', 1, '1551013830'),
('146.185.158.24', '2019-02-24', 2, '1551013964'),
('115.178.206.171', '2019-02-24', 1, '1551013883'),
('36.76.83.199', '2019-02-24', 2, '1551014212'),
('36.85.200.125', '2019-02-24', 4, '1551017099'),
('139.0.145.29', '2019-02-24', 1, '1551014355'),
('114.125.230.250', '2019-02-24', 1, '1551014394'),
('116.206.40.49', '2019-02-24', 3, '1551014561'),
('202.80.214.204', '2019-02-24', 1, '1551014713'),
('36.79.250.87', '2019-02-24', 1, '1551015024'),
('110.137.179.232', '2019-02-24', 2, '1551015109'),
('140.213.40.101', '2019-02-24', 2, '1551015296'),
('115.178.223.6', '2019-02-24', 4, '1551015441'),
('180.245.41.208', '2019-02-24', 3, '1551015725'),
('114.125.28.94', '2019-02-24', 1, '1551015696'),
('36.79.251.86', '2019-02-24', 3, '1551015858'),
('61.5.4.43', '2019-02-24', 1, '1551016071'),
('182.1.104.220', '2019-02-24', 1, '1551016124'),
('36.71.78.238', '2019-02-24', 2, '1551016178'),
('182.1.113.175', '2019-02-24', 1, '1551016195'),
('116.206.29.31', '2019-02-24', 1, '1551016235'),
('36.73.33.158', '2019-02-24', 1, '1551016451'),
('115.178.217.150', '2019-02-24', 1, '1551016612'),
('111.95.170.48', '2019-02-24', 1, '1551016626'),
('114.124.243.218', '2019-02-24', 1, '1551016660'),
('182.1.76.163', '2019-02-24', 1, '1551016879'),
('115.178.211.227', '2019-02-24', 3, '1551017045'),
('180.254.145.112', '2019-02-24', 1, '1551016912'),
('180.252.94.91', '2019-02-24', 1, '1551017167'),
('36.72.232.98', '2019-02-24', 1, '1551017277'),
('125.162.186.62', '2019-02-24', 2, '1551017454'),
('114.125.12.57', '2019-02-24', 1, '1551017447'),
('114.142.168.10', '2019-02-24', 1, '1551017450'),
('103.213.131.236', '2019-02-24', 1, '1551017468'),
('124.158.184.2', '2019-02-24', 2, '1551017857'),
('110.138.151.243', '2019-02-24', 1, '1551017901'),
('36.79.250.36', '2019-02-24', 1, '1551018043'),
('140.213.9.239', '2019-02-24', 2, '1551018125'),
('112.215.200.110', '2019-02-24', 1, '1551018135'),
('36.82.102.188', '2019-02-24', 7, '1551018317'),
('179.236.106.120', '2019-02-24', 1, '1551018374'),
('114.142.168.36', '2019-02-24', 1, '1551018620'),
('125.162.73.231', '2019-02-24', 3, '1551019018'),
('116.206.42.69', '2019-02-24', 1, '1551019184'),
('119.82.244.114', '2019-02-24', 3, '1551019420'),
('203.78.119.181', '2019-02-24', 1, '1551019421'),
('36.75.29.29', '2019-02-24', 1, '1551019435'),
('202.80.212.152', '2019-02-24', 1, '1551019513'),
('114.5.213.90', '2019-02-24', 1, '1551019528'),
('66.220.149.11', '2019-02-24', 2, '1551021719'),
('182.0.174.77', '2019-02-24', 1, '1551019630'),
('112.215.220.64', '2019-02-24', 1, '1551019696'),
('118.96.95.122', '2019-02-24', 1, '1551019754'),
('139.193.164.74', '2019-02-24', 1, '1551019779'),
('180.252.148.219', '2019-02-24', 1, '1551019843'),
('125.165.62.146', '2019-02-24', 1, '1551019858'),
('36.65.206.97', '2019-02-24', 1, '1551019889'),
('140.213.48.85', '2019-02-24', 1, '1551020128'),
('182.0.196.94', '2019-02-24', 1, '1551020166'),
('180.241.99.17', '2019-02-24', 2, '1551022564'),
('115.178.235.87', '2019-02-24', 2, '1551020729'),
('115.178.237.240', '2019-02-24', 3, '1551020790'),
('110.138.117.205', '2019-02-24', 1, '1551020703'),
('36.84.132.10', '2019-02-24', 4, '1551020812'),
('114.124.202.169', '2019-02-24', 5, '1551021100'),
('182.1.57.24', '2019-02-24', 1, '1551020820'),
('180.244.113.13', '2019-02-24', 3, '1551020859'),
('112.215.243.142', '2019-02-24', 1, '1551020855'),
('223.255.231.136', '2019-02-24', 1, '1551020990'),
('114.124.179.177', '2019-02-24', 3, '1551021035'),
('180.248.30.124', '2019-02-24', 2, '1551021150'),
('103.112.163.23', '2019-02-24', 1, '1551021216'),
('114.124.175.213', '2019-02-24', 1, '1551021366'),
('203.78.116.20', '2019-02-24', 1, '1551021533'),
('114.125.12.78', '2019-02-24', 1, '1551021566'),
('182.1.72.94', '2019-02-24', 3, '1551021743'),
('103.44.37.95', '2019-02-24', 1, '1551021720'),
('36.77.146.214', '2019-02-24', 1, '1551021733'),
('139.192.202.135', '2019-02-24', 1, '1551021749'),
('202.80.216.240', '2019-02-24', 2, '1551021886'),
('114.5.208.14', '2019-02-24', 1, '1551021859'),
('115.178.237.204', '2019-02-24', 1, '1551021877'),
('110.137.169.231', '2019-02-24', 3, '1551022091'),
('36.75.179.139', '2019-02-24', 1, '1551022118'),
('114.5.209.26', '2019-02-24', 5, '1551022256'),
('115.178.254.218', '2019-02-24', 1, '1551022201'),
('36.65.229.244', '2019-02-24', 1, '1551022273'),
('182.1.73.49', '2019-02-24', 5, '1551022922'),
('112.215.153.202', '2019-02-24', 1, '1551023163'),
('125.164.128.145', '2019-02-24', 1, '1551023172'),
('45.115.73.12', '2019-02-24', 1, '1551023814'),
('114.124.176.87', '2019-02-24', 5, '1551023902'),
('36.65.107.189', '2019-02-24', 5, '1551024147'),
('120.188.64.202', '2019-02-24', 1, '1551024278'),
('202.67.33.10', '2019-02-24', 2, '1551024415'),
('175.106.8.243', '2019-02-24', 1, '1551024775'),
('114.5.147.179', '2019-02-24', 1, '1551024955'),
('125.167.147.147', '2019-02-24', 2, '1551025162'),
('114.124.213.94', '2019-02-24', 1, '1551025174'),
('125.165.150.190', '2019-02-24', 10, '1551025449'),
('115.178.236.154', '2019-02-24', 1, '1551025433'),
('36.37.131.41', '2019-02-24', 20, '1551026742'),
('120.188.81.71', '2019-02-24', 2, '1551025624'),
('140.213.56.92', '2019-02-24', 1, '1551025733'),
('118.136.56.208', '2019-02-24', 1, '1551025981'),
('36.76.235.192', '2019-02-24', 1, '1551026007'),
('115.178.196.153', '2019-02-24', 1, '1551026017'),
('125.165.128.64', '2019-02-24', 1, '1551026033'),
('115.178.234.109', '2019-02-24', 1, '1551026165'),
('114.125.60.25', '2019-02-24', 1, '1551026286'),
('116.206.8.60', '2019-02-24', 12, '1551026702'),
('103.3.220.36', '2019-02-24', 1, '1551026461'),
('36.77.253.4', '2019-02-24', 2, '1551026526'),
('110.138.150.81', '2019-02-24', 2, '1551026628'),
('180.252.173.178', '2019-02-24', 1, '1551026558'),
('120.188.81.199', '2019-02-24', 1, '1551026632'),
('114.124.138.73', '2019-02-25', 2, '1551028003'),
('114.125.7.23', '2019-02-25', 1, '1551027777'),
('114.124.137.181', '2019-02-25', 1, '1551027822'),
('114.4.78.184', '2019-02-25', 1, '1551028362'),
('114.125.63.166', '2019-02-25', 1, '1551028391'),
('110.137.17.19', '2019-02-25', 3, '1551028482'),
('182.1.176.61', '2019-02-25', 1, '1551028454'),
('114.125.220.214', '2019-02-25', 2, '1551028696'),
('120.188.87.250', '2019-02-25', 1, '1551028730'),
('182.1.50.16', '2019-02-25', 1, '1551028975'),
('140.213.46.135', '2019-02-25', 5, '1551029121'),
('36.78.243.88', '2019-02-25', 2, '1551029223'),
('182.1.24.214', '2019-02-25', 1, '1551029115'),
('101.255.36.46', '2019-02-25', 1, '1551029252'),
('116.93.119.178', '2019-02-25', 2, '1551029515'),
('180.254.168.198', '2019-02-25', 1, '1551029487'),
('114.5.213.104', '2019-02-25', 1, '1551029542'),
('110.138.219.49', '2019-02-25', 3, '1551029713'),
('36.90.78.80', '2019-02-25', 1, '1551029710'),
('112.215.171.79', '2019-02-25', 2, '1551029893'),
('110.137.163.15', '2019-02-25', 3, '1551030126'),
('140.213.48.12', '2019-02-25', 1, '1551030191'),
('115.178.210.222', '2019-02-25', 5, '1551030536'),
('202.67.33.46', '2019-02-25', 1, '1551030684'),
('182.0.241.45', '2019-02-25', 1, '1551030858'),
('148.64.56.66', '2019-02-25', 1, '1551031085'),
('120.188.81.220', '2019-02-25', 2, '1551031417'),
('114.125.23.45', '2019-02-25', 2, '1551031669'),
('36.82.103.75', '2019-02-25', 1, '1551032448'),
('140.213.35.197', '2019-02-25', 1, '1551033651'),
('120.188.6.165', '2019-02-25', 1, '1551033751'),
('182.1.52.1', '2019-02-25', 1, '1551033944'),
('180.253.90.222', '2019-02-25', 3, '1551054294'),
('175.158.50.96', '2019-02-25', 1, '1551034634'),
('180.247.25.41', '2019-02-25', 5, '1551060131'),
('120.188.81.63', '2019-02-25', 1, '1551036526'),
('8.37.71.47', '2019-02-25', 1, '1551038287'),
('140.213.13.217', '2019-02-25', 2, '1551039257'),
('114.124.197.183', '2019-02-25', 1, '1551039275'),
('180.248.152.26', '2019-02-25', 2, '1551039958'),
('115.178.221.221', '2019-02-25', 1, '1551041516'),
('180.249.203.204', '2019-02-25', 1, '1551041589'),
('114.124.237.102', '2019-02-25', 1, '1551041991'),
('139.193.237.229', '2019-02-25', 1, '1551042239'),
('36.90.13.153', '2019-02-25', 1, '1551043520'),
('112.215.241.47', '2019-02-25', 2, '1551043609'),
('114.124.242.130', '2019-02-25', 1, '1551044091'),
('115.178.215.91', '2019-02-25', 1, '1551044145'),
('114.124.241.138', '2019-02-25', 5, '1551044442'),
('36.74.238.75', '2019-02-25', 1, '1551044449'),
('180.251.114.75', '2019-02-25', 3, '1551045718'),
('54.86.66.252', '2019-02-25', 5, '1551053602'),
('182.1.121.204', '2019-02-25', 2, '1551047033'),
('139.193.32.210', '2019-02-25', 2, '1551047669'),
('182.1.44.165', '2019-02-25', 1, '1551047997'),
('103.44.37.159', '2019-02-25', 1, '1551048111'),
('158.140.187.221', '2019-02-25', 1, '1551048274'),
('112.215.235.8', '2019-02-25', 3, '1551048691'),
('114.4.219.248', '2019-02-25', 2, '1551048914'),
('180.251.217.78', '2019-02-25', 2, '1551048999'),
('36.68.137.207', '2019-02-25', 1, '1551049335'),
('114.125.70.177', '2019-02-25', 1, '1551049382'),
('110.138.151.40', '2019-02-25', 1, '1551049675'),
('36.76.27.221', '2019-02-25', 1, '1551049817'),
('46.101.92.175', '2019-02-25', 1, '1551051131'),
('180.214.233.125', '2019-02-25', 1, '1551051307'),
('36.75.169.36', '2019-02-25', 1, '1551051640'),
('141.0.8.141', '2019-02-25', 2, '1551051711'),
('180.254.128.174', '2019-02-25', 1, '1551051759'),
('116.206.9.53', '2019-02-25', 1, '1551051954'),
('103.24.212.93', '2019-02-25', 1, '1551052702'),
('36.76.244.175', '2019-02-25', 10, '1551052846'),
('115.178.205.165', '2019-02-25', 3, '1551053112'),
('118.97.134.134', '2019-02-25', 1, '1551053312'),
('36.73.33.217', '2019-02-25', 4, '1551053569'),
('184.72.115.35', '2019-02-25', 1, '1551053578'),
('54.175.74.27', '2019-02-25', 3, '1551078314'),
('114.4.218.213', '2019-02-25', 7, '1551054034'),
('114.124.141.139', '2019-02-25', 1, '1551053928'),
('114.125.198.40', '2019-02-25', 2, '1551055137'),
('182.1.3.226', '2019-02-25', 1, '1551056234'),
('118.96.164.136', '2019-02-25', 1, '1551056247'),
('114.124.168.147', '2019-02-25', 5, '1551056406'),
('36.78.120.136', '2019-02-25', 4, '1551056626'),
('115.178.254.157', '2019-02-25', 6, '1551056784'),
('114.6.72.90', '2019-02-25', 1, '1551057069'),
('114.125.100.172', '2019-02-25', 1, '1551057169'),
('140.213.8.169', '2019-02-25', 3, '1551057311'),
('103.18.78.98', '2019-02-25', 4, '1551057600'),
('125.163.241.117', '2019-02-25', 1, '1551057867'),
('103.215.25.50', '2019-02-25', 8, '1551057928'),
('36.85.32.47', '2019-02-25', 1, '1551057883'),
('203.24.50.142', '2019-02-25', 17, '1551058071'),
('202.65.115.90', '2019-02-25', 1, '1551057897'),
('182.1.100.190', '2019-02-25', 2, '1551058115'),
('103.95.7.9', '2019-02-25', 1, '1551058269'),
('103.31.207.25', '2019-02-25', 2, '1551058871'),
('112.215.170.158', '2019-02-25', 2, '1551058961'),
('36.84.226.2', '2019-02-25', 2, '1551059285'),
('114.125.200.39', '2019-02-25', 6, '1551061224'),
('66.96.232.222', '2019-02-25', 1, '1551059134'),
('114.124.169.217', '2019-02-25', 2, '1551059234'),
('66.220.149.13', '2019-02-25', 1, '1551059243'),
('64.233.173.181', '2019-02-25', 1, '1551059631'),
('115.178.193.240', '2019-02-25', 5, '1551060099'),
('104.143.209.100', '2019-02-25', 1, '1551060169'),
('114.125.20.70', '2019-02-25', 1, '1551060269'),
('202.182.174.138', '2019-02-25', 3, '1551060897'),
('116.206.38.50', '2019-02-25', 1, '1551060493'),
('116.206.14.30', '2019-02-25', 1, '1551060704'),
('114.125.59.25', '2019-02-25', 1, '1551061053'),
('66.220.149.19', '2019-02-25', 2, '1551061117'),
('66.220.149.10', '2019-02-25', 1, '1551061116'),
('31.13.115.12', '2019-02-25', 1, '1551061126'),
('202.150.144.150', '2019-02-25', 1, '1551061127'),
('182.1.104.154', '2019-02-25', 1, '1551061155'),
('103.18.30.52', '2019-02-25', 1, '1551061515'),
('202.146.232.118', '2019-02-25', 2, '1551061784'),
('114.124.179.17', '2019-02-25', 1, '1551061793'),
('36.85.71.180', '2019-02-25', 5, '1551062244'),
('110.76.148.86', '2019-02-25', 1, '1551062346'),
('118.136.148.201', '2019-02-25', 3, '1551062491'),
('116.206.15.16', '2019-02-25', 3, '1551062661'),
('114.5.147.179', '2019-02-25', 8, '1551063160'),
('180.252.68.183', '2019-02-25', 2, '1551063274'),
('103.111.53.52', '2019-02-25', 1, '1551063670'),
('103.17.76.51', '2019-02-25', 1, '1551064354'),
('115.178.253.98', '2019-02-25', 2, '1551065448'),
('116.206.40.56', '2019-02-25', 1, '1551065452'),
('140.213.44.164', '2019-02-25', 7, '1551065887'),
('139.228.188.147', '2019-02-25', 4, '1551065915'),
('36.72.219.126', '2019-02-25', 1, '1551065877'),
('116.206.40.89', '2019-02-25', 2, '1551065984'),
('114.125.188.88', '2019-02-25', 4, '1551066062'),
('103.73.72.74', '2019-02-25', 1, '1551066315'),
('103.105.128.99', '2019-02-25', 1, '1551066556'),
('120.188.85.236', '2019-02-25', 1, '1551066561'),
('118.96.185.21', '2019-02-25', 4, '1551066865'),
('36.77.155.110', '2019-02-25', 1, '1551066799'),
('223.255.229.16', '2019-02-25', 1, '1551066872'),
('103.5.148.4', '2019-02-25', 1, '1551067597'),
('158.140.167.199', '2019-02-25', 4, '1551068180'),
('103.10.105.229', '2019-02-25', 1, '1551068183'),
('36.82.97.103', '2019-02-25', 4, '1551068558'),
('182.0.201.105', '2019-02-25', 4, '1551068558'),
('120.188.33.248', '2019-02-25', 3, '1551074058'),
('121.101.129.18', '2019-02-25', 3, '1551069042'),
('36.72.148.139', '2019-02-25', 1, '1551069394'),
('36.82.102.82', '2019-02-25', 2, '1551069475'),
('124.81.107.194', '2019-02-25', 6, '1551069530'),
('185.26.180.169', '2019-02-25', 1, '1551069535'),
('82.145.221.156', '2019-02-25', 4, '1551069620'),
('123.231.247.42', '2019-02-25', 1, '1551070716'),
('36.70.134.72', '2019-02-25', 4, '1551071026'),
('114.125.8.164', '2019-02-25', 1, '1551071017'),
('36.84.242.199', '2019-02-25', 1, '1551071072'),
('139.194.82.90', '2019-02-25', 1, '1551071676'),
('66.249.71.82', '2019-02-25', 1, '1551071678'),
('180.241.61.11', '2019-02-25', 1, '1551071786'),
('139.255.146.48', '2019-02-25', 1, '1551071974'),
('202.67.46.27', '2019-02-25', 1, '1551072174'),
('36.71.234.47', '2019-02-25', 3, '1551072394'),
('114.125.102.110', '2019-02-25', 1, '1551072560'),
('36.72.219.154', '2019-02-25', 4, '1551072660'),
('103.76.23.243', '2019-02-25', 1, '1551072641'),
('115.178.255.209', '2019-02-25', 2, '1551073730'),
('203.142.76.250', '2019-02-25', 3, '1551074576'),
('141.0.9.30', '2019-02-25', 1, '1551074545'),
('118.99.97.242', '2019-02-25', 3, '1551075031'),
('114.124.199.183', '2019-02-25', 1, '1551075213'),
('139.192.146.91', '2019-02-25', 1, '1551075671'),
('66.220.149.25', '2019-02-25', 1, '1551075683'),
('182.253.143.7', '2019-02-25', 9, '1551076066'),
('36.90.153.123', '2019-02-25', 3, '1551076153'),
('182.1.203.124', '2019-02-25', 1, '1551076205'),
('118.97.161.114', '2019-02-25', 2, '1551076378'),
('178.62.92.29', '2019-02-25', 3, '1551078586'),
('182.0.197.189', '2019-02-25', 1, '1551079313'),
('125.165.42.109', '2019-02-25', 1, '1551079470'),
('125.165.33.199', '2019-02-25', 5, '1551080101'),
('115.178.253.163', '2019-02-25', 3, '1551081754'),
('182.253.141.155', '2019-02-25', 5, '1551082583'),
('182.0.169.7', '2019-02-25', 1, '1551082572'),
('180.249.181.41', '2019-02-25', 1, '1551082770'),
('202.162.43.21', '2019-02-25', 3, '1551083034'),
('66.220.149.1', '2019-02-25', 1, '1551083039'),
('66.220.149.30', '2019-02-25', 1, '1551083039'),
('112.215.220.34', '2019-02-25', 1, '1551083382'),
('114.4.217.170', '2019-02-25', 8, '1551100199'),
('120.188.77.120', '2019-02-25', 1, '1551086366'),
('140.213.41.155', '2019-02-25', 1, '1551087458'),
('112.215.45.84', '2019-02-25', 7, '1551087773'),
('115.124.86.58', '2019-02-25', 6, '1551087793'),
('182.1.183.130', '2019-02-25', 1, '1551087979'),
('140.213.34.247', '2019-02-25', 1, '1551089424'),
('36.84.62.54', '2019-02-25', 1, '1551089989'),
('115.178.201.117', '2019-02-25', 23, '1551090365'),
('117.102.66.73', '2019-02-25', 1, '1551090417'),
('120.188.76.177', '2019-02-25', 3, '1551093256'),
('182.0.238.68', '2019-02-25', 1, '1551093481'),
('202.67.36.2', '2019-02-25', 1, '1551097807'),
('103.208.137.246', '2019-02-25', 14, '1551104433'),
('116.206.38.40', '2019-02-25', 11, '1551101617'),
('120.188.33.183', '2019-02-25', 1, '1551099705'),
('116.206.29.52', '2019-02-25', 1, '1551101538'),
('182.0.230.109', '2019-02-25', 1, '1551102132'),
('116.206.28.53', '2019-02-25', 1, '1551102577'),
('182.1.53.2', '2019-02-25', 1, '1551102795'),
('112.215.151.213', '2019-02-25', 1, '1551103847'),
('72.14.199.114', '2019-02-25', 1, '1551104420'),
('42.108.232.72', '2019-02-25', 1, '1551106252'),
('103.10.67.173', '2019-02-25', 3, '1551111252'),
('180.241.237.171', '2019-02-25', 1, '1551107390'),
('140.213.58.88', '2019-02-25', 1, '1551107451'),
('182.1.41.95', '2019-02-25', 1, '1551108876'),
('114.125.46.203', '2019-02-25', 1, '1551110358'),
('114.125.100.70', '2019-02-25', 1, '1551111740'),
('140.213.13.208', '2019-02-25', 2, '1551112220'),
('103.78.115.54', '2019-02-25', 3, '1551113954'),
('36.77.76.90', '2019-02-26', 1, '1551114124'),
('52.71.155.178', '2019-02-26', 1, '1551114622'),
('54.175.74.27', '2019-02-26', 1, '1551114627'),
('36.81.7.116', '2019-02-26', 1, '1551116795'),
('180.249.202.149', '2019-02-26', 1, '1551116949'),
('140.213.32.186', '2019-02-26', 1, '1551117838'),
('94.180.142.152', '2019-02-26', 1, '1551119505'),
('114.124.133.47', '2019-02-26', 2, '1551120388'),
('::1', '2019-02-26', 3, '1551123551'),
('::1', '2020-06-25', 115, '1593074877'),
('::1', '2020-09-02', 15, '1598997763'),
('::1', '2020-09-03', 1, '1599070408'),
('::1', '2020-09-21', 7, '1600682038'),
('::1', '2020-10-02', 8, '1601652414'),
('::1', '2020-10-04', 12, '1601778506'),
('::1', '2020-12-10', 23, '1607583964'),
('::1', '2020-12-11', 31, '1607701326'),
('127.0.0.1', '2020-12-16', 120, '1608126790'),
('::1', '2020-12-16', 1, '1608124120'),
('::1', '2021-02-05', 13, '1612494222');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id_tag` int(5) NOT NULL,
  `nama_tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `tag_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `count` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id_tag`, `nama_tag`, `username`, `tag_seo`, `count`) VALUES
(22, 'Hiburan', '', 'hiburan', 19),
(28, 'Teknologi', '', 'teknologi', 12),
(27, 'Metropolitan', '', 'metropolitan', 32),
(26, 'Nasional', '', 'nasional', 42),
(25, 'Kesehatan', '', 'kesehatan', 16),
(24, 'Olahraga', '', 'olahraga', 11),
(34, 'Wisata', '', 'wisata', 4),
(36, 'Hukum', '', 'hukum', 16),
(37, 'Film', '', 'film', 25),
(40, 'Internasional', '', 'internasional', 28),
(41, 'Bola', '', 'bola', 21),
(43, 'Selebritis', '', 'selebritis', 9),
(49, 'Otomotif', 'admin', 'otomotif', 6),
(55, 'Asian Games', 'admin', 'asian-games', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tagvid`
--

CREATE TABLE `tagvid` (
  `id_tag` int(5) NOT NULL,
  `nama_tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `tag_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `count` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tagvid`
--

INSERT INTO `tagvid` (`id_tag`, `nama_tag`, `username`, `tag_seo`, `count`) VALUES
(35, 'Teknologi', 'admin', 'teknologi', 0),
(36, 'Nasional', 'admin', 'nasional', 1),
(40, 'Kegiatan', 'admin', 'kegiatan', 0),
(41, 'Wisata', 'admin', 'wisata', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `id_komentar` int(5) NOT NULL,
  `reply` int(5) NOT NULL,
  `nama_lengkap` varchar(150) NOT NULL,
  `alamat_email` varchar(150) NOT NULL,
  `isi_pesan` text NOT NULL,
  `tanggal_komentar` date NOT NULL,
  `jam_komentar` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`id_komentar`, `reply`, `nama_lengkap`, `alamat_email`, `isi_pesan`, `tanggal_komentar`, `jam_komentar`) VALUES
(1, 0, 'Admin Lokomedia', 'dankrez48@gmail.com', 'Perubahan UUD 1945 yang membawa perubahan mendasar mengenai penyelengaraan kekuasaan kehakiman, membuat perlunya dilakukan perubahan secara komprehensif mengenai Undang-Undang Ketentuan-ketentuan Pokok Kekuasaan Kehakiman.								', '2014-11-19', '00:00:00'),
(2, 1, 'si anu', 'anu@gmail.com', 'Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2014-11-19', '00:00:00'),
(3, 0, 'Rio Saputra', 'rio.saputra@gmail.com', 'Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut. Perubahan UUD 1945 yang membawa perubahan mendasar mengenai penyelengaraan kekuasaan kehakiman.								', '2014-11-21', '00:00:00'),
(4, 1, 'Anggun Pratiwi', 'angun@gmail.com', 'itu benar bro, kalau ndak pacayo tanyo lah ka baruak.Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2014-11-21', '00:00:00'),
(5, 3, 'Dewi Safitri', 'dewi.safitri@gmail.com', 'Oii, ang kareh bana mah, den ambuang ang ka lauik beko,.. Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2014-11-21', '00:00:00'),
(6, 0, 'Ahmad Hunaldi', 'ahmad@gmail.com', 'badan-badan peradilan penyelenggara kekuasaan kehakiman, asas-asas penyelengaraan kekuasaan kehakiman Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.								', '2014-11-21', '00:00:00'),
(7, 6, 'Prasmana Enru', 'prasmana@gmail.com', 'Undang-Undang Ketentuan-ketentuan Pokok Kekuasaan	Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2014-11-21', '00:00:00'),
(9, 3, 'Admin Lokomedia', 'dankrez48@gmail.com', 'Untuk itulah penulis memberikan solusi menggunakan program Dreamweaver,.. Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2015-01-22', '00:00:00'),
(14, 0, 'Udin Sedunia', 'udin.sedubia@gmail.com', 'Perlahan tapi pasti, sosok TM yang merupakan artis dan berprofesi sebagai Pekerja Seks Komersial (PSK) akhirnya mulai terungkap Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2015-05-29', '00:54:31'),
(15, 6, 'Admin Lokomedia', 'dankrez48@gmail.com', 'Perlahan tapi pasti, sosok TM yang merupakan artis dan berprofesi sebagai Pekerja Seks Komersial (PSK) akhirnya mulai terungkap Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2015-05-29', '00:59:50'),
(17, 3, 'hari ke 2', 'hay.smart,solusindo@gmail.com', 'Tesssss', '2015-05-29', '05:41:12'),
(19, 14, 'Admin Lokomedia', 'dankrez48@gmail.com', 'Testing untuk Berikan jawaban,....', '2015-06-01', '15:44:10'),
(20, 0, 'Dewiit Safitri', 'dewiit.safitri@gmail.com', 'I absolutely love image or text sliders written using pure css code. Likewise, i always hated slow loading sliders using jquery or javascript to use in my wordpress themes or html websites. I have compiled some cool css sliders from codepen/github for use in your website or in themes, many are responsive too. A word of advise: Please make sure to test all sliders in Safari, Chrome and FF before deployment.', '2017-01-24', '16:27:59'),
(23, 20, 'Admin Lokomedia', 'dankrez48@gmail.com', 'I spent almost a day searching for this. And found &#039;CSS3 Thumbnail Slider&#039; on this site. Thanks a lot. If the slideIndex is higher than the number of elements (x.length), the slideIndex is set to zero.', '2017-01-24', '16:31:47'),
(24, 14, 'Admin Lokomedia', 'dankrez48@gmail.com', 'Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut', '2017-04-09', '11:07:23'),
(25, 0, 'BangToyyib', 'toyyib@gmail.com', 'saya ingin bertanya, berapa 1 + 1?', '2017-10-06', '08:19:33'),
(26, 25, 'Admin Lokomedia', 'admin@lokomedia.web.id', '1+1 adalah 2', '2017-10-06', '08:26:20');

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `id_templates` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `pembuat` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `folder` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`id_templates`, `judul`, `username`, `pembuat`, `folder`, `aktif`) VALUES
(27, 'Sistem Informasi RT 01', 'admin', 'Admin', 'dinas-1', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `foto` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `id_session` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `nama_lengkap`, `email`, `no_telp`, `foto`, `level`, `blokir`, `id_session`) VALUES
('admin', '$2y$10$cbsECImCFUiy0tqXkvY8g.AsLN0diCnm4lGlnW2xzMhhWNN9Rf0MK', 'Admin ', 'sayaadmin@gmail.com', '082377823390', 'Mazda_motorsport_31.jpg', 'admin', 'N', 'q173s8hs1jl04st35169ccl8o7');

-- --------------------------------------------------------

--
-- Table structure for table `users_modul`
--

CREATE TABLE `users_modul` (
  `id_umod` int(11) NOT NULL,
  `id_session` varchar(255) NOT NULL,
  `id_modul` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_modul`
--

INSERT INTO `users_modul` (`id_umod`, `id_session`, `id_modul`) VALUES
(1, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 70),
(2, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 65),
(3, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 63),
(4, 'f76ad5ee772ac196cbc09824e24859ee', 70),
(5, 'f76ad5ee772ac196cbc09824e24859ee', 65),
(6, 'f76ad5ee772ac196cbc09824e24859ee', 63),
(7, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 18),
(8, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 66),
(9, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 33),
(10, '3460d81e02faa3559f9e02c9a766fcbd-20170124215625', 18),
(11, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 41),
(12, '6bec9c852847242e384a4d5ac0962ba0-20170406140423', 18),
(13, 'fa7688658d8b38aae731826ea1daebb5-20170521103501', 18),
(14, 'q173s8hs1jl04st35169ccl8o7', 70),
(15, 'q173s8hs1jl04st35169ccl8o7', 66),
(16, 'q173s8hs1jl04st35169ccl8o7', 65),
(17, 'q173s8hs1jl04st35169ccl8o7', 64),
(18, 'q173s8hs1jl04st35169ccl8o7', 63),
(19, 'q173s8hs1jl04st35169ccl8o7', 62),
(20, 'q173s8hs1jl04st35169ccl8o7', 61),
(21, 'q173s8hs1jl04st35169ccl8o7', 59),
(22, 'q173s8hs1jl04st35169ccl8o7', 57),
(23, 'q173s8hs1jl04st35169ccl8o7', 46),
(24, 'q173s8hs1jl04st35169ccl8o7', 45),
(25, 'q173s8hs1jl04st35169ccl8o7', 44),
(26, 'q173s8hs1jl04st35169ccl8o7', 43),
(27, 'q173s8hs1jl04st35169ccl8o7', 41),
(28, 'q173s8hs1jl04st35169ccl8o7', 35),
(29, 'q173s8hs1jl04st35169ccl8o7', 34),
(30, 'q173s8hs1jl04st35169ccl8o7', 33),
(31, 'q173s8hs1jl04st35169ccl8o7', 31),
(32, 'q173s8hs1jl04st35169ccl8o7', 18),
(33, 'q173s8hs1jl04st35169ccl8o7', 10),
(34, 'q173s8hs1jl04st35169ccl8o7', 2),
(35, 'q173s8hs1jl04st35169ccl8o7', 59),
(36, 'q173s8hs1jl04st35169ccl8o7', 57),
(37, 'q173s8hs1jl04st35169ccl8o7', 46),
(38, 'q173s8hs1jl04st35169ccl8o7', 45),
(39, 'q173s8hs1jl04st35169ccl8o7', 44),
(40, 'q173s8hs1jl04st35169ccl8o7', 43),
(41, 'q173s8hs1jl04st35169ccl8o7', 41),
(42, 'q173s8hs1jl04st35169ccl8o7', 35),
(43, 'q173s8hs1jl04st35169ccl8o7', 34),
(44, 'q173s8hs1jl04st35169ccl8o7', 33),
(45, 'q173s8hs1jl04st35169ccl8o7', 31),
(46, 'q173s8hs1jl04st35169ccl8o7', 18),
(47, 'q173s8hs1jl04st35169ccl8o7', 10),
(48, 'q173s8hs1jl04st35169ccl8o7', 2);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id_video` int(5) NOT NULL,
  `id_playlist` int(5) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `jdl_video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `video_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `youtube` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dilihat` int(7) NOT NULL DEFAULT 1,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `tagvid` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id_video`, `id_playlist`, `username`, `jdl_video`, `video_seo`, `keterangan`, `gbr_video`, `video`, `youtube`, `dilihat`, `hari`, `tanggal`, `jam`, `tagvid`) VALUES
(176, 61, 'admin', 'Visit Karawang', 'visit-karawang', '<p>Salah satu Kabupaten yang terletak di Provinsi Jawa Barat yang terkenal sebagai Lumbung Padi Nasional. Kota Pangkal Perjuangan. Kota Industri terbesar se Asia Tenggara.</p>\r\n\r\n<p>BANGGA JADI URANG KARAWANG. Banyak sejarah, kekayaan yang KARAWANG miliki.</p>\r\n', '', '', 'https://www.youtube.com/watch?v=GYfEZwbopIQ', 11, 'Rabu', '2019-01-09', '16:06:47', 'wisata'),
(177, 61, 'admin', 'Kuliner Karawang', 'kuliner-karawang', '<p>Acara &quot;Tau Gak Sih&quot; Trans 7 meliput wisata kuliner di Karawang</p>\r\n', '', '', 'https://www.youtube.com/watch?v=y-zy7RW9P4E', 4, 'Rabu', '2019-01-09', '16:09:32', 'wisata');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id_agenda`);

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id_album`);

--
-- Indexes for table `background`
--
ALTER TABLE `background`
  ADD PRIMARY KEY (`id_background`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id_banner`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id_download`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indexes for table `halamanstatis`
--
ALTER TABLE `halamanstatis`
  ADD PRIMARY KEY (`id_halaman`);

--
-- Indexes for table `header`
--
ALTER TABLE `header`
  ADD PRIMARY KEY (`id_header`);

--
-- Indexes for table `hubungi`
--
ALTER TABLE `hubungi`
  ADD PRIMARY KEY (`id_hubungi`);

--
-- Indexes for table `identitas`
--
ALTER TABLE `identitas`
  ADD PRIMARY KEY (`id_identitas`);

--
-- Indexes for table `iklanatas`
--
ALTER TABLE `iklanatas`
  ADD PRIMARY KEY (`id_iklanatas`);

--
-- Indexes for table `iklantengah`
--
ALTER TABLE `iklantengah`
  ADD PRIMARY KEY (`id_iklantengah`);

--
-- Indexes for table `katajelek`
--
ALTER TABLE `katajelek`
  ADD PRIMARY KEY (`id_jelek`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `komentarvid`
--
ALTER TABLE `komentarvid`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `link`
--
ALTER TABLE `link`
  ADD PRIMARY KEY (`id_link`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id_logo`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id_modul`);

--
-- Indexes for table `mod_alamat`
--
ALTER TABLE `mod_alamat`
  ADD PRIMARY KEY (`id_alamat`);

--
-- Indexes for table `mod_ym`
--
ALTER TABLE `mod_ym`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pasangiklan`
--
ALTER TABLE `pasangiklan`
  ADD PRIMARY KEY (`id_pasangiklan`);

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id_playlist`);

--
-- Indexes for table `poling`
--
ALTER TABLE `poling`
  ADD PRIMARY KEY (`id_poling`);

--
-- Indexes for table `sekilasinfo`
--
ALTER TABLE `sekilasinfo`
  ADD PRIMARY KEY (`id_sekilas`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id_tag`);

--
-- Indexes for table `tagvid`
--
ALTER TABLE `tagvid`
  ADD PRIMARY KEY (`id_tag`);

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id_templates`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `users_modul`
--
ALTER TABLE `users_modul`
  ADD PRIMARY KEY (`id_umod`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_video`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id_agenda` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id_album` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `background`
--
ALTER TABLE `background`
  MODIFY `id_background` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id_banner` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=695;

--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `id_download` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id_gallery` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;

--
-- AUTO_INCREMENT for table `halamanstatis`
--
ALTER TABLE `halamanstatis`
  MODIFY `id_halaman` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `header`
--
ALTER TABLE `header`
  MODIFY `id_header` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `hubungi`
--
ALTER TABLE `hubungi`
  MODIFY `id_hubungi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `identitas`
--
ALTER TABLE `identitas`
  MODIFY `id_identitas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `iklanatas`
--
ALTER TABLE `iklanatas`
  MODIFY `id_iklanatas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `iklantengah`
--
ALTER TABLE `iklantengah`
  MODIFY `id_iklantengah` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `katajelek`
--
ALTER TABLE `katajelek`
  MODIFY `id_jelek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `komentarvid`
--
ALTER TABLE `komentarvid`
  MODIFY `id_komentar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `link`
--
ALTER TABLE `link`
  MODIFY `id_link` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `id_logo` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `modul`
--
ALTER TABLE `modul`
  MODIFY `id_modul` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `mod_alamat`
--
ALTER TABLE `mod_alamat`
  MODIFY `id_alamat` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mod_ym`
--
ALTER TABLE `mod_ym`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pasangiklan`
--
ALTER TABLE `pasangiklan`
  MODIFY `id_pasangiklan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id_playlist` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `poling`
--
ALTER TABLE `poling`
  MODIFY `id_poling` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `sekilasinfo`
--
ALTER TABLE `sekilasinfo`
  MODIFY `id_sekilas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id_tag` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `tagvid`
--
ALTER TABLE `tagvid`
  MODIFY `id_tag` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `id_komentar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `id_templates` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users_modul`
--
ALTER TABLE `users_modul`
  MODIFY `id_umod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id_video` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
