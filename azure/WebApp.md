![TechSlate](../global/images/ts.png)

# To create webapp (app-service), using AZ-CLI, follow below steps
```
resourceGroup=rg-ts-101
location=eastus
storageAccount=stts101rand
planName=plan-ts-101
appName=app-ts-101

az group create --name $resourceGroup --location $location

az storage account create --name $storageAccount --resource-group $resourceGroup --location $location --sku Standard_LRS

az appservice plan create --name $planName --resource-group $resourceGroup --location $location --sku F1

az webapp create --name $appName --plan $planName --resource-group $resourceGroup

```
# To create webapp (app-service), using PowerShell, follow below steps
```
$resourceGroup = "rg-ts-100"
$location = "eastus"
$stoageAccount = "stts100rand"
$planName = "plan-ts-100"
$appName = "app-ts-100"

New-AzResourceGroup -Name $resourceGroup -Location $location

New-AzStorageAccount -ResourceGroupName $resourceGroup -Name $stoageAccount -SkuName Standard_LRS -Location $location

New-AzAppServicePlan -ResourceGroupName $resourceGroup -Name $planName -Location $location -Tier Free

New-AzWebApp -ResourceGroupName $resourceGroup -AppServicePlan $planName -Name $appName  -Location $location
```