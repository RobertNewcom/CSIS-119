#!/bin/bash

#includes grep|pipe, if statement, while loop, function

# Function to verify established connections
check_connections() {
  netstat | grep "ESTABLISHED"
}

   while true; do


        # variable
        established_connections=$(check_connections)

        # Check if there are established connections
        if [[ -n "$established_connections" ]]; then
                echo "There are established network connections:"
                echo "$established_connections"
        else
                echo "There are no established network connections."
        fi
   #sleep 10 secs and try again
   sleep 10
done
