DROP DATABASE IF EXISTS libreria_cf;
CREATE DATABASE libreria_cf;

USE libreria_cf;

CREATE TABLE IF NOT EXISTS autores(
    autor_id INT NOT NULL,
    nombre VARCHAR(25) NOT NULL,
    apellido VARCHAR(25) NOT NULL,
    seudonimo VARCHAR(50) UNIQUE,
    genero CHAR(1) NOT NULL, -- M o F
    fecha_nacimiento DATE NOT NULL,
    pais_origen VARCHAR(40) NOT NULL
);

INSERT INTO autores (autor_id, nombre, apellido, genero, fecha_nacimiento, pais_origen)
VALUES  (3, 'Boris', 'Vargas', 'M', '1996-01-12', 'Bolivia'),
        (4, 'Shany', 'Zboncak', 'F', '1992-01-12', 'Bolivia'),
        (5, 'Morton', 'Reichel', 'M', '1992-01-12', 'Bolivia'),
        (6, 'Lazaro', 'Kirlin', 'F', '1992-01-12', 'Bolivia'),
        (7, 'Marietta', 'Brekke', 'M', '1992-01-12', 'Bolivia'),
        (8, 'Marcelina', 'Smitham', 'M', '1992-01-12', 'Bolivia'),
        (9, 'Pattie', 'King', 'F', '1992-01-12', 'Bolivia'),
        (10, 'Kaya', 'Hegmann', 'F', '1992-01-12', 'Bolivia'),
        (11, 'Kathryn', 'Romaguera', 'F', '1992-01-12', 'Bolivia');

SELECT * FROM autores;