CREATE TABLE USUARIO
(
	ID_USR			Int IDENTITY(1,1) Primary key not null,
	contraseña		Varbinary(max)		not null,
	sal				Varbinary(max)		not null,
	Nombre			Varchar(50)			not null,
	Edad			Int					not null,
	País			Varchar(20)			not null,
	direccion		Varchar(50)			not null,
	fotografia		Varchar(50)			not null,
	correo			Varchar(255) unique not null
);

Select * from USUARIO;

INSERT INTO USUARIO VALUES(PWDENCRYPT('SUSEL2726'),PWDENCRYPT('ANTB'),'Susel Retana',23,'Guatemala','Villa Nueva','img/susel.jpg');

select @@IDENTITY;

delete from USUARIO where ID_USR=4;

Select ident_current('USUARIO') as ID;


/*Drop Table USUARIO;*/