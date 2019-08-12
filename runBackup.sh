#! /bin/bash

dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
configFile=$dir/config.json
backupFolder=$(cat $configFile |jq .backupFolder -r)

for backupDest in $(cat $configFile |jq '.backupDestionations[]' -r)
do
    rsync -avPh $backupFolder $backupDest
done
