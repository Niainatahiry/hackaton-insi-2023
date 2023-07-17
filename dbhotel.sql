-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 12 juil. 2023 à 05:27
-- Version du serveur : 8.0.31
-- Version de PHP : 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `dbhotel`
--

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230612180428', '2023-06-12 18:04:53', 2085),
('DoctrineMigrations\\Version20230613150634', '2023-06-13 15:06:45', 1591),
('DoctrineMigrations\\Version20230616174226', '2023-06-16 17:43:28', 1431),
('DoctrineMigrations\\Version20230628100426', '2023-06-28 10:04:48', 1564);

-- --------------------------------------------------------

--
-- Structure de la table `hebergement`
--

DROP TABLE IF EXISTS `hebergement`;
CREATE TABLE IF NOT EXISTS `hebergement` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codepostal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix` double NOT NULL,
  `illustration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_4852DD9CA76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
CREATE TABLE IF NOT EXISTS `messenger_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `name`) VALUES
(1, 'izahoexemple@gmail.com', '[]', '$2y$13$7fz3Rchq98DsAIEdCLMDoeB30sGIN0GS0GdPtyiKKriDXvEuK.E56', 'Izaho'),
(2, 'manjaka.ysmael@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$pG6GpCe6x/gXeIbjU8I.UuppWyFENXGj25R1pftxyY3E8VUtus3dK', 'Manjaka'),
(3, 'rakottahiry@gmail.com', '[]', '$2y$13$vyZXBqLQmFUtU70CWkKLPONxN3nMxojYV4Gm.6R4GMFZP1./swke6', 'Tahiry'),
(4, 'lala@gmail.com', '[\"ROLE_PRESTATAIRE\"]', '$2y$13$lmY8arKapivUcBHr89c2VuV2hxFly5g5dqtyLrFOqMUtGGeWW47q6', 'Lala'),
(5, 'adminexemple@gmail.com', '[]', '$2y$13$zb22nGoN1BsB8yfudA.hGO6IxrVS92.VgXFwP5PSEiy0rGljII1dW', 'Admin'),
(6, 'mamy@gmail.com', '[]', '$2y$13$ITCC4YBhHOYiLpLNJ7LHKul1lg68obWjNTRVAnd8ZHXWxSXY1jib6', 'Mamy'),
(7, 'miantsarama@gmail.com', '[]', '$2y$13$8RBSN6ZCpBIpKmDhkI/U/ejSwKmBgGhlV4lFzikNLpz7vy5sBQmPK', 'NIAINA');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `hebergement`
--
ALTER TABLE `hebergement`
  ADD CONSTRAINT `FK_4852DD9CA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
