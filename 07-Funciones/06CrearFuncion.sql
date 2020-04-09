# Crear una funcion
    CREATE FUNCTION agregar_dias(fecha DATE, dias INT)
    RETURNS DATE
    BEGIN
        RETURN fecha + INTERVAL dias DAY;
    END;
-- hay que modificar y limitar, remplazando el ; con //
    DELIMITER //
    CREATE FUNCTION agregar_dias(fecha DATE, dias INT)
    RETURNS DATE
    BEGIN
        RETURN fecha + INTERVAL dias DAY;
    END//
    DELIMITER ;

# Ahora hacemos el uso de la funcion
    SET @now = CURDATE();
    SELECT agregar_dias(@now, 60);
