--  Al insertar un detalle de pedido, descuenta automáticamente la cantidad vendida del stock.

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