#!/bin/bash
pwd 
ls -la

cd /scripts
echo "----- Se comienza a procesar scripts -----"
echo "----- PROCESANDO PARA MYSQL -----"
bash ./mysql/run.sh
echo "----- PROCESANDO PARA MONGO -----"
#sh ./mongo/run.sh
echo "----- Fin de ejecución de scripts -----"
