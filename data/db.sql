-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  ven. 01 juin 2018 à 15:07
-- Version du serveur :  10.1.33-MariaDB
-- Version de PHP :  7.2.6

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `src_php`
--

-- --------------------------------------------------------

--
-- Structure de la table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `sex` tinyint(4) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `promotion_id` int(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `promotion_id` (`promotion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `students`
--

INSERT INTO `students` (`id`, `firstname`, `lastname`, `sex`, `birthdate`, `postcode`, `address`, `promotion_id`) VALUES
(1, 'Anthony', 'Lhermitte', NULL, NULL, NULL, NULL, 1),
(3, 'Céline', 'Liénard', NULL, NULL, NULL, NULL, 1),
(4, 'Charlotte', 'Dujardin', NULL, NULL, NULL, NULL, 1),
(5, 'Clémentine', 'Goedefroye', NULL, NULL, NULL, NULL, 1),
(6, 'David', 'Toron', NULL, NULL, NULL, NULL, 1),
(7, 'Edwina', 'Molinaro', NULL, NULL, NULL, NULL, 1),
(8, 'Enzo', 'Avellino', NULL, NULL, NULL, NULL, 1),
(9, 'Farid', 'Akhenkham', NULL, NULL, NULL, NULL, 1),
(10, 'Florian', 'Marcinkowski', NULL, NULL, NULL, NULL, 1),
(11, 'Jérémy', 'Dufour', NULL, NULL, NULL, NULL, 1),
(12, 'Julien', 'Leroy', NULL, NULL, NULL, NULL, 1),
(13, 'Kévin', 'Dhénin', NULL, NULL, NULL, NULL, 1),
(14, 'Loïc', 'Tauveron', NULL, NULL, NULL, NULL, 1),
(15, 'Loïc', 'Pennequin', NULL, NULL, NULL, NULL, 1),
(16, 'Marion', 'Semery', NULL, NULL, NULL, NULL, 1),
(17, 'Matéo', 'Vigliaron', NULL, NULL, NULL, NULL, 1),
(18, 'Michaël', 'Payage', NULL, NULL, NULL, NULL, 1),
(19, 'Romain', 'Maciejewski', NULL, NULL, NULL, NULL, 1),
(20, 'Selim', 'Chiki', NULL, NULL, NULL, NULL, 1),
(21, 'Thibault', 'Defrance', NULL, NULL, NULL, NULL, 1),
(22, 'Albin', 'Legrand', NULL, NULL, NULL, NULL, 2),
(23, 'Alexis', 'Bouchez', NULL, NULL, NULL, NULL, 2),
(24, 'Alicia', 'Bani', NULL, NULL, NULL, NULL, 2),
(25, 'Amélie', 'Coyat', NULL, NULL, NULL, NULL, 2),
(26, 'Cathy', 'Thuliez', NULL, NULL, NULL, NULL, 2),
(27, 'Emile', 'Rouille', NULL, NULL, NULL, NULL, 2),
(28, 'Evelyne', 'Leunens', NULL, NULL, NULL, NULL, 2),
(29, 'Gaetan', 'Bois', NULL, NULL, NULL, NULL, 2),
(30, 'Gaëlle', 'Martinage', NULL, NULL, NULL, NULL, 2),
(31, 'Karine', 'Molinaro', NULL, NULL, NULL, NULL, 2),
(32, 'Laurent', 'Ramez', NULL, NULL, NULL, NULL, 2),
(33, 'Maxime', 'Pruvost', NULL, NULL, NULL, NULL, 2),
(34, 'Nicolas', 'Cyter', NULL, NULL, NULL, NULL, 2),
(35, 'Ophélie', 'Decroix', NULL, NULL, NULL, NULL, 2),
(36, 'Paul', 'Jacaton', NULL, NULL, NULL, NULL, 2),
(37, 'Quentin', 'Leroux', NULL, NULL, NULL, NULL, 2),
(38, 'Rudy', 'Betremieux', NULL, NULL, NULL, NULL, 2),
(39, 'Rudy', 'Malcherczyk', NULL, NULL, NULL, NULL, 2),
(40, 'Rémi', 'Willebrouck', NULL, NULL, NULL, NULL, 2),
(41, 'Stéphane', 'Paterek', NULL, NULL, NULL, NULL, 2),
(42, 'Sébastien', 'Sailly', NULL, NULL, NULL, NULL, 2),
(43, 'Thomas', 'Ringot', NULL, NULL, NULL, NULL, 2),
(44, 'Théo', 'Galiot', NULL, NULL, NULL, NULL, 2),
(45, 'Tom', 'Bourgesse', NULL, NULL, NULL, NULL, 2),
(46, 'Vincent', 'Arndt', NULL, NULL, NULL, NULL, 2),
(47, 'Alexis', 'Laurent', NULL, NULL, NULL, NULL, 3),
(48, 'Benamar', 'Nacer', NULL, NULL, NULL, NULL, 3),
(49, 'Benjamin', 'Martinez', NULL, NULL, NULL, NULL, 3),
(50, 'Corine', 'Larragueta', NULL, NULL, NULL, NULL, 3),
(51, 'Dylan', 'Couillet', NULL, NULL, NULL, NULL, 3),
(52, 'Emilie Di', 'Girolamo', NULL, NULL, NULL, NULL, 3),
(53, 'Florian', 'Ludowicz', NULL, NULL, NULL, NULL, 3),
(54, 'Guillaume', 'Deiana', NULL, NULL, NULL, NULL, 3),
(55, 'Jimmy', 'Henocq', NULL, NULL, NULL, NULL, 3),
(56, 'Jimmy', 'Lefebvre', NULL, NULL, NULL, NULL, 3),
(57, 'Jordy', 'Barré', NULL, NULL, NULL, NULL, 3),
(58, 'Julien', 'Delissenne', NULL, NULL, NULL, NULL, 3),
(59, 'Logan', 'Wilquin', NULL, NULL, NULL, NULL, 3),
(60, 'Mathias', 'Maroni', NULL, NULL, NULL, NULL, 3),
(61, 'Mélinda', 'Berquier', NULL, NULL, NULL, NULL, 3),
(62, 'Nathan', 'Dubourdieu', NULL, NULL, NULL, NULL, 3),
(63, 'Nicolas', 'Samier', NULL, NULL, NULL, NULL, 3),
(64, 'Pierre', 'Boufflers', NULL, NULL, NULL, NULL, 3),
(65, 'Quentin', 'Lecocq', NULL, NULL, NULL, NULL, 3),
(66, 'Romain', 'Prospero', NULL, NULL, NULL, NULL, 3),
(67, 'Samera', 'Yahia', NULL, NULL, NULL, NULL, 3),
(68, 'Samuel', 'Libeert', NULL, NULL, NULL, NULL, 3),
(69, 'Sarah', 'Louette', NULL, NULL, NULL, NULL, 3),
(70, 'Sébastien', 'Halle', NULL, NULL, NULL, NULL, 3),
(71, 'Stéphane', 'Duquesnoy', NULL, NULL, NULL, NULL, 3),
(72, 'Lorem', 'Ipsum', NULL, NULL, NULL, NULL, 4),
(73, 'Lorem', 'Ipsum', NULL, NULL, NULL, NULL, 4);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `promotion_id` FOREIGN KEY (`promotion_id`) REFERENCES `promotions` (`id`);
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
