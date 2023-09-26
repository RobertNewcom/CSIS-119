# Powershell meets requirements for if statement and for loop
# CSIS-119 Robert Newcom 9/25/23
# Get current user from windows security and apply to $user
# Code ran on personal windows computer and is referencing my personal user id
$user = [System.Security.Principal.WindowsIdentity]::GetCurrent().Name
# Check for the user a maximum of 10 times
$num_checks = 10
# Time delay before the next check 
$interval = 10
# Loop with for and if statements
for ($i = 1; $i -le $num_checks; $i++) #-le is less
{
    # Check if the user is logged in that is equal to ROBERTS-PC\bwg24 user, which is me
    if ([System.Security.Principal.WindowsIdentity]::GetCurrent().Name -eq "ROBERTS-PC\bwg24" ) {
        Write-Host "Robert is logged in."
    } else {
        Write-Host "Robert is not logged in."
    }
    start-sleep -seconds $interval
}
