# Busqueda por listado
    -- forma normal
    SELECT * FROM libros WHERE titulo = 'Harry Potter y la Camara Secreta' OR titulo = 'Carrie' OR titulo = 'El resplando';
    -- Hay una forma mas corta de hacerlo
    SELECT * FROM libros WHERE titulo IN ('Harry Potter y la Camara Secreta', 'Carrie', 'El resplando');