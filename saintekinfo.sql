-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2025 at 07:29 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `saintekinfo`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_email` varchar(35) NOT NULL,
  `admin_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_email`, `admin_password`) VALUES
(1, 'admin@admin.com', '$2y$10$b3GAX6.Pd6054RRQ8C9se.zfOhTljRkduBfAKWFrmtdKwj02aSTuq');

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `article_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `article_title` varchar(250) NOT NULL,
  `article_image` varchar(200) NOT NULL,
  `article_description` text NOT NULL,
  `article_date` date NOT NULL,
  `article_trend` tinyint(4) NOT NULL,
  `article_active` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`article_id`, `category_id`, `author_id`, `article_title`, `article_image`, `article_description`, `article_date`, `article_trend`, `article_active`) VALUES
(40, 6, 5, 'MANCHESTER UNITED MENGALAHKAN ARSENAL DENGAN SKOR MEYAKINKAN 3-1', 'article-6-1736961578.png', '**Manchester United Taklukkan Arsenal dalam Laga Seru di Old Trafford**  \r\n\r\nManchester United berhasil meraih kemenangan penting atas Arsenal dalam pertandingan Liga Inggris yang berlangsung di Old Trafford pada Rabu malam (15/1). Tim asuhan Erik ten Hag menunjukkan performa gemilang dengan skor akhir 3-1, sekaligus memperkuat posisi mereka di papan atas klasemen.  \r\n\r\nPertandingan berlangsung sengit sejak peluit awal dibunyikan. Arsenal, yang mengincar kemenangan untuk menjaga peluang di perebutan gelar juara, tampil menyerang sejak menit pertama. Namun, solidnya lini pertahanan United yang dipimpin Raphael Varane berhasil meredam gempuran The Gunners.  \r\n\r\nGol pembuka dicetak oleh Marcus Rashford di menit ke-23 lewat tendangan keras dari luar kotak penalti, yang tak mampu diantisipasi oleh Aaron Ramsdale. Arsenal sempat menyamakan kedudukan lewat gol Martin Ødegaard pada menit ke-35, setelah memanfaatkan umpan apik Bukayo Saka.  \r\n\r\nDi babak kedua, United tampil lebih dominan. Alejandro Garnacho, yang masuk sebagai pemain pengganti, mencetak gol spektakuler di menit ke-67. Gol ketiga United lahir dari Bruno Fernandes melalui titik penalti pada menit ke-82, menyusul pelanggaran yang dilakukan William Saliba di area terlarang.  \r\n\r\nPelatih Erik ten Hag memuji performa timnya, terutama lini tengah yang dikomandoi oleh Casemiro dan Christian Eriksen. “Kami menunjukkan mentalitas yang luar biasa hari ini. Para pemain tampil kompak, dan itu kunci kemenangan kami,” ujarnya dalam konferensi pers usai pertandingan.  \r\n\r\nSementara itu, pelatih Arsenal, Mikel Arteta, mengakui kekalahan timnya namun tetap optimistis. “Kami kurang efektif di momen-momen krusial. Ini pelajaran bagi kami untuk lebih baik ke depannya,” kata Arteta.  \r\n\r\nKemenangan ini membawa Manchester United naik ke peringkat ketiga klasemen sementara, hanya terpaut dua poin dari pemuncak klasemen. Di sisi lain, Arsenal harus puas bertahan di posisi kelima.  \r\n\r\nLaga ini menjadi bukti bahwa persaingan Liga Inggris musim ini semakin memanas, dengan setiap pertandingan menghadirkan drama dan tensi tinggi.', '2025-01-15', 0, 1),
(41, 7, 5, 'Kunjungan ke BNS dan Melihat Aksi Spektakuler BNS Stunt Show', 'article-7-1737006493.jpeg', 'Delegasi Anggota Dewan Eksekutif Mahasiswa (Dema) Fakultas Sains dan Teknologi (Saintek) UINSA menghadiri pertunjukan aksi akrobatik spektakuler dari BNS Stunt Show yang digelar di Batu Night Spectacular (BNS) tadi malam. Acara ini menjadi ajang hiburan sekaligus pengalaman menginspirasi bagi para mahasiswa yang hadir.  \r\n\r\nPertunjukan BNS Stunt Show menampilkan aksi-aksi menegangkan, seperti motor terbang, atraksi api, dan manuver ekstrem yang memacu adrenalin. Para stuntman yang profesional menunjukkan keterampilan mereka dengan penuh percaya diri, memukau ratusan penonton yang memadati arena pertunjukan.  \r\n\r\nKetua Dema Saintek, Farhat Mu\'afy, menyampaikan apresiasinya terhadap acara tersebut. “Kami sangat terhibur dengan pertunjukan yang luar biasa ini. Selain menghibur, aksi ini juga mengajarkan kita pentingnya keberanian, kerja keras, dan disiplin dalam mencapai sesuatu yang besar,” ujar Ketua Dema yang kerap di sapa Inul di sela-sela acara.  \r\n\r\nSementara itu, pengelola BNS mengungkapkan kebanggaannya atas kesuksesan acara ini. “Kami senang dapat memberikan pengalaman yang berkesan bagi para pengunjung, termasuk teman-teman dari Dema Saintek. Stunt Show adalah salah satu atraksi unggulan kami yang selalu ditunggu-tunggu,” kata Manajer Operasional BNS, Rina Setyawati.  \r\n\r\nMahasiswa yang hadir juga terlihat antusias mengikuti jalannya pertunjukan. Beberapa dari mereka bahkan berkesempatan bertemu langsung dengan para stuntman dan berdiskusi tentang persiapan dan teknik yang diperlukan dalam setiap aksi.  \r\n\r\nPertunjukan ini menjadi salah satu program kunjungan Dema Saintek untuk memberikan suasana baru di tengah padatnya kegiatan akademik. Dengan adanya acara seperti ini, diharapkan mahasiswa dapat terus termotivasi untuk mengeksplorasi potensi dan keberanian mereka di berbagai bidang.  \r\n\r\nAcara yang berlangsung selama dua jam ini ditutup dengan pertunjukan kembang api yang memukau, meninggalkan kesan mendalam bagi seluruh penonton.', '2025-01-16', 1, 1),
(42, 4, 5, '400+ Mahasiswa Baru Saintek Mengikuti Kegiatan LKMM Pra-TD: Hourglass', 'article-4-1737008172.JPG', 'Sebanyak lebih dari 400 mahasiswa baru Fakultas Sains dan Teknologi (Saintek) Universitas Islam Negeri Sunan Ampel Surabaya mengikuti Latihan Kepemimpinan dan Manajemen Mahasiswa (LKMM) Pra-Tingkat Dasar (Pra-TD) bertajuk HOURGLASS. Acara yang digelar di Gedung Saintek Kampus UINSA Gunung Anyar berlangsung meriah dan penuh semangat.  \r\n\r\nKegiatan ini bertujuan untuk membekali mahasiswa baru dengan keterampilan dasar kepemimpinan, manajemen waktu, serta kolaborasi. Nama *Hourglass* dipilih sebagai tema dengan filosofi waktu yang harus dimanfaatkan secara bijak dan efisien oleh setiap individu.  \r\n\r\nDalam sambutannya, Dekan Fakultas Saintek, Dr. A. Saepul Hamdani, M.Pd., menyampaikan pentingnya kegiatan ini bagi pengembangan diri mahasiswa. “LKMM bukan sekadar kegiatan formalitas, tetapi kesempatan untuk mengenali potensi diri, melatih kemampuan memimpin, dan memahami arti tanggung jawab di lingkungan kampus maupun masyarakat,” ujar Asep.  \r\n\r\nKegiatan berlangsung selama dua gelombang, mencakup berbagai materi dan simulasi yang dirancang interaktif. Pada gelombang pertama, peserta yang di hadiri dari 4 prodi di Saintek mendapatkan materi mengenai manajemen waktu, komunikasi efektif, dan kepemimpinan. Sesi ini dipandu oleh para pemateri yang berpengalaman, termasuk dosen dan alumni berprestasi.  \r\n\r\nGelombang kedua diikuti 3 prodi dengan kegiatan kelompok, seperti diskusi, pemecahan masalah, dan simulasi organisasi. Salah satu agenda yang paling dinantikan adalah *Hourglass Challenge*, sebuah tantangan unik yang menguji kemampuan peserta dalam bekerja sama untuk menyelesaikan misi dalam waktu terbatas.  \r\n\r\nKetua pelaksana kegiatan, Anisa Husna, mengungkapkan rasa bangganya atas antusiasme peserta. “Kami senang melihat semangat para mahasiswa baru. Kegiatan ini dirancang agar mereka bisa belajar sekaligus bersenang-senang. Semoga ilmu yang didapatkan dapat menjadi bekal mereka di masa depan,” ungkap mahasiswi yang kerap disapa Huha itu.  \r\n\r\nPara peserta juga memberikan respons positif terhadap kegiatan ini. “LKMM Pra-TD ini benar-benar membuka wawasan saya tentang bagaimana mengelola waktu dan bekerja dalam tim. Tantangan-tantangan yang diberikan juga sangat seru,” ujar Fadli, salah satu mahasiswa baru.  \r\n\r\nKegiatan *Hourglass* diakhiri dengan sesi refleksi dan pemberian penghargaan kepada kelompok terbaik. Dengan suksesnya pelaksanaan LKMM Pra-TD ini, Fakultas Saintek berharap para mahasiswa baru dapat terus mengembangkan keterampilan kepemimpinan mereka di masa depan.  ', '2025-01-16', 1, 1),
(43, 3, 5, 'Kantin Tempat Singgah Mahasiswa UINSA', 'article-3-1737008705.png', 'Kantin Universitas Islam Negeri Sunan Ampel (UINSA) Surabaya terus menjadi tempat favorit bagi mahasiswa untuk bersantai sekaligus menikmati beragam pilihan kuliner. Dengan suasana yang nyaman dan menu yang bervariasi, kantin UINSA menjadi salah satu pusat aktivitas sosial mahasiswa di kampus.  \r\n\r\nBerada di area strategis dekat gedung perkuliahan, kantin UINSA menawarkan lebih dari 20 stan makanan dan minuman yang menyajikan menu lokal hingga modern. Mulai dari nasi pecel, soto ayam, hingga makanan kekinian seperti ayam geprek dan minuman boba, semuanya tersedia dengan harga yang ramah di kantong mahasiswa.  \r\n\r\n“Setiap hari, saya makan di sini karena pilihannya banyak dan harganya terjangkau. Selain itu, suasananya juga asyik untuk ngobrol bareng teman,” ujar Dina, mahasiswi Fakultas Ekonomi dan Bisnis Islam.  \r\n\r\nFasilitas di kantin juga semakin baik setelah renovasi pada 2023 lalu. Selain meja dan kursi yang lebih modern, area kantin kini dilengkapi dengan Wi-Fi gratis dan tempat pengisian daya untuk laptop serta ponsel. Hal ini menjadikan kantin UINSA tidak hanya sebagai tempat makan, tetapi juga lokasi yang ideal untuk belajar atau berdiskusi.  \r\n\r\nPengelola kantin, Bapak Sugiarto, menjelaskan bahwa pihak kampus bekerja sama dengan para pelaku usaha lokal untuk menyediakan makanan berkualitas dengan harga terjangkau. “Kami berusaha menjaga kebersihan, kenyamanan, dan keberagaman menu agar mahasiswa merasa betah. Setiap stan juga menjalani inspeksi rutin untuk memastikan kebersihan dan kualitas makanan,” ungkapnya.  \r\n\r\nSelain menjadi tempat makan, kantin UINSA juga sering digunakan sebagai lokasi berbagai kegiatan mahasiswa, seperti bazar, diskusi komunitas, hingga sesi musik akustik. Hal ini semakin memperkaya fungsi kantin sebagai ruang interaksi yang mendukung kreativitas mahasiswa.  \r\n\r\nDengan atmosfernya yang hangat dan fasilitas yang memadai, kantin UINSA terus berkontribusi sebagai salah satu daya tarik dan kebanggaan kampus. Ke depan, pengelola berencana menambah variasi menu vegetarian dan ramah lingkungan untuk memenuhi kebutuhan mahasiswa yang semakin beragam.  ', '2025-01-16', 1, 1),
(44, 3, 5, 'Makan Enak yang Asik Di Kantin UINSA', 'article-3-1737025206.JPG', 'Kantin Universitas Islam Negeri Sunan Ampel (UINSA) Surabaya terus menjadi tempat favorit bagi mahasiswa untuk bersantai sekaligus menikmati beragam pilihan kuliner. Dengan suasana yang nyaman dan menu yang bervariasi, kantin UINSA menjadi salah satu pusat aktivitas sosial mahasiswa di kampus.  \r\n\r\nBerada di area strategis dekat gedung perkuliahan, kantin UINSA menawarkan lebih dari 20 stan makanan dan minuman yang menyajikan menu lokal hingga modern. Mulai dari nasi pecel, soto ayam, hingga makanan kekinian seperti ayam geprek dan minuman boba, semuanya tersedia dengan harga yang ramah di kantong mahasiswa.  \r\n\r\n“Setiap hari, saya makan di sini karena pilihannya banyak dan harganya terjangkau. Selain itu, suasananya juga asyik untuk ngobrol bareng teman,” ujar Dina, mahasiswi Fakultas Ekonomi dan Bisnis Islam.  \r\n\r\nFasilitas di kantin juga semakin baik setelah renovasi pada 2023 lalu. Selain meja dan kursi yang lebih modern, area kantin kini dilengkapi dengan Wi-Fi gratis dan tempat pengisian daya untuk laptop serta ponsel. Hal ini menjadikan kantin UINSA tidak hanya sebagai tempat makan, tetapi juga lokasi yang ideal untuk belajar atau berdiskusi.  \r\n\r\nPengelola kantin, Bapak Sugiarto, menjelaskan bahwa pihak kampus bekerja sama dengan para pelaku usaha lokal untuk menyediakan makanan berkualitas dengan harga terjangkau. “Kami berusaha menjaga kebersihan, kenyamanan, dan keberagaman menu agar mahasiswa merasa betah. Setiap stan juga menjalani inspeksi rutin untuk memastikan kebersihan dan kualitas makanan,” ungkapnya.  \r\n\r\nSelain menjadi tempat makan, kantin UINSA juga sering digunakan sebagai lokasi berbagai kegiatan mahasiswa, seperti bazar, diskusi komunitas, hingga sesi musik akustik. Hal ini semakin memperkaya fungsi kantin sebagai ruang interaksi yang mendukung kreativitas mahasiswa.  \r\n\r\nDengan atmosfernya yang hangat dan fasilitas yang memadai, kantin UINSA terus berkontribusi sebagai salah satu daya tarik dan kebanggaan kampus. Ke depan, pengelola berencana menambah variasi menu vegetarian dan ramah lingkungan untuk memenuhi kebutuhan mahasiswa yang semakin beragam.  ', '2025-01-16', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `author_id` int(11) NOT NULL,
  `author_name` varchar(35) NOT NULL,
  `author_password` varchar(100) NOT NULL,
  `author_email` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`author_id`, `author_name`, `author_password`, `author_email`) VALUES
(1, 'Suyash U', '$2y$10$xDw4C1y58k8kafvdzKo6WO/XglvO9jeJV7evQTxfOSxJ8DybuXDFW', 'suyash@suyash.com'),
(2, 'U Anish', '$2y$10$gD8OeQmEZBbQFnO2CCpoBeot5X2/D76qV/ej5q1yyXkCmTilG6LHy', 'anish@anish.com'),
(3, 'Varshini Senthil', '$2y$10$yfqAfNTZiiGgStBU9089rOysv0n35bqk9t.M/tjC/H2ahfmPedoyS', 'vari@vari.com'),
(4, 'Nivethitha V S', '$2y$10$ETC53l2u7pyzCfbwsQMzcOzvVln2gEimQOIG7wVgM/vw.ouCb0FM.', 'nivi@nivi.com'),
(5, 'Otong Surotong', '$2y$10$aqEuaYeJTUXNv/IbzudI1ee9rDEA.OxJp8SjnoaPcPpW.afdBG2LO', 'otong@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `bookmark`
--

CREATE TABLE `bookmark` (
  `bookmark_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookmark`
--

INSERT INTO `bookmark` (`bookmark_id`, `user_id`, `article_id`) VALUES
(9, 1, 4),
(10, 2, 7),
(11, 1, 29),
(12, 2, 4),
(16, 1, 1),
(18, 1, 19),
(19, 2, 20),
(20, 4, 37),
(21, 6, 28),
(22, 6, 29),
(23, 1, 37),
(24, 1, 6),
(25, 1, 17),
(26, 1, 7),
(27, 1, 28);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(45) NOT NULL,
  `category_color` varchar(35) NOT NULL,
  `category_image` varchar(250) NOT NULL,
  `category_description` varchar(350) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_color`, `category_image`, `category_description`) VALUES
(1, 'Politics', 'tag-brown', 'Politics1737051209.png', 'Get a grip of the intriguing situation of Indian politics and where exactly our country is going under the leadership of our current leaders.'),
(2, 'Technology', 'tag-orange', 'Technology1616565177.jpg', 'World is changing rapidly because of the development of technology and boom in the need for technology, because nothing can be done without technology in today\'s world. So be up to date on the latest developments.'),
(3, 'Food', 'tag-purple', 'Food1616565209.jpg', 'Take a tour around the world\'s culinary deliciousness. Let yourself get melted in the taste and aroma for the food that we bring to you from every cuisine the world has seen.'),
(4, 'Education', 'tag-yellow', 'Education1616565234.jpg', 'Education is everything to survive in this competetive world. what is the latest when it comes to education and need to get education to every part of the world and the poor.'),
(5, 'Business', 'tag-pink', 'Business1737051086.jpg', 'Rise and Fall it\'s a roller coaster ride, the stock market. Bussines booming on a large scale and small handicraft artists making a livelihood. Stories from all around the world on business and trade.'),
(6, 'Sports', 'tag-purple', 'Sports1737051247.png', 'And it\'s a six or GOALLL!!!! are a few things that make us feel like a child. Sports, tournaments and league matches, where is each team standing, what is new in the world of sports??'),
(7, 'Entertainment', 'tag-orange', 'Entertainment1737051109.jpg', 'ROLL. CAMERA. ACTION. Behold the drama unfold in the coolest way possible. Catch your favorite celebrities on their new projects and endorsements.'),
(8, 'Health', 'tag-yellow', 'Health1737051175.PNG', 'One of human beings\' major asset is our ability of take care of our health and be healthy. our first priority should be to be healthy. COVID-19 LATEST NEWS AVAILABLE HERE.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(35) NOT NULL,
  `user_email` varchar(45) NOT NULL,
  `user_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_password`) VALUES
(1, 'Anish U ', 'anish@anish.com', '$2y$10$gD8OeQmEZBbQFnO2CCpoBeot5X2/D76qV/ej5q1yyXkCmTilG6LHy'),
(2, 'Jaishri S K', 'jai@jai.com', '$2y$10$CIVnTItR2cIxuLm4/zGjuOIfsh/Dqs/zaKOJ2ST4dIk0YrJF/Cam6'),
(4, 'Suyash U', 'suyash@suyash.com', '$2y$10$xDw4C1y58k8kafvdzKo6WO/XglvO9jeJV7evQTxfOSxJ8DybuXDFW'),
(5, 'Varshini Senthil', 'vari@vari.com', '$2y$10$yfqAfNTZiiGgStBU9089rOysv0n35bqk9t.M/tjC/H2ahfmPedoyS'),
(6, 'Nivethitha V S', 'nivi@nivi.com', '$2y$10$ETC53l2u7pyzCfbwsQMzcOzvVln2gEimQOIG7wVgM/vw.ouCb0FM.'),
(7, 'ucupp', 'ucup@gmail.com', '$2y$10$mDXkCJGeDR/UcDddixEFRukq1m1LT8/tKHYw2XUMcArWjj9Bs/EIK'),
(8, 'Otong', 'otong@gmail.com', '$2y$10$aqEuaYeJTUXNv/IbzudI1ee9rDEA.OxJp8SjnoaPcPpW.afdBG2LO');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`article_id`);

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `bookmark`
--
ALTER TABLE `bookmark`
  ADD PRIMARY KEY (`bookmark_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bookmark`
--
ALTER TABLE `bookmark`
  MODIFY `bookmark_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
