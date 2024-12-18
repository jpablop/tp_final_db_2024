#!/bin/bash

export MYSQL_PWD=$MYSQL_PASSWORD
COMANDO="mysql -h $MYSQL_SERVER -u $MYSQL_USER  -P $MYSQL_PORT"
BASE_NAME="para_tp_final_caso_"

casos=(1 2 3)

ejecutar_consulta(){
    for i in "${casos[@]}"
    do
        nombre_archivo=$(basename "$1")
        echo "-- Ejecutando *$nombre_archivo* - Para el Caso *$i*"
        start_time=$(date +%s%N)
        cat $1 | $COMANDO $BASE_NAME$i > /dev/null    
        end_time=$(date +%s%N)
        elapsed=$((end_time - start_time))
        echo "Tiempo de ejecucion: $((elapsed / 1000000)) ms"
        echo " "
    done
}


for archivo in /scripts/mysql/*.sql
do
    ejecutar_consulta $archivo
done

