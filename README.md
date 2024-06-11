# shell_scripting_basic

1. ## logging_script.py
   - Generates a random number between 1 to 30 (both inclusive).
   - If random munber generated is between 1 to 10, it writes `logging.error`.
   - If random munber generated is between 11 to 30, it writes `logging.info`.
   - Generates a log every minute.

2. ## script.sh
   - Checks if the python script already initialized.
   - If not initializes and print out a message with PID.
   - The python script will run in background.

3. ## log_search.sh
   - Prints number of INFO and ERROR lines along with the sum of all the random numbers generated for it respectively.
      
## Steps to execute the program

`$chmod +x script.sh`\
`$./script.sh`

## This will execute the logging_script.py in background (only if it's not initialized earlier).

## To get count of INFO and ERROR lines with respective sum,

`$chmod +x log_search.sh`\
`$./log_search.sh`

## To terminate the background process use,

`$kill -TERM <pid>`
