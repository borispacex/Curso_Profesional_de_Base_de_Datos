# Condiciones de bajo agrupamiento
    -- todos los autores que hayan vendido mas de 100 ejemplares
    SELECT ventas FROM libros;
    SELECT autor_id, SUM(ventas) AS total FROM libros GROUP BY autor_id HAVING SUM(ventas) > 100; -- no se puede usar WHERE, es por eso que usamos HAVING
    