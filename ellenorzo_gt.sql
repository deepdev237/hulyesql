-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 23, 2024 at 11:09 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ellenorzo_gt`
--

-- --------------------------------------------------------

--
-- Table structure for table `ertekeles_modja`
--

CREATE TABLE `ertekeles_modja` (
  `id_ertekeles_modja` int(10) UNSIGNED NOT NULL,
  `mod_megnevezese` varchar(50) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ertekeles_modja`
--

INSERT INTO `ertekeles_modja` (`id_ertekeles_modja`, `mod_megnevezese`) VALUES
(1, 'Na'),
(2, 'Írásbeli témazáró dolgozat'),
(3, 'Írásbeli röpdolgozat'),
(4, 'Szóbeli felelet'),
(5, 'Beszámoló'),
(6, 'Gyakorlati feladat'),
(7, 'Kisérettségi'),
(8, 'Házi feladat'),
(9, 'Házi dolgozat'),
(10, 'Projektmunka'),
(11, 'Órai munka'),
(12, 'Másik intézményből hozott értékelés'),
(13, 'Órai feladat'),
(14, 'Szorgalmi feladat'),
(15, 'E-learning feladat'),
(16, 'Kisdolgozat'),
(17, 'Nyelvi feladat'),
(18, 'Teszt feladat'),
(19, 'Kompetenciamérés'),
(20, 'Versenyeredmény'),
(21, 'Feladatlap'),
(22, 'Országos kompetenciamérés'),
(23, 'Írásbeli dolgozat'),
(24, 'Írásbeli felelet'),
(25, 'Beadandó feladat'),
(26, 'Csoportmunka'),
(27, 'Bemeneti- kimeneti mérés');

-- --------------------------------------------------------

--
-- Table structure for table `jegyek`
--

CREATE TABLE `jegyek` (
  `id_jegyek` int(10) UNSIGNED NOT NULL,
  `tanulo_id` int(10) UNSIGNED NOT NULL,
  `oktato_id` int(10) UNSIGNED NOT NULL,
  `tantargy_id` int(10) UNSIGNED NOT NULL,
  `jegy` int(10) UNSIGNED NOT NULL,
  `datum` date NOT NULL,
  `ertekeles_modja_id` int(10) UNSIGNED NOT NULL,
  `ertekeles_temaja` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `jegyek`
--

INSERT INTO `jegyek` (`id_jegyek`, `tanulo_id`, `oktato_id`, `tantargy_id`, `jegy`, `datum`, `ertekeles_modja_id`, `ertekeles_temaja`) VALUES
(1, 2, 2, 1, 5, '2023-12-07', 2, 'Arany János'),
(2, 2, 6, 2, 2, '2023-09-29', 3, 'words'),
(3, 2, 6, 2, 3, '2023-10-06', 3, 'words'),
(4, 2, 6, 2, 4, '2023-11-13', 2, 'Unit 1'),
(5, 2, 6, 2, 1, '2023-11-27', 8, 'Written work'),
(6, 2, 6, 2, 5, '2023-11-29', 4, 'Scams'),
(7, 2, 6, 2, 2, '2024-01-03', 2, 'Unit 2'),
(8, 2, 1, 3, 3, '2023-09-25', 3, 'Hegyesszögek szögfüggvényei'),
(9, 2, 1, 3, 2, '2023-10-06', 3, 'Öszzefüggések a hegyesszögek szögfüggvények között'),
(10, 2, 1, 3, 3, '2023-10-20', 11, 'Koszinusztétel'),
(11, 2, 1, 3, 4, '2023-10-26', 4, 'Szinusztétel'),
(12, 2, 1, 3, 3, '2023-11-06', 2, 'Trigonometria'),
(13, 2, 1, 3, 4, '2023-11-17', 3, 'Hatványozás, számok négyzetgyöke'),
(14, 2, 1, 3, 3, '2023-12-01', 3, 'Exponenciális függvények és egyenletek'),
(15, 2, 1, 3, 2, '2023-12-18', 23, 'Logaritmus'),
(16, 2, 3, 4, 1, '2023-09-27', 4, 'Nemzetállamok születése'),
(17, 2, 3, 4, 3, '2023-10-25', 23, 'A szocializmus és a munkásmozgalom'),
(18, 2, 3, 4, 5, '2023-11-24', 13, 'Feladatmegoldás'),
(19, 2, 3, 4, 3, '2024-01-12', 24, 'Az I. Világháború'),
(20, 2, 3, 4, 3, '2024-01-15', 11, 'Feladatmegoldás'),
(21, 2, 4, 5, 5, '2023-10-25', 6, 'Jobb tempódobás'),
(22, 2, 4, 5, 5, '2023-11-10', 6, 'Tempódobás'),
(23, 2, 4, 5, 4, '2024-01-05', 6, 'Talajgyakorlat'),
(24, 2, 4, 5, 4, '2024-01-10', 6, 'Büntetődobás'),
(25, 2, 4, 5, 2, '2024-01-10', 6, 'Bűntetődobás'),
(26, 2, 5, 6, 5, '2023-09-08', 3, 'A Fényvisszaverődés törvényei'),
(27, 2, 5, 6, 3, '2023-11-10', 10, 'Projektfeladat bemutatása 07'),
(28, 2, 5, 6, 4, '2023-11-10', 10, 'Projektfeladat bemutatása 07'),
(29, 2, 9, 7, 5, '2023-11-30', 6, 'Cisco'),
(30, 2, 9, 7, 5, '2024-01-04', 11, ''),
(31, 2, 9, 7, 5, '2024-01-04', 6, 'Szerelési gyakorlat pótlás'),
(32, 2, 7, 8, 5, '2023-09-26', 11, 'Adatbázis tervezés alapjai'),
(33, 2, 7, 8, 5, '2023-10-03', 23, 'Az adatbázis tervezés alapjai'),
(34, 2, 7, 8, 5, '2023-11-07', 11, 'Továbbképzés adatbázis táblák összekapcsolása'),
(35, 2, 7, 8, 5, '2023-11-07', 13, 'Adatbázis exportálása, importálása'),
(36, 2, 7, 8, 5, '2023-11-14', 14, 'Kapcsolatok'),
(37, 2, 7, 8, 5, '2023-11-28', 10, 'Adatbázis módosítása'),
(38, 2, 7, 8, 5, '2023-11-28', 6, 'Oszlop beszúrása'),
(39, 2, 7, 8, 5, '2023-12-19', 11, 'Táblák létrehozása'),
(40, 2, 7, 8, 5, '2024-01-02', 11, 'Rendezési feladatok'),
(41, 2, 8, 9, 1, '2023-10-17', 16, 'IPv4 alhálózat'),
(42, 2, 8, 9, 4, '2023-10-24', 4, 'Kapcsolk át!'),
(43, 2, 8, 9, 5, '2023-12-19', 6, 'VLAN létrehozás, VTP, Trunk'),
(44, 2, 8, 9, 4, '2024-01-09', 18, 'VLAN'),
(45, 2, 10, 10, 5, '2023-09-28', 6, 'Units 1-2'),
(46, 2, 10, 10, 5, '2023-09-28', 3, 'Vocabulary test'),
(47, 2, 10, 10, 5, '2023-09-28', 23, 'An email/  A text'),
(48, 2, 10, 10, 5, '2023-10-05', 13, 'Aptitude test'),
(49, 2, 10, 10, 5, '2023-11-23', 6, 'Translation - Apt test'),
(50, 2, 10, 10, 5, '2023-11-30', 6, 'Anti-virus software'),
(51, 1, 2, 1, 1, '2023-11-06', 2, 'Petőfi II.'),
(52, 1, 2, 1, 5, '2023-09-25', 11, 'Órai munka'),
(53, 1, 2, 1, 3, '2023-11-06', 2, 'Petőfi II.'),
(54, 1, 2, 1, 1, '2023-11-06', 2, 'Petőfi II.'),
(55, 1, 2, 1, 4, '2023-12-07', 2, 'Arany János'),
(56, 1, 2, 1, 5, '2023-12-07', 2, 'Arany János'),
(57, 1, 6, 2, 4, '2023-10-09', 3, 'Present Perfect'),
(58, 1, 6, 2, 4, '2023-11-16', 4, 'Enviromen'),
(59, 1, 6, 2, 4, '2023-11-20', 23, 'Giving news - email'),
(60, 1, 6, 2, 4, '2023-12-04', 6, 'Expressing opinion'),
(61, 1, 2, 1, 3, '2024-01-15', 2, 'Madách'),
(62, 1, 2, 1, 5, '2024-01-15', 2, 'Madách-idézetek'),
(63, 1, 6, 2, 1, '2024-01-15', 9, 'Writing-internet'),
(64, 1, 1, 3, 4, '2023-09-20', 3, 'Szögfüggvények'),
(65, 1, 1, 3, 2, '2023-10-09', 3, 'szinusztétel'),
(66, 1, 1, 3, 1, '2023-11-10', 23, 'gyökvonás'),
(67, 1, 1, 3, 2, '2023-11-29', 3, 'doga'),
(68, 1, 1, 3, 1, '2024-01-03', 3, 'doga'),
(69, 1, 1, 3, 3, '2024-01-15', 3, 'logaritmus azonosságai'),
(70, 1, 3, 4, 5, '2023-09-27', 4, 'nemzetállamok születése'),
(71, 1, 3, 4, 4, '2023-10-25', 23, 'a szocializmus és a munkás mozgalom'),
(72, 1, 3, 4, 5, '2023-11-24', 13, 'feladatmegoldás'),
(73, 1, 3, 4, 5, '2024-01-12', 24, 'az I. világháború'),
(74, 1, 3, 4, 5, '2024-01-15', 11, 'feladatmegoldás'),
(75, 1, 4, 5, 5, '2023-10-25', 6, 'jobb tempódobás'),
(76, 1, 4, 5, 5, '2023-11-10', 6, 'ball tempódobás'),
(77, 1, 4, 5, 4, '2024-01-05', 6, 'talajgyakorlat'),
(78, 1, 4, 5, 4, '2024-01-10', 6, 'büntetődobás'),
(79, 1, 4, 5, 1, '2024-01-10', 6, 'büntetődobás'),
(80, 1, 5, 6, 5, '2023-09-18', 3, 'a fényvisszaverődés törvényei'),
(81, 1, 5, 6, 3, '2023-12-01', 10, 'projekt feladat bemutatása '),
(82, 1, 5, 6, 4, '2023-12-01', 10, 'projekt feladat bemutatása '),
(83, 1, 9, 7, 5, '2023-10-05', 6, 'szerelési gyakorlat'),
(84, 1, 9, 7, 5, '2023-11-30', 6, 'cisco'),
(85, 1, 9, 7, 5, '2024-01-04', 11, 'órai munka'),
(86, 1, 7, 8, 5, '2023-09-26', 11, 'adatbázis tervezés alapjai'),
(87, 1, 7, 8, 5, '2023-10-03', 3, 'Az adatbázis tervezés alapjai'),
(88, 1, 7, 8, 4, '2023-11-07', 11, 'tovabbkepzes adatbazis táblák összekapcsolása'),
(89, 1, 7, 8, 5, '2023-11-28', 6, 'oszlop beszúrása'),
(90, 1, 7, 8, 5, '2024-01-02', 11, 'rendezési feladatok'),
(91, 1, 8, 9, 2, '2023-10-10', 16, 'IPv4 alhálózat számítás'),
(92, 1, 8, 9, 4, '2023-10-10', 6, 'Alapbeállítás, SSH, IP'),
(93, 1, 8, 8, 3, '2023-12-19', 6, 'VLAN lérehozása, VTP ,trunk'),
(94, 1, 8, 8, 4, '2024-01-09', 18, 'VLAN'),
(95, 1, 10, 10, 3, '2023-09-29', 3, 'Vocabulary'),
(96, 1, 10, 10, 5, '2023-09-29', 11, 'Aptitude test'),
(97, 1, 10, 10, 5, '2023-10-06', 13, 'Aptitude test'),
(98, 1, 10, 10, 5, '2023-10-20', 6, 'translation: Assembly instructions'),
(99, 1, 10, 10, 5, '2023-11-24', 6, 'translation-Apt test'),
(100, 1, 10, 10, 4, '2023-11-24', 6, 'translation on Apt test'),
(101, 1, 10, 10, 5, '2023-12-06', 6, 'Anti-virus software'),
(102, 1, 10, 10, 5, '2023-12-15', 2, 'Misc. IT'),
(103, 1, 10, 10, 5, '2024-01-12', 26, 'Emailing'),
(104, 3, 2, 1, 4, '2023-11-07', 2, 'Petőfi'),
(105, 3, 2, 1, 5, '2023-11-07', 2, 'Petőfi'),
(106, 3, 6, 2, 1, '2023-10-06', 4, 'eating habits'),
(107, 3, 6, 2, 3, '2023-11-06', 4, 'Food'),
(108, 3, 6, 2, 4, '2023-11-13', 2, 'Unit 1'),
(109, 3, 6, 2, 5, '2023-11-27', 4, 'Conversation'),
(110, 3, 6, 2, 4, '2023-11-29', 4, 'Scams'),
(111, 3, 6, 2, 2, '2024-01-03', 2, 'Unit 2'),
(112, 3, 1, 3, 5, '2023-09-29', 3, 'Hegyesszögek szögfüggvényei'),
(113, 3, 1, 3, 5, '2023-10-13', 4, 'Szinusztétel'),
(114, 3, 1, 3, 5, '2023-10-20', 11, 'Koszinusztétel'),
(115, 3, 1, 3, 3, '2023-11-06', 2, 'Trigonometria'),
(116, 3, 1, 3, 3, '2023-11-17', 3, 'Hatványozás'),
(117, 3, 1, 3, 5, '2023-12-18', 23, 'Logaritmus'),
(118, 3, 3, 4, 4, '2023-09-27', 4, 'Nemzetállamok születése'),
(119, 3, 3, 4, 4, '2023-10-25', 23, 'A szocializmus és a munkásmozgalom'),
(120, 3, 3, 4, 5, '2023-12-20', 13, 'Feladatmegoldás'),
(121, 3, 4, 5, 5, '2023-11-10', 6, 'Tempódobás'),
(122, 3, 4, 5, 5, '2023-11-24', 14, 'Lóelem'),
(123, 3, 4, 5, 5, '2023-01-05', 6, 'Talajgyakorlat'),
(124, 3, 5, 6, 5, '2023-09-18', 3, 'A fényvisszaverődés törvényei'),
(125, 3, 5, 2, 5, '2023-10-20', 10, 'Projektfeladat bemutatása'),
(126, 3, 5, 6, 2, '2023-10-20', 10, 'Projektfeladat bemutatása'),
(127, 3, 9, 7, 5, '2023-09-05', 6, 'szerelési gyakorlat'),
(128, 3, 9, 7, 4, '2023-12-07', 6, 'Cisco számonkérés'),
(129, 3, 9, 7, 5, '2024-01-04', 11, 'Órai munka'),
(130, 3, 7, 8, 5, '2023-10-03', 23, 'Az adatbázis tervezés alapjai'),
(131, 3, 7, 8, 4, '2023-11-03', 11, 'tovabbkepzes adatbazis táblák összekapcsolása'),
(132, 3, 7, 8, 5, '2024-01-02', 11, 'rendezési feladatok'),
(133, 3, 7, 8, 5, '2024-01-09', 10, 'ellenőrző projekt adatbázis exportálása'),
(134, 3, 8, 9, 5, '2023-10-24', 16, 'IPv4 alhálózat számítás'),
(135, 3, 8, 9, 5, '2023-10-17', 6, 'Alapbeállítás,SSH,IP'),
(136, 3, 8, 9, 5, '2023-10-24', 4, 'Kapcsolk át!'),
(137, 3, 8, 9, 4, '2023-12-19', 6, 'Vlan létrehozása,VTP,Trunk'),
(138, 3, 8, 9, 4, '2024-01-09', 18, 'VLan'),
(139, 3, 10, 10, 5, '2023-09-29', 3, 'Vocabulary test'),
(140, 3, 10, 10, 5, '2023-10-06', 13, 'Aptitude test'),
(141, 3, 10, 10, 3, '2023-11-24', 6, 'Translation.Apt test'),
(142, 3, 4, 5, 5, '2024-01-10', 6, 'Tempódobás'),
(143, 3, 4, 5, 5, '2024-01-10', 6, 'Büntetődobás'),
(144, 3, 4, 5, 5, '2024-01-10', 6, 'Büntetődobás'),
(145, 3, 10, 10, 5, '2023-12-13', 2, 'Misc.IT'),
(146, 3, 10, 10, 5, '2024-01-12', 26, 'Emailing'),
(147, 3, 2, 1, 5, '2024-01-15', 2, 'Madách-idézetek'),
(148, 3, 2, 1, 5, '2024-01-15', 2, 'Madách'),
(149, 3, 3, 4, 5, '2024-01-12', 24, 'Az 1. világháború'),
(150, 3, 3, 4, 5, '2024-01-15', 11, 'Feladatmegoldás'),
(151, 3, 8, 9, 4, '2023-01-09', 25, 'Cisco'),
(152, 3, 2, 1, 3, '2024-01-08', 11, 'Órai munka'),
(153, 4, 2, 1, 2, '2023-11-07', 2, 'Petőfi'),
(154, 4, 2, 1, 4, '2023-12-07', 2, 'Arany János'),
(155, 4, 2, 1, 5, '2023-12-07', 2, 'Arany János'),
(156, 4, 6, 2, 3, '2023-09-29', 3, 'Words'),
(157, 4, 6, 2, 4, '2023-09-29', 3, 'Words'),
(158, 4, 6, 2, 4, '2023-10-20', 4, 'Eating habits'),
(159, 4, 6, 2, 5, '2023-11-06', 13, 'Money words'),
(160, 4, 6, 2, 5, '2023-11-13', 2, 'Unit 1'),
(161, 4, 6, 2, 5, '2023-11-27', 4, 'Conversation'),
(162, 4, 6, 2, 5, '2023-11-29', 4, 'Scams'),
(163, 4, 6, 2, 4, '2024-01-03', 2, 'Unit 2'),
(164, 4, 5, 6, 5, '2023-09-18', 3, 'A fényvisszaverődés törvényei'),
(165, 4, 7, 8, 5, '2023-09-26', 11, 'Adatbázis tervezés alapjai'),
(166, 4, 7, 8, 5, '2023-10-03', 23, 'Az adatbázis kezelés alapjai'),
(167, 4, 7, 8, 4, '2023-11-07', 11, 'tovabbkepzes adatbázis táblák összekapcsolása'),
(168, 4, 7, 8, 5, '2023-11-28', 6, 'Oszlop beszúrása'),
(169, 4, 7, 8, 5, '2024-01-02', 11, 'Rendezési feladatok'),
(170, 4, 8, 9, 4, '2023-10-10', 16, 'IPv4 alhálózat számítás'),
(171, 4, 8, 9, 5, '2023-10-17', 6, 'Alapbeálltás, SSH, IP'),
(172, 4, 8, 9, 4, '2023-10-24', 4, 'Kapcsolk át!'),
(173, 4, 8, 9, 5, '2023-11-28', 13, 'VLAN 3.6.1'),
(174, 4, 9, 7, 5, '2023-10-12', 6, 'Szerelési gyakorlat'),
(175, 4, 9, 7, 5, '2023-11-30', 6, 'Cisco'),
(176, 4, 9, 7, 5, '2024-01-04', 11, ''),
(177, 4, 1, 3, 4, '2023-09-25', 3, 'Hegyesszögek szögfüggvényei'),
(178, 4, 1, 3, 2, '2023-10-06', 3, 'Összefüggések a hegyesszögek szögfüggvények között'),
(179, 4, 1, 3, 4, '2023-10-13', 4, 'Szinusztétel'),
(180, 4, 1, 3, 5, '2023-10-20', 11, 'Koszinusztétel'),
(181, 4, 1, 3, 2, '2023-11-06', 2, 'Trigonometria'),
(182, 4, 1, 3, 4, '2023-11-17', 3, 'Hatványozás, számok'),
(183, 4, 1, 3, 4, '2023-12-01', 23, 'Exponenciális függvények és egyenletek'),
(184, 4, 10, 10, 5, '2023-10-06', 3, 'Vocabulary test'),
(185, 4, 10, 10, 5, '2023-10-06', 23, 'An email/ A text'),
(186, 4, 10, 10, 5, '2023-11-24', 6, 'Translation - Apt test'),
(187, 4, 10, 10, 5, '2023-12-06', 6, 'Anti-virus software'),
(188, 4, 10, 10, 5, '2023-12-06', 11, ''),
(189, 4, 10, 10, 5, '2023-12-06', 13, 'Word processing I.'),
(190, 4, 10, 10, 5, '2023-12-06', 13, 'Word processing II.'),
(191, 4, 10, 10, 5, '2023-12-06', 2, 'Misc. IT'),
(192, 4, 4, 5, 1, '2023-10-20', 11, ''),
(193, 4, 4, 5, 4, '2023-10-25', 6, 'Jobb tempódobás'),
(194, 4, 4, 5, 4, '2023-10-27', 6, 'Büntetődobás'),
(195, 4, 4, 5, 5, '2023-10-27', 6, 'Büntetődobás'),
(196, 4, 4, 5, 3, '2023-10-27', 6, 'Büntetődobás'),
(197, 4, 4, 5, 4, '2023-11-10', 6, 'Tempódobás'),
(198, 4, 4, 5, 4, '2024-01-05', 6, 'Talajgyakorlat'),
(199, 4, 3, 4, 5, '2023-10-06', 4, 'Nemzetállamok születése'),
(200, 4, 3, 4, 4, '2023-11-08', 23, 'A szocializmus és a munkásmozgalom'),
(201, 4, 3, 4, 5, '2023-12-20', 13, 'Feladatmegoldás'),
(202, 4, 3, 4, 5, '2024-01-12', 24, 'Az I. világháború'),
(203, 4, 3, 4, 4, '2024-01-15', 11, 'Feladatmegoldás'),
(204, 5, 2, 1, 5, '2023-09-06', 5, 'a magyar nyelv keletkezése'),
(205, 5, 2, 1, 5, '2023-09-06', 5, 'a magyar nyelv keletkezése'),
(206, 5, 2, 1, 3, '2023-09-19', 25, 'pettőfi'),
(207, 5, 2, 1, 5, '2024-01-03', 16, 'vers elemzés'),
(208, 5, 2, 1, 3, '2023-09-19', 25, 'pettőfi'),
(209, 5, 2, 1, 5, '2024-01-03', 16, 'vers elemzés'),
(210, 5, 6, 2, 3, '2023-09-19', 17, 'writing'),
(211, 5, 6, 2, 5, '2024-01-03', 17, 'vers elemzés'),
(212, 5, 6, 2, 3, '2023-09-19', 17, 'writing'),
(213, 5, 6, 2, 5, '2024-01-03', 17, 'vers elemzés'),
(214, 5, 6, 2, 3, '2023-09-19', 17, 'expressing opinion'),
(215, 5, 6, 2, 5, '2024-01-03', 17, 'vers elemzés'),
(216, 5, 6, 2, 3, '2023-09-19', 17, 'email'),
(217, 5, 6, 2, 5, '2024-01-03', 17, 'vers elemzés'),
(218, 5, 6, 2, 3, '2023-09-19', 17, 'environment'),
(219, 5, 6, 2, 5, '2024-01-03', 17, 'vers elemzés'),
(220, 5, 6, 2, 3, '2023-09-19', 17, 'reading compr'),
(221, 5, 6, 2, 5, '2024-01-03', 17, 'vers elemzés'),
(222, 5, 6, 2, 3, '2023-09-19', 17, 'present perfect'),
(223, 5, 6, 2, 5, '2024-01-03', 17, 'vers elemzés'),
(224, 5, 1, 3, 4, '2023-12-01', 3, 'szögfügvények'),
(225, 5, 1, 3, 4, '2023-12-01', 3, 'szögfügvények'),
(226, 5, 1, 3, 4, '2023-12-01', 4, 'szögfügvények javitó'),
(227, 5, 1, 3, 4, '2023-12-01', 3, 'gyökvonás'),
(228, 5, 1, 3, 4, '2023-12-01', 3, 'nincs név megadva'),
(229, 5, 1, 3, 4, '2023-12-01', 5, 'nincs név megadva'),
(230, 5, 1, 3, 4, '2023-12-01', 5, 'logaritmus azonosságai'),
(231, 5, 3, 4, 4, '2023-12-01', 2, 'nemzetállamok születése'),
(232, 5, 3, 4, 4, '2023-12-01', 2, 'nemzetállamok születése'),
(233, 5, 3, 4, 4, '2023-12-01', 5, 'szocializmus'),
(234, 5, 3, 4, 4, '2023-12-01', 4, 'nincs név'),
(235, 5, 3, 4, 4, '2023-12-01', 5, '1.világháboru'),
(236, 5, 3, 4, 4, '2023-12-01', 2, '2.világháboru'),
(237, 5, 5, 6, 5, '2024-01-11', 10, 'ppt'),
(238, 5, 5, 6, 5, '2024-01-11', 10, 'ppt'),
(239, 5, 5, 6, 5, '2024-01-11', 10, 'ppt'),
(240, 5, 5, 6, 5, '2024-01-11', 10, 'ppt'),
(241, 5, 5, 6, 5, '2024-01-11', 10, 'ppt'),
(242, 5, 9, 7, 4, '2023-09-19', 6, 'szerelési gyak potlása'),
(243, 5, 9, 7, 4, '2023-09-19', 5, 'szerelési gyak potlása'),
(244, 5, 9, 7, 4, '2023-09-19', 3, 'cisco pótló'),
(245, 5, 9, 7, 4, '2023-09-19', 4, 'nincs név'),
(246, 5, 7, 8, 5, '2023-09-19', 6, 'adatbázis tervezés alapjai'),
(247, 5, 7, 8, 5, '2023-09-19', 5, 'adatbázis tervezés alapjai'),
(248, 5, 7, 8, 5, '2023-09-19', 4, 'adatbázis tervezés alapjai'),
(249, 5, 7, 8, 5, '2023-09-19', 5, 'továbbképzés adazbázis tábla összekapcsolása'),
(250, 5, 7, 8, 5, '2023-09-19', 2, 'oszlop beszúrása'),
(251, 5, 7, 8, 5, '2023-09-19', 3, 'rendezési feladatok'),
(252, 5, 8, 9, 5, '2023-09-19', 3, 'adatbázis tervezés alapjai'),
(253, 5, 8, 9, 5, '2023-09-19', 3, 'ipv4 alhálozat számolása'),
(254, 5, 8, 9, 5, '2023-09-19', 5, 'alapbeállitás, ssh, ip'),
(255, 5, 8, 9, 5, '2023-09-19', 4, 'kapcsolk át'),
(256, 5, 8, 9, 5, '2023-09-19', 3, 'vlan'),
(257, 5, 10, 10, 5, '2023-09-19', 3, 'vacaulary test'),
(258, 5, 10, 10, 5, '2023-09-19', 3, 'vacaulary test'),
(259, 5, 10, 10, 5, '2023-09-19', 5, 'translation'),
(260, 5, 10, 10, 5, '2023-09-19', 4, 'worf proccessing 2'),
(261, 5, 10, 10, 5, '2023-09-19', 5, 'msc.IT'),
(262, 5, 10, 10, 5, '2023-09-19', 5, 'emailing'),
(427, 7, 2, 1, 3, '2023-10-16', 2, 'Petőfi 1'),
(428, 7, 2, 1, 1, '2023-11-06', 2, 'Petőfi 2'),
(429, 7, 2, 1, 3, '2023-12-07', 2, 'Arany János'),
(430, 7, 6, 2, 5, '2023-10-09', 3, 'Present Perfect'),
(431, 7, 6, 2, 5, '2023-11-16', 4, 'Environment'),
(432, 7, 6, 2, 5, '2023-11-20', 3, 'Givinf news -email'),
(433, 7, 6, 2, 5, '2023-12-04', 6, 'Expressing opinion'),
(434, 7, 6, 2, 5, '2023-12-18', 6, 'Christmas'),
(435, 7, 1, 3, 4, '2023-09-20', 3, 'szögfüggvények'),
(436, 7, 1, 3, 5, '2023-10-09', 3, 'szinusztétel'),
(437, 7, 1, 3, 5, '2023-10-09', 11, ''),
(438, 7, 1, 3, 1, '2023-10-25', 11, ''),
(439, 7, 1, 3, 5, '2023-10-25', 3, ''),
(440, 7, 1, 3, 5, '2023-11-10', 3, 'gyökvonás'),
(441, 7, 1, 3, 4, '2023-11-29', 3, ''),
(442, 7, 1, 3, 4, '2024-01-03', 3, ''),
(443, 7, 3, 4, 5, '2023-09-27', 4, 'Nemzetállamok születése'),
(444, 7, 3, 4, 4, '2023-10-25', 23, 'Feladatmegoldás'),
(445, 7, 3, 4, 5, '2023-11-24', 13, 'Feladatmegoldás'),
(446, 7, 4, 5, 4, '2023-10-13', 6, 'Büntetődobás'),
(447, 7, 4, 5, 5, '2023-11-24', 6, 'Büntetődobás'),
(448, 7, 4, 5, 3, '2023-10-13', 6, 'Büntetődobás'),
(449, 7, 4, 5, 4, '2023-10-25', 6, 'Jobb tempódobás'),
(450, 7, 4, 5, 5, '2023-11-10', 6, 'Tempódobás'),
(451, 7, 4, 5, 5, '2024-01-05', 6, 'Talajgyakorlat'),
(452, 7, 5, 6, 5, '2023-09-18', 3, 'A fényvisszaverődés törvényei'),
(453, 7, 9, 7, 2, '2023-10-05', 6, 'szerelési gyakorlat'),
(454, 7, 9, 7, 4, '2023-10-12', 6, 'szerelési gyakorlat'),
(455, 7, 9, 7, 5, '2023-11-30', 6, 'Cisco'),
(456, 7, 9, 7, 4, '2024-01-04', 11, ''),
(457, 7, 7, 8, 5, '2023-09-26', 11, 'Adatbázis tervezés alapjai'),
(458, 7, 7, 8, 5, '2023-10-03', 23, 'Az adatbázis tervezés alapjai'),
(459, 7, 5, 6, 3, '2024-01-12', 10, 'Projektfeladat bemutatása'),
(460, 7, 7, 8, 4, '2023-11-07', 11, 'tovabbkepzes adatbázis táblák összekapcsolása'),
(461, 7, 7, 8, 5, '2023-11-14', 14, 'kapcsolatok'),
(462, 7, 7, 8, 5, '2023-11-28', 6, 'oszlop beszúrása'),
(463, 7, 7, 8, 5, '2024-01-02', 11, 'rendezési feladatok'),
(464, 7, 8, 9, 5, '2023-11-28', 16, 'IPv4 alhálózat számítás'),
(465, 7, 8, 9, 5, '2023-10-10', 6, 'Alapbeállítás, SSH, IP'),
(466, 7, 8, 9, 5, '2023-10-17', 4, 'Kapcsolk át!'),
(467, 7, 8, 9, 5, '2023-11-28', 13, 'VLAN 3.6.1'),
(468, 7, 8, 9, 5, '2023-12-19', 6, 'VLAN létrehozás, VTP, Trunk'),
(469, 7, 8, 9, 5, '2024-01-09', 18, 'VLAN'),
(470, 7, 10, 10, 5, '2023-09-29', 3, 'Vocabulary test'),
(471, 7, 10, 10, 5, '2023-09-29', 23, 'An email/A text'),
(472, 7, 10, 10, 5, '2023-10-06', 13, 'Aptitude Test'),
(473, 7, 10, 10, 5, '2023-11-30', 6, 'translation on Apt test'),
(474, 7, 10, 10, 5, '2023-12-06', 6, 'Anti-virus software'),
(475, 7, 10, 10, 5, '2023-12-06', 6, 'Word processing 1.'),
(476, 13, 2, 1, 3, '2023-10-16', 2, 'Petőfi 1'),
(477, 13, 2, 1, 2, '2023-11-06', 2, 'Petőfi 2'),
(478, 13, 2, 1, 4, '2023-12-07', 2, 'Arany János'),
(479, 13, 6, 2, 5, '2023-10-09', 3, 'Present Perfect'),
(480, 13, 6, 2, 5, '2023-11-16', 4, 'Environment'),
(481, 13, 6, 2, 5, '2023-11-20', 3, 'Givinf news -email'),
(482, 13, 6, 2, 5, '2023-12-04', 6, 'Expressing opinion'),
(483, 13, 6, 2, 5, '2023-12-18', 6, 'Christmas'),
(484, 13, 1, 3, 3, '2023-09-20', 3, 'szögfüggvények'),
(485, 13, 1, 3, 4, '2023-10-09', 3, 'szinusztétel'),
(486, 13, 1, 3, 5, '2023-10-09', 11, ''),
(487, 13, 1, 3, 3, '2023-10-25', 11, ''),
(488, 13, 1, 3, 4, '2023-10-25', 3, ''),
(489, 13, 1, 3, 4, '2023-11-10', 3, 'gyökvonás'),
(490, 13, 1, 3, 2, '2023-11-29', 3, ''),
(491, 13, 1, 3, 3, '2024-01-03', 3, ''),
(492, 13, 3, 4, 5, '2023-09-27', 4, 'Nemzetállamok születése'),
(493, 13, 3, 4, 5, '2023-10-25', 23, 'Feladatmegoldás'),
(494, 13, 3, 4, 5, '2023-11-24', 13, 'Feladatmegoldás'),
(495, 13, 4, 5, 2, '2023-10-13', 6, 'Büntetődobás'),
(496, 13, 4, 5, 5, '2023-11-24', 6, 'Büntetődobás'),
(497, 13, 4, 5, 1, '2023-10-13', 6, 'Büntetődobás'),
(498, 13, 4, 5, 3, '2023-10-25', 6, 'Jobb tempódobás'),
(499, 13, 4, 5, 4, '2023-11-10', 6, 'Tempódobás'),
(500, 13, 4, 5, 5, '2024-01-05', 6, 'Talajgyakorlat'),
(501, 13, 5, 6, 5, '2023-09-18', 3, 'A fényvisszaverődés törvényei'),
(502, 13, 9, 7, 5, '2023-10-05', 6, 'szerelési gyakorlat'),
(503, 13, 9, 7, 3, '2023-10-12', 6, 'szerelési gyakorlat'),
(504, 13, 9, 7, 1, '2023-11-30', 6, 'Cisco'),
(505, 13, 9, 7, 5, '2024-01-04', 11, ''),
(506, 13, 7, 8, 3, '2023-09-26', 11, 'Adatbázis tervezés alapjai'),
(507, 13, 7, 8, 1, '2023-10-03', 23, 'Az adatbázis tervezés alapjai'),
(508, 13, 5, 6, 3, '2024-01-12', 10, 'Projektfeladat bemutatása'),
(509, 13, 7, 8, 4, '2023-11-07', 11, 'tovabbkepzes adatbázis táblák összekapcsolása'),
(510, 13, 7, 8, 5, '2023-11-14', 14, 'kapcsolatok'),
(511, 13, 7, 8, 5, '2023-11-28', 6, 'oszlop beszúrása'),
(512, 13, 7, 8, 1, '2024-01-02', 11, 'rendezési feladatok'),
(513, 13, 8, 9, 5, '2023-11-28', 16, 'IPv4 alhálózat számítás'),
(514, 13, 8, 9, 3, '2023-10-10', 6, 'Alapbeállítás, SSH, IP'),
(515, 13, 8, 9, 4, '2023-10-17', 4, 'Kapcsolk át!'),
(516, 13, 8, 9, 5, '2023-11-28', 13, 'VLAN 3.6.1'),
(517, 13, 8, 9, 2, '2023-12-19', 6, 'VLAN létrehozás, VTP, Trunk'),
(518, 13, 8, 9, 5, '2024-01-09', 18, 'VLAN'),
(519, 13, 10, 10, 5, '2023-09-29', 3, 'Vocabulary test'),
(520, 13, 10, 10, 4, '2023-09-29', 23, 'An email/A text'),
(521, 13, 10, 10, 5, '2023-10-06', 13, 'Aptitude Test'),
(522, 13, 10, 10, 5, '2023-11-30', 6, 'translation on Apt test'),
(523, 13, 10, 10, 4, '2023-12-06', 6, 'Anti-virus software'),
(524, 13, 10, 10, 5, '2023-12-06', 6, 'Word processing 1.'),
(525, 14, 2, 1, 4, '2023-10-16', 2, 'Petőfi- 1.'),
(526, 14, 2, 1, 3, '2023-12-07', 2, 'Arany János'),
(527, 14, 6, 2, 2, '2023-09-29', 3, 'words'),
(528, 14, 6, 2, 3, '2023-10-06', 3, 'words'),
(529, 14, 6, 2, 5, '2023-10-20', 4, 'eating habits'),
(530, 14, 6, 2, 5, '2023-11-13', 2, 'Unit 1'),
(531, 14, 6, 2, 5, '2023-11-27', 4, 'Conversation'),
(532, 14, 6, 2, 1, '2023-11-27', 8, 'written work'),
(533, 14, 6, 2, 5, '2023-11-29', 4, 'Scams'),
(534, 14, 1, 3, 3, '2023-09-25', 3, 'Hegyesszögek szögfüggvényei'),
(535, 14, 1, 3, 5, '2023-10-06', 3, 'Összefüggések a hegyesszögek szögfüggvényei között'),
(536, 14, 1, 3, 5, '2023-10-13', 4, 'Szinusztétel'),
(537, 14, 1, 3, 5, '2023-10-20', 11, 'Koszinusztétel'),
(538, 14, 1, 3, 4, '2023-11-06', 2, 'Trigonometria'),
(539, 14, 1, 3, 4, '2023-11-17', 3, 'Hatványozás'),
(540, 14, 1, 3, 4, '2023-12-01', 23, 'Exponenciális függvények'),
(541, 14, 1, 3, 4, '2023-12-18', 23, 'Logaritmus'),
(542, 14, 3, 4, 5, '2023-09-27', 4, 'Nemzetállamok születése'),
(543, 14, 3, 4, 4, '2023-10-25', 23, 'A szocializmus és a munkásmozgalom'),
(544, 14, 3, 4, 5, '2023-11-24', 13, 'Feladatmegoldás'),
(545, 14, 4, 5, 4, '2023-10-25', 6, 'Jobb tempódobás'),
(546, 14, 4, 5, 5, '2023-11-10', 6, 'Tempódobás'),
(547, 14, 4, 5, 4, '2024-01-05', 6, 'Talajgyakorlat'),
(548, 14, 5, 6, 5, '2023-09-18', 3, 'A fényvisszaverődés törvényei'),
(549, 14, 5, 6, 3, '2023-11-20', 10, 'Projektfeladat '),
(550, 14, 5, 6, 4, '2023-11-20', 10, 'Projektfeladat'),
(551, 14, 9, 7, 5, '2023-10-12', 6, 'szerelési gyakorlat'),
(552, 14, 9, 7, 3, '2023-11-30', 6, 'Cisco'),
(553, 14, 9, 7, 4, '2024-01-04', 11, 'órai munka'),
(554, 14, 7, 8, 5, '2023-09-26', 11, 'Adatbázis tervezési alapjai'),
(555, 14, 7, 8, 5, '2023-10-03', 23, 'az adatbázis tervezési alapjai'),
(556, 14, 7, 8, 4, '2023-11-07', 11, 'táblák összekapcsolása'),
(557, 14, 7, 8, 5, '2023-11-28', 6, 'oszlop beszúrása'),
(558, 14, 7, 8, 5, '2024-01-02', 11, 'rendezési feladatok'),
(559, 14, 8, 9, 5, '2023-10-10', 16, 'Ipv4 hálózat számítás'),
(560, 14, 8, 9, 5, '2023-10-17', 6, 'Alapbeállítás, SSH, IP'),
(561, 14, 8, 9, 4, '2023-10-24', 4, 'Kapcsolk át!'),
(562, 14, 8, 9, 5, '2023-12-19', 6, 'VLAN létrehozás, VTP, Trunk'),
(563, 14, 8, 9, 4, '2024-01-09', 18, 'VLAN'),
(564, 14, 10, 10, 5, '2023-09-29', 3, 'Vocabulary test'),
(565, 14, 10, 10, 5, '2023-11-24', 6, 'Apt test'),
(566, 14, 10, 10, 5, '2023-12-06', 6, 'Anti-virus software'),
(567, 14, 10, 10, 5, '2023-12-06', 13, 'Word processing 1.'),
(568, 14, 10, 10, 5, '2023-12-06', 13, 'Word processing 2.'),
(569, 14, 10, 10, 5, '2024-01-11', 2, 'Misc IT'),
(570, 14, 10, 10, 5, '2024-01-12', 26, 'Emailing'),
(571, 14, 10, 10, 5, '2024-01-12', 2, 'Misc IT'),
(572, 14, 5, 6, 1, '2023-11-05', 8, 'hazi feladat'),
(573, 14, 8, 9, 1, '2023-11-13', 8, 'cisco házi'),
(574, 14, 3, 4, 1, '2024-01-02', 8, 'házi '),
(575, 11, 7, 8, 5, '2023-09-26', 11, 'Adatbázis tervezés alapjai'),
(576, 11, 7, 8, 5, '2023-10-03', 23, 'Az adatbázis tervezés alapjai'),
(577, 11, 7, 8, 4, '2023-11-07', 11, 'Továbbképzés adatbázis táblák összekapcsolása'),
(578, 11, 7, 8, 5, '2024-01-02', 11, 'Rendezési feladatok'),
(579, 11, 6, 2, 5, '2023-12-11', 3, 'Present Perfect'),
(580, 11, 6, 2, 5, '2023-12-11', 4, 'Environment'),
(581, 11, 6, 2, 5, '2023-12-11', 3, 'Giving news - email'),
(582, 11, 6, 2, 5, '2023-12-11', 6, 'Expressing opinion'),
(583, 11, 6, 2, 5, '2023-12-18', 6, 'Christmas'),
(584, 11, 5, 6, 5, '2023-09-18', 3, 'A fényvisszaverődés törvényei'),
(585, 11, 8, 9, 4, '2023-10-10', 16, 'IPv4 alhálózat számítás'),
(586, 11, 8, 9, 4, '2023-10-10', 6, 'Alapbeállítás, SSH, IP'),
(587, 11, 9, 7, 5, '2023-09-28', 6, 'Szerelési gyakorlat'),
(588, 11, 9, 7, 5, '2023-10-14', 6, 'Cisco pótlás'),
(589, 11, 9, 7, 5, '2024-01-04', 11, 'Órai munka'),
(590, 11, 2, 1, 5, '2023-11-07', 11, 'Órai munka'),
(591, 11, 2, 1, 2, '2023-11-07', 2, 'Petőfi- I.'),
(592, 11, 2, 1, 2, '0223-11-07', 2, 'Petőfi- II.'),
(593, 11, 1, 3, 3, '2023-10-09', 3, 'Szinusztétel'),
(594, 11, 1, 3, 5, '2023-10-25', 11, 'Órai munka'),
(595, 11, 1, 3, 3, '2023-11-13', 3, 'Gyökvonás'),
(596, 11, 1, 3, 4, '2024-01-03', 3, 'Írásbeli röpdolgozat'),
(597, 11, 10, 10, 5, '2023-10-12', 3, 'Vocabulary test'),
(598, 11, 10, 10, 5, '2023-12-06', 6, 'Translation on Apt test'),
(599, 11, 10, 10, 5, '2023-12-13', 2, 'Misc. IT'),
(600, 11, 10, 10, 5, '2023-12-13', 13, 'Word processing I.'),
(601, 11, 10, 10, 5, '2023-12-13', 13, 'Word processing II.'),
(602, 11, 4, 5, 4, '2023-10-13', 6, 'Büntetődobás'),
(603, 11, 4, 5, 1, '2023-10-13', 6, 'Büntetődobás'),
(604, 11, 4, 5, 1, '2023-10-20', 11, 'Órai munka'),
(605, 11, 4, 5, 4, '2023-10-25', 6, 'Jobb tempódobás'),
(606, 11, 4, 5, 5, '2023-11-10', 6, 'Tempódobás'),
(607, 11, 4, 5, 4, '2024-01-05', 6, 'Talajgyakorlat'),
(608, 11, 3, 4, 3, '2023-10-09', 4, 'Nemzetállamok születése'),
(609, 11, 3, 4, 3, '2023-11-08', 23, 'A szocializmus és a munkásmozgalom'),
(610, 11, 3, 4, 5, '2023-12-20', 13, 'Feladatmegoldás'),
(611, 11, 2, 1, 3, '2024-01-15', 2, 'Madách'),
(612, 11, 2, 1, 4, '2024-01-15', 2, 'Madách-idézetek'),
(613, 11, 6, 2, 5, '2024-01-15', 9, 'Writing - Internet'),
(614, 11, 6, 2, 1, '2023-11-06', 16, 'Reading compr- Think Pink'),
(615, 11, 6, 2, 5, '2023-10-09', 6, 'An email - giving news'),
(616, 11, 1, 3, 3, '2024-01-15', 23, 'Logaritmus azonosságai'),
(617, 11, 3, 4, 3, '2024-01-15', 24, 'Az I. világháború'),
(618, 11, 3, 4, 4, '2024-01-15', 13, 'Feladatmegoldás'),
(619, 11, 5, 6, 3, '2024-01-12', 10, 'Projektfeladat bemutatása'),
(620, 11, 5, 6, 4, '2024-01-12', 10, 'Projektfeladat bemutatása'),
(621, 11, 8, 9, 5, '2024-01-09', 18, 'VLAN'),
(622, 12, 7, 8, 3, '2024-01-02', 11, 'rendezési feladatok'),
(623, 12, 7, 8, 1, '2023-11-28', 6, 'oszlop beszúrása'),
(624, 12, 7, 8, 2, '2023-11-07', 11, 'tovabbkebzes adatbázis táblák összekapcsolása'),
(625, 12, 7, 8, 5, '2023-10-03', 23, 'az adatbázis alapjai'),
(626, 12, 7, 8, 4, '2023-09-26', 11, 'adatbázis tervezés alapjai'),
(627, 12, 2, 1, 3, '2023-12-07', 23, 'Arany János'),
(628, 12, 2, 1, 5, '2023-11-07', 2, 'Petőfi- II'),
(629, 12, 2, 8, 2, '2023-11-07', 2, 'Petőfi- I.'),
(630, 12, 6, 2, 5, '2024-01-05', 4, 'Reading compr. - Speaking'),
(631, 12, 6, 2, 2, '2023-12-11', 6, 'Expressing opinion'),
(632, 12, 6, 2, 4, '2023-11-20', 23, 'Giving News - email'),
(633, 12, 6, 2, 1, '2023-11-16', 4, 'environment'),
(634, 12, 6, 2, 2, '2023-10-09', 3, 'Present Perfect'),
(635, 12, 3, 4, 5, '2023-11-24', 11, 'feladatmegoldás'),
(636, 12, 3, 4, 2, '2023-11-08', 23, 'a szocializmus és a munkásmozgalom'),
(637, 12, 3, 4, 1, '2023-10-04', 4, 'Nemzetállamok születése'),
(638, 12, 4, 5, 1, '2024-01-05', 6, ''),
(639, 12, 1, 3, 3, '2024-01-03', 3, 'Írásbeli röpdolgozat'),
(640, 12, 4, 5, 3, '2024-01-10', 6, 'Büntetődobás'),
(641, 12, 4, 5, 1, '2024-01-10', 6, 'büntetődobás'),
(642, 12, 4, 5, 2, '2024-01-05', 6, 'Talajgyakorlat'),
(643, 12, 4, 5, 5, '2023-10-10', 6, 'Tempódobás'),
(644, 12, 5, 6, 4, '2024-01-12', 3, 'a tükröződés törvényei, síktükör képalkotása'),
(645, 12, 5, 6, 5, '2023-10-10', 3, 'A tükröződés törvényei, síktükör képalkotás'),
(646, 12, 5, 6, 5, '2023-12-11', 10, 'Projektfeladat bemutatása 14'),
(647, 12, 5, 6, 3, '2023-12-11', 10, 'A tükröződés törvényei, síktükör képalkotás'),
(648, 12, 9, 7, 3, '2024-01-04', 13, 'Órai munka'),
(649, 12, 9, 7, 1, '2023-11-30', 6, 'Cisco'),
(650, 12, 9, 7, 4, '2023-10-05', 6, 'szerelési gyakorlat'),
(651, 12, 8, 9, 1, '2024-01-09', 18, 'VLAN'),
(652, 12, 8, 9, 2, '2023-12-19', 6, 'VLAN létrehozás, VTP, Trunk '),
(653, 12, 8, 9, 5, '2023-10-17', 4, 'Kapcsolj át!'),
(654, 12, 8, 9, 5, '2023-10-10', 6, 'Alapbeállítás, SSH, IP'),
(655, 12, 8, 9, 4, '2023-10-10', 16, 'IPv4 alhálózat számítás'),
(656, 13, 2, 1, 1, '2023-12-07', 2, 'Arany János'),
(657, 13, 2, 1, 2, '2023-12-07', 2, 'Petőfi - II.'),
(658, 13, 2, 1, 3, '2023-12-07', 2, 'Petőfi - I.'),
(659, 8, 2, 1, 5, '2024-01-15', 2, 'Madách-idézetek'),
(660, 8, 2, 1, 5, '2024-01-15', 2, 'Madách'),
(661, 8, 5, 6, 4, '2024-01-15', 3, 'A tükröződés törvényei'),
(662, 8, 5, 6, 3, '2024-01-15', 3, 'A tükröződés törvényei, síktükör képalkotása'),
(663, 8, 3, 4, 5, '2024-01-15', 24, 'Az I. VH.'),
(664, 8, 1, 3, 4, '2024-01-15', 4, 'Szöveges feladatok megoldása'),
(665, 8, 10, 10, 2, '2024-01-12', 26, 'Emailing'),
(666, 8, 3, 4, 2, '2023-12-20', 11, 'Feladatmegoldás'),
(667, 8, 5, 6, 2, '2024-01-12', 10, 'Projektfeladat bemutatása'),
(668, 8, 8, 9, 4, '2024-01-09', 18, 'VLAN'),
(669, 8, 2, 1, 5, '2024-01-02', 2, 'Arany János'),
(670, 8, 4, 5, 1, '2024-01-05', 6, 'Talajgyakorlat'),
(671, 8, 9, 7, 2, '2024-01-04', 13, 'Órai feladat'),
(672, 8, 7, 8, 5, '2024-01-02', 11, 'Rendezési feladatok'),
(673, 8, 3, 4, 3, '2022-11-24', 13, 'Feladatmegoldás'),
(674, 8, 8, 9, 4, '2023-12-19', 6, 'VLAN létrehozás, VTP, Trunk'),
(675, 8, 1, 3, 3, '2023-12-18', 23, 'Logaritmus'),
(676, 8, 10, 10, 5, '2023-12-15', 2, 'Misc. IT'),
(677, 8, 9, 7, 1, '2023-12-14', 6, 'cisco pótlás'),
(678, 8, 10, 10, 1, '2023-12-13', 13, 'Word processing ll.'),
(679, 8, 10, 10, 5, '2023-12-13', 13, 'Word processing l.'),
(680, 8, 2, 1, 2, '2023-12-07', 2, 'gjsnjghangsdrbhe'),
(681, 8, 10, 10, 2, '2023-12-06', 6, 'translation on Apt test'),
(682, 8, 1, 3, 1, '2023-12-01', 23, 'Exp. függvények és egyenletek'),
(683, 8, 6, 2, 4, '2023-11-29', 4, 'Scams'),
(684, 8, 7, 8, 5, '2023-11-28', 6, 'oszlop beszúrása'),
(685, 8, 6, 2, 2, '2023-11-13', 2, 'Unit 1'),
(686, 8, 4, 5, 5, '2023-11-10', 6, 'Tempódobás'),
(687, 8, 3, 4, 4, '2023-11-08', 23, 'A szocializmus és a munkásmozgalom'),
(688, 8, 2, 1, 3, '2023-11-07', 2, 'Petőfi- l.'),
(689, 8, 2, 1, 2, '2023-11-07', 2, 'Petőfi- l.'),
(690, 8, 7, 8, 4, '2023-11-07', 11, 'tovabbkepzes adatbázis táblák összekapcsolása'),
(691, 8, 1, 3, 3, '2023-11-06', 2, 'Trigonometria'),
(692, 8, 4, 5, 4, '2023-10-27', 6, 'Büntetődobás'),
(693, 8, 4, 5, 5, '2023-10-27', 6, 'Büntetődobás'),
(694, 8, 4, 5, 4, '2023-10-25', 6, 'Jobb tempódobás'),
(695, 8, 8, 9, 2, '2023-10-24', 4, 'Kapcsolj át!'),
(696, 8, 4, 5, 1, '2023-10-20', 11, 'Órai munka'),
(697, 8, 1, 3, 3, '2023-10-20', 11, 'Koszinusztétel'),
(698, 8, 1, 3, 4, '2023-10-13', 4, 'Szinusztétel'),
(699, 8, 8, 9, 5, '2023-10-10', 6, 'Alapbeállítás, SSH, IP'),
(700, 8, 8, 9, 2, '2023-10-10', 16, 'IPv4 alhálózat számítás'),
(701, 8, 10, 10, 5, '2023-10-06', 13, 'Aptitude test'),
(702, 8, 10, 10, 5, '2023-10-06', 23, 'An email/ A text'),
(703, 8, 10, 10, 5, '2023-10-06', 3, 'Vocabulary test'),
(704, 8, 3, 4, 1, '2023-10-06', 4, 'nemzetállamok születése'),
(705, 8, 6, 2, 1, '2023-10-06', 4, 'eating'),
(706, 8, 7, 8, 1, '2023-09-26', 11, 'Adatbázis tervezés alapjai'),
(707, 10, 2, 1, 5, '2024-01-02', 2, 'Arany János'),
(708, 10, 2, 1, 4, '2024-01-02', 2, 'Arany János'),
(709, 10, 2, 1, 3, '2023-12-07', 2, 'Arany János'),
(710, 10, 2, 1, 1, '2023-11-06', 2, 'Petőfi II'),
(711, 10, 2, 1, 1, '2023-10-16', 2, 'Petőfi I'),
(712, 10, 10, 10, 5, '2023-12-06', 13, 'Word processing II'),
(713, 10, 10, 10, 5, '2023-12-06', 13, 'Word processing I'),
(714, 10, 10, 10, 1, '2023-11-30', 6, 'Translation on Apt test'),
(715, 10, 10, 10, 5, '2023-12-06', 6, 'Anti-virus software'),
(716, 10, 10, 10, 5, '2023-10-12', 2, 'Spoken presentation Fall term'),
(717, 10, 10, 10, 5, '2023-09-29', 3, 'Vocabulary test'),
(718, 10, 3, 4, 5, '2023-11-24', 13, 'Feladatmegoldás'),
(719, 10, 3, 4, 4, '2023-10-25', 23, 'A szocializmus és a munkásmozgalom'),
(720, 10, 3, 4, 5, '2023-10-06', 4, 'Nemzetállamok születése'),
(721, 10, 4, 5, 1, '2024-01-05', 6, 'Talajgyakorlat'),
(722, 10, 4, 5, 5, '2023-11-10', 6, 'Tempódobás'),
(723, 10, 4, 5, 1, '2023-10-27', 6, 'Büntetődobás'),
(724, 10, 4, 5, 1, '2023-10-27', 6, 'Büntetődobás'),
(725, 10, 4, 5, 4, '2023-10-27', 6, 'Büntetődobás'),
(726, 10, 4, 5, 3, '2023-07-27', 6, 'Büntetődobás'),
(727, 10, 4, 5, 4, '2023-10-27', 6, 'Bal tempódobás'),
(728, 10, 4, 5, 4, '2023-10-25', 6, 'Jobb tempódóbás'),
(729, 10, 4, 5, 1, '2023-10-20', 11, 'Órai munka'),
(730, 10, 5, 6, 4, '2024-01-15', 10, 'Projektfeladat bemutatása'),
(731, 10, 5, 6, 3, '2024-01-15', 3, 'A tükröződés törvényei, síktükör képalkotása'),
(732, 10, 5, 6, 2, '2024-01-15', 23, 'A tükröződés törvényei, síktükör képalkotása'),
(733, 10, 5, 6, 3, '2024-01-12', 10, 'Projektfeladat bemutatása'),
(734, 10, 3, 4, 3, '2024-01-15', 24, 'Az I. világhabórú'),
(735, 10, 3, 4, 3, '2024-01-15', 11, 'Feladatmegoldás'),
(736, 10, 2, 1, 2, '2024-01-15', 2, 'Madách-idézetek'),
(737, 10, 2, 1, 5, '2024-01-15', 2, 'Madách'),
(738, 10, 1, 3, 3, '2024-01-15', 23, 'logaritmus azonosságai'),
(739, 10, 6, 2, 1, '2024-01-15', 16, 'Reading compr- Think pink'),
(740, 10, 6, 2, 5, '2024-01-15', 9, 'Writing - Internet'),
(741, 10, 10, 10, 5, '2024-01-14', 26, 'Emailing'),
(742, 10, 8, 9, 4, '2024-01-09', 18, 'VLAN'),
(743, 10, 8, 9, 5, '2023-12-19', 6, 'VLAN létrehozás, VTP, Trunk'),
(744, 10, 8, 9, 5, '2023-10-24', 4, 'Kapcsolk át!'),
(745, 10, 8, 9, 4, '2023-10-17', 6, 'IPv4 alhálózat számítás'),
(746, 10, 8, 9, 4, '2023-10-10', 6, 'Alapbeállítás, SHH, IP'),
(747, 10, 8, 9, 1, '2023-10-10', 16, 'IPv4 alhálózat számítás'),
(748, 10, 1, 3, 4, '2024-01-03', 3, ''),
(749, 10, 1, 3, 1, '2023-11-30', 3, ''),
(750, 10, 1, 3, 3, '2023-11-13', 3, 'Gyökvonás'),
(751, 10, 1, 1, 2, '2023-10-10', 3, 'Szinusztétel'),
(752, 10, 1, 3, 5, '2023-09-26', 3, 'Szögfüggvények'),
(753, 10, 9, 7, 5, '2024-01-04', 13, ''),
(754, 10, 9, 7, 4, '2023-11-30', 6, 'Cisco'),
(755, 10, 9, 7, 5, '2023-10-05', 6, 'Szerelési gyakorlat'),
(756, 10, 7, 8, 5, '2024-01-02', 11, 'Rendezési feladatok'),
(757, 9, 2, 1, 5, '2024-01-02', 2, 'Arany János'),
(758, 9, 2, 1, 4, '2024-01-02', 2, 'Arany János'),
(759, 9, 2, 1, 3, '2023-12-07', 2, 'Arany János'),
(760, 9, 2, 1, 1, '2023-11-06', 2, 'Petőfi II'),
(761, 9, 2, 1, 1, '2023-10-16', 2, 'Petőfi I'),
(762, 9, 10, 10, 5, '2023-12-06', 13, 'Word processing II'),
(763, 9, 10, 10, 5, '2023-12-06', 13, 'Word processing I'),
(764, 9, 10, 10, 1, '2023-11-30', 6, 'Translation on Apt test'),
(765, 9, 10, 10, 5, '2023-12-06', 6, 'Anti-virus software'),
(766, 9, 10, 10, 5, '2023-10-12', 2, 'Spoken presentation Fall term'),
(767, 9, 10, 10, 5, '2023-09-29', 3, 'Vocabulary test'),
(768, 9, 3, 4, 5, '2023-11-24', 13, 'Feladatmegoldás'),
(769, 9, 3, 4, 4, '2023-10-25', 23, 'A szocializmus és a munkásmozgalom'),
(770, 9, 3, 4, 5, '2023-10-06', 4, 'Nemzetállamok születése'),
(771, 9, 4, 5, 1, '2024-01-05', 6, 'Talajgyakorlat'),
(772, 9, 4, 5, 5, '2023-11-10', 6, 'Tempódobás'),
(773, 9, 4, 5, 1, '2023-10-27', 6, 'Büntetődobás'),
(774, 9, 4, 5, 1, '2023-10-27', 6, 'Büntetődobás'),
(775, 9, 4, 5, 4, '2023-10-27', 6, 'Büntetődobás'),
(776, 9, 4, 5, 3, '2023-07-27', 6, 'Büntetődobás'),
(777, 9, 4, 5, 4, '2023-10-27', 6, 'Bal tempódobás'),
(778, 9, 4, 5, 4, '2023-10-25', 6, 'Jobb tempódóbás'),
(779, 9, 4, 5, 1, '2023-10-20', 11, 'Órai munka'),
(780, 9, 5, 6, 4, '2024-01-15', 10, 'Projektfeladat bemutatása'),
(781, 9, 5, 6, 3, '2024-01-15', 3, 'A tükröződés törvényei, síktükör képalkotása'),
(782, 10, 5, 6, 2, '2024-01-15', 23, 'A tükröződés törvényei, síktükör képalkotása'),
(783, 10, 5, 6, 3, '2024-01-12', 10, 'Projektfeladat bemutatása'),
(784, 10, 3, 4, 3, '2024-01-15', 24, 'Az I. világhabórú'),
(785, 10, 3, 4, 3, '2024-01-15', 11, 'Feladatmegoldás'),
(786, 10, 2, 1, 2, '2024-01-15', 2, 'Madách-idézetek'),
(787, 10, 2, 1, 5, '2024-01-15', 2, 'Madách'),
(788, 10, 1, 3, 3, '2024-01-15', 23, 'logaritmus azonosságai'),
(789, 10, 6, 2, 1, '2024-01-15', 16, 'Reading compr- Think pink'),
(790, 10, 6, 2, 5, '2024-01-15', 9, 'Writing - Internet'),
(791, 10, 10, 10, 5, '2024-01-14', 26, 'Emailing'),
(792, 10, 8, 9, 4, '2024-01-09', 18, 'VLAN'),
(793, 10, 8, 9, 5, '2023-12-19', 6, 'VLAN létrehozás, VTP, Trunk'),
(794, 10, 8, 9, 5, '2023-10-24', 4, 'Kapcsolk át!'),
(795, 10, 8, 9, 4, '2023-10-17', 6, 'IPv4 alhálózat számítás'),
(796, 10, 8, 9, 4, '2023-10-10', 6, 'Alapbeállítás, SHH, IP'),
(797, 10, 8, 9, 1, '2023-10-10', 16, 'IPv4 alhálózat számítás'),
(798, 10, 1, 3, 4, '2024-01-03', 3, ''),
(799, 10, 1, 3, 1, '2023-11-30', 3, ''),
(800, 10, 1, 3, 3, '2023-11-13', 3, 'Gyökvonás'),
(801, 10, 1, 1, 2, '2023-10-10', 3, 'Szinusztétel'),
(802, 10, 1, 3, 5, '2023-09-26', 3, 'Szögfüggvények'),
(803, 10, 9, 7, 5, '2024-01-04', 13, ''),
(804, 10, 9, 7, 4, '2023-11-30', 6, 'Cisco'),
(805, 10, 9, 7, 5, '2023-10-05', 6, 'Szerelési gyakorlat'),
(806, 10, 7, 8, 5, '2024-01-02', 11, 'Rendezési feladatok');

-- --------------------------------------------------------

--
-- Table structure for table `oktato`
--

CREATE TABLE `oktato` (
  `id_oktato` int(10) UNSIGNED NOT NULL,
  `v_nev` varchar(255) NOT NULL,
  `k_nev` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `oktato`
--

INSERT INTO `oktato` (`id_oktato`, `v_nev`, `k_nev`) VALUES
(1, 'Nagy', 'Brigitta'),
(2, 'Birta', 'Ágnes'),
(3, 'Szalma', 'Anna'),
(4, 'Deményi', 'Norbert'),
(5, 'Péterffy', 'Gáspár'),
(6, 'Jobbágy', 'Nóra'),
(7, 'Takács', 'István'),
(8, 'Csontos', 'Dénes'),
(9, 'Szilágyi', 'Bertalan'),
(10, 'Durda', 'Szilvia'),
(11, 'Paár', 'Norbert'),
(12, 'Horváth', 'István');

-- --------------------------------------------------------

--
-- Table structure for table `order_by`
--

CREATE TABLE `order_by` (
  `id` int(10) UNSIGNED NOT NULL,
  `vnev` varchar(50) NOT NULL,
  `knev1` varchar(50) NOT NULL,
  `knev2` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `order_by`
--

INSERT INTO `order_by` (`id`, `vnev`, `knev1`, `knev2`) VALUES
(1, 'Kiss', 'János', 'Pál'),
(2, 'Kiss', 'István', 'Péter'),
(3, 'Kiss', 'István', 'Zalán'),
(4, 'Nagy', 'János', NULL),
(5, 'Nagy', 'Pál', NULL),
(6, 'Közép', 'Béla', 'Péter');

-- --------------------------------------------------------

--
-- Table structure for table `tantargy`
--

CREATE TABLE `tantargy` (
  `id_tantagy` int(10) UNSIGNED NOT NULL,
  `tantargy_neve` varchar(255) NOT NULL,
  `oktato_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `tantargy`
--

INSERT INTO `tantargy` (`id_tantagy`, `tantargy_neve`, `oktato_id`) VALUES
(1, 'magyar_nyelv_es_irodalom', 2),
(2, 'angol_nyelv', 6),
(3, 'matematika', 1),
(4, 'tortenelem', 3),
(5, 'testneveles', 4),
(6, 'fizika', 5),
(7, 'ikt_prokektmunka_II.', 12),
(8, 'adatbazis-kezeles_I.', 7),
(9, 'halozatok_I.', 8),
(10, 'szakmai_angol', 10),
(11, 'asztali_alkalmazasok', 11),
(12, 'webprogramozas', 9);

-- --------------------------------------------------------

--
-- Table structure for table `tanulo`
--

CREATE TABLE `tanulo` (
  `id_tanulo` int(10) UNSIGNED NOT NULL,
  `v_nev` varchar(255) NOT NULL,
  `k_nev` varchar(255) NOT NULL,
  `om_azonosito` varchar(20) NOT NULL,
  `szul_hely` varchar(15) NOT NULL,
  `szul_ido` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `tanulo`
--

INSERT INTO `tanulo` (`id_tanulo`, `v_nev`, `k_nev`, `om_azonosito`, `szul_hely`, `szul_ido`) VALUES
(1, 'Albok', 'Eszter', '72655504085', 'Miskolc', '2006-08-15'),
(2, 'Bodnar', 'Mark', '72644454902', 'Miskolc', '2007-02-23'),
(3, 'Bocsi', 'Mark', '72680102999', 'Miskolc', '2007-02-06'),
(4, 'Czifra', 'Peter', '72333763102', 'Miskolc', '2007-05-24'),
(5, 'Fazekas', 'Dominik', '72663000919', 'Miskolc', '2006-06-16'),
(6, 'Juhasz', 'Eszter', '72666495323', 'Miskolc', '2006-12-07'),
(7, 'Kantor', 'Bence', '72770729474', 'Miskolc', '2006-09-29'),
(8, 'Katona', 'Dominik', '72768302012', 'Miskolc', '2006-01-03'),
(9, 'Katona', 'Zoltan', '72799908317', 'Miskolc', '2006-08-25'),
(10, 'Mitro', 'Norbert', '72783476969', 'Miskolc', '2006-07-25'),
(11, 'Oleszka', 'Attila', '72727274084', 'Miskolc', '2006-07-11'),
(12, 'Otvos', 'Bence', '72833333003', 'Miskolc', '2005-10-01'),
(13, 'Simon', 'Viktor', '72449111118', 'Miskolc', '2006-10-12'),
(14, 'Somogyi', 'Bank', '72777666146', 'Miskolc', '2006-12-05'),
(15, 'Szunyogh', 'Tamas', '72700000825', 'Miskolc', '2007-04-19'),
(16, 'Toth', 'Adam', '72584694444', 'Miskolc', '2006-06-21'),
(17, 'Babinszki ', 'Botond', '72652077213', 'Miskolc', '2006-12-15'),
(18, 'Bartkó', 'Milán', '72686538321', 'Miskolc', '2006-08-19'),
(19, 'Bihari ', 'Vilmos', '72846581456', 'Miskolc', '2007-02-01'),
(20, 'Csillik ', 'Gergely', '72652092678', 'Miskolc', '2007-01-03'),
(21, 'Glonczi', 'Tamás', '72731797123', 'Miskolc', '2005-11-11'),
(22, 'Kecskés ', 'Roland', '72680333989', 'Miskolc', '2006-08-11'),
(23, 'Kulcsár', 'Dénes', '72718552456', 'Miskolc', '2005-12-29'),
(24, 'Luczi', 'Alex', '72776779123', 'Miskolc', '2006-04-13'),
(25, 'Müller', 'Zsolt', '72664267478', 'Miskolc', '2007-07-30'),
(26, 'Rajna', 'Torda', '72760216316', 'Miskolc', '2006-11-29'),
(27, 'Szabó', 'Csanád', '72713028345', 'Miskolc', '2007-03-28'),
(28, 'Tóth', 'Csaba', '72846581345', 'Miskolc', '2006-10-30'),
(29, 'Turcsányi', 'Máté', '72731815521', 'Miskolc', '2006-03-17'),
(30, 'Ujvári', 'László', '72647928789', 'Miskolc', '2007-07-16'),
(31, 'Varga', 'Benedek', '72676306735', 'Miskolc', '2006-07-16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ertekeles_modja`
--
ALTER TABLE `ertekeles_modja`
  ADD PRIMARY KEY (`id_ertekeles_modja`);

--
-- Indexes for table `jegyek`
--
ALTER TABLE `jegyek`
  ADD PRIMARY KEY (`id_jegyek`),
  ADD KEY `tanulo_id` (`tanulo_id`,`oktato_id`,`tantargy_id`),
  ADD KEY `oktato_id` (`oktato_id`),
  ADD KEY `tantargy_id` (`tantargy_id`),
  ADD KEY `ertekeles_modja_id` (`ertekeles_modja_id`);

--
-- Indexes for table `oktato`
--
ALTER TABLE `oktato`
  ADD PRIMARY KEY (`id_oktato`);

--
-- Indexes for table `order_by`
--
ALTER TABLE `order_by`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tantargy`
--
ALTER TABLE `tantargy`
  ADD PRIMARY KEY (`id_tantagy`),
  ADD KEY `oktato_id` (`oktato_id`);

--
-- Indexes for table `tanulo`
--
ALTER TABLE `tanulo`
  ADD PRIMARY KEY (`id_tanulo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ertekeles_modja`
--
ALTER TABLE `ertekeles_modja`
  MODIFY `id_ertekeles_modja` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `jegyek`
--
ALTER TABLE `jegyek`
  MODIFY `id_jegyek` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=807;

--
-- AUTO_INCREMENT for table `oktato`
--
ALTER TABLE `oktato`
  MODIFY `id_oktato` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `order_by`
--
ALTER TABLE `order_by`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tantargy`
--
ALTER TABLE `tantargy`
  MODIFY `id_tantagy` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tanulo`
--
ALTER TABLE `tanulo`
  MODIFY `id_tanulo` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jegyek`
--
ALTER TABLE `jegyek`
  ADD CONSTRAINT `jegyek_ibfk_1` FOREIGN KEY (`tanulo_id`) REFERENCES `tanulo` (`id_tanulo`),
  ADD CONSTRAINT `jegyek_ibfk_2` FOREIGN KEY (`oktato_id`) REFERENCES `oktato` (`id_oktato`),
  ADD CONSTRAINT `jegyek_ibfk_3` FOREIGN KEY (`tantargy_id`) REFERENCES `tantargy` (`id_tantagy`),
  ADD CONSTRAINT `jegyek_ibfk_4` FOREIGN KEY (`ertekeles_modja_id`) REFERENCES `ertekeles_modja` (`id_ertekeles_modja`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
