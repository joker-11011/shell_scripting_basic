#!/bin/bash

# Define the Python script name
PYTHON_SCRIPT="logging_script.py"
PID=""

# Function to check if the Python script is already running
check_if_running() {	
    	if ps aux | grep -v grep | awk '{print $12}' | grep logging_script.py > /dev/null
    	then
		PID=$(ps aux | grep -v grep | grep logging_script.py | awk '{print $2}')
        	return 0  # Program is running 
    	else
        	return 1  # Program is not running
    	fi
}

# Main script execution
if check_if_running
then
	echo "$PYTHON_SCRIPT is already running under PID:$PID"
else 
    	nohup python3 "$PYTHON_SCRIPT" > /dev/null &
    	SCRIPT_PID=$!
    	echo "$PYTHON_SCRIPT started with PID $SCRIPT_PID"
fi

