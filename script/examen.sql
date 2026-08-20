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

-- Crear vista vista_de_clientes_activos
CREATE VIEW vista_de_clientes_activos AS
	SELECT C.id_cliente, CONCAT(C.nombre, ' ', C.apellido) 'Nombre completo', C.telefono, COUNT(P.id_pedido) 'Pedidos realizados'
		FROM clientes C INNER JOIN pedidos P ON P.id_cliente = C.id_cliente
        GROUP BY C.id_cliente, C.telefono
        HAVING COUNT(P.id_pedido) >= 1
        ORDER BY COUNT(P.id_pedido) DESC;

SELECT * FROM vista_clientes_activos;

-- Consulta analìtica
SELECT CONCAT(C.nombre,' ',C.apellido) 'Nombre', COUNT(P.id_pedido) 'Cant. Pedidos', ROUND(SUM(P.total_con_iva),2) 'Total'
	FROM pedidos P INNER JOIN clientes C ON P.id_cliente = C.id_cliente
    WHERE YEAR(P.fecha_pedido) = '2026'
    GROUP BY C.nombre, C.apellido
    ORDER BY ROUND(SUM(P.total_con_iva)) DESC
    LIMIT 5;
    
-- Trigger para registrar un nuevo pedido en la tabla auditoria_pedidos
DELIMITER &&
CREATE TRIGGER registrar_nuevo_pedido_trigger
AFTER INSERT ON pedidos
FOR EACH ROW
BEGIN   
    INSERT INTO auditoria_pedidos (id_pedido, id_cliente, fecha_registro, total_pedido, usuario_responsable)
    VALUES (NEW.id_pedido, NEW.id_cliente, NOW(), NEW.total_con_iva, 'gesor_inventario');
END &&
DELIMITER ;

CREATE TABLE IF NOT EXISTS auditoria_pedidos (
    id_auditoria INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT NOT NULL,
    id_cliente INT NOT NULL,
    fecha_registro DATETIME NOT NULL,
    total_pedido FLOAT NOT NULL,
    usuario_responsable VARCHAR(50) NOT NULL
);

INSERT INTO pedidos (id_cliente, fecha_pedido, total_con_iva) VALUES (1, '2026-02-12', 150.75);