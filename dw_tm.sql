-- Active: 1713399147381@@127.0.0.1@3306@db
CREATE DATABASE dw_tm;

USE dw_tm;

CREATE TABLE dimEmpresas(
    empresaID INTEGER PRIMARY KEY,
    NombreEmpresa VARCHAR(100),
    comunaID VARCHAR(100),
    NombreComuna VARCHAR(100),
    TipoServicio VARCHAR(100),
    Antenas INT
);



CREATE TABLE dimUser(
    userID INTEGER PRIMARY KEY,
    NombreCompleto VARCHAR(100),
    PlanC VARCHAR(100)
);

CREATE TABLE FactUso(
    userID INTEGER,
    empresaID INTEGER,
    DiasUso INTEGER,
    CONSTRAINT fk_factuso_empresas FOREIGN KEY (empresaID) REFERENCES dimEmpresas (empresaID),
    CONSTRAINT fk_factuso_user FOREIGN KEY (userID) REFERENCES dimUser (userID)
    );