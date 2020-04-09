# Agrupamiento
    SELECT autor_id, SUM(ventas) FROM libros GROUP BY autor_id;
    -- ahora con el autor que mas vendio