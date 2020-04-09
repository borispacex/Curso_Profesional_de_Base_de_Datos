# Eliminacion en cascada
    DELETE FROM autores WHERE autor_id = 1; -- no puede ser eliminado, ya que su llave primaria esta como foranea en libros

# Entonces tenemos que eliminar libros y despues autores;
    DELETE FROM libros WHERE autor_id = 1;
    -- despues eliminar autores

# ENTONCES ahora lo haremos en cascada, imagina una BD con cientos de tablas
    -- Desde su creacion, modificando la tabla libros, agregando ON DELETE CASCADE en la llave foranea
    CREATE TABLE IF NOT EXISTS libros(
        libro_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
        autor_id INT UNSIGNED NOT NULL, -- llave primaria de autores
        titulo VARCHAR(50) NOT NULL,
        descripcion VARCHAR(250),
        paginas INTEGER UNSIGNED,
        fecha_publicacion DATE NOT NULL,
        fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP,
        FOREIGN KEY (autor_id) REFERENCES autores(autor_id) ON DELETE CASCADE
    );
    -- otra forma
    ALTER TABLE libros ADD FOREIGN KEY (autor_id) REFERENCES autores(autor_id) ON DELETE CASCADE;


    -- intentamos nuevamente, y observaremos que se eliminara en cascada todos los
    DELETE FROM autores WHERE autor_id = 1;
    -- verificamos
    SELECT * FROM libros;
