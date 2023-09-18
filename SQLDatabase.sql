CREATE DATABASE ProjectCoder;
use projectcoder;

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
PRIMARY KEY (id_)
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
id_reserva_producto int not null,
PRIMARY KEY (id_reserva),
FOREIGN KEY (numero_vendedor) REFERENCES Vendedor(legajo),
FOREIGN KEY (numero_cliente) REFERENCES cliente(id_cliente),
FOREIGN KEY (id_reserva_producto) REFERENCES reserva_producto(id_reserva_producto)
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
id_reserva_producto int not null,
id_producto int not null,
PRIMARY KEY (id_reserva_producto),
FOREIGN KEY (id_producto) REFERENCES producto(id)
);


