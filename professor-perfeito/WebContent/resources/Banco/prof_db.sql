-- MySQL Script generated by MySQL Workbench
-- Sun Jul  7 20:53:44 2019
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema prof_db
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema prof_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `prof_db` DEFAULT CHARACTER SET utf8 ;
USE `prof_db` ;

-- -----------------------------------------------------
-- Table `prof_db`.`professor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `prof_db`.`professor` ;

CREATE TABLE IF NOT EXISTS `prof_db`.`professor` (
  `idprofessor` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(200) NULL,
  `email` VARCHAR(200) NULL,
  `senha` VARCHAR(200) NULL,
  `imagem` VARCHAR(200) NULL,
  `cep` VARCHAR(45) NULL,
  `cidade` VARCHAR(45) NULL,
  `bairro` VARCHAR(45) NULL,
  `estado` VARCHAR(45) NULL,
  `rua` VARCHAR(45) NULL,
  PRIMARY KEY (`idprofessor`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `prof_db`.`aluno`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `prof_db`.`aluno` ;

CREATE TABLE IF NOT EXISTS `prof_db`.`aluno` (
  `idaluno` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(200) NULL,
  `email` VARCHAR(200) NULL,
  `senha` VARCHAR(200) NULL,
  PRIMARY KEY (`idaluno`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `prof_db`.`materia`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `prof_db`.`materia` ;

CREATE TABLE IF NOT EXISTS `prof_db`.`materia` (
  `idmateria` INT NOT NULL AUTO_INCREMENT,
  `materia` VARCHAR(200) NULL,
  PRIMARY KEY (`idmateria`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `prof_db`.`curso`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `prof_db`.`curso` ;

CREATE TABLE IF NOT EXISTS `prof_db`.`curso` (
  `idcurso` INT NOT NULL AUTO_INCREMENT,
  `competencia` VARCHAR(200) NULL,
  `ministra` VARCHAR(200) NULL,
  `aulasCasa` VARCHAR(200) NULL,
  `aulasWebcam` VARCHAR(200) NULL,
  `aulasAluno` VARCHAR(200) NULL,
  `titulo` VARCHAR(200) NULL,
  `imagem` VARCHAR(200) NULL,
  `metodologia` VARCHAR(200) NULL,
  `apresentacao` VARCHAR(200) NULL,
  `valorHora` VARCHAR(20) NULL,
  `valorDeslocamento` VARCHAR(20) NULL,
  `valorWeb` VARCHAR(20) NULL,
  `valorPacote` VARCHAR(20) NULL,
  `professor_idprofessor` INT NOT NULL,
  `materia_idmateria` INT NOT NULL,
  `subMateria` VARCHAR(200) NULL,
  `formacao` VARCHAR(200) NULL,
  PRIMARY KEY (`idcurso`, `professor_idprofessor`, `materia_idmateria`),
  INDEX `fk_curso_professor_idx` (`professor_idprofessor` ASC) VISIBLE,
  INDEX `fk_curso_materia1_idx` (`materia_idmateria` ASC) VISIBLE,
  CONSTRAINT `fk_curso_professor`
    FOREIGN KEY (`professor_idprofessor`)
    REFERENCES `prof_db`.`professor` (`idprofessor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_curso_materia1`
    FOREIGN KEY (`materia_idmateria`)
    REFERENCES `prof_db`.`materia` (`idmateria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `prof_db`.`subMateria`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `prof_db`.`subMateria` ;

CREATE TABLE IF NOT EXISTS `prof_db`.`subMateria` (
  `idsubMateria` INT NOT NULL AUTO_INCREMENT,
  `subMateria` VARCHAR(200) NULL,
  `materia_idmateria` INT NOT NULL,
  PRIMARY KEY (`idsubMateria`, `materia_idmateria`),
  INDEX `fk_subMateria_materia1_idx` (`materia_idmateria` ASC) VISIBLE,
  CONSTRAINT `fk_subMateria_materia1`
    FOREIGN KEY (`materia_idmateria`)
    REFERENCES `prof_db`.`materia` (`idmateria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `prof_db`.`anuncios`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `prof_db`.`anuncios` ;

CREATE TABLE IF NOT EXISTS `prof_db`.`anuncios` (
  `idanuncios` INT NOT NULL,
  `competencia` VARCHAR(200) NULL,
  `subMateria` VARCHAR(200) NULL,
  `minista` VARCHAR(20) NULL,
  `aulasCasa` VARCHAR(200) NULL,
  `aulasWebcam` VARCHAR(200) NULL,
  `aulasAluno` VARCHAR(200) NULL,
  `titulo` VARCHAR(200) NULL,
  `metodologia` VARCHAR(200) NULL,
  `apresentacao` VARCHAR(200) NULL,
  `formacao` VARCHAR(200) NULL,
  `valorHora` VARCHAR(20) NULL,
  `valorWeb` VARCHAR(20) NULL,
  `valorPacote` VARCHAR(20) NULL,
  `curso_idcurso` INT NULL,
  `valorDeslocamento` VARCHAR(20) NULL,
  PRIMARY KEY (`idanuncios`),
  INDEX `fk_anuncios_curso1_idx` (`curso_idcurso` ASC) VISIBLE,
  CONSTRAINT `fk_anuncios_curso1`
    FOREIGN KEY (`curso_idcurso`)
    REFERENCES `prof_db`.`curso` (`idcurso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;