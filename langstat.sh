#!/bin/bash

if [ -z $1 ]; then
	echo "Merci d'appeller $0 avec le nom du fichier dictionnaire en paramètre"
	exit
else
	nameDico=$1
fi

if [ ! -f $1 ]; then
	echo "Le fichier n'existe pas"
	exit
fi

wc -m $nameDico > "$0.temporary"
nbChar=$(grep -oE ^[0-9]+ "$0.temporary")
rm "$0.temporary"

