CREATE TABLE usuario (
	id_usuario int PRIMARY KEY,
	nombre_usuario VARCHAR,
	contraseña VARCHAR,
	direccion VARCHAR
);

CREATE TABLE producto (
	id_producto int PRIMARY key,
	descripcion VARCHAR,
	proveedor VARCHAR
);

ALTER TABLE producto ADD precio FLOAT;

CREATE TABLE factura (
	id int NOT NULL PRIMARY KEY,
	monto FLOAT NOT NULL,
	tipo_de_pago VARCHAR
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
