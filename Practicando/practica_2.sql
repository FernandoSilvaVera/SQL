DROP DATABASE IF EXISTS PRACTICA_2;

	CREATE DATABASE PRACTICA_2;

	USE PRACTICA_2


DROP TABLE IF EXISTS CLIENTES;

	CREATE TABLE CLIENTES(

		DNI CHAR (9) NOT NULL,
	        Nombre VARCHAR(20) NOT NULL,
		Apellidos VARCHAR(20) NOT NULL,
		Telefono INTEGER (9) NOT NULL,
		Email VARCHAR(30) NOT NULL,
		PRIMARY KEY (DNI)

	);

	INSERT INTO CLIENTES(DNI,Nombre,Apellidos,Telefono,Email)
	
		    VALUES ('04897548A','Fernando','Silva Vera','648457856','fernandosilv4c@gmail.com');

	INSERT INTO CLIENTES(DNI,Nombre,Apellidos,Telefono,Email)
	
		    VALUES ('02478542Q','Aqua','Sama','642478517','Konosubarashi@Aqua.com');

	INSERT INTO CLIENTES(DNI,Nombre,Apellidos,Telefono,Email)

		    VALUES ('45378458P','Ako','Nee','612487593','kissxsis@ako.com');
	
	INSERT INTO CLIENTES(DNI,Nombre,Apellidos,Telefono,Email)
	
	 	   VALUES ('15784589A','Nao','Tomori','642587458','Charlotte@Nao.com');

	INSERT INTO CLIENTES(DNI,Nombre,Apellidos,Telefono,Email)

		    VALUES ('15784894A','Soma','Yukihira','614785478','Shokugeki@Soma.com');

DROP TABLE IF EXISTS TIENDAS;

	CREATE TABLE TIENDAS(

		Nombre VARCHAR (20) NOT NULL,
	        Provincia VARCHAR(30) NOT NULL,
		Localidad VARCHAR(30) NOT NULL,
		Direccion VARCHAR (60) NOT NULL,
		Telefono INTEGER (9) NOT NULL,
		DiaApertura VARCHAR (50) NOT NULL DEFAULT 'Lunes-Sabado',
		DiaCierre VARCHAR (50) NOT NULL DEFAULT 'Domingo',
		HoraApertura TIME NOT NULL DEFAULT '10:00:00',
		HoraCierre TIME NOT NULL DEFAULT '21:00:00',
		PRIMARY KEY (Nombre)

	);

	INSERT INTO TIENDAS(Nombre,Provincia,Localidad,Direccion,Telefono)
	
		    VALUES ('Phone Another','Madrid','Alcobendas','calle Invisible 123','648457458');
	
	INSERT INTO TIENDAS(Nombre,Provincia,Localidad,Direccion,Telefono)
	
		    VALUES ('Phone Kirito','Madrid','Alcobendas','calle Asuna 466','635214589');
	
	INSERT INTO TIENDAS(Nombre,Provincia,Localidad,Direccion,Telefono)
	
		    VALUES ('Phone Rias','Barcelona','Mataro','calle demoniaca 69','678542597');
	
	INSERT INTO TIENDAS(Nombre,Provincia,Localidad,Direccion,Telefono)
	
		    VALUES ('Phone luffy','Barcelona','Badalona','calle one piece 1','635874589');
	
	INSERT INTO TIENDAS(Nombre,Provincia,Localidad,Direccion,Telefono)
	
		    VALUES ('Phone yunyun','Madrid','Madrid','calle megumin 77','648524758');
	
DROP TABLE IF EXISTS OPERADORAS;

	CREATE TABLE OPERADORAS(
	
		Nombre VARCHAR (20) NOT NULL,
	        ColorLogo VARCHAR(30) NOT NULL,
		PorcentajeCobertura VARCHAR(4) NOT NULL,
		FrecuenciaGSM FLOAT (10) NOT NULL,
		PaginaWeb VARCHAR (50) NOT NULL,
		PRIMARY KEY (Nombre)

	);

	INSERT INTO OPERADORAS(Nombre,ColorLogo,PorcentajeCobertura,FrecuenciaGSM,PaginaWeb)

		    VALUES ('Movistar','Verde','90%','380.2','www.Movistar.es');

	INSERT INTO OPERADORAS(Nombre,ColorLogo,PorcentajeCobertura,FrecuenciaGSM,PaginaWeb)

		    VALUES ('Vodafone','Rojo','95%','390.2','www.Vodafone.es');

	INSERT INTO OPERADORAS(Nombre,ColorLogo,PorcentajeCobertura,FrecuenciaGSM,PaginaWeb)

		    VALUES ('Yoigo','Azul','100%','500.2','www.Yoigo.es');
		
	INSERT INTO OPERADORAS(Nombre,ColorLogo,PorcentajeCobertura,FrecuenciaGSM,PaginaWeb)

		    VALUES ('Ono','Negro','99%','410.2','www.ono.es');

	INSERT INTO OPERADORAS(Nombre,ColorLogo,PorcentajeCobertura,FrecuenciaGSM,PaginaWeb)

		    VALUES ('Lowi','Negro','50%','480.2','www.Lowi.es');

DROP TABLE IF EXISTS TARIFAS;

	CREATE TABLE TARIFAS(

		Nombre VARCHAR (20) NOT NULL,
		Nombre_Operadoras VARCHAR (20) NOT NULL,
		TamañoDatos VARCHAR (10) NOT NULL,
		TipoDatos INTEGER (5) NULL,
		MinutosGratis INTEGER (5) NOT NULL,
		SmsGratis INTEGER (5) NOT NULL,
		PRIMARY KEY(Nombre),
		FOREIGN KEY (Nombre_Operadoras)
			REFERENCES OPERADORAS (Nombre)

	);

	INSERT INTO TARIFAS(Nombre,Nombre_Operadoras,TamañoDatos,MinutosGratis,SmsGratis)

		    VALUES ('Deflin','Movistar','2GB','90','60');

	INSERT INTO TARIFAS(Nombre,Nombre_Operadoras,TamañoDatos,MinutosGratis,SmsGratis)

		    VALUES ('Ballena','Vodafone','1GB','120','60');

	INSERT INTO TARIFAS(Nombre,Nombre_Operadoras,TamañoDatos,MinutosGratis,SmsGratis)

		    VALUES ('Buitre','Yoigo','500MB','180','60');

	INSERT INTO TARIFAS(Nombre,Nombre_Operadoras,TamañoDatos,MinutosGratis,SmsGratis)

		    VALUES ('Neko','Ono','1GB','60','60');

	INSERT INTO TARIFAS(Nombre,Nombre_Operadoras,TamañoDatos,MinutosGratis,SmsGratis)

		    VALUES ('Perro','Lowi','5GB','90','60');

