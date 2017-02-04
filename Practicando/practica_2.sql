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

DROP TABLE IF EXISTS MOVILES;

	CREATE TABLE MOVILES(

		Marca VARCHAR (20) NOT NULL,
		Modelo VARCHAR (20) NOT NULL,
		Descripcion VARCHAR (100) NOT NULL,
		SO VARCHAR (30) NOT NULL,
		RAM VARCHAR (5) NOT NULL,
		PulgadasPantalla INTEGER (5) NOT NULL,
		CamaraMpx INTEGER (5) NOT NULL,
		PRIMARY KEY(Marca,Modelo)

	);
	
	INSERT INTO MOVILES(Marca,Modelo,Descripcion,SO,RAM,PulgadasPantalla,CamaraMpx)

		    VALUES ('Huawei','P8 Lite','Modelo de bajo coste recomendado para personas de todas las edades','Android 5.0','4GB','5','13');

	INSERT INTO MOVILES(Marca,Modelo,Descripcion,SO,RAM,PulgadasPantalla,CamaraMpx)

		    VALUES ('Samsung','Galaxy J5','Es el nuevo Samsung Galaxy J5 Negro podras disfrutar de imágenes nitidas','Android 6.0','2GB','6','15');

	INSERT INTO MOVILES(Marca,Modelo,Descripcion,SO,RAM,PulgadasPantalla,CamaraMpx)

		    VALUES ('Acer','Liquid Z220','Para los menos exijentes!','Android 7.0','2GB','5','16');

	INSERT INTO MOVILES(Marca,Modelo,Descripcion,SO,RAM,PulgadasPantalla,CamaraMpx)

		    VALUES ('Airis','TM-500','Yo tampoco sabia que existia esta marca','Android 4.0','6GB','5','10');

	INSERT INTO MOVILES(Marca,Modelo,Descripcion,SO,RAM,PulgadasPantalla,CamaraMpx)

	           VALUES ('Apple','IPhone 7 Plus','Nuevo modelo igual que el anterior pero sin hueco para los cascos! y no explota!!!!!','IOS 10','8GB','8','15');


DROP TABLE IF EXISTS MOVIL_LIBRE;

	CREATE TABLE MOVIL_LIBRE(

		Marca_MOVILES VARCHAR (20) NOT NULL,
		Modelo_MOVILES VARCHAR (20) NOT NULL,
		Precio DECIMAL (20) NOT NULL,
		FOREIGN KEY (Marca_MOVILES,Modelo_MOVILES)
			REFERENCES MOVILES(Marca,Modelo)


	);
	
	INSERT INTO MOVIL_LIBRE(Marca_MOVILES,Modelo_MOVILES,Precio)

		    Values ('Huawei','P8 Lite','150');

	INSERT INTO MOVIL_LIBRE(Marca_MOVILES,Modelo_MOVILES,Precio)

		    Values ('Samsung','Galaxy J5','500');

	INSERT INTO MOVIL_LIBRE(Marca_MOVILES,Modelo_MOVILES,Precio)

		    Values ('Acer','Liquid Z220','450');

	INSERT INTO MOVIL_LIBRE(Marca_MOVILES,Modelo_MOVILES,Precio)

		    Values ('Airis','TM-500','350');

	INSERT INTO MOVIL_LIBRE(Marca_MOVILES,Modelo_MOVILES,Precio)

		Values ('Apple','IPhone 7 Plus','800');

DROP TABLE IF EXISTS MOVIL_CONTRATO;

	CREATE TABLE MOVIL_CONTRATO(

		Marca_MOVILES VARCHAR (20) NOT NULL,
		Modelo_MOVILES VARCHAR (20) NOT NULL,
		Nombre_OPERADORAS VARCHAR (20) NOT NULL,
		Precio DECIMAL (20) NOT NULL,
		FOREIGN KEY (Marca_MOVILES,Modelo_MOVILES)
			REFERENCES MOVILES(Marca,Modelo),
		FOREIGN KEY (Nombre_Operadoras)
			REFERENCES OPERADORAS(Nombre)

	);

	INSERT INTO MOVIL_CONTRATO(Marca_MOVILES,Modelo_MOVILES,Nombre_OPERADORAS,Precio)

		Values ('Huawei','P8 Lite','Lowi','200');
		
	INSERT INTO MOVIL_CONTRATO(Marca_MOVILES,Modelo_MOVILES,Nombre_OPERADORAS,Precio)

		Values ('Samsung','Galaxy J5','Movistar','600');

	INSERT INTO MOVIL_CONTRATO(Marca_MOVILES,Modelo_MOVILES,Nombre_OPERADORAS,Precio)

		Values ('Acer','Liquid Z220','Ono','600');

	INSERT INTO MOVIL_CONTRATO(Marca_MOVILES,Modelo_MOVILES,Nombre_OPERADORAS,Precio)

		Values ('Airis','TM-500','Vodafone','400');

	INSERT INTO MOVIL_CONTRATO(Marca_MOVILES,Modelo_MOVILES,Nombre_OPERADORAS,Precio)

		Values ('Apple','IPhone 7 Plus','Yoigo','1000');

DROP TABLE IF EXISTS OFERTAS;

	CREATE TABLE OFERTAS(

		Nombre_OPERADORAS_TARIFAS VARCHAR (20) NOT NULL,
		Nombre_TARIFAS VARCHAR (20) NOT NULL,
		Marca_MOVIL_CONTRATO VARCHAR (20) NOT NULL,
		Modelo_MOVIL_CONTRATO VARCHAR (20) NOT NULL,
		FOREIGN KEY (Nombre_OPERADORAS_TARIFAS,Nombre_TARIFAS)
			REFERENCES TARIFAS(Nombre_Operadoras,Nombre),
		FOREIGN KEY (Marca_MOVIL_CONTRATO,Modelo_MOVIL_CONTRATO)
			REFERENCES MOVIL_CONTRATO(Marca_MOVILES,Modelo_MOVILES)

	);

	INSERT INTO OFERTAS(Nombre_OPERADORAS_TARIFAS,Nombre_TARIFAS,Marca_MOVIL_CONTRATO,Modelo_MOVIL_CONTRATO)

		Values ('Vodafone','Ballena','Airis','TM-500');

	INSERT INTO OFERTAS(Nombre_OPERADORAS_TARIFAS,Nombre_TARIFAS,Marca_MOVIL_CONTRATO,Modelo_MOVIL_CONTRATO)

		Values ('Yoigo','Buitre','Apple','IPhone 7 Plus');

	INSERT INTO OFERTAS(Nombre_OPERADORAS_TARIFAS,Nombre_TARIFAS,Marca_MOVIL_CONTRATO,Modelo_MOVIL_CONTRATO)

		Values ('Movistar','Deflin','Samsung','Galaxy J5');

	INSERT INTO OFERTAS(Nombre_OPERADORAS_TARIFAS,Nombre_TARIFAS,Marca_MOVIL_CONTRATO,Modelo_MOVIL_CONTRATO)

		Values ('Ono','Neko','Acer','Liquid Z220');

	INSERT INTO OFERTAS(Nombre_OPERADORAS_TARIFAS,Nombre_TARIFAS,Marca_MOVIL_CONTRATO,Modelo_MOVIL_CONTRATO)

		Values ('Lowi','Perro','Huawei','P8 Lite');
		
DROP TABLE IF EXISTS COMPRAS;

	CREATE TABLE COMPRAS(

		DNI_CLIENTES CHAR (9) NOT NULL,
		Nombre_tienda VARCHAR (20) NOT NULL,
		Marca_MOVIL_OFERTAS VARCHAR (20) NOT NULL,
		Modelo_MOVIL_OFERTAS VARCHAR (20) NOT NULL,
		Dia ENUM ('Lunes','Martes','Miercoles','Jueves','Viernes','Sabado','Reservado') NOT NULL DEFAULT 'Reservado',
		FOREIGN KEY (DNI_CLIENTES)
			REFERENCES CLIENTES (DNI),
			
		FOREIGN KEY (Nombre_tienda)
			REFERENCES TIENDAS (Nombre),

		FOREIGN KEY (Marca_MOVIL_OFERTAS,Modelo_MOVIL_OFERTAS)
			REFERENCES OFERTAS (Marca_MOVIL_CONTRATO,Modelo_MOVIL_CONTRATO)

	);

	INSERT INTO COMPRAS(DNI_CLIENTES,Nombre_tienda,Marca_MOVIL_OFERTAS,Modelo_MOVIL_OFERTAS,Dia)

		Values ('02478542Q','Phone Another','Airis','TM-500','Lunes');
		
	INSERT INTO COMPRAS(DNI_CLIENTES,Nombre_tienda,Marca_MOVIL_OFERTAS,Modelo_MOVIL_OFERTAS,Dia)

		Values ('04897548A','Phone Kirito','Apple','IPhone 7 Plus','Miercoles');
		
	INSERT INTO COMPRAS(DNI_CLIENTES,Nombre_tienda,Marca_MOVIL_OFERTAS,Modelo_MOVIL_OFERTAS)

		Values ('15784589A','Phone luffy','Samsung','Galaxy J5');
	
	INSERT INTO COMPRAS(DNI_CLIENTES,Nombre_tienda,Marca_MOVIL_OFERTAS,Modelo_MOVIL_OFERTAS,Dia)

		Values ('15784894A','Phone Rias','Acer','Liquid Z220','Sabado');
		
	INSERT INTO COMPRAS(DNI_CLIENTES,Nombre_tienda,Marca_MOVIL_OFERTAS,Modelo_MOVIL_OFERTAS,Dia)

		Values ('45378458P','Phone yunyun','Huawei','P8 Lite','Martes');
		



















