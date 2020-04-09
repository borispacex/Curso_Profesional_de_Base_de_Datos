# Expresiones Regulares
    SELECT autor_id, titulo FROM libros WHERE titulo LIKE 'M' OR titulo LIKE 'L';
    SELECT autor_id, titulo FROM libros WHERE LEFT(titulo, 1) = 'M' OR LEFT(titulo, 1) = 'L'; 
    -- si queremos hacer con expresiones regulares
    SELECT 