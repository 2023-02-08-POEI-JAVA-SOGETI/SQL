SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `rentcar`
--

-- --------------------------------------------------------

--
-- Structure de la table `agency`
--

DROP TABLE IF EXISTS `agency`;
CREATE TABLE IF NOT EXISTS `agency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(150) DEFAULT NULL,
  `street` int(150) DEFAULT NULL,
  `number_street` int(3) DEFAULT NULL,
  `city` int(150) DEFAULT NULL,
  `postal_code` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `driver`
--

DROP TABLE IF EXISTS `driver`;
CREATE TABLE IF NOT EXISTS `driver` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `licence_id` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `vehicule` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vehicule` (`vehicule`,`date_start`,`date_end`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `electric`
--

DROP TABLE IF EXISTS `electric`;
CREATE TABLE IF NOT EXISTS `electric` (
  `level_in` int(3) NOT NULL,
  `level_out` int(3) NOT NULL,
  `state_engine_in` enum('VG','G','M','B','VB') NOT NULL,
  `state_engine_out` enum('VG','G','M','B','VB') NOT NULL,
  `vehicule` int(11) NOT NULL,
  PRIMARY KEY (`vehicule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `gasoline`
--

DROP TABLE IF EXISTS `gasoline`;
CREATE TABLE IF NOT EXISTS `gasoline` (
  `fuel_in` int(3) NOT NULL,
  `fuel_out` int(3) NOT NULL,
  `state_engine_in` enum('VG','G','M','B','VB') NOT NULL,
  `state_engine_out` enum('VG','G','M','B','VB') NOT NULL,
  `vehicule` int(11) NOT NULL,
  PRIMARY KEY (`vehicule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
CREATE TABLE IF NOT EXISTS `invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_issue` datetime NOT NULL,
  `amount_repair` decimal(10,2) NOT NULL,
  `agency` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_invoice_agency` (`agency`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `vehicule`
--

DROP TABLE IF EXISTS `vehicule`;
CREATE TABLE IF NOT EXISTS `vehicule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kilometer` int(6) NOT NULL,
  `label` varchar(70) NOT NULL,
  `brand` varchar(70) NOT NULL,
  `licence_number` varchar(30) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `state_body_in` enum('VG','G','M','B','VB') NOT NULL,
  `state_body_out` enum('VG','G','M','B','VB') NOT NULL,
  `agency` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_vehicule_agency` (`agency`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `driver`
--
ALTER TABLE `driver`
  ADD CONSTRAINT `fk_driver_vehicule` FOREIGN KEY (`vehicule`) REFERENCES `vehicule` (`id`);

--
-- Contraintes pour la table `electric`
--
ALTER TABLE `electric`
  ADD CONSTRAINT `fk_electric_vehicule` FOREIGN KEY (`vehicule`) REFERENCES `vehicule` (`id`);

--
-- Contraintes pour la table `gasoline`
--
ALTER TABLE `gasoline`
  ADD CONSTRAINT `fk_gasoline_vehicule` FOREIGN KEY (`vehicule`) REFERENCES `vehicule` (`id`);

--
-- Contraintes pour la table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `fk_invoice_agency` FOREIGN KEY (`agency`) REFERENCES `agency` (`id`);

--
-- Contraintes pour la table `vehicule`
--
ALTER TABLE `vehicule`
  ADD CONSTRAINT `fk_vehicule_agency` FOREIGN KEY (`agency`) REFERENCES `agency` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
