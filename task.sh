#!/bin/sh
 
# 05/11/2020
# christian.pottier@univ-angers.fr
# 
# lance tache local

if [ -z $1 ]; then
	echo -n Nom de la tache :
	read ID_TASK
else
	ID_TASK=$1
fi
if [ -z $ID_TASK ]; then
	exit 0
fi

sudo ansible-playbook -i localhost, -c local sel_task.yml -e "id_task=$ID_TASK"
