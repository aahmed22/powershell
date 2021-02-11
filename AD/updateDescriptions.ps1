<#
  Author: AbdulHameed
  Description: Updates computer accounts descriptions field on Active Directory. 
  The records are pulled from a CSV file called "updateDescription.csv
#>

Import-Module -Name ActiveDirectory

Function updateMultipleDescriptions() {
    
    $csv = ".\updateDescription.csv"
    $finalList = Import-Csv $csv 

    foreach ($record in $finalList)
    {
        $username = $($record.UserName)
        $computername = $($record.ComputerName)
    
        $surName = Get-ADUser -Identity "$username" | Select Name -ExpandProperty Surname
        $firstName = Get-ADUser -Identity "$username" | Select Name -ExpandProperty GivenName
    
        $joinName = $surName + "," + " " + $firstName

        Set-ADComputer -Identity $computername -Description $joinName
        Get-ADComputer -Identity $computername -Properties Description | Select Name -ExpandProperty Description
    }
}

Write-Host "Updating Descriptions for Workstations OU"

updateMultipleDescriptions
