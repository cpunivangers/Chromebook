#!/bin/bash

zenity --info --text "Mise à jour des logiciels Linux en arrière-plan. Cela peut prendre quelques minutes.\nUne fois terminé, vous serez averti" --timeout 15 --width=300
DATDEB=$(date)
TDEB=$(date +'%s')

sudo sh -c 'ANSIBLE_LOG_PATH=/var/log/ansible.log /usr/bin/ansible-pull -i "localhost" -e ansible_python_interpreter=/usr/bin/python3 -d /opt/ansible/Chromebook -U https://github.com/cpunivangers/Chromebook >>/var/log/ansible_chromebook.log 2>&1'

let TMAJ=$(date +'%s')-$TDEB
HMAJ="$(( TMAJ / 3600 )) h $(( TMAJ / 60 % 60 )) mn $(( TMAJ  % 60  )) s"
zenity --info --text "$DATDEB Debut mise à jour des logiciels Linux\n$(date) Fin mise à jour des logiciels Linux.\nTemps de mise à jour $HMAJ\n\nLe système est à jour." --width=400
