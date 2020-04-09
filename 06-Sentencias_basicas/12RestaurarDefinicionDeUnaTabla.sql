# Restaurar definicion de una tabla
    -- eliminar todos los registros de una tabla
    TRUNCATE TABLE libros; -- no puedes usar where, y resetea la tabla y el autoincrement empezara de 0
    -- lo mismo
    DELETE FROM libros;

# Verificamos
    SELECT * FROM libros;

