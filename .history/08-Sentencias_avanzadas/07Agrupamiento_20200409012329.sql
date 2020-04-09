# Agrupamiento
    SELECT autor_id, SUM(ventas) FROM libros GROUP BY autor_id;
    -- ahora con el autor que mas vendio, de forma descendente
    SELECT autor_id, SUM(ventas) AS total FROM libros GROUP BY autor_id ORDER BY total DESC;