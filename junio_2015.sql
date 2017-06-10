DROP DATABASE IF EXISTS SEPTIEMBRE;

	CREATE DATABASE SEPTIEMBRE;

	USE SEPTIEMBRE

DROP TABLE IF EXISTS clientes;

	CREATE TABLE clientes(

		cid integer,
		nombre varchar(30),
		telefono integer,
		PRIMARY KEY(cid)

	);


INSERT INTO clientes
	VALUES ('1','jose','111');

INSERT INTO clientes
	VALUES ('2','maria','222');

INSERT INTO clientes
	VALUES ('3','manuel','333');

INSERT INTO clientes
	VALUES ('4','jesus','444');

INSERT INTO clientes (cid)
	VALUES ('5');


DROP TABLE IF EXISTS acciones;

	CREATE TABLE acciones(

		aid integer,
		cid integer,
		eid integer,
		cantidad integer,
		PRIMARY KEY(aid,cid),
		UNIQUE(eid),
		FOREIGN KEY(cid) references clientes(cid)

	);

INSERT INTO acciones

	VALUES ('1','2','1','10');

INSERT INTO acciones
	VALUES ('2','4','2','20');

INSERT INTO acciones
	VALUES ('3','4','3','30');

INSERT INTO acciones
	VALUES ('4','5','4','100');


DROP TABLE IF EXISTS empresa;

	CREATE TABLE empresa(

		eid integer,
		nombre varchar(30),
		precio integer,
		PRIMARY KEY(eid),
		FOREIGN KEY(eid) references acciones(eid)

	);


INSERT into empresa
	VALUES ('1','REDHAT','1.19');

INSERT into empresa
	VALUES ('2','NOVELL','2.02');

INSERT into empresa
	VALUES ('3','SUN','1.33');

INSERT into empresa
	VALUES ('4','FORD','0.49');

