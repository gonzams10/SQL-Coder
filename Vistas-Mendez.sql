use projectcoder;

CREATE OR REPLACE VIEW v_cliente
(id_cliente,nombre,apellido,direccion,dni,id_factura,total_factura)
as
select cl.id_cliente, cl.nombre, cl.apellido, cl.direccion, cl.dni, fc.id as id_factura, fc.total as total_factura
from cliente as cl
LEFT JOIN factura as fc ON (cl.id_cliente = fc.id_cliente);

CREATE OR REPLACE VIEW v_reserva
(id_reserva,id_cliente,nombre_cliente,dni_cliente,numero_vendedor,dni_vendedor,nombre_vendedor)
AS 
select r.id_reserva, r.numero_cliente,cl.nombre,cl.dni,r.numero_vendedor,v.dni,v.nombre
from reserva as r
LEFT JOIN vendedor as v ON (r.numero_vendedor= v.legajo)
LEFT JOIN cliente as cl ON (r.numero_cliente= cl.id_cliente);


