# Simple script for removing resource groups via txt file
Connect-AzAccount 
$RGList = (Get-Content -Path ".\rglist.txt")

foreach ($rg in $RGList) {
  Remove-AzResourceGroup -Name "$rg" -Force
}
