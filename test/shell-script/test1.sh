#!/bin/bash

#Funcionó!!!

head -n1 $1 > $2

echo "Creando y asignado permisos de ejecución -> $2"

chmod +x $2
