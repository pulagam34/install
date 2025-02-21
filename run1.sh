#!/bin/bash
#
/root/node-1/bin/gaianet info --base /root/node-1
/root/node-1/bin/gaianet info --base /root/node-2
# Run the monitoring loop with nvidia-smi and clear output in Colab via Python
while true; do
    !clear
    nvidia-smi
    sleep 60
done
