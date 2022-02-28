#Simple Timer using Get-Date
#Everything works right now except if the hour changes. Which is not a small issue. 1/100

Function Start-GDTimer {
    Param(
        [Parameter(mandatory=$True)][int]$Minutes
    )
    
    $Start = Get-Date
    $Time = $Start.Minute + $Minutes
    while($Time -gt (Get-Date).minute) {
        Write-Host "`r$($Time - (Get-Date).Minute) minutes remaining" -NoNewLine
        sleep 1
    }
    Write-Output "Times Up!"

}
