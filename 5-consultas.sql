use projectpilot;

-- procutos vendidos
select r.id_reserva, r.numero_cliente as cliente, c.nombre, c.apellido,p.descripcion as producto, p.precio
from reserva as r 
left join reserva_producto as rp on (rp.id_reserva= r.id_reserva)
left join producto as p on (rp.id_producto=p.id)
left join cliente as c on (c.id_cliente = r.numero_cliente);

CREATE VIEW  v_cliente (id_reserva,id_cliente,nombre,apellido,producto,precio) as
select r.id_reserva, r.numero_cliente as cliente, c.nombre, c.apellido,p.descripcion as producto, p.precio
from reserva as r 
left join reserva_producto as rp on (rp.id_reserva= r.id_reserva)
left join producto as p on (rp.id_producto=p.id)
left join cliente as c on (c.id_cliente = r.numero_cliente);

CREATE  VIEW v_reserva
(id_reserva,id_cliente,nombre_cliente,dni_cliente,numero_vendedor,dni_vendedor,nombre_vendedor)
AS 
select r.id_reserva, r.numero_cliente,cl.nombre,cl.dni,r.numero_vendedor,v.dni,v.nombre
from reserva as r
LEFT JOIN vendedor as v ON (r.numero_vendedor= v.legajo)
LEFT JOIN cliente as cl ON (r.numero_cliente= cl.id_cliente);

select * from v_reserva;
select * from v_cliente;