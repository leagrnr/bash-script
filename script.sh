#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;36m'

function binary() {
  count=0

  while [ $count -lt 1000 ]; do
      binary=$((RANDOM % 2))
      echo -ne "${GREEN}$binary${NC}"
      ((count++))
      sleep 0.001
  done

  echo
}

function type_text {
    text="$1"
    for ((i=0; i<${#text}; i++)); do
        echo -ne "${BLUE}${text:$i:1}"
        sleep 0.05
    done

    echo
}

function hack_animation {
    clear
    echo -e "${RED}Initialisation de la séquence de piratage..."
    sleep 2
    binary


    echo -e "${YELLOW}Recupération du Nom..."
    sleep 2
    type_text "El Racoon"
    sleep 1
    echo -e "${YELLOW}Statut..."
    sleep 2
    type_text "Etudiante en développement web"
    sleep 1
    echo -e "${YELLOW}Localisation..."
    sleep 2
    type_text "Angers"
    sleep 1
    echo -e "${YELLOW}Compétences front..."
    sleep 2
    type_text "JavaScript, VueJS, React, Angular "
    sleep 1
    echo -e "${YELLOW}Compétences back..."
    sleep 2
    type_text "PHP, Laravel, Java"
    sleep 1

    echo "*********************"
    echo "*                   *"
    echo "*  Piratage Réussi  *"
    echo "*                   *"
    echo "*********************"
    sleep 1
}

hack_animation