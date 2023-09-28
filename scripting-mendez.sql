use projectcoder;
select * from cliente;
select * from proveedor;
select * from producto;
select * from reserva;
select * from reserva_producto;
select * from vendedor;
select * from factura;



INSERT INTO CLIENTE (id_cliente,nombre,apellido,direccion,dni) VALUES 
(1,'gonzalo','mendez','alvear 1625',34621776),
(2,'giselle','diaz','independencia 5077',32536210);

INSERT INTO CLIENTE (id_cliente,nombre,apellido,direccion,dni) VALUES 
(3,'pablo','sanchez','manuela pedraza 377',3484232),
(4,'federico','tufro','pureyrredon 2233',35621778);

INSERT INTO CLIENTE (id_cliente,nombre,apellido,direccion,dni) VALUES 
(5,'matias','salgado','campichuelo 2333',35678907),
(6,'jeronimo','gonzalez','alvear 1678',34662778),
(7,'daniel','gutierrez','intendente alvear',30232333),
(8,'fernando','belasteguin','Pehuajo 2277',28767890),
(9,'luis','suarez','madrid 2377',267892320),
(10,'federico','hoyuelos','san martin 233',35678909);

INSERT INTO proveedor (razon_social,producto) VALUES 
('Tecno PC', 'Memorias Ram'),
('Pc2000', 'i7 Intel '),
('Marcos Computacion', '5200 AMD Ryzen'),
('Compra Gamer', 'PenDrive 32GB Kingston'),
('Velox', 'PenDrive 128 GB Kingston'),
('9z', 'Auriculares HyperX Cloud 5'),
('Tecnologia 2023', 'Teclado Mecanico HyperX Alloy FPS'),
('Venex', 'Memorias Ram'),
('Tecnology Pastorini', 'Memorias Ram'),
('Francos computacion', 'Memorias Ram');


INSERT INTO producto (id,precio,stock_actual,stock_critico,descripcion) VALUES 
(4,5000,40,5,'PenDrive 32GB Kingston'),
(5,8000,40,5,'PenDrive 128 GB Kingston'),
(6,20000,10,2,'Auriculares HyperX Cloud 5'),
(7,20000,10,2,'Teclado Mecanico HyperX Alloy FPS'),
(8,20000,10,2,'Memorias Ram 64gb'),
(9,20000,10,2,'Memorias Ram 32gb'),
(10,20000,10,2,'Memorias Ram 16gb');

INSERT INTO vendedor (legajo,nombre,apellido,direccion,dni) VALUES 
(1123,'gonzalo','mendez','alvear 1625',34621776),
(1124,'federico','tufro','pueyrredon 2323',35678990),
(1100,'gaston','sanchez','independencia 5077',40013490);

INSERT INTO factura (id_reseva,numero_cleinte,numero_venedor) VALUES 
(2,2,32000),
(3,3,12000),
(4,7,100000),
(5,2,20000),
(6,8,15000),
(7,6,200000),
(8,5,100000),
(9,9,390200),
(10,4,20000);

