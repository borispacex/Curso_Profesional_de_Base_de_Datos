# Sub clausulas using
    -- nuestras tablas libros y autores estan normalizadas y tiene el mismo nombre la llave foranea y llave primaria
    SELECT
        li.titulo,
        CONCAT(au.nombre, ' ', au.apellido) AS nombre_autor,
        li.fecha_creacion
    FROM libros AS li
    INNER JOIN autores AS au USING(autor_id);   --li.autor_id = au.autor_id

    -- Pero siempre utilizamos ON, en cosas mas amplicadas
    SELECT
        li.titulo,
        CONCAT(au.nombre, ' ', au.apellido) AS nombre_autor,
        li.fecha_creacion
    FROM libros AS li
    INNER JOIN autores AS au ON (li.autor_id = au.autor_id AND au.seudonimo IS NOT NULL);