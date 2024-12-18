#!/bin/bash

#mongodb://root:lapass@localhost:27017/pruebas?authSource=admin
COMANDO="mongosh -u $MONGO_USER --authenticationDatabase admin --password $MONGO_PASSWORD --host $MONGO_SERVER --port $MONGO_PORT"
BASE_NAME="para_tp_final_caso_"

casos=(1 2 3)

ejecutar_consulta(){

    for i in "${casos[@]}"
    do
        nombre_archivo=$(basename "$1")
        echo "-- Ejecutando *$nombre_archivo* - Para el Caso *$i*"
        start_time=$(date +%s%N)
        $COMANDO  $BASE_NAME$3 --file=$1
        end_time=$(date +%s%N)
        elapsed=$((end_time - start_time))
        echo "Tiempo de ejecucion: $((elapsed / 1000000)) ms"
        echo " "
    done
}

for archivo in /scripts/mongo/*.js
do
        ejecutar_consulta "$archivo"
done
 

#mongo testdb --eval 'db.collection.find({ campo: "valor" }).explain("executionStats")'
#mongostat --host localhost --port 27017 --rowcount 1
#mongotop --host localhost --port 27017 --rowcount 1
#mongotop  -u $MONGO_USER --authenticationDatabase=admin --password=$MONGO_PASSWORD --host=$MONGO_SERVER --port=$MONGO_PORT 
#mongostat -u $MONGO_USER --authenticationDatabase=admin --password=$MONGO_PASSWORD --host=$MONGO_SERVER --port=$MONGO_PORT 
