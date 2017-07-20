DROP DATABASE IF EXISTS ANIME;

	CREATE DATABASE ANIME;

	USE ANIME

DROP TABLE IF EXISTS ANIMES;

CREATE TABLE ANIMES(

	nombre VARCHAR (50) NOT NULL,
	temporada TINYINT NOT NULL,
  	tag VARCHAR(50) NOT NULL,
	nota TINYINT NOT NULL,
	capitulos SMALLINT NOT NULL,
	PRIMARY KEY(nombre)

);

CREATE TABLE FECHA(

	nombre_anime VARCHAR(50) NOT NULL,
	mes_inicio set('Enero','Febrero','Marzo','Abril','Mayo','Junio','Julio','Agosto','Septiembre','Octubre','Noviembre','Diciembre') NOT NULL,
	mes_final set('Enero','Febrero','Marzo','Abril','Mayo','Junio','Julio','Agosto','Septiembre','Octubre','Noviembre','Diciembre','En emision') NOT NULL,
	temporada enum('Primavera','Verano','Otonio','Invierno') NOT NULL,
	anio CHAR(4) NOT NULL,
	dia_nuevo_cap enum('Lunes','Martes','Miercoles','Jueves','Viernes','Sabado','Domingo','Finalizado')NOT NULL,
	PRIMARY KEY (nombre_anime),
	FOREIGN KEY (nombre_anime)
		REFERENCES ANIMES (nombre)
		ON UPDATE CASCADE ON DELETE CASCADE

);

CREATE TABLE GENERO(

	nombre_anime VARCHAR(50) NOT NULL,
	principal VARCHAR(30) NOT NULL,
	secundario VARCHAR(30) NULL,
	PRIMARY KEY (nombre_anime),
	FOREIGN KEY (nombre_anime)
		REFERENCES ANIMES (nombre)
		ON UPDATE CASCADE ON DELETE CASCADE

);

CREATE TABLE PERSONAJES(

	sexo set('Hombre','Mujer') NOT NULL,
	nombre_anime VARCHAR(50) NOT NULL,
	nombre VARCHAR(30) NOT NULL,
	color_pelo VARCHAR(30) NOT NULL,
	loli CHAR (2) NOT NULL,
	PRIMARY KEY (nombre),
	FOREIGN KEY (nombre_anime)
		REFERENCES ANIMES (nombre)
		ON UPDATE CASCADE ON DELETE CASCADE

);

