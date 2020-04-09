# Sub consultas
    -- consultas dentro de otras, es decir anidadas
    -- imagina que hubieran superado
    SELECT AVG(ventas) FROM libros; -- 50.4
    SELECT autor_id FROM libros GROUP BY autor_id HAVING SUM(ventas) > 50.4;

    -- nosotros tenemos en codigo 50.4
    SET @promedio = (SELECT AVG(ventas) FROM libros);
    SELECT autor_id FROM libros GROUP BY autor_id HAVING SUM(ventas) > @promedio;

    -- pero aun podemos mejorarla
    SELECT autor_id FROM libros GROUP BY autor_id HAVING SUM(ventas) > (SELECT AVG(ventas) FROM libros);

    -- queremos nombre completo, cuyas ventas hallan superado el promedio
    SELECT CONCAT(nombre, ' ', apellido) AS nombre_completo FROM autores WHERE autor_id IN(
        SELECT autor_id FROM libros GROUP BY autor_id HAVING SUM(ventas) > (SELECT AVG(ventas) FROM libros)
    );


