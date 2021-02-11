<#
  Auhtor: AbdulHameed
  Description: This script transfer files stored on the L Drive into the Q Drive for files older than 01/01/2010
#>

Start-Transcript -Path C:\Users\ahahmed\Desktop\logsForLDrive.txt -Append

$source = "L:\"
$destination = "Q:\CleanUp"

robocopy $source $destination /e /minage:20100101 /xj /r:2 /w:2

Stop-Transcript
