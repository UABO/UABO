
-- -----------------------------------------------------
-- Data for table `ventas`.`Productos`
-- -----------------------------------------------------
START TRANSACTION;
USE `ventas`;
INSERT INTO `ventas`.`Productos` (`idProductos`, `descripción`, `vlrUnitario`, `estado`) VALUES (DEFAULT, 'Correa en cuero negra para mujer', 15000, 0);
INSERT INTO `ventas`.`Productos` (`idProductos`, `descripción`, `vlrUnitario`, `estado`) VALUES (DEFAULT, 'bolso negro con grapas en metal', 45000, 1);
INSERT INTO `ventas`.`Productos` (`idProductos`, `descripción`, `vlrUnitario`, `estado`) VALUES (DEFAULT, 'Correa en cuero', 50000, 0);

COMMIT;


-- -----------------------------------------------------
-- Data for table `ventas`.`Clientes`
-- -----------------------------------------------------
START TRANSACTION;
USE `ventas`;
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (DEFAULT, 25484626, 'BELTRAN', 'GALINDEZ', 'LINDELIA', '', 'LA VEGA', 3184105971, 3154105971, 'BELTRANLINDELIA@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (DEFAULT, 76323917, 'BENAVIDES', 'REINEL', 'LUIS', 'HERNANDO', 'CRA 9A 60N 199', 3184110756, 3154110756, 'BENAVIDESLUIS@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (DEFAULT, 76327876, 'BERMEO', 'SOTELO', 'DIDIER', '', 'TRS 17 N  28 311', 3184120326, 3154120326, 'BERMEODIDIER@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (DEFAULT, 48574640, 'BETANCOURT', 'MERA', 'ADRIANA', '', 'PIENDAMO CAUCA', 3184139466, 3154139466, 'BETANCOURTADRIANA@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (DEFAULT, 10524926, 'BLANCO', '', 'INOCENCIO', '', 'CULEBRIADO', 3184177746, 3154177746, 'BLANCOINOCENCIO@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (DEFAULT, 76305290, 'BLANCO', 'MANUNGA', 'MILTODIO', '', 'CULEBRIADO', 3184254306, 3154254306, 'BLANCOMILTODIO@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (DEFAULT, 1462567, 'BOHOJORGE', 'RODRIGUEZ', 'RAUL', 'ELIAS', 'BARAYA', 3184407426, 3154407426, 'BOHOJORGERAUL@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (DEFAULT, 1462568, 'JORGE', 'RODRIGUEZ', 'RAUL', '', 'BARAYA', 3184713666, 3154713666, 'BOHOJORGERAUL@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (DEFAULT, 1462589, 'BOHOJORGE', '', 'PEDRO', 'PABLO', 'BARAYA', 3185326146, 3155326146, 'BOHOJORGEPEDRO@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (DEFAULT, 1462590, 'BOHOJORGE', '', 'PEDRO', 'PABLO', 'BARAYA', 3186551106, 3156551106, 'BOHOJORGEPEDRO@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (DEFAULT, 76327979, 'BOLANOS', 'DELGADO', 'GERMAN', 'ORLANDO', 'POPAYAN CAUCA', 3189001026, 3159001026, 'BOLANOSGERMAN@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (DEFAULT, 76327976, 'DELGADO', '', 'ORLANDO', '', 'POPAYAN CAUCA', 3193900866, 3163900866, 'GERMAN@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (DEFAULT, 76314805, 'BURBANO', '', 'URIEL', '', 'CALLE 13BIS 11 31', 3203700546, 3173700546, 'BURBANOURIEL@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (DEFAULT, 76320073, 'BURBANO', '', 'GIOVANNI', '', 'carrera 45  4-455', 3204100546, 3174100546, 'BURBANOGIOVANNI@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (DEFAULT, 1476825, 'CABEZAS', 'ORDONEZ', 'ARCENIO', '', 'LA VEGA', 3204179088, 3174179088, 'CABEZASARCENIO@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (DEFAULT, 14768250, 'CABEZAS', '', 'ARCENIO', '', 'LA VEGA', 3204336172, 3174336172, 'CABEZAS@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (DEFAULT, 891500231, 'CAFICULTORES', 'DEL CAUCA', 'COOPERATIVA', 'DE', 'CRA 9 No. 68N-04', 3204650340, 3174650340, 'CAFICULTORESCOOPERATIVA@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (DEFAULT, 1007352813, 'CAJIAO', 'PILLIMUE', 'ANA', 'MARIA', 'PIENDAMO', 3205278676, 3175278676, 'CAJIAOANA@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (DEFAULT, 10750600, 'CAJIAO', 'MUELAS', 'JAIR', '', 'PIENDAMO', 3206535348, 3176535348, 'CAJIAOJAIR@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (DEFAULT, 10753013, 'CAJIAO', 'BUITRON', 'ALEXANDER', '', 'PIENDAMO', 3209048692, 3179048692, 'CAJIAOALEXANDER@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (DEFAULT, 10754730, 'CAJIAO', 'RIVERA', 'OSCAR', 'HERNAN', 'PIENDAMO', 3143701748, 3113701748, 'CAJIAOOSCAR@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (DEFAULT, 25327054, 'CAMAYO', '', 'MARIA', 'SEBASTIANA', 'BUENOS AIRES', 3224128756, 3194128756, 'CAMAYOMARIA@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (DEFAULT, 10292299, 'CAMPO', 'FERNANDEZ', 'MIGUEL', 'IGNACIO', 'LISBOA DAJUANDO', 3231668788, 3201668788, 'CAMPOMIGUEL@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (DEFAULT, 1063816002, 'CAMPO', 'COLLAZOS', 'LETY', '', 'NOVILLEROS', 3119711691, 3089711691, 'CAMPOLETY@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (DEFAULT, 1062298120, 'CARDONA', 'MENESES', 'JORGE', '', 'SANTANDER', 3119787554, 3089787554, 'CARDONAJORGE@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (DEFAULT, 12958600, 'CEBALLOS', '', 'CARLOS', '', 'CRA 17N N  57N 80', 3119863417, 3089863417, 'CEBALLOSCARLOS@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (DEFAULT, 2575389, 'CENDALES', '', 'JORGE', 'OCTAVIO', 'CALLE 5 N 14-30', 3119939280, 3089939280, 'CENDALESJORGE@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (DEFAULT, 900045094, 'CERES', '', 'CERTICICADORA', '', 'CRA 40 A N 9 C 05', 3120015143, 3090015143, 'CERESCERTICICADORA@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (DEFAULT, 25395005, 'CHACON', 'OROZCO', 'LUZ', 'ELVA', 'MONTERREDONDO (LA MIRLA)', 3120091006, 3090091006, 'CHACONLUZ@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (DEFAULT, 10542251, 'CHAGUENDO', 'ZUNIGA', 'HERNEY', '', 'CLL 3 N  13 33', 3120394458, 3090394458, 'CHAGUENDOHERNEY@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (DEFAULT, 1061801870, 'CHAGUENDO', '', 'DANILO', '', 'TRILLADORA LUCHIN', 3120546184, 3090546184, 'CHAGUENDODANILO@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (DEFAULT, 1061750516, 'CHALA', '', 'JOSE', 'REDIN', 'CENTRO POPAYAN', 3120622047, 3090622047, 'CHALAJOSE@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (DEFAULT, 76000239, 'CHANTRE', '', 'PLINIO', '', 'CERRITO', 3120697910, 3090697910, 'CHANTREPLINIO@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (DEFAULT, 1061536645, 'CHARA', 'ANAYA', 'MARIANELA', '', 'CULEBRIADO', 3120773773, 3090773773, 'CHARAMARIANELA@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (DEFAULT, 4676747, 'CHITO', 'YANDE', 'EDGAR', '', 'BARAYA', 3120849636, 3090849636, 'CHITOEDGAR@hotmail.com');
INSERT INTO `ventas`.`Clientes` (`idClientes`, `docCliente`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `dirección`, `telefono1`, `telefono2`, `eMail`) VALUES (DEFAULT, 94355480, 'CONTRATISTA', 'ASEO', 'INGENIERIA', 'CIVIL', 'calle 4 7-54', 3121001362, 3091001362, 'CONTRATISTAINGENIERIA@hotmail.com');

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
INSERT INTO `ventas`.`Usuarios` (`idUsuarios`, `nombreUsuario`, `correoUsuario`, `tipoUsuario`) VALUES (DEFAULT, 'Carmen Lorena Gonzalez Murcia', 'lore.gonmur@gmail.com', 0);
INSERT INTO `ventas`.`Usuarios` (`idUsuarios`, `nombreUsuario`, `correoUsuario`, `tipoUsuario`) VALUES (DEFAULT, 'Geraldine Estefania Zorro Puentes', 'geral.estefa@gmail.com', 0);
INSERT INTO `ventas`.`Usuarios` (`idUsuarios`, `nombreUsuario`, `correoUsuario`, `tipoUsuario`) VALUES (DEFAULT, 'Harold Stiven Gutierrez Sandoval', 'hgsandoval2@gmail.com', 0);
INSERT INTO `ventas`.`Usuarios` (`idUsuarios`, `nombreUsuario`, `correoUsuario`, `tipoUsuario`) VALUES (DEFAULT, 'Omar Daniel Zorro Puentes', 'Danteodzp@gmail.com', 0);
INSERT INTO `ventas`.`Usuarios` (`idUsuarios`, `nombreUsuario`, `correoUsuario`, `tipoUsuario`) VALUES (DEFAULT, 'luis miguel cortes castillo', 'luismcc@msn.com', 1);

COMMIT;

