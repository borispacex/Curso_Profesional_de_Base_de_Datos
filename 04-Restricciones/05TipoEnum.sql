# Tipo de dato ENUM, es una lista de la cual una columna puede tomar valor
-- lo utilizamos en la columna genero
    CREATE TABLE IF NOT EXISTS autores(
        autor_id INT UNSIGNED NOT NULL,
        nombre VARCHAR(25) NOT NULL,
        apellido VARCHAR(25) NOT NULL,
        seudonimo VARCHAR(50) UNIQUE,
        genero ENUM('M', 'F'), -- M o F
        fecha_nacimiento DATE NOT NULL,
        pais_origen VARCHAR(40) NOT NULL,
        fecha_creacion DATETIME DEFAULT current_timestamp
    );
# Verificamos, mandando genero 'm' minuscula
    INSERT INTO autores (autor_id, nombre, apellido, seudonimo, genero, fecha_nacimiento, pais_origen)
    VALUES  (100, 'Boris', 'Vargas', 'boriss2', 'm', '1996-01-12', 'Bolivia');

-- observamos que se almacena con M mayuscula, observamos que no es sensible con mayuscula o minusculas

# Verificamos, mandando genero 'J'
    INSERT INTO autores (autor_id, nombre, apellido, seudonimo, genero, fecha_nacimiento, pais_origen)
    VALUES  (100, 'Boris', 'Vargas', 'boriss2', 'J', '1996-01-12', 'Bolivia');
-- observamos que no permite