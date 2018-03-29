-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 29 2018 г., 20:18
-- Версия сервера: 5.6.37
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `db_logoshop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `type`, `brand`) VALUES
(1, 'mobile', 'Iphone'),
(2, 'mobile', 'Meizu'),
(3, 'mobile', 'Samsung'),
(4, 'mobile', 'HTC'),
(5, 'mobile', 'LG'),
(6, 'mobile', 'Fly'),
(7, 'mobile', 'Nokia'),
(8, 'mobile', 'Xiaomi'),
(9, 'mobile', 'Nomi'),
(10, 'mobile', 'Lenovo'),
(11, 'notebook', 'Apple'),
(12, 'notebook', 'Lenovo'),
(13, 'notebook', 'Asus'),
(14, 'notebook', 'Acer'),
(15, 'notebook', 'HTC'),
(16, 'notebook', 'Dell'),
(17, 'notebook', 'HP'),
(18, 'notebook', 'Sony'),
(19, 'notepad', 'Apple'),
(20, 'notepad', 'Asus'),
(21, 'notepad', 'Lenovo'),
(22, 'notepad', 'Samsung'),
(23, 'notepad', 'Prestigio'),
(24, 'mobile', 'Huawei');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
