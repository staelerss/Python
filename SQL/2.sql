START TRANSACTION;

CREATE TABLE IF NOT EXISTS `blog` (
  `id` INT(11) NOT NULL,
  `products_id` INT(11) NOT NULL,
  `title` VARCHAR(45) NULL,
  `body` TEXT NULL,
  INDEX `fk_blog_products_idx` (`products_id` ASC),
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_blog_products`
    FOREIGN KEY (`products_id`)
    REFERENCES `shop`.`products` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

COMMIT;
