#!/bin/bash

#Créer une tâche planifiée qui s'exécute toutes les 2 minutes et lance le script ( àcrrée aussi ) qui permet de créer des fichiers "fichier{i}_{$date_HHMMSS}.txt dans le dossier "my_project" ( i : entier àincrémenter, date : en format yyymmdd )

date_format=$(date +%Y%m%d_%H%M%S)

i=1

while [ $i -le 10 ]; do
  
  filename="fichier${i}_${date_format}.txt"

  touch "$filename"

  ((i++))

done
