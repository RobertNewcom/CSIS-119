# Powershell switch requirement
# CSIS-119 Robert Newcom 9/24/23
# Enter which day of the week is class and user input
$day = Read-Host "Which day of the week is scripting Class for Robert?: "

switch ($day)
 {
    Monday { Write-Host "No class on Monday" }
    Tuesday { Write-Host "No class on Tuesday" }
    Wednesday { Write-Host "Correct! Class is on Wednesday for Robert" }
    Thursday { Write-Host "No class on Thursday" }
    Friday { Write-Host "No class on Friday" }
    Saturday { Write-Host "No class on Saturday }
    Sunday { Write-Host "No class on Sunday }
    default { Write-Host "There are only 7 days in a week." $day "is not a day" }
 }
