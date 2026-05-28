#!/bin/bash
# Obtener IP pública y modelo de procesador con formato específico
mkdir -p ~/Punto_F
IP_PUB=$(curl -s ifconfig.me)
CPU_MODEL=$(lscpu | grep -E "Model name|Nombre del modelo" | awk -F: '{print $2}' | sed 's/^[ \t]*//')
echo "Mi ip publica es: $IP_PUB" > ~/Punto_F/Filtro_Avanzado.txt
echo "CPU Modelo: $CPU_MODEL" >> ~/Punto_F/Filtro_Avanzado.txt
