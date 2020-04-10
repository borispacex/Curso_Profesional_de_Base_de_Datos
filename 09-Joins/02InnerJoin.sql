# Inner join
    -- nos permiten hallar la interseccion de dos conjuntos
    -- obtener el titulo de todos los libros y el nombre completo del autor
    SELECT titulo FROM libros;
    SELECT CONCAT(nombre, ' ', apellido) AS nombre_completo FROM autores;
    -- unimos
    SELECT
        libros.titulo,
        CONCAT(autores.nombre, ' ', autores.apellido) AS nombre_autor,
        libros.fecha_creacion
    FROM libros
    INNER JOIN autores ON libros.autor_id = autores.autor_id;
    -- podemos hacer mas optimo colocando un alias a las tablas que estamos utilizando
    SELECT
        li.titulo,
        CONCAT(au.nombre, ' ', au.apellido) AS nombre_autor,
        li.fecha_creacion
    FROM libros AS li
    INNER JOIN autores AS au ON li.autor_id = au.autor_id;
