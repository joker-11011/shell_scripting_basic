#!/bin/bash

LOG="python_output.log"

search(){
	awk -v last_hour="$(date --date='-1 hour' +'%Y-%m-%d %H:%M:%S')" '
	$2 " " $3 >= last_hour {
  	if ($1 == "ERROR") {
	    error_sum += $4
	    error_count++
	  } else if ($1 == "INFO") {
	    info_sum += $4
	    info_count++
	  }
	}
	END {
	  print "Number of INFO lines:", info_count
          print "Total of random numbers generated for INFO lines:", info_sum
	  print "Number of ERROR lines:", error_count
	  print "Total of random numbers generated for ERROR lines:", error_sum
	}' $LOG

}
search
