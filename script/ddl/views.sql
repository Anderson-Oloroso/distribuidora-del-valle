--  Muestra la cantidad total de pedidos y ventas por sede.
DESC pedidos;
DESC sedes;

CREATE VIEW vista_resumen_pedidos_por_sede AS
SELECT S.nombre_sede, COUNT(P.id_pedido)  'Total Pedidos', ROUND(SUM(P.total_con_iva),2) 'Total ventas'
	FROM pedidos P INNER JOIN sedes S ON P.id_sede = S.id_sede
    GROUP BY S.nombre_sede
    ORDER BY S.nombre_sede;
    
SELECT * FROM vista_resumen_pedidos_por_sede;

--  Lista productos con stock_actual <= stock_minimo
DESC productos;
CREATE VIEW vista_productos_bajo_stock AS
	SELECT P.id_producto, P.nombre, C.nombre_categoria, P.precio, P.stock_actual, P.stock_minimo 
		FROM productos P INNER JOIN categorias C 
			ON P.id_categoria = C.id_categoria
		WHERE stock_actual <= stock_minimo;
		
SELECT * FROM vista_productos_bajo_stock;

--  Muestra clientes con al menos un pedido registrado.
DESC clientes;
DESC pedidos;
CREATE VIEW vista_clientes_activos AS
	SELECT C.id_cliente, CONCAT(C.nombre, ' ', C.apellido) 'Nombre completo', C.telefono, COUNT(P.id_pedido) 'Pedidos realizados'
		FROM clientes C INNER JOIN pedidos P ON P.id_cliente = C.id_cliente
        GROUP BY C.id_cliente, C.telefono
        HAVING COUNT(P.id_pedido) >= 1
        ORDER BY COUNT(P.id_pedido) DESC;

SELECT * FROM vista_clientes_activos;