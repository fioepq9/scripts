#!/bin/bash

IP=$1

if [[ -z $IP ]]; then
    lg WARN "======================================="
    lg INFO "MyIP from myip.ipip.net:"
    curl -s myip.ipip.net/json | jq

    lg WARN "======================================="
    lg INFO "MyIP from ipinfo.io:"
    curl -s ipinfo.io/$1?token=1cc7975ae289bb | jq
else
    lg WARN "======================================="
    lg INFO "Custom IP:$IP from ipinfo.io:"
    curl -s ipinfo.io/$1?token=1cc7975ae289bb | jq
fi
