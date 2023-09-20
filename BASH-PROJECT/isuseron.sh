#!/bin/bash

#Meets requirements for if statement and for loop

# When ran on my macbook pro, it verifies i'm the user logged in which is robertnewcom
user=$(whoami)

# check for user a max of 10 times
num_checks=10

# Time delay before next check
interval=10

# Loop
for ((i = 1; i <= num_checks; i++)); do
        # is stated whoami(command) user  logged in?
  if who | grep -q "$user"; then
    echo "$user is logged in."
  else
    echo "$user is not logged in."
  fi

  # Sleep time, reference interval=10
  sleep $interval
done
