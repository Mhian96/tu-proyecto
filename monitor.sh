#!/bin/bash
# Obtener fecha y hora actual
FECHA=$(date '+%Y-%m-%d %H:%M:%S')

# Obtener el uso de memoria RAM
MEMORIA=$(free -h | awk 'NR==2{printf "Total: %s | Usada: %s | Libre: %s", $2, $3, $4}')

# Guardar el resultado en un archivo de log
echo "[$FECHA] - Estado del sistema -> $MEMORIA" >> /home/bcalderon/tu-proyecto/logs/sistema_log.txt
