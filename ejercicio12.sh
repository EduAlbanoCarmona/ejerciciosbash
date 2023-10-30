#!/bin/bash

# Iteramos sobre cada nombre de archivo pasado como parámetro
for filename in "$@"; do
  # Verificamos si el archivo existe y es un archivo común con extensión .txt
  if [ -f "$filename" ] && [ "${filename##*.}" == "txt" ]; then
    # Mostramos el contenido del archivo paginando a través de less
    less "$filename"
  else
    # Si el archivo no existe o no tiene la extensión correcta, mostramos un mensaje de error
    echo "Error: $filename no es un archivo común o no tiene extensión .txt"
  fi
done
