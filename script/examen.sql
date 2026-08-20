-- rear una función MySQL llamada total_pedidos_cliente_periodo 

DROP FUNCTION IF EXISTS total_pedidos_cliente_periodo;
DELIMITER &&
CREATE FUNCTION total_pedidos_cliente_periodo(p_id_cliente INT, p_fecha_inicio DATE, p_fecha_final DATE)
RETURNS FLOAT
DETERMINISTIC
BEGIN 
	DECLARE valor_total FLOAT;

	SET valor_total = (SELECT ROUND(SUM(total_con_iva), 2) 'Valor total pediddo'
		FROM pedidos P INNER JOIN clientes C ON P.id_cliente = C.id_cliente
			WHERE DATE(fecha_pedido) BETWEEN p_fecha_inicio AND p_fecha_final);
    
    RETURN valor_total;
END &&

DELIMITER ;

SET @fecha_inicio = '2026-02-10';
SET @fecha_final = '2026-02-15';

SELECT total_pedidos_cliente_periodo(1, @fecha_inicio, @fecha_final);
