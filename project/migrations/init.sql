CREATE TABLE `city`
(
    `id`                    int(11) UNSIGNED       NOT NULL AUTO_INCREMENT,
    `code`                  int(10) UNSIGNED       NOT NULL,
    `name`                  varchar(255)           NOT NULL,
    `address_location_code` int(11) UNSIGNED       NOT NULL,
    `district_number`       int(11) UNSIGNED       NOT NULL,
    `district_name`         varchar(255)           NOT NULL,
    `street_code`           int(11) UNSIGNED       NOT NULL,
    `street_name`           varchar(255)           NOT NULL,
    `land_registry_number`  int(11) UNSIGNED       NOT NULL,
    `house_number`          int(11) UNSIGNED       NOT NULL,
    `post_code`             int(5) UNSIGNED        NOT NULL NOT NULL,
    `x_coordinate`          DECIMAL(9, 2) UNSIGNED NOT NULL,
    `y_coordinate`          DECIMAL(9, 2) UNSIGNED NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;