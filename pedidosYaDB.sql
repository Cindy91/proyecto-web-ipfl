CREATE DATABASE finalipfl;

CREATE TABLE usuario (
	id_usuario int PRIMARY KEY,
	nombre_usuario VARCHAR (25),
	contraseña VARCHAR (25),
	direccion VARCHAR (25)
);

CREATE TABLE producto (
	id_producto int PRIMARY key,
	descripcion VARCHAR (25),
	proveedor VARCHAR (25)
);

ALTER TABLE producto ADD precio FLOAT;

CREATE TABLE factura (
	id int NOT NULL PRIMARY KEY,
	monto FLOAT NOT NULL,
	tipo_de_pago VARCHAR (25)
);

CREATE TABLE pedido (
	id_pedido int NOT NULL PRIMARY KEY,
	id_factura int,
	producto int,
	usuario int,
	cantidad int,
	monto FLOAT,
	FOREIGN KEY(id_factura) references factura(id),
	FOREIGN KEY(producto) references producto(id_producto),
	FOREIGN KEY(usuario) references usuario(id_usuario)
);

--Insert data.

INSERT INTO usuario values (001, 'Pedro Alonso', 'p123', 'calle falsa 123');
INSERT INTO usuario values (002, 'Maria Perez', 'mary666', 'diagonal 60 334');
INSERT INTO usuario values (003, 'Raúl Gómez', 'raulito22', 'calle 560 1256');
INSERT INTO usuario values (004, 'Juan Martin', 'juancito88', 'calle 22 889');
INSERT INTO usuario values (005, 'Valeria Sánchez', 'vale667', 'calle 992 8956');
INSERT INTO usuario values (006, 'Romina Mercado', '596romi', 'calle 456 1278');

INSERT INTO producto values (100, 'Menú completo', 'Parrilla Avenida');
INSERT INTO producto values (101, 'Hamburguesa simple con papas', 'Burga Kong');
INSERT INTO producto values (102, 'Ensalada cesar', 'Vida light');
INSERT INTO producto values (103, 'Pollo al spiedo con guarnición', 'El imperio del pollo');
INSERT INTO producto values (104, 'Combo 15 piezas', 'Dos dragones');
INSERT INTO producto values (105, 'Sixpack Andes Ipa', 'El baron de la birra');

INSERT INTO factura values (24563, 3499.99, 'efectivo');
INSERT INTO factura values (25699, 1899, 'débito');
INSERT INTO factura values (26485, 960.5, 'efectivo');
INSERT INTO factura values (27853, 2488.9, 'crédito');
INSERT INTO factura values (28345, 3460, 'débito');

INSERT INTO pedido values (340, 24563, 100, 001, 1, 3499.99);
INSERT INTO pedido values (341, 25699, 101, 002, 1, 1899);
INSERT INTO pedido values (342, 26485, 102, 003, 1, 960.5);
INSERT INTO pedido values (343, 27853, 103, 004, 1, 2488.9);
INSERT INTO pedido values (344, 28345, 104, 005, 1, 3460);

--Consultas.

/*a. Hacer un select que una los pedidos y los usuarios que los hicieron. Visualizar solo las columnas de
nombre de usuario, el producto, la cantidad y el monto.*/

SELECT nombre_usuario, producto, cantidad, monto
from usuario, pedido
WHERE id_usuario = usuario;

/*b. Hacer un select que una los pedidos y las facturas de esos pedidos. Visualizar solo las columnas de
producto, el monto y el medio de pago.*/

SELECT producto, factura.monto, tipo_de_pago
from pedido, factura
WHERE (id_factura = id and pedido.monto = factura.monto);

/*c. Hacer un select que una los pedidos y los productos de esos pedidos. Visualizar solo las columnas
de descripción, cantidad y monto.*/


/*d. Crear una selección de todos los productos que son pagados con efectivo.*/

SELECT 

/*e. Seleccionar los usuarios que hayan hecho algún pedido.*/


/*f. Seleccionar todas las facturas por un monto mayor a 500.*/


/*g. Cambiar todas las facturas que digan aplicación a débito.*/

