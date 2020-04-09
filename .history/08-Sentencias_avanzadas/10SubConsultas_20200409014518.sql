# Sub consultas
    -- consultas dentro de otras, es decir anidadas
    -- imagina que hubieran superado
    SELECT AVG(ventas) FROM libros; -- 50.4
    SELECT autor_id FROM libros GROUP BY autor_id HAVING SUM(ventas) > 50.4;

    -- nosotros tenemos en codigo 50.4
    


