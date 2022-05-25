-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 24 mai 2022 à 02:20
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `seed_test`
--

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220523234017', '2022-05-23 23:40:26', 52),
('DoctrineMigrations\\Version20220524013812', '2022-05-24 01:38:23', 46);

-- --------------------------------------------------------

--
-- Structure de la table `graine`
--

DROP TABLE IF EXISTS `graine`;
CREATE TABLE IF NOT EXISTS `graine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `famille` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `periode_plantation` date NOT NULL,
  `periode_recolte` date NOT NULL,
  `conseil` longtext COLLATE utf8mb4_unicode_ci,
  `image` longtext COLLATE utf8mb4_unicode_ci,
  `quantite` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `graine`
--

INSERT INTO `graine` (`id`, `nom`, `famille`, `periode_plantation`, `periode_recolte`, `conseil`, `image`, `quantite`) VALUES
(11, 'Citrouille', 'Curcubitacé', '2022-05-02', '2022-05-05', NULL, NULL, 59),
(12, 'Tomate', 'Solanacées', '2022-05-05', '2022-07-22', NULL, NULL, 22),
(13, 'Haricot', 'Fabacées', '2022-01-05', '2022-05-13', NULL, NULL, 18),
(14, 'Epinard', 'Amaranthaceae', '2022-06-15', '2022-08-20', NULL, NULL, 10),
(15, 'Poivron', 'Solanacées', '2022-11-25', '2022-07-19', NULL, NULL, 80),
(16, 'Radis', 'Crucifère', '2022-10-12', '2023-01-04', NULL, NULL, 26),
(17, 'Courgette', 'Solanacées', '2022-06-08', '2022-12-15', NULL, NULL, 22),
(18, 'Betterave', 'Amaranthaceae', '2022-06-29', '2022-08-11', NULL, NULL, 332),
(19, 'Lentille', 'Légumineuse', '2022-04-28', '2022-12-22', NULL, NULL, 47),
(20, 'Carotte', 'Légumineuse', '2022-05-06', '2022-12-15', NULL, NULL, 32);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`) VALUES
(1, 'admin@example.com', '[\"ROLE_ADMIN\"]', '$2y$13$IQhRXB53pnQ2HpLYVY5sqOmYZQIqCwRMuXOUKI3JxhI/M7Wq/gOei');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
