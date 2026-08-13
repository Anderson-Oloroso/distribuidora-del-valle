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