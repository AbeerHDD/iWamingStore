-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mar 14 Novembre 2017 à 11:14
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `boutique`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `idCat` int(11) NOT NULL AUTO_INCREMENT,
  `descCat` varchar(255) NOT NULL,
  `etatCat` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idCat`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `categories`
--

INSERT INTO `categories` (`idCat`, `descCat`, `etatCat`) VALUES
(1, 'PC-Protable', 1),
(2, 'PC-Bureau', 1),
(3, 'Tablette', 1),
(4, 'Phone', 1);

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--


-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE IF NOT EXISTS `produits` (
  `idProd` int(11) NOT NULL AUTO_INCREMENT,
  `desigProd` varchar(255) NOT NULL,
  `descProd` varchar(255) NOT NULL,
  `catProd` int(11) NOT NULL,
  `prixProd` float NOT NULL,
  `etatProd` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idProd`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- Contenu de la table `produits`
--

INSERT INTO `produits` (`idProd`, `desigProd`, `descProd`, `catProd`, `prixProd`, `etatProd`) VALUES
(1, 'Portable Asus', 'Pack Fnac PC Portable Asus R556YI-XX001T', 1, 1600, 1),
(2, 'HP Notebook', 'PC Portable HP Notebook 17-x103nf', 1, 1100, 1),
(3, 'Asus ROG', 'PC Portable Asus ROG GL552VW-DM881T', 1, 1890, 1),
(4, 'Lenovo IdeaPad', 'PC Portable Lenovo IdeaPad 110-15ACL', 1, 1460, 1),
(5, 'Asus Zenbook', 'PC Ultra-Portable Asus Zenbook UX305CA-FB153T', 1, 1850, 1),
(6, 'MacBook Pro', 'Apple MacBook Pro 13.3 Retina 256 Go SSD', 1, 3250, 1),
(7, 'Acer Aspire', 'PC Portable Acer Aspire F5-573G-5417', 1, 1200, 1),
(8, 'Lenovo Ideapad', 'PC Ultra-Portable Lenovo Ideapad 100S-14IBR', 1, 1240, 1),
(9, 'Asus R457UR', 'PC Ultra-Portable Asus R457UR-WX088T', 1, 1680, 1),
(10, 'Asus UX310UA', 'PC Ultra-Portable Asus UX310UA-GL204T', 1, 1250, 1),
(11, 'Asus GL552VW', 'PC Portable Asus GL552VW-DM009T ', 1, 1400, 1),
(12, 'Lenovo 100', 'PC Portable Lenovo 100-15IBY version 2017', 1, 1500, 1),
(13, 'Asus V230ICGK', 'PC Asus V230ICGK-BC222X Tout-en-un 23', 2, 1200, 1),
(14, 'Asus K31CD', 'PC Asus K31CD-FR041T version 2017 (images)', 2, 950, 1),
(15, 'Apple iMac', 'Apple iMac 21.5 Retina 4K 1 To 8 Go RAM', 2, 3260, 1),
(16, 'VIBOX PC Gamer', 'VIBOX PC Gamer - Vision Package 2 - 3.9GHz', 2, 1950, 1),
(17, 'Dell Optiplex', 'Unité centrale Dell Optiplex 990 Tour', 2, 1100, 1),
(18, 'Dell Optiplex', 'Ordinateur Dell Optiplex 760 SFF version 2017 (images)', 2, 1250, 1),
(19, ' tout-en-un tactile ', 'PC tout-en-un tactile ORDISSIMO version 2017', 2, 1850, 1),
(20, 'MSI Gaming 24', 'PC MSI Gaming 24 6QD-005EU Tout-en-un', 2, 1620, 1),
(21, 'iPad Mini', 'Apple iPad Mini 4 128 Go Wifi Argent 7', 3, 500, 1),
(22, 'Galaxy Tab S2', 'Tablette Samsung Galaxy Tab S2 VE 9', 3, 1250, 1),
(23, 'iPad Mini 4', 'Apple iPad Mini 4 128 Go Wifi Or iPad Mini 444', 3, 950, 1),
(24, 'Galaxy Tab A6', 'Tablette Samsung Galaxy Tab A6 Samsung Galaxy Tab A6 ', 3, 850, 1),
(25, 'Tablette Asus', 'Tablette Asus Z300M-6B032A version 2017', 3, 540, 1),
(26, 'iPad Pro', 'Apple iPad Pro 128 Go WiFi', 3, 820, 1),
(27, 'Lenovo Moto', 'Smartphone Lenovo Moto ZDouble SIM 32 Go Blanc', 4, 260, 1),
(28, 'Huawei P8', 'Smartphone Huawei P8 16 Go Blanc', 4, 450, 1),
(29, 'Honor 8', 'Smartphone Honor 8 Premium 64 Go Double SIM Or', 4, 650, 1),
(30, 'Honor 8 Premium', 'Smartphone Honor 8 Premium 64 Go Double SIM Rose', 4, 850, 1),
(31, 'Galaxy J7', 'Smartphone Samsung Galaxy J7 16 Go Blanc', 4, 1020, 1),
(32, 'Wiko Fever', 'Smartphone Wiko Fever Edition Spéciale 32 Go Paprika', 4, 450, 1),
(33, 'Wiko Fever', 'Smartphone Wiko Fever Edition Spéciale 32 Go Anthracite', 4, 580, 1),
(34, 'Galaxy S6', 'Smartphone Samsung Galaxy S6 Edge 32 Go Noir Cosmos', 4, 890, 1),
(35, 'Galaxy S6', 'Smartphone Samsung Galaxy S6 Edge 32 Go Or', 4, 895, 1),
(36, 'Galaxy S7', 'Smartphone Samsung Galaxy S7 32 Go Or Rose', 4, 1420, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
