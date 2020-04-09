# Funciones de agregacion 
    -- COUNT
    -- cuantos autores tiene la tabla autores
    SELECT COUNT(*) AS total FROM autores;
    SELECT COUNT(descripcion) AS total FROM libros; -- siempre y cuando no tenga null o este vacio Descripcion

    ALTER TABLE libros ADD ventas INTEGER;
    UPDATE libros SET ventas = (ROUND(RAND()*100));

    -- SUM
    SELECT SUM(ventas) AS 'suma' FROM libros; -- suma toda la columna

    -- MAX
    SELECT MAX(ventas) AS 'suma' FROM libros; -- numero maximo

    -- MIN
    SELECT MIN(ventas) AS 'suma' FROM libros; -- numero minimo

    -- AVG
    SELECT AVG(ventas) AS 'suma' FROM libros; -- promedio