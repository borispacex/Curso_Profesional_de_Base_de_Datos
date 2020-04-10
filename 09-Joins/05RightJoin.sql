# Right join or right outer join
    -- en este caso toma la tabla de la derecha es decir B
    -- libros_usuarios = A
    -- usuarios = B
    -- Todos los usuarios que no han prestado un libro
    SELECT
        CONCAT(usuarios.nombre, ' ', usuarios.apellidos) AS nombre_completo,
        libros_usuarios.libro_id
    FROM libros_usuarios
    RIGHT JOIN usuarios ON (usuarios.usuario_id = libros_usuarios.usuario_id);

    -- Todos los usuarios que
    SELECT
        CONCAT(usuarios.nombre, ' ', usuarios.apellidos) AS nombre_completo,
        libros_usuarios.libro_id
    FROM libros_usuarios
    RIGHT JOIN usuarios ON (usuarios.usuario_id = libros_usuarios.usuario_id);