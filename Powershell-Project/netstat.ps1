#Powershell requirements for grep(bash) |pipe, if statement, while loop, function
#CSIS-119 Robert Newcom 9/24/23
# Function to verify established connections, removed 127.0.0.1 loopback
function check_connections() 
{
  Get-NetTCPConnection | Where-Object { $_.State -eq "Established" -and $_.RemoteAddress -notlike "127.0.0.1" }
}
  while ($true) 
    {
  # set function to loop 
  $establishedconnections = check_connections
  # Check if there are established connections
  if ($establishedconnections) 
    {
    Write-Host "There are established network connections excluding 127.0.0.1 (Loopback):"
    $establishedconnections 
    } 
  else 
    {
    Write-Host "There are no established network connections excluding 127.0.0.1 (Loopback)"
    }
  # Sleep for 10 seconds and try again
  start-sleep -seconds 10
}


