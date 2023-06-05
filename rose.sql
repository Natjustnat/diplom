-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 05 2023 г., 12:01
-- Версия сервера: 8.0.24
-- Версия PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `rose`
--

-- --------------------------------------------------------

--
-- Структура таблицы `flower_type`
--

CREATE TABLE `flower_type` (
  `id_flower_type` int NOT NULL,
  `flower_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `flower_type`
--

INSERT INTO `flower_type` (`id_flower_type`, `flower_type`) VALUES
(1, 'Розы'),
(2, 'Тюльпаны'),
(3, 'Гипсофилы'),
(4, 'Лилии'),
(5, 'Микс'),
(6, 'Орхидеи'),
(7, 'Альстромерии'),
(8, 'Гортензия'),
(9, 'Искусственные');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id_order` int NOT NULL,
  `id_user` int NOT NULL,
  `summ` int NOT NULL,
  `date` date NOT NULL,
  `id_state` int NOT NULL,
  `note` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id_order`, `id_user`, `summ`, `date`, `id_state`, `note`) VALUES
(11, 3, 215, '2023-05-17', 1, ''),
(12, 3, 144, '2023-05-17', 2, ''),
(13, 2, 150, '2023-05-18', 2, '');

-- --------------------------------------------------------

--
-- Структура таблицы `order_items`
--

CREATE TABLE `order_items` (
  `id_item` int NOT NULL,
  `id_product` int NOT NULL,
  `id_order` int NOT NULL,
  `price` int NOT NULL,
  `count` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `order_items`
--

INSERT INTO `order_items` (`id_item`, `id_product`, `id_order`, `price`, `count`) VALUES
(1, 9, 11, 66, 1),
(2, 10, 11, 78, 3),
(3, 14, 11, 51, 1),
(4, 20, 11, 41, 1),
(5, 19, 12, 100, 1),
(6, 20, 12, 41, 1),
(7, 11, 13, 36, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id_product` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id_product_type` int NOT NULL,
  `id_flower_type` int NOT NULL,
  `price` int NOT NULL,
  `sale` int NOT NULL,
  `sale_price` int NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id_product`, `title`, `description`, `id_product_type`, `id_flower_type`, `price`, `sale`, `sale_price`, `img`) VALUES
(1, 'Розовое облако', 'В качестве подарка цветы в шляпных коробках уместны всегда и, пожалуй, для всех. Их можно преподносить девушке и женщине, возлюбленной и коллеге, родственникам и едва знакомым людям. Такие букеты удобно носить, вручать и хранить – цветы не требуется доставать из коробки и ставить в вазу. Они хранятся долго, а когда все же вянут, коробку можно не выбрасывать, а использовать для хранения писем и фотографий, просто для украшения интерьера.', 2, 3, 130, 10, 117, 'assets/img/product/pinkcloud.jpg'),
(2, 'Гипсофила радужная в коробке', 'Гипсофила - растение напоминающее облака.\r\nОтличается долгой стойкостью и со временем превращается в сухоцвет.\r\nВоздушная, нежная композиция из радужной гипсофилы.\r\nОформлена в коробочку цилиндр с флористической губкой с водой. Требуется поливать воду в губку', 2, 3, 55, 5, 53, 'assets/img/product/product13.jpg'),
(3, 'Гипсофила в коробке М', 'Гипсофила - растение напоминающее облака.\r\nОтличается долгой стойкостью и со временем превращается в сухоцвет.\r\nВоздушная, нежная композиция из радужной гипсофилы.\r\nОформлена в коробочку цилиндр с флористической губкой с водой. Требуется поливать воду в губку', 2, 3, 75, 40, 45, 'assets/img/product/product14.jpg'),
(4, 'Нежная композиция', '', 2, 5, 60, 5, 57, 'assets/img/product/product15.jpg'),
(5, 'Композиция', '', 2, 5, 51, 10, 46, 'assets/img/product/product16.jpg'),
(6, 'Роза кустовая с хлопком в коробке', '', 2, 5, 86, 50, 43, 'assets/img/product/product17.jpg'),
(7, 'Коробка с белыми орхидеями', 'Композиция из белых орхидей может быть подарена к любому празднику. Она будет долго радовать получателя, потому что собрана из цветов, устойчивых к увяданию.', 2, 6, 85, 10, 77, 'assets/img/product/product18.jpg'),
(8, 'Гипсофила в конверте', 'Стильный конверт с радужной гипсофилой\r\nОттенок гипсофилы зависит от поставки. Гипсофила радужная- может прельщать и розовый оттенок, и сиреневый, и Тиффани.', 2, 3, 63, 5, 60, 'assets/img/product/product19.jpg'),
(9, 'Гвоздики с эвкалиптом в коробке', '', 2, 5, 66, 5, 63, 'assets/img/product/product20.jpg'),
(10, 'Пионы импорт с розами', '', 2, 5, 78, 70, 24, 'assets/img/product/product21.jpg'),
(11, 'Нежные альстромерии в упаковке', 'Букет из самых стойких цветов в упаковке. Такой букет будет радовать получателя более 3-х недель.\r\nБукет цветов — обязательный презент для любой представительницы прекрасной половины человечества. Цветы – это красивый способ сделать женщину счастливой. Флористы каждый день создают букеты из свежих цветов, чтобы вы могли порадовать ими своих близких и любимых.\r\nНаши букеты подходят под любой праздник и торжество: день рождение, юбилей, признание в любви , для мамы и просто так-чтобы поднять настроение и пожелать хорошего дня ', 1, 7, 36, 5, 34, 'assets/img/product/product22.jpg'),
(12, 'Кустовая кораловая роза', 'Кустовая роза Барбадос имеет нежно-кораловый цвет. Пышная, свежая, стойкая розочка очень полюбилась нашим клиентам.\r\nПо желанию приложим открытку с вашим текстом.', 1, 1, 40, 5, 38, 'assets/img/product/product23.jpg'),
(13, '5 королевских розовых лилий', 'Шикарный букет из королевских белых и розовых лилий, станет отличным подарком, или добавлением к нему, для любимой девушки, жены, сестры, мамы, коллеги, подруги.', 1, 4, 55, 10, 50, 'assets/img/product/product24.jpg'),
(14, '11 розовых роз Джумилия', 'Прекрасный нежный букет из 11 роз сорта Джумилия.', 1, 1, 51, 40, 11, 'assets/img/product/product25.jpg'),
(15, 'Французские розы с эвкалиптом', 'Букет из 11 французских нежно-розовых роз с эвкалиптом, которые очень похожи на пион розы, оформлен в дизайнерскую упаковку.\r\n\r\nФранцузские розы отличаются особой стойкостью и будут радовать получателя минимум 7 дней.', 1, 1, 120, 5, 114, 'assets/img/product/product26.jpg'),
(16, 'Большой букет высоких красных роз', 'Огромный букет красных роз премиум качества!\r\nРоза ред наоми имеет длинный ровный стебель, большой бутон и просто сногшибательный аромат! Также данная роза отличается высокой степенью стойкости, и поэтому будет долго радовать своего получателя ❤️', 1, 1, 120, 5, 114, 'assets/img/product/product27.jpg'),
(17, 'Гортензия «Голубое облако»', 'Прекрасный голубой оттенок \r\nХорошие шапки гортензии', 1, 8, 240, 20, 192, 'assets/img/product/product28.jpg'),
(18, 'Пионовидная кустовая роза Марвел', 'Букет гигант из кустовой пионовидной розочки.', 1, 1, 360, 45, 198, 'assets/img/product/product29.jpg'),
(19, 'Букет кустовых роз с веточками эвкалипта', '', 1, 1, 100, 5, 95, 'assets/img/product/product30.jpg'),
(20, 'Роза Мисс Пигги', 'Невероятно нежная роза сорта Мисс Пигги.\r\nПриложим открытку с вашим текстом по желанию.', 1, 1, 41, 5, 39, 'assets/img/product/product31.jpg'),
(21, 'Искусственные цветы', '', 3, 9, 45, 5, 43, 'assets/img/product/product32.jpg'),
(22, 'Интерьерная композиция с тюльпанами', 'Тюльпаны - силикон.\r\nОснование - стабилизированый мох.\r\nКашпо - керамика.', 3, 9, 90, 10, 81, 'assets/img/product/product33.jpg'),
(23, 'Интерьерная композиция', 'Нежное сочетание цветов подойдёт для украшения детской комнаты.\r\nПреимуществом этой композиции является то, что её можно подвесить. Сочетание белых цветов и разнообразной зелени всегда в моде.', 3, 9, 65, 10, 62, 'assets/img/product/product34.jpg'),
(24, 'Интерьерная композиция с магнолией', '', 3, 9, 120, 10, 108, 'assets/img/product/product35.jpg'),
(25, 'Настольная композиция', '', 3, 9, 65, 10, 59, 'assets/img/product/product36.jpg'),
(26, 'Интерьерная композиция с орхидеями', 'Цветочная композиция с орхидеями. Орхидеи - плотный шёлк, суккуленты - силикон, кашпо - керамика.', 3, 9, 105, 5, 100, 'assets/img/product/product37.jpg'),
(27, 'Композиция с тюльпанами', 'Цветочная композиция из искусственных цветов. Тюльпаны - силикон, цветы - плотный шёлк, кашпо - керамика.', 3, 9, 99, 40, 59, 'assets/img/product/product38.jpg'),
(28, 'Интерьерная композиция с лавандой', 'Цветы и зелень - пропилен.\r\nКашпо - керамика.', 3, 9, 78, 5, 74, 'assets/img/product/product39.jpg'),
(29, 'Орхидея Цимбидиум', '', 3, 9, 81, 5, 77, 'assets/img/product/product40.jpg'),
(30, 'Интерьерная композиция', 'Цветы премиум класса будут радовать вас не один год.', 3, 9, 90, 5, 86, 'assets/img/product/product41.jpg'),
(31, 'Букет из красных роз', 'Монобукет роскошных красных роз в крафтовой упаковке.\r\nКрасный букет из роз способен вызвать бурю положительных эмоций. Он обозначает истинную любовь, влечение и страсть.', 1, 1, 120, 10, 108, 'assets/img/product/rosered.jpg'),
(32, 'Букет из голубых гортезий', 'Букет из голубых гортезий', 1, 8, 150, 20, 120, 'assets/img/product/bluegort.jpg'),
(33, 'Букет с белыми и кофейными розами', 'Интересный бело-кофейный букет с веточками серебристого эвкалипта. Свежий, модный, интересный', 1, 1, 160, 10, 144, 'assets/img/product/whiterose.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `reviews`
--

CREATE TABLE `reviews` (
  `id_review` int NOT NULL,
  `id_product` int NOT NULL,
  `id_user` int NOT NULL,
  `review` varchar(255) NOT NULL,
  `stars` int NOT NULL,
  `state` int NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `reviews`
--

INSERT INTO `reviews` (`id_review`, `id_product`, `id_user`, `review`, `stars`, `state`, `date`) VALUES
(1, 2, 2, 'Отличный букет', 4, 1, '2023-06-02'),
(2, 1, 3, 'Все отлично', 5, 1, '2023-06-02');

-- --------------------------------------------------------

--
-- Структура таблицы `state`
--

CREATE TABLE `state` (
  `id_state` int NOT NULL,
  `state` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `state`
--

INSERT INTO `state` (`id_state`, `state`) VALUES
(1, 'Выполнено'),
(2, 'Выполняется'),
(3, 'Отменено');

-- --------------------------------------------------------

--
-- Структура таблицы `type_product`
--

CREATE TABLE `type_product` (
  `id_product_type` int NOT NULL,
  `product_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `type_product`
--

INSERT INTO `type_product` (`id_product_type`, `product_type`) VALUES
(1, 'Моно букет'),
(2, 'Букет в цилиндре'),
(3, 'Домашний декор');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id_user` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `usertype` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `post_index` int NOT NULL,
  `country` varchar(255) NOT NULL,
  `bday` date NOT NULL,
  `phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id_user`, `email`, `password`, `usertype`, `name`, `surname`, `city`, `address`, `post_index`, `country`, `bday`, `phone`) VALUES
(1, 'natjustnat@mail.ru', '1111', 1, 'Анастасия', 'Шимчукевич', 'Гродно', 'улица Химиков 24 ', 230019, 'Беларусь', '2003-04-10', '+375292809722'),
(2, 'nat@mail.ru', '3333', 2, 'Ангелина', 'Герасимович', 'Минск', 'Улица Независимости 5 ', 210045, 'Беларусь', '2003-12-06', '+375334567011'),
(3, 'masha@mail.ru', '2222', 2, 'Мария', 'Нестерик', 'Гродно', 'Улица Кабяка 5а', 230020, 'Беларусь', '2004-02-03', '+375292833457');

-- --------------------------------------------------------

--
-- Структура таблицы `usertype`
--

CREATE TABLE `usertype` (
  `id_usertype` int NOT NULL,
  `usertype` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `usertype`
--

INSERT INTO `usertype` (`id_usertype`, `usertype`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Структура таблицы `wishlist`
--

CREATE TABLE `wishlist` (
  `id_wishlist` int NOT NULL,
  `id_users` int NOT NULL,
  `id_product` int NOT NULL,
  `count` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `wishlist`
--

INSERT INTO `wishlist` (`id_wishlist`, `id_users`, `id_product`, `count`) VALUES
(15, 3, 8, 1),
(16, 3, 18, 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `flower_type`
--
ALTER TABLE `flower_type`
  ADD PRIMARY KEY (`id_flower_type`),
  ADD UNIQUE KEY `id_flower_type` (`id_flower_type`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_order`),
  ADD UNIQUE KEY `id_order` (`id_order`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `state` (`id_state`);

--
-- Индексы таблицы `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id_item`),
  ADD UNIQUE KEY `id_item` (`id_item`),
  ADD KEY `id_product` (`id_product`,`id_order`),
  ADD KEY `id_order` (`id_order`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_product`),
  ADD UNIQUE KEY `id_product` (`id_product`),
  ADD KEY `id_product_type` (`id_product_type`),
  ADD KEY `id_flower_type` (`id_flower_type`);

--
-- Индексы таблицы `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id_review`),
  ADD UNIQUE KEY `id_rewie` (`id_review`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `state` (`state`),
  ADD KEY `id_user` (`id_user`);

--
-- Индексы таблицы `state`
--
ALTER TABLE `state`
  ADD UNIQUE KEY `id_state` (`id_state`);

--
-- Индексы таблицы `type_product`
--
ALTER TABLE `type_product`
  ADD PRIMARY KEY (`id_product_type`),
  ADD UNIQUE KEY `id_product_type` (`id_product_type`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `id_user` (`id_user`),
  ADD KEY `usertype` (`usertype`);

--
-- Индексы таблицы `usertype`
--
ALTER TABLE `usertype`
  ADD PRIMARY KEY (`id_usertype`),
  ADD UNIQUE KEY `id_usertype` (`id_usertype`);

--
-- Индексы таблицы `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id_wishlist`),
  ADD UNIQUE KEY `id_wishlist` (`id_wishlist`),
  ADD KEY `id_users` (`id_users`,`id_product`),
  ADD KEY `id_product` (`id_product`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `flower_type`
--
ALTER TABLE `flower_type`
  MODIFY `id_flower_type` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id_order` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id_item` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id_product` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT для таблицы `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id_review` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `state`
--
ALTER TABLE `state`
  MODIFY `id_state` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `type_product`
--
ALTER TABLE `type_product`
  MODIFY `id_product_type` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id_wishlist` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`id_state`) REFERENCES `state` (`id_state`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id_order`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`id_product_type`) REFERENCES `type_product` (`id_product_type`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`id_flower_type`) REFERENCES `flower_type` (`id_flower_type`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`state`) REFERENCES `state` (`id_state`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `reviews_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`usertype`) REFERENCES `usertype` (`id_usertype`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`id_users`) REFERENCES `users` (`id_user`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
