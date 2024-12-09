#!/bin/bash

export MYSQL_PWD=$MYSQL_PASSWORD
COMANDO="mysql -h $MYSQL_SERVER -u $MYSQL_USER  -P $MYSQL_PORT"
BASE_NAME="para_tp_final_caso_"

casos=(1 2 3)
for i in "${casos[@]}"
do
    echo "---- Reiniciando la  base de datos mysql para caso *${i}*"
    echo "-- Descomprimiendo dump sql"
    gunzip --keep /datos/mysql/caso_$i.sql.gz
    echo "-- Se elimina la base $BASE_NAME$i si existe previamiente"
    echo "DROP DATABASE IF EXISTS $BASE_NAME$i" | $COMANDO
    echo "-- Se crea la base $BASE_NAME$i"
    echo "CREATE DATABASE $BASE_NAME$i" | $COMANDO
    echo "-- Se comienza  insertar el dump sql en $BASE_NAME$i"
    start_time=$(date +%s%N)
    $COMANDO $BASE_NAME$i < /datos/mysql/caso_$i.sql
    end_time=$(date +%s%N)
    elapsed=$((end_time - start_time))
    echo "Tiempo de carga  para  caso  *$i* fue: $((elapsed / 1000000)) ms"
    rm /datos/mysql/caso_$i.sql
done 






