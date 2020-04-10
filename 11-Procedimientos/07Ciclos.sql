# Ciclos
    -- procedimientos para ver libros al azar
    -- WHILE
    DELIMITER  //
    CREATE PROCEDURE libros_azar()
    BEGIN
    SET @iteracion = 0;
    WHILE @iteracion < 5 DO
        SELECT libro_id, titulo FROM libros ORDER BY RAND() LIMIT 1; -- un libro al azar
        SET @iteracion = @iteracion + 1;
    END WHILE;
    END//
    DELIMITER  ;
    -- verificamos LLAMANDOLO
    CALL libros_azar();

    -- ELIMINAMOS procedimiento
    DROP PROCEDURE libros_azar;


    -- REPEAT
    DELIMITER  //
    CREATE PROCEDURE libros_azar()
    BEGIN
    SET @iteracion = 0;
    REPEAT
        SELECT libro_id, titulo FROM libros ORDER BY RAND() LIMIT 1;
        SET @iteracion = @iteracion + 1;
        UNTIL @iteracion >= 5
    END REPEAT;
    END//
    DELIMITER  ;