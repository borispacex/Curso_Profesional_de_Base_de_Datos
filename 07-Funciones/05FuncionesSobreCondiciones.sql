# Funciones sobre condiciones
    -- IF
    SELECT IF (10 > 9, 'Si es mayor', 'No es mayor');

    -- para observar todo
    UPDATE libros SET paginas = 0 WHERE libro_id > 4;
    -- condicionar columnas, ejemplo paginas
    SELECT IF(paginas = 0, 'EL libro no posee paginas', paginas) FROM libros;

    -- si es NULL
    SELECT IFNULL(seudonimo, 'El autor no cuenta con un seudonim') FROM autores;
