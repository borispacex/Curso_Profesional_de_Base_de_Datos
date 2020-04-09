# Funciones sobre numeros
    -- numero randomico 0 - 1, flotante
    SELECT RAND();
    -- Redondear un numero flotante positivo
    SELECT ROUND(RAND() * 100);
    -- trunca los numeros despues del punto decimal, en este ejemplo con dos argumentos
    SELECT TRUNCATE(1.123456789, 3); -- 1.123

    -- elevar un numero a una potencia
    SELECT POW(2, 16); -- 2 a la 16