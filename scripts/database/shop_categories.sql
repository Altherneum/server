SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

ALTER TABLE `shop_categories`
  ADD CONSTRAINT `shop_categories_parent_id_foreign`;

DROP TABLE IF EXISTS `shop_categories`;
CREATE TABLE IF NOT EXISTS `shop_categories` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `position` int UNSIGNED NOT NULL DEFAULT '0',
  `parent_id` int UNSIGNED DEFAULT NULL,
  `cumulate_purchases` tinyint(1) NOT NULL DEFAULT '0',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `shop_categories_slug_unique` (`slug`),
  KEY `shop_categories_parent_id_foreign` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

REPLACE INTO `shop_categories` (`id`, `name`, `slug`, `description`, `position`, `parent_id`, `cumulate_purchases`, `is_enabled`, `created_at`, `updated_at`) VALUES
(1, 'SkyBlock', 'skyblock', NULL, 0, NULL, 1, 1, '2024-04-28 13:44:40', '2024-04-28 13:44:40'),
(2, 'Survie', 'survie', NULL, 0, NULL, 1, 1, '2024-04-28 13:44:52', '2024-04-28 13:44:52'),
(3, 'Anarchie', 'anarchie', NULL, 0, NULL, 1, 1, '2024-04-28 13:45:03', '2024-04-28 13:45:03'),
(4, 'OP-Prison', 'op-prison', NULL, 0, NULL, 1, 1, '2024-04-28 13:45:16', '2024-04-28 13:45:16'),
(5, 'Hub', 'hub', NULL, 0, NULL, 1, 1, '2024-04-28 13:45:25', '2024-04-28 13:45:25'),
(6, 'Global', 'global', NULL, 0, NULL, 1, 1, '2024-04-28 13:45:36', '2024-04-28 13:45:43'),
(7, 'RPG', 'rpg', NULL, 0, NULL, 1, 1, '2024-04-28 13:46:01', '2024-04-28 13:46:01');


ALTER TABLE `shop_categories`
  ADD CONSTRAINT `shop_categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `shop_categories` (`id`);