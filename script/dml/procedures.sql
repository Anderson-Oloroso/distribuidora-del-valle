-- Crear procedimiento para insertar nuevos registros hacia la tabla detalle_pedidos
DELIMITER //

CREATE PROCEDURE sp_registrar_pedido(IN p_id_cliente INT, IN p_id_sede INT, IN p_id_producto INT, IN p_cantidad INT, IN p_iva DECIMAL(5,4), OUT p_resultado VARCHAR(100))
BEGIN
    DECLARE v_precio DECIMAL(10,2);
    DECLARE v_stock DECIMAL(10,2);
    DECLARE v_subtotal DECIMAL(10,2);
    DECLARE v_total_con_iva DECIMAL(10,2);
    DECLARE v_id_pedido INT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        SET p_resultado = 'ERROR: Transacción revertida por falla en la operación.';
    END;
    START TRANSACTION;
    SELECT precio, stock_actual INTO v_precio, v_stock
    FROM productos WHERE id_producto = p_id_producto FOR UPDATE;
    IF v_stock < p_cantidad THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Stock insuficiente para procesar la orden.';
    END IF;
    SET v_subtotal = v_precio * p_cantidad;
    SET v_total_con_iva = v_subtotal * (1 + p_iva);
    INSERT INTO pedidos (id_cliente, id_sede, total_sin_iva, total_con_iva)
    VALUES (p_id_cliente, p_id_sede, v_subtotal, v_total_con_iva);
    SET v_id_pedido = LAST_INSERT_ID();
    INSERT INTO detalle_pedidos (id_pedido, id_producto, cantidad, subtotal)
    VALUES (v_id_pedido, p_id_producto, p_cantidad, v_subtotal);
    COMMIT;
    SET p_resultado = CONCAT('ÉXITO: Pedido  registrado correctamente.');
END //

DELIMITER ;

SET @iva = 0.12;
SET @resultado = '';
CALL sp_registrar_pedido(1, 2, 3, 4, @iva, @resultado);
SELECT @resultado;
