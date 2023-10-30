#!/bin/bash

# Verificamos que se hayan pasado al menos dos archivos como parámetro
if [ $# -lt 2 ]; then
  echo "Error: Debe especificar al menos dos archivos."
  exit 1
fi

# Obtenemos la fecha y hora actual
current_date_time=$(date +"%Y-%m-%d_%H-%M-%S")

# Creamos el nombre del archivo resultante
result_file="resultado_$(basename $0)_$current_date_time.txt"

# Unimos todos los archivos en uno solo
cat "$@" > "$result_file"

echo "Se han unido todos los archivos en un solo archivo llamado '$result_file'."
