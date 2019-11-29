-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 29 2019 г., 15:02
-- Версия сервера: 5.7.20
-- Версия PHP: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test-task`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`, `parent_id`) VALUES
(1, 'Собакам', NULL),
(2, 'Кошкам', NULL),
(4, 'Питание для собак', 1),
(5, 'Аксессуары для собак', 1),
(6, 'Здоровье собак', 1),
(7, 'Питание для кошек', 2),
(8, 'Аксессуары для кошек', 2),
(9, 'Здоровье кошек', 2),
(10, 'Сухой корм для собак', 4),
(11, 'Консервы для собак', 4),
(12, 'Лечебный корм для собак', 4),
(13, 'Лакомства для собак', 4),
(14, 'Посуда для собак', 4),
(15, 'Средства от паразитов для собак', 6),
(16, 'Витамины и добавки для собак', 6),
(17, 'Шампуни и спреи для собак', 6),
(18, 'Средства гигиены для собак', 6),
(19, 'Переноски, сумки для собак', 5),
(20, 'Игрушки и развлечения для собак', 5),
(21, 'Лежанки, матрасы для собак', 5),
(22, 'Аксессуары для прогулок с собаками', 5),
(23, 'Автоаксессуары для собак', 5),
(24, 'Одежда для собак', 5),
(25, 'Сухой корм для кошек', 7),
(26, 'Консервы для кошек', 7),
(27, 'Лечебный корм для кошек', 7),
(28, 'Лакомства для кошек', 7),
(29, 'Посуда для кошек', 7),
(30, 'Средства от паразитов для кошек', 9),
(31, 'Витамины и добавки для кошек', 9),
(32, 'Шампуни и спреи для кошек', 9),
(33, 'Средства гигиены для кошек', 9),
(34, 'Туалеты и наполнители для кошек', 9),
(35, 'Переноски, сумки для кошек', 8),
(36, 'Игрушки и развлечения для кошек', 8),
(37, 'Лежанки, домики для кошек', 8),
(38, 'Гамаки и тоннели для кошек', 8),
(39, 'Когтеточки для кошек', 8),
(40, 'Одежда для кошек', 8);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
