/*	
	--------------------------------------------------
	Programa Codo a Codo
	Curso Full Stack Java
	Comision 24115-Java
	TP base de datos
	Grupo Numero: 24
	Integrantes: NESTOR MARTIN LUNA (unico integrante)
	--------------------------------------------------
*/

/*
	PARTE 1: Consignas.
	-Crear la base de datos Películas
	-Crear las 3 tablas que se representan en las imágenes con sus respectivos atributos, definir los tipos de datos y las claves primarias
	-Insertar 15 registros en cada una de ellas
*/

--creacion de base de datos Peliculas.
CREATE DATABASE Peliculas;
--acceso a base de datos Peliculas.
USE Peliculas;

--creacion de tabla movies (peliculas).
CREATE TABLE Peliculas.movies (
	id_movie INT NOT NULL,
	nombre VARCHAR(50),
	descripcion VARCHAR(100),
	genero CHAR(50), /* terror, comedia, accion, suspenso, drama, etc. */
	calificacion SMALLINT, /* puntuacion segun estrellas.*/
	anio SMALLINT,
	estrellas SMALLINT, /* escala: de 1 a 5. */
	director VARCHAR(50),
	PRIMARY KEY (id_movie));
--insercion de registros.
INSERT INTO movies (id_movie, nombre, descripcion, genero, calificacion, anio, estrellas, director)
VALUES 	(1001,'El Padrino','___','drama',5,1972,5, 3001), /* dir. Francis Ford Coppola */
		(1002,'El mago de Oz','___','aventura',1,1939,3, 3002), /* dir. Victor Fleming */
		(1003,'Ciudadano Kane','___','drama',2,1941,4, 3003), /* dir. Orson Welles */
		(1004,'Sueño de libertad','___','drama',1,1994,3, 3004), /* dir. Frank Darabont */
		(1005,'Pulp Fiction','___','accion',2,1994,5, 3005), /* dir. Quentin Tarantino */
		(1006,'Casablanca','___','drama',4,1942,5, 3006), /* dir. Michael Curtiz */
		(1007,'El Padrino: Parte II','___','drama',3,1974,4, 3001), /* dir. Francis Ford Coppola */
		(1008,'E.T., el extraterrestre','___','aventura',3,1982,5, 3007), /* dir. Steven Spielberg */
		(1009,'2001: Odisea del espacio','___','ciencia ficcion',3,1968,4, 3008), /* dir. Stanley Kubrick */
		(1010,'La lista de Schindler','___','drama',4,1993,5, 3007), /* dir. Steven Spielberg */
		(1011,'Star Wars: Episodio IV - Una nueva esperanza','___','ciencia ficcion',3,1977,5, 3009), /* dir. George Lucas */
		(1012,'Volver al futuro','___','accion',4,1985,4, 3010), /* dir. Robert Zemeckis */
		(1013,'En busca del arca perdida','___','accion',4,1981,5, 3007), /* dir. Steven Spielberg */
		(1014,'Forrest Gump','___','drama',3,1994,4, 3010), /* dir. Robert Zemeckis */
		(1015,'Lo que el viento se llevó','___','drama',2,1939,4, 3002); /* dir. Victor Fleming */
--consulta de tabla movies.
SELECT * FROM Peliculas.movies;
--borrado general de tabla movies.
DELETE FROM Peliculas.movies;

--creacion de tabla directores.
CREATE TABLE directores (
	id_director INT NOT NULL,
	nombre VARCHAR(50),
	apellido VARCHAR(50),
	edad SMALLINT,
	nacionalidad VARCHAR(20),
	PRIMARY KEY (id_director));
--insercion de registros.
INSERT INTO directores (id_director, nombre, apellido, edad, nacionalidad)
VALUES  (3001, 'Francis', 'Ford Coppola', 85, 'EE.UU.'),
		(3002, 'Victor', 'Fleming', -1, 'EE.UU.'),
		(3003, 'Orson', 'Welles', -1, 'EE.UU.'),
		(3004, 'Frank', 'Darabont', 65, 'Francia'),
		(3005, 'Quentin', 'Tarantino', 61, 'EE.UU.'),
		(3006, 'Michael', 'Curtiz', -1, 'Hungria'),
		(3007, 'Steven', 'Spielberg', 78, 'EE.UU.'),
		(3008, 'Stanley', 'Kubrick', -1, 'EE.UU.'),
		(3009, 'George', 'Lucas', 80, 'EE.UU.'),
		(3010, 'Robert', 'Zemeckis', 72, 'EE.UU.');
--consulta de tabla directores. 
SELECT * FROM Peliculas.directores;
--borrado general de tabla directores.
DELETE FROM Peliculas.directores;

--creacion de tabla usuarios.
CREATE TABLE usuarios (
	id_usuario INT NOT NULL,
	nombre VARCHAR(50),
	apellido VARCHAR(50),
	email VARCHAR(100),
	contrasenia CHAR(8),
	fecha_nac DATE,
	pais VARCHAR(20),
	PRIMARY KEY (id_usuario));
--insercion de registros.
INSERT INTO usuarios (id_usuario, nombre, apellido, email, contrasenia, fecha_nac, pais)
VALUES  (9001, 'Ana', 'Ruiz', 'u9001@softdata.com.ar', 'u900101', '1990-01-01', 'Argentina'), 
		(9002, 'Abel', 'Gonzalez', 'u9002@softdata.com.ar', 'u900201', '1990-01-02', 'Argentina'), 
		(9003, 'Alina', 'Ruiz', 'u9003@softdata.com.ar', 'u900301', '1990-01-03', 'Argentina'), 
		(9004, 'Alicia', 'Rodriguez', 'u9004@softdata.com.ar', 'u900401', '1990-02-04', 'Argentina'), 
		(9005, 'Amadeo', 'Martinez', 'u9005@softdata.com.ar', 'u900501', '1990-02-05', 'Argentina'), 
		(9006, 'Carlos', 'Ruiz', 'u9006@softdata.com.ar', 'u900601', '1990-02-06', 'Argentina'), 
		(9007, 'Carla', 'Gonzalez', 'u9007@softdata.com.ar', 'u900701', '1990-03-07', 'Argentina'), 
		(9008, 'Ciro', 'Martinez', 'u9008@softdata.com.ar', 'u900801', '1990-03-08', 'Argentina'), 
		(9009, 'Clara', 'Schmidt', 'u9009@softdata.com.ar', 'u900901', '1990-03-09', 'Argentina'), 
		(9010, 'Dario', 'Rodriguez', 'u9010@softdata.com.ar', 'u901001', '1990-04-10', 'Argentina'), 
		(9011, 'Daniela', 'Gonzalez', 'u9011@softdata.com.ar', 'u901101', '1990-04-11', 'Argentina'), 
		(9012, 'Eduardo', 'Gomez', 'u9012@softdata.com.ar', 'u901201', '1990-04-12', 'Argentina'), 
		(9013, 'Eleonora', 'Martinez', 'u9013@softdata.com.ar', 'u901301', '1990-05-13', 'Argentina'), 
		(9014, 'Federico', 'Schmidt', 'u9014@softdata.com.ar', 'u901401', '1990-05-14', 'Argentina'), 
		(9015, 'Francisco', 'Rodriguez', 'u9015@softdata.com.ar', 'u901501', '1990-05-15', 'Argentina');
--consulta de tabla usuarios.
SELECT * FROM Peliculas.usuarios;
--borrado general de tabla usuarios.
DELETE FROM Peliculas.usuarios;

/*
	PARTE 2: Readecuacion tabla movies.
*/
ALTER TABLE Peliculas.movies ADD COLUMN usuario INT;
SELECT * FROM Peliculas.movies;
UPDATE Peliculas.movies SET usuario = 9001 WHERE id_movie >=1001 AND id_movie <= 1003;
UPDATE Peliculas.movies SET usuario = 9002 WHERE id_movie >=1004 AND id_movie <= 1006;
UPDATE Peliculas.movies SET usuario = 9003 WHERE id_movie >=1007 AND id_movie <= 1008;
UPDATE Peliculas.movies SET usuario = 9004 WHERE id_movie >=1009 AND id_movie <= 1011;
UPDATE Peliculas.movies SET usuario = 9005 WHERE id_movie >=1012 AND id_movie <= 1014;
UPDATE Peliculas.movies SET usuario = 9006 WHERE id_movie >=1015 AND id_movie <= 1017;
UPDATE Peliculas.movies SET usuario = 9007 WHERE id_movie >=1018 AND id_movie <= 1019;

/*
	------.
*/


