# Ahora implementamos llaves foraneas
-- Sirven para hacer referencia entre tablas, solo que debemos usar la palabra clave FREIGN KEY
-- como es de uno a muchos
    CREATE TABLE IF NOT EXISTS libros(
        libro_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
        autor_id INT UNSIGNED NOT NULL, -- llave primaria de autores
        titulo VARCHAR(50) NOT NULL,
        descripcion VARCHAR(250),
        paginas INTEGER UNSIGNED,
        fecha_publicacion DATE NOT NULL,
        fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP,
        FOREIGN KEY (autor_id) REFERENCES autores(autor_id)
    );
-- primero se debe crear la tabla autores
# mostramos las tablas
    -- SHOW tables;
    -- DESC libros;

# Vamos a insertar
    INSERT INTO libros (autor_id, titulo, fecha_publicacion)
    VALUES  (1, 'Carrie', '1994-01-01'),
            (1, 'EL misterio de Salmes Lot', '1975-01-01'),
            (1, 'El resplando', '1977-01-01'),

            (2, 'Harry Potter y la Piedra Filosofal', '1977-06-30'),
            (2, 'Harry Potter y la Camara Secreta', '1998-07-02'),
            (2, 'Harry Potter y el Prisionero de Azkaban', '1999-07-08'),
            (2, 'Harry Potter y el Caliz de Fuego', '2000-03-20'),
            (2, 'Harry Potter y la Orden del Fenix', '2003-06-21'),
            (2, 'Harry Potter y el Misterior del Principe', '2005-06-16'),
            (2, 'Harry Potter y las Reliquias de la Muerte', '2007-07-21');
# Verificamos
    SELECT * FROM libros;

# Queremos insertar un libro con un autor_inexistente
    INSERT INTO libros (autor_id, titulo, fecha_publicacion)
    VALUES  (100, 'Transformers', '1994-01-01');