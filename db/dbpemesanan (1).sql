-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Agu 2022 pada 18.34
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
-- Database: `dbpemesanan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_menu`
--

CREATE TABLE `kategori_menu` (
  `id_kategori` int(11) NOT NULL,
  `kategori_name` varchar(250) NOT NULL,
  `gambar` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori_menu`
--

INSERT INTO `kategori_menu` (`id_kategori`, `kategori_name`, `gambar`) VALUES
(4, 'PAKET PREWEDDING', '1 (1).jpg'),
(5, 'PAKET WEDDING', '2.jpg'),
(6, 'PAKET STUDIO', '4.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id_pemesanan` int(50) NOT NULL,
  `tanggal_pemesanan` date NOT NULL,
  `total_belanja` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pemesanan`
--

INSERT INTO `pemesanan` (`id_pemesanan`, `tanggal_pemesanan`, `total_belanja`) VALUES
(35, '2020-06-22', 50000),
(38, '2020-06-22', 17000),
(39, '2020-06-22', 25000),
(40, '2020-06-22', 22000),
(41, '2020-06-22', 56000),
(43, '2022-08-20', 12000),
(44, '2022-08-20', 350000),
(45, '2022-08-20', 1850000),
(46, '2022-08-20', 350000),
(47, '2022-08-20', 350000),
(48, '2022-08-20', 350000),
(49, '2022-08-20', 350000),
(50, '2022-08-20', 700000),
(51, '2022-08-20', 2500000),
(52, '2022-08-22', 350000),
(53, '2022-08-26', 350000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan_produk`
--

CREATE TABLE `pemesanan_produk` (
  `tanggal_acara` date NOT NULL,
  `id_pemesanan_produk` int(50) NOT NULL,
  `id_pemesanan` int(50) NOT NULL,
  `id_menu` varchar(50) NOT NULL,
  `jumlah` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pemesanan_produk`
--

INSERT INTO `pemesanan_produk` (`tanggal_acara`, `id_pemesanan_produk`, `id_pemesanan`, `id_menu`, `jumlah`) VALUES
('0000-00-00', 36, 46, '27', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_menu` int(50) NOT NULL,
  `nama_menu` varchar(50) NOT NULL,
  `kategori_menu` varchar(50) NOT NULL,
  `stok` varchar(250) NOT NULL,
  `harga` int(50) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_menu`, `nama_menu`, `kategori_menu`, `stok`, `harga`, `gambar`) VALUES
(23, 'paket casual', '3', '50', 100000, 'Penguins.jpg'),
(25, 'PAKET STUDIO', '3', '40 file edit all file kamera kirim hp ', 350000, 'STUDIO4.jpg'),
(26, 'paket adat', '4', '40 file edit all file kamera kirim hp ', 350000, '271526173_141634151626805_733458068004897560_n.jpg'),
(27, 'paket casual', '4', '40 file edit all file kamera kirim hp ', 350000, 'STUDIO5.jpg'),
(28, 'PAKET STANDAR', '5', '1 ALBUM CETAK 80 LEMBAR 4R, 1 FILE VIDEO DURASI 30-60 MENIT', 1500000, '276149514_160629679727252_1882195957350647837_n.jpg'),
(29, 'PAKET MEDIUM ', '5', '1 ALBUM CETAK 120 LEMBAR 4R, 1 FILE VIDEO DURASI 30-60 MENIT', 2500000, 'WEDDING.jpg'),
(31, 'PAKET EXCLUSIVE', '5', '1 ALBUM CETAK 160 LEMBAR 4R, 1 FILE VIDEO DURASI 30-60 MENIT + VIDEO CINEMATIC', 3500000, 'WED.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `nama_lengkap` varchar(25) NOT NULL,
  `jenis_kelamin` varchar(25) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(25) NOT NULL,
  `hp` varchar(25) NOT NULL,
  `status` enum('admin','user','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama_lengkap`, `jenis_kelamin`, `tanggal_lahir`, `alamat`, `hp`, `status`) VALUES
(7, 'bahtiyar5522', 'kendaga125', 'bahtiyar permadi', 'Laki-Laki', '1998-08-24', 'kendaga,larangan,brebes', '081227759358', 'admin'),
(9, 'uprut', 'uprut125', 'uprututut', 'Laki-Laki', '2000-09-23', 'brebes', '081227759358', 'user'),
(10, 'uprut', 'uprut125', 'uprututut', 'Laki-Laki', '2000-09-23', 'brebes', '081227759358', 'user');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kategori_menu`
--
ALTER TABLE `kategori_menu`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`);

--
-- Indeks untuk tabel `pemesanan_produk`
--
ALTER TABLE `pemesanan_produk`
  ADD PRIMARY KEY (`id_pemesanan_produk`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kategori_menu`
--
ALTER TABLE `kategori_menu`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id_pemesanan` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT untuk tabel `pemesanan_produk`
--
ALTER TABLE `pemesanan_produk`
  MODIFY `id_pemesanan_produk` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_menu` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
