# Casos
    -- N casos, caso es una condicion
    -- creamos un procedimiento que me muestre un texto por la cantidad de libros que tiene un usuario_id
    DELIMITER  //
    CREATE PROCEDURE tipo_lector(usuario_id INT)
    BEGIN
    SET @cantidad = (SELECT COUNT(*) FROM libros_usuarios WHERE libros_usuarios.usuario_id = usuario_id);
    CASE
        WHEN @cantidad > 20 THEN
        SELECT "Fanatico" AS mensaje;
        WHEN @cantidad > 10 AND @cantidad < 20 THEN
        SELECT "Aficionado" AS mensaje;
        WHEN @cantidad > 5 AND @cantidad < 10 THEN
        SELECT "Promedio" AS mensaje;
        ELSE
        SELECT "Nuevo" AS mensaje;
    END CASE;
    END//
    DELIMITER  ;

    -- verificamos el procedimiento
    SELECT name FROM mysql.proc WHERE db = database() AND type = 'PROCEDURE';

    -- llamamos
    CALL tipo_lector(2); -- usuario_id = 2
