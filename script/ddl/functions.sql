--  FUNCION: Calcula el total con IVA del pedido (19%) a partir de la suma de subtotales.

DELIMITER //
CREATE FUNCTION fn_calcular_total_con_iva(p_id_pedido INT)
RETURNS FLOAT
DETERMINISTIC
BEGIN 
	DECLARE total_con_iva FLOAT;
    DECLARE total_subtotal FLOAT;

	SET total_subtotal = (SELECT SUM(subtotal) FROM detalle_pedidos WHERE id_pedido = p_id_pedido);
    SET total_con_iva = total_subtotal + (total_subtotal * 0.12);
    
    RETURN total_con_iva;
END //

DELIMITER ;

SELECT SUM(subtotal) FROM detalle_pedidos WHERE id_pedido = 5;
SELECT fn_calcular_total_con_iva(5);

-- FUNCION: Retorna un mensaje indicando si hay suficiente stock antes de confirmar el pedido.
DESC productos;
DELIMITER //
CREATE FUNCTION fn_validar_stock(p_id_producto INT, p_cantidad INT)
RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN 
	DECLARE cantidad_min INT;
    DECLARE cantidad_act INT;
    DECLARE message VARCHAR(100);
    
    -- 
    SET antidad_act = (SELECT stock_actual FROM productos WHERE id_producto = p_id_producto);
	SET cantidad_min = (SELECT stock_minimo FROM productos WHERE id_producto = p_id_producto);
    
    IF cantidad_act - p_cantidad <= cantidad_min AND cantidad_act - p_cantidad != 0 THEN
		SET message = '¡Alerta! Queda poco stock, se recomienda comprar más productos';
    END IF;
    IF cantidad_act - p_cantidad <= 0 THEN
		SET message = '¡Alerta Crítica! El stock llegó a 0, no se puede realizar ninguan transación hasta que se actualicen los stocks ';
    END IF;
    IF cantidad_act - p_cantidad >= 0 THEN
		SET message = 'El stock actual es mayor a la cantidad requerida, se puede proseguir.';
    END IF;
    RETURN message;
END //
DELIMITER ;
SELECT fn_validar_stock(5,10);