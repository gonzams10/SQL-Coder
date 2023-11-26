-- CREATE database projectpilot;
use projectpilot;

-- CREACION DE DB

CREATE TABLE producto (
id int not null auto_increment,
precio double,
stock_actual int,
stock_critico int,
proveedor varchar(45),
descripcion varchar(45),
PRIMARY KEY (id)
);

CREATE TABLE cliente(
id_cliente int not null,
nombre varchar(45),
apellido varchar(45),
direccion varchar (50),
dni int,
PRIMARY KEY (id_cliente)
);

CREATE TABLE vendedor(
legajo int not null,
nombre varchar(45),
apellido varchar(45),
direccion varchar (50),
dni int,
PRIMARY KEY (legajo)
);

CREATE TABLE reserva (
id_reserva int not null auto_increment,
numero_cliente int,
numero_vendedor int,
PRIMARY KEY (id_reserva),
FOREIGN KEY (numero_vendedor) REFERENCES Vendedor(legajo),
FOREIGN KEY (numero_cliente) REFERENCES cliente(id_cliente)
);


CREATE TABLE factura (
id int auto_increment,
id_cliente int not null,
total double (10,4),
PRIMARY KEY (id), 
FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

CREATE TABLE proveedor (
razon_social varchar (50) not null,
producto varchar(50) not null,
primary key (razon_social)
);

CREATE TABLE reserva_producto(
id int not null,
id_producto int not null,
id_reserva int not null,
FOREIGN KEY (id_producto) REFERENCES producto(id),
FOREIGN KEY (id_reserva) REFERENCES reserva(id_reserva)
);


-- INSERCION DE DATOS

INSERT INTO CLIENTE (id_cliente,nombre,apellido,direccion,dni) VALUES 
(1,'gonzalo','mendez','alvear 1625',34621776),
(2,'giselle','diaz','independencia 5077',32536210),
(3,'pablo','sanchez','manuela pedraza 377',3484232),
(4,'federico','tufro','pureyrredon 2233',35621778),
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


INSERT INTO producto (id,precio,stock_actual,stock_critico,proveedor,descripcion) VALUES 
(1,9000,10,2,'Velox','Micro SD 16 GB'),
(2,1200,10,2,'Tecnology Pastorini','Micro SD 32 GB'),
(3,2000,10,2,'Francos computacion','Teclado Gamming Genius'),
(4,5000,40,5,'Tecno Pc','PenDrive 32GB Kingston'),
(5,8000,40,5,'Tecno Pc','PenDrive 128 GB Kingston'),
(6,20000,10,2,'Tecno Pc','Auriculares HyperX Cloud 5'),
(7,20000,10,2,'Tecno Pc','Teclado Mecanico HyperX Alloy FPS'),
(8,20000,10,2,'Tecno Pc','Memorias Ram 64gb'),
(9,20000,10,2,'Tecno Pc','Memorias Ram 32gb'),
(10,20000,10,2,'Tecno Pc','Memorias Ram 16gb');

INSERT INTO vendedor (legajo,nombre,apellido,direccion,dni) VALUES 
(1123,'gonzalo','mendez','alvear 1625',34621776),
(1124,'federico','tufro','pueyrredon 2323',35678990),
(1100,'gaston','sanchez','independencia 5077',40013490);

INSERT INTO reserva VALUES
(1,1,1100),
(2,2,1123),
(3,3,1124),
(4,4,1124),
(5,5,1123),
(6,6,1100),
(7,7,1124),
(8,8,1100),
(9,9,1123),
(10,10,1100);
                        
                     
INSERT INTO reserva_producto values
(1,1,1),
(2,2,3),
(3,3,4),
(4,4,5),
(5,4,6),
(6,5,8),
(7,5,9),
(8,5,6),
(9,6,7),
(10,6,8),
(11,6,9),
(12,7,10),
(13,8,2),
(14,9,3),
(15,10,8);

INSERT INTO factura (id,id_cliente,total) VALUES 
(1,10,22000),
(2,2,32000),
(3,3,12000),
(4,7,100000),
(5,2,20000),
(6,8,15000),
(7,6,200000),
(8,5,100000),
(9,9,390200),
(10,4,20000);


