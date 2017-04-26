#!/bin/bash

# tradfri.sh - OLA Trigger config to control IKEA Trådfri lights
# https://github.com/gobo-ws/ola-trigger-ikea-tradfri-dmx

if [ "$1" = "dimmer" ]
then
    coap-client -m put -k "$2" -e '{ "3311": [{ "5851": '$3' }] }' "coaps://$4:5684/15001/$5"
elif [ "$1" = "color" ]
then
    coap-client -m put -k "$2" -e '{ "3311": [{ "5706": '$3' }] }' "coaps://$4:5684/15001/$5"
fi
