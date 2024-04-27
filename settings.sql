SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

REPLACE INTO `settings` (`id`, `name`, `value`) VALUES
(1, 'copyright', 'Copyright © 2024 Altherneum - Tous droits réservés.'),
(2, 'money', 'points'),
(3, 'register', '0'),
(4, 'name', 'Altherneum'),
(5, 'url', 'https://Altherneum'),
(6, 'timezone', 'UTC'),
(7, 'locale', 'fr'),
(8, 'users.money_transfer', '1'),
(9, 'keywords', 'Serveur, Minecraft, SkyBlock, RPG, OP-Prison, Survie, Anarchie'),
(10, 'icon', 'icone.png'),
(11, 'logo', 'icone.png'),
(12, 'background', 'background.jpg'),
(13, 'description', 'Serveurs Minecraft open source, rejoins-nous sur un Skyblock, OP-Prison, Anarchie, ... faits maison !'),
(14, 'mail.from.address', 'mail@altherneum.fr'),
(15, 'mail.mailer', 'sendmail'),
(16, 'mail.smtp.host', 'mailhog'),
(17, 'mail.smtp.port', '1025'),
(18, 'mail.users_email_verification', '1');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
