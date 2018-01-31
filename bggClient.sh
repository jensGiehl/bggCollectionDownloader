#!/bin/bash

if [[ -z "${BGG_USER}" ]]; then
   echo -e "Please set \033[0;31mBGG_USER\033[0m as enviorment variable"
   exit 1
fi

currentDate=`date '+%Y-%m-%d_%H%M'`
outputFile="$BGG_USER-Collection-$currentDate.xml"
targetDir="$BGG_USER"
mkdir --parents $targetDir
./wgetRetry.sh "https://boardgamegeek.com/xmlapi2/collection?username=$BGG_USER" "$targetDir/$outputFile" 444

