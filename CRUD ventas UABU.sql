
USE `ventas` ;

-- -----------------------------------------------------
-- procedure lclientes
-- -----------------------------------------------------

USE `ventas`;
DROP procedure IF EXISTS `ventas`.`lclientes`;

DELIMITER $$
USE `ventas`$$
CREATE PROCEDURE `lclientes` ()
BEGIN
	SELECT *
			FROM Clientes
			ORDER BY docCliente;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure lproductos
-- -----------------------------------------------------

USE `ventas`;
DROP procedure IF EXISTS `ventas`.`lproductos`;

DELIMITER $$
USE `ventas`$$
CREATE PROCEDURE `lproductos` ()
BEGIN
    select *
    from 
    Prorductos
    order by  descripción;
END$$

DELIMITER ;



call actualizarCliente (-1, 6328802,'aaar','muela','uno','dos','calle','8','7','laaa@msn');
call actualizarCliente (37,76328802,'sacarias','muelas del dolor','uno','dos','calle','8','7','laaa@msn');


USE `ventas`;
DROP PROCEDURE IF EXISTS actualizarCliente;
delimiter //
CREATE PROCEDURE actualizarCliente(
	IN idCliente INT,
	IN docCliente INT,
	IN primerNombre VARCHAR(45),
	IN segundoNombre VARCHAR(45),
	IN primerApellido VARCHAR(45),
	IN segundoApellido VARCHAR(45),
	IN dirección TEXT,
	IN telefono1 FLOAT,
	IN telefono2 FLOAT,
	IN eMail TEXT
)
BEGIN
		IF IdCliente <=0 THEN
			INSERT INTO Clientes
				(
				 docCliente, primerNombre, segundoNombre, primerApellido, segundoApellido, 
                dirección, telefono1, telefono2, eMail
				)
				VALUES(
				 docCliente, primerNombre, segundoNombre, primerApellido, segundoApellido, 
                dirección, telefono1, telefono2, eMail
				);
		ELSE
			UPDATE Clientes
				SET docCliente =docCliente, 
				primerNombre = primerNombre,
				segundoNombre = segundoNombre,
				primerApellido = primerApellido,
				segundoApellido = segundoApellido,
				dirección = dirección, 
				telefono1 = telefono1, 
				telefono2 = telefono2, 
				eMail = eMail
				WHERE idClientes = idCliente;
		END IF;
 END//
 
