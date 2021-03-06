# Azure CLI 
# Runs on multiple systems (Ex: Linux, macOS, Windows)
# Syntax is not the same as Bash or Powershell

# To connect to Azure subscription via az cli 
az login

# To create resource group via az cli
az group create --name WindowsVMRG --location eastus

# To view list of resrouce group 
az group list 

# To remove resource group
az group delete --name WindowsVMRG 
