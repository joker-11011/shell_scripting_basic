# shell_scripting_basic
[![nvm version](https://github.com/joker-11011/shell_scripting_basic/releases/tag/v0.1.0-alpha)][4]
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
   ### Execute following commands in terminal
   
```bash
chmod +x script.sh
```
```bash
./script.sh
```

## This will execute the logging_script.py in background (only if it's not initialized earlier).

## To get count of INFO and ERROR lines with respective sum,

```bash
chmod +x log_search.sh
```
```bash
./log_search.sh
```

## To terminate the background process use,

```bash
kill -TERM <pid>
```

## [Example log file](https://github.com/joker-11011/log_files/blob/285fb54002ab49a5ca27e06a12e3551d8977c5f3/python_output.log)
