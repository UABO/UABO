SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema ventas
-- -----------------------------------------------------
DROP database IF EXISTS `ventas`;

-- -----------------------------------------------------
-- Schema ventas
-- -----------------------------------------------------
CREATE database IF NOT EXISTS `ventas`;
USE `ventas` ;

-- -----------------------------------------------------
-- Table `ventas`.`Productos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ventas`.`Productos` ;

CREATE TABLE IF NOT EXISTS `ventas`.`Productos` (
  `idProductos` INT NOT NULL AUTO_INCREMENT,
  `descripción` VARCHAR(255) NOT NULL,
  `vlrUnitario` INT NOT NULL,
  `estado` BINARY NOT NULL,
  PRIMARY KEY (`idProductos`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ventas`.`Clientes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ventas`.`Clientes` ;

CREATE TABLE IF NOT EXISTS `ventas`.`Clientes` (
  `idClientes` INT NOT NULL AUTO_INCREMENT,
  `docCliente` INT UNSIGNED NOT NULL COMMENT '	',
  `primerNombre` VARCHAR(45) CHARACTER SET 'big5' NOT NULL,
  `segundoNombre` VARCHAR(45) NULL,
  `primerApellido` VARCHAR(45) NOT NULL,
  `segundoApellido` VARCHAR(45) NULL,
  `dirección` TEXT NOT NULL,
  `telefono1` FLOAT NOT NULL,
  `telefono2` FLOAT NULL,
  `eMail` TEXT NOT NULL,
  PRIMARY KEY (`idClientes`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ventas`.`Vendedores`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ventas`.`Vendedores` ;

CREATE TABLE IF NOT EXISTS `ventas`.`Vendedores` (
  `idVendedores` INT NOT NULL AUTO_INCREMENT,
  `nombreVendedor` TEXT NOT NULL,
  `identificacion` VARCHAR(45) NOT NULL,
  `eMail` TEXT NOT NULL,
  PRIMARY KEY (`idVendedores`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ventas`.`Usuarios`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ventas`.`Usuarios` ;

CREATE TABLE IF NOT EXISTS `ventas`.`Usuarios` (
  `idUsuarios` INT NOT NULL AUTO_INCREMENT,
  `nombreUsuario` VARCHAR(45) NOT NULL,
  `correoUsuario` TEXT NOT NULL,
  PRIMARY KEY (`idUsuarios`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ventas`.`Pedido`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ventas`.`Pedido` ;

CREATE TABLE IF NOT EXISTS `ventas`.`Pedido` (
  `idPedido` INT NOT NULL AUTO_INCREMENT COMMENT 'numero del pedido',
  `idClientes` INT NOT NULL COMMENT 'identificacion del cliente',
  `idVendedores` INT NOT NULL COMMENT 'identificacion del vendedor',
  `fPedido` DATE NOT NULL COMMENT 'Fecha del pedido',
  `estado` VARCHAR(1) NOT NULL COMMENT 'Estado del pedido\nen proceso (p)\ncancelada  (c)\nentregada (e)',
  `valor` INT NOT NULL COMMENT 'Valor del producto	',
  `vendedor` INT NOT NULL COMMENT 'usuario registrado',
  `Usuario` INT NOT NULL,
  PRIMARY KEY (`idPedido`),
  INDEX `idClientes_idx` (`idClientes` ASC),
  INDEX `idVendores_idx` (`idVendedores` ASC),
  INDEX `idUsuario_idx` (`Usuario` ASC),
  CONSTRAINT `idClientes`
    FOREIGN KEY (`idClientes`)
    REFERENCES `ventas`.`Clientes` (`idClientes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idVendores`
    FOREIGN KEY (`idVendedores`)
    REFERENCES `ventas`.`Vendedores` (`idVendedores`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idUsuario`
    FOREIGN KEY (`Usuario`)
    REFERENCES `ventas`.`Usuarios` (`idUsuarios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ventas`.`itemsPedidos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ventas`.`itemsPedidos` ;

CREATE TABLE IF NOT EXISTS `ventas`.`itemsPedidos` (
  `iditemsPedidos` INT NOT NULL AUTO_INCREMENT,
  `idPedido` INT NOT NULL,
  `idProductos` INT NOT NULL COMMENT 'identificacion del pruducto solicitado',
  `cantidad` INT UNSIGNED NOT NULL COMMENT 'cantidad solicitada',
  `vlrUnitario` INT NOT NULL COMMENT 'valor unitario del producto',
  `VlrTotal` INT NOT NULL COMMENT 'Valor Total del producto\ncantidad X vlrUnitario',
  `usuario` INT NOT NULL,
  PRIMARY KEY (`iditemsPedidos`),
  INDEX `Pedido_idx` (`idPedido` ASC),
  INDEX `Producto_idx` (`idProductos` ASC),
  INDEX `Usuario_idx` (`usuario` ASC),
  CONSTRAINT `Pedido`
    FOREIGN KEY (`idPedido`)
    REFERENCES `ventas`.`Pedido` (`idPedido`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Producto`
    FOREIGN KEY (`idProductos`)
    REFERENCES `ventas`.`Productos` (`idProductos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Usuario`
    FOREIGN KEY (`usuario`)
    REFERENCES `ventas`.`Usuarios` (`idUsuarios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `ventas` ;

-- -----------------------------------------------------
-- Placeholder table for view `ventas`.`lPedidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ventas`.`lPedidos` (`idPedido` INT, `idClientes` INT, `idVendedores` INT, `fPedido` INT, `estado` INT, `valor` INT, `vendedor` INT, `Usuario` INT);

-- -----------------------------------------------------
-- Placeholder table for view `ventas`.`lVendedores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ventas`.`lVendedores` (`idVendedores` INT, `nombreVendedor` INT, `identificacion` INT, `eMail` INT);

-- -----------------------------------------------------
-- Placeholder table for view `ventas`.`lUsuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ventas`.`lUsuarios` (`idUsuarios` INT, `nombreUsuario` INT, `correoUsuario` INT);

-- -----------------------------------------------------
-- View `ventas`.`lPedidos`
-- -----------------------------------------------------
DROP VIEW IF EXISTS `ventas`.`lPedidos` ;
DROP TABLE IF EXISTS `ventas`.`lPedidos`;
USE `ventas`;
CREATE  OR REPLACE VIEW lPedidos AS 
select *
from Pedido;

-- -----------------------------------------------------
-- View `ventas`.`lVendedores`
-- -----------------------------------------------------
DROP VIEW IF EXISTS `ventas`.`lVendedores` ;
DROP TABLE IF EXISTS `ventas`.`lVendedores`;
USE `ventas`;
CREATE  OR REPLACE VIEW lVendedores AS
SELECT *
FROM 
Vendedores;

-- -----------------------------------------------------
-- View `ventas`.`lUsuarios`
-- -----------------------------------------------------
DROP VIEW IF EXISTS `ventas`.`lUsuarios` ;
DROP TABLE IF EXISTS `ventas`.`lUsuarios`;
USE `ventas`;
CREATE  OR REPLACE VIEW `lUsuarios` AS 
select *
from Usuarios;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `ventas`.`Clientes`
-- -----------------------------------------------------
START TRANSACTION;
USE `ventas`;
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (null, 25484626, 'BELTRAN', 'GALINDEZ', 'LINDELIA', '', 'LA VEGA', 3184105971, 3154105971, 'BELTRANLINDELIA@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (null, 76323917, 'BENAVIDES', 'REINEL', 'LUIS', 'HERNANDO', 'CRA 9A 60N 199', 3184110756, 3154110756, 'BENAVIDESLUIS@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (null, 76327876, 'BERMEO', 'SOTELO', 'DIDIER', '', 'TRS 17 N 311', 3184120326, 3154120326, 'BERMEODIDIER@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (null, 48574640, 'BETANCOURT', 'MERA', 'ADRIANA', '', 'PIENDAMO CAUCA', 3184139466, 3154139466, 'BETANCOURTADRIANA@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (null, 10524926, 'BLANCO', '', 'INOCENCIO', '', 'CULEBRIADO', 3184177746, 3154177746, 'BLANCOINOCENCIO@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (null, 76305290, 'BLANCO', 'MANUNGA', 'MILTODIO', '', 'CULEBRIADO', 3184254306, 3154254306, 'BLANCOMILTODIO@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (null, 1462567, 'BOHOJORGE', 'RODRIGUEZ', 'RAUL', 'ELIAS', 'BARAYA', 3184407426, 3154407426, 'BOHOJORGERAUL@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (null, 1462568, 'JORGE', 'RODRIGUEZ', 'RAUL', '', 'BARAYA', 3184713666, 3154713666, 'BOHOJORGERAUL@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (null, 1462589, 'BOHOJORGE', '', 'PEDRO', 'PABLO', 'BARAYA', 3185326146, 3155326146, 'BOHOJORGEPEDRO@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (null, 1462590, 'BOHOJORGE', '', 'PEDRO', 'PABLO', 'BARAYA', 3186551106, 3156551106, 'BOHOJORGEPEDRO@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (null, 76327979, 'BOLANOS', 'DELGADO', 'GERMAN', 'ORLANDO', 'POPAYAN CAUCA', 3189001026, 3159001026, 'BOLANOSGERMAN@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (null, 76327976, 'DELGADO', '', 'ORLANDO', '', 'POPAYAN CAUCA', 3193900866, 3163900866, 'GERMAN@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (null, 76314805, 'BURBANO', '', 'URIEL', '', 'CALLE 13BIS 11 31', 3203700546, 3173700546, 'BURBANOURIEL@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (null, 76320073, 'BURBANO', '', 'GIOVANNI', '', 'carrera 45  4-455', 3204100546, 3174100546, 'BURBANOGIOVANNI@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (null, 1476825, 'CABEZAS', 'ORDONEZ', 'ARCENIO', '', 'LA VEGA', 3204179088, 3174179088, 'CABEZASARCENIO@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (null, 14768250, 'CABEZAS', '', 'ARCENIO', '', 'LA VEGA', 3204336172, 3174336172, 'CABEZAS@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (null, 891500231, 'CAFICULTORES', 'DEL CAUCA', 'COOPERATIVA', 'DE', 'CRA 9 No. 68N-04', 3204650340, 3174650340, 'CAFICULTORESCOOPERATIVA@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (null, 1007352813, 'CAJIAO', 'PILLIMUE', 'ANA', 'MARIA', 'PIENDAMO', 3205278676, 3175278676, 'CAJIAOANA@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (null, 10750600, 'CAJIAO', 'MUELAS', 'JAIR', '', 'PIENDAMO', 3206535348, 3176535348, 'CAJIAOJAIR@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (null, 10753013, 'CAJIAO', 'BUITRON', 'ALEXANDER', '', 'PIENDAMO', 3209048692, 3179048692, 'CAJIAOALEXANDER@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (null, 10754730, 'CAJIAO', 'RIVERA', 'OSCAR', 'HERNAN', 'PIENDAMO', 3143701748, 3113701748, 'CAJIAOOSCAR@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (null, 25327054, 'CAMAYO', '', 'MARIA', 'SEBASTIANA', 'BUENOS AIRES', 3224128756, 3194128756, 'CAMAYOMARIA@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (null, 10292299, 'CAMPO', 'FERNANDEZ', 'MIGUEL', 'IGNACIO', 'LISBOA DAJUANDO', 3231668788, 3201668788, 'CAMPOMIGUEL@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (null, 1063816002, 'CAMPO', 'COLLAZOS', 'LETY', '', 'NOVILLEROS', 3119711691, 3089711691, 'CAMPOLETY@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (null, 1062298120, 'CARDONA', 'MENESES', 'JORGE', '', 'SANTANDER', 3119787554, 3089787554, 'CARDONAJORGE@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (null, 12958600, 'CEBALLOS', '', 'CARLOS', '', 'CRA 17N N N 80', 3119863417, 3089863417, 'CEBALLOSCARLOS@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (null, 2575389, 'CENDALES', '', 'JORGE', 'OCTAVIO', 'CALLE 5 N 14-30', 3119939280, 3089939280, 'CENDALESJORGE@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (null, 900045094, 'CERES', '', 'CERTICICADORA', '', 'CRA 40 A N 9 C 05', 3120015143, 3090015143, 'CERESCERTICICADORA@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (null, 25395005, 'CHACON', 'OROZCO', 'LUZ', 'ELVA', 'MONTERREDONDO (LA MIRLA)', 3120091006, 3090091006, 'CHACONLUZ@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (null, 10542251, 'CHAGUENDO', 'ZUNIGA', 'HERNEY', '', 'CLL 3 N 33', 3120394458, 3090394458, 'CHAGUENDOHERNEY@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (null, 1061801870, 'CHAGUENDO', '', 'DANILO', '', 'TRILLADORA LUCHIN', 3120546184, 3090546184, 'CHAGUENDODANILO@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (null, 1061750516, 'CHALA', '', 'JOSE', 'REDIN', 'CENTRO POPAYAN', 3120622047, 3090622047, 'CHALAJOSE@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (null, 76000239, 'CHANTRE', '', 'PLINIO', '', 'CERRITO', 3120697910, 3090697910, 'CHANTREPLINIO@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (null, 1061536645, 'CHARA', 'ANAYA', 'MARIANELA', '', 'CULEBRIADO', 3120773773, 3090773773, 'CHARAMARIANELA@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (null, 4676747, 'CHITO', 'YANDE', 'EDGAR', '', 'BARAYA', 3120849636, 3090849636, 'CHITOEDGAR@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (null, 94355480, 'CONTRATISTA', 'ASEO', 'INGENIERIA', 'CIVIL', 'calle 4 7-54', 3121001362, 3091001362, 'CONTRATISTAINGENIERIA@hotmail.com');

COMMIT;


-- -----------------------------------------------------
-- Data for table `ventas`.`Vendedores`
-- -----------------------------------------------------
START TRANSACTION;
USE `ventas`;
INSERT INTO `ventas`.`Vendedores` (`idVendedores`, `nombreVendedor`, `identificacion`, `eMail`) VALUES (DEFAULT, 'Carmen Lorena Gonzalez Murcia', '1019064710', 'lore.gonmur@gmail.com');
INSERT INTO `ventas`.`Vendedores` (`idVendedores`, `nombreVendedor`, `identificacion`, `eMail`) VALUES (DEFAULT, 'Geraldine Estefania Zorro Puentes', '1001066336', 'geral.estefa@gmail.com');
INSERT INTO `ventas`.`Vendedores` (`idVendedores`, `nombreVendedor`, `identificacion`, `eMail`) VALUES (DEFAULT, 'Harold Stiven Gutierrez Sandoval', '1022970466', 'hgsandoval2@gmail.com');
INSERT INTO `ventas`.`Vendedores` (`idVendedores`, `nombreVendedor`, `identificacion`, `eMail`) VALUES (DEFAULT, 'Omar Daniel Zorro Puentes', '1031165495', 'Danteodzp@gmail.com');
INSERT INTO `ventas`.`Vendedores` (`idVendedores`, `nombreVendedor`, `identificacion`, `eMail`) VALUES (DEFAULT, 'luis miguel cortes castillo', '76328802', 'luismcc@msn.com');

COMMIT;


-- -----------------------------------------------------
-- Data for table `ventas`.`Usuarios`
-- -----------------------------------------------------
START TRANSACTION;
USE `ventas`;
INSERT INTO `ventas`.`Usuarios` (`idUsuarios`, `nombreUsuario`, `correoUsuario`) VALUES (DEFAULT, 'Carmen Lorena Gonzalez Murcia', 'lore.gonmur@gmail.com');
INSERT INTO `ventas`.`Usuarios` (`idUsuarios`, `nombreUsuario`, `correoUsuario`) VALUES (DEFAULT, 'Geraldine Estefania Zorro Puentes', 'geral.estefa@gmail.com');
INSERT INTO `ventas`.`Usuarios` (`idUsuarios`, `nombreUsuario`, `correoUsuario`) VALUES (DEFAULT, 'Harold Stiven Gutierrez Sandoval', 'hgsandoval2@gmail.com');
INSERT INTO `ventas`.`Usuarios` (`idUsuarios`, `nombreUsuario`, `correoUsuario`) VALUES (DEFAULT, 'Omar Daniel Zorro Puentes', 'Danteodzp@gmail.com');
INSERT INTO `ventas`.`Usuarios` (`idUsuarios`, `nombreUsuario`, `correoUsuario`) VALUES (DEFAULT, 'luis miguel cortes castillo', 'luismcc@msn.com');

COMMIT;

