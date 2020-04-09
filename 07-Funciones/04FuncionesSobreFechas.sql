# Funciones sobre fechas
    SELECT NOW();
    -- vamos a pasar a una variable
    SET @now = NOW();

    -- obtenemos el segundo, minuto, hora, mes, anio. estoy apartir de una variable donde le pasamos la fecha
    SELECT SECOND(@now), MINUTE(@now), HOUR(@now), MONTH(@now), YEAR(@now);

    -- obtener datos concretos
    SELECT DAYOFWEEK(@now), DAYOFMONTH(@now), DAYOFYEAR(@now);

    -- parseamos a fecha
    SELECT DATE(@now);
    -- parseamos a fecha_creacion para comprar con la fecha de hoy
    SELECT * FROM libros WHERE DATE(fecha_creacion) = CURDATE();

    -- podemos agregar y restar a una fecha
    SELECT @now + INTERVAL 30 DAY; -- agregar 30 dias
