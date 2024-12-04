#!/bin/bash

start_time=$(date +%s%N)
mongo testdb --eval 'db.collection.find({ campo: "valor" }).explain("executionStats")'
mongostat --host localhost --port 27017 --rowcount 1
mongotop --host localhost --port 27017 --rowcount 1
end_time=$(date +%s%N)

elapsed=$((end_time - start_time))
echo "Tiempo de ejecución MongoDB: $((elapsed / 1000000)) ms"