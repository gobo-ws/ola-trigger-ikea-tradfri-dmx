#!/bin/bash
# tradfri_dimmer.sh - OLA Trigger config to control IKEA Trådfri lights
# https://github.com/gobo-ws/ola-trigger-ikea-tradfri-dmx
coap-client -m put -u "Client_identity" -k "$1" -e '{ "3311": [{ "5851": '$2' }] }' "coaps://$3:5684/15001/$4"