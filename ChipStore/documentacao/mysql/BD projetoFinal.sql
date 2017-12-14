-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema projetofinal
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `projetofinal` ;

-- -----------------------------------------------------
-- Schema projetofinal
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `projetofinal` DEFAULT CHARACTER SET latin1 ;
USE `projetofinal` ;

-- -----------------------------------------------------
-- Table `projetofinal`.`categoria`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `projetofinal`.`categoria` ;

CREATE TABLE IF NOT EXISTS `projetofinal`.`categoria` (
  `codigo` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(70) NOT NULL,
  PRIMARY KEY (`codigo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `projetofinal`.`administrador`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `projetofinal`.`administrador` ;

CREATE TABLE IF NOT EXISTS `projetofinal`.`administrador` (
  `matricula` INT NOT NULL,
  `nome` INT NOT NULL,
  `senha` VARCHAR(10) NOT NULL,
  `email` VARCHAR(70) NOT NULL,
  `telefone` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`matricula`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `projetofinal`.`fabricante`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `projetofinal`.`fabricante` ;

CREATE TABLE IF NOT EXISTS `projetofinal`.`fabricante` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(70) NOT NULL,
  `cnpj` VARCHAR(18) NOT NULL,
  `endereco` VARCHAR(70) NOT NULL,
  `complemento` VARCHAR(45) NOT NULL,
  `bairro` VARCHAR(50) NOT NULL,
  `municipio` VARCHAR(50) NOT NULL,
  `uf` CHAR(2) NOT NULL,
  `contato` VARCHAR(70) NOT NULL,
  `email` VARCHAR(50) NOT NULL,
  `telefone` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

CREATE UNIQUE INDEX `cnpj_UNIQUE` ON `projetofinal`.`fabricante` (`cnpj` ASC);


-- -----------------------------------------------------
-- Table `projetofinal`.`cliente`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `projetofinal`.`cliente` ;

CREATE TABLE IF NOT EXISTS `projetofinal`.`cliente` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(70) NOT NULL,
  `datanascimento` DATE NOT NULL,
  `cpf` VARCHAR(15) NOT NULL,
  `rg` VARCHAR(15) NOT NULL,
  `telefone` VARCHAR(20) NOT NULL,
  `email` VARCHAR(70) NOT NULL,
  `uf` CHAR(2) NOT NULL,
  `endereco` VARCHAR(70) NOT NULL,
  `complemento` VARCHAR(20) NOT NULL,
  `bairro` VARCHAR(50) NOT NULL,
  `municipio` VARCHAR(50) NOT NULL,
  `senha` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

CREATE UNIQUE INDEX `cpf_UNIQUE` ON `projetofinal`.`cliente` (`cpf` ASC);


-- -----------------------------------------------------
-- Table `projetofinal`.`pedido`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `projetofinal`.`pedido` ;

CREATE TABLE IF NOT EXISTS `projetofinal`.`pedido` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `datapedido` DATETIME NOT NULL,
  `cliente_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_pedidos_cliente1`
    FOREIGN KEY (`cliente_id`)
    REFERENCES `projetofinal`.`cliente` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

CREATE INDEX `fk_pedidos_cliente1_idx` ON `projetofinal`.`pedido` (`cliente_id` ASC);

CREATE UNIQUE INDEX `cliente_id_UNIQUE` ON `projetofinal`.`pedido` (`cliente_id` ASC);

CREATE UNIQUE INDEX `id_UNIQUE` ON `projetofinal`.`pedido` (`id` ASC);


-- -----------------------------------------------------
-- Table `projetofinal`.`boleto`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `projetofinal`.`boleto` ;

CREATE TABLE IF NOT EXISTS `projetofinal`.`boleto` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `dataemissao` DATETIME NOT NULL,
  `valor` DOUBLE NOT NULL,
  `codigobarra` VARCHAR(16) NOT NULL,
  `pedido_id` INT NOT NULL,
  PRIMARY KEY (`id`, `pedido_id`),
  CONSTRAINT `fk_boleto_pedido1`
    FOREIGN KEY (`pedido_id`)
    REFERENCES `projetofinal`.`pedido` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

CREATE INDEX `fk_boleto_pedido1_idx` ON `projetofinal`.`boleto` (`pedido_id` ASC);


-- -----------------------------------------------------
-- Table `projetofinal`.`produto`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `projetofinal`.`produto` ;

CREATE TABLE IF NOT EXISTS `projetofinal`.`produto` (
  `codigo` INT NOT NULL AUTO_INCREMENT,
  `codigobarra` VARCHAR(16) NOT NULL,
  `nome` VARCHAR(70) NOT NULL,
  `modelo` VARCHAR(20) NOT NULL,
  `descricao` VARCHAR(45) NOT NULL,
  `preco` DOUBLE NOT NULL,
  `quantidade` INT NOT NULL,
  `disponivel` CHAR(1) NOT NULL,
  `imagem` VARCHAR(100) NOT NULL,
  `fabricante_id` INT NOT NULL,
  `categoria_codigo` INT NOT NULL,
  PRIMARY KEY (`codigo`),
  CONSTRAINT `fk_produtos_fabricante1`
    FOREIGN KEY (`fabricante_id`)
    REFERENCES `projetofinal`.`fabricante` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_produtos_categoria1`
    FOREIGN KEY (`categoria_codigo`)
    REFERENCES `projetofinal`.`categoria` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

CREATE UNIQUE INDEX `codigobarra_UNIQUE` ON `projetofinal`.`produto` (`codigobarra` ASC);

CREATE INDEX `fk_produtos_fabricante1_idx` ON `projetofinal`.`produto` (`fabricante_id` ASC);

CREATE INDEX `fk_produtos_categoria1_idx` ON `projetofinal`.`produto` (`categoria_codigo` ASC);


-- -----------------------------------------------------
-- Table `projetofinal`.`item_pedido`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `projetofinal`.`item_pedido` ;

CREATE TABLE IF NOT EXISTS `projetofinal`.`item_pedido` (
  `pedido_id` INT NOT NULL,
  `produto_codigo` INT NOT NULL,
  `valor` DOUBLE NOT NULL,
  PRIMARY KEY (`pedido_id`, `produto_codigo`),
  CONSTRAINT `fk_pedido_has_produto_pedido1`
    FOREIGN KEY (`pedido_id`)
    REFERENCES `projetofinal`.`pedido` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pedido_has_produto_produto1`
    FOREIGN KEY (`produto_codigo`)
    REFERENCES `projetofinal`.`produto` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

CREATE INDEX `fk_pedido_has_produto_produto1_idx` ON `projetofinal`.`item_pedido` (`produto_codigo` ASC);

CREATE INDEX `fk_pedido_has_produto_pedido1_idx` ON `projetofinal`.`item_pedido` (`pedido_id` ASC);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
