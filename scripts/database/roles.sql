SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS `roles`;
SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` char(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `power` int UNSIGNED NOT NULL DEFAULT '0',
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

REPLACE INTO `roles` (`id`, `name`, `icon`, `color`, `power`, `is_admin`, `created_at`, `updated_at`) VALUES
(1, 'Membre', NULL, 'a5a5a5', 0, 0, '2024-08-20 18:44:30', '2024-08-20 18:44:30'),
(2, 'Admin', NULL, 'e10d11', 10, 1, '2024-08-20 18:44:30', '2024-08-20 18:44:30');