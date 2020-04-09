# Utilizando select
    SELECT * FROM libros;
# Podemos cambiar el output, para hacerlo en forma de cartas es decir en forma vertical
    SELECT * FROM libros\G;
# Una buena practica es cuando solamente queremos algunos datos en este caso solamente queremos mostrar libro_id y titulo
    SELECT libro_id, titulo FROM libros;
# Ahora si queremos condicionar
    SELECT * FROM libros WHERE autor_id = 1;
/*
    <
    >
    <=
    >=
    !=
*/
