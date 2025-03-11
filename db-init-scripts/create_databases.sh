#!/bin/bash
set -e

# Este script se ejecuta automáticamente al iniciar el contenedor,
# gracias al volumen /docker-entrypoint-initdb.d.

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE DATABASE course_db;
    CREATE DATABASE group_db;
    CREATE DATABASE survey_db;
    CREATE DATABASE user_db;
EOSQL
