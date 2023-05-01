-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Waktu pembuatan: 01 Bulan Mei 2023 pada 14.52
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siantar_zoo`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `facility`
--

CREATE TABLE `facility` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `facility`
--

INSERT INTO `facility` (`id`, `name`) VALUES
(18, 'ANIMAL GROUP - MAMMALS'),
(19, 'ANIMAL GROUP - POULTRY'),
(20, 'ANIMAL GROUP - CRAWL'),
(21, 'INFORMATION'),
(22, 'EVENT');

-- --------------------------------------------------------

--
-- Struktur dari tabel `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `facility_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `detail` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `service`
--

INSERT INTO `service` (`id`, `facility_id`, `name`, `foto`, `detail`) VALUES
(15, 18, 'jimin', '21c3069df827c8d71303.jpg', 'atha cantik'),
(16, 19, 'suga', '4661d91699c38ba421e3.jpg', 'kren'),
(17, 20, 'jungkook', 'f5999a6eaec10642fb75.jpg', 'hai'),
(18, 21, 'v', '8861fc86e13762b4217b.jpg', 'ajknsx'),
(19, 18, 'ahi', '269f13ea77ae39e3d51b.jpg', 'haiiiii');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$lOXwGxyfxEfxGxDszDNp8uyZE/ZN9GPCJTfTpDmdE84ziMgZaUvVC'),
(2, 'guest', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `facility`
--
ALTER TABLE `facility`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `service_facilities` (`facility_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `facility`
--
ALTER TABLE `facility`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `service_facilities` FOREIGN KEY (`facility_id`) REFERENCES `facility` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
