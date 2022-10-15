#!/bin/bash

SCRIPT_PATH=`dirname "$0"`
DISCORD_SH=$SCRIPT_PATH/discord.sh
HOSTNAME=`hostname`
WEBHOOK=$1


#Check for updates
apt-get update &> /dev/null

#If there are any updates, then send notification
if [[ $(apt list --upgradable 2> /dev/null | grep -v Listing...) ]]; then
    $DISCORD_SH --webhook-url $WEBHOOK --username apt --title "$HOSTNAME needs OS updates" --description "$(apt list --upgradable 2> /dev/null | grep -v Listing... | jq -Rs | cut -c 2- | rev | cut -c 2- | rev)"
fi
     
        
