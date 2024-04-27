SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE IF NOT EXISTS `settings` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `settings` (`id`, `name`, `value`) VALUES
(1, 'copyright', 'Copyright © 2024 Altherneum - Tous droits réservés.') ON DUPLICATE KEY UPDATE ID = 1,
(2, 'money', 'points') ON DUPLICATE KEY UPDATE ID = 2,
(3, 'register', '0') ON DUPLICATE KEY UPDATE ID = 3,
(4, 'name', 'Altherneum') ON DUPLICATE KEY UPDATE ID = 4,
(5, 'url', 'https://Altherneum') ON DUPLICATE KEY UPDATE ID = 5,
(6, 'timezone', 'UTC') ON DUPLICATE KEY UPDATE ID = 6,
(7, 'locale', 'fr') ON DUPLICATE KEY UPDATE ID = 7,
(8, 'users.money_transfer', '1') ON DUPLICATE KEY UPDATE ID = 8,
(9, 'keywords', 'Minecraft, Altherneum, Hub, SkyBlock, Survie, Anarchie, RPG, Serveur, Serveurs') ON DUPLICATE KEY UPDATE ID = 9,
(10, 'icon', 'icone.png') ON DUPLICATE KEY UPDATE ID = 10,
(11, 'logo', 'icone.png') ON DUPLICATE KEY UPDATE ID = 11,
(12, 'background', 'background.jpg') ON DUPLICATE KEY UPDATE ID = 12,
(13, 'description', 'Serveurs Minecraft open source, rejoins-nous sur un Skyblock, OP-Prison, Anarchie, ... faits maison !') ON DUPLICATE KEY UPDATE ID = 13;

ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_name_unique` (`name`);

ALTER TABLE `settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;