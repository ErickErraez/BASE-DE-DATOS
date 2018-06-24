DROP DATABASE IF EXISTS Deportes;
CREATE DATABASE Deportes;
USE Deportes;

DROP TABLE IF EXISTS tiposDeporte;
CREATE TABLE tiposDeporte(
id INT NOT NULL AUTO_INCREMENT, 
nombreDeporte VARCHAR(50) NOT NULL,
balon VARCHAR(100) NOT NULL,
fechaInicioDeporte DATE NOT NULL, 
areaDeporte VARCHAR(100) NOT NULL,
mejorDeportista VARCHAR(50) NOT NULL,

PRIMARY KEY (id));

DROP TABLE IF EXISTS Participantes;
CREATE TABLE Participantes(
id INT NOT NULL AUTO_INCREMENT, 
nombre VARCHAR(50) NOT NULL,
apellido VARCHAR(50) NOT NULL,
fechaNacimiento DATE NOT NULL, 

PRIMARY KEY (id));

DROP TABLE IF EXISTS Torneos;
CREATE TABLE Torneos(
id INT NOT NULL AUTO_INCREMENT, 
nombreTorneo VARCHAR(50) NOT NULL,
ubicacionTorneo VARCHAR(100) NOT NULL,
fechaTorneo DATE NOT NULL, 

PRIMARY KEY (id));

DROP TABLE IF EXISTS Cronograma;
CREATE TABLE Cronograma(
id INT NOT NULL AUTO_INCREMENT, 
fechaJuego DATETIME NOT NULL,
fechaCierre DATE NOT NULL,
descripcion VARCHAR(100) NOT NULL,

PRIMARY KEY (id));

DROP TABLE IF EXISTS Actividades;
CREATE TABLE Actividades(
id INT NOT NULL AUTO_INCREMENT, 
descripcionActividad VARCHAR(100) NOT NULL,

PRIMARY KEY (id));

DROP TABLE IF EXISTS Ubicacion;
CREATE TABLE Ubicacion(
id INT NOT NULL AUTO_INCREMENT, 
nombreCampus VARCHAR(50) NOT NULL,
capacidadExpectadores INT NOT NULL,

PRIMARY KEY (id));

