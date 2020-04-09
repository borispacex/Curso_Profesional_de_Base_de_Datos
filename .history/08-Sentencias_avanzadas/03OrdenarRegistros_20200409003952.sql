# Ordenar registros
    SELECT titulo FROM libros;
    -- ordenar de forma ascendente
    SELECT titulo FROM libros ORDER BY titulo;
    SELECT titulo FROM libros ORDER BY titulo ASC;

    -- ahora de forma descendente
    SELECT titulo FROM libros ORDER BY titulo DESC;

# TAMBIEN podemos ordenar enteros, fechas
    SELECT libro_id, titulo FROM libros ORDER BY libro_id DESC;

# podemos ordenar con muchos campos
    SELECT * FROM libros ORDER BY libro_id AND titulo DESC;