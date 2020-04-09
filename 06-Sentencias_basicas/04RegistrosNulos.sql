# Operador logico not
    -- optener todos los autores que no tienen un seudonimo
    SELECT * FROM autores WHERE seudonimo = NULL;

    SELECT * FROM autores WHERE seudonimo IS NULL;
    SELECT * FROM autores WHERE seudonimo <=> NULL;

    SELECT * FROM autores WHERE seudonimo IS NOT NULL; -- niega una operacion
