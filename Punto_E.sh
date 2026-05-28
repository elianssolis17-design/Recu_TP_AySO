#!/bin/bash
# Filtrar tamaño de memoria RAM y modelo de CPU
mkdir -p ~/Punto_E
free -h | grep "Mem:" | awk '{print $2}' > ~/Punto_E/Filtro_basico.txt
lscpu | grep -E "Model name|Nombre del modelo" | awk -F: '{print $2}' | sed 's/^[ \t]*//' >> ~/Punto_E/Filtro_basico.txt
