-- Creación de la Base de Datos para el Supermercado
CREATE DATABASE IF NOT EXISTS supermercado_db;
USE supermercado_db;

-- Tabla de Usuarios (Módulo principal)
CREATE TABLE IF NOT EXISTS usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL,
    rol VARCHAR(50) DEFAULT 'Administrador'
);

-- Datos de prueba iniciales
INSERT INTO usuarios (nombre, correo, password, rol) 
VALUES ('Administrador UTS', 'admin@uts.edu.co', '123456', 'Administrador');
