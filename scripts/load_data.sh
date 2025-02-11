#!/bin/bash
echo "**************************************************************"
echo "***************** Se comienza a generar las bases ************"
echo "**************************************************************"

echo "----- CARGANDO DATOS PARA MYSQL -----"
bash /scripts/mysql/load_data.sh
echo "----- FIN CARGA DATOS PARA MYSQL -----"

echo "----- CANGANDO DATOS PARA MONGODDB -----"
bash /scripts/mongo/load_data.sh
echo "----- FIN CARGA DATOS PARA MONGODDB -----"

echo "**************************************************************"
echo "***************** Fin de la generación de las bases **********"
echo "**************************************************************"
