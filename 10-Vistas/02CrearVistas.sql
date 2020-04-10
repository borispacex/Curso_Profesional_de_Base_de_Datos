# Crear Vistas
    -- vistas para los usuarios que han prestado libros en la ultima semana
    SELECT
        usuarios.usuario_id,
        usuarios.nombre,
        usuarios.email,
        usuarios.username,
        COUNT(usuarios.usuario_id) AS total_prestamos
    FROM usuarios
    INNER JOIN libros_usuarios ON usuarios.usuario_id = libros_usuarios.usuario_id
    GROUP BY usuarios.usuario_id;
    -- y para generar una vista apartir de esta, y crea una tabla apartir de esta con el nombre prestamos_usuarios_vw
    CREATE VIEW prestamos_usuarios_vw AS
    SELECT
        usuarios.usuario_id,
        usuarios.nombre,
        usuarios.email,
        usuarios.username,
        COUNT(usuarios.usuario_id) AS total_prestamos
    FROM usuarios
    INNER JOIN libros_usuarios ON usuarios.usuario_id = libros_usuarios.usuario_id
    GROUP BY usuarios.usuario_id;
    -- para poder listar nuestras vistas
    SHOW TABLES;
    SELECT * FROM prestamos_usuarios_vw;

    -- todos los usuaarios con prestamo mayor a 4
    SELECT * FROM prestamos_usuarios_vw WHERE total_prestamos > 57;
    -- eliminamos la vista
    DROP VIEW prestamos_usuarios_vw;