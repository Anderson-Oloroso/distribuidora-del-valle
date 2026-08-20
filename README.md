# Distribuidora Del Valle S.A. 🥤

## Contenido

- [📋 Descripción](#-descripción)
- [� Modelo Entidad-Relación](#-modelo-entidad-relación)
- [🛠️ Tecnologías](#️-tecnologías)
- [🗄️ Estructura de la base de datos](#️-estructura-de-la-base-de-datos)
- [⚙️ Funciones y Triggers](#️-funciones-y-triggers)
- [📊 Ejemplos de Consultas](#-ejemplos-de-consultas)
- [🚀 Recomendaciones para Expansión](#-recomendaciones-para-expansión)
- [👥 Usuarios y roles](#-usuarios-y-roles)
- [📁 Estructura del proyecto](#-estructura-del-proyecto)
- [👨‍💻 Autor](#-autor)

## 📋 Descripción

Este proyecto es una solución para la gestión de datos y planes de expansión de la empresa de gaseosas **Distribuidora Del Valle S.A.** 

Se implementó un modelo de datos normalizado capaz de almacenar, gestionar y proteger los datos de la empresa. El diseño cumple con la **Tercera Forma Normal (3FN)**, garantizando la eliminación de redundancias e integridad referencial.

**Características principales:**
- Modelo de datos normalizado en 3FN
- Seguridad mediante usuarios y roles específicos
- Funciones almacenadas para operaciones complejas
- Triggers para mantener integridad de datos
- Vistas para acceso simplificado a la información

## � Modelo Entidad-Relación

Para visualizar el diagrama completo del Modelo Entidad-Relación, consulta:

📁 [**diagrams/MER/drwio_distribuidora_del_valle.svg**](diagrams/MER/drwio_distribuidora_del_valle.svg)

El modelo incluye 8 entidades principales: Categorías, Productos, Clientes, Sedes, Encargados, Pedidos, Detalle_Pedidos y Auditoria_Precios, todas relacionadas bajo el patrón 1:N normalizado en 3FN.

## 🛠️ Tecnologías

- **Base de datos:** MySQL
- **Cliente SQL:** MySQL Workbench
- **Lenguaje:** SQL
- **Herramientas de diseño:** Draw.io, DrawDB
- **Control de versiones:** Git / Github
- **Editor:** Visual Studio Code

## 🗄️ Estructura de la base de datos

La base de datos incluye:
- **Tablas:** Estructura normalizada en 3FN
- **Funciones:** Procedimientos almacenados para operaciones especializadas
- **Triggers:** Reglas automáticas para mantener integridad de datos
- **Vistas:** Acceso simplificado y seguro a la información
## ⚙️ Funciones y Triggers

### Funciones Almacenadas

1. **`fn_calcular_total_con_iva()`** - Calcula el total con IVA (12%) a partir de los subtotales de un pedido
2. **`fn_validar_stock()`** - Valida la disponibilidad de stock antes de confirmar una venta

📄 [**Ver especificación completa en analysis/requirements.md**](analysis/requirements.md#1-funciones-requeridas)
📝 [**Ver código fuente en script/ddl/functions.sql**](script/ddl/functions.sql)

### Triggers

1. **`tr_actualizar_stock`** - Descuenta automáticamente el stock al insertar un detalle de pedido
2. **`tr_auditar_cambio_precio`** - Registra cambios de precios en la tabla de auditoría

📄 [**Ver especificación completa en analysis/requirements.md**](analysis/requirements.md#2-triggers-requeridos)
📝 [**Ver código fuente en script/ddl/triggers.sql**](script/ddl/triggers.sql)

## 📊 Ejemplos de Consultas

Se han implementado 8 consultas SQL optimizadas para análisis y reportes del negocio:

📸 [**Ver resultados y capturas en evidences/queries.png**](evidences/queries.png)

**Consultas principales:**
1. Productos con stock por debajo del mínimo
2. Consultar pedidos entre dos fechas (BETWEEN)
3. Productos más vendidos (JOIN + GROUP BY)
4. Clientes y cantidad de pedidos realizados
5. Buscar clientes por nombre parcial (LIKE)
6. Productos de categorías específicas (IN)
7. Cliente con mayor número de pedidos (Subconsulta)
8. Pedidos y totales agrupados por sede

## 🚀 Recomendaciones para Expansión

En base al nuevo modelado de datos, este modelo queda excelente para sus planes de expansión en todo el país debido a que la normalización implementada tiene la capacidad de registrar nuevas sedes, nuevos usuarios, y los pedidos sin necesidad de hacer cambios adicionales y una nueva refactorización de la base de datos. La estructura actual permite agregar nuevas sucursales, ampliar la cobertura geográfica y escalar operaciones manteniendo la integridad referencial y sin comprometer el rendimiento del sistema.

## � Usuarios y roles

Se han creado **3 usuarios principales** con permisos específicos:

| Usuario | Rol | Responsabilidades |
|---------|-----|------------------|
| Agente de ventas | Sales Agent | Gestión de ventas y clientes |
| Gestor de inventarios | Inventory Manager | Control de inventario y stock |
| Auditor fiscal | Fiscal Auditor | Revisión y auditoría de datos |

Cada usuario tiene permisos limitados según su rol, garantizando seguridad y segregación de funciones.

## 📁 Estructura del proyecto

```
distribuidora-del-valle/
├── 📁 analysis/
│   └── requirements.md              # Análisis de requerimientos
├── 📁 diagrams/
│   ├── 📁 MER/
│   │   └── drwio_distribuidora_del_valle.svg   # Modelo Entidad-Relación
│   ├── 📁 MLD/
│   │   └── dDB_distribuidora_del_valle.svg     # Modelo Lógico de Datos
│   └── 📁 MFD/
│       └── wkb_distribuidora_del_valle.svg     # Modelo Físico de Datos
├── 📁 evidences/
│   ├── create_users.png             # Creación de usuarios
│   ├── create-db.png                # Creación de BD
│   ├── functions.png                # Creación de funciones
│   ├── insert-data.png              # Inserción de datos
│   ├── queries.png                  # Consultas ejecutadas
│   ├── triggers.png                 # Creación de triggers
│   └── views.png                    # Creación de vistas
├── 📁 script/
│   ├── 📁 dcl/
│   │   └── users.sql                # Usuarios y permisos
│   ├── 📁 ddl/
│   │   ├── db.sql                   # Creación de BD y tablas
│   │   ├── functions.sql            # Funciones almacenadas
│   │   ├── triggers.sql             # Triggers
│   │   └── views.sql                # Vistas
│   ├── 📁 dml/
│   │   └── insert.sql               # Datos iniciales
│   └── 📁 dql/
│       └── query.sql                # Consultas de prueba
└── README.md                         # Este archivo
```

## 👨‍💻 Autor
- **Henrik Anderson Oloroso García**

### Ultima modificación: _19/08/2026_