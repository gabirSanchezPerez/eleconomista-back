-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 08-01-2025 a las 00:11:41
-- Versión del servidor: 10.11.10-MariaDB
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `u559579219_economistaBD`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fields`
--

CREATE TABLE `fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `options` varchar(255) DEFAULT NULL,
  `name_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `fields`
--

INSERT INTO `fields` (`id`, `form_id`, `label`, `type`, `required`, `created_at`, `updated_at`, `options`, `name_id`) VALUES
(1, 5, 'required|string', 'required|string', 0, '2025-01-07 21:27:01', '2025-01-07 21:27:01', NULL, 'required|string'),
(2, 6, 'Apellidos', 'text', 0, '2025-01-07 21:29:09', '2025-01-07 21:29:09', NULL, 'name_0'),
(3, 6, 'Nombre', 'text', 0, '2025-01-07 21:29:09', '2025-01-07 21:29:09', NULL, 'name_1'),
(4, 7, 'Apellidos', 'text', 0, '2025-01-07 22:16:46', '2025-01-07 22:16:46', NULL, 'name_0'),
(5, 7, 'Estudios', 'check', 0, '2025-01-07 22:16:46', '2025-01-07 22:16:46', 'Ingles, Español, Italiana', 'estudios_1'),
(6, 8, 'Nombre', 'text', 0, '2025-01-07 22:43:41', '2025-01-07 22:43:41', NULL, 'text-0'),
(7, 8, 'Correo electrónico', 'email', 0, '2025-01-07 22:43:41', '2025-01-07 22:43:41', NULL, 'email-1'),
(8, 8, 'Color', 'select', 0, '2025-01-07 22:43:41', '2025-01-07 22:43:41', NULL, 'select-2'),
(9, 9, 'Nombre', 'text', 0, '2025-01-07 22:44:55', '2025-01-07 22:44:55', NULL, 'text-0'),
(10, 9, 'Correo electrónico', 'email', 0, '2025-01-07 22:44:55', '2025-01-07 22:44:55', NULL, 'email-1'),
(11, 9, 'Color', 'select', 0, '2025-01-07 22:44:55', '2025-01-07 22:44:55', NULL, 'select-2'),
(12, 9, 'Nacimiento', 'date', 0, '2025-01-07 22:44:55', '2025-01-07 22:44:55', NULL, 'date-3'),
(13, 9, 'Imagen', 'file', 0, '2025-01-07 22:44:55', '2025-01-07 22:44:55', NULL, 'file-4'),
(14, 10, 'Nombre', 'text', 0, '2025-01-07 22:46:13', '2025-01-07 22:46:13', NULL, 'text-0'),
(15, 10, 'Correo electrónico', 'email', 0, '2025-01-07 22:46:13', '2025-01-07 22:46:13', NULL, 'email-1'),
(16, 10, 'Color', 'select', 0, '2025-01-07 22:46:14', '2025-01-07 22:46:14', NULL, 'select-2'),
(17, 10, 'Nacimiento', 'date', 0, '2025-01-07 22:46:14', '2025-01-07 22:46:14', NULL, 'date-3'),
(18, 10, 'Imagen', 'file', 0, '2025-01-07 22:46:14', '2025-01-07 22:46:14', NULL, 'file-4'),
(19, 11, 'Texto', 'text', 0, '2025-01-08 00:05:53', '2025-01-08 00:05:53', NULL, 'text-0'),
(20, 11, 'Correo electrónico', 'email', 0, '2025-01-08 00:05:53', '2025-01-08 00:05:53', NULL, 'email-1'),
(21, 11, 'Contraseña', 'password', 0, '2025-01-08 00:05:53', '2025-01-08 00:05:53', NULL, 'password-2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forms`
--

CREATE TABLE `forms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `forms`
--

INSERT INTO `forms` (`id`, `name`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '4618548', 1, '2025-01-05 21:21:36', '2025-01-07 21:21:36'),
(2, '4618548', 1, '2025-01-05 21:22:11', '2025-01-07 21:22:11'),
(3, '4618548', 1, '2025-01-06 21:24:47', '2025-01-07 21:24:47'),
(4, '4618548', 1, '2025-01-06 21:26:08', '2025-01-07 21:26:08'),
(5, '4618548', 1, '2025-01-07 21:27:00', '2025-01-07 21:27:00'),
(6, '4618548', 1, '2025-01-07 21:29:08', '2025-01-07 21:29:08'),
(7, '4618548123', 1, '2025-01-07 22:16:46', '2025-01-07 22:16:46'),
(8, '1736289820823', 1, '2025-01-07 22:43:41', '2025-01-07 22:43:41'),
(9, '1736289894413', 1, '2025-01-07 22:44:55', '2025-01-07 22:44:55'),
(10, '1736289972649', 1, '2025-01-07 22:46:13', '2025-01-07 22:46:13'),
(11, '1736294752541', 2, '2025-01-08 00:05:53', '2025-01-08 00:05:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_12_28_201009_create_personal_access_tokens_table', 1),
(5, '2024_12_28_202001_create_forms_table', 2),
(6, '2024_12_28_202159_create_fields_table', 2),
(7, '2024_12_29_162646_create_personal_access_tokens_table', 3),
(8, '2024_12_30_013727_add_to_fields_table', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth_token', '055f1c8232e8265c2c5615805f3251d63acf4f64849cc847aa7640055031672f', '[\"*\"]', NULL, NULL, '2024-12-30 01:46:40', '2024-12-30 01:46:40'),
(2, 'App\\Models\\User', 1, 'auth_token', '61b13a61d5deb70085ea83e6ab31829c7ca6aa2befd646888a3508cec5cad872', '[\"*\"]', NULL, NULL, '2025-01-04 15:30:13', '2025-01-04 15:30:13'),
(3, 'App\\Models\\User', 1, 'auth_token', '3342c234ee6d6056673968524f7aadb9df485b47a26e086888af6202bb2160fb', '[\"*\"]', NULL, NULL, '2025-01-04 17:13:35', '2025-01-04 17:13:35'),
(4, 'App\\Models\\User', 1, 'auth_token', 'd5906711fddf3c8cb0a9164bf9a1084d843ab3ecafe9af1fb3bfd92ff99c0781', '[\"*\"]', NULL, NULL, '2025-01-04 17:14:00', '2025-01-04 17:14:00'),
(5, 'App\\Models\\User', 1, 'auth_token', 'b215533e67da02b97826d53c0c83d798f04f9ef74987c4ab201c947657e0f750', '[\"*\"]', NULL, NULL, '2025-01-04 17:14:41', '2025-01-04 17:14:41'),
(6, 'App\\Models\\User', 1, 'auth_token', '978e2af9bd28098f4523cf370e995801f2bcb160a929601db29b6f751c913823', '[\"*\"]', NULL, NULL, '2025-01-04 17:20:09', '2025-01-04 17:20:09'),
(7, 'App\\Models\\User', 1, 'auth_token', '8904be06ba6535c91350658efce2f0ece509858790449ae63256db2167305705', '[\"*\"]', '2025-01-07 14:11:52', NULL, '2025-01-04 17:57:36', '2025-01-07 14:11:52'),
(8, 'App\\Models\\User', 1, 'auth_token', '3fc65c97f90719dd0686a106d08d5fb71cb4f6f6ded83c0afee74b8ce31ec312', '[\"*\"]', NULL, NULL, '2025-01-04 18:13:11', '2025-01-04 18:13:11'),
(9, 'App\\Models\\User', 1, 'auth_token', '1f562d5de1d70374695baf9fd3641c2d5f6d5817fd962797bfdc95fe9e29efdb', '[\"*\"]', NULL, NULL, '2025-01-04 18:17:38', '2025-01-04 18:17:38'),
(10, 'App\\Models\\User', 1, 'auth_token', '560a8f7450352f9a2e945da7104d77b18ca7cb83ffe33f1cdb7ddaf94b7dea95', '[\"*\"]', NULL, NULL, '2025-01-04 19:27:23', '2025-01-04 19:27:23'),
(11, 'App\\Models\\User', 1, 'auth_token', '163afef59976bd1d7a8146e2b5a18f7540741371d254f294550aaaf3176e33ca', '[\"*\"]', '2025-01-04 19:30:52', NULL, '2025-01-04 19:30:51', '2025-01-04 19:30:52'),
(12, 'App\\Models\\User', 1, 'auth_token', 'fceebc30aed1ff6550ba9af382244d0b338c7f891c2b18ac019f9cccc0a6905e', '[\"*\"]', '2025-01-07 14:04:57', NULL, '2025-01-04 19:34:34', '2025-01-07 14:04:57'),
(13, 'App\\Models\\User', 1, 'auth_token', 'ca89acae7018a3784be4808860d4cabbe4647364d1ff3e2af525c8f43b769e26', '[\"*\"]', '2025-01-07 14:19:48', NULL, '2025-01-07 14:11:38', '2025-01-07 14:19:48'),
(14, 'App\\Models\\User', 1, 'auth_token', '55b077bbe612b1d9f65dde289522fc5801317a9d1a2661faacefc38405c3ff2b', '[\"*\"]', '2025-01-07 21:06:51', NULL, '2025-01-07 20:47:48', '2025-01-07 21:06:51'),
(15, 'App\\Models\\User', 1, 'auth_token', 'd38a3d146f13c314e3b61f7082eaa240169d801651434d0c87d06d62e51ce852', '[\"*\"]', NULL, NULL, '2025-01-07 20:58:15', '2025-01-07 20:58:15'),
(16, 'App\\Models\\User', 1, 'auth_token', '467d3e04dc2f1bb1393626912620226905e4cb1bd08aaa6815010751a3efab17', '[\"*\"]', NULL, NULL, '2025-01-07 21:07:46', '2025-01-07 21:07:46'),
(17, 'App\\Models\\User', 1, 'auth_token', 'c68612902a0c652d8974a637ed4bd0d296584f83dc9131af10027fa903cd8353', '[\"*\"]', '2025-01-07 22:17:06', NULL, '2025-01-07 21:09:42', '2025-01-07 22:17:06'),
(18, 'App\\Models\\User', 1, 'auth_token', '371463e1d8ce5051adde3ca6d54d0ec7f731f149c0da60f34b11cb8ddb08eee3', '[\"*\"]', '2025-01-08 00:03:43', NULL, '2025-01-07 22:26:34', '2025-01-08 00:03:43'),
(19, 'App\\Models\\User', 2, 'auth_token', '4ae688d482209638a81b7d17560af47e3073ff85c634fb353ea463117e5bc352', '[\"*\"]', '2025-01-08 00:10:49', NULL, '2025-01-08 00:05:25', '2025-01-08 00:10:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Gabir', 'user@nextmail.com', NULL, '$2y$12$q2xwoIv04Vkg8k4AYTcwnegAte0M8apssnkZHF.kniwpk3U0S92rq', NULL, '2024-12-29 15:38:48', '2024-12-29 15:38:48'),
(2, 'Camilo', 'admin@mail.com', NULL, '$2y$12$yS2BlR7DMpayrROkg/h4/.oKgn3SbsxZ7y0/.2w6cDldnWF3jYGv.', NULL, '2025-01-08 00:05:19', '2025-01-08 00:05:19');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fields_form_id_foreign` (`form_id`);

--
-- Indices de la tabla `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forms_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `fields`
--
ALTER TABLE `fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `forms`
--
ALTER TABLE `forms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `fields`
--
ALTER TABLE `fields`
  ADD CONSTRAINT `fields_form_id_foreign` FOREIGN KEY (`form_id`) REFERENCES `forms` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `forms`
--
ALTER TABLE `forms`
  ADD CONSTRAINT `forms_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
