-- Consultar los productos con stock por debajo del mínimo.
DESC productos;
SELECT * FROM productos WHERE stock_actual < stock_minimo;

-- Consultar los pedidos realizados entre dos fechas (BETWEEN).
DESC pedidos;
SELECT * FROM pedidos;
SELECT * FROM pedidos WHERE DATE_FORMAT(fecha_pedido,'%y-%m-%d') BETWEEN '26-02-10' AND '26-02-15';

-- Listar los productos más vendidos (con JOIN y GROUP BY).
DESC productos;
DESC pedidos;
DESC detalle_pedidos;
SELECT P.nombre, C.nombre_categoria, P.precio 'Precio (Q)', SUM(DP.cantidad) AS Total_vendido
	FROM categorias C INNER JOIN (productos P INNER JOIN detalle_pedidos DP ON DP.id_producto = P.id_producto) ON P.id_categoria = C.id_categoria
    GROUP BY C.nombre_categoria, P.nombre, P.precio
    ORDER BY Total_vendido DESC
    LIMIT 10;

-- Mostrar clientes y la cantidad de pedidos realizados.
DESC clientes;
DESC pedidos;
SELECT CONCAT(C.nombre,' ',C.apellido) 'Nombre completo', C.dpi, C.telefono, COUNT(P.id_pedido) 'Total pedidos'
	FROM clientes C INNER JOIN pedidos P ON P.id_cliente = C.id_cliente
    GROUP BY 'Nombre completo', C.dpi, C.telefono, 'Total pedidos'
    ORDER BY COUNT(P.id_pedido) DESC;

-- Buscar clientes por nombre parcial usando LIKE.
DESC clientes;
SELECT * FROM clientes;    
SELECT * FROM clientes WHERE nombre LIKE '%ia%';
SELECT * FROM clientes WHERE apellido LIKE '%ez';
SELECT * FROM clientes WHERE nombre LIKE 'A%';

-- Consultar productos de ciertas categorías usando IN.
DESC productos;
DESC categorias;
SELECT * FROM categorias;
SELECT  P.nombre, P.precio, P.stock_actual, C.nombre_categoria
	FROM productos P INNER JOIN categorias C ON P.id_categoria = C.id_categoria
    WHERE C.nombre_categoria IN ('Aguas Puras y Flavored', 'Cervezas y Licores')
    GROUP BY P.nombre, P.precio, P.stock_actual, C.nombre_categoria
    ORDER BY stock_actual DESC;
    
-- Mostrar el cliente con mayor número de pedidos (subconsulta).
SELECT CONCAT(C.nombre, ' ', C.apellido) AS 'Nombre completo', C.dpi, C.telefono, T.Total_pedidos
FROM clientes C
INNER JOIN (
    SELECT P.id_cliente, COUNT(P.id_pedido) AS Total_pedidos
    FROM pedidos P
    GROUP BY P.id_cliente
) T
ON C.id_cliente = T.id_cliente
ORDER BY T.Total_pedidos DESC
LIMIT 5;

-- Consultar pedidos y sus totales agrupados por sede.

SELECT P.id_pedido, DATE_FORMAT(P.fecha_pedido, '%y-%m-%d') 'Fecha Pedido', CONCAT(C.nombre, ' ', C.apellido) 'Nombre Completo', S.nombre_sede, ROUND(SUM(total_con_iva), 2) AS Total
	FROM clientes C INNER JOIN (pedidos P INNER JOIN sedes S ON P.id_sede = S.id_sede) ON P.id_cliente = C.id_cliente
    GROUP BY S.nombre_sede, P.id_pedido;