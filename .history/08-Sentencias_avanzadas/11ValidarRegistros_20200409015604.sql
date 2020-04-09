# Validar registros
    -- obtengamos el mensaje disponible si tiene el titulo transformers
    -- EXISTS dara true, si existe al menos un registro
    SELECT IF( EXISTS(SELECT libro_id) )