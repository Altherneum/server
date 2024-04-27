SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `settings` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `settings` (`id`, `name`, `value`) VALUES
(1, 'copyright', 'Copyright © 2024 Altherneum - Tous droits réservés.'),
(2, 'money', 'points'),
(3, 'register', '0'),
(4, 'name', 'Altherneum'),
(5, 'url', 'http://Altherneum'),
(6, 'timezone', 'UTC'),
(7, 'locale', 'fr'),
(8, 'users.money_transfer', '1'),
(9, 'keywords', 'Minecraft, Altherneum, Hub, SkyBlock, Survie, Anarchie, RPG, Serveur, Serveurs'),
(10, 'icon', 'icone.png'),
(11, 'logo', 'icone.png'),
(12, 'background', 'background.jpg'),
(13, 'description', 'Serveurs Minecraft open source, rejoins-nous sur un Skyblock, OP-Prison, Anarchie, ... faits maison !');

ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_name_unique` (`name`);

ALTER TABLE `settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;