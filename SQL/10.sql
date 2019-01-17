UPDATE `shop`.`category` SET `title` = 'Flagships', `description` = 'Most powerful and beautiful smartphones' WHERE (`id` = '2');
UPDATE `shop`.`category` SET `title` = 'Budget phones', `description` = 'Smartphones in cheep and budget category' WHERE (`id` = '1');

UPDATE `shop`.`category` SET `image_url` = 'https://thewirecutter.com/wp-content/uploads/2018/07/budget-android-phones-top-2x1-lowres1024-03006.jpg' WHERE (`id` = '1');
UPDATE `shop`.`category` SET `image_url` = 'https://images.indianexpress.com/2018/10/6_759-11.jpg' WHERE (`id` = '2');

UPDATE `shop`.`products` SET `title` = 'Iphone Xs max 512gb Gold', `price` = '1449', `description` = 'Just the phone with the price of a car', `cat_id` = '2' WHERE (`id` = '1');
UPDATE `shop`.`products` SET `title` = 'Pocophone F1 64gb Black', `price` = '', `description` = 'Simply the best phone of 2018', `cat_id` = '1' WHERE (`id` = '4');
UPDATE `shop`.`products` SET `title` = 'Xiaomi MI A2 32gb Black', `price` = '249', `description` = 'Get the pure Android expirience with the price of a budget phone' WHERE (`id` = '2');
UPDATE `shop`.`products` SET `title` = 'Samsung Galaxy A8 32gb Black', `price` = '262', `description` = 'Samsung that pretends to be Xiaomi' WHERE (`id` = '3');

UPDATE `shop`.`image` SET `title` = 'Iphone', `url` = 'https://as-images.apple.com/is/image/AppleInc/aos/published/images/i/ph/iphone/xs/iphone-xs-max-gold-select-2018?wid=1200&hei=630&fmt=jpeg&qlt=95&op_usm=0.5,0.5&.v=1541713822178' WHERE (`id` = '1');
UPDATE `shop`.`image` SET `title` = 'Xiaomi', `url` = 'https://bestdigitals.ru/wa-data/public/shop/products/69/39/3969/images/18983/18983.750.png' WHERE (`id` = '2');
UPDATE `shop`.`image` SET `url` = 'https://kotofoto.ru/product_img/69/155036/155036_smartfon_samsung_sm_a530f_galaxy_a8_2018_32gb_blackm.jpg' WHERE (`id` = '3');
UPDATE `shop`.`image` SET `url` = 'https://avatars.mds.yandex.net/get-mpic/1363210/img_id1386529382234997486.jpeg/9hq' WHERE (`id` = '4');

UPDATE `shop`.`image` SET `title` = 'Samsung' WHERE (`id` = '3');
UPDATE `shop`.`image` SET `title` = 'Pocophone' WHERE (`id` = '4');

UPDATE `shop`.`category` SET `image_url` = 'https://akket.com/wp-content/uploads/2016/08/Xiaomi-Redmi-Note-4-3-1.jpg' WHERE (`id` = '1');
UPDATE `shop`.`category` SET `image_url` = 'https://s.appleinsider.ru/2018/09/xs-1.jpg' WHERE (`id` = '2');

UPDATE `shop`.`image` SET `url` = 'https://biggeek.ru/files/products/xsmax-gold_3.435x435.jpg?a9b5188a26a373714d0078bb1ed050b2' WHERE (`id` = '1');
UPDATE `shop`.`image` SET `url` = 'https://biggeek.ru/files/products/mi-6x-mi-6x5-99-fhd-snapdragon-660-4.jpg_640x640-1_2.435x435.435x435_2.435x435.jpg?49a7cb5039a778ee7f860ae9ef361226' WHERE (`id` = '2');
UPDATE `shop`.`image` SET `url` = 'https://biggeek.ru/files/products/product_galaxys9_midnightblack_01.435x435.435x435.jpg?12cd65301d80706c9e17159276a76cee' WHERE (`id` = '3');
UPDATE `shop`.`image` SET `url` = 'https://biggeek.ru/files/products/pocof1-blk-1_1_2.435x435.jpg?0fc25566656326e5a6a70b84dde75bdf' WHERE (`id` = '4');

UPDATE `shop`.`products` SET `price` = '1449$' WHERE (`id` = '1');
UPDATE `shop`.`products` SET `price` = '249$' WHERE (`id` = '2');
UPDATE `shop`.`products` SET `price` = '262$' WHERE (`id` = '3');
UPDATE `shop`.`products` SET `price` = '0$' WHERE (`id` = '4');

UPDATE `shop`.`category` SET `image_url` = 'https://gadgetmatch.com/wp-content/uploads/2017/04/gadgetmatch-best-budget-smartphones-300-may-2017.jpg' WHERE (`id` = '1');
UPDATE `shop`.`image` SET `url` = 'https://wallpapershome.ru/images/wallpapers/ayfon-xs-1920x1080-max-zolotoy-20328.jpg' WHERE (`id` = '1');

ALTER TABLE `shop`.`products`
CHANGE COLUMN `price` `price` VARCHAR(45) NULL DEFAULT NULL ;
UPDATE `shop`.`products` SET `price` = '' WHERE (`id` = '4');
UPDATE `shop`.`image` SET `url` = 'https://biggeek.ru/files/products/at-galaxy-a8-2018-duos-a530f-sm-a530fzkdato-frontblack-91918131.435x435.jpeg?013aaf3d9c2e3d074501e45071127c81' WHERE (`id` = '3');

