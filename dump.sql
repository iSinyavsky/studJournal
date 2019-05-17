-- phpMyAdmin SQL Dump
-- version 4.6.1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Июн 12 2016 г., 19:20
-- Версия сервера: 5.5.43-37.2
-- Версия PHP: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `cu71173_electron`
--

-- --------------------------------------------------------

--
-- Структура таблицы `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `GrName` varchar(64) NOT NULL,
  `Course` int(11) NOT NULL,
  `SpecID` int(11) NOT NULL,
  `CurID` int(11) NOT NULL,
  `StewID` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `GrName` (`GrName`),
  KEY `Course` (`Course`),
  KEY `SpecID` (`SpecID`),
  KEY `CurID` (`CurID`),
  KEY `StewID` (`StewID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `groups`
--

INSERT INTO `groups` (`id`, `GrName`, `Course`, `SpecID`, `CurID`, `StewID`) VALUES
(1, '', 1, 1, 1, 1),
(2, 'КСК5', 3, 3, 2, 1),
(3, 'ПКС5', 1, 2, 2, 2),
(4, 'ОДЛ3', 3, 5, 1, 1),
(5, 'ПКС7', 1, 2, 4, 7);

-- --------------------------------------------------------

--
-- Структура таблицы `groups_subjects`
--

CREATE TABLE IF NOT EXISTS `groups_subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL,
  `SubjID` int(11) NOT NULL,
  `TeachID` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `GroupsID` (`GroupID`),
  KEY `SubjID` (`SubjID`),
  KEY `TeachID` (`TeachID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `groups_subjects`
--

INSERT INTO `groups_subjects` (`id`, `GroupID`, `SubjID`, `TeachID`) VALUES
(3, 3, 11, 2),
(6, 5, 3, 5),
(7, 3, 2, 4),
(8, 4, 3, 2),
(9, 3, 8, 6),
(10, 3, 10, 7),
(11, 3, 9, 2),
(12, 3, 12, 8),
(13, 2, 3, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `lessons`
--

CREATE TABLE IF NOT EXISTS `lessons` (
  `LessonID` int(11) NOT NULL AUTO_INCREMENT,
  `Theme` varchar(64) NOT NULL,
  `Homework` varchar(64) NOT NULL,
  `Date` date NOT NULL,
  `GroupID` int(11) NOT NULL,
  `TeachID` int(11) NOT NULL,
  `SubjID` int(11) NOT NULL,
  PRIMARY KEY (`LessonID`),
  KEY `GroupID` (`GroupID`),
  KEY `TeachID` (`TeachID`),
  KEY `SubjID` (`SubjID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `lessons`
--

INSERT INTO `lessons` (`LessonID`, `Theme`, `Homework`, `Date`, `GroupID`, `TeachID`, `SubjID`) VALUES
(1, 'Ничего не делание', 'Ничего не делать', '2016-06-06', 3, 2, 11),
(2, 'Новая тема', 'Повторить новую тему', '2016-06-06', 5, 2, 8),
(3, 'Новая тема', 'Повторение новой темы', '2016-06-06', 5, 5, 3),
(4, 'Вторая тема', 'Повторение второй темы\r\n', '2016-06-06', 5, 5, 3),
(5, 'Ничего не делание', 'qqqq', '2016-06-04', 3, 2, 11),
(6, 'Название темы', 'Что-то сделать', '2016-06-07', 5, 5, 3),
(7, 'Тема ', 'Выучить стишки про сети', '2016-06-04', 3, 2, 11),
(8, 'Настривание роутера', 'Принести роутер', '2016-05-07', 3, 2, 11),
(9, 'Починка роутера', 'Сломать роутер', '2016-05-15', 3, 2, 11),
(10, 'Ничего не делание', 'Ничего не делать', '2016-05-10', 3, 2, 11),
(11, 'Тема', 'ДЗ', '2016-04-01', 3, 2, 11),
(12, 'Тема', 'ДЗ', '2016-04-02', 3, 2, 11),
(13, 'Тема', 'ДЗ', '2016-04-03', 3, 2, 11),
(14, 'Тема', 'ДЗ', '2016-04-04', 3, 2, 11),
(15, 'Подготовка к ЕГЭ', 'Решать сборники к ЕГЭ', '2016-06-12', 2, 5, 3),
(16, 'Контрольная работа', 'Вы', '2016-05-12', 3, 2, 11),
(17, 'Подготовка к ЕГЭ', 'sdssd', '2016-06-12', 3, 2, 11);

-- --------------------------------------------------------

--
-- Структура таблицы `marks`
--

CREATE TABLE IF NOT EXISTS `marks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `LessonID` int(11) NOT NULL,
  `StudID` int(11) NOT NULL,
  `Mark` int(11) NOT NULL,
  `Absent` varchar(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `StudID` (`StudID`),
  KEY `LessonID` (`LessonID`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `marks`
--

INSERT INTO `marks` (`id`, `LessonID`, `StudID`, `Mark`, `Absent`) VALUES
(3, 1, 4, 5, ''),
(6, 4, 6, 5, ''),
(7, 4, 7, 5, ''),
(9, 3, 6, 2, ''),
(10, 3, 6, 5, ''),
(11, 3, 7, 5, ''),
(12, 3, 7, 5, ''),
(13, 8, 5, 5, ''),
(14, 9, 9, 5, ''),
(15, 7, 5, 5, ''),
(16, 9, 2, 5, ''),
(17, 7, 2, 5, ''),
(18, 5, 2, 5, ''),
(19, 8, 2, 5, ''),
(20, 1, 2, 0, 'б'),
(21, 9, 3, 5, ''),
(22, 7, 3, 5, ''),
(24, 5, 10, 0, 'б'),
(25, 5, 5, 0, 'о'),
(26, 7, 9, 0, 'б'),
(28, 1, 10, 5, ''),
(30, 8, 3, 5, ''),
(31, 10, 8, 3, ''),
(32, 5, 8, 4, ''),
(33, 7, 8, 0, 'б'),
(34, 10, 4, 5, ''),
(35, 5, 4, 0, 'б'),
(36, 5, 5, 5, ''),
(37, 1, 5, 5, ''),
(38, 1, 8, 5, ''),
(39, 8, 9, 5, ''),
(40, 1, 9, 4, ''),
(41, 10, 17, 2, ''),
(42, 1, 17, 2, ''),
(43, 7, 21, 3, ''),
(44, 8, 18, 5, ''),
(45, 5, 18, 2, ''),
(46, 10, 26, 2, ''),
(47, 8, 10, 5, ''),
(48, 13, 20, 4, ''),
(49, 13, 20, 3, ''),
(50, 8, 20, 5, ''),
(51, 11, 26, 5, ''),
(52, 14, 8, 0, 'б'),
(53, 13, 26, 0, ''),
(54, 13, 26, 0, ''),
(55, 13, 26, 0, ''),
(56, 1, 15, 5, ''),
(57, 12, 8, 4, ''),
(58, 8, 30, 0, 'н'),
(59, 6, 6, 5, ''),
(60, 6, 7, 5, ''),
(61, 9, 18, 5, ''),
(62, 10, 27, 4, ''),
(63, 7, 20, 5, ''),
(64, 12, 23, 3, ''),
(65, 9, 16, 5, ''),
(66, 12, 16, 5, ''),
(67, 7, 27, 0, 'н'),
(68, 5, 27, 0, 'б'),
(69, 10, 2, 5, ''),
(70, 14, 3, 5, ''),
(71, 9, 28, 2, ''),
(72, 14, 18, 3, ''),
(73, 13, 18, 2, ''),
(74, 12, 19, 5, ''),
(75, 10, 19, 4, ''),
(76, 5, 19, 4, ''),
(78, 17, 10, 5, ''),
(79, 17, 2, 5, '');

-- --------------------------------------------------------

--
-- Структура таблицы `parents`
--

CREATE TABLE IF NOT EXISTS `parents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ParFIO` varchar(64) NOT NULL,
  `UserID` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `UserID` (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `parents`
--

INSERT INTO `parents` (`id`, `ParFIO`, `UserID`) VALUES
(1, '', 1),
(2, 'Синявская Елена Петровна', 8),
(3, 'Сальникова Юлия Отествовна', 9),
(4, 'Мыключенко Александр Леонидович', 10),
(5, 'Лапий Лариса Отчествовна', 11),
(6, 'Иванов Иван Иванович', 12),
(7, 'Петров Пётр Петрович', 13),
(8, 'Сергеев Сергей Сергеевич', 14),
(9, 'Ананьев Иван Иванович', 15),
(11, 'Лукин Иван Иванович', 17),
(12, 'Кирпиченко Отец Отчествович', 46);

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Attribute` varchar(64) NOT NULL,
  `Value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `Attribute`, `Value`) VALUES
(1, 'URL', 'http://localhost/'),
(2, 'CollegeName', 'Колледж КФУ'),
(3, 'SMTP_HOST', 'smtp.timeweb.ru'),
(4, 'SMTP_USER', 'mail@nataliamk.ru'),
(5, 'SMTP_PASSWORD', 'cortmx15'),
(6, 'MAIL_NAME', 'Электронный журнал ТК'),
(7, 'CollegeLogo', 'public/images/cfu.png');

-- --------------------------------------------------------

--
-- Структура таблицы `specialties`
--

CREATE TABLE IF NOT EXISTS `specialties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `SpecName` varchar(128) NOT NULL,
  `SpecCode` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `specialties`
--

INSERT INTO `specialties` (`id`, `SpecName`, `SpecCode`) VALUES
(1, '', ''),
(2, 'Программирование в компьютерных системах', '09.02.02'),
(3, 'Компьютерные системы и комплексы', '09.02.01'),
(4, 'Химия', '666'),
(5, 'Операционная деятельность в логистике', '38.02.03'),
(6, 'Финансы', '38.02.06'),
(7, 'Туризм', '43.02.10');

-- --------------------------------------------------------

--
-- Структура таблицы `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `StudFIO` varchar(128) NOT NULL,
  `GrID` int(11) NOT NULL,
  `ParentID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `GrID` (`GrID`),
  KEY `ParentID` (`ParentID`),
  KEY `UserID` (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `students`
--

INSERT INTO `students` (`id`, `StudFIO`, `GrID`, `ParentID`, `UserID`) VALUES
(1, '', 1, 1, 1),
(2, 'Синявский Иван Владимирович', 3, 2, 3),
(3, 'Мыключенко Наталья Александровна', 3, 4, 4),
(4, 'Сальников Владислав Андреевич', 3, 3, 5),
(5, 'Лапий Александр Николаевич', 3, 5, 6),
(6, 'Ананьев Владимир Отчествович', 5, 9, 19),
(7, 'Лукина Антонина Отчествовна', 5, 11, 20),
(8, 'Штогрин Богдан Отчествович', 3, 1, 22),
(9, 'Кирпиченко Анастасия Отчествовна', 3, 12, 23),
(10, 'Вишнёв Николай Николаевич', 3, 1, 24),
(11, 'Подоляк Денис Отчествович', 2, 1, 26),
(12, 'Терещенко Александр Отчествович', 2, 1, 27),
(13, 'Бекирова Лилия Отчествовна', 2, 1, 28),
(14, 'Исаев Егор Викторович', 4, 12, 29),
(15, 'Гемеджи Айдер Отчествович', 3, 1, 30),
(16, 'Дудко Александр Александрович', 3, 1, 31),
(17, 'Ободяк Любомир Любомирович', 3, 1, 32),
(18, 'Данилов Артём Отчествович', 3, 1, 33),
(19, 'Стансков Илья Владимирович', 3, 1, 34),
(20, 'Антонюк Родион Отчествович', 3, 1, 35),
(21, 'Перепёлка Борис Отчествович', 3, 1, 36),
(22, 'Назаров Никита Отчествович', 3, 1, 37),
(23, 'Карлаш Иван Отчествович', 3, 1, 38),
(24, 'Петрушин Александр Отчествович', 3, 1, 39),
(25, 'Лашко Анна Андреевна', 3, 1, 40),
(26, 'Гедзик Анастасия Отчествовна', 3, 1, 41),
(27, 'Климентовский Владислав Отчествович', 3, 1, 42),
(28, 'Тян Станислав Александрович', 3, 1, 43),
(29, 'Марьинских Светлана Отчествовна', 3, 1, 44),
(30, 'Субботина Валентина Отчествовна', 3, 1, 45),
(33, 'Тестовый', 3, 1, 58),
(35, 'Тестовый', 1, 1, 60),
(36, 'Тестовый', 1, 1, 61);

-- --------------------------------------------------------

--
-- Структура таблицы `subjects`
--

CREATE TABLE IF NOT EXISTS `subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `SubjName` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `subjects`
--

INSERT INTO `subjects` (`id`, `SubjName`) VALUES
(1, ''),
(2, 'Русский язык'),
(3, 'Информатика'),
(4, 'Математика'),
(5, 'Химия'),
(6, 'Биология'),
(7, 'Геометрия'),
(8, 'Высшая математика'),
(9, 'Технология разработки программного обеспечения'),
(10, 'Программирование'),
(11, 'ИКСС'),
(12, 'Технология разработки и защиты баз данных'),
(13, 'Философия');

-- --------------------------------------------------------

--
-- Структура таблицы `teachers`
--

CREATE TABLE IF NOT EXISTS `teachers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `TeachFIO` varchar(128) NOT NULL,
  `UserID` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `UserID` (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `teachers`
--

INSERT INTO `teachers` (`id`, `TeachFIO`, `UserID`) VALUES
(1, '', 1),
(2, 'Железняк Александр Владимирович', 7),
(3, 'Андрейчука Анна Михайловна', 16),
(4, 'Горащук Ольга Сергеевна', 18),
(5, 'Катунина Анна Юрьевна', 21),
(6, 'Смирнова Светлана Ивановна', 47),
(7, 'Михерский Ростислав Михайлович', 48),
(8, 'Бондарев Виктор Павлович', 49),
(9, 'Дихтярь Александр Иванович', 51),
(12, 'Беленькая Анна Сергеевна', 54);

-- --------------------------------------------------------

--
-- Структура таблицы `teachers_subjects`
--

CREATE TABLE IF NOT EXISTS `teachers_subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `TeachID` int(11) NOT NULL,
  `SubjID` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `TeachID` (`TeachID`),
  KEY `SubjID` (`SubjID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `teachers_subjects`
--

INSERT INTO `teachers_subjects` (`id`, `TeachID`, `SubjID`) VALUES
(1, 2, 3),
(2, 2, 8),
(3, 2, 9),
(4, 2, 10),
(5, 2, 11),
(6, 3, 3),
(7, 4, 2),
(8, 5, 3),
(9, 5, 4),
(10, 6, 8),
(11, 7, 10),
(12, 8, 12);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `UserID` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `Email` varchar(48) NOT NULL,
  `Admin` int(11) NOT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`UserID`, `login`, `password`, `Email`, `Admin`) VALUES
(1, '', '', '', 0),
(2, 'admin', 'a454ada51211270133943e45af218a87', 'linki_98i@bk.ru', 1),
(3, 'linki_98i@bk.ru', 'Sinyavskij4815', 'linki_98i@bk.ru', 0),
(4, 'linki_98i@bk.ru', 'Myklyuchenko8563', 'linki_98i@bk.ru', 0),
(5, 'linki_98i@bk.ru', 'Salnikov4405', 'linki_98i@bk.ru', 0),
(6, '', 'Lapij8726', '', 0),
(7, 'linki_98i@bk.ru', 'ZHeleznyak4561', 'linki_98i@bk.ru', 0),
(8, '', 'Sinyavskaya1267', '', 0),
(9, '', 'Salnikova9562', '', 0),
(10, '', 'Myklyuchenko4123', '', 0),
(11, '', 'Lapij5885', '', 0),
(12, '', 'Roditel6158', '', 0),
(13, '', 'Roditel9164', '', 0),
(14, '', 'Roditel4494', '', 0),
(15, '', 'Roditel9617', '', 0),
(16, '', 'Andrejchuka1024', '', 0),
(17, 'linki_98i@bk.ru', '21232f297a57a5a743894a0e4a801fc3', 'linki_98i@bk.ru', 0),
(18, 'linki_98i@bk.ru', '86f8b60dee38866a7df676ad57366ce2', 'linki_98i@bk.ru', 0),
(19, 'linki_98i@bk.ru', 'd2d27025be9d8bafbf90127688de2399', 'linki_98i@bk.ru', 0),
(20, 'linki_98i@bk.ru', '0b4e696677754a361258b6c6555ca970', 'linki_98i@bk.ru', 0),
(21, 'linki_98i@bk.ru', 'f81fb366bf9f7c9b0b67bb090f02f5b4', 'linki_98i@bk.ru', 0),
(22, 'linki_98i@bk.ru', '3a94f048b53e32a13fe5fcfe8874450f', 'linki_98i@bk.ru', 0),
(23, 'linki_98i@bk.ru', '32ba95a16191bcb9a20496c6094c768b', 'linki_98i@bk.ru', 0),
(24, 'linki_98i@bk.ru', '3a27149dbda8813a936d44f644d6fae8', 'linki_98i@bk.ru', 0),
(25, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'linki_98i@bk.ru', 1),
(26, 'linki_98i@bk.ru', 'ade80e08dbc48a641871d68ec4eb7f75', 'linki_98i@bk.ru', 0),
(27, 'linki_98i@bk.ru', '56aa4898f5c46343eebe8f5ec33289bd', 'linki_98i@bk.ru', 0),
(28, 'linki_98i@bk.ru', '651eedd7e5cc228f5c19ca31d3d84c30', 'linki_98i@bk.ru', 0),
(29, '', 'b0741e41edd0fcb8d2497209419d0768', '', 0),
(30, '', 'f6d75ffad6d3ada42a2ad8926f27e7ad', '', 0),
(31, '', '6c4796d11862e2c93baea2d755eb27dc', '', 0),
(32, '', 'c55ed618129fe1fe81882517feb3f27b', '', 0),
(33, '', 'b1a2f6ddec003d4086c3b68696dbaa76', '', 0),
(34, '', '580b1a418abe2418e9ad1975743c775d', '', 0),
(35, '', '1deb202fea3aa1168e72b7b0b39e214f', '', 0),
(36, '', '55808894596243a84407f83a4fe9271a', '', 0),
(37, '', '9d44005f22f3d42d4c49a85fe2d0a855', '', 0),
(38, '', '201bdb1833513cce5815d4f4fce60459', '', 0),
(39, '', '2340f88935085927b56f266cb3a9b242', '', 0),
(40, '', '803ce7febef84dbd1afa8bf11de992a2', '', 0),
(41, 'linki_98i@bk.ru', '753bd9ffea7b5e84ea4587ff67c3ba88', 'linki_98i@bk.ru', 0),
(42, '', '343b11c1e57f44fcb17bf89123bf2c00', '', 0),
(43, '', '1f330960af0caf297f0842742ed7899a', '', 0),
(44, '', '200956cbbb936742d9aed9deb86b9f8b', '', 0),
(45, '', '26b6994d97f0e2239b43202a87889790', '', 0),
(46, 'linki_98i@bk.ru', '9a709b862f6ea6f463846e85558205d5', 'linki_98i@bk.ru', 0),
(47, 'linki_98i@bk.ru', '9aaf13336ddcf6d14c227bbc49c958d4', 'linki_98i@bk.ru', 0),
(48, 'linki_98i@bk.ru', '2561b17e49f2baed94577a92918571e2', 'linki_98i@bk.ru', 0),
(49, 'linki_98i@bk.ru', 'd60266e0aca6f0e72b0a47e724e662d7', 'linki_98i@bk.ru', 0),
(50, 'admin4', 'admin4', 'linki_98i@bk.ru', 1),
(51, '', '260713959b9cd4e7d285e995633424b7', '', 0),
(52, '', '285d20558ca17af3d2a711c2e5267297', '', 0),
(53, 'linki_98i@bk.ru', 'cd26fb3cea5e2c0b497c75d22c851275', 'linki_98i@bk.ru', 0),
(54, 'linki_98i@bk.ru', '588c1e5d75f646a05807f657b01a6307', 'linki_98i@bk.ru', 0),
(55, 'linki_98i@bk.ru', 'd03d0ed4ecb639e3fa12926b468e6340', 'linki_98i@bk.ru', 0),
(56, 'linki_98i@bk.ru', '27294f0d619c950a86a0fd2ada6c1889', 'linki_98i@bk.ru', 0),
(57, 'linki_98i@bk.ru', '256de5f68435fb85a1fbe9ba89c2c225', 'linki_98i@bk.ru', 0),
(58, 'linki_98i@bk.ru', 'f9a075b80bc4c7dfd6ff17e542b197bd', 'linki_98i@bk.ru', 0),
(59, 'linki_98i@bk.ru', '5c23b71fe4468583fc0837495fdf1a0d', 'linki_98i@bk.ru', 0),
(60, '', '87e22ae3b9b821806fe34c722fafafa6', '', 0),
(61, 'linki_98i@bk.ru', 'c616b769631669aad3ea85f884403d17', 'linki_98i@bk.ru', 0);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `groups`
--
ALTER TABLE `groups`
  ADD CONSTRAINT `groups_ibfk_1` FOREIGN KEY (`SpecID`) REFERENCES `specialties` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `groups_ibfk_2` FOREIGN KEY (`CurID`) REFERENCES `teachers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `groups_ibfk_3` FOREIGN KEY (`StewID`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `groups_subjects`
--
ALTER TABLE `groups_subjects`
  ADD CONSTRAINT `groups_subjects_ibfk_1` FOREIGN KEY (`GroupID`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `groups_subjects_ibfk_2` FOREIGN KEY (`SubjID`) REFERENCES `subjects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `groups_subjects_ibfk_3` FOREIGN KEY (`TeachID`) REFERENCES `teachers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `lessons`
--
ALTER TABLE `lessons`
  ADD CONSTRAINT `lessons_ibfk_1` FOREIGN KEY (`GroupID`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lessons_ibfk_2` FOREIGN KEY (`TeachID`) REFERENCES `teachers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lessons_ibfk_3` FOREIGN KEY (`SubjID`) REFERENCES `subjects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `marks`
--
ALTER TABLE `marks`
  ADD CONSTRAINT `marks_ibfk_1` FOREIGN KEY (`LessonID`) REFERENCES `lessons` (`LessonID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `marks_ibfk_2` FOREIGN KEY (`StudID`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `parents`
--
ALTER TABLE `parents`
  ADD CONSTRAINT `parents_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_2` FOREIGN KEY (`ParentID`) REFERENCES `parents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `students_ibfk_3` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `teachers`
--
ALTER TABLE `teachers`
  ADD CONSTRAINT `teachers_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `teachers_subjects`
--
ALTER TABLE `teachers_subjects`
  ADD CONSTRAINT `teachers_subjects_ibfk_1` FOREIGN KEY (`TeachID`) REFERENCES `teachers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `teachers_subjects_ibfk_2` FOREIGN KEY (`SubjID`) REFERENCES `subjects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
