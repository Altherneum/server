SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `images_file_unique` (`file`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

REPLACE INTO `images` (`id`, `name`, `file`, `type`, `created_at`, `updated_at`) VALUES
(1, 'background', 'background.jpg', 'image/jpeg', '2024-04-27 12:39:57', '2024-04-27 12:39:57'),
(2, 'gif', 'gif.gif', 'image/gif', '2024-04-27 12:43:24', '2024-04-27 12:43:24'),
(3, 'icone', 'icone.png', 'image/png', '2024-04-27 12:44:11', '2024-04-27 12:44:11'),
(4, 'logogif', 'small.gif', 'image/gif', '2024-04-27 12:44:11', '2024-04-27 12:44:11');