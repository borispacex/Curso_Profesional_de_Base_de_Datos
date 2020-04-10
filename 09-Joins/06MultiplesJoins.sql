# Multiples Joins
    -- obtenamos el nombre completo que hayan prestado un libro, un autor con seudonimo y que se hayan prestado hoy
    usuarios
    libros_usuarios
    libros
    autores
    -- hacemos la super consulta
    SELECT DISTINCT
        CONCAT(usuarios.nombre, ' ', usuarios.apellidos) AS nombre_usuario
    FROM usuarios
    INNER JOIN libros_usuarios ON (usuarios.usuario_id = libros_usuarios.usuario_id AND DATE(libros_usuarios.fecha_creacion) = CURDATE())
    INNER JOIN libros ON (libros_usuarios.libro_id = libros.libro_id)
    INNER JOIN autores ON (libros.autor_id = autores.autor_id AND autores.seudonimo IS NOT NULL);