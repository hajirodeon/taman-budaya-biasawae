-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 26 Jul 2021 pada 18.02
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `taman_budaya_biasawae`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `adminx`
--

CREATE TABLE `adminx` (
  `kd` varchar(50) NOT NULL,
  `usernamex` varchar(100) DEFAULT NULL,
  `passwordx` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `adminx`
--

INSERT INTO `adminx` (`kd`, `usernamex`, `passwordx`, `postdate`) VALUES
('21232f297a57a5a743894a0e4a801fc3', 'admin', '21232f297a57a5a743894a0e4a801fc3', '2021-04-09 09:43:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cp_agenda`
--

CREATE TABLE `cp_agenda` (
  `kd` varchar(50) NOT NULL,
  `tgl_mulai` date DEFAULT NULL,
  `tgl_selesai` date DEFAULT NULL,
  `waktu` varchar(100) DEFAULT NULL,
  `judul` longtext DEFAULT NULL,
  `biaya` varchar(100) DEFAULT NULL,
  `isi` longtext DEFAULT NULL,
  `target` longtext DEFAULT NULL,
  `syarat` longtext DEFAULT NULL,
  `filex` longtext DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `cp_agenda`
--

INSERT INTO `cp_agenda` (`kd`, `tgl_mulai`, `tgl_selesai`, `waktu`, `judul`, `biaya`, `isi`, `target`, `syarat`, `filex`, `postdate`) VALUES
('a217b824384785ed13fffce9f29dd13f', '2021-06-04', '2021-06-07', NULL, 'agenda 2', 'gratis', 'isi agenda 2', 'umum', 'tahu tentang seni budaya', 'a217b824384785ed13fffce9f29dd13f-1.png', '2021-06-06 14:01:38'),
('09938bbec4bc42efab58dbdfb282d16f', '2021-06-04', '2021-06-04', NULL, 'agenda 1', 'GRATIS', 'isi agenda 2', 'mahasiswa', 'bawa kartu mahasiswa', '09938bbec4bc42efab58dbdfb282d16f-1.png', '2021-06-03 22:28:54'),
('dbd6108f467f2dbf551353419f856ed1', '2021-06-06', '2021-06-06', '20:00', 'acara 1', 'gratis', 'xstrix', 'xstrix', 'xstrix', 'dbd6108f467f2dbf551353419f856ed1-1.png', '2021-06-06 14:11:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cp_artikel`
--

CREATE TABLE `cp_artikel` (
  `kd` varchar(50) NOT NULL,
  `kategori` varchar(100) DEFAULT NULL,
  `seniman_kd` varchar(50) DEFAULT NULL,
  `seniman_nama` varchar(100) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `isi` longtext DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `filex` longtext DEFAULT NULL,
  `acc` enum('true','false') DEFAULT 'false',
  `acc_judul` varchar(255) DEFAULT NULL,
  `acc_isi` longtext DEFAULT NULL,
  `acc_postdate` datetime DEFAULT NULL,
  `acc_ket` varchar(100) DEFAULT NULL,
  `jml_dilihat` varchar(100) DEFAULT NULL,
  `jml_komentar` varchar(100) DEFAULT NULL,
  `jml_suka` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cp_artikel`
--

INSERT INTO `cp_artikel` (`kd`, `kategori`, `seniman_kd`, `seniman_nama`, `judul`, `isi`, `postdate`, `filex`, `acc`, `acc_judul`, `acc_isi`, `acc_postdate`, `acc_ket`, `jml_dilihat`, `jml_komentar`, `jml_suka`) VALUES
('5f6851889b477b504c314b6f5014176b', 'Berita', 'c4ca4238a0b923820dcc509a6f75849b', 'Sanggar Tari Iswara', 'artikel 3', 'xkkirixpxkkananxisi artikel 3xkkirixxgmringxpxkkananx', '2021-07-26 17:30:42', '5f6851889b477b504c314b6f5014176b-1.png', 'false', NULL, NULL, NULL, NULL, '', '', ''),
('805862de5e84e44049188e62971b12b6', 'Berita', 'c4ca4238a0b923820dcc509a6f75849b', 'Sanggar Tari Iswara', 'artikel 2', 'xkkirixpxkkananxisi artikel 2xkkirixxgmringxpxkkananx', '2021-07-26 17:30:28', '805862de5e84e44049188e62971b12b6-1.png', 'false', NULL, NULL, NULL, NULL, '', '', ''),
('096b9f0648040083ccb4a90463c1ba04', 'Opini', 'c4ca4238a0b923820dcc509a6f75849b', 'Sanggar Tari Iswara', 'artikel 1', 'xkkirixpxkkananxisi artikel 1xkkirixxgmringxpxkkananx', '2021-07-26 17:30:13', '096b9f0648040083ccb4a90463c1ba04-1.png', 'false', NULL, NULL, NULL, NULL, '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cp_bukutamu`
--

CREATE TABLE `cp_bukutamu` (
  `kd` varchar(50) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` longtext DEFAULT NULL,
  `email` longtext DEFAULT NULL,
  `telp` varchar(100) DEFAULT NULL,
  `subjek` varchar(100) DEFAULT NULL,
  `isi` longtext DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `aktif` enum('true','false') DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cp_bukutamu`
--

INSERT INTO `cp_bukutamu` (`kd`, `nama`, `alamat`, `email`, `telp`, `subjek`, `isi`, `postdate`, `aktif`) VALUES
('3f00a6125e25ae4b02d3de51dd68d99f', '12', '12', '1234xtkeongxgmail.com', '12', '12', '12', '2021-07-26 18:01:09', 'false');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cp_foto_seniman`
--

CREATE TABLE `cp_foto_seniman` (
  `kd` varchar(50) NOT NULL,
  `seniman_kd` varchar(50) DEFAULT NULL,
  `seniman_nama` varchar(100) DEFAULT NULL,
  `nama` longtext DEFAULT NULL,
  `filex` longtext DEFAULT NULL,
  `ket` varchar(100) DEFAULT NULL,
  `acc` enum('true','false') NOT NULL DEFAULT 'false',
  `acc_postdate` datetime DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `cp_foto_seniman`
--

INSERT INTO `cp_foto_seniman` (`kd`, `seniman_kd`, `seniman_nama`, `nama`, `filex`, `ket`, `acc`, `acc_postdate`, `postdate`) VALUES
('5f6851889b477b504c314b6f5014176b', 'c4ca4238a0b923820dcc509a6f75849b', 'Sanggar Tari Iswara', '123', '5f6851889b477b504c314b6f5014176b-1.png', '123', 'false', NULL, '2021-06-08 03:00:54'),
('9ff6536778cde8dfbd3968fc366196de', 'c4ca4238a0b923820dcc509a6f75849b', 'Sanggar Tari Iswara', 'foto1', '9ff6536778cde8dfbd3968fc366196de-1.png', 'foto1', 'false', NULL, '2021-06-08 03:05:17'),
('d6e490c83d667ebdc99708f005a4de6f', 'c4ca4238a0b923820dcc509a6f75849b', 'Sanggar Tari Iswara', 'foto2', 'd6e490c83d667ebdc99708f005a4de6f-1.png', 'foto2', 'false', NULL, '2021-06-08 03:05:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cp_g_foto`
--

CREATE TABLE `cp_g_foto` (
  `kd` varchar(50) NOT NULL,
  `nama` longtext DEFAULT NULL,
  `filex` longtext DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `cp_g_foto`
--

INSERT INTO `cp_g_foto` (`kd`, `nama`, `filex`, `postdate`) VALUES
('38f072755f4d6a93d86348f933386c07', 'foto1', '38f072755f4d6a93d86348f933386c07-1.png', '2021-07-26 17:25:51'),
('14b27d8b14ce02411cf89829b9aa4fd7', 'foto2', '14b27d8b14ce02411cf89829b9aa4fd7-1.png', '2021-07-26 17:25:59'),
('4337d4fb0820a9d0c431f7b16eb0e26b', 'foto3', '4337d4fb0820a9d0c431f7b16eb0e26b-1.png', '2021-07-26 17:26:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cp_m_slideshow`
--

CREATE TABLE `cp_m_slideshow` (
  `kd` varchar(50) NOT NULL,
  `filex` longtext DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `isi` longtext DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `urlnya` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `cp_m_slideshow`
--

INSERT INTO `cp_m_slideshow` (`kd`, `filex`, `nama`, `isi`, `postdate`, `urlnya`) VALUES
('24c1f731165093d01521d2199afd9012', '24c1f731165093d01521d2199afd9012-1.jpg', 'taman budaya biasawae', 'Taman Budaya BIASAWAE', '2021-07-26 17:24:56', 'github.comxgmringxhajirodeon'),
('57dad34929d06d5841c8f3305efef505', '57dad34929d06d5841c8f3305efef505-1.jpg', 'taman budaya biasawae', 'Taman Budaya BIASAWAE', '2021-07-26 17:25:10', 'github.comxgmringxhajirodeon'),
('8eb8ce076e1e3f70fcc8b44e436209a3', '8eb8ce076e1e3f70fcc8b44e436209a3-1.jpg', 'taman budaya biasawae', 'Taman Budaya BIASAWAE', '2021-07-26 17:25:25', 'github.comxgmringxhajirodeon');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cp_newsletter`
--

CREATE TABLE `cp_newsletter` (
  `kd` varchar(50) NOT NULL,
  `email` longtext DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cp_newsletter`
--

INSERT INTO `cp_newsletter` (`kd`, `email`, `postdate`) VALUES
('34be863edb2901604596f00884244517', 'hajirodeonxtkeongxgmail.com', '2021-05-05 04:42:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cp_profil`
--

CREATE TABLE `cp_profil` (
  `kd` varchar(50) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `isi` longtext DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `x_lat` longtext DEFAULT NULL,
  `x_long` longtext DEFAULT NULL,
  `fb` longtext DEFAULT NULL,
  `twitter` longtext DEFAULT NULL,
  `youtube` longtext DEFAULT NULL,
  `wa` longtext DEFAULT NULL,
  `alamat` longtext DEFAULT NULL,
  `telp` longtext DEFAULT NULL,
  `web` longtext DEFAULT NULL,
  `fax` longtext DEFAULT NULL,
  `email` longtext DEFAULT NULL,
  `filex` longtext DEFAULT NULL,
  `alamat_googlemap` longtext DEFAULT NULL,
  `instagram` longtext DEFAULT NULL,
  `waktu_buka` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cp_profil`
--

INSERT INTO `cp_profil` (`kd`, `judul`, `isi`, `postdate`, `x_lat`, `x_long`, `fb`, `twitter`, `youtube`, `wa`, `alamat`, `telp`, `web`, `fax`, `email`, `filex`, `alamat_googlemap`, `instagram`, `waktu_buka`) VALUES
('e807f1fcf82d132f9bb018ca6738a19f', 'Taman Budaya BIASAWAE', 'Taman Budaya BIASAWAE', '2021-07-26 17:21:35', '-7.002953', '110.4242736', 'hajirodeonxstrix', 'hajirodeon', 'hajirodeon', '0818298854', 'Jl. Raya BIASAWAE...', '+62818298854', 'http:xgmringxxgmringxgithub.comxgmringxhajirodeon', 'xstrix', 'hajirodeonxtkeongxgmail.com', 'logo.jpg', 'Jl. Sriwijaya No.29, Tegalsari, Kec. Candisari, Kota Semarang, Jawa Tengah 50614, Indonesia', 'hajirodeon', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cp_visitor`
--

CREATE TABLE `cp_visitor` (
  `kd` varchar(50) NOT NULL,
  `ipnya` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `online` enum('true','false') DEFAULT 'false',
  `lat_x` longtext DEFAULT NULL,
  `lat_y` longtext DEFAULT NULL,
  `alamat_googlemap` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `cp_visitor`
--

INSERT INTO `cp_visitor` (`kd`, `ipnya`, `postdate`, `online`, `lat_x`, `lat_y`, `alamat_googlemap`) VALUES
('96ba70144a0db85044f6b8fd3422d1a9', '23.106.56.21', '2021-05-05 04:47:24', 'false', NULL, NULL, NULL),
('a771e5a3a6c295359fe71def5b50c351', '23.106.56.21', '2021-05-05 04:47:24', 'false', NULL, NULL, NULL),
('e329b4c00776b4955a43fbc0aa8113e9', '23.106.56.21', '2021-05-05 04:47:25', 'false', NULL, NULL, NULL),
('fd13296f5360fb9b3dd1a4b160c0a5b2', '23.106.56.21', '2021-05-05 04:47:25', 'false', NULL, NULL, NULL),
('51ebd9ebfc5bec42bab3dd0399b6487f', '23.106.56.21', '2021-05-05 04:47:26', 'false', NULL, NULL, NULL),
('60b4bb600087538557a476f38bea200e', '23.106.56.21', '2021-05-05 04:47:26', 'false', NULL, NULL, NULL),
('bbacc8874f8a933953be683f897e5c56', '103.101.52.181', '2021-05-05 07:28:24', 'false', NULL, NULL, NULL),
('c43a13b26c6bd70b0087f97caba0233d', '23.106.56.43', '2021-05-05 07:34:09', 'false', NULL, NULL, NULL),
('1bdfa19635c69c36df9fa27d74118142', '103.101.52.181', '2021-05-05 07:35:21', 'false', NULL, NULL, NULL),
('99c65b71392ba604b2256f3c97e52873', '103.101.52.181', '2021-05-05 07:44:05', 'false', NULL, NULL, NULL),
('1c1709282377aaa8c8225711314fb7ec', '103.101.52.181', '2021-05-05 08:06:25', 'false', NULL, NULL, NULL),
('783a215db1f4466be1e1b4a11250e716', '103.101.52.181', '2021-05-05 08:11:27', 'false', NULL, NULL, NULL),
('2246c3330d240263cbd129f284abdb16', '23.106.56.43', '2021-05-05 08:11:41', 'false', NULL, NULL, NULL),
('0144c5dbd4edc18b85f08a2e9c7dabb8', '103.101.52.181', '2021-05-05 08:11:46', 'false', NULL, NULL, NULL),
('c3f94c11b65c86d2a7558c77660ff7c1', '103.101.52.181', '2021-05-05 08:13:05', 'false', NULL, NULL, NULL),
('f035ed9bc6be0e58763e11c4cf415dc2', '103.101.52.181', '2021-05-05 08:13:20', 'false', NULL, NULL, NULL),
('db40e19b0a33584665db828b836b43b7', '23.106.56.43', '2021-05-05 08:13:24', 'false', NULL, NULL, NULL),
('4c2ef04adc3cd880ca5de5c6e808a6fe', '23.106.56.43', '2021-05-05 08:14:08', 'false', NULL, NULL, NULL),
('b4dd460cfa8a1e351c90093f7c8f1d6b', '103.101.52.181', '2021-05-05 08:20:06', 'false', NULL, NULL, NULL),
('04ca1c5f5ec4b2c4f2596444a8d7b64d', '103.101.52.181', '2021-05-05 08:22:57', 'false', NULL, NULL, NULL),
('28c87ae2d8cc3064a153e8ccc90ba38e', '23.106.56.13', '2021-05-05 09:11:11', 'false', NULL, NULL, NULL),
('e6305069c55731dfd9aee51bb92dfceb', '23.106.56.13', '2021-05-05 09:13:15', 'false', NULL, NULL, NULL),
('24a22dc2882dfdbcc0a3a2dabccc13c2', '103.101.52.181', '2021-05-05 09:17:51', 'false', NULL, NULL, NULL),
('b5067f2fb013bb6bfdcf6d57d6b26655', '23.106.56.21', '2021-05-05 04:47:16', 'false', NULL, NULL, NULL),
('c70d01a5ce9b3c292bfc53ff9ad49eff', '23.106.56.21', '2021-05-05 04:45:32', 'false', NULL, NULL, NULL),
('e3dc642505dc48955d992288d26e8329', '23.106.56.21', '2021-05-05 04:45:31', 'false', NULL, NULL, NULL),
('4094449e36ed9b0a3b6ed3ce06039cc6', '23.106.56.21', '2021-05-05 04:45:31', 'false', NULL, NULL, NULL),
('c8efb530894e0f30c8ce5fdb6aa2097e', '23.106.56.21', '2021-05-05 04:45:30', 'false', NULL, NULL, NULL),
('9906d2446a80699691f3f89c049c965c', '23.106.56.21', '2021-05-05 04:45:25', 'false', NULL, NULL, NULL),
('d7c53a61183f01f4abd1a4fb26e8a9f5', '23.106.56.21', '2021-05-05 04:45:23', 'false', NULL, NULL, NULL),
('d5c29d82771a3209bf768443f8d7c1d5', '23.106.56.21', '2021-05-05 04:44:50', 'false', NULL, NULL, NULL),
('1919e0661d6b1dee90404450b27f62fb', '23.106.56.21', '2021-05-05 04:44:37', 'false', NULL, NULL, NULL),
('387f417db49f21964baad0096d731e8b', '23.106.56.21', '2021-05-05 04:44:34', 'false', NULL, NULL, NULL),
('c75e844a0777d29f9e46784ccbd24c42', '23.106.56.21', '2021-05-05 04:44:31', 'false', NULL, NULL, NULL),
('9bc19ee49f14cabc8c987f6e3803e9ed', '23.106.56.21', '2021-05-05 04:44:23', 'false', NULL, NULL, NULL),
('960c4f7fb3899d1bc5891b4c45dfb0e5', '23.106.56.21', '2021-05-05 04:44:20', 'false', NULL, NULL, NULL),
('d32cbc4b9722ce5005bebc0cd8de3ac6', '23.106.56.21', '2021-05-05 04:42:57', 'false', NULL, NULL, NULL),
('212af081e5d13fc19146e0efaf200daa', '23.106.56.21', '2021-05-05 04:42:41', 'false', NULL, NULL, NULL),
('c2ed0af3632a1e34774ffcd677822b2f', '23.106.56.21', '2021-05-05 04:34:55', 'false', NULL, NULL, NULL),
('665a6310614db10d75c650d9df9b99c3', '23.106.56.21', '2021-05-05 04:33:19', 'false', NULL, NULL, NULL),
('5abd91d031d3ebfacff5cd4e86065751', '23.106.56.21', '2021-05-05 04:33:11', 'false', NULL, NULL, NULL),
('07a96f72bdb9a1772f8a85dd998da165', '103.101.52.181', '2021-05-05 11:02:54', 'true', NULL, NULL, NULL),
('c2911927f6ae506b9116c002464df605', '36.81.37.110', '2021-05-06 17:33:02', 'false', NULL, NULL, NULL),
('fedadb1b859b088664e27a1378a932fb', '36.81.37.110', '2021-05-06 18:45:13', 'true', NULL, NULL, NULL),
('480fb46341c874d63ea1b6cae7fe80d8', '36.81.37.110', '2021-05-06 18:45:51', 'true', NULL, NULL, NULL),
('da2a009a5c5806e94db6ec0991b291e3', '36.81.37.110', '2021-05-06 18:46:46', 'true', NULL, NULL, NULL),
('25f2a24f1b54373208da18d80144dd31', '36.81.37.110', '2021-05-06 18:49:14', 'true', NULL, NULL, NULL),
('2e1431126ada84ebcff1fb1de3eaa2b4', '36.81.37.110', '2021-05-06 18:49:50', 'true', NULL, NULL, NULL),
('d9522a4d55be6ce93dbc32f0d9ed2b51', '103.101.52.181', '2021-05-07 07:07:01', 'false', NULL, NULL, NULL),
('e16938f295703c35b05838de0a8a7f13', '103.101.52.181', '2021-05-07 07:11:55', 'false', NULL, NULL, NULL),
('681001cc0ef6aa196a9b1d28fc359ab4', '36.81.37.110', '2021-05-07 16:52:16', 'true', NULL, NULL, NULL),
('b70fa3cbee3733fdc19defe7bc48b8de', '173.208.246.43', '2021-05-08 02:41:58', 'false', NULL, NULL, NULL),
('13516c9b8361d1ad07e5d46f55a23a6d', '23.106.56.35', '2021-05-08 04:10:22', 'true', NULL, NULL, NULL),
('4b8dd914d75c7b2c57a92d40298752a9', '23.106.56.35', '2021-05-08 04:10:41', 'true', NULL, NULL, NULL),
('90a108d4735717f9ce68b4ec1d2a7c8d', '23.106.56.35', '2021-05-08 04:11:39', 'true', NULL, NULL, NULL),
('f46acf5b1c4cf5f9307800da61505efb', '23.106.56.35', '2021-05-08 04:11:40', 'true', NULL, NULL, NULL),
('5b8c22e18f4f90fa7a9cfe4ecaf6225f', '23.106.56.35', '2021-05-08 04:11:41', 'true', NULL, NULL, NULL),
('29624018aea820944833ecfc7b8408da', '23.106.56.35', '2021-05-08 04:11:46', 'true', NULL, NULL, NULL),
('9053f757a0babeefa25d938d3ee6ec17', '23.106.56.35', '2021-05-08 04:12:02', 'true', NULL, NULL, NULL),
('ad16fd2e66e8636f52b41ced152b7f3a', '23.106.56.35', '2021-05-08 04:12:03', 'true', NULL, NULL, NULL),
('7a0d4f276f5707909f73f03a86bb6305', '23.106.56.35', '2021-05-08 04:14:19', 'true', NULL, NULL, NULL),
('9c035de144fcd7a221ca87fc1b8a352c', '23.106.56.35', '2021-05-08 04:14:20', 'true', NULL, NULL, NULL),
('3cf226c57a01aed54da9cd4c7644e81c', '23.106.56.35', '2021-05-08 04:15:15', 'true', NULL, NULL, NULL),
('d81f9322950a95f808f0caaf79a33ecd', '23.106.56.35', '2021-05-08 04:15:17', 'true', NULL, NULL, NULL),
('21ae394e12d12e8e7c0466c9a8fe9329', '23.106.56.35', '2021-05-08 04:22:02', 'true', NULL, NULL, NULL),
('c2162accd648086d5703c323f41788c0', '23.106.56.35', '2021-05-08 04:22:04', 'true', NULL, NULL, NULL),
('5187f98e9655ce85e90db88dbb36f3fd', '23.106.56.35', '2021-05-08 04:22:09', 'true', NULL, NULL, NULL),
('32c93bf41dc9ad873cb8bc4c39372662', '23.106.56.35', '2021-05-08 04:22:10', 'true', NULL, NULL, NULL),
('25ca9fb4a86f08d2b5e14c4a2f490aa9', '23.106.56.35', '2021-05-08 04:26:51', 'true', NULL, NULL, NULL),
('aed0300e484bc5bc403228068d762bee', '23.106.56.12', '2021-05-09 03:11:53', 'false', NULL, NULL, NULL),
('d2102a9448f7519616aeecfb3da3ddfe', '103.101.52.181', '2021-05-09 06:09:51', 'false', NULL, NULL, NULL),
('575a3dbef676f065dc0c46069f309aa7', '18.188.79.225', '2021-05-09 06:10:21', 'false', NULL, NULL, NULL),
('9a105f2b4c907f142c87f24482f61bb4', '18.197.193.89', '2021-05-09 06:12:29', 'false', NULL, NULL, NULL),
('b5101f374ebfd7f051923bcd28a00333', '103.101.52.181', '2021-05-09 06:12:56', 'false', NULL, NULL, NULL),
('7a40c26555a3bfd1aa2ef08a28c963b5', '103.101.52.181', '2021-05-09 06:13:35', 'false', NULL, NULL, NULL),
('544b1f156ed22dd1ae975dba04ebe831', '103.101.52.181', '2021-05-09 06:16:40', 'false', NULL, NULL, NULL),
('d212624bb69d139a19a3ba38cefc400b', '103.101.52.181', '2021-05-09 06:22:01', 'false', NULL, NULL, NULL),
('0493d023859735f00738a2b61b8a6ff8', '107.150.63.174', '2021-05-09 16:33:48', 'true', NULL, NULL, NULL),
('d260bbe4f26ce4122ed2a6e010a81110', '139.195.255.236', '2021-05-10 11:25:28', 'true', NULL, NULL, NULL),
('c7969775be9dce05ca66ef63a40e6e7a', '139.195.255.236', '2021-05-10 11:26:06', 'true', NULL, NULL, NULL),
('66ec1a7e50188244c5925d2eb1e5282d', '103.101.52.181', '2021-05-11 07:19:40', 'false', NULL, NULL, NULL),
('042bf1f0f5be657d3622f93c05826546', '103.101.52.181', '2021-05-11 07:19:56', 'false', NULL, NULL, NULL),
('9d730bd80827d75d23ca1260d01492fe', '103.101.52.181', '2021-05-11 07:21:05', 'false', NULL, NULL, NULL),
('0170f0932d07024a1357fc24e2afb73b', '23.106.56.43', '2021-05-11 16:15:27', 'true', NULL, NULL, NULL),
('159203f76b418561cd7e5163198bdb07', '23.106.56.43', '2021-05-11 16:15:34', 'true', NULL, NULL, NULL),
('d468cb31d72378d976f2ed55efbc57bb', '23.106.56.43', '2021-05-11 16:15:35', 'true', NULL, NULL, NULL),
('dd572c4f735de764aeb9d5310971cf04', '23.106.56.43', '2021-05-11 16:15:35', 'true', NULL, NULL, NULL),
('050f864c5e3f52533a7bd6931a4753db', '23.106.56.43', '2021-05-11 16:15:36', 'true', NULL, NULL, NULL),
('86b35a4d4aa7e2269d7e5ebc9f518b0e', '23.106.56.43', '2021-05-11 16:15:36', 'true', NULL, NULL, NULL),
('fb1b0f23edb3753abc9efd0e4938b3ba', '23.106.56.43', '2021-05-11 16:15:36', 'true', NULL, NULL, NULL),
('985c4fe1908dc4e0151703c1f73a8c8e', '23.106.56.43', '2021-05-11 16:15:53', 'true', NULL, NULL, NULL),
('a27b75fd7728c67d7125eb6a3b8e14d1', '23.106.56.43', '2021-05-11 16:15:57', 'true', NULL, NULL, NULL),
('7146f86447ebd686f29a5043c7c71cd8', '54.203.73.198', '2021-05-13 01:49:15', 'false', NULL, NULL, NULL),
('b202601f83e91e7393f97b0241467d22', '208.110.85.68', '2021-05-13 16:38:52', 'true', NULL, NULL, NULL),
('4563e2d1341c9c116ece47e5a88150e0', '107.150.63.171', '2021-05-14 06:34:20', 'true', NULL, NULL, NULL),
('aa09401743095821fd89e2bc5ee2ee4f', '107.150.46.54', '2021-05-16 02:54:27', 'false', NULL, NULL, NULL),
('f8141f8b9b2a8af4a85274ca10031752', '92.118.160.37', '2021-05-16 12:44:09', 'false', NULL, NULL, NULL),
('1f65fb25051e10c3eb8ba77cbfc57480', '192.151.156.186', '2021-05-16 15:44:44', 'true', NULL, NULL, NULL),
('967d68c0e7ef60412fcc173a2b9652c4', '36.72.219.226', '2021-05-17 07:52:12', 'false', NULL, NULL, NULL),
('1abe0ef9395f83d459472c8d98780e66', '36.72.219.226', '2021-05-17 08:44:26', 'true', NULL, NULL, NULL),
('2bdb238b3b1e10149f2af7a6d0b72d5d', '36.72.219.226', '2021-05-17 08:44:39', 'true', NULL, NULL, NULL),
('1637e811a2e78dc7106a38af940c30da', '36.72.219.226', '2021-05-17 08:53:07', 'true', NULL, NULL, NULL),
('44dfc46039e2b07d0fcf7b66561dfeb6', '36.72.219.226', '2021-05-17 08:53:59', 'true', NULL, NULL, NULL),
('e7b91eebf3a4ee3957dccf2cb60297f2', '173.208.246.46', '2021-05-18 18:58:11', 'true', NULL, NULL, NULL),
('1da3db824d546669d571156a57c16959', '36.72.219.73', '2021-05-20 04:40:53', 'true', NULL, NULL, NULL),
('aff7a4969f37334db58862f9f02a6063', '36.72.219.73', '2021-05-20 04:41:00', 'true', NULL, NULL, NULL),
('92b4a2460221b4b166064550b80b2b74', '103.101.52.181', '2021-05-21 02:18:36', 'true', NULL, NULL, NULL),
('32b052aae120c8b408dfe2d03ac2bea4', '103.101.52.181', '2021-05-21 02:19:21', 'true', NULL, NULL, NULL),
('5dc82b00a4ba4f09e2f523a3aaa956ae', '103.101.52.181', '2021-05-21 02:19:29', 'true', NULL, NULL, NULL),
('271ee16683aa56df09f36600184f799a', '103.101.52.181', '2021-05-21 02:20:08', 'true', NULL, NULL, NULL),
('fc9ae51b38d9544a956c3635b3ef8e19', '23.106.56.21', '2021-05-24 02:28:52', 'false', NULL, NULL, NULL),
('5c7b384e7ffe7dcd0284acf24f518c7b', '34.241.165.159', '2021-05-24 02:40:07', 'false', NULL, NULL, NULL),
('47cc739ebfc4604d30d6a80e7b972e36', '23.106.56.21', '2021-05-24 03:14:40', 'false', NULL, NULL, NULL),
('49174d6fda09b4708ddeb42753669ee9', '92.118.160.17', '2021-05-24 11:06:06', 'true', NULL, NULL, NULL),
('75969768a45ef8ed521e3ee6e8af98ef', '103.101.52.181', '2021-05-25 03:52:21', 'false', NULL, NULL, NULL),
('e972a0c650bea810fe4330e3c4e7ad8c', '114.10.5.17', '2021-05-25 03:52:27', 'false', NULL, NULL, NULL),
('0548fd8dfe005b0dd55fb2d20409b265', '103.101.52.181', '2021-05-25 03:52:49', 'false', NULL, NULL, NULL),
('cbbbafcf4e00b6291d5d9811e4b01179', '103.101.52.181', '2021-05-25 03:52:55', 'false', NULL, NULL, NULL),
('c74803ffb265bc28aaee6f20d523a5dc', '103.101.52.181', '2021-05-25 03:57:09', 'false', NULL, NULL, NULL),
('07828b0515cc3ba8f4812f95e8801827', '112.215.242.49', '2021-05-25 05:48:10', 'false', NULL, NULL, NULL),
('87c5d58a8da784d21de686ddc32c41aa', '114.10.5.32', '2021-05-25 07:58:42', 'false', NULL, NULL, NULL),
('59a9afd31f2fc57c8c917899f889d927', '114.10.5.32', '2021-05-25 07:58:42', 'false', NULL, NULL, NULL),
('589bafe6135ed9acb82c2e7bf0bd3f73', '103.105.27.70', '2021-05-25 10:49:56', 'false', NULL, NULL, NULL),
('33137a9577eb69f85dcac8523c071734', '114.10.5.32', '2021-05-25 12:19:35', 'false', NULL, NULL, NULL),
('f6cfc638e67afca919f224100a276048', '44.235.77.16', '2021-05-25 22:50:56', 'true', NULL, NULL, NULL),
('f78da76b3c67aa801ca9cf23063c6b85', '36.72.218.89', '2021-05-26 08:54:51', 'false', NULL, NULL, NULL),
('03c3c7eae60ffdd662b7c3b4d72851c0', '36.72.218.89', '2021-05-26 08:59:08', 'false', NULL, NULL, NULL),
('1529848468091a389b26980fa7749368', '36.72.218.89', '2021-05-26 09:15:18', 'true', NULL, NULL, NULL),
('29d317c031f27b944812bb165dfc60d2', '115.178.227.12', '2021-05-27 01:37:31', 'true', NULL, NULL, NULL),
('f4d906a7b091f2a784e6bc474e2c8e8c', '63.33.66.199', '2021-05-28 08:51:21', 'false', NULL, NULL, NULL),
('0d79b22475385b63a5856e91a21f24e5', '23.106.56.35', '2021-05-28 08:51:43', 'false', NULL, NULL, NULL),
('6c94303883f3bcdc240d76a77c0ed20b', '23.106.56.35', '2021-05-28 09:04:23', 'false', NULL, NULL, NULL),
('965fef20ea6f0724286c463c8357e22a', '34.243.73.20', '2021-05-28 10:09:47', 'false', NULL, NULL, NULL),
('7632bbc4222a4ea5748fde5dc8e3f8e9', '107.150.63.170', '2021-05-28 12:50:57', 'true', NULL, NULL, NULL),
('5ffbd5b25082eb4e4e6e89f6459ae9d6', '162.55.178.211', '2021-05-29 00:51:18', 'true', NULL, NULL, NULL),
('7f0759e7988d708211e4f8333ba7988b', '23.106.56.21', '2021-05-30 03:09:28', 'false', NULL, NULL, NULL),
('6ee76f824fff1fb88e9c4e218571692a', '63.33.41.145', '2021-05-30 03:12:49', 'false', NULL, NULL, NULL),
('f19a28e80bc44a256b2cfd0f5bf1da52', '23.106.56.21', '2021-05-30 03:14:44', 'false', NULL, NULL, NULL),
('99644259f50af8020f0e9a570a0b3984', '23.106.56.21', '2021-05-30 03:17:14', 'false', NULL, NULL, NULL),
('32d2666cb773795d31f6c8295a4d9075', '23.106.56.21', '2021-05-30 03:19:38', 'false', NULL, NULL, NULL),
('a3283baf47800f7e09fbd814eac8078a', '23.106.56.21', '2021-05-30 03:21:13', 'false', NULL, NULL, NULL),
('73dbd4ff2980baa9a1641c3ade33a64e', '23.106.56.21', '2021-05-30 03:24:03', 'false', NULL, NULL, NULL),
('6aae719e547277230611367cbfc45ca4', '23.106.56.21', '2021-05-30 03:24:11', 'false', NULL, NULL, NULL),
('0039cee54730562202e529fdb64c237e', '23.106.56.21', '2021-05-30 03:24:52', 'false', NULL, NULL, NULL),
('b964e168762014eca0c05f8a3a92652d', '23.106.56.21', '2021-05-30 03:25:51', 'false', NULL, NULL, NULL),
('318d939936374d9053e9a1ba0dfa9418', '23.106.56.21', '2021-05-30 03:26:22', 'false', NULL, NULL, NULL),
('6093ffb68f1a1f9d789b4b317657ae32', '23.106.56.21', '2021-05-30 03:27:03', 'false', NULL, NULL, NULL),
('13d8362a0afbb9f66f5d0b4fe6b0bc0b', '23.106.56.21', '2021-05-30 03:27:40', 'false', NULL, NULL, NULL),
('2e48617d5c731a3b5942f0ec29a33e0c', '23.106.56.21', '2021-05-30 03:29:58', 'false', NULL, NULL, NULL),
('4092f6e076dc67bf62b8906b51d69c52', '23.106.56.21', '2021-05-30 03:29:59', 'false', NULL, NULL, NULL),
('c6ff5541b46848d5a1b0fd064aca7e8d', '23.106.56.21', '2021-05-30 03:30:34', 'false', NULL, NULL, NULL),
('033bfe9014eec1c5f21506e11a8f50e2', '23.106.56.21', '2021-05-30 03:32:04', 'false', NULL, NULL, NULL),
('508a98d540ac27f491016ac8fed9c893', '23.106.56.21', '2021-05-30 03:33:17', 'false', NULL, NULL, NULL),
('3ebf5e8feec6ea94acc1f3207a280296', '23.106.56.21', '2021-05-30 03:33:21', 'false', NULL, NULL, NULL),
('eb78fac87de46c12ea3b8db386144181', '23.106.56.21', '2021-05-30 03:33:30', 'false', NULL, NULL, NULL),
('cf76e0aebc52f01e5eef9090b63c02f0', '23.106.56.21', '2021-05-30 03:33:35', 'false', NULL, NULL, NULL),
('0afb30ef1a110a1c4055c21aff1c6d5f', '23.106.56.21', '2021-05-30 03:33:43', 'false', NULL, NULL, NULL),
('7b0e7c09292faa6aa4c3f06757ba795d', '23.106.56.21', '2021-05-30 03:34:56', 'false', NULL, NULL, NULL),
('0be52a52e8ffe80713c22d43f72fc914', '23.106.56.21', '2021-05-30 03:37:03', 'false', NULL, NULL, NULL),
('6149ad90ecdc7188c562066412ec9fa3', '23.106.56.21', '2021-05-30 03:37:12', 'false', NULL, NULL, NULL),
('71636bef1b665287112fc71e39206302', '23.106.56.21', '2021-05-30 03:38:31', 'false', NULL, NULL, NULL),
('e26e1a815070a88bc6f62f9644110bb1', '23.106.56.21', '2021-05-30 03:39:59', 'false', NULL, NULL, NULL),
('1d72be06665636ed1a6cc04c05efcf40', '23.106.56.21', '2021-05-30 03:40:46', 'false', NULL, NULL, NULL),
('d473c5d427550f6fd0a0bad53aa3e9aa', '23.106.56.21', '2021-05-30 03:41:43', 'false', NULL, NULL, NULL),
('23c8e2a42ed4427f062a2346c5e47461', '23.106.56.21', '2021-05-30 03:41:46', 'false', NULL, NULL, NULL),
('b1a7d9b04a197803a6d0fadd074447a8', '23.106.56.21', '2021-05-30 03:42:04', 'false', NULL, NULL, NULL),
('ee26190028d4e8d706fc55b9ee00a0b9', '23.106.56.21', '2021-05-30 03:42:06', 'false', NULL, NULL, NULL),
('c7cb29b1279cc8d7a92989829cebed38', '23.106.56.21', '2021-05-30 03:42:09', 'false', NULL, NULL, NULL),
('f9c2dc808f32f70db15247b9e3f4c93e', '23.106.56.21', '2021-05-30 03:42:32', 'false', NULL, NULL, NULL),
('3d38d2d8e5876ba91fa16b03777b31f9', '23.106.56.21', '2021-05-30 03:42:35', 'false', NULL, NULL, NULL),
('18874ef4796a18acd289ac46294aa71e', '23.106.56.21', '2021-05-30 03:42:36', 'false', NULL, NULL, NULL),
('66b9428991a0c8f4282b1806a295e93d', '23.106.56.21', '2021-05-30 03:43:35', 'false', NULL, NULL, NULL),
('e3b927684aaecbfdffa5751fa11068a2', '23.106.56.21', '2021-05-30 03:43:37', 'false', NULL, NULL, NULL),
('dc427805be8694c4af4e4b4c822899bd', '23.106.56.21', '2021-05-30 03:43:42', 'false', NULL, NULL, NULL),
('fea8ad2cf68a1e1e5287bfc388edb627', '23.106.56.21', '2021-05-30 03:43:59', 'false', NULL, NULL, NULL),
('3637086d159703b055d8d947963b95c2', '23.106.56.21', '2021-05-30 03:47:06', 'false', NULL, NULL, NULL),
('de668052aba6f6eaa861905c98150ae8', '23.106.56.21', '2021-05-30 03:49:37', 'false', NULL, NULL, NULL),
('7e1c58c4b447d71549bb6dce0cdbc8ce', '23.106.56.21', '2021-05-30 03:50:21', 'false', NULL, NULL, NULL),
('aabdc8c481162af677d0b826b1b0d20a', '23.106.56.21', '2021-05-30 03:51:15', 'false', NULL, NULL, NULL),
('3f33fda6918039190cbe4654d092d790', '23.106.56.21', '2021-05-30 03:52:22', 'false', NULL, NULL, NULL),
('f80ea16fe1144a4b95030b936a80a9f5', '23.106.56.21', '2021-05-30 03:52:25', 'false', NULL, NULL, NULL),
('b50ca7e8e11e96945a1cfaa3951e2aa8', '23.106.56.21', '2021-05-30 03:53:01', 'false', NULL, NULL, NULL),
('956daa04fc499af1ce76604ab8eb05a1', '23.106.56.21', '2021-05-30 03:55:07', 'false', NULL, NULL, NULL),
('73db5e70912493b455bf454586b828fc', '23.106.56.21', '2021-05-30 03:55:08', 'false', NULL, NULL, NULL),
('afbe1febc766257c10493356223ce410', '23.106.56.21', '2021-05-30 03:55:12', 'false', NULL, NULL, NULL),
('446f6ab23f4060c6d4bd820954272d3d', '23.106.56.21', '2021-05-30 03:55:14', 'false', NULL, NULL, NULL),
('8defd3987906ca293a751d38612bfc32', '23.106.56.21', '2021-05-30 03:56:33', 'false', NULL, NULL, NULL),
('3c473c55b7f8aa5443994b841d151f06', '23.106.56.21', '2021-05-30 03:56:34', 'false', NULL, NULL, NULL),
('cb99f9c6dac7337084ee26a1d0d615d6', '23.106.56.21', '2021-05-30 03:57:14', 'false', NULL, NULL, NULL),
('3764d53a92f2d3ecfadd5751e05ad78a', '23.106.56.21', '2021-05-30 03:57:50', 'false', NULL, NULL, NULL),
('8087ca429dd4b9ab3cd33a957b42e728', '23.106.56.21', '2021-05-30 03:59:30', 'false', NULL, NULL, NULL),
('da7ad26098059af7e74bb686bd41d86e', '23.106.56.21', '2021-05-30 03:59:59', 'false', NULL, NULL, NULL),
('50482296232dd5d6b02a2faba640fb44', '23.106.56.21', '2021-05-30 04:00:10', 'false', NULL, NULL, NULL),
('935d1d6eb48a5caf683f4d138920f2f9', '23.106.56.21', '2021-05-30 04:00:44', 'false', NULL, NULL, NULL),
('68da5820b9296600dae32195db6c8ac4', '23.106.56.21', '2021-05-30 04:02:30', 'false', NULL, NULL, NULL),
('963440e55dde4442be2e20564a3eee8e', '23.106.56.21', '2021-05-30 04:02:37', 'false', NULL, NULL, NULL),
('b1805aa6d5fecf9c1c0664bf5fb9cf1c', '23.106.56.21', '2021-05-30 04:02:46', 'false', NULL, NULL, NULL),
('c81dbe9c94dcd64814eef6a587eed26d', '23.106.56.21', '2021-05-30 04:03:52', 'false', NULL, NULL, NULL),
('9cc6cf2d3029f0aa55388a85a72c8f45', '23.106.56.21', '2021-05-30 04:05:52', 'false', NULL, NULL, NULL),
('ae8f9b9ea19669ab6e21d84d639ece56', '23.106.56.21', '2021-05-30 04:14:04', 'false', NULL, NULL, NULL),
('c0d7d942a8f04553b4febfb8cd7cd32b', '3.249.211.52', '2021-05-30 04:17:26', 'false', NULL, NULL, NULL),
('4b047373bbaf53f3077fa522e370f06f', '23.106.56.21', '2021-05-30 04:33:16', 'false', NULL, NULL, NULL),
('6b9a80a88a9c4d5f5743ecfc5b03b64a', '23.106.56.21', '2021-05-30 04:35:28', 'false', NULL, NULL, NULL),
('1feb5ba2cc69ae83a2666df6b6bdf868', '23.106.56.21', '2021-05-30 04:37:30', 'false', NULL, NULL, NULL),
('9a33664360c43c02bdb69080ac1951c3', '23.106.56.21', '2021-05-30 04:41:50', 'false', NULL, NULL, NULL),
('f37cb2372610670ee542a1884d0ef16c', '36.72.219.102', '2021-05-30 07:20:08', 'false', NULL, NULL, NULL),
('dac173bad38ef011a5bf30ed897b2ea0', '36.72.219.102', '2021-05-30 07:21:58', 'false', NULL, NULL, NULL),
('940784a5d31f4add2c7fec7df0f392c6', '36.72.219.102', '2021-05-30 08:04:18', 'false', NULL, NULL, NULL),
('899b63b8d553055ec1c4b7c8ce804394', '36.72.219.102', '2021-05-30 08:04:22', 'false', NULL, NULL, NULL),
('273ca520eea0210166eb380acf20b0bb', '36.72.219.102', '2021-05-30 08:04:32', 'false', NULL, NULL, NULL),
('325a0dc84b54bfcd6364347507edef61', '36.72.219.102', '2021-05-30 08:05:22', 'false', NULL, NULL, NULL),
('d1be9ca06a7f00bddac3a635a480fb32', '36.72.219.102', '2021-05-30 08:06:01', 'false', NULL, NULL, NULL),
('d91f46fe0b10fa1b295654d8c5d85078', '36.72.219.102', '2021-05-30 08:06:16', 'false', NULL, NULL, NULL),
('f37afe040a1d265012e56445b0d2a098', '36.72.219.102', '2021-05-30 08:06:43', 'false', NULL, NULL, NULL),
('51f7f828dba32b2aa0d95d3cd109a4d3', '36.72.219.102', '2021-05-30 08:10:53', 'false', NULL, NULL, NULL),
('081d0a00e712e85651c46a5274f8c625', '36.72.219.102', '2021-05-30 08:12:38', 'false', NULL, NULL, NULL),
('a6c0dac1401f0b180ee4d42a1a52f49d', '36.72.219.102', '2021-05-30 08:32:09', 'false', NULL, NULL, NULL),
('a03d88f1159625108638e063c6bd3d8f', '36.72.219.102', '2021-05-30 08:32:52', 'false', NULL, NULL, NULL),
('9acb556c5872e671811dbdddb14e723e', '36.72.219.102', '2021-05-30 08:56:01', 'false', NULL, NULL, NULL),
('eee824eec3ebd04f1907cee6747c5f25', '36.72.219.102', '2021-05-30 08:56:01', 'false', NULL, NULL, NULL),
('565cefa1f0440da9fa67d3bda44055e2', '36.72.219.102', '2021-05-30 08:56:01', 'false', NULL, NULL, NULL),
('5a0cbbd6b91d9c6b518355ecc87cb9a8', '36.72.219.102', '2021-05-30 08:56:02', 'false', NULL, NULL, NULL),
('6edf10c39b8d691a81c5c2fe386d0aa0', '36.72.219.102', '2021-05-30 08:56:27', 'false', NULL, NULL, NULL),
('c9ef049023a12d6d22482d09a8e8dfcf', '36.72.219.221', '2021-05-30 09:18:35', 'true', NULL, NULL, NULL),
('a830dbbc8c5b13dbfd3d0d82b3779ece', '36.72.219.221', '2021-05-30 09:18:44', 'true', NULL, NULL, NULL),
('9abdc91946a5dcaacad60d3af736389f', '36.72.219.221', '2021-05-30 09:19:22', 'true', NULL, NULL, NULL),
('214472ecd9dd20fadd59b1e8833ab3a2', '103.101.52.130', '2021-05-31 02:36:58', 'false', NULL, NULL, NULL),
('5b25a4c2f60d7f7d374da55fe4adb63b', '103.101.52.130', '2021-05-31 02:36:58', 'false', NULL, NULL, NULL),
('3cb810ddf9afbf912ddae4562913718b', '103.101.52.130', '2021-05-31 02:36:58', 'false', NULL, NULL, NULL),
('b4eb00309d072fbc790c6fadbdcfa8e3', '103.101.52.130', '2021-05-31 02:39:01', 'false', NULL, NULL, NULL),
('e61e4a7ee4dda2ec7a78122a0585d9b2', '103.101.52.130', '2021-05-31 02:58:54', 'false', NULL, NULL, NULL),
('499f42aca1e04d342971b391fc32fe14', '103.101.52.130', '2021-05-31 02:58:54', 'false', NULL, NULL, NULL),
('0a2304dfd882fab663f720e32bde4096', '103.101.52.130', '2021-05-31 03:00:43', 'false', NULL, NULL, NULL),
('88de4b1d7766f1e2257ed18f7d1888bf', '36.72.215.252', '2021-05-31 03:05:02', 'false', NULL, NULL, NULL),
('25f35e7175126f46029f65f797adac6e', '36.72.217.204', '2021-05-31 04:56:15', 'false', NULL, NULL, NULL),
('40999b7887eeb003632a3ac1e8b65a82', '36.72.216.230', '2021-05-31 04:59:16', 'false', NULL, NULL, NULL),
('3f5be8ac6b448d6f78b57031253a9a8a', '36.72.216.230', '2021-05-31 05:00:16', 'false', NULL, NULL, NULL),
('ca680b4a496d418eb9def733e28736e1', '23.106.56.43', '2021-05-31 07:34:12', 'false', NULL, NULL, NULL),
('cf2112dd9f764daacf4f447a17d4f97f', '23.106.56.43', '2021-05-31 07:41:44', 'false', NULL, NULL, NULL),
('b2ad8d8ef057e969fcb396cda710361b', '23.106.56.43', '2021-05-31 07:46:01', 'false', NULL, NULL, NULL),
('b4ab951b1f96f9f8cf1532a6556a7785', '23.106.56.43', '2021-05-31 07:50:28', 'false', NULL, NULL, NULL),
('85e3ac38c992a770c5dcf09093bd4943', '23.106.56.43', '2021-05-31 07:50:33', 'false', NULL, NULL, NULL),
('48273f2148545c2f7dca065f35f4de97', '23.106.56.43', '2021-05-31 07:54:59', 'false', NULL, NULL, NULL),
('d904c292eefe5ddd4b3c7c6695c859e0', '23.106.56.43', '2021-05-31 07:55:07', 'false', NULL, NULL, NULL),
('87f2d47e6547e3b4df1b3cca180301bb', '23.106.56.43', '2021-05-31 07:58:32', 'false', NULL, NULL, NULL),
('d0ec8097b77c1b9d8c216145f920742d', '23.106.56.43', '2021-05-31 07:59:02', 'false', NULL, NULL, NULL),
('b9428acdc94556983ddbe3dd9da28d53', '23.106.56.43', '2021-05-31 08:00:23', 'false', NULL, NULL, NULL),
('b63361d563121b923a6e789afbb2d59c', '23.106.56.43', '2021-05-31 08:00:33', 'false', NULL, NULL, NULL),
('780223e76a3fe544c18a9913bab2f8d0', '23.106.56.43', '2021-05-31 08:01:57', 'false', NULL, NULL, NULL),
('a267e2a611ecb26ba58dc5f42ea3e17a', '23.106.56.43', '2021-05-31 08:02:26', 'false', NULL, NULL, NULL),
('6e30f30735c8546b24caf8e883235b7a', '23.106.56.43', '2021-05-31 08:04:48', 'false', NULL, NULL, NULL),
('0b935afa8b341b0a6031ced91760f000', '23.106.56.43', '2021-05-31 08:05:14', 'false', NULL, NULL, NULL),
('a37aed9f5273af45233df9a4377a7cae', '23.106.56.43', '2021-05-31 08:05:20', 'false', NULL, NULL, NULL),
('2141af31ff6c8050a422480057fd1c7f', '23.106.56.22', '2021-05-31 08:24:20', 'false', NULL, NULL, NULL),
('086e2afe683a39f75e94f9dd4ca9872f', '23.106.56.12', '2021-05-31 08:37:01', 'false', NULL, NULL, NULL),
('0cbc78f48c10dc0d37873178ffe3570a', '23.106.56.12', '2021-05-31 08:37:03', 'false', NULL, NULL, NULL),
('afcf506ed73b1fcfdce525615857f39d', '23.106.56.12', '2021-05-31 08:38:31', 'false', NULL, NULL, NULL),
('a949c8ff5b3151dc4ff894fe9868ee17', '23.106.56.12', '2021-05-31 08:38:45', 'false', NULL, NULL, NULL),
('1608455374f9cf67339d2973861a73c5', '23.106.56.12', '2021-05-31 08:39:31', 'false', NULL, NULL, NULL),
('586d065fb3254ab4c72ca98e0a40a7df', '23.106.56.12', '2021-05-31 08:40:21', 'false', NULL, NULL, NULL),
('f7f88b3d26ac774e420d8ad07ad5b4ea', '23.106.56.12', '2021-05-31 08:40:29', 'false', NULL, NULL, NULL),
('3c6ee90e2c22be9136abaee1ca28f71f', '23.106.56.12', '2021-05-31 08:40:39', 'false', NULL, NULL, NULL),
('9679e15ad1f65d03ce879205969fc8e1', '23.106.56.12', '2021-05-31 08:41:23', 'false', NULL, NULL, NULL),
('6fa14164ffc176463ec63a814a2b9637', '23.106.56.12', '2021-05-31 08:41:28', 'false', NULL, NULL, NULL),
('8ddfdf36099ba19c9838f72bf3991e8f', '23.106.56.12', '2021-05-31 08:41:33', 'false', NULL, NULL, NULL),
('8399ccbc4cc093997e0d035ccb8cb909', '23.106.56.12', '2021-05-31 08:41:38', 'false', NULL, NULL, NULL),
('88ed81fced8b0b784fd1d4555cbd0b21', '23.106.56.12', '2021-05-31 08:41:46', 'false', NULL, NULL, NULL),
('1643f460226fbd09128fc87e2db3f420', '23.106.56.12', '2021-05-31 08:42:11', 'false', NULL, NULL, NULL),
('00771f18b5034096453a8caa80608b44', '23.106.56.12', '2021-05-31 08:42:17', 'false', NULL, NULL, NULL),
('be5c38eb2b547a6c415bab94d6e7320d', '23.106.56.12', '2021-05-31 08:42:23', 'false', NULL, NULL, NULL),
('b49b2b4b760a475d6342ce4450852a4e', '23.106.56.12', '2021-05-31 08:42:27', 'false', NULL, NULL, NULL),
('4485ea85c66c1dfb71c49a60cd05ed8d', '23.106.56.12', '2021-05-31 08:42:38', 'false', NULL, NULL, NULL),
('aaddcf014c8e69b8bee442cf4fedae58', '23.106.56.12', '2021-05-31 08:42:47', 'false', NULL, NULL, NULL),
('7c06a92d4e9c34eb9b040d61a45a4aa8', '23.106.56.12', '2021-05-31 08:42:53', 'false', NULL, NULL, NULL),
('a7a0ab47e33d4546d1327f4beeb84553', '23.106.56.12', '2021-05-31 08:44:04', 'false', NULL, NULL, NULL),
('6f697fec41bb3fff3346688ee90c2310', '23.106.56.12', '2021-05-31 08:45:27', 'false', NULL, NULL, NULL),
('99f497e503f1bcff73c8a608bbc8017e', '23.106.56.12', '2021-05-31 08:47:02', 'false', NULL, NULL, NULL),
('376691dbb4943c712254eb15df670cbe', '23.106.56.12', '2021-05-31 08:48:56', 'false', NULL, NULL, NULL),
('efa1f97c2e2360e7872080e7257dd58b', '23.106.56.21', '2021-05-31 08:54:02', 'false', NULL, NULL, NULL),
('5c83a37dffe483867b8b34bf97f642e8', '23.106.56.21', '2021-05-31 08:55:19', 'false', NULL, NULL, NULL),
('867a2fbd36b3fe1ffb17cf3fd4dca12f', '23.106.56.21', '2021-05-31 08:55:45', 'false', NULL, NULL, NULL),
('426049357c5c4ec2625103d7213ead23', '23.106.56.21', '2021-05-31 08:55:47', 'false', NULL, NULL, NULL),
('f776b987249c5cb434254e0437e6b13c', '23.106.56.21', '2021-05-31 08:56:39', 'false', NULL, NULL, NULL),
('5bda533447cf131492e11a56b84584c4', '23.106.56.21', '2021-05-31 08:56:55', 'false', NULL, NULL, NULL),
('9cd851890f1e41a9cc3dfd632ee4ea63', '23.106.56.21', '2021-05-31 08:57:44', 'false', NULL, NULL, NULL),
('850de211515b3f0a1232574d34ea0b45', '23.106.56.21', '2021-05-31 08:57:50', 'false', NULL, NULL, NULL),
('9f48aba74fae9e8ac71f2522870300d0', '23.106.56.21', '2021-05-31 08:57:51', 'false', NULL, NULL, NULL),
('fc62d38899073d9467760a63968df476', '23.106.56.36', '2021-05-31 09:00:37', 'true', NULL, NULL, NULL),
('412635fe14c5d8ff8c5caf05f4ccf241', '23.106.56.36', '2021-05-31 09:00:37', 'true', NULL, NULL, NULL),
('3221d242d93e560df2240923e7553639', '23.106.56.36', '2021-05-31 09:04:35', 'true', NULL, NULL, NULL),
('1be7d7675f179c3ac8a17ef51fb7865b', '23.106.56.36', '2021-05-31 09:05:02', 'true', NULL, NULL, NULL),
('a269aea0c5934c571c544322cbb54849', '23.106.56.36', '2021-05-31 09:05:10', 'true', NULL, NULL, NULL),
('8bf7d1b5a9451d8521b635b3d8e7b150', '23.106.56.36', '2021-05-31 09:05:12', 'true', NULL, NULL, NULL),
('2a8ae1cea971d87a66f8074f19f30286', '23.106.56.36', '2021-05-31 09:05:58', 'true', NULL, NULL, NULL),
('145ee174e34b685ac7733b32e21207ca', '23.106.56.36', '2021-05-31 09:05:58', 'true', NULL, NULL, NULL),
('59303af8e13072fe0cf1f79e02894abe', '23.106.56.36', '2021-05-31 09:06:25', 'true', NULL, NULL, NULL),
('6fd5866c44d6cf2928766a5d5893e5d7', '23.106.56.53', '2021-05-31 09:07:59', 'true', NULL, NULL, NULL),
('c6cbe26ecbaba6b21e07a48ba3af38ee', '23.106.56.53', '2021-05-31 09:08:00', 'true', NULL, NULL, NULL),
('a4e84bd472922cfaffcdb65ab7dd254e', '23.106.56.13', '2021-05-31 09:09:08', 'true', NULL, NULL, NULL),
('15126928a0b38e36cc4c3b24064b464b', '23.106.56.13', '2021-05-31 09:10:05', 'true', NULL, NULL, NULL),
('55bdd4d8f92cd860e302fcd44f37f8d7', '23.106.56.13', '2021-05-31 09:10:09', 'true', NULL, NULL, NULL),
('d74a62e4d656594cff561c7346aef34f', '23.106.56.13', '2021-05-31 09:10:17', 'true', NULL, NULL, NULL),
('9a7982e5f0f12c0d73dfafc2921a75bd', '23.106.56.13', '2021-05-31 09:11:27', 'true', NULL, NULL, NULL),
('42b6d949e40fd7c0d5a00eb1fe5b0050', '23.106.56.13', '2021-05-31 09:12:18', 'true', NULL, NULL, NULL),
('9ad7942eb3ae66c925de67b307008490', '23.106.56.13', '2021-05-31 09:12:49', 'true', NULL, NULL, NULL),
('092cddf24222fbef319cb95762c382cd', '23.106.56.13', '2021-05-31 09:12:55', 'true', NULL, NULL, NULL),
('59dfbbfa5b7ac34ea6e0ee96e2a91470', '23.106.56.13', '2021-05-31 09:13:57', 'true', NULL, NULL, NULL),
('83d2307b5430e0ce3a6437218144399d', '103.101.52.181', '2021-06-01 07:41:52', 'true', NULL, NULL, NULL),
('30b6489137721b810da9932f7644d7cf', '103.101.52.181', '2021-06-01 07:44:41', 'true', NULL, NULL, NULL),
('0131c8184af9742f5e12b78b35e206d2', '103.101.52.181', '2021-06-01 07:44:51', 'true', NULL, NULL, NULL),
('5cc6ad73012faeac1b9ff153f1a430da', '103.101.52.181', '2021-06-02 02:55:08', 'false', NULL, NULL, NULL),
('45e14abc517491c5eee210cbb53aa2cd', '103.101.52.181', '2021-06-02 02:55:51', 'false', NULL, NULL, NULL),
('25eaac2be83cb40a64e966f8828a7d55', '103.101.52.181', '2021-06-02 03:34:10', 'false', NULL, NULL, NULL),
('f35fb095907511fd23a81c88f64ca86d', '103.101.52.181', '2021-06-02 03:36:27', 'false', NULL, NULL, NULL),
('5f636b4b0993738960656dc6c396d84b', '103.101.52.130', '2021-06-02 04:44:39', 'false', NULL, NULL, NULL),
('1195cf94a12157dbe31ff5ad12863658', '103.101.52.130', '2021-06-02 04:50:34', 'false', NULL, NULL, NULL),
('b1499b23269a6d7776079abf753eda26', '103.101.52.130', '2021-06-02 04:50:36', 'false', NULL, NULL, NULL),
('164087dc870ee9d5af92289e00d591f3', '103.101.52.130', '2021-06-02 05:07:35', 'false', NULL, NULL, NULL),
('33831f0ee42c966a9cbb3ad639f0a36b', '103.101.52.130', '2021-06-02 09:59:41', 'true', NULL, NULL, NULL),
('9cdcc50f266e70ddf0a8049dff399422', '103.101.52.130', '2021-06-02 09:59:51', 'true', NULL, NULL, NULL),
('3a29d4cf3883b5da950bd2365bc79bae', '103.101.52.130', '2021-06-03 06:23:04', 'false', NULL, NULL, NULL),
('b565280482d10183ecbd47349a879cdf', '103.101.52.130', '2021-06-03 06:55:03', 'false', NULL, NULL, NULL),
('63603f0702c3ad0dda7146df0834856f', '103.101.52.130', '2021-06-03 07:08:59', 'false', NULL, NULL, NULL),
('896748c54194eb8f9cdde8ab46ba75cc', '103.101.52.130', '2021-06-03 07:11:36', 'false', NULL, NULL, NULL),
('109973faab8dcb303023f37b89378997', '103.101.52.130', '2021-06-03 07:16:54', 'false', NULL, NULL, NULL),
('b997a2a0ffe862fbbfd8db9187c6fda2', '103.101.52.130', '2021-06-03 07:29:01', 'false', NULL, NULL, NULL),
('42da29907611d12d6e231188fae7781a', '103.101.52.130', '2021-06-03 07:29:45', 'false', NULL, NULL, NULL),
('3b4d9be10c26312c8daed985653429c1', '103.101.52.130', '2021-06-03 07:33:43', 'false', NULL, NULL, NULL),
('f408236143fa2b585ae255348840447b', '103.101.52.130', '2021-06-03 07:34:48', 'false', NULL, NULL, NULL),
('21e3d8fee86526a80438dabaa4469bce', '103.101.52.130', '2021-06-03 07:34:56', 'false', NULL, NULL, NULL),
('0096d0e9679043a1946307c8148e5922', '103.101.52.130', '2021-06-03 07:34:57', 'false', NULL, NULL, NULL),
('96ec6f55b624b057d8590651b357a8ab', '103.101.52.130', '2021-06-03 08:53:33', 'false', NULL, NULL, NULL),
('bf5f5df9a1c230a1eff7b232e66b9a2d', '103.101.52.130', '2021-06-03 08:55:40', 'false', NULL, NULL, NULL),
('025183da97dd4811e81f5a1d652b9983', '103.101.52.130', '2021-06-03 09:30:16', 'false', NULL, NULL, NULL),
('c1bca27bc68befb9b94e802412d620c1', '123.253.233.129', '2021-06-03 14:12:05', 'false', NULL, NULL, NULL),
('357d8f328a523d394ae568024ad4e8ac', '123.253.233.129', '2021-06-03 14:12:08', 'false', NULL, NULL, NULL),
('afd7a8c7aad4bbc803fd51d64ecf54bb', '123.253.233.129', '2021-06-03 14:12:24', 'false', NULL, NULL, NULL),
('7e814cac4812e7b290a2c7890f43cd46', '123.253.233.129', '2021-06-03 14:28:45', 'false', NULL, NULL, NULL),
('c896ede2b8321f5ade6c12fd9f6885d7', '36.72.212.14', '2021-06-03 15:42:00', 'false', NULL, NULL, NULL),
('4639d41ea8d85088ef0e023b3b189cb5', '167.172.242.94', '2021-06-03 17:47:46', 'false', NULL, NULL, NULL),
('b4107a50f2ed31671ea02b5b4cde597b', '103.105.35.77', '2021-06-03 21:43:58', 'false', NULL, NULL, NULL),
('ad37c5c620c9eec619e558cba87f145b', '18.202.22.157', '2021-06-03 21:45:38', 'false', NULL, NULL, NULL),
('3139d467e021f79c5b7a8af7f8431be6', '23.106.56.12', '2021-06-03 21:54:38', 'false', NULL, NULL, NULL),
('7e16668024d8aa9ac5577fdc4e6391d9', '23.106.56.12', '2021-06-03 21:56:06', 'false', NULL, NULL, NULL),
('93492f0ede44e120a6381fef8e0f0f40', '23.106.56.12', '2021-06-03 22:00:21', 'false', NULL, NULL, NULL),
('eefbf9773ae9f2efb1cf0b89eace3718', '23.106.56.12', '2021-06-03 22:00:48', 'false', NULL, NULL, NULL),
('a0059d1cdf766c9061c48d185baaad2a', '23.106.56.12', '2021-06-03 22:00:49', 'false', NULL, NULL, NULL),
('ae059890b4aff9d5185ce7befb3fe00f', '23.106.56.12', '2021-06-03 22:00:49', 'false', NULL, NULL, NULL),
('03652c1ba2d35735dbf055eb63c9d83e', '23.106.56.12', '2021-06-03 22:00:50', 'false', NULL, NULL, NULL),
('4342d304854c6a267d85c47b8079df8d', '23.106.56.12', '2021-06-03 22:00:50', 'false', NULL, NULL, NULL),
('87c69a8492af6dcb8872b2b071278008', '23.106.56.12', '2021-06-03 22:00:50', 'false', NULL, NULL, NULL),
('ecb0ac65508091e7c7fd547b9fb78b17', '23.106.56.12', '2021-06-03 22:00:50', 'false', NULL, NULL, NULL),
('0db3243188d42746f9042723aab14364', '23.106.56.12', '2021-06-03 22:00:50', 'false', NULL, NULL, NULL),
('480b44b125ecfe34cbb33a00de035bc6', '23.106.56.12', '2021-06-03 22:12:04', 'false', NULL, NULL, NULL),
('ee15ab8260fda8bd62046cbdb9a35f5f', '23.106.56.12', '2021-06-03 22:13:56', 'false', NULL, NULL, NULL),
('ef42f7dd90b95b553a5b5741f3e49582', '23.106.56.12', '2021-06-03 22:14:08', 'false', NULL, NULL, NULL),
('0d63d094df7f88b462bcb11fa5c24a77', '23.106.56.12', '2021-06-03 22:14:12', 'false', NULL, NULL, NULL),
('bc9ff5702f8ca07bf674288603edcc7b', '23.106.56.12', '2021-06-03 22:14:56', 'false', NULL, NULL, NULL),
('a9a4ecc6d404f670850afbc1c5be5f15', '23.106.56.12', '2021-06-03 22:15:03', 'false', NULL, NULL, NULL),
('685443804294025e56cb8dad8091ed2d', '23.106.56.12', '2021-06-03 22:16:16', 'false', NULL, NULL, NULL),
('fef2af305d77f9f5e1acdb8cd05104fd', '23.106.56.12', '2021-06-03 22:18:18', 'false', NULL, NULL, NULL),
('e6f45481ddeea4f833860beffa266f42', '23.106.56.12', '2021-06-03 22:22:52', 'false', NULL, NULL, NULL),
('d99c0b55999ba57df6004fcb4098acd2', '23.106.56.12', '2021-06-03 22:23:06', 'false', NULL, NULL, NULL),
('cf3318d02675a0e43377afbe7fd6b4f6', '23.106.56.12', '2021-06-03 22:26:44', 'false', NULL, NULL, NULL),
('85d91ead4b17ce790ed41d530ec5203c', '23.106.56.12', '2021-06-03 22:27:08', 'false', NULL, NULL, NULL),
('db6a7ceaa4f9c48d3e4149132beefd5d', '23.106.56.12', '2021-06-03 22:27:36', 'false', NULL, NULL, NULL),
('960de45c0fcdc9be9e92c24c8048c0f9', '23.106.56.12', '2021-06-03 22:27:51', 'false', NULL, NULL, NULL),
('54238b8b24bd84dd0af7232d02ade0b9', '23.106.56.12', '2021-06-03 22:28:02', 'false', NULL, NULL, NULL),
('1377c42bb5587d7c2b2d9ecbb3324e61', '23.106.56.12', '2021-06-03 22:29:37', 'false', NULL, NULL, NULL),
('17ed24b9673b06ccf376902b3d23752a', '23.106.56.12', '2021-06-03 22:37:09', 'false', NULL, NULL, NULL),
('94e4bc867d43f393a19cd44eec7bfcf1', '23.106.56.12', '2021-06-03 22:37:57', 'false', NULL, NULL, NULL),
('0ec6ef35ff156ca5bb70cec20d344c91', '23.106.56.12', '2021-06-03 22:38:27', 'false', NULL, NULL, NULL),
('ba174455cf9a4b681ccfd58e9ad38535', '23.106.56.12', '2021-06-03 22:38:51', 'false', NULL, NULL, NULL),
('60655b0b2560082e10a49b5180b7604c', '23.106.56.12', '2021-06-03 22:41:17', 'false', NULL, NULL, NULL),
('79b40646cc55f6a3b41167f283062962', '23.106.56.12', '2021-06-03 22:43:36', 'false', NULL, NULL, NULL),
('0f0b55e2e9c4b9bcfc058ffdfe048500', '23.106.56.12', '2021-06-03 22:47:23', 'false', NULL, NULL, NULL),
('12d9a07e622abcf37e54f7c8e6a2b80c', '23.106.56.12', '2021-06-03 22:49:21', 'false', NULL, NULL, NULL),
('d2c660375711ef715b220229cf0a8bad', '23.106.56.12', '2021-06-03 22:49:57', 'false', NULL, NULL, NULL),
('2a537bdb3d3be12607d58a58234f5581', '23.106.56.12', '2021-06-03 22:50:42', 'false', NULL, NULL, NULL),
('dd5d0b9bf2eb7b500425c2911a589956', '23.106.56.12', '2021-06-03 22:50:54', 'false', NULL, NULL, NULL),
('45719fd5cfc4e82f577a543578e37374', '23.106.56.12', '2021-06-03 22:57:27', 'false', NULL, NULL, NULL),
('4e613a37f64aa73c1a4249d2d4452943', '23.106.56.12', '2021-06-03 22:59:19', 'false', NULL, NULL, NULL),
('5f74eb62aae7c380a1684ae0a2fdd78d', '23.106.56.12', '2021-06-03 22:59:38', 'false', NULL, NULL, NULL),
('851e3580f7c809210258dd9c0bf200fb', '23.106.56.12', '2021-06-03 23:06:30', 'true', NULL, NULL, NULL),
('1b192ccd1cf578df0bb26c1f6ef496bf', '23.106.56.12', '2021-06-03 23:07:08', 'true', NULL, NULL, NULL),
('b6014f9c6d3b37c78e3f024e0fcb6cda', '23.106.56.12', '2021-06-03 23:14:10', 'true', NULL, NULL, NULL),
('499c48cb523a5aa9ed648f810fe8b517', '23.106.56.12', '2021-06-03 23:14:14', 'true', NULL, NULL, NULL),
('f87b2b80e0a1de0b944b1d2c7ef8d3ed', '23.106.56.12', '2021-06-03 23:14:24', 'true', NULL, NULL, NULL),
('2a491ed8f3fee365b65e799ac5fc1c6d', '23.106.56.12', '2021-06-03 23:15:18', 'true', NULL, NULL, NULL),
('0b7c05d034b65f2909e8254a6f5c4624', '23.106.56.12', '2021-06-03 23:15:23', 'true', NULL, NULL, NULL),
('f8128d8f85a7698a354b37800bc6f974', '23.106.56.12', '2021-06-03 23:15:46', 'true', NULL, NULL, NULL),
('d93a39509a5f37dea66177c1e2d6fcc3', '23.106.56.12', '2021-06-03 23:18:00', 'true', NULL, NULL, NULL),
('6a2b22a5dc3ad7e60c1f95b27a8dbe95', '23.106.56.12', '2021-06-03 23:21:55', 'true', NULL, NULL, NULL),
('c4edaff54d5ff8da7d5f6603f662ea5a', '23.106.56.12', '2021-06-03 23:22:37', 'true', NULL, NULL, NULL),
('07e0ed9346e2a2a70ecf99623bf27a37', '23.106.56.12', '2021-06-03 23:23:24', 'true', NULL, NULL, NULL),
('df7cef98fee3c59a3ff3b1d204d6114c', '23.106.56.12', '2021-06-03 23:24:13', 'true', NULL, NULL, NULL),
('e471397b261e545653367123697c55e1', '23.106.56.12', '2021-06-03 23:25:01', 'true', NULL, NULL, NULL),
('f3cb3f308198c4adc994bb0ba5dba09c', '23.106.56.12', '2021-06-03 23:25:42', 'true', NULL, NULL, NULL),
('dffdb162dee0656d76bd63ca8ac7887d', '23.106.56.36', '2021-06-04 01:41:49', 'false', NULL, NULL, NULL),
('74b09732c72c981ec1a2d8bbf9a84de4', '23.106.56.36', '2021-06-04 01:54:03', 'false', NULL, NULL, NULL),
('0447e0b30b9215899d308d17def3f8bf', '23.106.56.36', '2021-06-04 02:04:43', 'false', NULL, NULL, NULL),
('a2b5ba023d7dff0f87d6c40e106df947', '23.106.56.36', '2021-06-04 02:06:01', 'false', NULL, NULL, NULL),
('3553f91fd37af49f89dd065a26b2bcd8', '23.106.56.36', '2021-06-04 02:06:10', 'false', NULL, NULL, NULL),
('f1ce7b91c481df44cc41af393f2eab56', '23.106.56.36', '2021-06-04 02:18:26', 'false', NULL, NULL, NULL),
('28a7367829b3befce7a7202a13ff4d38', '23.106.56.22', '2021-06-04 02:18:47', 'false', NULL, NULL, NULL),
('6f6915ce95f52d255908d62e0d82692b', '23.106.56.13', '2021-06-04 02:18:59', 'false', NULL, NULL, NULL),
('8f5fa480d1f7c0b1e2ceea6a8bb4d041', '23.106.56.13', '2021-06-04 02:18:59', 'false', NULL, NULL, NULL),
('dca3cb8ea615ca7550b6dc5ac423f74a', '23.106.56.13', '2021-06-04 02:19:01', 'false', NULL, NULL, NULL),
('bef7eb93f9e8b38fcafac68683dea3c3', '23.106.56.22', '2021-06-04 02:22:25', 'false', NULL, NULL, NULL),
('01a2826ad72bdeb63cd926e9e30ff629', '23.106.56.22', '2021-06-04 02:22:34', 'false', NULL, NULL, NULL),
('2edeb826d6c564bfa5f4397243e05d5a', '23.106.56.22', '2021-06-04 02:22:44', 'false', NULL, NULL, NULL),
('d2694b5079bbf2e96052021317b7c19b', '23.106.56.22', '2021-06-04 02:23:30', 'false', NULL, NULL, NULL),
('ad80f1359025fe1328440fde5c5bf7c1', '23.106.56.22', '2021-06-04 02:23:36', 'false', NULL, NULL, NULL),
('7daa4f7961cc9f687921f74c2b22df52', '23.106.56.22', '2021-06-04 02:23:43', 'false', NULL, NULL, NULL),
('1804595d6ce6e253dc14d2fe83fbf82e', '23.106.56.22', '2021-06-04 02:25:22', 'false', NULL, NULL, NULL),
('e620be1d02a35c0e32c9fe770bb1df6e', '23.106.56.22', '2021-06-04 02:25:49', 'false', NULL, NULL, NULL),
('45e8ceb922163f41b70a96964737903d', '23.106.56.22', '2021-06-04 02:28:51', 'false', NULL, NULL, NULL),
('7e2a82c81567b929abd9b4f2278e8f1d', '23.106.56.22', '2021-06-04 02:36:11', 'false', NULL, NULL, NULL),
('8e2414066c7630e56f3719c06c30134c', '103.101.52.130', '2021-06-04 02:36:36', 'false', NULL, NULL, NULL),
('1334632228b1c5266e434988cebe74e8', '23.106.56.22', '2021-06-04 02:37:08', 'false', NULL, NULL, NULL),
('a0d9d3945a3b5c729d7fc2bc8eaea9d7', '23.106.56.22', '2021-06-04 02:42:48', 'false', NULL, NULL, NULL),
('6859ed6aa918548d601fff6033abe1c2', '23.106.56.22', '2021-06-04 02:44:06', 'false', NULL, NULL, NULL),
('3a73fd1f9505470af1fecbe27b20a4bf', '23.106.56.22', '2021-06-04 02:44:56', 'false', NULL, NULL, NULL),
('8f5924d82696aa9282e0a9daed878020', '23.106.56.22', '2021-06-04 02:46:29', 'false', NULL, NULL, NULL),
('2d6970efaa7b1f8deda90b6cd0673056', '23.106.56.22', '2021-06-04 02:46:51', 'false', NULL, NULL, NULL),
('0d1ced13b0646d7c5488862b48d98c16', '23.106.56.22', '2021-06-04 02:47:21', 'false', NULL, NULL, NULL),
('047f3de287c58c24cc2fc585a44f4a85', '23.106.56.22', '2021-06-04 02:47:27', 'false', NULL, NULL, NULL),
('16a1eb17ebef88a8b4adb4635cf13a39', '23.106.56.22', '2021-06-04 02:47:31', 'false', NULL, NULL, NULL),
('ea21114602a7ea720584e08d72f340bd', '23.106.56.22', '2021-06-04 02:47:58', 'false', NULL, NULL, NULL),
('171e1e6601bf2fbc860250c9950ec5a0', '23.106.56.22', '2021-06-04 02:49:45', 'false', NULL, NULL, NULL),
('2318fabcf8da510e8447b9c0c8d2f11d', '23.106.56.22', '2021-06-04 02:50:35', 'false', NULL, NULL, NULL),
('f9274f893ba9c02ece6627664282c191', '103.101.52.130', '2021-06-04 02:54:12', 'false', NULL, NULL, NULL),
('cf3861c4ef8c02c38347ed560f33af19', '103.101.52.130', '2021-06-04 02:54:29', 'false', NULL, NULL, NULL),
('b596353bbf1385cf2d643f06484719ba', '23.106.56.22', '2021-06-04 02:55:16', 'false', NULL, NULL, NULL),
('397d114ccd3fd2dc42ea3faff0c06604', '23.106.56.22', '2021-06-04 03:00:20', 'false', NULL, NULL, NULL),
('de5ddc0b80ac78f7480ba1c2dd7f649c', '103.101.52.130', '2021-06-04 03:00:31', 'false', NULL, NULL, NULL),
('617c17d395dc03db8d0bbc41db0a1f1f', '23.106.56.22', '2021-06-04 03:01:32', 'false', NULL, NULL, NULL),
('df1cc2dacbbefd1ae7493b326fa58feb', '23.106.56.22', '2021-06-04 03:01:51', 'false', NULL, NULL, NULL),
('543baeda69b8bc7a59987b5a8d12a2b9', '103.101.52.130', '2021-06-04 03:01:51', 'false', NULL, NULL, NULL),
('bd42e3b0aebf3e507f020d3e9ee6a8bb', '103.101.52.130', '2021-06-04 03:02:00', 'false', NULL, NULL, NULL),
('2adce2af81e56adb938da9c05646b7a2', '103.101.52.130', '2021-06-04 03:02:02', 'false', NULL, NULL, NULL),
('fc23cf6f22c1fff86efb133430fd0943', '103.101.52.130', '2021-06-04 03:02:09', 'false', NULL, NULL, NULL),
('d57b4fe6aa09c53e7c1c84c7f79ad88f', '23.106.56.22', '2021-06-04 03:02:24', 'false', NULL, NULL, NULL),
('d045439af3d9c987e6bf7aa9414d48b9', '103.101.52.130', '2021-06-04 03:02:50', 'false', NULL, NULL, NULL),
('f97d67131a5116fc07b1ab42462d0f92', '103.101.52.130', '2021-06-04 03:03:20', 'false', NULL, NULL, NULL),
('ec0610dc90a2d15b18900b50efdb81a5', '103.101.52.130', '2021-06-04 03:03:54', 'false', NULL, NULL, NULL),
('0c87329702d88623e0908847187ef2fa', '103.101.52.130', '2021-06-04 03:04:21', 'false', NULL, NULL, NULL),
('b2f7eca764f12fab430a95afa9450302', '103.101.52.130', '2021-06-04 03:04:59', 'false', NULL, NULL, NULL),
('9a59011df48b8e6b1672c0faaf4cd21b', '103.101.52.130', '2021-06-04 03:05:14', 'false', NULL, NULL, NULL),
('cd3e389d7b9c2fc1f46c66cc6983f2d4', '103.101.52.130', '2021-06-04 03:06:02', 'false', NULL, NULL, NULL),
('ee5fbaba8b547c7ab87a9810b3efeeb0', '103.101.52.130', '2021-06-04 03:06:19', 'false', NULL, NULL, NULL),
('77956306ca5ef5319efe289e9982f458', '103.101.52.130', '2021-06-04 03:07:40', 'false', NULL, NULL, NULL),
('920f7cfc2797223c5f847b26b5246bd0', '103.101.52.130', '2021-06-04 03:07:50', 'false', NULL, NULL, NULL),
('221aaf9e1cf104fac63c776038204a15', '103.101.52.130', '2021-06-04 03:09:08', 'false', NULL, NULL, NULL),
('eb7530b4c0d8e7b339676214b3fbd88c', '23.106.56.22', '2021-06-04 03:19:40', 'false', NULL, NULL, NULL),
('fb6d1648aed5b368b2f72e0967a0734e', '103.101.52.130', '2021-06-04 03:20:07', 'false', NULL, NULL, NULL),
('7ab15daebae44937659ef8669fc7115a', '103.101.52.130', '2021-06-04 03:20:13', 'false', NULL, NULL, NULL),
('889f2bd6912925f52282d3c71f49efbf', '23.106.56.22', '2021-06-04 03:20:18', 'false', NULL, NULL, NULL),
('36e70a5c7483d74f6030b82892e6d1cf', '23.106.56.22', '2021-06-04 03:21:40', 'false', NULL, NULL, NULL),
('ae8f723446ef3ee22d092412b612658d', '23.106.56.22', '2021-06-04 03:21:55', 'false', NULL, NULL, NULL),
('dde56817e46ec5b523f6ede2ab7f89e1', '23.106.56.38', '2021-06-04 03:22:45', 'false', NULL, NULL, NULL),
('eb15f4fe7d3dcd104f39333e2521dbc6', '23.106.56.35', '2021-06-04 03:23:20', 'false', NULL, NULL, NULL),
('97f35918c2ed07534b871e43dd952551', '23.106.56.35', '2021-06-04 03:23:20', 'false', NULL, NULL, NULL),
('9a1741696b99153300cdc1642aa0ef8f', '23.106.56.35', '2021-06-04 03:23:20', 'false', NULL, NULL, NULL),
('48f84803eb88848c04596b801d29a04d', '23.106.56.22', '2021-06-04 03:25:41', 'false', NULL, NULL, NULL),
('36937b37290e62216f759e95084d7d46', '23.106.56.22', '2021-06-04 03:25:51', 'false', NULL, NULL, NULL),
('729e610864a86d29938fd0333b138241', '103.101.52.130', '2021-06-04 03:36:23', 'false', NULL, NULL, NULL),
('5609896ee13abab69f06584a515f738d', '23.106.56.22', '2021-06-04 03:38:20', 'false', NULL, NULL, NULL),
('2e264e174610d70380b15aa1fb23447f', '23.106.56.22', '2021-06-04 03:38:55', 'false', NULL, NULL, NULL),
('5f5cb0909cf7eeaeb4552c58ba945bfa', '23.106.56.22', '2021-06-04 03:39:24', 'false', NULL, NULL, NULL),
('f37b6f57c6108ff0d0ddaa308f074d6f', '23.106.56.22', '2021-06-04 03:40:03', 'false', NULL, NULL, NULL),
('a3a4decabfc6af69b890c5198bdc9d10', '23.106.56.51', '2021-06-04 03:49:16', 'false', NULL, NULL, NULL),
('a6492407315b90c9ba7d1a7c9675c60b', '103.101.52.130', '2021-06-04 03:52:48', 'false', NULL, NULL, NULL),
('11489a968839b5d4f251c31d4e645dbc', '103.101.52.130', '2021-06-04 03:53:09', 'false', NULL, NULL, NULL),
('1279072e646322454a8b683b261a2c24', '103.101.52.130', '2021-06-04 03:53:52', 'false', NULL, NULL, NULL),
('aa9bf6ee642e6cb3f4196541f6c6c123', '103.101.52.130', '2021-06-04 03:54:07', 'false', NULL, NULL, NULL),
('d9af63ddef6627b005a483272a5fd108', '103.101.52.130', '2021-06-04 03:54:36', 'false', NULL, NULL, NULL),
('77e7dbf6559bf92bfa85b024bcb3f571', '103.101.52.130', '2021-06-04 03:54:50', 'false', NULL, NULL, NULL),
('1721abff78ba26a0691a6a4f690b39c8', '103.101.52.130', '2021-06-04 04:00:59', 'false', NULL, NULL, NULL),
('6e2ae20d6561ae70424185b2c875e0bc', '36.73.135.155', '2021-06-04 12:19:49', 'false', NULL, NULL, NULL),
('5fd1928992f6f299fbce5ea147ee9e70', '36.73.135.155', '2021-06-04 12:21:52', 'false', NULL, NULL, NULL),
('22fa38e51c34ef9ac66b508168e66e96', '36.73.135.155', '2021-06-04 12:22:08', 'false', NULL, NULL, NULL),
('21ebec27e4d53143c7daa41cd52b1500', '36.73.135.155', '2021-06-04 12:23:18', 'false', NULL, NULL, NULL),
('dafc1b0302f74626c1106ed43f7b8b86', '36.73.135.155', '2021-06-04 12:23:21', 'false', NULL, NULL, NULL),
('ad0de2103815126dd95a34486f48c8b6', '36.73.135.155', '2021-06-04 12:23:30', 'false', NULL, NULL, NULL),
('760d128ded7e183521726dcca435b16b', '36.73.135.155', '2021-06-04 12:23:47', 'false', NULL, NULL, NULL),
('cb9d5c8be5af244f0fc6072dc587e2cd', '36.73.135.155', '2021-06-04 12:24:13', 'false', NULL, NULL, NULL);
INSERT INTO `cp_visitor` (`kd`, `ipnya`, `postdate`, `online`, `lat_x`, `lat_y`, `alamat_googlemap`) VALUES
('da8cbba38aae02c633c3e854787e995f', '36.73.135.155', '2021-06-04 12:24:16', 'false', NULL, NULL, NULL),
('df6ea1c46b9ce9b4c635ebea09add3e9', '36.73.135.155', '2021-06-04 12:25:14', 'false', NULL, NULL, NULL),
('f781b27ce12ba9f845a269b9e509fed6', '36.73.135.155', '2021-06-04 12:25:24', 'false', NULL, NULL, NULL),
('f90ea13416e2a4bbdd93c86f40a34fac', '36.73.135.155', '2021-06-04 12:25:26', 'false', NULL, NULL, NULL),
('1a1ed2c11862659c224ebfcb0988fc11', '36.73.135.155', '2021-06-04 12:25:27', 'false', NULL, NULL, NULL),
('8585fa65acdbe4fa32ce8f69dcb3b1d4', '36.73.135.155', '2021-06-04 12:27:30', 'false', NULL, NULL, NULL),
('9affbe45749449a87b5e666530b589ac', '36.73.135.155', '2021-06-04 12:27:31', 'false', NULL, NULL, NULL),
('699ebe67ec6f28dc9a01f238ed1eebae', '34.243.73.20', '2021-06-04 13:39:03', 'false', NULL, NULL, NULL),
('835f7c16a2de0606cabcb9d324fcd31c', '139.194.241.235', '2021-06-04 18:10:50', 'true', NULL, NULL, NULL),
('2035873fd297ad81564cc4f3319bacd6', '139.194.241.235', '2021-06-04 18:11:09', 'true', NULL, NULL, NULL),
('cee4abe3cf929dcf6f514a29989d80a4', '139.194.241.235', '2021-06-04 18:11:36', 'true', NULL, NULL, NULL),
('7046ef95670d5ec8fef2a75ce5c7c210', '139.194.241.235', '2021-06-04 18:12:01', 'true', NULL, NULL, NULL),
('c3a2b3b8207b18db8a60617b660b5bc8', '139.194.241.235', '2021-06-04 18:12:04', 'true', NULL, NULL, NULL),
('b0d6ac7ce90fe09cc318fa2d5211f5c8', '139.194.241.235', '2021-06-04 18:12:07', 'true', NULL, NULL, NULL),
('871200e8a982690588274b20e3b95b41', '139.194.241.235', '2021-06-04 18:12:16', 'true', NULL, NULL, NULL),
('3769debd4e52ac03159c8f6f957ea935', '139.194.241.235', '2021-06-04 18:12:59', 'true', NULL, NULL, NULL),
('383c67664f98ecd166c5c6bda117f315', '139.194.241.235', '2021-06-04 18:13:15', 'true', NULL, NULL, NULL),
('a75948f934176966036e9aea52bc9728', '139.194.241.235', '2021-06-04 18:13:26', 'true', NULL, NULL, NULL),
('394f0e1e8fc1bedc7f0fd15edce5ffb3', '139.194.241.235', '2021-06-04 18:22:48', 'true', NULL, NULL, NULL),
('06233abb0f0b8ace60e8e77e76f43984', '139.194.241.235', '2021-06-04 18:23:06', 'true', NULL, NULL, NULL),
('06a528db0c0d9478a95781bfdd246d40', '139.194.241.235', '2021-06-04 18:23:22', 'true', NULL, NULL, NULL),
('9d6195ed1c7ede3651820e4f659479e2', '139.194.241.235', '2021-06-04 18:23:28', 'true', NULL, NULL, NULL),
('a6afe1187724dc2602b252a17238f53f', '139.194.241.235', '2021-06-04 18:35:26', 'true', NULL, NULL, NULL),
('ae429721300938e0d15d186097f19c13', '23.106.56.13', '2021-06-06 03:29:08', 'false', NULL, NULL, NULL),
('264e519ed8a89681bc005ca7acebe343', '103.101.52.181', '2021-06-06 03:59:36', 'false', NULL, NULL, NULL),
('9e0717cf3904c0b883cb22f784aa5587', '103.101.52.181', '2021-06-06 04:00:00', 'false', NULL, NULL, NULL),
('d8eed14a4be919bf3b4779e00188596a', '103.101.52.181', '2021-06-06 04:00:14', 'false', NULL, NULL, NULL),
('e29de4aeff6110176195ab855a7c3ecb', '103.101.52.181', '2021-06-06 04:02:15', 'false', NULL, NULL, NULL),
('71e57f5e77325a9506ac3b71d0acc8b1', '103.101.52.181', '2021-06-06 04:04:00', 'false', NULL, NULL, NULL),
('36da1bd8fcfe51ebb3b76dd4d7cba19f', '103.101.52.181', '2021-06-06 04:04:53', 'false', NULL, NULL, NULL),
('914a061a508f1aace910ee46b16cea63', '103.101.52.181', '2021-06-06 04:05:03', 'false', NULL, NULL, NULL),
('bde917d8e7081e1a9fe3b158f9425143', '103.101.52.181', '2021-06-06 04:05:23', 'false', NULL, NULL, NULL),
('674cab175fe5eb011378fa0f9466fb89', '103.101.52.181', '2021-06-06 04:05:33', 'false', NULL, NULL, NULL),
('94cfd5979ae1b800cb102fc55692d815', '103.101.52.181', '2021-06-06 04:05:47', 'false', NULL, NULL, NULL),
('174600377ac7d1a58aefad3c4c7ce134', '103.101.52.181', '2021-06-06 04:05:55', 'false', NULL, NULL, NULL),
('fef96dec205f26112a3e29322fa3478d', '103.101.52.181', '2021-06-06 04:06:04', 'false', NULL, NULL, NULL),
('dbed336879b2784181f6c2c66890ec7e', '103.101.52.181', '2021-06-06 04:06:07', 'false', NULL, NULL, NULL),
('08a060ee263ad312a6405ebb3f6804b0', '103.101.52.181', '2021-06-06 04:06:10', 'false', NULL, NULL, NULL),
('c33b22e5714b05f432460f8ba3786052', '103.101.52.181', '2021-06-06 04:07:18', 'false', NULL, NULL, NULL),
('d3c118b96a9ec6b537a72ce9fbd5c6b3', '103.101.52.181', '2021-06-06 04:08:07', 'false', NULL, NULL, NULL),
('3dfea27cd886e6e2119b7a1f9351a994', '103.101.52.181', '2021-06-06 04:08:18', 'false', NULL, NULL, NULL),
('03a25fda59a11174eab4871be90c194e', '103.101.52.181', '2021-06-06 04:08:31', 'false', NULL, NULL, NULL),
('afdf50415324e3901180e8f8f1e28ca3', '103.101.52.181', '2021-06-06 04:08:47', 'false', NULL, NULL, NULL),
('52ad68d982424bf0ae88bdea2cacb2e4', '103.101.52.181', '2021-06-06 04:08:59', 'false', NULL, NULL, NULL),
('6da20c6d66dccefdcca807c81ffcfe78', '103.101.52.181', '2021-06-06 04:09:17', 'false', NULL, NULL, NULL),
('7b5b32743aa74059ade974d18c472c95', '103.101.52.181', '2021-06-06 04:09:44', 'false', NULL, NULL, NULL),
('06627c4b6e7f1ff0b368cc8902ce42d5', '103.101.52.181', '2021-06-06 04:11:33', 'false', NULL, NULL, NULL),
('1b37bacb984baba4aba7fc13e1ef108d', '103.101.52.181', '2021-06-06 04:11:35', 'false', NULL, NULL, NULL),
('84a47c5da32186bcdcc299d6ed46bba3', '103.101.52.181', '2021-06-06 04:11:35', 'false', NULL, NULL, NULL),
('6d9beebb6a0a58f3edfad6e1fd1a9c05', '103.101.52.181', '2021-06-06 04:11:35', 'false', NULL, NULL, NULL),
('349c123072475a521101602800746568', '103.101.52.181', '2021-06-06 04:12:18', 'false', NULL, NULL, NULL),
('a777721f8e35ddf6c86a77e1f411dc3f', '103.101.52.181', '2021-06-06 04:13:06', 'false', NULL, NULL, NULL),
('c0b2119ed047e936dd0a7cc44dfe7402', '103.101.52.181', '2021-06-06 04:13:14', 'false', NULL, NULL, NULL),
('ec7ab1a78a06558f8f031bffa482a057', '103.101.52.181', '2021-06-06 04:13:36', 'false', NULL, NULL, NULL),
('361797fff03ddff98e89c3635e261645', '103.101.52.181', '2021-06-06 04:13:49', 'false', NULL, NULL, NULL),
('61fbd8954841d3d2b09f6b5adeddbc4e', '103.101.52.181', '2021-06-06 04:14:02', 'false', NULL, NULL, NULL),
('ef7b0d395603c24c530b269ef99207ce', '103.101.52.181', '2021-06-06 04:18:54', 'false', NULL, NULL, NULL),
('693961f3f1a1fee81fffcf2ffe752328', '103.101.52.181', '2021-06-06 04:19:37', 'false', NULL, NULL, NULL),
('8adc0caa435129a2294542cc4eae7e45', '103.101.52.181', '2021-06-06 04:20:29', 'false', NULL, NULL, NULL),
('47e6889aa5b52eb8043e30da2a38f3ae', '103.101.52.181', '2021-06-06 04:20:36', 'false', NULL, NULL, NULL),
('f8396bf084d380a357f78680bd3dde40', '103.101.52.181', '2021-06-06 04:21:02', 'false', NULL, NULL, NULL),
('83b49bf311b699a73e107d0b9f00125a', '103.101.52.181', '2021-06-06 04:21:25', 'false', NULL, NULL, NULL),
('8d85374821bd8d5b90384ce35b2b2029', '103.101.52.181', '2021-06-06 04:21:49', 'false', NULL, NULL, NULL),
('4', '103.101.52.181', '2021-06-06 04:22:57', 'false', NULL, NULL, NULL),
('9340352505893d8a55b56d4632056e3d', '103.101.52.181', '2021-06-06 04:33:02', 'false', NULL, NULL, NULL),
('ac864e34fdedd294b724cbf273b91546', '103.101.52.181', '2021-06-06 06:44:17', 'false', NULL, NULL, NULL),
('2', '23.106.56.38', '2021-06-06 14:01:54', 'false', NULL, NULL, NULL),
('933c0a0882072b8e73b260f1b07ec6e5', '36.72.212.14', '2021-06-06 20:27:53', 'true', NULL, NULL, NULL),
('c973a954969ad2995fa3b9deff0392ce', '36.72.212.14', '2021-06-06 20:28:08', 'true', NULL, NULL, NULL),
('bc76ffa23a03595dbc3a605b6cc5feca', '36.72.212.14', '2021-06-06 20:28:52', 'true', NULL, NULL, NULL),
('3', '23.106.56.43', '2021-06-07 01:05:40', 'false', NULL, NULL, NULL),
('2034835daa628ed57f57e536b9ed7df2', '23.106.56.43', '2021-06-07 02:07:03', 'false', NULL, NULL, NULL),
('947cfd9f17b1b2df5d08c20a4d5c0bbb', '23.106.56.43', '2021-06-07 02:07:29', 'false', NULL, NULL, NULL),
('8f148eb3fac737b65807f470c95eae7d', '114.79.19.25', '2021-06-07 03:14:55', 'false', NULL, NULL, NULL),
('0f3a85b355fa3c32ef27c89bba728640', '114.79.19.25', '2021-06-07 03:15:10', 'false', NULL, NULL, NULL),
('47ea880cd72f8b9a4eec6cefefa17b4e', '23.106.56.14', '2021-06-07 03:23:40', 'false', NULL, NULL, NULL),
('ff647efa2ea0d6b42e0abe0cc8e593f6', '23.106.56.14', '2021-06-07 03:24:41', 'false', NULL, NULL, NULL),
('da1146061b4bad14b73874ef3e35d950', '23.106.56.14', '2021-06-07 03:25:49', 'false', NULL, NULL, NULL),
('10ce75ee2c16a0d9e6a7090bbe597602', '23.106.56.14', '2021-06-07 03:26:18', 'false', NULL, NULL, NULL),
('86fa3f703e594199c590832379ecbc31', '23.106.56.14', '2021-06-07 03:26:37', 'false', NULL, NULL, NULL),
('c88ce185418d988512bd4d7e6d67c301', '23.106.56.14', '2021-06-07 03:26:40', 'false', NULL, NULL, NULL),
('2bad520b11cedc3e3b964994acc79769', '23.106.56.14', '2021-06-07 03:26:55', 'false', NULL, NULL, NULL),
('5abb36b1ef8d5447ce269b3d44abaa7c', '23.106.56.14', '2021-06-07 03:27:49', 'false', NULL, NULL, NULL),
('bb33bd361d9e5509572faf427f7ff2b8', '23.106.56.14', '2021-06-07 03:28:40', 'false', NULL, NULL, NULL),
('d203e9addae75159482038abf5577332', '23.106.56.14', '2021-06-07 03:29:37', 'false', NULL, NULL, NULL),
('95d553fe481bf49c2775a5aa10fe4272', '23.106.56.14', '2021-06-07 03:31:47', 'false', NULL, NULL, NULL),
('40d8646ec81b7526e6cf1e7277ca1579', '23.106.56.14', '2021-06-07 03:32:43', 'false', NULL, NULL, NULL),
('6a732f8b59c5c9f495fde38acb15b394', '23.106.56.14', '2021-06-07 03:33:43', 'false', NULL, NULL, NULL),
('a712a23f066a6fbd37bc6ec83e3394f0', '23.106.56.14', '2021-06-07 03:34:13', 'false', NULL, NULL, NULL),
('fa5c01d0f37d94a67afb7c042b0ae5a5', '23.106.56.14', '2021-06-07 03:35:24', 'false', NULL, NULL, NULL),
('2775da0ef813393fe1ead2c48942c3d5', '23.106.56.14', '2021-06-07 03:35:44', 'false', NULL, NULL, NULL),
('246ad19cb44bf1755a791866f6c75ba8', '23.106.56.14', '2021-06-07 04:46:03', 'false', NULL, NULL, NULL),
('a8fbac88cfe4f609b0b396f89087d9fe', '23.106.56.14', '2021-06-07 04:46:10', 'false', NULL, NULL, NULL),
('b1161ea0f53e751658b7fdc069211b2e', '23.106.56.14', '2021-06-07 04:46:16', 'false', NULL, NULL, NULL),
('d0139a4c35c88dcc68d8b2933db7dfbb', '23.106.56.14', '2021-06-07 04:48:16', 'false', NULL, NULL, NULL),
('83d8122bb75a2efff77d8d067e2c9e4a', '23.106.56.14', '2021-06-07 04:48:36', 'false', NULL, NULL, NULL),
('af73ad5e9feffc562760844e79b78dbb', '23.106.56.13', '2021-06-07 06:07:29', 'false', NULL, NULL, NULL),
('97ae34a36504f79360dfe4c919a67783', '23.106.56.13', '2021-06-07 06:07:35', 'false', NULL, NULL, NULL),
('e89a12f5437e4c40e80c2331722dfd18', '23.106.56.13', '2021-06-07 06:15:50', 'false', NULL, NULL, NULL),
('cf0710fec3478cce85e65789d3a3b93a', '23.106.56.14', '2021-06-07 13:02:43', 'false', NULL, NULL, NULL),
('2ba3d034fbb61fb3a17630b55627c606', '23.106.56.14', '2021-06-07 13:02:54', 'false', NULL, NULL, NULL),
('43e8e6eec5aca291369295a004c79ccb', '23.106.56.14', '2021-06-07 14:06:12', 'false', NULL, NULL, NULL),
('49dd0740e0c8213468ff6a718e5d0cf7', '23.106.56.14', '2021-06-07 14:06:24', 'false', NULL, NULL, NULL),
('e875d318876756bb67ab29d97c6a8553', '23.106.56.14', '2021-06-07 14:06:42', 'false', NULL, NULL, NULL),
('eccca6598d32b9e4a27b9015b168811d', '123.253.233.129', '2021-06-07 21:27:09', 'false', NULL, NULL, NULL),
('61e7767c9f5096f747bc5ea7befff0e4', '123.253.233.129', '2021-06-07 21:37:05', 'false', NULL, NULL, NULL),
('e96c7a6e1b584a8b93496ea04f9c9cff', '123.253.233.129', '2021-06-07 21:40:32', 'false', NULL, NULL, NULL),
('baa741622c52966732dadd21696de52f', '123.253.233.129', '2021-06-07 21:59:32', 'false', NULL, NULL, NULL),
('ab427d8f356c5783a58b68f573d75a3a', '123.253.233.129', '2021-06-07 22:14:28', 'true', NULL, NULL, NULL),
('e1e87b1b7cb1cb1bbf0467e466e63831', '23.106.56.52', '2021-06-08 01:29:45', 'true', NULL, NULL, NULL),
('4eb04f2fe6bc06ca144121ec462bde74', '23.106.56.52', '2021-06-08 01:29:47', 'true', NULL, NULL, NULL),
('6c8af51ff3d8ce52643f0d2bc64a9422', '23.106.56.52', '2021-06-08 01:29:49', 'true', NULL, NULL, NULL),
('be94ab256fb99331b42ea81304d40486', '23.106.56.52', '2021-06-08 01:30:13', 'true', NULL, NULL, NULL),
('8', '127.0.0.1', '2021-07-26 17:04:24', 'false', NULL, NULL, NULL),
('3229cc9433f321017f3d55fd2f635a7f', '127.0.0.1', '2021-07-26 17:49:21', 'false', NULL, NULL, NULL),
('f4a9cde12858d45d3f3e19b2e289f47a', '127.0.0.1', '2021-07-26 17:56:24', 'false', NULL, NULL, NULL),
('f47aa8d2834d55e0e41348593d53868b', '127.0.0.1', '2021-07-26 17:57:28', 'false', NULL, NULL, NULL),
('9d4bcb67baa1bfae7a8ab20d0184d0f8', '127.0.0.1', '2021-07-26 17:57:31', 'false', NULL, NULL, NULL),
('f56a3157aee15e693dd878dfb6e665d7', '127.0.0.1', '2021-07-26 17:57:33', 'false', NULL, NULL, NULL),
('5f573c44a9c01941445cdc3f87cf9622', '127.0.0.1', '2021-07-26 17:57:42', 'false', NULL, NULL, NULL),
('cd3b8fa81330b088ec9b58a2c4942f01', '127.0.0.1', '2021-07-26 17:58:08', 'false', NULL, NULL, NULL),
('0d799506630f5cc4de598e8f52297f7a', '127.0.0.1', '2021-07-26 17:58:32', 'false', NULL, NULL, NULL),
('cbdf425188e49e4e71a57da35fe05cdd', '127.0.0.1', '2021-07-26 17:58:35', 'false', NULL, NULL, NULL),
('b660a05587fbb05575c2f369794dc414', '127.0.0.1', '2021-07-26 17:59:09', 'false', NULL, NULL, NULL),
('9539b7303d33f060d5501033e0dc2689', '127.0.0.1', '2021-07-26 17:59:18', 'false', NULL, NULL, NULL),
('5be401d65f751cf4683cf7fd9a31a48a', '127.0.0.1', '2021-07-26 17:59:20', 'false', NULL, NULL, NULL),
('0b05c19fa7e3f66a9885512c90a94a0a', '127.0.0.1', '2021-07-26 17:59:33', 'false', NULL, NULL, NULL),
('da725ace1fcf6897946de61c09b5ebde', '127.0.0.1', '2021-07-26 17:59:49', 'false', NULL, NULL, NULL),
('f4b21cbddad5b29e34e5799019d71ae3', '127.0.0.1', '2021-07-26 18:00:18', 'true', NULL, NULL, NULL),
('4a7cea224f7f467ee449a7787f1e3de4', '127.0.0.1', '2021-07-26 18:00:35', 'true', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_kecamatan`
--

CREATE TABLE `m_kecamatan` (
  `id` char(7) COLLATE utf8_unicode_ci NOT NULL,
  `kota_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `m_kecamatan`
--

INSERT INTO `m_kecamatan` (`id`, `kota_id`, `nama`) VALUES
('3374010', '3374', 'Kecamatan 1'),
('3374020', '3374', 'Kecamatan 2'),
('3374030', '3374', 'Kecamatan 3'),
('3374040', '3374', 'Kecamatan 4'),
('3374050', '3374', 'Kecamatan 5'),
('3374060', '3374', 'Kecamatan 6'),
('3374070', '3374', 'Kecamatan 7'),
('3374080', '3374', 'Kecamatan 8'),
('3374090', '3374', 'Kecamatan 9'),
('3374100', '3374', 'Kecamatan 10'),
('3374110', '3374', 'Kecamatan 11'),
('3374120', '3374', 'Kecamatan 12'),
('3374130', '3374', 'Kecamatan 13'),
('3374140', '3374', 'Kecamatan 14'),
('3374150', '3374', 'Kecamatan 15'),
('3374160', '3374', 'Kecamatan 16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_kontributor`
--

CREATE TABLE `m_kontributor` (
  `kd` varchar(50) NOT NULL,
  `usernamex` varchar(100) DEFAULT NULL,
  `passwordx` varchar(100) DEFAULT NULL,
  `kode` varchar(100) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jabatan` varchar(100) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `telp` varchar(100) DEFAULT NULL,
  `email` longtext DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `fb` longtext DEFAULT NULL,
  `twitter` longtext DEFAULT NULL,
  `instagram` longtext DEFAULT NULL,
  `youtube` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_kota`
--

CREATE TABLE `m_kota` (
  `id` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `prop_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `m_kota`
--

INSERT INTO `m_kota` (`id`, `prop_id`, `nama`) VALUES
('3374', '33', 'KOTA BIASAWAE');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_penyewa`
--

CREATE TABLE `m_penyewa` (
  `kd` varchar(50) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `kelamin` varchar(1) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `jenis_id` varchar(100) DEFAULT NULL,
  `no_id` varchar(100) DEFAULT NULL,
  `telp` varchar(100) DEFAULT NULL,
  `email` longtext DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `usernamex` varchar(100) DEFAULT NULL,
  `passwordx` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `m_penyewa`
--

INSERT INTO `m_penyewa` (`kd`, `nama`, `kelamin`, `alamat`, `jenis_id`, `no_id`, `telp`, `email`, `postdate`, `usernamex`, `passwordx`) VALUES
('81dc9bdb52d04dc20036dbd8313ed055', '1234', 'L', '1234', 'KTP', '1234', '1234', '1234xtkeongxgmail.com', '2021-06-07 02:07:17', '1234824', '81dc9bdb52d04dc20036dbd8313ed055'),
('6512bd43d9caa6e02c990b0a82652dca', '11', 'L', '11', 'KTP', '11', '11', '11xtkeongxyahoo.com', '2021-07-26 18:00:12', '11521', '6512bd43d9caa6e02c990b0a82652dca'),
('c20ad4d76fe97759aa27a0c99bff6710', '12', 'L', '12', 'KTP', '12', '12', '12', '2021-07-26 18:00:26', '12861', 'c20ad4d76fe97759aa27a0c99bff6710');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_seniman`
--

CREATE TABLE `m_seniman` (
  `kd` varchar(50) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `kategori_kelompok` varchar(100) DEFAULT NULL,
  `jenis_seni` varchar(100) DEFAULT NULL,
  `nama_sanggar` varchar(100) DEFAULT NULL,
  `penanggung_jawab` varchar(100) DEFAULT NULL,
  `telp` varchar(100) DEFAULT NULL,
  `masa_berlaku` varchar(100) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `kecamatan` varchar(100) DEFAULT NULL,
  `kelurahan` varchar(100) DEFAULT NULL,
  `jml_anggota_l` varchar(5) DEFAULT NULL,
  `jml_anggota_p` varchar(5) DEFAULT NULL,
  `total_anggota` varchar(5) DEFAULT NULL,
  `tgl_pendirian` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `filex1` longtext DEFAULT NULL,
  `kode` varchar(100) DEFAULT NULL,
  `usernamex` varchar(100) DEFAULT NULL,
  `passwordx` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `m_seniman`
--

INSERT INTO `m_seniman` (`kd`, `status`, `kategori_kelompok`, `jenis_seni`, `nama_sanggar`, `penanggung_jawab`, `telp`, `masa_berlaku`, `alamat`, `kecamatan`, `kelurahan`, `jml_anggota_l`, `jml_anggota_p`, `total_anggota`, `tgl_pendirian`, `postdate`, `filex1`, `kode`, `usernamex`, `passwordx`) VALUES
('6512bd43d9caa6e02c990b0a82652dca', 'Belum Terverifikasi', 'Budaya', 'Pedalangan', '', 'Suwarsono. S.P', '62818298854', '2xgmringx9xgmringx2024', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '5', '9', '14', '2xgmringx9xgmringx2021', '2021-07-26 17:38:00', NULL, '11', '11', '6512bd43d9caa6e02c990b0a82652dca'),
('a532400ed62e772b9dc0b86f46e583ff', 'Belum Terverifikasi', 'Seni', 'Rebana', 'A Taqwa', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '637', '637', 'a532400ed62e772b9dc0b86f46e583ff'),
('08d98638c6fcd194a4b1e6992063e944', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'ABDISTA MUSIK', 'SUTOYO', '62818298854', '5xgmringx15xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '12xgmringx31xgmringx2012', '2021-07-26 17:38:00', NULL, '682', '682', '08d98638c6fcd194a4b1e6992063e944'),
('a5bfc9e07964f8dddeb95fc584cd965d', 'Terverifikasi', 'Seni', 'Tradisi', 'ABHINAYA', 'LESA PARANTI', '62818298854', '10xgmringx27xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '6', '6', '6xgmringx27xgmringx2018', '2021-07-26 17:38:00', NULL, '37', '37', 'a5bfc9e07964f8dddeb95fc584cd965d'),
('c8ffe9a587b126f152ed3d89a146b445', 'Terverifikasi', 'Budaya', 'Campursari', 'ABL Studio', 'ANDRIYANTI', '62818298854', '9xgmringx12xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '4', '6', '10', '4xgmringx26xgmringx2006', '2021-07-26 17:38:00', NULL, '124', '124', 'c8ffe9a587b126f152ed3d89a146b445'),
('d34ab169b70c9dcd35e62896010cd9ff', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Ad Dhika', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '377', '377', 'd34ab169b70c9dcd35e62896010cd9ff'),
('28f0b864598a1291557bed248a998d4e', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Adel Musik', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '394', '394', '28f0b864598a1291557bed248a998d4e'),
('6da9003b743b65f4c0ccd295cc484e57', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'Adil Music', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '230', '230', '6da9003b743b65f4c0ccd295cc484e57'),
('6c9882bbac1c7093bd25041881277658', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'Adista', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '250', '250', '6c9882bbac1c7093bd25041881277658'),
('877a9ba7a98f75b90a9d49f53f15a858', 'Belum Terverifikasi', 'Seni', 'Teater', 'AGENCY FILM CLUB JATENG', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '468', '468', '877a9ba7a98f75b90a9d49f53f15a858'),
('0e65972dce68dad4d52d063967f0a705', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'AGISTA MUSIK', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '198', '198', '0e65972dce68dad4d52d063967f0a705'),
('72b32a1f754ba1c09b3695e0cb6cde7f', 'Terverifikasi', 'Seni', 'Band', 'AIMEEI', 'YUS ARI YANTO', '62818298854', '9xgmringx17xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '7', '1', '8', '5xgmringx20xgmringx2004', '2021-07-26 17:38:00', NULL, '57', '57', '72b32a1f754ba1c09b3695e0cb6cde7f'),
('c6e19e830859f2cb9f7c8f8cacb8d2a6', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Ajur Budaya', '', '62818298854', '3xgmringx27xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '581', '581', 'c6e19e830859f2cb9f7c8f8cacb8d2a6'),
('13f3cf8c531952d72e5847c4183e6910', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Al Balado', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '443', '443', '13f3cf8c531952d72e5847c4183e6910'),
('4f6ffe13a5d75b2d6a3923922b3922e5', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Al Dita', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '382', '382', '4f6ffe13a5d75b2d6a3923922b3922e5'),
('0a09c8844ba8f0936c20bd791130d6b6', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Al Hasanah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '144', '144', '0a09c8844ba8f0936c20bd791130d6b6'),
('432aca3a1e345e339f35a30c8f65edce', 'Belum Terverifikasi', 'Seni', 'Band', 'Al Husna', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '318', '318', '432aca3a1e345e339f35a30c8f65edce'),
('1c9ac0159c94d8d0cbedc973445af2da', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Al Ikhlas', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '156', '156', '1c9ac0159c94d8d0cbedc973445af2da'),
('06409663226af2f3114485aa4e0a23b4', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Al Ikhlas', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '158', '158', '06409663226af2f3114485aa4e0a23b4'),
('9be40cee5b0eee1462c82c6964087ff9', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Al Ikhlas', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '365', '365', '9be40cee5b0eee1462c82c6964087ff9'),
('0d7de1aca9299fe63f3e0041f02638a3', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Al Ikhlas', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '674', '674', '0d7de1aca9299fe63f3e0041f02638a3'),
('4ffce04d92a4d6cb21c1494cdfcd6dc1', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Al Iman', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '640', '640', '4ffce04d92a4d6cb21c1494cdfcd6dc1'),
('8fecb20817b3847419bb3de39a609afe', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Al Izza', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '675', '675', '8fecb20817b3847419bb3de39a609afe'),
('24681928425f5a9133504de568f5f6df', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Al Jannah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '683', '683', '24681928425f5a9133504de568f5f6df'),
('1595af6435015c77a7149e92a551338e', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Al Manan', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '681', '681', '1595af6435015c77a7149e92a551338e'),
('30ef30b64204a3088a26bc2e6ecf7602', 'Belum Terverifikasi', 'Seni', 'Rebana', 'AlxstrixBarokah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '652', '652', '30ef30b64204a3088a26bc2e6ecf7602'),
('2f37d10131f2a483a8dd005b3d14b0d9', 'Belum Terverifikasi', 'Seni', 'Rebana', 'AlxstrixBarokah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '658', '658', '2f37d10131f2a483a8dd005b3d14b0d9'),
('051e4e127b92f5d98d3c79b195f2b291', 'Belum Terverifikasi', 'Seni', 'Qosidah', 'AlxstrixHikmah Amega', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '629', '629', '051e4e127b92f5d98d3c79b195f2b291'),
('352fe25daf686bdb4edca223c921acea', 'Belum Terverifikasi', 'Seni', 'Rebana', 'AlxstrixIman', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '399', '399', '352fe25daf686bdb4edca223c921acea'),
('eaae339c4d89fc102edd9dbdb6a28915', 'Belum Terverifikasi', 'Seni', 'Rebana', 'AlxstrixNada', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '653', '653', 'eaae339c4d89fc102edd9dbdb6a28915'),
('6ecbdd6ec859d284dc13885a37ce8d81', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Amanda', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '426', '426', '6ecbdd6ec859d284dc13885a37ce8d81'),
('9b72e31dac81715466cd580a448cf823', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Ambegso Budoyo', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '540', '540', '9b72e31dac81715466cd580a448cf823'),
('46922a0880a8f11f8f69cbb52b1396be', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Among Laras', '', '62818298854', '3xgmringx27xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '582', '582', '46922a0880a8f11f8f69cbb52b1396be'),
('65ded5353c5ee48d0b7d48c591b8f430', 'Belum Terverifikasi', 'Seni', 'Rebana', 'An Nisa', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '132', '132', '65ded5353c5ee48d0b7d48c591b8f430'),
('38af86134b65d0f10fe33d30dd76442e', 'Belum Terverifikasi', 'Seni', 'Rebana', 'An Nisa', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '176', '176', '38af86134b65d0f10fe33d30dd76442e'),
('e0c641195b27425bb056ac56f8953d24', 'Belum Terverifikasi', 'Seni', 'Rebana', 'An Nur', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '421', '421', 'e0c641195b27425bb056ac56f8953d24'),
('291597a100aadd814d197af4f4bab3a7', 'Belum Terverifikasi', 'Seni', 'Rebana', 'An Nur', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '642', '642', '291597a100aadd814d197af4f4bab3a7'),
('a96b65a721e561e1e3de768ac819ffbb', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Andekta', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '409', '409', 'a96b65a721e561e1e3de768ac819ffbb'),
('b9228e0962a78b84f3d5d92f4faa000b', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Andekta', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '412', '412', 'b9228e0962a78b84f3d5d92f4faa000b'),
('ba2fd310dcaa8781a9a652a31baf3c68', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'ANDIKA BUDAYA', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '524', '524', 'ba2fd310dcaa8781a9a652a31baf3c68'),
('c9e1074f5b3f9fc8ea15d152add07294', 'Terverifikasi', 'Seni', 'Vokal', 'ANDY SAXOPHONE MUSIC', 'KARNADI ANDI SUNARTO', '62818298854', '10xgmringx25xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '1', '0', '1', '2xgmringx3xgmringx2019', '2021-07-26 17:38:00', NULL, '104', '104', 'c9e1074f5b3f9fc8ea15d152add07294'),
('c45147dee729311ef5b5c3003946c48f', 'Terverifikasi', 'Seni', 'Campursari', 'ANGKLUNG FUNK ELLING DELLING', 'SUPRIHONO', '62818298854', '7xgmringx12xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '9', '2', '11', '2xgmringx18xgmringx2018', '2021-07-26 17:38:00', NULL, '116', '116', 'c45147dee729311ef5b5c3003946c48f'),
('a8baa56554f96369ab93e4f3bb068c22', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Anisa Al Istiqomah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '142', '142', 'a8baa56554f96369ab93e4f3bb068c22'),
('fe131d7f5a6b38b23cc967316c13dae2', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Anisa Al Istiqomah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '255', '255', 'fe131d7f5a6b38b23cc967316c13dae2'),
('ffd52f3c7e12435a724a8f30fddadd9c', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Anisa Nada', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '373', '373', 'ffd52f3c7e12435a724a8f30fddadd9c'),
('f0935e4cd5920aa6c7c996a5ee53a70f', 'Terverifikasi', 'Budaya', 'Tari Tradisi', 'ANTIKA BUDAYA', 'ROSALIA BUDIYANI WULANDARI', '62818298854', '10xgmringx21xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '46', '10', '56', '9xgmringx21xgmringx1986', '2021-07-26 17:38:00', NULL, '106', '106', 'f0935e4cd5920aa6c7c996a5ee53a70f'),
('298f95e1bf9136124592c8d4825a06fc', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Antika Budaya', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '532', '532', '298f95e1bf9136124592c8d4825a06fc'),
('8efb100a295c0c690931222ff4467bb8', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Ardila', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '387', '387', '8efb100a295c0c690931222ff4467bb8'),
('40008b9a5380fcacce3976bf7c08af5b', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Arleta', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '340', '340', '40008b9a5380fcacce3976bf7c08af5b'),
('5b8add2a5d98b1a652ea7fd72d942dac', 'Belum Terverifikasi', 'Seni', 'Band', 'Armada', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '317', '317', '5b8add2a5d98b1a652ea7fd72d942dac'),
('beed13602b9b0e6ecb5b568ff5058f07', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Aroila', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '383', '383', 'beed13602b9b0e6ecb5b568ff5058f07'),
('08c5433a60135c32e34f46a71175850c', 'Belum Terverifikasi', 'Seni', 'Qosidah', 'Assyabab', '', '62818298854', '3xgmringx27xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '597', '597', '08c5433a60135c32e34f46a71175850c'),
('0584ce565c824b7b7f50282d9a19945b', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Assyifa', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '384', '384', '0584ce565c824b7b7f50282d9a19945b'),
('5ef0b4eba35ab2d6180b0bca7e46b6f9', 'Belum Terverifikasi', 'Seni', 'Rebana', 'AxstrixTaqwa', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '475', '475', '5ef0b4eba35ab2d6180b0bca7e46b6f9'),
('cb70ab375662576bd1ac5aaf16b3fca4', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'Ayu Mustika Nada', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '243', '243', 'cb70ab375662576bd1ac5aaf16b3fca4'),
('7750ca3559e5b8e1f44210283368fc16', 'Belum Terverifikasi', 'Seni', 'Qosidah', 'Ayu Mustika Nada', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '616', '616', '7750ca3559e5b8e1f44210283368fc16'),
('7f5d04d189dfb634e6a85bb9d9adf21e', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Azwajaa Sholehah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '687', '687', '7f5d04d189dfb634e6a85bb9d9adf21e'),
('e44fea3bec53bcea3b7513ccef5857ac', 'Belum Terverifikasi', 'Seni', 'Rebana', 'AzxstrixZahro', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '454', '454', 'e44fea3bec53bcea3b7513ccef5857ac'),
('dc912a253d1e9ba40e2c597ed2376640', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Baloya', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '385', '385', 'dc912a253d1e9ba40e2c597ed2376640'),
('e7b24b112a44fdd9ee93bdf998c6ca0e', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Barada', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '360', '360', 'e7b24b112a44fdd9ee93bdf998c6ca0e'),
('41ae36ecb9b3eee609d05b90c14222fb', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Biantang Buana', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '417', '417', '41ae36ecb9b3eee609d05b90c14222fb'),
('c5ff2543b53f4cc0ad3819a36752467b', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Bima Kelana', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '347', '347', 'c5ff2543b53f4cc0ad3819a36752467b'),
('48ab2f9b45957ab574cf005eb8a76760', 'Belum Terverifikasi', 'Seni', 'Qosidah', 'Bintari', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '624', '624', '48ab2f9b45957ab574cf005eb8a76760'),
('63923f49e5241343aa7acb6a06a751e7', 'Belum Terverifikasi', 'Budaya', 'Karawitan', 'Broto Laras', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '275', '275', '63923f49e5241343aa7acb6a06a751e7'),
('7380ad8a673226ae47fce7bff88e9c33', 'Belum Terverifikasi', 'Budaya', 'Pedalangan', 'Broto Laras', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '497', '497', '7380ad8a673226ae47fce7bff88e9c33'),
('e555ebe0ce426f7f9b2bef0706315e0c', 'Belum Terverifikasi', 'Seni', 'Campursari', 'Broto Laras', '', '62818298854', '3xgmringx25xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx25xgmringx2019', '2021-07-26 17:38:00', NULL, '692', '692', 'e555ebe0ce426f7f9b2bef0706315e0c'),
('d2ddea18f00665ce8623e36bd4e3c7c5', 'Terverifikasi', 'Seni', 'Tradisi', 'BUDI LARAS', 'BUDIYANTO', '62818298854', '9xgmringx15xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '17', '3', '20', '8xgmringx18xgmringx2016', '2021-07-26 17:38:00', NULL, '73', '73', 'd2ddea18f00665ce8623e36bd4e3c7c5'),
('24b16fede9a67c9251d3e7c7161c83ac', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Cahaya Muda', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '372', '372', '24b16fede9a67c9251d3e7c7161c83ac'),
('8f85517967795eeef66c225f7883bdcb', 'Belum Terverifikasi', 'Seni', 'Campursari', 'Candi Ngudi Laras', '', '62818298854', '3xgmringx25xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx25xgmringx2019', '2021-07-26 17:38:00', NULL, '178', '178', '8f85517967795eeef66c225f7883bdcb'),
('5fd0b37cd7dbbb00f97ba6ce92bf5add', 'Terverifikasi', 'Seni', 'Band', 'CANDIDATH BAND', 'HENDRI CAHYONO', '62818298854', '10xgmringx17xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '6', '2', '8', '10xgmringx16xgmringx1994', '2021-07-26 17:38:00', NULL, '114', '114', '5fd0b37cd7dbbb00f97ba6ce92bf5add'),
('a666587afda6e89aec274a3657558a27', 'Belum Terverifikasi', 'Seni', 'Band', 'Castro', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '326', '326', 'a666587afda6e89aec274a3657558a27'),
('98b297950041a42470269d56260243a1', 'Belum Terverifikasi', 'Seni', 'Seni Lukis', 'Cempaka', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '460', '460', '98b297950041a42470269d56260243a1'),
('cee631121c2ec9232f3a2f028ad5c89b', 'Belum Terverifikasi', 'Budaya', 'Pedalangan', 'Cempaka', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '500', '500', 'cee631121c2ec9232f3a2f028ad5c89b'),
('10a5ab2db37feedfdeaab192ead4ac0e', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Chairun Nissa Fatayat RW II', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '691', '691', '10a5ab2db37feedfdeaab192ead4ac0e'),
('37a749d808e46495a8da1e5352d03cae', 'Belum Terverifikasi', 'Seni', 'Campursari', 'Chandra Nada', '', '62818298854', '3xgmringx25xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx25xgmringx2019', '2021-07-26 17:38:00', NULL, '152', '152', '37a749d808e46495a8da1e5352d03cae'),
('013d407166ec4fa56eb1e1f8cbe183b9', 'Belum Terverifikasi', 'Seni', 'Rebana', 'CHOIRUNNISA', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '138', '138', '013d407166ec4fa56eb1e1f8cbe183b9'),
('8d5e957f297893487bd98fa830fa6413', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Choirunnisa', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '147', '147', '8d5e957f297893487bd98fa830fa6413'),
('f2217062e9a397a1dca429e7d70bc6ca', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Choirunnisa', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '149', '149', 'f2217062e9a397a1dca429e7d70bc6ca'),
('e165421110ba03099a1c0393373c5b43', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Choirunnisa', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '233', '233', 'e165421110ba03099a1c0393373c5b43'),
('94f6d7e04a4d452035300f18b984988c', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Choirunnisa', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '300', '300', '94f6d7e04a4d452035300f18b984988c'),
('5737c6ec2e0716f3d8a7a5c4e0de0d9a', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Choirunnisa', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '322', '322', '5737c6ec2e0716f3d8a7a5c4e0de0d9a'),
('01386bd6d8e091c2ab4c7c7de644d37b', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Cindril Laras', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '348', '348', '01386bd6d8e091c2ab4c7c7de644d37b'),
('cdc0d6e63aa8e41c89689f54970bb35f', 'Belum Terverifikasi', 'Seni', 'Qosidah', 'Citra Muda', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '619', '619', 'cdc0d6e63aa8e41c89689f54970bb35f'),
('eccbc87e4b5ce2fe28308fd9f2a7baf3', 'Belum Terverifikasi', 'Seni', 'Band', 'CLAYLAND', 'AKBAR NUR IMAN', '62818298854', '2xgmringx10xgmringx2024', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '5', '2', '7', '7xgmringx21xgmringx2018', '2021-07-26 17:38:00', NULL, '3', '3', 'eccbc87e4b5ce2fe28308fd9f2a7baf3'),
('3c59dc048e8850243be8079a5c74d079', 'Belum Terverifikasi', 'Seni', 'Band', 'COFFEEBREAK', 'NUZULUL NINA QURANI', '62818298854', '12xgmringx21xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '2', '1', '3', '2xgmringx15xgmringx2017', '2021-07-26 17:38:00', NULL, '21', '21', '3c59dc048e8850243be8079a5c74d079'),
('ea5d2f1c4608232e07d3aa3d998e5135', 'Terverifikasi', 'Seni', 'Band', 'CONGROCK 17', 'MARKO DWI LASMONO, SH', '62818298854', '9xgmringx15xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '16', '3', '19', '3xgmringx17xgmringx1983', '2021-07-26 17:38:00', NULL, '64', '64', 'ea5d2f1c4608232e07d3aa3d998e5135'),
('26657d5ff9020d2abefe558796b99584', 'Terverifikasi', 'Seni', 'Dangdut', 'CS MUSIK', 'MAHFUD SAMSUDIN', '62818298854', '11xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '9', '2', '11', '9xgmringx8xgmringx2018', '2021-07-26 17:38:00', NULL, '96', '96', '26657d5ff9020d2abefe558796b99584'),
('85d8ce590ad8981ca2c8286f79f59954', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'D Java', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '197', '197', '85d8ce590ad8981ca2c8286f79f59954'),
('3def184ad8f4755ff269862ea77393dd', 'Terverifikasi', 'Seni', 'Solo Organ', 'dads N Friend', 'Daddy Untung Sugianto', '62818298854', '5xgmringx14xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '2xgmringx21xgmringx2008', '2021-07-26 17:38:00', NULL, '125', '125', '3def184ad8f4755ff269862ea77393dd'),
('c52f1bd66cc19d05628bd8bf27af3ad6', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'Damai Nada', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '254', '254', 'c52f1bd66cc19d05628bd8bf27af3ad6'),
('13f9896df61279c928f19721878fac41', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Denada', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '346', '346', '13f9896df61279c928f19721878fac41'),
('66808e327dc79d135ba18e051673d906', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Denada', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '414', '414', '66808e327dc79d135ba18e051673d906'),
('38db3aed920cf82ab059bfccbd02be6a', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'Denada Ria', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '246', '246', '38db3aed920cf82ab059bfccbd02be6a'),
('c81e728d9d4c2f636f067f89cc14862c', 'Belum Terverifikasi', 'Seni', 'Band', 'DENDI NATA', 'DENDIE PUTRANATA', '62818298854', '2xgmringx10xgmringx2024', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '4', '2', '6', '1xgmringx3xgmringx2018', '2021-07-26 17:38:00', NULL, '2', '2', 'c81e728d9d4c2f636f067f89cc14862c'),
('efe937780e95574250dabe07151bdc23', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Dewa Krishna', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '351', '351', 'efe937780e95574250dabe07151bdc23'),
('6ea2ef7311b482724a9b7b0bc0dd85c6', 'Belum Terverifikasi', 'Seni', 'Campursari', 'DEWA NDARU', 'TRI SETYO UTOMO', '62818298854', '10xgmringx7xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '6', '4', '10', '3xgmringx13xgmringx2008', '2021-07-26 17:38:00', NULL, '480', '480', '6ea2ef7311b482724a9b7b0bc0dd85c6'),
('1385974ed5904a438616ff7bdb3f7439', 'Terverifikasi', 'Seni', 'Campursari', 'DEWANDARU ENTERTAINMENT', 'TRI SETYO UTOMO', '62818298854', '3xgmringx25xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '10', '6', '16', '1xgmringx19xgmringx2006', '2021-07-26 17:38:00', NULL, '140', '140', '1385974ed5904a438616ff7bdb3f7439'),
('bac9162b47c56fc8a4d2a519803d51b3', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Dewata Musik', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '364', '364', 'bac9162b47c56fc8a4d2a519803d51b3'),
('019d385eb67632a7e958e23f24bd07d7', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Dhipa Kelana', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '433', '433', '019d385eb67632a7e958e23f24bd07d7'),
('b6f0479ae87d244975439c6124592772', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Diva Erlangga', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '420', '420', 'b6f0479ae87d244975439c6124592772'),
('8613985ec49eb8f757ae6439e879bb2a', 'Terverifikasi', 'Seni', 'Band', 'DONJUxstrixONE', 'CATUR CAHYONO', '62818298854', '2xgmringx17xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '3', '3', '6', '10xgmringx23xgmringx2019', '2021-07-26 17:38:00', NULL, '90', '90', '8613985ec49eb8f757ae6439e879bb2a'),
('5ef059938ba799aaa845e1c2e8a762bd', 'Terverifikasi', 'Seni', 'Dangdut', 'DWI PUTRA MUSIK', 'ACHMAD SYAIFUL SOFIAN MD', '62818298854', '5xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '8', '4', '12', '8xgmringx18xgmringx2008', '2021-07-26 17:38:00', NULL, '118', '118', '5ef059938ba799aaa845e1c2e8a762bd'),
('a0a080f42e6f13b3a2df133f073095dd', 'Terverifikasi', 'Seni', 'Tari Modern', 'dxpsijixGOEND ENTERTAIMENT', 'R.RONNY GURITNO', '62818298854', '5xgmringx13xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '7xgmringx23xgmringx2013', '2021-07-26 17:38:00', NULL, '122', '122', 'a0a080f42e6f13b3a2df133f073095dd'),
('28dd2c7955ce926456240b2ff0100bde', 'Belum Terverifikasi', 'Seni', 'Band', 'DxpsijixJadoel Band', 'Cahyanto M', '62818298854', '9xgmringx7xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '5', '1', '6', '9xgmringx7xgmringx2020', '2021-07-26 17:38:00', NULL, '77', '77', '28dd2c7955ce926456240b2ff0100bde'),
('ad972f10e0800b49d76fed33a21f6698', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'DxstrixAmore', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '374', '374', 'ad972f10e0800b49d76fed33a21f6698'),
('5d44ee6f2c3f71b73125876103c8f6c4', 'Belum Terverifikasi', 'Seni', 'Qosidah', 'El Baghdad', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '617', '617', '5d44ee6f2c3f71b73125876103c8f6c4'),
('3435c378bb76d4357324dd7e69f3cd18', 'Belum Terverifikasi', 'Seni', 'Qosidah', 'El Hawa', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '599', '599', '3435c378bb76d4357324dd7e69f3cd18'),
('58d4d1e7b1e97b258c9ed0b37e02d087', 'Belum Terverifikasi', 'Seni', 'Qosidah', 'El Hawa', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '615', '615', '58d4d1e7b1e97b258c9ed0b37e02d087'),
('07a96b1f61097ccb54be14d6a47439b0', 'Belum Terverifikasi', 'Seni', 'Rebana', 'El Ikhwan', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '689', '689', '07a96b1f61097ccb54be14d6a47439b0'),
('85fc37b18c57097425b52fc7afbb6969', 'Belum Terverifikasi', 'Seni', 'Qosidah', 'El Muna', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '621', '621', '85fc37b18c57097425b52fc7afbb6969'),
('34173cb38f07f89ddbebc2ac9128303f', 'Belum Terverifikasi', 'Seni', 'Qosidah', 'EL RHIFA', 'DEWI MASRIANI', '62818298854', '12xgmringx14xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '2', '4', '6', '11xgmringx30xgmringx2020', '2021-07-26 17:38:00', NULL, '30', '30', '34173cb38f07f89ddbebc2ac9128303f'),
('8ebda540cbcc4d7336496819a46a1b68', 'Belum Terverifikasi', 'Seni', 'Qosidah', 'El Shinta', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '611', '611', '8ebda540cbcc4d7336496819a46a1b68'),
('35f4a8d465e6e1edc05f3d8ab658c551', 'Terverifikasi', 'Seni', 'Qosidah', 'ELHAWA', 'HJ. FELLA SUFFAH', '62818298854', '7xgmringx7xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '3', '14', '17', '8xgmringx14xgmringx1986', '2021-07-26 17:38:00', NULL, '78', '78', '35f4a8d465e6e1edc05f3d8ab658c551'),
('08b255a5d42b89b0585260b6f2360bdd', 'Belum Terverifikasi', 'Seni', 'Qosidah', 'Elsa Nada', '', '62818298854', '3xgmringx27xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '590', '590', '08b255a5d42b89b0585260b6f2360bdd'),
('185c29dc24325934ee377cfda20e414c', 'Belum Terverifikasi', 'Seni', 'Qosidah', 'ElxstrixFatah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '627', '627', '185c29dc24325934ee377cfda20e414c'),
('b2f627fff19fda463cb386442eac2b3d', 'Belum Terverifikasi', 'Seni', 'Qosidah', 'Ezzura', '', '62818298854', '3xgmringx27xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '601', '601', 'b2f627fff19fda463cb386442eac2b3d'),
('8e296a067a37563370ded05f5a3bf3ec', 'Belum Terverifikasi', 'Seni', 'Band', 'FADE IN KUSTIK', 'ISYA DIPANCA', '62818298854', '12xgmringx21xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '2', '1', '3', '3xgmringx12xgmringx2019', '2021-07-26 17:38:00', NULL, '25', '25', '8e296a067a37563370ded05f5a3bf3ec'),
('a02ffd91ece5e7efeb46db8f10a74059', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Fanny music', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '379', '379', 'a02ffd91ece5e7efeb46db8f10a74059'),
('3a066bda8c96b9478bb0512f0a43028c', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Fastabiqul Khoirot', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '661', '661', '3a066bda8c96b9478bb0512f0a43028c'),
('b73dfe25b4b8714c029b37a6ad3006fa', 'Belum Terverifikasi', 'Seni', 'Qosidah', 'Fat runawa', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '620', '620', 'b73dfe25b4b8714c029b37a6ad3006fa'),
('89f0fd5c927d466d6ec9a21b9ac34ffa', 'Belum Terverifikasi', 'Seni', 'Band', 'FOC xkkurixFARIASI Orang Musikxkkurnanx', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '325', '325', '89f0fd5c927d466d6ec9a21b9ac34ffa'),
('fe73f687e5bc5280214e0486b273a5f9', 'Belum Terverifikasi', 'Seni', 'Band', 'Four Men Band', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '330', '330', 'fe73f687e5bc5280214e0486b273a5f9'),
('f61d6947467ccd3aa5af24db320235dd', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Fun Music', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '375', '375', 'f61d6947467ccd3aa5af24db320235dd'),
('73278a4a86960eeb576a8fd4c9ec6997', 'Terverifikasi', 'Seni', 'Band', 'G SIMPEL AKUSTIK', 'ILHAM NUR FATAQ', '62818298854', '10xgmringx17xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '8', '1', '9', '6xgmringx20xgmringx2019', '2021-07-26 17:38:00', NULL, '113', '113', '73278a4a86960eeb576a8fd4c9ec6997'),
('1c383cd30b7c298ab50293adfecb7b18', 'Terverifikasi', 'Seni', 'Tradisi', 'GAYATRI', 'ANTONIUS EDI NUGROHO', '62818298854', '10xgmringx27xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '10', '1', '11', '7xgmringx1xgmringx2019', '2021-07-26 17:38:00', NULL, '35', '35', '1c383cd30b7c298ab50293adfecb7b18'),
('9cc138f8dc04cbf16240daa92d8d50e2', 'Belum Terverifikasi', 'Seni', 'Qosidah', 'Gema Nusantara', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '630', '630', '9cc138f8dc04cbf16240daa92d8d50e2'),
('4e732ced3463d06de0ca9a15b6153677', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Gendhis Dance Center', 'Yatriman, S.Pd.,M.Si', '62818298854', '12xgmringx20xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '1', '25', '26', '1xgmringx4xgmringx2019', '2021-07-26 17:38:00', NULL, '26', '26', '4e732ced3463d06de0ca9a15b6153677'),
('bd686fd640be98efaae0091fa301e613', 'Belum Terverifikasi', 'Seni', 'Band', 'Gita Wibawa Swara', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '193', '193', 'bd686fd640be98efaae0091fa301e613'),
('1651cf0d2f737d7adeab84d339dbabd3', 'Belum Terverifikasi', 'Budaya', 'Keroncong', 'Gitaria', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '438', '438', '1651cf0d2f737d7adeab84d339dbabd3'),
('e6b4b2a746ed40e1af829d1fa82daa10', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Greget', '', '62818298854', '3xgmringx27xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '572', '572', 'e6b4b2a746ed40e1af829d1fa82daa10'),
('7f100b7b36092fb9b06dfb4fac360931', 'Belum Terverifikasi', 'Budaya', 'Karawitan', 'GRIYA NGIJO', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '271', '271', '7f100b7b36092fb9b06dfb4fac360931'),
('218a0aefd1d1a4be65601cc6ddc1520e', 'Belum Terverifikasi', 'Budaya', 'Pedalangan', 'Griya Ngijo', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '485', '485', '218a0aefd1d1a4be65601cc6ddc1520e'),
('d3d9446802a44259755d38e6d163e820', 'Belum Terverifikasi', 'Seni', 'Seni Lukis', 'grobakhysteria', 'Ahmad Khairudin', '62818298854', '2xgmringx9xgmringx2024', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '9', '2', '11', '2xgmringx14xgmringx2003', '2021-07-26 17:38:00', NULL, '10', '10', 'd3d9446802a44259755d38e6d163e820'),
('4c5bde74a8f110656874902f07378009', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Group Rebana As Shidiqiyah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '182', '182', '4c5bde74a8f110656874902f07378009'),
('758874998f5bd0c393da094e1967a72b', 'Belum Terverifikasi', 'Seni', 'Band', 'Guntur Music', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '314', '314', '758874998f5bd0c393da094e1967a72b'),
('a49e9411d64ff53eccfdd09ad10a15b3', 'Belum Terverifikasi', 'Budaya', 'Keroncong', 'Gunungjati', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '434', '434', 'a49e9411d64ff53eccfdd09ad10a15b3'),
('3328bdf9a4b9504b9398284244fe97c2', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Hadroh Al Hidayah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '685', '685', '3328bdf9a4b9504b9398284244fe97c2'),
('192fc044e74dffea144f9ac5dc9f3395', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Hadroh Masjid Al Mubarok', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '668', '668', '192fc044e74dffea144f9ac5dc9f3395'),
('41f1f19176d383480afa65d325c06ed0', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Handayani', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '371', '371', '41f1f19176d383480afa65d325c06ed0'),
('dc6a70712a252123c40d2adba6a11d84', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Hikmah Nada', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '676', '676', 'dc6a70712a252123c40d2adba6a11d84'),
('9b04d152845ec0a378394003c96da594', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'Icha Entertainment', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '231', '231', '9b04d152845ec0a378394003c96da594'),
('7e7757b1e12abcb736ab9a754ffb617a', 'Belum Terverifikasi', 'Seni', 'Tari Modern', 'Ipung dance', 'Ipung', '62818298854', '10xgmringx7xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '12', '12', '24', '8xgmringx7xgmringx2019', '2021-07-26 17:38:00', NULL, '166', '166', '7e7757b1e12abcb736ab9a754ffb617a'),
('1a5b1e4daae265b790965a275b53ae50', 'Belum Terverifikasi', 'Budaya', 'Keroncong', 'Irama Asri', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '446', '446', '1a5b1e4daae265b790965a275b53ae50'),
('c203d8a151612acf12457e4d67635a95', 'Belum Terverifikasi', 'Budaya', 'Keroncong', 'Irama Dewangga', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '442', '442', 'c203d8a151612acf12457e4d67635a95'),
('67f7fb873eaf29526a11a9b7ac33bfac', 'Belum Terverifikasi', 'Budaya', 'Keroncong', 'Irama Samudra', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '445', '445', '67f7fb873eaf29526a11a9b7ac33bfac'),
('556f391937dfd4398cbac35e050a2177', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Jamaah Tadkiroh', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '684', '684', '556f391937dfd4398cbac35e050a2177'),
('26408ffa703a72e8ac0117e74ad46f33', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Jamuna', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '656', '656', '26408ffa703a72e8ac0117e74ad46f33'),
('d82c8d1619ad8176d665453cfb2e55f0', 'Terverifikasi', 'Seni', 'Band', 'JAVA STONE', 'TANTIA PRATISTA', '62818298854', '9xgmringx17xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '6', '0', '6', '7xgmringx27xgmringx1982', '2021-07-26 17:38:00', NULL, '53', '53', 'd82c8d1619ad8176d665453cfb2e55f0'),
('58a2fc6ed39fd083f55d4182bf88826d', 'Belum Terverifikasi', 'Seni', 'Vokal', 'John Arya Dee Pro Jakarta', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '192', '192', '58a2fc6ed39fd083f55d4182bf88826d'),
('941e1aaaba585b952b62c14a3a175a61', 'Belum Terverifikasi', 'Seni', 'Vokal', 'John Arya Dee Pro Jakarta', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '451', '451', '941e1aaaba585b952b62c14a3a175a61'),
('92c8c96e4c37100777c7190b76d28233', 'Belum Terverifikasi', 'Budaya', 'Karawitan', 'Joko Songo', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '280', '280', '92c8c96e4c37100777c7190b76d28233'),
('5ea1649a31336092c05438df996a3e59', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Joko Songo', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '537', '537', '5ea1649a31336092c05438df996a3e59'),
('f5deaeeae1538fb6c45901d524ee2f98', 'Belum Terverifikasi', 'Seni', 'Solo Organ', 'Joko Songo', '', '62818298854', '3xgmringx27xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '584', '584', 'f5deaeeae1538fb6c45901d524ee2f98');
INSERT INTO `m_seniman` (`kd`, `status`, `kategori_kelompok`, `jenis_seni`, `nama_sanggar`, `penanggung_jawab`, `telp`, `masa_berlaku`, `alamat`, `kecamatan`, `kelurahan`, `jml_anggota_l`, `jml_anggota_p`, `total_anggota`, `tgl_pendirian`, `postdate`, `filex1`, `kode`, `usernamex`, `passwordx`) VALUES
('c5ab0bc60ac7929182aadd08703f1ec6', 'Belum Terverifikasi', 'Seni', 'Campursari', 'Joko Songo', '', '62818298854', '3xgmringx25xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx25xgmringx2019', '2021-07-26 17:38:00', NULL, '636', '636', 'c5ab0bc60ac7929182aadd08703f1ec6'),
('1534b76d325a8f591b52d302e7181331', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'Kalingga Music', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '212', '212', '1534b76d325a8f591b52d302e7181331'),
('65b9eea6e1cc6bb9f0cd2a47751a186f', 'Terverifikasi', 'Seni', 'Orkes Melayu', 'KALINGGA MUSIK', 'SUHARTO', '62818298854', '10xgmringx23xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '8', '5', '13', '6xgmringx29xgmringx2010', '2021-07-26 17:38:00', NULL, '105', '105', '65b9eea6e1cc6bb9f0cd2a47751a186f'),
('e5f6ad6ce374177eef023bf5d0c018b6', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Kamud Asmoro', '', '62818298854', '3xgmringx27xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '573', '573', 'e5f6ad6ce374177eef023bf5d0c018b6'),
('a4f23670e1833f3fdb077ca70bbd5d66', 'Belum Terverifikasi', 'Budaya', 'Karawitan', 'Karawitan Aji Laras xkkurixKALASxkkurnanx', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '260', '260', 'a4f23670e1833f3fdb077ca70bbd5d66'),
('8c19f571e251e61cb8dd3612f26d5ecf', 'Belum Terverifikasi', 'Budaya', 'Karawitan', 'KARAWITAN NGUDI MADYO LARAS', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '263', '263', '8c19f571e251e61cb8dd3612f26d5ecf'),
('e3796ae838835da0b6f6ea37bcf8bcb7', 'Belum Terverifikasi', 'Budaya', 'Karawitan', 'Karawitan Ngudi Madyo Laras', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '281', '281', 'e3796ae838835da0b6f6ea37bcf8bcb7'),
('698d51a19d8a121ce581499d7b701668', 'Terverifikasi', 'Seni', 'Tari Modern', 'KAREISTA', 'IMAM YONO RAHARJO.S.Sos', '62818298854', '10xgmringx17xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '10', '66', '76', '12xgmringx13xgmringx1992', '2021-07-26 17:38:00', NULL, '111', '111', '698d51a19d8a121ce581499d7b701668'),
('c75b6f114c23a4d7ea11331e7c00e73c', 'Belum Terverifikasi', 'Budaya', 'Ketoprak', 'KARTIKA BUDAYA', '', '62818298854', '3xgmringx25xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx25xgmringx2019', '2021-07-26 17:38:00', NULL, '547', '547', 'c75b6f114c23a4d7ea11331e7c00e73c'),
('d86ea612dec96096c5e0fcc8dd42ab6d', 'Belum Terverifikasi', 'Seni', 'Campursari', 'Kartika Budaya', '', '62818298854', '3xgmringx25xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx25xgmringx2019', '2021-07-26 17:38:00', NULL, '603', '603', 'd86ea612dec96096c5e0fcc8dd42ab6d'),
('b534ba68236ba543ae44b22bd110a1d6', 'Belum Terverifikasi', 'Budaya', 'Pedalangan', 'Kartika Budoyo', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '496', '496', 'b534ba68236ba543ae44b22bd110a1d6'),
('9766527f2b5d3e95d4a733fcfb77bd7e', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'KARTIKA SARI', 'ROHMAD', '62818298854', '8xgmringx12xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '8', '3', '11', '8xgmringx10xgmringx2016', '2021-07-26 17:38:00', NULL, '165', '165', '9766527f2b5d3e95d4a733fcfb77bd7e'),
('0336dcbab05b9d5ad24f4333c7658a0e', 'Belum Terverifikasi', 'Seni', 'Band', 'Kasih Ibu', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '195', '195', '0336dcbab05b9d5ad24f4333c7658a0e'),
('d61e4bbd6393c9111e6526ea173a7c8b', 'Belum Terverifikasi', 'Seni', 'Vokal', 'Katanem Jiwo Budoyo Kel. Pleburan', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '449', '449', 'd61e4bbd6393c9111e6526ea173a7c8b'),
('fc490ca45c00b1249bbe3554a4fdf6fb', 'Terverifikasi', 'Seni', 'Band', 'KAYLA', 'ALMANDO CHARLA', '62818298854', '9xgmringx15xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '4', '2', '6', '11xgmringx3xgmringx2016', '2021-07-26 17:38:00', NULL, '65', '65', 'fc490ca45c00b1249bbe3554a4fdf6fb'),
('16a5cdae362b8d27a1d8f8c7b78b4330', 'Belum Terverifikasi', 'Budaya', 'Karawitan', 'Kel Kes Kusuma Wardhani', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '286', '286', '16a5cdae362b8d27a1d8f8c7b78b4330'),
('428fca9bc1921c25c5121f9da7815cde', 'Belum Terverifikasi', 'Seni', 'Teater', 'Kel Kes Kusuma Wardhani', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '463', '463', '428fca9bc1921c25c5121f9da7815cde'),
('d67d8ab4f4c10bf22aa353e27879133c', 'Terverifikasi', 'Seni', 'Tradisi', 'KEMBANG ARUM', 'SESTRI INDAH PEBRIANTI', '62818298854', '10xgmringx27xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '5', '5', '12xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '39', '39', 'd67d8ab4f4c10bf22aa353e27879133c'),
('aab3238922bcc25a6f606eb525ffdc56', 'Belum Terverifikasi', 'Seni', 'Tradisi', 'KENANG GANTENG', 'BAMBANG WISNU SETRAJI', '62818298854', '2xgmringx3xgmringx2024', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '5', '2', '7', '5xgmringx2xgmringx2018', '2021-07-26 17:38:00', NULL, '14', '14', 'aab3238922bcc25a6f606eb525ffdc56'),
('ad61ab143223efbc24c7d2583be69251', 'Terverifikasi', 'Seni', 'Tradisi', 'KETOPRAK SRIMULYO', 'GIMIN', '62818298854', '9xgmringx15xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '34', '7', '41', '8xgmringx9xgmringx1974', '2021-07-26 17:38:00', NULL, '74', '74', 'ad61ab143223efbc24c7d2583be69251'),
('b1d10e7bafa4421218a51b1e1f1b0ba2', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'KHARISMA NADA', 'AHMAD SAERUN', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '5', '3', '8', '3xgmringx20xgmringx2015', '2021-07-26 17:38:00', NULL, '209', '209', 'b1d10e7bafa4421218a51b1e1f1b0ba2'),
('c361bc7b2c033a83d663b8d9fb4be56e', 'Belum Terverifikasi', 'Seni', 'Qosidah', 'Kharisma Nada', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '605', '605', 'c361bc7b2c033a83d663b8d9fb4be56e'),
('dc82d632c9fcecb0778afbc7924494a6', 'Belum Terverifikasi', 'Seni', 'Qosidah', 'Kharisma Nada', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '607', '607', 'dc82d632c9fcecb0778afbc7924494a6'),
('58ae749f25eded36f486bc85feb3f0ab', 'Terverifikasi', 'Seni', 'Band', 'Kidang n Friend Band', 'muhammad tri murtono', '62818298854', '0000xstrix00xstrix00', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '4xgmringx1xgmringx2019', '2021-07-26 17:38:00', NULL, '561', '561', '58ae749f25eded36f486bc85feb3f0ab'),
('1ff1de774005f8da13f42943881c655f', 'Belum Terverifikasi', 'Seni', 'Band', 'KIDUNG xpsijixN FRIENDS', 'PANJI ILMINUHA RIZQI', '62818298854', '12xgmringx21xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '2', '1', '3', '8xgmringx5xgmringx2019', '2021-07-26 17:38:00', NULL, '24', '24', '1ff1de774005f8da13f42943881c655f'),
('39461a19e9eddfb385ea76b26521ea48', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Kirana', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '386', '386', '39461a19e9eddfb385ea76b26521ea48'),
('db8e1af0cb3aca1ae2d0018624204529', 'Belum Terverifikasi', 'Budaya', 'Karawitan', 'KJB xkkurixKatanem Jiwo Budoyoxkkurnanx', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '276', '276', 'db8e1af0cb3aca1ae2d0018624204529'),
('4c56ff4ce4aaf9573aa5dff913df997a', 'Terverifikasi', 'Seni', 'Band', 'KOEPROES BERSAHABAT BAND', 'SATRIA DWI WIBOWO', '62818298854', '10xgmringx10xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '4', '1', '5', '11xgmringx1xgmringx2009', '2021-07-26 17:38:00', NULL, '121', '121', '4c56ff4ce4aaf9573aa5dff913df997a'),
('d645920e395fedad7bbbed0eca3fe2e0', 'Terverifikasi', 'Seni', 'Tradisi', 'KUDA LUMPING SEKAR TURONGGO JATI', 'RIANTI SRI SUSANTI', '62818298854', '10xgmringx20xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '25', '20', '45', '8xgmringx3xgmringx2017', '2021-07-26 17:38:00', NULL, '40', '40', 'd645920e395fedad7bbbed0eca3fe2e0'),
('045117b0e0a11a242b9765e79cbf113f', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Kuda Lumping Turonggo Tunggak Semi', 'Supriyanto', '62818298854', '9xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '25', '0', '25', '1xgmringx1xgmringx1979', '2021-07-26 17:38:00', NULL, '180', '180', '045117b0e0a11a242b9765e79cbf113f'),
('091d584fced301b442654dd8c23b3fc9', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'Kudu Raya RTxgmringxRW :01xgmringx03 Kudu, Genuk', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '208', '208', '091d584fced301b442654dd8c23b3fc9'),
('821fa74b50ba3f7cba1e6c53e8fa6845', 'Belum Terverifikasi', 'Seni', 'Seni Lukis', 'Kurnia', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '455', '455', '821fa74b50ba3f7cba1e6c53e8fa6845'),
('2723d092b63885e0d7c260cc007e8b9d', 'Terverifikasi', 'Seni', 'Band', 'KUSUMA BIOLA', 'ANANG MAULANA KUSUMA HIDAYAT', '62818298854', '10xgmringx18xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '1', '0', '1', '3xgmringx4xgmringx2019', '2021-07-26 17:38:00', NULL, '109', '109', '2723d092b63885e0d7c260cc007e8b9d'),
('e1e32e235eee1f970470a3a6658dfdd5', 'Belum Terverifikasi', 'Budaya', 'Pedalangan', 'KUSUMAWARDANI', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '483', '483', 'e1e32e235eee1f970470a3a6658dfdd5'),
('9dcb88e0137649590b755372b040afad', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Langen Sido Dadi', '', '62818298854', '4xgmringx1xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '188', '188', '9dcb88e0137649590b755372b040afad'),
('6883966fd8f918a4aa29be29d2c386fb', 'Belum Terverifikasi', 'Budaya', 'Karawitan', 'Langen Tri Budaya', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '294', '294', '6883966fd8f918a4aa29be29d2c386fb'),
('25ddc0f8c9d3e22e03d3076f98d83cb2', 'Belum Terverifikasi', 'Seni', 'Teater', 'Langen Tri Budaya', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '474', '474', '25ddc0f8c9d3e22e03d3076f98d83cb2'),
('3cf166c6b73f030b4f67eeaeba301103', 'Belum Terverifikasi', 'Budaya', 'Pedalangan', 'Langen Tri Budaya', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '499', '499', '3cf166c6b73f030b4f67eeaeba301103'),
('ffeabd223de0d4eacb9a3e6e53e5448d', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Langen Tri Budaya', '', '62818298854', '3xgmringx27xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '575', '575', 'ffeabd223de0d4eacb9a3e6e53e5448d'),
('fe9fc289c3ff0af142b6d3bead98a923', 'Terverifikasi', 'Budaya', 'Tari Tradisi', 'LARASSINTA', 'MUHAMMAD RONI', '62818298854', '3xgmringx3xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '2', '34', '36', '1xgmringx25xgmringx2019', '2021-07-26 17:38:00', NULL, '83', '83', 'fe9fc289c3ff0af142b6d3bead98a923'),
('d947bf06a885db0d477d707121934ff8', 'Belum Terverifikasi', 'Budaya', 'Karawitan', 'Lindu Panon', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '274', '274', 'd947bf06a885db0d477d707121934ff8'),
('42998cf32d552343bc8e460416382dca', 'Belum Terverifikasi', 'Seni', 'Seni Lukis', 'Lindu Panon', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '457', '457', '42998cf32d552343bc8e460416382dca'),
('ab817c9349cf9c4f6877e1894a1faa00', 'Belum Terverifikasi', 'Seni', 'Teater', 'LINDU PANON', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '467', '467', 'ab817c9349cf9c4f6877e1894a1faa00'),
('7dcd340d84f762eba80aa538b0c527f7', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Lindu Panon', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx27xgmringx2019', '2021-07-26 17:38:00', NULL, '542', '542', '7dcd340d84f762eba80aa538b0c527f7'),
('1728efbda81692282ba642aafd57be3a', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Lindu Panon', '', '62818298854', '3xgmringx27xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '564', '564', '1728efbda81692282ba642aafd57be3a'),
('b6d767d2f8ed5d21a44b0e5886680cb9', 'Belum Terverifikasi', 'Seni', 'Band', 'LINE 7 KUSTIK', 'NAUFAL SAKHA ANDSZAR', '62818298854', '12xgmringx21xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '2', '1', '3', '2xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '22', '22', 'b6d767d2f8ed5d21a44b0e5886680cb9'),
('f1b6f2857fb6d44dd73c7041e0aa0f19', 'Belum Terverifikasi', 'Seni', 'Teater', 'Lingkar', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '464', '464', 'f1b6f2857fb6d44dd73c7041e0aa0f19'),
('75fc093c0ee742f6dddaa13fff98f104', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Logikha', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '429', '429', '75fc093c0ee742f6dddaa13fff98f104'),
('f457c545a9ded88f18ecee47145a72c0', 'Terverifikasi', 'Seni', 'Band', 'LOS MONOGRITOS', 'AUDYTYA FANADY YUSI', '62818298854', '9xgmringx17xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '6', '0', '6', '12xgmringx15xgmringx1999', '2021-07-26 17:38:00', NULL, '49', '49', 'f457c545a9ded88f18ecee47145a72c0'),
('f64eac11f2cd8f0efa196f8ad173178e', 'Terverifikasi', 'Seni', 'Campursari', 'Madya laras', '', '62818298854', '3xgmringx23xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx23xgmringx2019', '2021-07-26 17:38:00', NULL, '704', '704', 'f64eac11f2cd8f0efa196f8ad173178e'),
('44f683a84163b3523afe57c2e008bc8c', 'Terverifikasi', 'Seni', 'Band', 'MAEROCK', 'RIO ANDRE TAUFAN', '62818298854', '9xgmringx15xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '5', '2', '7', '11xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '62', '62', '44f683a84163b3523afe57c2e008bc8c'),
('e46de7e1bcaaced9a54f1e9d0d2f800d', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Maestro', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '397', '397', 'e46de7e1bcaaced9a54f1e9d0d2f800d'),
('c51ce410c124a10e0db5e4b97fc2af39', 'Belum Terverifikasi', 'Seni', 'Tradisi', 'MAHAWIDYA', 'ANDIKA KURNIAWAN', '62818298854', '2xgmringx3xgmringx2024', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '4', '8', '12', '6xgmringx20xgmringx2019', '2021-07-26 17:38:00', NULL, '13', '13', 'c51ce410c124a10e0db5e4b97fc2af39'),
('3416a75f4cea9109507cacd8e2f2aefc', 'Belum Terverifikasi', 'Seni', 'Tradisi', 'MAHENDRA', 'SEKAR ARUM CAHYANING P', '62818298854', '10xgmringx18xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '6', '13', '19', '8xgmringx8xgmringx2008', '2021-07-26 17:38:00', NULL, '41', '41', '3416a75f4cea9109507cacd8e2f2aefc'),
('1700002963a49da13542e0726b7bb758', 'Belum Terverifikasi', 'Budaya', 'Karawitan', 'MAHENDRA', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '292', '292', '1700002963a49da13542e0726b7bb758'),
('8e6b42f1644ecb1327dc03ab345e618b', 'Belum Terverifikasi', 'Seni', 'Teater', 'MAHENDRA', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '471', '471', '8e6b42f1644ecb1327dc03ab345e618b'),
('2f55707d4193dc27118a0f19a1985716', 'Belum Terverifikasi', 'Budaya', 'Pedalangan', 'MAHENDRA', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '493', '493', '2f55707d4193dc27118a0f19a1985716'),
('ccb1d45fb76f7c5a0bf619f979c6cf36', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'MAHENDRA', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx27xgmringx2019', '2021-07-26 17:38:00', NULL, '549', '549', 'ccb1d45fb76f7c5a0bf619f979c6cf36'),
('069d3bb002acd8d7dd095917f9efe4cb', 'Belum Terverifikasi', 'Budaya', 'Ketoprak', 'MAHENDRA', '', '62818298854', '3xgmringx25xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx25xgmringx2019', '2021-07-26 17:38:00', NULL, '580', '580', '069d3bb002acd8d7dd095917f9efe4cb'),
('47d1e990583c9c67424d369f3414728e', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Majelis Taklim Al Hidayah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '148', '148', '47d1e990583c9c67424d369f3414728e'),
('ab233b682ec355648e7891e66c54191b', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Majelis Taklim AnxstrixNisa', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '654', '654', 'ab233b682ec355648e7891e66c54191b'),
('9dfcd5e558dfa04aaf37f137a1d9d3e5', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Majelis Taxpsijixlim Al Hidayat', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '311', '311', '9dfcd5e558dfa04aaf37f137a1d9d3e5'),
('4734ba6f3de83d861c3176a6273cac6d', 'Belum Terverifikasi', 'Budaya', 'Karawitan', 'Maju Kareb', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '273', '273', '4734ba6f3de83d861c3176a6273cac6d'),
('7d04bbbe5494ae9d2f5a76aa1c00fa2f', 'Belum Terverifikasi', 'Budaya', 'Pedalangan', 'Maju Kareb', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '486', '486', '7d04bbbe5494ae9d2f5a76aa1c00fa2f'),
('093f65e080a295f8076b1c5722a46aa2', 'Terverifikasi', 'Seni', 'Band', 'MALIK ROS', 'LUKITANINGTYAS CINTYA PARAMASTI', '62818298854', '9xgmringx16xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '2', '1', '3', '11xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '59', '59', '093f65e080a295f8076b1c5722a46aa2'),
('6364d3f0f495b6ab9dcf8d3b5c6e0b01', 'Belum Terverifikasi', 'Seni', 'Tradisi', 'MANUNGGALING KAWULO ALIT', 'M.SANTOSO', '62818298854', '11xgmringx18xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '10', '12', '22', '10xgmringx10xgmringx2020', '2021-07-26 17:38:00', NULL, '32', '32', '6364d3f0f495b6ab9dcf8d3b5c6e0b01'),
('8f14e45fceea167a5a36dedd4bea2543', 'Belum Terverifikasi', 'Seni', 'Band', 'MANY WEST', 'IRFAN ABDI GHIFARI', '62818298854', '2xgmringx10xgmringx2024', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '3', '1', '4', '5xgmringx9xgmringx2019', '2021-07-26 17:38:00', NULL, '7', '7', '8f14e45fceea167a5a36dedd4bea2543'),
('25b2822c2f5a3230abfadd476e8b04c9', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Mara Neta', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '425', '425', '25b2822c2f5a3230abfadd476e8b04c9'),
('18997733ec258a9fcaf239cc55d53363', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Marabunta', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '427', '427', '18997733ec258a9fcaf239cc55d53363'),
('642e92efb79421734881b53e1e1b18b6', 'Terverifikasi', 'Seni', 'Tari Modern', 'MARDAYU', 'ETI SETYAWATI', '62818298854', '9xgmringx21xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '15', '20', '35', '5xgmringx25xgmringx2009', '2021-07-26 17:38:00', NULL, '48', '48', '642e92efb79421734881b53e1e1b18b6'),
('b1a59b315fc9a3002ce38bbe070ec3f5', 'Belum Terverifikasi', 'Budaya', 'Karawitan', 'Mardayu', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '261', '261', 'b1a59b315fc9a3002ce38bbe070ec3f5'),
('9461cce28ebe3e76fb4b931c35a169b0', 'Belum Terverifikasi', 'Budaya', 'Pedalangan', 'Mardayu', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '481', '481', '9461cce28ebe3e76fb4b931c35a169b0'),
('07563a3fe3bbe7e3ba84431ad9d055af', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Mardayu', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '521', '521', '07563a3fe3bbe7e3ba84431ad9d055af'),
('5e9f92a01c986bafcabbafd145520b13', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Mardhotil Mustofa', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '645', '645', '5e9f92a01c986bafcabbafd145520b13'),
('17d63b1625c816c22647a73e1482372b', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Marenta', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '411', '411', '17d63b1625c816c22647a73e1482372b'),
('be3159ad04564bfb90db9e32851ebf9c', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Marxpsijixatus Sholihah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '662', '662', 'be3159ad04564bfb90db9e32851ebf9c'),
('f7664060cc52bc6f3d620bcedc94a4b6', 'Belum Terverifikasi', 'Budaya', 'Karawitan', 'MAYANGSARI LARAS', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '266', '266', 'f7664060cc52bc6f3d620bcedc94a4b6'),
('1543843a4723ed2ab08e18053ae6dc5b', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Mega Musik', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '395', '395', '1543843a4723ed2ab08e18053ae6dc5b'),
('5a4b25aaed25c2ee1b74de72dc03c14e', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Mega Musik Intertainment', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '391', '391', '5a4b25aaed25c2ee1b74de72dc03c14e'),
('d1f491a404d6854880943e5c3cd9ca25', 'Terverifikasi', 'Seni', 'Dangdut', 'MEITA MUSIKxpsijixS', 'TOELOES BOEDI WIBOWO', '62818298854', '8xgmringx13xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '8', '6', '14', '5xgmringx2xgmringx2001', '2021-07-26 17:38:00', NULL, '129', '129', 'd1f491a404d6854880943e5c3cd9ca25'),
('97e8527feaf77a97fc38f34216141515', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Mekar Budaya', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx27xgmringx2019', '2021-07-26 17:38:00', NULL, '544', '544', '97e8527feaf77a97fc38f34216141515'),
('3ef815416f775098fe977004015c6193', 'Terverifikasi', 'Budaya', 'Tari Tradisi', 'MEKAR SARI BUDAYA', 'AGUSTINUS SUTARJO', '62818298854', '3xgmringx2xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '48', '64', '112', '9xgmringx1xgmringx1994', '2021-07-26 17:38:00', NULL, '85', '85', '3ef815416f775098fe977004015c6193'),
('0deb1c54814305ca9ad266f53bc82511', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Meliga Group', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '413', '413', '0deb1c54814305ca9ad266f53bc82511'),
('f4f6dce2f3a0f9dada0c2b5b66452017', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Mellga Group', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '407', '407', 'f4f6dce2f3a0f9dada0c2b5b66452017'),
('9fe8593a8a330607d76796b35c64c600', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Miftakhul Jannah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '678', '678', '9fe8593a8a330607d76796b35c64c600'),
('99bcfcd754a98ce89cb86f73acc04645', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Miftakhul Kharomah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '698', '698', '99bcfcd754a98ce89cb86f73acc04645'),
('55b37c5c270e5d84c793e486d798c01d', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Modern AlxstrixHidayah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '649', '649', '55b37c5c270e5d84c793e486d798c01d'),
('072b030ba126b2f4b2374f342be9ed44', 'Terverifikasi', 'Seni', 'Band', 'MUDAMUDI', 'ARYA TEDJONUGROHO', '62818298854', '9xgmringx16xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '10', '1', '11', '7xgmringx19xgmringx2020', '2021-07-26 17:38:00', NULL, '60', '60', '072b030ba126b2f4b2374f342be9ed44'),
('26e359e83860db1d11b6acca57d8ea88', 'Belum Terverifikasi', 'Budaya', 'Karawitan', 'Mudho Laras', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx18xgmringx2019', '2021-07-26 17:38:00', NULL, '298', '298', '26e359e83860db1d11b6acca57d8ea88'),
('fde9264cf376fffe2ee4ddf4a988880d', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Muri Budaya', '', '62818298854', '3xgmringx27xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '577', '577', 'fde9264cf376fffe2ee4ddf4a988880d'),
('303ed4c69846ab36c2904d3ba8573050', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Mushola AlxstrixAmin', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '647', '647', '303ed4c69846ab36c2904d3ba8573050'),
('74db120f0a8e5646ef5a30154e9f6deb', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'Mustika Nada', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '228', '228', '74db120f0a8e5646ef5a30154e9f6deb'),
('f8c1f23d6a8d8d7904fc0ea8e066b3bb', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Mutiara', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '396', '396', 'f8c1f23d6a8d8d7904fc0ea8e066b3bb'),
('bbf94b34eb32268ada57a3be5062fe7d', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Mutiara', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '403', '403', 'bbf94b34eb32268ada57a3be5062fe7d'),
('9b70e8fe62e40c570a322f1b0b659098', 'Belum Terverifikasi', 'Budaya', 'Keroncong', 'Mutiara Kasih', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '448', '448', '9b70e8fe62e40c570a322f1b0b659098'),
('3cec07e9ba5f5bb252d13f5f431e4bbb', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'Mutiaranada', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '247', '247', '3cec07e9ba5f5bb252d13f5f431e4bbb'),
('8fe0093bb30d6f8c31474bd0764e6ac0', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Nababa milenia', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '416', '416', '8fe0093bb30d6f8c31474bd0764e6ac0'),
('a3c65c2974270fd093ee8a9bf8ae7d0b', 'Terverifikasi', 'Seni', 'Vokal', 'NABILLA VOCAL', 'NABILLA TITANIA RUBIANTO', '62818298854', '10xgmringx18xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '1', '1', '7xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '108', '108', 'a3c65c2974270fd093ee8a9bf8ae7d0b'),
('03c6b06952c750899bb03d998e631860', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'Nada Irama', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '252', '252', '03c6b06952c750899bb03d998e631860'),
('9c838d2e45b2ad1094d42f4ef36764f6', 'Belum Terverifikasi', 'Budaya', 'Karawitan', 'NARIMASTUTI', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '291', '291', '9c838d2e45b2ad1094d42f4ef36764f6'),
('26337353b7962f533d78c762373b3318', 'Belum Terverifikasi', 'Seni', 'Teater', 'NARIMASTUTI', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '470', '470', '26337353b7962f533d78c762373b3318'),
('c410003ef13d451727aeff9082c29a5c', 'Belum Terverifikasi', 'Budaya', 'Pedalangan', 'NARIMASTUTI', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '490', '490', 'c410003ef13d451727aeff9082c29a5c'),
('8d34201a5b85900908db6cae92723617', 'Belum Terverifikasi', 'Seni', 'Tari Modern', 'NARIMASTUTI', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx27xgmringx2019', '2021-07-26 17:38:00', NULL, '548', '548', '8d34201a5b85900908db6cae92723617'),
('8b16ebc056e613024c057be590b542eb', 'Belum Terverifikasi', 'Budaya', 'Ketoprak', 'NARIMASTUTI', '', '62818298854', '3xgmringx25xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx25xgmringx2019', '2021-07-26 17:38:00', NULL, '569', '569', '8b16ebc056e613024c057be590b542eb'),
('7cbbc409ec990f19c78c75bd1e06f215', 'Terverifikasi', 'Seni', 'Qosidah', 'NASIDA RIA', 'H. ABDUL CHOLIQ', '62818298854', '9xgmringx15xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '3', '9', '12', '8xgmringx17xgmringx1975', '2021-07-26 17:38:00', NULL, '70', '70', '7cbbc409ec990f19c78c75bd1e06f215'),
('7eabe3a1649ffa2b3ff8c02ebfd5659f', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'NASIDA RIA', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '206', '206', '7eabe3a1649ffa2b3ff8c02ebfd5659f'),
('3dd48ab31d016ffcbf3314df2b3cb9ce', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Nasida Ria', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '341', '341', '3dd48ab31d016ffcbf3314df2b3cb9ce'),
('6aca97005c68f1206823815f66102863', 'Belum Terverifikasi', 'Seni', 'Qosidah', 'Nasida Ria', '', '62818298854', '3xgmringx27xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '598', '598', '6aca97005c68f1206823815f66102863'),
('14bfa6bb14875e45bba028a21ed38046', 'Terverifikasi', 'Seni', 'Band', 'NAUFALBAHIR', 'NAUFALBAHIR DWIHASTU P.', '62818298854', '9xgmringx15xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '9', '1', '10', '8xgmringx14xgmringx2020', '2021-07-26 17:38:00', NULL, '69', '69', '14bfa6bb14875e45bba028a21ed38046'),
('3c7781a36bcd6cf08c11a970fbe0e2a6', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Neo Barata', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '424', '424', '3c7781a36bcd6cf08c11a970fbe0e2a6'),
('f74909ace68e51891440e4da0b65a70c', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Neo Vista', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '430', '430', 'f74909ace68e51891440e4da0b65a70c'),
('ad13a2a07ca4b7642959dc0c4c740ab6', 'Belum Terverifikasi', 'Seni', 'Band', 'New Ardista Entertaintment', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '315', '315', 'ad13a2a07ca4b7642959dc0c4c740ab6'),
('539fd53b59e3bb12d203f45a912eeaf2', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'New Areska Group', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '237', '237', '539fd53b59e3bb12d203f45a912eeaf2'),
('43ec517d68b6edd3015b3edc9a11367b', 'Terverifikasi', 'Seni', 'Dangdut', 'NEW BALANE', 'ADAM MAULANA', '62818298854', '3xgmringx26xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '16', '3', '19', '3xgmringx14xgmringx2019', '2021-07-26 17:38:00', NULL, '81', '81', '43ec517d68b6edd3015b3edc9a11367b'),
('e2c0be24560d78c5e599c2a9c9d0bbd2', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'New Barata Musik', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '203', '203', 'e2c0be24560d78c5e599c2a9c9d0bbd2'),
('3ad7c2ebb96fcba7cda0cf54a2e802f5', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'New Barata Musik', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '343', '343', '3ad7c2ebb96fcba7cda0cf54a2e802f5'),
('5f93f983524def3dca464469d2cf9f3e', 'Terverifikasi', 'Seni', 'Band', 'NEW CALUNG PURWOKERTO SEMARANG', 'MOCHAMAD FAUZI', '62818298854', '10xgmringx18xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '8', '0', '8', '10xgmringx10xgmringx2015', '2021-07-26 17:38:00', NULL, '110', '110', '5f93f983524def3dca464469d2cf9f3e'),
('58238e9ae2dd305d79c2ebc8c1883422', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'New Dewata', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '342', '342', '58238e9ae2dd305d79c2ebc8c1883422'),
('950a4152c2b4aa3ad78bdd6b366cc179', 'Belum Terverifikasi', 'Seni', 'Band', 'New Galaxy Music', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '312', '312', '950a4152c2b4aa3ad78bdd6b366cc179'),
('6855456e2fe46a9d49d3d3af4f57443d', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'New Galaxy Music', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '336', '336', '6855456e2fe46a9d49d3d3af4f57443d'),
('1d7f7abc18fcb43975065399b0d1e48e', 'Terverifikasi', 'Seni', 'Campursari', 'NEW MAHKOTA', 'SUWANTO', '62818298854', '6xgmringx17xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '15', '2', '17', '4xgmringx22xgmringx2018', '2021-07-26 17:38:00', NULL, '154', '154', '1d7f7abc18fcb43975065399b0d1e48e'),
('f033ab37c30201f73f142449d037028d', 'Terverifikasi', 'Seni', 'Dangdut', 'NEW MUSIC', 'MUSAFAK', '62818298854', '3xgmringx26xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '16', '3', '19', '4xgmringx4xgmringx2019', '2021-07-26 17:38:00', NULL, '80', '80', 'f033ab37c30201f73f142449d037028d'),
('812b4ba287f5ee0bc9d43bbf5bbe87fb', 'Terverifikasi', 'Seni', 'Dangdut', 'NEW ROLEXTA MUSIC', 'SARWONO', '62818298854', '12xgmringx12xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '12', '3', '15', '2xgmringx1xgmringx2009', '2021-07-26 17:38:00', NULL, '95', '95', '812b4ba287f5ee0bc9d43bbf5bbe87fb'),
('8e98d81f8217304975ccb23337bb5761', 'Belum Terverifikasi', 'Seni', 'Band', 'New Season', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '307', '307', '8e98d81f8217304975ccb23337bb5761'),
('39059724f73a9969845dfe4146c5660e', 'Belum Terverifikasi', 'Budaya', 'Karawitan', 'NGESTHI BUDAYA', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '270', '270', '39059724f73a9969845dfe4146c5660e'),
('9fd81843ad7f202f26c1a174c7357585', 'Belum Terverifikasi', 'Budaya', 'Karawitan', 'Ngesthi Budaya', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '297', '297', '9fd81843ad7f202f26c1a174c7357585'),
('c3c59e5f8b3e9753913f4d435b53c308', 'Belum Terverifikasi', 'Budaya', 'Pedalangan', 'Ngesthi Budaya', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '488', '488', 'c3c59e5f8b3e9753913f4d435b53c308'),
('33e75ff09dd601bbe69f351039152189', 'Terverifikasi', 'Seni', 'Tradisi', 'NGESTI PANDOWO', 'YURUSTIARTO', '62818298854', '12xgmringx17xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '50', '26', '76', '7xgmringx1xgmringx1937', '2021-07-26 17:38:00', NULL, '28', '28', '33e75ff09dd601bbe69f351039152189'),
('eba0dc302bcd9a273f8bbb72be3a687b', 'Belum Terverifikasi', 'Budaya', 'Pedalangan', 'NGESTI PANDOWO', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '484', '484', 'eba0dc302bcd9a273f8bbb72be3a687b'),
('d6baf65e0b240ce177cf70da146c8dc8', 'Belum Terverifikasi', 'Budaya', 'Karawitan', 'NGUDI BUDAYA', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '264', '264', 'd6baf65e0b240ce177cf70da146c8dc8'),
('6a9aeddfc689c1d0e3b9ccc3ab651bc5', 'Belum Terverifikasi', 'Budaya', 'Karawitan', 'Ngudi Budaya', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '282', '282', '6a9aeddfc689c1d0e3b9ccc3ab651bc5'),
('06138bc5af6023646ede0e1f7c1eac75', 'Belum Terverifikasi', 'Budaya', 'Karawitan', 'NGUDI LARAS', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '269', '269', '06138bc5af6023646ede0e1f7c1eac75'),
('eb6fdc36b281b7d5eabf33396c2683a2', 'Terverifikasi', 'Seni', 'Qosidah', 'Nidaria', 'RUMANAH', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '1xgmringx1xgmringx1983', '2021-07-26 17:38:00', NULL, '618', '618', 'eb6fdc36b281b7d5eabf33396c2683a2'),
('faa9afea49ef2ff029a833cccc778fd0', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Nirmala', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '423', '423', 'faa9afea49ef2ff029a833cccc778fd0'),
('182be0c5cdcd5072bb1864cdee4d3d6e', 'Terverifikasi', 'Seni', 'Orkes Melayu', 'NIRWANA MUSIK', 'SUROYO', '62818298854', '11xgmringx6xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '8', '5', '13', '2xgmringx23xgmringx2010', '2021-07-26 17:38:00', NULL, '33', '33', '182be0c5cdcd5072bb1864cdee4d3d6e'),
('18d8042386b79e2c279fd162df0205c8', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Novita Group', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '400', '400', '18d8042386b79e2c279fd162df0205c8'),
('eb160de1de89d9058fcb0b968dbbbd68', 'Terverifikasi', 'Seni', 'Campursari', 'NRHIT Tempo Doeloe', 'IKHWANUDIN', '62818298854', '7xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '2', '6', '8', '8xgmringx8xgmringx2016', '2021-07-26 17:38:00', NULL, '117', '117', 'eb160de1de89d9058fcb0b968dbbbd68'),
('3295c76acbf4caaed33c36b1b5fc2cb1', 'Terverifikasi', 'Seni', 'Band', 'NUANZA', 'JOHAN PERMATA', '62818298854', '9xgmringx15xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '5', '1', '6', '7xgmringx4xgmringx2019', '2021-07-26 17:38:00', NULL, '66', '66', '3295c76acbf4caaed33c36b1b5fc2cb1'),
('98dce83da57b0395e163467c9dae521b', 'Terverifikasi', 'Seni', 'Band', 'NUBE ENTERTAINMENT', 'SEPTIAN GALIH PRAKOSO', '62818298854', '1xgmringx29xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '8', '2', '10', '1xgmringx18xgmringx2018', '2021-07-26 17:38:00', NULL, '93', '93', '98dce83da57b0395e163467c9dae521b'),
('d9fc5b73a8d78fad3d6dffe419384e70', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Nurjanah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '388', '388', 'd9fc5b73a8d78fad3d6dffe419384e70'),
('f79921bbae40a577928b76d2fc3edc2a', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Nurul chasanah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '688', '688', 'f79921bbae40a577928b76d2fc3edc2a'),
('82aa4b0af34c2313a562076992e50aa3', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Nurul Hasanah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '162', '162', '82aa4b0af34c2313a562076992e50aa3'),
('e00da03b685a0dd18fb6a08af0923de0', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Nurul Hidayah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '139', '139', 'e00da03b685a0dd18fb6a08af0923de0'),
('140f6969d5213fd0ece03148e62e461e', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Nurul Hidayah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '159', '159', '140f6969d5213fd0ece03148e62e461e'),
('9188905e74c28e489b44e954ec0b9bca', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Nurul Hidayah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '244', '244', '9188905e74c28e489b44e954ec0b9bca'),
('3d2d8ccb37df977cb6d9da15b76c3f3a', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Nurul Hidayah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '655', '655', '3d2d8ccb37df977cb6d9da15b76c3f3a'),
('c06d06da9666a219db15cf575aff2824', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Nurul Hikmah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '690', '690', 'c06d06da9666a219db15cf575aff2824'),
('0f28b5d49b3020afeecd95b4009adf4c', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Nurul Huda', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '141', '141', '0f28b5d49b3020afeecd95b4009adf4c'),
('559cb990c9dffd8675f6bc2186971dc2', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Nurul Khomariah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '491', '491', '559cb990c9dffd8675f6bc2186971dc2'),
('310dcbbf4cce62f762a2aaa148d556bd', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Nurul musthofa', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '333', '333', '310dcbbf4cce62f762a2aaa148d556bd'),
('7ef605fc8dba5425d6965fbd4c8fbe1f', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Nurul Mustofa', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '150', '150', '7ef605fc8dba5425d6965fbd4c8fbe1f'),
('5c04925674920eb58467fb52ce4ef728', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Nurul Mustofa', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '669', '669', '5c04925674920eb58467fb52ce4ef728');
INSERT INTO `m_seniman` (`kd`, `status`, `kategori_kelompok`, `jenis_seni`, `nama_sanggar`, `penanggung_jawab`, `telp`, `masa_berlaku`, `alamat`, `kecamatan`, `kelurahan`, `jml_anggota_l`, `jml_anggota_p`, `total_anggota`, `tgl_pendirian`, `postdate`, `filex1`, `kode`, `usernamex`, `passwordx`) VALUES
('68ce199ec2c5517597ce0a4d89620f55', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Nurul Safaat', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '465', '465', '68ce199ec2c5517597ce0a4d89620f55'),
('55743cc0393b1cb4b8b37d09ae48d097', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Nurul xpsijixAini', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '651', '651', '55743cc0393b1cb4b8b37d09ae48d097'),
('d1fe173d08e959397adf34b1d77e88d7', 'Terverifikasi', 'Seni', 'Seni Lukis', 'NYALA RUPA', 'SETIO UTOMO H.S', '62818298854', '6xgmringx17xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '3', '3', '6', '2xgmringx17xgmringx2020', '2021-07-26 17:38:00', NULL, '79', '79', 'd1fe173d08e959397adf34b1d77e88d7'),
('f29c21d4897f78948b91f03172341b7b', 'Belum Terverifikasi', 'Seni', 'Qosidah', 'O M Bintang Karya', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '613', '613', 'f29c21d4897f78948b91f03172341b7b'),
('57aeee35c98205091e18d1140e9f38cf', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'O.D.C Wijaya Kusuma', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '229', '229', '57aeee35c98205091e18d1140e9f38cf'),
('5ef698cd9fe650923ea331c15af3b160', 'Belum Terverifikasi', 'Seni', 'Campursari', 'O.D.C Wijaya Kusuma', '', '62818298854', '3xgmringx25xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx25xgmringx2019', '2021-07-26 17:38:00', NULL, '366', '366', '5ef698cd9fe650923ea331c15af3b160'),
('077e29b11be80ab57e1a2ecabb7da330', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'O.D.E. Wijaya Kusuma', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '249', '249', '077e29b11be80ab57e1a2ecabb7da330'),
('d81f9c1be2e08964bf9f24b15f0e4900', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'O.G. Assyabab', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '345', '345', 'd81f9c1be2e08964bf9f24b15f0e4900'),
('68d30a9594728bc39aa24be94b319d21', 'Terverifikasi', 'Seni', 'Campursari', 'O.K. RAOSSAE', 'EDY SUGIYANTO', '62818298854', '3xgmringx2xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '7', '1', '8', '11xgmringx15xgmringx2018', '2021-07-26 17:38:00', NULL, '84', '84', '68d30a9594728bc39aa24be94b319d21'),
('a733fa9b25f33689e2adbe72199f0e62', 'Belum Terverifikasi', 'Seni', 'Qosidah', 'O.M Asyaba', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '623', '623', 'a733fa9b25f33689e2adbe72199f0e62'),
('fb7b9ffa5462084c5f4e7e85a093e6d7', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'O.M Bharata', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '357', '357', 'fb7b9ffa5462084c5f4e7e85a093e6d7'),
('00ac8ed3b4327bdd4ebbebcb2ba10a00', 'Belum Terverifikasi', 'Seni', 'Qosidah', 'O.M Bharata', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '610', '610', '00ac8ed3b4327bdd4ebbebcb2ba10a00'),
('8d7d8ee069cb0cbbf816bbb65d56947e', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'O.M Dewa', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '428', '428', '8d7d8ee069cb0cbbf816bbb65d56947e'),
('f85454e8279be180185cac7d243c5eb3', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'O.M Kaptanada', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '422', '422', 'f85454e8279be180185cac7d243c5eb3'),
('274ad4786c3abca69fa097b85867d9a4', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'O.M KOWANZA', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '204', '204', '274ad4786c3abca69fa097b85867d9a4'),
('f73b76ce8949fe29bf2a537cfa420e8f', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'O.M Mursita Nada', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '392', '392', 'f73b76ce8949fe29bf2a537cfa420e8f'),
('c3e878e27f52e2a57ace4d9a76fd9acf', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'O.M Pandawa', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '362', '362', 'c3e878e27f52e2a57ace4d9a76fd9acf'),
('d1f255a373a3cef72e03aa9d980c7eca', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'O.M Paradise', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '418', '418', 'd1f255a373a3cef72e03aa9d980c7eca'),
('d709f38ef758b5066ef31b18039b8ce5', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'O.M. Reansa', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '370', '370', 'd709f38ef758b5066ef31b18039b8ce5'),
('45645a27c4f1adc8a7a835976064a86d', 'Belum Terverifikasi', 'Seni', 'Qosidah', 'OG. Assyabab', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '626', '626', '45645a27c4f1adc8a7a835976064a86d'),
('55a7cf9c71f1c9c495413f934dd1a158', 'Terverifikasi', 'Seni', 'Campursari', 'OM ADS PRO', 'SUGENG RIYADI LINUWIH', '62818298854', '7xgmringx11xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '8', '4', '12', '9xgmringx18xgmringx2013', '2021-07-26 17:38:00', NULL, '492', '492', '55a7cf9c71f1c9c495413f934dd1a158'),
('357a6fdf7642bf815a88822c447d9dc4', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Om Bagista', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '337', '337', '357a6fdf7642bf815a88822c447d9dc4'),
('00ec53c4682d36f5c4359f4ae7bd7ba1', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'OM Bahana', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '381', '381', '00ec53c4682d36f5c4359f4ae7bd7ba1'),
('45fbc6d3e05ebd93369ce542e8f2322d', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'Om Baladewa', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '216', '216', '45fbc6d3e05ebd93369ce542e8f2322d'),
('142949df56ea8ae0be8b5306971900a4', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'OM Berkah Nada', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '376', '376', '142949df56ea8ae0be8b5306971900a4'),
('3b8a614226a953a8cd9526fca6fe9ba5', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'Om Bintang Karya', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '215', '215', '3b8a614226a953a8cd9526fca6fe9ba5'),
('996a7fa078cc36c46d02f9af3bef918b', 'Belum Terverifikasi', 'Seni', 'Qosidah', 'Om Bintang Karya', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '608', '608', '996a7fa078cc36c46d02f9af3bef918b'),
('979d472a84804b9f647bc185a877a8b5', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'Om Dangdut Syakira', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '213', '213', '979d472a84804b9f647bc185a877a8b5'),
('63dc7ed1010d3c3b8269faf0ba7491d4', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'OM Dinamika Musik', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '217', '217', '63dc7ed1010d3c3b8269faf0ba7491d4'),
('c86a7ee3d8ef0b551ed58e354a836f2b', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'OM Divanda', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '389', '389', 'c86a7ee3d8ef0b551ed58e354a836f2b'),
('f340f1b1f65b6df5b5e3f94d95b11daf', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'OM Elfista', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '241', '241', 'f340f1b1f65b6df5b5e3f94d95b11daf'),
('0c74b7f78409a4022a2c4c5a5ca3ee19', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'OM Erate Musik', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '369', '369', '0c74b7f78409a4022a2c4c5a5ca3ee19'),
('82cec96096d4281b7c95cd7e74623496', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'OM Herista Musik', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '355', '355', '82cec96096d4281b7c95cd7e74623496'),
('e4a6222cdb5b34375400904f03d8e6a5', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'OM Jebettrus', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '242', '242', 'e4a6222cdb5b34375400904f03d8e6a5'),
('9cfdf10e8fc047a44b08ed031e1f0ed1', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'OM Jembret', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '226', '226', '9cfdf10e8fc047a44b08ed031e1f0ed1'),
('ca46c1b9512a7a8315fa3c5a946e8265', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'Om Mahadesta', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '214', '214', 'ca46c1b9512a7a8315fa3c5a946e8265'),
('3871bd64012152bfb53fdf04b401193f', 'Belum Terverifikasi', 'Seni', 'Qosidah', 'OM Murhitanada', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '622', '622', '3871bd64012152bfb53fdf04b401193f'),
('371bce7dc83817b7893bcdeed13799b5', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Om Music Techno duth Inovative', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '352', '352', '371bce7dc83817b7893bcdeed13799b5'),
('0bb4aec1710521c12ee76289d9440817', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'OM New Merpati Koplo House Musik', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '349', '349', '0bb4aec1710521c12ee76289d9440817'),
('555d6702c950ecb729a966504af0a635', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'OM Putra Arimba', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '239', '239', '555d6702c950ecb729a966504af0a635'),
('605ff764c617d3cd28dbbdd72be8f9a2', 'Belum Terverifikasi', 'Seni', 'Solo Organ', 'OM Putra Arimba', '', '62818298854', '3xgmringx27xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '586', '586', '605ff764c617d3cd28dbbdd72be8f9a2'),
('c058f544c737782deacefa532d9add4c', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'OM Putra Moyang Moyong', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '359', '359', 'c058f544c737782deacefa532d9add4c'),
('115f89503138416a242f40fb7d7f338e', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'OM Ristama', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '223', '223', '115f89503138416a242f40fb7d7f338e'),
('d1c38a09acc34845c6be3a127a5aacaf', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'OM Romantika', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '225', '225', 'd1c38a09acc34845c6be3a127a5aacaf'),
('138bb0696595b338afbab333c555292a', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'OM Romantika', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '353', '353', '138bb0696595b338afbab333c555292a'),
('a9a1d5317a33ae8cef33961c34144f84', 'Belum Terverifikasi', 'Seni', 'Solo Organ', 'OM Romantika', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '585', '585', 'a9a1d5317a33ae8cef33961c34144f84'),
('d7a728a67d909e714c0774e22cb806f2', 'Belum Terverifikasi', 'Seni', 'Qosidah', 'OM Romantika', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '609', '609', 'd7a728a67d909e714c0774e22cb806f2'),
('d09bf41544a3365a46c9077ebb5e35c3', 'Terverifikasi', 'Seni', 'Dangdut', 'OM SYALALA', 'FIKRI MAULANA HAIKAL', '62818298854', '9xgmringx14xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '8', '2', '10', '9xgmringx9xgmringx2019', '2021-07-26 17:38:00', NULL, '75', '75', 'd09bf41544a3365a46c9077ebb5e35c3'),
('6c524f9d5d7027454a783c841250ba71', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'OM Virgo', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '356', '356', '6c524f9d5d7027454a783c841250ba71'),
('e96ed478dab8595a7dbda4cbcbee168f', 'Terverifikasi', 'Seni', 'Campursari', 'OM Yudista', 'nisa', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '218', '218', 'e96ed478dab8595a7dbda4cbcbee168f'),
('819f46e52c25763a55cc642422644317', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'OM. Baladewa', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '338', '338', '819f46e52c25763a55cc642422644317'),
('04025959b191f8f9de3f924f0940515f', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'OM. De Java', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '339', '339', '04025959b191f8f9de3f924f0940515f'),
('f899139df5e1059396431415e770c6dd', 'Terverifikasi', 'Seni', 'Dangdut', 'OM. JAVA COMMUNITY', 'DEDY HARTANTO', '62818298854', '11xgmringx19xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '12', '5', '17', '10xgmringx10xgmringx2016', '2021-07-26 17:38:00', NULL, '100', '100', 'f899139df5e1059396431415e770c6dd'),
('e2ef524fbf3d9fe611d5a8e90fefdc9c', 'Terverifikasi', 'Seni', 'Dangdut', 'OM. JIPTA MUSIC', 'ANTON SUJARWO', '62818298854', '11xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '7', '3', '10', '1xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '97', '97', 'e2ef524fbf3d9fe611d5a8e90fefdc9c'),
('67c6a1e7ce56d3d6fa748ab6d9af3fd7', 'Terverifikasi', 'Seni', 'Orkes Melayu', 'OM. NEW DEWATA', 'NUROHMAN', '62818298854', '9xgmringx22xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '11', '4', '15', '9xgmringx21xgmringx2017', '2021-07-26 17:38:00', NULL, '47', '47', '67c6a1e7ce56d3d6fa748ab6d9af3fd7'),
('757b505cfd34c64c85ca5b5690ee5293', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'OM. New Merpati Koplo House Music', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '201', '201', '757b505cfd34c64c85ca5b5690ee5293'),
('060ad92489947d410d897474079c1477', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'OM. OKE STAR', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '221', '221', '060ad92489947d410d897474079c1477'),
('705f2172834666788607efbfca35afb3', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'OM. Putra Savita', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '227', '227', '705f2172834666788607efbfca35afb3'),
('816b112c6105b3ebd537828a39af4818', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'OM.Raseko', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '401', '401', '816b112c6105b3ebd537828a39af4818'),
('cfee398643cbc3dc5eefc89334cacdc1', 'Terverifikasi', 'Seni', 'Campursari', 'OM.TUAN MINOR', 'MOH SAHRI', '62818298854', '10xgmringx7xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '8', '1', '9', '9xgmringx10xgmringx2013', '2021-07-26 17:38:00', NULL, '478', '478', 'cfee398643cbc3dc5eefc89334cacdc1'),
('b7b16ecf8ca53723593894116071700c', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'OM.Useeyfa', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '398', '398', 'b7b16ecf8ca53723593894116071700c'),
('02e74f10e0327ad868d138f2b4fdd6f0', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'OMAH BIYUNG', 'WITAMI, SE', '62818298854', '12xgmringx18xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '2', '17', '19', '12xgmringx17xgmringx2018', '2021-07-26 17:38:00', NULL, '27', '27', '02e74f10e0327ad868d138f2b4fdd6f0'),
('4a47d2983c8bd392b120b627e0e1cab4', 'Terverifikasi', 'Budaya', 'Tari Tradisi', 'Omah Seni dxpsijixGoend Entertaint', 'R.Ronny Guritno', '62818298854', '5xgmringx17xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '4', '11', '15', '7xgmringx23xgmringx2013', '2021-07-26 17:38:00', NULL, '705', '705', '4a47d2983c8bd392b120b627e0e1cab4'),
('da4fb5c6e93e74d3df8527599fa62642', 'Terverifikasi', 'Seni', 'Dangdut', 'ORKES DENADA', 'Moch. Widiyanto', '62818298854', '5xgmringx15xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx25xgmringx1995', '2021-07-26 17:38:00', NULL, '120', '120', 'da4fb5c6e93e74d3df8527599fa62642'),
('f76a89f0cb91bc419542ce9fa43902dc', 'Belum Terverifikasi', 'Seni', 'Qosidah', 'Orkes Gamelan Bus El Madani', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '612', '612', 'f76a89f0cb91bc419542ce9fa43902dc'),
('fccb60fb512d13df5083790d64c4d5dd', 'Belum Terverifikasi', 'Budaya', 'Keroncong', 'Orkes Keroncong DIMENSI', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '437', '437', 'fccb60fb512d13df5083790d64c4d5dd'),
('577ef1154f3240ad5b9b413aa7346a1e', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'Orkes Melayu Aldita', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '235', '235', '577ef1154f3240ad5b9b413aa7346a1e'),
('69adc1e107f7f7d035d7baf04342e1ca', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'Orkes Melayu Bagista', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '207', '207', '69adc1e107f7f7d035d7baf04342e1ca'),
('9cf81d8026a9018052c429cc4e56739b', 'Belum Terverifikasi', 'Seni', 'Qosidah', 'Orkes Melayu Bintang 3', '', '62818298854', '3xgmringx27xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '604', '604', '9cf81d8026a9018052c429cc4e56739b'),
('d96409bf894217686ba124d7356686c9', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'Orkes Melayu DxpsijixFans Musik', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '257', '257', 'd96409bf894217686ba124d7356686c9'),
('daca41214b39c5dc66674d09081940f0', 'Belum Terverifikasi', 'Seni', 'Solo Organ', 'Orkes Melayu DxpsijixFans Musik', '', '62818298854', '3xgmringx27xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '588', '588', 'daca41214b39c5dc66674d09081940f0'),
('289dff07669d7a23de0ef88d2f7129e7', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'Orkes Melayu Kanasta', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '234', '234', '289dff07669d7a23de0ef88d2f7129e7'),
('9ad6aaed513b73148b7d49f70afcfb32', 'Belum Terverifikasi', 'Seni', 'Solo Organ', 'ORKES MELAYU MOGISTA', '', '62818298854', '3xgmringx27xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '583', '583', '9ad6aaed513b73148b7d49f70afcfb32'),
('be83ab3ecd0db773eb2dc1b0a17836a1', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'Orkes Melayu New Poseta', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '232', '232', 'be83ab3ecd0db773eb2dc1b0a17836a1'),
('00411460f7c92d2124a67ea0f4cb5f85', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Orkes Melayu Pandawa', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '363', '363', '00411460f7c92d2124a67ea0f4cb5f85'),
('01161aaa0b6d1345dd8fe4e481144d84', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'Orkes Melayu Yuliana Musik', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '236', '236', '01161aaa0b6d1345dd8fe4e481144d84'),
('2421fcb1263b9530df88f7f002e78ea5', 'Belum Terverifikasi', 'Budaya', 'Keroncong', 'Orkes Pesona Ratu Ayu', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '436', '436', '2421fcb1263b9530df88f7f002e78ea5'),
('851ddf5058cf22df63d3344ad89919cf', 'Belum Terverifikasi', 'Seni', 'Campursari', 'Orkes Pesona Ratu Ayu', '', '62818298854', '3xgmringx25xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx25xgmringx2019', '2021-07-26 17:38:00', NULL, '614', '614', '851ddf5058cf22df63d3344ad89919cf'),
('621bf66ddb7c962aa0d22ac97d69b793', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'Orkestra Melayu', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '248', '248', '621bf66ddb7c962aa0d22ac97d69b793'),
('a8849b052492b5106526b2331e526138', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Pad Madifa', '', '62818298854', '3xgmringx27xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '578', '578', 'a8849b052492b5106526b2331e526138'),
('13f320e7b5ead1024ac95c3b208610db', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'PADMA DIVA ENTERTAIN', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '527', '527', '13f320e7b5ead1024ac95c3b208610db'),
('258be18e31c8188555c2ff05b4d542c3', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Padma Diva Entertain', '', '62818298854', '3xgmringx27xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '579', '579', '258be18e31c8188555c2ff05b4d542c3'),
('a597e50502f5ff68e3e25b9114205d4a', 'Belum Terverifikasi', 'Seni', 'Vokal', 'Paduan Suara Kel. Cendana', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '194', '194', 'a597e50502f5ff68e3e25b9114205d4a'),
('98f13708210194c475687be6106a3b84', 'Terverifikasi', 'Seni', 'Band', 'PAGI BOETA', 'KUNTO WIBISONO', '62818298854', '1xgmringx6xgmringx2024', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '8', '2', '10', '5xgmringx4xgmringx2014', '2021-07-26 17:38:00', NULL, '20', '20', '98f13708210194c475687be6106a3b84'),
('3493894fa4ea036cfc6433c3e2ee63b0', 'Belum Terverifikasi', 'Budaya', 'Ketoprak', 'Paguyuban Artis Ketoprak', '', '62818298854', '3xgmringx25xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx25xgmringx2019', '2021-07-26 17:38:00', NULL, '591', '591', '3493894fa4ea036cfc6433c3e2ee63b0'),
('6faa8040da20ef399b63a72d0e4ab575', 'Belum Terverifikasi', 'Seni', 'Band', 'Paguyuban Insan Musik Semarang xkkurixPIMUSxkkurnanx', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '329', '329', '6faa8040da20ef399b63a72d0e4ab575'),
('502e4a16930e414107ee22b6198c578f', 'Belum Terverifikasi', 'Budaya', 'Karawitan', 'PAGUYUBAN SASTRO JENDRO HAYUNINGRAT', '', '62818298854', '0000xstrix00xstrix00', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '258', '258', '502e4a16930e414107ee22b6198c578f'),
('0f49c89d1e7298bb9930789c8ed59d48', 'Belum Terverifikasi', 'Budaya', 'Karawitan', 'Paguyuban Seni Karawitan dan Panembromo Candi Laras', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '283', '283', '0f49c89d1e7298bb9930789c8ed59d48'),
('9431c87f273e507e6040fcb07dcb4509', 'Belum Terverifikasi', 'Seni', 'Vokal', 'Paguyuban Seni Karawitan dan Panembromo Candi Laras', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '452', '452', '9431c87f273e507e6040fcb07dcb4509'),
('e56954b4f6347e897f954495eab16a88', 'Belum Terverifikasi', 'Budaya', 'Karawitan', 'PAGUYUBAN SENI KARAWITAN, DAN PANEMBROMO CANDI LARAS', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '265', '265', 'e56954b4f6347e897f954495eab16a88'),
('250cf8b51c773f3f8dc8b4be867a9a02', 'Belum Terverifikasi', 'Seni', 'Seni Lukis', 'Paku Budaya', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '456', '456', '250cf8b51c773f3f8dc8b4be867a9a02'),
('f770b62bc8f42a0b66751fe636fc6eb0', 'Belum Terverifikasi', 'Budaya', 'Pedalangan', 'PAKU BUDAYA', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '482', '482', 'f770b62bc8f42a0b66751fe636fc6eb0'),
('6ea9ab1baa0efb9e19094440c317e21b', 'Terverifikasi', 'Seni', 'Tradisi', 'PANCALA RADYA', 'INDHAH LEO YURITA', '62818298854', '12xgmringx17xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '7', '29', '36', '8xgmringx12xgmringx2015', '2021-07-26 17:38:00', NULL, '29', '29', '6ea9ab1baa0efb9e19094440c317e21b'),
('aa942ab2bfa6ebda4840e7360ce6e7ef', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Pandawa Musik', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '358', '358', 'aa942ab2bfa6ebda4840e7360ce6e7ef'),
('0e01938fc48a2cfb5f2217fbfb00722d', 'Belum Terverifikasi', 'Budaya', 'Karawitan', 'Pangudi Raos', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '285', '285', '0e01938fc48a2cfb5f2217fbfb00722d'),
('918317b57931b6b7a7d29490fe5ec9f9', 'Belum Terverifikasi', 'Budaya', 'Karawitan', 'Pangudi Raos', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '287', '287', '918317b57931b6b7a7d29490fe5ec9f9'),
('f5f8590cd58a54e94377e6ae2eded4d9', 'Belum Terverifikasi', 'Seni', 'Vokal', 'Pangudi Raos', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '450', '450', 'f5f8590cd58a54e94377e6ae2eded4d9'),
('54229abfcfa5649e7003b83dd4755294', 'Terverifikasi', 'Seni', 'Band', 'PAPILA', 'PREMASTI YUDHA PAMUNGKAS', '62818298854', '2xgmringx17xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '3', '2', '5', '2xgmringx3xgmringx2019', '2021-07-26 17:38:00', NULL, '91', '91', '54229abfcfa5649e7003b83dd4755294'),
('9bf31c7ff062936a96d3c8bd1f8f2ff3', 'Belum Terverifikasi', 'Seni', 'Tradisi', 'PARVATI', 'ASITTA MUKHAROMAH', '62818298854', '2xgmringx3xgmringx2024', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '2', '3', '5', '1xgmringx1xgmringx2020', '2021-07-26 17:38:00', NULL, '15', '15', '9bf31c7ff062936a96d3c8bd1f8f2ff3'),
('a86c450b76fb8c371afead6410d55534', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'PEPETRI', '', '62818298854', '3xgmringx27xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '570', '570', 'a86c450b76fb8c371afead6410d55534'),
('70efdf2ec9b086079795c442636b55fb', 'Terverifikasi', 'Seni', 'Qosidah', 'PERKUMPULAN NASYID NUSANTARA JAWA TENGAH', 'Hari Nugraha', '62818298854', '1xgmringx20xgmringx2024', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '19', '8', '27', '3xgmringx21xgmringx2017', '2021-07-26 17:38:00', NULL, '17', '17', '70efdf2ec9b086079795c442636b55fb'),
('6c8349cc7260ae62e3b1396831a8398f', 'Belum Terverifikasi', 'Seni', 'Tradisi', 'Perkumpulan Tembang Jiwa', 'Aris Kurnianto,S.Psi', '62818298854', '10xgmringx1xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '7', '33', '40', '3xgmringx25xgmringx2017', '2021-07-26 17:38:00', NULL, '45', '45', '6c8349cc7260ae62e3b1396831a8398f'),
('a7aeed74714116f3b292a982238f83d2', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Permata Budaya', '', '62818298854', '3xgmringx27xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '576', '576', 'a7aeed74714116f3b292a982238f83d2'),
('7f39f8317fbdb1988ef4c628eba02591', 'Terverifikasi', 'Seni', 'Band', 'PERTELON KOPLO', 'AFFAN GUSTI PRADANA', '62818298854', '9xgmringx15xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '5', '0', '5', '9xgmringx17xgmringx2019', '2021-07-26 17:38:00', NULL, '61', '61', '7f39f8317fbdb1988ef4c628eba02591'),
('2b44928ae11fb9384c4cf38708677c48', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Perwira budaya', 'Ayok Eko Pertiwi', '62818298854', '6xgmringx19xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '13', '28', '41', '3xgmringx3xgmringx2017', '2021-07-26 17:38:00', NULL, '115', '115', '2b44928ae11fb9384c4cf38708677c48'),
('42e7aaa88b48137a16a1acd04ed91125', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Pesona', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '415', '415', '42e7aaa88b48137a16a1acd04ed91125'),
('d6c651ddcd97183b2e40bc464231c962', 'Terverifikasi', 'Seni', 'Campursari', 'Pesona Indonesia', '', '62818298854', '3xgmringx25xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx25xgmringx2019', '2021-07-26 17:38:00', NULL, '703', '703', 'd6c651ddcd97183b2e40bc464231c962'),
('36660e59856b4de58a219bcf4e27eba3', 'Belum Terverifikasi', 'Budaya', 'Karawitan', 'PONOKAWAN', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '262', '262', '36660e59856b4de58a219bcf4e27eba3'),
('d64a340bcb633f536d56e51874281454', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'PRADAPA BUDAYA', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '530', '530', 'd64a340bcb633f536d56e51874281454'),
('13fe9d84310e77f13a6d184dbf1232f3', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'Pranata Musik', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '224', '224', '13fe9d84310e77f13a6d184dbf1232f3'),
('ed3d2c21991e3bef5e069713af9fa6ca', 'Terverifikasi', 'Seni', 'Dangdut', 'PRATAMA MUSIC', 'RUDIYANTO', '62818298854', '11xgmringx27xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '6', '3', '9', '4xgmringx4xgmringx2018', '2021-07-26 17:38:00', NULL, '98', '98', 'ed3d2c21991e3bef5e069713af9fa6ca'),
('30bb3825e8f631cc6075c0f87bb4978c', 'Belum Terverifikasi', 'Seni', 'Solo Organ', 'Prima Nada', '', '62818298854', '3xgmringx27xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '589', '589', '30bb3825e8f631cc6075c0f87bb4978c'),
('c3992e9a68c5ae12bd18488bc579b30d', 'Belum Terverifikasi', 'Seni', 'Qosidah', 'Puma Bonanza', '', '62818298854', '3xgmringx27xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '602', '602', 'c3992e9a68c5ae12bd18488bc579b30d'),
('550a141f12de6341fba65b0ad0433500', 'Belum Terverifikasi', 'Budaya', 'Keroncong', 'Puspa Jelita', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '444', '444', '550a141f12de6341fba65b0ad0433500'),
('ec5decca5ed3d6b8079e2e7e7bacc9f2', 'Terverifikasi', 'Seni', 'Campursari', 'Puspa Nugraha', 'Puspa Rini', '62818298854', '5xgmringx15xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '8xgmringx14xgmringx2001', '2021-07-26 17:38:00', NULL, '127', '127', 'ec5decca5ed3d6b8079e2e7e7bacc9f2'),
('5737034557ef5b8c02c0e46513b98f90', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Puspa nugroho', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '539', '539', '5737034557ef5b8c02c0e46513b98f90'),
('49182f81e6a13cf5eaa496d51fea6406', 'Belum Terverifikasi', 'Budaya', 'Karawitan', 'Puspita Sekaran', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '295', '295', '49182f81e6a13cf5eaa496d51fea6406'),
('f0e52b27a7a5d6a1a87373dffa53dbe5', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Puspita Sekaran', '', '62818298854', '3xgmringx27xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '574', '574', 'f0e52b27a7a5d6a1a87373dffa53dbe5'),
('8eefcfdf5990e441f0fb6f3fad709e21', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Puspo Budoyo', '', '62818298854', '3xgmringx27xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '563', '563', '8eefcfdf5990e441f0fb6f3fad709e21'),
('52720e003547c70561bf5e03b95aa99f', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Putra Pandawa', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '361', '361', '52720e003547c70561bf5e03b95aa99f'),
('ec8ce6abb3e952a85b8551ba726a1227', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'Putra Sahabat', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '220', '220', 'ec8ce6abb3e952a85b8551ba726a1227'),
('ac1dd209cbcc5e5d1c6e28598e8cbbe8', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'Putra Savita', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '238', '238', 'ac1dd209cbcc5e5d1c6e28598e8cbbe8'),
('335f5352088d7d9bf74191e006d8e24c', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'Putra Savita', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '240', '240', '335f5352088d7d9bf74191e006d8e24c'),
('17c276c8e723eb46aef576537e9d56d0', 'Belum Terverifikasi', 'Seni', 'Campursari', 'Putra Wisata', '', '62818298854', '3xgmringx25xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx25xgmringx2019', '2021-07-26 17:38:00', NULL, '670', '670', '17c276c8e723eb46aef576537e9d56d0'),
('a684eceee76fc522773286a895bc8436', 'Terverifikasi', 'Seni', 'Band', 'PYONG PYONG', 'ADI SETYANTO', '62818298854', '9xgmringx17xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '10', '0', '10', '12xgmringx11xgmringx1999', '2021-07-26 17:38:00', NULL, '54', '54', 'a684eceee76fc522773286a895bc8436'),
('0777d5c17d4066b82ab86dff8a46af6f', 'Terverifikasi', 'Seni', 'Rebana', 'Qasida Rebana Hadrah Al Falah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '163', '163', '0777d5c17d4066b82ab86dff8a46af6f'),
('d490d7b4576290fa60eb31b5fc917ad1', 'Belum Terverifikasi', 'Seni', 'Qosidah', 'Qasidah AzxstrixZaujain', '', '62818298854', '3xgmringx27xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '600', '600', 'd490d7b4576290fa60eb31b5fc917ad1'),
('92cc227532d17e56e07902b254dfad10', 'Terverifikasi', 'Seni', 'Qosidah', 'QASIDAH EZZURA', 'NAZLA NAILUL MUNI', '62818298854', '2xgmringx5xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '2', '3', '5', '6xgmringx30xgmringx2014', '2021-07-26 17:38:00', NULL, '92', '92', '92cc227532d17e56e07902b254dfad10'),
('076a0c97d09cf1a0ec3e19c7f2529f2b', 'Belum Terverifikasi', 'Seni', 'Qosidah', 'Qosidah ElxstrixShida', '', '62818298854', '3xgmringx27xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '594', '594', '076a0c97d09cf1a0ec3e19c7f2529f2b'),
('acc3e0404646c57502b480dc052c4fe1', 'Belum Terverifikasi', 'Seni', 'Qosidah', 'Qosidah Modern Sagita Nada', '', '62818298854', '3xgmringx27xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '593', '593', 'acc3e0404646c57502b480dc052c4fe1'),
('a87ff679a2f3e71d9181a67b7542122c', 'Belum Terverifikasi', 'Seni', 'Band', 'RA.', 'ERRY BUDIPRASETYO', '62818298854', '2xgmringx10xgmringx2024', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '4', '1', '5', '9xgmringx21xgmringx2019', '2021-07-26 17:38:00', NULL, '4', '4', 'a87ff679a2f3e71d9181a67b7542122c'),
('c74d97b01eae257e44aa9d5bade97baf', 'Belum Terverifikasi', 'Seni', 'Tradisi', 'RADHA', 'PUTUT YUDISTIRA , S.E', '62818298854', '2xgmringx3xgmringx2024', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '4', '1', '5', '11xgmringx22xgmringx2019', '2021-07-26 17:38:00', NULL, '16', '16', 'c74d97b01eae257e44aa9d5bade97baf'),
('2838023a778dfaecdc212708f721b788', 'Terverifikasi', 'Seni', 'Vokal', 'RAKA ARDIAN', 'RAKA ARDIAN', '62818298854', '9xgmringx17xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '9', '1', '10', '3xgmringx16xgmringx2019', '2021-07-26 17:38:00', NULL, '51', '51', '2838023a778dfaecdc212708f721b788'),
('7647966b7343c29048673252e490f736', 'Terverifikasi', 'Seni', 'Band', 'RASTANATION', 'TRI ARY NOVIANTO', '62818298854', '2xgmringx17xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '4', '1', '5', '10xgmringx2xgmringx2019', '2021-07-26 17:38:00', NULL, '89', '89', '7647966b7343c29048673252e490f736'),
('320722549d1751cf3f247855f937b982', 'Belum Terverifikasi', 'Seni', 'Band', 'Rastu Irama', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '320', '320', '320722549d1751cf3f247855f937b982'),
('9f396fe44e7c05c16873b05ec425cbad', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana Al Azhar', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '673', '673', '9f396fe44e7c05c16873b05ec425cbad'),
('9fc3d7152ba9336a670e36d0ed79bc43', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana Al Barokah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '133', '133', '9fc3d7152ba9336a670e36d0ed79bc43'),
('fc221309746013ac554571fbd180e1c8', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana Al Barokah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '181', '181', 'fc221309746013ac554571fbd180e1c8'),
('07cdfd23373b17c6b337251c22b7ea57', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana Al Hasanah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '278', '278', '07cdfd23373b17c6b337251c22b7ea57'),
('a8f15eda80c50adb0e71943adc8015cf', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana Al Hidayah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '151', '151', 'a8f15eda80c50adb0e71943adc8015cf'),
('53e3a7161e428b65688f14b84d61c610', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana Al Hidayah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '693', '693', '53e3a7161e428b65688f14b84d61c610'),
('8a0e1141fd37fa5b98d5bb769ba1a7cc', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana Al Hidayah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '697', '697', '8a0e1141fd37fa5b98d5bb769ba1a7cc'),
('42a0e188f5033bc65bf8d78622277c4e', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana Al Huda', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '136', '136', '42a0e188f5033bc65bf8d78622277c4e'),
('3644a684f98ea8fe223c713b77189a77', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana Al Huda', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '200', '200', '3644a684f98ea8fe223c713b77189a77'),
('0ff39bbbf981ac0151d340c9aa40e63e', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana Al Husna', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '646', '646', '0ff39bbbf981ac0151d340c9aa40e63e'),
('bcbe3365e6ac95ea2c0343a2395834dd', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana Al Ikhlas', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '222', '222', 'bcbe3365e6ac95ea2c0343a2395834dd'),
('4c27cea8526af8cfee3be5e183ac9605', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana Al Ikhlas', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '638', '638', '4c27cea8526af8cfee3be5e183ac9605'),
('0f96613235062963ccde717b18f97592', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana Al Ikhlas', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '639', '639', '0f96613235062963ccde717b18f97592'),
('109a0ca3bc27f3e96597370d5c8cf03d', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana Al Ikhlas', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '686', '686', '109a0ca3bc27f3e96597370d5c8cf03d'),
('b1eec33c726a60554bc78518d5f9b32c', 'Terverifikasi', 'Seni', 'Rebana', 'Rebana Al Jadid', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '702', '702', 'b1eec33c726a60554bc78518d5f9b32c'),
('1ff8a7b5dc7a7d1f0ed65aaa29c04b1e', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana Al Masyitoh', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '172', '172', '1ff8a7b5dc7a7d1f0ed65aaa29c04b1e');
INSERT INTO `m_seniman` (`kd`, `status`, `kategori_kelompok`, `jenis_seni`, `nama_sanggar`, `penanggung_jawab`, `telp`, `masa_berlaku`, `alamat`, `kecamatan`, `kelurahan`, `jml_anggota_l`, `jml_anggota_p`, `total_anggota`, `tgl_pendirian`, `postdate`, `filex1`, `kode`, `usernamex`, `passwordx`) VALUES
('26dd0dbc6e3f4c8043749885523d6a25', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana Al Mujahidin', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '633', '633', '26dd0dbc6e3f4c8043749885523d6a25'),
('b3967a0e938dc2a6340e258630febd5a', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana AlxstrixHidayah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '344', '344', 'b3967a0e938dc2a6340e258630febd5a'),
('9b698eb3105bd82528f23d0c92dedfc0', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana AlxstrixItiqomah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '643', '643', '9b698eb3105bd82528f23d0c92dedfc0'),
('1068c6e4c8051cfd4e9ea8072e3189e2', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana An Naawal', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '410', '410', '1068c6e4c8051cfd4e9ea8072e3189e2'),
('67e103b0761e60683e83c559be18d40c', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana an Naawal', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '641', '641', '67e103b0761e60683e83c559be18d40c'),
('bf8229696f7a3bb4700cfddef19fa23f', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana An Nur', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '174', '174', 'bf8229696f7a3bb4700cfddef19fa23f'),
('5dd9db5e033da9c6fb5ba83c7a7ebea9', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana anxstrixNisa', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '671', '671', '5dd9db5e033da9c6fb5ba83c7a7ebea9'),
('2291d2ec3b3048d1a6f86c2c4591b7e0', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana AnxstrixNisaa', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '664', '664', '2291d2ec3b3048d1a6f86c2c4591b7e0'),
('9b8619251a19057cff70779273e95aa6', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana Ar Rofiah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '130', '130', '9b8619251a19057cff70779273e95aa6'),
('8f53295a73878494e9bc8dd6c3c7104f', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana Ar Rofiah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '179', '179', '8f53295a73878494e9bc8dd6c3c7104f'),
('0cb929eae7a499e50248a3a78f7acfc7', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana Ar Rohmah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '696', '696', '0cb929eae7a499e50248a3a78f7acfc7'),
('02522a2b2726fb0a03bb19f2d8d9524d', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana As Shidiqiyah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '134', '134', '02522a2b2726fb0a03bb19f2d8d9524d'),
('5487315b1286f907165907aa8fc96619', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana Azzahro', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '694', '694', '5487315b1286f907165907aa8fc96619'),
('59b90e1005a220e2ebc542eb9d950b1e', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana Istiqomah', '', '62818298854', '3xgmringx25xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx25xgmringx2019', '2021-07-26 17:38:00', NULL, '514', '514', '59b90e1005a220e2ebc542eb9d950b1e'),
('b5dc4e5d9b495d0196f61d45b26ef33e', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana Istiqomah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '667', '667', 'b5dc4e5d9b495d0196f61d45b26ef33e'),
('afd4836712c5e77550897e25711e1d96', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana Kaisa Nada', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '699', '699', 'afd4836712c5e77550897e25711e1d96'),
('5878a7ab84fb43402106c575658472fa', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana Khoirunnisa', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '167', '167', '5878a7ab84fb43402106c575658472fa'),
('1afa34a7f984eeabdbb0a7d494132ee5', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana Lailatsyukur', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '131', '131', '1afa34a7f984eeabdbb0a7d494132ee5'),
('b73ce398c39f506af761d2277d853a92', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana lailatul Syukur', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '160', '160', 'b73ce398c39f506af761d2277d853a92'),
('248e844336797ec98478f85e7626de4a', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana Modern AlxstrixIstiqomah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '432', '432', '248e844336797ec98478f85e7626de4a'),
('8dd48d6a2e2cad213179a3992c0be53c', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana Modern Jami Atur Rohmah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '354', '354', '8dd48d6a2e2cad213179a3992c0be53c'),
('2a79ea27c279e471f4d180b08d62b00a', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana Modern JamixpsijixAturrohmah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '155', '155', '2a79ea27c279e471f4d180b08d62b00a'),
('a4a042cf4fd6bfb47701cbc8a1653ada', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana Modern Nurul Huda', 'Rebana Modern Nurul Huda', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '171', '171', 'a4a042cf4fd6bfb47701cbc8a1653ada'),
('fae0b27c451c728867a567e8c1bb4e53', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana Muslimah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '2xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '666', '666', 'fae0b27c451c728867a567e8c1bb4e53'),
('6c4b761a28b734fe93831e3fb400ce87', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana Nur Hidayah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '157', '157', '6c4b761a28b734fe93831e3fb400ce87'),
('bd4c9ab730f5513206b999ec0d90d1fb', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana Nurul Hidayah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '161', '161', 'bd4c9ab730f5513206b999ec0d90d1fb'),
('f7e6c85504ce6e82442c770f7c8606f0', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana Nurul Hidayah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '173', '173', 'f7e6c85504ce6e82442c770f7c8606f0'),
('82161242827b703e6acf9c726942a1e4', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana Nurul Hidayah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '175', '175', '82161242827b703e6acf9c726942a1e4'),
('6a10bbd480e4c5573d8f3af73ae0454b', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana Nurul Hidayah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '635', '635', '6a10bbd480e4c5573d8f3af73ae0454b'),
('7f1de29e6da19d22b51c68001e7e0e54', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana Nurul Hikmah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '135', '135', '7f1de29e6da19d22b51c68001e7e0e54'),
('a2557a7b2e94197ff767970b67041697', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana Nurul Hikmah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '189', '189', 'a2557a7b2e94197ff767970b67041697'),
('e5841df2166dd424a57127423d276bbe', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana Nurul Hikmah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '700', '700', 'e5841df2166dd424a57127423d276bbe'),
('006f52e9102a8d3be2fe5614f42ba989', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana Nurul Huda', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '168', '168', '006f52e9102a8d3be2fe5614f42ba989'),
('e4bb4c5173c2ce17fd8fcd40041c068f', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana Nurul Huda', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '695', '695', 'e4bb4c5173c2ce17fd8fcd40041c068f'),
('84117275be999ff55a987b9381e01f96', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana Nurul Iman', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '665', '665', '84117275be999ff55a987b9381e01f96'),
('abd815286ba1007abfbb8415b83ae2cf', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana Qoribul Mustofa', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '632', '632', 'abd815286ba1007abfbb8415b83ae2cf'),
('b7bb35b9c6ca2aee2df08cf09d7016c2', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana Shollu Alan Naby', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '631', '631', 'b7bb35b9c6ca2aee2df08cf09d7016c2'),
('285e19f20beded7d215102b49d5c09a0', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana Tombo Ati', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '503', '503', '285e19f20beded7d215102b49d5c09a0'),
('3636638817772e42b59d74cff571fbb3', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana Umul Muxpsijixminin', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '169', '169', '3636638817772e42b59d74cff571fbb3'),
('6766aa2750c19aad2fa1b32f36ed4aee', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana Yamatasho', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '634', '634', '6766aa2750c19aad2fa1b32f36ed4aee'),
('903ce9225fca3e988c2af215d4e544d3', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana Zahru Nisa', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '143', '143', '903ce9225fca3e988c2af215d4e544d3'),
('eda80a3d5b344bc40f3bc04f65b7a357', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Rebana Zahru Nisa', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '267', '267', 'eda80a3d5b344bc40f3bc04f65b7a357'),
('b4288d9c0ec0a1841b3b3728321e7088', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Reksa', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '657', '657', 'b4288d9c0ec0a1841b3b3728321e7088'),
('8d3bba7425e7c98c50f52ca1b52d3735', 'Belum Terverifikasi', 'Seni', 'Band', 'Remidi', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '319', '319', '8d3bba7425e7c98c50f52ca1b52d3735'),
('44c4c17332cace2124a1a836d9fc4b6f', 'Belum Terverifikasi', 'Seni', 'Qosidah', 'Rey Nada', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '606', '606', '44c4c17332cace2124a1a836d9fc4b6f'),
('8757150decbd89b0f5442ca3db4d0e0e', 'Belum Terverifikasi', 'Seni', 'Rebana', 'RH.NADA', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '663', '663', '8757150decbd89b0f5442ca3db4d0e0e'),
('19f3cd308f1455b3fa09a282e0d496f4', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'Ria Nada', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '251', '251', '19f3cd308f1455b3fa09a282e0d496f4'),
('70c639df5e30bdee440e4cdf599fec2b', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Ria Sonata', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '393', '393', '70c639df5e30bdee440e4cdf599fec2b'),
('8cb22bdd0b7ba1ab13d742e22eed8da2', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Ria Sonata', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '406', '406', '8cb22bdd0b7ba1ab13d742e22eed8da2'),
('0d0fd7c6e093f7b804fa0150b875b868', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Rianada', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '408', '408', '0d0fd7c6e093f7b804fa0150b875b868'),
('bbcbff5c1f1ded46c25d28119a85c6c2', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Rinata Music', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '405', '405', 'bbcbff5c1f1ded46c25d28119a85c6c2'),
('884d247c6f65a96a7da4d1105d584ddd', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Risma Faleh', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '650', '650', '884d247c6f65a96a7da4d1105d584ddd'),
('a8c88a0055f636e4a163a5e3d16adab7', 'Belum Terverifikasi', 'Seni', 'Band', 'Rock Star', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '308', '308', 'a8c88a0055f636e4a163a5e3d16adab7'),
('17e62166fc8586dfa4d1bc0e1742c08b', 'Terverifikasi', 'Seni', 'Band', 'ROCKER 20', 'TEDY KRISTYANTOMO, S.Psi', '62818298854', '10xgmringx7xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '6', '1', '7', '8xgmringx19xgmringx2020', '2021-07-26 17:38:00', NULL, '43', '43', '17e62166fc8586dfa4d1bc0e1742c08b'),
('ac627ab1ccbdb62ec96e702f07f6425b', 'Terverifikasi', 'Seni', 'Band', 'ROCKSTAR MUSIC MANAGEMENT xkkurixRMMxkkurnanx', 'OCTO TOE VONNY', '62818298854', '11xgmringx27xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '7', '3', '10', '1xgmringx1xgmringx2005', '2021-07-26 17:38:00', NULL, '99', '99', 'ac627ab1ccbdb62ec96e702f07f6425b'),
('71a3cb155f8dc89bf3d0365288219936', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Roja Syafaah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '677', '677', '71a3cb155f8dc89bf3d0365288219936'),
('c9f0f895fb98ab9159f51fd0297e236d', 'Belum Terverifikasi', 'Seni', 'Band', 'RUBBER HEAT', 'BIMA SATRIA KUSUMA', '62818298854', '2xgmringx10xgmringx2024', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '5', '2', '7', '1xgmringx5xgmringx2019', '2021-07-26 17:38:00', NULL, '8', '8', 'c9f0f895fb98ab9159f51fd0297e236d'),
('a5771bce93e200c36f7cd9dfd0e5deaa', 'Terverifikasi', 'Seni', 'Tradisi', 'RUJITA', 'SEPTI WAHYU SETYANINGSIH SUGIYO', '62818298854', '10xgmringx27xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '4', '5', '9', '7xgmringx12xgmringx2015', '2021-07-26 17:38:00', NULL, '38', '38', 'a5771bce93e200c36f7cd9dfd0e5deaa'),
('c0c7c76d30bd3dcaefc96f40275bdc0a', 'Terverifikasi', 'Seni', 'Band', 'RUMAH PANCASILA', 'MOEKTI WIBOWO', '62818298854', '9xgmringx17xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '2', '9', '11', '6xgmringx1xgmringx2019', '2021-07-26 17:38:00', NULL, '50', '50', 'c0c7c76d30bd3dcaefc96f40275bdc0a'),
('9a1158154dfa42caddbd0694a4e9bdc8', 'Terverifikasi', 'Seni', 'Band', 'RUMI', 'INDRA PRASETYA', '62818298854', '9xgmringx17xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '11', '0', '11', '3xgmringx18xgmringx2020', '2021-07-26 17:38:00', NULL, '52', '52', '9a1158154dfa42caddbd0694a4e9bdc8'),
('9a96876e2f8f3dc4f3cf45f02c61c0c1', 'Belum Terverifikasi', 'Budaya', 'Keroncong', 'Sabtinasih', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '447', '447', '9a96876e2f8f3dc4f3cf45f02c61c0c1'),
('0266e33d3f546cb5436a10798e657d97', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'Sagita', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '245', '245', '0266e33d3f546cb5436a10798e657d97'),
('b4a528955b84f584974e92d025a75d1f', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Sagita Nada', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '701', '701', 'b4a528955b84f584974e92d025a75d1f'),
('66368270ffd51418ec58bd793f2d9b1b', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Samanta Group', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '431', '431', '66368270ffd51418ec58bd793f2d9b1b'),
('389bc7bb1e1c2a5e7e147703232a88f6', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Sanggar Among Roso', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '508', '508', '389bc7bb1e1c2a5e7e147703232a88f6'),
('38b3eff8baf56627478ec76a704e9b52', 'Terverifikasi', 'Seni', 'Seni Lukis', 'Sanggar Arimbi', 'Suhartono', '62818298854', '11xgmringx8xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '15', '5', '20', '8xgmringx22xgmringx2018', '2021-07-26 17:38:00', NULL, '101', '101', '38b3eff8baf56627478ec76a704e9b52'),
('b5b41fac0361d157d9673ecb926af5ae', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Sanggar Cipto Budoyo', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '502', '502', 'b5b41fac0361d157d9673ecb926af5ae'),
('647bba344396e7c8170902bcf2e15551', 'Belum Terverifikasi', 'Seni', 'Tari Modern', 'Sanggar FOC', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx27xgmringx2019', '2021-07-26 17:38:00', NULL, '545', '545', '647bba344396e7c8170902bcf2e15551'),
('69421f032498c97020180038fddb8e24', 'Terverifikasi', 'Budaya', 'Tari Tradisi', 'SANGGAR GREGET', 'BAMBANG PRIAMBODO', '62818298854', '3xgmringx25xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '7', '13', '20', '3xgmringx25xgmringx2019', '2021-07-26 17:38:00', NULL, '525', '525', '69421f032498c97020180038fddb8e24'),
('11b921ef080f7736089c757404650e40', 'Belum Terverifikasi', 'Seni', 'Tari Modern', 'Sanggar Kandhang Gunung', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx27xgmringx2019', '2021-07-26 17:38:00', NULL, '556', '556', '11b921ef080f7736089c757404650e40'),
('2bb232c0b13c774965ef8558f0fbd615', 'Belum Terverifikasi', 'Seni', 'Tari Modern', 'Sanggar Karlista', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '523', '523', '2bb232c0b13c774965ef8558f0fbd615'),
('38913e1d6a7b94cb0f55994f679f5956', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Sanggar Kartika Budaya', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '517', '517', '38913e1d6a7b94cb0f55994f679f5956'),
('a760880003e7ddedfef56acb3b09697f', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Sanggar Kenya Mangigel', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '511', '511', 'a760880003e7ddedfef56acb3b09697f'),
('51d92be1c60d1db1d2e5e7a07da55b26', 'Belum Terverifikasi', 'Seni', 'Teater', 'Sanggar KFT', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '462', '462', '51d92be1c60d1db1d2e5e7a07da55b26'),
('e2230b853516e7b05d79744fbd4c9c13', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Sanggar Krida Wirama', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '509', '509', 'e2230b853516e7b05d79744fbd4c9c13'),
('0fcbc61acd0479dc77e3cccc0f5ffca7', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Sanggar Krida Wirama', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '531', '531', '0fcbc61acd0479dc77e3cccc0f5ffca7'),
('496e05e1aea0a9c4655800e8a7b9ea28', 'Belum Terverifikasi', 'Budaya', 'Karawitan', 'Sanggar Kumudasmoro', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '305', '305', '496e05e1aea0a9c4655800e8a7b9ea28'),
('d07e70efcfab08731a97e7b91be644de', 'Belum Terverifikasi', 'Seni', 'Seni Lukis', 'Sanggar Kumudasmoro', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '458', '458', 'd07e70efcfab08731a97e7b91be644de'),
('df877f3865752637daa540ea9cbc474f', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Sanggar Kumudasmoro', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '533', '533', 'df877f3865752637daa540ea9cbc474f'),
('65658fde58ab3c2b6e5132a39fae7cb9', 'Belum Terverifikasi', 'Budaya', 'Ketoprak', 'Sanggar Kusuma wardani', '', '62818298854', '3xgmringx25xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx25xgmringx2019', '2021-07-26 17:38:00', NULL, '536', '536', '65658fde58ab3c2b6e5132a39fae7cb9'),
('cedebb6e872f539bef8c3f919874e9d7', 'Belum Terverifikasi', 'Seni', 'Vokal', 'Sanggar Lawak Semarang', '', '62818298854', '4xgmringx1xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '183', '183', 'cedebb6e872f539bef8c3f919874e9d7'),
('d296c101daa88a51f6ca8cfc1ac79b50', 'Belum Terverifikasi', 'Budaya', 'Karawitan', 'Sanggar Lidwina', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '296', '296', 'd296c101daa88a51f6ca8cfc1ac79b50'),
('2050e03ca119580f74cca14cc6e97462', 'Belum Terverifikasi', 'Seni', 'Teater', 'Sanggar Lidwina', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '473', '473', '2050e03ca119580f74cca14cc6e97462'),
('f4be00279ee2e0a53eafdaa94a151e2c', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'SANGGAR LIDWINA', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '528', '528', 'f4be00279ee2e0a53eafdaa94a151e2c'),
('f387624df552cea2f369918c5e1e12bc', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Sanggar Lidwina', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx27xgmringx2019', '2021-07-26 17:38:00', NULL, '553', '553', 'f387624df552cea2f369918c5e1e12bc'),
('10a7cdd970fe135cf4f7bb55c0e3b59f', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Sanggar Maju Kareb', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '512', '512', '10a7cdd970fe135cf4f7bb55c0e3b59f'),
('3dc4876f3f08201c7c76cb71fa1da439', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Sanggar Mekar Sari', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '513', '513', '3dc4876f3f08201c7c76cb71fa1da439'),
('6da37dd3139aa4d9aa55b8d237ec5d4a', 'Belum Terverifikasi', 'Seni', 'Band', 'Sanggar Musik Semarang', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '331', '331', '6da37dd3139aa4d9aa55b8d237ec5d4a'),
('b337e84de8752b27eda3a12363109e80', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Sanggar Ngesti Muda', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '504', '504', 'b337e84de8752b27eda3a12363109e80'),
('ef0d3930a7b6c95bd2b32ed45989c61f', 'Belum Terverifikasi', 'Budaya', 'Karawitan', 'Sanggar Ngudi Laras', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '299', '299', 'ef0d3930a7b6c95bd2b32ed45989c61f'),
('fccb3cdc9acc14a6e70a12f74560c026', 'Belum Terverifikasi', 'Seni', 'Campursari', 'Sanggar Ngudi Laras', '', '62818298854', '3xgmringx25xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx25xgmringx2019', '2021-07-26 17:38:00', NULL, '680', '680', 'fccb3cdc9acc14a6e70a12f74560c026'),
('d18f655c3fce66ca401d5f38b48c89af', 'Belum Terverifikasi', 'Seni', 'Vokal', 'SANGGAR PAKDAR', 'Sudaryono,S.Pd', '62818298854', '5xgmringx21xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '31', '72', '103', '3xgmringx14xgmringx2017', '2021-07-26 17:38:00', NULL, '479', '479', 'd18f655c3fce66ca401d5f38b48c89af'),
('2b8a61594b1f4c4db0902a8a395ced93', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Sanggar Pandanaran 2', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '515', '515', '2b8a61594b1f4c4db0902a8a395ced93'),
('7fe1f8abaad094e0b5cb1b01d712f708', 'Belum Terverifikasi', 'Seni', 'Seni Lukis', 'Sanggar Pewara &ampxkommaxampxkommaxampxkommaxampxkommax Pewayangan', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '459', '459', '7fe1f8abaad094e0b5cb1b01d712f708'),
('35051070e572e47d2c26c241ab88307f', 'Belum Terverifikasi', 'Budaya', 'Pedalangan', 'Sanggar Pewara &ampxkommaxampxkommaxampxkommaxampxkommax Pewayangan', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '495', '495', '35051070e572e47d2c26c241ab88307f'),
('2d6cc4b2d139a53512fb8cbb3086ae2e', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Sanggar Rabhustri', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '507', '507', '2d6cc4b2d139a53512fb8cbb3086ae2e'),
('34ed066df378efacc9b924ec161e7639', 'Belum Terverifikasi', 'Budaya', 'Karawitan', 'Sanggar Sekar Rinonce', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '301', '301', '34ed066df378efacc9b924ec161e7639'),
('7a614fd06c325499f1680b9896beedeb', 'Belum Terverifikasi', 'Budaya', 'Karawitan', 'SANGGAR SENI MEKARSARI', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '272', '272', '7a614fd06c325499f1680b9896beedeb'),
('577bcc914f9e55d5e4e4f82f9f00e7d4', 'Belum Terverifikasi', 'Budaya', 'Karawitan', 'Sanggar Seni Mekarsari', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '302', '302', '577bcc914f9e55d5e4e4f82f9f00e7d4'),
('5e388103a391daabe3de1d76a6739ccd', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Sanggar Seni Mekarsari', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx27xgmringx2019', '2021-07-26 17:38:00', NULL, '554', '554', '5e388103a391daabe3de1d76a6739ccd'),
('f7177163c833dff4b38fc8d2872f1ec6', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'SANGGAR SENI PERWIRA BUDAYA SEMARANG', 'Ayok Eko Pertiwi S.Sn', '62818298854', '10xgmringx1xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '15', '25', '40', '3xgmringx3xgmringx2013', '2021-07-26 17:38:00', NULL, '44', '44', 'f7177163c833dff4b38fc8d2872f1ec6'),
('cd00692c3bfe59267d5ecfac5310286c', 'Belum Terverifikasi', 'Seni', 'Band', 'Sanggar Seni Rahmasari', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '328', '328', 'cd00692c3bfe59267d5ecfac5310286c'),
('a9a6653e48976138166de32772b1bf40', 'Belum Terverifikasi', 'Seni', 'Tari Modern', 'Sanggar Seni Rahmasari', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx27xgmringx2019', '2021-07-26 17:38:00', NULL, '560', '560', 'a9a6653e48976138166de32772b1bf40'),
('49ae49a23f67c759bf4fc791ba842aa2', 'Belum Terverifikasi', 'Seni', 'Seni Lukis', 'Sanggar Seni Rupa Semarang', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '453', '453', '49ae49a23f67c759bf4fc791ba842aa2'),
('1be3bc32e6564055d5ca3e5a354acbef', 'Belum Terverifikasi', 'Budaya', 'Pedalangan', 'Sanggar Seni Rupa Wayang', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '494', '494', '1be3bc32e6564055d5ca3e5a354acbef'),
('37f0e884fbad9667e38940169d0a3c95', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'SANGGAR SRI RAHMA', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '529', '529', '37f0e884fbad9667e38940169d0a3c95'),
('7f24d240521d99071c93af3917215ef7', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Sanggar Sri Rahma', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx27xgmringx2019', '2021-07-26 17:38:00', NULL, '551', '551', '7f24d240521d99071c93af3917215ef7'),
('4e4b5fbbbb602b6d35bea8460aa8f8e5', 'Belum Terverifikasi', 'Seni', 'Tari Modern', 'Sanggar Srikandi', '', '62818298854', '3xgmringx27xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '562', '562', '4e4b5fbbbb602b6d35bea8460aa8f8e5'),
('fbd7939d674997cdb4692d34de8633c4', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Sanggar srikandi sentyaki semarang', 'Siti nur aziza', '62818298854', '9xgmringx12xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '2', '20', '22', '9xgmringx28xgmringx2018', '2021-07-26 17:38:00', NULL, '76', '76', 'fbd7939d674997cdb4692d34de8633c4'),
('94c7bb58efc3b337800875b5d382a072', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Sanggar Sukma', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx27xgmringx2019', '2021-07-26 17:38:00', NULL, '552', '552', '94c7bb58efc3b337800875b5d382a072'),
('6e2713a6efee97bacb63e52c54f0ada0', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Sanggar Sukma', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx27xgmringx2019', '2021-07-26 17:38:00', NULL, '557', '557', '6e2713a6efee97bacb63e52c54f0ada0'),
('93db85ed909c13838ff95ccfa94cebd9', 'Terverifikasi', 'Seni', 'Tradisi', 'SANGGAR TANAH PUTIH', 'Friska Citra Dewi', '62818298854', '2xgmringx21xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '20', '55', '75', '3xgmringx8xgmringx2015', '2021-07-26 17:38:00', NULL, '86', '86', '93db85ed909c13838ff95ccfa94cebd9'),
('b83aac23b9528732c23cc7352950e880', 'Belum Terverifikasi', 'Seni', 'Band', 'Sanggar Tanah Putih', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '327', '327', 'b83aac23b9528732c23cc7352950e880'),
('3a0772443a0739141292a5429b952fe6', 'Belum Terverifikasi', 'Seni', 'Tari Modern', 'Sanggar Tanah Putih', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx27xgmringx2019', '2021-07-26 17:38:00', NULL, '559', '559', '3a0772443a0739141292a5429b952fe6'),
('c4ca4238a0b923820dcc509a6f75849b', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Sanggar Tari Iswara', 'Albela mayarani puspita', '62818298854', '2xgmringx25xgmringx2024', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '20', '35', '55', '1xgmringx19xgmringx2018', '2021-07-26 17:38:00', NULL, '1', '1', 'c4ca4238a0b923820dcc509a6f75849b'),
('ebd9629fc3ae5e9f6611e2ee05a31cef', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Sanggar Tari Kusumawardani', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '518', '518', 'ebd9629fc3ae5e9f6611e2ee05a31cef'),
('63538fe6ef330c13a05a3ed7e599d5f7', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Sanggar Tari Sekar Kedaton', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '519', '519', '63538fe6ef330c13a05a3ed7e599d5f7'),
('ef575e8837d065a1683c022d2077d342', 'Belum Terverifikasi', 'Seni', 'Teater', 'Sanggar Teater Semarang', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '472', '472', 'ef575e8837d065a1683c022d2077d342'),
('ff4d5fbbafdf976cfdc032e3bde78de5', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Sanggar Tri Viasa', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '506', '506', 'ff4d5fbbafdf976cfdc032e3bde78de5'),
('cfecdb276f634854f3ef915e2e980c31', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Sanggar Turonggo Mudo', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '190', '190', 'cfecdb276f634854f3ef915e2e980c31'),
('5b69b9cb83065d403869739ae7f0995e', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Sanggar Wahyu Puspita', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '501', '501', '5b69b9cb83065d403869739ae7f0995e'),
('0aa1883c6411f7873cb83dacb17b0afc', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Sanggar Wahyu Turonggo Sakti Bondansari', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '191', '191', '0aa1883c6411f7873cb83dacb17b0afc'),
('15de21c670ae7c3f6f3f1f37029303c9', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Sanggar WE Production', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx27xgmringx2019', '2021-07-26 17:38:00', NULL, '555', '555', '15de21c670ae7c3f6f3f1f37029303c9'),
('087408522c31eeb1f982bc0eaf81d35f', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Sanggar Widoro Kandang', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '510', '510', '087408522c31eeb1f982bc0eaf81d35f'),
('e8c0653fea13f91bf3c48159f7c24f78', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Sanggar Wulandari', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '505', '505', 'e8c0653fea13f91bf3c48159f7c24f78'),
('a1d0c6e83f027327d8461063f4ac58a6', 'Belum Terverifikasi', 'Seni', 'Tradisi', 'SANGGHITA', 'TRI NARIMASTUTI', '62818298854', '10xgmringx18xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '4', '13', '17', '2xgmringx17xgmringx2003', '2021-07-26 17:38:00', NULL, '42', '42', 'a1d0c6e83f027327d8461063f4ac58a6'),
('c9892a989183de32e976c6f04e700201', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Saraswati', '', '62818298854', '3xgmringx27xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '571', '571', 'c9892a989183de32e976c6f04e700201'),
('31fefc0e570cb3860f2a6d4b38c6490d', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Satrio Budoyo Mudo', '', '62818298854', '4xgmringx1xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '187', '187', '31fefc0e570cb3860f2a6d4b38c6490d'),
('c399862d3b9d6b76c8436e924a68c45b', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Sekar Alamanda', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '534', '534', 'c399862d3b9d6b76c8436e924a68c45b'),
('01f78be6f7cad02658508fe4616098a9', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Sekar Budaya', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx27xgmringx2019', '2021-07-26 17:38:00', NULL, '550', '550', '01f78be6f7cad02658508fe4616098a9'),
('8c7bbbba95c1025975e548cee86dfadc', 'Terverifikasi', 'Seni', 'Tari Modern', 'SEKAR TAMAN', 'Djuni Noor Setiati', '62818298854', '5xgmringx14xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '5', '60', '65', '1xgmringx10xgmringx2017', '2021-07-26 17:38:00', NULL, '644', '644', '8c7bbbba95c1025975e548cee86dfadc'),
('e369853df766fa44e1ed0ff613f563bd', 'Terverifikasi', 'Seni', 'Tradisi', 'SEKAR WILIS', 'MULAT SARI MENUR', '62818298854', '10xgmringx27xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '1', '20', '21', '1xgmringx21xgmringx2019', '2021-07-26 17:38:00', NULL, '34', '34', 'e369853df766fa44e1ed0ff613f563bd'),
('9778d5d219c5080b9a6a17bef029331c', 'Terverifikasi', 'Seni', 'Band', 'SEKUSTIK', 'BAYU DIAN KUSUMA', '62818298854', '3xgmringx3xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '4', '1', '5', '1xgmringx3xgmringx2013', '2021-07-26 17:38:00', NULL, '82', '82', '9778d5d219c5080b9a6a17bef029331c'),
('1679091c5a880faf6fb5e6087eb1b2dc', 'Belum Terverifikasi', 'Seni', 'Band', 'SELA GOOD', 'DIMAS ARIE PERDANA', '62818298854', '2xgmringx10xgmringx2024', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '4', '1', '5', '10xgmringx9xgmringx2019', '2021-07-26 17:38:00', NULL, '6', '6', '1679091c5a880faf6fb5e6087eb1b2dc'),
('a8abb4bb284b5b27aa7cb790dc20f80b', 'Belum Terverifikasi', 'Budaya', 'Keroncong', 'Selaras Keroncong', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '440', '440', 'a8abb4bb284b5b27aa7cb790dc20f80b'),
('d9d4f495e875a2e075a1a4a6e1b9770f', 'Terverifikasi', 'Seni', 'Tari Modern', 'SEMARANG CARNIVAL COMMUNITY', 'INDAH SAPTA SURYANI', '62818298854', '9xgmringx24xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '8', '15', '23', '5xgmringx2xgmringx2017', '2021-07-26 17:38:00', NULL, '46', '46', 'd9d4f495e875a2e075a1a4a6e1b9770f'),
('c24cd76e1ce41366a4bbe8a49b02a028', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'Senada', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '253', '253', 'c24cd76e1ce41366a4bbe8a49b02a028'),
('f718499c1c8cef6730f9fd03c8125cab', 'Belum Terverifikasi', 'Seni', 'Campursari', 'Sendang Asri', '', '62818298854', '3xgmringx25xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx25xgmringx2019', '2021-07-26 17:38:00', NULL, '256', '256', 'f718499c1c8cef6730f9fd03c8125cab'),
('20f07591c6fcb220ffe637cda29bb3f6', 'Belum Terverifikasi', 'Budaya', 'Karawitan', 'Sendang Laras', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '277', '277', '20f07591c6fcb220ffe637cda29bb3f6'),
('bc6dc48b743dc5d013b1abaebd2faed2', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Seneng Kabeh RW VI', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '323', '323', 'bc6dc48b743dc5d013b1abaebd2faed2'),
('b2eb7349035754953b57a32e2841bda5', 'Belum Terverifikasi', 'Budaya', 'Karawitan', 'Seni Jejaka', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '306', '306', 'b2eb7349035754953b57a32e2841bda5'),
('dd458505749b2941217ddd59394240e8', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Seni Jejaka', '', '62818298854', '3xgmringx27xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '568', '568', 'dd458505749b2941217ddd59394240e8'),
('e836d813fd184325132fca8edcdfb40e', 'Belum Terverifikasi', 'Seni', 'Teater', 'Seni Peran Film Indonesia', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '466', '466', 'e836d813fd184325132fca8edcdfb40e'),
('07e1cd7dca89a1678042477183b7ac3f', 'Terverifikasi', 'Seni', 'Campursari', 'SENI TEKxstrixTEK ANGKLUNG PRING PETHUK 09', 'ARIF HARTOYO', '62818298854', '8xgmringx9xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '15', '8', '23', '7xgmringx7xgmringx2016', '2021-07-26 17:38:00', NULL, '119', '119', '07e1cd7dca89a1678042477183b7ac3f'),
('66f041e16a60928b05a7e228a89c3799', 'Terverifikasi', 'Seni', 'Band', 'SENOPATI', 'NATALISTIYANTO', '62818298854', '9xgmringx16xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '18', '2', '20', '9xgmringx9xgmringx2010', '2021-07-26 17:38:00', NULL, '58', '58', '66f041e16a60928b05a7e228a89c3799'),
('084b6fbb10729ed4da8c3d3f5a3ae7c9', 'Belum Terverifikasi', 'Budaya', 'Gambang Semarang', 'Sentra Gambang Semarang', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '196', '196', '084b6fbb10729ed4da8c3d3f5a3ae7c9'),
('53fde96fcc4b4ce72d7739202324cd49', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Serafim Art Studio', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '522', '522', '53fde96fcc4b4ce72d7739202324cd49'),
('735b90b4568125ed6c3f678819b6e058', 'Terverifikasi', 'Seni', 'Band', 'SEREMPET GUDAL', 'ERRY BUDI PRASETYO', '62818298854', '9xgmringx15xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '19', '1', '20', '5xgmringx3xgmringx2007', '2021-07-26 17:38:00', NULL, '67', '67', '735b90b4568125ed6c3f678819b6e058'),
('69cb3ea317a32c4e6143e665fdb20b14', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Seroja', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '402', '402', '69cb3ea317a32c4e6143e665fdb20b14'),
('e4da3b7fbbce2345d7772b0674a318d5', 'Belum Terverifikasi', 'Seni', 'Band', 'SETERU SUNYI', 'PAULUS ADHITYA YOGATAMA', '62818298854', '2xgmringx10xgmringx2024', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '5', '1', '6', '2xgmringx8xgmringx2019', '2021-07-26 17:38:00', NULL, '5', '5', 'e4da3b7fbbce2345d7772b0674a318d5');
INSERT INTO `m_seniman` (`kd`, `status`, `kategori_kelompok`, `jenis_seni`, `nama_sanggar`, `penanggung_jawab`, `telp`, `masa_berlaku`, `alamat`, `kecamatan`, `kelurahan`, `jml_anggota_l`, `jml_anggota_p`, `total_anggota`, `tgl_pendirian`, `postdate`, `filex1`, `kode`, `usernamex`, `passwordx`) VALUES
('11b9842e0a271ff252c1903e7132cd68', 'Belum Terverifikasi', 'Budaya', 'Karawitan', 'Setyo Laras Asri', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '303', '303', '11b9842e0a271ff252c1903e7132cd68'),
('19ca14e7ea6328a42e0eb13d585e4c22', 'Terverifikasi', 'Seni', 'Tradisi', 'SHAKA', 'TRI WINASIS KARTIKA PUTRA', '62818298854', '10xgmringx27xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '2', '8', '10', '4xgmringx17xgmringx2018', '2021-07-26 17:38:00', NULL, '36', '36', '19ca14e7ea6328a42e0eb13d585e4c22'),
('ec8956637a99787bd197eacd77acce5e', 'Terverifikasi', 'Seni', 'Dangdut', 'Shakila', 'Agustina Sri K', '62818298854', '11xgmringx8xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '13', '3', '16', '12xgmringx20xgmringx2017', '2021-07-26 17:38:00', NULL, '102', '102', 'ec8956637a99787bd197eacd77acce5e'),
('f90f2aca5c640289d0a29417bcb63a37', 'Belum Terverifikasi', 'Budaya', 'Karawitan', 'SHINTA', 'HASYA ALVINKI', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '4', '12', '16', '11xgmringx25xgmringx2009', '2021-07-26 17:38:00', NULL, '290', '290', 'f90f2aca5c640289d0a29417bcb63a37'),
('dc6a6489640ca02b0d42dabeb8e46bb7', 'Belum Terverifikasi', 'Seni', 'Teater', 'SHINTA', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '469', '469', 'dc6a6489640ca02b0d42dabeb8e46bb7'),
('854d9fca60b4bd07f9bb215d59ef5561', 'Belum Terverifikasi', 'Budaya', 'Pedalangan', 'SHINTA', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '489', '489', '854d9fca60b4bd07f9bb215d59ef5561'),
('ed265bc903a5a097f61d3ec064d96d2e', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'SHINTA', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx27xgmringx2019', '2021-07-26 17:38:00', NULL, '546', '546', 'ed265bc903a5a097f61d3ec064d96d2e'),
('1bb91f73e9d31ea2830a5e73ce3ed328', 'Belum Terverifikasi', 'Budaya', 'Ketoprak', 'SHINTA', '', '62818298854', '3xgmringx25xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx25xgmringx2019', '2021-07-26 17:38:00', NULL, '558', '558', '1bb91f73e9d31ea2830a5e73ce3ed328'),
('cfa0860e83a4c3a763a7e62d825349f7', 'Belum Terverifikasi', 'Budaya', 'Karawitan', 'SIDO LARAS', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '259', '259', 'cfa0860e83a4c3a763a7e62d825349f7'),
('598b3e71ec378bd83e0a727608b5db01', 'Belum Terverifikasi', 'Seni', 'Campursari', 'Sido Laras', '', '62818298854', '3xgmringx25xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx21xgmringx2019', '2021-07-26 17:38:00', NULL, '476', '476', '598b3e71ec378bd83e0a727608b5db01'),
('dbe272bab69f8e13f14b405e038deb64', 'Belum Terverifikasi', 'Seni', 'Campursari', 'Sido ngalaras', '', '62818298854', '3xgmringx25xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '592', '592', 'dbe272bab69f8e13f14b405e038deb64'),
('c042f4db68f23406c6cecf84a7ebb0fe', 'Belum Terverifikasi', 'Seni', 'Band', 'Simple Band', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '332', '332', 'c042f4db68f23406c6cecf84a7ebb0fe'),
('6f3ef77ac0e3619e98159e9b6febf557', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'Sinar Abadi Music', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '210', '210', '6f3ef77ac0e3619e98159e9b6febf557'),
('76dc611d6ebaafc66cc0879c71b5db5c', 'Terverifikasi', 'Budaya', 'Tari Tradisi', 'SINGO MUSTIKO PUTRO', 'RUDI YUDIANTO', '62818298854', '7xgmringx22xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '25', '5', '30', '6xgmringx30xgmringx2018', '2021-07-26 17:38:00', NULL, '128', '128', '76dc611d6ebaafc66cc0879c71b5db5c'),
('149e9677a5989fd342ae44213df68868', 'Belum Terverifikasi', 'Budaya', 'Campursari', 'SINGO MUSTIKO PUTRO', 'RUDI YUDIANTO', '62818298854', '7xgmringx22xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '25', '5', '30', '5xgmringx30xgmringx2018', '2021-07-26 17:38:00', NULL, '170', '170', '149e9677a5989fd342ae44213df68868'),
('74071a673307ca7459bcf75fbd024e09', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'SINGO MUSTIKO PUTRO', 'RUDI YUDIANTO', '62818298854', '7xgmringx22xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '25', '5', '30', '5xgmringx30xgmringx2018', '2021-07-26 17:38:00', NULL, '477', '477', '74071a673307ca7459bcf75fbd024e09'),
('ca9c267dad0305d1a6308d2a0cf1c39c', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Siti hajar', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '679', '679', 'ca9c267dad0305d1a6308d2a0cf1c39c'),
('53c3bce66e43be4f209556518c2fcb54', 'Belum Terverifikasi', 'Budaya', 'Karawitan', 'SOBOKARTI', '', '62818298854', '0000xstrix00xstrix00', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '293', '293', '53c3bce66e43be4f209556518c2fcb54'),
('05f971b5ec196b8c65b75d2ef8267331', 'Belum Terverifikasi', 'Budaya', 'Pedalangan', 'SOBOKARTI', '', '62818298854', '0000xstrix00xstrix00', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '498', '498', '05f971b5ec196b8c65b75d2ef8267331'),
('33e8075e9970de0cfea955afd4644bb2', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'SOBOKARTI', '', '62818298854', '0000xstrix00xstrix00', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '535', '535', '33e8075e9970de0cfea955afd4644bb2'),
('a3f390d88e4c41f2747bfa2f1b5f87db', 'Terverifikasi', 'Seni', 'Band', 'SOEGI BORNEAN', 'ERRY BUDI PRASETYO', '62818298854', '9xgmringx15xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '9', '1', '10', '4xgmringx21xgmringx2019', '2021-07-26 17:38:00', NULL, '68', '68', 'a3f390d88e4c41f2747bfa2f1b5f87db'),
('9f61408e3afb633e50cdf1b20de6f466', 'Terverifikasi', 'Seni', 'Band', 'SOULGROOVE', 'RICKY MAULYA INDRIAWAN', '62818298854', '9xgmringx17xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '8', '2', '10', '11xgmringx30xgmringx2018', '2021-07-26 17:38:00', NULL, '56', '56', '9f61408e3afb633e50cdf1b20de6f466'),
('7eacb532570ff6858afd2723755ff790', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Specta', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '419', '419', '7eacb532570ff6858afd2723755ff790'),
('202cb962ac59075b964b07152d234b70', 'Belum Terverifikasi', 'Budaya', 'Ketoprak', 'Sri Mulyo', 'Supriyanto', '62818298854', '9xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '20', '10', '30', '9xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '123', '123', '202cb962ac59075b964b07152d234b70'),
('6f4922f45568161a8cdf4ad2299f6d23', 'Terverifikasi', 'Seni', 'Tari Modern', 'SRIKANDI SENTYAKI', 'SITI NUR AZIZA', '62818298854', '1xgmringx14xgmringx2024', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '1', '18', '19', '9xgmringx28xgmringx2018', '2021-07-26 17:38:00', NULL, '18', '18', '6f4922f45568161a8cdf4ad2299f6d23'),
('3fe94a002317b5f9259f82690aeea4cd', 'Belum Terverifikasi', 'Seni', 'Band', 'Star 4 Music', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '316', '316', '3fe94a002317b5f9259f82690aeea4cd'),
('05049e90fa4f5039a8cadc6acbb4b2cc', 'Belum Terverifikasi', 'Seni', 'Band', 'STAR SKY MANAGEMENT', 'ADHIWAN', '62818298854', '10xgmringx7xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '6', '2', '8', '2xgmringx4xgmringx2017', '2021-07-26 17:38:00', NULL, '367', '367', '05049e90fa4f5039a8cadc6acbb4b2cc'),
('81448138f5f163ccdba4acc69819f280', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Studio Seni Amerta Laksita', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx27xgmringx2019', '2021-07-26 17:38:00', NULL, '543', '543', '81448138f5f163ccdba4acc69819f280'),
('37bc2f75bf1bcfe8450a1a41c200364c', 'Belum Terverifikasi', 'Budaya', 'Karawitan', 'Suka Raras', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '304', '304', '37bc2f75bf1bcfe8450a1a41c200364c'),
('b3e3e393c77e35a4a3f3cbd1e429b5dc', 'Belum Terverifikasi', 'Budaya', 'Karawitan', 'SUKOWATI LARAS', 'Drs. Sugiarto, S.H., M.H', '62818298854', '7xgmringx18xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '23', '2', '25', '4xgmringx15xgmringx2018', '2021-07-26 17:38:00', NULL, '153', '153', 'b3e3e393c77e35a4a3f3cbd1e429b5dc'),
('b53b3a3d6ab90ce0268229151c9bde11', 'Terverifikasi', 'Seni', 'Band', 'SUNDAY SAD STORY', 'ALMANDO CHARLES', '62818298854', '9xgmringx17xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '5', '0', '5', '11xgmringx27xgmringx2005', '2021-07-26 17:38:00', NULL, '55', '55', 'b53b3a3d6ab90ce0268229151c9bde11'),
('eddea82ad2755b24c4e168c5fc2ebd40', 'Belum Terverifikasi', 'Seni', 'Band', 'Super Surpise', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '309', '309', 'eddea82ad2755b24c4e168c5fc2ebd40'),
('68264bdb65b97eeae6788aa3348e553c', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Surya', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '660', '660', '68264bdb65b97eeae6788aa3348e553c'),
('cf004fdc76fa1a4f25f62e0eb5261ca3', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Surya Edan', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '368', '368', 'cf004fdc76fa1a4f25f62e0eb5261ca3'),
('a01a0380ca3c61428c26a231f0e49a09', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Surya Endah', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '390', '390', 'a01a0380ca3c61428c26a231f0e49a09'),
('4f4adcbf8c6f66dcfc8a3282ac2bf10a', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Surya Endah', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '404', '404', '4f4adcbf8c6f66dcfc8a3282ac2bf10a'),
('c16a5320fa475530d9583c34fd356ef5', 'Belum Terverifikasi', 'Seni', 'Qosidah', 'SURYA NADA', 'JAELANI', '62818298854', '11xgmringx18xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '5', '12', '17', '12xgmringx25xgmringx2010', '2021-07-26 17:38:00', NULL, '31', '31', 'c16a5320fa475530d9583c34fd356ef5'),
('854d6fae5ee42911677c739ee1734486', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'Surya Nada', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '202', '202', '854d6fae5ee42911677c739ee1734486'),
('c0e190d8267e36708f955d7ab048990d', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'Surya Nada', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '219', '219', 'c0e190d8267e36708f955d7ab048990d'),
('9de6d14fff9806d4bcd1ef555be766cd', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Surya Nada', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '350', '350', '9de6d14fff9806d4bcd1ef555be766cd'),
('04ecb1fa28506ccb6f72b12c0245ddbc', 'Belum Terverifikasi', 'Seni', 'Qosidah', 'Surya Nada', '', '62818298854', '3xgmringx27xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '595', '595', '04ecb1fa28506ccb6f72b12c0245ddbc'),
('03afdbd66e7929b125f8597834fa83a4', 'Terverifikasi', 'Seni', 'Band', 'SVARAMA', 'DANANG ARDYANTO', '62818298854', '9xgmringx15xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '10', '1', '11', '12xgmringx19xgmringx2018', '2021-07-26 17:38:00', NULL, '63', '63', '03afdbd66e7929b125f8597834fa83a4'),
('2dea61eed4bceec564a00115c4d21334', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Tabiyatul Khasanah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '672', '672', '2dea61eed4bceec564a00115c4d21334'),
('96da2f590cd7246bbde0051047b0d6f7', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Takmir Musholah Nurul Hikmah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '177', '177', '96da2f590cd7246bbde0051047b0d6f7'),
('84d9ee44e457ddef7f2c4f25dc8fa865', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'Talita', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '199', '199', '84d9ee44e457ddef7f2c4f25dc8fa865'),
('b2eeb7362ef83deff5c7813a67e14f0a', 'Belum Terverifikasi', 'Seni', 'Qosidah', 'Talita', '', '62818298854', '3xgmringx27xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '596', '596', 'b2eeb7362ef83deff5c7813a67e14f0a'),
('2b24d495052a8ce66358eb576b8912c8', 'Terverifikasi', 'Seni', 'Dangdut', 'TAMEE ETSA MUSIK ENTERTAIMENT', 'SUTAMI', '62818298854', '5xgmringx31xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '10', '5', '15', '8xgmringx18xgmringx2002', '2021-07-26 17:38:00', NULL, '145', '145', '2b24d495052a8ce66358eb576b8912c8'),
('cbcb58ac2e496207586df2854b17995f', 'Belum Terverifikasi', 'Seni', 'Tari Tradisi', 'Tanah Airku', '', '62818298854', '3xgmringx27xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '565', '565', 'cbcb58ac2e496207586df2854b17995f'),
('e2c420d928d4bf8ce0ff2ec19b371514', 'Terverifikasi', 'Seni', 'Band', 'TANPA NADA', 'NURSOLEH', '62818298854', '9xgmringx15xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '5', '1', '6', '12xgmringx1xgmringx2009', '2021-07-26 17:38:00', NULL, '71', '71', 'e2c420d928d4bf8ce0ff2ec19b371514'),
('f4b9ec30ad9f68f89b29639786cb62ef', 'Terverifikasi', 'Seni', 'Vokal', 'TARCISIAN', 'DANIEL SAPUTRA', '62818298854', '12xgmringx20xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '5', '5', '10', '4xgmringx4xgmringx2016', '2021-07-26 17:38:00', NULL, '94', '94', 'f4b9ec30ad9f68f89b29639786cb62ef'),
('db85e2590b6109813dafa101ceb2faeb', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Tari Lintang', '', '62818298854', '3xgmringx27xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '566', '566', 'db85e2590b6109813dafa101ceb2faeb'),
('99c5e07b4d5de9d18c350cdf64c5aa3d', 'Belum Terverifikasi', 'Seni', 'Tari Modern', 'Tari Semarang', '', '62818298854', '3xgmringx27xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '567', '567', '99c5e07b4d5de9d18c350cdf64c5aa3d'),
('a97da629b098b75c294dffdc3e463904', 'Terverifikasi', 'Seni', 'Band', 'TEA AKUSTIK', 'MEI ERYONTO DWI JOKO', '62818298854', '10xgmringx21xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '7', '2', '9', '12xgmringx13xgmringx2018', '2021-07-26 17:38:00', NULL, '107', '107', 'a97da629b098b75c294dffdc3e463904'),
('bca82e41ee7b0833588399b1fcd177c7', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Tekate Moizik', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '380', '380', 'bca82e41ee7b0833588399b1fcd177c7'),
('ddb30680a691d157187ee1cf9e896d03', 'Belum Terverifikasi', 'Budaya', 'Keroncong', 'Tetap segar', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '435', '435', 'ddb30680a691d157187ee1cf9e896d03'),
('2a38a4a9316c49e5a833517c45d31070', 'Terverifikasi', 'Seni', 'Band', 'THE BANDARA', 'MOCHAMAD IQBAL', '62818298854', '2xgmringx17xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '4', '2', '6', '11xgmringx11xgmringx2019', '2021-07-26 17:38:00', NULL, '88', '88', '2a38a4a9316c49e5a833517c45d31070'),
('f2fc990265c712c49d51a18a32b39f0c', 'Belum Terverifikasi', 'Seni', 'Band', 'The Estrix Band', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '324', '324', 'f2fc990265c712c49d51a18a32b39f0c'),
('6974ce5ac660610b44d9b9fed0ff9548', 'Terverifikasi', 'Seni', 'Band', 'The Masqot', 'Adhitya Bagus Darmawan', '62818298854', '10xgmringx31xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '8', '0', '8', '6xgmringx25xgmringx2017', '2021-07-26 17:38:00', NULL, '103', '103', '6974ce5ac660610b44d9b9fed0ff9548'),
('158f3069a435b314a80bdcb024f8e422', 'Belum Terverifikasi', 'Seni', 'Band', 'Tirang Community', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '313', '313', '158f3069a435b314a80bdcb024f8e422'),
('0353ab4cbed5beae847a7ff6e220b5cf', 'Terverifikasi', 'Seni', 'Teater', 'TIRANG COMMUNITY', 'BAMBANG BUDIONO', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '100', '50', '150', '10xgmringx17xgmringx2005', '2021-07-26 17:38:00', NULL, '461', '461', '0353ab4cbed5beae847a7ff6e220b5cf'),
('cf67355a3333e6e143439161adc2d82e', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Tirang Community', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '520', '520', 'cf67355a3333e6e143439161adc2d82e'),
('eae27d77ca20db309e056e3d2dcd7d69', 'Belum Terverifikasi', 'Seni', 'Dangdut', 'TIRTA NADA', '', '62818298854', '3xgmringx30xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '205', '205', 'eae27d77ca20db309e056e3d2dcd7d69'),
('f9b902fc3289af4dd08de5d1de54f68f', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Tirta Nada', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '335', '335', 'f9b902fc3289af4dd08de5d1de54f68f'),
('7bcdf75ad237b8e02e301f4091fb6bc8', 'Belum Terverifikasi', 'Seni', 'Tari Modern', 'Toety Production', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '538', '538', '7bcdf75ad237b8e02e301f4091fb6bc8'),
('a5e00132373a7031000fd987a3c9f87b', 'Belum Terverifikasi', 'Seni', 'Rebana', 'TPQ Al Falah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '146', '146', 'a5e00132373a7031000fd987a3c9f87b'),
('839ab46820b524afda05122893c2fe8e', 'Belum Terverifikasi', 'Seni', 'Rebana', 'TPQ Al Falah', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '289', '289', '839ab46820b524afda05122893c2fe8e'),
('443cb001c138b2561a0d90720d6ce111', 'Belum Terverifikasi', 'Seni', 'Campursari', 'Trans Nada', '', '62818298854', '3xgmringx25xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx25xgmringx2019', '2021-07-26 17:38:00', NULL, '648', '648', '443cb001c138b2561a0d90720d6ce111'),
('2f2b265625d76a6704b08093c652fd79', 'Belum Terverifikasi', 'Seni', 'Band', 'Trend Setter', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '334', '334', '2f2b265625d76a6704b08093c652fd79'),
('8f121ce07d74717e0b1f21d122e04521', 'Belum Terverifikasi', 'Budaya', 'Karawitan', 'TRI MANUNGGAL LARAS', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '268', '268', '8f121ce07d74717e0b1f21d122e04521'),
('46ba9f2a6976570b0353203ec4474217', 'Belum Terverifikasi', 'Budaya', 'Karawitan', 'Tri Manunggal Laras', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '284', '284', '46ba9f2a6976570b0353203ec4474217'),
('37693cfc748049e45d87b8c7d8b9aacd', 'Belum Terverifikasi', 'Seni', 'Band', 'TRIDHATU', 'MOCHAMMAD MIZAN IRSAPUTRA', '62818298854', '12xgmringx21xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '2', '1', '3', '3xgmringx15xgmringx2018', '2021-07-26 17:38:00', NULL, '23', '23', '37693cfc748049e45d87b8c7d8b9aacd'),
('fa7cdfad1a5aaf8370ebeda47a1ff1c3', 'Belum Terverifikasi', 'Seni', 'Campursari', 'Trisna Budaya', '', '62818298854', '3xgmringx25xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx25xgmringx2019', '2021-07-26 17:38:00', NULL, '164', '164', 'fa7cdfad1a5aaf8370ebeda47a1ff1c3'),
('d395771085aab05244a4fb8fd91bf4ee', 'Belum Terverifikasi', 'Budaya', 'Karawitan', 'Trisno Budoyo', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '279', '279', 'd395771085aab05244a4fb8fd91bf4ee'),
('0ff8033cf9437c213ee13937b1c4c455', 'Belum Terverifikasi', 'Seni', 'Campursari', 'Trisno Budoyo', '', '62818298854', '3xgmringx25xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx25xgmringx2019', '2021-07-26 17:38:00', NULL, '659', '659', '0ff8033cf9437c213ee13937b1c4c455'),
('eed5af6add95a9a6f1252739b1ad8c24', 'Belum Terverifikasi', 'Budaya', 'Keroncong', 'Tunas Asri', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '439', '439', 'eed5af6add95a9a6f1252739b1ad8c24'),
('c20ad4d76fe97759aa27a0c99bff6710', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Tunas Muda Sendangguwo', 'Abdul Rochim S', '62818298854', '2xgmringx9xgmringx2024', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '16', '17', '33', '12xgmringx1xgmringx2019', '2021-07-26 17:38:00', NULL, '12', '12', 'c20ad4d76fe97759aa27a0c99bff6710'),
('1f0e3dad99908345f7439f8ffabdffc4', 'Terverifikasi', 'Seni', 'Tradisi', 'TURONGGO DEWI TUNGGAL', 'ARI MUJIANTO', '62818298854', '1xgmringx8xgmringx2024', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '11', '12', '23', '6xgmringx24xgmringx2019', '2021-07-26 17:38:00', NULL, '19', '19', '1f0e3dad99908345f7439f8ffabdffc4'),
('233509073ed3432027d48b1a83f5fbd2', 'Belum Terverifikasi', 'Seni', 'Campursari', 'Turonggo joyo', '', '62818298854', '3xgmringx25xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx25xgmringx2019', '2021-07-26 17:38:00', NULL, '625', '625', '233509073ed3432027d48b1a83f5fbd2'),
('f3f27a324736617f20abbf2ffd806f6d', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Turonggo Sakti', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '516', '516', 'f3f27a324736617f20abbf2ffd806f6d'),
('32bb90e8976aab5298d5da10fe66f21d', 'Terverifikasi', 'Seni', 'Tradisi', 'TURONGGO TUNGGAK SEMI', 'SUPRIYANTO', '62818298854', '9xgmringx15xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '39', '5', '44', '8xgmringx18xgmringx2017', '2021-07-26 17:38:00', NULL, '72', '72', '32bb90e8976aab5298d5da10fe66f21d'),
('8bf1211fd4b7b94528899de0a43b9fb3', 'Belum Terverifikasi', 'Seni', 'Orkes Melayu', 'Vanxpsijixs Music', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '378', '378', '8bf1211fd4b7b94528899de0a43b9fb3'),
('06eb61b839a0cefee4967c67ccb099dc', 'Belum Terverifikasi', 'Seni', 'Band', 'Violet', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '310', '310', '06eb61b839a0cefee4967c67ccb099dc'),
('42e77b63637ab381e8be5f8318cc28a2', 'Belum Terverifikasi', 'Seni', 'Qosidah', 'Wahana Ria', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '628', '628', '42e77b63637ab381e8be5f8318cc28a2'),
('eecca5b6365d9607ee5a9d336962c534', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Wahyu Turonggo Jati', '', '62818298854', '4xgmringx1xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '185', '185', 'eecca5b6365d9607ee5a9d336962c534'),
('eb163727917cbba1eea208541a643e74', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Waladun Shoceit', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '211', '211', 'eb163727917cbba1eea208541a643e74'),
('3988c7f88ebcb58c6ce932b957b6f332', 'Belum Terverifikasi', 'Seni', 'Rebana', 'Waladun Sholeit', '', '62818298854', '3xgmringx26xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '137', '137', '3988c7f88ebcb58c6ce932b957b6f332'),
('6cdd60ea0045eb7a6ec44c54d29ed402', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Watu Lumbung', '', '62818298854', '4xgmringx1xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '184', '184', '6cdd60ea0045eb7a6ec44c54d29ed402'),
('9872ed9fc22fc182d371c3e9ed316094', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Watu Lumbung', '', '62818298854', '4xgmringx1xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx30xgmringx2019', '2021-07-26 17:38:00', NULL, '186', '186', '9872ed9fc22fc182d371c3e9ed316094'),
('45c48cce2e2d7fbdea1afc51c7c6ad26', 'Belum Terverifikasi', 'Seni', 'Seni Sastra', 'WAYANG BAYANGNOW', 'Mr. MULYONO', '62818298854', '2xgmringx9xgmringx2024', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '4', '2', '6', '0004xstrix11xstrix20', '2021-07-26 17:38:00', NULL, '9', '9', '45c48cce2e2d7fbdea1afc51c7c6ad26'),
('15d4e891d784977cacbfcbb00c48f133', 'Belum Terverifikasi', 'Budaya', 'Keroncong', 'Wedang Sayah', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '441', '441', '15d4e891d784977cacbfcbb00c48f133'),
('a516a87cfcaef229b342c437fe2b95f7', 'Belum Terverifikasi', 'Budaya', 'Pedalangan', 'Wijoyo Laras', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '487', '487', 'a516a87cfcaef229b342c437fe2b95f7'),
('16c222aa19898e5058938167c8ab6c57', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'Wijoyo Laras', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx27xgmringx2019', '2021-07-26 17:38:00', NULL, '541', '541', '16c222aa19898e5058938167c8ab6c57'),
('c7e1249ffc03eb9ded908c236bd1996d', 'Terverifikasi', 'Seni', 'Band', 'xtkeongxCOUSTIC ENTERTAINMENT', 'ANGGA PRIHANANTO HADIAWAN', '62818298854', '2xgmringx18xgmringx2023', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '3', '1', '4', '8xgmringx8xgmringx2019', '2021-07-26 17:38:00', NULL, '87', '87', 'c7e1249ffc03eb9ded908c236bd1996d'),
('7f6ffaa6bb0b408017b62254211691b5', 'Terverifikasi', 'Seni', 'Band', 'XXGUNS', 'BUDHY HARDIYAN WARDHANA', '62818298854', '10xgmringx17xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '8', '1', '9', '8xgmringx17xgmringx2019', '2021-07-26 17:38:00', NULL, '112', '112', '7f6ffaa6bb0b408017b62254211691b5'),
('85422afb467e9456013a2a51d4dff702', 'Belum Terverifikasi', 'Budaya', 'Tari Tradisi', 'YASA BUDAYA', '', '62818298854', '3xgmringx28xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx28xgmringx2019', '2021-07-26 17:38:00', NULL, '526', '526', '85422afb467e9456013a2a51d4dff702'),
('caf1a3dfb505ffed0d024130f58c5cfa', 'Belum Terverifikasi', 'Seni', 'Band', 'Yogashita', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '321', '321', 'caf1a3dfb505ffed0d024130f58c5cfa'),
('48aedb8880cab8c45637abc7493ecddd', 'Belum Terverifikasi', 'Budaya', 'Karawitan', 'Yuono', '', '62818298854', '3xgmringx29xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx29xgmringx2019', '2021-07-26 17:38:00', NULL, '288', '288', '48aedb8880cab8c45637abc7493ecddd'),
('766ebcd59621e305170616ba3d3dac32', 'Belum Terverifikasi', 'Seni', 'Solo Organ', 'Yuswo Guno', '', '62818298854', '3xgmringx27xgmringx2022', 'Jl. Raya BIASAWAE&hellipxkommax', 'biasawae', 'biasawae', '0', '0', '0', '3xgmringx26xgmringx2019', '2021-07-26 17:38:00', NULL, '587', '587', '766ebcd59621e305170616ba3d3dac32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_sop`
--

CREATE TABLE `m_sop` (
  `kd` varchar(50) NOT NULL,
  `kode` varchar(100) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `ket` longtext DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `m_sop`
--

INSERT INTO `m_sop` (`kd`, `kode`, `nama`, `ket`, `postdate`) VALUES
('596e6907f4d589394f52347a14ae2379', 'S001', 'Permintaan Informasi Publik', 'xkkirixpxkkananxketerangan isi......xkkirixxgmringxpxkkananx', '2021-07-26 17:29:05'),
('32f1c758addcd3695e849ad584f3473f', 'S002', 'PROSEDUR PENYEWAAN GEDUNG', 'xkkirixpxkkananxketerangan isi.......xkkirixxgmringxpxkkananx', '2021-07-26 17:29:27'),
('0a8d023431d6fe0476759427d45eaec4', 's003', 'PROSEDUR PENYEWAAN LAHAN', 'xkkirixpxkkananxketerangan isi......xkkirixxgmringxpxkkananx', '2021-07-26 17:29:39'),
('eae0f9cbf48328a375e134bbb16c0e11', 's005', 'Prosedur Pembatalan Sewa Gedung', 'xkkirixpxkkananxketerangan isi...xkkirixxgmringxpxkkananx', '2021-07-26 17:29:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_tempat`
--

CREATE TABLE `m_tempat` (
  `kd` varchar(50) NOT NULL,
  `kode` varchar(100) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `ket` longtext DEFAULT NULL,
  `filex` longtext DEFAULT NULL,
  `kapasitas` varchar(100) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `m_tempat`
--

INSERT INTO `m_tempat` (`kd`, `kode`, `nama`, `ket`, `filex`, `kapasitas`, `postdate`) VALUES
('cf0d57482df71f24fd486a316ecff757', 'TM002', 'TEMPAT2', 'keterangan tempat2', 'cf0d57482df71f24fd486a316ecff757-1.png', '350', '2021-07-26 17:27:57'),
('b7bed10a9b943b530b34b098ea41350c', 'TM003', 'TEMPAT3', 'keterangan tempat3', 'b7bed10a9b943b530b34b098ea41350c-1.png', '400', '2021-07-26 17:28:18'),
('8d48315dacfd4d0a7ea13e74e20370c1', 'TM001', 'TEMPAT1', 'keterangan tempat1', '8d48315dacfd4d0a7ea13e74e20370c1-1.png', '100', '2021-07-26 17:27:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profil_tulisan`
--

CREATE TABLE `profil_tulisan` (
  `kd` varchar(50) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `isi` longtext DEFAULT NULL,
  `postdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `profil_tulisan`
--

INSERT INTO `profil_tulisan` (`kd`, `judul`, `isi`, `postdate`) VALUES
('f1d588d45382deda7727882f3d1627dc', 'Sekapur Sirih', 'xkkirixpxkkananxisi sekapur sirih...xkkirixxgmringxpxkkananx', '2021-07-26 17:22:21'),
('a32e634b035c4774c126631106208666', 'Sejarah', 'xkkirixpxkkananxisi sejarah taman budaya biasawae...xkkirixxgmringxpxkkananx', '2021-07-26 17:22:36'),
('72c1cb4c637d2cf9916205c82025a9ac', 'Perkantoran', 'xkkirixpxkkananxbidang xstrix bidang dan seksi...xkkirixxgmringxpxkkananx', '2021-07-26 17:22:54'),
('50dd990e17bf2039704c832616f92d3b', 'Fungsi dan Tugas Pokok', 'xkkirixpxkkananxfungsi dan tugas...xkkirixxgmringxpxkkananx', '2021-07-26 17:23:04'),
('05d9dd97734eefd5a793061c7b252d1a', 'Visi dan Misi', 'xkkirixh2xkkananxxkkirixstrongxkkananxVisixkkirixxgmringxstrongxkkananxxkkirixxgmringxh2xkkananx\r\n\r\nxkkirixpxkkananx&nbspxkommaxxkkirixxgmringxpxkkananx\r\n\r\nxkkirixpxkkananx&nbspxkommaxxkkirixxgmringxpxkkananx\r\n\r\nxkkirixh2xkkananxxkkirixstrongxkkananxMisixkkirixxgmringxstrongxkkananxxkkirixxgmringxh2xkkananx\r\n\r\nxkkirixulxkkananx\r\n	xkkirixlixkkananxMemberikan ruang bagi seniman dan budayawan untuk mengekspresikan kreatifitas dan karya seniman dan budayawan.xkkirixxgmringxlixkkananx\r\n	xkkirixlixkkananxMenjadi pusat laboratorium pengembangan dan pengolahan seni, dokumentasi dan informasi seni budaya Kota Semarangxkkirixxgmringxlixkkananx\r\n	xkkirixlixkkananxMeningkatkan kompetensi dan kemampuan masyarakat Kota Semarang dalam mengapresiasi seni budaya.xkkirixxgmringxlixkkananx\r\n	xkkirixlixkkananxMenjaga dan melestarikan seni budaya Kota Semarangxkkirixxgmringxlixkkananx\r\nxkkirixxgmringxulxkkananx\r\n\r\nxkkirixpxkkananx&nbspxkommaxxkkirixxgmringxpxkkananx\r\n\r\nxkkirixpxkkananx&nbspxkommaxxkkirixxgmringxpxkkananx', '2021-06-03 15:45:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sewa_tempat`
--

CREATE TABLE `sewa_tempat` (
  `kd` varchar(50) NOT NULL,
  `penyewa_kd` varchar(50) DEFAULT NULL,
  `penyewa_nama` varchar(100) DEFAULT NULL,
  `kodebooking` varchar(100) DEFAULT NULL,
  `booking_postdate` datetime DEFAULT NULL,
  `tempat_kd` varchar(50) DEFAULT NULL,
  `tempat_nama` varchar(100) DEFAULT NULL,
  `tujuan` varchar(100) DEFAULT NULL,
  `jml_peserta` varchar(10) DEFAULT NULL,
  `tgl_mulai` date DEFAULT NULL,
  `tgl_selesai` date DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `acc` enum('true','false') NOT NULL DEFAULT 'false',
  `acc_postdate` datetime DEFAULT NULL,
  `acc_ket` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sewa_tempat`
--

INSERT INTO `sewa_tempat` (`kd`, `penyewa_kd`, `penyewa_nama`, `kodebooking`, `booking_postdate`, `tempat_kd`, `tempat_nama`, `tujuan`, `jml_peserta`, `tgl_mulai`, `tgl_selesai`, `postdate`, `acc`, `acc_postdate`, `acc_ket`) VALUES
('3a22ee51ec176f9bb1172da8713282ae', '81dc9bdb52d04dc20036dbd8313ed055', '1234', '20210607BDAH', '2021-06-07 06:33:13', '573af07df526de29fc0f76b41d044c6a', 'ACARA1', '1', '1', '2021-06-07', '2021-06-07', '2021-06-07 06:33:13', 'false', NULL, NULL),
('7b7df907b9d8142c0f9d19f15585fe96', '81dc9bdb52d04dc20036dbd8313ed055', '1234', '20210607EGID', '2021-06-07 06:34:02', '573af07df526de29fc0f76b41d044c6a', 'ACARA1', '1', '1', '2021-06-07', '2021-06-07', '2021-06-07 06:34:02', 'false', NULL, NULL),
('c4ab42d523ca81c165ba0a672faec572', '81dc9bdb52d04dc20036dbd8313ed055', '1234', '20210607DHDD', '2021-06-07 06:34:43', '573af07df526de29fc0f76b41d044c6a', 'ACARA1', '11', '11', '2021-06-07', '2021-06-07', '2021-06-07 06:34:43', 'false', NULL, NULL),
('d58449b8b7bd910763a7bfd3e1669c07', '81dc9bdb52d04dc20036dbd8313ed055', '1234', '20210607CGC', '2021-06-07 06:36:08', '573af07df526de29fc0f76b41d044c6a', 'ACARA1', '22', '22', '2021-06-07', '2021-06-07', '2021-06-07 06:36:08', 'false', NULL, NULL),
('1f53197e267e5b6ddf149c80d6d4990d', '81dc9bdb52d04dc20036dbd8313ed055', '1234', '20210607FHHA', '2021-06-07 06:36:30', '573af07df526de29fc0f76b41d044c6a', 'ACARA1', '11', '11', '2021-06-07', '2021-06-07', '2021-06-07 06:36:30', 'false', NULL, NULL),
('1986e3d92cdf284c585fdf50694703bc', '81dc9bdb52d04dc20036dbd8313ed055', '1234', '20210607IBGC', '2021-06-07 06:36:48', '573af07df526de29fc0f76b41d044c6a', 'ACARA1', '123', '123', '2021-06-07', '2021-06-07', '2021-06-07 06:36:48', 'false', NULL, NULL),
('521d53a5380da2b394df983aa72aebcf', '81dc9bdb52d04dc20036dbd8313ed055', '1234', '20210607BBDG', '2021-06-07 06:37:12', '573af07df526de29fc0f76b41d044c6a', 'ACARA1', '111', '111', '2021-06-07', '2021-06-07', '2021-06-07 06:37:12', 'false', NULL, NULL),
('ace6bf068ebac5939617055e79d5e693', '81dc9bdb52d04dc20036dbd8313ed055', '1234', '20210607FFED', '2021-06-07 06:37:43', '573af07df526de29fc0f76b41d044c6a', 'ACARA1', '111', '22', '2021-06-07', '2021-06-07', '2021-06-07 06:37:43', 'false', NULL, NULL),
('f7d173f3c877c9c36d76bf484c20b23e', '81dc9bdb52d04dc20036dbd8313ed055', '1234', '20210607BIDA', '2021-06-07 06:37:57', '24aed6f88e985ec20a7637213b508e3b', 'ACR2', '1122', '1233', '2021-06-07', '2021-06-07', '2021-06-07 06:37:57', 'false', NULL, NULL),
('a1e2cd3bea9206f2becfe3c4dc26d941', '81dc9bdb52d04dc20036dbd8313ed055', '1234', '20210607DEHD', '2021-06-07 06:38:51', '24aed6f88e985ec20a7637213b508e3b', 'ACR2', '1111', '11', '2021-06-07', '2021-06-07', '2021-06-07 06:38:51', 'false', NULL, NULL),
('fec5af0dea8debf50c6d5abe4ecf4b8d', '81dc9bdb52d04dc20036dbd8313ed055', '1234', '20210607HFF', '2021-06-07 04:48:22', '24aed6f88e985ec20a7637213b508e3b', 'ACR2', '111', '2', '2021-06-07', '2021-06-07', '2021-06-07 04:48:22', 'false', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `adminx`
--
ALTER TABLE `adminx`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `cp_agenda`
--
ALTER TABLE `cp_agenda`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `cp_artikel`
--
ALTER TABLE `cp_artikel`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `cp_bukutamu`
--
ALTER TABLE `cp_bukutamu`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `cp_foto_seniman`
--
ALTER TABLE `cp_foto_seniman`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `cp_g_foto`
--
ALTER TABLE `cp_g_foto`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `cp_m_slideshow`
--
ALTER TABLE `cp_m_slideshow`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `cp_newsletter`
--
ALTER TABLE `cp_newsletter`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `cp_profil`
--
ALTER TABLE `cp_profil`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `cp_visitor`
--
ALTER TABLE `cp_visitor`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `m_kecamatan`
--
ALTER TABLE `m_kecamatan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `districts_id_index` (`kota_id`);

--
-- Indeks untuk tabel `m_kontributor`
--
ALTER TABLE `m_kontributor`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `m_kota`
--
ALTER TABLE `m_kota`
  ADD PRIMARY KEY (`id`),
  ADD KEY `regencies_province_id_index` (`prop_id`);

--
-- Indeks untuk tabel `m_penyewa`
--
ALTER TABLE `m_penyewa`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `m_seniman`
--
ALTER TABLE `m_seniman`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `m_sop`
--
ALTER TABLE `m_sop`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `m_tempat`
--
ALTER TABLE `m_tempat`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `profil_tulisan`
--
ALTER TABLE `profil_tulisan`
  ADD PRIMARY KEY (`kd`);

--
-- Indeks untuk tabel `sewa_tempat`
--
ALTER TABLE `sewa_tempat`
  ADD PRIMARY KEY (`kd`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
