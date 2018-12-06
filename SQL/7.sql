ALTER TABLE `shop`.`category`
CHANGE COLUMN `image_url` `image_url` VARCHAR(1000) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NULL DEFAULT NULL ,
CHANGE COLUMN `title` `title` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NULL DEFAULT NULL ,
CHANGE COLUMN `description` `description` VARCHAR(1000) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NULL DEFAULT NULL ;
