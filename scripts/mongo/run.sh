#!/bin/bash

#mongodb://root:lapass@localhost:27017/pruebas?authSource=admin
COMANDO="mongosh -u $MONGO_USER --authenticationDatabase admin --password $MONGO_PASSWORD --host $MONGO_SERVER --port $MONGO_PORT"
BASE_NAME="para_tp_final_caso_"

casos=(1 2 3)

ejecutar_consulta(){
    echo "-- Ejecutando *Consulta #$1) - *$2* - Para el Caso *$3*"
    start_time=$(date +%s%N)
    $COMANDO  $BASE_NAME$3 --file=$4
    end_time=$(date +%s%N)
    elapsed=$((end_time - start_time))
    echo "Tiempo de *$2*  para  el caso *$3* fue: $((elapsed / 1000000)) ms"
    echo " "
}

for i in "${casos[@]}"
do
    ejecutar_consulta 1 "Select sin join sin group" ${i}    /scripts/mongo/consulta_1.js
    #ejecutar_consulta 2 "Select sin join con group" ${i}    /scripts/mongo/consulta_2.js
    #ejecutar_consulta 3 "Select con 1 join sin group " ${i} /scripts/mongo/consulta_3.js
    #ejecutar_consulta 4 "Select con 1 join con group " ${i} /scripts/mongo/consulta_4.js
    #ejecutar_consulta 5 "Select con 2 join sin group " ${i} /scripts/mongo/consulta_5.js
    #ejecutar_consulta 6 "Select con 2 join con group " ${i} /scripts/mongo/consulta_6.js

done 




#mongo testdb --eval 'db.collection.find({ campo: "valor" }).explain("executionStats")'
#mongostat --host localhost --port 27017 --rowcount 1
#mongotop --host localhost --port 27017 --rowcount 1
#mongotop  -u $MONGO_USER --authenticationDatabase=admin --password=$MONGO_PASSWORD --host=$MONGO_SERVER --port=$MONGO_PORT 
#mongostat -u $MONGO_USER --authenticationDatabase=admin --password=$MONGO_PASSWORD --host=$MONGO_SERVER --port=$MONGO_PORT 
