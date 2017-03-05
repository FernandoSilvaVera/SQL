DROP DATABASE IF EXISTS STARWARS;

CREATE DATABASE STARWARS;
USE STARWARS;

CREATE TABLE PERSONAJES(
	
	codigo integer primary key,
	nombre varchar(30),
	raza varchar(20),
	grado varchar(20),
	codigo_ACTOR INTEGER REFERENCES ACTORES(codigo)	

);


CREATE TABLE ACTORES(
	
	codigo integer primary key,
	nombre varchar(40),
	fecha date,
	nacionalidad varchar(20)

);


