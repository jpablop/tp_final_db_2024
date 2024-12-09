#!/bin/bash

export MYSQL_PWD=$MYSQL_PASSWORD
COMANDO="mysql -h $MYSQL_SERVER -u $MYSQL_USER  -P $MYSQL_PORT"
BASE_NAME="para_tp_final_caso_"

casos=(1 2 3)

ejecutar_consulta(){
    echo "-- Ejecutando *Consulta #$1) - *$2* - Para el Caso *$3*"
    start_time=$(date +%s%N)
    $COMANDO $BASE_NAME$3 > /dev/null                                                                                                                                                     < $4
    end_time=$(date +%s%N)
    #echo "SHOW STATUS LIKE 'Handler_read%';" | $COMANDO
    elapsed=$((end_time - start_time))
    echo "Tiempo de *$2*  para  el caso *$3* fue: $((elapsed / 1000000)) ms"
    echo " "
}

for i in "${casos[@]}"
do
    ejecutar_consulta 1 "Select sin join sin group" ${i}    /scripts/mysql/consulta_1.sql
    #ejecutar_consulta 2 "Select sin join con group" ${i}    /scripts/mysql/consulta_2.sql
    #ejecutar_consulta 3 "Select con 1 join sin group " ${i} /scripts/mysql/consulta_3.sql
    #ejecutar_consulta 4 "Select con 1 join con group " ${i} /scripts/mysql/consulta_4.sql
    #ejecutar_consulta 5 "Select con 2 join sin group " ${i} /scripts/mysql/consulta_5.sql
    #ejecutar_consulta 6 "Select con 2 join con group " ${i} /scripts/mysql/consulta_6.sql

done 






