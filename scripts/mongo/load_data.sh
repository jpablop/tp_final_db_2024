#!/bin/bash

COMANDO_DUMP="mongodump -u $MONGO_USER -p $MONGO_PASSWORD -h $MONGO_SERVER --port=$MONGO_PORT --authenticationDatabase=admin --gzip -d BASE --archive=archivo"
COMANDO="mongorestore -u $MONGO_USER -p $MONGO_PASSWORD -h $MONGO_SERVER --port=$MONGO_PORT  --authenticationDatabase=admin --drop --gzip" 
BASE_NAME="para_tp_final_caso_"

casos=(1 2 3)
for i in "${casos[@]}"
do
    echo "--- Reiniciando la  base de datos MongoDB para caso ${i}"
    start_time=$(date +%s%N)
    $COMANDO --archive=/datos/mongo/caso_$i.bin
    end_time=$(date +%s%N)
    elapsed=$((end_time - start_time))
    echo "Tiempo de carga  para  caso  *$i* fue: $((elapsed / 1000000)) ms"
done 





