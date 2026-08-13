# Distribuidora Del Valle S.A. 🥤

## Contenido

- [📋 Descripción](#-descripción)
- [📋 Requisitos](#-requisitos)
- [🚀 Instalación y ejecución](#-instalación-y-ejecución)
- [🛠️ Tecnologías](#️-tecnologías)
- [📁 Estructura del proyecto](#-estructura-del-proyecto)
- [🗄️ Estructura de la base de datos](#️-estructura-de-la-base-de-datos)
- [👥 Usuarios y roles](#-usuarios-y-roles)
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

## 📋 Requisitos

- MySQL Server 
- MySQL Workbench o cliente SQL compatible
- Archivos SQL incluidos en el repositorio
- Git/Github (para clonar el repositorio)

## 🚀 Instalación y ejecución

### ⚙️ Pasos de instalación

1. **Clonar el repositorio:**
   ```bash
   git clone https://github.com/Anderson-Oloroso/distribuidora-del-valle.git
   cd distribuidora-del-valle
   ```

2. **Abrir MySQL Workbench** o tu cliente SQL preferido

3. **Ejecutar los scripts en el siguiente orden:**

   **a) Crear la base de datos y tablas:**
   ```sql
   script/ddl/db.sql
   ```

   **b) Insertar datos iniciales:**
   ```sql
   script/dml/insert.sql
   ```

   **c) Crear funciones almacenadas:**
   ```sql
   script/ddl/functions.sql
   ```

   **d) Crear triggers:**
   ```sql
   script/ddl/triggers.sql
   ```

   **e) Crear vistas:**
   ```sql
   script/ddl/views.sql
   ```

   **f) Crear usuarios y permisos:**
   ```sql
   script/dcl/users.sql
   ```

4. **Ejecutar consultas de prueba:**
   ```sql
   script/dql/query.sql
   ```

5. **Verificar:** Comprueba que la base de datos, tablas, funciones y vistas se crearon correctamente.

## 🛠️ Tecnologías

- **Base de datos:** MySQL
- **Cliente SQL:** MySQL Workbench
- **Lenguaje:** SQL
- **Herramientas de diseño:** Draw.io, DrawDB
- **Control de versiones:** Git / Github
- **Editor:** Visual Studio Code

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

## 🗄️ Estructura de la base de datos

La base de datos incluye:
- **Tablas:** Estructura normalizada en 3FN
- **Funciones:** Procedimientos almacenados para operaciones especializadas
- **Triggers:** Reglas automáticas para mantener integridad de datos
- **Vistas:** Acceso simplificado y seguro a la información

## � Usuarios y roles

Se han creado **3 usuarios principales** con permisos específicos:

| Usuario | Rol | Responsabilidades |
|---------|-----|------------------|
| Agente de ventas | Sales Agent | Gestión de ventas y clientes |
| Gestor de inventarios | Inventory Manager | Control de inventario y stock |
| Auditor fiscal | Fiscal Auditor | Revisión y auditoría de datos |

### Crear conexiones para los usuarios

Después de ejecutar el script de usuarios (`script/dcl/users.sql`), es necesario crear las 3 conexiones en MySQL Workbench para cada usuario:

1. **Agente de ventas** - Gestiona ventas y clientes
2. **Gestor de inventarios** - Controla inventario y stock
3. **Auditor fiscal** - Realiza revisión y auditoría de datos

Cada usuario tiene permisos limitados según su rol, garantizando seguridad y segregación de funciones.

## �👨‍💻 Autor
- **Henrik Anderson Oloroso García**

### Ultima modificación: