DELIMITER $$
CREATE PROCEDURE agregar_libro(titulo VARCHAR(100), autor VARCHAR(100))
BEGIN
   INSERT INTO libros (titulo, autor)
   VALUES (titulo, autor);
END$$
DELIMITER ;


-- Lo que hace es añadir un libro, lo unico que tienes que hacer es pasarle por parametros los atributos del libro, 
-- osea el titulo del libro y el autor

-- CALL agregar_libro('libro1','Juan T');