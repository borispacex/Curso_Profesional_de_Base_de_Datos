# Unir resultados
    -- crearemos una nueva tabla
    CREATE TABLE usuarios(
        usuario_id INT UNISIGNED PRIMARY KEY AUTO_INCREMENT,
        nombre varchar(25) NOT NULL,
        apellidos varchar(25),
        username varchar(25) NOT NULL,
        email varchar(50) NOT NULL,
        fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP
    );