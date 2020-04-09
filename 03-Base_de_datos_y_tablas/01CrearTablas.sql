# Creamos una base de datos
    CREATE DATABASE libreria_cf;
# Ingresamos o usamos la base de datos libreria_cf
    USE libreria_cf;
# Crear una tabla, ¿Que tipo de entiendades?
    CREATE TABLE autores(
        autor_id INT,
        nombre VARCHAR(25),
        apellido VARCHAR(25),
        genero CHAR(1), -- M o F
        fecha_nacimiento DATE,
        pais_origen VARCHAR(40)
    );
