SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS `navbar_elements`;
SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE IF NOT EXISTS `navbar_elements` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int UNSIGNED DEFAULT NULL,
  `new_tab` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `navbar_elements_parent_id_foreign` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

REPLACE INTO `navbar_elements` (`id`, `name`, `icon`, `value`, `position`, `type`, `parent_id`, `new_tab`) VALUES
(1, 'Accueil', 'bi bi-house', '#', 1, 'home', NULL, 0),
(2, 'Boutique', 'bi bi-shop', 'shop.home', 2, 'plugin', NULL, 0),
(3, 'Discord', 'bi bi-discord', 'https://doc.altherneum.fr/discord', 3, 'link', NULL, 1);


ALTER TABLE `navbar_elements`
  ADD CONSTRAINT `navbar_elements_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `navbar_elements` (`id`);