# Registros mediante rangos
    -- obtengamos los libros que estan entre enero 1995 y enero 2015
    SELECT titulo, fecha_publicacion FROM libros WHERE fecha_publicacion BETWEEN '1995-01-01' AND '2015-01-31';
    -- paginas entre 100 y 500
    SELECT * FROM libros WHERE paginas BETWEEN 100 and 500;
# 