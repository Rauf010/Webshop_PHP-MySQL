-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2023 at 10:43 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `esri`
--

-- --------------------------------------------------------

--
-- Table structure for table `bestellingen`
--

CREATE TABLE `bestellingen` (
  `idbestelling` int(11) NOT NULL,
  `datum` date DEFAULT NULL,
  `totaalprijs` decimal(65,2) DEFAULT NULL,
  `klanten_idklant` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bestellingen`
--

INSERT INTO `bestellingen` (`idbestelling`, `datum`, `totaalprijs`, `klanten_idklant`) VALUES
(3, '2023-03-01', NULL, 6),
(4, '2023-02-18', NULL, 1),
(5, '2022-12-15', NULL, 5),
(6, '2022-12-16', NULL, 5),
(7, '2022-11-24', NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `bestellingen_has_producten`
--

CREATE TABLE `bestellingen_has_producten` (
  `bestellingen_idbestelling` int(11) NOT NULL,
  `producten_idproduct` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bestellingen_has_producten`
--

INSERT INTO `bestellingen_has_producten` (`bestellingen_idbestelling`, `producten_idproduct`) VALUES
(3, 1),
(3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `categorieën`
--

CREATE TABLE `categorieën` (
  `idcategorie` int(11) NOT NULL,
  `categorienaam` varchar(255) DEFAULT NULL,
  `leveranciers_idleverancier` int(20) NOT NULL,
  `Producten_idcategorie` int(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categorieën`
--

INSERT INTO `categorieën` (`idcategorie`, `categorienaam`, `leveranciers_idleverancier`, `Producten_idcategorie`) VALUES
(1, 'Ps kaart €10\r\n', 0, 0),
(2, 'Ps kaart €20', 0, 0),
(3, 'Ps kaart €50', 0, 0),
(4, 'Ps kaart €100', 0, 0),
(5, 'Xbox kaart €10', 0, 0),
(6, 'Nintendo e-shop kaart €15', 0, 0),
(7, 'Xbox kaart €50', 0, 0),
(8, 'Amazon kaart €25', 0, 0),
(9, 'Google play kaart €15', 0, 0),
(10, 'Paysafe kaart €10', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `complimenten`
--

CREATE TABLE `complimenten` (
  `volledigenaam` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `woonplaats` varchar(255) DEFAULT NULL,
  `geboortedatum` date DEFAULT NULL,
  `compliment` varchar(255) DEFAULT NULL,
  `Uniek` varchar(245) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complimenten`
--

INSERT INTO `complimenten` (`volledigenaam`, `email`, `woonplaats`, `geboortedatum`, `compliment`, `Uniek`) VALUES
('dwqw', 'dadaw@gmaiil.com', 'rottwr', '2000-10-11', 'Goeie manne', 'Goeie kennedy'),
('dad', 'dawdaw', 'dawdw', '0000-00-00', 'adwad', 'dawd'),
('Rauf', '90123243@student.zadkin.nl', 'roffa', '0000-00-00', 'Goeie service', 'Duidelijk waar alles staat'),
('Rauf', '90123243@student.zadkin.nl', 'roffa', '0000-00-00', 'Goeie service', 'Duidelijk waar alles staat'),
('Rauf', '90123243@student.zadkin.nl', 'roffa', '0000-00-00', 'Goeie service', 'Duidelijk waar alles staat'),
('Rauf', '90123243@student.zadkin.nl', 'roffa', '0000-00-00', 'Goeie service', 'Duidelijk waar alles staat'),
('Rauf', '90123243@student.zadkin.nl', 'roffa', '0000-00-00', 'Goeie service', 'Duidelijk waar alles staat'),
('Rauf', '90123243@student.zadkin.nl', 'roffa', '0000-00-00', 'Goeie service', 'Duidelijk waar alles staat'),
('Rauf', '90123243@student.zadkin.nl', 'roffa', '0000-00-00', 'Goeie service', 'Duidelijk waar alles staat'),
('Rauf', '90123243@student.zadkin.nl', 'roffa', '0000-00-00', 'Goeie service', 'Duidelijk waar alles staat'),
('', '', '', '0000-00-00', '', ''),
('dadawd', 'adwda', 'dawda', '0000-00-00', 'adwadw', 'dwaawd'),
('wqeqe', 'qwqew', 'qwee', '0000-00-00', 'ewqqwe', 'wqwqe'),
('', 'DJOJDA', 'QQHFDO', '0000-00-00', '', 'OQIHWFWIHOQ'),
('', 'Raufabdoellah@gmail.com', 'rotterdam', '2023-04-12', 'Goeie samenwerking', 'Moeite'),
('rauf', 'Raufabdoellah@gmail.com', 'rotterdam', '2023-04-12', 'Goeie samenwerking', 'Moeite');

-- --------------------------------------------------------

--
-- Table structure for table `filter`
--

CREATE TABLE `filter` (
  `p_no` int(11) NOT NULL,
  `p_tmg` datetime(6) NOT NULL,
  `p_title` varchar(50) NOT NULL,
  `p_username` longtext NOT NULL,
  `p_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `klanten`
--

CREATE TABLE `klanten` (
  `idklant` int(10) UNSIGNED NOT NULL,
  `voornaam` varchar(255) DEFAULT NULL,
  `achternaam` varchar(255) DEFAULT NULL,
  `telefoon` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `woonplaats` varchar(255) DEFAULT NULL,
  `totaalbestellingen` int(11) DEFAULT NULL,
  `totaalproducten` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='`';

--
-- Dumping data for table `klanten`
--

INSERT INTO `klanten` (`idklant`, `voornaam`, `achternaam`, `telefoon`, `email`, `woonplaats`, `totaalbestellingen`, `totaalproducten`) VALUES
(1, 'Piet', 'de Jong', 612345678, 'pietjong@gmail.com', 'Rotterdam', NULL, NULL),
(3, 'Francis', 'van de Overkant', 695672318, 'overkantjohan@hotmail.nl', 'Enschede', NULL, NULL),
(4, 'Felix', 'Stating', 678945612, 'felixofficieel@gmail.com', 'Utrecht', NULL, NULL),
(5, 'James', 'Bale', 698765432, 'james.bale@zadkine.nl', 'Urk', NULL, NULL),
(6, 'Gerard', 'niet Joling', 669696969, 'jolingnietgerard@outlook.com', 'Amsterdam', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `landen`
--

CREATE TABLE `landen` (
  `idland` int(11) NOT NULL,
  `landnaam` varchar(255) DEFAULT NULL,
  `afkortingnaam` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `landen`
--

INSERT INTO `landen` (`idland`, `landnaam`, `afkortingnaam`) VALUES
(1, 'Nederland', 'Ned'),
(2, 'Duitsland', 'Dui'),
(3, 'België', 'Bel'),
(4, 'Frankrijk', 'Fra'),
(5, 'Engeland', 'Eng'),
(6, 'Luxemburg', 'Lux'),
(7, 'Zweden', 'Zwe'),
(8, 'Australië', 'Aus'),
(9, 'Polen', 'Pol'),
(10, 'Oostenrijk', 'Oos');

-- --------------------------------------------------------

--
-- Table structure for table `leveranciers`
--

CREATE TABLE `leveranciers` (
  `idleverancier` int(11) NOT NULL,
  `leveranciernaam` varchar(45) DEFAULT NULL,
  `landen_idland` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `leveranciers`
--

INSERT INTO `leveranciers` (`idleverancier`, `leveranciernaam`, `landen_idland`) VALUES
(0, 'Primera', 3),
(3, 'Kaarttegoed', 5),
(4, 'Online4Ever', 4),
(5, 'Gaming Galaxy', 1),
(6, 'MDA', 6),
(7, 'Nfindea', 8);

-- --------------------------------------------------------

--
-- Table structure for table `medewerkerklachten`
--

CREATE TABLE `medewerkerklachten` (
  `idmedewerkerklachten` int(11) NOT NULL,
  `volledigenaam` varchar(255) DEFAULT NULL,
  `straatnaam` varchar(255) DEFAULT NULL,
  `huisnummer` varchar(255) DEFAULT NULL,
  `klachtdatum` date DEFAULT NULL,
  `contactmanier` varchar(255) DEFAULT NULL,
  `medewerker` varchar(255) DEFAULT NULL,
  `probleem` varchar(255) DEFAULT NULL,
  `Onderwerp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medewerkerklachten`
--

INSERT INTO `medewerkerklachten` (`idmedewerkerklachten`, `volledigenaam`, `straatnaam`, `huisnummer`, `klachtdatum`, `contactmanier`, `medewerker`, `probleem`, `Onderwerp`) VALUES
(35, 'a', 'agw', 'ajsjd', '2023-04-10', 'whds', 'asd', 'usdw', 'jsudw'),
(36, 'a', 'agw', 'ajsjd', '2023-04-10', 'whds', 'asd', 'usdw', 'jsudw'),
(37, 'a', 'agw', 'ajsjd', '2023-04-10', 'whds', 'asd', 'usdw', 'jsudw'),
(38, 'a', 'agw', 'ajsjd', '2023-04-10', 'whds', 'asd', 'usdw', 'jsudw'),
(39, 'a', 'agw', 'ajsjd', '2023-04-10', 'whds', 'asd', 'usdw', 'jsudw'),
(40, 'a', 'agw', 'ajsjd', '2023-04-10', 'whds', 'asd', 'usdw', 'jsudw'),
(41, 'a', 'agw', 'ajsjd', '2023-04-10', 'whds', 'asd', 'usdw', 'jsudw'),
(42, 'a', 'agw', 'ajsjd', '2023-04-10', 'whds', 'asd', 'usdw', 'jsudw'),
(43, 'a', 'agw', 'ajsjd', '2023-04-10', 'whds', 'asd', 'usdw', 'jsudw'),
(44, 'a', 'agw', 'ajsjd', '2023-04-10', 'whds', 'asd', 'usdw', 'jsudw'),
(45, 'a', 'agw', 'ajsjd', '2023-04-10', 'whds', 'asd', 'usdw', 'jsudw'),
(46, 'a', 'agw', 'ajsjd', '2023-04-10', 'whds', 'asd', 'usdw', 'jsudw'),
(47, 'a', 'agw', 'ajsjd', '2023-04-10', 'whds', 'asd', 'usdw', 'jsudw'),
(48, 'a', 'agw', 'ajsjd', '2023-04-10', 'whds', 'asd', 'usdw', 'jsudw'),
(49, 'oiho', 'agw', 'ajsjd', '2023-04-11', 'whds', 'asd', 'usdw', 'jsudw'),
(50, 'baba', 'agw', 'ajsjd', '2023-04-11', 'whds', 'asd', 'usdw', 'jsudw'),
(51, '', 'agw', 'ajsjd', '0000-00-00', 'whds', 'asd', 'usdw', 'jsudw'),
(52, '', 'agw', 'ajsjd', '0000-00-00', 'whds', 'asd', 'usdw', 'jsudw'),
(53, '', 'agw', 'ajsjd', '0000-00-00', 'whds', 'asd', 'usdw', 'jsudw'),
(55, '', 'agw', 'ajsjd', '0000-00-00', 'whds', 'asd', 'usdw', 'jsudw'),
(56, '', 'agw', 'ajsjd', '0000-00-00', 'whds', 'asd', 'usdw', 'jsudw'),
(57, 'dawdad', 'agw', 'ajsjd', '0000-00-00', 'whds', 'asd', 'usdw', 'jsudw'),
(58, 'dadaw', 'agw', 'ajsjd', '0000-00-00', 'whds', 'asd', 'usdw', 'jsudw'),
(59, 'Ayoub', 'agw', 'ajsjd', '2023-04-12', 'whds', 'asd', 'usdw', 'jsudw'),
(60, 'Rauf', 'agw', 'ajsjd', '2023-04-12', 'whds', 'asd', 'usdw', 'jsudw'),
(61, 'Rauf', 'agw', 'ajsjd', '2023-05-10', 'whds', 'asd', 'usdw', 'jsudw'),
(62, 'Hamid van de bergen ', 'agw', 'ajsjd', '2023-08-22', 'whds', 'asd', 'usdw', 'jsudw'),
(63, 'i', 'agw', 'ajsjd', '0000-00-00', 'whds', 'asd', 'usdw', 'jsudw'),
(64, '', 'agw', 'ajsjd', '0000-00-00', 'whds', 'asd', 'usdw', 'jsudw'),
(65, '', 'agw', 'ajsjd', '0000-00-00', 'whds', 'asd', 'usdw', 'jsudw');

-- --------------------------------------------------------

--
-- Table structure for table `producten`
--

CREATE TABLE `producten` (
  `idproduct` int(11) NOT NULL,
  `productnaam` varchar(255) DEFAULT NULL,
  `prijs` decimal(65,2) DEFAULT NULL,
  `leveranciers_idleverancier` int(11) NOT NULL,
  `categorieën_idcategorie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `producten`
--

INSERT INTO `producten` (`idproduct`, `productnaam`, `prijs`, `leveranciers_idleverancier`, `categorieën_idcategorie`) VALUES
(1, 'Ps kaart €10', '10.00', 3, 1),
(2, 'Ps kaart €20', '20.00', 7, 3),
(3, 'Ps kaart €50', '50.00', 5, 5),
(4, 'Ps kaart €100', '100.00', 5, 5),
(5, 'Xbox kaart €50', '50.00', 6, 4),
(6, 'Xbox kaart €10', '10.00', 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `productklachten`
--

CREATE TABLE `productklachten` (
  `idproductklachten` int(11) NOT NULL,
  `voornaam` varchar(255) DEFAULT NULL,
  `achternaam` varchar(255) DEFAULT NULL,
  `telefoon` int(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `product` varchar(255) DEFAULT NULL,
  `probleem` varchar(255) NOT NULL,
  `oplossing` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `productklachten`
--

INSERT INTO `productklachten` (`idproductklachten`, `voornaam`, `achternaam`, `telefoon`, `email`, `gender`, `product`, `probleem`, `oplossing`) VALUES
(0, 'daw', 'dadaw', 643781541, 'add@gmail.com', 'Man', 'qewqe', 'da', 'dawd'),
(0, 'daw', 'dadaw', 643781541, 'add@gmail.com', 'Man', 'qewqe', 'da', 'dawd'),
(0, 'Rauf', 'Bhikhie', 643781541, 'add@gmail.com', 'Man', 'Ps kaart', 'Kaart is nep', 'Echte kaarten verkopen'),
(0, 'Rauf', 'Bhikhie', 643781541, 'add@gmail.com', 'Man', 'Ps kaart', 'Kaart is nep', 'Echte kaarten verkopen'),
(0, 'Rauf', 'Bhikhie', 643781541, 'add@gmail.com', 'Man', 'Ps kaart', 'Kaart is nep', 'Echte kaarten verkopen'),
(0, 'Rauf', 'Bhikhie', 643781541, 'add@gmail.com', 'Man', 'Ps kaart', 'Kaart is nep', 'Echte kaarten verkopen'),
(0, 'Rauf', 'Bhikhie', 643781541, 'add@gmail.com', 'Man', 'Ps kaart', 'Kaart is nep', 'Echte kaarten verkopen'),
(0, 'Rauf', 'Bhikhie', 643781541, 'add@gmail.com', 'Man', 'Ps kaart', 'Kaart is nep', 'Echte kaarten verkopen'),
(0, 'Rauf', 'Bhikhie', 643781541, 'add@gmail.com', 'Man', 'Ps kaart', 'Kaart is nep', 'Echte kaarten verkopen'),
(0, 'awddwadw', 'awddwawd', 643781541, 'add@gmail.com', '', 'dawdad', 'wadavsaevds', 'vzsevsev'),
(0, 'awddwadw', 'awddwawd', 643781541, 'add@gmail.com', 'Man', 'dawdad', 'wadavsaevds', 'vzsevsev'),
(0, '', '', 0, '', '', '', '', ''),
(0, '', '', 0, '', '', '', '', ''),
(0, '', '', 0, '', '', '', '', ''),
(0, '', '', 0, '', '', '', '', ''),
(0, '', '', 0, '', '', '', '', ''),
(0, '', '', 0, '', '', '', '', ''),
(0, '', '', 0, '', 'Man', '', '', ''),
(0, '', '', 0, '', 'Man', '', '', ''),
(0, '', '', 0, '', 'Man', '', '', ''),
(0, 'kbjkjb`kjb', '	kb', 643781541, 'bkj', 'Man', 'k', 'jb', 'kjb'),
(0, '', '', 0, '', 'Man', '', '', ''),
(0, 'dad', 'dwdaw', 21431253, 'add@gmail.com', 'Man', 'dawdad', 'dadwaw', 'svzbtrns'),
(0, 'daw', 'Bhikhie', 21431253, 'add@gmail.com', 'Man', 'Ps kaart', 'lok', 'niuewe');

-- --------------------------------------------------------

--
-- Table structure for table `websiteklachten`
--

CREATE TABLE `websiteklachten` (
  `idwebsiteklachten` int(11) NOT NULL,
  `volledigenaam` varchar(255) DEFAULT NULL,
  `telefoon` int(20) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `probleem` varchar(255) DEFAULT NULL,
  `oplossing` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bestellingen`
--
ALTER TABLE `bestellingen`
  ADD PRIMARY KEY (`idbestelling`),
  ADD KEY `fk_bestellingen_klanten1_idx` (`klanten_idklant`);

--
-- Indexes for table `bestellingen_has_producten`
--
ALTER TABLE `bestellingen_has_producten`
  ADD PRIMARY KEY (`bestellingen_idbestelling`,`producten_idproduct`),
  ADD KEY `fk_bestellingen_has_producten_producten1_idx` (`producten_idproduct`),
  ADD KEY `fk_bestellingen_has_producten_bestellingen1_idx` (`bestellingen_idbestelling`);

--
-- Indexes for table `categorieën`
--
ALTER TABLE `categorieën`
  ADD PRIMARY KEY (`idcategorie`);

--
-- Indexes for table `filter`
--
ALTER TABLE `filter`
  ADD PRIMARY KEY (`p_no`);

--
-- Indexes for table `klanten`
--
ALTER TABLE `klanten`
  ADD PRIMARY KEY (`idklant`);

--
-- Indexes for table `landen`
--
ALTER TABLE `landen`
  ADD PRIMARY KEY (`idland`);

--
-- Indexes for table `leveranciers`
--
ALTER TABLE `leveranciers`
  ADD PRIMARY KEY (`idleverancier`),
  ADD KEY `fk_leveranciers_landen1_idx` (`landen_idland`);

--
-- Indexes for table `medewerkerklachten`
--
ALTER TABLE `medewerkerklachten`
  ADD PRIMARY KEY (`idmedewerkerklachten`);

--
-- Indexes for table `producten`
--
ALTER TABLE `producten`
  ADD PRIMARY KEY (`idproduct`),
  ADD KEY `fk_producten_leveranciers1_idx` (`leveranciers_idleverancier`),
  ADD KEY `fk_producten_categorieën1_idx` (`categorieën_idcategorie`);

--
-- Indexes for table `websiteklachten`
--
ALTER TABLE `websiteklachten`
  ADD PRIMARY KEY (`idwebsiteklachten`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bestellingen`
--
ALTER TABLE `bestellingen`
  MODIFY `idbestelling` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categorieën`
--
ALTER TABLE `categorieën`
  MODIFY `idcategorie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `filter`
--
ALTER TABLE `filter`
  MODIFY `p_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medewerkerklachten`
--
ALTER TABLE `medewerkerklachten`
  MODIFY `idmedewerkerklachten` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
