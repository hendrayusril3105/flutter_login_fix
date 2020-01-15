-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Jan 2020 pada 10.31
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_4m`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `id` int(11) NOT NULL,
  `nip` varchar(10) NOT NULL,
  `nama_dosen` varchar(50) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`id`, `nip`, `nama_dosen`, `alamat`) VALUES
(1, '17630801', 'Akhmad Zulfa', 'Banjarmasin'),
(2, '17630802', 'Muharir', 'Banjarmasin'),
(3, '17630803', 'Indra Wijaya', 'Rantau'),
(4, '17630804', 'Andie', 'Banjarmasin'),
(5, '17630805', 'Rusdina', 'Banjarmasin'),
(6, '17630806', 'Lilis', 'Banjarmasin'),
(7, '17630807', 'Salafudin', 'Banjarmasin'),
(8, '17630810', 'Yudha', 'Banjarmasin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gabungan`
--

CREATE TABLE `gabungan` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `npm` int(11) NOT NULL,
  `nama_makul` varchar(20) NOT NULL,
  `sks` int(11) NOT NULL,
  `nilai` varchar(10) NOT NULL,
  `nama_dosen` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gabungan`
--

INSERT INTO `gabungan` (`id`, `nama`, `npm`, `nama_makul`, `sks`, `nilai`, `nama_dosen`, `password`) VALUES
(1, 'Yusril Mahendra', 17630869, 'Visual 3', 2, '90', 'Muharirr', '123'),
(2, '', 0, '', 0, '', '', ''),
(3, '', 0, '', 0, '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `makul`
--

CREATE TABLE `makul` (
  `id` int(11) NOT NULL,
  `nama_makul` varchar(20) NOT NULL,
  `sks` int(11) NOT NULL,
  `dosen_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `makul`
--

INSERT INTO `makul` (`id`, `nama_makul`, `sks`, `dosen_id`) VALUES
(1, 'Tauhid', 2, 1),
(2, 'Filsafat', 2, 1),
(3, 'VISUAL2', 3, 2),
(4, 'SIG', 2, 3),
(5, 'WEB2', 3, 5),
(6, 'PERANCANGAN DATABASE', 2, 5),
(7, 'SISTER', 2, 6),
(8, 'ISBD', 2, 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mhs`
--

CREATE TABLE `mhs` (
  `id` int(11) NOT NULL,
  `npm` varchar(8) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tgl_lahir` varchar(20) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mhs`
--

INSERT INTO `mhs` (`id`, `npm`, `nama`, `tgl_lahir`, `alamat`, `password`) VALUES
(1, '17630869', 'Yusril mahendra', '1999-05-31', 'Banjarmasin', 'banjarmasin123'),
(2, '17630870', 'Yudha Mardhatillah', '1999-03-16', 'Pelaihari', 'banjarmasin123'),
(3, '17630871', 'Muhammad Sayfullah Yusuf', '1999-11-13', 'Tanjung', 'banjarmasin123'),
(4, '17630872', 'Gusti Alfatuzikri', '1999-12-12', 'Banjarmasin', 'banjarmasin123'),
(5, '17630873', 'Muhammad Rezkyadi Surya Abdie', '1998-07-16', 'Banjarmasin', 'banjarmasin123'),
(6, '17630875', 'Ahmad Sahrian', '1999-05-31', 'Anjir', 'banjarmasin123'),
(7, '17630876', 'Muhammad Zaidi', '1999-05-13', 'Banjarmasin', 'banjarmasin123'),
(8, '17630877', 'Ahmad Indra Rahman', '1999-11-14', 'Rantau', 'banjarmasin123'),
(9, 'dsf', 'ser', 'werw', 'wer', 'gsdgs');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `id` int(11) NOT NULL,
  `nilai` double NOT NULL,
  `mhs_id` int(11) NOT NULL,
  `makul_id` int(11) NOT NULL,
  `dosen_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`id`, `nilai`, `mhs_id`, `makul_id`, `dosen_id`) VALUES
(2, 85, 2, 2, 2),
(3, 86, 3, 3, 3),
(4, 87, 4, 4, 4),
(5, 89, 5, 5, 5),
(6, 86, 6, 6, 6),
(7, 89, 7, 7, 7),
(8, 87, 8, 8, 7),
(9, 90, 1, 7, 6),
(14, 80, 1, 7, 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` int(11) NOT NULL,
  `password` varchar(30) NOT NULL,
  `level` enum('Dosen','Mahasiswa','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `level`) VALUES
(1, 17630969, 'admin', 'Mahasiswa'),
(2, 17630801, 'admin', 'Dosen');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_gabungan`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_gabungan` (
`nama` varchar(50)
,`nama_makul` varchar(20)
,`sks` int(11)
,`nilai` double
,`nama_dosen` varchar(50)
);

-- --------------------------------------------------------

--
-- Struktur untuk view `v_gabungan`
--
DROP TABLE IF EXISTS `v_gabungan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_gabungan`  AS  select `mhs`.`nama` AS `nama`,`makul`.`nama_makul` AS `nama_makul`,`makul`.`sks` AS `sks`,`nilai`.`nilai` AS `nilai`,`dosen`.`nama_dosen` AS `nama_dosen` from (((`nilai` join `mhs` on((`nilai`.`mhs_id` = `mhs`.`id`))) join `makul` on((`nilai`.`makul_id` = `makul`.`id`))) join `dosen` on((`nilai`.`dosen_id` = `dosen`.`id`))) ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gabungan`
--
ALTER TABLE `gabungan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `makul`
--
ALTER TABLE `makul`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dosen_id` (`dosen_id`);

--
-- Indeks untuk tabel `mhs`
--
ALTER TABLE `mhs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mhs_id` (`mhs_id`),
  ADD KEY `makul_id` (`makul_id`),
  ADD KEY `dosen_id` (`dosen_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `gabungan`
--
ALTER TABLE `gabungan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `makul`
--
ALTER TABLE `makul`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `mhs`
--
ALTER TABLE `mhs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `makul`
--
ALTER TABLE `makul`
  ADD CONSTRAINT `makul_ibfk_1` FOREIGN KEY (`dosen_id`) REFERENCES `dosen` (`id`);

--
-- Ketidakleluasaan untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_ibfk_1` FOREIGN KEY (`dosen_id`) REFERENCES `dosen` (`id`),
  ADD CONSTRAINT `nilai_ibfk_2` FOREIGN KEY (`makul_id`) REFERENCES `makul` (`id`),
  ADD CONSTRAINT `nilai_ibfk_3` FOREIGN KEY (`mhs_id`) REFERENCES `mhs` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
