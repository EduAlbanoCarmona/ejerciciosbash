#!/bin/bash

# Verificamos que se haya pasado un parámetro
if [ $# -lt 1 ]; then
  echo "Error: Debe especificar el nombre de una carpeta."
  exit 1
fi

# Obtenemos la fecha y hora actual
current_date_time=$(date +"%Y-%m-%d_%H-%M-%S")

# Creamos el nombre del archivo comprimido
compressed_file="backup_$(basename $1)_$current_date_time.tar.gz"

# Comprimimos la carpeta
tar -czvf "$compressed_file" "$1"

echo "Se ha creado un archivo comprimido de la carpeta '$1' llamado '$compressed_file'."
