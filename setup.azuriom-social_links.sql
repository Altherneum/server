SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `social_links` (
  `id` int UNSIGNED NOT NULL PRIMARY,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int UNSIGNED NOT NULL DEFAULT '0',
  `properties` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `social_links` (`id`, `type`, `value`, `position`, `properties`, `created_at`, `updated_at`) VALUES
(1, 'twitter', 'https://twitter.com/Altherneum', 0, NULL, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(2, 'youtube', 'https://youtube.com/@Altherneum', 0, NULL, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(3, 'discord', 'https://doc.altherneum.fr/discord', 0, NULL, '2024-01-01 00:00:00', '2024-01-01 00:00:00'), ON DUPLICATE KEY UPDATE
  type=VALUES(type),
  value=VALUES(value),
  position=VALUES(position),
  properties=VALUES(properties),
  created_at=VALUES(created_at),
  updated_at=VALUES(updated_at);

ALTER TABLE `social_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;