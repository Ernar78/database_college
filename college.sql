-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 17 2022 г., 09:21
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `college`
--

-- --------------------------------------------------------

--
-- Структура таблицы `metayev_classroom`
--

CREATE TABLE `metayev_classroom` (
  `classroom_id` int NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `metayev_classroom`
--

INSERT INTO `metayev_classroom` (`classroom_id`, `name`) VALUES
(1, '1308'),
(2, '3208'),
(3, '1310'),
(4, '2215'),
(5, '3211');

-- --------------------------------------------------------

--
-- Структура таблицы `metayev_course`
--

CREATE TABLE `metayev_course` (
  `course_id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `special_id` int NOT NULL,
  `hours` smallint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `metayev_course`
--

INSERT INTO `metayev_course` (`course_id`, `name`, `special_id`, `hours`) VALUES
(1, 'Основы алгоритмизации', 1, 90),
(2, 'Электротехника', 3, 106),
(3, 'Основы алгоритмизации', 5, 52),
(4, 'Мультимедиа технология', 1, 36),
(5, 'Техническая механика', 6, 96),
(6, 'Промышленная электротехника', 4, 108),
(7, 'Автоматизированные информационные системы', 1, 86);

-- --------------------------------------------------------

--
-- Структура таблицы `metayev_day`
--

CREATE TABLE `metayev_day` (
  `day_id` tinyint NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `metayev_day`
--

INSERT INTO `metayev_day` (`day_id`, `name`) VALUES
(1, 'Понедельник'),
(2, 'Вторник'),
(3, 'Среда'),
(4, 'Четверг'),
(5, 'Пятница'),
(6, 'Суббота'),
(7, 'Воскресенье');

-- --------------------------------------------------------

--
-- Структура таблицы `metayev_gender`
--

CREATE TABLE `metayev_gender` (
  `gender_id` tinyint NOT NULL,
  `name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `metayev_gender`
--

INSERT INTO `metayev_gender` (`gender_id`, `name`) VALUES
(1, 'Мужской'),
(2, 'Женский');

-- --------------------------------------------------------

--
-- Структура таблицы `metayev_graduate`
--

CREATE TABLE `metayev_graduate` (
  `graduate_id` int NOT NULL,
  `gruppa_id` int NOT NULL,
  `course_id` int NOT NULL,
  `user_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `metayev_graduate`
--

INSERT INTO `metayev_graduate` (`graduate_id`, `gruppa_id`, `course_id`, `user_id`) VALUES
(1, 2, 7, 1),
(2, 7, 2, 2),
(3, 3, 4, 3),
(4, 5, 5, 4),
(5, 6, 5, 2),
(6, 4, 3, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `metayev_graduate_time`
--

CREATE TABLE `metayev_graduate_time` (
  `graduate_time_id` int NOT NULL,
  `graduate_id` int NOT NULL,
  `day_id` tinyint NOT NULL,
  `lesson_num_id` int NOT NULL,
  `classroom_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `metayev_graduate_time`
--

INSERT INTO `metayev_graduate_time` (`graduate_time_id`, `graduate_id`, `day_id`, `lesson_num_id`, `classroom_id`) VALUES
(1, 1, 1, 1, 1),
(2, 2, 2, 2, 2),
(3, 3, 3, 3, 3),
(4, 4, 4, 4, 4),
(5, 5, 5, 5, 5),
(6, 6, 6, 6, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `metayev_gruppa`
--

CREATE TABLE `metayev_gruppa` (
  `gruppa_id` int NOT NULL,
  `name` varchar(10) NOT NULL,
  `special_id` int NOT NULL,
  `date_begin` date NOT NULL,
  `date_end` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `metayev_gruppa`
--

INSERT INTO `metayev_gruppa` (`gruppa_id`, `name`, `special_id`, `date_begin`, `date_end`) VALUES
(1, '101 ИС', 1, '2016-09-01', '2020-07-01'),
(2, '102 АС', 3, '2016-09-01', '2020-07-01'),
(3, '302 ИС', 1, '2014-09-01', '2018-07-01'),
(4, '302 АС', 3, '2014-09-01', '2018-07-01'),
(5, '202 С', 6, '2015-09-01', '2019-07-01'),
(6, '404 П', 5, '2014-09-01', '2017-07-01'),
(7, '303 ЭЛ', 4, '2014-09-01', '2018-07-01');

-- --------------------------------------------------------

--
-- Структура таблицы `metayev_lesson_num`
--

CREATE TABLE `metayev_lesson_num` (
  `lesson_num_id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `time_lesson` time NOT NULL,
  `year_lesson` year NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `metayev_lesson_num`
--

INSERT INTO `metayev_lesson_num` (`lesson_num_id`, `name`, `time_lesson`, `year_lesson`) VALUES
(1, 'Информационные системы', '15:00:00', 2022),
(2, 'Нефтегазовое дело', '09:00:00', 2022),
(3, 'Автоматизация и управление', '19:00:00', 2020),
(4, 'Электроснабжение', '11:10:00', 2019),
(5, 'Программное обеспечение ВТ и  ПО', '17:30:00', 2017),
(6, 'Строительство и эксплуатация  зданий и сооружений', '19:30:00', 2021);

-- --------------------------------------------------------

--
-- Структура таблицы `metayev_otdel`
--

CREATE TABLE `metayev_otdel` (
  `otdel_id` smallint NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `metayev_otdel`
--

INSERT INTO `metayev_otdel` (`otdel_id`, `name`) VALUES
(1, 'Информационные системы'),
(2, 'Технические специальности'),
(3, 'Автоматизация и управление');

-- --------------------------------------------------------

--
-- Структура таблицы `metayev_special`
--

CREATE TABLE `metayev_special` (
  `special_id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `otdel_id` smallint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `metayev_special`
--

INSERT INTO `metayev_special` (`special_id`, `name`, `otdel_id`) VALUES
(1, 'Информационные системы', 1),
(2, 'Нефтегазовое дело', 2),
(3, 'Автоматизация и управление', 3),
(4, 'Электроснабжение', 3),
(5, 'Программное обеспечение ВТ и ПО', 1),
(6, 'Строительство и эксплуатация зданий и сооружений', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `metayev_student`
--

CREATE TABLE `metayev_student` (
  `user_id` bigint NOT NULL,
  `gruppa_id` int NOT NULL,
  `num_zach` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `metayev_student`
--

INSERT INTO `metayev_student` (`user_id`, `gruppa_id`, `num_zach`) VALUES
(6, 1, 'К1020'),
(7, 2, 'А5292'),
(8, 2, 'В8578'),
(9, 5, 'Р5285'),
(10, 4, 'Ф5285'),
(11, 1, 'К7485'),
(12, 3, 'А2585');

-- --------------------------------------------------------

--
-- Структура таблицы `metayev_teacher`
--

CREATE TABLE `metayev_teacher` (
  `user_id` bigint NOT NULL,
  `otdel_id` smallint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `metayev_teacher`
--

INSERT INTO `metayev_teacher` (`user_id`, `otdel_id`) VALUES
(1, 1),
(2, 1),
(3, 2),
(5, 2),
(4, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `metayev_user`
--

CREATE TABLE `metayev_user` (
  `user_id` bigint NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `patronomic` varchar(50) NOT NULL,
  `login` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `gender_id` tinyint NOT NULL,
  `birthday` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `metayev_user`
--

INSERT INTO `metayev_user` (`user_id`, `lastname`, `firstname`, `patronomic`, `login`, `pass`, `gender_id`, `birthday`) VALUES
(1, 'Иванов', 'Иван', 'Иванович', 'qwert', 'qwert', 1, '1975-05-25'),
(2, 'Петров', 'Петр', 'Петрович', 'qwert', 'qwert', 1, '1980-10-06'),
(3, 'Козлов', 'Иван', 'Афанасьевич', 'qwert', 'qwert', 1, '1985-04-15'),
(4, 'Чурюмова', 'Кристина', 'Федоровна', 'qwert', 'qwert', 2, '1990-05-20'),
(5, 'Васильев', 'Феофан', 'Александрович', 'qwert', 'qwert', 1, '1991-01-13'),
(6, 'Федорова', 'Милана', 'Андреевна', 'qwert', 'qwert', 2, '1998-04-15'),
(7, 'Нуржанов', 'Нуржан', 'Нуржанович', 'qwert', 'qwert', 1, '1999-09-18'),
(8, 'Канатов', 'Канат', 'Канатович', 'qwert', 'qwert', 1, '1999-07-07'),
(9, 'Золотая', 'Ирина', 'Кайратовна', 'qwert', 'qwert', 2, '2000-09-14'),
(10, 'Серая', 'Арина', 'Радионовна', 'qwert', 'qwert', 2, '2001-10-29'),
(11, 'Петухов', 'Виталий', 'Фадеевич', 'qwert', 'qwert', 1, '2000-02-20'),
(12, 'Котова', 'Аурелия', 'Ароновна', 'qwert', 'qwert', 2, '2002-12-19');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `metayev_classroom`
--
ALTER TABLE `metayev_classroom`
  ADD PRIMARY KEY (`classroom_id`);

--
-- Индексы таблицы `metayev_course`
--
ALTER TABLE `metayev_course`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `special_id` (`special_id`);

--
-- Индексы таблицы `metayev_day`
--
ALTER TABLE `metayev_day`
  ADD PRIMARY KEY (`day_id`);

--
-- Индексы таблицы `metayev_gender`
--
ALTER TABLE `metayev_gender`
  ADD PRIMARY KEY (`gender_id`);

--
-- Индексы таблицы `metayev_graduate`
--
ALTER TABLE `metayev_graduate`
  ADD PRIMARY KEY (`graduate_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `gruppa_id` (`gruppa_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `metayev_graduate_time`
--
ALTER TABLE `metayev_graduate_time`
  ADD PRIMARY KEY (`graduate_time_id`),
  ADD KEY `classroom_id` (`classroom_id`),
  ADD KEY `day_id` (`day_id`),
  ADD KEY `graduate_id` (`graduate_id`),
  ADD KEY `lesson_num_id` (`lesson_num_id`);

--
-- Индексы таблицы `metayev_gruppa`
--
ALTER TABLE `metayev_gruppa`
  ADD PRIMARY KEY (`gruppa_id`),
  ADD KEY `special_id` (`special_id`);

--
-- Индексы таблицы `metayev_lesson_num`
--
ALTER TABLE `metayev_lesson_num`
  ADD PRIMARY KEY (`lesson_num_id`);

--
-- Индексы таблицы `metayev_otdel`
--
ALTER TABLE `metayev_otdel`
  ADD PRIMARY KEY (`otdel_id`);

--
-- Индексы таблицы `metayev_special`
--
ALTER TABLE `metayev_special`
  ADD PRIMARY KEY (`special_id`),
  ADD KEY `otdel_id` (`otdel_id`);

--
-- Индексы таблицы `metayev_student`
--
ALTER TABLE `metayev_student`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `gruppa_id` (`gruppa_id`);

--
-- Индексы таблицы `metayev_teacher`
--
ALTER TABLE `metayev_teacher`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `otdel_id` (`otdel_id`);

--
-- Индексы таблицы `metayev_user`
--
ALTER TABLE `metayev_user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `gender_id` (`gender_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `metayev_classroom`
--
ALTER TABLE `metayev_classroom`
  MODIFY `classroom_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `metayev_course`
--
ALTER TABLE `metayev_course`
  MODIFY `course_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `metayev_day`
--
ALTER TABLE `metayev_day`
  MODIFY `day_id` tinyint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `metayev_gender`
--
ALTER TABLE `metayev_gender`
  MODIFY `gender_id` tinyint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `metayev_graduate`
--
ALTER TABLE `metayev_graduate`
  MODIFY `graduate_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `metayev_graduate_time`
--
ALTER TABLE `metayev_graduate_time`
  MODIFY `graduate_time_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `metayev_gruppa`
--
ALTER TABLE `metayev_gruppa`
  MODIFY `gruppa_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `metayev_lesson_num`
--
ALTER TABLE `metayev_lesson_num`
  MODIFY `lesson_num_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `metayev_otdel`
--
ALTER TABLE `metayev_otdel`
  MODIFY `otdel_id` smallint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `metayev_special`
--
ALTER TABLE `metayev_special`
  MODIFY `special_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `metayev_user`
--
ALTER TABLE `metayev_user`
  MODIFY `user_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `metayev_course`
--
ALTER TABLE `metayev_course`
  ADD CONSTRAINT `metayev_course_ibfk_1` FOREIGN KEY (`special_id`) REFERENCES `metayev_special` (`special_id`);

--
-- Ограничения внешнего ключа таблицы `metayev_graduate`
--
ALTER TABLE `metayev_graduate`
  ADD CONSTRAINT `metayev_graduate_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `metayev_course` (`course_id`),
  ADD CONSTRAINT `metayev_graduate_ibfk_2` FOREIGN KEY (`gruppa_id`) REFERENCES `metayev_gruppa` (`gruppa_id`),
  ADD CONSTRAINT `metayev_graduate_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `metayev_teacher` (`user_id`);

--
-- Ограничения внешнего ключа таблицы `metayev_graduate_time`
--
ALTER TABLE `metayev_graduate_time`
  ADD CONSTRAINT `metayev_graduate_time_ibfk_1` FOREIGN KEY (`classroom_id`) REFERENCES `metayev_classroom` (`classroom_id`),
  ADD CONSTRAINT `metayev_graduate_time_ibfk_2` FOREIGN KEY (`day_id`) REFERENCES `metayev_day` (`day_id`),
  ADD CONSTRAINT `metayev_graduate_time_ibfk_3` FOREIGN KEY (`graduate_id`) REFERENCES `metayev_graduate` (`graduate_id`),
  ADD CONSTRAINT `metayev_graduate_time_ibfk_4` FOREIGN KEY (`lesson_num_id`) REFERENCES `metayev_lesson_num` (`lesson_num_id`);

--
-- Ограничения внешнего ключа таблицы `metayev_gruppa`
--
ALTER TABLE `metayev_gruppa`
  ADD CONSTRAINT `metayev_gruppa_ibfk_1` FOREIGN KEY (`special_id`) REFERENCES `metayev_special` (`special_id`);

--
-- Ограничения внешнего ключа таблицы `metayev_special`
--
ALTER TABLE `metayev_special`
  ADD CONSTRAINT `metayev_special_ibfk_1` FOREIGN KEY (`otdel_id`) REFERENCES `metayev_otdel` (`otdel_id`);

--
-- Ограничения внешнего ключа таблицы `metayev_student`
--
ALTER TABLE `metayev_student`
  ADD CONSTRAINT `metayev_student_ibfk_1` FOREIGN KEY (`gruppa_id`) REFERENCES `metayev_gruppa` (`gruppa_id`),
  ADD CONSTRAINT `metayev_student_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `metayev_user` (`user_id`);

--
-- Ограничения внешнего ключа таблицы `metayev_teacher`
--
ALTER TABLE `metayev_teacher`
  ADD CONSTRAINT `metayev_teacher_ibfk_1` FOREIGN KEY (`otdel_id`) REFERENCES `metayev_otdel` (`otdel_id`),
  ADD CONSTRAINT `metayev_teacher_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `metayev_user` (`user_id`);

--
-- Ограничения внешнего ключа таблицы `metayev_user`
--
ALTER TABLE `metayev_user`
  ADD CONSTRAINT `metayev_user_ibfk_1` FOREIGN KEY (`gender_id`) REFERENCES `metayev_gender` (`gender_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
