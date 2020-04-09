# Funciones sobre strings
    SELECT * FROM autores;
# utilizamos CONCAT para unir cadenas
    SELECT CONCAT(nombre, ' ', apellido) FROM autores;
    -- observamos que el nombre de la columna no es amigable
    SELECT CONCAT(nombre, ' ', apellido) AS 'Nombre completo' FROM autores;

# Longitud de cadena
    SELECT LENGTH('hola mundo');
    SELECT * FROM autores WHERE LENGTH(nombre) > 7;

# Mayusculas upper y Minuscula lower
    SELECT UPPER(nombre), LOWER(nombre) FROM autores;

# podemos eliminar prufijos y sufijos es decir espacios
    SELECT TRIM('        cadena con espacio al inicio y al final    ');

# funcion obtener un substring de una cadena left cuenta de izquierda y right cuenta de derecha
    SELECT LEFT('Esta es una cadena de caracteres', 5) AS 'substring_izquierdo', RIGHT('Esta es una cadena de caracteres', 10) AS 'substring_derecho';
    -- obtenemos libros que comiencen con harry potter
    SELECT * FROM libros WHERE LEFT(titulo, 12) = 'Harry Potter';
    -- obtenemos un libro que el titulo termine en Fuego
    SELECT * FROM libros WHERE RIGHT(titulo, 5) = 'Fuego';
