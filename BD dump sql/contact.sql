-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 29 2020 г., 13:39
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `contact`
--

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_04_26_102510_create_records_table', 1),
(4, '2020_04_26_102712_create_phones_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `phones`
--

CREATE TABLE `phones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `record_id` int(11) NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `phones`
--

INSERT INTO `phones` (`id`, `record_id`, `phone`, `created_at`, `updated_at`) VALUES
(1, 1, '+380666599900', NULL, '2020-04-28 13:25:17'),
(2, 2, '+380739983098', NULL, NULL),
(11, 11, '+380509367844', '2020-04-27 11:17:19', '2020-04-27 11:17:19'),
(12, 12, '222222222', '2020-04-27 11:18:07', '2020-04-29 07:20:39'),
(13, 12, '11111111111', '2020-04-27 11:18:07', '2020-04-29 07:20:39'),
(22, 25, '+380509367800', '2020-04-28 08:13:34', '2020-04-28 08:13:34'),
(24, 26, '0936019411', '2020-04-28 08:15:22', '2020-04-28 08:15:22'),
(25, 27, '67676767667', '2020-04-28 08:25:34', '2020-04-28 08:25:34'),
(26, 27, '7676767676', '2020-04-28 08:25:34', '2020-04-28 08:25:34'),
(27, 27, '3434343434', '2020-04-28 08:25:34', '2020-04-28 08:25:34'),
(28, 27, '+380509367800', '2020-04-28 08:25:34', '2020-04-28 08:25:34'),
(30, 28, '89909009090', '2020-04-28 09:50:09', '2020-04-28 09:50:09'),
(89, 41, '+380509367856', '2020-04-28 20:53:28', '2020-04-28 20:53:28'),
(90, 42, '+380667050210', '2020-04-28 21:14:00', '2020-04-28 21:14:00'),
(91, 42, '+380936019456', '2020-04-28 21:14:00', '2020-04-28 21:14:00'),
(92, 42, '7777777777', '2020-04-28 21:14:00', '2020-04-28 21:14:00'),
(93, 42, '3333333333', '2020-04-28 21:14:00', '2020-04-28 21:14:00'),
(94, 46, '7878787', '2020-04-29 06:56:11', '2020-04-29 06:56:11'),
(95, 46, '44444', '2020-04-29 06:56:11', '2020-04-29 06:56:11'),
(96, 46, '1111', '2020-04-29 06:56:11', '2020-04-29 06:56:11'),
(97, 46, '454', '2020-04-29 06:56:11', '2020-04-29 06:56:11'),
(98, 47, '7777', '2020-04-29 06:57:14', '2020-04-29 06:57:14'),
(99, 47, '874', '2020-04-29 06:57:14', '2020-04-29 06:57:14'),
(100, 47, '1024', '2020-04-29 06:57:14', '2020-04-29 06:57:14'),
(104, 50, '1024', '2020-04-29 07:23:21', '2020-04-29 07:23:21'),
(105, 50, '454', '2020-04-29 07:23:21', '2020-04-29 07:23:21');

-- --------------------------------------------------------

--
-- Структура таблицы `records`
--

CREATE TABLE `records` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `records`
--

INSERT INTO `records` (`id`, `name`, `last_name`, `created_at`, `updated_at`) VALUES
(1, 'Ivan4', 'Ivanov3', '2020-04-26 12:28:14', '2020-04-28 22:09:08'),
(2, 'Vasya', 'Petrov', '2020-04-26 12:30:09', NULL),
(3, 'Vladimir', 'Vagin', '2020-04-27 09:44:29', '2020-04-27 09:44:29'),
(7, 'Gera', 'Venera', '2020-04-27 11:12:08', '2020-04-27 11:12:08'),
(11, 'Evgeniy', 'Toon', '2020-04-27 11:17:19', '2020-04-27 11:17:19'),
(12, 'Тренеr', 'Великиy', '2020-04-27 11:18:07', '2020-04-29 07:20:39'),
(25, 'Эвертон', 'Li', '2020-04-28 08:13:33', '2020-04-28 08:13:33'),
(26, 'pupsic', 'Куценко', '2020-04-28 08:15:22', '2020-04-28 08:15:22'),
(27, 'Igor', 'Нежный', '2020-04-28 08:25:34', '2020-04-28 08:25:34'),
(28, 'Denis', 'Макентош', '2020-04-28 09:50:09', '2020-04-28 09:50:09'),
(41, 'Igor223', 'Petrov1', '2020-04-28 20:53:28', '2020-04-28 20:53:28'),
(42, 'Valeriy', 'Belov', '2020-04-28 21:14:00', '2020-04-28 21:14:00'),
(46, 'Igor', 'Vagin1', '2020-04-29 06:56:11', '2020-04-29 06:56:11'),
(47, 'urets', 'koy', '2020-04-29 06:57:14', '2020-04-29 06:57:14'),
(50, 'Igor13', 'Pet13', '2020-04-29 07:23:21', '2020-04-29 07:23:21');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `phones`
--
ALTER TABLE `phones`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `records`
--
ALTER TABLE `records`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `phones`
--
ALTER TABLE `phones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT для таблицы `records`
--
ALTER TABLE `records`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
