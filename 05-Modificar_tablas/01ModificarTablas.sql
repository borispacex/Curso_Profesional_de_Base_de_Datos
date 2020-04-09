# Modificar la tabla libros
    ALTER TABLE libros ADD ventas INT UNSIGNED NOT NULL;
# Verificamos
    DESC libros;
# Veficiamos con null la columna ventas
    SELECT * FROM libros;
-- observamos el valor de 0 en ventas, porque le pusimos not null

# Modificar con un valor por default
    ALTER TABLE libros ADD stock INT UNSIGNED NOT NULL DEFAULT 10;

# Modificar una columna , borrandola.
    ALTER TABLE libros DROP COLUMN stock;
# Verificamos que la columna stock de haya eliminado
    DESC libros;
