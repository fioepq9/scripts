#!/usr/bin/env bash

pod=$1

idx=$(kubectl exec $pod -- cat /sys/class/net/eth0/iflink)

ls /sys/class/net | grep veth | while read veth; do [[ "$(cat /sys/class/net/$veth/ifindex)" = "$idx" ]] && VETH=$veth; done;

echo "veth: $VETH"
echo " idx: $idx"

