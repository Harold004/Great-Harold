-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 03, 2024 at 09:35 PM
-- Server version: 5.5.20
-- PHP Version: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gss`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE IF NOT EXISTS `article` (
  `idArticle` int(11) NOT NULL AUTO_INCREMENT,
  `idStock` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prixTTCCourant` decimal(10,3) DEFAULT NULL,
  `tauxTVA` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`idArticle`),
  KEY `idStock` (`idStock`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`idArticle`, `idStock`, `nom`, `prixTTCCourant`, `tauxTVA`) VALUES
(1, 1, 'ASSORTIMENT SUCRE CLUB 350G', '5.568', '20.00'),
(2, 1, 'CAFE MOULU 100Â % ARABICA 1KG', '5.544', '5.50'),
(4, 1, 'STICK CAFE/25', '0.160', NULL),
(5, 1, 'STICK CAFE DECA/25', '4.167', NULL),
(6, 1, 'Théière', '14.243', NULL),
(7, 1, 'SUCRE MORCEAUX 5KG', '0.010', NULL),
(8, 1, 'THE LIPTON YELLOW/100', '0.060', NULL),
(9, 1, 'EAU DE SOURCE EN 1L5', '0.311', NULL),
(10, 1, 'EAU DE SOURCE EN 0,5L', '0.150', NULL),
(11, 1, 'Paquet de thé', '7.174', NULL),
(12, 1, 'ORLEANS ROSE/cubi', '12.600', NULL),
(13, 1, 'ORLEANS ROUGE/cubi', '12.600', NULL),
(14, 1, 'ORLEANS BLANC/cubi', '12.600', NULL),
(15, 1, 'FLUTES JETABLE/100', '0.020', NULL),
(16, 1, 'GOBELET CRISTAL 20CL/50', '0.030', NULL),
(17, 1, 'GOBELET CARTON 15CL/100', '0.050', NULL),
(18, 1, 'ASSIETTES PLASTIQUE(grande)/100', '0.060', NULL),
(19, 1, 'ASSIETTES PLASTIQUES(petite)', '0.000', NULL),
(20, 1, 'JUS D''ORANGE PLEIN FRUIT EN 1L', '1.403', '5.50'),
(21, 1, 'COCA COLA EN 1L5', NULL, NULL),
(22, 1, 'ECLAT DE VIGNE', '5.000', NULL),
(23, 1, 'CIDRE BRUT 75CL', '1.860', NULL),
(24, 1, 'JUS DE POMMES', NULL, NULL),
(25, 1, 'SUROTIN', NULL, NULL),
(26, 1, 'LASAGNE', NULL, NULL),
(27, 1, 'LINGOTIN', NULL, NULL),
(28, 3, 'ANAPHTALINE', NULL, NULL),
(29, 3, 'AJAX POUDRE', NULL, NULL),
(30, 3, 'BALAIS', NULL, NULL),
(31, 3, 'BROSSE A BIDET', NULL, NULL),
(32, 3, 'DESODORISANT', NULL, NULL),
(33, 3, 'DEPOUSSIERANT MEUBLE', NULL, NULL),
(34, 3, 'INSECTICIDE', NULL, NULL),
(35, 3, 'SERPILLERES', NULL, NULL),
(36, 3, 'SERVIETTES', NULL, NULL),
(37, 3, 'PELLES', NULL, NULL),
(38, 3, 'LAVE-MAIN', NULL, NULL),
(39, 2, 'Sac cÃ©rÃ©monie sportifs 2013', NULL, NULL),
(40, 2, 'Stylo Ecolo', NULL, NULL),
(41, 2, 'Clé USB', NULL, NULL),
(42, 2, 'Agrafes', NULL, NULL),
(43, 2, 'Agrafeuses', NULL, NULL),
(44, 2, 'Bloc-note', NULL, NULL),
(45, 2, 'Stylo Ã©galitÃ© homme-femme', NULL, NULL),
(46, 2, 'Cahiers', '4.500', NULL),
(47, 2, 'Cartouches impression', '4.500', NULL),
(48, 2, 'Chemises cartonées', '0.000', NULL),
(49, 2, 'Sous-chemises', '258.480', '5.50'),
(50, 2, 'CRAYONS', '0.000', NULL),
(51, 2, 'ENVELOPPES', '2.321', '5.50'),
(52, 2, 'POST-IT', '5.167', '5.50'),
(53, 2, 'RAMES DE PAPIERS', '3.500', NULL),
(55, 2, 'SCOTCHS', '90.000', '5.50'),
(1, 4, 'ASSORTIMENT SUCRE CLUB 350G', '5.568', '20.00'),
(2, 4, 'CAFE MOULU 100Â % ARABICA 1KG', '5.544', '5.50'),
(4, 4, 'STICK CAFE/25', '0.160', NULL),
(5, 4, 'STICK CAFE DECA/25', '4.167', NULL),
(6, 4, 'Théière', '14.243', NULL),
(7, 4, 'SUCRE MORCEAUX 5KG', '0.010', NULL),
(8, 4, 'THE LIPTON YELLOW/100', '0.060', NULL),
(9, 4, 'EAU DE SOURCE EN 1L5', '0.311', NULL),
(10, 4, 'EAU DE SOURCE EN 0,5L', '0.150', NULL),
(11, 4, 'Paquet de thé', '7.174', NULL),
(12, 4, 'ORLEANS ROSE/cubi', '12.600', NULL),
(13, 4, 'ORLEANS ROUGE/cubi', '12.600', NULL),
(14, 4, 'ORLEANS BLANC/cubi', '12.600', NULL),
(15, 4, 'FLUTES JETABLE/100', '0.020', NULL),
(16, 4, 'GOBELET CRISTAL 20CL/50', '0.030', NULL),
(17, 4, 'GOBELET CARTON 15CL/100', '0.050', NULL),
(18, 4, 'ASSIETTES PLASTIQUE(grande)/100', '0.060', NULL),
(19, 4, 'ASSIETTES PLASTIQUES(petite)', '0.000', NULL),
(20, 4, 'JUS D''ORANGE PLEIN FRUIT EN 1L', '1.403', '5.50'),
(21, 4, 'COCA COLA EN 1L5', NULL, NULL),
(22, 4, 'ECLAT DE VIGNE', '5.000', NULL),
(23, 4, 'CIDRE BRUT 75CL', '1.860', NULL),
(24, 4, 'JUS DE POMMES', NULL, NULL),
(25, 4, 'SUROTIN', NULL, NULL),
(26, 4, 'LASAGNE', NULL, NULL),
(27, 4, 'LINGOTIN', NULL, NULL),
(28, 6, 'ANAPHTALINE', NULL, NULL),
(29, 6, 'AJAX POUDRE', NULL, NULL),
(30, 6, 'BALAIS', NULL, NULL),
(31, 6, 'BROSSE A BIDET', NULL, NULL),
(32, 6, 'DESODORISANT', NULL, NULL),
(33, 6, 'DEPOUSSIERANT MEUBLE', NULL, NULL),
(34, 6, 'INSECTICIDE', NULL, NULL),
(35, 6, 'SERPILLERES', NULL, NULL),
(36, 6, 'SERVIETTES', NULL, NULL),
(37, 6, 'PELLES', NULL, NULL),
(38, 6, 'LAVE-MAIN', NULL, NULL),
(39, 5, 'Sac cÃ©rÃ©monie sportifs 2013', NULL, NULL),
(40, 5, 'Stylo Ecolo', NULL, NULL),
(41, 5, 'Clé USB', NULL, NULL),
(42, 5, 'Agrafes', NULL, NULL),
(43, 5, 'Agrafeuses', NULL, NULL),
(44, 5, 'Bloc-note', NULL, NULL),
(45, 5, 'Stylo Ã©galitÃ© homme-femme', NULL, NULL),
(46, 5, 'Cahiers', '4.500', NULL),
(47, 5, 'Cartouches impression', '4.500', NULL),
(48, 5, 'Chemises cartonées', '0.000', NULL),
(49, 5, 'Sous-chemises', '258.480', '5.50'),
(50, 5, 'CRAYONS', '0.000', NULL),
(51, 5, 'ENVELOPPES', '2.321', '5.50'),
(52, 5, 'POST-IT', '5.167', '5.50'),
(53, 5, 'RAMES DE PAPIERS', '3.500', NULL),
(55, 5, 'SCOTCHS', '90.000', '5.50');

-- --------------------------------------------------------

--
-- Table structure for table `commande`
--

CREATE TABLE IF NOT EXISTS `commande` (
  `idCommande` int(14) NOT NULL AUTO_INCREMENT,
  `idUtilisateur` int(11) NOT NULL,
  ` idFournisseur` int(14) NOT NULL,
  `idArticle` varchar(11) NOT NULL,
  `quantite` int(14) NOT NULL,
  PRIMARY KEY (`idCommande`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `commande`
--

INSERT INTO `commande` (`idCommande`, `idUtilisateur`, ` idFournisseur`, `idArticle`, `quantite`) VALUES
(1, 1, 1, '1', 5);

-- --------------------------------------------------------

--
-- Table structure for table `fournisseur`
--

CREATE TABLE IF NOT EXISTS `fournisseur` (
  `idFournisseur` int(14) NOT NULL AUTO_INCREMENT,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `contact` int(9) NOT NULL,
  `service` varchar(50) NOT NULL,
  PRIMARY KEY (`idFournisseur`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `fournisseur`
--

INSERT INTO `fournisseur` (`idFournisseur`, `nom`, `prenom`, `contact`, `service`) VALUES
(1, 'Kamdem', 'Paul', 699804293, 'Froid et climatisation'),
(2, 'Kamga', 'Francis', 698898564, 'Nettoyage'),
(3, 'Etta', 'Alfred', 693200969, 'Cuisine');

-- --------------------------------------------------------

--
-- Table structure for table `ligne_sortie`
--

CREATE TABLE IF NOT EXISTS `ligne_sortie` (
  `idSortie` int(11) NOT NULL,
  `idArticle` int(11) NOT NULL,
  `prixTTCSortie` decimal(10,3) DEFAULT NULL,
  `quantite` decimal(9,2) DEFAULT NULL,
  `beneficiaire` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idArticle`,`idSortie`),
  KEY `idSortie` (`idSortie`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ligne_sortie`
--

INSERT INTO `ligne_sortie` (`idSortie`, `idArticle`, `prixTTCSortie`, `quantite`, `beneficiaire`) VALUES
(6, 1, '5.568', '1.00', NULL),
(9, 1, '5.568', '0.00', NULL),
(11, 1, '5.568', '2.00', NULL),
(12, 1, '5.568', '1.00', NULL),
(14, 1, '5.568', '3.00', NULL),
(15, 1, '5.568', '4.00', NULL),
(16, 1, '5.568', '1.00', NULL),
(23, 1, '5.568', '1.00', NULL),
(24, 1, '5.568', '1.00', NULL),
(25, 1, '5.568', '4.00', NULL),
(28, 1, '5.568', '2.00', NULL),
(29, 1, '5.568', '2.00', NULL),
(31, 1, '5.568', '2.00', NULL),
(35, 1, '5.568', '3.00', NULL),
(39, 1, '5.568', '1.00', NULL),
(40, 1, '5.568', '3.00', NULL),
(41, 1, '5.568', '4.00', NULL),
(42, 1, '5.568', '1.00', NULL),
(43, 1, '5.568', '3.00', NULL),
(44, 1, '5.568', '2.00', NULL),
(45, 1, '5.568', '1.00', NULL),
(46, 1, '5.568', '1.00', NULL),
(48, 1, '5.568', '2.00', NULL),
(49, 1, '5.568', '2.00', NULL),
(10, 4, '0.160', '25.00', NULL),
(12, 4, '0.160', '25.00', NULL),
(13, 4, '0.160', '50.00', NULL),
(16, 4, '0.160', '25.00', NULL),
(19, 4, '0.160', '20.00', NULL),
(23, 4, '0.160', '20.00', NULL),
(28, 4, '0.160', '100.00', NULL),
(33, 4, '0.160', '40.00', NULL),
(35, 4, '0.160', '80.00', NULL),
(39, 4, '0.160', '20.00', NULL),
(45, 4, '0.160', '25.00', NULL),
(46, 4, '0.160', '25.00', NULL),
(47, 4, '0.160', '10.00', NULL),
(10, 7, '0.010', '20.00', NULL),
(12, 7, '0.010', '25.00', NULL),
(13, 7, '0.010', '25.00', NULL),
(16, 7, '0.010', '20.00', NULL),
(19, 7, '0.010', '20.00', NULL),
(28, 7, '0.010', '100.00', NULL),
(35, 7, '0.010', '80.00', NULL),
(39, 7, '0.010', '10.00', NULL),
(45, 7, '0.010', '20.00', NULL),
(46, 7, '0.010', '20.00', NULL),
(10, 8, '0.060', '5.00', NULL),
(12, 8, '0.060', '5.00', NULL),
(13, 8, '0.060', '10.00', NULL),
(19, 8, '0.060', '5.00', NULL),
(28, 8, '0.060', '25.00', NULL),
(46, 8, '0.060', '6.00', NULL),
(11, 9, '0.311', '6.00', NULL),
(12, 9, '0.311', '2.00', NULL),
(13, 9, '0.311', '3.00', NULL),
(14, 9, '0.311', '1.00', NULL),
(15, 9, '0.311', '6.00', NULL),
(16, 9, '0.311', '2.00', NULL),
(21, 9, '0.311', '18.00', NULL),
(22, 9, '0.311', '4.00', NULL),
(23, 9, '0.311', '2.00', NULL),
(26, 9, '0.311', '3.00', NULL),
(27, 9, '0.311', '12.00', NULL),
(28, 9, '0.311', '6.00', NULL),
(29, 9, '0.311', '3.00', NULL),
(30, 9, '0.311', '6.00', NULL),
(31, 9, '0.311', '4.00', NULL),
(33, 9, '0.311', '6.00', NULL),
(34, 9, '0.311', '6.00', NULL),
(35, 9, '0.311', '6.00', NULL),
(37, 9, '0.311', '12.00', NULL),
(39, 9, '0.311', '2.00', NULL),
(40, 9, '0.311', '6.00', NULL),
(42, 9, '0.311', '3.00', NULL),
(43, 9, '0.311', '12.00', NULL),
(44, 9, '0.311', '6.00', NULL),
(45, 9, '0.311', '3.00', NULL),
(46, 9, '0.311', '3.00', NULL),
(25, 10, '0.150', '6.00', NULL),
(45, 10, '0.150', '20.00', NULL),
(6, 11, '7.174', '0.50', NULL),
(9, 11, '7.174', '0.00', NULL),
(11, 11, '7.174', '0.50', NULL),
(14, 11, '7.174', '1.00', NULL),
(15, 11, '7.174', '1.00', NULL),
(17, 11, '7.174', '2.00', NULL),
(22, 11, '7.174', '0.00', NULL),
(29, 11, '7.174', '0.50', NULL),
(31, 11, '7.174', '0.50', NULL),
(34, 11, '7.174', '0.00', NULL),
(38, 11, '7.174', '0.50', NULL),
(40, 11, '7.174', '0.50', NULL),
(41, 11, '7.174', '1.00', NULL),
(42, 11, '7.174', '0.50', NULL),
(43, 11, '7.174', '1.00', NULL),
(44, 11, '7.174', '1.00', NULL),
(6, 16, '0.030', '35.00', NULL),
(10, 16, '1.860', '12.00', NULL),
(12, 16, '0.030', '15.00', NULL),
(13, 16, '0.030', '25.00', NULL),
(16, 16, '0.030', '25.00', NULL),
(17, 16, '0.030', '200.00', NULL),
(18, 16, '0.030', '25.00', NULL),
(19, 16, '0.030', '18.00', NULL),
(23, 16, '0.030', '14.00', NULL),
(24, 16, '0.030', '70.00', NULL),
(28, 16, '0.030', '100.00', NULL),
(30, 16, '0.030', '40.00', NULL),
(33, 16, '0.030', '40.00', NULL),
(35, 16, '0.030', '80.00', NULL),
(38, 16, '0.030', '80.00', NULL),
(42, 16, '0.030', '50.00', NULL),
(10, 17, '2.000', '12.00', NULL),
(12, 17, '0.050', '15.00', NULL),
(13, 17, '0.050', '25.00', NULL),
(19, 17, '0.050', '18.00', NULL),
(20, 17, '0.050', '100.00', NULL),
(23, 17, '0.050', '14.00', NULL),
(28, 17, '0.050', '100.00', NULL),
(33, 17, '0.050', '40.00', NULL),
(35, 17, '0.050', '80.00', NULL),
(6, 20, '1.403', '4.00', NULL),
(7, 20, '1.403', '12.00', NULL),
(8, 20, '1.403', '12.00', NULL),
(9, 20, '1.403', '3.00', NULL),
(10, 20, '1.403', '3.00', NULL),
(11, 20, '1.403', '12.00', NULL),
(12, 20, '1.403', '2.00', NULL),
(13, 20, '1.403', '4.00', NULL),
(14, 20, '1.403', '5.00', NULL),
(15, 20, '1.403', '24.00', NULL),
(16, 20, '1.403', '4.00', NULL),
(18, 20, '1.403', '6.00', NULL),
(19, 20, '1.403', '3.00', NULL),
(21, 20, '3.750', '12.00', NULL),
(22, 20, '1.403', '6.00', NULL),
(23, 20, '1.403', '2.00', NULL),
(24, 20, '1.403', '6.00', NULL),
(25, 20, '1.403', '12.00', NULL),
(26, 20, '1.403', '4.00', NULL),
(27, 20, '3.750', '12.00', NULL),
(28, 20, '3.750', '12.00', NULL),
(30, 20, '1.403', '6.00', NULL),
(31, 20, '1.403', '6.00', NULL),
(33, 20, '1.403', '6.00', NULL),
(34, 20, '1.403', '8.00', NULL),
(35, 20, '1.403', '12.00', NULL),
(36, 20, '1.403', '24.00', NULL),
(38, 20, '1.403', '12.00', NULL),
(39, 20, '1.403', '3.00', NULL),
(40, 20, '1.403', '12.00', NULL),
(41, 20, '1.403', '18.00', NULL),
(43, 20, '1.403', '12.00', NULL),
(44, 20, '1.403', '6.00', NULL),
(45, 20, '1.403', '3.00', NULL),
(46, 20, '1.403', '3.00', NULL),
(36, 21, '1.500', '6.00', NULL),
(6, 22, '5.000', '5.00', NULL),
(7, 22, '7.697', '12.00', NULL),
(8, 22, '5.000', '12.00', NULL),
(9, 22, '5.000', '6.00', NULL),
(11, 22, '5.000', '12.00', NULL),
(14, 22, '5.000', '6.00', NULL),
(15, 22, '5.000', '24.00', NULL),
(17, 22, '5.000', '66.00', NULL),
(22, 22, '5.000', '18.00', NULL),
(24, 22, '5.000', '10.00', NULL),
(25, 22, '5.000', '10.00', NULL),
(26, 22, '5.000', '6.00', NULL),
(29, 22, '5.000', '5.00', NULL),
(31, 22, '5.000', '10.00', NULL),
(34, 22, '5.000', '18.00', NULL),
(38, 22, '5.000', '6.00', NULL),
(40, 22, '5.000', '12.00', NULL),
(41, 22, '5.000', '25.00', NULL),
(43, 22, '5.000', '12.00', NULL),
(44, 22, '5.000', '10.00', NULL),
(6, 23, '1.860', '2.00', NULL),
(9, 23, '1.860', '0.00', NULL),
(11, 23, '1.860', '6.00', NULL),
(14, 23, '1.860', '0.00', NULL),
(15, 23, '1.860', '6.00', NULL),
(18, 23, '1.860', '6.00', NULL),
(22, 23, '1.860', '0.00', NULL),
(24, 23, '1.860', '2.00', NULL),
(26, 23, '1.860', '0.00', NULL),
(29, 23, '1.860', '2.00', NULL),
(31, 23, '1.860', '2.00', NULL),
(34, 23, '1.860', '0.00', NULL),
(38, 23, '1.860', '6.00', NULL),
(40, 23, '1.860', '6.00', NULL),
(41, 23, '1.860', '10.00', NULL),
(43, 23, '1.860', '6.00', NULL),
(44, 23, '1.860', '3.00', NULL),
(4, 28, NULL, '1.00', 'DEMULE Isabelle'),
(17, 46, '4.500', '6.00', NULL),
(27, 46, '4.500', '18.00', NULL),
(17, 47, '4.500', '6.00', NULL),
(8, 48, '1.000', '149.81', NULL),
(25, 49, '258.480', '1.00', NULL),
(26, 49, '149.510', '1.00', NULL),
(34, 49, '258.480', '1.00', NULL),
(9, 50, '1.000', '258.48', NULL),
(11, 50, '257.480', '1.00', NULL),
(26, 50, '257.480', '1.00', NULL),
(18, 51, '2.321', '1.00', NULL),
(24, 51, '2.321', '1.00', NULL),
(30, 51, '2.321', '3.00', NULL),
(36, 52, '5.167', '1.00', NULL),
(34, 55, '90.000', '2.00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ligne_stock`
--

CREATE TABLE IF NOT EXISTS `ligne_stock` (
  `idStock` int(11) NOT NULL,
  `idArticle` int(11) NOT NULL,
  `quantiteReelle` decimal(9,2) DEFAULT NULL,
  `quantiteVirtuelle` decimal(9,2) DEFAULT NULL,
  PRIMARY KEY (`idStock`,`idArticle`),
  KEY `idArticle` (`idArticle`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ligne_stock`
--

INSERT INTO `ligne_stock` (`idStock`, `idArticle`, `quantiteReelle`, `quantiteVirtuelle`) VALUES
(1, 1, '2.00', '-16.00'),
(1, 2, '0.00', '0.00'),
(1, 4, '545.00', '475.00'),
(1, 5, '0.00', '0.00'),
(1, 6, '0.00', '0.00'),
(1, 7, '3520.00', '3470.00'),
(1, 8, '500.00', '494.00'),
(1, 9, '450.00', '403.00'),
(1, 10, '234.00', '214.00'),
(1, 11, '11.00', '6.50'),
(1, 12, '0.00', '0.00'),
(1, 13, '0.00', '0.00'),
(1, 14, '0.00', '0.00'),
(1, 15, '40.00', '40.00'),
(1, 16, '980.00', '850.00'),
(1, 17, '2080.00', '2080.00'),
(1, 18, '6.00', '6.00'),
(1, 19, '1000.00', '1000.00'),
(1, 20, '16.00', '-53.00'),
(1, 21, '0.00', '0.00'),
(1, 22, '28.00', '-37.00'),
(1, 23, '29.00', '-2.00'),
(1, 24, '0.00', '0.00'),
(1, 25, '0.00', '0.00'),
(1, 26, '0.00', '0.00'),
(1, 27, '0.00', '0.00'),
(2, 46, '84.00', '84.00'),
(2, 47, '0.00', '0.00'),
(2, 48, '10.00', '10.00'),
(2, 49, '7.00', '7.00'),
(2, 50, '9.00', '9.00'),
(2, 51, '0.00', '0.00'),
(2, 52, '0.00', '0.00'),
(2, 53, '36.00', '36.00'),
(2, 55, '0.00', '0.00'),
(3, 28, '99.00', '99.00'),
(3, 29, '100.00', '100.00'),
(3, 30, '100.00', '100.00'),
(3, 31, '100.00', '100.00'),
(3, 32, '100.00', '100.00'),
(3, 33, '100.00', '100.00'),
(3, 34, '100.00', '100.00'),
(3, 35, '100.00', '100.00'),
(3, 36, '100.00', '100.00'),
(3, 37, '100.00', '100.00'),
(3, 38, '100.00', '100.00'),
(2, 39, '150.00', '150.00'),
(2, 40, '200.00', '200.00'),
(2, 41, '50.00', '50.00'),
(2, 42, '80.00', '80.00'),
(2, 43, '100.00', '100.00'),
(2, 44, '50.00', '50.00'),
(2, 45, '0.00', '0.00'),
(4, 1, '2.00', '-16.00'),
(4, 2, '0.00', '0.00'),
(4, 4, '545.00', '475.00'),
(4, 5, '0.00', '0.00'),
(4, 6, '0.00', '0.00'),
(4, 7, '3520.00', '3470.00'),
(4, 8, '500.00', '494.00'),
(4, 9, '450.00', '403.00'),
(4, 10, '234.00', '214.00'),
(4, 11, '11.00', '6.50'),
(4, 12, '0.00', '0.00'),
(4, 13, '0.00', '0.00'),
(4, 14, '0.00', '0.00'),
(4, 15, '40.00', '40.00'),
(4, 16, '980.00', '850.00'),
(4, 17, '2080.00', '2080.00'),
(4, 18, '6.00', '6.00'),
(4, 19, '1000.00', '1000.00'),
(4, 20, '16.00', '-53.00'),
(4, 21, '0.00', '0.00'),
(4, 22, '28.00', '-37.00'),
(4, 23, '29.00', '-2.00'),
(4, 24, '0.00', '0.00'),
(4, 25, '0.00', '0.00'),
(4, 26, '0.00', '0.00'),
(4, 27, '0.00', '0.00'),
(5, 46, '84.00', '84.00'),
(5, 47, '0.00', '0.00'),
(5, 48, '10.00', '10.00'),
(5, 49, '7.00', '7.00'),
(5, 50, '9.00', '9.00'),
(5, 51, '0.00', '0.00'),
(5, 52, '0.00', '0.00'),
(5, 53, '36.00', '36.00'),
(5, 55, '0.00', '0.00'),
(6, 28, '99.00', '99.00'),
(6, 29, '100.00', '100.00'),
(6, 30, '100.00', '100.00'),
(6, 31, '100.00', '100.00'),
(6, 32, '100.00', '100.00'),
(6, 33, '100.00', '100.00'),
(6, 34, '100.00', '100.00'),
(6, 35, '100.00', '100.00'),
(6, 36, '100.00', '100.00'),
(6, 37, '100.00', '100.00'),
(6, 38, '100.00', '100.00'),
(5, 39, '150.00', '150.00'),
(5, 40, '200.00', '200.00'),
(5, 41, '50.00', '50.00'),
(5, 42, '80.00', '80.00'),
(5, 43, '100.00', '100.00'),
(5, 44, '50.00', '50.00'),
(5, 45, '0.00', '0.00');


-- --------------------------------------------------------

--
-- Table structure for table `sortie`
--

CREATE TABLE IF NOT EXISTS `sortie` (
  `idSortie` int(11) NOT NULL AUTO_INCREMENT,
  `idStock` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `date` date DEFAULT NULL,
  `commentaire` varchar(500) DEFAULT NULL,
  `ressources` varchar(500) DEFAULT NULL,
  `coutTTCTotal` decimal(10,2) NOT NULL,
  `nbreArticles` int(11) NOT NULL,
  `etat` enum('VIRTUELLE','REELLE') NOT NULL,
  `corbeille` enum('O','N') NOT NULL,
  PRIMARY KEY (`idSortie`),
  KEY `idStock` (`idStock`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

--
-- Dumping data for table `sortie`
--

INSERT INTO `sortie` (`idSortie`, `idStock`, `nom`, `date`, `commentaire`, `ressources`, `coutTTCTotal`, `nbreArticles`, `etat`, `corbeille`) VALUES
(4, 2, 'DEMULE Isabelle', '0000-00-00', 'DÃ©part S. CADORET', NULL, '0.00', 1, 'REELLE', 'O'),
(6, 1, 'CTM ', '2018-02-05', 'SIGNATURE CONVENTION 35 PERS', NULL, '44.54', 6, 'REELLE', 'N'),
(7, 1, 'P.FAUQUET', '2018-02-09', 'SOIREE PARTENAIRE AU CHATEAU POUR 19H00', NULL, '109.20', 2, 'VIRTUELLE', 'O'),
(8, 1, 'P.FAUQUET', '2018-02-09', 'SOIREE PARTENAIRE FOOT AU CHATEAU POUR 19H00 service: brigitte', NULL, '226.65', 3, 'REELLE', 'N'),
(9, 1, 'JP.ORANGE', '2018-02-16', 'LANCEMENT DE L''INVENTAIRE BIODIVERSITE A JBC POUR 18H30 POUR 80 PERS service brigitte', NULL, '292.69', 6, 'REELLE', 'N'),
(10, 1, 'G.GUISET', '2018-02-16', 'COPIL JEUNESSE 12 PERSONNES', NULL, '55.03', 6, 'REELLE', 'N'),
(11, 1, 'MEDIATHEQUE', '2018-02-23', 'VERNISSAGE EXPO A LA MEDIATHEQUE POUR 18H00 service brigitte', NULL, '362.08', 7, 'REELLE', 'N'),
(12, 1, 'ARCHE ABRAYSIENNE', '2018-02-06', 'REUNION DES RELAIS 15 PERSONNES SALLE JM POUR 9H00', NULL, '14.75', 8, 'REELLE', 'N'),
(13, 1, 'ARCHE ABRAYSIENNE', '2018-02-13', 'PRESENTATION/RECRUTEMENT\r\nSJM POUR 8H00 25 PERSONNES', NULL, '17.39', 7, 'REELLE', 'N'),
(14, 1, 'CULTURE', '2018-02-20', 'SIGNATURE CONVENTION 100 PERSONNES POUR 18H30 AU CHATEAU service brigitte', NULL, '61.20', 6, 'REELLE', 'N'),
(15, 1, 'MVA', '2018-02-23', 'RENCONTRE ASSOCIATIVE POUR 19H A LA SJM entre 40 et 200 personnes service Brigitte', NULL, '196.14', 6, 'REELLE', 'N'),
(16, 1, 'CABINET DU MAIRE', '2018-02-07', 'VISITE DE LA MSP AU CHATEAU INSTALLATION LA VEILLE', NULL, '16.75', 6, 'REELLE', 'N'),
(17, 1, 'VOEUX DU MAIRE', '2018-01-19', '', NULL, '404.35', 5, 'VIRTUELLE', 'O'),
(18, 1, 'MEDIATHEQUE', '2018-02-16', 'SOIREE DOCUMENTAIRE POUR 19H 25 PERS', NULL, '22.65', 4, 'REELLE', 'N'),
(19, 1, 'REUNION COS', '2018-02-15', 'CAFE POUR 18 PERSONNES SALLE DU CONSEIL', NULL, '9.35', 6, 'REELLE', 'N'),
(20, 1, 'POINT OFFICE', '2018-02-13', 'COMITE DIRECTEUR', NULL, '5.00', 1, 'REELLE', 'N'),
(21, 1, 'CABINET DU MAIRE', '2018-03-13', 'SOIREE TRANSITION SDF 150 PERSONNES', NULL, '50.60', 2, 'REELLE', 'N'),
(22, 1, 'CULTURE', '2018-03-17', 'VERNISSAGE AU CHATEAU 100 PERSONNES POUR 18H BRIGITTE+CATHERINE', NULL, '99.66', 5, 'REELLE', 'N'),
(23, 1, 'CECILE HENRIOT', '2017-03-19', 'REUNION SALLE MARCH POUR 14 PERSONNES A 14H', NULL, '13.32', 6, 'REELLE', 'N'),
(24, 1, 'MEDIATHEQUE', '2018-03-22', 'RENCONTRE ECRIVAIN POUR 19H 70 PERSONNES', '', '72.13', 6, 'REELLE', 'N'),
(25, 1, 'RH', '2018-03-23', 'RETRAITE DE J.GIVERNAUD 18H SALLE JM POUR 100PERSONNES POT MIXE VALERIE', '', '348.49', 5, 'REELLE', 'N'),
(26, 1, 'RH', '2018-03-26', 'DEPARD MARIE-CELINE TISSIER POUR 17H SDF 100 PERSONNES VALERIE BRIGITTE', '', '443.53', 6, 'REELLE', 'N'),
(27, 1, 'CULTURE', '2018-03-23', 'WEEK-END POPULAIRE SDF\r\nBRI/CORINNE/SONIA POUR 20H', '', '129.73', 3, 'REELLE', 'N'),
(28, 1, 'CULTURE', '2018-03-24', 'POUR 9H PT DEJ 15H GOUTER A LIVRER LA VEILLE', '', '84.51', 8, 'REELLE', 'N'),
(29, 1, 'MVA', '2018-03-19', 'CEREMONIE DU 19 MARS POUR 17H SDF BRIGITTE 60 PERSONNES', '', '44.38', 5, 'REELLE', 'N'),
(30, 1, 'CULTURE', '2018-03-17', 'CONCERT DE LEONIE', NULL, '18.45', 4, 'REELLE', 'N'),
(31, 1, 'CEREMONIE DU 19 MARS ', '2018-03-19', 'SDF BRIGITTE POUR 17H \r\nPOUR 60 PERSONNE', '', '78.11', 6, 'REELLE', 'N'),
(32, 1, 'Test Yann', '2018-03-28', 'abssqd " qsd qds qds" <b>dsdfs</b>', 'etst', '0.00', 0, 'VIRTUELLE', 'O'),
(33, 1, 'MVA (L.BESSONNAT)', '2018-04-06', 'pt tour du cÅ“ur pt dej pour 8h30', '', '19.89', 5, 'REELLE', 'N'),
(34, 1, 'culture ', '2018-04-07', 'vernissage "les Bricolos"pour 18h au chÃ¢teau ', 'Brigitte CATHERINE 17h00', '541.57', 7, 'REELLE', 'N'),
(35, 1, 'JP ORANGE', '2018-04-12', 'POUR 14H00 SALLE JBC', '', '55.41', 7, 'REELLE', 'N'),
(36, 1, 'CELLULE ELECTION', '2018-04-14', 'POUR 11H SALLE JEAN MOULIN 200P', 'BRIGITTE', '47.84', 3, 'REELLE', 'N'),
(37, 1, 'developpement durable', '2018-04-17', 'ville en transition sdf pour 18h00', 'vaisselle Ã©cole pour 60 personnes\r\n ', '3.73', 1, 'VIRTUELLE', 'N'),
(38, 1, 'PETITE ENFANCE', '2018-04-20', 'LIVRAISON A LA CRECHE FAMILIALE LE MATIN', '', '63.99', 5, 'VIRTUELLE', 'N'),
(39, 1, 'DG', '2018-04-20', 'MVA POUR 9H00', '', '13.70', 5, 'VIRTUELLE', 'N'),
(40, 1, 'MVA', '2018-05-08', 'SDF POUR 11H00 \r\n100 PERSONNES', 'VALERIE+SUZAN 10H30', '110.16', 6, 'VIRTUELLE', 'N'),
(41, 1, 'CULTURE', '2018-05-12', 'VERNISSAGE TERRE ET FEU \r\nCHÃ„TEAU DES L.A POUR 200/PERS', 'BRIGITTE+SUZAN 17H00', '198.29', 5, 'VIRTUELLE', 'N'),
(42, 1, 'SERVICE QUARTIER', '2018-05-19', 'LIVRAISON LA VEILLE', '', '11.59', 4, 'VIRTUELLE', 'N'),
(43, 1, 'SMOC FOOT', '2018-05-19', 'STADE DU PETIT BOIS 100/PERS\r\nPOUR 12H00', 'BRIGITTE+VALERIE', '115.60', 6, 'VIRTUELLE', 'N'),
(44, 1, 'ETAT CIVIL', '2018-05-26', 'NOCE D''OR SJM POUR 60 PERS', 'INSTALL POUR 16H30 (A VOIR)', '84.18', 6, 'VIRTUELLE', 'N'),
(45, 1, 'I.DEMULE', '2018-04-19', 'SJM POUR 8H00 20 PERSONNES', '', '17.91', 6, 'VIRTUELLE', 'N'),
(46, 1, 'CONFERENCE DE PRESSE', '2018-04-23', 'MAISON DES L.A/ POUR 14H\r\n20 PERSONNES', 'LIVRAISON LA VEILLE OU LE MATIN', '15.27', 6, 'VIRTUELLE', 'N'),
(47, 1, 'Harold', '2024-03-22', 'Besoin d''utilisation', 'Ah', '1.60', 1, 'REELLE', 'N'),
(48, 1, 'Harold Kennedy', '2024-03-22', 'dffff', 'dfggf', '11.14', 1, 'VIRTUELLE', 'N'),
(49, 1, 'Harold Kennedy', '2024-03-22', 'iuygtfdr', 'iuytr', '11.14', 1, 'REELLE', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE IF NOT EXISTS `stock` (
  `idStock` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `utiliseBeneficiaire` enum('O','N') NOT NULL DEFAULT 'N' COMMENT '''O'' si la colonne "bénéficiaire" doit être utilisée sur les sorties. ''N'' sinon.',
  PRIMARY KEY (`idStock`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`idStock`, `nom`, `utiliseBeneficiaire`) VALUES
(1, 'Stock Cuisine', 'N'),
(2, 'Stock Bureautique', 'O'),
(3, 'Stock Foyer', 'N'),
(4, 'Stock Cuisines', 'N'),
(5, 'Stock Bureautiques', 'O'),
(6, 'Stock Foyers', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `stock_autorise`
--

CREATE TABLE IF NOT EXISTS `stock_autorise` (
  `idStock` int(11) NOT NULL,
  `idUtilisateur` int(11) NOT NULL,
  `defaut` enum('O','N') NOT NULL,
  PRIMARY KEY (`idStock`,`idUtilisateur`),
  KEY `idUtilisateur` (`idUtilisateur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_autorise`
--

INSERT INTO `stock_autorise` (`idStock`, `idUtilisateur`, `defaut`) VALUES
(1, 10, 'N'),
(1, 24, 'O'),
(1, 25, 'O'),
(1, 26, 'N'),
(2, 10, 'N'),
(2, 24, 'N'),
(2, 26, 'N'),
(2, 27, 'N'),
(3, 10, 'N'),
(3, 25, 'N'),
(3, 30, 'N'),
(4, 10, 'O'),
(5, 10, 'O'),
(6, 10, 'O');

-- --------------------------------------------------------

--
-- Table structure for table `utilisateur`
--

CREATE TABLE IF NOT EXISTS `utilisateur` (
  `idUtilisateur` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(15) NOT NULL,
  `password` varchar(30) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `administrateur` enum('O','N','R') NOT NULL DEFAULT 'N',
  `agence` varchar(20) NOT NULL,
  PRIMARY KEY (`idUtilisateur`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `utilisateur`
--

INSERT INTO `utilisateur` (`idUtilisateur`, `login`, `password`, `nom`, `prenom`, `administrateur`, `agence`) VALUES
(2, 'admin', 'admin', 'Administrateur', '', 'O', 'Direction Generale'),
(10, 'recep', 'jojo', 'joseph', 'nathan', 'R', ''),
(24, 'sdurant', 'sdurant', 'Durant', 'Sylvain', 'N', 'Akwa'),
(25, 'bbouchareine', 'test', 'BOUCHAREINE', 'Brigitte', 'N', 'Bonamoussadi'),
(26, 'ydeydier', 'jjj', 'DEYDIER', 'Yann', 'N', 'Ndokotti'),
(27, 'bcreusillet', '', 'CREUSILLET', 'Blandine', 'N', 'Bonaberi'),
(30, 'Nelson', 'lica', 'Kamteu', 'Harold', 'N', 'Yassa');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`idStock`) REFERENCES `stock` (`idStock`);

--
-- Constraints for table `ligne_sortie`
--
ALTER TABLE `ligne_sortie`
  ADD CONSTRAINT `ligne_sortie_ibfk_1` FOREIGN KEY (`idSortie`) REFERENCES `sortie` (`idSortie`),
  ADD CONSTRAINT `ligne_sortie_ibfk_2` FOREIGN KEY (`idArticle`) REFERENCES `article` (`idArticle`);

--
-- Constraints for table `ligne_stock`
--
ALTER TABLE `ligne_stock`
  ADD CONSTRAINT `ligne_stock_ibfk_1` FOREIGN KEY (`idStock`) REFERENCES `stock` (`idStock`),
  ADD CONSTRAINT `ligne_stock_ibfk_2` FOREIGN KEY (`idArticle`) REFERENCES `article` (`idArticle`);

--
-- Constraints for table `sortie`
--
ALTER TABLE `sortie`
  ADD CONSTRAINT `sortie_ibfk_1` FOREIGN KEY (`idStock`) REFERENCES `stock` (`idStock`);

--
-- Constraints for table `stock_autorise`
--
ALTER TABLE `stock_autorise`
  ADD CONSTRAINT `stock_autorise_ibfk_1` FOREIGN KEY (`idStock`) REFERENCES `stock` (`idStock`),
  ADD CONSTRAINT `stock_autorise_ibfk_2` FOREIGN KEY (`idUtilisateur`) REFERENCES `utilisateur` (`idUtilisateur`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
