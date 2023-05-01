DELIMITER $$
CREATE TRIGGER actualizar_autor
BEFORE INSERT ON libros
FOR EACH ROW
BEGIN
   DECLARE libro_existente INT;

   SELECT COUNT(*) INTO libro_existente
   FROM libros
   WHERE titulo = NEW.titulo;

   IF libro_existente > 0 THEN
      UPDATE libros SET autor = NEW.autor WHERE titulo = NEW.titulo;
      SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El libro ya existe. Se ha actualizado la información del autor.';
   END IF;
END$$
DELIMITER ;

-- Este codigo sacará un error cuando intentes crear un libro en el que ya haya otro libro con el mismo titulo.