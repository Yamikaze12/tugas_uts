-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Nov 2021 pada 10.43
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `applicant`
--

CREATE TABLE `applicant` (
  `applicant_id` int(11) NOT NULL,
  `applicant_position` varchar(35) NOT NULL,
  `applicant_name` varchar(50) NOT NULL,
  `applicant_edu` varchar(10) NOT NULL,
  `applicant_speciality` varchar(100) NOT NULL,
  `applicant_cv` varchar(50) NOT NULL,
  `applicant_address` varchar(100) NOT NULL,
  `applicant_info` varchar(50) NOT NULL,
  `applicant_phone` varchar(15) NOT NULL,
  `applicant_email` varchar(50) NOT NULL,
  `submit_date` datetime NOT NULL,
  `action` varchar(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `applicant_job`
--

CREATE TABLE `applicant_job` (
  `id` int(11) NOT NULL,
  `jobname` varchar(50) NOT NULL,
  `requirement` text NOT NULL,
  `close_date` date NOT NULL,
  `img` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Active'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `applicant_job`
--

INSERT INTO `applicant_job` (`id`, `jobname`, `requirement`, `close_date`, `img`, `status`) VALUES
(241, 'ujicoba', 'ujicoba', '2021-11-30', 'job/90cb566044b9b22c00ce3d13b3f8ba33.png', 'Active'),
(242, 'ujicoba', 'ujicoba', '2021-11-30', 'job/75ea7f4c35e8bf4ce7c806c0ff31d9e4.png', 'Active'),
(245, 'IT Support', 'SMK/SMA/Sederajat', '2021-11-27', 'job/98db59f525f5ab8c21177206f1890175.jpg', 'Active');

-- --------------------------------------------------------

--
-- Struktur dari tabel `applicant_login`
--

CREATE TABLE `applicant_login` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `applicant_login`
--

INSERT INTO `applicant_login` (`id`, `username`, `password`) VALUES
(1, 'guest', '084e0343a0486ff05530df6c705c8bb4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `applicant_scheduling`
--

CREATE TABLE `applicant_scheduling` (
  `id` int(11) NOT NULL,
  `applicant_id` int(11) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `pic` varchar(50) NOT NULL,
  `telp` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `applicant`
--
ALTER TABLE `applicant`
  ADD PRIMARY KEY (`applicant_id`);

--
-- Indeks untuk tabel `applicant_job`
--
ALTER TABLE `applicant_job`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `applicant_login`
--
ALTER TABLE `applicant_login`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `applicant_scheduling`
--
ALTER TABLE `applicant_scheduling`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_applicant_id` (`applicant_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `applicant`
--
ALTER TABLE `applicant`
  MODIFY `applicant_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `applicant_job`
--
ALTER TABLE `applicant_job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT untuk tabel `applicant_login`
--
ALTER TABLE `applicant_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `applicant_scheduling`
--
ALTER TABLE `applicant_scheduling`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
