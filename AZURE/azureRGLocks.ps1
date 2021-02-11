# Below is a list of Azure Powershell commands:

# Creating a resource group 
New-AzResourceGroup -name RGPS -Location eastus

# Implement the lock feature and placing it on a resource group
New-AzResourceLock -ResourceGroupName RGPS -LockName pslock -LockLevel CanNotDelete

# Remvoing the lock feature for a specific resource group
Remove-AzResourceLock -ResourceGroupName RGPS -LockName pslock

# Removing the resource group via powershell
Remove-AzResourceLock -ResourceGroupName RGPS -LockName pslock


# Below is a list of Azure CLI commands:
az login
az lock create --name adminlock --lock-type CanNotDelete --resource-group rgcli 
az lock delete --name adminlock --resource-group rgcli 
az group delete --name rgcli 
