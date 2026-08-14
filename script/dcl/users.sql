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

-- =============================================
-- Crear usuario de gestion de inventario
-- =============================================
CREATE USER 'gestor_inventario'@'localhost' IDENTIFIED BY 'GesTor_Inv@456';

GRANT SELECT, INSERT, UPDATE ON distribuidora_del_valle.productos TO 'gestor_inventario'@'localhost';
GRANT SELECT, INSERT, UPDATE ON distribuidora_del_valle.categorias TO 'gestor_inventario'@'localhost';

GRANT SELECT ON distribuidora_del_valle.sedes TO 'gestor_inventario'@'localhost';

FLUSH PRIVILEGES;

-- ==============================================
-- Crear usuario de auditoria fiscal
-- ==============================================
CREATE USER 'auditor_fiscal'@'localhost' IDENTIFIED BY 'AuDit_Fic4l@';

GRANT SELECT ON distribuidora_del_valle.productos TO 'auditar_fiscal'@'localhost';
GRANT SELECT ON distribuidora_del_valle.pedidos TO 'auditor_fiscal'@'localhost';
GRANT SELECT ON distribuidora_del_valle.auditoria_precios TO 'auditor_fiscal'@'localhost';

FLUSH PRIVILEGES;