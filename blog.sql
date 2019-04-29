-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 29 2019 г., 17:13
-- Версия сервера: 5.6.38
-- Версия PHP: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `blog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `text` text,
  `categorie_id` int(11) DEFAULT NULL,
  `pubdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `views` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `title`, `image`, `text`, `categorie_id`, `pubdate`, `views`) VALUES
(1, '\"Умное\" пирожное', 'пирожное.jpg', 'Мой излюбленный рецепт! А просто потому, что я из-за своей невнимательности допустила небольшую ошибку, но этим самым вывела идеальный рецепт - пирожное получается невероятно нежное и гладкое! А \"умное\" оно потому, что тесто замешивается в одной чаше, получается жидким, но в процессе выпечки само разделяется на слои. Домашняя выпечка из молока - очень простая выпечка, супер, попробуйте!', 3, '2019-04-25 19:27:03', 58),
(2, 'Домашние плюшки', 'выпечка.jpg', 'Рецепт дрожжевого теста, который я предлагаю, совсем несложный. Очень простая выпечка - с этим тестом справится даже начинающая хозяйка. Для его приготовления я обычно использую сухие быстродействующие дрожжи, с ними удачно получается выпечка из дрожжевого теста. Рецепты с фото помогут освоить нюансы.', 2, '2019-04-25 19:27:03', 22),
(3, 'Кисель', 'кисель.jpg', 'Barbeled dragonfish gulper eel sand lance pencil catfish morwong, airbreathing catfish snake eel triggerfish zebra loach. Eucla cod damselfish hairtail wolf-herring. Morid cod pink salmon triggerfish whalefish muskellunge yellowtail barracuda long-finned char nurseryfish tompot blenny x-ray tetra, spotted danio half-gill Australian grayling.\r\n\r\nArctic char zebra lionfish eucla cod masu salmon dogfish giant gourami tadpole cod wolffish turbot half-gill wormfish sand goby. Featherfin knifefish white shark zebra pleco Molly Miller giant sea bass. White marlin arapaima waryfish swampfish, yellow-edged moray longnose dace stingray labyrinth fish. Antarctic icefish sea bass horn shark striped bass, bonito lake whitefish, tarpon bluntnose knifefish, salmon ground shark.\" Gombessa Australian lungfish deepwater stingray forehead brooder yellow-and-black triplefin pipefish elephant fish rockfish tommy ruff deep sea anglerfish.\" Rivuline inanga; oilfish prickleback kissing gourami.', 4, '2019-04-25 22:23:46', 114),
(4, 'Бисквит', 'бисквит.jpg', 'Barbeled dragonfish gulper eel sand lance pencil catfish morwong, airbreathing catfish snake eel triggerfish zebra loach. Eucla cod damselfish hairtail wolf-herring. Morid cod pink salmon triggerfish whalefish muskellunge yellowtail barracuda long-finned char nurseryfish tompot blenny x-ray tetra, spotted danio half-gill Australian grayling.\r\n\r\nArctic char zebra lionfish eucla cod masu salmon dogfish giant gourami tadpole cod wolffish turbot half-gill wormfish sand goby. Featherfin knifefish white shark zebra pleco Molly Miller giant sea bass. White marlin arapaima waryfish swampfish, yellow-edged moray longnose dace stingray labyrinth fish. Antarctic icefish sea bass horn shark striped bass, bonito lake whitefish, tarpon bluntnose knifefish, salmon ground shark.\" Gombessa Australian lungfish deepwater stingray forehead brooder yellow-and-black triplefin pipefish elephant fish rockfish tommy ruff deep sea anglerfish.\" Rivuline inanga; oilfish prickleback kissing gourami.', 2, '2019-04-25 22:23:46', 106),
(5, 'Зефир', 'зефир.jpg', 'Barbeled dragonfish gulper eel sand lance pencil catfish morwong, airbreathing catfish snake eel triggerfish zebra loach. Eucla cod damselfish hairtail wolf-herring. Morid cod pink salmon triggerfish whalefish muskellunge yellowtail barracuda long-finned char nurseryfish tompot blenny x-ray tetra, spotted danio half-gill Australian grayling.\r\n\r\nArctic char zebra lionfish eucla cod masu salmon dogfish giant gourami tadpole cod wolffish turbot half-gill wormfish sand goby. Featherfin knifefish white shark zebra pleco Molly Miller giant sea bass. White marlin arapaima waryfish swampfish, yellow-edged moray longnose dace stingray labyrinth fish. Antarctic icefish sea bass horn shark striped bass, bonito lake whitefish, tarpon bluntnose knifefish, salmon ground shark.\" Gombessa Australian lungfish deepwater stingray forehead brooder yellow-and-black triplefin pipefish elephant fish rockfish tommy ruff deep sea anglerfish.\" Rivuline inanga; oilfish prickleback kissing gourami.', 3, '2019-04-25 22:27:29', 506),
(6, 'Квас', 'квас.jpg', 'Barbeled dragonfish gulper eel sand lance pencil catfish morwong, airbreathing catfish snake eel triggerfish zebra loach. Eucla cod damselfish hairtail wolf-herring. Morid cod pink salmon triggerfish whalefish muskellunge yellowtail barracuda long-finned char nurseryfish tompot blenny x-ray tetra, spotted danio half-gill Australian grayling.\r\n\r\nArctic char zebra lionfish eucla cod masu salmon dogfish giant gourami tadpole cod wolffish turbot half-gill wormfish sand goby. Featherfin knifefish white shark zebra pleco Molly Miller giant sea bass. White marlin arapaima waryfish swampfish, yellow-edged moray longnose dace stingray labyrinth fish. Antarctic icefish sea bass horn shark striped bass, bonito lake whitefish, tarpon bluntnose knifefish, salmon ground shark.\" Gombessa Australian lungfish deepwater stingray forehead brooder yellow-and-black triplefin pipefish elephant fish rockfish tommy ruff deep sea anglerfish.\" Rivuline inanga; oilfish prickleback kissing gourami.', 4, '2019-04-25 22:27:29', 95),
(8, 'Круассан', 'круассан.jpg', 'Barbeled dragonfish gulper eel sand lance pencil catfish morwong, airbreathing catfish snake eel triggerfish zebra loach. Eucla cod damselfish hairtail wolf-herring. Morid cod pink salmon triggerfish whalefish muskellunge yellowtail barracuda long-finned char nurseryfish tompot blenny x-ray tetra, spotted danio half-gill Australian grayling.\r\n\r\nArctic char zebra lionfish eucla cod masu salmon dogfish giant gourami tadpole cod wolffish turbot half-gill wormfish sand goby. Featherfin knifefish white shark zebra pleco Molly Miller giant sea bass. White marlin arapaima waryfish swampfish, yellow-edged moray longnose dace stingray labyrinth fish. Antarctic icefish sea bass horn shark striped bass, bonito lake whitefish, tarpon bluntnose knifefish, salmon ground shark.\" Gombessa Australian lungfish deepwater stingray forehead brooder yellow-and-black triplefin pipefish elephant fish rockfish tommy ruff deep sea anglerfish.\" Rivuline inanga; oilfish prickleback kissing gourami.', 2, '2019-04-25 22:27:29', 46),
(9, 'Пирожки', 'пирожки.jpg', 'Barbeled dragonfish gulper eel sand lance pencil catfish morwong, airbreathing catfish snake eel triggerfish zebra loach. Eucla cod damselfish hairtail wolf-herring. Morid cod pink salmon triggerfish whalefish muskellunge yellowtail barracuda long-finned char nurseryfish tompot blenny x-ray tetra, spotted danio half-gill Australian grayling.\r\n\r\nArctic char zebra lionfish eucla cod masu salmon dogfish giant gourami tadpole cod wolffish turbot half-gill wormfish sand goby. Featherfin knifefish white shark zebra pleco Molly Miller giant sea bass. White marlin arapaima waryfish swampfish, yellow-edged moray longnose dace stingray labyrinth fish. Antarctic icefish sea bass horn shark striped bass, bonito lake whitefish, tarpon bluntnose knifefish, salmon ground shark.\" Gombessa Australian lungfish deepwater stingray forehead brooder yellow-and-black triplefin pipefish elephant fish rockfish tommy ruff deep sea anglerfish.\" Rivuline inanga; oilfish prickleback kissing gourami.', 2, '2019-04-25 22:27:29', 97),
(10, 'Чайный гриб', 'чайныйгриб.jpg', 'Barbeled dragonfish gulper eel sand lance pencil catfish morwong, airbreathing catfish snake eel triggerfish zebra loach. Eucla cod damselfish hairtail wolf-herring. Morid cod pink salmon triggerfish whalefish muskellunge yellowtail barracuda long-finned char nurseryfish tompot blenny x-ray tetra, spotted danio half-gill Australian grayling.\r\n\r\nArctic char zebra lionfish eucla cod masu salmon dogfish giant gourami tadpole cod wolffish turbot half-gill wormfish sand goby. Featherfin knifefish white shark zebra pleco Molly Miller giant sea bass. White marlin arapaima waryfish swampfish, yellow-edged moray longnose dace stingray labyrinth fish. Antarctic icefish sea bass horn shark striped bass, bonito lake whitefish, tarpon bluntnose knifefish, salmon ground shark.\" Gombessa Australian lungfish deepwater stingray forehead brooder yellow-and-black triplefin pipefish elephant fish rockfish tommy ruff deep sea anglerfish.\" Rivuline inanga; oilfish prickleback kissing gourami.', 4, '2019-04-25 22:27:59', 64);

-- --------------------------------------------------------

--
-- Структура таблицы `articles_categories`
--

CREATE TABLE `articles_categories` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `articles_categories`
--

INSERT INTO `articles_categories` (`id`, `title`) VALUES
(1, 'Рецепты первых блюд'),
(2, 'Выпечка'),
(3, 'Сладкое'),
(4, 'Напитки');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `author` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `pubdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `articles_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `author`, `email`, `text`, `pubdate`, `articles_id`) VALUES
(1, 'Dima777', 'Dima777@mail.ru', 'Sole shrimpfish danio lake whitefish loosejaw flier yellowtail snapper.\" Orbicular batfish waryfish surgeonfish redmouth whalefish yellow tang alligatorfish surf sardine???', '2019-04-25 23:54:27', 10),
(2, 'Anna', 'Anna132@mail.ru', 'Brook lamprey tilefish angler marlin, grass carp saber-toothed blenny kaluga kokopu dragonet California halibut ribbon eel barbel tripletail threadtail.\r\n', '2019-04-26 00:04:34', 5),
(3, 'Masha', 'Masaha65@mail.ru', 'Brook lamprey tilefish angler marlin, grass carp saber-toothed blenny kaluga kokopu dragonet California halibut ribbon eel barbel tripletail threadtail.\r\n', '2019-04-26 00:50:03', 3),
(4, 'Nina', 'Nina88@mail.ru', 'Mola lumpsucker jawfish pipefish, rough scad Australian grayling zebra trout roach. Bristlenose catfish fingerfish Australian', '2019-04-26 00:50:03', 7),
(5, 'Anton', 'Anton111@mail.ru', 'Loach, platyfish dory wrasse Blacksmelt Redhorse sucker Pacific hake slimehead round stingray Pacific!!', '2019-04-26 00:51:10', 3),
(9, 'Sasha', 'Sasha123@mail.ru', 'gooooooood!!!!', '2019-04-28 00:12:21', 3),
(11, 'Petr', 'Petr@mail.ru', 'nice!!!!!!!', '2019-04-28 00:13:05', 3);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `articles_categories`
--
ALTER TABLE `articles_categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `articles_categories`
--
ALTER TABLE `articles_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
