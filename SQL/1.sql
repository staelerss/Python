CREATE TABLE `shop`.`products` (
  `id` INT NOT NULL,
  `title` VARCHAR(45) NULL,
  `price` INT UNSIGNED NULL,
  `description` VARCHAR(255) NULL,
  `cat_id` INT NULL,
  PRIMARY KEY (`id`));
