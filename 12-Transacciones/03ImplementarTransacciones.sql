# Implementar Transacciones
    -- tener en mente que querys vamos a realizar
    SET @libro_id = 20, @usuario_id = 3;

    UPDATE libros SET stock = stock - 1 WHERE libro_id = @libro_id;
    SELECT stock FROM libros WHERE libro_id = @libro_id;

    INSERT INTO libros_usuarios(libro_id, usuario_id) VALUES(@libro_id, @usuario_id);
    SELECT * FROM libros_usuarios;

    -- Realizamos la transaccion
    START TRANSACTION; --iniciamos
    SET @libro_id = 20, @usuario_id = 3;

    UPDATE libros SET stock = stock - 1 WHERE libro_id = @libro_id;
    SELECT stock FROM libros WHERE libro_id = @libro_id;

    INSERT INTO libros_usuarios(libro_id, usuario_id) VALUES(@libro_id, @usuario_id);
    SELECT * FROM libros_usuarios;
    COMMIT; --persistir, cuando todo este bien mandamos commit

    -- si digamos todo mi query falla
    ROLLBACK; -- revertimos cambio, en vez de COMMIT, entoces regresamos antes de START Transaccion