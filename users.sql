-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2017 at 03:24 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `solusi_dan_pertanyaan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bila_benar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bila_salah` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mulai` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selesai` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `solusi_dan_pertanyaan`, `bila_benar`, `bila_salah`, `mulai`, `selesai`, `created_at`, `updated_at`) VALUES
('0', 'MAAF UNTUK SEMENTARA, SISTEM INI BELUM DAPAT MENDIAGNOSA PENYAKIT MATA ANDA', '0', '0', 'N', 'Y', NULL, NULL),
('1', 'Apakah penglihatan mata menjadi kabur atau tidak fokus?', '2', '9', 'Y', 'N', NULL, NULL),
('10', 'Apakah penglihatan mata Anda menjadi ganda?', '11', '20', 'Y', 'N', NULL, NULL),
('11', 'Apakah mata Anda menjadi sangat sensitif terhadap cahaya?', '12', '0', 'N', 'N', NULL, NULL),
('12', 'Penyakit mata Anda adalah katarak. Solusinya adalah operasi, mengkonsumsi bawang putih setiap hari, makan sayur bayam, minum jus lemon, jus stroberi, minum cukup air mineral', '0', '0', 'N', 'Y', NULL, NULL),
('13', 'Apakah penglihatan Anda menjadi tidak jelas terutama pada bagian tepi?', '14', '16', 'Y', 'N', NULL, NULL),
('14', 'Apakah ada rasa sakit yang parah pada bagian belakang mata?', '15', '0', 'N', 'N', NULL, NULL),
('15', 'Penyakit mata Anda adalah glukoma sudut terbuka. Solusinya adalah mengkonsumsi berbagai jenis makanan yang mengandung vitamin A dan E, mengurangi konsumsi kafein, menggunakan pelindung mata', '0', '0', 'N', 'Y', NULL, NULL),
('16', 'Apakah ada rasa mual dan muntah saat sakit mata?', '8', '29', 'Y', 'N', NULL, NULL),
('17', 'Apakah mata Anda menjadi merah?', '18', '20', 'N', 'N', NULL, NULL),
('18', 'Penyakit mata Anda adalah glukoma sudut tertutup. Solusinya adalah mengkonsumsi berbagai jenis makanan yang mengandung vitamin A dan E, mengurangi konsumsi kafein, menggunakan pelindung mata', '0', '0', 'N', 'Y', NULL, NULL),
('19', 'Apakah mata Anda menjadi lebih menonjol?', '20', '24', 'Y', 'N', NULL, NULL),
('2', 'Apakah Anda tidak bisa mengenal warna dengan baik?', '3', '8', 'Y', 'N', NULL, NULL),
('20', 'Apakah mata Anda kehilangan kemampuan untuk melihat?', '21', '22', 'Y', 'N', NULL, NULL),
('21', 'Apakah ada tekanan kuat pada bagian mata?', '10', '8', 'Y', 'N', NULL, NULL),
('22', 'Apakah mata Anda seperti menghasilkan pasir?', '23', '0', 'N', 'N', NULL, NULL),
('23', 'Penyakit mata Anda adalah Graves. Solusinya adalah dengan mengendalikan sistem kelenjar tiroid, kompres mata dengan air dingin, tidur dengan bantal yang lebih tinggi', '0', '0', 'N', 'Y', NULL, NULL),
('24', 'Apakah Anda sering menyipitkan mata atau memiringkan atau memutar kepala ketika melihat sesuatu agar lebih jelas?', '25', '28', 'Y', 'N', NULL, NULL),
('25', 'Apakah penglihatan mata Anda menjadi ganda?', '26', '16', 'Y', 'N', NULL, NULL),
('26', 'Apakah mata Anda tidak bergerak ke arah yang sama disaat bersamaan?', '27', '0', 'N', 'N', NULL, NULL),
('27', 'Penyakit mata Anda adalah mata juling. Solusinya adalah menggunakan kacamata, menggunakan penutup mata sementara, operasi otot mata, otot tetes mata, olahraga mata', '0', '0', 'N', 'Y', NULL, NULL),
('28', 'Apakah terdapat bintitan di kelopak mata Anda bagian atas atau bagian bawah?', '16', '34', 'Y', 'N', NULL, NULL),
('29', 'Apakah Anda merasakan perih di mata?', '30', '16', 'Y', 'N', NULL, NULL),
('3', 'Apakah Anda tidak bisa melihat warna arah?', '4', '13', 'Y', 'N', NULL, NULL),
('30', 'Apakah Anda merasakan rasa nyeri di mata?', '31', '35', 'Y', 'N', NULL, NULL),
('31', 'Apakah mata Anda cenderung berwarna merah dan kebiruan?', '32', '0', 'Y', 'N', NULL, NULL),
('32', 'Apakah mata Anda berair?', '33', '0', 'N', 'N', NULL, NULL),
('33', 'Penyakit mata Anda adalah bintitan. Solusinya adalah menjaga kebersihan mata, kompres mata dengan air hangat, jangan memakai lensa kontak, meminum obat pereda sakit', '0', '0', 'N', 'Y', NULL, NULL),
('34', 'Apakah pandangan kabur saat melihat objek yang jauh?', '35', '39', 'Y', 'N', NULL, NULL),
('35', 'Apakah Anda sakit kepala atau mata lelah karena mata bekerja secara berlebihan?', '36', '41', 'Y', 'N', NULL, NULL),
('36', 'Apakah frekuensi mengedipkan mata Anda berlebihan?', '37', '39', 'Y', 'N', NULL, NULL),
('37', 'Apakah Anda sering menggosok mata?', '38', '0', 'N', 'N', NULL, NULL),
('38', 'Penyakit mata Anda adalah rabun jauh (miopi). Solusinya adalah menggunakan kacamata atau lensa kontak, operasi dengan sinar laser, implantasi lensa buatan', '0', '0', 'N', 'Y', NULL, NULL),
('39', 'Apakah pandangan kabur atau tidak fokus saat melihat objek yang dekat?', '40', '35', 'Y', 'N', NULL, NULL),
('4', 'Apakah Anda membutuhkan cahaya yang sangat terang untuk membaca?', '5', '7', 'Y', 'N', NULL, NULL),
('40', 'Apakah Anda harus mengerlingkan mata untuk melihat dnegan jelas?', '35', '34', 'Y', 'N', NULL, NULL),
('41', 'Apakah mata Anda terasa panas dan gatal?', '42', '0', 'N', 'N', NULL, NULL),
('42', 'Penyakit mata Anda adalah rabun dekat. Solusinya adalah menggunakan kacamata atau lensa kontak, operasi dengan sinar laser, implantasi lensa buatan', '0', '0', 'N', 'Y', NULL, NULL),
('5', 'Apakah Anda sulit mengenali wajah orang di sekitar?', '6', '0', 'Y', 'N', NULL, NULL),
('6', 'Apakah Anda mengalami halusinasi dalam melihat warna dan gelombang cahaya?', '7', '0', 'N', 'N', NULL, NULL),
('7', 'Penyakit mata Anda adalah Degenerasi Makula. Solusinya adalah suplemen dan vitamin yang mengandung antioksidan, vitamin E, vitamin C, berhenti merokok', '0', '0', 'N', 'Y', NULL, NULL),
('8', 'Apakah di mata Anda terdapat lingkaran putih dalam sumber cahaya seperti lampu?', '9', '19', 'Y', 'N', NULL, NULL),
('9', 'Apakah Anda sulit untuk melihat pada malam hari?', '10', '17', 'Y', 'N', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
