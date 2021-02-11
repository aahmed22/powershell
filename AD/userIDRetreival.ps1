<#
  Author: AbdulHameed
  Description: This script will provide the user id from Active Directory
#>

$full_name = Read-Host "Please provide full name: "
$username = (Get-ADUser -Filter "(Name -like '*$full_name*')" | Select Name -ExpandProperty samAccountName)

Write-Host "$full_name user id: $username"
