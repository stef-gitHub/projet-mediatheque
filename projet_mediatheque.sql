-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3308
-- Généré le :  jeu. 08 oct. 2020 à 08:55
-- Version du serveur :  5.7.26
-- Version de PHP :  7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `projet_mediatheque`
--

-- --------------------------------------------------------

--
-- Structure de la table `abonnement`
--

DROP TABLE IF EXISTS `abonnement`;
CREATE TABLE IF NOT EXISTS `abonnement` (
  `id_abonnement` int(11) NOT NULL AUTO_INCREMENT,
  `numero_abonne` varchar(50) NOT NULL,
  `penalite` float NOT NULL,
  `date_souscription` varchar(10) NOT NULL,
  PRIMARY KEY (`id_abonnement`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `abonnement`
--

INSERT INTO `abonnement` (`id_abonnement`, `numero_abonne`, `penalite`, `date_souscription`) VALUES
(4, 'AA06102020144338', 0, '06-10-2020'),
(5, 'MM07102020090452', 0, '07-10-2020'),
(6, 'Cm07102020135048', 0, '07-10-2020');

-- --------------------------------------------------------

--
-- Structure de la table `emprunt`
--

DROP TABLE IF EXISTS `emprunt`;
CREATE TABLE IF NOT EXISTS `emprunt` (
  `id_emprunt` int(11) NOT NULL AUTO_INCREMENT,
  `id_support` int(11) NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  `date_debut` varchar(10) NOT NULL,
  `date_fin` varchar(10) NOT NULL,
  `actif` int(2) NOT NULL,
  PRIMARY KEY (`id_emprunt`) USING BTREE,
  KEY `emprunt_utilisateur0_FK` (`id_utilisateur`),
  KEY `emprunt_support_FK` (`id_support`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `emprunt`
--

INSERT INTO `emprunt` (`id_emprunt`, `id_support`, `id_utilisateur`, `date_debut`, `date_fin`, `actif`) VALUES
(1, 3, 6, '12/10/2020', '13/12/2020', 1),
(2, 1, 7, '15/09/2020', '18/12/2020', 1);

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `id_role` int(11) NOT NULL AUTO_INCREMENT,
  `libelle_role` varchar(150) NOT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`id_role`, `libelle_role`) VALUES
(1, 'Admin'),
(2, 'Abonne');

-- --------------------------------------------------------

--
-- Structure de la table `support`
--

DROP TABLE IF EXISTS `support`;
CREATE TABLE IF NOT EXISTS `support` (
  `id_support` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(50) NOT NULL,
  `auteur` varchar(50) NOT NULL,
  `date` varchar(10) NOT NULL,
  `quantite` int(11) NOT NULL,
  `id_type` int(11) NOT NULL,
  `actif` int(11) NOT NULL,
  PRIMARY KEY (`id_support`),
  KEY `support_type_FK` (`id_type`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `support`
--

INSERT INTO `support` (`id_support`, `titre`, `auteur`, `date`, `quantite`, `id_type`, `actif`) VALUES
(1, '1984', 'George Orwell', '10/07/1949', 20, 1, 1),
(2, 'Le Seigneur des anneaux', 'J.R.R. Tolkien', '23/06/1955', 20, 1, 1),
(3, 'Thriller', 'Michael Jackson', '30/11/1982', 20, 2, 1),
(4, 'Inglourious Basterds', 'Quentin Tarantino', '19/08/2009', 20, 3, 1),
(12, 'Voyage au bout de la nuit', 'Louis Ferdinand CELINE', '1932', 5, 4, 1);

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

DROP TABLE IF EXISTS `type`;
CREATE TABLE IF NOT EXISTS `type` (
  `id_type` int(11) NOT NULL AUTO_INCREMENT,
  `libelle_type` varchar(50) NOT NULL,
  PRIMARY KEY (`id_type`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `type`
--

INSERT INTO `type` (`id_type`, `libelle_type`) VALUES
(1, 'Livre'),
(2, 'CD'),
(3, 'DVD'),
(4, 'Livre numerique');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id_utilisateur` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(150) NOT NULL,
  `prenom` varchar(150) NOT NULL,
  `mdp` varchar(50) NOT NULL,
  `adresse` varchar(150) NOT NULL,
  `code_postal` int(11) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `ville` varchar(50) NOT NULL,
  `actif` int(1) NOT NULL DEFAULT '1',
  `id_abonnement` int(11) DEFAULT NULL,
  `id_role` int(11) NOT NULL,
  PRIMARY KEY (`id_utilisateur`),
  KEY `utilisateur_abonnement_FK` (`id_abonnement`),
  KEY `utilisateur_role0_FK` (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_utilisateur`, `nom`, `prenom`, `mdp`, `adresse`, `code_postal`, `telephone`, `mail`, `ville`, `actif`, `id_abonnement`, `id_role`) VALUES
(5, 'PICHON', 'Florian', 'mdp', '11 rue du cesi', 72000, '0640145910', 'florian@mail.fr', 'Le Mans', 1, 4, 1),
(6, 'Meunier', 'Marjorie', 'marjo', '987 rue de la micheline', 76989, '098798786', 'marjorie@mail.fr', 'Portaucoin', 1, 5, 2),
(7, 'COUSIN', 'marvin', 'marvin', '22 rue de la grosse kiche', 72098, '0676897688', 'marvin.cousin@viacesi.fr', 'Coin perdu', 1, 6, 2);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `emprunt`
--
ALTER TABLE `emprunt`
  ADD CONSTRAINT `emprunt_support_FK` FOREIGN KEY (`id_support`) REFERENCES `support` (`id_support`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `emprunt_utilisateur0_FK` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `support`
--
ALTER TABLE `support`
  ADD CONSTRAINT `support_type_FK` FOREIGN KEY (`id_type`) REFERENCES `type` (`id_type`);

--
-- Contraintes pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD CONSTRAINT `utilisateur_abonnement_FK` FOREIGN KEY (`id_abonnement`) REFERENCES `abonnement` (`id_abonnement`),
  ADD CONSTRAINT `utilisateur_role0_FK` FOREIGN KEY (`id_role`) REFERENCES `role` (`id_role`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
