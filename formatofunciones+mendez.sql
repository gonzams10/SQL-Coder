DELIMITER //

CREATE FUNCTION `f_obtener_nombre_cliente` (p_id_cliente int)
RETURNS text 
READS SQL DATA 

BEGIN

DECLARE v_nombre_o_razonSocial_cliente text;
SELECT nombre INTO v_nombre_o_razonSocial_cliente
FROM cliente
WHERE p_id_cliente = id_cliente;
RETURN v_nombre_o_razonSocial_cliente;

END //

select f_obtener_nombre_cliente(2);

DELIMITER //

CREATE FUNCTION `iva_precio` (p_id_producto double)
RETURNS double 
READS SQL DATA 

BEGIN

DECLARE precio_con_iva double;
SELECT precio INTO precio_con_iva
FROM producto
WHERE p_precio = id;
RETURN precio_con_iva*(0.21);

END //

select f_obtener_nombre_cliente(2);


DELIMITER //

CREATE FUNCTION `iva_precio` (p_precio_producto double)
RETURNS double 
READS SQL DATA 

BEGIN

DECLARE precio_con_iva double;
SELECT precio INTO precio_con_iva
FROM producto
WHERE p_precio_producto = id;
RETURN precio_con_iva*(1.21);

END //

select iva_precio(2);




