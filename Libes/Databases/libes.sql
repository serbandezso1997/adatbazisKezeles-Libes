-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Feb 05. 17:47
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `libes`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `genre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `genre`) VALUES
(1, 'A Varázsló Tanonca', 'Kertész Ákos', 'Fantázia'),
(2, 'A Szél Neve', 'Farkas Bence', 'Kaland'),
(3, 'Az Elfeledett Kert', 'Nagy Orsolya', 'Romantika'),
(4, 'Sárkányok Tava', 'Molnár Gergely', 'Fantázia'),
(5, 'A Csillagok Kapuja', 'Papp Márton', 'Sci-fi'),
(6, 'Borús Napok', 'Kovács Eszter', 'Dráma'),
(7, 'Az Elveszett Kard', 'Takács Zoltán', 'Kaland'),
(8, 'A Szent Tó', 'Fehér Adrienn', 'Romantika'),
(9, 'Az Arany Fátyol', 'Kiss Bálint', 'Fantázia'),
(10, 'A Kék Hold', 'Simon Zsuzsa', 'Sci-fi'),
(11, 'A Sötét Óra', 'Balogh Dániel', 'Thriller'),
(12, 'A Nap Királyai', 'Németh Zsófia', 'Fantázia'),
(13, 'Hegyek Háza', 'Varga Balázs', 'Kaland'),
(14, 'Az Éj Árnyéka', 'Lukács Katalin', 'Thriller'),
(15, 'A Csillogó Torony', 'Tóth István', 'Fantázia'),
(16, 'A Szellemek Útja', 'Szabó Réka', 'Horror'),
(17, 'A Tűzvarázs', 'Horváth Gábor', 'Fantázia'),
(18, 'A Titkos Kert', 'Pintér Dóra', 'Romantika'),
(19, 'A Kék Kristály', 'Molnár Petra', 'Sci-fi'),
(20, 'A Mély Mélység', 'Bakos Levente', 'Thriller'),
(21, 'A Sors Kereke', 'Szűcs Márton', 'Fantázia'),
(22, 'A Zöld Völgy', 'Gulyás Ágnes', 'Kaland'),
(23, 'A Varázs Éjszaka', 'Fekete Balázs', 'Romantika'),
(24, 'Az Elveszett Város', 'Király Orsolya', 'Fantázia'),
(25, 'A Vadon Szava', 'Barta Márk', 'Kaland'),
(26, 'Az Arany Kulcs', 'Török Ágota', 'Romantika'),
(27, 'A Szivárvány Hídja', 'Fodor Bence', 'Fantázia'),
(28, 'A Hold Táncol', 'Mészáros Dóra', 'Sci-fi'),
(29, 'A Halottak Szigete', 'Kocsis Balázs', 'Thriller'),
(30, 'A Gyémánt Kard', 'Boros Dóra', 'Fantázia'),
(31, 'A Vörös Rózsa', 'Nagy Gergő', 'Romantika'),
(32, 'Az Éji Sárkány', 'Takács Orsolya', 'Fantázia');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `loans`
--

CREATE TABLE `loans` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `bookId` int(11) DEFAULT NULL,
  `studentId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `loans`
--

INSERT INTO `loans` (`id`, `date`, `bookId`, `studentId`) VALUES
(1, '2022-01-15', 7, 15),
(2, '2022-02-20', 24, 8),
(3, '2022-03-10', 14, 23),
(4, '2022-04-05', 3, 19),
(5, '2022-05-18', 31, 6),
(6, '2022-06-22', 11, 28),
(7, '2022-07-08', 17, 4),
(8, '2022-08-14', 29, 12),
(9, '2022-09-30', 8, 26),
(10, '2022-10-12', 2, 14),
(11, '2022-11-25', 27, 9),
(12, '2022-12-03', 19, 21),
(13, '2023-01-09', 5, 7),
(14, '2023-02-17', 20, 25),
(15, '2023-03-01', 13, 16),
(16, '2023-04-14', 32, 3),
(17, '2023-05-22', 10, 29),
(18, '2023-06-07', 26, 13),
(19, '2023-07-19', 1, 18),
(20, '2023-08-28', 9, 11),
(21, '2023-09-05', 23, 2),
(22, '2023-10-10', 6, 27),
(23, '2023-11-15', 21, 5),
(24, '2023-12-22', 15, 22),
(25, '2024-01-30', 30, 10),
(26, '2024-02-08', 4, 17),
(27, '2024-03-14', 28, 1),
(28, '2024-04-18', 12, 24),
(29, '2024-05-25', 18, 20),
(30, '2024-06-02', 25, 30);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT a táblához `loans`
--
ALTER TABLE `loans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
