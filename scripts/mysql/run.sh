#!/bin/bash

COMANDO="mysql -h $MYSQL_SERVER -u $MYSQL_USER --password=$MYSQL_PASSWORD -P 3306"

casos=('1000' '100000' '10000000')

for i in "${casos[@]}"
do

echo "--Borrando bases de datos mysql para casos ${i}"
echo "DROP DATABASE IF EXISTS caso_${i};" | $COMANDO

start_time=$(date +%s%N)
echo "CREATE DATABASE caso_${i};" | $COMANDO
echo "SHOW STATUS LIKE 'Handler_read%';" | $COMANDO
end_time=$(date +%s%N)

elapsed=$((end_time - start_time))
echo "Tiempo de ejecución MySQL: $((elapsed / 1000000)) ms"

done
