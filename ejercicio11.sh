#!/bin/bash

if [ $# -ne 2 ]; then
  echo "Error: debes proporcionar dos nombres de archivo como parámetros"
  exit 1
fi

file1=$1
file2=$2

if [ "$file1" -nt "$file2" ]; then
  echo "El archivo $file1 es más moderno que $file2"
elif [ "$file1" -ot "$file2" ]; then
  echo "El archivo $file2 es más moderno que $file1"
else
  echo "Los archivos $file1 y $file2 tienen la misma fecha de modificación"
fi
