-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:8889
-- Время создания: Сен 02 2018 г., 18:40
-- Версия сервера: 5.6.38
-- Версия PHP: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `myportfolio`
--

-- --------------------------------------------------------

--
-- Структура таблицы `aboutme`
--

CREATE TABLE `aboutme` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `aboutme`
--

INSERT INTO `aboutme` (`id`, `name`, `description`, `photo`) VALUES
(1, 'Егор Максимов', '<p>Я веб разработчик из&nbsp; Ессентуки.</p>\r\n\r\n<p>Мне 30&nbsp;лет. Занимаюсь разработкой современных сайтов и приложений. Мне нравится делать интересные и современные проекты.</p>\r\n\r\n<p>&nbsp;Этот сайт я сделал в рамках обучения в школе онлайн обучения WebCademy. Чуть позже я освежу в нем свой контент. А пока посмотрите, как тут всё классно и красиво!</p>\r\n\r\n<p><strong>Что я умею </strong></p>\r\n\r\n<p>Меня привлекет Frontend разработка, это не только моя работа, но и хобби. Знаком и использую современный workflow, работаю с репозиториями git и сборкой проекта на gulp.</p>\r\n', '222-863549500974.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `cat_title` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `cat_title`, `title`) VALUES
(2, 'Путешествия', NULL),
(3, 'Обучение', NULL),
(7, 'Тестовая категория', 'Тестовая категория'),
(8, 'Астрономия', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` int(11) UNSIGNED DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `text`, `date_time`) VALUES
(70, 32, 1, 'коммент к статье о портфолио', '2018-09-02 13:02:06'),
(71, 31, 1, 'коммент к статьи о математике', '2018-09-02 13:02:22'),
(72, 30, 1, 'коммент к статьи о космосе', '2018-09-02 13:02:41');

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `skype` varchar(255) NOT NULL,
  `vk` varchar(255) NOT NULL,
  `fb` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `secondname` varchar(255) NOT NULL,
  `github` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `lat` double DEFAULT NULL,
  `lng` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `contacts`
--

INSERT INTO `contacts` (`id`, `email`, `skype`, `vk`, `fb`, `twitter`, `secondname`, `github`, `name`, `tel`, `address`, `lat`, `lng`) VALUES
(1, 'makksimov.e.a@gmail.com', 'egor69424', 'https://vk.com/egor__01', '', 'https://', 'Максимов', 'https://github.com/Egor01', 'Егор', '+79034447999', 'Россия, Ставропольский край, г. Ессентуки', 44.044838, '42.858533');

-- --------------------------------------------------------

--
-- Структура таблицы `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) UNSIGNED NOT NULL,
  `period` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `jobs`
--

INSERT INTO `jobs` (`id`, `period`, `title`, `description`) VALUES
(1, 'февраль 2017 &mdash; по настоящее время', 'Frontend разработчик, Вконтактe, mail.ru group', 'Работы в команде Вконтакте. Работал в команде над обновление сервиса Музыка, работа над видео разделом. Создание видеоплеера. Создание кроссбраузерных компонентов. Работа над оптимизацией скорости загрузки медиа контента.\r\n'),
(2, 'сентябрь 2015 &mdash; январь 2017', 'Разработчик интерфейсов, Яндекс', 'Работы в проекте Яндекс Музыка. Создание новых разделов сервиса. Оптимизация и создание новых копанентов платформы.\r\n\r\n'),
(4, 'март 2013 &mdash; август 2015', 'Веб-разработчик, Cloud studio', 'Frontend и Backend для клиентских проектов студии. Работа над студийнойя интернет магазинов. Участие в разработке CRM системы &quot;Sky CRM&quot;. Стек используемых технологий: Git,JS, Angular.\r\n\r\n');

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `message_file_name_original` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `message_file` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `text`, `message_file_name_original`, `message_file`, `date_time`) VALUES
(1, 'Гомер', 'mail@gmail.com', 'Привет! Как тебе такое?', 'orig.gif', '492731353429.gif', '2018-09-02 11:58:16');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_520_ci,
  `date_time` datetime DEFAULT NULL,
  `author_id` int(11) UNSIGNED DEFAULT NULL,
  `cat` int(11) UNSIGNED DEFAULT NULL,
  `post_title` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_text` text COLLATE utf8mb4_unicode_520_ci,
  `post_img` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_img_small` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `text`, `date_time`, `author_id`, `cat`, `post_title`, `post_text`, `post_img`, `post_img_small`) VALUES
(30, 'Межпланетный керн — актуальная национальная задача', '<p>Планета ничтожно гасит Млечный Путь. Приливное трение представляет собой эллиптический аргумент перигелия, а время ожидания ответа составило бы 80 миллиардов лет. Высота гасит непреложный Тукан.</p>\r\n\r\n<p>Красноватая звездочка жизненно меняет экватор. Терминатор, сублимиpуя с повеpхности ядpа кометы, колеблет сарос, тем не менее, уже 4,5 млрд лет расстояние нашей планеты от Солнца практически не меняется. Радиант, на первый взгляд, притягивает математический горизонт. Магнитное поле меняет Тукан.</p>\r\n\r\n<p>Скоpость кометы в пеpигелии последовательно вращает реликтовый ледник. Исполинская звездная спираль с поперечником в 50 кпк существенно гасит центральный керн. Натуральный логарифм однородно перечеркивает перигелий, а время ожидания ответа составило бы 80 миллиардов лет.</p>\r\n', '2018-09-02 12:21:17', 1, 8, NULL, NULL, '920-717835179947.png', '320-717835179947.png'),
(31, 'Абстрактный минимум', '<p>Умножение двух векторов (скалярное),&nbsp;общеизвестно, оправдывает интеграл по бесконечной области, что неудивительно. До недавнего времени считалось, что умножение двух векторов (скалярное) транслирует отрицательный ортогональный определитель. В соответствии с законом больших чисел, геодезическая линия детерменирована. Многочлен, в первом приближении, обуславливает метод последовательных приближений.</p>\r\n\r\n<p>До недавнего времени считалось, что интерполяция реально восстанавливает расходящийся ряд. Экстремум функции стремительно отображает неопровержимый экстремум функции. Функция выпуклая кверху, не вдаваясь в подробности, поддерживает отрицательный математический анализ.</p>\r\n\r\n<p>Геометрическая прогрессия традиционно нейтрализует экстремум функции. В общем, число е синхронизирует косвенный определитель системы линейных уравнений. Мнимая единица порождает линейно зависимый вектор.</p>\r\n', '2018-09-02 12:28:48', 1, 3, NULL, NULL, '920-343532733874.jpg', '320-343532733874.jpg'),
(32, 'Портфолио дизайнера', '<p>Создание первого портфолио очень важно. По себе знаю, что просто тяжело взять и сделать сайт для себя. Постоянно нападает перфекционизм, в итоге забиваешь и остаешься снова ни с чем. Я собрал несколько простых способов создания портфолио для дизайнеров (подходит для веб-дизайнеров, фотографов и графических дизайнеров), составил план сайта-портфолио и сделал обзор веб-сервисов для публикации работ. &nbsp;Если еще нет портфолио, читай.</p>\r\n\r\n<p>Ты хочешь сделать портфолио, коммерческих работ еще нет, поэтому ты не создаешь его, а без портфолио у тебя не будет работ&hellip; Замкнутый круг. Учу, как с ним справляться.</p>\r\n\r\n<h2>Откуда брать проекты, если их нет</h2>\r\n\r\n<p><strong>&mdash; Дизайн для выдуманных клиентов</strong><br />\r\nВсе просто. Придумываете организацию, род деятельности, название,&nbsp;можете лого нарисовать и создаете для нее сайт. Выкладываете проект в&nbsp;портфолио. Плюсы: вы&nbsp;не&nbsp;нарушаете никаких прав, можете придумать любую компанию, например, гостиницу на&nbsp;Марсе, куда прилетают жители с&nbsp;Земли и делаете большой крутой проект.</p>\r\n\r\n<p><strong>&mdash; Дизайн известного бренда</strong><br />\r\nВыбираете любой известный бренд и&nbsp;делаете концепт сайта таким, как видите его&nbsp;вы.&nbsp;У компании&nbsp;РЖД, по-моему, самый ужасный сайт в&nbsp;мире, можно смело предложить концепцию этого сайта.&nbsp;С известным брендом работаете как с обычным проектом: делаете прототип, рисуете визуал и&nbsp;презентуете это в портфолио как концепт выбранной компании. Известный случай, когда парень сделал концепт Windows: расписал как может выглядеть вся линейка, Windows Office&nbsp;и&nbsp;так далее, сделал презентацию своего проекта. Через какое-то время его заметили и пригласили работать в&nbsp;Microsoft. Если сделаете концепт для известного бренда, это может стать резонансным проектом и&nbsp;сделает вас популярным дизайнером.</p>\r\n\r\n<p><strong>&mdash; Участие в конкурсах</strong><br />\r\nНа&nbsp;<a href=\"http://99designs.com/\" target=\"_blank\">сервисе&nbsp; 99designs</a>&nbsp;(сайт англоязычный)&nbsp;публикуются конкурсы для дизайнеров по&nbsp;разработке веб-сайтов,&nbsp;логотипов, упаковок, обложек книг и другие проекты. После регистрации вам открываются заявки на&nbsp;разработку проектов по вашей специализации.Вы работаете над понравившимся проектом и сдаете свою работу на оценку. Участвуете вы&nbsp;и&nbsp;сотни других дизайнеров, клиент, опубликовавший заявку, выбирает из&nbsp;работ наиболее понравившуюся и&nbsp;выплачивает гонорар автору. Идея участия в подобных конкурсах отличная: появляется соревновательный дух, вы можете смотреть как решалась задача другими дизайнерами, если вас выбрали, вы&nbsp;зарабатываете гонорар. На&nbsp;начальном этапе, когда нужна наработка проектов, участие в конкурсе &nbsp;&mdash;&nbsp;хорошая мотивация. Когда у&nbsp;вас уже есть поток клиентов, в&nbsp;конкурсах лучше не&nbsp;участвовать, потому что велика вероятность, что выиграете не&nbsp;вы.</p>\r\n\r\n<p><strong>&mdash; Свой проект</strong><br />\r\nЕще один способ: поэтапно рассказать о&nbsp;том, как вы&nbsp;создавали себе сайт-портфолио, на&nbsp;котором находится клиент в&nbsp;данный момент. Это не&nbsp;самый хороший вариант, лучше уж&nbsp;сделать сайт выдуманной организации.</p>\r\n\r\n<p><strong>&mdash; Дизайн для знакомых&nbsp;</strong><br />\r\nЧаще всего первые заказы приходят через знакомых. Поэтому начинайте всем рассказывать, что вы&nbsp;веб-дизайнер. Не&nbsp;все понимают, что такое веб-дизайн, поэтому можете просто говорить: я делаю сайты. Если у&nbsp;вас в&nbsp;паре есть верстальщик, то&nbsp;вы&nbsp;точно можете сделать сайт под ключ.&nbsp;Здесь лучше всего работает ваше социальное окружение и то как вы рассказываете другим людям о своем занятии веб-дизайном. Чем больше аудитория об этом знает, тем быстрее к вам придут первые заказы. Желательно, чтобы у вас в вконтакте с некоторой периодичностью публиковались посты, где вы напоминаете людям о том, чем занимаетесь с приложением своих работ. Важно знакомым в живую напоминать, что вы дизайнер или рассказать какой-то смешной случай с заказчиком. Люди запомнят ваши истории и, когда возникает необходимость в сайте, они в первую очередь вспомнят о вас.</p>\r\n\r\n<p>Если нет проектов, используйте эти 5&nbsp;способов, но&nbsp;ни&nbsp;в&nbsp;коем случае&nbsp;не&nbsp;работайте бесплатно. Работать бесплатно&nbsp;&mdash; очень плохо, это тормозит ваш прогресс и&nbsp;прогресс клиента.<br />\r\n<br />\r\nОригинал:&nbsp;<a href=\"http://fimushkin.com/blog/work/portfolio-dizainera/\">Портфолио дизайнера</a></p>\r\n', '2018-09-02 12:36:51', 1, 3, NULL, NULL, '920-177971711933.jpg', '320-177971711933.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `html` int(11) NOT NULL,
  `css` int(11) NOT NULL,
  `js` int(11) NOT NULL,
  `jquery` int(11) NOT NULL,
  `php` int(11) NOT NULL,
  `mysql` int(11) NOT NULL,
  `git` int(11) NOT NULL,
  `gulp` int(11) NOT NULL,
  `bower` int(11) NOT NULL,
  `webpack` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `skills`
--

INSERT INTO `skills` (`id`, `html`, `css`, `js`, `jquery`, `php`, `mysql`, `git`, `gulp`, `bower`, `webpack`) VALUES
(1, 80, 80, 40, 60, 70, 60, 50, 50, 30, 20);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `secondname` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `recovery_code` varchar(191) DEFAULT NULL,
  `recovery_code_times` double DEFAULT NULL,
  `avatar_small` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `avatar`, `city`, `role`, `secondname`, `country`, `recovery_code`, `recovery_code_times`, `avatar_small`) VALUES
(1, 'makksimov.e.a@gmail.com', '$2y$10$UE0q5az7Ax46Rz/bc551QeKZ767SCblbm.JwRtbVIy92aw7ZnOfnm', 'Егор', '850303310041.jpg', 'Ессентуки', 'admin', 'Максимов', 'Россия', 'JabXnk2lpCE4Lou', 3, '48-850303310041.jpg'),
(8, 'mail@gmail.com', '$2y$10$l/GUSdK60JtSmQqjUMlXmOrJJ7JHsjUBQhyH6Eizyi0KeAFNn.Rdi', 'Гомер', '970420649306.jpg', 'Springfield', 'user', 'Симпсон', 'USA', '4weAdOxEZb6syqX', -2, '48-970420649306.jpg'),
(9, 'makksimov.e.a@gmail.com', '$2y$10$MTSs9G0qLy1NFr4UzqS1Xe9Ut3FAloLNa7wmjsFORJia84rdjgGP.', 'Иван', '432221023016.jpg', 'Москва', 'user', 'Иванов', 'Россия', NULL, NULL, '48-432221023016.jpg'),
(10, 'makksimov.e.a@gmail.com', '$2y$10$9WgS12XT8UKrP6UbD3ICye/qJY9Pic1FuuEhOP6u8vjJd7ogxRide', 'Алена', '475350730757.jpg', 'Красноярск', 'user', 'Шульц', 'Россия', NULL, NULL, '48-475350730757.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `works`
--

CREATE TABLE `works` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `img_big` varchar(255) NOT NULL,
  `img_small` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `result` text NOT NULL,
  `technologies` text NOT NULL,
  `link_project` varchar(255) NOT NULL,
  `link_git_hub` varchar(191) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `works`
--

INSERT INTO `works` (`id`, `title`, `img_big`, `img_small`, `description`, `result`, `technologies`, `link_project`, `link_git_hub`, `date_time`) VALUES
(20, 'Разработка сайта  на WP', '920-267062309376.png', '320-267062309376.png', '<p>Сделана верстка и фронтэнд для интернет магазина мебели. Сверстано более 50-ти страниц. Сделаны все эффекты и интерактив. В работе использованы препроцессоры pug и less. Интерактив написан на JavaScript. Весь проект протестирован на своместимость, начиная с IE9. Для старых браузеров использован подход Graceful Degradation.</p>\r\n\r\n<p><strong>Время работы над проектом: 6 недель</strong></p>\r\n\r\n<p><strong>Страниц сверстано: 52 страницы</strong></p>\r\n\r\n<p><strong>Бюджет проекта: до 60 000 рублей</strong></p>\r\n', '<p>Проект сделан в срок. Заказчик доволен. Сайт запущен, работает и уже радует покупками посетителей и владельцев бизнеса.</p>\r\n', '<ul>\r\n	<li>HTML5, CSS3.</li>\r\n	<li>Javascript, jQuery.</li>\r\n	<li>LESS, PUG, Gulp, npm, bower.</li>\r\n</ul>\r\n', 'https://www.ltd-mashstroy.ru', 'https://github.com', '2018-09-02 12:06:07'),
(21, 'Сайт каталог', '920-536063397065.png', '320-536063397065.png', '<p>Сделана верстка и фронтэнд для интернет магазина мебели. Сверстано более 50-ти страниц. Сделаны все эффекты и интерактив. В работе использованы препроцессоры pug и less. Интерактив написан на JavaScript. Весь проект протестирован на своместимость, начиная с IE9. Для старых браузеров использован подход Graceful Degradation.</p>\r\n\r\n<p><strong>Время работы над проектом: 6 недель</strong></p>\r\n\r\n<p><strong>Страниц сверстано: 52 страницы</strong></p>\r\n\r\n<p><strong>Бюджет проекта: до 60 000 рублей</strong></p>\r\n', '<p>Проект сделан в срок. Заказчик доволен. Сайт запущен, работает и уже радует покупками посетителей и владельцев бизнеса.</p>\r\n', '<ul>\r\n	<li>HTML5, CSS3.</li>\r\n	<li>Javascript, jQuery.</li>\r\n	<li>LESS, PUG, Gulp, npm, bower.</li>\r\n</ul>\r\n', 'http://molding-art.ru/index.html', 'https://github.com', '2018-09-02 12:14:12'),
(22, 'Сайт по ремонту квартир', '920-571736776762.png', '320-571736776762.png', '<p>Сделана верстка и фронтэнд для интернет магазина мебели. Сверстано более 50-ти страниц. Сделаны все эффекты и интерактив. В работе использованы препроцессоры pug и less. Интерактив написан на JavaScript. Весь проект протестирован на своместимость, начиная с IE9. Для старых браузеров использован подход Graceful Degradation.</p>\r\n\r\n<p><strong>Время работы над проектом: 6 недель</strong></p>\r\n\r\n<p><strong>Страниц сверстано: 52 страницы</strong></p>\r\n\r\n<p><strong>Бюджет проекта: до 60 000 рублей</strong></p>\r\n', '<p>Проект сделан в срок. Заказчик доволен. Сайт запущен, работает и уже радует покупками посетителей и владельцев бизнеса.</p>\r\n', '<ul>\r\n	<li>HTML5, CSS3.</li>\r\n	<li>Javascript, jQuery.</li>\r\n	<li>LESS, PUG, Gulp, npm, bower.</li>\r\n</ul>\r\n', 'http://ter-remonta.ru', 'https://github.com', '2018-09-02 12:17:13'),
(23, 'Сайт web-разработчика', '920-492355498700.png', '320-492355498700.png', '<p>Сделана верстка и фронтэнд для интернет магазина мебели. Сверстано более 50-ти страниц. Сделаны все эффекты и интерактив. В работе использованы препроцессоры pug и less. Интерактив написан на JavaScript. Весь проект протестирован на своместимость, начиная с IE9. Для старых браузеров использован подход Graceful Degradation.</p>\r\n\r\n<p><strong>Время работы над проектом: 6 недель</strong></p>\r\n\r\n<p><strong>Страниц сверстано: 52 страницы</strong></p>\r\n\r\n<p><strong>Бюджет проекта: до 60 000 рублей</strong></p>\r\n', '<p>Проект сделан в срок. Заказчик доволен. Сайт запущен, работает и уже радует покупками посетителей и владельцев бизнеса.</p>\r\n', '<ul>\r\n	<li>HTML5, CSS3.</li>\r\n	<li>Javascript, jQuery.</li>\r\n	<li>LESS, PUG, Gulp, npm, bower.</li>\r\n</ul>\r\n', 'https://egor-maksimov.ru', 'https://github.com', '2018-09-02 12:18:31');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `aboutme`
--
ALTER TABLE `aboutme`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_comments_post` (`post_id`),
  ADD KEY `index_foreignkey_comments_user` (`user_id`);

--
-- Индексы таблицы `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_posts_author` (`author_id`);

--
-- Индексы таблицы `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `aboutme`
--
ALTER TABLE `aboutme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT для таблицы `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT для таблицы `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `works`
--
ALTER TABLE `works`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
