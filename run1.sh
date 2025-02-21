#!/bin/bash
#
/root/node-1/bin/gaianet info --base /root/node-1
/root/node-1/bin/gaianet info --base /root/node-2
while true; do
    tput reset  # Resets the terminal screen
    nvidia-smi
    sleep 5
done

