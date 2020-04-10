# Crear procedimientos
    -- INSERTAR UN REGISTRO EN LA TABLA USUARIOS Y RESTARA EN UNO EL STOCK
    DELIMITER  //
    CREATE PROCEDURE prestamo(usuario_id INT, libro_id INT)
    BEGIN
        INSERT INTO libros_usuarios(libro_id, usuario_id) VALUES(libro_id, usuario_id);
        UPDATE libros SET stock = stock - 1 WHERE libros.libro_id = libro_id;
    END//
    DELIMITER  ;

    -- LISTAMOS los procedimientos
    SELECT name FROM mysql.proc WHERE db = database() AND type = 'PROCEDURE';

    -- llamamos al procedimiento
    CALL prestamo(3, 20); -- usuario_id = 3 y al libro_id = 20

    -- mostramos libros_usuario
    SELECT * FROM libros_usuarios;
    SELECT * FROM libros WHERE libro_id = 20; -- verificamos el stock en 9