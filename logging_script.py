#!/usr/bin/env python

import random
import logging
import threading
import signal
import sys
import os

# Redirecting the standard error message to /dev/null
sys.stderr = open(os.devnull, 'w')

# Create a global event object for stopping the thread
stop_event = threading.Event()

def generate():
    try:
        n = int(random.randint(1, 30))
        if n >= 1 and n <= 10:
            logging.error(str(n))
        else:
            logging.info(str(n))

    except Exception as e:
        print(e, file=sys.stderr)

def run_function():
    if not stop_event.is_set():
        thread = threading.Timer(60.0, run_function)
        thread.start()
        generate()

def signal_handler(signum, frame):
    stop_event.set()
    sys.exit(0)

if __name__ == '__main__':
    logging.basicConfig(
        filename="python_output.log",
        filemode="w",
        level=logging.DEBUG,
        format="%(levelname)s %(asctime)s %(message)s",
        datefmt="%Y-%m-%d %H:%M:%S",
    )

    # Register the signal handler
    signal.signal(signal.SIGTERM, signal_handler)

    run_function()
    
# To terminate this process use: kill -TERM <pid>
