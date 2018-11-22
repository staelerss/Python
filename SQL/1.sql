CREATE TABLE `shop`.`products` (
  `id` INT NOT NULL,
  `title` VARCHAR(45) NULL,
  `price` INT UNSIGNED NULL,
  `description` VARCHAR(255) NULL,
  `cat_id` INT NULL,
  PRIMARY KEY (`id`));

ALTER TABLE `shop`.`category`
CHANGE COLUMN `id` `id` INT(4) NOT NULL AUTO_INCREMENT ;

ALTER TABLE `shop`.`category`
CHANGE COLUMN `Title` `title` VARCHAR(50) NULL DEFAULT NULL ,
CHANGE COLUMN `Description` `description` VARCHAR(1000) NULL DEFAULT NULL ,
CHANGE COLUMN `Image_URL` `image_url` VARCHAR(1000) NULL DEFAULT NULL ;

ALTER TABLE `shop`.`products`
ADD INDEX `fk_category_idx` (`cat_id` ASC);
;
ALTER TABLE `shop`.`products`
ADD CONSTRAINT `fk_category`
  FOREIGN KEY (`cat_id`)
  REFERENCES `shop`.`category` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

CREATE TABLE `shop`.`image` (
  `id` INT NOT NULL,
  `title` VARCHAR(100) NULL DEFAULT NULL,
  `url` VARCHAR(255) NOT NULL,
  `product_id` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_product_idx` (`product_id` ASC),
  CONSTRAINT `fk_product`
    FOREIGN KEY (`product_id`)
    REFERENCES `shop`.`products` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
