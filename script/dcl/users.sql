-- =====================================
-- Crear usuario de agente de ventas
-- =====================================
CREATE USER 'agente_ventas'@'localhost' IDENTIFIED BY 'AgEnt@Vent45_';

GRANT SELECT, INSERT, UPDATE ON distribuidora_del_valle.pedidos TO 'agente_ventas'@'localhost';
GRANT SELECT, INSERT, UPDATE ON distribuidora_del_valle.clientes TO 'agente_ventas'@'localhost';

GRANT SELECT ON distribuidora_del_valle.productos TO 'agente_ventas'@'localhost';
GRANT SELECT ON distribuidora_del_valle.categorias TO 'agente_ventas'@'localhost';
GRANT SELECT ON distribuidora_del_valle.sedes TO 'agente_ventas'@'localhost';

FLUSH PRIVILEGES;

