#!/bin/bash

# tradfri_beta.sh - OLA Trigger config to control IKEA Trådfri lights
# https://github.com/gobo-ws/ola-trigger-ikea-tradfri-dmx

if [ "$1" = "dimmer" ]
then
    echo coap-client -m put -u "$2" -k "$3" -e '{ "3311": [{ "5712": '$7',"5851": '$4' }] }' "coaps://$5:5684/15001/$6"
elif [ "$1" = "color" ]
then
    echo coap-client -m put -u "$2" -k "$3" -e '{ "3311": [{ "5712": '$7',"5706": '$4' }] }' "coaps://$5:5684/15001/$6"
fi
