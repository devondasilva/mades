-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 05 mars 2023 à 18:39
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `formation_tennis`
--

-- --------------------------------------------------------

--
-- Structure de la table `inscription`
--

CREATE TABLE `inscription` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenoms` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `inscription`
--

INSERT INTO `inscription` (`id`, `nom`, `prenoms`, `email`, `message`) VALUES
(1, 'DAS', 'Amir', 'elfrieddasilva@gmail.com', 'Bonjour'),
(2, 'DAS', 'Amir', 'elfrieddasilva@gmail.com', ''),
(3, 'DAS', 'Amir', 'elfrieddasilva@gmail.com', ''),
(4, 'DAS', 'Amir', 'elfrieddasilva@gmail.com', ''),
(5, 'Elfried', 'da Silva', 'elfrieddasilva@gmail.com', 'Bonjour Merci'),
(6, 'Elfried', 'da Silva', 'elfrieddasilva@gmail.com', 'Bonjour Merci'),
(7, 'da SILVA', 'Elfried Ambroise', 'elfrieddasilva@gmail.com', 'Bonjour MADES'),
(8, 'da SILVA', 'Elfried Ambroise', 'elfrieddasilva@gmail.com', 'Bonjour MADES'),
(9, 'da SILVA', 'Elfried Ambroise', 'elfrieddasilva@gmail.com', 'Bonjour MADES'),
(10, 'da SILVA', 'Elfried Ambroise', 'elfrieddasilva@gmail.com', 'Bonjour MADES'),
(11, 'da SILVA', 'Elfried Ambroise', 'elfrieddasilva@gmail.com', 'Bonjour MADES'),
(12, 'da SILVA', 'Elfried Ambroise', 'elfrieddasilva@gmail.com', 'Bonjour MADES'),
(13, 'da SILVA', 'Elfried Ambroise', 'elfrieddasilva@gmail.com', ''),
(14, 'MEUNIER', 'Thomas Adam', 'elfrieddasilva@gmail.com', 'Bonjour MADES Merci'),
(15, 'DAS', 'Amir', 'elfrieddasilva@gmail.com', ''),
(16, 'MEUNIER', 'Thomas Adam', 'ambroisedas2003@gmail.com', ''),
(17, 'MEUNIER', 'Thomas Adam', 'ambroisedas2003@gmail.com', ''),
(18, 'MEUNIER', 'Thomas Adam', 'elfrieddasilva@gmail.com', ''),
(19, 'GBAGUIDI', 'Rudy Donan', 'gbaguidike@gmail.com', ''),
(20, 'Elfried', 'da Silva', 'elfrieddasilva@gmail.com', 'Test de Elfried'),
(21, 'Elfried', 'da Silva', 'elfrieddasilva@gmail.com', 'Test de Elfried'),
(22, 'Elfried', 'da Silva', 'elfrieddasilva@gmail.com', 'Test de Elfried'),
(23, 'Elfried', 'da Silva', 'ambroisedas2003@gmail.com', 'Test de Elfried'),
(24, 'Elfried', 'da Silva', 'ambroisedas2003@gmail.com', 'Test de Elfried'),
(25, 'Elfried', 'da Silva', 'ambroisedas2003@gmail.com', 'Test de Elfried'),
(26, 'Elfried', 'da Silva', 'ambroisedas2003@gmail.com', 'Test de Elfried'),
(27, 'Elfried', 'da Silva', 'ambroisedas2003@gmail.com', 'Test de Elfried'),
(28, 'Elfried', 'da Silva', 'ambroisedas2003@gmail.com', 'Test de Elfried'),
(29, 'DAS', 'Amir', 'ambroisedas2003@gmail.com', ''),
(30, 'DAS', 'Amir', 'ambroisedas2003@gmail.com', ''),
(31, 'DAS', 'Amir', 'ambroisedas2003@gmail.com', ''),
(32, 'DAS', 'Amir', 'elfrieddasilva@gmail.com', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `inscription`
--
ALTER TABLE `inscription`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `inscription`
--
ALTER TABLE `inscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
