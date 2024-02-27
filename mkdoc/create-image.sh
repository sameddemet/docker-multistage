#!/bin/bash

# Définir le nom d'utilisateur
username="sameddemet"

# Cibles Docker
targets=("base" "init" "dev" "build" "prod")

# Créer les images Docker, les étiqueter et les envoyer vers Docker Hub
for target in "${targets[@]}"; do
  # Créer une image Docker
  docker build --target "$target" -t "madoc-$target" .
  
  # Étiqueter l'image Docker
  docker image tag "madoc-$target" "$username/madoc-$target"
  
  # Envoyer l'image Docker vers Docker Hub
  docker push "$username/madoc-$target"
done
