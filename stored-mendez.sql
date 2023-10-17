DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_ordenar_producto`(IN p_columna VARCHAR(20),IN p_ordenamiento VARCHAR(20))
BEGIN


	SET @v_consulta = concat('SELECT ',p_columna,' FROM cliente ORDER BY ', p_columna ,' ' , p_ordenamiento);

 
	SELECT @v_consulta;

	PREPARE consulta FROM @v_consulta;
    EXECUTE consulta;


END //


DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_eliminar_pruducto`(IN v_producto INTEGER)
BEGIN

DELETE FROM producto WHERE id =  v_producto;

END  //

