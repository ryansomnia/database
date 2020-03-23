-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Mar 2020 pada 10.51
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gppk`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_event`
--

CREATE TABLE `tb_event` (
  `id_event` int(10) NOT NULL,
  `nama_event` varchar(50) NOT NULL,
  `imgBanner` varchar(50) NOT NULL,
  `imgContent` varchar(50) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jemaat`
--

CREATE TABLE `tb_jemaat` (
  `idJemaat` int(11) NOT NULL,
  `namaDepan` varchar(40) DEFAULT NULL,
  `namaBelakang` varchar(40) DEFAULT NULL,
  `status` varchar(40) DEFAULT NULL,
  `tanggalLahir` date DEFAULT NULL,
  `tempatLahir` varchar(40) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `tanggalBaptis` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_jemaat`
--

INSERT INTO `tb_jemaat` (`idJemaat`, `namaDepan`, `namaBelakang`, `status`, `tanggalLahir`, `tempatLahir`, `alamat`, `tanggalBaptis`) VALUES
(1, 'Heriyanto', 'Sitorus', 'Single', '1995-11-14', 'Bogor', 'Jl.Pabuaran RT 007 RW 012', '2017-11-17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kkas`
--

CREATE TABLE `tb_kkas` (
  `idKKA` int(11) NOT NULL,
  `namaKka` varchar(255) DEFAULT NULL,
  `namaKetua` varchar(255) DEFAULT NULL,
  `namaPembina` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kkas`
--

INSERT INTO `tb_kkas` (`idKKA`, `namaKka`, `namaKetua`, `namaPembina`) VALUES
(1, 'Favor', 'Dani P', 'Heriyanto Sitorus'),
(3, 'Disciples', 'Michael W', 'Roigen S'),
(4, 'Blessing', 'Priskilla', 'Heriyanto Sitorus'),
(13, 'Devout', 'Mikhael A', 'Roigen S'),
(14, 'Boom', 'Bona', 'Roigen S');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_laporan`
--

CREATE TABLE `tb_laporan` (
  `id_laporan` int(11) NOT NULL,
  `idKKA` int(11) DEFAULT NULL,
  `idJemaat` int(11) DEFAULT NULL,
  `tglPertemuan` date DEFAULT NULL,
  `lokasi` varchar(45) DEFAULT NULL,
  `laporan kegiatan` text DEFAULT NULL,
  `anggotaKKA` varchar(40) DEFAULT NULL,
  `statusKehadiran` varchar(40) DEFAULT NULL,
  `alasan` varchar(40) DEFAULT NULL,
  `kunjunganPembina` varchar(50) DEFAULT NULL,
  `non anggota` varchar(40) DEFAULT NULL,
  `catatanPembina` text DEFAULT NULL,
  `persembahan` int(11) DEFAULT NULL,
  `kas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_nextweek`
--

CREATE TABLE `tb_nextweek` (
  `idNextWeek` int(11) NOT NULL,
  `idLaporan` int(11) DEFAULT NULL,
  `iceBreaker` varchar(45) DEFAULT NULL,
  `wl` varchar(45) DEFAULT NULL,
  `sharing` varchar(45) DEFAULT NULL,
  `doa` varchar(45) DEFAULT NULL,
  `mempersiapkan` varchar(45) DEFAULT NULL,
  `lokasiPertemuan` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_renungan`
--

CREATE TABLE `tb_renungan` (
  `idRenungan` int(11) NOT NULL,
  `tglRenungan` date NOT NULL,
  `judulRenungan` varchar(50) NOT NULL,
  `contentRenungan` longtext NOT NULL,
  `img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_jemaat`
--
ALTER TABLE `tb_jemaat`
  ADD PRIMARY KEY (`idJemaat`);

--
-- Indeks untuk tabel `tb_kkas`
--
ALTER TABLE `tb_kkas`
  ADD PRIMARY KEY (`idKKA`);

--
-- Indeks untuk tabel `tb_laporan`
--
ALTER TABLE `tb_laporan`
  ADD PRIMARY KEY (`id_laporan`);

--
-- Indeks untuk tabel `tb_nextweek`
--
ALTER TABLE `tb_nextweek`
  ADD PRIMARY KEY (`idNextWeek`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_jemaat`
--
ALTER TABLE `tb_jemaat`
  MODIFY `idJemaat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_kkas`
--
ALTER TABLE `tb_kkas`
  MODIFY `idKKA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `tb_laporan`
--
ALTER TABLE `tb_laporan`
  MODIFY `id_laporan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_nextweek`
--
ALTER TABLE `tb_nextweek`
  MODIFY `idNextWeek` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
