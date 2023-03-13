create database Db_biblioteca;

CREATE TABLE autor (
    id_autor int identity,
    name_autor varchar(255),    
    primary key (id_autor)
);

CREATE TABLE seccion (
    id_seccion int identity,
    name_seccion varchar(255),    
    primary key (id_seccion)
);


CREATE TABLE biblioteca (
    id_biblioteca int identity,
    name_biblioteca varchar(255),    
    primary key (id_biblioteca)
);

CREATE TABLE libro (
    id_libro int identity,
    edicion Decimal,
	anio date,
	titulo varchar (250),
    primary key (id_libro),
	autor int FOREIGN KEY REFERENCES autor(id_autor),
	biblioteca int FOREIGN KEY REFERENCES biblioteca(id_biblioteca),
	seccion int FOREIGN KEY REFERENCES seccion(id_seccion)
	);

	INSERT INTO libro (edicion, año, titulo,autor,seccion,biblioteca)
VALUES ('10.0','01-18-2023','a','1','1','1');

INSERT INTO biblioteca (name_biblioteca)
VALUES ('España');

INSERT INTO autor (name_autor)
VALUES ('William');

INSERT INTO seccion(name_seccion)
VALUES ('Experiencias fuera del cuerpo');

select * from libro;

select * from autor;

select * from seccion;
