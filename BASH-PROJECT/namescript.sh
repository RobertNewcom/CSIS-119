#!/bin/bash

#Meets requirements for Two variables, echo, comments, two operators, and sensitive input data.

#Enters User Name
echo "Please enter your First and Last Name: "

# user input into variables Fname and Lname for first and last name
read Fname Lname

#Enter user age silent prompt
echo "Please enter your age -secure input:  "
read -rsp "Age: " Age
echo

#Calc year of birth current unix time in year format to current year then current year minus age, addtion operator used in +%Y for date.
current_year=$(date +%Y)
year_of_birth=$((current_year - Age))


#telling the user their own name
echo "Your name is:" $Fname $Lname
echo "Your year of birth is: $year_of_birth"
