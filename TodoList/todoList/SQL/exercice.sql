-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 25 juil. 2022 à 12:10
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `exercice`
--

-- --------------------------------------------------------

--
-- Structure de la table `cities`
--

DROP TABLE IF EXISTS `cities`;
CREATE TABLE IF NOT EXISTS `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cities`
--

INSERT INTO `cities` (`id`, `city`, `postal_code`) VALUES
(1, 'Dunkerque', 59140),
(2, 'Quaedypre', 59380),
(3, 'Wormhout', 59470),
(4, 'Grande-Synthe', 59760),
(5, 'Grand-Fort-Philippe', 59153),
(6, 'Saint-Georges-sur-l\'\'Aa', 59820),
(7, 'Loon-Plage', 59279),
(8, 'Bergues', 59380),
(9, 'Armentières', 59280);

-- --------------------------------------------------------

--
-- Structure de la table `participants`
--

DROP TABLE IF EXISTS `participants`;
CREATE TABLE IF NOT EXISTS `participants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `participants`
--

INSERT INTO `participants` (`id`, `last_name`, `name`, `city_id`) VALUES
(1, 'Lenain', 'Anais', 1),
(2, 'Buniet', 'Benjamin', 2),
(3, 'Rodoumta Kidjibaye', 'Bonaventure', 1),
(4, 'Croske', 'Guillaume', 3),
(5, 'Schroeder', 'Joel', 1),
(6, 'Lhafidi', 'Latifa', 4),
(7, 'Wadoux', 'Logan', 5),
(8, 'Berlemont', 'Lucas', 1),
(9, 'Cornil', 'Michael', 6),
(10, 'Armansin', 'Mike', 7),
(11, 'Philippe', 'Nelson', 1),
(12, 'El Gharbi', 'Nérimène', 1),
(13, 'Tournemaine', 'Patrick', 1),
(14, 'Cuvillier', 'Rémy', 8),
(15, 'Chihab', 'Wail', 9);

-- --------------------------------------------------------

--
-- Structure de la table `todolist`
--

DROP TABLE IF EXISTS `todolist`;
CREATE TABLE IF NOT EXISTS `todolist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `todo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `todolist`
--

INSERT INTO `todolist` (`id`, `todo`) VALUES
(8, 'php'),
(7, 'courir'),
(9, 'velo');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
