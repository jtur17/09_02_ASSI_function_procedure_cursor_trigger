DELIMITER $$
CREATE PROCEDURE listar_libros()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE libro_id INT;
    DECLARE libro_titulo VARCHAR(100);
    DECLARE libro_autor VARCHAR(100);

    DECLARE cur_libros CURSOR FOR SELECT id, titulo, autor FROM libros;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur_libros;

    read_loop: LOOP
        FETCH cur_libros INTO libro_id, libro_titulo, libro_autor;
        IF done THEN
            LEAVE read_loop;
        END IF;
        SELECT CONCAT(libro_titulo, ' por ', libro_autor) AS titulo_autor;
    END LOOP;

    CLOSE cur_libros;
END $$
DELIMITER ;


-- CALL listar_libros();

-- Lo que hace esté cursor es que te lista todos los objetos que hay dentro de la tabla de libros y te lo saca por pantalla
-- de manera que te saca el titulo del libro y el autor en una misma linea.

-- +---------------------------------------------+
-- | titulo_autor                                |
-- +---------------------------------------------+
-- | La sombra del viento por Carlos Ruiz Zafón  |
-- +---------------------------------------------+
