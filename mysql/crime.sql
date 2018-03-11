-- phpMyAdmin SQL Dump
-- version 4.7.8
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  Dim 11 mars 2018 à 14:30
-- Version du serveur :  5.7.21
-- Version de PHP :  7.1.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `geoquality`
--

-- --------------------------------------------------------

--
-- Structure de la table `crime`
--

CREATE TABLE `crime` (
  `id` int(4) DEFAULT NULL,
  `district` varchar(24) DEFAULT NULL,
  `nombre` decimal(4,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `crime`
--

INSERT INTO `crime` (`id`, `district`, `nombre`) VALUES
(1001, 'La Broye', '48.4'),
(1002, 'La Glâne', '33.2'),
(1003, 'La Gruyère', '48.5'),
(1004, 'La Sarine', '59.3'),
(1005, 'See / Lac', '38.8'),
(1006, 'Sense', '21.9'),
(1007, 'La Veveyse', '33.4'),
(101, 'Affoltern', '38.5'),
(102, 'Andelfingen', '31.3'),
(103, 'Bülach', '61.0'),
(104, 'Dielsdorf', '40.7'),
(105, 'Hinwil', '34.4'),
(106, 'Horgen', '32.0'),
(107, 'Meilen', '30.9'),
(108, 'Pfäffikon', '34.4'),
(109, 'Uster', '41.9'),
(110, 'Winterthur', '52.7'),
(1101, 'Gäu', '67.1'),
(1102, 'Thal', '43.1'),
(1103, 'Bucheggberg', '19.1'),
(1104, 'Dorneck', '40.6'),
(1105, 'Gösgen', '28.4'),
(1106, 'Wasseramt', '43.1'),
(1107, 'Lebern', '45.6'),
(1108, 'Olten', '63.3'),
(1109, 'Solothurn', '140.6'),
(111, 'Dietikon', '45.8'),
(1110, 'Thierstein', '34.9'),
(112, 'Zürich', '105.1'),
(1200, 'Kt. Basel-Stadt', '104.3'),
(1301, 'Arlesheim', '48.0'),
(1302, 'Laufen', '40.8'),
(1303, 'Liestal', '42.8'),
(1304, 'Sissach', '24.6'),
(1305, 'Waldenburg', '23.1'),
(1401, 'Oberklettgau', '23.5'),
(1402, 'Reiat', '33.8'),
(1403, 'Schaffhausen', '52.8'),
(1404, 'Schleitheim', '34.2'),
(1405, 'Stein', '38.3'),
(1406, 'Unterklettgau', '27.6'),
(1501, 'Hinterland', '38.3'),
(1502, 'Mittelland', '26.0'),
(1503, 'Vorderland', '26.1'),
(1600, 'Kt. Appenzell i.Rh.', '32.6'),
(1721, 'St. Gallen', '47.8'),
(1722, 'Rorschach', '33.1'),
(1723, 'Rheintal', '32.8'),
(1724, 'Werdenberg', '28.7'),
(1725, 'Sarganserland', '32.6'),
(1726, 'See-Gaster', '31.6'),
(1727, 'Toggenburg', '21.1'),
(1728, 'Wil', '33.7'),
(1821, 'Albula', '49.5'),
(1822, 'Bernina', '15.4'),
(1823, 'Hinterrhein', '27.6'),
(1824, 'Imboden', '27.8'),
(1825, 'Inn', '29.7'),
(1826, 'Landquart', '29.1'),
(1827, 'Maloja / Maloggia', '32.7'),
(1828, 'Moesa', '26.3'),
(1829, 'Plessur', '60.6'),
(1830, 'Prättigau-Davos', '29.5'),
(1831, 'Surselva', '17.1'),
(1901, 'Aarau', '46.8'),
(1902, 'Baden', '91.5'),
(1903, 'Bremgarten', '26.2'),
(1904, 'Brugg', '30.0'),
(1905, 'Kulm', '36.9'),
(1906, 'Laufenburg', '22.8'),
(1907, 'Lenzburg', '32.1'),
(1908, 'Muri', '18.8'),
(1909, 'Rheinfelden', '32.3'),
(1910, 'Zofingen', '37.2'),
(1911, 'Zurzach', '21.4'),
(2011, 'Arbon', '45.0'),
(2012, 'Frauenfeld', '38.0'),
(2013, 'Kreuzlingen', '42.2'),
(2014, 'Münchwilen', '35.2'),
(2015, 'Weinfelden', '32.5'),
(2101, 'Bellinzona', '52.7'),
(2102, 'Blenio', '25.9'),
(2103, 'Leventina', '49.4'),
(2104, 'Locarno', '47.6'),
(2105, 'Lugano', '47.4'),
(2106, 'Mendrisio', '46.5'),
(2107, 'Riviera', '32.2'),
(2108, 'Vallemaggia', '25.9'),
(2221, 'Aigle', '63.1'),
(2222, 'Broye-Vully', '56.2'),
(2223, 'Gros-de-Vaud', '36.9'),
(2224, 'Jura-Nord vaudois', '68.4'),
(2225, 'Lausanne', '108.9'),
(2226, 'Lavaux-Oron', '46.3'),
(2227, 'Morges', '49.6'),
(2228, 'Nyon', '56.2'),
(2229, 'Ouest lausannois', '75.2'),
(2230, 'Riviera-Pays-d\'Enhaut', '76.2'),
(2301, 'Brig', '29.7'),
(2302, 'Conthey', '41.8'),
(2303, 'Entremont', '35.0'),
(2304, 'Goms', '47.2'),
(2305, 'Hérens', '24.5'),
(2306, 'Leuk', '44.2'),
(2307, 'Martigny', '47.7'),
(2308, 'Monthey', '39.3'),
(2309, 'Raron', '17.7'),
(2310, 'Saint-Maurice', '34.8'),
(2311, 'Sierre', '39.0'),
(2312, 'Sion', '52.6'),
(2313, 'Visp', '43.6'),
(2401, 'Boudry', '54.9'),
(2402, 'La Chaux-de-Fonds', '81.3'),
(2403, 'Le Locle', '54.3'),
(2404, 'Neuchâtel', '108.4'),
(2405, 'Val-de-Ruz', '33.6'),
(2406, 'Val-de-Travers', '57.4'),
(241, 'Jura bernois', '45.1'),
(242, 'Biel/Bienne', '96.7'),
(243, 'Seeland', '34.9'),
(244, 'Oberaargau', '38.9'),
(245, 'Emmental', '33.6'),
(246, 'Bern-Mittelland', '62.8'),
(247, 'Thun', '38.2'),
(248, 'Obersimmental-Saanen', '26.6'),
(249, 'Frutigen-Niedersimmental', '31.9'),
(250, 'Interlaken-Oberhasli', '46.3'),
(2500, 'Cant. de Genève', '100.7'),
(2601, 'Delémont', '53.5'),
(2602, 'Les Franches-Montagnes', '35.1'),
(2603, 'Porrentruy', '39.9'),
(311, 'Luzern-Stadt', '99.6'),
(312, 'Luzern-Land', '39.6'),
(313, 'Hochdorf', '39.4'),
(314, 'Sursee', '31.7'),
(315, 'Willisau', '23.9'),
(316, 'Entlebuch', '18.1'),
(400, 'Kt. Uri', '18.5'),
(501, 'Einsiedeln', '21.8'),
(502, 'Gersau', '17.4'),
(503, 'Höfe', '32.1'),
(504, 'Küssnacht (SZ)', '30.4'),
(505, 'March', '29.5'),
(506, 'Schwyz', '23.8'),
(600, 'Kt. Obwalden', '42.5'),
(700, 'Kt. Nidwalden', '26.4'),
(800, 'Kt. Glarus', '33.2'),
(900, 'Kt. Zug', '44.2');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
