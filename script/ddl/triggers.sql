--  Al insertar un detalle de pedido, descuenta automáticamente la cantidad vendida del stock.
DELIMITER //
CREATE TRIGGER tr_actualizar_stock
AFTER INSERT ON detalle_pedidos
FOR EACH ROW
BEGIN 
	IF NEW.cantidad > 0 THEN
		UPDATE productos SET stock_actual = stock_actual - NEW.cantidad WHERE id_producto = NEW.id_producto;
    END IF;
END //

DELIMITER ;

DESC detalle_pedidos;

SELECT * FROM pedidos LIMIT 5;
SELECT * FROM detalle_pedidos LIMIT 5;
SELECT * FROM productos LIMIT 5;

INSERT INTO detalle_pedidos(id_pedido, id_producto, cantidad, subtotal)
	VALUES
		(2, 1, 1, 10.5);


-- Al actualizar el campo precio en la tabla productos, registra la fecha, el precio anterior y el nuevo en una tabla auditoria_precios.
DELIMITER //
CREATE TRIGGER tr_auditar_cambio_precio
AFTER UPDATE ON productos 
FOR EACH ROW
BEGIN 
	IF NEW.precio > 0 AND OLD.precio <> NEW.precio THEN
		INSERT INTO auditoria_precios(id_producto, precio_anterior, precio_actual)
			VALUES (NEW.id_producto, OLD.precio, NEW.precio);
    END IF;
END //
DELIMITER ;

DESC productos;
SELECT * FROM productos;
UPDATE productos SET precio = 12.5 WHERE id_producto = 1;

SELECT * FROM auditoria_precios;

-- Antes de insertar datos en detalle_pedidos, valide si el stock actual alcanza
DESC productos;
DESC detalle_pedidos;
DELIMITER //
CREATE TRIGGER tr_validar_stock_before_insert
BEFORE INSERT on detalle_pedidos
FOR EACH ROW
BEGIN
	DECLARE v_stock INT;
    SELECT stock_actual INTO v_stock FROM productos WHERE id_producto = NEW.id_producto; 	
    
    IF v_stock IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error: El producto no existe';
    END IF;
    IF NEW.cantidad <= 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error: La cantidad debe ser mayor que cero';
    END IF;
    IF v_stock < NEW.cantidad THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error: Stock insuficiente. Cancelando pedido';
    END IF;
END//