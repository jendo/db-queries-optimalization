use mydb;

DROP TABLE IF EXISTS `city`;

# INSERT INTO `city` (`address_location_code`,
#                     `code`,
#                     `name`,
#                     `district_number`,
#                     `district_name`,
#                     `street_code`,
#                     `street_name`,
#                     `land_registry_number`,
#                     `house_number`,
#                     `post_code`,
#                     `x_coordinate`,
#                     `y_coordinate`)
# VALUES (21690278,
#         554782,
#         'Praha',
#         19,
#         'Praha 1',
#         482536,
#         'Hrad I. nádvoří',
#         1,
#         NULL,
#         11900,
#         744384.54,
#         1042569.73);

CREATE TABLE `city`
(
    `address_location_code` int(11) UNSIGNED       NOT NULL,
    `code`                  int(10) UNSIGNED       NOT NULL,
    `name`                  varchar(255)           NOT NULL,
    `district_number`       int(11) UNSIGNED       NOT NULL,
    `district_name`         varchar(255)           NOT NULL,
    `street_code`           int(11) UNSIGNED       NULL,
    `street_name`           varchar(255)           NULL,
    `land_registry_number`  int(11) UNSIGNED       NOT NULL,
    `house_number`          int(11) UNSIGNED       NULL,
    `post_code`             int(5) UNSIGNED        NOT NULL,
    `x_coordinate`          DECIMAL(9, 2) UNSIGNED NOT NULL,
    `y_coordinate`          DECIMAL(9, 2) UNSIGNED NOT NULL,
    PRIMARY KEY (`address_location_code`)
) ENGINE = InnoDB
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

LOAD DATA INFILE 'data/cities.csv'
    INTO TABLE `city`
    FIELDS TERMINATED BY ','
    ENCLOSED BY '"'
    LINES TERMINATED BY '\n'
    IGNORE 1 ROWS
    (`address_location_code`,`code`,`name`,`district_number`,`district_name`,@street_code,@street_name,`land_registry_number`,@house_number,`post_code`,`x_coordinate`,`y_coordinate`)
    SET
        street_code = NULLIF(@street_code, ''),
        street_name = NULLIF(@street_name,''),
        house_number = NULLIF(@house_number, '');

# LOAD DATA INFILE 'data/test2.csv'
#     INTO TABLE `city`
#     FIELDS TERMINATED BY ';'
#     ENCLOSED BY '"'
#     LINES TERMINATED BY '\n'
#     IGNORE 1 ROWS;


