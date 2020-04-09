# Agregamos una llave primaria a autor_id, decimos que este campo es unico
-- PRIMARY KEY y solo podemos tener una llave primaria por tabla
-- AUTO_INCREMENT nos aseguramos, que si no cuenta con un valor este se inserte automaticamente y aumente
    CREATE TABLE IF NOT EXISTS autores(
        autor_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
        nombre VARCHAR(25) NOT NULL,
        apellido VARCHAR(25) NOT NULL,
        seudonimo VARCHAR(50) UNIQUE,
        genero CHAR(1) NOT NULL, -- M o F
        fecha_nacimiento DATE NOT NULL,
        pais_origen VARCHAR(40) NOT NULL,
        fecha_creacion DATETIME DEFAULT current_timestamp
    );
# verificamos
    INSERT INTO autores (nombre, apellido, seudonimo, genero, fecha_nacimiento, pais_origen)
    VALUES  ('Boris', 'Vargas', 'boriss2', 'M', '1996-01-12', 'Bolivia');

# Mostramos
    SELECT * FROM autores;

# insertamos otro
    INSERT INTO autores (nombre, apellido, seudonimo, genero, fecha_nacimiento, pais_origen)
    VALUES  ('Juanito', 'Lopez', 'juanoL', 'M', '2000-01-12', 'Peru');