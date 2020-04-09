# Validar registros
    -- obtengamos el mensaje disponible si tiene el titulo Carrie
    -- EXISTS dara true, si existe al menos un registro
    SELECT IF( EXISTS(SELECT libro_id FROM libros WHERE titulo = 'Carrie'), 'Disponible', 'No disponible' ) AS mensaje;
    