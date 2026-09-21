# Data Analytics Coderhouse

## Módulo 3 – Creando la base de datos Ventas Tech DB

Este repositorio contiene la entrega del Módulo 3 del curso de Data Analytics. El objetivo es crear una base de datos relacional para registrar clientes, categorías, productos y ventas de una empresa de tecnología.

## Modelo de datos

La base de datos `Ventas_Tech_DB` está formada por cuatro tablas:

* `categorias`: almacena las categorías de los productos.
* `clientes`: contiene la información de los clientes.
* `productos`: registra los productos y su categoría.
* `ventas`: almacena las ventas y las relaciona con clientes y productos.

Las relaciones del modelo son:

* Una categoría puede tener muchos productos.
* Un cliente puede realizar muchas ventas.
* Un producto puede aparecer en muchas ventas.

Las claves primarias y foráneas permiten mantener la integridad de las relaciones entre las tablas.

## Contenido del script

El archivo `Modulo 3/ventas_tech_db.sql` incluye:

* Creación de la base de datos.
* Creación de las cuatro tablas.
* Definición de claves primarias y foráneas.
* Restricciones `NOT NULL`, `UNIQUE` y `DEFAULT`.
* Carga inicial de datos.
* Consultas finales de validación.

## Cómo ejecutar el script

1. Abrir Microsoft SQL Server Management Studio.
2. Conectarse a una instancia de SQL Server.
3. Abrir el archivo `Modulo 3/ventas_tech_db.sql`.
4. Ejecutar el script completo.
5. Verificar la creación de las tablas `categorias`, `clientes`, `productos` y `ventas`.

## Autora

Brenda Camila Espindola
