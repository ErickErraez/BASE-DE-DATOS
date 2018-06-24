USE Deportes;
-- INSERCCION DE DATOS EN LAS TABLAS
INSERT INTO tiposDeporte VALUES (1,'FUTBOL','MIKASA','2001-2-15','CESPED','MESSI');
INSERT INTO Participantes VALUES (1,'Bryan','Cortez','1999-6-14');
INSERT INTO Torneos VALUES (1,'Mundial','Rusia','2018-6-12');
INSERT INTO Cronograma VALUES (1,'2018-6-11','2018-7-12','Mundial de Futbol');
INSERT INTO Actividades VALUES (1,'Deporte de Futbol');
INSERT INTO Ubicacion VALUES (1,'Estadio Krestovski',64287);

-- SELECT DE LOS DATOS
SELECT CONCAT(nombreDeporte,',', balon) as deporteBalon FROM tiposDeporte;
SELECT CONCAT(nombre,' ', apellido) as nombreCompleto FROM Participantes;
SELECT CONCAT(nombreTorneo,' de ', ubicacionTorneo) as torneoUbicacion FROM Torneos;
SELECT CONCAT(descripcion,' inicia el ', fechaJuego) as descripcionFecha FROM Cronograma;
SELECT CONCAT(nombreCampus,' ingresan ', capacidadExpectadores, ' Expectadores' ) as Estadio FROM Ubicacion;

-- ELIMINA TODOS LOS DATOS DE LAS TABLAS
TRUNCATE TABLE tiposDeporte;
TRUNCATE TABLE Participantes;
TRUNCATE TABLE Torneos;
TRUNCATE TABLE Cronograma;
TRUNCATE TABLE Actividades;
TRUNCATE TABLE Ubicacion;