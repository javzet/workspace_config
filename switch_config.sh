#!/bin/bash

# Introducir la configuración a usar:
# h-config: Cambia la configuración ssh para usario HVite
# z-config: Cambia la configuración ssh para usuario JZetina

# dt Establece la versión de node apta para trabajar con dt

h_config=h-config
z_config=z-config


if [ "$1" -a -n "$1" ]; then
  echo Usando la configuración $1
else
  echo No se ha recibido ningún valor
  exit
fi

if [ "$1" != "$z_config" -a "$1" != "$h_config" ]; then
  echo La configuración introducida es invalida
  exit
fi

rm ~/.ssh/known_hosts
eval "$(ssh-agent -s)"


if [ "$1" = "$h_config" ]; then
  cp ~/workspace/h-config/config ~/.ssh
  cp ~/workspace/h-config/.gitconfig ~/

  # TODO: Reemplzar por un bucle que recorra cada archivo ssh
  ssh-add ~/workspace/h-config/bitbucket-HazaelDesarrollaTech
  ssh-add ~/workspace/h-config/gitlab-HazaelQuo
  ssh-add ~/workspace/h-config/bitbucket-quo_access

  echo Se ha modificado la configuración para HVite
elif [ "$1" = "$z_config" ]; then
  cp ~/workspace/z-config/config ~/.ssh
  cp ~/workspace/z-config/.gitconfig ~/

  # TODO: Reemplzar por un bucle que recorra cada archivo ssh
  ssh-add ~/workspace/z-config/gitlab_access
  ssh-add ~/workspace/z-config/github_access
  ssh-add ~/workspace/z-config/bitbucket_access

  echo Se ha modificado la configuración para JZetina
else
  echo La configuración introducida es invalida
fi
