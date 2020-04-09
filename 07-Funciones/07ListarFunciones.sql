# listar funciones
    SELECT name FROM mysql.proc WHERE db = database() AND type = 'FUNCTION';

# eliminar una funcion
    DROP FUNCTION agregar_dias;