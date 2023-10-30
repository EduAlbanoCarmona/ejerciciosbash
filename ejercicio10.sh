#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Error: debes proporcionar un nombre de archivo como parámetro"
  exit 1
fi

file=$1

if [ -r "$file" ]; then
  echo "El archivo $file es legible."
else
  echo "El archivo $file no es legible."
fi

if [ -w "$file" ]; then
  echo "El archivo $file es modificable."
else
  echo "El archivo $file no es modificable."
fi

if [ -x "$file" ]; then
  echo "El archivo $file es ejecutable."
else
  echo "El archivo $file no es ejecutable."
fi
