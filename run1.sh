#!/bin/bash
#
/root/node-2/bin/gaianet info --base /root/node-1
while true; do
    tput reset  # Resets the terminal screen
    nvidia-smi
    sleep 5
done


