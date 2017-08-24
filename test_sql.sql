-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 26 2017 г., 12:27
-- Версия сервера: 5.6.31
-- Версия PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test_sql`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lft` bigint(20) NOT NULL,
  `rgt` bigint(20) NOT NULL,
  `level` bigint(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`, `lft`, `rgt`, `level`) VALUES
(1, 'Children''s Books', 1, 26, 0),
(2, 'Animals', 2, 15, 1),
(3, 'Bears', 3, 8, 2),
(4, 'Birds', 9, 14, 2),
(5, 'Comic', 16, 25, 1),
(6, 'Fantasy', 17, 20, 2),
(7, 'Manga', 21, 24, 2),
(8, 'Cookbooks', 27, 52, 0),
(9, 'Asian Cooking', 28, 37, 1),
(10, 'Chinese', 29, 32, 2),
(11, 'Indian', 33, 36, 2),
(12, 'Italian Cooking', 38, 51, 1),
(13, 'Gluten Free', 39, 42, 2),
(14, 'Vegan', 43, 46, 2),
(15, 'Diabetic & Sugar Free', 47, 50, 2),
(16, 'White Bears', 4, 5, 3),
(17, 'Brown Bears', 6, 7, 3),
(18, 'Fast Birds', 10, 11, 3),
(19, 'Slow Birds', 12, 13, 3),
(20, 'New Fantasy', 18, 19, 3),
(21, 'Best Manga', 22, 23, 3),
(22, 'Vegan Chinese', 30, 31, 3),
(23, 'East Indian', 34, 35, 3),
(24, 'Featured Gluten Free', 40, 41, 3),
(25, 'Free Vegan', 44, 45, 3),
(26, 'Diabetic & Sugar Free', 48, 49, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000'
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `name`, `price`) VALUES
(1, 'Product-1', '1855.0000'),
(2, 'Product-2', '96.0000'),
(3, 'Product-3', '1363.0000'),
(4, 'Product-4', '746.0000'),
(5, 'Product-5', '305.0000'),
(6, 'Product-6', '845.0000'),
(7, 'Product-7', '419.0000'),
(8, 'Product-8', '194.0000'),
(9, 'Product-9', '386.0000'),
(10, 'Product-10', '1790.0000'),
(11, 'Product-11', '621.0000'),
(12, 'Product-12', '1731.0000'),
(13, 'Product-13', '786.0000'),
(14, 'Product-14', '496.0000'),
(15, 'Product-15', '416.0000'),
(16, 'Product-16', '607.0000'),
(17, 'Product-17', '978.0000'),
(18, 'Product-18', '1890.0000'),
(19, 'Product-19', '814.0000'),
(20, 'Product-20', '1526.0000'),
(21, 'Product-21', '1858.0000'),
(22, 'Product-22', '1971.0000'),
(23, 'Product-23', '1320.0000'),
(24, 'Product-24', '1769.0000'),
(25, 'Product-25', '1639.0000'),
(26, 'Product-26', '739.0000'),
(27, 'Product-27', '1429.0000'),
(28, 'Product-28', '381.0000'),
(29, 'Product-29', '1298.0000'),
(30, 'Product-30', '328.0000'),
(31, 'Product-31', '859.0000'),
(32, 'Product-32', '523.0000'),
(33, 'Product-33', '1412.0000'),
(34, 'Product-34', '1678.0000'),
(35, 'Product-35', '1433.0000'),
(36, 'Product-36', '73.0000'),
(37, 'Product-37', '789.0000'),
(38, 'Product-38', '1135.0000'),
(39, 'Product-39', '1275.0000'),
(40, 'Product-40', '829.0000'),
(41, 'Product-41', '343.0000'),
(42, 'Product-42', '1253.0000'),
(43, 'Product-43', '1043.0000'),
(44, 'Product-44', '1142.0000'),
(45, 'Product-45', '355.0000'),
(46, 'Product-46', '1686.0000'),
(47, 'Product-47', '1398.0000'),
(48, 'Product-48', '277.0000'),
(49, 'Product-49', '925.0000'),
(50, 'Product-50', '1756.0000'),
(51, 'Product-51', '906.0000'),
(52, 'Product-52', '448.0000');

-- --------------------------------------------------------

--
-- Структура таблицы `product_to_category`
--

CREATE TABLE IF NOT EXISTS `product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product_to_category`
--

INSERT INTO `product_to_category` (`product_id`, `category_id`) VALUES
(1, 1),
(2, 1),
(11, 1),
(30, 1),
(3, 2),
(4, 2),
(9, 2),
(5, 3),
(6, 3),
(34, 3),
(52, 3),
(7, 4),
(8, 4),
(18, 4),
(19, 4),
(22, 4),
(31, 4),
(40, 4),
(42, 4),
(47, 4),
(9, 5),
(10, 5),
(17, 5),
(34, 5),
(36, 5),
(39, 5),
(1, 6),
(11, 6),
(12, 6),
(14, 6),
(50, 6),
(12, 7),
(13, 7),
(14, 7),
(26, 7),
(15, 8),
(16, 8),
(23, 8),
(15, 9),
(17, 9),
(18, 9),
(23, 9),
(28, 9),
(32, 9),
(43, 9),
(48, 9),
(3, 10),
(17, 10),
(19, 10),
(20, 10),
(10, 11),
(21, 11),
(22, 11),
(29, 11),
(46, 11),
(50, 11),
(7, 12),
(23, 12),
(24, 12),
(47, 12),
(15, 13),
(25, 13),
(26, 13),
(27, 13),
(3, 14),
(6, 14),
(13, 14),
(15, 14),
(25, 14),
(27, 14),
(28, 14),
(35, 14),
(49, 14),
(21, 15),
(28, 15),
(29, 15),
(30, 15),
(31, 15),
(41, 15),
(2, 16),
(17, 16),
(19, 16),
(31, 16),
(32, 16),
(38, 16),
(51, 16),
(1, 17),
(6, 17),
(9, 17),
(11, 17),
(27, 17),
(32, 17),
(33, 17),
(34, 17),
(38, 17),
(43, 17),
(1, 18),
(24, 18),
(35, 18),
(36, 18),
(27, 19),
(35, 19),
(37, 19),
(38, 19),
(45, 19),
(39, 20),
(40, 20),
(4, 21),
(8, 21),
(41, 21),
(42, 21),
(52, 21),
(3, 22),
(10, 22),
(18, 22),
(20, 22),
(36, 22),
(37, 22),
(43, 22),
(44, 22),
(13, 23),
(31, 23),
(45, 23),
(46, 23),
(5, 24),
(16, 24),
(19, 24),
(47, 24),
(48, 24),
(11, 25),
(33, 25),
(40, 25),
(44, 25),
(49, 25),
(50, 25),
(20, 26),
(47, 26),
(51, 26),
(52, 26);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nslrl_idx` (`lft`,`rgt`,`level`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product_to_category`
--
ALTER TABLE `product_to_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=53;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
