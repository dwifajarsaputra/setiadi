-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2015 at 02:13 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `etd`
--
CREATE DATABASE IF NOT EXISTS `etd` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `etd`;

-- --------------------------------------------------------

--
-- Table structure for table `backup_log`
--

CREATE TABLE IF NOT EXISTS `backup_log` (
  `backup_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `backup_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `backup_file` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`backup_log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `biblio`
--

CREATE TABLE IF NOT EXISTS `biblio` (
  `biblio_id` int(11) NOT NULL AUTO_INCREMENT,
  `gmd_id` int(3) DEFAULT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `sor` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `edition` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isbn_issn` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publisher_id` int(11) DEFAULT NULL,
  `publish_year` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `collation` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `series_title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `call_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_id` char(5) COLLATE utf8_unicode_ci DEFAULT 'en',
  `source` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publish_place_id` int(11) DEFAULT NULL,
  `classification` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_att` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opac_hide` smallint(1) DEFAULT '0',
  `promoted` smallint(1) DEFAULT '0',
  `labels` text COLLATE utf8_unicode_ci,
  `frequency_id` int(11) NOT NULL DEFAULT '0',
  `spec_detail_info` text COLLATE utf8_unicode_ci,
  `viewer` int(11) DEFAULT NULL,
  `download_biblio` int(11) NOT NULL,
  `timestamp` timestamp NULL DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  PRIMARY KEY (`biblio_id`),
  KEY `references_idx` (`gmd_id`,`publisher_id`,`language_id`,`publish_place_id`),
  KEY `classification` (`classification`),
  KEY `biblio_flag_idx` (`opac_hide`,`promoted`),
  FULLTEXT KEY `title_ft_idx` (`title`,`series_title`),
  FULLTEXT KEY `notes_ft_idx` (`notes`),
  FULLTEXT KEY `labels` (`labels`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=29 ;

--
-- Dumping data for table `biblio`
--

INSERT INTO `biblio` (`biblio_id`, `gmd_id`, `title`, `sor`, `edition`, `isbn_issn`, `publisher_id`, `publish_year`, `collation`, `series_title`, `call_number`, `language_id`, `source`, `publish_place_id`, `classification`, `notes`, `image`, `file_att`, `opac_hide`, `promoted`, `labels`, `frequency_id`, `spec_detail_info`, `viewer`, `download_biblio`, `timestamp`, `input_date`, `last_update`) VALUES
(27, 1, 'PENGARUH TINGKAT BEBAN KERJA MENTAL TERHADAP PEMILIHAN STRATEGI KOPING PADA PENGEMUDI TAKSI DI KOTA DEPOK', 'Arina Dyga Putri', '', '', 12, '2015', '20 cm.', '', '620 Put P', 'id', NULL, 9, '620', 'Taxi driver is a profession that has unique characteristics, this job has an extensive working environment, long working hours, and fluctuating payroll system. This job is not difficult, but requires physical and mental workload. While doing their job which is dominated by physical and mental load, a Taxi driver needs a suitable coping strategies to well-suited the workload in order to motivate themselves and get the job done well. This study were intended to determine the effect of the mental workload level to Taxi’s driver coping strategies in Depok. The research methodology was analytic observational with cross sectional approach. Samplings are done by cluster random sampling technique on three districts in Depok involving 82 Taxi’s drivers. This study used NASA-TLX mental workload questionnaire and Lazarus’s Way of Coping Scale. Based from the results of chi-square statistical test, the value of p = 0.000 (p < 0.005) which means that there are effects of mental workload level and coping strategies. This result shown that mental workload level that happen on a person would affect coping strategies they would choose and that can affect their mental workload level.', 'wikiversity-logo.png.png', NULL, 0, 1, NULL, 0, 'Lembar Pengesahan Pada 13 Juli 2015', NULL, 24, '2015-11-04 10:59:56', '2015-09-28 13:23:07', '2015-11-04 17:59:36'),
(25, 1, 'ANALISIS FAKTOR RISIKO KELUHAN NYERI PUNGGUNG BAWAH (NPB) PADA MAHASISWA TINGKAT III FK UPN VETERAN JAKARTA', 'Andriansyah Karnanda', '', '', 12, '2015', '20 cm.', '', '620 Kar A', 'id', NULL, 9, '620', 'Lower Back Pain (LBP) is a major cause of inability to work. Prevalence of LBP reaches 90% of the world''s population. This research was conducted in a population of medical students UPN Veteran Jakarta. The objective of this study are to ascertain prevalence of LBP and whether an association between the risk factors and LBP complain. Measuring tool to assess the LBP complain to be good for NMQ questionnaire which has been validated and translated into Indonesian. The instrument for measuring height and weight were stature meters and scales underfoot. For drinking coffee and smoking habits variables, participants were asked to fill out additional questionnaire and interview. The design in this study is a cross-sectional study of the 106 research subjects. The collected data were analyzed by univariate and bivariate analysis. The incidence of lower back pain at FK UPN third level students is 66%,that’s more women than men. Chi-square test showed that there was a relationship between the sexes (p = 0.033) and the coffee drinking habits (p = 0.000) with the incidence of low back pain. There are no significant association between the risk factors BMI (p=0,410), smoking (p=1,000), and the weight of the bag lecture (p=1,000) with NPB.', 'wikiversity-logo.png.png', NULL, 0, 1, NULL, 0, 'Lembar Pengesahan Pada 13 Agustus 2015', NULL, 1, '2015-09-30 02:14:40', '2015-09-28 12:46:15', '2015-09-28 12:46:56'),
(26, 1, 'UJI EFEKTIVITAS ANTIDIARE EKSTRAK ETANOL KULIT BUAH RAMBUTAN HIJAU (NEPHELIUM LAPPACEUM L.) PADA MENCIT PUTIH JANTAN YANG DIINDUKSI OLEUM RICINI', 'Rosiana Afida Rohmawati', '', '', 12, '2015', '20 cm.', '', '620 Ros U', 'id', NULL, 9, '620', 'Diarrhea become one of the main health problems in Indonesia that requires serious treatment. The villagers prefer to use herbal treatment to cure diarrhea, one of them is rambutan peel. The aim of this study was to reveal anti diarrheal effectiveness of rambutan peel’s (Nephelium lappaceum L.) ethanol extract. This research was an experimental test with the sample divided into 5 groups : negative control group (CMC), rambutan peel’s (Nephelium lappaceum L.) ethanol extract dose 350 mg, dose 700 mg,dose 1.400 mg, and positive control group. Analysis of the frequency of defecation used one way ANOVA test and followed by LSD, while the consistency of defecation used Kruskal Wallis test and followed by Mann Whitney test. The results test of frequency of defecation for group II, group III, and group IV showed significant difference with control group (p', 'wikiversity-logo.png.png', NULL, 0, 1, NULL, 0, 'Lembar Pengesahan Pada 13 Juli 2015', NULL, 2, '2015-10-04 02:34:14', '2015-09-28 13:06:31', '2015-09-28 13:07:13'),
(24, 1, 'HUBUNGAN RESPON RADIOKEMOTERAPI TERHADAP PASIEN KARSINOMA NASOFARING SETELAH 1 TAHUN PEMBERIAN `BERDASARKAN KLASIFIKASI WHO', 'Davi Nurul Kamal', '', '', 12, '2015', '20 cm', '', '620 Kim H', 'id', NULL, 9, '620', 'Nasopharyngeal carcinoma is a malignant tumor on head that located exactly behind nasal to the base of cranium. In 2011, there have increased asopharyngeal carcinoma patients annually with average 17 patients per month at Gatot Subroto Hospital Jakarta. Chemoteraphy drug is the one of drugs that can inhibit cancer growth and kill cancer cells. The purpose of this study is to determine the response of histopathological classifications on nasopharyngeal carcinoma patients after had treatment of chemoradiotherapy within 1 year. This research is a descriptive analytic research that using cross sectional method. The technique of sampling uses purposive sampling, which is to determine the sample of the population that have certain characteristics to fill quota that needed. Total sampels are 42 people from secondary data using medical record of patients, who have treated \r\nchemoradiotherapy for 1 year. The alternative test uses Fisher''s test, that the results of significancy value is 0.005. Therefore, we can conclude that there is correlation between chemoradioteraphy response and nasopharyngeal carcinoma patients that based on WHO classifications.', 'wikiversity-logo.png.png', NULL, 0, 1, NULL, 0, 'Lembar Pengesahan Pada 9 Juli 2015', NULL, 1, '2015-09-30 06:42:47', '2015-09-28 11:36:45', '2015-09-28 12:56:44'),
(23, 1, 'HUBUNGAN PEMBERIAN IMUNISASI DASAR LENGKAP TERHADAP TUMBUH KEMBANG BALITA USIA 9-12 BULAN DI PUSKESMAS PONDOK RANGGON, JAKARTA TIMUR PERIODE APRIL 2015', 'Hera Ragilita Prameswari', '', '', 12, '2015', '20 cm', '', '620 Pra H', 'id', NULL, 9, '620', 'Healthy children would grow and develop properly, while children who often ill, their growth and development would disrupted. Factors that influence growth and development were age, gender, genetics, chromosomal abnormalities, nutritional, immunological disorder, delivery factor, immunization, upbringing environment and stimulation. Immunization was important factor that effects the growth and development of a child. Ideally, every child should receive complete immunization, but in reality there were children who did not receive complete basic and optimal immunization. The purpose of this study is to determine the effect of complete basic immunization to the growth and development of children in age range of 9-12 months old. The type of the research is analytic observational with cross sectional study design and sample size of 81 people. The univariat analysis indicated the prevalence of the complete basic immunization was 71 people (84,7%) and the prevalence of the incomplete basic immunization was 13 people (15,3%). The result of bivariate analysis showed no significant relation between the provision of complete basic immunizations with the growth (p=0,166), while there is a significant relation between the provosion of complete basic immunizations with children development (p=0,000). Suggestions for mothers , that is required to provide complete basic immunization for newborn children until age 9 months because immunization very useful to prevent disease and mother must consider granting schedule immunization toddler age-appropriate, so that no delay on immunization administration.', 'wikiversity-logo.png.png', NULL, 0, 1, NULL, 0, 'Pengesahan Pada Tanggal 10 Juli 2015', NULL, 9, '2015-09-30 06:42:55', '2015-09-28 11:00:36', '2015-09-28 11:49:52');

-- --------------------------------------------------------

--
-- Table structure for table `biblio_attachment`
--

CREATE TABLE IF NOT EXISTS `biblio_attachment` (
  `biblio_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  `access_type` enum('public','private') COLLATE utf8_unicode_ci NOT NULL,
  `access_limit` text COLLATE utf8_unicode_ci,
  KEY `biblio_id` (`biblio_id`),
  KEY `file_id` (`file_id`),
  KEY `biblio_id_2` (`biblio_id`,`file_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `biblio_attachment`
--

INSERT INTO `biblio_attachment` (`biblio_id`, `file_id`, `access_type`, `access_limit`) VALUES
(24, 3, 'public', NULL),
(23, 4, 'public', 'a:1:{i:0;s:1:"1";}'),
(25, 5, 'public', NULL),
(26, 6, 'public', NULL),
(27, 7, 'public', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `biblio_author`
--

CREATE TABLE IF NOT EXISTS `biblio_author` (
  `biblio_id` int(11) NOT NULL DEFAULT '0',
  `author_id` int(11) NOT NULL DEFAULT '0',
  `level` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`biblio_id`,`author_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `biblio_author`
--

INSERT INTO `biblio_author` (`biblio_id`, `author_id`, `level`) VALUES
(25, 27, 1),
(2, 2, 1),
(2, 3, 2),
(2, 4, 2),
(2, 5, 2),
(2, 6, 2),
(24, 28, 1),
(23, 25, 1),
(4, 9, 1),
(6, 11, 1),
(6, 12, 2),
(8, 15, 1),
(26, 29, 1),
(27, 30, 1),
(12, 21, 1),
(13, 22, 1),
(14, 23, 1),
(15, 24, 1);

-- --------------------------------------------------------

--
-- Table structure for table `biblio_custom`
--

CREATE TABLE IF NOT EXISTS `biblio_custom` (
  `biblio_id` int(11) NOT NULL,
  PRIMARY KEY (`biblio_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='one to one relation with real biblio table';

-- --------------------------------------------------------

--
-- Table structure for table `biblio_topic`
--

CREATE TABLE IF NOT EXISTS `biblio_topic` (
  `biblio_id` int(11) NOT NULL DEFAULT '0',
  `topic_id` int(11) NOT NULL DEFAULT '0',
  `level` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`biblio_id`,`topic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `biblio_topic`
--

INSERT INTO `biblio_topic` (`biblio_id`, `topic_id`, `level`) VALUES
(27, 5, 1),
(26, 4, 1),
(2, 3, 1),
(2, 4, 2),
(2, 5, 2),
(25, 3, 1),
(24, 2, 1),
(23, 1, 1),
(4, 4, 1),
(4, 8, 2),
(6, 1, 1),
(6, 7, 2),
(8, 1, 1),
(8, 2, 2),
(12, 15, 1),
(12, 16, 2),
(13, 15, 1),
(14, 15, 1),
(15, 15, 1),
(15, 17, 2);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `biblio_id` int(11) NOT NULL,
  `member_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `input_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE IF NOT EXISTS `content` (
  `content_id` int(11) NOT NULL AUTO_INCREMENT,
  `content_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `content_path` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime NOT NULL,
  `content_ownpage` enum('1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`content_id`),
  UNIQUE KEY `content_path` (`content_path`),
  FULLTEXT KEY `content_title` (`content_title`),
  FULLTEXT KEY `content_desc` (`content_desc`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`content_id`, `content_title`, `content_desc`, `content_path`, `input_date`, `last_update`, `content_ownpage`) VALUES
(1, 'ETD Information', '<p>Senayan Sistem Elektronik Tesis dan Disertasi disingkat SETIADI (GPL.V3). Merupakan Suatu Distro dari SLiMS yang dapat dimanfaatkan khusus untuk manajemen Skripsi, Tesis/Disertasi (ETD) atau Karya Tulis Ilmiah. Memiliki beberapa penyesuaian untuk mendukung sistem ETD antara lain :</p>\r\n<p>1. Quick Search : Pencarian cepat berdasarkan Institusi (Institutions) yang menerbitkan ETD dan Pengarang (Author''s) ETD. &nbsp;</p>\r\n<p>2. ETD Statistic : Total koleksi yang tersedia.&nbsp;</p>\r\n<p>3. Top Viewer ETDs : Daftar koleksi ETD yang paling banyak dicari.&nbsp;</p>\r\n<p>4. Most Downloaded ETDs : Daftar koleksi ETD yang paling banyak diunduh.&nbsp;</p>\r\n<p>5. APA Citation : Format sitasi sebuah koleksi berdasarkan gaya APA. &nbsp;</p>\r\n<p>Cocok pula digunakan untuk mendukung proses borang akreditasi (Perguruan Tinggi) dan proses administrasi jenjang jabatan fungsional Dosen.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><span>Ide awal merancang Setiadi adalah dari hasil pengalaman saya dalam bekerja di Perpustakaan Perguruan Tinggi. Oleh sebab itu, mari luangkan pengalaman anda untuk berbagi bersama dengan menciptakan produk. ^^</span></p>\r\n<p>&nbsp;</p>\r\n<p>Selamat berkreasi.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><span style="text-decoration: underline;">Catatan</span></p>\r\n<p>Versi : SETIADI-OK</p>\r\n<p>Helpdesk : dfsptra@gmail.com</p>\r\n<p>&nbsp;</p>', 'libinfo', '2009-09-13 19:48:16', '2015-11-06 08:11:24', '1'),
(2, 'Help On Usage', '<table style="width: 100%;" border="0" cellspacing="0" cellpadding="5">\r\n<tbody>\r\n<tr>\r\n<td width="5%" valign="top"><img src="images/membership.png" alt="membership" /></td>\r\n<td width="45%" valign="top">\r\n<div>\r\n<h3>Membership</h3>\r\n</div>\r\nIf you don''t have a membership, please contact BAAK.<br /><br /></td>\r\n</tr>\r\n<tr>\r\n<td width="5%" valign="top"><img src="images/proc.png" alt="Procudural File" /></td>\r\n<td width="45%" valign="top">\r\n<div>\r\n<h3>Procedural File</h3>\r\n</div>\r\nProcedural structure of thesis.</td>\r\n</tr>\r\n<tr>\r\n<td width="5%" valign="top"><img src="images/system.png" alt="How to Upload?" /></td>\r\n<td width="45%" valign="top">\r\n<div>\r\n<h3>How to Upload?</h3>\r\n</div>\r\n<p>The video tutorial, show how to upload a thesis/disertation.</p>\r\n<br /></td>\r\n</tr>\r\n</tbody>\r\n</table>', 'help', '2009-09-13 19:48:16', '2015-08-31 01:56:22', '1'),
(3, 'Welcome To Admin Page', '<table style="width: 100%;" border="0" cellspacing="0" cellpadding="5">\r\n<tbody>\r\n<tr>\r\n<td width="5%" valign="top"><a class="icon biblioIcon" href="?mod=bibliography"></a></td>\r\n<td width="45%" valign="top">\r\n<div class="heading">Bibliography</div>\r\nThe Bibliography module lets you manage your library bibliographical data. It also include collection items management     to manage a copies of your library collection so it can be used in library circulation.</td>\r\n<td width="5%" valign="top"><a class="icon circulationIcon" href="?mod=circulation"></a></td>\r\n<td width="45%" valign="top">\r\n<div class="heading">Circulation</div>\r\nThe Circulation module is used for doing library circulation transaction such as collection loans and return. In this module you can also create loan rules that will be used in loan transaction proccess.</td>\r\n</tr>\r\n<tr>\r\n<td width="5%" valign="top"><a class="icon memberIcon" href="?mod=membership"></a></td>\r\n<td width="45%" valign="top">\r\n<div class="heading">Membership</div>\r\nThe Membership module lets you manage library members such adding, updating and also removing. You can also manage membership type in this module.<br /><br /></td>\r\n<td width="5%" valign="top"><a class="icon stockTakeIcon" href="?mod=stock_take"></a></td>\r\n<td width="45%" valign="top">\r\n<div class="heading">Stock Take</div>\r\nThe Stock Take module is the easy way to do Stock Opname for your library collections. Follow several steps that ease your pain in Stock Opname proccess. <br /><br /></td>\r\n</tr>\r\n<tr>\r\n<td width="5%" valign="top"><a class="icon masterFileIcon" href="?mod=master_file"></a></td>\r\n<td width="45%" valign="top">\r\n<div class="heading">Master File</div>\r\nThe Master File modules lets you manage referential data that will be used by another modules. It include Authority File management such     as Authority, Subject/Topic List, GMD and other data.</td>\r\n<td width="5%" valign="top"><a class="icon systemIcon" href="?mod=system"></a></td>\r\n<td width="45%" valign="top">\r\n<div class="heading">System</div>\r\nThe System module is used to configure application globally.</td>\r\n</tr>\r\n<tr>\r\n<td width="5%" valign="top"><a class="icon reportIcon" href="?mod=reporting"></a></td>\r\n<td width="45%" valign="top">\r\n<div class="heading">Reporting</div>\r\n<p>Reporting lets you view various type of reports regardings membership data, circulation data and bibliographic data. All compiled on-the-fly from         current library database.</p>\r\n<br /></td>\r\n<td width="5%" valign="top"><a class="icon serialIcon" href="?mod=serial_control"></a></td>\r\n<td width="45%" valign="top">\r\n<div class="heading"></div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'adminhome', '2009-09-13 19:48:16', '2015-09-27 10:59:35', '1'),
(4, 'Homepage Info', '<p>Welcome To <strong>Setiadi''s</strong>&nbsp;Online Public Access Catalog (OPAC). Use OPAC to search collection in our library.</p>', 'headerinfo', '2009-09-13 19:48:16', '2015-11-02 07:55:44', '1'),
(5, 'Tentang SLiMS', '<p><!--intro_awal--><strong>SLiMS</strong> adalah akronim dari Senayan Library Management System. Awalnya dikembangkan oleh Perpustakaan Kementerian Pendidikan Nasional untuk menggantikan Alice (http://www2.softlinkint.com). Tujuan utamanya agar Perpustakaan Kemdiknas mempunyai kebebasan untuk menggunakan, mempelajari, memodifikasi dan mendistribusikan perangkat lunak yang digunakan. SLiMS, maka dirilis dengan lisensi GPL dan sekarang pengembangan SLiMS dilakukan oleh komunitas penggunanya.<!--intro_akhir--></p>\n<p><strong>Asal Mula</strong></p>\n<p>Setelah beroperasi 50 tahun lebih, karena beberapa alasan Perpustakaan BC Indonesia yang telah selama bertahun-tahun menjadi andalan layanan BC di Indonesia harus ditutup. Pengelola BC Indonesia kemudian berinisiatif untuk menghibahkan pengelolaan aset perpustakaanya ke tangan institusi pemerintah. Dalam hal ini, institusi pemerintah yang dianggap sesuai bidangnya dan strategis tempatnya, adalah Departemen Pendidikan Nasional (Depdiknas). Yang dihibahkan tidak hanya koleksi, tetapi juga rak koleksi, hardware (server dan workstation) serta sistem termasuk untuk aplikasi manajemen administrasi perpustakaan (Alice).</p>\n<p>Seiring dengan berjalannya waktu, manajemen Perpustakaan Depdiknas mulai menghadapi beberapa kendala dalam penggunaan sistem Alice. Pertama, keterbatasan dalam menambahkan fitur-fitur baru. Antara lain: kebutuhan manajemen serial, meng-online-kan katalog di web dan kustomisasi report yang sering berubah-ubah kebutuhannya. Penambahan fitur jika harus meminta modul resmi dari developer Alice, berarti membutuhkan dana tambahan yang tidak kecil. Apalagi tidak ada distributor resminya di Indonesia sehingga harus mengharapkan support dari Inggris. Ditambah lagi beberapa persyaratan yang membutuhkan infrastruktur biaya mahal seperti dedicated public IP agar bisa meng-online-kan Alice di web.<br /><br />Saat itu untuk mengatasi sebagian kebutuhan (utamanya kustomisasi report), dilakukan dengan ujicoba mengakses langsung database yang disimpan dalam format DBase. Terkadang berhasil terkadang tidak karena struktur datanya proprietary dan kompleks serta jumlah rekodnya banyak. Untuk mempelajari struktur database, dicoba melakukan kontak via email ke developer Alice. Tetapi tidak ada respon sama sekali. Disini muncul masalah kedua. Sulitnya mempelajari lebih mendalam cara kerja perangkat lunak Alice. Karena Alice merupakan sistem proprietary yang serba tertutup, segala sesuatunya sangat tergantung vendor. Dibutuhkan sejumlah uang untuk mendapatkan layanan resmi untuk kustomisasi.<br /><br />Perpustakaan Depdiknas salah satu tupoksinya adalah melakukan koordinasi pengelolaan perpustakaan unit kerja dibawah lingkungan Depdiknas. Dalam implementasinya, seringkali muncul kebutuhan untuk bisa mendistribusikan perangkat lunak sistem perpustakaan ke berbagai unit kerja tersebut. Disini masalah ketiga: sulit (atau tidak mungkin) untuk melakukan redistribusi sistem Alice. Alice merupakan perangkat lunak yang secara lisensi tidak memungkinkan diredistribusi oleh pengelola Perpustakaan Depdiknas secara bebas. Semuanya harus ijin dan membutuhkan biaya.<br /><br />November 2006, perpustakaan dihadapkan oleh sebuah masalah mendasar. Sistem Alice tiba-tiba tidak bisa digunakan. Ternyata Alice yang digunakan selama ini diimplementasikan dengan sistem sewa. Pantas saja biayanya relatif murah. Tiap tahun pengguna harus membayar kembali untuk memperpanjang masa sewa pakainya. Tetapi yang mengkhawatirkan adalah fakta bahwa perpustakaan harus menyimpan semua informasi penting dan kritikal di sebuah sistem yang tidak pernah dimiliki. Yang kalau lupa atau tidak mau membayar sewa lagi, hilanglah akses terhadap data kita sendiri. Konyol sekali. Itu sama saja dengan bunuh diri kalau masih tergantung dengan sistem berlisensi seperti itu.<br /><br />Akhirnya pengelola Perpustakaan Depdiknas me-review kembali penggunaan sistem Alice di perpustakaan Depdiknas. Beberapa poin pentingnya antara lain:<br />&bull;&nbsp;&nbsp;&nbsp; Alice memang handal (reliable), tapi punya banyak keterbatasan. Biaya sewanya memang relatif murah, tetapi kalau membutuhkan support tambahan, baik sederhana ataupun kompleks, sangat tergantung dengan developer Alice yang berpusat di Inggris. Butuh biaya yang kalau di total juga tidak murah.<br />&bull;&nbsp;&nbsp;&nbsp; Model lisensi proprietary yang digunakan developer Alice tidak cocok dengan kondisi kebanyakan perpustakaan di Indonesia. Padahal pengelola Perpustakaan Depdiknas sebagai koordinator banyak perpustakaan di lingkungan Depdiknas, punya kepentingan untuk bisa dengan bebas melakukan banyak hal terhadap software yang digunakan.<br />&bull;&nbsp;&nbsp;&nbsp; Menyimpan data penting dan kritikal untuk operasional perpustakaan di suatu software yang proprietary dan menggunakan sistem sewa, dianggap sesuatu yang konyol dan mengancam independensi dan keberlangsungan perpustakaan itu sendiri.<br />&bull;&nbsp;&nbsp;&nbsp; Alice berjalan diatas sistem operasi Windows yang juga proprietary padahal pengelola Perpustakaan Depdiknas ingin beralih menggunakan Sistem Operasi open source (seperti GNU/Linux dan FreeBSD).<br />&bull;&nbsp;&nbsp;&nbsp; Masalah devisa negara yang terbuang untuk membayar software yang tidak pernah dimiliki.<br />&bull;&nbsp;&nbsp;&nbsp; Intinya: pengelola Perpustakaan Depdiknas ingin menggunakan software yang memberikan dan menjamin kebebasan untuk: menggunakan, mempelajari, memodifikasi dan melakukan redistribusi. Lisensi Alice tidak memungkinkan untuk itu.<br /><br />Setelah memutuskan untuk hijrah menggunakan sistem yang lain, maka langkah berikutnya adalah mencari sistem yang ada untuk digunakan atau mengembangkan sendiri sistem yang dibutuhkan. Beberapa pertimbangan yang harus dipenuhi:<br />&bull;&nbsp;&nbsp;&nbsp; Dirilis dibawah lisensi yang menjamin kebebasan untuk: menggunakan, mempelajari, memodifikasi dan melakukan redistribusi. Model lisensi open source (www.openosurce.org) dianggap sebagai model yang paling ideal dan sesuai.<br />&bull;&nbsp;&nbsp;&nbsp; Teknologi yang digunakan untuk membangun sistem juga harus berlisensi open source.<br />&bull;&nbsp;&nbsp;&nbsp; Teknologi yang digunakan haruslah teknologi yang relatif mudah dipelajari oleh pengelola perpustakaan Depdiknas yang berlatarbelakang pendidiknas pustakawan, seperti PHP (scripting language) dan MySQL (database). Jika tidak menguasai sisi teknis teknologi, maka akan terjebak kembali terhadap ketergantungan pada developer.<br /><br />Langkah berikutnya adalah melakukan banding software sistem perpustakaan open source yang bisa diperoleh di internet. Beberapa software yang dicoba antara lain: phpMyLibrary, OpenBiblio, KOHA, EverGreen. Pengelola perpustakaan Depdiknas merasa tidak cocok dengan software yang ada, dengan beberapa alasan:<br />&bull;&nbsp;&nbsp;&nbsp; Desain aplikasi dan database yang tidak baik atau kurang menerapkan secara serius prinsip-prinsip pengembangan aplikasi dan database yang baik sesuai dengan teori yang ada (PHPMyLibrary, OpenBiblio).<br />&bull;&nbsp;&nbsp;&nbsp; Menggunakan teknologi yang sulit dikuasai oleh pengelola perpustakaan Depdiknas (KOHA dan EverGreen dikembangkan menggunakan Perl dan C++ Language yang relatif lebih sulit dipelajari).<br />&bull;&nbsp;&nbsp;&nbsp; Beberapa sudah tidak aktif atau lama sekali tidak di rilis versi terbarunya (PHPMyLibrary dan OpenBiblio).<br /><br />Karena tidak menemukan sistem yang dibutuhkan, maka diputuskan untuk mengembangkan sendiri aplikasi sistem perpustakaan yang dibutuhkan. Dalam dunia pengembangan software, salah satu best practice-nya adalah memberikan nama kode (codename) pengembangan. Nama kode berbeda dengan nama aplikasinya itu sendiri. Nama kode biasanya berbeda-beda tiap versi. Misalnya kode nama &ldquo;Hardy Heron&rdquo; untuk Ubuntu Linux 8.04 dan &ldquo;Jaunty Jackalope&rdquo; untuk Ubuntu Linux 9.04. Pengelola perpustakaan Depdiknas Untuk versi awal (1.0) aplikasi yang akan dikembangkan, memberikan nama kode &ldquo;Senayan&rdquo;. Alasannya sederhana, karena awal dikembangkan di perpustakaan Depdiknas yang berlokasi di Senayan. Apalagi Perpustakaan Depdiknas mempunyai brand sebagai library@senayan. Belakangan karena dirasa nama &ldquo;Senayan&rdquo; dirasa cocok dan punya nilai marketing yang bagus, maka nama &ldquo;Senayan&rdquo; dijadikan nama resmi aplikasi sistem perpustakaan yang dikembangkan.<br /><br />Mengembangkan Senayan<br /><br />Sebelum mulai mengembangkan Senayan, ada beberapa keputusan desain aplikasi yang harus dibuat. Aspek desain ini penting diantaranya untuk pengambilankeputusan dari berbagai masukan yang datang dari komunitas. Antara lain:<br /><br />Pertama,&nbsp; Senayan adalah aplikasi untuk kebutuhan administrasi dan konten perpustakaan (Library Automation System). Senayan didesain untuk kebutuhan skala menengah maupun besar. Cocok untuk perpustakaan yang memiliki koleksi, anggota dan staf banyak di lingkungan jaringan, baik itu lokal (intranet) dan internet.<br /><br />Kedua, Senayan dibangun dengan memperhatikan best practice dalam pengembangan software seperti dalam hal penulisan source code, dokumentasi, dan desain database.<br /><br />Ketiga, Senayan dirancang untuk compliant dengan standar pengelolaan koleksi di perpustakaan. Untuk standar pengatalogan minimal memenuhi syarat AACR 2 level 2 (Anglo-American Cataloging Rules). Kebutuhan untuk kesesuaian dengan standar di perpustakaan terus berkembang dan pengelola perpustakaan Depdiknas dan developer Senayan berkomitmen untuk terus mengembangkan Senayan agar mengikuti standar-standar tersebut.<br /><br />Keempat, Senayan didesain agar bisa juga menjadi middleware bagi aplikasi lain untuk menggunakan data yang ada didalam Senayan. Untuk itu Senayan akan menyediakan API (application programming Interface) yang berbasis web service.<br /><br />Kelima, Senayan merupakan aplikasi yang cross-platform, baik dari sisi aplikasinya itu sendiri dan akses terhadap aplikasi. Untuk itu basis yang paling tepat ada basis web.<br /><br />Keenam, teknologi yang digunakan untuk membangun Senayan, haruslah terbukti bisa diinstall di banyak platform sistem operasi, berlisensi open source dan mudah dipelajari oleh pengelola perpustakaan Depdiknas. Diputuskan untuk menggunakan PHP (www.php.net) untuk web scripting languange dan MySQL (www.mysql.com) untuk server database.<br /><br />Ketujuh, diputuskan untuk mengembangkan library PHP sendiri yang didesain spesifik untuk kebutuhan membangun library automation system. Tidak menggunakan library PHP yang sudah terkenal seperti PEAR (pear.php.net) karena alasan penguasaan terhadap teknologi dan kesederhanaan. Library tersebut diberinama &ldquo;simbio&rdquo;.<br /><br />Kedelapan, untuk mempercepat proses pengembangan, beberapa modul atau fungsi yang dibutuhkan yang dirasa terlalu lama dan rumit untuk dikembangkan sendiri, akan menggunakan software open source yang berlisensi open source juga. Misalnya: flowplayer untuk dukungan multimedia, jQuery untuk dukungan AJAX (Asynchronous Javascript and XML), genbarcode untuk dukungan pembuatan barcode, PHPThumb untuk dukungan generate image on-the-fly, tinyMCE untuk web-based text editor, dan lain-lain.<br /><br />Kesembilan, untuk menjaga spirit open source, proses pengembangan Senayan dilakukan dengan infrastruktur yang berbasis open source. Misalnya: server web menggunakan Apache, server produksi menggunakan OS Linux Centos dan OpenSuse, para developer melakukan pengembangan dengan OS Ubuntu Linux, manajemen source code menggunakan software git, dan lain-lain.<br /><br />Kesepuluh, Senayan dirilis ke masyarakat umum dengan lisensi GNU/GPL versi 3 yang menjamin kebebasan penggunanya untuk mempelajari, menggunakan, memodifikasi dan redistribusi Senayan.<br /><br />Kesebelas, para developer dan pengelola perpustakaan Depdiknas berkomitmen untuk terus mengembangkan Senayan dan menjadikannya salah satu contoh software perpustakaan yang open source, berbasis di indonesia dan menjadi salah satu contoh bagi model pengembangan open source yang terbukti berjalan dengan baik.<br /><br />Keduabelas, model pengembangan Senayan adalah open source yang artinya setiap orang dipersilahkan memberikan kontribusinya. Baik dari sisi pemrogaman, template, dokumentasi, dan lain-lain. Tentu saja ada mekanisme mana kontribusi yang bagus untuk dimasukkan dalam rilis resmi, mana yang tidak. Mengacu ke dokumen &hellip; (TAMBAHKAN DENGAN TULISAN ERIC S RAYMOND)<br /><br />Model pengembangan senayan<br /><br />Pengembangan Senayan awalnya diinisiasi oleh pengelola Perpustakaan Depdiknas. Tetapi sekarang komunitas pengembang Senayan (Senayan Developer Community) yang lebih banyak mengambil peran dalam mengembangkan Senayan. Beberapa hal dibawah ini merupakan kultur yang dibangun dalam mengembangkan Senayan:<br />1.&nbsp;&nbsp;&nbsp; Meritokrasi. Siapa saja bisa berkontribusi. Mereka yang banyak memberikan kontribusi, akan mendapatkan privilege lebih dibandingkan yang lain.<br />2.&nbsp;&nbsp;&nbsp; Minimal punya concern terhadap pengembangan perpustakaan. Contoh lain: berlatar belakang pendidikan ilmu perpustakaan dan informasi, bekerja di perpustakaan, mengelola perpustakaan, dan lain-lain. Diharapkan dengan kondisi ini, sense of librarianship melekat di tiap developer/pengguna Senayan. Sejauh ini, semua developer senayan merupakan pustakawan atau berlatarbelakang pendidikan kepustakawanan (Information and Librarianship).<br />3.&nbsp;&nbsp;&nbsp; Release early, release often, and listen to your customer. Release early artinya setiap perbaikan dan penambahan fitur, secepat mungkin dirilis ke publik. Diharapkan bugs yang ada, bisa cepat ditemukan oleh komunitas, dilaporkan ke developer, untuk kemudian dirilis perbaikannya. Release often, artinya sesering mungkin memberikan update perbaikan bugs dan penambahan fitur. Ini &ldquo;memaksa&rdquo; developer Senayan untuk terus kreatif menambahkan fitur Senayan. Release often juga membuat pengguna berkeyakinan bahwa Senayan punya sustainability yang baik dan terus aktif dikembangkan. Selain itu, release often juga mempunyai dampak pemasaran. Pengguna dan calon pengguna, selalu diingatkan tentang keberadaan Senayan. Tentunya dengan cara yang elegan, yaitu rilis-rilis Senayan. Sejak dirilis ke publi pertama kali November 2007 sampai Juli 2009 (kurang lebih 20 bulan) telah dirilis 18 rilis resmi Senayan. Listen to your customer. Developer Senayan selalu berusaha mengakomodasi kebutuhan pengguna baik yang masuk melalui report di mailing list, ataupun melalui bugs tracking system. Tentu tidak semua masukan diakomodasi, harus disesuaikan dengan desain dan roadmap pengembangan Senayan.<br />4.&nbsp;&nbsp;&nbsp; Dokumentasi. Developer Senayan meyakini pentingnya dokumentasi yang baik dalam mensukseskan implementasi Senayan dibanyak tempat. Karena itu pengembang Senayan mempunyai tim khusus yang bertanggungjawab yang mengembangkan dokumentasi Senayan agar terus uo-to-date mengikuti rilis terbaru.<br />5.&nbsp;&nbsp;&nbsp; Agar ada percepatan dalam pengembangan dan untuk mengakrabkan antar pengembang Senayan, minimal setahun sekali diadakan Senayan Developers Day yang mengumpulkan para developer Senayan dari berbagai kota, dan melakukan coding bersama-sama.<br />Fitur Senayan<br />Sebagai sebuah Sistem Automasi Perpustakaan yang terintergrasi, modul-modul yang telah terdapat di SENAYAN adalah sebagai berikut:<br />Modul Pengatalogan (Cataloging Module)<br />1)&nbsp;&nbsp;&nbsp; Compliance dengan standar AACR2 (Anglo-American Cataloging Rules).<br />2)&nbsp;&nbsp;&nbsp; Fitur untuk membuat, mengedit, dan menghapus data bibliografi sesuai dengan standar deskripsi bibliografi AACR2 level ke dua.<br />3)&nbsp;&nbsp;&nbsp; Mendukung pengelolaan koleksi dalam berbagai macam format seperti monograph, terbitan berseri, audio visual, dsb.<br />4)&nbsp;&nbsp;&nbsp; Mendukung penyimpanan data bibliografi dari situs di Internet.<br />5)&nbsp;&nbsp;&nbsp; Mendukung penggunaan Barcode.<br />6)&nbsp;&nbsp;&nbsp; Manajemen item koleksi untuk dokumen dengan banyak kopi dan format yang berbeda.<br />7)&nbsp;&nbsp;&nbsp; Mendukung format XML untuk pertukaran data dengan menggunakan standar metadata MODS (Metadata Object Description Schema).<br />8)&nbsp;&nbsp;&nbsp; Pencetakan Barcode item/kopi koleksi Built-in.<br />9)&nbsp;&nbsp;&nbsp; Pencetakan Label Punggung koleksi Built-in.<br />10)&nbsp;&nbsp;&nbsp; Pengambilan data katalog melalui protokol Z3950 ke database koleksi Library of Congress.<br />11)&nbsp;&nbsp;&nbsp; Pengelolaan koleksi yang hilang, dalam perbaikan, dan rusak serta pencatatan statusnya untuk dilakukan pergantian/perbaikan terhadap koleksi.<br />12)&nbsp;&nbsp;&nbsp; Daftar kendali untuk pengarang (baik pengarang orang, badan/lembaga, dan pertemuan) sebagai standar konsistensi penuliasn<br />13)&nbsp;&nbsp;&nbsp; Pengaturan hak akses pengelolaan data bibliografi hanya untuk staf yang berhak.<br /><br />Modul Penelusuran (OPAC/Online Public Access catalog Module)<br />1)&nbsp;&nbsp;&nbsp; Pencarian sederhana.<br />2)&nbsp;&nbsp;&nbsp; Pencarian tingkat lanjut (Advanced).<br />3)&nbsp;&nbsp;&nbsp; Dukungan penggunaan Boolean''s Logic dan implementasi CQL (Common Query Language).<br />4)&nbsp;&nbsp;&nbsp; OPAC Web Services berbasis XML.<br />5)&nbsp;&nbsp;&nbsp; Mendukung akses OPAC melalui peralatan portabel (mobile device)<br />6)&nbsp;&nbsp;&nbsp; Menampilkan informasi lengkap tetang status koleksi di perpustakaan, tanggal pengembalian, dan pemesanan item/koleksi<br />7)&nbsp;&nbsp;&nbsp; Detil informasi juga menampilkan gambar sampul buku, lampiran dalam format elektronik yang tersedia (jika ada) serta fasilitas menampilkan koleksi audio dan visual.<br />8)&nbsp;&nbsp;&nbsp; Menyediakan hyperlink tambahan untuk pencarian lanjutan berdasarkan penulis, dan subjek.<br /><br />Modul Sirkulasi (Circulation Module)<br />1)&nbsp;&nbsp;&nbsp; Mampu memproses peminjaman dan pengembalian koleksi secara efisien, efektif dan aman.<br />2)&nbsp;&nbsp;&nbsp; Mendukung fitur reservasi koleksi yang sedang dipinjam, termasuk reminder/pemberitahuan-nya.<br />3)&nbsp;&nbsp;&nbsp; Mendukung fitur manajemen denda. Dilengkapi fleksibilitas untuk pemakai membayar denda secara cicilan.<br />4)&nbsp;&nbsp;&nbsp; Mendukung fitur reminder untuk berbagai keperluan seperti melakukan black list terhadap pemakai yang bermasalah atau habis keanggotaannya.<br />5)&nbsp;&nbsp;&nbsp; Mendukung fitur pengkalenderan (calendaring) untuk diintegrasikan dengan penghitungan masa peminjaman, denda, dan lain-lain.<br />6)&nbsp;&nbsp;&nbsp; Memungkinkan penentuan hari-hari libur non-standar yang spesifik.<br />7)&nbsp;&nbsp;&nbsp; Dukungan terhadap ragam jenis tipe pemakai dengan masa pinjam beragam untuk berbagai jenis keanggotaan.<br />8)&nbsp;&nbsp;&nbsp; Menyimpan histori peminjaman anggota.<br />9)&nbsp;&nbsp;&nbsp; Mendukung pembuatan peraturan peminjaman yang sangat rinci dengan mengkombinasikan parameter keanggotaan, jenis koleksi, dan gmd selain aturan peminjaman standar berdasarkan jenis keanggotaan<br /><br />Modul Manajemen Keanggotaan (Membership Management Module)<br />1)&nbsp;&nbsp;&nbsp; Memungkinkan beragam tipe pemakai dengan ragam jenis kategori peminjaman, ragam jenis keanggotaan dan pembedaan setiap layanan sirkulasi dalam jumlah koleksi serta lama peminjaman untuk jenis koleksi untuk setiap jenis/kategori.<br />2)&nbsp;&nbsp;&nbsp; Dukungan terhadap input menggunakan barcode reader<br />3)&nbsp;&nbsp;&nbsp; Memungkinkan untuk menyimpan informasi preferensi pemakai atau subject interest.<br />4)&nbsp;&nbsp;&nbsp; Memungkinkan untuk menyimpan informasi tambahan untuk keperluan reminder pada saat transaksi.<br />5)&nbsp;&nbsp;&nbsp; Memungkinkan menyimpan informasi detail pemakai yang lebih lengkap.<br />6)&nbsp;&nbsp;&nbsp; Pencarian informasi anggota minimal berdasarkan nomor dan nama anggota.<br />7)&nbsp;&nbsp;&nbsp; Pembuatan kartu anggota yang dilengkapi dengan barcode untuk transaksi peminjaman.<br /><br />Modul Inventarisasi Koleksi (Stocktaking Module)<br />1)&nbsp;&nbsp;&nbsp; Proses inventarisasi koleksi bisa dilakukan secara bertahap dan parsial tanpa harus menutup layanan perpustakaan secara keseluruhan.<br />2)&nbsp;&nbsp;&nbsp; Proses inventarisasi bisa dilakukan secara efisien dan efektif.<br />3)&nbsp;&nbsp;&nbsp; Terdapat pilihan untuk menghapus data secara otomatis pada saat akhir proses inventarisasi terhadap koleksi yang dianggap hilang.<br /><br />Modul Statistik/Pelaporan (Report Module)<br />1)&nbsp;&nbsp;&nbsp; Meliputi pelaporan untuk semua modul-modul yang tersedia di Senayan.<br />2)&nbsp;&nbsp;&nbsp; Laporan Judul.<br />3)&nbsp;&nbsp;&nbsp; Laporan Items/Kopi koleksi.<br />4)&nbsp;&nbsp;&nbsp; Laporan Keanggotaan.<br />5)&nbsp;&nbsp;&nbsp; Laporan jumlah koleksi berdasarkan klasifikasi.<br />6)&nbsp;&nbsp;&nbsp; Laporan Keterlambatan.<br />7)&nbsp;&nbsp;&nbsp; Berbagai macam statistik seperti statistik koleksi, peminjaman, keanggotaan, keterpakaian koleksi.<br />8)&nbsp;&nbsp;&nbsp; Tampilan laporan yang sudah didesain printer-friendly, sehingga memudahkan untuk dicetak.<br />9)&nbsp;&nbsp;&nbsp; Filter data yang lengkap untuk setiap laporan.<br />10)&nbsp;&nbsp;&nbsp; API untuk pelaporan yang relatif mudah dipelajari untuk membuat custom report baru.<br /><br />Modul Manajemen Terbitan Berseri (Serial Control)<br />1)&nbsp;&nbsp;&nbsp; Manajemen data langganan.<br />2)&nbsp;&nbsp;&nbsp; Manajemen data Kardex.<br />3)&nbsp;&nbsp;&nbsp; Manajemen tracking data terbitan yang akan terbit dan yang sudah ada.<br />4)&nbsp;&nbsp;&nbsp; Memungkinkan tracking data terbitan berseri yang jadwal terbitnya tidak teratur (pengaturan yang fleksibel).<br /><br />Modul Lain-lain<br />1)&nbsp;&nbsp;&nbsp; Dukungan antar muka yang multi bahasa (internasionalisasi) dengan Gettext.<br />2)&nbsp;&nbsp;&nbsp; Dukungan terhadap penggunaan huruf bukan latin untuk pengisian data dan pencarian.<br /><br />Roadmap Pengembangan Senayan<br />SENAYAN akan terus dikembangkan oleh para pengembangnya beserta komunitas pengguna SENAYAN lainnya. Berikut adalah Roadmap pengembangan SENAYAN ke depannya:<br /><br />Pengembangan aplikasi:<br />1.&nbsp;&nbsp;&nbsp; Kompatibilitas dengan MARC dan standar pertukaran data yang komplit. Contoh implementasinya:<br />&bull;&nbsp;&nbsp;&nbsp; Memastikan bahwa format data bibliografi kompatibel dengan MARC secara lebih baik (minimal MARC light).<br />&bull;&nbsp;&nbsp;&nbsp; Dukungan terhadap RFID.<br />&bull;&nbsp;&nbsp;&nbsp; Fitur untuk impor / ekspor rekod dari The Online Computer Library Centre (OCLC), Research Libraries Information Network (RLIN), vendor sistem lain yang compliant dengan MARC.<br />&bull;&nbsp;&nbsp;&nbsp; Validasi data ISBN menggunakan modulus seven.<br />&bull;&nbsp;&nbsp;&nbsp; Dukungan terhadap standar di perpustakaan, seperti: Library of Congress Subject Headings, Library of Congress Classification, ALA filing rules, International Standard Bibliographic Description, ANSI Standard for Bibliographic Information Exchange on magnetic tape, Common communication format (ISO 2709).<br />2.&nbsp;&nbsp;&nbsp; Katalog induk/bersama (union catalog)<br />3.&nbsp;&nbsp;&nbsp; Implementasi Thesaurus. Contoh implementasinya:<br />&bull;&nbsp;&nbsp;&nbsp; Pemanfaatan tesaurus untuk proses pengatalogan.<br />&bull;&nbsp;&nbsp;&nbsp; Pemanfaatan tesaurus untuk proses pencarian, misalnya memberikan advis pencarian menggunakan knowledge base yang dibangun dengan sistem tesaurus.<br />4.&nbsp;&nbsp;&nbsp; Implementasi Library 2.0. Contoh implementasinya:<br />&bull;&nbsp;&nbsp;&nbsp; User bisa login dan mempunyai halaman personalisasi.<br />&bull;&nbsp;&nbsp;&nbsp; User bisa melakukan reservasi koleksi dan memperpanjang peminjaman.<br />&bull;&nbsp;&nbsp;&nbsp; User bisa melakukan komunikasi dengan pustakawan via messaging system.<br />&bull;&nbsp;&nbsp;&nbsp; User bisa melakukan tagging, rekomendasi koleksi dan menyimpannya didalam daftar koleksi favoritnya.<br />&bull;&nbsp;&nbsp;&nbsp; User bisa memberikan komentar terhadap koleksi.<br />&bull;&nbsp;&nbsp;&nbsp; Pustakawan bisa memasukkan preferensi pemakai didalam data keanggotaan. Preferensi tersebut bisa dimanfaatkan salah satunya untuk men-generate semacam daftar koleksi terpilih untuk dicetak atau ditampilkan ketika user login.<br />5.&nbsp;&nbsp;&nbsp; Peningkatan dukungan manajemen konten digital dan entri analitikal<br /><br />Pengembangan basis komunitas pengguna:<br />&bull;&nbsp;&nbsp;&nbsp; Membangun komunitas pengguna di berbagai kota <br />&bull;&nbsp;&nbsp;&nbsp; Mengadakan Senayan Developers Day untuk silaturahmi antar developer Senayan, update dokumentasi, penambahan fitur baru dan bug fixing dan mencari bibit pengembang yang baru.<br />&bull;&nbsp;&nbsp;&nbsp; Workshop/Seminar Nasional Tahunan<br />&bull;&nbsp;&nbsp;&nbsp; Jam Sessions rutin setiap 3 bulan</p>', 'about_slims', '2010-08-28 23:29:55', '2010-11-12 18:21:01', '1'),
(6, 'Modul yang Tersedia', '<p><!--intro_awal-->Sebagai sebuah Sistem Automasi Perpustakaan yang terintergrasi, modul-modul yang telah terdapat di SENAYAN antara lain: pengatalogan/bibliografi, keanggotaan, sirkulasi, masterfile, stock opname (inventarisasi koleksi), pelaporan/reporting, manajemen kontrol serial, digital library, dan lain-lain.<!--intro_akhir--></p>\r\n<p>Modul Pengatalogan (Cataloging Module)<br />1)&nbsp;&nbsp;&nbsp; Compliance dengan standar AACR2 (Anglo-American Cataloging Rules).<br />2)&nbsp;&nbsp;&nbsp; Fitur untuk membuat, mengedit, dan menghapus data bibliografi sesuai dengan standar deskripsi bibliografi AACR2 level ke dua.<br />3)&nbsp;&nbsp;&nbsp; Mendukung pengelolaan koleksi dalam berbagai macam format seperti monograph, terbitan berseri, audio visual, dsb.<br />4)&nbsp;&nbsp;&nbsp; Mendukung penyimpanan data bibliografi dari situs di Internet.<br />5)&nbsp;&nbsp;&nbsp; Mendukung penggunaan Barcode.<br />6)&nbsp;&nbsp;&nbsp; Manajemen item koleksi untuk dokumen dengan banyak kopi dan format yang berbeda.<br />7)&nbsp;&nbsp;&nbsp; Mendukung format XML untuk pertukaran data dengan menggunakan standar metadata MODS (Metadata Object Description Schema).<br />8)&nbsp;&nbsp;&nbsp; Pencetakan Barcode item/kopi koleksi Built-in.<br />9)&nbsp;&nbsp;&nbsp; Pencetakan Label Punggung koleksi Built-in.<br />10)&nbsp;&nbsp;&nbsp; Pengambilan data katalog melalui protokol Z3950 ke database koleksi Library of Congress.<br />11)&nbsp;&nbsp;&nbsp; Pengelolaan koleksi yang hilang, dalam perbaikan, dan rusak serta pencatatan statusnya untuk dilakukan pergantian/perbaikan terhadap koleksi.<br />12)&nbsp;&nbsp;&nbsp; Daftar kendali untuk pengarang (baik pengarang orang, badan/lembaga, dan pertemuan) sebagai standar konsistensi penuliasn<br />13)&nbsp;&nbsp;&nbsp; Pengaturan hak akses pengelolaan data bibliografi hanya untuk staf yang berhak.<br /><br />Modul Penelusuran (OPAC/Online Public Access catalog Module)<br />1)&nbsp;&nbsp;&nbsp; Pencarian sederhana.<br />2)&nbsp;&nbsp;&nbsp; Pencarian tingkat lanjut (Advanced).<br />3)&nbsp;&nbsp;&nbsp; Dukungan penggunaan Boolean''s Logic dan implementasi CQL (Common Query Language).<br />4)&nbsp;&nbsp;&nbsp; OPAC Web Services berbasis XML.<br />5)&nbsp;&nbsp;&nbsp; Mendukung akses OPAC melalui peralatan portabel (mobile device)<br />6)&nbsp;&nbsp;&nbsp; Menampilkan informasi lengkap tetang status koleksi di perpustakaan, tanggal pengembalian, dan pemesanan item/koleksi<br />7)&nbsp;&nbsp;&nbsp; Detil informasi juga menampilkan gambar sampul buku, lampiran dalam format elektronik yang tersedia (jika ada) serta fasilitas menampilkan koleksi audio dan visual.<br />8)&nbsp;&nbsp;&nbsp; Menyediakan hyperlink tambahan untuk pencarian lanjutan berdasarkan penulis, dan subjek.<br /><br />Modul Sirkulasi (Circulation Module)<br />1)&nbsp;&nbsp;&nbsp; Mampu memproses peminjaman dan pengembalian koleksi secara efisien, efektif dan aman.<br />2)&nbsp;&nbsp;&nbsp; Mendukung fitur reservasi koleksi yang sedang dipinjam, termasuk reminder/pemberitahuan-nya.<br />3)&nbsp;&nbsp;&nbsp; Mendukung fitur manajemen denda. Dilengkapi fleksibilitas untuk pemakai membayar denda secara cicilan.<br />4)&nbsp;&nbsp;&nbsp; Mendukung fitur reminder untuk berbagai keperluan seperti melakukan black list terhadap pemakai yang bermasalah atau habis keanggotaannya.<br />5)&nbsp;&nbsp;&nbsp; Mendukung fitur pengkalenderan (calendaring) untuk diintegrasikan dengan penghitungan masa peminjaman, denda, dan lain-lain.<br />6)&nbsp;&nbsp;&nbsp; Memungkinkan penentuan hari-hari libur non-standar yang spesifik.<br />7)&nbsp;&nbsp;&nbsp; Dukungan terhadap ragam jenis tipe pemakai dengan masa pinjam beragam untuk berbagai jenis keanggotaan.<br />8)&nbsp;&nbsp;&nbsp; Menyimpan histori peminjaman anggota.<br />9)&nbsp;&nbsp;&nbsp; Mendukung pembuatan peraturan peminjaman yang sangat rinci dengan mengkombinasikan parameter keanggotaan, jenis koleksi, dan gmd selain aturan peminjaman standar berdasarkan jenis keanggotaan<br /><br />Modul Manajemen Keanggotaan (Membership Management Module)<br />1)&nbsp;&nbsp;&nbsp; Memungkinkan beragam tipe pemakai dengan ragam jenis kategori peminjaman, ragam jenis keanggotaan dan pembedaan setiap layanan sirkulasi dalam jumlah koleksi serta lama peminjaman untuk jenis koleksi untuk setiap jenis/kategori.<br />2)&nbsp;&nbsp;&nbsp; Dukungan terhadap input menggunakan barcode reader<br />3)&nbsp;&nbsp;&nbsp; Memungkinkan untuk menyimpan informasi preferensi pemakai atau subject interest.<br />4)&nbsp;&nbsp;&nbsp; Memungkinkan untuk menyimpan informasi tambahan untuk keperluan reminder pada saat transaksi.<br />5)&nbsp;&nbsp;&nbsp; Memungkinkan menyimpan informasi detail pemakai yang lebih lengkap.<br />6)&nbsp;&nbsp;&nbsp; Pencarian informasi anggota minimal berdasarkan nomor dan nama anggota.<br />7)&nbsp;&nbsp;&nbsp; Pembuatan kartu anggota yang dilengkapi dengan barcode untuk transaksi peminjaman.<br /><br />Modul Inventarisasi Koleksi (Stocktaking Module)<br />1)&nbsp;&nbsp;&nbsp; Proses inventarisasi koleksi bisa dilakukan secara bertahap dan parsial tanpa harus menutup layanan perpustakaan secara keseluruhan.<br />2)&nbsp;&nbsp;&nbsp; Proses inventarisasi bisa dilakukan secara efisien dan efektif.<br />3)&nbsp;&nbsp;&nbsp; Terdapat pilihan untuk menghapus data secara otomatis pada saat akhir proses inventarisasi terhadap koleksi yang dianggap hilang.<br /><br />Modul Statistik/Pelaporan (Report Module)<br />1)&nbsp;&nbsp;&nbsp; Meliputi pelaporan untuk semua modul-modul yang tersedia di Senayan.<br />2)&nbsp;&nbsp;&nbsp; Laporan Judul.<br />3)&nbsp;&nbsp;&nbsp; Laporan Items/Kopi koleksi.<br />4)&nbsp;&nbsp;&nbsp; Laporan Keanggotaan.<br />5)&nbsp;&nbsp;&nbsp; Laporan jumlah koleksi berdasarkan klasifikasi.<br />6)&nbsp;&nbsp;&nbsp; Laporan Keterlambatan.<br />7)&nbsp;&nbsp;&nbsp; Berbagai macam statistik seperti statistik koleksi, peminjaman, keanggotaan, keterpakaian koleksi.<br />8)&nbsp;&nbsp;&nbsp; Tampilan laporan yang sudah didesain printer-friendly, sehingga memudahkan untuk dicetak.<br />9)&nbsp;&nbsp;&nbsp; Filter data yang lengkap untuk setiap laporan.<br />10)&nbsp;&nbsp;&nbsp; API untuk pelaporan yang relatif mudah dipelajari untuk membuat custom report baru.<br /><br />Modul Manajemen Terbitan Berseri (Serial Control)<br />1)&nbsp;&nbsp;&nbsp; Manajemen data langganan.<br />2)&nbsp;&nbsp;&nbsp; Manajemen data Kardex.<br />3)&nbsp;&nbsp;&nbsp; Manajemen tracking data terbitan yang akan terbit dan yang sudah ada.<br />4)&nbsp;&nbsp;&nbsp; Memungkinkan tracking data terbitan berseri yang jadwal terbitnya tidak teratur (pengaturan yang fleksibel).<br /><br />Modul Lain-lain<br />1)&nbsp;&nbsp;&nbsp; Dukungan antar muka yang multi bahasa (internasionalisasi) dengan Gettext.<br />2)&nbsp;&nbsp;&nbsp; Dukungan terhadap penggunaan huruf bukan latin untuk pengisian data dan pencarian.</p>', 'modul_tersedia', '2010-08-29 04:03:09', '2010-08-29 04:05:49', '1'),
(7, 'Lisensi SLiMS', '<p><!--intro_awal--><strong>SLiMS</strong> dilisensikan dibawah GNU/GPL (http://www.gnu.org/licenses/gpl.html) untuk menjamin kebebasan pengguna dalam menggunakannya. GNU General Public License (disingkat GNU GPL atau cukup GPL) merupakan suatu lisensi perangkat lunak bebas yang aslinya ditulis oleh Richard Stallman untuk proyek GNU. Lisensi GPL memberikan penerima salinan perangkat lunak hak dari perangkat lunak bebas dan menggunakan copyleft&nbsp; untuk memastikan kebebasan yang sama diterapkan pada versi berikutnya dari karya tersebut.<!--intro_akhir--></p>\r\n<p>&nbsp;GNU LESSER GENERAL PUBLIC LICENSE<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Version 3, 29 June 2007<br /><br />&nbsp;Copyright (C) 2007 Free Software Foundation, Inc. &lt;http://fsf.org/&gt;<br />&nbsp;Everyone is permitted to copy and distribute verbatim copies<br />&nbsp;of this license document, but changing it is not allowed.<br /><br /><br />&nbsp; This version of the GNU Lesser General Public License incorporates<br />the terms and conditions of version 3 of the GNU General Public<br />License, supplemented by the additional permissions listed below.<br /><br />&nbsp; 0. Additional Definitions.<br /><br />&nbsp; As used herein, "this License" refers to version 3 of the GNU Lesser<br />General Public License, and the "GNU GPL" refers to version 3 of the GNU<br />General Public License.<br /><br />&nbsp; "The Library" refers to a covered work governed by this License,<br />other than an Application or a Combined Work as defined below.<br /><br />&nbsp; An "Application" is any work that makes use of an interface provided<br />by the Library, but which is not otherwise based on the Library.<br />Defining a subclass of a class defined by the Library is deemed a mode<br />of using an interface provided by the Library.<br /><br />&nbsp; A "Combined Work" is a work produced by combining or linking an<br />Application with the Library.&nbsp; The particular version of the Library<br />with which the Combined Work was made is also called the "Linked<br />Version".<br /><br />&nbsp; The "Minimal Corresponding Source" for a Combined Work means the<br />Corresponding Source for the Combined Work, excluding any source code<br />for portions of the Combined Work that, considered in isolation, are<br />based on the Application, and not on the Linked Version.<br /><br />&nbsp; The "Corresponding Application Code" for a Combined Work means the<br />object code and/or source code for the Application, including any data<br />and utility programs needed for reproducing the Combined Work from the<br />Application, but excluding the System Libraries of the Combined Work.<br /><br />&nbsp; 1. Exception to Section 3 of the GNU GPL.<br /><br />&nbsp; You may convey a covered work under sections 3 and 4 of this License<br />without being bound by section 3 of the GNU GPL.<br /><br />&nbsp; 2. Conveying Modified Versions.<br /><br />&nbsp; If you modify a copy of the Library, and, in your modifications, a<br />facility refers to a function or data to be supplied by an Application<br />that uses the facility (other than as an argument passed when the<br />facility is invoked), then you may convey a copy of the modified<br />version:<br /><br />&nbsp;&nbsp; a) under this License, provided that you make a good faith effort to<br />&nbsp;&nbsp; ensure that, in the event an Application does not supply the<br />&nbsp;&nbsp; function or data, the facility still operates, and performs<br />&nbsp;&nbsp; whatever part of its purpose remains meaningful, or<br /><br />&nbsp;&nbsp; b) under the GNU GPL, with none of the additional permissions of<br />&nbsp;&nbsp; this License applicable to that copy.<br /><br />&nbsp; 3. Object Code Incorporating Material from Library Header Files.<br /><br />&nbsp; The object code form of an Application may incorporate material from<br />a header file that is part of the Library.&nbsp; You may convey such object<br />code under terms of your choice, provided that, if the incorporated<br />material is not limited to numerical parameters, data structure<br />layouts and accessors, or small macros, inline functions and templates<br />(ten or fewer lines in length), you do both of the following:<br /><br />&nbsp;&nbsp; a) Give prominent notice with each copy of the object code that the<br />&nbsp;&nbsp; Library is used in it and that the Library and its use are<br />&nbsp;&nbsp; covered by this License.<br /><br />&nbsp;&nbsp; b) Accompany the object code with a copy of the GNU GPL and this license<br />&nbsp;&nbsp; document.<br /><br />&nbsp; 4. Combined Works.<br /><br />&nbsp; You may convey a Combined Work under terms of your choice that,<br />taken together, effectively do not restrict modification of the<br />portions of the Library contained in the Combined Work and reverse<br />engineering for debugging such modifications, if you also do each of<br />the following:<br /><br />&nbsp;&nbsp; a) Give prominent notice with each copy of the Combined Work that<br />&nbsp;&nbsp; the Library is used in it and that the Library and its use are<br />&nbsp;&nbsp; covered by this License.<br /><br />&nbsp;&nbsp; b) Accompany the Combined Work with a copy of the GNU GPL and this license<br />&nbsp;&nbsp; document.<br /><br />&nbsp;&nbsp; c) For a Combined Work that displays copyright notices during<br />&nbsp;&nbsp; execution, include the copyright notice for the Library among<br />&nbsp;&nbsp; these notices, as well as a reference directing the user to the<br />&nbsp;&nbsp; copies of the GNU GPL and this license document.<br /><br />&nbsp;&nbsp; d) Do one of the following:<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0) Convey the Minimal Corresponding Source under the terms of this<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; License, and the Corresponding Application Code in a form<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; suitable for, and under terms that permit, the user to<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; recombine or relink the Application with a modified version of<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; the Linked Version to produce a modified Combined Work, in the<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; manner specified by section 6 of the GNU GPL for conveying<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Corresponding Source.<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1) Use a suitable shared library mechanism for linking with the<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Library.&nbsp; A suitable mechanism is one that (a) uses at run time<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a copy of the Library already present on the user''s computer<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; system, and (b) will operate properly with a modified version<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; of the Library that is interface-compatible with the Linked<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Version.<br /><br />&nbsp;&nbsp; e) Provide Installation Information, but only if you would otherwise<br />&nbsp;&nbsp; be required to provide such information under section 6 of the<br />&nbsp;&nbsp; GNU GPL, and only to the extent that such information is<br />&nbsp;&nbsp; necessary to install and execute a modified version of the<br />&nbsp;&nbsp; Combined Work produced by recombining or relinking the<br />&nbsp;&nbsp; Application with a modified version of the Linked Version. (If<br />&nbsp;&nbsp; you use option 4d0, the Installation Information must accompany<br />&nbsp;&nbsp; the Minimal Corresponding Source and Corresponding Application<br />&nbsp;&nbsp; Code. If you use option 4d1, you must provide the Installation<br />&nbsp;&nbsp; Information in the manner specified by section 6 of the GNU GPL<br />&nbsp;&nbsp; for conveying Corresponding Source.)<br /><br />&nbsp; 5. Combined Libraries.<br /><br />&nbsp; You may place library facilities that are a work based on the<br />Library side by side in a single library together with other library<br />facilities that are not Applications and are not covered by this<br />License, and convey such a combined library under terms of your<br />choice, if you do both of the following:<br /><br />&nbsp;&nbsp; a) Accompany the combined library with a copy of the same work based<br />&nbsp;&nbsp; on the Library, uncombined with any other library facilities,<br />&nbsp;&nbsp; conveyed under the terms of this License.<br /><br />&nbsp;&nbsp; b) Give prominent notice with the combined library that part of it<br />&nbsp;&nbsp; is a work based on the Library, and explaining where to find the<br />&nbsp;&nbsp; accompanying uncombined form of the same work.<br /><br />&nbsp; 6. Revised Versions of the GNU Lesser General Public License.<br /><br />&nbsp; The Free Software Foundation may publish revised and/or new versions<br />of the GNU Lesser General Public License from time to time. Such new<br />versions will be similar in spirit to the present version, but may<br />differ in detail to address new problems or concerns.<br /><br />&nbsp; Each version is given a distinguishing version number. If the<br />Library as you received it specifies that a certain numbered version<br />of the GNU Lesser General Public License "or any later version"<br />applies to it, you have the option of following the terms and<br />conditions either of that published version or of any later version<br />published by the Free Software Foundation. If the Library as you<br />received it does not specify a version number of the GNU Lesser<br />General Public License, you may choose any version of the GNU Lesser<br />General Public License ever published by the Free Software Foundation.<br /><br />&nbsp; If the Library as you received it specifies that a proxy can decide<br />whether future versions of the GNU Lesser General Public License shall<br />apply, that proxy''s public statement of acceptance of any version is<br />permanent authorization for you to choose that version for the<br />Library.</p>', 'lisensi_slims', '2010-08-29 04:04:33', '2010-11-12 22:15:43', '1');
INSERT INTO `content` (`content_id`, `content_title`, `content_desc`, `content_path`, `input_date`, `last_update`, `content_ownpage`) VALUES
(8, 'Model Pengembangan Open Source', '<p><!--intro_awal-->Sumber terbuka (Inggris: open source) adalah sistem pengembangan yang tidak dikoordinasi oleh suatu individu / lembaga pusat, tetapi oleh para pelaku yang bekerja sama dengan memanfaatkan kode sumber (source-code) yang tersebar dan tersedia bebas (biasanya menggunakan fasilitas komunikasi internet). Pola pengembangan ini mengambil model ala bazaar, sehingga pola Open Source ini memiliki ciri bagi komunitasnya yaitu adanya dorongan yang bersumber dari budaya memberi.<!--intro_akhir--><br /><br />Pola Open Source lahir karena kebebasan berkarya, tanpa intervensi berpikir dan mengungkapkan apa yang diinginkan dengan menggunakan pengetahuan dan produk yang cocok. Kebebasan menjadi pertimbangan utama ketika dilepas ke publik. Komunitas yang lain mendapat kebebasan untuk belajar, mengutak-ngatik, merevisi ulang, membenarkan ataupun bahkan menyalahkan, tetapi kebebasan ini juga datang bersama dengan tanggung jawab, bukan bebas tanpa tanggung jawab.<br /><br />Pada intinya konsep sumber terbuka adalah membuka "kode sumber" dari sebuah perangkat lunak. Konsep ini terasa aneh pada awalnya dikarenakan kode sumber merupakan kunci dari sebuah perangkat lunak. Dengan diketahui logika yang ada di kode sumber, maka orang lain semestinya dapat membuat perangkat lunak yang sama fungsinya. Sumber terbuka hanya sebatas itu. Artinya, dia tidak harus gratis. Definisi sumber terbuka yang asli adalah seperti tertuang dalam OSD (Open Source Definition)/Definisi sumber terbuka.</p>\r\n<p>Pengembangan Senayan awalnya diinisiasi oleh pengelola Perpustakaan Depdiknas. Tetapi sekarang komunitas pengembang Senayan (Senayan Developer Community) yang lebih banyak mengambil peran dalam mengembangkan Senayan. Beberapa hal dibawah ini merupakan kultur yang dibangun dalam mengembangkan Senayan:<br />1.&nbsp;&nbsp;&nbsp; Meritokrasi. Siapa saja bisa berkontribusi. Mereka yang banyak memberikan kontribusi, akan mendapatkan privilege lebih dibandingkan yang lain.<br />2.&nbsp;&nbsp;&nbsp; Minimal punya concern terhadap pengembangan perpustakaan. Contoh lain: berlatar belakang pendidikan ilmu perpustakaan dan informasi, bekerja di perpustakaan, mengelola perpustakaan, dan lain-lain. Diharapkan dengan kondisi ini, sense of librarianship melekat di tiap developer/pengguna Senayan. Sejauh ini, semua developer senayan merupakan pustakawan atau berlatarbelakang pendidikan kepustakawanan (Information and Librarianship).<br />3.&nbsp;&nbsp;&nbsp; Release early, release often, and listen to your customer. Release early artinya setiap perbaikan dan penambahan fitur, secepat mungkin dirilis ke publik. Diharapkan bugs yang ada, bisa cepat ditemukan oleh komunitas, dilaporkan ke developer, untuk kemudian dirilis perbaikannya. Release often, artinya sesering mungkin memberikan update perbaikan bugs dan penambahan fitur. Ini &ldquo;memaksa&rdquo; developer Senayan untuk terus kreatif menambahkan fitur Senayan. Release often juga membuat pengguna berkeyakinan bahwa Senayan punya sustainability yang baik dan terus aktif dikembangkan. Selain itu, release often juga mempunyai dampak pemasaran. Pengguna dan calon pengguna, selalu diingatkan tentang keberadaan Senayan. Tentunya dengan cara yang elegan, yaitu rilis-rilis Senayan. Sejak dirilis ke publi pertama kali November 2007 sampai Juli 2009 (kurang lebih 20 bulan) telah dirilis 18 rilis resmi Senayan. Listen to your customer. Developer Senayan selalu berusaha mengakomodasi kebutuhan pengguna baik yang masuk melalui report di mailing list, ataupun melalui bugs tracking system. Tentu tidak semua masukan diakomodasi, harus disesuaikan dengan desain dan roadmap pengembangan Senayan.<br />4.&nbsp;&nbsp;&nbsp; Dokumentasi. Developer Senayan meyakini pentingnya dokumentasi yang baik dalam mensukseskan implementasi Senayan dibanyak tempat. Karena itu pengembang Senayan mempunyai tim khusus yang bertanggungjawab yang mengembangkan dokumentasi Senayan agar terus uo-to-date mengikuti rilis terbaru.<br />5.&nbsp;&nbsp;&nbsp; Agar ada percepatan dalam pengembangan dan untuk mengakrabkan antar pengembang Senayan, minimal setahun sekali diadakan Senayan Developers Day yang mengumpulkan para developer Senayan dari berbagai kota, dan melakukan coding bersama-sama.</p>', 'opensource', '2010-08-29 04:05:16', '2010-08-29 04:34:04', '1'),
(9, 'test', '<p>&lt;?php echo "Hello World..!!"; ?&gt;</p>', 'test', '2014-12-31 16:29:45', '2014-12-31 16:30:58', '1'),
(10, 'Welcome to Etd', '<p style="text-align: center;">&nbsp;</p>\r\n<p style="text-align: center;">&nbsp;</p>\r\n<p style="text-align: center;">&nbsp;</p>\r\n<p style="text-align: center;">&nbsp;</p>\r\n<p style="text-align: center;">&nbsp;</p>\r\n<p style="text-align: center;"><strong><span style="font-family: mceinline;font-size: 32px;color: red;"><span style="font-family: mceinline;"><span style="font-family: mceinline;">Welcome to Electronic Theses and Dissertations System</span></span></span></strong></p>\r\n<p style="text-align: center;"><strong><span style="font-size: x-large;">You are logged as :</span></strong></p>', 'etd_welcome', '2015-05-03 07:20:31', '2015-11-02 07:54:55', '1');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE IF NOT EXISTS `files` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `file_title` text COLLATE utf8_unicode_ci NOT NULL,
  `file_name` text COLLATE utf8_unicode_ci NOT NULL,
  `file_url` text COLLATE utf8_unicode_ci,
  `file_dir` text COLLATE utf8_unicode_ci,
  `mime_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_desc` text COLLATE utf8_unicode_ci,
  `uploader_id` int(11) NOT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime NOT NULL,
  PRIMARY KEY (`file_id`),
  FULLTEXT KEY `file_name` (`file_name`),
  FULLTEXT KEY `file_dir` (`file_dir`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC AUTO_INCREMENT=9 ;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`file_id`, `file_title`, `file_name`, `file_url`, `file_dir`, `mime_type`, `file_desc`, `uploader_id`, `input_date`, `last_update`) VALUES
(1, 'test', 'Repository_140113_R2.pdf', '', '', 'application/pdf', 'sad', 2, '2015-05-03 07:52:50', '2015-05-03 07:52:50'),
(2, 'HUBUNGAN PEMBERIAN IMUNISASI DASAR LENGKAP TERHADAP TUMBUH KEMBANG BALITA USIA 9-12 BULAN DI PUSKESMAS PONDOK RANGGON,  JAKARTA TIMUR PERIODE APRIL 2015', 'Cara bergabung katalog induk banten.pdf', 'http://repository.fk.upnvj.ac.id/items/show/34', '', 'application/pdf', 'SKRIPSI dari Mahasiswa FK UPNVJ', 1, '2015-09-28 11:00:20', '2015-09-28 11:00:20'),
(3, 'HUBUNGAN RESPON RADIOKEMOTERAPI TERHADAP PASIEN KARSINOMA NASOFARING SETELAH 1 TAHUN PEMBERIAN `BERDASARKAN KLASIFIKASI WHO', 'tes2.pdf', 'http://repository.fk.upnvj.ac.id/items/show/32', '', 'application/pdf', 'Skripsi dari Mahasiswa FK UPNVJ', 1, '2015-09-28 11:36:34', '2015-09-28 11:36:34'),
(4, 'HUBUNGAN PEMBERIAN IMUNISASI DASAR LENGKAP TERHADAP TUMBUH KEMBANG BALITA USIA 9-12 BULAN DI PUSKESMAS PONDOK RANGGON, JAKARTA TIMUR PERIODE APRIL 2015', 'tes1.pdf', 'http://repository.fk.upnvj.ac.id/items/show/34', '', 'application/pdf', 'Skripsi dari Mahasiswa FK UPNVJ', 1, '2015-09-28 11:48:45', '2015-09-28 11:48:45'),
(5, 'ANALISIS FAKTOR RISIKO KELUHAN NYERI PUNGGUNG BAWAH (NPB) PADA MAHASISWA TINGKAT III FK UPN VETERAN JAKARTA', 'tes3.pdf', 'http://repository.fk.upnvj.ac.id/items/show/13', '', 'application/pdf', 'Skripsi dari Mahasiswa FK UPNVJ', 1, '2015-09-28 12:46:01', '2015-09-28 12:46:01'),
(6, 'UJI EFEKTIVITAS ANTIDIARE EKSTRAK ETANOL KULIT BUAH RAMBUTAN HIJAU (NEPHELIUM LAPPACEUM L.) PADA MENCIT PUTIH JANTAN YANG DIINDUKSI OLEUM RICINI', 'tes4.pdf', 'http://repository.fk.upnvj.ac.id/items/show/10', '', 'application/pdf', 'Skripsi dari Mahasiswa FK UPNVJ', 1, '2015-09-28 13:04:36', '2015-09-28 13:04:36'),
(7, 'PENGARUH TINGKAT BEBAN KERJA MENTAL TERHADAP PEMILIHAN STRATEGI KOPING PADA PENGEMUDI TAKSI DI KOTA DEPOK', 'tes5.pdf', 'http://repository.fk.upnvj.ac.id/items/show/9', '', 'application/pdf', 'Skripsi dari Mahasiswa Fk UPNVJ', 1, '2015-09-28 13:22:57', '2015-09-28 13:22:57'),
(8, 'Matematika ddasar', 'Time Line.pdf', '', '', 'application/pdf', '', 2, '2015-10-01 09:07:46', '2015-10-01 09:07:46');

-- --------------------------------------------------------

--
-- Table structure for table `fines`
--

CREATE TABLE IF NOT EXISTS `fines` (
  `fines_id` int(11) NOT NULL AUTO_INCREMENT,
  `fines_date` date NOT NULL,
  `member_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `debet` int(11) DEFAULT '0',
  `credit` int(11) DEFAULT '0',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`fines_id`),
  KEY `member_id` (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `group_access`
--

CREATE TABLE IF NOT EXISTS `group_access` (
  `group_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `r` int(1) NOT NULL DEFAULT '0',
  `w` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`,`module_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `group_access`
--

INSERT INTO `group_access` (`group_id`, `module_id`, `r`, `w`) VALUES
(1, 1, 1, 1),
(1, 2, 1, 1),
(1, 3, 1, 1),
(1, 4, 1, 1),
(1, 5, 1, 1),
(1, 6, 1, 1),
(1, 7, 1, 1),
(1, 8, 1, 1),
(3, 9, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `holiday`
--

CREATE TABLE IF NOT EXISTS `holiday` (
  `holiday_id` int(11) NOT NULL AUTO_INCREMENT,
  `holiday_dayname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `holiday_date` date DEFAULT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`holiday_id`),
  UNIQUE KEY `holiday_dayname` (`holiday_dayname`,`holiday_date`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `holiday`
--

INSERT INTO `holiday` (`holiday_id`, `holiday_dayname`, `holiday_date`, `description`) VALUES
(1, 'Mon', '2009-06-01', 'Tes Libur'),
(2, 'Tue', '2009-06-02', 'Tes Libur'),
(3, 'Wed', '2009-06-03', 'Tes Libur'),
(4, 'Thu', '2009-06-04', 'Tes Libur'),
(5, 'Fri', '2009-06-05', 'Tes Libur'),
(6, 'Sat', '2009-06-06', 'Tes Libur');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE IF NOT EXISTS `item` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `biblio_id` int(11) DEFAULT NULL,
  `call_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coll_type_id` int(3) DEFAULT NULL,
  `item_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inventory_code` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `received_date` date DEFAULT NULL,
  `supplier_id` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_no` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location_id` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `item_status_id` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source` int(1) NOT NULL DEFAULT '0',
  `invoice` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `price_currency` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime DEFAULT NULL,
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `item_code` (`item_code`),
  KEY `item_references_idx` (`coll_type_id`,`location_id`,`item_status_id`),
  KEY `biblio_id_idx` (`biblio_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `biblio_id`, `call_number`, `coll_type_id`, `item_code`, `inventory_code`, `received_date`, `supplier_id`, `order_no`, `location_id`, `order_date`, `item_status_id`, `site`, `source`, `invoice`, `price`, `price_currency`, `invoice_date`, `input_date`, `last_update`) VALUES
(15, 27, '620 Put P', 1, 'FK-SKRIPSI-2015-0009', NULL, '2015-11-04', '0', '', 'SL', '2015-11-04', 'R', '', 2, '', 0, NULL, '2015-11-04', '2015-09-28 13:23:40', '2015-11-04 17:59:29'),
(14, 26, '620 Ros U', 1, 'FK-SKRIPSI-2015-0010', NULL, NULL, NULL, '', 'SL', NULL, '0', '', 2, NULL, 0, NULL, NULL, '2015-09-28 13:07:05', '2015-09-28 13:07:05'),
(13, 25, '620 Kar A', 1, 'FK-SKRIPSI-2015-0013', NULL, NULL, NULL, '', 'SL', NULL, '0', '', 2, NULL, 0, NULL, NULL, '2015-09-28 12:46:49', '2015-09-28 12:46:49'),
(12, 24, '620 Kim H', 1, 'FK-SKRIPSI-2015-0031', NULL, NULL, NULL, '', 'SL', NULL, '0', '', 1, NULL, 0, NULL, NULL, '2015-09-28 11:39:47', '2015-09-28 11:39:47'),
(11, 23, '620 Pra H', 1, 'FK-SKRIPSI-2015-0032', NULL, '2015-09-28', '0', '', 'SL', '2015-09-28', '0', '', 2, '', 0, NULL, '2015-09-28', '2015-09-28 11:05:01', '2015-09-28 11:05:01');

-- --------------------------------------------------------

--
-- Table structure for table `kardex`
--

CREATE TABLE IF NOT EXISTS `kardex` (
  `kardex_id` int(11) NOT NULL AUTO_INCREMENT,
  `date_expected` date NOT NULL,
  `date_received` date DEFAULT NULL,
  `seq_number` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci,
  `serial_id` int(11) DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date NOT NULL,
  PRIMARY KEY (`kardex_id`),
  KEY `fk_serial` (`serial_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE IF NOT EXISTS `loan` (
  `loan_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loan_date` date NOT NULL,
  `due_date` date NOT NULL,
  `renewed` int(11) NOT NULL DEFAULT '0',
  `loan_rules_id` int(11) NOT NULL DEFAULT '0',
  `actual` date DEFAULT NULL,
  `is_lent` int(11) NOT NULL DEFAULT '0',
  `is_return` int(11) NOT NULL DEFAULT '0',
  `return_date` date DEFAULT NULL,
  PRIMARY KEY (`loan_id`),
  KEY `item_code` (`item_code`),
  KEY `member_id` (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `member_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `member_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gender` int(1) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `member_type_id` int(6) DEFAULT NULL,
  `member_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_mail_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inst_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_new` int(1) DEFAULT NULL,
  `member_image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pin` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_phone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_fax` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_since_date` date DEFAULT NULL,
  `register_date` date DEFAULT NULL,
  `expire_date` date NOT NULL,
  `member_notes` text COLLATE utf8_unicode_ci,
  `is_pending` smallint(1) NOT NULL DEFAULT '0',
  `mpasswd` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_login_ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL,
  PRIMARY KEY (`member_id`),
  KEY `member_name` (`member_name`),
  KEY `member_type_id` (`member_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`member_id`, `member_name`, `gender`, `birth_date`, `member_type_id`, `member_address`, `member_mail_address`, `member_email`, `postal_code`, `inst_name`, `is_new`, `member_image`, `pin`, `member_phone`, `member_fax`, `member_since_date`, `register_date`, `expire_date`, `member_notes`, `is_pending`, `mpasswd`, `last_login`, `last_login_ip`, `input_date`, `last_update`) VALUES
('123', 'test', 0, '0000-00-00', 1, '', '', '', '', '', NULL, NULL, '', '', '', '2015-01-29', '2015-01-29', '2016-01-29', '', 0, NULL, NULL, NULL, '2015-01-29', '2015-01-29');

-- --------------------------------------------------------

--
-- Table structure for table `member_custom`
--

CREATE TABLE IF NOT EXISTS `member_custom` (
  `member_id` varchar(20) NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='one to one relation with real member table';

-- --------------------------------------------------------

--
-- Table structure for table `mst_author`
--

CREATE TABLE IF NOT EXISTS `mst_author` (
  `author_id` int(11) NOT NULL AUTO_INCREMENT,
  `author_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `author_year` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `authority_type` enum('p','o','c') COLLATE utf8_unicode_ci DEFAULT 'p',
  `auth_list` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date DEFAULT NULL,
  PRIMARY KEY (`author_id`),
  UNIQUE KEY `author_name` (`author_name`,`authority_type`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=31 ;

--
-- Dumping data for table `mst_author`
--

INSERT INTO `mst_author` (`author_id`, `author_name`, `author_year`, `authority_type`, `auth_list`, `input_date`, `last_update`) VALUES
(25, 'Prameswari, Hera Ragilita', NULL, 'p', NULL, '2015-09-28', '2015-09-28'),
(28, 'Kimal, Davi Nurul', NULL, 'p', NULL, '2015-09-28', '2015-09-28'),
(27, 'Karnanda, Andriansyah', NULL, 'p', NULL, '2015-09-28', '2015-09-28'),
(29, 'Rohmawati, Rosiana Afida', NULL, 'p', NULL, '2015-09-28', '2015-09-28'),
(30, 'Putri, Arina Dyga', NULL, 'p', NULL, '2015-09-28', '2015-09-28');

-- --------------------------------------------------------

--
-- Table structure for table `mst_coll_type`
--

CREATE TABLE IF NOT EXISTS `mst_coll_type` (
  `coll_type_id` int(3) NOT NULL AUTO_INCREMENT,
  `coll_type_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL,
  PRIMARY KEY (`coll_type_id`),
  UNIQUE KEY `coll_type_name` (`coll_type_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `mst_coll_type`
--

INSERT INTO `mst_coll_type` (`coll_type_id`, `coll_type_name`, `input_date`, `last_update`) VALUES
(1, 'Skripsi', '2007-11-29', '2015-09-28'),
(2, 'Tesis', '2007-11-29', '2015-09-28'),
(3, 'Karya Tulis Ilmiah', '2007-11-29', '2015-09-28'),
(4, 'Disertasi', '2015-09-28', '2015-09-28');

-- --------------------------------------------------------

--
-- Table structure for table `mst_frequency`
--

CREATE TABLE IF NOT EXISTS `mst_frequency` (
  `frequency_id` int(11) NOT NULL AUTO_INCREMENT,
  `frequency` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `language_prefix` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_increment` smallint(6) DEFAULT NULL,
  `time_unit` enum('day','week','month','year') COLLATE utf8_unicode_ci DEFAULT 'day',
  `input_date` date NOT NULL,
  `last_update` date NOT NULL,
  PRIMARY KEY (`frequency_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `mst_frequency`
--

INSERT INTO `mst_frequency` (`frequency_id`, `frequency`, `language_prefix`, `time_increment`, `time_unit`, `input_date`, `last_update`) VALUES
(1, 'Weekly', 'en', 1, 'week', '2009-05-23', '2009-05-23'),
(2, 'Bi-weekly', 'en', 2, 'week', '2009-05-23', '2009-05-23'),
(3, 'Fourth-Nightly', 'en', 14, 'day', '2009-05-23', '2009-05-23'),
(4, 'Monthly', 'en', 1, 'month', '2009-05-23', '2009-05-23'),
(5, 'Bi-Monthly', 'en', 2, 'month', '2009-05-23', '2009-05-23'),
(6, 'Quarterly', 'en', 3, 'month', '2009-05-23', '2009-05-23'),
(7, '3 Times a Year', 'en', 4, 'month', '2009-05-23', '2009-05-23'),
(8, 'Annualy', 'en', 1, 'year', '2009-05-23', '2009-05-23');

-- --------------------------------------------------------

--
-- Table structure for table `mst_gmd`
--

CREATE TABLE IF NOT EXISTS `mst_gmd` (
  `gmd_id` int(11) NOT NULL AUTO_INCREMENT,
  `gmd_code` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gmd_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `icon_image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date DEFAULT NULL,
  PRIMARY KEY (`gmd_id`),
  UNIQUE KEY `gmd_name` (`gmd_name`),
  UNIQUE KEY `gmd_code` (`gmd_code`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=32 ;

--
-- Dumping data for table `mst_gmd`
--

INSERT INTO `mst_gmd` (`gmd_id`, `gmd_code`, `gmd_name`, `icon_image`, `input_date`, `last_update`) VALUES
(1, 'TE', 'Text', NULL, '2014-04-21', '2014-04-21'),
(2, 'AR', 'Art Original', NULL, '2014-04-21', '2014-04-21'),
(3, 'CH', 'Chart', NULL, '2014-04-21', '2014-04-21'),
(4, 'CO', 'Computer Software', NULL, '2014-04-21', '2014-04-21'),
(5, 'DI', 'Diorama', NULL, '2014-04-21', '2014-04-21'),
(6, 'FI', 'Filmstrip', NULL, '2014-04-21', '2014-04-21'),
(7, 'FL', 'Flash Card', NULL, '2014-04-21', '2014-04-21'),
(8, 'GA', 'Game', NULL, '2014-04-21', '2014-04-21'),
(9, 'GL', 'Globe', NULL, '2014-04-21', '2014-04-21'),
(10, 'KI', 'Kit', NULL, '2014-04-21', '2014-04-21'),
(11, 'MA', 'Map', NULL, '2014-04-21', '2014-04-21'),
(12, 'MI', 'Microform', NULL, '2014-04-21', '2014-04-21'),
(13, 'MN', 'Manuscript', NULL, '2014-04-21', '2014-04-21'),
(14, 'MO', 'Model', NULL, '2014-04-21', '2014-04-21'),
(15, 'MP', 'Motion Picture', NULL, '2014-04-21', '2014-04-21'),
(16, 'MS', 'Microscope Slide', NULL, '2014-04-21', '2014-04-21'),
(17, 'MU', 'Music', NULL, '2014-04-21', '2014-04-21'),
(18, 'PI', 'Picture', NULL, '2014-04-21', '2014-04-21'),
(19, 'RE', 'Realia', NULL, '2014-04-21', '2014-04-21'),
(20, 'SL', 'Slide', NULL, '2014-04-21', '2014-04-21'),
(21, 'SO', 'Sound Recording', NULL, '2014-04-21', '2014-04-21'),
(22, 'TD', 'Technical Drawing', NULL, '2014-04-21', '2014-04-21'),
(23, 'TR', 'Transparency', NULL, '2014-04-21', '2014-04-21'),
(24, 'VI', 'Video Recording', NULL, '2014-04-21', '2014-04-21'),
(25, 'EQ', 'Equipment', NULL, '2014-04-21', '2014-04-21'),
(26, 'CF', 'Computer File', NULL, '2014-04-21', '2014-04-21'),
(27, 'CA', 'Cartographic Material', NULL, '2014-04-21', '2014-04-21'),
(28, 'CD', 'CD-ROM', NULL, '2014-04-21', '2014-04-21'),
(29, 'MV', 'Multimedia', NULL, '2014-04-21', '2014-04-21'),
(30, 'ER', 'Electronic Resource', NULL, '2014-04-21', '2014-04-21'),
(31, 'DVD', 'Digital Versatile Disc', NULL, '2014-04-21', '2014-04-21');

-- --------------------------------------------------------

--
-- Table structure for table `mst_item_status`
--

CREATE TABLE IF NOT EXISTS `mst_item_status` (
  `item_status_id` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `item_status_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `rules` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_loan` smallint(1) NOT NULL DEFAULT '0',
  `skip_stock_take` smallint(1) NOT NULL DEFAULT '0',
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL,
  PRIMARY KEY (`item_status_id`),
  UNIQUE KEY `item_status_name` (`item_status_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_item_status`
--

INSERT INTO `mst_item_status` (`item_status_id`, `item_status_name`, `rules`, `no_loan`, `skip_stock_take`, `input_date`, `last_update`) VALUES
('R', 'Repair', 'a:1:{i:0;s:1:"1";}', 1, 0, '2014-04-21', '2014-04-21'),
('NL', 'No Loan', 'a:1:{i:0;s:1:"1";}', 1, 0, '2014-04-21', '2014-04-21'),
('MIS', 'Missing', NULL, 1, 1, '2014-04-21', '2014-04-21');

-- --------------------------------------------------------

--
-- Table structure for table `mst_label`
--

CREATE TABLE IF NOT EXISTS `mst_label` (
  `label_id` int(11) NOT NULL AUTO_INCREMENT,
  `label_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `label_desc` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label_image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` date NOT NULL,
  `last_update` date NOT NULL,
  PRIMARY KEY (`label_id`),
  UNIQUE KEY `label_name` (`label_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC AUTO_INCREMENT=4 ;

--
-- Dumping data for table `mst_label`
--

INSERT INTO `mst_label` (`label_id`, `label_name`, `label_desc`, `label_image`, `input_date`, `last_update`) VALUES
(1, 'label-new', 'New Title', 'label-new.png', '2014-04-21', '2014-04-21'),
(2, 'label-favorite', 'Favorite Title', 'label-favorite.png', '2014-04-21', '2014-04-21'),
(3, 'label-multimedia', 'Multimedia', 'label-multimedia.png', '2014-04-21', '2014-04-21');

-- --------------------------------------------------------

--
-- Table structure for table `mst_language`
--

CREATE TABLE IF NOT EXISTS `mst_language` (
  `language_id` char(5) COLLATE utf8_unicode_ci NOT NULL,
  `language_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL,
  PRIMARY KEY (`language_id`),
  UNIQUE KEY `language_name` (`language_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_language`
--

INSERT INTO `mst_language` (`language_id`, `language_name`, `input_date`, `last_update`) VALUES
('id', 'Indonesia', '2014-04-21', '2014-04-21'),
('en', 'English', '2014-04-21', '2014-04-21');

-- --------------------------------------------------------

--
-- Table structure for table `mst_loan_rules`
--

CREATE TABLE IF NOT EXISTS `mst_loan_rules` (
  `loan_rules_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_type_id` int(11) NOT NULL DEFAULT '0',
  `coll_type_id` int(11) DEFAULT '0',
  `gmd_id` int(11) DEFAULT '0',
  `loan_limit` int(3) DEFAULT '0',
  `loan_periode` int(3) DEFAULT '0',
  `reborrow_limit` int(3) DEFAULT '0',
  `fine_each_day` int(3) DEFAULT '0',
  `grace_periode` int(2) DEFAULT '0',
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL,
  PRIMARY KEY (`loan_rules_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mst_location`
--

CREATE TABLE IF NOT EXISTS `mst_location` (
  `location_id` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `location_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date NOT NULL,
  PRIMARY KEY (`location_id`),
  UNIQUE KEY `location_name` (`location_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mst_location`
--

INSERT INTO `mst_location` (`location_id`, `location_name`, `input_date`, `last_update`) VALUES
('SL', 'My Library', '2014-04-21', '2014-04-21');

-- --------------------------------------------------------

--
-- Table structure for table `mst_member_type`
--

CREATE TABLE IF NOT EXISTS `mst_member_type` (
  `member_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_type_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `loan_limit` int(11) NOT NULL,
  `loan_periode` int(11) NOT NULL,
  `enable_reserve` int(1) NOT NULL DEFAULT '0',
  `reserve_limit` int(11) NOT NULL DEFAULT '0',
  `member_periode` int(11) NOT NULL,
  `reborrow_limit` int(11) NOT NULL,
  `fine_each_day` int(11) NOT NULL,
  `grace_periode` int(2) DEFAULT '0',
  `input_date` date NOT NULL,
  `last_update` date DEFAULT NULL,
  PRIMARY KEY (`member_type_id`),
  UNIQUE KEY `member_type_name` (`member_type_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mst_member_type`
--

INSERT INTO `mst_member_type` (`member_type_id`, `member_type_name`, `loan_limit`, `loan_periode`, `enable_reserve`, `reserve_limit`, `member_periode`, `reborrow_limit`, `fine_each_day`, `grace_periode`, `input_date`, `last_update`) VALUES
(1, 'Standard', 2, 7, 1, 2, 365, 1, 0, 0, '2014-04-21', '2014-04-21');

-- --------------------------------------------------------

--
-- Table structure for table `mst_module`
--

CREATE TABLE IF NOT EXISTS `mst_module` (
  `module_id` int(3) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `module_path` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `module_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`module_id`),
  UNIQUE KEY `module_name` (`module_name`,`module_path`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC AUTO_INCREMENT=10 ;

--
-- Dumping data for table `mst_module`
--

INSERT INTO `mst_module` (`module_id`, `module_name`, `module_path`, `module_desc`) VALUES
(1, 'Dissertations/Thesis', 'bibliography', 'Manage your bibliographic/catalog and items/copies database'),
(2, 'circulation', 'circulation', 'Module for doing library items circulation such as loan and return'),
(3, 'membership', 'membership', 'Manage your library membership and membership type'),
(4, 'master_file', 'master_file', 'Manage your referential data that will be used by other modules'),
(5, 'stock_take', 'stock_take', 'Ease your pain in doing library stock opname process'),
(6, 'system', 'system', 'Configure system behaviour, user and backups'),
(7, 'reporting', 'reporting', 'Real time and dynamic report about library collections and circulation'),
(8, 'serial_control', 'serial_control', 'Serial publication management'),
(9, 'Karya Ilmiah', 'karya_ilmiah', 'For General User');

-- --------------------------------------------------------

--
-- Table structure for table `mst_place`
--

CREATE TABLE IF NOT EXISTS `mst_place` (
  `place_id` int(11) NOT NULL AUTO_INCREMENT,
  `place_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL,
  PRIMARY KEY (`place_id`),
  UNIQUE KEY `place_name` (`place_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `mst_place`
--

INSERT INTO `mst_place` (`place_id`, `place_name`, `input_date`, `last_update`) VALUES
(9, 'Fakultas Kedokteran UPNVJ', '2015-09-28', '2015-09-28');

-- --------------------------------------------------------

--
-- Table structure for table `mst_publisher`
--

CREATE TABLE IF NOT EXISTS `mst_publisher` (
  `publisher_id` int(11) NOT NULL AUTO_INCREMENT,
  `publisher_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL,
  PRIMARY KEY (`publisher_id`),
  UNIQUE KEY `publisher_name` (`publisher_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `mst_publisher`
--

INSERT INTO `mst_publisher` (`publisher_id`, `publisher_name`, `input_date`, `last_update`) VALUES
(1, 'Wiley', '2007-11-29', '2007-11-29'),
(2, 'OReilly', '2007-11-29', '2007-11-29'),
(3, 'Apress', '2007-11-29', '2007-11-29'),
(4, 'Sams', '2007-11-29', '2007-11-29'),
(5, 'John Wiley', '2007-11-29', '2007-11-29'),
(6, 'Prentice Hall', '2007-11-29', '2007-11-29'),
(7, 'Libraries Unlimited', '2007-11-29', '2007-11-29'),
(8, 'Taylor & Francis Inc.', '2007-11-29', '2007-11-29'),
(9, 'Palgrave Macmillan', '2007-11-29', '2007-11-29'),
(10, 'Crown publishers', '2007-11-29', '2007-11-29'),
(11, 'Atlantic Monthly Press', '2007-11-29', '2007-11-29'),
(12, 'Medical Knowledge Center, FK UPNVJ', '2015-09-28', '2015-09-28');

-- --------------------------------------------------------

--
-- Table structure for table `mst_supplier`
--

CREATE TABLE IF NOT EXISTS `mst_supplier` (
  `supplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` char(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact` char(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` char(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `e_mail` char(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL,
  PRIMARY KEY (`supplier_id`),
  UNIQUE KEY `supplier_name` (`supplier_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mst_topic`
--

CREATE TABLE IF NOT EXISTS `mst_topic` (
  `topic_id` int(11) NOT NULL AUTO_INCREMENT,
  `topic` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `topic_type` enum('t','g','n','tm','gr','oc') COLLATE utf8_unicode_ci NOT NULL,
  `auth_list` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `classification` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Classification Code',
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL,
  PRIMARY KEY (`topic_id`),
  UNIQUE KEY `topic` (`topic`,`topic_type`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `mst_topic`
--

INSERT INTO `mst_topic` (`topic_id`, `topic`, `topic_type`, `auth_list`, `classification`, `input_date`, `last_update`) VALUES
(1, 'Imunisasi Dasar Lengkap', 't', NULL, '', '2015-09-28', '2015-09-28'),
(2, 'Karsinoma nasofaring', 't', NULL, '', '2015-09-28', '2015-09-28'),
(3, 'Faktor Risiko', 't', NULL, '', '2015-09-28', '2015-09-28'),
(4, 'Antidiare', 't', NULL, '', '2015-09-28', '2015-09-28'),
(5, 'Beban Kerja', 't', NULL, '', '2015-09-28', '2015-09-28');

-- --------------------------------------------------------

--
-- Table structure for table `reserve`
--

CREATE TABLE IF NOT EXISTS `reserve` (
  `reserve_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `biblio_id` int(11) NOT NULL,
  `item_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `reserve_date` datetime NOT NULL,
  PRIMARY KEY (`reserve_id`),
  KEY `references_idx` (`member_id`,`biblio_id`),
  KEY `item_code_idx` (`item_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `search_biblio`
--

CREATE TABLE IF NOT EXISTS `search_biblio` (
  `biblio_id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci,
  `edition` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isbn_issn` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` text COLLATE utf8_unicode_ci,
  `topic` text COLLATE utf8_unicode_ci,
  `gmd` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publisher` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publish_place` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `classification` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `spec_detail_info` text COLLATE utf8_unicode_ci,
  `location` text COLLATE utf8_unicode_ci,
  `publish_year` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci,
  `series_title` text COLLATE utf8_unicode_ci,
  `items` text COLLATE utf8_unicode_ci,
  `collection_types` text COLLATE utf8_unicode_ci,
  `call_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opac_hide` smallint(1) NOT NULL DEFAULT '0',
  `promoted` smallint(1) NOT NULL DEFAULT '0',
  `labels` text COLLATE utf8_unicode_ci,
  `collation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  UNIQUE KEY `biblio_id` (`biblio_id`),
  KEY `add_indexes` (`gmd`,`publisher`,`publish_place`,`language`,`classification`,`publish_year`,`call_number`),
  KEY `add_indexes2` (`opac_hide`,`promoted`),
  FULLTEXT KEY `title` (`title`),
  FULLTEXT KEY `author` (`author`),
  FULLTEXT KEY `topic` (`topic`),
  FULLTEXT KEY `location` (`location`),
  FULLTEXT KEY `items` (`items`),
  FULLTEXT KEY `collection_types` (`collection_types`),
  FULLTEXT KEY `labels` (`labels`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='index table for advance searching technique for SLiMS';

--
-- Dumping data for table `search_biblio`
--

INSERT INTO `search_biblio` (`biblio_id`, `title`, `edition`, `isbn_issn`, `author`, `topic`, `gmd`, `publisher`, `publish_place`, `language`, `classification`, `spec_detail_info`, `location`, `publish_year`, `notes`, `series_title`, `items`, `collection_types`, `call_number`, `opac_hide`, `promoted`, `labels`, `collation`, `image`, `input_date`, `last_update`) VALUES
(23, 'HUBUNGAN PEMBERIAN IMUNISASI DASAR LENGKAP TERHADAP TUMBUH KEMBANG BALITA USIA 9-12 BULAN DI PUSKESMAS PONDOK RANGGON, JAKARTA TIMUR PERIODE APRIL 2015', '', '', 'Prameswari, Hera Ragilita', 'Imunisasi Dasar Lengkap', 'Text', 'Medical Knowledge Center, FK UPNVJ', 'Fakultas Kedokteran UPNVJ', 'Indonesia', '620', 'Pengesahan Pada Tanggal 10 Juli 2015', 'My Library', '2015', 'Healthy children would grow and develop properly, while children who often ill, their growth and development would disrupted. Factors that influence growth and development were age, gender, genetics, chromosomal abnormalities, nutritional, immunological disorder, delivery factor, immunization, upbringing environment and stimulation. Immunization was important factor that effects the growth and development of a child. Ideally, every child should receive complete immunization, but in reality there were children who did not receive complete basic and optimal immunization. The purpose of this study is to determine the effect of complete basic immunization to the growth and development of children in age range of 9-12 months old. The type of the research is analytic observational with cross sectional study design and sample size of 81 people. The univariat analysis indicated the prevalence of the complete basic immunization was 71 people (84,7%) and the prevalence of the incomplete basic immunization was 13 people (15,3%). The result of bivariate analysis showed no significant relation between the provision of complete basic immunizations with the growth (p=0,166), while there is a significant relation between the provosion of complete basic immunizations with children development (p=0,000). Suggestions for mothers , that is required to provide complete basic immunization for newborn children until age 9 months because immunization very useful to prevent disease and mother must consider granting schedule immunization toddler age-appropriate, so that no delay on immunization administration.', NULL, 'FK-SKRIPSI-2015-0032', 'Skripsi', '620 Pra H', 0, 1, NULL, '20 cm', 'wikiversity-logo.png.png', '2015-09-28 11:00:36', '2015-09-28 11:49:52'),
(24, 'HUBUNGAN RESPON RADIOKEMOTERAPI TERHADAP PASIEN KARSINOMA NASOFARING SETELAH 1 TAHUN PEMBERIAN `BERDASARKAN KLASIFIKASI WHO', '', '', 'Kimal, Davi Nurul', 'Karsinoma nasofaring', 'Text', 'Medical Knowledge Center, FK UPNVJ', 'Fakultas Kedokteran UPNVJ', 'Indonesia', '620', 'Lembar Pengesahan Pada 9 Juli 2015', 'My Library', '2015', 'Nasopharyngeal carcinoma is a malignant tumor on head that located exactly behind nasal to the base of cranium. In 2011, there have increased asopharyngeal carcinoma patients annually with average 17 patients per month at Gatot Subroto Hospital Jakarta. Chemoteraphy drug is the one of drugs that can inhibit cancer growth and kill cancer cells. The purpose of this study is to determine the response of histopathological classifications on nasopharyngeal carcinoma patients after had treatment of chemoradiotherapy within 1 year. This research is a descriptive analytic research that using cross sectional method. The technique of sampling uses purposive sampling, which is to determine the sample of the population that have certain characteristics to fill quota that needed. Total sampels are 42 people from secondary data using medical record of patients, who have treated \r\nchemoradiotherapy for 1 year. The alternative test uses Fisher''s test, that the results of significancy value is 0.005. Therefore, we can conclude that there is correlation between chemoradioteraphy response and nasopharyngeal carcinoma patients that based on WHO classifications.', NULL, 'FK-SKRIPSI-2015-0031', 'Skripsi', '620 Kim H', 0, 1, NULL, '20 cm', 'wikiversity-logo.png.png', '2015-09-28 11:36:45', '2015-09-28 12:56:44'),
(25, 'ANALISIS FAKTOR RISIKO KELUHAN NYERI PUNGGUNG BAWAH (NPB) PADA MAHASISWA TINGKAT III FK UPN VETERAN JAKARTA', '', '', 'Karnanda, Andriansyah', 'Faktor Risiko', 'Text', 'Medical Knowledge Center, FK UPNVJ', 'Fakultas Kedokteran UPNVJ', 'Indonesia', '620', 'Lembar Pengesahan Pada 13 Agustus 2015', 'My Library', '2015', 'Lower Back Pain (LBP) is a major cause of inability to work. Prevalence of LBP reaches 90% of the world''s population. This research was conducted in a population of medical students UPN Veteran Jakarta. The objective of this study are to ascertain prevalence of LBP and whether an association between the risk factors and LBP complain. Measuring tool to assess the LBP complain to be good for NMQ questionnaire which has been validated and translated into Indonesian. The instrument for measuring height and weight were stature meters and scales underfoot. For drinking coffee and smoking habits variables, participants were asked to fill out additional questionnaire and interview. The design in this study is a cross-sectional study of the 106 research subjects. The collected data were analyzed by univariate and bivariate analysis. The incidence of lower back pain at FK UPN third level students is 66%,that’s more women than men. Chi-square test showed that there was a relationship between the sexes (p = 0.033) and the coffee drinking habits (p = 0.000) with the incidence of low back pain. There are no significant association between the risk factors BMI (p=0,410), smoking (p=1,000), and the weight of the bag lecture (p=1,000) with NPB.', NULL, 'FK-SKRIPSI-2015-0013', 'Skripsi', '620 Kar A', 0, 1, NULL, '20 cm.', 'wikiversity-logo.png.png', '2015-09-28 12:46:15', '2015-09-28 12:46:56'),
(26, 'UJI EFEKTIVITAS ANTIDIARE EKSTRAK ETANOL KULIT BUAH RAMBUTAN HIJAU (NEPHELIUM LAPPACEUM L.) PADA MENCIT PUTIH JANTAN YANG DIINDUKSI OLEUM RICINI', '', '', 'Rohmawati, Rosiana Afida', 'Antidiare', 'Text', 'Medical Knowledge Center, FK UPNVJ', 'Fakultas Kedokteran UPNVJ', 'Indonesia', '620', 'Lembar Pengesahan Pada 13 Juli 2015', 'My Library', '2015', 'Diarrhea become one of the main health problems in Indonesia that requires serious treatment. The villagers prefer to use herbal treatment to cure diarrhea, one of them is rambutan peel. The aim of this study was to reveal anti diarrheal effectiveness of rambutan peel’s (Nephelium lappaceum L.) ethanol extract. This research was an experimental test with the sample divided into 5 groups : negative control group (CMC), rambutan peel’s (Nephelium lappaceum L.) ethanol extract dose 350 mg, dose 700 mg,dose 1.400 mg, and positive control group. Analysis of the frequency of defecation used one way ANOVA test and followed by LSD, while the consistency of defecation used Kruskal Wallis test and followed by Mann Whitney test. The results test of frequency of defecation for group II, group III, and group IV showed significant difference with control group (p', NULL, 'FK-SKRIPSI-2015-0010', 'Skripsi', '620 Ros U', 0, 1, NULL, '20 cm.', 'wikiversity-logo.png.png', '2015-09-28 13:06:31', '2015-09-28 13:07:13'),
(27, 'PENGARUH TINGKAT BEBAN KERJA MENTAL TERHADAP PEMILIHAN STRATEGI KOPING PADA PENGEMUDI TAKSI DI KOTA DEPOK', '', '', 'Putri, Arina Dyga', 'Beban Kerja', 'Text', 'Medical Knowledge Center, FK UPNVJ', 'Fakultas Kedokteran UPNVJ', 'Indonesia', '620', 'Lembar Pengesahan Pada 13 Juli 2015', 'My Library', '2015', 'Taxi driver is a profession that has unique characteristics, this job has an extensive working environment, long working hours, and fluctuating payroll system. This job is not difficult, but requires physical and mental workload. While doing their job which is dominated by physical and mental load, a Taxi driver needs a suitable coping strategies to well-suited the workload in order to motivate themselves and get the job done well. This study were intended to determine the effect of the mental workload level to Taxi’s driver coping strategies in Depok. The research methodology was analytic observational with cross sectional approach. Samplings are done by cluster random sampling technique on three districts in Depok involving 82 Taxi’s drivers. This study used NASA-TLX mental workload questionnaire and Lazarus’s Way of Coping Scale. Based from the results of chi-square statistical test, the value of p = 0.000 (p < 0.005) which means that there are effects of mental workload level and coping strategies. This result shown that mental workload level that happen on a person would affect coping strategies they would choose and that can affect their mental workload level.', NULL, 'FK-SKRIPSI-2015-0009', 'Skripsi', '620 Put P', 0, 1, NULL, '20 cm.', 'wikiversity-logo.png.png', '2015-09-28 13:23:07', '2015-11-04 17:59:36');

-- --------------------------------------------------------

--
-- Table structure for table `serial`
--

CREATE TABLE IF NOT EXISTS `serial` (
  `serial_id` int(11) NOT NULL AUTO_INCREMENT,
  `date_start` date NOT NULL,
  `date_end` date DEFAULT NULL,
  `period` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci,
  `biblio_id` int(11) DEFAULT NULL,
  `gmd_id` int(11) DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date NOT NULL,
  PRIMARY KEY (`serial_id`),
  KEY `fk_serial_biblio` (`biblio_id`),
  KEY `fk_serial_gmd` (`gmd_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE IF NOT EXISTS `setting` (
  `setting_id` int(3) NOT NULL AUTO_INCREMENT,
  `setting_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `setting_value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`setting_id`),
  UNIQUE KEY `setting_name` (`setting_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=33 ;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`setting_id`, `setting_name`, `setting_value`) VALUES
(1, 'library_name', 's:7:"SETIADI";'),
(2, 'library_subname', 's:45:"Senayan Sistem Elektronik Tesis Dan Desertasi";'),
(3, 'template', 'a:2:{s:5:"theme";s:7:"new_etd";s:3:"css";s:26:"template/new_etd/style.css";}'),
(4, 'admin_template', 'a:2:{s:5:"theme";s:13:"new_etd_admin";s:3:"css";s:38:"admin_template/new_etd_admin/style.css";}'),
(5, 'default_lang', 's:5:"en_US";'),
(6, 'opac_result_num', 's:2:"10";'),
(7, 'enable_promote_titles', 'N;'),
(8, 'quick_return', 'b:1;'),
(9, 'allow_loan_date_change', 'b:0;'),
(10, 'loan_limit_override', 'b:0;'),
(11, 'enable_xml_detail', 'b:1;'),
(12, 'enable_xml_result', 'b:1;'),
(13, 'allow_file_download', 'b:1;'),
(14, 'session_timeout', 's:4:"7200";'),
(15, 'circulation_receipt', 'b:0;'),
(16, 'barcode_encoding', 's:4:"128B";'),
(17, 'ignore_holidays_fine_calc', 'b:0;'),
(18, 'barcode_print_settings', 'a:12:{s:19:"barcode_page_margin";d:0.200000000000000011102230246251565404236316680908203125;s:21:"barcode_items_per_row";i:3;s:20:"barcode_items_margin";d:0.1000000000000000055511151231257827021181583404541015625;s:17:"barcode_box_width";i:7;s:18:"barcode_box_height";i:5;s:27:"barcode_include_header_text";i:1;s:17:"barcode_cut_title";i:50;s:19:"barcode_header_text";s:0:"";s:13:"barcode_fonts";s:41:"Arial, Verdana, Helvetica, ''Trebuchet MS''";s:17:"barcode_font_size";i:11;s:13:"barcode_scale";i:70;s:19:"barcode_border_size";i:1;}'),
(19, 'label_print_settings', 'a:10:{s:11:"page_margin";d:0.200000000000000011102230246251565404236316680908203125;s:13:"items_per_row";i:3;s:12:"items_margin";d:0.05000000000000000277555756156289135105907917022705078125;s:9:"box_width";i:8;s:10:"box_height";d:3.29999999999999982236431605997495353221893310546875;s:19:"include_header_text";i:1;s:11:"header_text";s:0:"";s:5:"fonts";s:41:"Arial, Verdana, Helvetica, ''Trebuchet MS''";s:9:"font_size";i:11;s:11:"border_size";i:1;}'),
(20, 'membercard_print_settings', 'a:1:{s:5:"print";a:1:{s:10:"membercard";a:61:{s:11:"card_factor";s:12:"37.795275591";s:21:"card_include_id_label";i:1;s:23:"card_include_name_label";i:1;s:22:"card_include_pin_label";i:1;s:23:"card_include_inst_label";i:0;s:24:"card_include_email_label";i:0;s:26:"card_include_address_label";i:1;s:26:"card_include_barcode_label";i:1;s:26:"card_include_expired_label";i:1;s:14:"card_box_width";d:8.5999999999999996447286321199499070644378662109375;s:15:"card_box_height";d:5.4000000000000003552713678800500929355621337890625;s:9:"card_logo";s:8:"logo.png";s:21:"card_front_logo_width";s:0:"";s:22:"card_front_logo_height";s:0:"";s:20:"card_front_logo_left";s:0:"";s:19:"card_front_logo_top";s:0:"";s:20:"card_back_logo_width";s:0:"";s:21:"card_back_logo_height";s:0:"";s:19:"card_back_logo_left";s:0:"";s:18:"card_back_logo_top";s:0:"";s:15:"card_photo_left";s:0:"";s:14:"card_photo_top";s:0:"";s:16:"card_photo_width";d:1.5;s:17:"card_photo_height";d:1.8000000000000000444089209850062616169452667236328125;s:23:"card_front_header1_text";s:19:"Library Member Card";s:28:"card_front_header1_font_size";s:2:"12";s:23:"card_front_header2_text";s:10:"My Library";s:28:"card_front_header2_font_size";s:2:"12";s:22:"card_back_header1_text";s:10:"My Library";s:27:"card_back_header1_font_size";s:2:"12";s:22:"card_back_header2_text";s:35:"My Library Full Address and Website";s:27:"card_back_header2_font_size";s:1:"5";s:17:"card_header_color";s:7:"#0066FF";s:18:"card_bio_font_size";s:2:"11";s:20:"card_bio_font_weight";s:4:"bold";s:20:"card_bio_label_width";s:3:"100";s:9:"card_city";s:9:"City Name";s:10:"card_title";s:15:"Library Manager";s:14:"card_officials";s:14:"Librarian Name";s:17:"card_officials_id";s:12:"Librarian ID";s:15:"card_stamp_file";s:9:"stamp.png";s:19:"card_signature_file";s:13:"signature.png";s:15:"card_stamp_left";s:0:"";s:14:"card_stamp_top";s:0:"";s:16:"card_stamp_width";s:0:"";s:17:"card_stamp_height";s:0:"";s:13:"card_exp_left";s:0:"";s:12:"card_exp_top";s:0:"";s:14:"card_exp_width";s:0:"";s:15:"card_exp_height";s:0:"";s:18:"card_barcode_scale";i:100;s:17:"card_barcode_left";s:0:"";s:16:"card_barcode_top";s:0:"";s:18:"card_barcode_width";s:0:"";s:19:"card_barcode_height";s:0:"";s:10:"card_rules";s:120:"<ul><li>This card is published by Library.</li><li>Please return this card to its owner if you found it.</li></ul>";s:20:"card_rules_font_size";s:1:"8";s:12:"card_address";s:76:"My Library<br />website: http://slims.web.id, email : librarian@slims.web.id";s:22:"card_address_font_size";s:1:"7";s:17:"card_address_left";s:0:"";s:16:"card_address_top";s:0:"";}}}'),
(32, 'spellchecker_enabled', 'b:0;');

-- --------------------------------------------------------

--
-- Table structure for table `stock_take`
--

CREATE TABLE IF NOT EXISTS `stock_take` (
  `stock_take_id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_take_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `init_user` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `total_item_stock_taked` int(11) DEFAULT NULL,
  `total_item_lost` int(11) DEFAULT NULL,
  `total_item_exists` int(11) DEFAULT '0',
  `total_item_loan` int(11) DEFAULT NULL,
  `stock_take_users` mediumtext COLLATE utf8_unicode_ci,
  `is_active` int(1) NOT NULL DEFAULT '0',
  `report_file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`stock_take_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `stock_take_item`
--

CREATE TABLE IF NOT EXISTS `stock_take_item` (
  `stock_take_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gmd_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `classification` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coll_type_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `call_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('e','m','u','l') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'm',
  `checked_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_update` datetime DEFAULT NULL,
  PRIMARY KEY (`stock_take_id`,`item_id`),
  UNIQUE KEY `item_code` (`item_code`),
  KEY `status` (`status`),
  KEY `item_properties_idx` (`gmd_name`,`classification`,`coll_type_name`,`location`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_log`
--

CREATE TABLE IF NOT EXISTS `system_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `log_type` enum('staff','member','system') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'staff',
  `id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_location` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `log_msg` text COLLATE utf8_unicode_ci NOT NULL,
  `log_date` datetime NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `log_type` (`log_type`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=254 ;

--
-- Dumping data for table `system_log`
--

INSERT INTO `system_log` (`log_id`, `log_type`, `id`, `log_location`, `log_msg`, `log_date`) VALUES
(1, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2014-04-21 14:41:10'),
(2, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2014-04-21 15:19:13'),
(3, 'staff', '1', 'bibliography', 'Admin updating file attachment data', '2014-04-21 15:28:35'),
(4, 'staff', '1', 'bibliography', 'Admin update bibliographic data (Web application architecture : principles, protocols, and practices) with biblio_id ()', '2014-04-21 15:28:49'),
(5, 'staff', '1', 'bibliography', 'Admin updating file attachment data', '2014-04-21 15:29:33'),
(6, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2014-05-18 20:08:36'),
(7, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2014-05-27 20:12:03'),
(8, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2014-09-06 16:44:20'),
(9, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2014-11-26 16:44:41'),
(10, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2014-12-25 06:33:29'),
(11, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (tes) with biblio_id (16)', '2014-12-25 06:33:41'),
(12, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (tes) with biblio_id (16)', '2014-12-25 06:33:59'),
(13, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2014-12-31 16:26:03'),
(14, 'staff', '1', 'system', 'Admin add new content (test) with contentname ()', '2014-12-31 16:29:45'),
(15, 'staff', '1', 'system', 'update content data (test) with contentname ()', '2014-12-31 16:30:58'),
(16, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2015-01-04 10:20:01'),
(17, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2015-01-29 11:09:04'),
(18, 'staff', '1', 'membership', 'Admin add new member (test) with ID (123)', '2015-01-29 11:10:15'),
(19, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2015-03-23 10:42:27'),
(20, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2015-04-15 19:44:56'),
(21, 'staff', '1', 'system', 'Admin Log Out from application from address 127.0.0.1', '2015-04-15 20:37:04'),
(22, 'staff', 'admin', 'Login', 'Login FAILED for user admin from address 127.0.0.1', '2015-04-16 11:04:16'),
(23, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2015-04-16 11:04:23'),
(24, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2015-04-20 11:37:28'),
(25, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2015-04-20 19:25:26'),
(26, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2015-04-21 10:05:55'),
(27, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2015-04-21 19:32:25'),
(28, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2015-04-25 09:47:30'),
(29, 'staff', '1', 'system', 'Admin change application global configuration', '2015-04-25 09:49:51'),
(30, 'staff', '1', 'system', 'Admin Log Out from application from address 127.0.0.1', '2015-04-25 09:52:50'),
(31, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2015-04-26 01:37:29'),
(32, 'staff', '1', 'system', 'Admin change application global configuration', '2015-04-26 01:37:37'),
(33, 'staff', '1', 'system', 'Admin add new group (biblio_edit_only)', '2015-04-26 02:10:51'),
(34, 'staff', '1', 'system', 'Admin add new user (staff) with username (staff)', '2015-04-26 02:11:12'),
(35, 'staff', '1', 'system', 'Admin Log Out from application from address 127.0.0.1', '2015-04-26 02:11:17'),
(36, 'staff', 'staff', 'Login', 'Login success for user staff from address 127.0.0.1', '2015-04-26 02:11:21'),
(37, 'staff', '2', 'system', 'staff Log Out from application from address 127.0.0.1', '2015-04-26 02:11:46'),
(38, 'staff', 'staff', 'Login', 'Login success for user staff from address 127.0.0.1', '2015-04-26 02:11:51'),
(39, 'staff', '2', 'system', 'staff Log Out from application from address 127.0.0.1', '2015-04-26 02:12:00'),
(40, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2015-04-26 02:12:04'),
(41, 'staff', '1', 'system', 'Admin update group data (biblio_edit_only)', '2015-04-26 02:12:25'),
(42, 'staff', '1', 'system', 'Admin Log Out from application from address 127.0.0.1', '2015-04-26 02:12:29'),
(43, 'staff', 'staff', 'Login', 'Login success for user staff from address 127.0.0.1', '2015-04-26 02:12:34'),
(44, 'staff', '2', 'system', 'staff Log Out from application from address 127.0.0.1', '2015-04-26 02:13:22'),
(45, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2015-04-26 02:13:32'),
(46, 'staff', '1', 'system', 'Admin update group data (biblio_edit_only)', '2015-04-26 02:13:43'),
(47, 'staff', '1', 'system', 'Admin Log Out from application from address 127.0.0.1', '2015-04-26 02:15:32'),
(48, 'staff', 'staff', 'Login', 'Login success for user staff from address 127.0.0.1', '2015-04-26 02:15:36'),
(49, 'staff', '2', 'system', 'staff Log Out from application from address 127.0.0.1', '2015-04-26 02:16:34'),
(50, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2015-04-26 02:18:09'),
(51, 'staff', '1', 'system', 'Admin Log Out from application from address 127.0.0.1', '2015-04-26 02:18:22'),
(52, 'staff', 'staff', 'Login', 'Login success for user staff from address 127.0.0.1', '2015-04-26 02:18:27'),
(53, 'staff', '2', 'system', 'staff Log Out from application from address 127.0.0.1', '2015-04-26 02:19:11'),
(54, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2015-04-26 02:19:16'),
(55, 'staff', '1', 'system', 'Admin change application global configuration', '2015-04-26 02:19:33'),
(56, 'staff', '1', 'system', 'Admin change application global configuration', '2015-04-26 02:19:40'),
(57, 'staff', '1', 'system', 'Admin Log Out from application from address 127.0.0.1', '2015-04-26 02:19:59'),
(58, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2015-04-26 02:20:15'),
(59, 'staff', '1', 'system', 'Admin Log Out from application from address 127.0.0.1', '2015-04-26 02:20:28'),
(60, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2015-04-26 02:21:05'),
(61, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2015-04-26 02:22:03'),
(62, 'staff', '1', 'system', 'Admin change application global configuration', '2015-04-26 02:23:24'),
(63, 'staff', '1', 'system', 'Admin Log Out from application from address 127.0.0.1', '2015-04-26 02:23:42'),
(64, 'staff', 'staff', 'Login', 'Login success for user staff from address 127.0.0.1', '2015-04-26 02:24:42'),
(65, 'staff', '2', 'bibliography', 'staff insert bibliographic data (test1) with biblio_id (17)', '2015-04-26 02:49:16'),
(66, 'staff', '2', 'bibliography', 'staff insert bibliographic data (test3) with biblio_id (18)', '2015-04-26 02:57:00'),
(67, 'staff', '2', 'bibliography', 'staff insert bibliographic data (test4) with biblio_id (19)', '2015-04-26 02:58:37'),
(68, 'staff', '2', 'bibliography', 'staff insert bibliographic data (test5) with biblio_id (20)', '2015-04-26 02:59:18'),
(69, 'staff', '2', 'bibliography', 'staff insert bibliographic data (test6) with biblio_id (21)', '2015-04-26 03:01:05'),
(70, 'staff', 'staff', 'Login', 'Login success for user staff from address 127.0.0.1', '2015-04-27 10:20:04'),
(71, 'staff', '2', 'system', 'staff Log Out from application from address 127.0.0.1', '2015-04-27 10:20:10'),
(72, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2015-04-27 10:20:15'),
(73, 'staff', '1', 'system', 'Admin update group data (biblio_edit_only)', '2015-04-27 10:20:31'),
(74, 'staff', '1', 'system', 'Admin Log Out from application from address 127.0.0.1', '2015-04-27 10:20:33'),
(75, 'staff', 'staff', 'Login', 'Login success for user staff from address 127.0.0.1', '2015-04-27 10:20:37'),
(76, 'staff', 'staff', 'Login', 'Login success for user staff from address 127.0.0.1', '2015-04-27 13:14:52'),
(77, 'staff', '2', 'system', 'staff Log Out from application from address 127.0.0.1', '2015-04-27 13:15:15'),
(78, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2015-04-27 13:15:18'),
(79, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2015-05-03 02:52:26'),
(80, 'staff', '1', 'system', 'Admin change application global configuration', '2015-05-03 02:53:21'),
(81, 'staff', '1', 'system', 'Admin Log Out from application from address 127.0.0.1', '2015-05-03 03:42:57'),
(82, 'staff', 'staff', 'Login', 'Login success for user staff from address 127.0.0.1', '2015-05-03 03:43:01'),
(83, 'staff', '', 'system', 'Log Out from application from address 127.0.0.1', '2015-05-03 05:37:22'),
(84, 'staff', 'staff', 'Login', 'Login success for user staff from address 127.0.0.1', '2015-05-03 05:37:27'),
(85, 'staff', '2', 'bibliography', 'staff insert bibliographic data (test8) with biblio_id (22)', '2015-05-03 05:38:26'),
(86, 'staff', '2', 'system', 'staff Log Out from application from address 127.0.0.1', '2015-05-03 05:40:08'),
(87, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2015-05-03 05:40:12'),
(88, 'staff', '1', 'system', 'Admin Log Out from application from address 127.0.0.1', '2015-05-03 05:53:45'),
(89, 'staff', 'staff', 'Login', 'Login success for user staff from address 127.0.0.1', '2015-05-03 05:53:52'),
(90, 'staff', '2', 'system', 'staff Log Out from application from address 127.0.0.1', '2015-05-03 07:12:08'),
(91, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2015-05-03 07:12:13'),
(92, 'staff', '1', 'system', 'Admin add new content (Welcome to Etd) with contentname ()', '2015-05-03 07:20:31'),
(93, 'staff', '1', 'system', 'update content data (Welcome to Etd) with contentname ()', '2015-05-03 07:25:49'),
(94, 'staff', '1', 'system', 'update content data (Welcome to Etd) with contentname ()', '2015-05-03 07:26:25'),
(95, 'staff', '1', 'system', 'update content data (Welcome to Etd) with contentname ()', '2015-05-03 07:31:14'),
(96, 'staff', '1', 'system', 'Admin Log Out from application from address 127.0.0.1', '2015-05-03 07:31:39'),
(97, 'staff', 'staff', 'Login', 'Login success for user staff from address 127.0.0.1', '2015-05-03 07:31:43'),
(98, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2015-05-03 07:41:58'),
(99, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2015-05-03 07:43:34'),
(100, 'staff', '2', 'bibliography', 'staff upload file (Repository_140113_R2.pdf)', '2015-05-03 07:52:50'),
(101, 'staff', '2', 'system', 'staff Log Out from application from address 127.0.0.1', '2015-05-03 07:57:27'),
(102, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2015-05-03 08:22:50'),
(103, 'staff', '1', 'system', 'Admin Log Out from application from address 127.0.0.1', '2015-05-03 08:22:54'),
(104, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2015-05-03 11:22:36'),
(105, 'staff', '1', 'system', 'Admin Log Out from application from address 127.0.0.1', '2015-05-03 11:23:51'),
(106, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2015-05-03 11:26:25'),
(107, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2015-05-04 12:52:17'),
(108, 'staff', '1', 'system', 'Admin add new content (ETD Information) with contentname ()', '2015-05-04 12:54:28'),
(109, 'staff', '1', 'system', 'update content data (ETD Information) with contentname ()', '2015-05-04 13:00:14'),
(110, 'staff', '1', 'system', 'update content data (ETD Information) with contentname ()', '2015-05-04 13:05:14'),
(111, 'staff', '1', 'system', 'update content data (Help On Usage) with contentname ()', '2015-05-04 13:29:15'),
(112, 'staff', '1', 'system', 'update content data (Help On Usage) with contentname ()', '2015-05-04 13:42:52'),
(113, 'staff', '1', 'system', 'update content data (Help On Usage) with contentname ()', '2015-05-04 13:46:13'),
(114, 'staff', '1', 'system', 'update content data (Help On Usage) with contentname ()', '2015-05-04 13:50:33'),
(115, 'staff', '1', 'system', 'update content data (Help On Usage) with contentname ()', '2015-05-04 13:52:06'),
(116, 'staff', '1', 'system', 'update content data (Help On Usage) with contentname ()', '2015-05-04 13:53:23'),
(117, 'staff', '1', 'system', 'update content data (Help On Usage) with contentname ()', '2015-05-04 13:54:37'),
(118, 'staff', '1', 'system', 'update content data (Help On Usage) with contentname ()', '2015-05-04 13:55:05'),
(119, 'staff', '1', 'system', 'update content data (Help On Usage) with contentname ()', '2015-05-04 13:56:28'),
(120, 'staff', '1', 'system', 'update content data (Help On Usage) with contentname ()', '2015-05-04 13:59:23'),
(121, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2015-05-04 15:21:30'),
(122, 'staff', '1', 'system', 'Admin Log Out from application from address 127.0.0.1', '2015-05-04 15:21:35'),
(123, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2015-05-04 15:21:41'),
(124, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2015-05-04 16:44:08'),
(125, 'staff', '1', 'system', 'Admin add new group (Students)', '2015-05-04 17:26:13'),
(126, 'staff', '1', 'system', 'Admin update user data (staff) with username (staff)', '2015-05-04 17:26:56'),
(127, 'staff', '1', 'system', 'Admin DELETE group (biblio_edit_only)', '2015-05-04 17:27:10'),
(128, 'staff', 'Admin', 'Login', 'Login success for user Admin from address 127.0.0.1', '2015-05-04 19:48:24'),
(129, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2015-05-04 21:21:34'),
(130, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2015-05-09 12:12:12'),
(131, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2015-05-09 14:32:04'),
(132, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2015-08-28 09:54:56'),
(133, 'staff', '1', 'system', 'Admin change application global configuration', '2015-08-28 09:55:24'),
(134, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2015-08-30 17:26:40'),
(135, 'staff', '1', 'system', 'Admin change application global configuration', '2015-08-30 17:27:06'),
(136, 'staff', '1', 'system', 'Admin Log Out from application from address 127.0.0.1', '2015-08-30 17:28:28'),
(137, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2015-08-30 17:29:21'),
(138, 'staff', '1', 'system', 'Admin change application global configuration', '2015-08-30 17:29:27'),
(139, 'staff', '1', 'system', 'Admin Log Out from application from address 127.0.0.1', '2015-08-30 17:29:32'),
(140, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2015-08-30 17:54:20'),
(141, 'staff', '1', 'system', 'Admin change application global configuration', '2015-08-30 17:54:30'),
(142, 'staff', '1', 'system', 'Admin Log Out from application from address 127.0.0.1', '2015-08-30 17:54:32'),
(143, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2015-08-30 17:54:41'),
(144, 'staff', '1', 'system', 'Admin change application global configuration', '2015-08-30 17:54:51'),
(145, 'staff', '1', 'system', 'Admin Log Out from application from address 127.0.0.1', '2015-08-30 17:54:54'),
(146, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2015-08-31 01:45:48'),
(147, 'staff', '1', 'system', 'update content data (Help On Usage) with contentname ()', '2015-08-31 01:48:10'),
(148, 'staff', '1', 'system', 'update content data (Help On Usage) with contentname ()', '2015-08-31 01:56:22'),
(149, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2015-08-31 12:05:11'),
(150, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2015-08-31 14:24:07'),
(151, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2015-08-31 16:11:24'),
(152, 'staff', '1', 'system', 'Admin change application global configuration', '2015-08-31 16:11:44'),
(153, 'staff', '1', 'system', 'update content data (ETD Information) with contentname ()', '2015-08-31 16:51:28'),
(154, 'staff', '1', 'system', 'Admin Log Out from application from address 127.0.0.1', '2015-08-31 16:53:38'),
(155, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2015-08-31 16:56:01'),
(156, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2015-09-08 19:03:59'),
(157, 'staff', '1', 'system', 'Admin Log Out from application from address 127.0.0.1', '2015-09-08 19:04:24'),
(158, 'staff', 'staff', 'Login', 'Login success for user staff from address 127.0.0.1', '2015-09-08 19:04:28'),
(159, 'staff', '2', 'system', 'staff Log Out from application from address 127.0.0.1', '2015-09-08 19:04:47'),
(160, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2015-09-08 19:04:51'),
(161, 'staff', '1', 'system', 'Admin update user data (Student) with username (student)', '2015-09-08 19:05:34'),
(162, 'staff', '1', 'system', 'Admin Log Out from application from address 127.0.0.1', '2015-09-08 19:05:52'),
(163, 'staff', 'student', 'Login', 'Login success for user student from address 127.0.0.1', '2015-09-08 19:05:58'),
(164, 'staff', '2', 'system', 'Student Log Out from application from address 127.0.0.1', '2015-09-08 19:06:01'),
(165, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2015-09-27 06:06:33'),
(166, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2015-09-27 10:06:23'),
(167, 'staff', '1', 'system', 'update content data (ETD Information) with contentname ()', '2015-09-27 10:55:13'),
(168, 'staff', '1', 'system', 'Admin DELETE content (ETD Information)', '2015-09-27 10:57:56'),
(169, 'staff', '1', 'system', 'update content data (Welcome To Admin Page) with contentname ()', '2015-09-27 10:59:35'),
(170, 'staff', '1', 'system', 'Admin Log Out from application from address ::1', '2015-09-27 11:01:16'),
(171, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2015-09-28 10:32:18'),
(172, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (test8) with biblio_id (22)', '2015-09-28 10:33:48'),
(173, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (test6) with biblio_id (21)', '2015-09-28 10:33:48'),
(174, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (test5) with biblio_id (20)', '2015-09-28 10:33:48'),
(175, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (test4) with biblio_id (19)', '2015-09-28 10:33:48'),
(176, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (test3) with biblio_id (18)', '2015-09-28 10:33:48'),
(177, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (test1) with biblio_id (17)', '2015-09-28 10:33:48'),
(178, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (Web application architecture : principles, protocols, and practices) with biblio_id (7)', '2015-09-28 10:33:48'),
(179, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (Information Architecture for the World Wide Web: Designing Large-Scale Web Sites) with biblio_id (11)', '2015-09-28 10:33:48'),
(180, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (Producing open source software : how to run a successful free software project) with biblio_id (5)', '2015-09-28 10:33:48'),
(181, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (Library and Information Center Management) with biblio_id (10)', '2015-09-28 10:33:48'),
(182, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (The organization of information) with biblio_id (9)', '2015-09-28 10:33:48'),
(183, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (PHP 5 for dummies) with biblio_id (1)', '2015-09-28 10:33:48'),
(184, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (The Definitive Guide to MySQL 5) with biblio_id (3)', '2015-09-28 10:33:48'),
(185, 'staff', '1', 'bibliography', 'Admin upload file (Cara bergabung katalog induk banten.pdf)', '2015-09-28 11:00:20'),
(186, 'staff', '1', 'bibliography', 'Admin upload image file wikiversity-logo.png.png', '2015-09-28 11:00:36'),
(187, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (HUBUNGAN PEMBERIAN IMUNISASI DASAR LENGKAP TERHADAP TUMBUH KEMBANG BALITA USIA 9-12 BULAN DI PUSKESMAS PONDOK RANGGON, JAKARTA TIMUR PERIODE APRIL 2015) with biblio_id (23)', '2015-09-28 11:00:36'),
(188, 'staff', '1', 'bibliography', 'Admin insert item data (FK-SKRIPSI-2015-0032) with title (HUBUNGAN PEMBERIAN IMUNISASI DASAR LENGKAP TERHADAP TUMBUH KEMBANG BALITA USIA 9-12 BULAN DI PUSKESMAS PONDOK RANGGON, JAKARTA TIMUR PERIODE APRIL 2015)', '2015-09-28 11:05:01'),
(189, 'staff', '1', 'bibliography', 'Admin update bibliographic data (HUBUNGAN PEMBERIAN IMUNISASI DASAR LENGKAP TERHADAP TUMBUH KEMBANG BALITA USIA 9-12 BULAN DI PUSKESMAS PONDOK RANGGON, JAKARTA TIMUR PERIODE APRIL 2015) with biblio_id ()', '2015-09-28 11:05:08'),
(190, 'staff', '1', 'bibliography', 'Admin upload file (tes2.pdf)', '2015-09-28 11:36:34'),
(191, 'staff', '1', 'bibliography', 'Admin upload image file wikiversity-logo.png.png', '2015-09-28 11:36:45'),
(192, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (HUBUNGAN RESPON RADIOKEMOTERAPI TERHADAP PASIEN KARSINOMA NASOFARING SETELAH 1 TAHUN PEMBERIAN `BERDASARKAN KLASIFIKASI WHO) with biblio_id (24)', '2015-09-28 11:36:45'),
(193, 'staff', '1', 'bibliography', 'Admin insert item data (FK-SKRIPSI-2015-0031) with title (HUBUNGAN RESPON RADIOKEMOTERAPI TERHADAP PASIEN KARSINOMA NASOFARING SETELAH 1 TAHUN PEMBERIAN `BERDASARKAN KLASIFIKASI WHO)', '2015-09-28 11:39:47'),
(194, 'staff', '1', 'bibliography', 'Admin update bibliographic data (HUBUNGAN RESPON RADIOKEMOTERAPI TERHADAP PASIEN KARSINOMA NASOFARING SETELAH 1 TAHUN PEMBERIAN `BERDASARKAN KLASIFIKASI WHO) with biblio_id ()', '2015-09-28 11:39:57'),
(195, 'staff', '1', 'bibliography', 'Admin upload file (tes1.pdf)', '2015-09-28 11:48:45'),
(196, 'staff', '1', 'bibliography', 'Admin updating file attachment data', '2015-09-28 11:48:45'),
(197, 'staff', '1', 'bibliography', 'Admin update bibliographic data (HUBUNGAN PEMBERIAN IMUNISASI DASAR LENGKAP TERHADAP TUMBUH KEMBANG BALITA USIA 9-12 BULAN DI PUSKESMAS PONDOK RANGGON, JAKARTA TIMUR PERIODE APRIL 2015) with biblio_id ()', '2015-09-28 11:49:52'),
(198, 'staff', '1', 'bibliography', 'Admin upload file (tes3.pdf)', '2015-09-28 12:46:01'),
(199, 'staff', '1', 'bibliography', 'Admin upload image file wikiversity-logo.png.png', '2015-09-28 12:46:15'),
(200, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (ANALISIS FAKTOR RISIKO KELUHAN NYERI PUNGGUNG BAWAH (NPB) PADA MAHASISWA TINGKAT III FK UPN VETERAN JAKARTA) with biblio_id (25)', '2015-09-28 12:46:15'),
(201, 'staff', '1', 'bibliography', 'Admin insert item data (FK-SKRIPSI-2015-0013) with title (ANALISIS FAKTOR RISIKO KELUHAN NYERI PUNGGUNG BAWAH (NPB) PADA MAHASISWA TINGKAT III FK UPN VETERAN JAKARTA)', '2015-09-28 12:46:49'),
(202, 'staff', '1', 'bibliography', 'Admin update bibliographic data (ANALISIS FAKTOR RISIKO KELUHAN NYERI PUNGGUNG BAWAH (NPB) PADA MAHASISWA TINGKAT III FK UPN VETERAN JAKARTA) with biblio_id ()', '2015-09-28 12:46:56'),
(203, 'staff', '1', 'bibliography', 'Admin update bibliographic data (HUBUNGAN RESPON RADIOKEMOTERAPI TERHADAP PASIEN KARSINOMA NASOFARING SETELAH 1 TAHUN PEMBERIAN `BERDASARKAN KLASIFIKASI WHO) with biblio_id ()', '2015-09-28 12:48:13'),
(204, 'staff', '1', 'bibliography', 'Admin update bibliographic data (HUBUNGAN RESPON RADIOKEMOTERAPI TERHADAP PASIEN KARSINOMA NASOFARING SETELAH 1 TAHUN PEMBERIAN `BERDASARKAN KLASIFIKASI WHO) with biblio_id ()', '2015-09-28 12:56:44'),
(205, 'staff', '1', 'bibliography', 'Admin upload file (tes4.pdf)', '2015-09-28 13:04:36'),
(206, 'staff', '1', 'bibliography', 'Admin upload image file wikiversity-logo.png.png', '2015-09-28 13:06:31'),
(207, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (UJI EFEKTIVITAS ANTIDIARE EKSTRAK ETANOL KULIT BUAH RAMBUTAN HIJAU (NEPHELIUM LAPPACEUM L.) PADA MENCIT PUTIH JANTAN YANG DIINDUKSI OLEUM RICINI) with biblio_id (26)', '2015-09-28 13:06:31'),
(208, 'staff', '1', 'bibliography', 'Admin insert item data (FK-SKRIPSI-2015-0010) with title (UJI EFEKTIVITAS ANTIDIARE EKSTRAK ETANOL KULIT BUAH RAMBUTAN HIJAU (NEPHELIUM LAPPACEUM L.) PADA MENCIT PUTIH JANTAN YANG DIINDUKSI OLEUM RICINI)', '2015-09-28 13:07:05'),
(209, 'staff', '1', 'bibliography', 'Admin update bibliographic data (UJI EFEKTIVITAS ANTIDIARE EKSTRAK ETANOL KULIT BUAH RAMBUTAN HIJAU (NEPHELIUM LAPPACEUM L.) PADA MENCIT PUTIH JANTAN YANG DIINDUKSI OLEUM RICINI) with biblio_id ()', '2015-09-28 13:07:13'),
(210, 'staff', '1', 'bibliography', 'Admin upload file (tes5.pdf)', '2015-09-28 13:22:57'),
(211, 'staff', '1', 'bibliography', 'Admin upload image file wikiversity-logo.png.png', '2015-09-28 13:23:07'),
(212, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (PENGARUH TINGKAT BEBAN KERJA MENTAL TERHADAP PEMILIHAN STRATEGI KOPING PADA PENGEMUDI TAKSI DI KOTA DEPOK) with biblio_id (27)', '2015-09-28 13:23:07'),
(213, 'staff', '1', 'bibliography', 'Admin insert item data (FK-SKRIPSI-2015-0009) with title (PENGARUH TINGKAT BEBAN KERJA MENTAL TERHADAP PEMILIHAN STRATEGI KOPING PADA PENGEMUDI TAKSI DI KOTA DEPOK)', '2015-09-28 13:23:40'),
(214, 'staff', '1', 'bibliography', 'Admin update bibliographic data (PENGARUH TINGKAT BEBAN KERJA MENTAL TERHADAP PEMILIHAN STRATEGI KOPING PADA PENGEMUDI TAKSI DI KOTA DEPOK) with biblio_id ()', '2015-09-28 13:23:45'),
(215, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2015-09-30 11:00:28'),
(216, 'staff', '1', 'system', 'update content data (ETD Information) with contentname ()', '2015-09-30 11:12:06'),
(217, 'staff', '1', 'system', 'update content data (ETD Information) with contentname ()', '2015-09-30 11:16:32'),
(218, 'staff', '1', 'system', 'update content data (ETD Information) with contentname ()', '2015-09-30 11:18:44'),
(219, 'staff', '1', 'system', 'update content data (ETD Information) with contentname ()', '2015-09-30 11:20:02'),
(220, 'staff', '1', 'system', 'update content data (ETD Information) with contentname ()', '2015-09-30 11:36:29'),
(221, 'staff', '1', 'bibliography', 'Admin upload image file wikiversity-logo.png.png', '2015-09-30 11:47:58'),
(222, 'staff', '1', 'bibliography', 'Admin update bibliographic data (PENGARUH TINGKAT BEBAN KERJA MENTAL TERHADAP PEMILIHAN STRATEGI KOPING PADA PENGEMUDI TAKSI DI KOTA DEPOK) with biblio_id ()', '2015-09-30 11:47:58'),
(223, 'staff', '1', 'system', 'Admin Log Out from application from address ::1', '2015-09-30 13:44:00'),
(224, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2015-10-01 08:51:21'),
(225, 'staff', '1', 'system', 'Admin Log Out from application from address ::1', '2015-10-01 09:04:01'),
(226, 'staff', 'student', 'Login', 'Login success for user student from address ::1', '2015-10-01 09:04:10'),
(227, 'staff', '2', 'system', 'Student Log Out from application from address ::1', '2015-10-01 09:04:49'),
(228, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2015-10-01 09:04:55'),
(229, 'staff', '1', 'system', 'Admin Log Out from application from address ::1', '2015-10-01 09:05:38'),
(230, 'staff', 'student', 'Login', 'Login success for user student from address ::1', '2015-10-01 09:05:48'),
(231, 'staff', '2', 'bibliography', 'Student upload file (Time Line.pdf)', '2015-10-01 09:07:46'),
(232, 'staff', '2', 'bibliography', 'Student upload image file wikiversity-logo.png.png', '2015-10-01 09:07:53'),
(233, 'staff', '2', 'bibliography', 'Student insert bibliographic data (Matematika dasar) with biblio_id (28)', '2015-10-01 09:07:53'),
(234, 'staff', '2', 'system', 'Student Log Out from application from address ::1', '2015-10-01 09:08:07'),
(235, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2015-10-01 10:07:44'),
(236, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (Matematika dasar) with biblio_id (28)', '2015-10-01 10:07:59'),
(237, 'staff', '1', 'system', 'Admin Log Out from application from address ::1', '2015-10-01 10:08:06'),
(238, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2015-10-02 09:59:44'),
(239, 'staff', '1', 'system', 'update content data (ETD Information) with contentname ()', '2015-10-02 10:01:04'),
(240, 'staff', '1', 'system', 'Admin Log Out from application from address ::1', '2015-10-02 10:01:09'),
(241, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2015-11-02 07:53:54'),
(242, 'staff', '1', 'system', 'update content data (Welcome to Etd) with contentname ()', '2015-11-02 07:54:56'),
(243, 'staff', '1', 'system', 'update content data (Homepage Info) with contentname ()', '2015-11-02 07:55:44'),
(244, 'staff', '1', 'system', 'Admin Log Out from application from address ::1', '2015-11-02 09:31:24'),
(245, 'staff', '', 'system', 'Log Out from application from address ::1', '2015-11-02 09:32:05'),
(246, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2015-11-02 12:51:07'),
(247, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2015-11-04 17:45:46'),
(248, 'staff', '1', 'bibliography', 'Admin update item data (FK-SKRIPSI-2015-0009) with title (PENGARUH TINGKAT BEBAN KERJA MENTAL TERHADAP PEMILIHAN STRATEGI KOPING PADA PENGEMUDI TAKSI DI KOTA DEPOK)', '2015-11-04 17:59:29'),
(249, 'staff', '1', 'bibliography', 'Admin update bibliographic data (PENGARUH TINGKAT BEBAN KERJA MENTAL TERHADAP PEMILIHAN STRATEGI KOPING PADA PENGEMUDI TAKSI DI KOTA DEPOK) with biblio_id ()', '2015-11-04 17:59:37'),
(250, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2015-11-05 11:22:17'),
(251, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2015-11-06 07:52:36'),
(252, 'staff', '1', 'system', 'update content data (ETD Information) with contentname ()', '2015-11-06 08:10:37'),
(253, 'staff', '1', 'system', 'update content data (ETD Information) with contentname ()', '2015-11-06 08:11:24');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `realname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `passwd` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_type` smallint(2) DEFAULT NULL,
  `user_image` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `social_media` text COLLATE utf8_unicode_ci,
  `last_login` datetime DEFAULT NULL,
  `last_login_ip` char(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `groups` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` date DEFAULT '0000-00-00',
  `last_update` date DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  KEY `realname` (`realname`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `realname`, `passwd`, `email`, `user_type`, `user_image`, `social_media`, `last_login`, `last_login_ip`, `groups`, `input_date`, `last_update`) VALUES
(1, 'admin', 'Admin', '21232f297a57a5a743894a0e4a801fc3', NULL, NULL, NULL, NULL, '2015-11-06 07:52:36', '::1', 'a:1:{i:0;s:1:"1";}', '2014-04-21', '2014-04-21'),
(2, 'student', 'Student', 'cd73502828457d15655bbd7a63fb0bc8', 'staff@gmail.com', 3, NULL, NULL, '2015-10-01 09:05:48', '::1', 'a:1:{i:0;s:1:"3";}', '2015-04-26', '2015-09-08');

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE IF NOT EXISTS `user_group` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL,
  PRIMARY KEY (`group_id`),
  UNIQUE KEY `group_name` (`group_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`group_id`, `group_name`, `input_date`, `last_update`) VALUES
(1, 'Administrator', '2014-04-21', '2014-04-21'),
(3, 'Students', '2015-05-04', '2015-05-04');

-- --------------------------------------------------------

--
-- Table structure for table `visitor_count`
--

CREATE TABLE IF NOT EXISTS `visitor_count` (
  `visitor_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `institution` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `checkin_date` datetime NOT NULL,
  PRIMARY KEY (`visitor_id`),
  KEY `member_id` (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
