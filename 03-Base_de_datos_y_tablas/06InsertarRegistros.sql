# Para insertar datos a la tabla
    INSERT INTO autores (autor_id, nombre, apellido, genero, fecha_nacimiento, pais_origen)
    VALUES (1, 'Boris', 'Vargas', 'M', '1996-01-12', 'Bolivia');
# Mostramos la tabla autores
    SELECT * FROM autores;

# Insertamos algunos datos a la tabla, los campos salen en NULL
    INSERT INTO autores (autor_id, nombre)
    VALUES (1, 'Juanito');