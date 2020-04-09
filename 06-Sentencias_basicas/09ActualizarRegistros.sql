# Actualizar Registros
    UPDATE libros SET descripcion = 'Nueva descipcion', ventas = 100; --  recordando que estaban en null y 0
# Verificamos que todos los registros fueron actualizados
    SELECT * FROM libros;

# Actualicemos el libro con titulo 'Carrie'
    UPDATE libros SET descripcion = 'Nuevo cambio', ventas = 50 WHERE titulo = 'Carrie';
# Verificamos
    SELECT * FROM libros WHERE titulo = 'Carrie';