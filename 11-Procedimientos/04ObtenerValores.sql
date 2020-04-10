# Obtener Valores
    --procedures no retornan valores
    -- Para que obtengamos tenemos que usar OUT
    DELIMITER  //
    CREATE PROCEDURE prestamo(usuario_id INT, libro_id INT, OUT cantidad INT)
    BEGIN
        INSERT INTO libros_usuarios(libro_id, usuario_id) VALUES(libro_id, usuario_id);
        UPDATE libros SET stock = stock - 1 WHERE libros.libro_id = libro_id;
        SET cantidad = (SELECT stock FROM libros WHERE libros.libro_id = libro_id);
    END//
    DELIMITER  ;

    -- voy a generar una variable
    @cantidad = -1;
    CALL prestamo(3, 20, @cantidad);
    SELECT @cantidad; -- observamos que el valor cambio

    -- verificamos en la tabla libros el libro_id = 20
    SELECT stock FROM libros WHERE libro_id = 20;