#!/bin/bash

# Vérifier les paramètres
if [ "$#" -eq  "0" ]
then
	echo "veuillez ajouter un paramètre comme:"
	echo "./afficher_cve_plugins_ids.sh CVE-2019-5736"
	exit 1
fi


CVE_HTML=${pwd}/cve.html

if [ -f "${CVE_HTML}" ]
then
	rm -rf ${CVE_HTML}
fi

echo "------------------------------------------------------------------------"


curl --silent https://www.tenable.com/cve/$1 > ${CVE_HTML}

echo "$1 Plugins Totals:"
html2dic ${CVE_HTML} | grep "script_id" | wc -l

echo "$1 Plugins ids:"
html2dic ${CVE_HTML} | grep "script_id" -A 1 | grep -o '[[:digit:]]*'

echo "------------------------------------------------------------------------"


