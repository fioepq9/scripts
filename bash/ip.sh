#!/bin/bash

IP=$1

if [[ -z $IP ]]; then
    echo "======================================="
    echo "MyIP from myip.ipip.net:"
    curl -s myip.ipip.net/json | jq

    echo "======================================="
    echo "MyIP from ipinfo.io:"
    curl -s ipinfo.io/$1?token=1cc7975ae289bb | jq
else
    echo "======================================="
    echo "Custom IP:$IP from ipinfo.io:"
    curl -s ipinfo.io/$1?token=1cc7975ae289bb | jq
fi
