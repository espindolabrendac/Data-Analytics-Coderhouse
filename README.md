# Data Analytics - Coderhouse | Proyecto RetailPro

Este repositorio contiene las entregas realizadas durante el curso de **Data Analytics de Coderhouse**.

El proyecto **RetailPro** consiste en el desarrollo de una base de datos relacional para una empresa de tecnología, con el objetivo de registrar y analizar información relacionada con clientes, categorías, productos y ventas.

A lo largo de los módulos se trabajó en la creación de la base de datos, consultas SQL orientadas al análisis de negocio y combinación de información entre distintas tablas.

---

## Modelo de datos

La base de datos `Ventas_Tech_DB` está formada por cuatro tablas:

- `categorias`: almacena las categorías de los productos.
- `clientes`: contiene la información de los clientes.
- `productos`: registra los productos y su categoría.
- `ventas`: almacena las ventas y las relaciona con clientes y productos.

### Relaciones del modelo

- Una categoría puede tener muchos productos.
- Un cliente puede realizar muchas ventas.
- Un producto puede aparecer en muchas ventas.

Las claves primarias y foráneas permiten mantener la integridad de las relaciones entre las tablas.

---

# Módulo 3 - Creación de la base de datos

En el Módulo 3 se desarrolló la estructura inicial de la base de datos `Ventas_Tech_DB`.

## Contenido del script

El archivo `RetailPro/ventas_tech_db.sql` incluye:

- Creación de la base de datos.
- Creación de las cuatro tablas.
- Definición de claves primarias y foráneas.
- Restricciones `NOT NULL`, `UNIQUE` y `DEFAULT`.
- Carga inicial de datos.
- Consultas finales de validación.

## Cómo ejecutar el script

1. Abrir Microsoft SQL Server Management Studio.
2. Conectarse a una instancia de SQL Server.
3. Abrir el archivo `RetailPro/ventas_tech_db.sql`.
4. Ejecutar el script completo.
5. Verificar la creación de las tablas `categorias`, `clientes`, `productos` y `ventas`.

---

# Módulo 4 - Consultas SQL de negocio

En el Módulo 4 se desarrollaron consultas SQL orientadas a responder distintas preguntas de negocio utilizando la información almacenada en `Ventas_Tech_DB`.

Se trabajó con:

- Resumen mensual de ventas.
- Cálculo de facturación.
- Cantidad de operaciones.
- Cálculo de ticket promedio.
- Ranking de productos según unidades vendidas y facturación.
- Identificación de clientes recurrentes.
- Comparación de la facturación mensual con el promedio general.
- Agrupación y filtrado de información.

Para realizar los análisis se utilizaron distintas herramientas y funciones de SQL, entre ellas:

- `SUM`
- `COUNT`
- `AVG`
- `GROUP BY`
- `HAVING`
- `CASE`
- CTE (Common Table Expressions)

## Archivo del Módulo 4

`RetailPro/m4_consultas_negocio.sql`

---

# Módulo 5 - Cruce de tablas y JOINs

En el Módulo 5 se avanzó en el análisis relacional de la base de datos mediante la combinación de información proveniente de diferentes tablas.

El objetivo fue enriquecer el análisis de ventas utilizando las relaciones existentes entre clientes, productos, categorías y operaciones.

Se trabajó con:

- Uso de `INNER JOIN`.
- Uso de `LEFT JOIN`.
- Relación entre tablas mediante claves primarias y foráneas.
- Combinación de información de ventas, clientes, productos y categorías.
- Obtención de información consolidada para el análisis.
- Identificación de clientes que no registraron compras.
- Identificación de productos del catálogo que no registraron movimientos.
- Consultas orientadas a responder preguntas de negocio mediante JOINs.

Estas consultas permiten obtener una visión más completa de la información almacenada y preparar los datos para futuros análisis y visualizaciones.

## Archivo del Módulo 5

`RetailPro/m5_consultas_joins.sql`

---

# Estructura del repositorio

```text
Data-Analytics-Coderhouse/
│
├── RetailPro/
│   ├── ventas_tech_db.sql
│   ├── m4_consultas_negocio.sql
│   └── m5_consultas_joins.sql
│
└── README.md
```

---

# Herramientas utilizadas

- SQL
- Microsoft SQL Server
- SQL Server Management Studio
- GitHub

---

# Autora

**Brenda Camila Espindola**
