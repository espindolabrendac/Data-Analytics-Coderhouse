# Data Analytics - Coderhouse | Proyecto RetailPro

Este repositorio reúne las entregas del curso **Data Analytics de Coderhouse**, desde la construcción de una base de datos relacional hasta el análisis y la documentación del proyecto.

## Descripción del proyecto
**RetailPro** analiza operaciones comerciales de una tienda de tecnología. La base SQL utilizada en los módulos 3 a 5 es `Ventas_Tech_DB` y contiene las tablas **`categorias`, `clientes`, `productos` y `ventas`**. El objetivo es obtener información confiable sobre facturación, pedidos, productos y clientes y facilitar la continuidad del trabajo por otros analistas.

No se presume una tabla `territorios` dentro de esta base SQL: si se requiere un análisis territorial, primero deberá verificarse una fuente que incluya ese dato.

## Modelo relacional
- Una categoría puede contener varios productos: `categorias` (1) → `productos` (N).
- Un cliente puede registrar varias ventas: `clientes` (1) → `ventas` (N).
- Un producto puede intervenir en varias ventas: `productos` (1) → `ventas` (N).

Las claves primarias y foráneas garantizan la vinculación entre las tablas según el diseño de la base.

## Estructura y archivos principales

```text
Data-Analytics-Coderhouse/
├── RetailPro/
│   ├── ventas_tech_db.sql        # M3: esquema y carga inicial
│   ├── m4_consultas_negocio.sql  # M4: agregaciones y métricas comerciales
│   └── m5_consultas_joins.sql    # M5: INNER JOIN, LEFT JOIN y UNION ALL
├── Modulo 8/
│   └── Espindola_Brenda_Checkpoint2.pbix  # Modelo y medidas en Power BI
└── README.md
```

La estructura muestra los archivos principales relevantes para este proyecto; el repositorio también puede contener otros entregables.

## Herramientas utilizadas
- **Microsoft SQL Server** y **SQL Server Management Studio (SSMS)**: ejecutar, consultar y validar la base de datos.
- **SQL Server / T-SQL**: `SUM`, `COUNT`, `AVG`, `GROUP BY`, `HAVING`, `CASE`, `INNER JOIN`, `LEFT JOIN` y `UNION ALL`.
- **Power Query y Power BI Desktop**: preparación de datos, relaciones, medidas DAX y validación del modelo en módulos posteriores.
- **GitHub**: almacenamiento, historial y publicación de los archivos.
- **ChatGPT**: apoyo para revisar SQL, proponer documentación e identificar hallazgos; las sugerencias se contrastaron con las consultas y resultados originales.

## Cómo ejecutar los scripts SQL (en orden)
1. Abrir **SQL Server Management Studio (SSMS)** y conectarse a una instancia de Microsoft SQL Server con permisos suficientes para crear una base.
2. Abrir `RetailPro/ventas_tech_db.sql`, ejecutarlo y comprobar que se crearon `Ventas_Tech_DB` y las cuatro tablas; verificar la carga de registros.
3. Abrir `RetailPro/m4_consultas_negocio.sql`. Confirmar que la consulta utilice `Ventas_Tech_DB`, seleccionar cada `SELECT` y ejecutarlo para revisar los resultados de resumen mensual, ranking, clientes recurrentes y comparación con el promedio.
4. Abrir `RetailPro/m5_consultas_joins.sql` y ejecutar cada consulta por separado para validar la vista base, los casos sin ventas y el consolidado ilustrativo con `UNION ALL`.
5. Revisar cualquier error de ejecución y contrastar los resultados antes de reutilizar los datos en otro informe. La carga inicial puede modificarse y cambiar los importes.

**Importante:** los módulos 4 y 5 requieren haber creado y cargado correctamente la base del módulo 3. Los scripts están escritos para **SQL Server**, por ejemplo utilizan `TOP 5` y `MONTH()`.

## Qué analiza cada módulo

### Módulo 3 — Base de datos
Creación de tablas, restricciones, relaciones y carga inicial de registros.

### Módulo 4 — Consultas de negocio
Resumen mensual de facturación, cantidad de pedidos y ticket promedio; ranking de productos por facturación; clientes recurrentes y comparación frente al promedio mensual.

### Módulo 5 — Cruce de tablas
Vista base con tres `INNER JOIN` para vincular ventas, clientes, productos y categorías; `LEFT JOIN` para detectar clientes o productos sin ventas; uso de `UNION ALL` para consolidar dos subconjuntos.

### Módulos posteriores — Power BI
Se trabajó con transformaciones en Power Query y modelado/medidas en Power BI Desktop. El archivo PBIX del Módulo 8 se encuentra en la carpeta `Modulo 8`. El origen específico del PBIX debe revisarse dentro del archivo, sin asumir que las consultas SQL de M3-M5 son idénticas a sus tablas de Power BI.

## Resultados de referencia del Módulo 4
En la ejecución documentada de `Ventas_Tech_DB`, la Consulta 1 devuelve para **marzo** una facturación de **6.444,00**, **10 pedidos** y un **ticket promedio de 644,40**. La Consulta 2 muestra que el **producto 1** genera **3.600,00** (aproximadamente el **55,9 %** de ese total), mientras que el producto 2 registra **13 unidades** y **364,00** de facturación.

Estos importes pertenecen a la ejecución observada y pueden cambiar si cambia la carga de datos.

## Alcance y controles de interpretación
- La Consulta 1 de M4 utiliza `MONTH(fecha_venta)` sin agrupar por año. Por eso, si hubiera registros del mismo mes en varios años, se combinarían; no puede inferirse una tendencia interanual con esa salida.
- El ranking de M4 identifica productos mediante `id_producto`. Para mostrar nombres se necesita un cruce adicional con `productos`.
- En la Consulta 4 de M5, la columna llamada `canal` representa **dos períodos de marzo**, porque la tabla SQL `ventas` no tiene un canal real. **No debe interpretarse como una comparación Online vs. Presencial**.
- Facturación no es lo mismo que rentabilidad: no se calcularon márgenes porque estas consultas no aportan todos los costos requeridos.
- Las propuestas de IA se revisan técnicamente; no sustituyen la ejecución y validación humana de las consultas.

## Autora
**Brenda Camila Espindola** — Data Analytics, Coderhouse.
