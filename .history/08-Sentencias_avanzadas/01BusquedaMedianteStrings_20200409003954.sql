# Busquedas mediante strings
    -- buscar substring al inicio al final o intermedio
    SELECT * FROM libros WHERE titulo LIKE 'Harry Potter%'; -- inicio
    
    SELECT * FROM libros WHERE titulo LIKE '%anillo'; -- final
    
    SELECT * FROM libros WHERE titulo LIKE '%la%'; -- puede encontrase donde sea

    -- podemos hacer cosas mas complejas, obtener los titulo tenga 5 caracteres y en el tercer caracter tenga 'b'
    SELECT * FROM libros WHERE titulo LIKE '__b__';
    -- todos los titulos que tengan en su segundo caracter la 'a'
    SELECT * FROM libros WHERE titulo LIKE '_a%';
    -- todos los titulos que tengan en su segundo caracter la 'a' y en su quito 'o'
    SELECT * FROM libros WHERE titulo LIKE '_a%__o%';

