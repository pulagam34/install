#!/bin/bash
#
/root/node-1/bin/gaianet info --base /root/node-1
/root/node-1/bin/gaianet info --base /root/node-2

# Run the monitoring loop with nvidia-smi and clear output in Colab via Python
while true; do
    # Use Python to clear the output area in Colab
    python -c "from IPython.display import clear_output; clear_output(wait=True)"
    # Run nvidia-smi to show GPU status
    nvidia-smi
    sleep 5
done
