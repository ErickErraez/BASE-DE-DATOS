CREATE DATABASE SuperMercado;
USE SuperMercado;

DROP TABLE IF EXISTS `mydb`.`Tipo Producto` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Tipo Producto` (
  `idTipo` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`idTipo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Productos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Productos` ;

CREATE TABLE IF NOT EXISTS Productos (
  `idProductos` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(200) NOT NULL,
  `precio` DECIMAL(5) NOT NULL,
  `idTipoProducto` INT NULL,
  `Tipo Producto_idTipo` INT NOT NULL,
  PRIMARY KEY (idProductos));

CREATE TABLE IF NOT EXISTS Clientes (
  `idCliente` INT NOT NULL AUTO_INCREMENT,
  `cedula` VARCHAR(10) NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `apellido` VARCHAR(45) NOT NULL,
  `direccion` VARCHAR(100) NULL,
  `telefono` VARCHAR(10) NULL,
  PRIMARY KEY (idCliente));

CREATE TABLE IF NOT EXISTS Facturas(
  `idFacturas` INT NOT NULL AUTO_INCREMENT,
  `numeroFactura` VARCHAR(15) NOT NULL,
  `fechaFactura` DATETIME NOT NULL,
  `iva` DECIMAL(5) NOT NULL,
  `total` DECIMAL(5) NOT NULL,
  `Cliente_idCliente` INT NOT NULL,
  PRIMARY KEY (idFacturas));


CREATE TABLE IF NOT EXISTS DetallesFactura (
  `idDetalles` INT NOT NULL AUTO_INCREMENT,
  `cantidad` INT NOT NULL,
  `precio` DECIMAL(5) NOT NULL,
  `total` DECIMAL(5) NOT NULL,
  `Productos_idProductos` INT NOT NULL,
  `Productos_Tipo Producto_idTipo` INT NOT NULL,
  `Facturas_idFacturas` INT NOT NULL,
  `Facturas_Cliente_idCliente` INT NOT NULL,
  PRIMARY KEY (idDetalles));

CREATE TABLE IF NOT EXISTS Proveedor(
  `idProveedor` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(100) NOT NULL,
  `direccion` VARCHAR(100) NOT NULL,
  `contacto` VARCHAR(300) NOT NULL,
  PRIMARY KEY (idProveedor));