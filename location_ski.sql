-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 30 jan. 2025 à 09:58
-- Version du serveur : 9.1.0
-- Version de PHP : 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `location_ski`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `refart` varchar(10) NOT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `codeGam` varchar(10) DEFAULT NULL,
  `codeCate` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`refart`),
  KEY `codeGam` (`codeGam`),
  KEY `codeCate` (`codeCate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`refart`, `designation`, `codeGam`, `codeCate`) VALUES
('F01', 'Fischer Cruiser', 'EG', 'FOA'),
('F02', 'Fischer Cruiser', 'EG', 'FOA'),
('F03', 'Fischer Cruiser', 'EG', 'FOA'),
('F04', 'Fischer Cruiser', 'EG', 'FOA'),
('F05', 'Fischer Cruiser', 'EG', 'FOA'),
('F10', 'Fischer Sporty Crown', 'MG', 'FOA'),
('F20', 'Fischer RCS Classic GOLD', 'PR', 'FOA'),
('F21', 'Fischer RCS Classic GOLD', 'PR', 'FOA'),
('F22', 'Fischer RCS Classic GOLD', 'PR', 'FOA'),
('F23', 'Fischer RCS Classic GOLD', 'PR', 'FOA'),
('F50', 'Fischer SOSSkating VASA', 'HG', 'FOP'),
('F60', 'Fischer RCS CARBOLITE Skating', 'PR', 'FOP'),
('F61', 'Fischer RCS CARBOLITE Skating', 'PR', 'FOP'),
('F62', 'Fischer RCS CARBOLITE Skating', 'PR', 'FOP'),
('F63', 'Fischer RCS CARBOLITE Skating', 'PR', 'FOP'),
('F64', 'Fischer RCS CARBOLITE Skating', 'PR', 'FOP'),
('P01', 'Décathlon Allegre junior 150', 'EG', 'PA'),
('P10', 'Fischer mini ski patinette', 'MG', 'PA'),
('P11', 'Fischer mini ski patinette', 'MG', 'PA'),
('S01', 'Décathlon Apparition', 'EG', 'SURF'),
('S02', 'Décathlon Apparition', 'EG', 'SURF'),
('S03', 'Décathlon Apparition', 'EG', 'SURF'),
('A01', 'Salomon 24X+Z12', 'EG', 'SA'),
('A02', 'Salomon 24X+Z12', 'EG', 'SA'),
('A03', 'Salomon 24X+Z12', 'EG', 'SA'),
('A04', 'Salomon 24X+Z12', 'EG', 'SA'),
('A05', 'Salomon 24X+Z12', 'EG', 'SA'),
('A10', 'Salomon Pro Link Equipe 4S', 'PR', 'SA'),
('A11', 'Salomon Pro Link Equipe 4S', 'PR', 'SA'),
('A21', 'Salomon 3V RACE JR+L10', 'PR', 'SA');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `codeCate` varchar(10) NOT NULL,
  `libelle` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codeCate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`codeCate`, `libelle`) VALUES
('MONO', 'Monoski'),
('SURF', 'Surf'),
('PA', 'Patinette'),
('FOA', 'Ski de fond alternatif'),
('FOP', 'Ski de fond patineur'),
('SA', 'Ski alpin');

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `noCli` int NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `adresse` varchar(100) DEFAULT NULL,
  `cpo` varchar(10) DEFAULT NULL,
  `ville` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`noCli`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`noCli`, `nom`, `prenom`, `adresse`, `cpo`, `ville`) VALUES
(1, 'Albert', 'Anatole', 'Rue des accacias', '61000', 'Amiens'),
(2, 'Bernard', 'Barnabé', 'Rue du bar', '1000', 'Bourg en Bresse'),
(3, 'Dupond', 'Camille', 'Rue Crébillon', '44000', 'Nantes'),
(4, 'Desmoulin', 'Daniel', 'Rue descendante', '21000', 'Dijon'),
(5, 'Ernest', 'Etienne', 'Rue de l’échaffaud', '42000', 'Saint Étienne'),
(6, 'Ferdinand', 'François', 'Rue de la convention', '44100', 'Nantes'),
(9, 'Dupond', 'Jean', 'Rue des mimosas', '75018', 'Paris'),
(14, 'Boutaud', 'Sabine', 'Rue des platanes', '75002', 'Paris');

-- --------------------------------------------------------

--
-- Structure de la table `fiches`
--

DROP TABLE IF EXISTS `fiches`;
CREATE TABLE IF NOT EXISTS `fiches` (
  `noFic` int NOT NULL,
  `noCli` int DEFAULT NULL,
  `dateCrea` date DEFAULT NULL,
  `datePaiement` date DEFAULT NULL,
  `etat` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`noFic`),
  KEY `noCli` (`noCli`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `fiches`
--

INSERT INTO `fiches` (`noFic`, `noCli`, `dateCrea`, `datePaiement`, `etat`) VALUES
(1001, 14, '2025-01-15', '2025-01-17', 'SO'),
(1002, 4, '2025-01-17', NULL, 'EC'),
(1003, 1, '2025-01-18', '2025-01-20', 'SO'),
(1004, 6, '2025-01-19', NULL, 'EC'),
(1005, 3, '2025-01-20', NULL, 'EC'),
(1006, 9, '2025-01-20', NULL, 'RE'),
(1007, 1, '2025-01-27', NULL, 'EC'),
(1008, 2, '2025-01-30', NULL, 'EC');

-- --------------------------------------------------------

--
-- Structure de la table `gammes`
--

DROP TABLE IF EXISTS `gammes`;
CREATE TABLE IF NOT EXISTS `gammes` (
  `codeGam` varchar(10) NOT NULL,
  `libelle` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codeGam`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `gammes`
--

INSERT INTO `gammes` (`codeGam`, `libelle`) VALUES
('PR', 'Matériel Professionnel'),
('HG', 'Haut de gamme'),
('MG', 'Moyenne gamme'),
('EG', 'Entrée de gamme');

-- --------------------------------------------------------

--
-- Structure de la table `grilletarifs`
--

DROP TABLE IF EXISTS `grilletarifs`;
CREATE TABLE IF NOT EXISTS `grilletarifs` (
  `codeGam` varchar(10) NOT NULL,
  `codeCate` varchar(10) NOT NULL,
  `codeTarif` varchar(10) NOT NULL,
  PRIMARY KEY (`codeGam`,`codeCate`,`codeTarif`),
  KEY `codeCate` (`codeCate`),
  KEY `codeTarif` (`codeTarif`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `grilletarifs`
--

INSERT INTO `grilletarifs` (`codeGam`, `codeCate`, `codeTarif`) VALUES
('EG', 'FOA', 'T1'),
('EG', 'FOP', 'T2'),
('EG', 'MONO', 'T1'),
('EG', 'PA', 'T1'),
('EG', 'SA', 'T1'),
('EG', 'SURF', 'T1'),
('HG', 'FOA', 'T4'),
('HG', 'FOP', 'T4'),
('HG', 'SA', 'T4'),
('HG', 'SURF', 'T3'),
('MG', 'FOA', 'T2'),
('MG', 'FOP', 'T3'),
('MG', 'MONO', 'T2'),
('MG', 'PA', 'T2'),
('MG', 'SA', 'T2'),
('MG', 'SURF', 'T2'),
('PR', 'FOA', 'T6'),
('PR', 'FOP', 'T6'),
('PR', 'SA', 'T6'),
('PR', 'SURF', 'T5');

-- --------------------------------------------------------

--
-- Structure de la table `lignesfic`
--

DROP TABLE IF EXISTS `lignesfic`;
CREATE TABLE IF NOT EXISTS `lignesfic` (
  `noFic` int NOT NULL,
  `noLig` int NOT NULL,
  `refart` varchar(10) DEFAULT NULL,
  `depart` date DEFAULT NULL,
  `retour` date DEFAULT NULL,
  PRIMARY KEY (`noFic`,`noLig`),
  KEY `refart` (`refart`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `lignesfic`
--

INSERT INTO `lignesfic` (`noFic`, `noLig`, `refart`, `depart`, `retour`) VALUES
(1001, 1, 'F05', '2025-01-15', '2025-01-17'),
(1001, 2, 'F50', '2025-01-15', '2025-01-16'),
(1001, 3, 'F60', '2025-01-17', '2025-01-17'),
(1002, 1, 'A03', '2025-01-17', '2025-01-21'),
(1002, 2, 'A04', '2025-01-18', '2025-01-23'),
(1002, 3, 'S03', '2025-01-22', NULL),
(1003, 1, 'F50', '2025-01-18', '2025-01-20'),
(1003, 2, 'F05', '2025-01-18', '2025-01-20'),
(1004, 1, 'P01', '2025-01-24', NULL),
(1005, 1, 'F05', '2025-01-21', '2025-01-25'),
(1005, 2, 'F10', '2025-01-26', NULL),
(1006, 1, 'S01', '2025-01-20', '2025-01-21'),
(1006, 2, 'S02', '2025-01-20', '2025-01-21'),
(1006, 3, 'S03', '2025-01-20', '2025-01-21'),
(1007, 1, 'F50', '2025-01-27', '2025-01-28'),
(1007, 3, 'F60', '2025-01-29', NULL),
(1007, 2, 'F05', '2025-01-27', NULL),
(1007, 4, 'S02', '2025-01-30', NULL),
(1008, 1, 'S01', '2025-01-30', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `tarifs`
--

DROP TABLE IF EXISTS `tarifs`;
CREATE TABLE IF NOT EXISTS `tarifs` (
  `codeTarif` varchar(10) NOT NULL,
  `libelle` varchar(50) DEFAULT NULL,
  `prixJour` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codeTarif`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `tarifs`
--

INSERT INTO `tarifs` (`codeTarif`, `libelle`, `prixJour`) VALUES
('T1', 'Base', 10.00),
('T2', 'Chocolat', 15.00),
('T3', 'Bronze', 20.00),
('T4', 'Argent', 30.00),
('T5', 'Or', 50.00),
('T6', 'Platine', 90.00);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
