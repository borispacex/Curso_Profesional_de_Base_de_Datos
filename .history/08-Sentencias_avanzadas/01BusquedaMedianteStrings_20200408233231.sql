# Busquedas mediante strings
    -- buscar substring al inicio al final o intermedio
    SELECT * FROM libros WHERE titulos LIKE 'Harry Potter%'; -- inicio
    
    SELECT * FROM libros WHERE titulos LIKE '%anillo'; -- final
    
    SELECT * FROM libros WHERE titulos LIKE '%la%'; -- puede encontrase donde sea