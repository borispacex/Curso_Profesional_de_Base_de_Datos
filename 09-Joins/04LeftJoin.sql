# Left join
    -- obtenemos registros de dos tablas la tabla del lado izquierdo
    -- creamos una tabla de muchos a muchos
    CREATE TABLE libros_usuarios(
        libro_id INT UNSIGNED NOT NULL,
        usuario_id INT UNSIGNED NOT NULL,
        fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP,
        FOREIGN KEY (libro_id) REFERENCES libros(libro_id),
        FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id)
    );
    --
    ALTER TABLE libros ADD ventas INT UNSIGNED NOT NULL DEFAULT 0;
    ALTER TABLE libros ADD stock INT UNSIGNED DEFAULT 10;
    --
    INSERT INTO libros_usuarios(libro_id, usuario_id)
    VALUES (1, 1), (2, 1), (3, 1), (55, 3), (55, 3), (55, 3);

    -- Ahora vamos a probar el left join, obtenemos los usuarios que han prestado el libro
    -- usuarios = A
    -- libros_usuarios = B
    SELECT
        CONCAT(usuarios.nombre, ' ', usuarios.apellidos) AS nombre_completo,
        libros_usuarios.libro_id
    FROM usuarios
    LEFT JOIN libros_usuarios ON (usuarios.usuario_id = libros_usuarios.usuario_id) -- los que salen NULL son los de la tabla B
    WHERE libros_usuarios.libro_id IS NOT NULL;

    -- y si queremos los usuarios que no han prestado libros
    SELECT
        CONCAT(usuarios.nombre, ' ', usuarios.apellidos) AS nombre_completo,
        libros_usuarios.libro_id
    FROM usuarios
    LEFT JOIN libros_usuarios ON (usuarios.usuario_id = libros_usuarios.usuario_id) -- los que salen NULL son los de la tabla B
    WHERE libros_usuarios.libro_id IS NOT NULL;
