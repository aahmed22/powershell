$file = Read-Host "Please enter the name of the zip: "

$newZipFile = $file + ".zip"
Write-Host $newZipFile

Expand-Archive -Path $newZipFile -Destination ".\new-location\"
