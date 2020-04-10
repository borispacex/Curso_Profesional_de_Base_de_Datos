# Evento Update
    -- cada vez que actualicemos el libro
    DELIMITER //
    CREATE TRIGGER after_update_actualizacion_libros
    AFTER UPDATE ON libros
    FOR EACH ROW
    BEGIN
        --
        IF (NEW.autor_id != OLD.autor_id) THEN
            UPDATE autores SET cantidad_libros = cantidad_libros - 1 WHERE autor_id = OLD.autor_id;
            UPDATE autores SET cantidad_libros = cantidad_libros + 1 WHERE autor_id = NEW.autor_id;
    END IF;
    END;//
    DELIMITER ;

    -- vamos a actualizar
    UPDATE libros SET autor_id = 2 WHERE libro_id = 56;
    -- vamos a verificar en autores
    SELECT * FROM autores;  -- se observa que en uno se aumenta y otro se resta