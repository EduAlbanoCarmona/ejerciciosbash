#!/bin/bash

# Recibimos los dos parámetros
file_name=$1
directory=$2

# Formamos la ruta completa
full_path="$directory/$file_name"

# Comprobamos si el archivo existe
if [ -f "$full_path" ]; then
  echo "$full_path existe"
else
  echo "$full_path no existe"
fi
