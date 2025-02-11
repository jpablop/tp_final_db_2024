# tp_final_db_2024

1) clonar repositorio GIT e ingresar a la carpeta
2) ejecutar 
    docker-compose up -d --build
3) ingresar al contenedor 
    docker-componse exec client bash
4) La primera vez sera necesario generar las BDs correspondientes donde ejecutaran las las consultas de prueba. Para ello ejecutar:
    bash /scripts/load_data.sh
Tambien es necesario regenerarlas si se vuelven a correr las consultas, dado que las mismas realizan cambios en las bases y volver a ejecutarlas no seria sobre el mismo conjunto de datos.
5) Ejecutar script que ejecuta todos los caso sde prueba y muestra resultados de tiempo consumido:
    bash /scripts/run.sh

Si lo desea, se puede guardar la salida en un archivo para tenerla afuera del contenedor
    bash /scripts/run.sh > /salidas/mi_salida.txt
El archivo mi_salida.txt quedara disponible en la carpeta "salidas" del proyecto clonado en 1)



INFORME FINAL: https://docs.google.com/document/d/1EYGlQSRWiJlhErq7zwi52t_V4YFmbbZC8gkhf__bv7Q/edit?usp=sharing
