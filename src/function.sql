
DELIMITER $$

CREATE FUNCTION contar_libros() RETURNS INT
BEGIN
    DECLARE total_libros INT;
    SELECT COUNT(*) INTO total_libros FROM libros;
    RETURN total_libros;

END $$
DELIMITER ;


-- Lo que hace está funcion es contar todos los libros que hay en la base de datos
-- SELECT buscar_libro()