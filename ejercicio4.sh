#!/bin/bash

# Obtenemos la fecha actual en formato día, mes y año
date_str=$(date +"%A %d de %B de %Y")

# Verificamos si se pasa el parámetro "-t" para incluir la hora
if [ "$1" = "-t" ]; then
  # Obtenemos la hora actual en formato horas y minutos
  time_str=$(date +"%H horas y %M minutos")
  # Mostramos la fecha y hora
  echo "Hoy es $date_str y son las $time_str"
else
  # Solo mostramos la fecha
  echo "Hoy es $date_str"
fi
