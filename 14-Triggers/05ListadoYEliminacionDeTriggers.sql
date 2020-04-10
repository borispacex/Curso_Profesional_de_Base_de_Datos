# Listado y eliminacion de Triggers
    -- cantidad de trigger y para saber cuales son
    SHOW TRIGGERS\G; -- \G para observar en vertical

    -- eliminar trigger
    DROP TRIGGER IF EXISTS libreria_cf.after_insert_actualizacion_libros;