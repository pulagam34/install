#!/bin/bash
#
/root/node-1/bin/gaianet info --base /root/node-1
/root/node-1/bin/gaianet info --base /root/node-2
# Run the monitoring loop with nvidia-smi and clear output in Colab via Python
while true; do
  # Run nvidia-smi and clear output using Python
  python3 -c "
import subprocess
from IPython.display import clear_output
import time
while True:
    # Clear the output in Colab
    clear_output(wait=True)
    # Run nvidia-smi to display GPU stats
    subprocess.run(['nvidia-smi'])
    # Sleep for 60 seconds
    time.sleep(60)
  "
done
