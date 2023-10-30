#!/bin/bash

if [ $# -ne 3 ]; then
  echo "Error: debes proporcionar tres nombres de archivo como parámetros"
  exit 1
fi

file1=$1
file2=$2
file3=$3

size1=$(stat -c%s "$file1")
size2=$(stat -c%s "$file2")
size3=$(stat -c%s "$file3")

total_size=$(($size1 + $size2 + $size3))

echo "El total del espacio que ocupan los archivos $file1, $file2 y $file3 es de $total_size bytes"

