#!/bin/bash

# Obtenemos el nombre del directorio pasado como parámetro
dirname="$1"

# Verificamos si el directorio existe y es un directorio
if [ -d "$dirname" ]; then
  # Mostramos los nombres de todos los directorios y subdirectorios bajo el directorio en formato largo
  find "$dirname" -type d -ls
else
  # Si el directorio no existe, mostramos un mensaje de error
  echo "Error: $dirname no es un directorio existente"
fi
