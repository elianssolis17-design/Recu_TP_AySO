#!/bin/bash
# Crear grupo Todos, usuario u2, modificar permisos y validar id
sudo groupadd p1c1_2026_Todos
sudo useradd -m -g p1c1_2026_Todos -p $(openssl passwd -1 clave1) p1c1_2026_u2
sudo usermod -aG p1c1_2026_Todos p1c1_2026_u1
sudo chgrp -R p1c1_2026_Todos /datos/
sudo chmod -R g+w /datos/
sudo chmod o+r /datos/
sudo chmod o-x /datos/
sudo su -c "id >> /datos/validar1.txt" p1c1_2026_u2
