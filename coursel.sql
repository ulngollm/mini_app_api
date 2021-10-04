-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Май 29 2021 г., 18:44
-- Версия сервера: 5.7.27-30-log
-- Версия PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `ullungmai2`
--
CREATE DATABASE IF NOT EXISTS `ullungmai2` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `ullungmai2`;

-- --------------------------------------------------------

--
-- Структура таблицы `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `category` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `course`
--

INSERT INTO `course` (`id`, `name`, `description`, `category`, `address`) VALUES
(1, 'Рисование песком', 'Курс для тех, кто любит много подметать. Почему подметать - подробнее в описании', 0, ''),
(2, 'Игра на нервах', 'Прокачай свои навыки использования родителей,учителей и окружающих. Развлекайся по полной!', 0, ''),
(3, 'Художественный топот', 'Издавать красивые звуки при ходьбе? Никогда не дума, что такое возможно? Тогда тебе точно к нам!', 0, ''),
(4, 'Курс по лепке из глины', 'Лепим лепим говно, игрушки, чашки, пачкаем руки', 4, 'ул Ленина 45'),
(5, 'Музыкальная школа для взрослых', 'охрененно, восхитительно', 2, 'улица дом'),
(9, 'Танцы на пилоне', '', 3, 'улица дом'),
(10, 'Танцы на пилоне', 'ммм', 3, 'улица дом'),
(11, 'Танцы на пилоне', 'ммм', 3, 'улица дом'),
(12, 'Танцы на пилоне', 'ммм', 3, 'улица дом'),
(13, 'Танцы на пилоне', 'ммм', 3, 'улица дом'),
(14, 'Танцы на пилоне', 'ммм', 3, 'улица дом'),
(15, 'Макраме', 'техника узелкового плетения. Разновидность прикладного искусства. Материалы для плетения могут быть самыми разными: пеньковая или льняная верёвки, бумажная бечёвка, кордовая или шёлковая леска', 4, 'улица Большая Садовая 67'),
(16, 'JS сильнее всех!', 'Узнаем, почему это он сильнее всех', 7, 'улица Пушкинская 211'),
(17, 'Круг кружок ', 'Улица жизни учит брат ', 7, 'Улица'),
(18, 'коля', 'коля о коле', 1, 'коля'),
(19, 'Артём', 'qwe', 1, 'коля'),
(20, '', '', 0, ''),
(21, 'Футбол', '', 1, 'пл. Гагарина 1'),
(22, 'Хэй', '', 2, ''),
(23, 'а', '', 4, ''),
(24, 'Футбки', 'Хз', 1, 'Погодина 6б'),
(25, 'Футбки', 'Хз', 1, 'Погодина 6б'),
(26, 'Футбки', 'Хз', 1, 'Погодина 6б'),
(27, 'Ораторское мастерство', 'Всем надо уметь хорошо говорить. Это важный скилл , которому не обучают в школе, но владение им обеспечивает большое преимущество в продвижении по карьерной лестнице и в обычной жизни...', 5, 'Ул Замятина 68'),
(29, 'СТОП КРАН', 'в яме о ямах', 7, 'яма'),
(30, 'ото', 'отото', 2, 'тотото'),
(31, 'щлщл', 'бьбьбьб', 3, 'лотото'),
(32, 'Aaa', 'Ggg', 3, 'Ddd'),
(33, 'Плавание', 'Плывём до Америке через Китай', 1, 'Россия'),
(34, 'Учимся хостить WarCrat III', 'Пива попьём', 7, 'Улица Пушкина, дом Колотушкина'),
(35, '', '', 7, 'Московская обл, г Одинцово, деревня Раздоры, ул Липовой Рощи, д 2 к 3 '),
(36, 'Тест', 'Тестестест', 7, 'Сочи'),
(37, '', '', 0, ''),
(38, 'Повдвд', 'Моплал', 2, 'Моалввд'),
(39, 'Повдвд', 'Моплал', 2, 'Моалввд'),
(40, 'Повдвд', 'Моплал', 2, 'Моалввд'),
(41, 'Повдвд', 'Моплал', 2, 'Моалввд'),
(42, 'Повдвд', 'Моплал', 2, 'Моалввд'),
(43, 'Повдвд', 'Моплал', 2, 'Моалввд'),
(44, 'Повдвд', 'Моплал', 2, 'Моалввд'),
(45, 'Повдвд', 'Моплал', 2, 'Моалввд'),
(46, 'Повдвд', 'Моплал', 2, 'Моалввд'),
(47, 'Повдвд', 'Моплал', 2, 'Моалввд'),
(48, 'Повдвд', 'Моплал', 2, 'Моалввд'),
(49, 'Повдвд', 'Моплал', 2, 'Моалввд'),
(50, '', '', 0, ''),
(51, 'Мовлв', 'Моалв', 2, ' Тсьыл'),
(52, 'Мовлв', 'Моалв', 2, ' Тсьыл'),
(53, 'Курс', '', 0, ''),
(54, 'Клуб любителей бравл старс', 'я', 8, 'иришка никулина'),
(55, 'наташа', 'жизнь', 5, 'Наталия'),
(56, 'романс', 'мы очень любим гулять за деньги!', 1, ''),
(57, 'Кружок висильников', 'Приходи и зависни вместе с друзьями ', 5, 'Голубая лагуна д17'),
(58, 'руооов', '', 3, '');

-- --------------------------------------------------------

--
-- Структура таблицы `course_category`
--

CREATE TABLE `course_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `course_category`
--

INSERT INTO `course_category` (`id`, `name`) VALUES
(1, 'Спорт'),
(2, 'Музыка'),
(3, 'Танец'),
(4, 'Изобразительное искусство'),
(5, 'Сценическое искусство'),
(6, 'Кулинария'),
(7, 'Программирование'),
(8, 'Технические науки');

-- --------------------------------------------------------

--
-- Структура таблицы `course_user`
--

CREATE TABLE `course_user` (
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `course_user`
--

INSERT INTO `course_user` (`course_id`, `user_id`, `role`) VALUES
(1, 117967594, 'student'),
(2, 117967594, 'leader'),
(14, 7, 'leader'),
(15, 117967594, 'leader'),
(16, 117967594, 'leader'),
(16, 117967594, 'student'),
(17, 117967594, 'leader'),
(18, 337649973, 'leader'),
(18, 337649973, 'student'),
(18, 337649973, 'student'),
(19, 337649973, 'leader'),
(18, 337649973, 'student'),
(18, 337649973, 'student'),
(14, 337649973, 'student'),
(2, 337649973, 'student'),
(1, 337649973, 'student'),
(20, 303451443, 'leader'),
(21, 303451443, 'leader'),
(22, 168029374, 'leader'),
(21, 303451443, 'student'),
(23, 168029374, 'leader'),
(24, 299993310, 'leader'),
(15, 117967594, 'student'),
(25, 299993310, 'leader'),
(26, 299993310, 'leader'),
(27, 117967594, 'leader'),
(27, 117967594, 'student'),
(28, 499879278, 'leader'),
(29, 337649973, 'leader'),
(30, 337649973, 'leader'),
(28, 499879278, 'student'),
(28, 499879278, 'student'),
(28, 499879278, 'student'),
(28, 499879278, 'student'),
(31, 337649973, 'leader'),
(28, 299993310, 'student'),
(28, 299993310, 'student'),
(28, 299993310, 'student'),
(4, 499879278, 'student'),
(17, 499879278, 'student'),
(27, 499879278, 'student'),
(32, 2548129, 'leader'),
(27, 499879278, 'student'),
(33, 168029374, 'leader'),
(33, 168029374, 'student'),
(34, 13716595, 'leader'),
(2, 2070190, 'student'),
(2, 2070190, 'student'),
(2, 2070190, 'student'),
(28, 303451443, 'student'),
(21, 303451443, 'student'),
(27, 117967594, 'student'),
(28, 117967594, 'student'),
(35, 75791, 'leader'),
(36, 75791, 'leader'),
(37, 197085, 'leader'),
(4, 499879278, 'student'),
(4, 499879278, 'student'),
(38, 26700881, 'leader'),
(39, 26700881, 'leader'),
(40, 26700881, 'leader'),
(41, 26700881, 'leader'),
(42, 26700881, 'leader'),
(43, 26700881, 'leader'),
(44, 26700881, 'leader'),
(45, 26700881, 'leader'),
(46, 26700881, 'leader'),
(47, 26700881, 'leader'),
(48, 26700881, 'leader'),
(49, 26700881, 'leader'),
(50, 268998069, 'leader'),
(51, 26700881, 'leader'),
(52, 26700881, 'leader'),
(53, 268998069, 'leader'),
(54, 274131987, 'leader'),
(54, 274131987, 'student'),
(54, 168029374, 'student'),
(28, 26700881, 'student'),
(21, 192190768, 'student'),
(21, 192190768, 'student'),
(21, 192190768, 'student'),
(21, 192190768, 'student'),
(21, 192190768, 'student'),
(21, 192190768, 'student'),
(21, 192190768, 'student'),
(21, 192190768, 'student'),
(21, 192190768, 'student'),
(21, 192190768, 'student'),
(21, 192190768, 'student'),
(21, 192190768, 'student'),
(55, 168029374, 'leader'),
(2, 151764936, 'student'),
(56, 499879278, 'leader'),
(4, 499879278, 'student'),
(28, 418036834, 'student'),
(54, 17668353, 'student'),
(54, 17668353, 'student'),
(54, 17668353, 'student'),
(54, 17668353, 'student'),
(57, 17668353, 'leader'),
(58, 299993310, 'leader'),
(4, 299993310, 'student'),
(28, 555812984, 'student'),
(28, 192190768, 'student'),
(28, 192190768, 'student'),
(28, 192190768, 'student'),
(16, 192190768, 'student'),
(19, 192190768, 'student');

-- --------------------------------------------------------

--
-- Структура таблицы `parent_children`
--

CREATE TABLE `parent_children` (
  `parent_id` int(11) NOT NULL,
  `children_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `progress`
--

CREATE TABLE `progress` (
  `id` int(11) NOT NULL,
  `course` int(11) NOT NULL,
  `date` date NOT NULL,
  `student` int(11) NOT NULL,
  `author` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `progress`
--

INSERT INTO `progress` (`id`, `course`, `date`, `student`, `author`, `name`, `description`) VALUES
(1, 1, '2020-08-09', 117967594, 117967594, 'Награда за грустные глаза', '\0L\0o\0r\0e\0m\0 \0l\0o\0r\0e\0m\0 \0l\0o\0r\0e\0e\0e\0m');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `role` tinytext NOT NULL,
  `vk_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `role`, `vk_id`) VALUES
(7, 'student', 117967594),
(8, 'teacher', 117967594);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `course_category`
--
ALTER TABLE `course_category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `progress`
--
ALTER TABLE `progress`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`vk_id`,`id`) USING BTREE,
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT для таблицы `course_category`
--
ALTER TABLE `course_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `progress`
--
ALTER TABLE `progress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
