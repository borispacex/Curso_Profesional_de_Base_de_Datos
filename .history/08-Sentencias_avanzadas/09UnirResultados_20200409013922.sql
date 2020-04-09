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

# Obtener nombre completos de los usuarios
    SELECT CONCAT(nombre, ' ', apellidos) AS nombre_completo FROM usuarios;
    -- entonces unimos la tabla autores y usuarios
    SELECT CONCAT(nombre, ' ', apellido) AS nombre_completo FROM autores 
    UNION 
    SELECT CONCAT(nombre, ' ', apellidos) AS nombre_completo FROM usuarios; -- deben retornar la misma cantidad de columnas

    -- si queremos agregar email
    SELECT CONCAT(nombre, ' ', apellido) AS nombre_completo, '' FROM autores 
    UNION 
    SELECT CONCAT(nombre, ' ', apellidos) AS nombre_completo, email FROM usuarios;
