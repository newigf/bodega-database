# Bodega Online - Base de datos
Esquema y datos iniciales de PostgreSQL (tablas productos y pedidos).

## Ejecutar con Docker
    docker build -t bodega-database .
    docker run -p 5432:5432 -e POSTGRES_PASSWORD=postgres -e POSTGRES_DB=bodega bodega-database
