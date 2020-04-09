# AND
    SELECT * FROM libros WHERE titulo = 'Carrie' AND autor_id = 1;
    SELECT * FROM libros WHERE titulo = 'Carrie' AND ventas = 0;
    SELECT * FROM libros WHERE titulo = 'Carrie' AND ventas = 10; -- no se cumple en ventas = 10

# OR
    SELECT * FROM libros WHERE titulo = 'Carrie' OR autor_id = 10; -- ahora si obtenemos, porque si se cumple en alguna
    SELECT * FROM libros WHERE (autor_id = 1 AND titulo = 'Carrie') OR (autor_id = 2 AND titulo = 'Harry Potter y la Piedra Filosofal'); -- vemos dos registros
