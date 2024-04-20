-- Active: 1713399147381@@127.0.0.1@3306@db
# Creamos la base de datos

CREATE DATABASE db_tm;

USE db_tm;

CREATE TABLE empresas(
    empresaID VARCHAR(8) PRIMARY KEY NOT NULL,
    Nombre_empresa VARCHAR(100) NOT NULL 
);

INSERT INTO db_tm.empresas VALUES ("8080","Claro"),("8085","ENTEL"),("8090","VTR"),("8095","WOM");

CREATE TABLE comuna(
    comunaID VARCHAR(8) PRIMARY KEY NOT NULL,
    nombre_comuna VARCHAR(100) NOT NULL 
);

INSERT INTO db_tm.comuna VALUES ("11","PUERTO MONTT"),("22","CONCEPCION"),("33","SANTIAGO"),("44","VALDIVIA"),("55","ARICA"),("66","PUNTA ARENAS");

CREATE TABLE servicio(
    empresaID VARCHAR(8) PRIMARY KEY NOT NULL,
        comunaID VARCHAR(8),
        tipo_servicio VARCHAR(30),
    
        CONSTRAINT fk_empresas_servicio FOREIGN KEY (empresaID) REFERENCES empresas(empresaID),
        CONSTRAINT fk_empresas_comuna FOREIGN KEY (comunaID) REFERENCES comuna(comunaID)
);

INSERT INTO db_tm.servicio VALUES ("8080","11","Telefonia Movil"),("8085","44","Telefonia Fija"),("8090","22","Telefonia Fija"),
("8095","33","Telefonia Fija");