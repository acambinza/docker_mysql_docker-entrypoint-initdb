CREATE DATABASE IF NOT EXISTS db_organograma;

SET character_set_client = utf8;
SET character_set_connection = utf8;
SET character_set_results = utf8;
SET collation_connection = utf8_general_ci;


USE db_organograma;

-- CreateTable
CREATE TABLE IF NOT EXISTS `level_depto` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `description` VARCHAR(191) NOT NULL,
    `level` VARCHAR(50) NOT NULL,

    PRIMARY KEY (`id`)
);

-- CreateTable
CREATE TABLE IF NOT EXISTS `organogramas` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `code` VARCHAR(50) NOT NULL,
    `description` VARCHAR(100) NOT NULL,
    `leveldepto_id` INTEGER NOT NULL,
    `depto_above` INTEGER NOT NULL,
    `status` INTEGER NOT NULL,
    `created_at` TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
    `updated_at` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
);
