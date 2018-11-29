START TRANSACTION;


ALTER TABLE `shop`.`category`
CHANGE COLUMN `title` `title` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NULL DEFAULT NULL ;

ALTER TABLE `shop`.`category`
CHANGE COLUMN `image_url` `image_url` VARCHAR(1000) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NULL DEFAULT NULL AFTER `id`,
CHANGE COLUMN `title` `title` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NULL DEFAULT NULL ,
CHANGE COLUMN `description` `description` VARCHAR(1000) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NULL DEFAULT NULL ;

ALTER TABLE `shop`.`image`
CHANGE COLUMN `title` `title` VARCHAR(100) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NULL DEFAULT NULL ,
CHANGE COLUMN `url` `url` VARCHAR(255) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NOT NULL ;

ALTER TABLE `shop`.`blog`
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ,
CHANGE COLUMN `title` `title` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NULL DEFAULT NULL ,
CHANGE COLUMN `body` `body` TEXT CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NULL DEFAULT NULL ;

COMMIT;
