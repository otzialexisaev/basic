-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Апр 03 2019 г., 01:34
-- Версия сервера: 10.1.35-MariaDB
-- Версия PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `heyitsme`
--

-- --------------------------------------------------------

--
-- Структура таблицы `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_bin NOT NULL,
  `text` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `blog`
--

INSERT INTO `blog` (`id`, `title`, `text`) VALUES
(1, 'asdasd', 'asdasdsad\r\nasdasdsad'),
(2, 'фывфыв', 'фывфвфыв<br />\r\nфывфывфы<br />\r\nфыв<br />\r\nфы<br />\r\nфыв'),
(3, 'zxcv', 'asdfasdasdf\r\nsfadasfdafsdafsdasdfasdfasdffasdfsdgadfasafsdfadsasdfasdf\r\nasfdasdfafsdasfdasdfasdf');

-- --------------------------------------------------------

--
-- Структура таблицы `favourite_songs`
--

CREATE TABLE `favourite_songs` (
  `id` int(11) NOT NULL,
  `ost_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `favourite_songs`
--

INSERT INTO `favourite_songs` (`id`, `ost_id`) VALUES
(101, 222),
(102, 226),
(104, 228),
(103, 229),
(105, 231),
(106, 233),
(107, 238),
(108, 241),
(109, 242),
(110, 244),
(111, 245),
(112, 249),
(99, 250),
(100, 251),
(88, 280),
(66, 281),
(89, 285),
(91, 286),
(90, 288),
(92, 306),
(95, 309),
(94, 310),
(93, 311),
(96, 315),
(98, 317),
(97, 320),
(70, 325),
(71, 326),
(72, 327),
(73, 329),
(74, 334),
(75, 335),
(77, 345),
(78, 352),
(79, 356),
(80, 369),
(81, 373),
(82, 381),
(83, 385),
(84, 396),
(85, 398),
(86, 399),
(87, 400),
(56, 405),
(62, 409),
(63, 410),
(67, 416),
(61, 422),
(64, 423),
(65, 426),
(69, 427),
(59, 428),
(60, 431);

-- --------------------------------------------------------

--
-- Структура таблицы `heyitsme`
--

CREATE TABLE `heyitsme` (
  `id` int(10) UNSIGNED NOT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2018_10_04_223558_create_table_posts', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `head` text COLLATE utf8_bin NOT NULL,
  `body` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `notes`
--

INSERT INTO `notes` (`id`, `head`, `body`) VALUES
(2, 'фыв', 'фыв\nфыв\nфыв'),
(3, 'ыпрврыпвапрыва', 'рвыывапрывпвап\nвапывапывап\nывапывап\nывапывап'),
(4, 'авпрвапрвапр', 'вапрвапрварп\nвапр\nрвап\nвапр\nрапв\nапрв\nвапр\nвапр\nвпра\nрвап\nрвап\n'),
(5, 'dshdfghfgh', 'sddsf\nsdf\nfg\nfgs\nsfgd\nfgsd\nsfgd\nfgds\nsfgd\nsgd\n\ngsfd\nsdfg\n'),
(6, 'asdasd', '123'),
(7, 'aSD', 'ASD123'),
(8, 'ASDF', 'SADFT'),
(9, 'GHJKL', 'HJKL');

-- --------------------------------------------------------

--
-- Структура таблицы `ost`
--

CREATE TABLE `ost` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_bin NOT NULL,
  `path` varchar(200) COLLATE utf8_bin NOT NULL,
  `season` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `ost`
--

INSERT INTO `ost` (`id`, `name`, `path`, `season`) VALUES
(1, 'Bakarlolite.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(2, 'Bakarorito.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(3, 'Chichioya.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(4, 'Classmate.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(5, 'Date.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(6, 'Dokuzetsu.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(7, 'Douchou Tosetsu.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(8, 'First Touch.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(10, 'Fukidamari.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(11, 'Futsuu Saikou.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(12, 'Gaidan Kousetsu.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(13, 'Gehou.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(14, 'Hachikuji Mayoi No Baai.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(15, 'Haikyo.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(16, 'Hanekawa Tsubasa No Baai.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(17, 'Hoshizora.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(18, 'Hourousha.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(19, 'Hoyoku.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(20, 'Hyouri.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(21, 'Iiwake.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(22, 'Ika Kaisou.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(23, 'Ika, Kaisou.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(24, 'Iroboke Neko.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(25, 'Jagiri Nawa.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(26, 'Jikai Hitagi Club.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(27, 'Jikai Mayoi Mai Mai.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(28, 'Jikai Nadeko Snake.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(29, 'Jikai Suruga Monkey.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(30, 'Jikai Tsubasa Cat.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(31, 'Jinchiku.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(32, 'Joshou.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(33, 'Jouka.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(34, 'Kakkai.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(35, 'Kanbaru Suruga No Baai-Chakui.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(36, 'Kanbaru Suruga No Baai-Zenra.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(37, 'Kannen.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(38, 'Kedamono.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(39, 'Kotoba No Bouryoku.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(40, 'Koyomi Oniichan.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(41, 'Mayoi Ushi.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(42, 'Nichiyoubi.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(43, 'Ohitoyoshi.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(44, 'Omoshi Gani.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(45, 'Ouma Ga Toki.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(46, 'Rainy Devil.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(47, 'Sanpo.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(48, 'Sappuukei.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(49, 'Sawari Neko.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(50, 'Sengoku Nadeko No Baai.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(51, 'Senjougahara Hitagi No Baai.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(52, 'Senjougahara Senpai.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(53, 'Senjougahara Tore.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(54, 'Sensou.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(55, 'Shainchuu.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(56, 'Shianchuu.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(57, 'Shin\'iki.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(58, 'Shinki.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(59, 'Shinsou No Reijou.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(60, 'Shugendou.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(61, 'Suteki Meppou.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(62, 'Tadaima Kaerimashita.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(63, 'Tawagoto.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(64, 'Uzu.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(65, 'Watashi Uso Nanka Tsuita Koto Ga Nai Mono.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(66, 'Yokoku.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(67, 'Yokuchou.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(68, 'Zaregoto.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(69, 'Zatta Rutsubo.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(70, 'Zutsuu.mp3', 'files/music/01 - Bakemonogatari/All/', 1),
(71, 'A Lie.mp3', 'files/music/02 - Nisemonogatari/All/', 2),
(72, 'A Model Student.mp3', 'files/music/02 - Nisemonogatari/All/', 2),
(73, 'Adults.mp3', 'files/music/02 - Nisemonogatari/All/', 2),
(74, 'Back-channeling.mp3', 'files/music/02 - Nisemonogatari/All/', 2),
(75, 'Bangs.mp3', 'files/music/02 - Nisemonogatari/All/', 2),
(76, 'Bitterness.mp3', 'files/music/02 - Nisemonogatari/All/', 2),
(77, 'Bonds.mp3', 'files/music/02 - Nisemonogatari/All/', 2),
(78, 'Bracelet.mp3', 'files/music/02 - Nisemonogatari/All/', 2),
(79, 'Bravery.mp3', 'files/music/02 - Nisemonogatari/All/', 2),
(80, 'Brother. He Left It to Me after That.mp3', 'files/music/02 - Nisemonogatari/All/', 2),
(81, 'Conditions.mp3', 'files/music/02 - Nisemonogatari/All/', 2),
(82, 'Enclosing the Fire Bee.mp3', 'files/music/02 - Nisemonogatari/All/', 2),
(83, 'Evil Influence.mp3', 'files/music/02 - Nisemonogatari/All/', 2),
(84, 'Girl on Fire.mp3', 'files/music/02 - Nisemonogatari/All/', 2),
(85, 'Hakai.mp3', 'files/music/02 - Nisemonogatari/All/', 2),
(86, 'High Donut.mp3', 'files/music/02 - Nisemonogatari/All/', 2),
(87, 'I Get Mad Because I\'m Afraid.mp3', 'files/music/02 - Nisemonogatari/All/', 2),
(88, 'Imitation.mp3', 'files/music/02 - Nisemonogatari/All/', 2),
(89, 'Iron Mask.mp3', 'files/music/02 - Nisemonogatari/All/', 2),
(90, 'Jikai,Tsuki hi Phoenix.mp3', 'files/music/02 - Nisemonogatari/All/', 2),
(91, 'Jini.mp3', 'files/music/02 - Nisemonogatari/All/', 2),
(92, 'King of Strangeness.mp3', 'files/music/02 - Nisemonogatari/All/', 2),
(93, 'Kyoudai.mp3', 'files/music/02 - Nisemonogatari/All/', 2),
(94, 'Lovers\' Relations.mp3', 'files/music/02 - Nisemonogatari/All/', 2),
(95, 'Lovers.mp3', 'files/music/02 - Nisemonogatari/All/', 2),
(96, 'My Sisters.mp3', 'files/music/02 - Nisemonogatari/All/', 2),
(97, 'Natsuyasumi.mp3', 'files/music/02 - Nisemonogatari/All/', 2),
(98, 'Next, Karen Bee (Hitagi Senjougahara ver.).mp3', 'files/music/02 - Nisemonogatari/All/', 2),
(99, 'Next, Karen Bee (Karen Araragi ver.).mp3', 'files/music/02 - Nisemonogatari/All/', 2),
(100, 'Nude.mp3', 'files/music/02 - Nisemonogatari/All/', 2),
(101, 'Ominous.mp3', 'files/music/02 - Nisemonogatari/All/', 2),
(102, 'Onmyouji.mp3', 'files/music/02 - Nisemonogatari/All/', 2),
(103, 'Pleasure.mp3', 'files/music/02 - Nisemonogatari/All/', 2),
(104, 'Poison.mp3', 'files/music/02 - Nisemonogatari/All/', 2),
(105, 'Pomposity.mp3', 'files/music/02 - Nisemonogatari/All/', 2),
(106, 'Punishment Game.mp3', 'files/music/02 - Nisemonogatari/All/', 2),
(107, 'Purachina mukatsuku.mp3', 'files/music/02 - Nisemonogatari/All/', 2),
(108, 'Quarrel.mp3', 'files/music/02 - Nisemonogatari/All/', 2),
(109, 'Reigai no Kata ga Oui Kisoku.mp3', 'files/music/02 - Nisemonogatari/All/', 2),
(110, 'Shide no Tori.mp3', 'files/music/02 - Nisemonogatari/All/', 2),
(111, 'Shikigami.mp3', 'files/music/02 - Nisemonogatari/All/', 2),
(112, 'Story.mp3', 'files/music/02 - Nisemonogatari/All/', 2),
(113, 'Temptation.mp3', 'files/music/02 - Nisemonogatari/All/', 2),
(114, 'Unrest.mp3', 'files/music/02 - Nisemonogatari/All/', 2),
(115, 'Urban Legend.mp3', 'files/music/02 - Nisemonogatari/All/', 2),
(116, 'Winning Strategy.mp3', 'files/music/02 - Nisemonogatari/All/', 2),
(117, '\'\'Ordinary Girl\'\'.mp3', 'files/music/03 - Nekomonogatari (Kuro)/All/', 3),
(118, 'Black Hanekawa.mp3', 'files/music/03 - Nekomonogatari (Kuro)/All/', 3),
(119, 'Blockhead.mp3', 'files/music/03 - Nekomonogatari (Kuro)/All/', 3),
(120, 'Demon\'s Emergence and Death.mp3', 'files/music/03 - Nekomonogatari (Kuro)/All/', 3),
(121, 'Distraction.mp3', 'files/music/03 - Nekomonogatari (Kuro)/All/', 3),
(122, 'Exhaustion.mp3', 'files/music/03 - Nekomonogatari (Kuro)/All/', 3),
(123, 'Golden Week.mp3', 'files/music/03 - Nekomonogatari (Kuro)/All/', 3),
(124, 'Karen.mp3', 'files/music/03 - Nekomonogatari (Kuro)/All/', 3),
(125, 'Later Developments.mp3', 'files/music/03 - Nekomonogatari (Kuro)/All/', 3),
(126, 'Love.mp3', 'files/music/03 - Nekomonogatari (Kuro)/All/', 3),
(127, 'Making a Rocket.mp3', 'files/music/03 - Nekomonogatari (Kuro)/All/', 3),
(128, 'Next, Tsubasa Family.mp3', 'files/music/03 - Nekomonogatari (Kuro)/All/', 3),
(129, 'Not a Touch but a Catch.mp3', 'files/music/03 - Nekomonogatari (Kuro)/All/', 3),
(130, 'Old-fashioned.mp3', 'files/music/03 - Nekomonogatari (Kuro)/All/', 3),
(131, 'Perverseness.mp3', 'files/music/03 - Nekomonogatari (Kuro)/All/', 3),
(132, 'Something That Can\'t Be Talked about Except.mp3', 'files/music/03 - Nekomonogatari (Kuro)/All/', 3),
(133, 'Speaking about Something That Might Be Love.mp3', 'files/music/03 - Nekomonogatari (Kuro)/All/', 3),
(134, 'The Demon Blade \'\'Kokorowatari\'\'.mp3', 'files/music/03 - Nekomonogatari (Kuro)/All/', 3),
(135, 'The Promise.mp3', 'files/music/03 - Nekomonogatari (Kuro)/All/', 3),
(136, 'The Worst Kind of Man.mp3', 'files/music/03 - Nekomonogatari (Kuro)/All/', 3),
(137, 'Total Stranger.mp3', 'files/music/03 - Nekomonogatari (Kuro)/All/', 3),
(138, 'Traces.mp3', 'files/music/03 - Nekomonogatari (Kuro)/All/', 3),
(139, 'Tsukihi.mp3', 'files/music/03 - Nekomonogatari (Kuro)/All/', 3),
(140, 'Yandere.mp3', 'files/music/03 - Nekomonogatari (Kuro)/All/', 3),
(141, '\'\'Arigatou Gozaimasu. Tasukarimashita\'\'.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(142, '\'\'Watashi wa Araragi-san to Aetandesu kara\'\'.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(143, '\'\'Welcome, Big Brother Koyomi. I\'ll Show You Some Love.\'\'.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(144, 'Abnormal Situation.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(145, 'Absurd.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(146, 'All-seeing Clairvoyance.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(147, 'An Old Story.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(148, 'Anticlimax.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(149, 'Bokutachi no Tatakai.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(150, 'Class 2-2.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(151, 'Darkness.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(152, 'Declaration.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(153, 'Divine Punishment.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(154, 'Dowsing.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(155, 'Eishou.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(156, 'Faint.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(157, 'Gaen Family Line.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(158, 'God Treatment.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(159, 'Grade A Suspicious Person.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(160, 'Haaku.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(161, 'Haikyo no Machi.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(162, 'Hanekawa Tsubasa wa - Hitei Suru..mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(163, 'Haragei.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(164, 'Impossible Discussion.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(165, 'Iwakan.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(166, 'Jeanne D\'Arc Pretension.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(167, 'Jigoku no Sata mo Kaneshidai.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(168, 'Jikai, Hitagi End.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(169, 'Jikai, Mayoi Kyonshi.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(170, 'Jikai, Tsubasa Tiger.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(171, 'Joshi Doushi.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(172, 'Junior High School Life.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(173, 'Juuichi Nengo no Sugata.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(174, 'Kako.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(175, 'Kantetsu.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(176, 'Kazoku Kaigi.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(177, 'Kegen.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(178, 'Kokuhaku.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(179, 'Kuchinawa.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(180, 'Looking for the Corpse.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(181, 'Magaimono Sonomono no Onna.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(182, 'Manshin Soui.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(183, 'Nadeko Sengoku, 14 Years Old..mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(184, 'Namakemono no Sekku Bataraki.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(185, 'Next, Nadeko Medusa.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(186, 'Next, Shinobu Time.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(187, 'Own Words.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(188, 'Parting Gift.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(189, 'Phenomenon.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(190, 'Red Light.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(191, 'Roubashin.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(192, 'Selfish Talk.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(193, 'Sense of Isolation.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(194, 'Shinjitsu Kara wa Hodotooi Sonzai.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(195, 'Shinsetsu.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(196, 'Shiraketa Hannou.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(197, 'Shitagokoro.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(198, 'Shuurai.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(199, 'Slip of the Tongue.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(200, 'Snake-hair Girl.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(201, 'Sousou Fuitsu.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(202, 'Surprise Attack.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(203, 'Tada no Onegai.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(204, 'Tadaima.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(205, 'Tamikurasou.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(206, 'Tegami(Neko).mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(207, 'Tegami.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(208, 'Tekizai Tekisho.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(209, 'The Deal.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(210, 'The Ghost of a Ghost.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(211, 'The Story of a Good-for-nothing Demon.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(212, 'The True Nature of Spiriting Away.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(213, 'Time Warp.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(214, 'Toutotsu na Toi.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(215, 'Trivia.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(216, 'Umarekawari.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(217, 'Wagahai wa Tora de Aru.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(218, 'Warui Joudan.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(219, 'Watashi no Monogatari.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(220, 'Whim.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(221, 'Yatsuatari.mp3', 'files/music/04 - Monogatari Series Second Season/All/', 4),
(222, '\'\'Watashi wa Aitsu ga-Urayamashikattanda\'\'.mp3', 'files/music/05 - Hanamonogatari/All/', 5),
(223, 'Akuma no Rifujin.mp3', 'files/music/05 - Hanamonogatari/All/', 5),
(224, 'Akuma-sama.mp3', 'files/music/05 - Hanamonogatari/All/', 5),
(225, 'Basketball.mp3', 'files/music/05 - Hanamonogatari/All/', 5),
(226, 'Chapatsu no Akuma.mp3', 'files/music/05 - Hanamonogatari/All/', 5),
(227, 'Chouhatsuteki na Monoii.mp3', 'files/music/05 - Hanamonogatari/All/', 5),
(228, 'Fukou no Shuushuu.mp3', 'files/music/05 - Hanamonogatari/All/', 5),
(229, 'Hitamuki na Kigai.mp3', 'files/music/05 - Hanamonogatari/All/', 5),
(230, 'Ijiwaru Quiz.mp3', 'files/music/05 - Hanamonogatari/All/', 5),
(231, 'Imadoki no Kouhai.mp3', 'files/music/05 - Hanamonogatari/All/', 5),
(232, 'Jamakke na Atogaki.mp3', 'files/music/05 - Hanamonogatari/All/', 5),
(233, 'Nattoku.mp3', 'files/music/05 - Hanamonogatari/All/', 5),
(234, 'Niku Bugyou.mp3', 'files/music/05 - Hanamonogatari/All/', 5),
(235, 'Nostalgie.mp3', 'files/music/05 - Hanamonogatari/All/', 5),
(236, 'Numachi no Jinsei.mp3', 'files/music/05 - Hanamonogatari/All/', 5),
(237, 'Number Zero Ichi.mp3', 'files/music/05 - Hanamonogatari/All/', 5),
(238, 'Ponytail.mp3', 'files/music/05 - Hanamonogatari/All/', 5),
(239, 'Shinsetsu na Ojisan.mp3', 'files/music/05 - Hanamonogatari/All/', 5),
(240, 'Shozai Fumei.mp3', 'files/music/05 - Hanamonogatari/All/', 5),
(241, 'Shukuteki.mp3', 'files/music/05 - Hanamonogatari/All/', 5),
(242, 'Sotsugyou.mp3', 'files/music/05 - Hanamonogatari/All/', 5),
(243, 'Souteigai.mp3', 'files/music/05 - Hanamonogatari/All/', 5),
(244, 'Timing no Ii Yatsu.mp3', 'files/music/05 - Hanamonogatari/All/', 5),
(245, 'Tomadou Kimochi.mp3', 'files/music/05 - Hanamonogatari/All/', 5),
(246, 'Toosenbo.mp3', 'files/music/05 - Hanamonogatari/All/', 5),
(247, 'Watashi no Hanashi to, Kanojo no Hanashi.mp3', 'files/music/05 - Hanamonogatari/All/', 5),
(248, 'Youki na Choushi.mp3', 'files/music/05 - Hanamonogatari/All/', 5),
(249, 'Yuujuufudan.mp3', 'files/music/05 - Hanamonogatari/All/', 5),
(250, '\'\'Kou wa Naranaide ne, Oniichan. Ningen wa Kou Natte Shimaeba - Oshimai da\'\'.mp3', 'files/music/06 - Tsukimonogatari/All/', 6),
(251, 'Choushizen.mp3', 'files/music/06 - Tsukimonogatari/All/', 6),
(252, 'Crane Game.mp3', 'files/music/06 - Tsukimonogatari/All/', 6),
(253, 'Fuwafuwasuru Ko.mp3', 'files/music/06 - Tsukimonogatari/All/', 6),
(254, 'Hankou Yokokujou.mp3', 'files/music/06 - Tsukimonogatari/All/', 6),
(255, 'Hannin.mp3', 'files/music/06 - Tsukimonogatari/All/', 6),
(256, 'Hitojichi Kyuushutsu.mp3', 'files/music/06 - Tsukimonogatari/All/', 6),
(257, 'Ifuudoudou.mp3', 'files/music/06 - Tsukimonogatari/All/', 6),
(258, 'Jigyakuteki na Bishou.mp3', 'files/music/06 - Tsukimonogatari/All/', 6),
(259, 'Kanzen Kaifuku.mp3', 'files/music/06 - Tsukimonogatari/All/', 6),
(260, 'Me wo Samasu beki Koro.mp3', 'files/music/06 - Tsukimonogatari/All/', 6),
(261, 'Mohan Kaitou.mp3', 'files/music/06 - Tsukimonogatari/All/', 6),
(262, 'Mugen no Chinmoku.mp3', 'files/music/06 - Tsukimonogatari/All/', 6),
(263, 'Omoi Kotoba.mp3', 'files/music/06 - Tsukimonogatari/All/', 6),
(264, 'Ondosa.mp3', 'files/music/06 - Tsukimonogatari/All/', 6),
(265, 'Owari no Hajimari.mp3', 'files/music/06 - Tsukimonogatari/All/', 6),
(266, 'Oyu no Dokumi.mp3', 'files/music/06 - Tsukimonogatari/All/', 6),
(267, 'Positioning.mp3', 'files/music/06 - Tsukimonogatari/All/', 6),
(268, 'Sawagashii Hibi.mp3', 'files/music/06 - Tsukimonogatari/All/', 6),
(269, 'Shiage no Soushiage.mp3', 'files/music/06 - Tsukimonogatari/All/', 6),
(270, 'Shutsuji(Tsuki).mp3', 'files/music/06 - Tsukimonogatari/All/', 6),
(271, 'Shutsuji.mp3', 'files/music/06 - Tsukimonogatari/All/', 6),
(272, 'Sou Iu Yatsu.mp3', 'files/music/06 - Tsukimonogatari/All/', 6),
(273, 'Surreal Moe.mp3', 'files/music/06 - Tsukimonogatari/All/', 6),
(274, 'Tekisetsu wo Koete Kanpeki.mp3', 'files/music/06 - Tsukimonogatari/All/', 6),
(275, 'Thrilling.mp3', 'files/music/06 - Tsukimonogatari/All/', 6),
(276, 'Tokeimouto.mp3', 'files/music/06 - Tsukimonogatari/All/', 6),
(277, 'Valentine\'s Day.mp3', 'files/music/06 - Tsukimonogatari/All/', 6),
(278, 'Yakumawari.mp3', 'files/music/06 - Tsukimonogatari/All/', 6),
(279, 'Zetsubouteki na Kaitou.mp3', 'files/music/06 - Tsukimonogatari/All/', 6),
(280, '\'\'Washi no Houkoso Warukatta - Seishiro\'\'.mp3', 'files/music/07 - Owarimonogatari/All/', 7),
(281, '\'\'Watashi wa Nani mo Shirimasen yo. Anata ga Shitte Irundesu, Araragi-senpai.\'\'.mp3', 'files/music/07 - Owarimonogatari/All/', 7),
(282, '444-goushitsu.mp3', 'files/music/07 - Owarimonogatari/All/', 7),
(283, 'Atoshimatsu.mp3', 'files/music/07 - Owarimonogatari/All/', 7),
(284, 'Bouyomi.mp3', 'files/music/07 - Owarimonogatari/All/', 7),
(285, 'Bugaisha.mp3', 'files/music/07 - Owarimonogatari/All/', 7),
(286, 'Dare ka no Tokubetsu.mp3', 'files/music/07 - Owarimonogatari/All/', 7),
(287, 'Dead Space.mp3', 'files/music/07 - Owarimonogatari/All/', 7),
(288, 'Douha.mp3', 'files/music/07 - Owarimonogatari/All/', 7),
(289, 'Euler.mp3', 'files/music/07 - Owarimonogatari/All/', 7),
(290, 'Gakkyuukai no Yuurei.mp3', 'files/music/07 - Owarimonogatari/All/', 7),
(291, 'Gashagasha.mp3', 'files/music/07 - Owarimonogatari/All/', 7),
(292, 'Himitsu Gakkyuukai.mp3', 'files/music/07 - Owarimonogatari/All/', 7),
(293, 'Houshi na Gohoushi.mp3', 'files/music/07 - Owarimonogatari/All/', 7),
(294, 'Inokori Jugyou.mp3', 'files/music/07 - Owarimonogatari/All/', 7),
(295, 'Joshi Doushi no Kenka.mp3', 'files/music/07 - Owarimonogatari/All/', 7),
(296, 'Kacchuu.mp3', 'files/music/07 - Owarimonogatari/All/', 7),
(297, 'Kaiigoroshi no Shounen.mp3', 'files/music/07 - Owarimonogatari/All/', 7),
(298, 'Kaijisubeki Bamen.mp3', 'files/music/07 - Owarimonogatari/All/', 7),
(299, 'Kanashiki Mugen Continue.mp3', 'files/music/07 - Owarimonogatari/All/', 7),
(300, 'Meikko.mp3', 'files/music/07 - Owarimonogatari/All/', 7),
(301, 'Mieru Hazu no nai Fuukei.mp3', 'files/music/07 - Owarimonogatari/All/', 7),
(302, 'Mitai na Kanji.mp3', 'files/music/07 - Owarimonogatari/All/', 7),
(303, 'Mizukakeron.mp3', 'files/music/07 - Owarimonogatari/All/', 7),
(304, 'Nishatakuitsu.mp3', 'files/music/07 - Owarimonogatari/All/', 7),
(305, 'Oikura Iinchou.mp3', 'files/music/07 - Owarimonogatari/All/', 7),
(306, 'Omimai.mp3', 'files/music/07 - Owarimonogatari/All/', 7),
(307, 'Risky na Mane.mp3', 'files/music/07 - Owarimonogatari/All/', 7),
(308, 'Saiaku no Shinsou.mp3', 'files/music/07 - Owarimonogatari/All/', 7),
(309, 'Saigo no Kaiwa.mp3', 'files/music/07 - Owarimonogatari/All/', 7),
(310, 'Sakanoboranakereba Naranai Kioku.mp3', 'files/music/07 - Owarimonogatari/All/', 7),
(311, 'Senpai Myouri.mp3', 'files/music/07 - Owarimonogatari/All/', 7),
(312, 'Shichigatsu Juugonichi.mp3', 'files/music/07 - Owarimonogatari/All/', 7),
(313, 'Shinkyuu Bunbougu Onna Taiketsu.mp3', 'files/music/07 - Owarimonogatari/All/', 7),
(314, 'Suugaku no Yousei.mp3', 'files/music/07 - Owarimonogatari/All/', 7),
(315, 'Tada no Hitomishiri.mp3', 'files/music/07 - Owarimonogatari/All/', 7),
(316, 'Tasuuketsu.mp3', 'files/music/07 - Owarimonogatari/All/', 7),
(317, 'Teokure.mp3', 'files/music/07 - Owarimonogatari/All/', 7),
(318, 'Tsubareta Kaeru.mp3', 'files/music/07 - Owarimonogatari/All/', 7),
(319, 'Warikomi Yokoiri.mp3', 'files/music/07 - Owarimonogatari/All/', 7),
(320, 'Yappari.mp3', 'files/music/07 - Owarimonogatari/All/', 7),
(321, 'Yoroimusha.mp3', 'files/music/07 - Owarimonogatari/All/', 7),
(322, 'Zensetsu.mp3', 'files/music/07 - Owarimonogatari/All/', 7),
(323, '3-gatsu 26-nichi.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(324, '3-gatsu 28-nichi.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(325, 'Ashita kara no Zento.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(326, 'Ato Kibun.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(327, 'Bonus01 \'\'Kizuminogatari\'\' Seisaku Happyyou PV BGM (BONUS TRACK).mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(328, 'Bonus02 Nekketsuhen Tokuhou BGM (BONUS TRACK).mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(329, 'Chi.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(330, 'Chikarazuku.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(331, 'Chintsuu.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(332, 'Doreikonjou.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(333, 'Energy Drain.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(334, 'Fukujuu no Shou.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(335, 'Full Name.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(336, 'Gakuen Inou Battle I.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(337, 'Gakuen Inou Battle II.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(338, 'Gakuen Inou Battle III.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(339, 'Ground.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(340, 'Heart-under-blade.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(341, 'Hidaruma.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(342, 'Hinshi.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(343, 'Hoozuri.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(344, 'Ichijin no Kaze.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(345, 'Ikenai Itazura.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(346, 'Inochi no Onjin.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(347, 'Ippanjoushiki.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(348, 'Jikai, Reiketsu Hen.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(349, 'Jingai.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(350, 'Juuboku.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(351, 'Kabun.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(352, 'Kenzoku.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(353, 'Ki ni Sawaru Koto.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(354, 'Kichoushu.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(355, 'Kioku.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(356, 'Kizumonotachi no Monogatari.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(357, 'Kokkeitan.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(358, 'Kongan.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(359, 'Koushounin.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(360, 'Kudaranai Riyuu.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(361, 'Maefuri.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(362, 'Megane no Iinchou Tokushuu.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(363, 'Minna ga Fukou ni naru Hoho.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(364, 'Miraretakunai Mono.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(365, 'Mission.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(366, 'Nekketsu Hen Title Back.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(367, 'Nenshou.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(368, 'Netsujou ni Chikai Kanjou.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(369, 'Ningen Kyoudo.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(370, 'Okashiratsuki.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(371, 'Onna no Ko no Otodokemono.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(372, 'Oppai.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(373, 'Oyakugomen.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(374, 'Sanningakari.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(375, 'Sekinin.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(376, 'Sennenju.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(377, 'Shi ni Basho.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(378, 'Shigatsu Itsuka.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(379, 'Shigatsuyouka.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(380, 'Shikatsumuika.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(381, 'Shinratsu.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(382, 'Shokujichuu.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(383, 'Shokumotsu Rensa.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(384, 'Sono Nuno.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(385, 'Spasibo!.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(386, 'Teki ka Mikata ka.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(387, 'Tekketsu Hen End Roll.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(388, 'Tekketsu Hen Title Back.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(389, 'Tomodachi no Tsumori.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(390, 'Tomodachi.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(391, 'Tomodachizura.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(392, 'Toukatsu Jigoku ~Soundtrack Version~.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(393, 'Tsumetai Me.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(394, 'Tsumihoroboshi.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(395, 'Tsuzuki wa Shingakki.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(396, 'Uwasa.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(397, 'Vampire Half.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(398, 'Wakare no Yoin.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(399, 'Wakatteita Tsumori.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(400, 'Warui Mono Ijime.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(401, 'Warukunai Haruyasumi.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(402, 'Watashi no Sei.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(403, 'Yane no Ue de.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(404, 'reprise.mp3', 'files/music/09 - Kizumonogatari/All/', 9),
(405, '\'\'Kawarimasen ne, Araragi-senpai\'\'.mp3', 'files/music/10 - Owarimonogatari Second Season/All/', 10),
(406, 'Abijigoku.mp3', 'files/music/10 - Owarimonogatari Second Season/All/', 10),
(407, 'Balance.mp3', 'files/music/10 - Owarimonogatari Second Season/All/', 10),
(408, 'Bankonsakusetsu.mp3', 'files/music/10 - Owarimonogatari Second Season/All/', 10),
(409, 'Destination.mp3', 'files/music/10 - Owarimonogatari Second Season/All/', 10),
(410, 'Driver-gahara Hitagi.mp3', 'files/music/10 - Owarimonogatari Second Season/All/', 10),
(411, 'Enjaku Izukunzo Koukoku no Kokorozashi wo Shiran ya.mp3', 'files/music/10 - Owarimonogatari Second Season/All/', 10),
(412, 'Fushigi no Kuni.mp3', 'files/music/10 - Owarimonogatari Second Season/All/', 10),
(413, 'Geigou.mp3', 'files/music/10 - Owarimonogatari Second Season/All/', 10),
(414, 'Gense no Miyage.mp3', 'files/music/10 - Owarimonogatari Second Season/All/', 10),
(415, 'Goaikyou.mp3', 'files/music/10 - Owarimonogatari Second Season/All/', 10),
(416, 'Jikoai.mp3', 'files/music/10 - Owarimonogatari Second Season/All/', 10),
(417, 'Juusan Seiza.mp3', 'files/music/10 - Owarimonogatari Second Season/All/', 10),
(418, 'Keisandoori.mp3', 'files/music/10 - Owarimonogatari Second Season/All/', 10),
(419, 'Kochou no Yume.mp3', 'files/music/10 - Owarimonogatari Second Season/All/', 10),
(420, 'Kozou.mp3', 'files/music/10 - Owarimonogatari Second Season/All/', 10),
(421, 'Kyouhaku.mp3', 'files/music/10 - Owarimonogatari Second Season/All/', 10),
(422, 'Nagazeri.mp3', 'files/music/10 - Owarimonogatari Second Season/All/', 10),
(423, 'Ohimesamadakko.mp3', 'files/music/10 - Owarimonogatari Second Season/All/', 10),
(424, 'Oyakusoku.mp3', 'files/music/10 - Owarimonogatari Second Season/All/', 10),
(425, 'Peaky.mp3', 'files/music/10 - Owarimonogatari Second Season/All/', 10),
(426, 'Planetarium.mp3', 'files/music/10 - Owarimonogatari Second Season/All/', 10),
(427, 'Seishun no Owari.mp3', 'files/music/10 - Owarimonogatari Second Season/All/', 10),
(428, 'Shinjuu.mp3', 'files/music/10 - Owarimonogatari Second Season/All/', 10),
(429, 'Sou Iu Ikikata.mp3', 'files/music/10 - Owarimonogatari Second Season/All/', 10),
(430, 'Teisei.mp3', 'files/music/10 - Owarimonogatari Second Season/All/', 10),
(431, 'Watson-kun.mp3', 'files/music/10 - Owarimonogatari Second Season/All/', 10),
(432, 'Yuujin no Ichimen.mp3', 'files/music/10 - Owarimonogatari Second Season/All/', 10);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `body`, `date`) VALUES
(1, '<p>All I ever do is watching videos (motivational sometimes), thinking about how stupid and weak I am because I don&rsquo;t do shit.</p>\r\n\r\n<p>Keep on doing nothing.</p>\r\n\r\n<p>Self hate (more like feeling numb and not being able to do anything really)</p>\r\n\r\n<p>Often think about graphic tablet laying right next to me. Why did I buy that? Had hopes. Now I don&rsquo;t. Wanted to change my life. Didn&rsquo;t workout. Why? Not fucking capable.</p>\r\n\r\n<p>Better browse 9gag, watch YouTube videos, close the tab, reopen it, keep on throwing shit under the upper lip. Yeah&hellip; pathetic</p>\r\n\r\n<p>Why do I write this even? May be I hope someone will read this and tell me what to do, to make me happier with my life. No one will ever read this. May be I try to dig deeper into myself, hoping I will figure something out by myself.</p>\r\n\r\n<p>Thought about learning Java, then some other language. How did that workout for ya? Exactly.</p>\r\n\r\n<p>I have no idea what to do. Life is hard, but not because of work, but because there is just too much to it. Whiny bitch.</p>\r\n\r\n<p>Thinking about how problems always fading away, solving itself somehow. One day that will stop. What&rsquo;s then?</p>', '24.05.17'),
(2, '<p>Watched a video by nature flight called transformation//:.metamorphosis. Inspirational stuff. Much like every exurb1a&rsquo;s videos. I&rsquo;ll try to use that as an inspiration.</p>\r\n\r\n<p>This was supposed to be an anger outlet for me, but I found myself liking writing all of this down. Progress?</p>\r\n\r\n<p>Felt that I should&rsquo;ve act different today. But I fell into the same shit again: shitting on people. Not in a serious way, the funny one. Does it matter? I don&rsquo;t know how I should act, how I wanna act. Letting everything just go with a flow is not a good choice, what is good then?</p>\r\n\r\n<p>Noticed that I use a lot of unnecessary questions. Guess that means I try, subconsciously, dig deeper into myself. Or may be I just tend to do that, to make all of this not seem so boring. Pretentious prick.</p>', '25.05.17'),
(3, '<p>Felt that I need to write something every day, even if nothing happened, nothing to think about.</p>\r\n\r\n<p>Sooooo&hellip;&hellip;.</p>\r\n\r\n<p>Exam tomorrow(this morning), I don&rsquo;t think I&#39;ll get less than 4. Fine by me.</p>\r\n\r\n<p>I don&rsquo;t know. Going to bed.</p>', '26.05.17(27 night)'),
(4, '<p>I have been playing osu 3 days straight (not really). Now it&rsquo;s 4 in the morning and I am just watching asmr videos and playing hearthstone trying to get some sleep. Thinking about how pathetic and weird this whole situation is.</p>\r\n\r\n<p>I&rsquo;m getting fat. Really. I need to do something about it. Not just sit there like &ldquo;yeah, I need to do something about it&rdquo;. I need to play osu less. May be use it as a gratification for actually doing something, because it&rsquo;s getting out of hand.</p>\r\n\r\n<p>So conclusion to this day is: &ldquo;don&rsquo;t get fat and do something u bitch&rdquo;</p>\r\n\r\n<p>Sounds like a plan.</p>', '29.05.17(30 night)'),
(5, '<p>Okay, using osu as a gratification works a little wrong. I have made a little changes in my coursework and played 3 hours of osu after that. Like that&rsquo;s enough for today. And it&rsquo;s too late for working out so I did barely a single thing today. Great start what can I say.</p>\r\n\r\n<p>I don&rsquo;t even feel bad about it. Well, not really. This osu stuff kinda fills emptiness inside, days come and go. Just like whole two past years. I will regret it so much but I&#39;m young and stupid so <em>I just don&rsquo;t give a fuck</em> for now.</p>\r\n\r\n<p>I don&rsquo;t see the point. There was no point for past two years. Past two years&hellip; Can I just blame everything on my <strong>emotional detachment and apathy</strong>? Well, maybe, actually. Go to college, spend three hours in the bus, even more in this stupid college. They barely teach us anything. Self education is for the strong people, not for me.</p>\r\n\r\n<p>So there is cycle in my life for these two years:</p>\r\n\r\n<ul>\r\n	<li>Feeling completely numb and empty</li>\r\n	<li>Feeling too numb and empty so I can&rsquo;t stand it anymore</li>\r\n	<li>Trying to do anything</li>\r\n	<li>Give up</li>\r\n</ul>\r\n\r\n<p>I skip third step a lot of times.</p>\r\n\r\n<p>I know, I know. <em>Look at me, I&#39;m another fucking teenager who thinks he has some type of mental illness</em>. <strong>Bet you haven&rsquo;t seen this already like everyday</strong>.</p>\r\n\r\n<p>I wish it was like that. But it&rsquo;s not. Sometimes I just hope, that it is not emotional detachment, but rather just being bored because I have no friends and life. Yeah, much better now.</p>\r\n\r\n<p>I don&rsquo;t get inspired anymore. No feelings, no urges, no motivation, no inspiration, nothing.</p>\r\n\r\n<p>I used to get inspired every day. Especially music kept me alive.</p>\r\n\r\n<p>Now it&rsquo;s not. Sad.</p>', '30.05.17'),
(6, '<p>Okay, did nothing today as well. Good job. All these excuses like I&#39;m tired, I&#39;ll do something tomorrow, I went to college so that&rsquo;s enough for today. Weak shit.</p>\r\n\r\n<p>I don&rsquo;t think this is gonna change anytime soon.</p>', '01.06.17'),
(7, '<p>It didn&rsquo;t change&hellip;</p>\r\n\r\n<p>Sometimes I think my mind thinks some stuff against my will, just to piss me off. It really is. All these flashing images. I can&rsquo;t stop it. Sounds too psychotic but it&rsquo;s not like crazy stuff&hellip; I hope&hellip;</p>\r\n\r\n<p>So I guess setting up goals for tomorrow is useless idea so I stop right there.</p>', '02.06.17'),
(8, '<p>All of this dopamine. That I could get. I did 10 push up just to ease the tension in hands and it felt incredibly rewarding. I have to do something, or this hole of numbness will eat me alive.</p>\r\n\r\n<p>Listening to nature flight talking about how everything is possible. I used to be that way. Wow, how cool I was. Now it seems pretentious. Cringy even. But she has an idea, a goal. That&rsquo;s better than watch her stuff thinking that you know it all. You don&rsquo;t. Fag. Yeah, masterfully busted myself, but I did it intentionally so it&rsquo;s all just a big unfunny joke, that has been going on for too long.</p>\r\n\r\n<p>Put on Cole, don&rsquo;t think about things you have to do, feel safe.</p>\r\n\r\n<p>Great system.</p>\r\n\r\n<p>I haven&rsquo;t been doing anything productive for 3 weeks at least. I don&rsquo;t even feel urge to do anything. Living life baby.</p>\r\n\r\n<p>I always been thinking about meaning of life. What&rsquo;s that all about. Children is a pure excuse for me. Giving birth for the sake of keeping your family name. That infinite loop to nothing. Negative infinity. <em>Everybody dies</em>. Cole said that. Not like he the first one. But it is important for me that he exactly said that.</p>\r\n\r\n<p>I&rsquo;ve came to conclusion that the only meaning I see in life is to get famous. And spread a good vibes. Not like all this shit that&rsquo;s famous right now. So you really leave a trace in a world, in people. That&rsquo;s life. And that&rsquo;s what I will never achieve, so I don&rsquo;t try, don&rsquo;t fight.</p>', '03.06.17'),
(9, '<p>Thoughts that are written in this doc are constantly in my mind, but nothing is changing. I feel no different. There were so many days when I thought &ndash; okay, this day MIGHT BE a new start &ndash; and it never comes out any different from other days. Stupid.</p>', '04.06.17'),
(10, '<p>Okay, so yesterday I tried fitness (cardio training) and that was awesome. I had a good mood for whole day and even today&rsquo;s morning even though my body aches. I gotta keep moving.</p>\r\n\r\n<p>And I gotta learn how to reddit. And read books.</p>\r\n\r\n<p>Not like I motivated or something, but it&rsquo;s better than nothing.</p>', '06.06.17'),
(11, '<p>SOOOOOO</p>\r\n\r\n<p>I went to a birthday of a group-mate. There were 4 more other group-mates and 3 girls I didn&rsquo;t knew. It went pretty well for my money but I don&rsquo;t feel anything different. Like nothing happened. I expected to feel more confident or something like that but no.</p>\r\n\r\n<p>And even before that I acted like I was scared as hell to be on that birthday and I kinda was but yet again never really felt something inside of me.</p>', '12.06.17'),
(12, '<p>How much time I could&rsquo;ve spent doing something instead of procrastinating.</p>', '13.06.17'),
(13, '<p>Yesterday was my birthday.</p>\r\n\r\n<p>Not like birthday at all. I&rsquo;m fine with that. But I felt so bad and I have no idea why. The lack of emotions is like a void inside and sometimes it&rsquo;s just sucks me in.</p>', '23.06.17'),
(14, '<p>Today I knew about my group-mate selling out 15 minutes of work for 1500 roubles to another one. Kinda fucked up to me. He could use some conscience or pride. She said that she couldn&rsquo;t ask me because I wouldn&rsquo;t take any money. And I wouldn&rsquo;t.</p>', '24.06.17'),
(15, '<p>Spent hour in a bed thinking about girlfriend. Well, about not having a gf. My brain always does that thing where it thinks about specific girl, even if I&#39;m not into her, so the subject seems more clear. Fuck you brain.</p>\r\n\r\n<p>So what about gf? I don&rsquo;t know. I haven&rsquo;t even kissed and I&#39;m 19 y/o. That feels a little pathetic. Not&nbsp; like I really need gf, just weird. But I really suck at talking to people, not just girls, so my chances of not dying alone seem a little low. Next year studying, then army. There wouldn&rsquo;t&nbsp; even be an opportunity for anything really. Why do I even write this, that&rsquo;s the question.</p>\r\n\r\n<p>I think about situation where I magically have a gf, then what? I&rsquo;m not an interesting person, not even close. She would leave in like 2 hours. No joke. Not rich, not funny, not handsome. Nobody.</p>\r\n\r\n<p>Even this whole thing with a &ldquo;hey, it&rsquo;s me&rdquo; is so pathetic.</p>\r\n\r\n<p>So studying, army, more studying with a job, job only, a little bit of weed, hopefully, and death.</p>\r\n\r\n<p>Is it excuse for being this pity? No.</p>\r\n\r\n<p>Sometimes I scroll trough this doc a little but stop myself cause I don&rsquo;t know if I should wait. Wait until my life goes to complete shit so I read these stuff and think that I need to improve something that life goes on that &ldquo;I&#39;ve been there and now I&#39;m here so it&rsquo;s something&rdquo; but these whole concept is weak as fuck. Just like me. I don&rsquo;t want to do something now, I just build something that my future self MIGHT want to do.</p>\r\n\r\n<p>Ridiculous.</p>', '01.07.17'),
(16, '<p>So I watch Fresh Blush ASMR quiet often and it was all cool. She seems very genuine and her videos not the lazy-type, but suddenly a thought popped in my mind. She is really secretive about herself. No twitter or fb accounts. She deletes her videos with no explanation. Rare YouTube answers is not enough. Even blocked the discussion on her channel. So I just thought &ndash; she doesn&rsquo;t care about her fans, just making money. Why this hurts so much? Is it true or I&#39;m just overthinking cause I&#39;ve never been on her place. May be that&rsquo;s because of all the harassment she gets, even though I&#39;ve never seen any harmful comments. I don&rsquo;t know. I was about to say it all to her on her next video but damn that&rsquo;s selfish. I&rsquo;m confused.</p>\r\n\r\n<p>She kept me in some kind mindset, like there&rsquo;s still a lot of good people, but reality strikes I guess. But yet again it all might not be true.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kinda getting tired of all the shit I&#39;ve been doing this summer. Playing FTL and osu!, watching videos on YouTube that not even important in a way and listening to music. That&rsquo;s it. My body even aches because of all the sitting. Eyes suffer too. But I don&rsquo;t want to do anything, even this stuff. So what are my options? Try making music, painting, learning some Java may be. But motivation is not there. Plus I really don&rsquo;t think I would success in any of that. But I can&rsquo;t stand shit I&#39;m doing anymore. Can&rsquo;t stand myself.</p>', '14.07.17'),
(17, '<p>I need to take care of myself.</p>\r\n\r\n<p>I am currently watching Community series. I&rsquo;ve never seen something that restores faith in humanity as well. Faith in myself even. Seeing Jeff chasing &ldquo;better him&rdquo;, I want to be like him. In shape, confident, smart. I know &ndash; he is just a character, but I am not me, if I&#39;m not copying something that I saw in TV/internet. I have all the time in the world right now, so there&rsquo;s no excuse.</p>\r\n\r\n<p>I have downloaded lmms &ndash; something to create music with. It feels so good for some reason, I guess I&#39;ll give it a try.</p>', '18.07.17'),
(18, '<p>Okay, I need to write something down. Anything.</p>\r\n\r\n<p>So I figured I might try music, need to start learning Java again, might do something in linux, just for fun. It has already been there, on the surface, I just never had a motivation to do it. Not like I have that right now, but, you know, sometimes there is &ldquo;too late&rdquo;.</p>\r\n\r\n<p>Hold onto:</p>\r\n\r\n<ul>\r\n	<li>good music</li>\r\n	<li>Cut (regulate) vk and 9 gag</li>\r\n	<li>Start reading</li>\r\n	<li>YouTube guys:\r\n	<ul>\r\n		<li>YSAC</li>\r\n		<li>Casually explained</li>\r\n		<li>Exurb1a</li>\r\n		<li>Maybe even Nature Flight</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<p>I&rsquo;ll add something along the way. These channels are not very motivational, but they are positive, I need that.</p>\r\n\r\n<p>Okay, it was like 6 hours since I wrote this previous shit, and I&#39;m already envious of everything connected to these things. I hear a good piano melody &ndash; regret of not being able to write even simplest shit. Why am I like this. It is nit reasonable and I understand that, still envious. It is hard being over-competitive and envious when you don&rsquo;t do shit. Easier to say, I will never be like them. It is true though.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Stream of consciousness to this day:</p>\r\n\r\n<p>First of all, these idea of stream of consciousness is stupid to me. You try to pour your thoughts in most pretentious way you possibly could. Just as a modern society &ndash; just a bunch of white noise, with technical difficulties behind it. And here I am, constantly complaining, but doing nothing at the same time. A waste of skin, as they say. Today I&#39;m in the faze, that I mentioned, where I try to break the pity circle. I felt kinda good after reading some motivational topics, listening to Kendrick. I guess there is still hope that there is something good inside of me. The lack of motivation keeps me on the lowest point of my life. But lets break down my life right now, as I did a thousand times already. Waking up &ndash; Instantly turn computer on &ndash; Watch some shit on YouTube, playing osu, listening to music, this is worse than procrastinating &ndash; go to sleep. I feel nothing as I wake up, just as I go to sleep. Nothing is happening and nothing will happen. Then why don&rsquo;t just do things? If I don&rsquo;t get the satisfaction from the life that I&#39;m living right now, then changing it is probably not that hard. I HAVE TO START. &ldquo;<em>These day is gonna be different&rdquo;</em> and it never is. I will rot to death if I&#39;ll keep on being such a little whiny bitch.</p>', '04.08.17'),
(19, '<p>hey, it&rsquo;s me again</p>\r\n\r\n<p>Just spent an hour or maybe less watching porn (not really, but kind of) thinking how pathetic my life is. Same old record, right? I made this stupid plan of learning java or starting drawing or reading. I didn&rsquo;t do any of this yet. It is like complaining that there is no food, while there is a whole plate right in front of you.</p>\r\n\r\n<p>Yo, every time I watch porn or just spend an absolutely worthless day I feel some type of guilt. But the thing is not to myself but to the girl that is set up as my desktop wallpaper &ndash; FreshBlush aka Erin Tiffany aka one of the most beautiful girls I&#39;ve ever seen. So she is all that perfect in my eyes, and I kinda feel like &ldquo;damn, I&#39;m so pathetic, I will never have a girl, especially like that&rdquo;. Which is true.</p>\r\n\r\n<p>And I can;t make music. This is absolutely terrible without MIDI keyboard. Which I want to buy as soon as I will live alone. If that ever happens (probably not). So no music for couple of years, okay. Not a big deal, right? Like I would do anything.</p>', '07.08.17'),
(20, '<p>So I guess I&#39;ll start watching anime called KanoSuba or smth, but before I even finished watching first episode I had read trough a lot of treads like &ldquo;is it weird to watch anime&rdquo;. And someone said that most of anime watchers a filthy disgusting people. So I noticed that I am really like that, even though I&#39;m not an anime watcher. So I need to become opposite. I need to keep good hygiene, try to get in shape, or at least not gain any more weight, cause that&rsquo;s disgusting anyway.</p>\r\n\r\n<p>That&rsquo;s nothing new. I&rsquo;ve already set goals like that and successfully failed them, but that image of a bad smelling disgusting fuck, which I almost am at the moment, kinda made me realize that this is more important than I thought it was.</p>\r\n\r\n<p>Yeah I had that idea of attractive raunch but I guess it doesn&rsquo;t work in real life. But I will be following that still, but better.</p>\r\n\r\n<p>I guess restricting myself from anything to make things done will not work, cause I don&rsquo;t want anything that bad to actually do something for that. It&rsquo;s easier to abandon the whole thing. But I need to think about my future-self. I already know that I am failure and will look back on this times with regret, so I need to not make it worse.</p>', '18.08.17'),
(21, '<p>So college will start in a couple of days and driving school in a month. And suddenly I&#39;m thinking of thing that are taken from me that way cause I wouldn&rsquo;t have time. But things like learning java and drawing.&nbsp; Things that I don&rsquo;t do. My mind desperately tries to make things up to justify my laziness like &ldquo;i definitely did that cool thing, shame that I won&rsquo;t have time for that. Arrrgh, this college...&rdquo; I could finish a couple of java related books this summer, but I didn&rsquo;t. No excuse.</p>', '29.08.2017'),
(22, '<p>So, I have started watching anime. It feels weird. That feels like something fresh, since my life became as stagnant as it possibly could. But at the same time I contemplate, may be that&#39;s a bad change. What if it destroys my life even further. I feel soft hearted. It makes me disconnect more from real life and fall into my inner world. I like it, cause I think that&#39;s essential part of not becoming just working machine, but there&#39;s no way that&#39;s gonna help me in life or work.<br />\r\nAnd the fact that I can&#39;t evaluate my life makes everything worse as I don&#39;t know what to do.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>I always wanted to be the type of cool guys, who don&rsquo;t know\\think that they&rsquo;re cool. Like this would be my perfect personality. I guess I&rsquo;m doing something wrong.</p>', '27.08.17'),
(23, '<p>Anime almost made me start drawing again. Ha, nice try, anime.</p>\r\n\r\n<p>And I FELT today, for a couple of minutes. Sounds weird but I know what I&#39;m talking about, and that&rsquo;s enough.</p>\r\n\r\n<p>My group-mate texted me today to say what options he found on where could we go after college, army. And it kinda hit me, again, I can&rsquo;t stay inside my inner world with this questions. I gotta grow out of it. There will be a moment in the future, where I&#39;ll have to detach from my home, and I don&rsquo;t think I&rsquo;m ready for it.</p>\r\n\r\n<p>Let&rsquo;s try break my summer down:</p>\r\n\r\n<p>1) Osu, I spent around 150 hours there, not good investment of time, useless (Got 2k pp, whoa, such a legend)</p>\r\n\r\n<p>2) 30 hours watching anime stuff, bad, but feels good, until I remember that I&#39;m failure at life</p>\r\n\r\n<p>3) Read 200 pages of Java book, and that&rsquo;s pathetic</p>\r\n\r\n<p>4) I guess all hours that left are the ones I spent watching YouTube. Could be potentially useful. Yeah, could be.</p>\r\n\r\n<p>5) Actually tried writing music, or learn it at least, but I lasted for a week only, and stopped due to not having midi keyboard, so that doesn&rsquo;t count</p>\r\n\r\n<p>That&rsquo;s it. Expected nothing more from myself.</p>\r\n\r\n<p>And yeah, just a friendly reminder that I don&rsquo;t have friends.</p>', '30.08.17'),
(24, '<p>Today i&rsquo;ve watched a really touching video by Gigguk, about how he felt connection to a certain anime due to events in his life. And that makes me sad, cause I won&rsquo;t ever be able to connect to something, not just anime. There upsides to it, but downsides overcome that.</p>\r\n\r\n<p>I need to calm down (not like I am hyped or smth). Everything is gonna be ok. Just stay true to yourself.</p>', '31.08.17'),
(25, '<p>Soo<br />\r\nYesterday was different. I had read whole &quot;hey it&#39;s me&quot; thing and it was planned the way that I should read this when I&#39;m at my lowest point. I guess that was exactly that, I&#39;m more miserable then</p>\r\n\r\n<p>ever.<br />\r\nI decided to delete osu! because it&#39;s a gigantic waste of time, but spent two hours today, playing it. Like what the fuck!? Like I want my life to be this miserable.</p>\r\n\r\n<p>I do.</p>\r\n\r\n<p>I would say shit like that a couple years ago to someone, because I wanted someone to pity me. Now it&#39;s different. Now even I don&#39;t pity myself. Goodbye.</p>\r\n\r\n<p>Fuck you.</p>\r\n\r\n<p>Like it would make you reflect on life and be like &quot;nah, I can&#39;t live like that anymore&quot;<br />\r\nHow is your osu! going? Faggot.</p>', '13.09.17'),
(26, '<p>hey, it&rsquo;s me back at it again</p>\r\n\r\n<p>complaining about my life with even more determination&hellip; as well as ruining it.</p>\r\n\r\n<p>So I started watching anime at the end of the summer and my brain was like &ldquo;oh, look at this, one more opportunity to make your life even more miserable&rdquo;. So I spent almost all free time at the hospital (I was in the hospital for almost 3 weeks) browsing anime treads. Like come on. This even worse than osu. Tried to read books and learn how to play intellectual games as well but didn&rsquo;t succeed, what a shocker. So now I have &gt;700 anime arts in my phone for no real reason. I should learn java, prepare for driving school, think about my coursework, but I spent all day playing osu, saving anime pics and thinking how fucked up I am. I even purposefully embarrass myself in front of my groupmate that also watches anime, by saying all that anime shit, to see his reaction. He says that everything is fine, but that&rsquo;s not true.</p>\r\n\r\n<p>I feel that I have said something like this so many times, and I did, but I don;t know even why at this point. It&rsquo;s pretty clear that this whole &ldquo;hey it&rsquo;s me&rdquo; thing is not working, not even slightly. I don&rsquo;t even say anything specific, I just ramble about myself and my life, because nothing happens. Why would it?</p>\r\n\r\n<p>And my osu! Is doing great, thank you</p>', '14.10.17'),
(27, '<p>So yet again a thought came to my mind. Out is not happening often. Me doing all this anime and osu! shit doesn&#39;t make me happier. But it doesn&#39;t make sense. I like it, I do it, I feel sad about it. Then what I should do is mixing it all up with actual work. I guess that would make me happier, can&#39;t explain why though. I just hope that it will and hope that I will do something towards it.</p>\r\n\r\n<p>This is not some clever thought out thing, and stuff like that always pops out sometimes, but I need to write this down yet again.</p>\r\n\r\n<p>And I did</p>\r\n\r\n<p>Nice<br />\r\nNot that hard</p>\r\n\r\n<p>I hope I&#39;m not just justifying myself there</p>\r\n\r\n<p>Again</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Aaaaaaaaaand I&#39;ve spent one and a half hour watching ecchi stuff, tomorrow better not be wasted</p>', '15.10.17'),
(28, '<p>25.10.17</p>\r\n\r\n<p>Yet again, I just spent whole free time, about five hours, playing osu!. And I don&rsquo;t even like it, it&rsquo;s frustrating, my hand hurts, I just get worse, it doesn&rsquo;t make sense. And that&rsquo;s important because I even get dumber for a circle-clicking game. I&rsquo;m pushing limits of retardation. Why am I like this?</p>\r\n\r\n<p>Life doesn&rsquo;t look promising.</p>', '25.10.17'),
(29, '<p>Am I here so&hellip; Listening to Rem&rsquo;s &ldquo;Wishing&rdquo; and damn&hellip; I really want to want to cry (intentional), but I just can&rsquo;t. This is so stupid - to become attached to fictional characters, and I will probably laugh at myself in a couple of years, but that&rsquo;s what I want, or at least try to want right now. Trying to not let my frivolous stupid side go. I have already told about that.</p>\r\n\r\n<p>Wanted to talk about how I stayed up to 2 at night after doing a little work as a &ldquo;reward&rdquo; for it, but fuck that.</p>\r\n\r\n<p>Trying to stay human is more important.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&ldquo;try not to sound so cocky&rdquo;</p>\r\n\r\n<p>&ldquo;i am, and I hate myself for these phrases&rdquo;</p>', '30.10.17'),
(30, '<p>Nowadays all I do is playing osu!. I don&#39;t even try thinking about changing my life anymore, because I know I will never achieve that. I gave up to this parasite style of life.<br />\r\nFrom now on I forbid myself from writing in &quot;hey it&#39;s me&quot; until I get my shit together, no more wining. You either do something or shut the fuck up and go on wasting your &quot;life&quot; you waste of skin.<br />\r\nBye... May be forever</p>', '05.11.17'),
(31, '<p>So okay. It&rsquo;s been a while. First of all, yeah, my osu still going strong my man, as well as being anime trash. But I guess everyone gets seconds chance amiright? Well it is more like more than 1000&rsquo;s chance for each day spent doing nothing. Lets try to change that.</p>\r\n\r\n<p>Sooooo</p>\r\n\r\n<p>A lot of stuff have happened in this half of a year. I was employed as a trainee in a InfoSecurity company called Solar Security. Dope. Failed driving test 3 times. Not dope. Still a bag of trash. Usual.</p>\r\n\r\n<p>So I think I&#39;m in that phase again where I try to break out of my pitiful cycle. And that is because of the anime I watched called &ldquo;A place further than a universe&rdquo; and two YT videos about it: What&rsquo;s in an OP? By Mother&rsquo;sBasement and Kimari&rsquo;s Wake Up Call by UnderTheScope. Really strong stuff, well at least I think so. First made me feel the way that we all create out own future, which is obvious, but yet again, I needed someone to tell me that. Second one goes deep under the skin talking about our choices and what we are doing with our lives and it does that very precise, meaning that I think absolutely the same way.</p>\r\n\r\n<p>So my brother gone for a walk and will come back in half of an hour, so I wont do anything serious right now, but I PROMISE myself to dedicate this evening doing course project and giving it my best.</p>\r\n\r\n<p>P.S.: You can do it my man</p>\r\n\r\n<p>P.P.S.: This is /r/sadcrynge worthy, but doesn&rsquo;t it apply to everything you do? Exactly. Cheer up.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>So I did something. It&rsquo;s not much but that&rsquo;s fine. Keep up.</p>', '07.04.18'),
(32, '<p>Not sure what to say.</p>\r\n\r\n<p>The thing I was fighting against is a huge part of my life now. Yeah, osu!</p>\r\n\r\n<p>Nothing happens in my life even though something is happening. So one of my biggest concerns right now is that I can&rsquo;t fc anything for like a month of active playing. Yeah. What can I achieve in life if I can&rsquo;t even click fucking circles. It doesn&#39;t work like that, but I don&#39;t care of course as always.&nbsp;</p>\r\n\r\n<p>Plus I bought snus again and threw up already. What a pity.</p>\r\n\r\n<p>I guess this day note is about acceptance. I gave up trying change my life a long long time ago. But I had hope. I don&rsquo;t think I have now.</p>', '12.04.18'),
(33, '<p>if I had to describe days with colors, this one would be dark. Brown or even black. I had to do my course work, but all I did is playing osu! and I even had spent 4 hours on r/watchpeopledie. I don&rsquo;t know even. Felt ultra numb (pun kinda intended).</p>', '22.04.18'),
(34, '<p>Hey there, long time no see.</p>\r\n\r\n<p>So I started watching this show, Mob Psycho 100, and I caught the feeling that I like everything, that is much bigger on inside, besides what it appear to be. Monogatari, Evangelion and now this. This thought is nothing new, but I understood that this is how I act in real life. Hiding behind the fence with obvious holes in it, trying to get anybody to sneak a peek. Some do, some do not. Exactly how I wanted it to be, but, for some reason, I&#39;m still very unhappy. I guess this style doesn&rsquo;t really work in real life. But I don&rsquo;t know what to do, how should I act. Because I can&rsquo;t act differently. This is what I am and it bugs me.</p>\r\n\r\n<p>komm susser tod</p>\r\n\r\n<p>Still a pretentious prick after all.</p>', '14.07.18'),
(35, '<p>So uh, yeah. Here I go whining again about not doing anything. It is 3a.m right now. I&rsquo;m watching AMVs of Evangelion with no reason, just so I can clear my &ldquo;watch later&rdquo; list I guess. Played osu and did nothing productive the whole day. Same song and dance yaknow. But before it was less serious. Now I have a work to care about, which is already lost by the way but still. Numbness is the same, it is there. Don&rsquo;t want to work, don&rsquo;t want to study, don&rsquo;t want to live. Letting everything go as it goes, my fucking way of solving everything. Want to sleep, but force myself staying up just so the &ldquo;tomorrow&rdquo; happens later. Golden years, just as always.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>And did I mention that i&rsquo;m really into anime girls for a long time? Probably not. Yeah, I just cope with lack of real connection. It is deliberate.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>I told a guy I know about how I keep myself from thinking about girls, because I feel that i&rsquo;m not worthy.</p>\r\n\r\n<p>And it comes to everything really. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy. Not worthy.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Not worthy of having friends, not worthy of having or even looking at a girl, not even worthy of the things that I could get but didn&rsquo;t.</p>\r\n\r\n<p><em>Life is unfair.</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>I thought I had that already written down but I guess I didn&rsquo;t, so here it goes.</p>\r\n\r\n<p>I have a theory. Not a theory really, just something that I believe in. So this belief goes like this:</p>\r\n\r\n<p>We are not equal. Some people are better as a person, as a member of society, as a friend. And some don&rsquo;t. We can&rsquo;t all be good at something, can&rsquo;t all be bad, can&rsquo;t even be equal. So if it is my faith to be a loserish type, i&rsquo;ll take and accept it. I&rsquo;m not alone in being an outcast, so it is not a big deal, right?</p>', '15.07.18'),
(36, '<p>Didn&#39;t do absolutely anything today that&#39;s incredible, didn&#39;t even play osu, because i was frustrated about not doing anything. Struggled to get myself to learn squid for couple of hours but couldn&#39;t anyways. That is so miserable.</p>', '21.07.18'),
(37, '<p>So I&rsquo;ve been playing a lot of osu! and watching a lot of anime this week. But I have to do stuff. I need to make progression plan to present to my team lider, have to learn something, have to do something. But it always comes down to &ldquo;oh, I will have this two days off and the rest of the week I will learn&rdquo; but this two days turn in whole week or &ldquo;it is already 10pm, i&rsquo;m going to sleep soon anyways so why even start&rdquo; and the next thing happening is me fooling around until 4am or so. This is just inexcusable, someday I will be like &ldquo;why was I such a dumbass, why did I spend all my time doing stuff that is not important hiding behind unreasonable excuses?&rdquo; and there would be no answer. literally none, stuff I do doesn&rsquo;t even bring me pleasure. Just passing time until stuff solves itself somehow.</p>\r\n\r\n<p>It is funny how I continue doing complete bullshit after writing something here like &ldquo;oh, I did scold myself for not doing anything, good job&rdquo;.</p>', '24.07.18'),
(38, '<p>At 2 am I was very sleepy so what I did is watching porn and masturbating for 2 hours and then watching anime until 5:30 instead getting sleep to be ready to make a job calls<br />\r\nI am a god</p>', '02.08.18'),
(39, '<p>So um, I&rsquo;m still looking for a job, got into programming. I think I&rsquo;m doing fine for now, but I don&rsquo;t think I can get an internship anytime soon, so I guess I have to cope with that and try to find something else.</p>\r\n\r\n<p>Army is on my ass too. I MAYBE, just maybe would have to go. I don&rsquo;t know and, honestly, don&rsquo;t really care. It really sucks, but then again, I think about possible changes in my life and not being under constant stress because of lack of job.</p>\r\n\r\n<p>Mom bought me a car, even though I never asked. I don&rsquo;t deserve it.</p>\r\n\r\n<p>I feel older, than what I felt, when started this heyitsme thing, but right now I&rsquo;m unemployed, possible recruit, still senseless, stupid, but not as judgefull towards myself. It is not a progress, quiet opposite in fact.</p>\r\n\r\n<p>I don&rsquo;t even want to write something. I don&rsquo;t believe in it anymore.</p>', '05.10.18');

-- --------------------------------------------------------

--
-- Структура таблицы `seasons`
--

CREATE TABLE `seasons` (
  `season_id` int(11) NOT NULL,
  `season` varchar(150) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `seasons`
--

INSERT INTO `seasons` (`season_id`, `season`) VALUES
(1, 'Bake'),
(2, 'Nise'),
(3, 'Neko(Kuro)'),
(4, 'Second Season'),
(5, 'Hana'),
(6, 'Tsuki'),
(7, 'Owari'),
(9, 'Kizu'),
(10, 'Owari 2');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `favourite_songs`
--
ALTER TABLE `favourite_songs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ost_id` (`ost_id`);

--
-- Индексы таблицы `heyitsme`
--
ALTER TABLE `heyitsme`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `ost`
--
ALTER TABLE `ost`
  ADD PRIMARY KEY (`id`),
  ADD KEY `season` (`season`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `seasons`
--
ALTER TABLE `seasons`
  ADD PRIMARY KEY (`season_id`);

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
-- AUTO_INCREMENT для таблицы `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `favourite_songs`
--
ALTER TABLE `favourite_songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT для таблицы `heyitsme`
--
ALTER TABLE `heyitsme`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `ost`
--
ALTER TABLE `ost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=433;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT для таблицы `seasons`
--
ALTER TABLE `seasons`
  MODIFY `season_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `favourite_songs`
--
ALTER TABLE `favourite_songs`
  ADD CONSTRAINT `favourite_songs_ibfk_1` FOREIGN KEY (`ost_id`) REFERENCES `ost` (`id`);

--
-- Ограничения внешнего ключа таблицы `ost`
--
ALTER TABLE `ost`
  ADD CONSTRAINT `ost_ibfk_1` FOREIGN KEY (`season`) REFERENCES `seasons` (`season_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
