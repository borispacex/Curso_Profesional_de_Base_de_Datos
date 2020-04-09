# Alias
    SELECT autor_id, titulo FROM libros;
    -- entonces con alias a las columnas
    SELECT autor_id AS autor, titulo AS nombre FROM libros;

    -- otra forma
    SELECT 9 * 10 AS resultado;

    -- si quieres poner un alias a una tabla
    SELECT autor_id, titulo FROM libros AS books;

    -- despues con el manejo de columas
    SELECT books.autor_id, books.titulo FROM libros AS books;