SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


DROP TABLE IF EXISTS `social_links`;
CREATE TABLE IF NOT EXISTS `social_links` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int UNSIGNED NOT NULL DEFAULT '0',
  `properties` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

REPLACE INTO `social_links` (`id`, `type`, `value`, `position`, `properties`, `created_at`, `updated_at`) VALUES
(1, 'twitter', 'https://twitter.com/test', 1, NULL, '2024-04-27 14:58:41', '2024-04-27 16:09:50'),
(2, 'youtube', 'https://Youtube.com/@Altherneum', 2, NULL, '2024-04-27 14:58:41', '2024-04-27 16:09:50'),
(3, 'discord', 'https://doc.altherneum.fr/discord', 0, NULL, '2024-04-27 16:14:26', '2024-04-27 16:14:26'),
(4, 'other', 'https://doc.altherneum.fr', 0, '{\"title\":\"Documentation\",\"icon\":\"bi bi-book\",\"color\":\"#2196f3\"}', '2024-04-27 16:15:08', '2024-04-27 16:15:08');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
