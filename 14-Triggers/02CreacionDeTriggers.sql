# Creacion de triggers
    -- alteramos una tabla 
    ALTER TABLE autores ADD COLUMN cantidad_libros INT DEFAULT 0;
    -- cada vez que agregemos un libro en cierto autor_id, debe aumentar esta cantidad
    -- Cuando creemos un libro nuevo pasara que cantidad_libros aumentara
    -- 5.7.2 <  Máximo 6 triggers

    DELIMITER //
    CREATE TRIGGER after_insert_actualizacion_libros
    AFTER INSERT ON libros
    FOR EACH ROW
    BEGIN
        UPDATE autores SET cantidad_libros = cantidad_libros + 1 WHERE autor_id = NEW.autor_id;
    END;
    //
    DELIMITER ;

    -- llamamos triger
    SELECT * FROM autores; -- vemos
    INSERT INTO libros (autor_id, titulo, fecha_publicacion) VALUES (1, 'Area 1500', '2011-07-01');
    SELECT * FROM autores; -- observamos y la cantidad_libros tiene que subir



