-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Gostitelj: 127.0.0.1
-- Čas nastanka: 06. nov 2017 ob 12.43
-- Različica strežnika: 10.1.21-MariaDB
-- Različica PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Zbirka podatkov: `projekt_php_ekipe`
--

-- --------------------------------------------------------

--
-- Struktura tabele `certifikati`
--

CREATE TABLE `certifikati` (
  `id` int(11) NOT NULL,
  `ime` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

-- --------------------------------------------------------

--
-- Struktura tabele `delovne_izkusnje`
--

CREATE TABLE `delovne_izkusnje` (
  `id` int(11) NOT NULL,
  `delovno_mesto` varchar(255) COLLATE utf8_slovenian_ci NOT NULL,
  `ime_podjetja` varchar(255) COLLATE utf8_slovenian_ci NOT NULL,
  `zacetek_dela` date NOT NULL,
  `zakljucek_dela` date NOT NULL,
  `kraj_dela` varchar(255) COLLATE utf8_slovenian_ci NOT NULL,
  `opis dela` text COLLATE utf8_slovenian_ci NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

-- --------------------------------------------------------

--
-- Struktura tabele `izobrazba`
--

CREATE TABLE `izobrazba` (
  `id` int(11) NOT NULL,
  `ime_ustanove` varchar(255) COLLATE utf8_slovenian_ci NOT NULL,
  `stopnja` int(11) NOT NULL,
  `naziv` varchar(255) COLLATE utf8_slovenian_ci NOT NULL,
  `zacetek_solanja` date NOT NULL,
  `zakljucek_solanja` date NOT NULL,
  `opis` text COLLATE utf8_slovenian_ci NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

-- --------------------------------------------------------

--
-- Struktura tabele `jeziki`
--

CREATE TABLE `jeziki` (
  `id` int(11) NOT NULL,
  `ime` int(11) NOT NULL,
  `poznavanje` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

-- --------------------------------------------------------

--
-- Struktura tabele `podjetja`
--

CREATE TABLE `podjetja` (
  `id` int(11) NOT NULL,
  `ime` int(11) NOT NULL,
  `email` int(11) NOT NULL,
  `tel_st` int(11) NOT NULL,
  `davcna` int(11) NOT NULL,
  `maticna` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

-- --------------------------------------------------------

--
-- Struktura tabele `podrocja`
--

CREATE TABLE `podrocja` (
  `id` int(11) NOT NULL,
  `ime` int(11) NOT NULL,
  `opis` text COLLATE utf8_slovenian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

-- --------------------------------------------------------

--
-- Struktura tabele `poklici`
--

CREATE TABLE `poklici` (
  `id` int(11) NOT NULL,
  `ime` int(11) NOT NULL,
  `opis` text COLLATE utf8_slovenian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

-- --------------------------------------------------------

--
-- Struktura tabele `spretnosti`
--

CREATE TABLE `spretnosti` (
  `id` int(11) NOT NULL,
  `ime` int(11) NOT NULL,
  `poznavanje` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

-- --------------------------------------------------------

--
-- Struktura tabele `uporabnik_poklic`
--

CREATE TABLE `uporabnik_poklic` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `poklic_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

-- --------------------------------------------------------

--
-- Struktura tabele `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `oauth_provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `oauth_uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tel_num` int(11) NOT NULL,
  `stopnja_izobrazbe` int(11) NOT NULL,
  `placilo` int(11) NOT NULL,
  `tujina` int(11) NOT NULL,
  `zivljenjepis` text COLLATE utf8_unicode_ci NOT NULL,
  `nivo` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indeksi zavrženih tabel
--

--
-- Indeksi tabele `certifikati`
--
ALTER TABLE `certifikati`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeksi tabele `delovne_izkusnje`
--
ALTER TABLE `delovne_izkusnje`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeksi tabele `izobrazba`
--
ALTER TABLE `izobrazba`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeksi tabele `jeziki`
--
ALTER TABLE `jeziki`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeksi tabele `podjetja`
--
ALTER TABLE `podjetja`
  ADD PRIMARY KEY (`id`);

--
-- Indeksi tabele `podrocja`
--
ALTER TABLE `podrocja`
  ADD PRIMARY KEY (`id`);

--
-- Indeksi tabele `poklici`
--
ALTER TABLE `poklici`
  ADD PRIMARY KEY (`id`);

--
-- Indeksi tabele `spretnosti`
--
ALTER TABLE `spretnosti`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeksi tabele `uporabnik_poklic`
--
ALTER TABLE `uporabnik_poklic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `poklic_id` (`poklic_id`);

--
-- Indeksi tabele `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT zavrženih tabel
--

--
-- AUTO_INCREMENT tabele `certifikati`
--
ALTER TABLE `certifikati`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT tabele `delovne_izkusnje`
--
ALTER TABLE `delovne_izkusnje`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT tabele `izobrazba`
--
ALTER TABLE `izobrazba`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT tabele `jeziki`
--
ALTER TABLE `jeziki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT tabele `podjetja`
--
ALTER TABLE `podjetja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT tabele `podrocja`
--
ALTER TABLE `podrocja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT tabele `poklici`
--
ALTER TABLE `poklici`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT tabele `spretnosti`
--
ALTER TABLE `spretnosti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT tabele `uporabnik_poklic`
--
ALTER TABLE `uporabnik_poklic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT tabele `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Omejitve tabel za povzetek stanja
--

--
-- Omejitve za tabelo `certifikati`
--
ALTER TABLE `certifikati`
  ADD CONSTRAINT `certifikati_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Omejitve za tabelo `delovne_izkusnje`
--
ALTER TABLE `delovne_izkusnje`
  ADD CONSTRAINT `delovne_izkusnje_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Omejitve za tabelo `izobrazba`
--
ALTER TABLE `izobrazba`
  ADD CONSTRAINT `izobrazba_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Omejitve za tabelo `jeziki`
--
ALTER TABLE `jeziki`
  ADD CONSTRAINT `jeziki_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Omejitve za tabelo `spretnosti`
--
ALTER TABLE `spretnosti`
  ADD CONSTRAINT `spretnosti_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Omejitve za tabelo `uporabnik_poklic`
--
ALTER TABLE `uporabnik_poklic`
  ADD CONSTRAINT `uporabnik_poklic_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `uporabnik_poklic_ibfk_2` FOREIGN KEY (`poklic_id`) REFERENCES `poklici` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
