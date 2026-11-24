FROM postgres:16
# Los scripts en esta carpeta se ejecutan al crear la base por primera vez
COPY init.sql /docker-entrypoint-initdb.d/init.sql
EXPOSE 5432
