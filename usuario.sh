#!/bin/bash
# Crear grupo y usuario con contraseña clave1
sudo groupadd p1c1_2026_g1
sudo useradd -m -g p1c1_2026_g1 -p $(openssl passwd -1 clave1) p1c1_2026_u1
