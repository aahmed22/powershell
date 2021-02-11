<#
  Author: AbdulHameed
  Description: Set password for user account via AD
#>

Import-Module -Name ActiveDirectory

$username = Read-Host "Please enter username: "
$newPassword = (Read-Host "Please enter new password:" -AsSecureString)

Write-Host "Setting Password for $username" 
Set-ADAccountPassword -Identity $username -NewPassword $newPassword -Reset
