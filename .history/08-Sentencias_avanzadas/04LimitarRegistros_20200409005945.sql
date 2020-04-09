# Limitar Registros
    SELECT titulo FROM libros LIMIT 3;

    -- otro ejemplo
    SELECT titulo FROM libros WHERE autor_id = 2 LIMIT 2;
    -- otro ejemplo
    SELECT libro_id, titulo FROM libros LIMIT 0, 5; -- desde el registro 0, 5 registros
    SELECT libro_id, titulo FROM libros LIMIT 3, 5; -- desde la posicion de registro 3, mostrar 5 registros
