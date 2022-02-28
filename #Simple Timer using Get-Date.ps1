#Simple Timer using Get-Date

Function Start-GDTimer {
    Param(
        [Parameter(mandatory=$True)][int]$Minutes
    )
    
    $Start = Get-Date
    $Time = $Start.Minute + $Minutes
    while($Time -gt (Get-Date).minute) {
        Write-Host "$($Time - (Get-Date).Minute) minutes remaining" -NoNewLine
        sleep 1
    }
    Write-Output "Times Up!"

}