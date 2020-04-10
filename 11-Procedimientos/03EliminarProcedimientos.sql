# Eliminar procedimientos
    -- primero listamos procedimientos
    SELECT name FROM mysql.proc WHERE db = database() AND type = 'PROCEDURE';
    -- eliminamos
    DROP PROCEDURE prestamo;