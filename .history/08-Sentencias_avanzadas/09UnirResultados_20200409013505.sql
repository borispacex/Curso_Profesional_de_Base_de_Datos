# Unir resultados
    -- crearemos una nueva tabla
    CREATE TABLE usuarios(
        usuario_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
        nombre varchar(25) NOT NULL,
        apellidos varchar(25),
        username varchar(25) NOT NULL,
        email varchar(50) NOT NULL,
        fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP
    );

    INSERT INTO usuarios(nombre, apellidos, username, email)
    VALUES  ('Eduardo', 'Garcia', 'eduardopg', 'eduardo@codigofacilito.com'),
            ('Codi', 'Facilito', 'codigofacilito', 'ayuda@codigofacilito.com');

# Obtener nombre completos de los autores
    SELECT CONCAT(nombre, ' ', apellido) FROM autores;