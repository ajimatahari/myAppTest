-- Valentina Studio --
-- MySQL dump --
-- ---------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- ---------------------------------------------------------


-- CREATE DATABASE "myAppDb" -------------------------------
CREATE DATABASE IF NOT EXISTS `myAppDb` CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `myAppDb`;
-- ---------------------------------------------------------


-- CREATE TABLE "BiayaSekolah" -----------------------------
CREATE TABLE `BiayaSekolah` ( 
	`idData` Int( 255 ) AUTO_INCREMENT NOT NULL, 
	`idSiswa` Int( 255 ) NOT NULL,
	 PRIMARY KEY ( `idData` )
 )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- ---------------------------------------------------------


-- CREATE TABLE "Pendaftar" --------------------------------
CREATE TABLE `Pendaftar` ( 
	`idRegistrar` Int( 255 ) AUTO_INCREMENT NOT NULL, 
	`NamaLengkap` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	 PRIMARY KEY ( `idRegistrar` )
, 
	CONSTRAINT `unique_idRegistrar` UNIQUE( `idRegistrar` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- ---------------------------------------------------------


-- CREATE TABLE "RegistrarRequirement" ---------------------
CREATE TABLE `RegistrarRequirement` ( 
	`idData` Int( 255 ) AUTO_INCREMENT NOT NULL, 
	`idRegistrar` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`U_Pangkal` Int( 255 ) NOT NULL,
	 PRIMARY KEY ( `idData` )
 )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- ---------------------------------------------------------


-- CREATE TABLE "Siswa" ------------------------------------
CREATE TABLE `Siswa` ( 
	`idSiswa` Int( 255 ) AUTO_INCREMENT NOT NULL, 
	`NamaLengkap` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	 PRIMARY KEY ( `idSiswa` )
 )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- ---------------------------------------------------------


-- CREATE TABLE "User" -------------------------------------
CREATE TABLE `User` ( 
	`id` Int( 255 ) AUTO_INCREMENT NOT NULL, 
	`userName` VarChar( 80 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`password` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`realName` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`contactPhone` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`emailAddress` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`groupParent` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	 PRIMARY KEY ( `id` )
, 
	CONSTRAINT `unique_id` UNIQUE( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- ---------------------------------------------------------


-- CREATE TABLE "task" -------------------------------------
CREATE TABLE `task` ( 
	`idUser` Int( 255 ) AUTO_INCREMENT NOT NULL,
	 PRIMARY KEY ( `idUser` )
 )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- ---------------------------------------------------------


-- Dump data of "BiayaSekolah" -----------------------------
-- ---------------------------------------------------------


-- Dump data of "Pendaftar" --------------------------------
-- ---------------------------------------------------------


-- Dump data of "RegistrarRequirement" ---------------------
-- ---------------------------------------------------------


-- Dump data of "Siswa" ------------------------------------
-- ---------------------------------------------------------


-- Dump data of "User" -------------------------------------
-- ---------------------------------------------------------


-- Dump data of "task" -------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "index_id" ---------------------------------
CREATE INDEX `index_id` USING BTREE ON `User`( `id` );
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


