SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(18, 'mail.users_email_verification', '1'),
(19, 'servers.default', '1'),
(20, 'theme', 'prism'),
(21, 'themes.config.prism', '{\"color\":\"#c0392b\",\"title\":\"Bienvenue sur les serveurs de jeux Minecraft Altherneum\",\"footer_description\":\"Serveurs Minecraft open source, rejoins-nous sur un Skyblock, OP-Prison, Anarchie, ... faits maison !\",\"footer_links\":[{\"name\":\"Documentation\",\"value\":\"https:\\/\\/doc.altherneum.fr\"},{\"name\":\"Librairies externes\",\"value\":\"https:\\/\\/doc.altherneum.fr\\/github\\/readme#Libs-externes\"},{\"name\":\"Google\",\"value\":\"https:\\/\\/google.com\"}]}'),
(22, 'currency', 'EUR'),
(23, 'shop.use_site_money', '1'),
(24, 'shop.month_goal', '5'),
(25, 'shop.recent_payments', '10'),
(26, 'shop.top_customer', '1'),
(27, 'shop.display_amount', '1'),
(28, 'shop.home.enabled', '1'),
(29, 'shop.home', '<p>Bienvenue sur la <span style=\"text-decoration: underline;\"><strong>boutique des serveurs de jeux Minecraft d\'Altherneum</strong></span> !<br><br>Le serveur est <strong>farm to win</strong>. La boutique contient donc <span style=\"text-decoration: underline;\"><strong>uniquement des cosmétiques,</strong></span> achetable aussi via l\'argent en jeu (Gold)</p>');