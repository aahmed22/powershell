# Install the Azure Module on your local machine. 
Install-Module -name az -allowclobber 

# To connect to Azure account 
Connect-AzAccount 

# To acquire subscription information 
Get-AzSubscription 

# Create a resource group which will contain the new VM
new-azvm -ResourceGroupName "LinuxVM" -Name "LVM01" -Image UbuntuLTS

# Remove the VM
remove-azvm -Name LVM01 -ResourceGroupName LinuxVM 
