SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS `shop_packages`;
SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE IF NOT EXISTS `shop_packages` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(8,2) UNSIGNED NOT NULL,
  `commands` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int UNSIGNED DEFAULT NULL,
  `money` decimal(8,2) UNSIGNED DEFAULT NULL,
  `giftcard_balance` decimal(8,2) UNSIGNED DEFAULT NULL,
  `custom_price` tinyint(1) NOT NULL DEFAULT '0',
  `required_roles` text COLLATE utf8mb4_unicode_ci,
  `user_limit` int UNSIGNED DEFAULT NULL,
  `user_limit_period` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `global_limit` int UNSIGNED DEFAULT NULL,
  `global_limit_period` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `required_packages` text COLLATE utf8mb4_unicode_ci,
  `has_quantity` tinyint(1) NOT NULL DEFAULT '1',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_packages_category_id_foreign` (`category_id`),
  KEY `shop_packages_role_id_foreign` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

REPLACE INTO `shop_packages` (`id`, `category_id`, `name`, `short_description`, `description`, `position`, `image`, `price`, `commands`, `role_id`, `money`, `giftcard_balance`, `custom_price`, `required_roles`, `user_limit`, `user_limit_period`, `global_limit`, `global_limit_period`, `required_packages`, `has_quantity`, `is_enabled`, `created_at`, `updated_at`) VALUES
(1, 6, 'Message de connexion / déconnexion', 'Affiche un message lorsque vous êtes connecté ou déconnecté du serveur', '<p>1 Jours par point</p>', 0, 'KGiFBysVRTCCHpywcDlYacOC658Ct3aSjANumpfY.webp', 1.00, '[{\"trigger\":\"purchase\",\"require_online\":\"0\",\"commands\":[\"bonus {player} add JoinQuitMessage {quantity}\"],\"server\":\"1\"}]', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '[]', 1, 1, '2024-05-01 19:37:09', '2024-05-01 19:55:22'),
(2, 6, 'Aura de téléportation', 'Affiche une aura lorsque vous êtes téléporté', '<p>1 Jours par point</p>', 0, '3YYoySEyHRE96Go88s2EOZQKWEtTGuPSUqFGEme3.webp', 1.00, '[{\"trigger\":\"purchase\",\"require_online\":\"0\",\"commands\":[\"bonus {player} add AuraTP {quantity}\"],\"server\":\"1\"}]', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '[]', 1, 1, '2024-05-01 20:18:00', '2024-05-01 20:19:38'),
(3, 6, 'VIP', 'Devenez un VIP', '<p>1 Jours par point<br>Permet de se connecter aux serveurs même complet !</p>', 0, 'do4nC1tRZnYFmhSqRlFT6TJla2D8G9NRa8wpZYqd.webp', 1.00, '[{\"trigger\":\"purchase\",\"require_online\":\"0\",\"commands\":[\"bonus {player} add VIP {quantity}\"],\"server\":\"1\"}]', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '[]', 1, 1, '2024-05-01 20:20:01', '2024-05-01 20:21:19'),
(4, 6, 'VIP+', 'Devenez un VIP+', '<p>1 Jours par point<br>Permet de se connecter aux serveurs même complet !<br>Affichez votre statut VIP+ !</p>', 0, 'gU3xh3crQbvcSkez1RaC5hfy1H1SLvKSRl3AaYhZ.webp', 1.00, '[{\"trigger\":\"purchase\",\"require_online\":\"0\",\"commands\":[\"bonus {player} add VIPPlus {quantity}\"],\"server\":\"1\"}]', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '[]', 1, 1, '2024-05-01 20:22:05', '2024-05-01 20:23:21'),
(5, 6, 'Vol', 'Devenez un VIP+', '<p>1 Jours par point<br>Permet de voler dans les airs<br>- Dans le Spawn uniquement</p>\r\n<p>- Sur les îles SkyBlock</p>', 0, 'dN7BlGBqaEu4AsIK3LGm65gQMdn79b3jTrpYyOH8.webp', 1.00, '[{\"trigger\":\"purchase\",\"require_online\":\"0\",\"commands\":[\"bonus {player} add Fly {quantity}\"],\"server\":\"1\"}]', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '[]', 1, 1, '2024-05-01 20:23:30', '2024-05-01 20:25:27');

ALTER TABLE `shop_packages`
  ADD CONSTRAINT `shop_packages_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `shop_categories` (`id`),
  ADD CONSTRAINT `shop_packages_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE SET NULL;