# Análisis de Requerimientos - Distribuidora Del Valle S.A.🗄️

## 🎯 1. Objetivos del Almacenamiento
Diseñar e implementar una base de datos relacional en MySQL que soporte la gestión integral de productos, clientes, pedidos y sedes de la empresa, incluyendo funciones, triggers, vistas y consultas analíticas para apoyar la toma de decisiones comerciales y logísticas.

## 🏢 2. Entidades Detectadas

* **Productos:** Aquí se almacenará el inventario total de gaseosas de todas las sedes.
  * *Datos requeridos:* id_producto, nombre, id_categoria, precio, volumen_ml, stock_actual, stock_minimo.

  *Tendrá una tabla llamada auditoria_precios*: Se almacenarán los registros de actualización de precios y de stock.

* **Categoria:** Aqui estarán alamcenadas las categorias registradas para las gaseosas .
  * *Datos requeridos:* id_categoria, id_gaseosa, nombre_categoria

* **Clientes:** Gestionará todo relacionado a los clientes de la distribuidora.
  * *Datos requeridos:* id_cliente, nombre, apellido, identificacion, direccion, telefono, correo_electronico

* **Sedes:** Llevará el control de todas las sedes de la distribuidora y de posibles dependiendo de la expansión de la empresa .
  * *Datos requeridos:* id_sede, nombre_sede, ubicacion, capacidad_almacenamiento, encargado.

* **Pedidos:** Será la tabla principal donde se unirán las sedes, clientes y sus productos, para llevar un mejor control .
  * *Datos requeridos:* id_pedido, fecha_pedido, id_cliente, id_sede, total_sin_iva, total_con_iva.

* **detalle_pedido:** Esta será una tabla intermedia con productos y pedidos para hacer que una relación N:M sea 1:N .
  * *Datos requeridos:* id_dp,id_pedido, id_producto, cantidad, subtotal.

## 🔗 3. Relaciones


* **Categoria - Productos (1:N):** Una categoria puede tener múltiples productos, pero el mismo producto no puede aparecer en múltpiles categorias.

* **Productos - detalle_pedido (1:N):** Un producto puede aparecer en múltiples registros de detalle, pero cada fila de detalle hace referencia a un solo producto.

* **Pedido - detalle_pedido (1:N):** Un pedido puede tener múltiples detalles de productos, pero cada fila de detalle pertenece a un solo pedido. 

* **Sedes - Pedidos (1:N):** Una sede puede despachar múltiples pedidos, pero un pedido no puede aparecer en múltiples sedes.

* **Clientes - Pedidos (1:N):** Un cliente puede realizar múltiples pedidos, pero dichos pedidos siempre harán referencia al cliente que los solicitó.

## 🛑 4. Reglas de Negocio

**1. FUNCIONES REQUERIDAS**
  - **Funcion para calcular el iva:** La base de datos debe contar con una función que sea capaz de calcular el iva de del pedido (19%) a partir de la suma de los subtotales.
  - **Funcion de alerta de stock:**  Retorna un mensaje indicando si hay suficiente stock antes de confirmar el pedido.

**2. TRIGGERS REQUERIDOS**
  - **Trigger para actualizar stock:**  Al insertar un detalle de pedido, descuenta automáticamente la cantidad vendida del stock.

  - **Trigger para auditar un cambio de precio:**  Al actualizar el campo precio en la tabla productos, registra la fecha, el precio anterior y el nuevo en una tabla auditoria_precios.

**3. CONSULTAS SQL REQUERIDAS**
  - Consultar los productos con stock por debajo del mínimo.
  - Consultar los pedidos realizados entre dos fechas (BETWEEN).
  - Listar los productos más vendidos (con JOIN y GROUP BY).
  - Mostrar clientes y la cantidad de pedidos realizados.
  - Buscar clientes por nombre parcial usando LIKE.
  - Consultar productos de ciertas categorías usando IN.
  - Mostrar el cliente con mayor número de pedidos (subconsulta).
  - Consultar pedidos y sus totales agrupados por sede.

**4. VISTAS REQUERIDAS**
  - **Vista de resumen y pedidos por sede:** Muestra la cantidad total de pedidos y ventas por sede.
  - **Vista de productos con bajo stock:** Lista productos con stock_actual <= stock_minimo.
  - **Vista de clientes activos:** Muestra clientes con al menos un pedido registrado.



