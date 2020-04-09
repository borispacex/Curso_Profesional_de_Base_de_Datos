# Si queremos evitar que una tabla almacene valores nulos, NOT NULL
    CREATE TABLE IF NOT EXISTS autores(
        autor_id INT,
        nombre VARCHAR(25) NOT NULL,
        apellido VARCHAR(25),
        genero CHAR(1), -- M o F
        fecha_nacimiento DATE,
        pais_origen VARCHAR(40)
    );
# Verificamos, pasando un valor null al campo de nombre
    INSERT INTO autores (autor_id, genero, fecha_nacimiento, pais_origen)
    VALUES (20, 'M', '2018-01-30', 'Mexico');
# Ahora el CONSTRAIN, UNIQUE  donde el valor no puede ser repetido
    CREATE TABLE IF NOT EXISTS autores(
        autor_id INT NOT NULL,
        nombre VARCHAR(25) NOT NULL,
        apellido VARCHAR(25) NOT NULL,
        seudonimo VARCHAR(50) UNIQUE,
        genero CHAR(1) NOT NULL, -- M o F
        fecha_nacimiento DATE NOT NULL,
        pais_origen VARCHAR(40) NOT NULL
    );