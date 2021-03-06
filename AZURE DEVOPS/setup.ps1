# This command will output all projects under organization specified
az devops project list --org https://dev.azure.com/lost-paradise/

# Creates project under organziation.
# Parameters:
# process - defaults to agile
# source control - defaults to git 
az devops project create --name sampleV2 --description "This is a test run." --org https://dev.azure.com/lost-paradise/
