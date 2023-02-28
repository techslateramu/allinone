![TechSlate](../global/images/ts.png)


## How to use Azure CLI to create a resource group, a storage account, and a function app in the East US location

### Prerequisites

Before you begin, you will need to have the Azure CLI installed on your machine. You can install the Azure CLI by following the instructions in the [Azure CLI documentation](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli).



```
az group create --name rg-ts-portal-123 --location eastus
az storage account create --name sttsportal123 --resource-group rg-ts-portal-123 --location eastus --sku Standard_LRS
az functionapp create --name fapp-ts-portal-123 --resource-group rg-ts-portal-123 --storage-account sttsportal123 --consumption-plan-location eastus --runtime python --functions-version 4 --os-type Linux
```

Note that we're passing the `st-ts-portal-123` storage account name to the `--storage-account` parameter in this command, so that the function app can use it for its storage needs. We're also creating the function app with a consumption plan, in the East US location, using the `--consumption-plan-location` parameter.

That's it! These commands will create the resource group, storage account, and function app as per your requirements in the East US location.

<br>
<hr>


##  Steps to Create Resource Group, Storage Account, and Function App using POWERSHELL


```
New-AzResourceGroup -Name rg-ts-001 -Location eastus

New-AzStorageAccount -ResourceGroupName rg-ts-001 -Name stts001rand -SkuName Standard_LRS -Location eastus

New-AzFunctionApp -Name fun-ts-001 -ResourceGroupName rg-ts-001 -StorageAccount stts001rand -Runtime PowerShell -FunctionsVersion 4 -Location eastus

New-AzFunctionApp -Name fun-ts-002 -ResourceGroupName rg-ts-001 -StorageAccount stts001rand -Runtime python -FunctionsVersion 3.8 -Location eastus 
```
