# Agregando campo por default a una tabla
    CREATE TABLE IF NOT EXISTS autores(
        autor_id INT NOT NULL,
        nombre VARCHAR(25) NOT NULL,
        apellido VARCHAR(25) NOT NULL,
        seudonimo VARCHAR(50) UNIQUE,
        genero CHAR(1) NOT NULL, -- M o F
        fecha_nacimiento DATE NOT NULL,
        pais_origen VARCHAR(40) NOT NULL,
        fecha_creacion DATETIME DEFAULT current_timestamp
    );
# Para obtener la fecha actual median MYSQL
    -- SELECT current_timestamp;
    -- SELECT NOW();

# No colocamos fecha_creacion
    INSERT INTO autores (autor_id, nombre, apellido, seudonimo, genero, fecha_nacimiento, pais_origen)
    VALUES  (3, 'Boris', 'Vargas', 'boriss2', 'M', '1996-01-12', 'Bolivia');
# mostramos
    SELECT * FROM autores;