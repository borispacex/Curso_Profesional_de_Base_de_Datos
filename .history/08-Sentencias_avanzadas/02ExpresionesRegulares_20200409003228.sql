# Expresiones Regulares
    SELECT autor_id, titulo FROM libros WHERE titulo LIKE 'H' OR titulo LIKE 'L';
    SELECT autor_id, titulo FROM libros WHERE LEFT(titulo, 1) = 'H' OR LEFT(titulo, 1) = 'L'; 
    -- si queremos hacer con expresiones regulares, REGEXP
    SELECT * FROM libros WHERE titulo REGEXP '^[HL]';