-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema bmcccompass
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema bmcccompass
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `bmcccompass` DEFAULT CHARACTER SET utf8mb4 ;


USE `bmcccompass` ;

-- -----------------------------------------------------
-- Table `bmcccompass`.`assignments`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bmcccompass`.`assignments` (
  `assignmentid` INT(11) NOT NULL,
  `name` VARCHAR(255) NULL DEFAULT NULL,
  `class` VARCHAR(255) NULL DEFAULT NULL,
  `due_date` DATE NULL DEFAULT NULL,
  `recommended_date` DATE NULL DEFAULT NULL,
  `description` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`assignmentid`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `bmcccompass`.`professors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bmcccompass`.`professors` (
  `professorid` INT(11) NOT NULL,
  `username` VARCHAR(255) NULL DEFAULT NULL,
  `password` VARCHAR(255) NULL DEFAULT NULL,
  `first_name` VARCHAR(255) NULL DEFAULT NULL,
  `last_name` VARCHAR(255) NULL DEFAULT NULL,
  `email` VARCHAR(255) NULL DEFAULT NULL,
  `phone_number` VARCHAR(20) NULL DEFAULT NULL,
  `pronouns` VARCHAR(20) NULL DEFAULT NULL,
  `department` VARCHAR(30) NULL DEFAULT NULL,
  `bio` VARCHAR(500) NULL DEFAULT NULL,
  PRIMARY KEY (`professorid`),
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `bmcccompass`.`classes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bmcccompass`.`classes` (
  `classid` INT(11) NOT NULL,
  `class_name` VARCHAR(45) NULL DEFAULT NULL,
  `class department` VARCHAR(45) NULL DEFAULT NULL,
  `professorid` INT(11) NOT NULL,
  PRIMARY KEY (`classid`),
  INDEX `fk_classes_professor` (`professorid` ASC) ,
  CONSTRAINT `fk_classes_professor`
    FOREIGN KEY (`professorid`)
    REFERENCES `bmcccompass`.`professors` (`professorid`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `bmcccompass`.`students`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bmcccompass`.`students` (
  `studentid` INT(11) NOT NULL,
  `username` VARCHAR(255) NULL DEFAULT NULL,
  `password` VARCHAR(255) NULL DEFAULT NULL,
  `first_name` VARCHAR(255) NULL DEFAULT NULL,
  `last_name` VARCHAR(255) NULL DEFAULT NULL,
  `email` VARCHAR(255) NULL DEFAULT NULL,
  `phone_number` VARCHAR(20) NULL DEFAULT NULL,
  `pronouns` VARCHAR(20) NULL DEFAULT NULL,
  `department` VARCHAR(30) NULL DEFAULT NULL,
  `bio` VARCHAR(500) NULL DEFAULT NULL,
  PRIMARY KEY (`studentid`),
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `bmcccompass`.`student_professor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bmcccompass`.`student_professor` (
  `studentid` INT(11) NOT NULL,
  `professorid` INT(11) NOT NULL,
  `assignmentid` INT(11) NOT NULL,
  PRIMARY KEY (`studentid`, `professorid`, `assignmentid`),
  INDEX `professorid_idx` (`professorid` ASC) ,
  INDEX `assignmentid_idx` (`assignmentid` ASC) ,
  CONSTRAINT `assignmentid`
    FOREIGN KEY (`assignmentid`)
    REFERENCES `bmcccompass`.`assignments` (`assignmentid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `professorid`
    FOREIGN KEY (`professorid`)
    REFERENCES `bmcccompass`.`professors` (`professorid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `studentid`
    FOREIGN KEY (`studentid`)
    REFERENCES `bmcccompass`.`students` (`studentid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
