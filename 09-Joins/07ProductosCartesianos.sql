# Productos cartesianos
    SELECT usuarios.username, libros.titulo FROM usuarios CROSS JOIN libros;
    -- podemos visualizar mejor
    SELECT usuarios.username, libros.titulo FROM usuarios CROSS JOIN libros ORDER BY usuarios.username DESC;

    -- vamos insertar registros a libros_usuarios
    INSERT INTO libros_usuarios (libro_id, usuario_id) SELECT libro_id, usuario_id FROM usuarios CROSS JOIN libros;
