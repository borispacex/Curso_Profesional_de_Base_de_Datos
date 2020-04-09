DROP DATABASE IF EXISTS libreria_cf;
CREATE DATABASE libreria_cf;

USE libreria_cf;

CREATE TABLE autores(
    autor_id INT,
    nombre VARCHAR(25),
    apellido VARCHAR(25),
    genero CHAR(1), -- M o F
    fecha_nacimiento DATE,
    pais_origen VARCHAR(40)
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