#! /bin/bash

configFile=config.json
backupFolder=$(cat $configFile |jq .backupFolder -r)

for backupDest in $(cat $configFile |jq '.backupDestionations[]' -r)
do
    rsync -avPh $backupFolder $backupDest
done
