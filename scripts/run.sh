#!/bin/bash

echo "**************************************************************"
echo "***************** Se comienza a procesar scripts *************"
echo "**************************************************************"

echo "----- PROCESANDO PARA MYSQL -----"
bash /scripts/mysql/run.sh
echo "----- FIN PROCESO PARA MYSQL -----"
echo "  "
echo "  "
echo "----- PROCESANDO PARA MONGODB -----"
bash /scripts/mongo/run.sh
echo "----- FIN PROCESO PARA MONGODB -----"

echo "**************************************************************"
echo "***************** Fin de ejecución de scripts ****************"
echo "**************************************************************"
