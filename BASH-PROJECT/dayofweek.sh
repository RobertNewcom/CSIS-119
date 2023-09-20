#!/bin/bash
#case requirement

# Enter which day of the week is class
echo "Which day of the week is scripting Class for Robert?:  "

#User input data
read day

# Day of the week case statement
case $day in
    Monday)
        echo "No class Monday"
        ;;
    Tuesday)
        echo "No class Tuesday"
        ;;
    Wednesday)
        echo "Correct! Class is on Wednesday for Robert"
        ;;
    Thursday)
        echo "No class Thursday"
        ;;
    Friday)
        echo "No class on Friday"
        ;;
    Saturday)
        echo "No class on Saturday"
        ;;
    Sunday)
        echo "No class on Sunday"
        ;;
    *)
        echo "There are only 7 days in a week."
        ;;
esac
