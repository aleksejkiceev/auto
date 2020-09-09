-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 09 2020 г., 07:01
-- Версия сервера: 5.6.41
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `forma`
--

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user` varchar(25) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `password` varchar(200) NOT NULL,
  `confirm_password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `user`, `email`, `phone_number`, `password`, `confirm_password`) VALUES
(1, '', '', '', 'd41d8cd98f00b204e9800998ecf8427e', ''),
(2, 'cat', 'cat11@mail.ru', '34645636', 'a384b6463fc216a5f8ecb6670f86456a', ''),
(3, 'dog', 'dog22@mail.ru', '23423534', 'db7ca264709431a4438958b4c73b9d46', ''),
(4, 'mouse', 'mouse33@mail.ru', '85423243', '2d9c5a46831b99e3de733cb951259431', ''),
(5, '', '', '', '', ''),
(6, 'mouse', 'mouse33@mail.ru', '85423243', '2d9c5a46831b99e3de733cb951259431', ''),
(7, 'mouse', 'mouse33@mail.ru', '85423243', '2d9c5a46831b99e3de733cb951259431', ''),
(8, 'mouse', 'mouse33@mail.ru', '85423243', '2d9c5a46831b99e3de733cb951259431', ''),
(9, 'mouse', 'mouse33@mail.ru', '85423243', '2d9c5a46831b99e3de733cb951259431', ''),
(10, 'mouse', 'mouse33@mail.ru', '85423243', '2d9c5a46831b99e3de733cb951259431', '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
