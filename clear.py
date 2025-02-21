import time
from IPython.display import clear_output

# Function to execute nvidia-smi and clear output in Colab
while True:
    # Clear the notebook output (this is done in Python)
    clear_output(wait=True)
    
    # Run nvidia-smi in the shell and display the result
    !nvidia-smi
    
    # Sleep for 5 seconds before repeating the loop
    time.sleep(5)
