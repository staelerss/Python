DELETE FROM `shop`.`category` WHERE (`id` = '4');

UPDATE `shop`.`category` SET `title` = 'Компплектующие' WHERE (`id` = '1');
UPDATE `shop`.`category` SET `title` = 'Модинг запчасти' WHERE (`id` = '2');

INSERT INTO `shop`.`products` (`id`, `title`, `price`, `description`, `cat_id`) VALUES ('4', 'Оплётка для проводов (зелёная)', '50', 'Тканевая оплётка для проводов блока питания (зелёная)', '2');

ALTER TABLE `shop`.`products`
CHANGE COLUMN `title` `title` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NOT NULL ,
CHANGE COLUMN `description` `description` VARCHAR(255) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NULL DEFAULT NULL ;

UPDATE `shop`.`category` SET `description` = 'Базовые коплектующие для сборки ПК' WHERE (`id` = '1');
UPDATE `shop`.`category` SET `description` = 'Запчасти для \"украшения\" вашего ПК' WHERE (`id` = '2');

UPDATE `shop`.`image` SET `title` = 'HyperX RAM' WHERE (`id` = '3');
INSERT INTO `shop`.`image` (`id`, `title`, `url`, `product_id`) VALUES ('4', 'Moded wires', 'http://pcdesign.ru/images/photo/opletka/2012/green/1.jpg', '4');

ALTER TABLE `shop`.`products`
CHANGE COLUMN `title` `title` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NOT NULL ,
CHANGE COLUMN `description` `description` VARCHAR(255) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NULL DEFAULT NULL ;

UPDATE `shop`.`products` SET `price` = '6249' WHERE (`id` = '1');
UPDATE `shop`.`products` SET `price` = '16990' WHERE (`id` = '2');
UPDATE `shop`.`products` SET `price` = '7950' WHERE (`id` = '3');
UPDATE `shop`.`products` SET `price` = '399' WHERE (`id` = '4');

UPDATE `shop`.`products` SET `title` = 'Отплётка для БП (зелёная)', `description` = 'Оплётка для проводов БП (зелёная)' WHERE (`id` = '4');
UPDATE `shop`.`products` SET `title` = 'Отплётка для проводов' WHERE (`id` = '4');
UPDATE `shop`.`products` SET `price` = '' WHERE (`id` = '4');
