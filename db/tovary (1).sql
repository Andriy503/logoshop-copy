-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 29 2018 г., 20:01
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
-- Структура таблицы `tovary`
--

CREATE TABLE `tovary` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `seo_words` text NOT NULL,
  `seo_description` text NOT NULL,
  `mini_description` text NOT NULL,
  `description` text NOT NULL,
  `image_src` varchar(255) NOT NULL,
  `mini_features` text NOT NULL,
  `features` text NOT NULL,
  `date_time` datetime NOT NULL,
  `news` int(11) NOT NULL DEFAULT '0',
  `leader` int(11) NOT NULL DEFAULT '0',
  `sale` int(11) NOT NULL DEFAULT '0',
  `visible` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `type_category` varchar(255) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `vote` int(11) NOT NULL,
  `votes` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tovary`
--

INSERT INTO `tovary` (`id`, `name`, `price`, `brand`, `seo_words`, `seo_description`, `mini_description`, `description`, `image_src`, `mini_features`, `features`, `date_time`, `news`, `leader`, `sale`, `visible`, `count`, `type_category`, `brand_id`, `vote`, `votes`) VALUES
(1, 'Meizu Pro 7 4/128GB Gold', 10195, 'Meizu', '', '', 'Meizu Pro 7 4/128GB Gold - главной особенностью новинки стал дополнительный цветной дисплей. Второй экран Meizu Pro 7 4/128GB Gold является сенсорным и расположенный на задней панели устройства.  Подробнее: https://allo.ua/ru/products/mobile/meizu-pro-7-4-128gb-gold.html', '', 'meizu_pro7.jpg', 'Диагональ экрана: 5.2\";\r\nРазрешение экрана: 1920x1080;\r\nКамера: 12 Мп + 12 Мп;\r\nОперативная память: 4 Гб;\r\nВнутренняя память: 128 Гб;\r\nМатериал корпуса: Металл;', 'Связь Стандарты связи:	GSM, 3G, 4G (LTE), CDMA Количество SIM-карт:	2 SIM Формат SIM-карты:	Nano-SIM Тип слота:	SIM + SIM Экран Диагональ экрана:	5.2\" Разрешение экрана:	1920x1080 Плотность пикселей, ppi:	424 Тип дисплея:	Amoled Дополнительно:	Дополнительный экран: диагональ: 1.9 дюйма, разрешение: 240 x 536, яркость: 350 кд/м² Процессор Процессор:	Mediatek MT6799 Helio X30 Частота процеcсора:	2.6 ГГц Графический процессор: Mali-T880 Память Внутренняя память:	128 Гб Оперативная память:	4 Гб Слот для карты памяти:	Нет Камера Камера:	12 Мп + 12 Мп Диафрагма:	f/2.0 Запись видео:	4К UHD (3840x2160) Фокусировка:	Двойная камера Вспышка основной камеры:	Есть Фронтальная камера:	16 Мп Вспышка фронтальной камеры:	Нет Операционная система Операционная система:	Android 7.0 Nougat Беспроводные технологии Wi-Fi:	IEEE 802.11 a/b/g/n GPS:	A-GPS, GPS ГЛОНАСС:	Есть Bluetooth:	Bluetooth 4.2 NFC:	Нет Беспроводная зарядка:	Нет Инфракрасный порт:	Нет FM-тюнер:	Нет MP3-плеер:	Есть Функция рации:	Нет Интерфейсы Интерфейсы и подключения:	USB Type-C, Аудио 3,5 Корпус Материал корпуса:	Металл Технологии:	Сканер отпечатка пальцев, Гироскоп, Пульсометр Цвет:	Золотой Аккумулятор Quick Charge:	Есть Емкость аккумулятора:	3000 mAh Габариты и комплектация Размеры, мм:	147,6х70,7х7,3 Вес, г:	163 Гарантия Гарантийный срок:	12 месяцев Обмен и возврат товара:	Обмен и возврат товара осуществляется в течение 14 дней после покупки, согласно закону Украины \"О защите прав потребителей Украины\" Дополнительно: Характеристики и комплектация товара могут быть изменены производителем без уведомления.\r\nПодробнее: https://allo.ua/ru/products/mobile/meizu-pro-7-4-128gb-gold.html', '2018-03-04 15:01:06', 1, 0, 0, 1, 0, 'mobile', 2, 1, 1),
(2, 'Samsung Galaxy S9 Plus 64GB Black', 31999, 'Samsung', '', '', 'Перед тем как заказывать сходил посмотреть его вживую. В магазине конечно же нашел только витринные образцы, но для потестить этого хватило слихвой. Смотрится шикарно. Такое ощущение, что S9 такая себе работа над ошибками. Перенесли сканер отпечатка, теперь камера пачкаться пальцами не будет. Камера классная, вроде даже экран стал посочнее, чем у восьмерки. В руке лежит удобно. Подробнее: https://allo.ua/ru/products/mobile/samsung-galaxy-s9-plus-2018-64gb-black.html', '', 'samsung_s9.jpg', 'Диагональ экрана: 6.2\";\r\nРазрешение экрана: 2960x1440;\r\nКамера: 12 Мп + 12 Мп;\r\nКоличество ядер: 8; \r\nОперативная память: 6 Гб;\r\n', 'Связь Стандарты связи:	GSM, 3G, 4G (LTE) Количество SIM-карт:	2 SIM Формат SIM-карты:	Nano-SIM Тип слота:	SIM + Гибридный (SIM или MicroSD) Экран Диагональ экрана:	6.2\" Разрешение экрана:	2960x1440 Плотность пикселей, ppi:	529 Тип дисплея:	Super Amoled Процессор Процессор:	Exynos 9810 Количество ядер:	8 Частота процеcсора:	2.7 ГГц Графический процессор:	Mali-G72 MP18 Память Внутренняя память:	64 Гб Оперативная память:	6 Гб Слот для карты памяти:	Есть Поддержка карт памяти:	microSD до 400 Гб Камера Камера:	12 Мп + 12 Мп Диафрагма:	f/1.5 Запись видео:	4К UHD (3840x2160) Оптическая стабилизация:	Есть Фокусировка:	Двойная камера Вспышка основной камеры:	Есть Фронтальная камера:	8 Мп Дополнительно:	Основная камера: - В темноте объектив открывается в режиме f/1.5 для создания ярких четких фотографий - При дневном свете камера переключается в режим f/2.4 для создания четкой фотографии - Размер пикселя широкоугольной камеры 1.4 µm - Размер пикселя телескопичесой камеры 1.0 µm - Двукратный оптический зум - Мультикадровое шумоподавление - Super Slow-mo 960 fps - GIF анимация с тремя вариантами зацикливания: обратное, обычное или смешанное - Фокусировка Super Speed Dual Pixel - Живой фокус Фронтальная камера: - Диафрагма f/1.7 - Размер пикселя 1.22 µm - Угол обзора 80˚\r\nПодробнее: https://allo.ua/ru/products/mobile/samsung-galaxy-s9-plus-2018-64gb-black.html', '2018-03-04 15:05:00', 0, 1, 1, 1, 0, 'mobile', 3, 0, 0),
(3, 'HUAWEI Y6 Pro Gold', 3599, 'Huawei', '', '', 'Meizu Pro 7 4/128GB Gold - главной особенностью новинки стал дополнительный цветной дисплей. Второй экран Meizu Pro 7 4/128GB Gold является сенсорным и расположенный на задней панели устройства. Подробнее: https://allo.ua/ru/products/mobile/meizu-pro-7-4-128gb-gold.html', '', 'huawei_y6_pro_gold_.jpg', 'Диагональ экрана: 5\";\r\nРазрешение экрана: 1280x720;\r\nКамера: 13 Мп;\r\nКоличество ядер: 4;\r\nОперативная память: 2 Гб;\r\nВнутренняя память: 16 Гб;', 'Главное Тип устройства:	Смартфон Связь Стандарты связи:	GSM, 3G Количество SIM-карт:	2 SIM Формат SIM-карты:	Micro-SIM Тип слота:	SIM + SIM Экран Диагональ экрана:	5\" Разрешение экрана:	1280x720 Количество цветов:	16 миллионов Плотность пикселей, ppi:	294 Тип дисплея:	IPS Процессор Процессор:	MT6582 Количество ядер:	4 Частота процеcсора:	1.3 ГГц Графический процессор:	Mali-400 MP Память Внутренняя память:	16 Гб Оперативная память:	2 Гб Слот для карты памяти:	Есть Поддержка карт памяти:	microSD до 128 Гб Камера Камера:	13 Мп Диафрагма:	f/2.0 Запись видео:	HD Ready (1280x720) Фокусировка:	Автоматическая Вспышка основной камеры:	Есть Фронтальная камера:	5 Мп Дополнительно:	Фронтальная камера: фиксированное фокусное расстояние Операционная система Операционная система:	Android 5.1 Беспроводные технологии Wi-Fi:	IEEE 802.11 b/g/n GPS:	A-GPS, GPS Bluetooth:	Bluetooth 4.0 FM-тюнер:	Есть MP3-плеер:	Есть Интерфейсы Интерфейсы и подключения:	microUSB, Аудио 3,5 Корпус Материал корпуса:	Металл, Пластик Цвет:	Золотой Аккумулятор Емкость аккумулятора:	4000 mAh Габариты и комплектация Размеры, мм:	143.1 x 71.8 x 9.7 мм Вес, г:	160 г Комплектация:	Телефон Зарядное устройство USB-кабель Краткая инструкция Прочее Органайзер :	Есть SMS/EMS/MMS/E-mail:	Есть Гарантия Гарантийный срок:	12 месяцев Обмен и возврат товара:	Обмен/возврат в течение 14 дней после покупки Дополнительно:	Характеристики и комплектация товара могут быть изменены производителем без уведомления.', '2018-03-05 18:48:00', 0, 1, 0, 1, 0, 'mobile', 24, 1, 1),
(4, 'Apple iPhone X 256GB Silver', 36999, 'Iphone', '', '', 'Meizu Pro 7 4/128GB Gold - главной особенностью новинки стал дополнительный цветной дисплей. Второй экран Meizu Pro 7 4/128GB Gold является сенсорным и расположенный на задней панели устройства. Подробнее: https://allo.ua/ru/products/mobile/meizu-pro-7-4-128gb-gold.html', '', 'iphone_x.jpg', 'Диагональ экрана: 5.8\";\r\nРазрешение экрана: 2436x1125;\r\nКамера: 12 Мп;\r\nКоличество ядер: 6;\r\nОперативная память: 3 Гб;\r\nВнутренняя память: 256 Гб;', 'Главное Тип устройства:	Смартфон Связь Стандарты связи:	GSM, 3G, 4G (LTE) Количество SIM-карт:	1 SIM Формат SIM-карты:	Nano-SIM Экран Диагональ экрана:	5.8\" Разрешение экрана:	2436x1125 Плотность пикселей, ppi:	458 Тип дисплея:	Super Retina (OLED) Процессор Процессор:	A11 Bionic Количество ядер:	6 Частота процеcсора:	2.39 ГГц Графический процессор:	M11 Память Внутренняя память:	256 Гб Оперативная память:	3 Гб Слот для карты памяти:	Нет Камера Камера:	12 Мп Диафрагма:	f/1.8+f/2.4 Запись видео:	4К UHD (3840x2160) Оптическая стабилизация:	Есть Количество осей стабилизации:	3 Фокусировка:	Гибридная Вспышка основной камеры:	Есть Фронтальная камера:	7 Мп f/2.2 Дополнительно:	Запись видео 4K UHD 60 fps Запись видео Slow Motion FullHD 240 Zoom 10x Шестилинзовый объектив Вспышка True Tone Quad-LED Защита объектива сапфировым стеклом Сенсор BSI Гибридный ИК-фильтр \r\n', '2018-03-05 18:44:00', 1, 0, 0, 1, 1, 'mobile', 1, 1, 1),
(5, 'HTC U Ultra 4/128GB Black', 23999, 'HTC', '', '', 'Meizu Pro 7 4/128GB Gold - главной особенностью новинки стал дополнительный цветной дисплей. Второй экран Meizu Pro 7 4/128GB Gold является сенсорным и расположенный на задней панели устройства. Подробнее: https://allo.ua/ru/products/mobile/meizu-pro-7-4-128gb-gold.html', '', 'htc_ultra.png', 'Диагональ экрана: 5.7\"; Разрешение экрана: 2560х1440; Камера: 12 Мп; Количество ядер: 4; Оперативная память: 4 Гб; Внутренняя память: 128 Гб;', '', '2018-03-18 20:37:00', 1, 0, 0, 1, 0, 'mobile', 4, 0, 0),
(6, 'Apple iPhone 7 Plus Red 32GB Gold', 23999, 'Iphone', '', '', 'Meizu Pro 7 4/128GB Gold - главной особенностью новинки стал дополнительный цветной дисплей. Второй экран Meizu Pro 7 4/128GB Gold является сенсорным и расположенный на задней панели устройства. Подробнее: https://allo.ua/ru/products/mobile/meizu-pro-7-4-128gb-gold.html', '', 'iphone_7_plus.png', 'Диагональ экрана: 5.5\"; Разрешение экрана: 1920x1080; Камера: 12 Мп; Количество ядер: 4; Оперативная память: 3 Гб; Внутренняя память: 32 Гб;', '', '2018-03-19 20:37:00', 0, 0, 1, 1, 0, 'mobile', 1, 0, 0),
(7, 'Apple Iphone 6 16GB', 11999, 'Iphone', '', '', 'Легкий и ультратонкий iPhone 6S полностью меняет представление о комфортной работе, ярких развлечениях и творчестве. Невероятно четкий Retina HD-дисплей, мощный процессор, профессиональная камера и великолепная автономность – до 11 часов в режиме просмотра HD-видео.\r\nПодробнее: https://allo.ua/ru/products/mobile/apple-iphone-6s-16gb-space-gray-kak-novyj.html', '', 'iphone_6.png', 'Диагональ экрана: 4.7\"; Разрешение экрана: 1334x750; Камера: 12 Мп; Количество ядер: 2;  Оперативная память: 2 Гб;  Внутренняя память: 16 Гб;', '', '2018-03-18 20:43:00', 0, 1, 0, 1, 0, 'mobile', 1, 0, 0),
(8, 'Apple Iphone 6 16GB', 11999, 'Iphone', '', '', 'Легкий и ультратонкий iPhone 6S полностью меняет представление о комфортной работе, ярких развлечениях и творчестве. Невероятно четкий Retina HD-дисплей, мощный процессор, профессиональная камера и великолепная автономность – до 11 часов в режиме просмотра HD-видео.\r\nПодробнее: https://allo.ua/ru/products/mobile/apple-iphone-6s-16gb-space-gray-kak-novyj.html', '', 'iphone_6.png', 'Диагональ экрана: 4.7\"; Разрешение экрана: 1334x750; Камера: 12 Мп; Количество ядер: 2;  Оперативная память: 2 Гб;  Внутренняя память: 16 Гб;', '', '0000-00-00 00:00:00', 1, 0, 0, 1, 0, 'mobile', 1, 0, 0),
(9, 'Apple Iphone 6 16GB', 11999, 'Iphone', '', '', 'Легкий и ультратонкий iPhone 6S полностью меняет представление о комфортной работе, ярких развлечениях и творчестве. Невероятно четкий Retina HD-дисплей, мощный процессор, профессиональная камера и великолепная автономность – до 11 часов в режиме просмотра HD-видео.\r\nПодробнее: https://allo.ua/ru/products/mobile/apple-iphone-6s-16gb-space-gray-kak-novyj.html', '', 'iphone_7_plus.png', 'Диагональ экрана: 4.7\"; Разрешение экрана: 1334x750; Камера: 12 Мп; Количество ядер: 2;  Оперативная память: 2 Гб;  Внутренняя память: 16 Гб;', '', '0000-00-00 00:00:00', 0, 0, 0, 1, 0, 'mobile', 1, 0, 0),
(10, 'LG V30+ 128GB', 17500, 'LG', '', '', 'Стандарт GSM 1900, GSM 1800, LTE, GSM 900, GSM 850, UMTS \r\nТип смартфон/коммуникатор Операционная  система Android 7.1 (Nougat)\r\nТип корпуса моноблок\r\nМатериал корпуса алюминий/стекло \r\nТип клавиатуры Экранный \r\n', '', 'lg_v30.png', 'Датчики : Датчик приближения, Датчик света, Акселерометр, Компас, Гироскоп, Сканер отпечатков пальцев, Датчик ', '', '0000-00-00 00:00:00', 0, 0, 0, 1, 0, 'mobile', 5, 0, 0),
(11, 'Lenovo K6', 5600, 'Lenovo', '', '', 'Диагональ экрана: 5\"; \r\nРазрешение экрана: 1920x1080; \r\nКамера: 13 Мп; \r\nКоличество ядер: 8; \r\nОперативная память: 2 Гб; \r\nВнутренняя память: 16 Гб;\r\n', '', 'lenovo_k6.png', '5-дюймовый HD-дисплей смартфона Lenovo K6(K33a48) с высоким разрешением и яркими цветами как будто создан для мультимедийных развлечений. Все ваши любимые игры, фото и изображения на экране будут невероятно четкими и яркими.\r\n', '', '0000-00-00 00:00:00', 0, 0, 0, 1, 0, 'mobile', 10, 0, 0),
(12, 'Nomi i5050', 5399, 'Nomi', '', '', 'Диагональ экрана: 5\"; \r\nРазрешение экрана: 1920x1080; \r\nКамера: 13 Мп; \r\nКоличество ядер: 4;\r\nОперативная память: 3 Гб; \r\nВнутренняя память: 32 Гб;', '', 'Nomi i5050.png', 'Новый Nomi EVO Z воплощает ключевые идеи эстетического дизайна, отличную производительность и функциональность. Корпус, выполненный из металлического сплава, наследует каноны эргономики. \r\n', '', '0000-00-00 00:00:00', 0, 0, 0, 1, 0, 'mobile', 9, 0, 0),
(13, 'Meizu Pro 7 4/128GB Gold', 10195, 'Meizu', '', '', 'Meizu Pro 7 4/128GB Gold - главной особенностью новинки стал дополнительный цветной дисплей. Второй экран Meizu Pro 7 4/128GB Gold является сенсорным и расположенный на задней панели устройства.  Подробнее: https://allo.ua/ru/products/mobile/meizu-pro-7-4-128gb-gold.html', '', 'meizu_pro7.jpg\r\n', 'Диагональ экрана: 5.2\";\r\nРазрешение экрана: 1920x1080;\r\nКамера: 12 Мп + 12 Мп;\r\nОперативная память: 4 Гб;\r\nВнутренняя память: 128 Гб;\r\nМатериал корпуса: Металл;', '', '0000-00-00 00:00:00', 0, 0, 0, 1, 0, 'mobile', 2, 0, 0),
(15, 'Apple iPhone 5s 16GB', 7999, 'Iphone', '', '', 'Дисплей Диагональ экрана \r\nПодробнее4\r\nРазрешение дисплея \r\nПодробнее1136x640\r\nТип матрицы Подробнее\r\nIPS Подробнее\r\nКоличество точек касания10\r\nМатериал экрана Стекло\r\n', '', 'iphone_5s.png', ' Характеристики и комплектация товара могут изменяться производителем без уведомления\r\n* Внимание! Все телефоны имеют кирилличные буквы на клавиатуре, украинское менюI!\r\n', '', '0000-00-00 00:00:00', 0, 0, 0, 1, 0, 'mobile', 1, 0, 0),
(16, 'LG V30+ 128GB', 17500, 'LG', '', '', 'Стандарт GSM 1900, GSM 1800, LTE, GSM 900, GSM 850, UMTS \r\nТип смартфон/коммуникатор Операционная  система Android 7.1 (Nougat)\r\nТип корпуса моноблок\r\nМатериал корпуса алюминий/стекло \r\nТип клавиатуры Экранный \r\n', '', 'lg_v30.png', 'Датчики : Датчик приближения, Датчик света, Акселерометр, Компас, Гироскоп, Сканер отпечатков пальцев, Датчик ', '', '0000-00-00 00:00:00', 0, 0, 0, 1, 0, 'mobile', 5, 0, 0),
(17, 'Nomi i5050', 5399, 'Nomi', '', '', 'Диагональ экрана: 5\"; \r\nРазрешение экрана: 1920x1080; \r\nКамера: 13 Мп; \r\nКоличество ядер: 4;\r\nОперативная память: 3 Гб; \r\nВнутренняя память: 32 Гб;', '', 'Nomi i5050.png', 'Новый Nomi EVO Z воплощает ключевые идеи эстетического дизайна, отличную производительность и функциональность. Корпус, выполненный из металлического сплава, наследует каноны эргономики.', '', '0000-00-00 00:00:00', 0, 0, 0, 1, 0, 'mobile', 9, 0, 0),
(18, 'Lenovo K6', 5600, 'Lenovo', '', '', 'Диагональ экрана: 5\"; \r\nРазрешение экрана: 1920x1080; \r\nКамера: 13 Мп; \r\nКоличество ядер: 8; \r\nОперативная память: 2 Гб; \r\nВнутренняя память: 16 Гб;\r\n', '', 'lenovo_k6.png', '5-дюймовый HD-дисплей смартфона Lenovo K6(K33a48) с высоким разрешением и яркими цветами как будто создан для мультимедийных развлечений. Все ваши любимые игры, фото и изображения на экране будут невероятно четкими и яркими.\r\n', '', '0000-00-00 00:00:00', 0, 1, 0, 1, 0, 'mobile', 10, 0, 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `tovary`
--
ALTER TABLE `tovary`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `tovary`
--
ALTER TABLE `tovary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
