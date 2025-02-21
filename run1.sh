#!/bin/bash
#
print("hi")
while true; do
    tput reset  # Resets the screen (alternative to `clear`)
    nvidia-smi
    sleep 60
done
