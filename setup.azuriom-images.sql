SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `images` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `images` (`id`, `name`, `file`, `type`, `created_at`, `updated_at`) VALUES
(1, 'background', 'background.jpg', 'image/jpeg', '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(2, 'gif', 'gif.gif', 'image/gif', '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(3, 'icone', 'icone.png', 'image/png', '2024-01-01 00:00:00', '2024-01-01 00:00:00');

ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `images_file_unique` (`file`);

ALTER TABLE `images`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;