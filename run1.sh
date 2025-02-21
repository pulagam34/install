#!/bin/bash
#
/root/node-1/bin/gaianet info --base /root/node-1
/root/node-1/bin/gaianet info --base /root/node-2

# Run the monitoring loop with nvidia-smi and clear output in Colab via Python
while true; do
    echo -e "\033c"  # Reset terminal (alternative to clear)
    nvidia-smi
    sleep 5
done

