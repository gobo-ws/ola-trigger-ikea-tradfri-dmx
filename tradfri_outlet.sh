#!/bin/bash

# tradfri_outlet.sh - OLA Trigger config for IKEA Trådfri control outlets
# https://github.com/gobo-ws/ola-trigger-ikea-tradfri-dmx

if [ "$1" = "off" ]
then
    coap-client -m put -u "$2" -k "$3" -e '{ "3311": [{ "5851": '0' }] }' "coaps://$4:5684/15001/$5"
elif [ "$1" = "on" ]
then
    coap-client -m put -u "$2" -k "$3" -e '{ "3311": [{ "5851": '1' }] }' "coaps://$4:5684/15001/$5"
fi
