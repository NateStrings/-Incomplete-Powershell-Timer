#Simple Timer using Get-Date
#Everything works right now except if the hour changes. Which is not a small issue. 
# Also want to add seconds as an option along with hours 1/100

Function Start-GDTimer { #Create your Function First
    Param( #Create a Paramater
        [Parameter(mandatory=$True)][int]$Minutes #We are giving it a parameter that it need to use each time it is ran to work correctly using mandatory=$true. 
                                                  #In this case $Minutes
    )
    
    $Start = Get-Date #Storing the Get-Date as a variable to call properties on it
    $Time = $Start.Minute + $Minutes #Add the $Minutes variable number to the total date 
    while($Time -gt (Get-Date).minute) {
        Write-Host "`r$($Time - (Get-Date).Minute) minutes remaining" -NoNewLine
        sleep 1
    }
    Write-Output "Times Up!"

}
