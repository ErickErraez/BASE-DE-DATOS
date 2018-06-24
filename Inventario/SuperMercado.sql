CREATE SCHEMA IF NOT EXISTS `SuperMercado` DEFAULT CHARACTER SET utf8 ;
USE `SuperMercado` ;

-- -----------------------------------------------------
-- Table `SuperMercado`.`Tipo Producto`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SuperMercado`.`Tipo Producto` ;

CREATE TABLE IF NOT EXISTS `SuperMercado`.`Tipo Producto` (
  `idTipo` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`idTipo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SuperMercado`.`Productos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SuperMercado`.`Productos` ;

CREATE TABLE IF NOT EXISTS `SuperMercado`.`Productos` (
  `idProductos` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(200) NOT NULL,
  `precio` DECIMAL(5) NOT NULL,
  `idTipoProducto` INT NULL,
  `Tipo Producto_idTipo` INT NOT NULL,
  PRIMARY KEY (`idProductos`, `Tipo Producto_idTipo`),
  INDEX `fk_Productos_Tipo Producto_idx` (`Tipo Producto_idTipo` ASC),
  CONSTRAINT `fk_Productos_Tipo Producto`
    FOREIGN KEY (`Tipo Producto_idTipo`)
    REFERENCES `SuperMercado`.`Tipo Producto` (`idTipo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SuperMercado`.`Cliente`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SuperMercado`.`Cliente` ;

CREATE TABLE IF NOT EXISTS `SuperMercado`.`Cliente` (
  `idCliente` INT NOT NULL AUTO_INCREMENT,
  `cedula` VARCHAR(10) NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `apellido` VARCHAR(45) NOT NULL,
  `direccion` VARCHAR(100) NULL,
  `telefono` VARCHAR(10) NULL,
  PRIMARY KEY (`idCliente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SuperMercado`.`Facturas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SuperMercado`.`Facturas` ;

CREATE TABLE IF NOT EXISTS `SuperMercado`.`Facturas` (
  `idFacturas` INT NOT NULL AUTO_INCREMENT,
  `numeroFactura` VARCHAR(15) NOT NULL,
  `fechaFactura` DATETIME NOT NULL,
  `iva` DECIMAL(5) NOT NULL,
  `total` DECIMAL(5) NOT NULL,
  `Cliente_idCliente` INT NOT NULL,
  PRIMARY KEY (`idFacturas`, `Cliente_idCliente`),
  INDEX `fk_Facturas_Cliente1_idx` (`Cliente_idCliente` ASC),
  CONSTRAINT `fk_Facturas_Cliente1`
    FOREIGN KEY (`Cliente_idCliente`)
    REFERENCES `SuperMercado`.`Cliente` (`idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SuperMercado`.`Detalles Factura`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SuperMercado`.`Detalles Factura` ;

CREATE TABLE IF NOT EXISTS `SuperMercado`.`Detalles Factura` (
  `idDetalles` INT NOT NULL AUTO_INCREMENT,
  `cantidad` INT NOT NULL,
  `precio` DECIMAL(5) NOT NULL,
  `total` DECIMAL(5) NOT NULL,
  `Productos_idProductos` INT NOT NULL,
  `Productos_Tipo Producto_idTipo` INT NOT NULL,
  `Facturas_idFacturas` INT NOT NULL,
  `Facturas_Cliente_idCliente` INT NOT NULL,
  PRIMARY KEY (`idDetalles`, `Productos_idProductos`, `Productos_Tipo Producto_idTipo`, `Facturas_idFacturas`, `Facturas_Cliente_idCliente`),
  INDEX `fk_Detalles_Productos1_idx` (`Productos_idProductos` ASC, `Productos_Tipo Producto_idTipo` ASC),
  INDEX `fk_Detalles_Facturas1_idx` (`Facturas_idFacturas` ASC, `Facturas_Cliente_idCliente` ASC),
  CONSTRAINT `fk_Detalles_Productos1`
    FOREIGN KEY (`Productos_idProductos` , `Productos_Tipo Producto_idTipo`)
    REFERENCES `SuperMercado`.`Productos` (`idProductos` , `Tipo Producto_idTipo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Detalles_Facturas1`
    FOREIGN KEY (`Facturas_idFacturas` , `Facturas_Cliente_idCliente`)
    REFERENCES `SuperMercado`.`Facturas` (`idFacturas` , `Cliente_idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SuperMercado`.`Proveedor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SuperMercado`.`Proveedor` ;

CREATE TABLE IF NOT EXISTS `SuperMercado`.`Proveedor` (
  `idProveedor` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(100) NOT NULL,
  `direccion` VARCHAR(100) NOT NULL,
  `contacto` VARCHAR(300) NOT NULL,
  PRIMARY KEY (`idProveedor`))
ENGINE = InnoDB;
