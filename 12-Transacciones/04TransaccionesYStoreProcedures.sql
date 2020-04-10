# Transacciones y Store procedure
    DELIMITER  //
    CREATE PROCEDURE prestamo(usuario_id INT, libro_id INT)
    BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION -- Ocurre un error
    BEGIN
        ROLLBACK; -- cuando ocurra un error se puede mandar errores, cambiar variables
    END;
    START TRANSACTION;
    INSERT INTO libros_usuarios(libro_id, usuario_id) VALUES(libro_id, usuario_id);
    UPDATE libros SET stock = stock - 1 WHERE libros.libro_id = libro_id;
    COMMIT;
    END//
    DELIMITER  ;

    -- veamos el estado actual
    SELECT * FROM libros_usuarios;
    -- llamamo
    CALL prestamo(3, 20);
    -- visualizar
    SELECT stock FROM libros WHERE libro_id = 20;
    -- si mandamos un valor invalido
    CALL prestamo(300, 20); -- no visualizamos error