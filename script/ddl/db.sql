CREATE DATABASE IF NOT EXISTS distribuidora_del_valle;

USE distribuidora_del_valle;

CREATE TABLE IF NOT EXISTS categorias(
 id_categoria INT PRIMARY KEY AUTO_INCREMENT,
 nombre_categoria VARCHAR(50) NOT NULL
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS productos(
 id_producto INT PRIMARY KEY AUTO_INCREMENT,
 nombre VARCHAR(50) NOT NULL,
 id_categoria INT NOT NULL,
 precio FLOAT NOT NULL,
 volumen_ml INT NOT NULL CHECK(volumen_ml > 0),
 stock_actual INT NOT NULL,
 stock_minimo INT NOT NULL,
 CONSTRAINT fk_categoria_producto FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS clientes(
 id_cliente INT PRIMARY KEY AUTO_INCREMENT,
 nombre VARCHAR(30) NOT NULL,
 apellido VARCHAR(30) NOT NULL,
 dpi INT(13) NOT NULL CHECK(length(dpi) = 13),
 direccion VARCHAR(200) NOT NULL,
 telefono INT(8) NOT NULL,
 correo_electronico VARCHAR(100)
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS encargados(
 id_encargado INT PRIMARY KEY AUTO_INCREMENT,
 nombre_encargado VARCHAR(30) NOT NULL,
 apellido_encargado VARCHAR(30) NOT NULL,
 dpi INT(13) NOT NULL CHECK(length(dpi) = 13)
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS sedes(
 id_sede INT PRIMARY KEY AUTO_INCREMENT,
 nombre_sede VARCHAR(50) NOT NULL,
 ubicacion VARCHAR(200) NOT NULL,
 capacidad_almacenamiento INT NOT NULL, 
 id_encargado INT NOT NULL, 
 CONSTRAINT fk_encargado_sedes FOREIGN KEY (id_encargado) REFERENCES encargados(id_encargado)
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS pedidos(
 id_pedido INT PRIMARY KEY AUTO_INCREMENT,
 fecha_pedido DATETIME DEFAULT CURRENT_TIMESTAMP,
 id_cliente INT NOT NULL,
 id_sede INT NOT NULL,
 total_sin_iva FLOAT NOT NULL,
 total_con_iva FLOAT NOT NULL, 
 CONSTRAINT fk_pedido_cliente FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
 CONSTRAINT fk_pedido_sede FOREIGN KEY (id_sede) REFERENCES sedes(id_sede)
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS detalle_pedidos(
 id_dp INT PRIMARY KEY AUTO_INCREMENT,
 id_pedido INT NOT NULL,
 id_producto INT NOT NULL,
 cantidad INT NOT NULL,
 subtotal FLOAT NOT NULL,
 CONSTRAINT fk_dp_pedido FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido),
 CONSTRAINT fk_dp_producto FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
)ENGINE=InnoDB;

CREATE INDEX idx_nombre_cliente ON clientes(nombre, apellido);
CREATE INDEX idx_categoria ON categorias(nombre_categoria);
CREATE INDEX idx_pedidos_fecha ON pedidos(fecha_pedido);
CREATE INDEX idx_sedes_productos ON sedes(nombre_sede);