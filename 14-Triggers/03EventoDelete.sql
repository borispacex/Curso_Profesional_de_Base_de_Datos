# Evento Delete
    -- cuando borre un libro, se le restara a cantidad_libros
    DELIMITER //
    CREATE TRIGGER after_delete_actualizacion_libros
    AFTER DELETE ON libros
    FOR EACH ROW
    BEGIN
        UPDATE autores SET cantidad_libros = cantidad_libros - 1 WHERE autor_id = OLD.autor_id;
        -- OLD --> al registro eliminado
    END;
    //
    DELIMITER ;

    -- vemos
    SELECT libro_id, titulo FROM libros; -- buscamos el libro_id  del ultimo
    -- borramos
    DELETE FROM libros WHERE libro_id = 59;
    -- verificamos que haya restado
    SELECT * FROM autores;
