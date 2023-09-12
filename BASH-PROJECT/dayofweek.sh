#!/bin/bash

#Meets Requirement for Case extra credit
# Asks user to input 1-7 for day of the week
echo "Enter a number (1-7) to find out the day of the week:"

#User input data
read day

# Day of the week case statement
case $day in
    1)
        echo "Today is Monday"
        ;;
    2)
        echo "Today is Tuesday"
        ;;
    3)
        echo "Today is Wednesday"
        ;;
    4)
        echo "Today is Thursday"
        ;;
    5)
        echo "Today is Friday"
        ;;
    6)
        echo "Today is Saturday"
        ;;
    7)
        echo "Today is Sunday"
        ;;
    *)
        echo "There are only 7 days in a week."
        ;;
esac
