#!/bin/bash

export MYSQL_PWD=$MYSQL_PASSWORD
COMANDO="mysql -h $MYSQL_SERVER -u $MYSQL_USER  -P $MYSQL_PORT"
BASE_NAME="para_tp_final_caso_"

casos=(1 2 3)

ejecutar_consulta()
{
    nombre_archivo=$(basename "$2")
    echo "-- Ejecutando *$nombre_archivo* - Para el Caso *$1*"
    start_time=$(date +%s%N)
    cat $2 | $COMANDO $BASE_NAME$1 > /dev/null    
    end_time=$(date +%s%N)
    #echo "SHOW STATUS LIKE 'Handler_read%';" | $COMANDO
    elapsed=$((end_time - start_time))
    echo "Tiempo de ejecucion: $((elapsed / 1000000)) ms"
    echo " "
}

for i in "${casos[@]}"
do
    for archivo in /scripts/mysql/*.sql
    do
        ejecutar_consulta ${i} "$archivo"
    done
done 






