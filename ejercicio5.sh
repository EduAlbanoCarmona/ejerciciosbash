#!/bin/bash

# Obtenemos la extensión del archivo
extension=$1

# Verificamos que se haya pasado una extensión
if [ -z "$extension" ]; then
  echo "Error: Debe especificar la extensión del archivo."
  exit 1
fi

# Obtenemos el nombre de usuario
user_name=$(whoami)

# Creamos un directorio temporal con el nombre del usuario
temp_dir="/tmp/$user_name"
mkdir "$temp_dir"

# Copiamos todos los archivos con la extensión especificada al directorio temporal
find . -name "*.$extension" -exec cp {} "$temp_dir" \;

echo "Se han copiado todos los archivos con extensión '.$extension' al directorio temporal '$temp_dir'."
