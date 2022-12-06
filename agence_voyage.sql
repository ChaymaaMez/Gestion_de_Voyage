-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : Dim 21 nov. 2021 à 23:53
-- Version du serveur :  10.4.16-MariaDB
-- Version de PHP : 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `agence_voyage`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'pass');

-- --------------------------------------------------------

--
-- Structure de la table `calendrier`
--

CREATE TABLE `calendrier` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `calendrier`
--

INSERT INTO `calendrier` (`id`, `date`) VALUES
(10, '2021-07-05'),
(9, '2021-07-05'),
(8, '2021-08-05'),
(7, '2020-03-05'),
(11, '2021-07-05'),
(12, '2021-07-05'),
(13, '2021-07-05'),
(14, '2021-07-05'),
(15, '2021-03-02'),
(16, '2021-05-07'),
(17, '2021-05-10'),
(18, '2021-04-09'),
(19, '2021-03-12'),
(20, '2021-02-12'),
(21, '2021-02-10'),
(22, '2021-02-08'),
(23, '2021-04-17'),
(24, '2021-04-15'),
(25, '2021-04-13'),
(26, '2021-05-13'),
(27, '2021-02-04'),
(28, '2021-01-08'),
(29, '2021-01-05'),
(30, '2021-01-08'),
(31, '2021-02-04'),
(32, '2021-05-13');

-- --------------------------------------------------------

--
-- Structure de la table `clients_factures`
--

CREATE TABLE `clients_factures` (
  `id` varchar(20) NOT NULL,
  `id_factures_a_payer` varchar(255) NOT NULL,
  `id_factures_reglees` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `clients_infos`
--

CREATE TABLE `clients_infos` (
  `id` int(11) NOT NULL,
  `nom` varchar(32) NOT NULL,
  `prenom` varchar(32) NOT NULL,
  `login` varchar(32) NOT NULL,
  `pass` varchar(32) NOT NULL,
  `adresse` varchar(40) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `internet` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `clients_infos`
--

INSERT INTO `clients_infos` (`id`, `nom`, `prenom`, `login`, `pass`, `adresse`, `telephone`, `mail`, `internet`) VALUES
(1, '', '', 'user', 'password', '', '', '', ''),
(2, '', '', 'user', 'password', '', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `clients_inter`
--

CREATE TABLE `clients_inter` (
  `inter_id` varchar(32) NOT NULL,
  `inter_progress` varchar(255) NOT NULL,
  `inter_finie` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `hotel1`
--

CREATE TABLE `hotel1` (
  `Name` varchar(20) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `check_in` date DEFAULT NULL,
  `check_out` date DEFAULT NULL,
  `n_child` int(11) DEFAULT NULL,
  `n_adults` int(11) DEFAULT NULL,
  `nmb_room` int(11) DEFAULT NULL,
  `message` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `hotel1`
--

INSERT INTO `hotel1` (`Name`, `email`, `phone`, `check_in`, `check_out`, `n_child`, `n_adults`, `nmb_room`, `message`) VALUES
('chama', 'chama@hotmail.com', 601210526, '2021-11-03', '2021-11-05', 1, 2, 1, 'I wish look a good room'),
('chama mezou', 'chamamezou@gmail.com', 60210215, '2021-11-11', '2021-11-19', 1, 2, 1, 'your best'),
('chami', 'chami@outlook.com', 6565656, '2021-11-24', '2021-11-27', 1, 2, 1, 'I wish look a good room'),
('chocho', 'chocho@gmail.com', 6565656, '2021-11-12', '2021-11-14', 1, 2, 1, 'I wish look a good room');

-- --------------------------------------------------------

--
-- Structure de la table `location`
--

CREATE TABLE `location` (
  `Name` varchar(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `depart` varchar(30) DEFAULT NULL,
  `destination` varchar(30) DEFAULT NULL,
  `packup` time DEFAULT NULL,
  `daTe` date DEFAULT NULL,
  `comfort` varchar(10) DEFAULT NULL,
  `adults` int(11) DEFAULT NULL,
  `children` int(11) DEFAULT NULL,
  `message` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `location`
--

INSERT INTO `location` (`Name`, `email`, `depart`, `destination`, `packup`, `daTe`, `comfort`, `adults`, `children`, `message`) VALUES
('', '', '', '', '00:00:00', '0000-00-00', '', 0, 0, ''),
('bhgg', 'hggb@hgbh.gh', 'hhhjhj', 'gyhg', '20:20:00', '0000-00-00', 'Standart', 1, 3, 'djbhdjuhdbgh'),
('cha', 'hyg@gd.gu', 'hhg', 'hhjk', '20:20:00', '0000-00-00', 'cheap', 1, 0, 'geyugyugyug'),
('MEZOUARA CHAYMAA', 'mezouaraCHAYMAA@gmail.com', 'BENI MELLAL', 'CASABLANCA', '21:42:00', '0000-00-00', 'Standart', 2, 0, 'I WISH A GIVE ME GOOD CAR');

-- --------------------------------------------------------

--
-- Structure de la table `taxi1`
--

CREATE TABLE `taxi1` (
  `Name` varchar(20) NOT NULL,
  `phone` int(11) DEFAULT NULL,
  `location_origine` varchar(30) DEFAULT NULL,
  `destination` varchar(30) DEFAULT NULL,
  `n_pers` int(11) DEFAULT NULL,
  `daTe` date DEFAULT NULL,
  `packup` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `taxi1`
--

INSERT INTO `taxi1` (`Name`, `phone`, `location_origine`, `destination`, `n_pers`, `daTe`, `packup`) VALUES
('', 0, '', '', 0, '0000-00-00', '00:00:00'),
('chama', 601210526, 'fbs', 'casa', 2, '2021-10-28', '20:20:00'),
('chaymaa mezou', 601210526, 'haha', 'uiui', 3, '2021-11-27', '00:24:00'),
('chaymaa mezouara', 601210526, 'haha', 'uiui', 3, '2021-11-27', '00:24:00'),
('gjnj', 4758, '', 'ygyhg', 0, '2021-10-29', '06:28:00'),
('hjgy', 0, 'gyg', 'ygy', 1, '2021-10-28', '05:33:00'),
('hjhjuh', 0, 'hghyug', 'hyugy', 2, '2020-10-20', '20:20:00');

-- --------------------------------------------------------

--
-- Structure de la table `tb_client`
--

CREATE TABLE `tb_client` (
  `contact_client` varchar(80) NOT NULL,
  `nom_client` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `tb_client`
--

INSERT INTO `tb_client` (`contact_client`, `nom_client`) VALUES
('15263', 'CHAMA'),
('202020', 'MEZOUARA'),
('63090922', 'THEODORE MAX'),
('90347611', 'IDRIS SALEH'),
('90904545', 'LOIC ALFRED');

-- --------------------------------------------------------

--
-- Structure de la table `tb_service`
--

CREATE TABLE `tb_service` (
  `id_service` int(11) NOT NULL,
  `type_service` varchar(50) NOT NULL,
  `description_srv` text NOT NULL,
  `montant_srv` decimal(9,2) NOT NULL,
  `date_srv` datetime NOT NULL,
  `client_num` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `tb_service`
--

INSERT INTO `tb_service` (`id_service`, `type_service`, `description_srv`, `montant_srv`, `date_srv`, `client_num`) VALUES
(2, 'RESTAURANT', '2 PLATS DE CARPE BRAISEE.', '4000.00', '2021-04-22 15:21:40', '90904545'),
(4, 'RESTAURANT', '1 CAFE  1 SHANDWICH ET 2 GATEAUX', '2500.00', '2021-04-22 17:34:11', '63090922'),
(5, 'CHAMBRE', 'OCCUPATION DE  LA CHAMBRE NUMERO 10\n POUR  1 JOUR', '40000.00', '2021-04-22 17:38:05', '63090922'),
(6, 'PISCINE', '2 HEURES DE BAIN', '5000.00', '2021-04-22 17:50:43', '63090922'),
(7, 'GUIDE', 'VISITE AU CENTRE VILLE', '12500.00', '2021-04-22 17:54:33', '90904545');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(3, 'chama', 'jhbdj', 'cad6ddf10c7f185baa569652306063313da25e747d9c7c2ce29f5b1d3bd216cb'),
(4, 'aa', 'hjhj', '73a2af8864fc500fa49048bf3003776c19938f360e56bd03663866fb3087884a'),
(5, 'gyg', 'tgy-t', '8c6e72bcf08bf0d61f2120cd8882f9f62a2758d52a68b8e4a33f1ee0a4923a58'),
(6, 'loubna', 'loubna@gmail.com', '2426efe9b1c9b72a093195512b5ab1a2cdf0fa3491bbd403452ac4c81ce159b5'),
(7, 'cham', 'mezouarahafssa@gmail.com', 'd54123de468bd42ea00dafbd777f85fe5fa1ff6404d9838c007953c25c92a1c5');

-- --------------------------------------------------------

--
-- Structure de la table `vol`
--

CREATE TABLE `vol` (
  `Name` varchar(20) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `flying_from` varchar(30) DEFAULT NULL,
  `flying_to` varchar(30) DEFAULT NULL,
  `departing` date DEFAULT NULL,
  `arriving` date DEFAULT NULL,
  `comfort` varchar(20) DEFAULT NULL,
  `adults` int(11) DEFAULT NULL,
  `children` int(11) DEFAULT NULL,
  `class` varchar(20) DEFAULT NULL,
  `message` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `vol`
--

INSERT INTO `vol` (`Name`, `email`, `flying_from`, `flying_to`, `departing`, `arriving`, `comfort`, `adults`, `children`, `class`, `message`) VALUES
('cham', 'gfg@gy.', 'casa', 'fparis', '2021-10-10', '2021-10-23', 'Multi-City', 1, 1, 'First Class', 'gvzgvsgzvf'),
('gjg', 'uhu@', 'gjhyg', 'ygy', '2021-11-06', '2021-11-14', 'Roundtrip', 1, 1, 'First Class', 'hjgyjgj');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `calendrier`
--
ALTER TABLE `calendrier`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `clients_factures`
--
ALTER TABLE `clients_factures`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `clients_infos`
--
ALTER TABLE `clients_infos`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `clients_inter`
--
ALTER TABLE `clients_inter`
  ADD PRIMARY KEY (`inter_id`);

--
-- Index pour la table `hotel1`
--
ALTER TABLE `hotel1`
  ADD PRIMARY KEY (`Name`);

--
-- Index pour la table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`Name`);

--
-- Index pour la table `taxi1`
--
ALTER TABLE `taxi1`
  ADD PRIMARY KEY (`Name`);

--
-- Index pour la table `tb_client`
--
ALTER TABLE `tb_client`
  ADD PRIMARY KEY (`contact_client`);

--
-- Index pour la table `tb_service`
--
ALTER TABLE `tb_service`
  ADD PRIMARY KEY (`id_service`),
  ADD KEY `fk` (`client_num`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `vol`
--
ALTER TABLE `vol`
  ADD PRIMARY KEY (`Name`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `calendrier`
--
ALTER TABLE `calendrier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `clients_infos`
--
ALTER TABLE `clients_infos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `tb_service`
--
ALTER TABLE `tb_service`
  MODIFY `id_service` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `tb_service`
--
ALTER TABLE `tb_service`
  ADD CONSTRAINT `fk` FOREIGN KEY (`client_num`) REFERENCES `tb_client` (`contact_client`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
