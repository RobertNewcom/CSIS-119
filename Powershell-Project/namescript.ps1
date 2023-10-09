# Powershell requirements for Two variables, echo, comments, two operators, and sensitive input data
# CSIS-119 Robert Newcom 9/24/23

# Enters User Name
Write-Host "Please enter your First and Last Name: "

# User input into variables Fname and Lname for first and last name
$NameInput = Read-Host
$NameParts = $NameInput -split " "

# Splits Read-Host input of user first and last name
$Fname = $NameParts[0]
$Lname = $NameParts[1]

# Enter user age silent/secure prompt
Write-Host "Please enter your age - secure input:  "
$Age = Read-Host -AsSecureString

# Convert secure input to text
$AgeText = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto([System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($Age))
$Age = [int]$AgeText  # Text to int

# Calculate year of birth
$Current_year = Get-Date -Format "yyyy"
$Year_of_birth = $Current_year - $Age

# Telling the user their own name
Write-Host "Your name is: $Fname $Lname"
Write-Host "Your year of birth is: $Year_of_birth"
