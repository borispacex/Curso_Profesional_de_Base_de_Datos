# Condicionar, eliminar en caso de que exista
    DROP DATABASE IF EXISTS libreria_cf;
# Condicionar, en caso de que no exista
    CREATE DATABASE IF NOT EXISTS libreria_cf;
# Condicionar, en caso de que no exista
    CREATE TABLE IF NOT EXISTS autores(
        autor_id INT,
        nombre VARCHAR(25),
        apellido VARCHAR(25),
        genero CHAR(1), -- M o F
        fecha_nacimiento DATE,
        pais_origen VARCHAR(40)
    );