$memory = ((Get-CimInstance Win32_PhysicalMemory | Measure-Object -Property capacity -Sum).sum /1gb)

Write-Host "Memory (GB): $memory"
