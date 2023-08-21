#!/bin/bash

# Introducir la configuración a usar:
# h-config: Cambia la configuración ssh para usuario HVite
# h-config-d: Cambia la configuración ssh para usuario HVite para DT
# z-config: Cambia la configuración ssh para usuario JZetina

h_config=h-config
h_config_d=h-config-d
z_config=z-config


if [ "$1" -a -n "$1" ]; then
  echo Usando la configuración $1
else
  echo No se ha recibido ningún valor
  exit
fi

if [ "$1" = "$h_config" ]; then
  cp ~/workspace/h-config/config ~/.ssh
  cp ~/workspace/h-config/.gitconfig ~/

  echo Se ha modificado la configuración para HVite
elif [ "$1" = "$h_config_d" ]; then
  cp ~/workspace/h-config/config ~/.ssh
  cp ~/workspace/h-config/especial-dt/.gitconfig ~/

  echo Se ha modificado la configuración para HVite
elif [ "$1" = "$z_config" ]; then
  cp ~/workspace/z-config/config ~/.ssh
  cp ~/workspace/z-config/.gitconfig ~/

  echo Se ha modificado la configuración para JZetina
else
  echo La configuración introducida es invalida
fi
