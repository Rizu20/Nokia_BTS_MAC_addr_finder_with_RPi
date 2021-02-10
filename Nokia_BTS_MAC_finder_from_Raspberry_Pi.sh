#!/bin/bash

while :
do
    ping 192.168.255.129 -c 1 > /dev/null
    if [ #? -eq 0 ]
    then
        mac_addr=`sshpass -p <toor4nsn pass> ssh -o StrictHostKeyChecking=no  toor4nsn@192.168.255.129 'cat /sys/class/net/eth3/address'`
        echo $mac_addr
        break
    fi
    sleep 2
done