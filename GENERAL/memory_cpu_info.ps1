# Function of the script is to acquire memory and CPU info

$memory = ((Get-CimInstance Win32_PhysicalMemory | Measure-Object -Property capacity -Sum).sum /1gb)
$machine = (Get-CimInstance -ClassName Win32_ComputerSystem).Name

Write-Host "Computer Name: $machine"
Write-Host "Memory (GB): $memory"

Write-Host "CPU information below: "

Get-WmiObject -Class Win32_Processor | Select-Object -Property Name, Number*
