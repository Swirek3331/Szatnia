-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2024 at 05:54 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `szatnia`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `box`
--

CREATE TABLE `box` (
  `id` int(2) UNSIGNED NOT NULL,
  `room_id` int(1) UNSIGNED NOT NULL,
  `accesability` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `item`
--

CREATE TABLE `item` (
  `id` int(3) UNSIGNED NOT NULL,
  `box_id` int(2) UNSIGNED NOT NULL,
  `state` enum('is','is not','not existing') NOT NULL,
  `comment` text DEFAULT NULL,
  `material` enum('normal','old','wood','wood2') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `room`
--

CREATE TABLE `room` (
  `id` int(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `box`
--
ALTER TABLE `box`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indeksy dla tabeli `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `box_id` (`box_id`);

--
-- Indeksy dla tabeli `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `box`
--
ALTER TABLE `box`
  MODIFY `id` int(2) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `box`
--
ALTER TABLE `box`
  ADD CONSTRAINT `box_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`);

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_ibfk_1` FOREIGN KEY (`box_id`) REFERENCES `box` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
