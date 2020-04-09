# Ejecutar sentencias dentro de funciones
    DELIMITER //
    CREATE FUNCTION obtener_paginas()
    RETURNS INT
    BEGIN
        SET @paginas = (SELECT (ROUND(RAND() * 100) * 4));
        RETURN @paginas;
    END//
    DELIMITER ;
# La probamos
    SELECT obtener_paginas();

# Ahora utilizaremos esta funcion para actualizar unos registros en la tabla libros
    UPDATE libros SET paginas = obtener_paginas();

# Verificamos
    SELECT * FROM libros;