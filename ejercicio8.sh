#!/bin/bash

# Verificamos que se haya pasado un parámetro
if [ $# -lt 1 ]; then
  echo "Error: Debe especificar un número de MB."
  exit 1
fi

# Convertimos el número de MB en bytes
bytes=$(($1 * 1024 * 1024))

echo "$1 MB son $bytes bytes."
