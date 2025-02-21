#!/bin/bash
#
/root/node-1/bin/gaianet info --base /root/node-1
while true; do
    python -c "from IPython.display import clear_output; clear_output(wait=True)"
    nvidia-smi
    sleep 5
done

