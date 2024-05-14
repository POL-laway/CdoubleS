-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Creato il: Mag 03, 2024 alle 18:09
-- Versione del server: 8.0.32
-- Versione PHP: 8.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_paolocapelli`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `Autore`
--

CREATE TABLE `Autore` (
  `codice` int NOT NULL,
  `nome` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cognome` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nazione` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dataNascita` datetime NOT NULL,
  `tipo` varchar(10) NOT NULL,
  `dataMorte` datetime DEFAULT NULL
) ;

--
-- Dump dei dati per la tabella `Autore`
--

INSERT INTO `Autore` (`codice`, `nome`, `cognome`, `nazione`, `dataNascita`, `tipo`, `dataMorte`) VALUES
(1, 'Howard', 'Stroman', 'Faroe Islands', '1960-02-18 12:15:11', 'vivo', NULL),
(2, 'Katrine', 'Borer', 'Guinea', '1955-05-09 11:55:38', 'morto', '2098-06-17 06:39:07'),
(3, 'Bettie', 'Durgan', 'Republic of Korea', '1949-02-05 01:27:25', 'morto', '2098-07-04 03:18:59'),
(4, 'Annalise', 'Bogan', 'San Marino', '1948-04-22 08:00:58', 'morto', '2016-04-12 17:56:44'),
(5, 'Taryn', 'Mraz', 'Ireland', '1953-04-09 10:25:49', 'vivo', NULL),
(6, 'angelo', 'Bartell', 'Estonia', '1989-09-24 15:52:09', 'vivo', NULL),
(7, 'Gilbert', 'Lind', 'Greece', '2001-10-20 04:18:41', 'vivo', NULL),
(8, 'Hilario', 'Blick', 'Bolivia', '1963-04-18 19:06:40', 'vivo', NULL),
(9, 'Tyra', 'Kemmer', 'Seychelles', '1982-04-27 20:33:40', 'morto', '2044-09-26 10:30:59'),
(10, 'Sid', 'Kutch', 'Comoros', '1987-08-13 11:13:55', 'vivo', NULL),
(11, 'Eldridge', 'Bartell', 'Anguilla', '1972-07-28 10:54:52', 'morto', '2057-07-01 15:48:18'),
(12, 'Imani', 'Fadel', 'Japan', '1974-03-31 21:05:18', 'morto', '2092-01-23 22:24:45'),
(13, 'Keely', 'Bradtke', 'Nicaragua', '1981-12-25 06:55:11', 'vivo', NULL),
(14, 'Garnett', 'Daugherty', 'Rwanda', '1962-09-18 04:38:11', 'vivo', NULL),
(15, 'Zelda', 'Ryan', 'Vietnam', '1953-03-03 15:11:11', 'vivo', NULL),
(16, 'Arnoldo', 'Fahey', 'Falkland Islands (Malvinas)', '1969-07-17 21:17:03', 'morto', '2040-02-11 20:45:08'),
(17, 'Jay', 'Reynolds', 'Pakistan', '1997-07-16 12:35:04', 'morto', '2058-07-21 04:20:05'),
(18, 'Zachariah', 'Jakubowski', 'Sudan', '1961-12-07 08:46:52', 'vivo', NULL),
(19, 'Randy', 'Lind', 'Kuwait', '1976-03-21 20:02:53', 'morto', '2050-03-29 02:03:14'),
(20, 'Margarita', 'Skiles', 'Tajikistan', '1967-11-27 11:49:46', 'vivo', NULL),
(21, 'Freida', 'Krajcik', 'Paraguay', '1969-07-20 14:51:24', 'morto', '2048-06-08 11:14:38'),
(22, 'Oda', 'Conroy', 'Philippines', '1983-01-05 17:26:56', 'morto', '2054-02-04 16:05:43'),
(23, 'Blaise', 'Durgan', 'Mayotte', '1981-08-21 11:52:53', 'vivo', NULL),
(24, 'Maci', 'Willms', 'Grenada', '1946-07-27 02:07:52', 'morto', '2001-09-18 18:38:23'),
(25, 'Mathilde', 'Auer', 'Singapore', '1999-06-14 09:09:46', 'morto', '2073-02-03 02:00:53'),
(26, 'Damien', 'Kiehn', 'Monaco', '1959-07-02 12:53:07', 'morto', '2072-08-22 17:59:29'),
(27, 'Doris', 'Hamill', 'Bhutan', '1945-03-16 12:54:51', 'morto', '2008-07-13 10:29:35'),
(28, 'Bernie', 'Flatley', 'Lesotho', '1983-01-07 02:50:09', 'morto', '2025-05-02 16:18:29'),
(29, 'Rudy', 'Wintheiser', 'Nicaragua', '1989-07-16 11:11:16', 'morto', '2036-04-09 15:41:59'),
(30, 'Carolanne', 'Crona', 'Guadeloupe', '1964-11-06 19:10:30', 'vivo', NULL),
(31, 'Wilfrid', 'Mante', 'Djibouti', '1977-04-29 15:37:33', 'vivo', NULL),
(32, 'Sylvester', 'OHara', 'Western Sahara', '1982-07-30 17:50:09', 'morto', '2009-02-03 10:52:22'),
(33, 'Renee', 'Corwin', 'Guernsey', '1954-11-07 15:33:33', 'morto', '2061-03-11 14:59:28'),
(34, 'Judy', 'Fisher', 'New Caledonia', '1974-07-22 09:22:43', 'morto', '2039-10-29 08:31:44'),
(35, 'Laney', 'Robel', 'Nicaragua', '2006-11-14 01:27:35', 'morto', '2086-05-04 00:30:46'),
(36, 'Kelly', 'Mosciski', 'Armenia', '1996-12-30 23:45:38', 'morto', '2081-08-13 04:59:52'),
(37, 'Michael', 'Stiedemann', 'Wallis and Futuna', '1961-06-11 06:10:15', 'morto', '2012-08-12 07:32:57'),
(38, 'Reyes', 'Wisozk', 'Saint Vincent and the Grenadines', '1959-08-07 14:05:59', 'morto', '2084-06-06 11:31:19'),
(39, 'Mylene', 'Schroeder', 'Faroe Islands', '1950-06-22 12:25:12', 'morto', '2081-12-07 15:12:49'),
(40, 'Kirstin', 'Swift', 'Congo', '1947-07-09 23:05:43', 'vivo', NULL),
(41, 'Edd', 'Graham', 'Spain', '1965-07-12 11:06:04', 'morto', '2097-07-05 18:48:18'),
(42, 'Ewald', 'Wintheiser', 'Norfolk Island', '1984-09-05 18:56:12', 'morto', '2062-08-23 15:46:00'),
(43, 'Peter', 'Bashirian', 'Guyana', '1964-08-28 16:59:34', 'morto', '2047-07-01 13:44:59'),
(44, 'Domenick', 'Monahan', 'Gabon', '1950-07-09 12:46:11', 'morto', '2090-11-05 02:37:40'),
(45, 'Belle', 'Denesik', 'Paraguay', '2001-09-13 14:14:11', 'morto', '2007-08-16 01:09:10'),
(46, 'Virgie', 'Hodkiewicz', 'Falkland Islands (Malvinas)', '2004-04-17 16:17:26', 'morto', '2005-05-04 12:41:19'),
(47, 'Adriel', 'Streich', 'Chad', '2003-06-08 04:08:00', 'morto', '2025-01-26 02:16:49'),
(48, 'Deangelo', 'Wiegand', 'Taiwan', '1967-11-01 20:06:06', 'vivo', NULL),
(49, 'Annabell', 'Johns', 'Saint Lucia', '1983-06-24 07:01:23', 'morto', '2044-02-27 21:02:59'),
(50, 'Stanton', 'Ward', 'Switzerland', '1965-02-09 12:16:51', 'vivo', NULL),
(51, 'Domenica', 'Kemmer', 'Guyana', '1961-05-08 20:01:19', 'vivo', NULL),
(52, 'Tanya', 'Schroeder', 'Bouvet Island (Bouvetoya)', '1980-02-12 23:52:02', 'vivo', NULL),
(53, 'Mariah', 'Bernier', 'Israel', '1952-03-29 09:54:08', 'vivo', NULL),
(54, 'Freddy', 'Marquardt', 'France', '1956-03-18 12:37:18', 'vivo', NULL),
(55, 'Berenice', 'Nolan', 'Moldova', '2005-09-30 17:15:16', 'vivo', NULL),
(56, 'Clifton', 'Dooley', 'Taiwan', '1982-04-07 09:32:02', 'morto', '2001-12-06 23:06:45'),
(57, 'Susie', 'Considine', 'Costa Rica', '1963-09-23 13:29:35', 'vivo', NULL),
(58, 'Darwin', 'Bednar', 'Oman', '2000-07-23 06:18:36', 'vivo', NULL),
(59, 'Freda', 'Fritsch', 'Congo', '1980-11-14 13:37:40', 'vivo', NULL),
(60, 'Cletus', 'Jenkins', 'Mayotte', '1994-06-04 11:42:53', 'vivo', NULL),
(61, 'Albertha', 'Gerhold', 'Puerto Rico', '1978-01-24 09:27:51', 'vivo', NULL),
(62, 'Jevon', 'Heaney', 'Libyan Arab Jamahiriya', '1997-09-20 07:43:16', 'morto', '1999-01-05 19:10:37'),
(63, 'Lorenza', 'Bins', 'Bosnia and Herzegovina', '1945-04-07 08:56:17', 'morto', '2026-12-24 07:51:17'),
(64, 'Eino', 'Waelchi', 'New Caledonia', '2003-08-25 10:01:30', 'morto', '2073-10-03 00:16:53'),
(65, 'Name', 'Wilderman', 'Venezuela', '1975-07-25 14:25:22', 'morto', '2089-11-21 22:39:17'),
(66, 'Lonie', 'Von', 'Heard Island and McDonald Islands', '1990-07-09 00:31:08', 'vivo', NULL),
(67, 'Rita', 'Kautzer', 'Heard Island and McDonald Islands', '1970-04-06 15:32:41', 'vivo', NULL),
(68, 'Allan', 'Klocko', 'Slovakia (Slovak Republic)', '1949-07-09 06:50:31', 'vivo', NULL),
(69, 'Michelle', 'Pfannerstill', 'American Samoa', '1979-10-30 05:32:16', 'morto', '2044-08-04 00:20:09'),
(70, 'Rosemarie', 'Little', 'Slovenia', '2004-02-01 15:15:12', 'vivo', NULL),
(71, 'Arne', 'Konopelski', 'Papua New Guinea', '1971-07-31 00:40:00', 'vivo', NULL),
(72, 'Anthony', 'Parisian', 'Kiribati', '1968-07-11 21:31:13', 'vivo', NULL),
(73, 'King', 'Leannon', 'British Indian Ocean Territory (Chagos Archipelago)', '1950-03-17 00:35:39', 'vivo', NULL),
(74, 'Tobin', 'Mills', 'Kiribati', '1953-08-22 13:25:41', 'morto', '2079-05-09 12:44:25'),
(75, 'Rhianna', 'Kertzmann', 'Western Sahara', '1966-06-12 07:37:40', 'vivo', NULL),
(76, 'Niko', 'Stiedemann', 'India', '2004-09-05 16:35:07', 'vivo', NULL),
(77, 'Antonetta', 'Wintheiser', 'Libyan Arab Jamahiriya', '1991-08-01 00:56:33', 'morto', '2017-04-10 08:33:36'),
(78, 'Mandy', 'Emmerich', 'Turks and Caicos Islands', '2003-03-08 18:28:24', 'morto', '2099-06-30 02:09:05'),
(79, 'Gardner', 'Gutmann', 'Kenya', '1952-01-21 22:49:57', 'vivo', NULL),
(80, 'Milton', 'Bayer', 'Tajikistan', '1987-11-23 12:56:06', 'vivo', NULL),
(81, 'Arno', 'Beatty', 'Luxembourg', '1982-03-29 19:09:52', 'vivo', NULL),
(82, 'Maximillia', 'Bode', 'Jersey', '1963-07-01 09:21:25', 'morto', '2060-05-14 09:25:03'),
(83, 'Gerson', 'Dibbert', 'El Salvador', '1966-06-17 03:44:11', 'morto', '2049-11-15 00:52:39'),
(84, 'Deion', 'Rath', 'Jamaica', '2004-11-22 08:15:14', 'vivo', NULL),
(85, 'Lavonne', 'Runolfsson', 'Solomon Islands', '1976-12-27 11:34:59', 'vivo', NULL),
(86, 'Beryl', 'Carroll', 'Antarctica (the territory South of 60 deg S)', '1991-01-23 02:55:16', 'vivo', NULL),
(87, 'Elijah', 'Stanton', 'El Salvador', '1986-06-23 01:49:08', 'vivo', NULL),
(88, 'Fernando', 'Reilly', 'Brunei Darussalam', '1966-12-16 21:01:15', 'vivo', NULL),
(89, 'Gina', 'Sipes', 'India', '1947-04-19 14:58:50', 'vivo', NULL),
(90, 'Vidal', 'Lakin', 'Cameroon', '1964-10-13 12:48:44', 'morto', '2051-09-05 02:58:23'),
(91, 'Kelly', 'Bruen', 'Malaysia', '1951-01-21 14:38:06', 'morto', '2003-03-29 14:44:13'),
(92, 'Alta', 'Gutmann', 'Aruba', '1948-12-18 01:01:58', 'vivo', NULL),
(93, 'Marcellus', 'Skiles', 'Tokelau', '1947-05-07 23:20:11', 'vivo', NULL),
(94, 'Bert', 'Beatty', 'Singapore', '1944-06-19 13:56:03', 'vivo', NULL),
(95, 'Hildegard', 'Orn', 'Italy', '2006-07-18 23:19:59', 'vivo', NULL),
(96, 'Mariane', 'Langosh', 'Tanzania', '1958-03-19 00:28:13', 'vivo', NULL),
(97, 'Kimberly', 'Stracke', 'Tonga', '1995-10-15 15:41:52', 'morto', '2077-12-28 00:10:40'),
(98, 'Agustin', 'Ondricka', 'Rwanda', '1976-08-16 16:45:00', 'morto', '2003-01-03 10:07:06'),
(99, 'Lorenzo', 'Schiller', 'Western Sahara', '2002-11-30 17:39:58', 'morto', '2046-08-25 03:43:10'),
(100, 'Breana', 'Brown', 'Svalbard & Jan Mayen Islands', '1997-01-22 11:46:25', 'morto', '2049-02-12 15:04:18');

-- --------------------------------------------------------

--
-- Struttura della tabella `Opera`
--

CREATE TABLE `Opera` (
  `codice` int NOT NULL,
  `titolo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `annoAcquisto` varchar(4) NOT NULL,
  `annoRealizzazione` varchar(4) NOT NULL,
  `codice_autore` int NOT NULL,
  `numero_sala` int NOT NULL,
  `tipo` varchar(20) NOT NULL
) ;

--
-- Dump dei dati per la tabella `Opera`
--

INSERT INTO `Opera` (`codice`, `titolo`, `annoAcquisto`, `annoRealizzazione`, `codice_autore`, `numero_sala`, `tipo`) VALUES
(86, 'Here in My Heart', '1991', '1773', 271, 2, 'scultura'),
(85, '(Youre My) Soul & Inspiration', '1970', '1722', 291, 20, 'scultura'),
(83, 'You Dont Have to Be a Star (To Be in My Show)', '2009', '1714', 882, 10, 'quadro'),
(84, 'Waiting For a Girl Like You', '1989', '1729', 491, 2, 'scultura'),
(81, 'Le Freak', '1989', '1782', 314, 17, 'quadro'),
(82, 'If You Leave Me Now', '2007', '1704', 845, 8, 'scultura'),
(80, 'Frankenstein', '1973', '1858', 321, 12, 'quadro'),
(79, 'My Eyes Adored You', '2016', '1626', 410, 1, 'quadro'),
(78, '(Ghost) Riders in the Sky', '1985', '1806', 787, 3, 'scultura'),
(76, 'We Are Young', '2015', '1758', 970, 12, 'quadro'),
(77, 'The Letter', '2017', '1673', 716, 19, 'scultura'),
(73, 'Some of These Days', '1973', '1809', 609, 18, 'quadro'),
(75, 'U Cant Touch This', '1987', '1809', 970, 8, 'scultura'),
(74, 'Addicted to Love', '1973', '1637', 92, 5, 'quadro'),
(71, 'I Need You Now', '1975', '1741', 428, 20, 'scultura'),
(72, 'Lets Hear it For the Boy', '1989', '1747', 373, 15, 'quadro'),
(69, 'People', '2024', '1679', 60, 13, 'quadro'),
(70, 'In Da Club', '1970', '1651', 223, 18, 'quadro'),
(68, 'Wabash Cannonball', '2003', '1886', 685, 15, 'scultura'),
(67, 'Hes a Rebel', '2011', '1669', 990, 16, 'scultura'),
(64, 'Shop Around', '2012', '1761', 435, 2, 'scultura'),
(65, 'Greatest Love of All', '1978', '1630', 557, 12, 'scultura'),
(66, 'Streets of Philadelphia', '2018', '1631', 353, 4, 'scultura'),
(63, 'Mercy Mercy Me (The Ecology)', '1979', '1754', 55, 1, 'quadro'),
(62, 'The Sweet Escape', '2024', '1705', 797, 1, 'scultura'),
(61, 'Monday Monday', '2018', '1697', 440, 10, 'quadro'),
(60, 'Because I Love You (The Postman Song)', '2002', '1785', 549, 12, 'quadro'),
(59, 'Band of Gold', '1994', '1889', 948, 19, 'quadro'),
(58, 'Tha Crossroads', '2006', '1811', 565, 2, 'quadro'),
(57, 'Everybody Wants to Rule the World', '1995', '1787', 139, 13, 'quadro'),
(56, 'La Bamba', '1987', '1852', 619, 12, 'quadro'),
(54, 'Joy to the World', '1980', '1684', 988, 15, 'quadro'),
(55, 'Make Love to Me', '1973', '1697', 511, 8, 'quadro'),
(52, 'You are Beautiful', '2014', '1739', 897, 20, 'quadro'),
(53, 'You Are the Sunshine of My Life', '1986', '1612', 577, 20, 'quadro'),
(51, 'The Prisoners Song', '2024', '1658', 96, 8, 'scultura'),
(50, 'Lets Stay Together', '1987', '1709', 510, 17, 'scultura'),
(49, 'Nothings Gonna Stop Us Now', '2009', '1829', 868, 2, 'scultura'),
(47, 'Up Around the Bend', '2017', '1604', 78, 17, 'quadro'),
(48, 'You are Beautiful', '1996', '1857', 215, 1, 'quadro'),
(46, 'Mercy Mercy Me (The Ecology)', '2024', '1688', 862, 20, 'scultura'),
(45, 'Bad Day', '1972', '1600', 351, 18, 'quadro'),
(44, 'Paper Planes', '2008', '1719', 764, 10, 'quadro'),
(43, 'Stand By Me', '1993', '1834', 749, 10, 'scultura'),
(42, 'Nothing Gonna Stop Us Now', '1999', '1771', 783, 5, 'quadro'),
(41, 'Respect', '1971', '1657', 229, 16, 'quadro'),
(40, 'Born to Be Wild', '1976', '1890', 147, 1, 'quadro'),
(39, 'Yeah!', '1988', '1679', 147, 15, 'scultura'),
(38, 'I Went to Your Wedding', '2007', '1665', 867, 7, 'quadro'),
(37, 'I Write the Songs', '1993', '1661', 579, 5, 'quadro'),
(36, 'I am Yours', '2013', '1894', 506, 11, 'scultura'),
(35, 'We Got The Beat', '1972', '1654', 101, 19, 'quadro'),
(34, 'Layla', '1987', '1643', 507, 5, 'quadro'),
(33, 'We Are Family', '1988', '1852', 719, 20, 'scultura'),
(32, 'Up Around the Bend', '2019', '1624', 653, 1, 'scultura'),
(31, 'I Feel Fine', '1978', '1642', 855, 5, 'scultura'),
(30, 'Hero', '1977', '1721', 35, 19, 'quadro'),
(29, 'Dont Worry Be Happy', '1997', '1776', 745, 17, 'quadro'),
(28, 'Tears in Heaven', '1991', '1724', 565, 4, 'scultura'),
(27, 'Long Cool Woman in a Black Dress', '1991', '1734', 209, 20, 'scultura'),
(26, 'Sir Duke', '2017', '1603', 90, 4, 'scultura'),
(25, 'Waiting For a Girl Like You', '1998', '1763', 529, 6, 'scultura'),
(24, 'Something', '1982', '1787', 959, 15, 'scultura'),
(23, 'Long Cool Woman in a Black Dress', '1974', '1787', 53, 10, 'quadro'),
(22, 'Fast Car', '1984', '1806', 569, 4, 'quadro'),
(21, 'Rhinestone Cowboy', '1985', '1882', 847, 10, 'scultura'),
(20, 'I Can See Clearly Now', '2017', '1835', 518, 17, 'scultura'),
(19, 'Queen of Hearts', '1988', '1756', 597, 13, 'quadro'),
(18, 'Someday', '2000', '1635', 583, 4, 'quadro'),
(17, 'Lights', '2007', '1786', 497, 3, 'scultura'),
(16, 'Only The Lonely (Know The Way I Feel)', '1983', '1744', 466, 14, 'scultura'),
(15, 'Band On the Run', '1974', '1682', 52, 14, 'scultura'),
(14, 'Hey Jude', '2008', '1657', 725, 18, 'quadro'),
(13, 'I Dont Want to Miss a Thing', '2014', '1840', 384, 17, 'scultura'),
(12, 'The End of the World', '2016', '1611', 810, 18, 'scultura'),
(11, 'Freak Me', '2011', '1807', 393, 3, 'quadro'),
(10, 'Tammy', '1971', '1669', 320, 20, 'scultura'),
(9, 'At Last', '1996', '1742', 970, 14, 'quadro'),
(8, 'You Were Meant for Me', '2008', '1665', 189, 12, 'scultura'),
(7, 'Hurt So Good', '1970', '1771', 827, 6, 'quadro'),
(6, 'Cherry Pink & Apple Blossom White', '2005', '1831', 244, 20, 'scultura'),
(5, 'I Will Always Love You', '1971', '1827', 22, 6, 'quadro'),
(4, 'Sledgehammer', '2024', '1793', 712, 16, 'quadro'),
(3, 'Upside Down', '2004', '1679', 849, 6, 'quadro'),
(2, 'Believe', '1995', '1896', 770, 19, 'quadro'),
(1, 'At Last', '1992', '1631', 280, 7, 'quadro'),
(87, 'I Wanna Love You', '1982', '1841', 233, 17, 'scultura'),
(88, 'Louie Louie', '1994', '1827', 35, 3, 'scultura'),
(89, 'You Light Up My Life', '2006', '1834', 220, 6, 'scultura'),
(90, 'All I Wanna Do', '2010', '1644', 458, 11, 'quadro'),
(91, 'I Wanna Love You', '1987', '1688', 10, 19, 'quadro'),
(92, 'Thats the Way Love Goes', '2015', '1855', 31, 11, 'scultura'),
(93, 'Family Affair', '2013', '1642', 721, 3, 'quadro'),
(94, 'Wake Me Up Before You Go Go', '1977', '1646', 40, 13, 'quadro'),
(95, 'Red Red Wine', '2022', '1694', 65, 6, 'scultura'),
(96, 'I Will Survive', '2021', '1757', 182, 10, 'scultura'),
(97, 'Feel Good Inc', '2023', '1858', 849, 17, 'scultura'),
(98, 'Foolish Games', '1987', '1648', 142, 4, 'quadro'),
(99, 'Love Is Blue (LAmour Est Bleu)', '2022', '1763', 365, 19, 'scultura'),
(100, 'You Belong With Me', '2000', '1680', 93, 11, 'scultura'),
(101, 'Louie Louie', '1986', '1670', 772, 20, 'quadro'),
(102, 'I Love Rock n Roll', '2015', '1689', 175, 15, 'scultura'),
(103, 'Bad Romance', '2023', '1631', 354, 20, 'quadro'),
(104, 'Crazy', '1983', '1618', 983, 9, 'quadro'),
(105, 'Brand New Key', '1988', '1699', 621, 2, 'quadro'),
(106, 'Sweet Georgia Brown', '2008', '1854', 903, 16, 'quadro'),
(107, 'I Will Survive', '2019', '1699', 252, 14, 'quadro'),
(108, 'If I Didnt Care', '1970', '1867', 453, 14, 'quadro'),
(109, 'Will It Go Round In Circles', '1993', '1889', 220, 11, 'quadro'),
(110, 'One Sweet Day', '2002', '1877', 231, 11, 'scultura'),
(111, 'Monday Monday', '2016', '1772', 866, 1, 'quadro'),
(112, 'Never Gonna Give You Up', '1977', '1649', 391, 20, 'quadro'),
(113, 'Thats the Way Love Goes', '1970', '1696', 226, 9, 'scultura'),
(114, 'Leaving', '2017', '1714', 529, 9, 'scultura'),
(115, 'Bette Davis Eyes', '2011', '1689', 932, 18, 'quadro'),
(116, 'Look Away', '2020', '1802', 4, 8, 'scultura'),
(117, 'The Prisoners Song', '1989', '1883', 2, 3, 'scultura'),
(118, 'A Woman in Love', '2022', '1663', 359, 8, 'quadro'),
(119, 'Thats the Way (I Like It)', '1973', '1844', 994, 9, 'quadro'),
(120, 'Vogue', '2018', '1786', 313, 18, 'quadro'),
(121, 'Its Still Rock Roll to Me', '2011', '1714', 453, 5, 'scultura'),
(122, 'Take Me Home', '2004', '1816', 779, 8, 'scultura'),
(123, 'Drops of Jupiter (Tell Me)', '2002', '1610', 446, 11, 'quadro'),
(124, 'Centerfold', '1986', '1752', 857, 17, 'quadro'),
(125, 'Rag Doll', '1973', '1715', 151, 11, 'quadro'),
(126, 'Escape (The Pina Colada Song)', '1977', '1646', 324, 17, 'scultura'),
(127, 'Strawberry Fields Forever', '1999', '1626', 387, 12, 'scultura'),
(128, 'Paint it Black', '1989', '1680', 219, 10, 'quadro'),
(129, 'Rock Around the Clock', '1989', '1847', 153, 8, 'quadro'),
(130, 'Believe', '1986', '1786', 860, 1, 'quadro'),
(131, 'Love Theme From A Star is Born (Evergreen)', '2003', '1624', 326, 17, 'quadro'),
(132, 'Baby Come Back', '1997', '1860', 73, 3, 'scultura'),
(133, 'The Boy is Mine', '1982', '1635', 561, 16, 'quadro'),
(134, 'Whats Going On?', '1993', '1785', 775, 19, 'scultura'),
(135, 'Freebird', '1982', '1889', 345, 20, 'quadro'),
(136, 'Bridge Over Troubled Water', '2011', '1793', 928, 17, 'quadro'),
(137, 'Chattanoogie Shoe-Shine Boy', '1999', '1843', 124, 15, 'quadro'),
(138, 'Buttons & Bows', '1977', '1892', 914, 12, 'quadro'),
(139, 'Hey Baby', '1991', '1817', 982, 6, 'scultura'),
(140, 'You Dont Have to Be a Star (To Be in My Show)', '2001', '1763', 405, 8, 'scultura'),
(141, 'Fast Car', '1975', '1843', 227, 5, 'quadro'),
(142, 'Coming Up', '2003', '1718', 971, 10, 'scultura'),
(143, 'Goodnight', '1984', '1604', 903, 12, 'scultura'),
(144, 'Bye Bye', '1999', '1627', 184, 16, 'scultura'),
(145, 'Stand By Me', '2020', '1649', 401, 6, 'scultura'),
(146, 'Ray of Light', '2000', '1810', 495, 4, 'scultura'),
(147, 'In the End', '2010', '1728', 776, 20, 'quadro'),
(148, 'Louie Louie', '1998', '1758', 492, 3, 'quadro'),
(149, 'End of the Road', '2016', '1605', 760, 3, 'quadro'),
(150, 'Walk On the Wild Side', '2008', '1708', 942, 9, 'quadro'),
(151, 'Me & Bobby McGee', '2023', '1667', 649, 19, 'scultura'),
(152, 'Kiss Me', '2005', '1824', 793, 4, 'scultura'),
(153, 'The Sign', '1970', '1747', 943, 14, 'quadro'),
(154, 'I Heard it Through the Grapevine', '1977', '1659', 512, 16, 'quadro'),
(155, 'The Thing', '1976', '1853', 594, 6, 'scultura'),
(156, '50 Ways to Leave Your Lover', '1976', '1850', 885, 11, 'quadro'),
(157, 'Eye of the Tiger', '1987', '1855', 62, 6, 'quadro'),
(158, 'Na Na Hey Hey (Kiss Him Goodbye)', '2007', '1630', 278, 11, 'scultura'),
(159, 'No Scrubs', '1987', '1625', 361, 10, 'quadro'),
(160, 'Light My Fire', '2012', '1807', 181, 3, 'quadro'),
(161, 'The Hustle', '1976', '1768', 832, 13, 'quadro'),
(162, 'The Great Pretender', '2011', '1630', 495, 9, 'scultura'),
(163, 'I Cant Help Myself (Sugar Pie', '1994', '1657', 52, 5, 'scultura'),
(164, 'Youre Beautiful', '2005', '1897', 742, 19, 'scultura'),
(165, 'Sledgehammer', '1973', '1879', 434, 3, 'quadro'),
(166, 'Peggy Sue', '2013', '1674', 265, 10, 'quadro'),
(167, 'Ole Buttermilk Sky', '2008', '1687', 728, 16, 'scultura'),
(168, 'Heart of Glass', '1985', '1632', 921, 1, 'scultura'),
(169, 'Hotel California', '2006', '1750', 652, 6, 'quadro'),
(170, 'You Always Hurt the One You Love', '1986', '1620', 579, 12, 'quadro'),
(171, 'Heart of Gold', '2023', '1848', 415, 15, 'quadro'),
(172, 'Promiscuous', '1984', '1601', 955, 4, 'quadro'),
(173, 'The Great Pretender', '1984', '1868', 834, 14, 'quadro'),
(174, 'Revolution', '2006', '1737', 299, 4, 'quadro'),
(175, 'Afternoon Delight', '2012', '1767', 255, 14, 'scultura'),
(176, 'Be Bop a Lula', '1995', '1672', 490, 10, 'quadro'),
(177, 'Sunshine Superman', '1996', '1742', 149, 11, 'scultura'),
(178, 'Got to Give it Up', '2020', '1802', 46, 14, 'quadro'),
(179, 'Johnny B Goode', '1990', '1894', 299, 15, 'scultura'),
(180, 'Third Man Theme', '1987', '1831', 111, 15, 'scultura'),
(181, 'Unchained Melody', '2019', '1812', 950, 10, 'quadro'),
(182, 'Im Your Boogie Man', '2003', '1825', 590, 15, 'quadro'),
(183, 'Suspicious Minds', '2022', '1844', 479, 9, 'scultura'),
(184, 'This Used to Be My Playground', '1983', '1644', 365, 16, 'scultura'),
(185, 'Toxic', '2000', '1717', 761, 5, 'quadro'),
(186, 'We Got The Beat', '1989', '1897', 350, 1, 'scultura'),
(187, 'Roll With It', '2012', '1635', 380, 2, 'quadro'),
(188, 'Get Back', '2020', '1834', 165, 4, 'quadro'),
(189, 'Kiss You All Over', '2011', '1642', 807, 14, 'quadro'),
(190, 'War', '1997', '1621', 700, 15, 'scultura'),
(191, 'Prisoner of Love', '1973', '1793', 190, 19, 'scultura'),
(192, 'House of the Rising Sun', '1979', '1855', 551, 2, 'quadro'),
(193, 'This Used to Be My Playground', '1985', '1682', 125, 7, 'scultura'),
(194, '(They Long to Be) Close to You', '1976', '1686', 933, 6, 'quadro'),
(195, 'Here in My Heart', '1970', '1703', 239, 5, 'scultura'),
(196, 'Help Me', '1994', '1734', 659, 2, 'scultura'),
(197, 'Instant Karma', '1988', '1619', 22, 8, 'quadro'),
(198, 'This Ole House', '2015', '1657', 472, 7, 'quadro'),
(199, 'Third Man Theme', '2007', '1774', 507, 11, 'scultura'),
(200, 'As Time Goes By', '1995', '1877', 363, 18, 'scultura');

-- --------------------------------------------------------

--
-- Struttura della tabella `Sala`
--

CREATE TABLE `Sala` (
  `numero` int NOT NULL,
  `nome` varchar(10) NOT NULL,
  `superficie` float NOT NULL,
  `temaSala` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `Sala`
--

INSERT INTO `Sala` (`numero`, `nome`, `superficie`, `temaSala`) VALUES
(1, 'silver', 57.59, 13),
(2, 'orchid', 86.28, 27),
(3, 'magenta', 189.72, 31),
(4, 'teal', 146.12, 37),
(5, 'pink', 114, 13),
(6, 'green', 75, 32),
(7, 'white', 166.84, 5),
(8, 'olive', 97.57, 3),
(9, 'turquoise', 111.67, 25),
(10, 'silver', 154.53, 9),
(11, 'silver', 92.32, 23),
(12, 'white', 158.61, 38),
(13, 'olive', 149.93, 7),
(14, 'gold', 82.95, 18),
(15, 'olive', 153.4, 11),
(16, 'green', 150.2, 17),
(17, 'teal', 90.67, 6),
(18, 'cyan', 155.67, 2),
(19, 'lime', 150.94, 11),
(20, 'azure', 110.91, 19);

-- --------------------------------------------------------

--
-- Struttura della tabella `Tema`
--

CREATE TABLE `Tema` (
  `codice` int NOT NULL,
  `descrizione` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `Tema`
--

INSERT INTO `Tema` (`codice`, `descrizione`) VALUES
(1, 'Barocco'),
(2, 'Cubismo'),
(3, 'Espressionismo'),
(4, 'Surrealismo'),
(5, 'Rinascimento'),
(6, 'Realismo'),
(7, 'Futurismo'),
(8, 'Neoclassicismo'),
(9, 'Minimalismo'),
(10, 'Romanticismo'),
(11, 'Gotico'),
(12, 'Pop Art'),
(13, 'Impressionismo'),
(14, 'Simbolismo'),
(15, 'Arte Astratta'),
(16, 'Arte Concettuale'),
(17, 'Op Art'),
(18, 'Arte Cinetica'),
(19, 'Arte Digitale'),
(20, 'Arte Ambientale'),
(21, 'Arte Installativa'),
(22, 'Arte Contemporanea'),
(23, 'Arte Concettuale'),
(24, 'Arte Erotica'),
(25, 'Arte Fotografica'),
(26, 'Arte Astratta'),
(27, 'Arte Murale'),
(28, 'Arte Gotica'),
(29, 'Arte Naif'),
(30, 'Arte di Strada'),
(31, 'Arte Romanica'),
(32, 'Arte Egizia'),
(33, 'Arte Greca'),
(34, 'Arte Giapponese'),
(35, 'Arte Cinese'),
(36, 'Arte Indiana'),
(37, 'Arte Preistorica'),
(38, 'Arte Mesopotamica'),
(39, 'Arte Precolombiana'),
(40, 'Arte Africana');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `Autore`
--
ALTER TABLE `Autore`
  ADD PRIMARY KEY (`codice`);

--
-- Indici per le tabelle `Opera`
--
ALTER TABLE `Opera`
  ADD PRIMARY KEY (`codice`),
  ADD KEY `fk_autore` (`codice_autore`),
  ADD KEY `fk_sala` (`numero_sala`);

--
-- Indici per le tabelle `Sala`
--
ALTER TABLE `Sala`
  ADD PRIMARY KEY (`numero`),
  ADD KEY `fk_tema` (`temaSala`);

--
-- Indici per le tabelle `Tema`
--
ALTER TABLE `Tema`
  ADD PRIMARY KEY (`codice`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `Sala`
--
ALTER TABLE `Sala`
  MODIFY `numero` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT per la tabella `Tema`
--
ALTER TABLE `Tema`
  MODIFY `codice` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
